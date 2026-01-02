// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/web-share

///|
/// ShareData dictionary
pub struct ShareData {
  files : Array[File]?
  title : String?
  text : String?
  url : String?
}

/// Create a new ShareData with default values
pub fn ShareData::default() -> ShareData {
  ShareData::{
    files: None,
    title: None,
    text: None,
    url: None,
  }
}

/// Convert to JsValue
pub extern "js" fn ShareData::to_js(self : ShareData) -> JsValue =
  #| (self) => ({
  #|   files: self.files,
  #|   title: self.title,
  #|   text: self.text,
  #|   url: self.url
  #| })

