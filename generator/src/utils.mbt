// Common utility functions

///|
/// Check if string ends with ?
pub fn ends_with_question(s : String) -> Bool {
  s.to_array().last() == Some('?')
}

///|
/// Get first character of string
pub fn get_first_char(s : String) -> Char {
  s.to_array().get(0).unwrap_or(' ')
}

///|
/// Remove trailing ? from string
pub fn remove_trailing_question(s : String) -> String {
  let chars = s.to_array()
  let len = chars.length()
  if len <= 1 {
    return ""
  }
  String::from_array(chars[:len - 1])
}

///|
/// Pre-process identifier before snake_case conversion.
/// Handles digit+uppercase patterns like "2D" → "_2d" (same as web-sys's fix_ident).
fn fix_ident(name : String) -> String {
  let result = name
    .replace(old="1D", new="_1d")
    .replace(old="2D", new="_2d")
    .replace(old="3D", new="_3d")
  result
}

///|
/// Convert to snake_case (handles acronyms correctly)
/// Example: UIEvent -> ui_event, HTMLElement -> html_element, XMLHttpRequest -> xml_http_request
/// Example: CanvasRenderingContext2D -> canvas_rendering_context_2d
pub fn to_snake_case(name : String) -> String {
  let chars = fix_ident(name).to_array()
  let len = chars.length()
  if len == 0 {
    return ""
  }
  let result = StringBuilder()
  for i = 0; i < len; i = i + 1 {
    let c = chars[i]
    let is_upper = c >= 'A' && c <= 'Z'
    if is_upper {
      let prev_is_upper = if i > 0 {
        let p = chars[i - 1]
        p >= 'A' && p <= 'Z'
      } else {
        false
      }
      let next_is_lower = if i + 1 < len {
        let n = chars[i + 1]
        n >= 'a' && n <= 'z'
      } else {
        false
      }
      // Conditions to insert underscore:
      // 1. Not at the beginning AND
      // 2. (previous is lowercase OR (previous is uppercase and next is lowercase))
      if i > 0 && (!prev_is_upper || (prev_is_upper && next_is_lower)) {
        result.write_char('_')
      }
      // Convert uppercase to lowercase
      let lower = (c.to_int() + 32).unsafe_to_char()
      result.write_char(lower)
    } else if c == '-' {
      result.write_char('_')
    } else {
      result.write_char(c)
    }
  }
  result.to_string()
}

///|
/// Convert string to PascalCase
pub fn to_pascal_case(s : String) -> String {
  if s.is_empty() {
    return "Empty"
  }
  // State: (result, capitalize_next, first_char)
  let (result, _, _) = s
    .iter()
    .fold(init=("", true, true), fn(state, c) {
      let (result, capitalize_next, first_char) = state
      // Separator characters (capitalize next character, remove the separator itself)
      if c == '-' ||
        c == '_' ||
        c == ' ' ||
        c == '/' ||
        c == '+' ||
        c == '.' ||
        c == ':' ||
        c == '*' {
        (result, true, first_char)
      } else if capitalize_next {
        // Prepend N if first character is a digit (N1, N2d, etc.)
        if first_char && c >= '0' && c <= '9' {
          (result + "N" + c.to_string(), false, false)
        } else if c >= 'a' && c <= 'z' {
          // Convert lowercase to uppercase (ASCII: 'a'=97, 'A'=65, diff=32)
          let upper = (c.to_int() - 32).unsafe_to_char()
          (result + upper.to_string(), false, false)
        } else {
          (result + c.to_string(), false, false)
        }
      } else {
        (result + c.to_string(), false, false)
      }
    })
  result
}

