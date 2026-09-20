// Dictionary/Enum binding generation logic

///|
/// Check if a dictionary member has a safe default value
/// Safe defaults: Primitive, String, Nullable, Void, Sequence, or has explicit default_value
fn has_safe_default(mem : DictionaryMember) -> Bool {
  mem.default_value is Some(_) ||
  mem.idl_type is (Primitive(_) | String | Nullable(_) | Void | Sequence(_))
}

///|
/// Get safe default value for a dictionary member
fn get_safe_default_value(mem : DictionaryMember) -> String {
  match plan_dictionary_field(mem).default_value {
    Some(v) => v
    None =>
      match mem.idl_type {
        Primitive("boolean") => "false"
        Primitive(_) => "0"
        String => "\"\""
        Nullable(_) => "None"
        Void => "()"
        Sequence(_) => "[]"
        _ => "panic()" // Should not be reached if has_safe_default is checked first
      }
  }
}

///|
/// Check if dictionary has required fields without safe defaults
fn has_required_fields_without_safe_default(dict : DictionaryDef) -> Bool {
  dict.members.iter().any(fn(mem) { mem.required && !has_safe_default(mem) })
}

///|
/// Generate MoonBit struct from Dictionary
pub fn gen_dictionary(
  dict : DictionaryDef,
  enum_map : Array[(String, Array[String])],
  union_set : Array[String],
  primitive_typedef_map? : Array[(String, IdlType)] = [],
) -> String {
  let mut result = ""

  // Segment marker (for avoiding 65535 line limit in large files)
  result = result + "///|\n"

  // Doc comment
  result = result + "/// "
  result = result + dict.name
  result = result + " dictionary\n"

  // struct definition (pub(all) allows external construction and field access)
  result = result + "pub(all) struct "
  result = result + dict.name
  result = result + " {\n"
  result = dict.members
    .iter()
    .fold(init=result, fn(acc, mem) {
      let type_str = plan_dictionary_field(mem).public_type()
      acc + "  " + field_name_to_moonbit(mem.name) + " : " + type_str + "\n"
    })
  result = result + "}\n\n"

  // Determine if dictionary has required fields without safe defaults
  let has_required = has_required_fields_without_safe_default(dict)
  if has_required {
    // Generate new() constructor with required fields as labeled arguments
    result = result + "/// Create a new "
    result = result + dict.name
    result = result + "\n"
    result = result + "pub fn "
    result = result + dict.name
    result = result + "::new("
    // Add required fields (without safe defaults) as labeled arguments
    let mut first_arg = true
    dict.members
    .iter()
    .each(fn(mem) {
      if mem.required && !has_safe_default(mem) {
        if !first_arg {
          result = result + ", "
        }
        result = result +
          field_name_to_moonbit(mem.name) +
          "~ : " +
          mem.idl_type.to_moonbit_simple()
        first_arg = false
      }
    })
    result = result + ") -> "
    result = result + dict.name
    result = result + " {\n"
    result = result + "  "
    result = result + dict.name
    result = result + "::{\n"
    result = dict.members
      .iter()
      .fold(init=result, fn(acc, mem) {
        let value = if !mem.required {
          // For Nullable[T] type, use Nullable::Undefined
          let moonbit_type = mem.idl_type.to_moonbit_simple()
          if ends_with_question(moonbit_type) {
            "Nullable::Undefined"
          } else {
            "None"
          }
        } else if has_safe_default(mem) {
          // Required field with safe default
          get_safe_default_value(mem)
        } else {
          // Required field passed as argument
          field_name_to_moonbit(mem.name)
        }
        acc + "    " + field_name_to_moonbit(mem.name) + ": " + value + ",\n"
      })
    result = result + "  }\n"
    result = result + "}\n\n"
  } else {
    // All fields have safe defaults, generate default()
    result = result + "/// Create a new "
    result = result + dict.name
    result = result + " with default values\n"
    result = result + "pub fn "
    result = result + dict.name
    result = result + "::default() -> "
    result = result + dict.name
    result = result + " {\n"
    result = result + "  "
    result = result + dict.name
    result = result + "::{\n"
    result = dict.members
      .iter()
      .fold(init=result, fn(acc, mem) {
        let value = if !mem.required {
          let moonbit_type = mem.idl_type.to_moonbit_simple()
          if ends_with_question(moonbit_type) {
            "Nullable::Undefined"
          } else {
            "None"
          }
        } else {
          get_safe_default_value(mem)
        }
        acc + "    " + field_name_to_moonbit(mem.name) + ": " + value + ",\n"
      })
    result = result + "  }\n"
    result = result + "}\n\n"
  }

  // Conversion function to JsValue (FFI implementation)
  result = result + "extern \"js\" fn "
  result = result + dict.name
  result = result + "::to_js_ffi(self : "
  result = result + dict.name
  result = result + ") -> JsValue =\n"
  result = result + "  #| (self) => ({\n"
  let members_len = dict.members.length()
  result = dict.members
    .iter()
    .fold(init=(result, 0), fn(state, mem) {
      let (acc, idx) = state
      let moonbit_name = field_name_to_moonbit(mem.name)
      let conversion_type = resolve_dictionary_alias(
        mem.idl_type,
        primitive_typedef_map,
      )
      // Check if field is Nullable[T] type
      let moonbit_type = mem.idl_type.to_moonbit_simple()
      let is_nullable_type = !mem.required && ends_with_question(moonbit_type)
      let value_expr = if is_nullable_type {
        // For Nullable[T] fields, generate special JS expression
        gen_nullable_type_field_expr(
          mem.idl_type,
          moonbit_name,
          enum_map,
          union_set,
        )
      } else if !mem.required {
        // Optional field (Option[T]) - explicit conversion
        gen_optional_field_value_expr(
          conversion_type, moonbit_name, enum_map, union_set,
        )
      } else {
        // Required field (including enum conversion)
        gen_field_value_expr(conversion_type, moonbit_name, enum_map, union_set)
      }
      let value_expr = if is_dictionary_int64(
          mem.idl_type,
          primitive_typedef_map,
        ) {
        if mem.required {
          "Number(" + value_expr + ")"
        } else {
          "((value) => value === undefined ? undefined : Number(value))(" +
          value_expr +
          ")"
        }
      } else {
        value_expr
      }
      let comma = if idx < members_len - 1 { "," } else { "" }
      (acc + "  #|   " + mem.name + ": " + value_expr + comma + "\n", idx + 1)
    }).0
  result = result + "  #| })\n\n"
  // Public wrapper (callable from MoonBit code, survives DCE)
  result = result + "/// Convert to JsValue\n"
  result = result + "pub fn "
  result = result + dict.name
  result = result + "::to_js(self : "
  result = result + dict.name
  result = result + ") -> JsValue {\n"
  result = result + "  "
  result = result + dict.name
  result = result + "::to_js_ffi(self)\n"
  result = result + "}\n\n"

  // Conversion function from JsValue (FFI implementation)
  result = result + "extern \"js\" fn "
  result = result + dict.name
  result = result + "::from_js_ffi(value : JsValue) -> "
  result = result + dict.name
  result = result + " =\n"
  result = result + "  #| (v) => ({\n"
  result = dict.members
    .iter()
    .fold(init=(result, 0), fn(state, mem) {
      let (acc, idx) = state
      let moonbit_name = field_name_to_moonbit(mem.name)
      let conversion_type = resolve_dictionary_alias(
        mem.idl_type,
        primitive_typedef_map,
      )
      let moonbit_type = mem.idl_type.to_moonbit_simple()
      let is_nullable_type = !mem.required && ends_with_question(moonbit_type)
      let value_expr = if is_nullable_type {
        gen_from_js_nullable_field_expr(mem.idl_type, mem.name, enum_map)
      } else if is_dictionary_int64(mem.idl_type, primitive_typedef_map) {
        let value = "v." + mem.name
        if mem.required {
          "BigInt(" + value + ")"
        } else {
          "(" + value + " === undefined ? undefined : BigInt(" + value + "))"
        }
      } else if !mem.required {
        gen_from_js_optional_field_expr(conversion_type, mem.name, enum_map)
      } else {
        gen_from_js_required_field_expr(conversion_type, mem.name, enum_map)
      }
      let comma = if idx < members_len - 1 { "," } else { "" }
      (
        acc + "  #|   " + moonbit_name + ": " + value_expr + comma + "\n",
        idx + 1,
      )
    }).0
  result = result + "  #| })\n\n"
  // Public wrapper (callable from MoonBit code, survives DCE)
  result = result + "/// Convert from JsValue\n"
  result = result + "pub fn "
  result = result + dict.name
  result = result + "::from_js(value : JsValue) -> "
  result = result + dict.name
  result = result + " {\n"
  result = result + "  "
  result = result + dict.name
  result = result + "::from_js_ffi(value)\n"
  result = result + "}\n\n"
  result
}

