// WebIDL Parser - webidl2.js FFI

///|
/// Type representing a JavaScript value
pub type JsValue

///|
/// Type representing a JavaScript array
pub type JsArray

///|
/// Call webidl2.js parse function
pub extern "js" fn parse_webidl_raw(source : String) -> JsValue =
  #| (source) => {
  #|   try {
  #|     return { success: true, data: require('webidl2').parse(source) };
  #|   } catch (e) {
  #|     return { success: false, error: e.message };
  #|   }
  #| }

///|
/// Check if parse result is successful
pub extern "js" fn is_parse_success(result : JsValue) -> Bool =
  #| (result) => result.success === true

///|
/// Get error message from parse result
pub extern "js" fn get_parse_error(result : JsValue) -> String =
  #| (result) => result.error || "Unknown error"

///|
/// Get data from parse result
pub extern "js" fn get_parse_data(result : JsValue) -> JsArray =
  #| (result) => result.data

///|
/// Get array length
pub extern "js" fn js_array_length(arr : JsArray) -> Int =
  #| (arr) => arr.length

///|
/// Get element from array by index
pub extern "js" fn js_array_get(arr : JsArray, index : Int) -> JsValue =
  #| (arr, index) => arr[index]

///|
/// Get type property from object
pub extern "js" fn get_type(obj : JsValue) -> String =
  #| (obj) => obj.type || ""

///|
/// Get name property from object
pub extern "js" fn get_name(obj : JsValue) -> String =
  #| (obj) => obj.name || ""

///|
/// Get members property from object
pub extern "js" fn get_members(obj : JsValue) -> JsArray =
  #| (obj) => obj.members || []

///|
/// Get idlType property from object
pub extern "js" fn get_idl_type(obj : JsValue) -> JsValue =
  #| (obj) => obj.idlType

///|
/// Check if idlType is a string
pub extern "js" fn is_string_type(idl_type : JsValue) -> Bool =
  #| (t) => typeof t === 'string' || (t && typeof t.idlType === 'string')

///|
/// Get type name from idlType
pub extern "js" fn get_type_name(idl_type : JsValue) -> String =
  #| (t) => typeof t === 'string' ? t : (t && typeof t.idlType === 'string' ? t.idlType : '')

///|
/// Check if idlType is a union type
pub extern "js" fn is_union_type(idl_type : JsValue) -> Bool =
  #| (t) => t && t.union === true

///|
/// Get inner types from union type
pub extern "js" fn get_union_types(idl_type : JsValue) -> JsArray =
  #| (t) => (t && t.idlType) || []

///|
/// Check if idlType is a sequence type
pub extern "js" fn is_sequence_type(idl_type : JsValue) -> Bool =
  #| (t) => t && (t.generic === 'sequence' || t.generic === 'FrozenArray' || t.generic === 'ObservableArray')

///|
/// Get inner type from sequence type
pub extern "js" fn get_sequence_inner_type(idl_type : JsValue) -> JsValue =
  #| (t) => (t && t.idlType && t.idlType[0]) || null

///|
/// Check if idlType is a Promise type
pub extern "js" fn is_promise_type(idl_type : JsValue) -> Bool =
  #| (t) => t && t.generic === 'Promise'

///|
/// Get inner type from Promise type
pub extern "js" fn get_promise_inner_type(idl_type : JsValue) -> JsValue =
  #| (t) => (t && t.idlType && t.idlType[0]) || null

///|
/// Check if idlType is a record type
pub extern "js" fn is_record_type(idl_type : JsValue) -> Bool =
  #| (t) => t && t.generic === 'record'

///|
/// Check if idlType is undefined or void
pub extern "js" fn is_void_or_undefined_type(idl_type : JsValue) -> Bool =
  #| (t) => {
  #|   if (!t) return false;
  #|   const name = typeof t.idlType === 'string' ? t.idlType : '';
  #|   return name === 'undefined' || name === 'void';
  #| }

///|
/// Check if idlType is nullable
pub extern "js" fn is_nullable_type(idl_type : JsValue) -> Bool =
  #| (t) => t && t.nullable === true

///|
/// Get readonly property from object
pub extern "js" fn is_readonly(obj : JsValue) -> Bool =
  #| (obj) => obj.readonly === true