///|
/// Escape MoonBit reserved keywords
pub fn escape_reserved(name : String) -> String {
  // MoonBit reserved keywords (including future reserved keywords that cause warnings)
  match name {
    "type"
    | "match"
    | "if"
    | "else"
    | "for"
    | "while"
    | "break"
    | "continue"
    | "return"
    | "fn"
    | "let"
    | "mut"
    | "pub"
    | "priv"
    | "struct"
    | "enum"
    | "trait"
    | "impl"
    | "self"
    | "async"
    | "await"
    | "true"
    | "false"
    | "loop"
    | "in"
    | "is"
    | "as"
    | "with"
    | "derive"
    | "test"
    | "extern"
    | "init"
    | "member"
    | "catch"
    | "guard"
    | "raise"
    | "try"
    // Future reserved keywords
    | "constructor"
    | "define"
    | "namespace"
    | "resume"
    | "finally"
    | "yield"
    | "module"
    | "alias"
    | "ref"
    | "where"
    | "method"
    | "extend"
    | "use" => name + "_"
    _ => name
  }
}

// --- Option (built-in type) JS representation helpers ---
//
// MoonBit's JS backend uses different representations for Option depending on
// the inner type:
//   - String?, Bool?, Int? etc. (primitives): undefined = None, raw value = Some
//   - UserType? (opaque/named types): { $tag: 0 } = None, { $tag: 1, _0: v } = Some

///|
/// Check if an IdlType uses the primitive Option representation (undefined/value)
/// vs the tagged representation ({ $tag: 0/1 })
pub fn is_primitive_option_type(inner_type : IdlType) -> Bool {
  match inner_type {
    String | Sequence(_) => true
    // Double? uses tagged representation ({$tag:0/1}), not pass-through
    Primitive("float")
    | Primitive("unrestricted float")
    | Primitive("double")
    | Primitive("unrestricted double") => false
    Primitive(_) => true
    _ => false
  }
}

///|
/// Build JS expression for Option::Some in extern "js" return context
/// Used for user-defined types (instanceof checks, union casts)
/// Example: js_some("self") => "{ $tag: 1, _0: self }"
pub fn js_some(value_expr : String) -> String {
  "{ $tag: 1, _0: " + value_expr + " }"
}

///|
/// Build JS expression for Option::None in extern "js" return context
/// Used for user-defined types (instanceof checks, union casts)
/// Example: js_none() => "{ $tag: 0 }"
pub fn js_none() -> String {
  "{ $tag: 0 }"
}

///|
/// Wrap a JS call expression to handle nullable return types.
/// Converts JS null/undefined to the correct MoonBit Option representation.
/// For non-nullable types, returns the expression unchanged.
pub fn wrap_nullable_return(js_expr : String, return_type : IdlType) -> String {
  match return_type {
    Nullable(inner) =>
      if is_primitive_option_type(inner) {
        // String?, Bool?, Int?: convert null to undefined (MoonBit's None for primitives)
        "(" + js_expr + ") ?? undefined"
      } else {
        // User-defined type?: wrap with $tag
        "(() => { const v = " +
        js_expr +
        "; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()"
      }
    _ => js_expr
  }
}

///|
/// Build JS IIFE to convert Option field to JS value (Some → value, None → undefined)
/// Example: js_option_to_js("field", "v._0") =>
///   "((() => { const v = self.field; if (v.$tag !== 1) return undefined; return v._0; })())"
pub fn js_option_to_js(field_name : String, payload_expr : String) -> String {
  "((() => { const v = self." +
  field_name +
  "; if (v === undefined || v.$tag !== 1) return undefined; return " +
  payload_expr +
  "; })())"
}

// --- Nullable (user-defined enum) JS representation helpers ---

///|
/// Build JS check part for Nullable enum (Undefined=$tag:0, Null=$tag:1, Value=$tag:2)
/// Example: js_nullable_check("v") =>
///   "if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; "
pub fn js_nullable_check(var_name : String) -> String {
  "if (" +
  var_name +
  ".$tag === 0) return undefined; if (" +
  var_name +
  ".$tag === 1) return null; "
}

///|
/// Get JS payload expression from Nullable Value variant
/// Example: js_nullable_payload("v") => "v._0"
pub fn js_nullable_payload(var_name : String) -> String {
  var_name + "._0"
}

