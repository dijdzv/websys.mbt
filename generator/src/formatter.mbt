// Code output formatter

///|
/// Global context for code generation, shared across all generators.
pub struct GenContext {
  enum_map : Array[(String, Array[String])]
  union_set : Array[String]
  dictionary_names : Array[String]
  union_typedef_map : Array[(String, Array[IdlType])]
  enum_names : Array[String]
  primitive_typedef_map : Array[(String, IdlType)]
  callback_interface_names : Array[String]
  interfaces : Array[(String, InterfaceDef)]
  inheritance_map : Array[(String, Array[String])]
  dict_map : Array[(String, DictionaryDef)]
  deprecated_set : Array[String]
  event_type_map : Array[(String, String)]
}

///|
/// MoonBit builtin types (excluded from external type detection)
let builtin_types : Array[String] = [
  "JsValue", "Int", "Int64", "Double", "Bool", "String", "Unit", "Bytes",
]

///|
/// Collect type names referenced in definitions
fn collect_referenced_types(definitions : Array[Definition]) -> Array[String] {
  let refs : Array[String] = []
  definitions
  .iter()
  .each(fn(def) {
    match def {
      Interface(iface) =>
        iface.members
        .iter()
        .each(fn(mem) { collect_types_from_member(mem, refs) })
      Dictionary(dict) =>
        dict.members
        .iter()
        .each(fn(mem) { collect_types_from_idl_type(mem.idl_type, refs) })
      Typedef(t) => collect_types_from_idl_type(t.idl_type, refs)
      Partial(p) =>
        p.members.iter().each(fn(mem) { collect_types_from_member(mem, refs) })
      Namespace(ns) =>
        ns.members.iter().each(fn(mem) { collect_types_from_member(mem, refs) })
      _ => ()
    }
  })
  refs
}

///|
/// Collect types from InterfaceMember
fn collect_types_from_member(
  mem : InterfaceMember,
  refs : Array[String],
) -> Unit {
  match mem {
    Operation(op) => {
      collect_types_from_idl_type(op.return_type, refs)
      op.arguments
      .iter()
      .each(fn(arg) { collect_types_from_idl_type(arg.idl_type, refs) })
    }
    Attribute(attr) => collect_types_from_idl_type(attr.idl_type, refs)
    Const(c) => collect_types_from_idl_type(c.idl_type, refs)
    Constructor(ctor) =>
      ctor.arguments
      .iter()
      .each(fn(arg) { collect_types_from_idl_type(arg.idl_type, refs) })
    Maplike(m) => {
      collect_types_from_idl_type(m.key_type, refs)
      collect_types_from_idl_type(m.value_type, refs)
    }
    Setlike(s) => collect_types_from_idl_type(s.value_type, refs)
    Iterable(iter) => {
      if iter.key_type is Some(kt) {
        collect_types_from_idl_type(kt, refs)
      }
      collect_types_from_idl_type(iter.value_type, refs)
    }
  }
}

///|
/// Collect Named types from IdlType
fn collect_types_from_idl_type(t : IdlType, refs : Array[String]) -> Unit {
  match t {
    Named(name) => if !refs.contains(name) { refs.push(name) }
    Nullable(inner) => collect_types_from_idl_type(inner, refs)
    Sequence(inner) => collect_types_from_idl_type(inner, refs)
    Promise(inner) => collect_types_from_idl_type(inner, refs)
    Union(types) =>
      types.iter().each(fn(ut) { collect_types_from_idl_type(ut, refs) })
    _ => ()
  }
}

