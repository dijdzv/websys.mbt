// Definition merge and inheritance resolution logic

///|
/// Merge partial definitions and return consolidated definition array
/// Also resolves inheritance by expanding parent members into children
pub fn merge_definitions(definitions : Array[Definition]) -> Array[Definition] {
  // Step 1: Collect all non-partial definitions into a map by name
  // Deduplicate interfaces and dictionaries by merging members
  let interfaces : Array[(String, InterfaceDef)] = []
  let dictionaries : Array[(String, DictionaryDef)] = []
  let mixins : Array[(String, InterfaceMixinDef)] = [] // Collect mixins
  let includes_list : Array[IncludesDef] = [] // Collect includes statements
  let others : Array[Definition] = []
  let partials : Array[PartialDef] = []
  let seen_enums : Array[String] = [] // Track seen enum names
  let seen_typedefs : Array[String] = [] // Track seen typedef names
  let seen_callbacks : Array[String] = [] // Track seen callback interface names
  definitions
  .iter()
  .each(fn(def) {
    match def {
      Interface(iface) =>
        // Merge or add interface using helper
        merge_or_add_interface(interfaces, iface)
      Dictionary(dict) =>
        // Merge or add dictionary using helper
        merge_or_add_dictionary(dictionaries, dict)
      Partial(partial) => partials.push(partial)
      Enum(e) =>
        // Only add enum if not already seen
        if !seen_enums.contains(e.name) {
          seen_enums.push(e.name)
          others.push(def)
        }
      Typedef(t) =>
        // Only add typedef if not already seen
        if !seen_typedefs.contains(t.name) {
          seen_typedefs.push(t.name)
          others.push(def)
        }
      CallbackInterface(cb) =>
        // Only add callback interface if not already seen
        if !seen_callbacks.contains(cb.name) {
          seen_callbacks.push(cb.name)
          others.push(def)
        }
      InterfaceMixin(mix_def) =>
        // Merge or add mixin using helper
        merge_or_add_mixin(mixins, mix_def)
      Includes(incl) => includes_list.push(incl)
      Namespace(_) => others.push(def)
    }
  })

  // Step 2: Merge partial members into their target interfaces/dictionaries
  partials
  .iter()
  .each(fn(partial) {
    let target_name = partial.target
    // Convert partial to interface and merge
    let partial_as_iface : InterfaceDef = {
      name: target_name,
      members: partial.members,
      inheritance: None,
      extended_attrs: [],
    }
    merge_or_add_interface(interfaces, partial_as_iface)
  })

  // Step 3: Merge mixin members into interfaces based on includes statements
  includes_list
  .iter()
  .each(fn(incl) {
    let target_name = incl.target
    let mixin_name = incl.includes

    // Find the mixin members
    let mixin_members = mixins
      .iter()
      .fold(init=([] : Array[InterfaceMember]), fn(found, entry) {
        if found.length() > 0 {
          return found
        }
        let (name, mix_def) = entry
        if name == mixin_name {
          mix_def.members
        } else {
          found
        }
      })

    // Skip if mixin not found (might be in another spec)
    if mixin_members.length() == 0 {
      return
    }

    // Find target interface and merge mixin members
    merge_mixin_into_interface(
      interfaces, target_name, mixin_members, mixin_name,
    )
  })

  // Step 4: Interface inheritance is NOT resolved here
  // Parent members are accessed via upcast (e.g., mouse_event.to_event().get_type())
  // This follows MoonBit's "composition over inheritance" philosophy

  // Step 5: Resolve inheritance for dictionaries
  resolve_dictionary_inheritance(dictionaries)

  // Step 6: Build result array
  let result : Array[Definition] = others.copy()

  // Add dictionaries
  dictionaries.iter().each(fn(entry) { result.push(Dictionary(entry.1)) })

  // Add interfaces
  interfaces.iter().each(fn(entry) { result.push(Interface(entry.1)) })
  result
}

///|
/// Merge or add Interface to array
fn merge_or_add_interface(
  interfaces : Array[(String, InterfaceDef)],
  iface : InterfaceDef,
) -> Unit {
  for i = 0; i < interfaces.length(); i = i + 1 {
    let (name, existing) = interfaces[i]
    if name == iface.name {
      let merged_members = merge_interface_members(
        existing.members,
        iface.members,
        iface.name,
      )
      let merged_iface : InterfaceDef = {
        name: existing.name,
        members: merged_members,
        inheritance: match existing.inheritance {
          Some(_) => existing.inheritance
          None => iface.inheritance
        },
        extended_attrs: existing.extended_attrs,
      }
      interfaces[i] = (name, merged_iface)
      return
    }
  }
  interfaces.push((iface.name, iface))
}