///|
/// Unwrap an Option[Named] parameter for JS call
/// MoonBit Option: {$tag:0}=None, {$tag:1, _0:v}=Some
/// WebIDL Nullable(Named(T)) maps to MoonBit Option[T]
/// Example: unwrap_option_named_param("listener") =>
///   "(listener.$tag === 1 ? listener._0 : null)"
pub fn unwrap_option_named_param(param_name : String) -> String {
  "(" + param_name + ".$tag === 1 ? " + param_name + "._0 : null)"
}

///|
/// Unwrap a Nullable named parameter for JS call
/// MoonBit Nullable enum: {$tag:0}=Undefined, {$tag:1}=Null, {$tag:2,_0:v}=Value
/// Example: unwrap_nullable_named_param("listener") =>
///   "(listener.$tag === 2 ? listener._0 : listener.$tag === 1 ? null : undefined)"
pub fn unwrap_nullable_named_param(param_name : String) -> String {
  "(" +
  param_name +
  ".$tag === 2 ? " +
  param_name +
  "._0 : " +
  param_name +
  ".$tag === 1 ? null : undefined)"
}

///|
/// Check if an IdlType is Int64 (long long / unsigned long long)
pub fn is_int64_type(idl_type : IdlType) -> Bool {
  idl_type is (Primitive("long long") | Primitive("unsigned long long"))
}

///|
/// Convert WebIDL integer numbers to the current JS backend's BigInt representation.
pub fn wrap_int64_return(js_expr : String) -> String {
  "BigInt.asUintN(64, BigInt(" + js_expr + "))"
}

///|
/// Convert MoonBit Int64 parameter to JS Number expression
/// WebIDL long long uses Number at the browser boundary, not JS BigInt.
pub fn int64_param_to_js(param_name : String) -> String {
  "Number(BigInt.asIntN(64, " + param_name + "))"
}

///|
/// Unified return expression wrapper that handles both Int64 and Nullable returns.
/// Replaces direct calls to wrap_nullable_return in gen_interface.mbt.
pub fn wrap_return_expr(js_expr : String, return_type : IdlType) -> String {
  match return_type {
    Nullable(inner) =>
      if is_int64_type(inner) {
        // Preserve nullability before converting the numeric payload.
        if is_primitive_option_type(inner) {
          // Int64 is primitive, so use undefined for None
          "(() => { const v = " +
          js_expr +
          "; return v == null ? undefined : BigInt.asUintN(64, BigInt(v)); })()"
        } else {
          "(() => { const v = " +
          js_expr +
          "; return v == null ? { $tag: 0 } : { $tag: 1, _0: BigInt.asUintN(64, BigInt(v)) }; })()"
        }
      } else {
        wrap_nullable_return(js_expr, return_type)
      }
    _ =>
      if is_int64_type(return_type) {
        wrap_int64_return(js_expr)
      } else {
        js_expr
      }
  }
}

///|
/// Convert WebIDL primitive type to MoonBit type
/// Unknown primitives print a warning and return "JsValue"
pub fn primitive_to_moonbit(name : String) -> String {
  match name {
    "boolean" => "Bool"
    "byte" | "octet" | "short" | "unsigned short" | "long" | "unsigned long" =>
      "Int"
    "long long" | "unsigned long long" => "Int64"
    "float" | "unrestricted float" | "double" | "unrestricted double" =>
      "Double"
    _ => {
      println("Warning: Unknown primitive type '\{name}', using JsValue")
      "JsValue"
    }
  }
}

///|
/// Generate error enum name from method name.
/// "setAttribute" -> "SetAttributeError"
/// If interface_prefix is provided: "ElementSetAttributeError"
pub fn gen_error_enum_name(
  method_name : String,
  interface_prefix? : String = "",
) -> String {
  let pascal = to_pascal_case(method_name)
  if interface_prefix == "" {
    pascal + "Error"
  } else {
    interface_prefix + pascal + "Error"
  }
}

