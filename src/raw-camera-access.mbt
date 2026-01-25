// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/raw-camera-access

///|
/// XRCamera interface
pub type XRCamera

///|
pub extern "js" fn XRCamera::to_js_value(self : XRCamera) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRCamera (unchecked)
pub extern "js" fn XRCamera::from_js_value(v : JsValue) -> XRCamera =
  #| (v) => v

///|
/// Safely cast JsValue to XRCamera (checked with instanceof)
pub extern "js" fn XRCamera::from_js_value_opt(v : JsValue) -> XRCamera? =
  #| (v) => (v instanceof XRCamera) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRCamera (checked with instanceof)
pub extern "js" fn JsValue::as_xr_camera(self : JsValue) -> XRCamera? =
  #| (self) => (self instanceof XRCamera) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRCamera (unchecked)
pub extern "js" fn JsValue::to_xr_camera(self : JsValue) -> XRCamera =
  #| (self) => self

///|
pub extern "js" fn XRCamera::get_width(self : XRCamera) -> Int =
  #| (self) => self.width

///|
pub extern "js" fn XRCamera::get_height(self : XRCamera) -> Int =
  #| (self) => self.height
