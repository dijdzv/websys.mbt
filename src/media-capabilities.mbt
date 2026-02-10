// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/media-capabilities

///|
/// MediaDecodingType enum
pub(all) enum MediaDecodingType {
  File
  MediaSource
  Webrtc
} derive(Eq, Show)

///|
/// Convert to string value
pub fn MediaDecodingType::to_string(self : MediaDecodingType) -> String {
  match self {
    MediaDecodingType::File => "file"
    MediaDecodingType::MediaSource => "media-source"
    MediaDecodingType::Webrtc => "webrtc"
  }
}

///|
/// Parse from string value
pub fn MediaDecodingType::from_string(s : String) -> MediaDecodingType? {
  match s {
    "file" => Some(MediaDecodingType::File)
    "media-source" => Some(MediaDecodingType::MediaSource)
    "webrtc" => Some(MediaDecodingType::Webrtc)
    _ => None
  }
}

///|
/// MediaEncodingType enum
pub(all) enum MediaEncodingType {
  Record
  Webrtc
} derive(Eq, Show)

///|
/// Convert to string value
pub fn MediaEncodingType::to_string(self : MediaEncodingType) -> String {
  match self {
    MediaEncodingType::Record => "record"
    MediaEncodingType::Webrtc => "webrtc"
  }
}

///|
/// Parse from string value
pub fn MediaEncodingType::from_string(s : String) -> MediaEncodingType? {
  match s {
    "record" => Some(MediaEncodingType::Record)
    "webrtc" => Some(MediaEncodingType::Webrtc)
    _ => None
  }
}

///|
/// HdrMetadataType enum
pub(all) enum HdrMetadataType {
  SmpteSt2086
  SmpteSt209410
  SmpteSt209440
} derive(Eq, Show)

///|
/// Convert to string value
pub fn HdrMetadataType::to_string(self : HdrMetadataType) -> String {
  match self {
    HdrMetadataType::SmpteSt2086 => "smpteSt2086"
    HdrMetadataType::SmpteSt209410 => "smpteSt2094-10"
    HdrMetadataType::SmpteSt209440 => "smpteSt2094-40"
  }
}

///|
/// Parse from string value
pub fn HdrMetadataType::from_string(s : String) -> HdrMetadataType? {
  match s {
    "smpteSt2086" => Some(HdrMetadataType::SmpteSt2086)
    "smpteSt2094-10" => Some(HdrMetadataType::SmpteSt209410)
    "smpteSt2094-40" => Some(HdrMetadataType::SmpteSt209440)
    _ => None
  }
}

///|
/// ColorGamut enum
pub(all) enum ColorGamut {
  Srgb
  P3
  Rec2020
} derive(Eq, Show)

///|
/// Convert to string value
pub fn ColorGamut::to_string(self : ColorGamut) -> String {
  match self {
    ColorGamut::Srgb => "srgb"
    ColorGamut::P3 => "p3"
    ColorGamut::Rec2020 => "rec2020"
  }
}

///|
/// Parse from string value
pub fn ColorGamut::from_string(s : String) -> ColorGamut? {
  match s {
    "srgb" => Some(ColorGamut::Srgb)
    "p3" => Some(ColorGamut::P3)
    "rec2020" => Some(ColorGamut::Rec2020)
    _ => None
  }
}

///|
/// TransferFunction enum
pub(all) enum TransferFunction {
  Srgb
  Pq
  Hlg
} derive(Eq, Show)

///|
/// Convert to string value
pub fn TransferFunction::to_string(self : TransferFunction) -> String {
  match self {
    TransferFunction::Srgb => "srgb"
    TransferFunction::Pq => "pq"
    TransferFunction::Hlg => "hlg"
  }
}

///|
/// Parse from string value
pub fn TransferFunction::from_string(s : String) -> TransferFunction? {
  match s {
    "srgb" => Some(TransferFunction::Srgb)
    "pq" => Some(TransferFunction::Pq)
    "hlg" => Some(TransferFunction::Hlg)
    _ => None
  }
}

///|
/// MediaConfiguration dictionary
pub(all) struct MediaConfiguration {
  video : VideoConfiguration?
  audio : AudioConfiguration?
}

///|
/// Create a new MediaConfiguration with default values
pub fn MediaConfiguration::default() -> MediaConfiguration {
  MediaConfiguration::{ video: None, audio: None }
}