///|
/// Generate the MoonBit return type for a throwing method.
/// Non-void: Result[ReturnType, ErrorEnumName]
/// Void: Result[Unit, ErrorEnumName]
pub fn gen_throwing_return_type(
  return_type : String,
  error_enum_name : String,
) -> String {
  "Result[" + return_type + ", " + error_enum_name + "]"
}

///|
/// Wrap a JS call expression with try-catch for throwing methods.
/// Returns a JS expression that produces Result[T, E] representation.
/// Ok = {$tag: 1, _0: value}, Err = {$tag: 0, _0: classified_error}
pub fn wrap_throwing_js_expr(
  js_expr : String,
  return_type : IdlType,
  exceptions : Array[String],
) -> String {
  let classify = gen_inline_classify_js(exceptions)
  let ok_value = match return_type {
    Void => "undefined"
    _ => wrap_return_expr(js_expr, return_type)
  }
  let is_void = return_type is Void
  if is_void {
    "(() => { try { " +
    js_expr +
    "; return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: " +
    classify +
    " }; } })()"
  } else {
    "(() => { try { return { $tag: 1, _0: " +
    ok_value +
    " }; } catch(e) { return { $tag: 0, _0: " +
    classify +
    " }; } })()"
  }
}

///|
/// Wrap a Promise JS call expression with .then().catch() for throwing methods.
/// Returns a JS expression that produces Promise[Result[T, E]] representation.
/// Ok = {$tag: 1, _0: value}, Err = {$tag: 0, _0: classified_error}
pub fn wrap_promise_throwing_js_expr(
  js_expr : String,
  inner_type : IdlType,
  exceptions : Array[String],
) -> String {
  let classify = gen_inline_classify_js(exceptions)
  let ok_value = match inner_type {
    Void => "({ $tag: 1, _0: undefined })"
    _ => {
      let inner_wrapped = wrap_return_expr("r", inner_type)
      "({ $tag: 1, _0: " + inner_wrapped + " })"
    }
  }
  js_expr +
  ".then(r => " +
  ok_value +
  ").catch(e => ({ $tag: 0, _0: " +
  classify +
  " }))"
}

///|
/// Compute throws context for code generation.
/// Returns (effective_return_type, is_throwing).
/// For Promise-returning methods: Promise[Result[T, E]] (rejection-based errors).
/// For non-Promise methods: Result[T, E] (synchronous try-catch).
pub fn compute_throws_context(
  throws : Array[String],
  method_name : String,
  interface_name : String,
  base_return_type : String,
  idl_return_type? : IdlType = Void,
) -> (String, Bool) {
  if throws.length() > 0 {
    let error_enum_name = gen_error_enum_name(
      method_name,
      interface_prefix=interface_name,
    )
    match idl_return_type {
      Promise(inner) => {
        let inner_type = idl_type_to_moonbit(inner)
        let result_type = gen_throwing_return_type(inner_type, error_enum_name)
        ("Promise[" + result_type + "]", true)
      }
      _ => (gen_throwing_return_type(base_return_type, error_enum_name), true)
    }
  } else {
    (base_return_type, false)
  }
}

///|
/// Wrap JS expression with throws handling if needed.
pub fn wrap_return_or_throwing(
  js_expr : String,
  return_type : IdlType,
  is_throwing : Bool,
  throws : Array[String],
) -> String {
  if is_throwing {
    match return_type {
      Promise(inner) => wrap_promise_throwing_js_expr(js_expr, inner, throws)
      _ => wrap_throwing_js_expr(js_expr, return_type, throws)
    }
  } else {
    wrap_return_expr(js_expr, return_type)
  }
}

///|
/// Check if string starts with prefix (JS FFI)
extern "js" fn starts_with(s : String, prefix : String) -> Bool =
  #| (s, prefix) => s.startsWith(prefix)

///|
/// Slice string from start index (JS String.slice)
extern "js" fn string_from(s : String, start : Int) -> String =
  #| (s, start) => s.slice(start)

///|
/// Check if an array of (String, String) pairs contains a key
pub fn lookup_pair(pairs : Array[(String, String)], key : String) -> String? {
  for entry in pairs {
    if entry.0 == key {
      return Some(entry.1)
    }
  }
  None
}

