// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/capture-handle-identity

///|
/// CaptureHandleConfig dictionary
pub(all) struct CaptureHandleConfig {
  exposeOrigin : Bool?
  handle : String?
  permittedOrigins : Array[String]?
}

///|
/// Create a new CaptureHandleConfig with default values
pub fn CaptureHandleConfig::default() -> CaptureHandleConfig {
  CaptureHandleConfig::{
    exposeOrigin: None,
    handle: None,
    permittedOrigins: None,
  }
}

///|
extern "js" fn CaptureHandleConfig::to_js_ffi(
  self : CaptureHandleConfig,
) -> JsValue =
  #| (self) => ({
  #|   exposeOrigin: (self.exposeOrigin === -1 ? undefined : self.exposeOrigin),
  #|   handle: self.handle,
  #|   permittedOrigins: ((() => { const v = self.permittedOrigins; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn CaptureHandleConfig::to_js(self : CaptureHandleConfig) -> JsValue {
  CaptureHandleConfig::to_js_ffi(self)
}

///|
/// CaptureHandle dictionary
pub(all) struct CaptureHandle {
  origin : String?
  handle : String?
}

///|
/// Create a new CaptureHandle with default values
pub fn CaptureHandle::default() -> CaptureHandle {
  CaptureHandle::{ origin: None, handle: None }
}

///|
extern "js" fn CaptureHandle::to_js_ffi(self : CaptureHandle) -> JsValue =
  #| (self) => ({
  #|   origin: self.origin,
  #|   handle: self.handle
  #| })

///|
/// Convert to JsValue
pub fn CaptureHandle::to_js(self : CaptureHandle) -> JsValue {
  CaptureHandle::to_js_ffi(self)
}