///|
extern "js" fn MediaConfiguration::to_js_ffi(
  self : MediaConfiguration,
) -> JsValue =
  #| (self) => ({
  #|   video: ((() => { const v = self.video; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   audio: ((() => { const v = self.audio; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MediaConfiguration::to_js(self : MediaConfiguration) -> JsValue {
  MediaConfiguration::to_js_ffi(self)
}

///|
extern "js" fn MediaConfiguration::from_js_ffi(
  value : JsValue,
) -> MediaConfiguration =
  #| (v) => ({
  #|   video: (v.video === undefined ? { $tag: 0 } : { $tag: 1, _0: v.video }),
  #|   audio: (v.audio === undefined ? { $tag: 0 } : { $tag: 1, _0: v.audio })
  #| })

///|
/// Convert from JsValue
pub fn MediaConfiguration::from_js(value : JsValue) -> MediaConfiguration {
  MediaConfiguration::from_js_ffi(value)
}

///|
/// MediaDecodingConfiguration dictionary
pub(all) struct MediaDecodingConfiguration {
  video : VideoConfiguration?
  audio : AudioConfiguration?
  type_ : MediaDecodingType
  keySystemConfiguration : MediaCapabilitiesKeySystemConfiguration?
}

///|
/// Create a new MediaDecodingConfiguration
pub fn MediaDecodingConfiguration::new(
  type_~ : MediaDecodingType,
) -> MediaDecodingConfiguration {
  MediaDecodingConfiguration::{
    video: None,
    audio: None,
    type_,
    keySystemConfiguration: None,
  }
}

///|
extern "js" fn MediaDecodingConfiguration::to_js_ffi(
  self : MediaDecodingConfiguration,
) -> JsValue =
  #| (self) => ({
  #|   video: ((() => { const v = self.video; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   audio: ((() => { const v = self.audio; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   type: ['file', 'media-source', 'webrtc'][self.type_],
  #|   keySystemConfiguration: ((() => { const v = self.keySystemConfiguration; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MediaDecodingConfiguration::to_js(
  self : MediaDecodingConfiguration,
) -> JsValue {
  MediaDecodingConfiguration::to_js_ffi(self)
}

///|
extern "js" fn MediaDecodingConfiguration::from_js_ffi(
  value : JsValue,
) -> MediaDecodingConfiguration =
  #| (v) => ({
  #|   video: (v.video === undefined ? { $tag: 0 } : { $tag: 1, _0: v.video }),
  #|   audio: (v.audio === undefined ? { $tag: 0 } : { $tag: 1, _0: v.audio }),
  #|   type_: ['file', 'media-source', 'webrtc'].indexOf(v.type),
  #|   keySystemConfiguration: (v.keySystemConfiguration === undefined ? { $tag: 0 } : { $tag: 1, _0: v.keySystemConfiguration })
  #| })

///|
/// Convert from JsValue
pub fn MediaDecodingConfiguration::from_js(
  value : JsValue,
) -> MediaDecodingConfiguration {
  MediaDecodingConfiguration::from_js_ffi(value)
}

///|
/// MediaEncodingConfiguration dictionary
pub(all) struct MediaEncodingConfiguration {
  video : VideoConfiguration?
  audio : AudioConfiguration?
  type_ : MediaEncodingType
}

///|
/// Create a new MediaEncodingConfiguration
pub fn MediaEncodingConfiguration::new(
  type_~ : MediaEncodingType,
) -> MediaEncodingConfiguration {
  MediaEncodingConfiguration::{ video: None, audio: None, type_ }
}

///|
extern "js" fn MediaEncodingConfiguration::to_js_ffi(
  self : MediaEncodingConfiguration,
) -> JsValue =
  #| (self) => ({
  #|   video: ((() => { const v = self.video; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   audio: ((() => { const v = self.audio; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   type: ['record', 'webrtc'][self.type_]
  #| })

///|
/// Convert to JsValue
pub fn MediaEncodingConfiguration::to_js(
  self : MediaEncodingConfiguration,
) -> JsValue {
  MediaEncodingConfiguration::to_js_ffi(self)
}

