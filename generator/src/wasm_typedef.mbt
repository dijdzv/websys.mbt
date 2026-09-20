///|
priv suberror TypedefError {
  TypedefError(String)
}

///|
fn resolve_wasm_typedefs(
  definitions : Array[Definition],
) -> Result[Array[Definition], String] {
  let aliases : Map[String, IdlType] = Map([])
  let names : Array[String] = []
  for definition in definitions {
    let name = match definition {
      Typedef(value) => {
        aliases[value.name] = value.idl_type
        value.name
      }
      Interface(value) => value.name
      InterfaceMixin(value) => value.name
      CallbackInterface(value) => value.name
      Dictionary(value) => value.name
      Enum(value) => value.name
      Namespace(value) => value.name
      _ => continue
    }
    if names.contains(name) {
      return Err("Duplicate WasmGC definition: " + name)
    }
    names.push(name)
  }
  fn resolve(
    typ : IdlType,
    path : Array[String],
  ) -> IdlType raise TypedefError {
    match typ {
      Named(name) =>
        match aliases.get(name) {
          None => typ
          Some(value) => {
            if path.contains(name) {
              raise TypedefError("Cyclic WasmGC typedef: " + name)
            }
            resolve(value, path + [name])
          }
        }
      Nullable(value) => Nullable(resolve(value, path))
      Sequence(value) => Sequence(resolve(value, path))
      Promise(value) => Promise(resolve(value, path))
      Union(values) => Union(values.map(value => resolve(value, path)))
      _ => typ
    }
  }
  fn args(values : Array[Argument]) -> Array[Argument] raise TypedefError {
    values.map(value => { ..value, idl_type: resolve(value.idl_type, []), })
  }
  fn members(
    values : Array[InterfaceMember],
  ) -> Array[InterfaceMember] raise TypedefError {
    values.map(value => {
      match value {
        Operation(op) =>
          Operation({
            ..op,
            return_type: resolve(op.return_type, []),
            arguments: args(op.arguments),
          })
        Attribute(attr) =>
          Attribute({ ..attr, idl_type: resolve(attr.idl_type, []), })
        Constructor(ctor) =>
          Constructor({ ..ctor, arguments: args(ctor.arguments), })
        _ => value
      }
    })
  }
  try {
    for name, _ in aliases {
      ignore(resolve(Named(name), []))
    }
    let output : Array[Definition] = []
    for definition in definitions {
      output.push(
        match definition {
          Typedef(_) => continue
          Interface(value) =>
            Interface({ ..value, members: members(value.members), })
          InterfaceMixin(value) =>
            InterfaceMixin({ ..value, members: members(value.members), })
          Partial(value) =>
            Partial({ ..value, members: members(value.members), })
          CallbackInterface(value) =>
            CallbackInterface({
              ..value,
              arguments: args(value.arguments),
              return_type: value.return_type.map(typ => resolve(typ, [])),
            })
          Dictionary(value) =>
            Dictionary({
              ..value,
              members: value.members.map(field => {
                ..field,
                idl_type: resolve(field.idl_type, []),
              }),
            })
          _ => definition
        },
      )
    }
    Ok(output)
  } catch {
    TypedefError(message) => Err(message)
  }
}