///|
/// Set a value in a (String, String) pair array, overwriting if key exists.
pub fn set_pair(
  pairs : Array[(String, String)],
  key : String,
  value : String,
) -> Unit {
  for i, entry in pairs {
    if entry.0 == key {
      pairs[i] = (key, value)
      return
    }
  }
  pairs.push((key, value))
}

///|
/// Find index of first dot in string (-1 if not found)
extern "js" fn find_dot_index(s : String) -> Int =
  #| (s) => s.indexOf('.')

///|
/// Slice string from start to end index (JS String.slice)
extern "js" fn string_slice(s : String, start : Int, end : Int) -> String =
  #| (s, start, end) => s.slice(start, end)

///|
/// Pre-generate error enums for all throwing members.
/// Returns the generated MoonBit code and deduplicates by enum name.
pub fn gen_error_enums_for_members(
  name : String,
  members : Array[InterfaceMember],
) -> String {
  let result = StringBuilder()
  let generated : Array[String] = []
  for mem in members {
    let (member_name, throws) = match mem {
      Operation(op) =>
        if op.throws.length() > 0 && !op.name.is_empty() {
          (op.name, op.throws)
        } else {
          continue
        }
      Constructor(ctor) =>
        if ctor.throws.length() > 0 {
          ("constructor", ctor.throws)
        } else {
          continue
        }
      Attribute(attr) =>
        if attr.setter_throws.length() > 0 {
          ("set_" + attr.name, attr.setter_throws)
        } else {
          continue
        }
      _ => continue
    }
    let enum_name = gen_error_enum_name(member_name, interface_prefix=name)
    if !generated.contains(enum_name) {
      generated.push(enum_name)
      result.write_string(gen_error_enum(enum_name, throws))
    }
  }
  result.to_string()
}

///|
/// Sort exceptions alphabetically for consistent $tag ordering.
/// Both gen_error_enum and gen_inline_classify_js must use
/// the same order so that enum variant tags match catch-block tags.
fn sort_exceptions(exceptions : Array[String]) -> Array[String] {
  let sorted = exceptions.copy()
  sorted.sort()
  sorted
}

///|
/// Generate error enum + classify FFI for throwing methods.
/// exceptions: sorted list of exception names (e.g., ["HierarchyRequestError", "NotFoundError"])
/// Returns the MoonBit code for the enum definition + classify function.
pub fn gen_error_enum(enum_name : String, exceptions : Array[String]) -> String {
  let result = StringBuilder()
  // Segment marker
  result.write_string("///|\n")
  result.write_string("/// Error type for throwing methods\n")
  result.write_string("pub(all) enum ")
  result.write_string(enum_name)
  result.write_string(" {\n")
  let sorted = sort_exceptions(exceptions)
  sorted
  .iter()
  .each(fn(ex) {
    result.write_string("  ")
    result.write_string(capitalize_first(ex))
    result.write_string("(JsError)\n")
  })
  // OtherError catch-all (always last)
  result.write_string("  OtherError(JsError)\n")
  result.write_string("} derive(Debug)\n\n")
  result.to_string()
}

///|
/// Generate inline JS classify expression for catch blocks.
/// Replaces the separate classify FFI function to avoid DCE issues.
/// Returns an IIFE that reads `e` from enclosing scope and returns the
/// correct tagged error variant.
/// Example output: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })()
pub fn gen_inline_classify_js(exceptions : Array[String]) -> String {
  let sorted = sort_exceptions(exceptions)
  let result = StringBuilder()
  result.write_string("(() => { const n = (e && e.name) || '';")
  for i, ex in sorted {
    result.write_string(" if (n === '")
    result.write_string(ex)
    result.write_string("') return { $tag: ")
    result.write_string(i.to_string())
    result.write_string(", _0: e };")
  }
  result.write_string(" return { $tag: ")
  result.write_string(sorted.length().to_string())
  result.write_string(", _0: e }; })()")
  result.to_string()
}