///|
fn is_dictionary_int64(
  typ : IdlType,
  aliases : Array[(String, IdlType)],
) -> Bool {
  resolve_dictionary_alias(typ, aliases)
  is Primitive("long long" | "unsigned long long")
}

///|
fn resolve_dictionary_alias(
  typ : IdlType,
  aliases : Array[(String, IdlType)],
) -> IdlType {
  let mut current = typ
  let seen : Array[String] = []
  for _index in 0..<(aliases.length() + 1) {
    match current {
      Named(name) => {
        if seen.contains(name) {
          return typ
        }
        seen.push(name)
        let mut found : IdlType? = None
        for (alias_name, value) in aliases {
          if alias_name == name {
            found = Some(value)
            break
          }
        }
        guard found is Some(next) else { return current }
        current = next
      }
      _ => return current
    }
  }
  typ
}

///|
/// Generate field value expression with explicit enum conversion.
fn gen_field_value_expr(
  idl_type : IdlType,
  field_name : String,
  enum_map : Array[(String, Array[String])],
  union_set : Array[String],
) -> String {
  match idl_type {
    // Non-nullable Named field (enum or Union)
    Named(type_name) =>
      match lookup_enum(enum_map, type_name) {
        Some(values) => gen_enum_lookup(field_name, values)
        None => "self." + field_name
      }
    // Nullable Named field (enum or Union)
    Nullable(Named(type_name)) =>
      match lookup_enum(enum_map, type_name) {
        Some(values) => gen_nullable_enum_lookup(field_name, values)
        None =>
          // Special handling for Nullable Union types
          if is_in_union_set(union_set, type_name) {
            gen_nullable_union_expr(field_name)
          } else {
            "self." + field_name
          }
      }
    // Double nullable (Nullable[T] type)
    Nullable(Nullable(inner)) =>
      gen_nullable_field_expr(field_name, inner, enum_map, union_set)
    // Others as-is
    _ => "self." + field_name
  }
}