///|
/// Get idlType array from maplike/setlike
pub extern "js" fn get_maplike_types(obj : JsValue) -> JsArray =
  #| (obj) => obj.idlType || []

///|
/// Get element from maplike/setlike idlType array
pub extern "js" fn get_maplike_type_at(types : JsArray, index : Int) -> JsValue =
  #| (types, index) => types[index] || null

///|
/// Get optional property from object
pub extern "js" fn is_optional(obj : JsValue) -> Bool =
  #| (obj) => obj.optional === true

///|
/// Get arguments property from object
pub extern "js" fn get_arguments(obj : JsValue) -> JsArray =
  #| (obj) => obj.arguments || []

///|
/// Get values property from object (for enum)
pub extern "js" fn get_values(obj : JsValue) -> JsArray =
  #| (obj) => obj.values || []

///|
/// Get string value from array
pub extern "js" fn get_string_value(arr : JsArray, index : Int) -> String =
  #| (arr, index) => {
  #|   const v = arr[index];
  #|   return typeof v === 'string' ? v : (v && v.value) || '';
  #| }

///|
/// Get inheritance property from object
pub extern "js" fn get_inheritance(obj : JsValue) -> String =
  #| (obj) => {
  #|   if (!obj.inheritance) return '';
  #|   // inheritance can be a string or an object with .name
  #|   return typeof obj.inheritance === 'string' ? obj.inheritance : (obj.inheritance.name || '');
  #| }

///|
/// Get default value
pub extern "js" fn get_default_value(obj : JsValue) -> String =
  #| (obj) => {
  #|   if (!obj.default) return '';
  #|   const d = obj.default;
  #|   if (typeof d.value === 'string') return d.value;
  #|   return JSON.stringify(d.value);
  #| }

///|
/// Get required property
pub extern "js" fn is_required(obj : JsValue) -> Bool =
  #| (obj) => obj.required === true

///|
/// Check if argument is variadic
pub extern "js" fn is_variadic(obj : JsValue) -> Bool =
  #| (obj) => obj.variadic === true

///|
/// Check if iterable is async
pub extern "js" fn is_async(obj : JsValue) -> Bool =
  #| (obj) => obj.async === true

///|
/// Get idlType array length for iterable
pub extern "js" fn get_idl_type_array_length(obj : JsValue) -> Int =
  #| (obj) => (obj.idlType && Array.isArray(obj.idlType)) ? obj.idlType.length : 0

///|
/// Get special property
pub extern "js" fn get_special(obj : JsValue) -> String =
  #| (obj) => obj.special || ''

///|
/// Get const value
pub extern "js" fn get_const_value(obj : JsValue) -> String =
  #| (obj) => {
  #|   if (!obj.value) return '';
  #|   return String(obj.value.value);
  #| }

///|
/// Check if partial
pub extern "js" fn is_partial(obj : JsValue) -> Bool =
  #| (obj) => obj.partial === true

///|
/// Get target (for partial)
pub extern "js" fn get_target(obj : JsValue) -> String =
  #| (obj) => obj.target || ''

///|
/// Get includes (for includes statement)
pub extern "js" fn get_includes(obj : JsValue) -> String =
  #| (obj) => obj.includes || ''

///|
/// Get extAttrs
pub extern "js" fn get_ext_attrs(obj : JsValue) -> JsArray =
  #| (obj) => obj.extAttrs || []

///|
/// Get rhs from extAttr
pub extern "js" fn get_ext_attr_rhs(obj : JsValue) -> String =
  #| (obj) => {
  #|   if (!obj.rhs) return '';
  #|   return obj.rhs.value || '';
  #| }

