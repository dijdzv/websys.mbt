// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/scroll-animations

///|
/// ScrollAxis enum
pub(all) enum ScrollAxis {
  Block
  Inline
  X
  Y
}

/// Convert to string value
pub fn ScrollAxis::to_string(self : ScrollAxis) -> String {
  match self {
    Block => "block"
    Inline => "inline"
    X => "x"
    Y => "y"
  }
}

/// Parse from string value
pub fn ScrollAxis::from_string(s : String) -> ScrollAxis? {
  match s {
    "block" => Some(Block)
    "inline" => Some(Inline)
    "x" => Some(X)
    "y" => Some(Y)
    _ => None
  }
}

///|
/// ScrollTimelineOptions dictionary
pub struct ScrollTimelineOptions {
  source : Element??
  axis : ScrollAxis?
}

/// Create a new ScrollTimelineOptions with default values
pub fn ScrollTimelineOptions::default() -> ScrollTimelineOptions {
  ScrollTimelineOptions::{
    source: None,
    axis: None,
  }
}

/// Convert to JsValue
pub extern "js" fn ScrollTimelineOptions::to_js(self : ScrollTimelineOptions) -> JsValue =
  #| (self) => ({
  #|   source: self.source,
  #|   axis: self.axis
  #| })

///|
/// ViewTimelineOptions dictionary
pub struct ViewTimelineOptions {
  subject : Element?
  axis : ScrollAxis?
  inset : JsValue?
}

/// Create a new ViewTimelineOptions with default values
pub fn ViewTimelineOptions::default() -> ViewTimelineOptions {
  ViewTimelineOptions::{
    subject: None,
    axis: None,
    inset: None,
  }
}

/// Convert to JsValue
pub extern "js" fn ViewTimelineOptions::to_js(self : ViewTimelineOptions) -> JsValue =
  #| (self) => ({
  #|   subject: self.subject,
  #|   axis: self.axis,
  #|   inset: self.inset
  #| })

///|
/// ScrollTimeline interface
pub type ScrollTimeline

pub extern "js" fn ScrollTimeline::to_js_value(self : ScrollTimeline) -> JsValue =
  #| (self) => self

pub extern "js" fn ScrollTimeline::new(options : ScrollTimelineOptions) -> ScrollTimeline =
  #| (options) => new ScrollTimeline(options)

pub extern "js" fn ScrollTimeline::get_source(self : ScrollTimeline) -> Element? =
  #| (self) => self.source

pub extern "js" fn ScrollTimeline::get_axis(self : ScrollTimeline) -> ScrollAxis =
  #| (self) => self.axis

///|
/// ViewTimeline interface
pub type ViewTimeline

pub extern "js" fn ViewTimeline::to_js_value(self : ViewTimeline) -> JsValue =
  #| (self) => self

pub extern "js" fn ViewTimeline::new(options : ScrollTimelineOptions) -> ViewTimeline =
  #| (options) => new ViewTimeline(options)

pub extern "js" fn ViewTimeline::get_source(self : ViewTimeline) -> Element? =
  #| (self) => self.source

pub extern "js" fn ViewTimeline::get_axis(self : ViewTimeline) -> ScrollAxis =
  #| (self) => self.axis

pub extern "js" fn ViewTimeline::get_subject(self : ViewTimeline) -> Element =
  #| (self) => self.subject

pub extern "js" fn ViewTimeline::get_start_offset(self : ViewTimeline) -> CSSNumericValue =
  #| (self) => self.startOffset

pub extern "js" fn ViewTimeline::get_end_offset(self : ViewTimeline) -> CSSNumericValue =
  #| (self) => self.endOffset

