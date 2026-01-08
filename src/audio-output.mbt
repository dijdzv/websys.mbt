// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/audio-output

///|
/// AudioOutputOptions dictionary
pub struct AudioOutputOptions {
  deviceId : String?
}

///|
/// Create a new AudioOutputOptions with default values
pub fn AudioOutputOptions::default() -> AudioOutputOptions {
  AudioOutputOptions::{ deviceId: None }
}

///|
/// Convert to JsValue
pub extern "js" fn AudioOutputOptions::to_js(
  self : AudioOutputOptions,
) -> JsValue =
  #| (self) => ({
  #|   deviceId: self.deviceId
  #| })