///|
/// Convert WebIDL idlType to IdlType
fn convert_idl_type(js_type : JsValue) -> IdlType {
  // Check for complex types first
  if is_union_type(js_type) {
    // Extract union member types
    let union_types_arr = get_union_types(js_type)
    let len = js_array_length(union_types_arr)
    let union_members : Array[IdlType] = []
    let mut i = 0
    while i < len {
      let member_type = js_array_get(union_types_arr, i)
      union_members.push(convert_idl_type(member_type))
      i = i + 1
    }
    return Union(union_members)
  }
  if is_sequence_type(js_type) {
    // Extract sequence inner type
    let inner_js_type = get_sequence_inner_type(js_type)
    let inner_type = convert_idl_type(inner_js_type)
    return Sequence(inner_type)
  }
  if is_promise_type(js_type) {
    // Extract Promise inner type
    let inner_js_type = get_promise_inner_type(js_type)

    // For undefined/void, return Promise[Unit]
    if is_void_or_undefined_type(inner_js_type) {
      return Promise(Void)
    }

    // For union types, process recursively
    if is_union_type(inner_js_type) {
      return Promise(convert_idl_type(inner_js_type))
    }

    // record<K, V> type is treated as JsValue (cannot be expressed in MoonBit)
    if is_record_type(inner_js_type) {
      return Promise(Any)
    }

    // Process other types recursively
    let inner_type = convert_idl_type(inner_js_type)
    return Promise(inner_type)
  }
  if is_nullable_type(js_type) {
    // For nullable, get the inner type properly
    let type_name = get_type_name(js_type)
    if type_name != "" {
      return Nullable(convert_simple_type(type_name))
    }
    return Nullable(Any)
  }
  let type_name = get_type_name(js_type)
  convert_simple_type(type_name)
}

///|
/// Convert simple type name to IdlType
fn convert_simple_type(type_name : String) -> IdlType {
  match type_name {
    "boolean" => Primitive("boolean")
    "byte" | "octet" | "short" | "unsigned short" | "long" | "unsigned long" =>
      Primitive(type_name)
    "long long" | "unsigned long long" => Primitive(type_name)
    "float" | "unrestricted float" | "double" | "unrestricted double" =>
      Primitive(type_name)
    "DOMString" | "USVString" | "ByteString" | "CSSOMString" => String
    "undefined" | "void" => Void
    "any" => Any
    "" => Any
    // Well-known types without formal typedef (same as web-sys)
    "WindowProxy" => Named("Window")
    _ => Named(type_name)
  }
}

///|
/// Convert interface member
fn convert_interface_member(js_mem : JsValue) -> InterfaceMember {
  let mem_type = get_type(js_mem)
  match mem_type {
    "operation" => {
      let args_array = get_arguments(js_mem)
      let args_len = js_array_length(args_array)
      let args : Array[Argument] = []
      let mut i = 0
      while i < args_len {
        let js_arg : JsValue = js_array_get(args_array, i)
        let dv = get_default_value(js_arg)
        let arg : Argument = {
          name: get_name(js_arg),
          idl_type: convert_idl_type(get_idl_type(js_arg)),
          optional: is_optional(js_arg),
          default_value: if dv == "" {
            None
          } else {
            Some(dv)
          },
          variadic: is_variadic(js_arg),
        }
        args.push(arg)
        i = i + 1
      }
      let special_val = get_special(js_mem)
      let op : OperationDef = {
        name: get_name(js_mem),
        return_type: convert_idl_type(get_idl_type(js_mem)),
        arguments: args,
        special: if special_val == "" {
          None
        } else {
          Some(special_val)
        },
        throws: [],
      }
      Operation(op)
    }
    "attribute" => {
      let attr : AttributeDef = {
        name: get_name(js_mem),
        idl_type: convert_idl_type(get_idl_type(js_mem)),
        is_readonly: is_readonly(js_mem),
        setter_throws: [],
      }
      Attribute(attr)
    }
    "const" => {
      let const_def : ConstDef = {
        name: get_name(js_mem),
        idl_type: convert_idl_type(get_idl_type(js_mem)),
        value: get_const_value(js_mem),
      }
      Const(const_def)
    }
    "constructor" => {
      let args_array = get_arguments(js_mem)
      let args_len = js_array_length(args_array)
      let args : Array[Argument] = []
      let mut i = 0
      while i < args_len {
        let js_arg : JsValue = js_array_get(args_array, i)
        let dv = get_default_value(js_arg)
        let arg : Argument = {
          name: get_name(js_arg),
          idl_type: convert_idl_type(get_idl_type(js_arg)),
          optional: is_optional(js_arg),
          default_value: if dv == "" {
            None
          } else {
            Some(dv)
          },
          variadic: is_variadic(js_arg),
        }
        args.push(arg)
        i = i + 1
      }
      let ctor : ConstructorDef = { arguments: args, throws: [], }
      Constructor(ctor)
    }
    "maplike" => {
      let types = get_maplike_types(js_mem)
      let key_type = convert_idl_type(get_maplike_type_at(types, 0))
      let value_type = convert_idl_type(get_maplike_type_at(types, 1))
      let maplike : MaplikeDef = {
        key_type,
        value_type,
        is_readonly: is_readonly(js_mem),
      }
      Maplike(maplike)
    }
    "setlike" => {
      let types = get_maplike_types(js_mem)
      let value_type = convert_idl_type(get_maplike_type_at(types, 0))
      let setlike : SetlikeDef = {
        value_type,
        is_readonly: is_readonly(js_mem),
      }
      Setlike(setlike)
    }
    "iterable" | "async_iterable" => {
      // iterable<V> or iterable<K, V>, or async iterable<K, V>
      let types = get_maplike_types(js_mem)
      let type_count = get_idl_type_array_length(js_mem)
      // webidl2.js uses type "async_iterable" for async, "iterable" with async:false for sync
      let is_async_iter = mem_type == "async_iterable" || is_async(js_mem)
      if type_count >= 2 {
        // iterable<K, V>
        let key_type = convert_idl_type(get_maplike_type_at(types, 0))
        let value_type = convert_idl_type(get_maplike_type_at(types, 1))
        let iter_def : IterableDef = {
          key_type: Some(key_type),
          value_type,
          is_async: is_async_iter,
        }
        Iterable(iter_def)
      } else {
        // iterable<V>
        let value_type = convert_idl_type(get_maplike_type_at(types, 0))
        let iter_def : IterableDef = {
          key_type: None,
          value_type,
          is_async: is_async_iter,
        }
        Iterable(iter_def)
      }
    }
    _ => {
      // Unknown member type, treat as operation with no-op
      let op : OperationDef = {
        name: "_unknown_",
        return_type: Void,
        arguments: [],
        special: None,
        throws: [],
      }
      Operation(op)
    }
  }
}

