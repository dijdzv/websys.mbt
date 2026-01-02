// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/pointer-animations

///|
/// PointerAxis enum
pub(all) enum PointerAxis {
  Block
  Inline
  X
  Y
}

/// Convert to string value
pub fn PointerAxis::to_string(self : PointerAxis) -> String {
  match self {
    Block => "block"
    Inline => "inline"
    X => "x"
    Y => "y"
  }
}

/// Parse from string value
pub fn PointerAxis::from_string(s : String) -> PointerAxis? {
  match s {
    "block" => Some(Block)
    "inline" => Some(Inline)
    "x" => Some(X)
    "y" => Some(Y)
    _ => None
  }
}

///|
/// PointerTimelineOptions dictionary
pub struct PointerTimelineOptions {
  source : Element??
  axis : PointerAxis?
}

/// Create a new PointerTimelineOptions with default values
pub fn PointerTimelineOptions::default() -> PointerTimelineOptions {
  PointerTimelineOptions::{
    source: None,
    axis: None,
  }
}

/// Convert to JsValue
pub extern "js" fn PointerTimelineOptions::to_js(self : PointerTimelineOptions) -> JsValue =
  #| (self) => ({
  #|   source: self.source,
  #|   axis: self.axis
  #| })

///|
/// PointerTimeline interface
pub type PointerTimeline

pub extern "js" fn PointerTimeline::to_js_value(self : PointerTimeline) -> JsValue =
  #| (self) => self

pub extern "js" fn PointerTimeline::new(options : PointerTimelineOptions) -> PointerTimeline =
  #| (options) => new PointerTimeline(options)

pub extern "js" fn PointerTimeline::get_source(self : PointerTimeline) -> Element? =
  #| (self) => self.source

pub extern "js" fn PointerTimeline::get_axis(self : PointerTimeline) -> PointerAxis =
  #| (self) => self.axis

