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

///|
/// Convert to string value
pub fn ScrollAxis::to_string(self : ScrollAxis) -> String {
  match self {
    ScrollAxis::Block => "block"
    ScrollAxis::Inline => "inline"
    ScrollAxis::X => "x"
    ScrollAxis::Y => "y"
  }
}

///|
/// Parse from string value
pub fn ScrollAxis::from_string(s : String) -> ScrollAxis? {
  match s {
    "block" => Some(ScrollAxis::Block)
    "inline" => Some(ScrollAxis::Inline)
    "x" => Some(ScrollAxis::X)
    "y" => Some(ScrollAxis::Y)
    _ => None
  }
}

///|
/// ScrollTimelineOptions dictionary
pub(all) struct ScrollTimelineOptions {
  source : Nullable[Element]
  axis : ScrollAxis?
}

///|
/// Create a new ScrollTimelineOptions with default values
pub fn ScrollTimelineOptions::default() -> ScrollTimelineOptions {
  ScrollTimelineOptions::{ source: Nullable::Undefined, axis: None }
}

///|
extern "js" fn ScrollTimelineOptions::to_js_ffi(
  self : ScrollTimelineOptions,
) -> JsValue =
  #| (self) => ({
  #|   source: ((() => { const v = self.source; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   axis: ((() => { const v = self.axis; if (v === undefined) return undefined; return ['block', 'inline', 'x', 'y'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn ScrollTimelineOptions::to_js(self : ScrollTimelineOptions) -> JsValue {
  ScrollTimelineOptions::to_js_ffi(self)
}

///|
/// ViewTimelineOptions dictionary
pub(all) struct ViewTimelineOptions {
  subject : Element?
  axis : ScrollAxis?
  inset : StringOrArrayOfCSSNumericValueOrCSSKeywordValue?
}

///|
/// Create a new ViewTimelineOptions with default values
pub fn ViewTimelineOptions::default() -> ViewTimelineOptions {
  ViewTimelineOptions::{ subject: None, axis: None, inset: None }
}

///|
extern "js" fn ViewTimelineOptions::to_js_ffi(
  self : ViewTimelineOptions,
) -> JsValue =
  #| (self) => ({
  #|   subject: ((() => { const v = self.subject; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   axis: ((() => { const v = self.axis; if (v === undefined) return undefined; return ['block', 'inline', 'x', 'y'][v]; })()),
  #|   inset: ((() => { const v = self.inset; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn ViewTimelineOptions::to_js(self : ViewTimelineOptions) -> JsValue {
  ViewTimelineOptions::to_js_ffi(self)
}

///|
/// ScrollTimeline interface
pub type ScrollTimeline

///|
pub extern "js" fn ScrollTimeline::to_js_value(
  self : ScrollTimeline,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ScrollTimeline (unchecked)
pub extern "js" fn ScrollTimeline::from_js_value(v : JsValue) -> ScrollTimeline =
  #| (v) => v

///|
/// Safely cast JsValue to ScrollTimeline (checked with instanceof)
pub extern "js" fn ScrollTimeline::from_js_value_opt(
  v : JsValue,
) -> ScrollTimeline? =
  #| (v) => (v instanceof ScrollTimeline) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ScrollTimeline (checked with instanceof)
pub extern "js" fn JsValue::as_scroll_timeline(
  self : JsValue,
) -> ScrollTimeline? =
  #| (self) => (self instanceof ScrollTimeline) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ScrollTimeline (unchecked)
pub extern "js" fn JsValue::to_scroll_timeline(
  self : JsValue,
) -> ScrollTimeline =
  #| (self) => self

///|
pub extern "js" fn ScrollTimeline::to_animation_timeline(
  self : ScrollTimeline,
) -> AnimationTimeline =
  #| (self) => self

///|
pub extern "js" fn ScrollTimeline::as_view_timeline(
  self : ScrollTimeline,
) -> ViewTimeline? =
  #| (self) => (self instanceof ViewTimeline) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn ScrollTimeline::new() -> ScrollTimeline =
  #| () => new ScrollTimeline()

///|
extern "js" fn ScrollTimeline::new_with_options_ffi(
  options : JsValue,
) -> ScrollTimeline =
  #| (options) => new ScrollTimeline(options)

///|
pub fn ScrollTimeline::new_with_options(
  options : ScrollTimelineOptions,
) -> ScrollTimeline {
  ScrollTimeline::new_with_options_ffi(options.to_js())
}

///|
pub extern "js" fn ScrollTimeline::get_source(
  self : ScrollTimeline,
) -> Element? =
  #| (self) => (() => { const v = self.source; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn ScrollTimeline::get_axis(
  self : ScrollTimeline,
) -> ScrollAxis =
  #| (self) => ['block', 'inline', 'x', 'y'].indexOf(self.axis)

///|
/// ViewTimeline interface
pub type ViewTimeline

///|
pub extern "js" fn ViewTimeline::to_js_value(self : ViewTimeline) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ViewTimeline (unchecked)
pub extern "js" fn ViewTimeline::from_js_value(v : JsValue) -> ViewTimeline =
  #| (v) => v

///|
/// Safely cast JsValue to ViewTimeline (checked with instanceof)
pub extern "js" fn ViewTimeline::from_js_value_opt(
  v : JsValue,
) -> ViewTimeline? =
  #| (v) => (v instanceof ViewTimeline) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ViewTimeline (checked with instanceof)
pub extern "js" fn JsValue::as_view_timeline(self : JsValue) -> ViewTimeline? =
  #| (self) => (self instanceof ViewTimeline) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ViewTimeline (unchecked)
pub extern "js" fn JsValue::to_view_timeline(self : JsValue) -> ViewTimeline =
  #| (self) => self

///|
pub extern "js" fn ViewTimeline::to_scroll_timeline(
  self : ViewTimeline,
) -> ScrollTimeline =
  #| (self) => self

///|
pub extern "js" fn ViewTimeline::to_animation_timeline(
  self : ViewTimeline,
) -> AnimationTimeline =
  #| (self) => self

///|
pub extern "js" fn ViewTimeline::new() -> ViewTimeline =
  #| () => new ViewTimeline()

///|
extern "js" fn ViewTimeline::new_with_options_ffi(
  options : JsValue,
) -> ViewTimeline =
  #| (options) => new ViewTimeline(options)

///|
pub fn ViewTimeline::new_with_options(
  options : ViewTimelineOptions,
) -> ViewTimeline {
  ViewTimeline::new_with_options_ffi(options.to_js())
}

///|
pub extern "js" fn ViewTimeline::get_subject(self : ViewTimeline) -> Element =
  #| (self) => self.subject

///|
pub extern "js" fn ViewTimeline::get_start_offset(
  self : ViewTimeline,
) -> CSSNumericValue =
  #| (self) => self.startOffset

///|
pub extern "js" fn ViewTimeline::get_end_offset(
  self : ViewTimeline,
) -> CSSNumericValue =
  #| (self) => self.endOffset