///|
/// Collect inline Unions from all definitions
pub fn collect_inline_unions(
  definitions : Array[Definition],
) -> InlineUnionCollector {
  let collector = InlineUnionCollector::new()
  definitions
  .iter()
  .each(fn(def) {
    match def {
      Interface(iface) =>
        iface.members
        .iter()
        .each(fn(mem) { collect_inline_unions_from_member(mem, collector) })
      InterfaceMixin(mixin_def) =>
        mixin_def.members
        .iter()
        .each(fn(mem) { collect_inline_unions_from_member(mem, collector) })
      Dictionary(dict) =>
        dict.members
        .iter()
        .each(fn(mem) {
          collect_inline_unions_from_idl_type(mem.idl_type, collector)
        })
      Partial(p) =>
        p.members
        .iter()
        .each(fn(mem) { collect_inline_unions_from_member(mem, collector) })
      Namespace(ns) =>
        ns.members
        .iter()
        .each(fn(mem) { collect_inline_unions_from_member(mem, collector) })
      CallbackInterface(cb) => {
        // Process callback arguments
        cb.arguments
        .iter()
        .each(fn(arg) {
          collect_inline_unions_from_idl_type(arg.idl_type, collector)
        })
        // Process callback return value
        if cb.return_type is Some(t) {
          collect_inline_unions_from_idl_type(t, collector)
        }
      }
      _ => ()
    }
  })
  collector
}

///|
/// Collect inline Unions from InterfaceMember
fn collect_inline_unions_from_member(
  mem : InterfaceMember,
  collector : InlineUnionCollector,
) -> Unit {
  match mem {
    Operation(op) => {
      collect_inline_unions_from_idl_type(op.return_type, collector)
      op.arguments
      .iter()
      .each(fn(arg) {
        collect_inline_unions_from_idl_type(arg.idl_type, collector)
      })
    }
    Attribute(attr) =>
      collect_inline_unions_from_idl_type(attr.idl_type, collector)
    Constructor(ctor) =>
      ctor.arguments
      .iter()
      .each(fn(arg) {
        collect_inline_unions_from_idl_type(arg.idl_type, collector)
      })
    Maplike(m) => {
      collect_inline_unions_from_idl_type(m.key_type, collector)
      collect_inline_unions_from_idl_type(m.value_type, collector)
    }
    Setlike(s) => collect_inline_unions_from_idl_type(s.value_type, collector)
    Iterable(iter) => {
      if iter.key_type is Some(kt) {
        collect_inline_unions_from_idl_type(kt, collector)
      }
      collect_inline_unions_from_idl_type(iter.value_type, collector)
    }
    _ => ()
  }
}

///|
/// Collect inline Unions from IdlType
fn collect_inline_unions_from_idl_type(
  t : IdlType,
  collector : InlineUnionCollector,
) -> Unit {
  match t {
    Nullable(inner) => collect_inline_unions_from_idl_type(inner, collector)
    Sequence(inner) => collect_inline_unions_from_idl_type(inner, collector)
    Promise(inner) => collect_inline_unions_from_idl_type(inner, collector)
    Union(members) => {
      // Skip single-member Union (use the type directly)
      if members.length() == 1 {
        collect_inline_unions_from_idl_type(members[0], collector)
        return
      }
      // Collect inline Union (using idl_type_to_moonbit_collecting)
      let dummy_collector = InlineUnionCollector::new()
      let _ = idl_type_to_moonbit_collecting(t, dummy_collector)
      // Merge items added to dummy_collector into main collector
      dummy_collector
      .iter()
      .filter(fn(entry) { !has_inline_union_in_collector(collector, entry.0) })
      .each(fn(entry) { collector.push(entry) })
      // Process Union members recursively
      members
      .iter()
      .each(fn(mem) { collect_inline_unions_from_idl_type(mem, collector) })
    }
    _ => ()
  }
}

///|
/// Check if Union with specified name exists in collector
fn has_inline_union_in_collector(
  collector : InlineUnionCollector,
  name : String,
) -> Bool {
  collector.iter().any(fn(entry) { entry.0 == name })
}

///|
/// Extract undefined external types (version that excludes defined types using ownership map)
pub fn collect_external_types_with_ownership(
  definitions : Array[Definition],
  ownership : Array[(String, String)],
) -> Array[String] {
  let referenced = collect_referenced_types(definitions)
  referenced
  .iter()
  .fold(init=Array(), fn(undefined, ref_type) {
    // Exclude lowercase-starting names (invalid type names like object)
    let first_char = get_first_char(ref_type)
    let is_lowercase = first_char >= 'a' && first_char <= 'z'
    // Check if defined in ownership map
    let is_defined = ownership.iter().any(fn(entry) { entry.0 == ref_type })
    if !is_defined &&
      !builtin_types.contains(ref_type) &&
      !undefined.contains(ref_type) &&
      !is_lowercase {
      undefined.push(ref_type)
    }
    undefined
  })
}