///|
extern "js" fn MediaEncodingConfiguration::from_js_ffi(
  value : JsValue,
) -> MediaEncodingConfiguration =
  #| (v) => ({
  #|   video: (v.video === undefined ? { $tag: 0 } : { $tag: 1, _0: v.video }),
  #|   audio: (v.audio === undefined ? { $tag: 0 } : { $tag: 1, _0: v.audio }),
  #|   type_: ['record', 'webrtc'].indexOf(v.type)
  #| })

///|
/// Convert from JsValue
pub fn MediaEncodingConfiguration::from_js(
  value : JsValue,
) -> MediaEncodingConfiguration {
  MediaEncodingConfiguration::from_js_ffi(value)
}

///|
/// VideoConfiguration dictionary
pub(all) struct VideoConfiguration {
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

///|
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

///|
extern "js" fn VideoConfiguration::to_js_ffi(
  self : VideoConfiguration,
) -> JsValue =
  #| (self) => ({
  #|   contentType: self.contentType,
  #|   width: self.width,
  #|   height: self.height,
  #|   bitrate: self.bitrate,
  #|   framerate: self.framerate,
  #|   hasAlphaChannel: (self.hasAlphaChannel === -1 ? undefined : self.hasAlphaChannel),
  #|   hdrMetadataType: ((() => { const v = self.hdrMetadataType; if (v === undefined) return undefined; return ['smpteSt2086', 'smpteSt2094-10', 'smpteSt2094-40'][v]; })()),
  #|   colorGamut: ((() => { const v = self.colorGamut; if (v === undefined) return undefined; return ['srgb', 'p3', 'rec2020'][v]; })()),
  #|   transferFunction: ((() => { const v = self.transferFunction; if (v === undefined) return undefined; return ['srgb', 'pq', 'hlg'][v]; })()),
  #|   scalabilityMode: self.scalabilityMode,
  #|   spatialScalability: (self.spatialScalability === -1 ? undefined : self.spatialScalability)
  #| })

///|
/// Convert to JsValue
pub fn VideoConfiguration::to_js(self : VideoConfiguration) -> JsValue {
  VideoConfiguration::to_js_ffi(self)
}

///|
extern "js" fn VideoConfiguration::from_js_ffi(
  value : JsValue,
) -> VideoConfiguration =
  #| (v) => ({
  #|   contentType: v.contentType,
  #|   width: v.width,
  #|   height: v.height,
  #|   bitrate: v.bitrate,
  #|   framerate: v.framerate,
  #|   hasAlphaChannel: (v.hasAlphaChannel === undefined ? -1 : v.hasAlphaChannel),
  #|   hdrMetadataType: (v.hdrMetadataType === undefined ? undefined : ['smpteSt2086', 'smpteSt2094-10', 'smpteSt2094-40'].indexOf(v.hdrMetadataType)),
  #|   colorGamut: (v.colorGamut === undefined ? undefined : ['srgb', 'p3', 'rec2020'].indexOf(v.colorGamut)),
  #|   transferFunction: (v.transferFunction === undefined ? undefined : ['srgb', 'pq', 'hlg'].indexOf(v.transferFunction)),
  #|   scalabilityMode: v.scalabilityMode,
  #|   spatialScalability: (v.spatialScalability === undefined ? -1 : v.spatialScalability)
  #| })

///|
/// Convert from JsValue
pub fn VideoConfiguration::from_js(value : JsValue) -> VideoConfiguration {
  VideoConfiguration::from_js_ffi(value)
}

///|
/// AudioConfiguration dictionary
pub(all) struct AudioConfiguration {
  contentType : String
  channels : String?
  bitrate : Int64?
  samplerate : Int?
  spatialRendering : Bool?
}

///|
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

///|
extern "js" fn AudioConfiguration::to_js_ffi(
  self : AudioConfiguration,
) -> JsValue =
  #| (self) => ({
  #|   contentType: self.contentType,
  #|   channels: self.channels,
  #|   bitrate: self.bitrate,
  #|   samplerate: self.samplerate,
  #|   spatialRendering: (self.spatialRendering === -1 ? undefined : self.spatialRendering)
  #| })

///|
/// Convert to JsValue
pub fn AudioConfiguration::to_js(self : AudioConfiguration) -> JsValue {
  AudioConfiguration::to_js_ffi(self)
}

///|
extern "js" fn AudioConfiguration::from_js_ffi(
  value : JsValue,
) -> AudioConfiguration =
  #| (v) => ({
  #|   contentType: v.contentType,
  #|   channels: v.channels,
  #|   bitrate: v.bitrate,
  #|   samplerate: v.samplerate,
  #|   spatialRendering: (v.spatialRendering === undefined ? -1 : v.spatialRendering)
  #| })

///|
/// Convert from JsValue
pub fn AudioConfiguration::from_js(value : JsValue) -> AudioConfiguration {
  AudioConfiguration::from_js_ffi(value)
}

///|
/// MediaCapabilitiesKeySystemConfiguration dictionary
pub(all) struct MediaCapabilitiesKeySystemConfiguration {
  keySystem : String
  initDataType : String?
  distinctiveIdentifier : MediaKeysRequirement?
  persistentState : MediaKeysRequirement?
  sessionTypes : Array[String]?
  audio : KeySystemTrackConfiguration?
  video : KeySystemTrackConfiguration?
}

///|
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

///|
extern "js" fn MediaCapabilitiesKeySystemConfiguration::to_js_ffi(
  self : MediaCapabilitiesKeySystemConfiguration,
) -> JsValue =
  #| (self) => ({
  #|   keySystem: self.keySystem,
  #|   initDataType: self.initDataType,
  #|   distinctiveIdentifier: ((() => { const v = self.distinctiveIdentifier; if (v === undefined) return undefined; return ['required', 'optional', 'not-allowed'][v]; })()),
  #|   persistentState: ((() => { const v = self.persistentState; if (v === undefined) return undefined; return ['required', 'optional', 'not-allowed'][v]; })()),
  #|   sessionTypes: ((() => { const v = self.sessionTypes; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   audio: ((() => { const v = self.audio; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   video: ((() => { const v = self.video; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MediaCapabilitiesKeySystemConfiguration::to_js(
  self : MediaCapabilitiesKeySystemConfiguration,
) -> JsValue {
  MediaCapabilitiesKeySystemConfiguration::to_js_ffi(self)
}

