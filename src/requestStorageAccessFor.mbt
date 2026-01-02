// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/requestStorageAccessFor

///|
/// TopLevelStorageAccessPermissionDescriptor dictionary
pub struct TopLevelStorageAccessPermissionDescriptor {
  requestedOrigin : String?
}

/// Create a new TopLevelStorageAccessPermissionDescriptor with default values
pub fn TopLevelStorageAccessPermissionDescriptor::default() -> TopLevelStorageAccessPermissionDescriptor {
  TopLevelStorageAccessPermissionDescriptor::{
    requestedOrigin: None,
  }
}

/// Convert to JsValue
pub extern "js" fn TopLevelStorageAccessPermissionDescriptor::to_js(self : TopLevelStorageAccessPermissionDescriptor) -> JsValue =
  #| (self) => ({
  #|   requestedOrigin: self.requestedOrigin
  #| })