///|
/// Convert dictionary member
fn convert_dictionary_member(js_member : JsValue) -> DictionaryMember {
  let dv = get_default_value(js_member)
  {
    name: get_name(js_member),
    idl_type: convert_idl_type(get_idl_type(js_member)),
    required: is_required(js_member),
    default_value: if dv == "" {
      None
    } else {
      Some(dv)
    },
  }
}

///|
/// Convert parse result to array of Definition
pub fn convert_to_definitions(result : JsValue) -> Array[Definition] {
  let data = get_parse_data(result)
  let len = js_array_length(data)
  let definitions : Array[Definition] = []
  let mut i = 0
  while i < len {
    let item : JsValue = js_array_get(data, i)
    let item_type = get_type(item)
    match item_type {
      "interface" => {
        let members_array = get_members(item)
        let members_len = js_array_length(members_array)
        let iface_members : Array[InterfaceMember] = []
        let mut j = 0
        while j < members_len {
          let js_mem : JsValue = js_array_get(members_array, j)
          iface_members.push(convert_interface_member(js_mem))
          j = j + 1
        }

        // Check if this is a partial interface
        if is_partial(item) {
          let partial_def : PartialDef = {
            target: get_name(item),
            members: iface_members,
          }
          definitions.push(Partial(partial_def))
        } else {
          let inheritance = get_inheritance(item)
          let iface : InterfaceDef = {
            name: get_name(item),
            members: iface_members,
            inheritance: if inheritance == "" {
              None
            } else {
              Some(inheritance)
            },
            extended_attrs: [],
          }
          definitions.push(Interface(iface))
        }
      }
      "interface mixin" => {
        let members_array = get_members(item)
        let members_len = js_array_length(members_array)
        let mixin_members : Array[InterfaceMember] = []
        let mut j = 0
        while j < members_len {
          let js_mem : JsValue = js_array_get(members_array, j)
          mixin_members.push(convert_interface_member(js_mem))
          j = j + 1
        }
        let mixin_def : InterfaceMixinDef = {
          name: get_name(item),
          members: mixin_members,
        }
        definitions.push(InterfaceMixin(mixin_def))
      }
      "callback interface" => {
        // Extract operation from callback interface
        // callback interface EventListener { void handleEvent(Event event); }
        let members_array = get_members(item)
        let members_len = js_array_length(members_array)
        let mut return_type : IdlType? = None
        let arguments : Array[Argument] = []
        // Find the first operation
        let mut j = 0
        while j < members_len {
          let js_mem : JsValue = js_array_get(members_array, j)
          if get_type(js_mem) == "operation" {
            // Get return type
            return_type = Some(convert_idl_type(get_idl_type(js_mem)))
            // Get arguments
            let args_array = get_arguments(js_mem)
            let args_len = js_array_length(args_array)
            let mut k = 0
            while k < args_len {
              let js_arg : JsValue = js_array_get(args_array, k)
              let dv = get_default_value(js_arg)
              let arg : Argument = {
                name: get_name(js_arg),
                idl_type: convert_idl_type(get_idl_type(js_arg)),
                optional: is_optional(js_arg),
                default_value: if dv == "" {
                  None
                } else {
                  Some(dv)
                },
                variadic: is_variadic(js_arg),
              }
              arguments.push(arg)
              k = k + 1
            }
            break
          }
          j = j + 1
        }
        let callback_def : CallbackInterfaceDef = {
          name: get_name(item),
          return_type,
          arguments,
        }
        definitions.push(CallbackInterface(callback_def))
      }
      "callback" => {
        // Simple callback (e.g., callback FrameRequestCallback = undefined (DOMHighResTimeStamp time))
        let return_type = Some(convert_idl_type(get_idl_type(item)))
        let arguments : Array[Argument] = []
        let args_array = get_arguments(item)
        let args_len = js_array_length(args_array)
        let mut j = 0
        while j < args_len {
          let js_arg : JsValue = js_array_get(args_array, j)
          let dv = get_default_value(js_arg)
          let arg : Argument = {
            name: get_name(js_arg),
            idl_type: convert_idl_type(get_idl_type(js_arg)),
            optional: is_optional(js_arg),
            default_value: if dv == "" {
              None
            } else {
              Some(dv)
            },
            variadic: is_variadic(js_arg),
          }
          arguments.push(arg)
          j = j + 1
        }
        let callback_def : CallbackInterfaceDef = {
          name: get_name(item),
          return_type,
          arguments,
        }
        definitions.push(CallbackInterface(callback_def))
      }
      "dictionary" => {
        let members_array = get_members(item)
        let members_len = js_array_length(members_array)
        let dict_members : Array[DictionaryMember] = []
        let mut j = 0
        while j < members_len {
          let js_mem : JsValue = js_array_get(members_array, j)
          dict_members.push(convert_dictionary_member(js_mem))
          j = j + 1
        }
        let inheritance = get_inheritance(item)
        let dict : DictionaryDef = {
          name: get_name(item),
          members: dict_members,
          inheritance: if inheritance == "" {
            None
          } else {
            Some(inheritance)
          },
        }
        definitions.push(Dictionary(dict))
      }
      "enum" => {
        let values_array = get_values(item)
        let values_len = js_array_length(values_array)
        let enum_values : Array[String] = []
        let mut j = 0
        while j < values_len {
          enum_values.push(get_string_value(values_array, j))
          j = j + 1
        }
        let enum_def : EnumDef = { name: get_name(item), values: enum_values, }
        definitions.push(Enum(enum_def))
      }
      "typedef" => {
        let typedef_def : TypedefDef = {
          name: get_name(item),
          idl_type: convert_idl_type(get_idl_type(item)),
        }
        definitions.push(Typedef(typedef_def))
      }
      "includes" => {
        let includes_def : IncludesDef = {
          target: get_target(item),
          includes: get_includes(item),
        }
        definitions.push(Includes(includes_def))
      }
      "namespace" => {
        let members_array = get_members(item)
        let members_len = js_array_length(members_array)
        let ns_members : Array[InterfaceMember] = []
        let mut j = 0
        while j < members_len {
          let js_mem : JsValue = js_array_get(members_array, j)
          ns_members.push(convert_interface_member(js_mem))
          j = j + 1
        }
        let ns_def : NamespaceDef = {
          name: get_name(item),
          members: ns_members,
        }
        definitions.push(Namespace(ns_def))
      }
      _ => () // Skip unknown types
    }
    i = i + 1
  }
  definitions
}