///|
extern "js" fn MediaCapabilitiesKeySystemConfiguration::from_js_ffi(
  value : JsValue,
) -> MediaCapabilitiesKeySystemConfiguration =
  #| (v) => ({
  #|   keySystem: v.keySystem,
  #|   initDataType: v.initDataType,
  #|   distinctiveIdentifier: (v.distinctiveIdentifier === undefined ? undefined : ['required', 'optional', 'not-allowed'].indexOf(v.distinctiveIdentifier)),
  #|   persistentState: (v.persistentState === undefined ? undefined : ['required', 'optional', 'not-allowed'].indexOf(v.persistentState)),
  #|   sessionTypes: (v.sessionTypes === undefined ? { $tag: 0 } : { $tag: 1, _0: v.sessionTypes }),
  #|   audio: (v.audio === undefined ? { $tag: 0 } : { $tag: 1, _0: v.audio }),
  #|   video: (v.video === undefined ? { $tag: 0 } : { $tag: 1, _0: v.video })
  #| })

///|
/// Convert from JsValue
pub fn MediaCapabilitiesKeySystemConfiguration::from_js(
  value : JsValue,
) -> MediaCapabilitiesKeySystemConfiguration {
  MediaCapabilitiesKeySystemConfiguration::from_js_ffi(value)
}

///|
/// KeySystemTrackConfiguration dictionary
pub(all) struct KeySystemTrackConfiguration {
  robustness : String?
  encryptionScheme : Nullable[String]
}

///|
/// Create a new KeySystemTrackConfiguration with default values
pub fn KeySystemTrackConfiguration::default() -> KeySystemTrackConfiguration {
  KeySystemTrackConfiguration::{
    robustness: None,
    encryptionScheme: Nullable::Undefined,
  }
}

///|
extern "js" fn KeySystemTrackConfiguration::to_js_ffi(
  self : KeySystemTrackConfiguration,
) -> JsValue =
  #| (self) => ({
  #|   robustness: self.robustness,
  #|   encryptionScheme: ((() => { const v = self.encryptionScheme; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn KeySystemTrackConfiguration::to_js(
  self : KeySystemTrackConfiguration,
) -> JsValue {
  KeySystemTrackConfiguration::to_js_ffi(self)
}

