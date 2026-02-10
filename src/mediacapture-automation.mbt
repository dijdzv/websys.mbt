// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/mediacapture-automation

///|
/// MockCapturePromptResult enum
pub(all) enum MockCapturePromptResult {
  Granted
  Denied
} derive(Eq, Show)

///|
/// Convert to string value
pub fn MockCapturePromptResult::to_string(
  self : MockCapturePromptResult,
) -> String {
  match self {
    MockCapturePromptResult::Granted => "granted"
    MockCapturePromptResult::Denied => "denied"
  }
}

///|
/// Parse from string value
pub fn MockCapturePromptResult::from_string(
  s : String,
) -> MockCapturePromptResult? {
  match s {
    "granted" => Some(MockCapturePromptResult::Granted)
    "denied" => Some(MockCapturePromptResult::Denied)
    _ => None
  }
}

///|
/// MockCapturePromptResultConfiguration dictionary
pub(all) struct MockCapturePromptResultConfiguration {
  getUserMedia : MockCapturePromptResult?
  getDisplayMedia : MockCapturePromptResult?
}

///|
/// Create a new MockCapturePromptResultConfiguration with default values
pub fn MockCapturePromptResultConfiguration::default() -> MockCapturePromptResultConfiguration {
  MockCapturePromptResultConfiguration::{
    getUserMedia: None,
    getDisplayMedia: None,
  }
}

///|
extern "js" fn MockCapturePromptResultConfiguration::to_js_ffi(
  self : MockCapturePromptResultConfiguration,
) -> JsValue =
  #| (self) => ({
  #|   getUserMedia: ((() => { const v = self.getUserMedia; if (v === undefined) return undefined; return ['granted', 'denied'][v]; })()),
  #|   getDisplayMedia: ((() => { const v = self.getDisplayMedia; if (v === undefined) return undefined; return ['granted', 'denied'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn MockCapturePromptResultConfiguration::to_js(
  self : MockCapturePromptResultConfiguration,
) -> JsValue {
  MockCapturePromptResultConfiguration::to_js_ffi(self)
}

///|
extern "js" fn MockCapturePromptResultConfiguration::from_js_ffi(
  value : JsValue,
) -> MockCapturePromptResultConfiguration =
  #| (v) => ({
  #|   getUserMedia: (v.getUserMedia === undefined ? undefined : ['granted', 'denied'].indexOf(v.getUserMedia)),
  #|   getDisplayMedia: (v.getDisplayMedia === undefined ? undefined : ['granted', 'denied'].indexOf(v.getDisplayMedia))
  #| })

///|
/// Convert from JsValue
pub fn MockCapturePromptResultConfiguration::from_js(
  value : JsValue,
) -> MockCapturePromptResultConfiguration {
  MockCapturePromptResultConfiguration::from_js_ffi(value)
}

///|
/// MockCaptureDeviceConfiguration dictionary
pub(all) struct MockCaptureDeviceConfiguration {
  label : String?
  deviceId : String?
  groupId : String?
}

///|
/// Create a new MockCaptureDeviceConfiguration with default values
pub fn MockCaptureDeviceConfiguration::default() -> MockCaptureDeviceConfiguration {
  MockCaptureDeviceConfiguration::{ label: None, deviceId: None, groupId: None }
}

///|
extern "js" fn MockCaptureDeviceConfiguration::to_js_ffi(
  self : MockCaptureDeviceConfiguration,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   deviceId: self.deviceId,
  #|   groupId: self.groupId
  #| })

///|
/// Convert to JsValue
pub fn MockCaptureDeviceConfiguration::to_js(
  self : MockCaptureDeviceConfiguration,
) -> JsValue {
  MockCaptureDeviceConfiguration::to_js_ffi(self)
}

///|
extern "js" fn MockCaptureDeviceConfiguration::from_js_ffi(
  value : JsValue,
) -> MockCaptureDeviceConfiguration =
  #| (v) => ({
  #|   label: v.label,
  #|   deviceId: v.deviceId,
  #|   groupId: v.groupId
  #| })

///|
/// Convert from JsValue
pub fn MockCaptureDeviceConfiguration::from_js(
  value : JsValue,
) -> MockCaptureDeviceConfiguration {
  MockCaptureDeviceConfiguration::from_js_ffi(value)
}

///|
/// MockCameraConfiguration dictionary
pub(all) struct MockCameraConfiguration {
  label : String?
  deviceId : String?
  groupId : String?
  defaultFrameRate : Double?
  facingMode : String?
}

///|
/// Create a new MockCameraConfiguration with default values
pub fn MockCameraConfiguration::default() -> MockCameraConfiguration {
  MockCameraConfiguration::{
    label: None,
    deviceId: None,
    groupId: None,
    defaultFrameRate: None,
    facingMode: None,
  }
}

///|
extern "js" fn MockCameraConfiguration::to_js_ffi(
  self : MockCameraConfiguration,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   deviceId: self.deviceId,
  #|   groupId: self.groupId,
  #|   defaultFrameRate: self.defaultFrameRate,
  #|   facingMode: self.facingMode
  #| })

///|
/// Convert to JsValue
pub fn MockCameraConfiguration::to_js(
  self : MockCameraConfiguration,
) -> JsValue {
  MockCameraConfiguration::to_js_ffi(self)
}

///|
extern "js" fn MockCameraConfiguration::from_js_ffi(
  value : JsValue,
) -> MockCameraConfiguration =
  #| (v) => ({
  #|   label: v.label,
  #|   deviceId: v.deviceId,
  #|   groupId: v.groupId,
  #|   defaultFrameRate: v.defaultFrameRate,
  #|   facingMode: v.facingMode
  #| })

///|
/// Convert from JsValue
pub fn MockCameraConfiguration::from_js(
  value : JsValue,
) -> MockCameraConfiguration {
  MockCameraConfiguration::from_js_ffi(value)
}

///|
/// MockMicrophoneConfiguration dictionary
pub(all) struct MockMicrophoneConfiguration {
  label : String?
  deviceId : String?
  groupId : String?
  defaultSampleRate : Int?
}

///|
/// Create a new MockMicrophoneConfiguration with default values
pub fn MockMicrophoneConfiguration::default() -> MockMicrophoneConfiguration {
  MockMicrophoneConfiguration::{
    label: None,
    deviceId: None,
    groupId: None,
    defaultSampleRate: None,
  }
}

///|
extern "js" fn MockMicrophoneConfiguration::to_js_ffi(
  self : MockMicrophoneConfiguration,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   deviceId: self.deviceId,
  #|   groupId: self.groupId,
  #|   defaultSampleRate: self.defaultSampleRate
  #| })

///|
/// Convert to JsValue
pub fn MockMicrophoneConfiguration::to_js(
  self : MockMicrophoneConfiguration,
) -> JsValue {
  MockMicrophoneConfiguration::to_js_ffi(self)
}

///|
extern "js" fn MockMicrophoneConfiguration::from_js_ffi(
  value : JsValue,
) -> MockMicrophoneConfiguration =
  #| (v) => ({
  #|   label: v.label,
  #|   deviceId: v.deviceId,
  #|   groupId: v.groupId,
  #|   defaultSampleRate: v.defaultSampleRate
  #| })

///|
/// Convert from JsValue
pub fn MockMicrophoneConfiguration::from_js(
  value : JsValue,
) -> MockMicrophoneConfiguration {
  MockMicrophoneConfiguration::from_js_ffi(value)
}
