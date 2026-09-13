// Type ownership management logic

///|
/// Get type name from definition
fn get_definition_name(def : Definition) -> String {
  match def {
    Interface(iface) => iface.name
    Dictionary(dict) => dict.name
    Enum(e) => e.name
    Typedef(t) => t.name
    Partial(p) => p.target // PartialDef has `target` field
    InterfaceMixin(m) => m.name
    CallbackInterface(cb) => cb.name
    Includes(_) => "" // Includes has no type name
    Namespace(ns) => ns.name
  }
}

///|
/// Build global type ownership map (type name -> owner spec name, first definition wins)
/// Note: Partial definitions do not have ownership (the spec defining the original type owns it)
pub fn build_global_type_ownership(
  results : Array[SpecLoadResult],
) -> Array[(String, String)] {
  let ownership : Array[(String, String)] = []
  for result in results {
    if result.success {
      for def in result.definitions {
        // Skip Partial and Includes - they don't define new types
        match def {
          Partial(_) | Includes(_) => continue
          _ => ()
        }
        let type_name = get_definition_name(def)
        // Only register if not already owned (first wins)
        let already_owned = ownership
          .iter()
          .any(fn(pair) { pair.0 == type_name })
        if !already_owned && type_name != "" {
          ownership.push((type_name, result.spec_name))
        }
      }
    }
  }
  ownership
}

///|
/// Get owner of a type
fn get_type_owner(
  ownership : Array[(String, String)],
  type_name : String,
) -> String {
  ownership
  .iter()
  .fold(init="", fn(result, pair) {
    if result != "" {
      result
    } else if pair.0 == type_name {
      pair.1
    } else {
      ""
    }
  })
}

///|
/// Filter definitions to only those owned by a spec
pub fn filter_definitions_by_owner(
  definitions : Array[Definition],
  spec_name : String,
  ownership : Array[(String, String)],
) -> Array[Definition] {
  definitions
  .iter()
  .filter(fn(def) {
    match def {
      // InterfaceMixin and Includes are always included (used for merging, not output)
      InterfaceMixin(_) | Includes(_) => true
      // Partials are included if their target type is owned by this spec
      Partial(p) => get_type_owner(ownership, p.target) == spec_name
      // Others are included only if this spec owns the type
      _ => get_type_owner(ownership, get_definition_name(def)) == spec_name
    }
  })
  .collect()
}