///|
/// Merge or add Dictionary to array
fn merge_or_add_dictionary(
  dictionaries : Array[(String, DictionaryDef)],
  dict : DictionaryDef,
) -> Unit {
  for i = 0; i < dictionaries.length(); i = i + 1 {
    let (name, existing) = dictionaries[i]
    if name == dict.name {
      let merged_members = merge_dictionary_members(
        existing.members,
        dict.members,
      )
      let merged_dict : DictionaryDef = {
        name: existing.name,
        members: merged_members,
        inheritance: match existing.inheritance {
          Some(_) => existing.inheritance
          None => dict.inheritance
        },
      }
      dictionaries[i] = (name, merged_dict)
      return
    }
  }
  dictionaries.push((dict.name, dict))
}

///|
/// Merge Mixin members into Interface
fn merge_mixin_into_interface(
  interfaces : Array[(String, InterfaceDef)],
  target_name : String,
  mixin_members : Array[InterfaceMember],
  mixin_name : String,
) -> Unit {
  for i = 0; i < interfaces.length(); i = i + 1 {
    let (name, iface) = interfaces[i]
    if name == target_name {
      let merged_members = merge_interface_members(
        iface.members,
        mixin_members,
        target_name + " (from mixin " + mixin_name + ")",
      )
      let merged_iface : InterfaceDef = {
        name: iface.name,
        members: merged_members,
        inheritance: iface.inheritance,
        extended_attrs: iface.extended_attrs,
      }
      interfaces[i] = (name, merged_iface)
      return
    }
  }
}

///|
/// Merge or add Mixin to array
fn merge_or_add_mixin(
  mixins : Array[(String, InterfaceMixinDef)],
  mix_def : InterfaceMixinDef,
) -> Unit {
  for i = 0; i < mixins.length(); i = i + 1 {
    let (name, existing) = mixins[i]
    if name == mix_def.name {
      let merged_members = merge_interface_members(
        existing.members,
        mix_def.members,
        mix_def.name,
      )
      let merged_mixin : InterfaceMixinDef = {
        name: existing.name,
        members: merged_members,
      }
      mixins[i] = (name, merged_mixin)
      return
    }
  }
  mixins.push((mix_def.name, mix_def))
}

///|
/// Merge Interface members (with duplicate detection)
fn merge_interface_members(
  existing : Array[InterfaceMember],
  new_members : Array[InterfaceMember],
  _target_name : String,
) -> Array[InterfaceMember] {
  // Start with existing members
  let result : Array[InterfaceMember] = existing.copy()
  // Add new members, checking for duplicates
  new_members
  .iter()
  .each(fn(new_mem) {
    let new_name = get_member_name(new_mem)
    let is_duplicate = new_name != "" &&
      existing.iter().any(fn(m) { get_member_name(m) == new_name })
    if !is_duplicate {
      result.push(new_mem)
    }
  })
  result
}

///|
/// Get member name
fn get_member_name(mem : InterfaceMember) -> String {
  match mem {
    Operation(op) => op.name
    Attribute(attr) => attr.name
    Const(c) => c.name
    Constructor(_) => "" // Constructors don't have names
    Maplike(_) => "" // Maplike is a type-level feature, not a named member
    Setlike(_) => "" // Setlike is a type-level feature, not a named member
    Iterable(_) => "" // Iterable is a type-level feature, not a named member
  }
}

///|
/// Merge Dictionary members (with duplicate detection)
fn merge_dictionary_members(
  existing : Array[DictionaryMember],
  new_members : Array[DictionaryMember],
) -> Array[DictionaryMember] {
  // Copy existing members (with duplicate check using fold)
  let result : Array[DictionaryMember] = existing
    .iter()
    .fold(init=Array(), fn(result : Array[DictionaryMember], mem) {
      if !result.iter().any(fn(r) { r.name == mem.name }) {
        result.push(mem)
      }
      result
    })
  // Add new members, checking for duplicates
  new_members
  .iter()
  .fold(init=result, fn(result, new_mem) {
    if !result.iter().any(fn(r) { r.name == new_mem.name }) {
      result.push(new_mem)
    }
    result
  })
}

