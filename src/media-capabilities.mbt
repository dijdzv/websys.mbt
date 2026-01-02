// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/media-capabilities

///|
/// MediaDecodingType enum
pub(all) enum MediaDecodingType {
  File
  MediaSource
  Webrtc
}

/// Convert to string value
pub fn MediaDecodingType::to_string(self : MediaDecodingType) -> String {
  match self {
    File => "file"
    MediaSource => "media-source"
    Webrtc => "webrtc"
  }
}

/// Parse from string value
pub fn MediaDecodingType::from_string(s : String) -> MediaDecodingType? {
  match s {
    "file" => Some(File)
    "media-source" => Some(MediaSource)
    "webrtc" => Some(Webrtc)
    _ => None
  }
}

///|
/// MediaEncodingType enum
pub(all) enum MediaEncodingType {
  Record
  Webrtc
}

/// Convert to string value
pub fn MediaEncodingType::to_string(self : MediaEncodingType) -> String {
  match self {
    Record => "record"
    Webrtc => "webrtc"
  }
}

/// Parse from string value
pub fn MediaEncodingType::from_string(s : String) -> MediaEncodingType? {
  match s {
    "record" => Some(Record)
    "webrtc" => Some(Webrtc)
    _ => None
  }
}

///|
/// HdrMetadataType enum
pub(all) enum HdrMetadataType {
  SmpteSt2086
  SmpteSt209410
  SmpteSt209440
}

/// Convert to string value
pub fn HdrMetadataType::to_string(self : HdrMetadataType) -> String {
  match self {
    SmpteSt2086 => "smpteSt2086"
    SmpteSt209410 => "smpteSt2094-10"
    SmpteSt209440 => "smpteSt2094-40"
  }
}

/// Parse from string value
pub fn HdrMetadataType::from_string(s : String) -> HdrMetadataType? {
  match s {
    "smpteSt2086" => Some(SmpteSt2086)
    "smpteSt2094-10" => Some(SmpteSt209410)
    "smpteSt2094-40" => Some(SmpteSt209440)
    _ => None
  }
}

///|
/// ColorGamut enum
pub(all) enum ColorGamut {
  Srgb
  P3
  Rec2020
}

/// Convert to string value
pub fn ColorGamut::to_string(self : ColorGamut) -> String {
  match self {
    Srgb => "srgb"
    P3 => "p3"
    Rec2020 => "rec2020"
  }
}

/// Parse from string value
pub fn ColorGamut::from_string(s : String) -> ColorGamut? {
  match s {
    "srgb" => Some(Srgb)
    "p3" => Some(P3)
    "rec2020" => Some(Rec2020)
    _ => None
  }
}

///|
/// TransferFunction enum
pub(all) enum TransferFunction {
  Srgb
  Pq
  Hlg
}

/// Convert to string value
pub fn TransferFunction::to_string(self : TransferFunction) -> String {
  match self {
    Srgb => "srgb"
    Pq => "pq"
    Hlg => "hlg"
  }
}

/// Parse from string value
pub fn TransferFunction::from_string(s : String) -> TransferFunction? {
  match s {
    "srgb" => Some(Srgb)
    "pq" => Some(Pq)
    "hlg" => Some(Hlg)
    _ => None
  }
}

///|
/// MediaConfiguration dictionary
pub struct MediaConfiguration {
  video : VideoConfiguration?
  audio : AudioConfiguration?
}

/// Create a new MediaConfiguration with default values
pub fn MediaConfiguration::default() -> MediaConfiguration {
  MediaConfiguration::{
    video: None,
    audio: None,
  }
}

/// Convert to JsValue
pub extern "js" fn MediaConfiguration::to_js(self : MediaConfiguration) -> JsValue =
  #| (self) => ({
  #|   video: self.video,
  #|   audio: self.audio
  #| })

///|
/// MediaDecodingConfiguration dictionary
pub struct MediaDecodingConfiguration {
  video : VideoConfiguration?
  audio : AudioConfiguration?
  type_ : MediaDecodingType
  keySystemConfiguration : MediaCapabilitiesKeySystemConfiguration?
}

/// Create a new MediaDecodingConfiguration with default values
pub fn MediaDecodingConfiguration::default() -> MediaDecodingConfiguration {
  MediaDecodingConfiguration::{
    video: None,
    audio: None,
    type_: panic(),
    keySystemConfiguration: None,
  }
}