///|
/// Generate JS expression for optional (Option[T]) field
/// MoonBit JS backend Option representations:
///   - String?:    None=undefined, Some=value  → pass-through
///   - Bool?:      None=-1, Some=true/false    → -1 to undefined conversion
///   - Int?:         None=undefined, Some=value  → pass-through
///   - Double?:      None={$tag:0}, Some={$tag:1,_0:v} → tagged unwrap
///   - Enum?:      None=undefined, Some=index  → undefined check + array lookup
///   - Named?:     None={$tag:0}, Some={$tag:1,_0:v} → tagged unwrap
fn gen_optional_field_value_expr(
  idl_type : IdlType,
  field_name : String,
  enum_map : Array[(String, Array[String])],
  _union_set : Array[String],
) -> String {
  // Bool? uses -1 sentinel for None in MoonBit JS backend
  match idl_type {
    Primitive("boolean") =>
      return "(self." +
        field_name +
        " === -1 ? undefined : self." +
        field_name +
        ")"
    _ => ()
  }
  // String?, Int? use undefined/value representation → pass-through
  // (Double? is tagged, handled below)
  if is_primitive_option_type(idl_type) {
    return "self." + field_name
  }
  // Enum? uses undefined/index representation (NOT tagged)
  match idl_type {
    Named(type_name) =>
      match lookup_enum(enum_map, type_name) {
        Some(values) => return gen_optional_enum_field_expr(field_name, values)
        None => ()
      }
    _ => ()
  }
  // Non-primitive, non-enum types use tagged representation - need IIFE unwrap
  let payload = match idl_type {
    Nullable(Named(type_name)) =>
      match lookup_enum(enum_map, type_name) {
        Some(values) => gen_nullable_enum_array_lookup(values, "v._0")
        None => "v._0"
      }
    _ => "v._0"
  }
  js_option_to_js(field_name, payload)
}

///|
/// Generate JS expression for optional enum field (undefined/index representation)
/// Example: gen_optional_enum_field_expr("endings", ["transparent", "native"]) =>
///   "((() => { const v = self.endings; if (v === undefined) return undefined; return ['transparent', 'native'][v]; })())"
fn gen_optional_enum_field_expr(
  field_name : String,
  values : Array[String],
) -> String {
  let result = StringBuilder()
  result.write_string("((() => { const v = self.")
  result.write_string(field_name)
  result.write_string("; if (v === undefined) return undefined; return ")
  result.write_string(gen_enum_array_lookup(values, "v"))
  result.write_string("; })())")
  result.to_string()
}

///|
/// Check if type is in Union type set
fn is_in_union_set(union_set : Array[String], type_name : String) -> Bool {
  union_set.contains(type_name)
}

///|
/// Union wrappers are host values, not objects with MoonBit methods.
fn gen_nullable_union_expr(field_name : String) -> String {
  "((() => { const v = self." +
  field_name +
  "; return v && v.$tag === 1 ? v._0 : null; })())"
}

///|
/// Generate JS expression for Nullable[T] type field
fn gen_nullable_field_expr(
  field_name : String,
  inner_type : IdlType,
  enum_map : Array[(String, Array[String])],
  _union_set : Array[String],
) -> String {
  let result = StringBuilder()
  result.write_string("((() => { const v = self.")
  result.write_string(field_name)
  result.write_string("; ")
  result.write_string(js_nullable_check("v"))
  result.write_string("return ")

  // Conversion needed if inner type is enum or Union
  match inner_type {
    Named(type_name) =>
      match lookup_enum(enum_map, type_name) {
        Some(values) => {
          result.write_string("[")
          ignore(
            values
            .iter()
            .fold(init=true, fn(first, v) {
              if !first {
                result.write_string(", ")
              }
              result.write_string("'")
              result.write_string(v)
              result.write_string("'")
              false
            }),
          )
          result.write_string("][")
          result.write_string(js_nullable_payload("v"))
          result.write_string("]")
        }
        None => result.write_string(js_nullable_payload("v"))
      }
    _ => result.write_string(js_nullable_payload("v"))
  }
  result.write_string("; })())")
  result.to_string()
}

