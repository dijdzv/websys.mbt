// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/pointer-animations

///|
/// PointerAxis enum
pub(all) enum PointerAxis {
  Block
  Inline
  X
  Y
} derive(Eq, Show)

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
pub(all) struct PointerTimelineOptions {
  source : Nullable[Element]
  axis : PointerAxis?
}

///|
/// Create a new PointerTimelineOptions with default values
pub fn PointerTimelineOptions::default() -> PointerTimelineOptions {
  PointerTimelineOptions::{ source: Nullable::Undefined, axis: None }
}

///|
extern "js" fn PointerTimelineOptions::to_js_ffi(
  self : PointerTimelineOptions,
) -> JsValue =
  #| (self) => ({
  #|   source: ((() => { const v = self.source; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   axis: ((() => { const v = self.axis; if (v === undefined) return undefined; return ['block', 'inline', 'x', 'y'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn PointerTimelineOptions::to_js(self : PointerTimelineOptions) -> JsValue {
  PointerTimelineOptions::to_js_ffi(self)
}

///|
extern "js" fn PointerTimelineOptions::from_js_ffi(
  value : JsValue,
) -> PointerTimelineOptions =
  #| (v) => ({
  #|   source: (v.source === undefined ? { $tag: 0 } : v.source === null ? { $tag: 1 } : { $tag: 2, _0: v.source }),
  #|   axis: (v.axis === undefined ? undefined : ['block', 'inline', 'x', 'y'].indexOf(v.axis))
  #| })

///|
/// Convert from JsValue
pub fn PointerTimelineOptions::from_js(
  value : JsValue,
) -> PointerTimelineOptions {
  PointerTimelineOptions::from_js_ffi(value)
}

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
pub extern "js" fn PointerTimeline::new() -> PointerTimeline =
  #| () => new PointerTimeline()

///|
extern "js" fn PointerTimeline::new_with_options_ffi(
  options : JsValue,
) -> PointerTimeline =
  #| (options) => new PointerTimeline(options)

///|
pub fn PointerTimeline::new_with_options(
  options : PointerTimelineOptions,
) -> PointerTimeline {
  PointerTimeline::new_with_options_ffi(options.to_js())
}

///|
pub extern "js" fn PointerTimeline::get_source(
  self : PointerTimeline,
) -> Element? =
  #| (self) => (() => { const v = self.source; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn PointerTimeline::get_axis(
  self : PointerTimeline,
) -> PointerAxis =
  #| (self) => ['block', 'inline', 'x', 'y'].indexOf(self.axis)