///|
/// Normalize consecutive blank lines to one
pub fn normalize_blank_lines(code : String) -> String {
  let result = StringBuilder()
  let current_line = StringBuilder()
  // State: (prev_was_blank, current_line)
  let (_, final_line) = code
    .iter()
    .fold(init=(false, current_line), fn(state, c) {
      let (prev_was_blank, current_line) = state
      if c == '\n' {
        let line = current_line.to_string()
        let is_blank = is_blank_line(line)
        if is_blank {
          if !prev_was_blank {
            result.write_char('\n')
          }
          (true, StringBuilder())
        } else {
          result.write_string(line)
          result.write_char('\n')
          (false, StringBuilder())
        }
      } else {
        current_line.write_char(c)
        (prev_was_blank, current_line)
      }
    })

  // Process last line
  let last_line = final_line.to_string()
  if !is_blank_line(last_line) {
    result.write_string(last_line)
  }
  result.to_string()
}

///|
/// Determine if line is blank
fn is_blank_line(line : String) -> Bool {
  line.iter().all(fn(c) { c == ' ' || c == '\t' })
}

///|
/// Normalize indent (convert tabs to two spaces)
pub fn normalize_indent(code : String) -> String {
  let result = StringBuilder()
  code
  .iter()
  .each(fn(c) {
    if c == '\t' {
      result.write_string("  ")
    } else {
      result.write_char(c)
    }
  })
  result.to_string()
}