///|
/// Generate JS expression for Nullable[T] type field (optional + nullable combination)
/// For fields where IdlType is Nullable(inner) and required=false
fn gen_nullable_type_field_expr(
  idl_type : IdlType,
  field_name : String,
  enum_map : Array[(String, Array[String])],
  _union_set : Array[String],
) -> String {
  // IdlType should be Nullable(inner)
  let inner_type = match idl_type {
    Nullable(inner) => inner
    _ => idl_type // Fallback
  }
  let result = StringBuilder()
  result.write_string("((() => { const v = self.")
  result.write_string(field_name)
  result.write_string("; ")
  result.write_string(js_nullable_check("v"))

  // Conversion needed if inner type is enum or Union
  match inner_type {
    Named(type_name) =>
      match lookup_enum(enum_map, type_name) {
        Some(values) => {
          result.write_string("return [")
          ignore(
            values
            .iter()
            .fold(init=true, fn(first, v) {
              if !first {
                result.write_string(", ")
              }
              result.write_string("'")
              result.write_string(v)
              result.write_string("'")
              false
            }),
          )
          result.write_string("][")
          result.write_string(js_nullable_payload("v"))
          result.write_string("];")
        }
        None => {
          result.write_string("return ")
          result.write_string(js_nullable_payload("v"))
          result.write_string(";")
        }
      }
    _ => {
      result.write_string("return ")
      result.write_string(js_nullable_payload("v"))
      result.write_string(";")
    }
  }
  result.write_string(" })())")
  result.to_string()
}

///|
/// Generate array lookup expression for non-nullable enum
fn gen_enum_lookup(field_name : String, values : Array[String]) -> String {
  gen_enum_array_lookup(values, "self." + field_name)
}

///|
/// Generate array lookup expression for nullable enum (with null check)
fn gen_nullable_enum_lookup(
  field_name : String,
  values : Array[String],
) -> String {
  gen_nullable_enum_array_lookup(values, "self." + field_name)
}

///|
/// Generate MoonBit enum from Enum
pub fn gen_enum(enum_def : EnumDef) -> String {
  let mut result = ""

  // Segment marker
  result = result + "///|\n"

  // Doc comment
  result = result + "/// "
  result = result + enum_def.name
  result = result + " enum\n"

  // enum definition
  result = result + "pub(all) enum "
  result = result + enum_def.name
  result = result + " {\n"
  result = enum_def.values
    .iter()
    .fold(init=result, fn(acc, value) {
      // Convert value to PascalCase
      let variant = to_pascal_case(value)
      acc + "  " + variant + "\n"
    })
  result = result + "} derive(Eq, Debug)\n\n"

  // Conversion function to string
  result = result + "/// Convert to string value\n"
  result = result + "pub fn "
  result = result + enum_def.name
  result = result + "::to_string(self : "
  result = result + enum_def.name
  result = result + ") -> String {\n"
  result = result + "  match self {\n"
  result = enum_def.values
    .iter()
    .fold(init=result, fn(acc, value) {
      let variant = to_pascal_case(value)
      acc + "    " + enum_def.name + "::" + variant + " => \"" + value + "\"\n"
    })
  result = result + "  }\n"
  result = result + "}\n\n"

  // Conversion function from string
  result = result + "/// Parse from string value\n"
  result = result + "pub fn "
  result = result + enum_def.name
  result = result + "::from_string(s : String) -> "
  result = result + enum_def.name
  result = result + "? {\n"
  result = result + "  match s {\n"
  result = enum_def.values
    .iter()
    .fold(init=result, fn(acc, value) {
      let variant = to_pascal_case(value)
      acc +
      "    \"" +
      value +
      "\" => Some(" +
      enum_def.name +
      "::" +
      variant +
      ")\n"
    })
  result = result + "    _ => None\n"
  result = result + "  }\n"
  result = result + "}\n"
  result
}

///|
/// Convert field name for MoonBit (lowercase start, hyphen to underscore)
fn field_name_to_moonbit(name : String) -> String {
  let result = StringBuilder()
  ignore(
    name
    .iter()
    .fold(init=true, fn(first, c) {
      if first {
        // Lowercase the first character
        if c >= 'A' && c <= 'Z' {
          result.write_char((c.to_int() + 32).unsafe_to_char())
        } else {
          result.write_char(c)
        }
      } else if c == '-' {
        result.write_char('_')
      } else {
        result.write_char(c)
      }
      false
    }),
  )
  escape_reserved(result.to_string())
}

///|
/// Check if name conflicts with MoonBit primitive type names
fn is_primitive_type_name(name : String) -> Bool {
  // MoonBit built-in type names
  match name {
    "String"
    | "Bool"
    | "Int"
    | "Int64"
    | "Double"
    | "Unit"
    | "Bytes"
    | "Array"
    | "Char" => true
    _ => false
  }
}

