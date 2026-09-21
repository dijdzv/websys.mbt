// WebIDL AST type definitions

///|
/// WebIDL definition
pub enum Definition {
  Interface(InterfaceDef)
  InterfaceMixin(InterfaceMixinDef)
  CallbackInterface(CallbackInterfaceDef)
  Dictionary(DictionaryDef)
  Enum(EnumDef)
  Typedef(TypedefDef)
  Partial(PartialDef)
  Includes(IncludesDef)
  Namespace(NamespaceDef)
}

///|
/// Namespace definition
pub struct NamespaceDef {
  name : String
  members : Array[InterfaceMember]
}

///|
/// Includes statement (interface includes mixin)
pub struct IncludesDef {
  target : String // interface name that receives the mixin
  includes : String // mixin name
}

///|
/// Interface definition
pub struct InterfaceDef {
  name : String
  members : Array[InterfaceMember]
  inheritance : String? // parent interface
  extended_attrs : Array[ExtendedAttribute]
}

///|
/// Interface Mixin definition
pub struct InterfaceMixinDef {
  name : String
  members : Array[InterfaceMember]
}

///|
/// Callback Interface definition
/// callback interface EventListener { void handleEvent(Event event); }
/// or callback FrameRequestCallback = void (DOMHighResTimeStamp time);
pub struct CallbackInterfaceDef {
  name : String
  return_type : IdlType? // None for void
  arguments : Array[Argument] // callback arguments
}

///|
/// Interface member
pub enum InterfaceMember {
  Operation(OperationDef)
  Attribute(AttributeDef)
  Const(ConstDef)
  Constructor(ConstructorDef)
  Maplike(MaplikeDef)
  Setlike(SetlikeDef)
  Iterable(IterableDef)
}

///|
/// Iterable definition (sync and async)
pub struct IterableDef {
  key_type : IdlType? // None for value-only iterable
  value_type : IdlType
  is_async : Bool
}

///|
/// Maplike definition
pub struct MaplikeDef {
  key_type : IdlType
  value_type : IdlType
  is_readonly : Bool
}

///|
/// Setlike definition
pub struct SetlikeDef {
  value_type : IdlType
  is_readonly : Bool
}

///|
/// Operation (method) definition
pub struct OperationDef {
  name : String
  return_type : IdlType
  arguments : Array[Argument]
  special : String? // getter, setter, etc.
  throws : Array[String] // exception names (empty = doesn't throw)
}

///|
/// Attribute definition
pub struct AttributeDef {
  name : String
  idl_type : IdlType
  is_readonly : Bool
  setter_throws : Array[String] // exception names for setter
  getter_throws : Array[String] // exception names for getter
}

///|
/// Argument definition
pub struct Argument {
  name : String
  idl_type : IdlType
  optional : Bool
  default_value : String?
  variadic : Bool
}

///|
/// Constructor definition
pub struct ConstructorDef {
  arguments : Array[Argument]
  throws : Array[String] // exception names (empty = doesn't throw)
}

///|
/// Const definition
pub struct ConstDef {
  name : String
  idl_type : IdlType
  value : String
}

///|
/// Dictionary definition
pub struct DictionaryDef {
  name : String
  members : Array[DictionaryMember]
  inheritance : String?
}

///|
/// Dictionary member
pub struct DictionaryMember {
  name : String
  idl_type : IdlType
  required : Bool
  default_value : String?
}

///|
/// Enum definition
pub struct EnumDef {
  name : String
  values : Array[String]
}

///|
/// Typedef definition
pub struct TypedefDef {
  name : String
  idl_type : IdlType
}

///|
/// Partial definition
pub struct PartialDef {
  target : String // interface or dictionary name
  members : Array[InterfaceMember]
}

///|
/// IDL type
pub enum IdlType {
  Primitive(String) // "double", "boolean", "long", etc.
  String // DOMString
  Sequence(IdlType) // sequence<T>
  Promise(IdlType) // Promise<T>
  Nullable(IdlType) // T?
  Union(Array[IdlType]) // (A or B)
  Named(String) // custom type name
  Any
  Void // undefined
}

///|
/// Extended attribute (for future parsing implementation)
pub(all) struct ExtendedAttribute {
  name : String
  value : String?
} derive(Debug)

///|
/// Collector type for inline unions (union name -> member types)
pub struct InlineUnionCollector {
  entries : Array[(String, Array[IdlType])]
}

///|
/// Create empty collector
pub fn InlineUnionCollector::new() -> InlineUnionCollector {
  { entries: [], }
}

