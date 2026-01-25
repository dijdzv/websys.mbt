// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/anchors

///|
/// XRAnchor interface
pub type XRAnchor

///|
pub extern "js" fn XRAnchor::to_js_value(self : XRAnchor) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRAnchor (unchecked)
pub extern "js" fn XRAnchor::from_js_value(v : JsValue) -> XRAnchor =
  #| (v) => v

///|
/// Safely cast JsValue to XRAnchor (checked with instanceof)
pub extern "js" fn XRAnchor::from_js_value_opt(v : JsValue) -> XRAnchor? =
  #| (v) => (v instanceof XRAnchor) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRAnchor (checked with instanceof)
pub extern "js" fn JsValue::as_xr_anchor(self : JsValue) -> XRAnchor? =
  #| (self) => (self instanceof XRAnchor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRAnchor (unchecked)
pub extern "js" fn JsValue::to_xr_anchor(self : JsValue) -> XRAnchor =
  #| (self) => self

///|
pub extern "js" fn XRAnchor::get_anchor_space(self : XRAnchor) -> XRSpace =
  #| (self) => self.anchorSpace

///|
pub extern "js" fn XRAnchor::request_persistent_handle(
  self : XRAnchor,
) -> Promise[String] =
  #| (self) => self.requestPersistentHandle()

///|
pub extern "js" fn XRAnchor::delete(self : XRAnchor) -> Unit =
  #| (self) => self.delete()

///|
/// XRAnchorSet interface
pub type XRAnchorSet

///|
pub extern "js" fn XRAnchorSet::to_js_value(self : XRAnchorSet) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRAnchorSet (unchecked)
pub extern "js" fn XRAnchorSet::from_js_value(v : JsValue) -> XRAnchorSet =
  #| (v) => v

///|
/// Safely cast JsValue to XRAnchorSet (checked with instanceof)
pub extern "js" fn XRAnchorSet::from_js_value_opt(v : JsValue) -> XRAnchorSet? =
  #| (v) => (v instanceof XRAnchorSet) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRAnchorSet (checked with instanceof)
pub extern "js" fn JsValue::as_xr_anchor_set(self : JsValue) -> XRAnchorSet? =
  #| (self) => (self instanceof XRAnchorSet) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRAnchorSet (unchecked)
pub extern "js" fn JsValue::to_xr_anchor_set(self : JsValue) -> XRAnchorSet =
  #| (self) => self

///|
pub extern "js" fn XRAnchorSet::has(
  self : XRAnchorSet,
  value : XRAnchor,
) -> Bool =
  #| (self, value) => self.has(value)