///|
/// Generate MoonBit type alias from Typedef
/// dictionary_names: List of Dictionary type names (used in is_*/as_* type checks)
/// union_typedef_map: Map from Union typedef name to member types
/// enum_names: List of enum type names (instanceof -> typeof === 'string')
/// primitive_typedef_map: Map from primitive typedef name to resolved type
/// callback_interface_names: List of callback interface type names (instanceof -> typeof === 'function')
pub fn gen_typedef(
  typedef_def : TypedefDef,
  dictionary_names? : Array[String] = [],
  union_typedef_map? : Array[(String, Array[IdlType])] = [],
  enum_names? : Array[String] = [],
  primitive_typedef_map? : Array[(String, IdlType)] = [],
  callback_interface_names? : Array[String] = [],
) -> String {
  // Avoid conflict with primitive type names
  if is_primitive_type_name(typedef_def.name) {
    return ""
  }

  // Skip single-member Union (should use that type directly)
  match typedef_def.idl_type {
    Union(members) => if members.length() == 1 { return "" }
    _ => ()
  }
  let mut result = ""

  // For Promise(Union(...)), skip here as comment will be output later
  let skip_initial_comment = match typedef_def.idl_type {
    Promise(Union(members)) => members.length() > 1
    _ => false
  }
  if !skip_initial_comment {
    // Segment marker
    result = result + "///|\n"

    // Doc comment
    result = result + "/// "
    result = result + typedef_def.name
    result = result + " typedef\n"
  }

  // For Union types, define as opaque type (for type-safe factory functions)
  match typedef_def.idl_type {
    Union(members) => {
      // Opaque type definition (independent type, not JsValue alias)
      result = result + "pub type "
      result = result + typedef_def.name
      result = result + "\n\n"

      // to_js_value method (for passing to JS)
      result = result + "pub extern \"js\" fn "
      result = result + typedef_def.name
      result = result + "::to_js_value(self : "
      result = result + typedef_def.name
      result = result + ") -> JsValue =\n  #| (self) => self\n\n"

      // Factory functions (create Union type from each member type)
      result = members
        .iter()
        .fold(init=result, fn(acc, mem) {
          let factory = gen_union_factory(typedef_def.name, mem)
          if factory != "" {
            acc + factory
          } else {
            acc
          }
        })

      // is_* check functions (determine Union contents)
      result = members
        .iter()
        .fold(init=result, fn(acc, mem) {
          let is_check = gen_union_is_check(
            typedef_def.name,
            mem,
            dictionary_names,
            union_typedef_map~,
            enum_names~,
            primitive_typedef_map~,
            callback_interface_names~,
          )
          if is_check != "" {
            acc + is_check
          } else {
            acc
          }
        })

      // as_* conversion functions (get concrete type from Union)
      result = members
        .iter()
        .fold(init=result, fn(acc, mem) {
          let as_cast = gen_union_as_cast(
            typedef_def.name,
            mem,
            dictionary_names,
            union_typedef_map~,
            enum_names~,
            primitive_typedef_map~,
            callback_interface_names~,
          )
          if as_cast != "" {
            acc + as_cast
          } else {
            acc
          }
        })

      // bind_as_* convenience functions (Option[Union] -> Option[ConcreteType])
      result = members
        .iter()
        .fold(init=result, fn(acc, mem) {
          let bind = gen_union_bind_as(
            typedef_def.name,
            mem,
            dictionary_names,
            union_typedef_map~,
            enum_names~,
            primitive_typedef_map~,
            callback_interface_names~,
          )
          if bind != "" {
            acc + bind
          } else {
            acc
          }
        })
    }
    Promise(inner) =>
      // If Union is inside Promise, generate Union type definition first
      match inner {
        Union(members) => {
          if members.length() > 1 {
            // Generate inner Union type definition
            let union_name = generate_union_name(members)
            let union_typedef : TypedefDef = {
              name: union_name,
              idl_type: inner,
            }
            result = result +
              gen_typedef(
                union_typedef,
                dictionary_names~,
                union_typedef_map~,
                enum_names~,
                primitive_typedef_map~,
                callback_interface_names~,
              )
            result = result + "\n///|\n"
            result = result + "/// "
            result = result + typedef_def.name
            result = result + " typedef\n"
          }
          // Generate type alias for Promise[UnionName]
          result = result + "pub type "
          result = result + typedef_def.name
          result = result + " = "
          result = result + typedef_def.idl_type.to_moonbit_simple()
          result = result + "\n"
        }
        _ => {
          // Non-Union types use type alias as before
          result = result + "pub type "
          result = result + typedef_def.name
          result = result + " = "
          result = result + typedef_def.idl_type.to_moonbit_simple()
          result = result + "\n"
        }
      }
    _ => {
      // Non-Union types use traditional type alias
      result = result + "pub type "
      result = result + typedef_def.name
      result = result + " = "
      result = result + typedef_def.idl_type.to_moonbit_simple()
      result = result + "\n"
    }
  }
  result
}