///|
/// Generate shared type definitions (for per-spec mode)
/// dictionary_names: Dictionary type name list (used in Union is_*/as_*)
/// union_typedef_map: Map from Union typedef name to constituent types
/// enum_names: enum type name list (instanceof -> typeof === 'string')
/// primitive_typedef_map: Map from primitive typedef name to resolved type
/// callback_interface_names: callback interface type name list (instanceof -> typeof === 'function')
pub fn gen_shared_types_with_externals(
  external_types : Array[String],
  inline_unions : InlineUnionCollector,
  defined_types : Array[String],
  dictionary_names : Array[String],
  union_typedef_map? : Array[(String, Array[IdlType])] = [],
  enum_names? : Array[String] = [],
  primitive_typedef_map? : Array[(String, IdlType)] = [],
  callback_interface_names? : Array[String] = [],
) -> String {
  let result = StringBuilder()
  result.write_string("// Shared types for websys\n")
  result.write_string("// Generated by webidl-bindgen\n\n")

  // JsValue type
  result.write_string("/// Generic JavaScript value\n")
  result.write_string("pub type JsValue\n\n")

  // undefined helper
  result.write_string("/// Return undefined\n")
  result.write_string(
    "pub extern \"js\" fn JsValue::undefined() -> JsValue =\n",
  )
  result.write_string("  #| () => undefined\n\n")

  // null helper
  result.write_string("/// Return null\n")
  result.write_string("pub extern \"js\" fn JsValue::null() -> JsValue =\n")
  result.write_string("  #| () => null\n\n")

  // from_string helper
  result.write_string("/// Create JsValue from String\n")
  result.write_string(
    "pub extern \"js\" fn JsValue::from_string(s : String) -> JsValue =\n",
  )
  result.write_string("  #| (s) => s\n\n")

  // from_int helper
  result.write_string("/// Create JsValue from Int\n")
  result.write_string(
    "pub extern \"js\" fn JsValue::from_int(i : Int) -> JsValue =\n",
  )
  result.write_string("  #| (i) => i\n\n")

  // from_double helper
  result.write_string("/// Create JsValue from Double\n")
  result.write_string(
    "pub extern \"js\" fn JsValue::from_double(d : Double) -> JsValue =\n",
  )
  result.write_string("  #| (d) => d\n\n")

  // from_bool helper
  result.write_string("/// Create JsValue from Bool\n")
  result.write_string(
    "pub extern \"js\" fn JsValue::from_bool(b : Bool) -> JsValue =\n",
  )
  result.write_string("  #| (b) => b\n\n")

  // Promise type (WebIDL built-in) - aliased to @js_async.Promise for .wait() support
  result.write_string(
    "/// JavaScript Promise type (aliased to @js_async.Promise)\n",
  )
  result.write_string("pub type Promise[T] = @js_async.Promise[T]\n\n")

  // Nullable type for JavaScript null vs undefined distinction
  result
  ..write_string("/// Nullable type for distinguishing null from undefined\n")
  ..write_string("/// - Undefined: property not set (JS undefined)\n")
  ..write_string("/// - Null: explicitly null\n")
  ..write_string("/// - Value(T): has a value\n")
  ..write_string("pub(all) enum Nullable[T] {\n")
  ..write_string("  Undefined\n")
  ..write_string("  Null\n")
  ..write_string("  Value(T)\n")
  .write_string("}\n\n")

  // try_catch helper for exception handling
  result
  ..write_string("/// Run a function and catch any JavaScript exception.\n")
  ..write_string(
    "/// Returns empty string on success, error message on exception.\n",
  )
  ..write_string("pub extern \"js\" fn try_catch(f : () -> Unit) -> String =\n")
  .write_string(
    "  #| (f) => { try { f(); return \"\"; } catch(e) { return String(e); } }\n\n",
  )

  // JsError type for typed exception handling
  result.write_string(
    "/// JavaScript error object for typed exception handling\n",
  )
  result.write_string("pub type JsError\n\n")
  result.write_string(
    "pub extern \"js\" fn JsError::message(self : JsError) -> String =\n",
  )
  result.write_string("  #| (self) => self.message\n\n")
  result.write_string(
    "pub extern \"js\" fn JsError::name(self : JsError) -> String =\n",
  )
  result.write_string("  #| (self) => (self && self.name) || ''\n\n")
  result.write_string("pub impl Show for JsError with output(self, logger) {\n")
  result.write_string("  logger.write_string(self.message())\n")
  result.write_string("}\n\n")
  result.write_string(
    "pub impl Debug for JsError with to_repr(self) { @debug.Repr::Repr(self.message()) }\n\n",
  )

  //External type declarations
  if external_types.length() > 0 {
    result.write_string(
      "// External types (referenced but not defined in WebIDL specs)\n",
    )
    external_types
    .iter()
    .each(fn(ext_type) {
      result.write_string("pub type ")
      result.write_string(ext_type)
      result.write_string("\n")
    })
    result.write_string("\n")
  }

  // Inline Union type definitions
  if inline_unions.length() > 0 {
    result.write_string("// Inline Union types\n")
    inline_unions
    .iter()
    .filter(fn(entry) { !defined_types.contains(entry.0) })
    .each(fn(entry) {
      let (name, members) = entry
      // Generate typedef for each inline Union
      let typedef_def : TypedefDef = { name, idl_type: Union(members), }
      result.write_string(
        gen_typedef(
          typedef_def,
          dictionary_names~,
          union_typedef_map~,
          enum_names~,
          primitive_typedef_map~,
          callback_interface_names~,
        ),
      )
      result.write_string("\n")
    })
  }

  // JsValue type check methods
  result.write_string("// JsValue type checks\n")
  result
  ..write_string("/// Check if value is null\n")
  ..write_string(
    "pub extern \"js\" fn JsValue::is_null(self : JsValue) -> Bool =\n",
  )
  ..write_string("  #| (self) => self === null\n\n")
  ..write_string("/// Check if value is undefined\n")
  ..write_string(
    "pub extern \"js\" fn JsValue::is_undefined(self : JsValue) -> Bool =\n",
  )
  ..write_string("  #| (self) => self === undefined\n\n")
  ..write_string("/// Check if value is null or undefined\n")
  ..write_string(
    "pub extern \"js\" fn JsValue::is_null_or_undefined(self : JsValue) -> Bool =\n",
  )
  .write_string("  #| (self) => self == null\n\n")

  // TypedArray index access methods
  result.write_string("// TypedArray index access\n")
  // Uint8ClampedArray
  result.write_string(
    "#alias(\"_[_]\")\npub extern \"js\" fn Uint8ClampedArray::get(self : Uint8ClampedArray, index : Int) -> Int =\n",
  )
  result.write_string("  #| (self, index) => self[index]\n\n")
  result.write_string(
    "#alias(\"_[_]=_\")\npub extern \"js\" fn Uint8ClampedArray::set(self : Uint8ClampedArray, index : Int, value : Int) -> Unit =\n",
  )
  result.write_string(
    "  #| (self, index, value) => { self[index] = value }\n\n",
  )
  result.write_string(
    "pub extern \"js\" fn Uint8ClampedArray::length(self : Uint8ClampedArray) -> Int =\n",
  )
  result.write_string("  #| (self) => self.length\n\n")
  // Float64Array
  result.write_string(
    "#alias(\"_[_]\")\npub extern \"js\" fn Float64Array::get(self : Float64Array, index : Int) -> Double =\n",
  )
  result.write_string("  #| (self, index) => self[index]\n\n")
  result.write_string(
    "#alias(\"_[_]=_\")\npub extern \"js\" fn Float64Array::set(self : Float64Array, index : Int, value : Double) -> Unit =\n",
  )
  result.write_string(
    "  #| (self, index, value) => { self[index] = value }\n\n",
  )
  result.write_string(
    "pub extern \"js\" fn Float64Array::length(self : Float64Array) -> Int =\n",
  )
  result.write_string("  #| (self) => self.length\n\n")

  // Global accessor functions
  if defined_types.contains("Window") {
    result.write_string("// Global accessors\n")
    result.write_string("/// Get the global window object\n")
    result.write_string("pub extern \"js\" fn window() -> Window? =\n")
    result.write_string("  #| () => (typeof window !== 'undefined') ? ")
    result.write_string(js_some("window"))
    result.write_string(" : ")
    result.write_string(js_none())
    result.write_string("\n\n")
  }
  result.to_string()
}