/// Convert to JsValue
pub extern "js" fn MediaDecodingConfiguration::to_js(self : MediaDecodingConfiguration) -> JsValue =
  #| (self) => ({
  #|   video: self.video,
  #|   audio: self.audio,
  #|   type: self.type_,
  #|   keySystemConfiguration: self.keySystemConfiguration
  #| })

///|
/// MediaEncodingConfiguration dictionary
pub struct MediaEncodingConfiguration {
  video : VideoConfiguration?
  audio : AudioConfiguration?
  type_ : MediaEncodingType
}

/// Create a new MediaEncodingConfiguration with default values
pub fn MediaEncodingConfiguration::default() -> MediaEncodingConfiguration {
  MediaEncodingConfiguration::{
    video: None,
    audio: None,
    type_: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn MediaEncodingConfiguration::to_js(self : MediaEncodingConfiguration) -> JsValue =
  #| (self) => ({
  #|   video: self.video,
  #|   audio: self.audio,
  #|   type: self.type_
  #| })

///|
/// VideoConfiguration dictionary
pub struct VideoConfiguration {
  contentType : String
  width : Int
  height : Int
  bitrate : Int64
  framerate : Double
  hasAlphaChannel : Bool?
  hdrMetadataType : HdrMetadataType?
  colorGamut : ColorGamut?
  transferFunction : TransferFunction?
  scalabilityMode : String?
  spatialScalability : Bool?
}

/// Create a new VideoConfiguration with default values
pub fn VideoConfiguration::default() -> VideoConfiguration {
  VideoConfiguration::{
    contentType: "",
    width: 0,
    height: 0,
    bitrate: 0,
    framerate: 0,
    hasAlphaChannel: None,
    hdrMetadataType: None,
    colorGamut: None,
    transferFunction: None,
    scalabilityMode: None,
    spatialScalability: None,
  }
}

/// Convert to JsValue
pub extern "js" fn VideoConfiguration::to_js(self : VideoConfiguration) -> JsValue =
  #| (self) => ({
  #|   contentType: self.contentType,
  #|   width: self.width,
  #|   height: self.height,
  #|   bitrate: self.bitrate,
  #|   framerate: self.framerate,
  #|   hasAlphaChannel: self.hasAlphaChannel,
  #|   hdrMetadataType: self.hdrMetadataType,
  #|   colorGamut: self.colorGamut,
  #|   transferFunction: self.transferFunction,
  #|   scalabilityMode: self.scalabilityMode,
  #|   spatialScalability: self.spatialScalability
  #| })

///|
/// AudioConfiguration dictionary
pub struct AudioConfiguration {
  contentType : String
  channels : String?
  bitrate : Int64?
  samplerate : Int?
  spatialRendering : Bool?
}

/// Create a new AudioConfiguration with default values
pub fn AudioConfiguration::default() -> AudioConfiguration {
  AudioConfiguration::{
    contentType: "",
    channels: None,
    bitrate: None,
    samplerate: None,
    spatialRendering: None,
  }
}

/// Convert to JsValue
pub extern "js" fn AudioConfiguration::to_js(self : AudioConfiguration) -> JsValue =
  #| (self) => ({
  #|   contentType: self.contentType,
  #|   channels: self.channels,
  #|   bitrate: self.bitrate,
  #|   samplerate: self.samplerate,
  #|   spatialRendering: self.spatialRendering
  #| })

///|
/// MediaCapabilitiesKeySystemConfiguration dictionary
pub struct MediaCapabilitiesKeySystemConfiguration {
  keySystem : String
  initDataType : String?
  distinctiveIdentifier : MediaKeysRequirement?
  persistentState : MediaKeysRequirement?
  sessionTypes : Array[String]?
  audio : KeySystemTrackConfiguration?
  video : KeySystemTrackConfiguration?
}

/// Create a new MediaCapabilitiesKeySystemConfiguration with default values
pub fn MediaCapabilitiesKeySystemConfiguration::default() -> MediaCapabilitiesKeySystemConfiguration {
  MediaCapabilitiesKeySystemConfiguration::{
    keySystem: "",
    initDataType: None,
    distinctiveIdentifier: None,
    persistentState: None,
    sessionTypes: None,
    audio: None,
    video: None,
  }
}

/// Convert to JsValue
pub extern "js" fn MediaCapabilitiesKeySystemConfiguration::to_js(self : MediaCapabilitiesKeySystemConfiguration) -> JsValue =
  #| (self) => ({
  #|   keySystem: self.keySystem,
  #|   initDataType: self.initDataType,
  #|   distinctiveIdentifier: self.distinctiveIdentifier,
  #|   persistentState: self.persistentState,
  #|   sessionTypes: self.sessionTypes,
  #|   audio: self.audio,
  #|   video: self.video
  #| })

///|
/// KeySystemTrackConfiguration dictionary
pub struct KeySystemTrackConfiguration {
  robustness : String?
  encryptionScheme : String??
}

/// Create a new KeySystemTrackConfiguration with default values
pub fn KeySystemTrackConfiguration::default() -> KeySystemTrackConfiguration {
  KeySystemTrackConfiguration::{
    robustness: None,
    encryptionScheme: None,
  }
}

/// Convert to JsValue
pub extern "js" fn KeySystemTrackConfiguration::to_js(self : KeySystemTrackConfiguration) -> JsValue =
  #| (self) => ({
  #|   robustness: self.robustness,
  #|   encryptionScheme: self.encryptionScheme
  #| })

///|
/// MediaCapabilitiesInfo dictionary
pub struct MediaCapabilitiesInfo {
  supported : Bool
  smooth : Bool
  powerEfficient : Bool
}

/// Create a new MediaCapabilitiesInfo with default values
pub fn MediaCapabilitiesInfo::default() -> MediaCapabilitiesInfo {
  MediaCapabilitiesInfo::{
    supported: false,
    smooth: false,
    powerEfficient: false,
  }
}

/// Convert to JsValue
pub extern "js" fn MediaCapabilitiesInfo::to_js(self : MediaCapabilitiesInfo) -> JsValue =
  #| (self) => ({
  #|   supported: self.supported,
  #|   smooth: self.smooth,
  #|   powerEfficient: self.powerEfficient
  #| })

///|
/// MediaCapabilitiesDecodingInfo dictionary
pub struct MediaCapabilitiesDecodingInfo {
  supported : Bool
  smooth : Bool
  powerEfficient : Bool
  keySystemAccess : MediaKeySystemAccess?
  configuration : MediaDecodingConfiguration
}

/// Create a new MediaCapabilitiesDecodingInfo with default values
pub fn MediaCapabilitiesDecodingInfo::default() -> MediaCapabilitiesDecodingInfo {
  MediaCapabilitiesDecodingInfo::{
    supported: false,
    smooth: false,
    powerEfficient: false,
    keySystemAccess: None,
    configuration: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn MediaCapabilitiesDecodingInfo::to_js(self : MediaCapabilitiesDecodingInfo) -> JsValue =
  #| (self) => ({
  #|   supported: self.supported,
  #|   smooth: self.smooth,
  #|   powerEfficient: self.powerEfficient,
  #|   keySystemAccess: self.keySystemAccess,
  #|   configuration: self.configuration
  #| })

///|
/// MediaCapabilitiesEncodingInfo dictionary
pub struct MediaCapabilitiesEncodingInfo {
  supported : Bool
  smooth : Bool
  powerEfficient : Bool
  configuration : MediaEncodingConfiguration
}

/// Create a new MediaCapabilitiesEncodingInfo with default values
pub fn MediaCapabilitiesEncodingInfo::default() -> MediaCapabilitiesEncodingInfo {
  MediaCapabilitiesEncodingInfo::{
    supported: false,
    smooth: false,
    powerEfficient: false,
    configuration: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn MediaCapabilitiesEncodingInfo::to_js(self : MediaCapabilitiesEncodingInfo) -> JsValue =
  #| (self) => ({
  #|   supported: self.supported,
  #|   smooth: self.smooth,
  #|   powerEfficient: self.powerEfficient,
  #|   configuration: self.configuration
  #| })

///|
/// MediaCapabilities interface
pub type MediaCapabilities

pub extern "js" fn MediaCapabilities::to_js_value(self : MediaCapabilities) -> JsValue =
  #| (self) => self

pub extern "js" fn MediaCapabilities::decoding_info(self : MediaCapabilities, configuration : MediaDecodingConfiguration) -> Promise[MediaCapabilitiesDecodingInfo] =
  #| (self, configuration) => self.decodingInfo(configuration)

pub extern "js" fn MediaCapabilities::encoding_info(self : MediaCapabilities, configuration : MediaEncodingConfiguration) -> Promise[MediaCapabilitiesEncodingInfo] =
  #| (self, configuration) => self.encodingInfo(configuration)