///|
/// Generate factory function for Union type
fn gen_union_factory(union_name : String, member_type : IdlType) -> String {
  let moonbit_type = member_type.to_moonbit_simple()
  let factory_name = get_factory_name(member_type)

  // Skip JsValue type (for Any, nested Union, etc.)
  if moonbit_type == "JsValue" || factory_name == "" {
    return ""
  }
  let result = StringBuilder()
  result.write_string("/// Create ")
  result.write_string(union_name)
  result.write_string(" from ")
  result.write_string(moonbit_type)
  result.write_string("\n")
  result.write_string("pub extern \"js\" fn ")
  result.write_string(union_name)
  result.write_string("::from_")
  result.write_string(factory_name)
  result.write_string("(v : ")
  result.write_string(moonbit_type)
  result.write_string(") -> ")
  result.write_string(union_name)
  result.write_string(" =\n  #| (v) => v\n\n")
  result.to_string()
}

///|
/// Get factory function name from IdlType
fn get_factory_name(idl_type : IdlType) -> String {
  match idl_type {
    Primitive(name) =>
      match name {
        "DOMString" | "USVString" | "ByteString" => "string"
        "boolean" => "bool"
        "byte"
        | "octet"
        | "short"
        | "unsigned short"
        | "long"
        | "unsigned long" => "int"
        "long long" | "unsigned long long" => "int64"
        "float" | "unrestricted float" | "double" | "unrestricted double" =>
          "double"
        _ => ""
      }
    String => "string"
    Named(name) => to_snake_case_factory(name)
    Sequence(inner) => {
      let inner_name = get_factory_name(inner)
      if inner_name != "" {
        "array_of_" + inner_name
      } else {
        "array"
      }
    }
    Nullable(inner) => {
      let inner_name = get_factory_name(inner)
      if inner_name != "" {
        "nullable_" + inner_name
      } else {
        ""
      }
    }
    // Don't generate factory for Void, Any, Promise, Union
    _ => ""
  }
}

///|
/// Convert type name to snake_case (for factory function names)
fn to_snake_case_factory(name : String) -> String {
  to_snake_case(name)
}

///|
/// Generate is_* check function for Union type
fn gen_union_is_check(
  union_name : String,
  member_type : IdlType,
  dictionary_names : Array[String],
  union_typedef_map? : Array[(String, Array[IdlType])] = [],
  enum_names? : Array[String] = [],
  primitive_typedef_map? : Array[(String, IdlType)] = [],
  callback_interface_names? : Array[String] = [],
) -> String {
  let moonbit_type = member_type.to_moonbit_simple()
  let factory_name = get_factory_name(member_type)
  let js_check = get_js_type_check(
    member_type,
    dictionary_names,
    union_typedef_map~,
    enum_names~,
    primitive_typedef_map~,
    callback_interface_names~,
  )

  // Skip JsValue type and types that cannot be checked
  if moonbit_type == "JsValue" || factory_name == "" || js_check == "" {
    return ""
  }
  StringBuilder()
  ..write_string("/// Check if this ")
  ..write_string(union_name)
  ..write_string(" is ")
  ..write_string(moonbit_type)
  ..write_string("\n")
  ..write_string("pub extern \"js\" fn ")
  ..write_string(union_name)
  ..write_string("::is_")
  ..write_string(factory_name)
  ..write_string("(self : ")
  ..write_string(union_name)
  ..write_string(") -> Bool =\n  #| (self) => ")
  ..write_string(js_check)
  ..write_string("\n\n")
  .to_string()
}

///|
/// Generate as_* conversion function for Union type
fn gen_union_as_cast(
  union_name : String,
  member_type : IdlType,
  dictionary_names : Array[String],
  union_typedef_map? : Array[(String, Array[IdlType])] = [],
  enum_names? : Array[String] = [],
  primitive_typedef_map? : Array[(String, IdlType)] = [],
  callback_interface_names? : Array[String] = [],
) -> String {
  let moonbit_type = member_type.to_moonbit_simple()
  let factory_name = get_factory_name(member_type)
  let js_check = get_js_type_check(
    member_type,
    dictionary_names,
    union_typedef_map~,
    enum_names~,
    primitive_typedef_map~,
    callback_interface_names~,
  )

  // Skip JsValue type and types that cannot be checked
  if moonbit_type == "JsValue" || factory_name == "" || js_check == "" {
    return ""
  }
  let result = StringBuilder()
  result.write_string("/// Try to get ")
  result.write_string(union_name)
  result.write_string(" as ")
  result.write_string(moonbit_type)
  result.write_string("\n")
  result.write_string("pub extern \"js\" fn ")
  result.write_string(union_name)
  result.write_string("::as_")
  result.write_string(factory_name)
  result.write_string("(self : ")
  result.write_string(union_name)
  result.write_string(") -> ")
  result.write_string(moonbit_type)
  result.write_string("? =\n  #| (self) => (")
  result.write_string(js_check)
  result.write_string(") ? ")
  // Use primitive Option representation (value/undefined) for primitive types,
  // tagged representation ({$tag:1,_0:v}/{$tag:0}) for non-primitive types
  if is_primitive_option_type(member_type) {
    result.write_string("self")
    result.write_string(" : ")
    result.write_string("undefined")
  } else {
    result.write_string(js_some("self"))
    result.write_string(" : ")
    result.write_string(js_none())
  }
  result.write_string("\n\n")
  result.to_string()
}

