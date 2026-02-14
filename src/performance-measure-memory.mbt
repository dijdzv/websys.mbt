// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/performance-measure-memory

///|
/// MemoryMeasurement dictionary
pub(all) struct MemoryMeasurement {
  bytes : Int64?
  breakdown : Array[MemoryBreakdownEntry]?
}

///|
/// Create a new MemoryMeasurement with default values
pub fn MemoryMeasurement::default() -> MemoryMeasurement {
  MemoryMeasurement::{ bytes: None, breakdown: None }
}

///|
extern "js" fn MemoryMeasurement::to_js_ffi(
  self : MemoryMeasurement,
) -> JsValue =
  #| (self) => ({
  #|   bytes: self.bytes,
  #|   breakdown: ((() => { const v = self.breakdown; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
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
  #|   bytes: v.bytes,
  #|   breakdown: (v.breakdown === undefined ? { $tag: 0 } : { $tag: 1, _0: v.breakdown })
  #| })

///|
/// Convert from JsValue
pub fn MemoryMeasurement::from_js(value : JsValue) -> MemoryMeasurement {
  MemoryMeasurement::from_js_ffi(value)
}

///|
/// MemoryBreakdownEntry dictionary
pub(all) struct MemoryBreakdownEntry {
  bytes : Int64?
  attribution : Array[MemoryAttribution]?
  types : Array[String]?
}

///|
/// Create a new MemoryBreakdownEntry with default values
pub fn MemoryBreakdownEntry::default() -> MemoryBreakdownEntry {
  MemoryBreakdownEntry::{ bytes: None, attribution: None, types: None }
}

///|
extern "js" fn MemoryBreakdownEntry::to_js_ffi(
  self : MemoryBreakdownEntry,
) -> JsValue =
  #| (self) => ({
  #|   bytes: self.bytes,
  #|   attribution: ((() => { const v = self.attribution; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   types: ((() => { const v = self.types; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
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
  #|   bytes: v.bytes,
  #|   attribution: (v.attribution === undefined ? { $tag: 0 } : { $tag: 1, _0: v.attribution }),
  #|   types: (v.types === undefined ? { $tag: 0 } : { $tag: 1, _0: v.types })
  #| })

///|
/// Convert from JsValue
pub fn MemoryBreakdownEntry::from_js(value : JsValue) -> MemoryBreakdownEntry {
  MemoryBreakdownEntry::from_js_ffi(value)
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
  MemoryAttribution::{ url: None, container: None, scope: None }
}

///|
extern "js" fn MemoryAttribution::to_js_ffi(
  self : MemoryAttribution,
) -> JsValue =
  #| (self) => ({
  #|   url: self.url,
  #|   container: ((() => { const v = self.container; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   scope: self.scope
  #| })

///|
/// Convert to JsValue
pub fn MemoryAttribution::to_js(self : MemoryAttribution) -> JsValue {
  MemoryAttribution::to_js_ffi(self)
}

///|
extern "js" fn MemoryAttribution::from_js_ffi(
  value : JsValue,
) -> MemoryAttribution =
  #| (v) => ({
  #|   url: v.url,
  #|   container: (v.container === undefined ? { $tag: 0 } : { $tag: 1, _0: v.container }),
  #|   scope: v.scope
  #| })

///|
/// Convert from JsValue
pub fn MemoryAttribution::from_js(value : JsValue) -> MemoryAttribution {
  MemoryAttribution::from_js_ffi(value)
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
  MemoryAttributionContainer::{ id: None, src: None }
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
