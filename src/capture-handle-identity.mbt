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
  #|   permittedOrigins: ((() => { const v = self.permittedOrigins; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn CaptureHandleConfig::to_js(self : CaptureHandleConfig) -> JsValue {
  CaptureHandleConfig::to_js_ffi(self)
}

///|
extern "js" fn CaptureHandleConfig::from_js_ffi(
  value : JsValue,
) -> CaptureHandleConfig =
  #| (v) => ({
  #|   exposeOrigin: (v.exposeOrigin === undefined ? -1 : v.exposeOrigin),
  #|   handle: v.handle,
  #|   permittedOrigins: (v.permittedOrigins === undefined ? { $tag: 0 } : { $tag: 1, _0: v.permittedOrigins })
  #| })

///|
/// Convert from JsValue
pub fn CaptureHandleConfig::from_js(value : JsValue) -> CaptureHandleConfig {
  CaptureHandleConfig::from_js_ffi(value)
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

///|
extern "js" fn CaptureHandle::from_js_ffi(value : JsValue) -> CaptureHandle =
  #| (v) => ({
  #|   origin: v.origin,
  #|   handle: v.handle
  #| })

///|
/// Convert from JsValue
pub fn CaptureHandle::from_js(value : JsValue) -> CaptureHandle {
  CaptureHandle::from_js_ffi(value)
}