///|
/// Generate bind_as_* convenience function for Union type.
/// Flattens Option[Union] -> Option[ConcreteType] in one step.
fn gen_union_bind_as(
  union_name : String,
  member_type : IdlType,
  dictionary_names : Array[String],
  union_typedef_map? : Array[(String, Array[IdlType])] = [],
  enum_names? : Array[String] = [],
  primitive_typedef_map? : Array[(String, IdlType)] = [],
  callback_interface_names? : Array[String] = [],
) -> String {
  let moonbit_type = member_type.to_moonbit_simple()
  let factory_name = get_factory_name(member_type)
  let js_check = get_js_type_check(
    member_type,
    dictionary_names,
    union_typedef_map~,
    enum_names~,
    primitive_typedef_map~,
    callback_interface_names~,
  )

  // Skip JsValue type and types that cannot be checked
  if moonbit_type == "JsValue" || factory_name == "" || js_check == "" {
    return ""
  }
  StringBuilder()
  ..write_string("/// Flatten Option[")
  ..write_string(union_name)
  ..write_string("] to ")
  ..write_string(moonbit_type)
  ..write_string("?\n")
  ..write_string("pub fn ")
  ..write_string(union_name)
  ..write_string("::bind_as_")
  ..write_string(factory_name)
  ..write_string("(value : ")
  ..write_string(union_name)
  ..write_string("?) -> ")
  ..write_string(moonbit_type)
  ..write_string("? {\n")
  ..write_string("  match value {\n")
  ..write_string("    Some(v) => v.as_")
  ..write_string(factory_name)
  ..write_string("()\n")
  ..write_string("    None => None\n")
  ..write_string("  }\n")
  ..write_string("}\n\n")
  .to_string()
}

///|
/// Get JS type check code from IdlType
/// dictionary_names: List of Dictionary type names (use typeof instead of instanceof)
/// union_typedef_map: Map from Union typedef name to member types
/// enum_names: List of enum type names (instanceof -> typeof === 'string')
/// primitive_typedef_map: Map from primitive typedef name to resolved type
/// callback_interface_names: List of callback interface type names (instanceof -> typeof === 'function')
fn get_js_type_check(
  idl_type : IdlType,
  dictionary_names : Array[String],
  union_typedef_map? : Array[(String, Array[IdlType])] = [],
  enum_names? : Array[String] = [],
  primitive_typedef_map? : Array[(String, IdlType)] = [],
  callback_interface_names? : Array[String] = [],
) -> String {
  match idl_type {
    Primitive(name) =>
      match name {
        "DOMString" | "USVString" | "ByteString" => "typeof self === 'string'"
        "boolean" => "typeof self === 'boolean'"
        "byte"
        | "octet"
        | "short"
        | "unsigned short"
        | "long"
        | "unsigned long"
        | "long long"
        | "unsigned long long"
        | "float"
        | "unrestricted float"
        | "double"
        | "unrestricted double" => "typeof self === 'number'"
        _ => ""
      }
    String => "typeof self === 'string'"
    Named(name) => {
      // Handle special external types (types not defined in WebIDL specs)
      // CSSOMString is defined as typedef DOMString CSSOMString in CSSOM
      if name == "CSSOMString" {
        return "typeof self === 'string'"
      }
      // WindowProxy is a special type in HTML spec (represents window object)
      // Since JS has no constructor for it, check with typeof if it's a window
      if name == "WindowProxy" {
        return "typeof self === 'object' && self !== null && self.window === self"
      }
      // callback interface types are functions in JS, so use typeof === 'function'
      if callback_interface_names.contains(name) {
        return "typeof self === 'function'"
      }
      // enum types are strings in JS, so use typeof === 'string'
      if enum_names.contains(name) {
        return "typeof self === 'string'"
      }
      // Check primitive typedef with resolved type
      let primitive_check = primitive_typedef_map
        .iter()
        .fold(init=(None : String?), fn(found, entry) {
          match found {
            Some(_) => found
            None => {
              let (typedef_name, resolved_type) = entry
              if typedef_name == name {
                Some(
                  get_js_type_check(
                    resolved_type,
                    dictionary_names,
                    union_typedef_map~,
                    enum_names~,
                    primitive_typedef_map~,
                    callback_interface_names~,
                  ),
                )
              } else {
                None
              }
            }
          }
        })
      match primitive_check {
        Some(check) => return check
        None => ()
      }
      // Dictionary types cannot use instanceof, so check object with typeof
      if dictionary_names.contains(name) {
        return "typeof self === 'object' && self !== null"
      }
      // Union typedef has no JS class, so expand to member types
      let union_check = union_typedef_map
        .iter()
        .fold(init=(None : String?), fn(found, entry) {
          match found {
            Some(_) => found
            None => {
              let (typedef_name, members) = entry
              if typedef_name == name {
                // Combine checks for each member type with OR
                let checks = members
                  .iter()
                  .filter_map(fn(mem) {
                    let check = get_js_type_check(
                      mem,
                      dictionary_names,
                      union_typedef_map~,
                      enum_names~,
                      primitive_typedef_map~,
                      callback_interface_names~,
                    )
                    if check != "" {
                      Some(check)
                    } else {
                      None
                    }
                  })
                  .collect()
                if checks.length() > 0 {
                  Some(checks.iter().collect().join(" || "))
                } else {
                  // If cannot check, always true (sacrificing type safety)
                  Some("true")
                }
              } else {
                None
              }
            }
          }
        })
      match union_check {
        Some(check) => return check
        None => ()
      }
      // Normal Interface type
      "self instanceof " + name
    }
    Sequence(_) => "Array.isArray(self)"
    Nullable(inner) => {
      // Null check is special: null or inner type
      let inner_check = get_js_type_check(
        inner,
        dictionary_names,
        union_typedef_map~,
        enum_names~,
        primitive_typedef_map~,
        callback_interface_names~,
      )
      if inner_check != "" {
        "self === null || (" + inner_check + ")"
      } else {
        "self === null"
      }
    }
    // Void, Any, Promise, Union cannot be checked
    _ => ""
  }
}