///|
extern "js" fn KeySystemTrackConfiguration::from_js_ffi(
  value : JsValue,
) -> KeySystemTrackConfiguration =
  #| (v) => ({
  #|   robustness: v.robustness,
  #|   encryptionScheme: (v.encryptionScheme === undefined ? { $tag: 0 } : v.encryptionScheme === null ? { $tag: 1 } : { $tag: 2, _0: v.encryptionScheme })
  #| })

///|
/// Convert from JsValue
pub fn KeySystemTrackConfiguration::from_js(
  value : JsValue,
) -> KeySystemTrackConfiguration {
  KeySystemTrackConfiguration::from_js_ffi(value)
}

///|
/// MediaCapabilitiesInfo dictionary
pub(all) struct MediaCapabilitiesInfo {
  supported : Bool
  smooth : Bool
  powerEfficient : Bool
}

///|
/// Create a new MediaCapabilitiesInfo with default values
pub fn MediaCapabilitiesInfo::default() -> MediaCapabilitiesInfo {
  MediaCapabilitiesInfo::{
    supported: false,
    smooth: false,
    powerEfficient: false,
  }
}

///|
extern "js" fn MediaCapabilitiesInfo::to_js_ffi(
  self : MediaCapabilitiesInfo,
) -> JsValue =
  #| (self) => ({
  #|   supported: self.supported,
  #|   smooth: self.smooth,
  #|   powerEfficient: self.powerEfficient
  #| })

///|
/// Convert to JsValue
pub fn MediaCapabilitiesInfo::to_js(self : MediaCapabilitiesInfo) -> JsValue {
  MediaCapabilitiesInfo::to_js_ffi(self)
}

///|
extern "js" fn MediaCapabilitiesInfo::from_js_ffi(
  value : JsValue,
) -> MediaCapabilitiesInfo =
  #| (v) => ({
  #|   supported: v.supported,
  #|   smooth: v.smooth,
  #|   powerEfficient: v.powerEfficient
  #| })

///|
/// Convert from JsValue
pub fn MediaCapabilitiesInfo::from_js(value : JsValue) -> MediaCapabilitiesInfo {
  MediaCapabilitiesInfo::from_js_ffi(value)
}

///|
/// MediaCapabilitiesDecodingInfo dictionary
pub(all) struct MediaCapabilitiesDecodingInfo {
  supported : Bool
  smooth : Bool
  powerEfficient : Bool
  keySystemAccess : MediaKeySystemAccess?
  configuration : MediaDecodingConfiguration
}

///|
/// Create a new MediaCapabilitiesDecodingInfo
pub fn MediaCapabilitiesDecodingInfo::new(
  configuration~ : MediaDecodingConfiguration,
) -> MediaCapabilitiesDecodingInfo {
  MediaCapabilitiesDecodingInfo::{
    supported: false,
    smooth: false,
    powerEfficient: false,
    keySystemAccess: None,
    configuration,
  }
}

///|
extern "js" fn MediaCapabilitiesDecodingInfo::to_js_ffi(
  self : MediaCapabilitiesDecodingInfo,
) -> JsValue =
  #| (self) => ({
  #|   supported: self.supported,
  #|   smooth: self.smooth,
  #|   powerEfficient: self.powerEfficient,
  #|   keySystemAccess: self.keySystemAccess,
  #|   configuration: self.configuration
  #| })

///|
/// Convert to JsValue
pub fn MediaCapabilitiesDecodingInfo::to_js(
  self : MediaCapabilitiesDecodingInfo,
) -> JsValue {
  MediaCapabilitiesDecodingInfo::to_js_ffi(self)
}

///|
extern "js" fn MediaCapabilitiesDecodingInfo::from_js_ffi(
  value : JsValue,
) -> MediaCapabilitiesDecodingInfo =
  #| (v) => ({
  #|   supported: v.supported,
  #|   smooth: v.smooth,
  #|   powerEfficient: v.powerEfficient,
  #|   keySystemAccess: v.keySystemAccess,
  #|   configuration: v.configuration
  #| })

///|
/// Convert from JsValue
pub fn MediaCapabilitiesDecodingInfo::from_js(
  value : JsValue,
) -> MediaCapabilitiesDecodingInfo {
  MediaCapabilitiesDecodingInfo::from_js_ffi(value)
}

