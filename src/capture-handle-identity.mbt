// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/capture-handle-identity

///|
/// CaptureHandleConfig dictionary
pub struct CaptureHandleConfig {
  exposeOrigin : Bool?
  handle : String?
  permittedOrigins : Array[String]?
}

/// Create a new CaptureHandleConfig with default values
pub fn CaptureHandleConfig::default() -> CaptureHandleConfig {
  CaptureHandleConfig::{
    exposeOrigin: None,
    handle: None,
    permittedOrigins: None,
  }
}

/// Convert to JsValue
pub extern "js" fn CaptureHandleConfig::to_js(self : CaptureHandleConfig) -> JsValue =
  #| (self) => ({
  #|   exposeOrigin: self.exposeOrigin,
  #|   handle: self.handle,
  #|   permittedOrigins: self.permittedOrigins
  #| })

///|
/// CaptureHandle dictionary
pub struct CaptureHandle {
  origin : String?
  handle : String?
}

/// Create a new CaptureHandle with default values
pub fn CaptureHandle::default() -> CaptureHandle {
  CaptureHandle::{
    origin: None,
    handle: None,
  }
}

/// Convert to JsValue
pub extern "js" fn CaptureHandle::to_js(self : CaptureHandle) -> JsValue =
  #| (self) => ({
  #|   origin: self.origin,
  #|   handle: self.handle
  #| })

