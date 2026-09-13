// Inject throws information from ThrowsMap into AST definitions

///|
/// Inject throws information into all definitions using throws maps.
/// Modifies the definitions in-place by setting throws fields on operations,
/// constructors, and attribute setters.
pub fn inject_throws(
  definitions : Array[Definition],
  throws_maps : Array[(String, ThrowsMap)],
) -> Unit {
  for def in definitions {
    match def {
      Interface(iface) =>
        inject_throws_into_members(iface.name, iface.members, throws_maps)
      InterfaceMixin(mix) =>
        inject_throws_into_members(mix.name, mix.members, throws_maps)
      Partial(partial) =>
        inject_throws_into_members(partial.target, partial.members, throws_maps)
      Namespace(ns) =>
        inject_throws_into_members(ns.name, ns.members, throws_maps)
      _ => ()
    }
  }
}

///|
/// Inject throws into interface members
fn inject_throws_into_members(
  interface_name : String,
  members : Array[InterfaceMember],
  throws_maps : Array[(String, ThrowsMap)],
) -> Unit {
  for i = 0; i < members.length(); i = i + 1 {
    match members[i] {
      Operation(op) => {
        if op.name.is_empty() {
          continue
        }
        let method_name = op.name
        let throws = lookup_throws(throws_maps, interface_name, method_name)
        if throws.length() > 0 {
          members[i] = Operation({
            name: op.name,
            return_type: op.return_type,
            arguments: op.arguments,
            special: op.special,
            throws,
          })
        }
      }
      Constructor(ctor) => {
        let throws = lookup_constructor_throws(throws_maps, interface_name)
        if throws.length() > 0 {
          members[i] = Constructor({ arguments: ctor.arguments, throws, })
        }
      }
      Attribute(attr) => {
        if attr.is_readonly {
          continue
        }
        // Check setter throws: "Interface.attributeName" (setter)
        let setter_throws = lookup_throws(
          throws_maps,
          interface_name,
          "set_" + attr.name,
        )
        // Also check attribute name directly (some specs use attribute name for setter)
        let setter_throws = if setter_throws.length() > 0 {
          setter_throws
        } else {
          lookup_throws(throws_maps, interface_name, attr.name)
        }
        if setter_throws.length() > 0 {
          members[i] = Attribute({
            name: attr.name,
            idl_type: attr.idl_type,
            is_readonly: attr.is_readonly,
            setter_throws,
          })
        }
      }
      _ => ()
    }
  }
}

///|
/// Look up throws for a method across all throws maps
fn lookup_throws(
  throws_maps : Array[(String, ThrowsMap)],
  interface_name : String,
  method_name : String,
) -> Array[String] {
  for pair in throws_maps {
    let (_, throws_map) = pair
    let arr = get_throws(throws_map, interface_name, method_name)
    let result = js_array_to_strings(arr)
    if result.length() > 0 {
      return result
    }
  }
  []
}

///|
/// Look up constructor throws across all throws maps
fn lookup_constructor_throws(
  throws_maps : Array[(String, ThrowsMap)],
  interface_name : String,
) -> Array[String] {
  for pair in throws_maps {
    let (_, throws_map) = pair
    let arr = get_constructor_throws(throws_map, interface_name)
    let result = js_array_to_strings(arr)
    if result.length() > 0 {
      return result
    }
  }
  []
}
