// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/web-share

///|
/// ShareData dictionary
pub(all) struct ShareData {
  files : Array[File]?
  title : String?
  text : String?
  url : String?
}

///|
/// Create a new ShareData with default values
pub fn ShareData::default() -> ShareData {
  ShareData::{ files: None, title: None, text: None, url: None }
}

///|
extern "js" fn ShareData::to_js_ffi(self : ShareData) -> JsValue =
  #| (self) => ({
  #|   files: ((() => { const v = self.files; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   title: self.title,
  #|   text: self.text,
  #|   url: self.url
  #| })

///|
/// Convert to JsValue
pub fn ShareData::to_js(self : ShareData) -> JsValue {
  ShareData::to_js_ffi(self)
}
