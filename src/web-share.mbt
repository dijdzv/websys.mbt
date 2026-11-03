// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/web-share

///|
/// ShareData dictionary
pub(all) struct ShareData {
  files : FixedArray[File]?
  title : String?
  text : String?
  url : String?
}

///|
/// Create a new ShareData with default values
pub fn ShareData::default() -> ShareData {
  ShareData::{ files: None, title: None, text: None, url: None, }
}

///|
extern "js" fn ShareData::to_js_ffi(self : ShareData) -> JsValue =
  #| (self) => ({
  #|   files: self.files,
  #|   title: self.title,
  #|   text: self.text,
  #|   url: self.url
  #| })

///|
/// Convert to JsValue
pub fn ShareData::to_js(self : ShareData) -> JsValue {
  ShareData::to_js_ffi(self)
}

///|
extern "js" fn ShareData::from_js_ffi(value : JsValue) -> ShareData =
  #| (v) => ({
  #|   files: v.files,
  #|   title: v.title,
  #|   text: v.text,
  #|   url: v.url
  #| })

///|
/// Convert from JsValue
pub fn ShareData::from_js(value : JsValue) -> ShareData {
  ShareData::from_js_ffi(value)
}
