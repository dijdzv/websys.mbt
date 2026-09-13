// ThrowsMap type and accessors for throws detection

///|
pub fn set_throws(
  map : ThrowsMap,
  iface : String,
  operation : String,
  exceptions : Array[String],
) -> Unit {
  set_throws_raw(
    map,
    iface,
    operation,
    FixedArray::makei(exceptions.length(), i => exceptions[i]),
  )
}

///|
pub fn set_attribute_throws(
  map : ThrowsMap,
  iface : String,
  attr : String,
  exceptions : Array[String],
) -> Unit {
  set_attribute_throws_raw(
    map,
    iface,
    attr,
    FixedArray::makei(exceptions.length(), i => exceptions[i]),
  )
}

///|
/// Type for throws map (JS Map<string, string[]>)
pub type ThrowsMap

///|
/// Create an empty throws map
pub extern "js" fn create_throws_map() -> ThrowsMap =
  #| () => new Map()

///|
/// Set throws for a method: key = "Interface.method"
extern "js" fn set_throws_raw(
  throws_map : ThrowsMap,
  interface_name : String,
  method_name : String,
  exceptions : FixedArray[String],
) -> Unit =
  #| (map, iface, method, exceptions) => {
  #|   const key = iface + '.' + method;
  #|   map.set(key, exceptions);
  #| }

///|
/// Set throws for an attribute setter: keys = "Interface.set_attr" and "Interface.attr"
extern "js" fn set_attribute_throws_raw(
  throws_map : ThrowsMap,
  interface_name : String,
  attr_name : String,
  exceptions : FixedArray[String],
) -> Unit =
  #| (map, iface, attr, exceptions) => {
  #|   map.set(iface + '.set_' + attr, exceptions);
  #|   map.set(iface + '.' + attr, exceptions);
  #| }

///|
/// Get throws list for a specific method from throws map.
/// key format: "Interface.method"
/// Returns JS array of exception names, or empty array if not found.
pub extern "js" fn get_throws(
  throws_map : ThrowsMap,
  interface_name : String,
  method_name : String,
) -> JsArray =
  #| (map, iface, method) => {
  #|   const key = iface + '.' + method;
  #|   return map.get(key) || [];
  #| }

///|
/// Get throws list for a constructor from throws map.
/// key format: "Interface.constructor"
pub extern "js" fn get_constructor_throws(
  throws_map : ThrowsMap,
  interface_name : String,
) -> JsArray =
  #| (map, iface) => {
  #|   return map.get(iface + '.constructor') || [];
  #| }

///|
/// Delete a throws entry by key ("Interface.method")
pub extern "js" fn delete_throws(
  throws_map : ThrowsMap,
  interface_name : String,
  method_name : String,
) -> Unit =
  #| (map, iface, method) => { map.delete(iface + '.' + method) }

///|
/// Get throws map size (for stats)
pub extern "js" fn throws_map_size(throws_map : ThrowsMap) -> Int =
  #| (map) => map.size

///|
/// Convert JS string array to MoonBit Array[String]
pub fn js_array_to_strings(arr : JsArray) -> Array[String] {
  let len = js_array_length(arr)
  let result : Array[String] = []
  for i = 0; i < len; i = i + 1 {
    result.push(get_string_from_array(arr, i))
  }
  result
}
