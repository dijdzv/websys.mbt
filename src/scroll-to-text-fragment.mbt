// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/scroll-to-text-fragment

///|
/// FragmentDirective interface
pub type FragmentDirective

///|
pub extern "js" fn FragmentDirective::to_js_value(
  self : FragmentDirective,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to FragmentDirective (unchecked)
pub extern "js" fn FragmentDirective::from_js_value(
  v : JsValue,
) -> FragmentDirective =
  #| (v) => v

///|
/// Safely cast JsValue to FragmentDirective (checked with instanceof)
pub extern "js" fn FragmentDirective::from_js_value_opt(
  v : JsValue,
) -> FragmentDirective? =
  #| (v) => (v instanceof FragmentDirective) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to FragmentDirective (checked with instanceof)
pub extern "js" fn JsValue::as_fragment_directive(
  self : JsValue,
) -> FragmentDirective? =
  #| (self) => (self instanceof FragmentDirective) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to FragmentDirective (unchecked)
pub extern "js" fn JsValue::to_fragment_directive(
  self : JsValue,
) -> FragmentDirective =
  #| (self) => self