///|
/// Resolve Dictionary inheritance
fn resolve_dictionary_inheritance(
  dictionaries : Array[(String, DictionaryDef)],
) -> Unit {
  // Copy original definitions (preserve state before inheritance resolution)
  let original = dictionaries.copy()

  // Resolve inheritance for each dictionary (collect from original definitions)
  for i = 0; i < dictionaries.length(); i = i + 1 {
    let (name, dict) = dictionaries[i]
    match dict.inheritance {
      Some(parent_name) => {
        // Collect parent members (from original definitions, with circular reference check)
        let visited : Array[String] = [name]
        let inherited_members = collect_inherited_dictionary_members(
          original, // Use original definitions (before expansion)
           parent_name, visited,
        )
        // Prepend parent members to child
        let combined = merge_dictionary_members(inherited_members, dict.members)
        let new_dict : DictionaryDef = {
          name: dict.name,
          members: combined,
          inheritance: dict.inheritance,
        }
        dictionaries[i] = (name, new_dict)
      }
      None => ()
    }
  }
}

///|
/// Build inheritance map (parent -> children list)
/// Used for generating downcast methods
pub fn build_inheritance_map(
  interfaces : Array[(String, InterfaceDef)],
) -> Array[(String, Array[String])] {
  let result : Array[(String, Array[String])] = []

  // Register parent -> child relationships for each interface
  interfaces
  .iter()
  .each(fn(entry) {
    let (child_name, iface) = entry
    match iface.inheritance {
      Some(parent_name) =>
        // Register child to entire parent chain
        add_child_to_ancestors(result, interfaces, parent_name, child_name, [])
      None => ()
    }
  })
  result
}

///|
/// Add child to all ancestors
fn add_child_to_ancestors(
  inheritance_map : Array[(String, Array[String])],
  interfaces : Array[(String, InterfaceDef)],
  parent_name : String,
  child_name : String,
  visited : Array[String],
) -> Unit {
  // Circular reference check
  if visited.contains(parent_name) {
    return
  }

  // Add child to parent
  add_child_to_parent(inheritance_map, parent_name, child_name)

  // Find and add grandparent too
  let parent_iface = interfaces
    .iter()
    .find_first(fn(entry) { entry.0 == parent_name })
  match parent_iface {
    Some((_, iface)) =>
      match iface.inheritance {
        Some(grandparent_name) => {
          let new_visited = visited.copy()
          new_visited.push(parent_name)
          add_child_to_ancestors(
            inheritance_map, interfaces, grandparent_name, child_name, new_visited,
          )
        }
        None => ()
      }
    None => ()
  }
}

///|
/// Add child to inheritance map
fn add_child_to_parent(
  inheritance_map : Array[(String, Array[String])],
  parent_name : String,
  child_name : String,
) -> Unit {
  // Find existing entry
  for i = 0; i < inheritance_map.length(); i = i + 1 {
    let (name, children) = inheritance_map[i]
    if name == parent_name {
      if !children.contains(child_name) {
        children.push(child_name)
      }
      return
    }
  }
  // Create new entry
  inheritance_map.push((parent_name, [child_name]))
}

///|
/// Recursively collect parent dictionary members
fn collect_inherited_dictionary_members(
  dictionaries : Array[(String, DictionaryDef)],
  parent_name : String,
  visited : Array[String],
) -> Array[DictionaryMember] {
  // Detect circular inheritance
  if visited.iter().any(fn(v) { v == parent_name }) {
    println(
      "Warning: Circular inheritance detected in dictionary: " +
      parent_name +
      " - skipping",
    )
    return []
  }

  // Search for parent dictionary
  let parent_dict = dictionaries
    .iter()
    .fold(init=(None : DictionaryDef?), fn(found, entry) {
      match found {
        Some(_) => found
        None => if entry.0 == parent_name { Some(entry.1) } else { None }
      }
    })

  // Return empty array if parent not found
  match parent_dict {
    None => []
    Some(dict) => {
      // Recursively collect grandparent members
      let grandparent_members = match dict.inheritance {
        Some(grandparent_name) => {
          let new_visited = visited.copy()
          new_visited.push(parent_name)
          collect_inherited_dictionary_members(
            dictionaries, grandparent_name, new_visited,
          )
        }
        None => []
      }

      // Ancestor members + parent's own members (with duplicate check)
      let result = grandparent_members
        .iter()
        .fold(init=Array(), fn(acc : Array[DictionaryMember], mem) {
          if !acc.iter().any(fn(e) { e.name == mem.name }) {
            acc.push(mem)
          }
          acc
        })
      // Add parent members (parent takes priority over grandparent duplicates)
      dict.members
      .iter()
      .fold(init=result, fn(acc, mem) {
        if !acc.iter().any(fn(e) { e.name == mem.name }) {
          acc.push(mem)
        }
        acc
      })
    }
  }
}
