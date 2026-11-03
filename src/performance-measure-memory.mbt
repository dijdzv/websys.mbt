// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/performance-measure-memory

///|
/// MemoryMeasurement dictionary
pub(all) struct MemoryMeasurement {
  bytes : Int64?
  breakdown : FixedArray[MemoryBreakdownEntry]?
}

///|
/// Create a new MemoryMeasurement with default values
pub fn MemoryMeasurement::default() -> MemoryMeasurement {
  MemoryMeasurement::{ bytes: None, breakdown: None, }
}

///|
extern "js" fn MemoryMeasurement::to_js_ffi(
  self : MemoryMeasurement,
) -> JsValue =
  #| (self) => ({
  #|   bytes: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.bytes),
  #|   breakdown: self.breakdown
  #| })

///|
/// Convert to JsValue
pub fn MemoryMeasurement::to_js(self : MemoryMeasurement) -> JsValue {
  MemoryMeasurement::to_js_ffi(self)
}

///|
extern "js" fn MemoryMeasurement::from_js_ffi(
  value : JsValue,
) -> MemoryMeasurement =
  #| (v) => ({
  #|   bytes: (v.bytes === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.bytes)),
  #|   breakdown: v.breakdown
  #| })

///|
/// Convert from JsValue
pub fn MemoryMeasurement::from_js(value : JsValue) -> MemoryMeasurement {
  MemoryMeasurement::from_js_ffi(value)
}

///|
/// Catch dictionary conversion errors, including unsafe integer ranges.
pub fn MemoryMeasurement::to_js_checked(
  self : MemoryMeasurement,
) -> Result[JsValue, JsError] {
  try_dictionary_conversion(() => self.to_js())
}

///|
extern "js" fn try_dictionary_MemoryMeasurement(
  convert : () -> MemoryMeasurement,
) -> Result[MemoryMeasurement, JsError] =
  #| convert => { try { return { $tag: 1, _0: convert() }; } catch (error) { return { $tag: 0, _0: error }; } }

///|
/// Catch invalid host fields, including unsafe integer ranges.
pub fn MemoryMeasurement::from_js_checked(
  value : JsValue,
) -> Result[MemoryMeasurement, JsError] {
  try_dictionary_MemoryMeasurement(() => MemoryMeasurement::from_js(value))
}

///|
/// MemoryBreakdownEntry dictionary
pub(all) struct MemoryBreakdownEntry {
  bytes : Int64?
  attribution : FixedArray[MemoryAttribution]?
  types : FixedArray[String]?
}

///|
/// Create a new MemoryBreakdownEntry with default values
pub fn MemoryBreakdownEntry::default() -> MemoryBreakdownEntry {
  MemoryBreakdownEntry::{ bytes: None, attribution: None, types: None, }
}

///|
extern "js" fn MemoryBreakdownEntry::to_js_ffi(
  self : MemoryBreakdownEntry,
) -> JsValue =
  #| (self) => ({
  #|   bytes: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.bytes),
  #|   attribution: self.attribution,
  #|   types: self.types
  #| })

///|
/// Convert to JsValue
pub fn MemoryBreakdownEntry::to_js(self : MemoryBreakdownEntry) -> JsValue {
  MemoryBreakdownEntry::to_js_ffi(self)
}

///|
extern "js" fn MemoryBreakdownEntry::from_js_ffi(
  value : JsValue,
) -> MemoryBreakdownEntry =
  #| (v) => ({
  #|   bytes: (v.bytes === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.bytes)),
  #|   attribution: v.attribution,
  #|   types: v.types
  #| })

///|
/// Convert from JsValue
pub fn MemoryBreakdownEntry::from_js(value : JsValue) -> MemoryBreakdownEntry {
  MemoryBreakdownEntry::from_js_ffi(value)
}

///|
/// Catch dictionary conversion errors, including unsafe integer ranges.
pub fn MemoryBreakdownEntry::to_js_checked(
  self : MemoryBreakdownEntry,
) -> Result[JsValue, JsError] {
  try_dictionary_conversion(() => self.to_js())
}

///|
extern "js" fn try_dictionary_MemoryBreakdownEntry(
  convert : () -> MemoryBreakdownEntry,
) -> Result[MemoryBreakdownEntry, JsError] =
  #| convert => { try { return { $tag: 1, _0: convert() }; } catch (error) { return { $tag: 0, _0: error }; } }

///|
/// Catch invalid host fields, including unsafe integer ranges.
pub fn MemoryBreakdownEntry::from_js_checked(
  value : JsValue,
) -> Result[MemoryBreakdownEntry, JsError] {
  try_dictionary_MemoryBreakdownEntry(() => MemoryBreakdownEntry::from_js(value))
}

///|
/// MemoryAttribution dictionary
pub(all) struct MemoryAttribution {
  url : String?
  container : MemoryAttributionContainer?
  scope : String?
}

///|
/// Create a new MemoryAttribution with default values
pub fn MemoryAttribution::default() -> MemoryAttribution {
  MemoryAttribution::{ url: None, container: None, scope: None, }
}

///|
extern "js" fn MemoryAttribution::to_js_ffi(
  self : MemoryAttribution,
  convert_container : (MemoryAttributionContainer?) -> JsValue,
) -> JsValue =
  #| (self, convert_container) => ({
  #|   url: self.url,
  #|   container: convert_container(self.container),
  #|   scope: self.scope
  #| })

///|
/// Convert to JsValue
pub fn MemoryAttribution::to_js(self : MemoryAttribution) -> JsValue {
  MemoryAttribution::to_js_ffi(self, fn(value) {
    match value {
      Some(value) => value.to_js()
      None => dictionary_undefined()
    }
  })
}

///|
extern "js" fn MemoryAttribution::from_js_ffi(
  value : JsValue,
  convert_container : (JsValue) -> MemoryAttributionContainer?,
) -> MemoryAttribution =
  #| (v, convert_container) => ({
  #|   url: v.url,
  #|   container: convert_container(v.container),
  #|   scope: v.scope
  #| })

///|
/// Convert from JsValue
pub fn MemoryAttribution::from_js(value : JsValue) -> MemoryAttribution {
  MemoryAttribution::from_js_ffi(value, fn(value) {
    if value.is_undefined() {
      None
    } else {
      Some(MemoryAttributionContainer::from_js(value))
    }
  })
}

///|
/// MemoryAttributionContainer dictionary
pub(all) struct MemoryAttributionContainer {
  id : String?
  src : String?
}

///|
/// Create a new MemoryAttributionContainer with default values
pub fn MemoryAttributionContainer::default() -> MemoryAttributionContainer {
  MemoryAttributionContainer::{ id: None, src: None, }
}

///|
extern "js" fn MemoryAttributionContainer::to_js_ffi(
  self : MemoryAttributionContainer,
) -> JsValue =
  #| (self) => ({
  #|   id: self.id,
  #|   src: self.src
  #| })

///|
/// Convert to JsValue
pub fn MemoryAttributionContainer::to_js(
  self : MemoryAttributionContainer,
) -> JsValue {
  MemoryAttributionContainer::to_js_ffi(self)
}

///|
extern "js" fn MemoryAttributionContainer::from_js_ffi(
  value : JsValue,
) -> MemoryAttributionContainer =
  #| (v) => ({
  #|   id: v.id,
  #|   src: v.src
  #| })

///|
/// Convert from JsValue
pub fn MemoryAttributionContainer::from_js(
  value : JsValue,
) -> MemoryAttributionContainer {
  MemoryAttributionContainer::from_js_ffi(value)
}