// =============================================================================
// from_js field expression generators (JS → MoonBit)
// =============================================================================

///|
/// Generate JS expression for required field in from_js
/// Reverse of gen_field_value_expr: JS value → MoonBit value
fn gen_from_js_required_field_expr(
  idl_type : IdlType,
  js_field_name : String,
  enum_map : Array[(String, Array[String])],
) -> String {
  match idl_type {
    Named(type_name) =>
      match lookup_enum(enum_map, type_name) {
        // Enum: string → indexOf
        Some(values) => gen_enum_index_of_expr(values, "v." + js_field_name)
        None => "v." + js_field_name
      }
    _ => "v." + js_field_name
  }
}

///|
/// Generate JS expression for optional (Option[T]) field in from_js
/// Reverse of gen_optional_field_value_expr
/// JS representations → MoonBit Option:
///   - String?/Int?/Double?: undefined→None, value→Some  (pass-through)
///   - Bool?:      undefined→-1 (sentinel for None)
///   - Enum?:      undefined→None, string→indexOf
///   - Named?:     undefined→{$tag:0}, value→{$tag:1,_0:v}
fn gen_from_js_optional_field_expr(
  idl_type : IdlType,
  js_field_name : String,
  enum_map : Array[(String, Array[String])],
) -> String {
  let v = "v." + js_field_name
  // Bool?: undefined → -1 sentinel
  match idl_type {
    Primitive("boolean") => return "(" + v + " === undefined ? -1 : " + v + ")"
    _ => ()
  }
  // String?, Int?: pass-through (undefined = None)
  // (Double? is tagged, handled below)
  if is_primitive_option_type(idl_type) {
    return v
  }
  // Enum?: undefined → undefined (None), string → indexOf
  match idl_type {
    Named(type_name) =>
      match lookup_enum(enum_map, type_name) {
        Some(values) =>
          return "(" +
            v +
            " === undefined ? undefined : " +
            gen_enum_index_of_expr(values, v) +
            ")"
        None => ()
      }
    _ => ()
  }
  // Named? (interface, union): wrap in tagged Option
  "(" + v + " === undefined ? { $tag: 0 } : { $tag: 1, _0: " + v + " })"
}

///|
/// Generate JS expression for Nullable[T] field in from_js
/// Reverse of gen_nullable_type_field_expr / gen_nullable_field_expr
/// JS: undefined → {$tag:0}, null → {$tag:1}, value → {$tag:2, _0: value}
fn gen_from_js_nullable_field_expr(
  idl_type : IdlType,
  js_field_name : String,
  enum_map : Array[(String, Array[String])],
) -> String {
  let v = "v." + js_field_name
  let inner_type = match idl_type {
    Nullable(inner) => inner
    _ => idl_type
  }
  // Payload expression depends on inner type
  let payload = match inner_type {
    Named(type_name) =>
      match lookup_enum(enum_map, type_name) {
        Some(values) => gen_enum_index_of_expr(values, v)
        None => v
      }
    _ => v
  }
  "(" +
  v +
  " === undefined ? { $tag: 0 } : " +
  v +
  " === null ? { $tag: 1 } : { $tag: 2, _0: " +
  payload +
  " })"
}
