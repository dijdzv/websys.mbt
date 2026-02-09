// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/requestStorageAccessFor

///|
/// TopLevelStorageAccessPermissionDescriptor dictionary
pub(all) struct TopLevelStorageAccessPermissionDescriptor {
  requestedOrigin : String?
}

///|
/// Create a new TopLevelStorageAccessPermissionDescriptor with default values
pub fn TopLevelStorageAccessPermissionDescriptor::default() -> TopLevelStorageAccessPermissionDescriptor {
  TopLevelStorageAccessPermissionDescriptor::{ requestedOrigin: None }
}

///|
extern "js" fn TopLevelStorageAccessPermissionDescriptor::to_js_ffi(
  self : TopLevelStorageAccessPermissionDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   requestedOrigin: self.requestedOrigin
  #| })

///|
/// Convert to JsValue
pub fn TopLevelStorageAccessPermissionDescriptor::to_js(
  self : TopLevelStorageAccessPermissionDescriptor,
) -> JsValue {
  TopLevelStorageAccessPermissionDescriptor::to_js_ffi(self)
}
