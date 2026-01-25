// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-viewport

///|
/// Viewport interface
pub type Viewport

///|
pub extern "js" fn Viewport::to_js_value(self : Viewport) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Viewport (unchecked)
pub extern "js" fn Viewport::from_js_value(v : JsValue) -> Viewport =
  #| (v) => v

///|
/// Safely cast JsValue to Viewport (checked with instanceof)
pub extern "js" fn Viewport::from_js_value_opt(v : JsValue) -> Viewport? =
  #| (v) => (v instanceof Viewport) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Viewport (checked with instanceof)
pub extern "js" fn JsValue::as_viewport(self : JsValue) -> Viewport? =
  #| (self) => (self instanceof Viewport) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Viewport (unchecked)
pub extern "js" fn JsValue::to_viewport(self : JsValue) -> Viewport =
  #| (self) => self

///|
pub extern "js" fn Viewport::get_segments(self : Viewport) -> JsValue? =
  #| (self) => { const v = self.segments; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }
