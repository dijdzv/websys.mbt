// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-highlight-api

///|
/// HighlightType enum
pub(all) enum HighlightType {
  Highlight
  SpellingError
  GrammarError
}

/// Convert to string value
pub fn HighlightType::to_string(self : HighlightType) -> String {
  match self {
    Highlight => "highlight"
    SpellingError => "spelling-error"
    GrammarError => "grammar-error"
  }
}

/// Parse from string value
pub fn HighlightType::from_string(s : String) -> HighlightType? {
  match s {
    "highlight" => Some(Highlight)
    "spelling-error" => Some(SpellingError)
    "grammar-error" => Some(GrammarError)
    _ => None
  }
}

///|
/// HighlightHitResult dictionary
pub struct HighlightHitResult {
  highlight : Highlight?
  ranges : JsValue?
}

/// Create a new HighlightHitResult with default values
pub fn HighlightHitResult::default() -> HighlightHitResult {
  HighlightHitResult::{
    highlight: None,
    ranges: None,
  }
}

/// Convert to JsValue
pub extern "js" fn HighlightHitResult::to_js(self : HighlightHitResult) -> JsValue =
  #| (self) => ({
  #|   highlight: self.highlight,
  #|   ranges: self.ranges
  #| })

///|
/// HighlightsFromPointOptions dictionary
pub struct HighlightsFromPointOptions {
  shadowRoots : JsValue?
}

/// Create a new HighlightsFromPointOptions with default values
pub fn HighlightsFromPointOptions::default() -> HighlightsFromPointOptions {
  HighlightsFromPointOptions::{
    shadowRoots: None,
  }
}

/// Convert to JsValue
pub extern "js" fn HighlightsFromPointOptions::to_js(self : HighlightsFromPointOptions) -> JsValue =
  #| (self) => ({
  #|   shadowRoots: self.shadowRoots
  #| })

///|
/// Highlight interface
pub type Highlight

pub extern "js" fn Highlight::to_js_value(self : Highlight) -> JsValue =
  #| (self) => self

pub extern "js" fn Highlight::new(initial_ranges : AbstractRange) -> Highlight =
  #| (initial_ranges) => new Highlight(initial_ranges)

pub extern "js" fn Highlight::_unknown_(self : Highlight) -> Unit =
  #| (self) => self._unknown_()

pub extern "js" fn Highlight::get_priority(self : Highlight) -> Int =
  #| (self) => self.priority

pub extern "js" fn Highlight::set_priority(self : Highlight, value : Int) -> Unit =
  #| (self, value) => { self.priority = value }

pub extern "js" fn Highlight::get_type(self : Highlight) -> HighlightType =
  #| (self) => self.type

pub extern "js" fn Highlight::set_type(self : Highlight, value : HighlightType) -> Unit =
  #| (self, value) => { self.type = value }

///|
/// HighlightRegistry interface
pub type HighlightRegistry

pub extern "js" fn HighlightRegistry::to_js_value(self : HighlightRegistry) -> JsValue =
  #| (self) => self

pub extern "js" fn HighlightRegistry::_unknown_(self : HighlightRegistry) -> Unit =
  #| (self) => self._unknown_()

pub extern "js" fn HighlightRegistry::highlights_from_point(self : HighlightRegistry, x : Double, y : Double, options : HighlightsFromPointOptions) -> JsValue =
  #| (self, x, y, options) => self.highlightsFromPoint(x, y, options)

