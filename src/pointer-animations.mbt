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

///|
/// Convert to string value
pub fn PointerAxis::to_string(self : PointerAxis) -> String {
  match self {
    PointerAxis::Block => "block"
    PointerAxis::Inline => "inline"
    PointerAxis::X => "x"
    PointerAxis::Y => "y"
  }
}

///|
/// Parse from string value
pub fn PointerAxis::from_string(s : String) -> PointerAxis? {
  match s {
    "block" => Some(PointerAxis::Block)
    "inline" => Some(PointerAxis::Inline)
    "x" => Some(PointerAxis::X)
    "y" => Some(PointerAxis::Y)
    _ => None
  }
}

///|
/// PointerTimelineOptions dictionary
pub struct PointerTimelineOptions {
  source : Nullable[Element]
  axis : PointerAxis?
}

///|
/// Create a new PointerTimelineOptions with default values
pub fn PointerTimelineOptions::default() -> PointerTimelineOptions {
  PointerTimelineOptions::{ source: Nullable::Undefined, axis: None }
}

///|
/// Convert to JsValue
pub extern "js" fn PointerTimelineOptions::to_js(
  self : PointerTimelineOptions,
) -> JsValue =
  #| (self) => ({
  #|   source: ((() => { const v = self.source; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   axis: ['block', 'inline', 'x', 'y'][self.axis]
  #| })

///|
/// PointerTimeline interface
pub type PointerTimeline

///|
pub extern "js" fn PointerTimeline::to_js_value(
  self : PointerTimeline,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PointerTimeline (unchecked)
pub extern "js" fn PointerTimeline::from_js_value(
  v : JsValue,
) -> PointerTimeline =
  #| (v) => v

///|
/// Safely cast JsValue to PointerTimeline (checked with instanceof)
pub extern "js" fn PointerTimeline::from_js_value_opt(
  v : JsValue,
) -> PointerTimeline? =
  #| (v) => (v instanceof PointerTimeline) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PointerTimeline (checked with instanceof)
pub extern "js" fn JsValue::as_pointer_timeline(
  self : JsValue,
) -> PointerTimeline? =
  #| (self) => (self instanceof PointerTimeline) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PointerTimeline (unchecked)
pub extern "js" fn JsValue::to_pointer_timeline(
  self : JsValue,
) -> PointerTimeline =
  #| (self) => self

///|
pub extern "js" fn PointerTimeline::to_animation_timeline(
  self : PointerTimeline,
) -> AnimationTimeline =
  #| (self) => self

///|
pub extern "js" fn PointerTimeline::new(
  options : PointerTimelineOptions,
) -> PointerTimeline =
  #| (options) => new PointerTimeline(options)

///|
pub extern "js" fn PointerTimeline::get_source(
  self : PointerTimeline,
) -> Element? =
  #| (self) => { const v = self.source; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn PointerTimeline::get_axis(
  self : PointerTimeline,
) -> PointerAxis =
  #| (self) => self.axis
