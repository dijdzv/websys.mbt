// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/local-font-access

///|
/// QueryOptions dictionary
pub struct QueryOptions {
  postscriptNames : Array[String]?
}

///|
/// Create a new QueryOptions with default values
pub fn QueryOptions::default() -> QueryOptions {
  QueryOptions::{ postscriptNames: None }
}

///|
/// Convert to JsValue
pub extern "js" fn QueryOptions::to_js(self : QueryOptions) -> JsValue =
  #| (self) => ({
  #|   postscriptNames: self.postscriptNames
  #| })

///|
/// FontData interface
pub type FontData

///|
pub extern "js" fn FontData::to_js_value(self : FontData) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn FontData::blob(self : FontData) -> Promise[Blob] =
  #| (self) => self.blob()

///|
pub extern "js" fn FontData::get_postscript_name(self : FontData) -> String =
  #| (self) => self.postscriptName

///|
pub extern "js" fn FontData::get_full_name(self : FontData) -> String =
  #| (self) => self.fullName

///|
pub extern "js" fn FontData::get_family(self : FontData) -> String =
  #| (self) => self.family

///|
pub extern "js" fn FontData::get_style(self : FontData) -> String =
  #| (self) => self.style
