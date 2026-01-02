// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/performance-measure-memory

///|
/// MemoryMeasurement dictionary
pub struct MemoryMeasurement {
  bytes : Int64?
  breakdown : JsValue?
}

/// Create a new MemoryMeasurement with default values
pub fn MemoryMeasurement::default() -> MemoryMeasurement {
  MemoryMeasurement::{
    bytes: None,
    breakdown: None,
  }
}

/// Convert to JsValue
pub extern "js" fn MemoryMeasurement::to_js(self : MemoryMeasurement) -> JsValue =
  #| (self) => ({
  #|   bytes: self.bytes,
  #|   breakdown: self.breakdown
  #| })

///|
/// MemoryBreakdownEntry dictionary
pub struct MemoryBreakdownEntry {
  bytes : Int64?
  attribution : JsValue?
  types : JsValue?
}

/// Create a new MemoryBreakdownEntry with default values
pub fn MemoryBreakdownEntry::default() -> MemoryBreakdownEntry {
  MemoryBreakdownEntry::{
    bytes: None,
    attribution: None,
    types: None,
  }
}

/// Convert to JsValue
pub extern "js" fn MemoryBreakdownEntry::to_js(self : MemoryBreakdownEntry) -> JsValue =
  #| (self) => ({
  #|   bytes: self.bytes,
  #|   attribution: self.attribution,
  #|   types: self.types
  #| })

///|
/// MemoryAttribution dictionary
pub struct MemoryAttribution {
  url : String?
  container : MemoryAttributionContainer?
  scope : String?
}

/// Create a new MemoryAttribution with default values
pub fn MemoryAttribution::default() -> MemoryAttribution {
  MemoryAttribution::{
    url: None,
    container: None,
    scope: None,
  }
}

/// Convert to JsValue
pub extern "js" fn MemoryAttribution::to_js(self : MemoryAttribution) -> JsValue =
  #| (self) => ({
  #|   url: self.url,
  #|   container: self.container,
  #|   scope: self.scope
  #| })

///|
/// MemoryAttributionContainer dictionary
pub struct MemoryAttributionContainer {
  id : String?
  src : String?
}

/// Create a new MemoryAttributionContainer with default values
pub fn MemoryAttributionContainer::default() -> MemoryAttributionContainer {
  MemoryAttributionContainer::{
    id: None,
    src: None,
  }
}

/// Convert to JsValue
pub extern "js" fn MemoryAttributionContainer::to_js(self : MemoryAttributionContainer) -> JsValue =
  #| (self) => ({
  #|   id: self.id,
  #|   src: self.src
  #| })