///|
/// Add to collector
pub fn InlineUnionCollector::push(
  self : InlineUnionCollector,
  entry : (String, Array[IdlType]),
) -> Unit {
  self.entries.push(entry)
}

///|
/// Iterator for collector
pub fn InlineUnionCollector::iter(
  self : InlineUnionCollector,
) -> Iter[(String, Array[IdlType])] {
  self.entries.iter()
}

///|
/// Length of collector
pub fn InlineUnionCollector::length(self : InlineUnionCollector) -> Int {
  self.entries.length()
}

///|
/// Convert WebIDL type to MoonBit type (simple version, Union as JsValue)
pub fn IdlType::to_moonbit_simple(self : IdlType) -> String {
  match self {
    Primitive(name) => primitive_to_moonbit(name)
    String => "String"
    Void => "Unit"
    Nullable(inner) => {
      let inner_type = inner.to_moonbit_simple()
      // For double nullable, convert to Nullable[T]
      if ends_with_question(inner_type) {
        // T? received -> convert to Nullable[T]
        let base_type = remove_trailing_question(inner_type)
        "Nullable[" + base_type + "]"
      } else {
        inner_type + "?"
      }
    }
    Named(name) => {
      // Convert lowercase type names to JsValue (invalid type names like object)
      let first_char = get_first_char(name)
      if first_char >= 'a' && first_char <= 'z' {
        "JsValue"
      } else {
        name
      }
    }
    Sequence(inner) =>
      // Treat nullable elements as JsValue (Rust web-sys style)
      match inner {
        Nullable(_) => "FixedArray[JsValue]"
        _ => {
          let inner_type = inner.to_moonbit_simple()
          "FixedArray[" + inner_type + "]"
        }
      }
    Promise(inner) => {
      let inner_type = inner.to_moonbit_simple()
      "Promise[" + inner_type + "]"
    }
    Union(members) => generate_union_name(members)
    Any => "JsValue"
  }
}

///|
/// Generate union type name (generate unique name from member types)
/// Example: (Blob or DOMString) -> "BlobOrString"
pub fn generate_union_name(members : Array[IdlType]) -> String {
  let parts : Array[String] = members
    .iter()
    .filter_map(fn(mem) {
      let part = get_union_member_name(mem)
      if part != "" {
        Some(part)
      } else {
        None
      }
    })
    .collect()
  // Join member names (e.g., StringOrCanvasGradientOrCanvasPattern)
  let result = StringBuilder()
  ignore(
    parts
    .iter()
    .fold(init=true, fn(first, part) {
      if !first {
        result.write_string("Or")
      }
      result.write_string(part)
      false
    }),
  )
  result.to_string()
}

///|
/// Get union member type name (for name generation)
fn get_union_member_name(idl_type : IdlType) -> String {
  match idl_type {
    Primitive(name) =>
      match name {
        // Map string types to "String"
        "DOMString" | "USVString" | "ByteString" => "String"
        _ => {
          let result = primitive_to_moonbit(name)
          // For unknown types (JsValue), fall back to capitalize_first
          if result == "JsValue" {
            capitalize_first(name)
          } else {
            result
          }
        }
      }
    String => "String"
    Named(name) => {
      // Capitalize if starts with lowercase (e.g., bigint)
      let first_char = get_first_char(name)
      if first_char >= 'a' && first_char <= 'z' {
        capitalize_first(name)
      } else {
        name
      }
    }
    Sequence(inner) => {
      let inner_name = get_union_member_name(inner)
      if inner_name != "" {
        "ArrayOf" + inner_name
      } else {
        "Array"
      }
    }
    Nullable(inner) => {
      let inner_name = get_union_member_name(inner)
      if inner_name != "" {
        "Nullable" + inner_name
      } else {
        "Nullable"
      }
    }
    Promise(inner) => {
      let inner_name = get_union_member_name(inner)
      if inner_name != "" {
        "PromiseOf" + inner_name
      } else {
        "Promise"
      }
    }
    Union(members) =>
      // Generate name recursively for nested unions
      generate_union_name(members)
    Void => "Void"
    Any => "Any"
  }
}

///|
/// Capitalize the first character of a string
fn capitalize_first(s : String) -> String {
  let chars = s.to_array()
  if chars.is_empty() {
    return ""
  }
  let first = chars[0]
  if first >= 'a' && first <= 'z' {
    let upper = (first.to_int() - 32).unsafe_to_char()
    let result = StringBuilder()
    result.write_char(upper)
    for i = 1; i < chars.length(); i = i + 1 {
      result.write_char(chars[i])
    }
    result.to_string()
  } else {
    s
  }
}
