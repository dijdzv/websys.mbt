// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-highlight-api

///|
/// HighlightType enum
pub(all) enum HighlightType {
  Highlight
  SpellingError
  GrammarError
}

///|
/// Convert to string value
pub fn HighlightType::to_string(self : HighlightType) -> String {
  match self {
    HighlightType::Highlight => "highlight"
    HighlightType::SpellingError => "spelling-error"
    HighlightType::GrammarError => "grammar-error"
  }
}

///|
/// Parse from string value
pub fn HighlightType::from_string(s : String) -> HighlightType? {
  match s {
    "highlight" => Some(HighlightType::Highlight)
    "spelling-error" => Some(HighlightType::SpellingError)
    "grammar-error" => Some(HighlightType::GrammarError)
    _ => None
  }
}

///|
/// HighlightHitResult dictionary
pub struct HighlightHitResult {
  highlight : Highlight?
  ranges : Array[AbstractRange]?
}

///|
/// Create a new HighlightHitResult with default values
pub fn HighlightHitResult::default() -> HighlightHitResult {
  HighlightHitResult::{ highlight: None, ranges: None }
}

///|
/// Convert to JsValue
pub extern "js" fn HighlightHitResult::to_js(
  self : HighlightHitResult,
) -> JsValue =
  #| (self) => ({
  #|   highlight: self.highlight,
  #|   ranges: self.ranges
  #| })

///|
/// HighlightsFromPointOptions dictionary
pub struct HighlightsFromPointOptions {
  shadowRoots : Array[ShadowRoot]?
}

///|
/// Create a new HighlightsFromPointOptions with default values
pub fn HighlightsFromPointOptions::default() -> HighlightsFromPointOptions {
  HighlightsFromPointOptions::{ shadowRoots: None }
}

///|
/// Convert to JsValue
pub extern "js" fn HighlightsFromPointOptions::to_js(
  self : HighlightsFromPointOptions,
) -> JsValue =
  #| (self) => ({
  #|   shadowRoots: self.shadowRoots
  #| })

///|
/// Highlight interface
pub type Highlight

///|
pub extern "js" fn Highlight::to_js_value(self : Highlight) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn Highlight::new(initial_ranges : AbstractRange) -> Highlight =
  #| (initial_ranges) => new Highlight(initial_ranges)

///|
pub extern "js" fn Highlight::has(
  self : Highlight,
  value : AbstractRange,
) -> Bool =
  #| (self, value) => self.has(value)

///|
pub extern "js" fn Highlight::add(
  self : Highlight,
  value : AbstractRange,
) -> Unit =
  #| (self, value) => { self.add(value) }

///|
pub extern "js" fn Highlight::delete(
  self : Highlight,
  value : AbstractRange,
) -> Bool =
  #| (self, value) => self.delete(value)

///|
pub extern "js" fn Highlight::clear(self : Highlight) -> Unit =
  #| (self) => { self.clear() }

///|
pub extern "js" fn Highlight::get_priority(self : Highlight) -> Int =
  #| (self) => self.priority

///|
pub extern "js" fn Highlight::set_priority(
  self : Highlight,
  value : Int,
) -> Unit =
  #| (self, value) => { self.priority = value }

///|
pub extern "js" fn Highlight::get_type(self : Highlight) -> HighlightType =
  #| (self) => self.type

///|
pub extern "js" fn Highlight::set_type(
  self : Highlight,
  value : HighlightType,
) -> Unit =
  #| (self, value) => { self.type = value }

///|
/// HighlightRegistry interface
pub type HighlightRegistry

///|
pub extern "js" fn HighlightRegistry::to_js_value(
  self : HighlightRegistry,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn HighlightRegistry::get(
  self : HighlightRegistry,
  key : String,
) -> Highlight? =
  #| (self, key) => self.get(key)

///|
pub extern "js" fn HighlightRegistry::has(
  self : HighlightRegistry,
  key : String,
) -> Bool =
  #| (self, key) => self.has(key)

///|
pub extern "js" fn HighlightRegistry::set(
  self : HighlightRegistry,
  key : String,
  value : Highlight,
) -> Unit =
  #| (self, key, value) => { self.set(key, value) }

///|
pub extern "js" fn HighlightRegistry::delete(
  self : HighlightRegistry,
  key : String,
) -> Bool =
  #| (self, key) => self.delete(key)

///|
pub extern "js" fn HighlightRegistry::clear(self : HighlightRegistry) -> Unit =
  #| (self) => { self.clear() }

///|
pub extern "js" fn HighlightRegistry::highlights_from_point(
  self : HighlightRegistry,
  x : Double,
  y : Double,
) -> Array[HighlightHitResult] =
  #| (self, x, y) => self.highlightsFromPoint(x, y)

///|
pub extern "js" fn HighlightRegistry::highlights_from_point_with_options(
  self : HighlightRegistry,
  x : Double,
  y : Double,
  options : HighlightsFromPointOptions,
) -> Array[HighlightHitResult] =
  #| (self, x, y, options) => self.highlightsFromPoint(x, y, options)
