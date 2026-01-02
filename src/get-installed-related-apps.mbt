// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/get-installed-related-apps

///|
/// RelatedApplication dictionary
pub struct RelatedApplication {
  platform : String
  url : String?
  id : String?
  version : String?
}

/// Create a new RelatedApplication with default values
pub fn RelatedApplication::default() -> RelatedApplication {
  RelatedApplication::{
    platform: "",
    url: None,
    id: None,
    version: None,
  }
}

/// Convert to JsValue
pub extern "js" fn RelatedApplication::to_js(self : RelatedApplication) -> JsValue =
  #| (self) => ({
  #|   platform: self.platform,
  #|   url: self.url,
  #|   id: self.id,
  #|   version: self.version
  #| })

