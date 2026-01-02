// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/anchors

///|
/// XRAnchor interface
pub type XRAnchor

pub extern "js" fn XRAnchor::to_js_value(self : XRAnchor) -> JsValue =
  #| (self) => self

pub extern "js" fn XRAnchor::get_anchor_space(self : XRAnchor) -> XRSpace =
  #| (self) => self.anchorSpace

pub extern "js" fn XRAnchor::request_persistent_handle(self : XRAnchor) -> Promise[String] =
  #| (self) => self.requestPersistentHandle()

pub extern "js" fn XRAnchor::delete(self : XRAnchor) -> Unit =
  #| (self) => self.delete()

///|
/// XRAnchorSet interface
pub type XRAnchorSet

pub extern "js" fn XRAnchorSet::to_js_value(self : XRAnchorSet) -> JsValue =
  #| (self) => self

pub extern "js" fn XRAnchorSet::has(self : XRAnchorSet, value : XRAnchor) -> Bool =
  #| (self, value) => self.has(value)