///|
/// Format output per spec (without external type declarations)
/// dictionary_names: Dictionary type name list (used in Union is_*/as_*)
/// union_typedef_map: Map from Union typedef name to constituent types
/// enum_names: enum type name list (instanceof -> typeof === 'string')
/// primitive_typedef_map: Map from primitive typedef name to resolved type
/// callback_interface_names: callback interface type name list (instanceof -> typeof === 'function')
pub fn format_spec_output(
  spec_name : String,
  definitions : Array[Definition],
  ctx : GenContext,
) -> String {
  let global_enum_map = ctx.enum_map
  let global_union_set = ctx.union_set
  let dictionary_names = ctx.dictionary_names
  let union_typedef_map = ctx.union_typedef_map
  let enum_names = ctx.enum_names
  let primitive_typedef_map = ctx.primitive_typedef_map
  let callback_interface_names = ctx.callback_interface_names
  let result = StringBuilder()

  // Header
  result.write_string("// Generated from WebIDL - DO NOT EDIT\n")
  result.write_string("// Source: @webref/idl/")
  result.write_string(spec_name)
  result.write_string("\n\n")

  // Types section (typedef, enum, callback interface, dictionary)
  // Note: inline Unions are generated in shared.mbt to avoid duplication
  let has_types = definitions
    .iter()
    .any(fn(def) {
      def is (Typedef(_) | Enum(_) | Dictionary(_) | CallbackInterface(_))
    })
  if has_types {
    // Output Typedef first
    definitions
    .iter()
    .each(fn(def) {
      match def {
        Typedef(t) => {
          result.write_string(
            gen_typedef(
              t,
              dictionary_names~,
              union_typedef_map~,
              enum_names~,
              primitive_typedef_map~,
              callback_interface_names~,
            ),
          )
          result.write_string("\n")
        }
        _ => ()
      }
    })

    // Output Enum
    definitions
    .iter()
    .each(fn(def) {
      match def {
        Enum(e) => {
          result.write_string(gen_enum(e))
          result.write_string("\n")
        }
        _ => ()
      }
    })

    // Output CallbackInterface (opaque type + from_fn helper)
    definitions
    .iter()
    .each(fn(def) {
      match def {
        CallbackInterface(cb) => {
          result.write_string("/// ")
          result.write_string(cb.name)
          result.write_string(" callback interface\n")
          result.write_string("pub type ")
          result.write_string(cb.name)
          result.write_string("\n\n")
          // Generate from_fn helper (only if has arguments)
          if cb.arguments.length() > 0 {
            result.write_string(gen_callback_from_fn(cb))
          }
        }
        _ => ()
      }
    })

    // Output Dictionary
    definitions
    .iter()
    .each(fn(def) {
      match def {
        Dictionary(d) => {
          result.write_string(
            gen_dictionary(
              d,
              global_enum_map,
              global_union_set,
              primitive_typedef_map~,
            ),
          )
          result.write_string("\n")
        }
        _ => ()
      }
    })
  }

  // Interfaces section
  // Extract interfaces from this spec
  let spec_interfaces : Array[(String, InterfaceDef)] = definitions
    .iter()
    .filter_map(fn(def) {
      match def {
        Interface(iface) => Some((iface.name, iface))
        _ => None
      }
    })
    .collect()

  // Use global interfaces and inheritance_map (supports cross-spec inheritance)
  spec_interfaces
  .iter()
  .each(fn(entry) {
    let (_, iface) = entry
    result.write_string(gen_interface_binding(iface, ctx))
    result.write_string("\n")
  })

  // Namespace section
  let spec_namespaces : Array[NamespaceDef] = definitions
    .iter()
    .filter_map(fn(def) {
      match def {
        Namespace(ns) => Some(ns)
        _ => None
      }
    })
    .collect()
  if spec_namespaces.length() > 0 {
    spec_namespaces
    .iter()
    .each(fn(ns) {
      result.write_string(gen_namespace_binding(ns, ctx))
      result.write_string("\n")
    })
  }
  let code = result.to_string()
  let code = normalize_indent(code)
  let code = normalize_blank_lines(code)
  code
}

