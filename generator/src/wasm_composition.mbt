///|
fn compose_wasm_interfaces(
  definitions : Array[Definition],
) -> Result[Array[Definition], String] {
  let interfaces : Map[String, InterfaceDef] = Map([])
  let mixins : Map[String, InterfaceMixinDef] = Map([])
  let names : Array[String] = []
  for definition in definitions {
    let name = match definition {
      Interface(value) => {
        interfaces[value.name] = value
        value.name
      }
      InterfaceMixin(value) => {
        mixins[value.name] = value
        value.name
      }
      CallbackInterface(value) => value.name
      Dictionary(value) => value.name
      Partial(_) | Includes(_) => continue
      _ => return Err("Unsupported WasmGC definition")
    }
    if names.contains(name) {
      return Err("Duplicate WasmGC definition: " + name)
    }
    names.push(name)
  }
  let additions : Map[String, Array[InterfaceMember]] = Map([])
  let included : Array[(String, String)] = []
  for definition in definitions {
    let (target, members) = match definition {
      Partial(value) => (value.target, value.members)
      Includes(value) => {
        let key = (value.target, value.includes)
        if included.contains(key) {
          return Err(
            "Duplicate WasmGC includes: " +
            value.target +
            " includes " +
            value.includes,
          )
        }
        included.push(key)
        let included_type = match mixins.get(value.includes) {
          Some(value) => value
          None => return Err("Unknown WasmGC mixin: " + value.includes)
        }
        (value.target, included_type.members)
      }
      _ => continue
    }
    if !interfaces.contains(target) {
      return Err("Unknown WasmGC interface: " + target)
    }
    let collected = match additions.get(target) {
      Some(members) => members
      None => {
        let members = []
        additions[target] = members
        members
      }
    }
    for mem in members {
      collected.push(mem)
    }
  }
  let result : Array[Definition] = []
  for definition in definitions {
    match definition {
      Interface(value) => {
        let members : Array[InterfaceMember] = []
        let seen : Array[String] = []
        let mut current = Some(value.name)
        while current is Some(name) {
          if seen.contains(name) {
            return Err("Cyclic WasmGC inheritance: " + name)
          }
          seen.push(name)
          let ancestor = match interfaces.get(name) {
            Some(value) => value
            None => return Err("Unknown WasmGC parent interface: " + name)
          }
          for mem in ancestor.members {
            members.push(mem)
          }
          if additions.get(name) is Some(extra) {
            for mem in extra {
              members.push(mem)
            }
          }
          current = ancestor.inheritance
        }
        result.push(Interface({ ..value, members, }))
      }
      CallbackInterface(_) | Dictionary(_) => result.push(definition)
      _ => ()
    }
  }
  Ok(result)
}