///|
/// MediaCapabilitiesEncodingInfo dictionary
pub(all) struct MediaCapabilitiesEncodingInfo {
  supported : Bool
  smooth : Bool
  powerEfficient : Bool
  configuration : MediaEncodingConfiguration
}

///|
/// Create a new MediaCapabilitiesEncodingInfo
pub fn MediaCapabilitiesEncodingInfo::new(
  configuration~ : MediaEncodingConfiguration,
) -> MediaCapabilitiesEncodingInfo {
  MediaCapabilitiesEncodingInfo::{
    supported: false,
    smooth: false,
    powerEfficient: false,
    configuration,
  }
}

///|
extern "js" fn MediaCapabilitiesEncodingInfo::to_js_ffi(
  self : MediaCapabilitiesEncodingInfo,
) -> JsValue =
  #| (self) => ({
  #|   supported: self.supported,
  #|   smooth: self.smooth,
  #|   powerEfficient: self.powerEfficient,
  #|   configuration: self.configuration
  #| })

///|
/// Convert to JsValue
pub fn MediaCapabilitiesEncodingInfo::to_js(
  self : MediaCapabilitiesEncodingInfo,
) -> JsValue {
  MediaCapabilitiesEncodingInfo::to_js_ffi(self)
}

///|
extern "js" fn MediaCapabilitiesEncodingInfo::from_js_ffi(
  value : JsValue,
) -> MediaCapabilitiesEncodingInfo =
  #| (v) => ({
  #|   supported: v.supported,
  #|   smooth: v.smooth,
  #|   powerEfficient: v.powerEfficient,
  #|   configuration: v.configuration
  #| })

///|
/// Convert from JsValue
pub fn MediaCapabilitiesEncodingInfo::from_js(
  value : JsValue,
) -> MediaCapabilitiesEncodingInfo {
  MediaCapabilitiesEncodingInfo::from_js_ffi(value)
}

///|
/// MediaCapabilities interface
pub type MediaCapabilities

///|
pub extern "js" fn MediaCapabilities::to_js_value(
  self : MediaCapabilities,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to MediaCapabilities (unchecked)
pub extern "js" fn MediaCapabilities::from_js_value(
  v : JsValue,
) -> MediaCapabilities =
  #| (v) => v

///|
/// Safely cast JsValue to MediaCapabilities (checked with instanceof)
pub extern "js" fn MediaCapabilities::from_js_value_opt(
  v : JsValue,
) -> MediaCapabilities? =
  #| (v) => (v instanceof MediaCapabilities) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MediaCapabilities (checked with instanceof)
pub extern "js" fn JsValue::as_media_capabilities(
  self : JsValue,
) -> MediaCapabilities? =
  #| (self) => (self instanceof MediaCapabilities) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MediaCapabilities (unchecked)
pub extern "js" fn JsValue::to_media_capabilities(
  self : JsValue,
) -> MediaCapabilities =
  #| (self) => self

///|
extern "js" fn MediaCapabilities::decoding_info_ffi(
  self : MediaCapabilities,
  configuration : JsValue,
) -> Promise[MediaCapabilitiesDecodingInfo] =
  #| (self, configuration) => self.decodingInfo(configuration).then(v => ({
  #|   keySystemAccess: v.keySystemAccess,
  #|   configuration: v.configuration
  #| }))

///|
pub fn MediaCapabilities::decoding_info(
  self : MediaCapabilities,
  configuration : MediaDecodingConfiguration,
) -> Promise[MediaCapabilitiesDecodingInfo] {
  MediaCapabilities::decoding_info_ffi(self, configuration.to_js())
}

///|
extern "js" fn MediaCapabilities::encoding_info_ffi(
  self : MediaCapabilities,
  configuration : JsValue,
) -> Promise[MediaCapabilitiesEncodingInfo] =
  #| (self, configuration) => self.encodingInfo(configuration).then(v => ({
  #|   configuration: v.configuration
  #| }))

///|
pub fn MediaCapabilities::encoding_info(
  self : MediaCapabilities,
  configuration : MediaEncodingConfiguration,
) -> Promise[MediaCapabilitiesEncodingInfo] {
  MediaCapabilities::encoding_info_ffi(self, configuration.to_js())
}