///|
/// Generate from_fn helper for callback interface
/// Example: pub extern "js" fn EventListener::from_fn(handler : (Event) -> Unit) -> EventListener
fn gen_callback_from_fn(cb : CallbackInterfaceDef) -> String {
  let result = StringBuilder()

  // Doc comment
  result.write_string("/// Create ")
  result.write_string(cb.name)
  result.write_string(" from a MoonBit function\n")

  // Function signature
  result.write_string("pub extern \"js\" fn ")
  result.write_string(cb.name)
  result.write_string("::from_fn(handler : (")

  // Argument type list
  ignore(
    cb.arguments
    .iter()
    .fold(init=true, fn(first, arg) {
      if !first {
        result.write_string(", ")
      }
      result.write_string(idl_type_to_moonbit(arg.idl_type))
      false
    }),
  )

  // Return type
  result.write_string(") -> ")
  match cb.return_type {
    Some(Void) | None => result.write_string("Unit")
    Some(t) => result.write_string(idl_type_to_moonbit(t))
  }

  // Function return value (Callback type)
  result.write_string(") -> ")
  result.write_string(cb.name)
  result.write_string(" =\n")

  // JS implementation: wrap MoonBit closure in a proper JS function
  // MoonBit closures don't have Function.prototype.call/apply,
  // which some DOM APIs (e.g., addEventListener in happy-dom) require.
  result.write_string("  #| (handler) => (")
  // Generate JS parameter names (a0, a1, ...)
  let arg_count = cb.arguments.length()
  for i = 0; i < arg_count; i = i + 1 {
    if i > 0 {
      result.write_string(", ")
    }
    result.write_string("a")
    result.write_string(i.to_string())
  }
  result.write_string(") => handler(")
  for i = 0; i < arg_count; i = i + 1 {
    if i > 0 {
      result.write_string(", ")
    }
    result.write_string("a")
    result.write_string(i.to_string())
  }
  result.write_string(")\n\n")
  result.to_string()
}
