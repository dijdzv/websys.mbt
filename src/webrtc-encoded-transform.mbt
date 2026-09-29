// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webrtc-encoded-transform

///|
/// RTCRtpSenderTransform typedef
pub type RTCRtpSenderTransform

pub extern "js" fn RTCRtpSenderTransform::to_js_value(self : RTCRtpSenderTransform) -> JsValue =
  #| (self) => self

/// Create RTCRtpSenderTransform from RTCRtpSFrameEncryptor
pub extern "js" fn RTCRtpSenderTransform::from_rtc_rtp_s_frame_encryptor(v : RTCRtpSFrameEncryptor) -> RTCRtpSenderTransform =
  #| (v) => v

/// Create RTCRtpSenderTransform from RTCRtpScriptTransform
pub extern "js" fn RTCRtpSenderTransform::from_rtc_rtp_script_transform(v : RTCRtpScriptTransform) -> RTCRtpSenderTransform =
  #| (v) => v

/// Check if this RTCRtpSenderTransform is RTCRtpSFrameEncryptor
pub extern "js" fn RTCRtpSenderTransform::is_rtc_rtp_s_frame_encryptor(self : RTCRtpSenderTransform) -> Bool =
  #| (self) => self instanceof RTCRtpSFrameEncryptor

/// Check if this RTCRtpSenderTransform is RTCRtpScriptTransform
pub extern "js" fn RTCRtpSenderTransform::is_rtc_rtp_script_transform(self : RTCRtpSenderTransform) -> Bool =
  #| (self) => self instanceof RTCRtpScriptTransform

/// Try to get RTCRtpSenderTransform as RTCRtpSFrameEncryptor
pub extern "js" fn RTCRtpSenderTransform::as_rtc_rtp_s_frame_encryptor(self : RTCRtpSenderTransform) -> RTCRtpSFrameEncryptor? =
  #| (self) => (self instanceof RTCRtpSFrameEncryptor) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Try to get RTCRtpSenderTransform as RTCRtpScriptTransform
pub extern "js" fn RTCRtpSenderTransform::as_rtc_rtp_script_transform(self : RTCRtpSenderTransform) -> RTCRtpScriptTransform? =
  #| (self) => (self instanceof RTCRtpScriptTransform) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Flatten Option[RTCRtpSenderTransform] to RTCRtpSFrameEncryptor?
pub fn RTCRtpSenderTransform::bind_as_rtc_rtp_s_frame_encryptor(value : RTCRtpSenderTransform?) -> RTCRtpSFrameEncryptor? {
  match value {
    Some(v) => v.as_rtc_rtp_s_frame_encryptor()
    None => None
  }
}

/// Flatten Option[RTCRtpSenderTransform] to RTCRtpScriptTransform?
pub fn RTCRtpSenderTransform::bind_as_rtc_rtp_script_transform(value : RTCRtpSenderTransform?) -> RTCRtpScriptTransform? {
  match value {
    Some(v) => v.as_rtc_rtp_script_transform()
    None => None
  }
}

///|
/// RTCRtpReceiverTransform typedef
pub type RTCRtpReceiverTransform

pub extern "js" fn RTCRtpReceiverTransform::to_js_value(self : RTCRtpReceiverTransform) -> JsValue =
  #| (self) => self

/// Create RTCRtpReceiverTransform from RTCRtpSFrameDecryptor
pub extern "js" fn RTCRtpReceiverTransform::from_rtc_rtp_s_frame_decryptor(v : RTCRtpSFrameDecryptor) -> RTCRtpReceiverTransform =
  #| (v) => v

/// Create RTCRtpReceiverTransform from RTCRtpScriptTransform
pub extern "js" fn RTCRtpReceiverTransform::from_rtc_rtp_script_transform(v : RTCRtpScriptTransform) -> RTCRtpReceiverTransform =
  #| (v) => v

/// Check if this RTCRtpReceiverTransform is RTCRtpSFrameDecryptor
pub extern "js" fn RTCRtpReceiverTransform::is_rtc_rtp_s_frame_decryptor(self : RTCRtpReceiverTransform) -> Bool =
  #| (self) => self instanceof RTCRtpSFrameDecryptor

/// Check if this RTCRtpReceiverTransform is RTCRtpScriptTransform
pub extern "js" fn RTCRtpReceiverTransform::is_rtc_rtp_script_transform(self : RTCRtpReceiverTransform) -> Bool =
  #| (self) => self instanceof RTCRtpScriptTransform

/// Try to get RTCRtpReceiverTransform as RTCRtpSFrameDecryptor
pub extern "js" fn RTCRtpReceiverTransform::as_rtc_rtp_s_frame_decryptor(self : RTCRtpReceiverTransform) -> RTCRtpSFrameDecryptor? =
  #| (self) => (self instanceof RTCRtpSFrameDecryptor) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Try to get RTCRtpReceiverTransform as RTCRtpScriptTransform
pub extern "js" fn RTCRtpReceiverTransform::as_rtc_rtp_script_transform(self : RTCRtpReceiverTransform) -> RTCRtpScriptTransform? =
  #| (self) => (self instanceof RTCRtpScriptTransform) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Flatten Option[RTCRtpReceiverTransform] to RTCRtpSFrameDecryptor?
pub fn RTCRtpReceiverTransform::bind_as_rtc_rtp_s_frame_decryptor(value : RTCRtpReceiverTransform?) -> RTCRtpSFrameDecryptor? {
  match value {
    Some(v) => v.as_rtc_rtp_s_frame_decryptor()
    None => None
  }
}

/// Flatten Option[RTCRtpReceiverTransform] to RTCRtpScriptTransform?
pub fn RTCRtpReceiverTransform::bind_as_rtc_rtp_script_transform(value : RTCRtpReceiverTransform?) -> RTCRtpScriptTransform? {
  match value {
    Some(v) => v.as_rtc_rtp_script_transform()
    None => None
  }
}

///|
/// SmallCryptoKeyID typedef
pub type SmallCryptoKeyID = Int64

///|
/// CryptoKeyID typedef
pub type CryptoKeyID

pub extern "js" fn CryptoKeyID::to_js_value(self : CryptoKeyID) -> JsValue =
  #| (self) => self

/// Create CryptoKeyID from SmallCryptoKeyID
pub extern "js" fn CryptoKeyID::from_small_crypto_key_id(v : SmallCryptoKeyID) -> CryptoKeyID =
  #| (v) => v

/// Check if this CryptoKeyID is SmallCryptoKeyID
pub extern "js" fn CryptoKeyID::is_small_crypto_key_id(self : CryptoKeyID) -> Bool =
  #| (self) => typeof self === 'number'

/// Try to get CryptoKeyID as SmallCryptoKeyID
pub extern "js" fn CryptoKeyID::as_small_crypto_key_id(self : CryptoKeyID) -> SmallCryptoKeyID? =
  #| (self) => (typeof self === 'number') ? { $tag: 1, _0: self } : { $tag: 0 }

/// Flatten Option[CryptoKeyID] to SmallCryptoKeyID?
pub fn CryptoKeyID::bind_as_small_crypto_key_id(value : CryptoKeyID?) -> SmallCryptoKeyID? {
  match value {
    Some(v) => v.as_small_crypto_key_id()
    None => None
  }
}

///|
/// WorkerOrWorkerAndParameters typedef
pub type WorkerOrWorkerAndParameters

pub extern "js" fn WorkerOrWorkerAndParameters::to_js_value(self : WorkerOrWorkerAndParameters) -> JsValue =
  #| (self) => self

/// Create WorkerOrWorkerAndParameters from Worker
pub extern "js" fn WorkerOrWorkerAndParameters::from_worker(v : Worker) -> WorkerOrWorkerAndParameters =
  #| (v) => v

///|
extern "js" fn WorkerOrWorkerAndParameters::from_worker_and_parameters_ffi(v : JsValue) -> WorkerOrWorkerAndParameters =
  #| v => v

///|
pub fn WorkerOrWorkerAndParameters::from_worker_and_parameters(v : WorkerAndParameters) -> WorkerOrWorkerAndParameters { WorkerOrWorkerAndParameters::from_worker_and_parameters_ffi(v.to_js()) }

/// Check if this WorkerOrWorkerAndParameters is Worker
pub extern "js" fn WorkerOrWorkerAndParameters::is_worker(self : WorkerOrWorkerAndParameters) -> Bool =
  #| (self) => self instanceof Worker

/// Check if this WorkerOrWorkerAndParameters is WorkerAndParameters
pub extern "js" fn WorkerOrWorkerAndParameters::is_worker_and_parameters(self : WorkerOrWorkerAndParameters) -> Bool =
  #| (self) => typeof self === 'object' && self !== null

/// Try to get WorkerOrWorkerAndParameters as Worker
pub extern "js" fn WorkerOrWorkerAndParameters::as_worker(self : WorkerOrWorkerAndParameters) -> Worker? =
  #| (self) => (self instanceof Worker) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub fn WorkerOrWorkerAndParameters::as_worker_and_parameters(self : WorkerOrWorkerAndParameters) -> WorkerAndParameters? { if self.is_worker_and_parameters() { Some(WorkerAndParameters::from_js(self.to_js_value())) } else { None } }

/// Flatten Option[WorkerOrWorkerAndParameters] to Worker?
pub fn WorkerOrWorkerAndParameters::bind_as_worker(value : WorkerOrWorkerAndParameters?) -> Worker? {
  match value {
    Some(v) => v.as_worker()
    None => None
  }
}

/// Flatten Option[WorkerOrWorkerAndParameters] to WorkerAndParameters?
pub fn WorkerOrWorkerAndParameters::bind_as_worker_and_parameters(value : WorkerOrWorkerAndParameters?) -> WorkerAndParameters? {
  match value {
    Some(v) => v.as_worker_and_parameters()
    None => None
  }
}

///|
/// SFrameCipherSuite enum
pub(all) enum SFrameCipherSuite {
  AES128CTRHMACSHA25680
  AES128CTRHMACSHA25664
  AES128CTRHMACSHA25632
  AES128GCMSHA256128
  AES256GCMSHA512128
  AES256CTRHMACSHA51280
  AES256CTRHMACSHA51264
  AES256CTRHMACSHA51232
} derive(Eq, Debug)

pub extend SFrameCipherSuite with Eq::{equal, not_equal}
pub extend SFrameCipherSuite with @debug.Debug::{to_repr}

/// Convert to string value
pub fn SFrameCipherSuite::to_string(self : SFrameCipherSuite) -> String {
  match self {
    SFrameCipherSuite::AES128CTRHMACSHA25680 => "AES_128_CTR_HMAC_SHA256_80"
    SFrameCipherSuite::AES128CTRHMACSHA25664 => "AES_128_CTR_HMAC_SHA256_64"
    SFrameCipherSuite::AES128CTRHMACSHA25632 => "AES_128_CTR_HMAC_SHA256_32"
    SFrameCipherSuite::AES128GCMSHA256128 => "AES_128_GCM_SHA256_128"
    SFrameCipherSuite::AES256GCMSHA512128 => "AES_256_GCM_SHA512_128"
    SFrameCipherSuite::AES256CTRHMACSHA51280 => "AES_256_CTR_HMAC_SHA512_80"
    SFrameCipherSuite::AES256CTRHMACSHA51264 => "AES_256_CTR_HMAC_SHA512_64"
    SFrameCipherSuite::AES256CTRHMACSHA51232 => "AES_256_CTR_HMAC_SHA512_32"
  }
}

/// Parse from string value
pub fn SFrameCipherSuite::from_string(s : String) -> SFrameCipherSuite? {
  match s {
    "AES_128_CTR_HMAC_SHA256_80" => Some(SFrameCipherSuite::AES128CTRHMACSHA25680)
    "AES_128_CTR_HMAC_SHA256_64" => Some(SFrameCipherSuite::AES128CTRHMACSHA25664)
    "AES_128_CTR_HMAC_SHA256_32" => Some(SFrameCipherSuite::AES128CTRHMACSHA25632)
    "AES_128_GCM_SHA256_128" => Some(SFrameCipherSuite::AES128GCMSHA256128)
    "AES_256_GCM_SHA512_128" => Some(SFrameCipherSuite::AES256GCMSHA512128)
    "AES_256_CTR_HMAC_SHA512_80" => Some(SFrameCipherSuite::AES256CTRHMACSHA51280)
    "AES_256_CTR_HMAC_SHA512_64" => Some(SFrameCipherSuite::AES256CTRHMACSHA51264)
    "AES_256_CTR_HMAC_SHA512_32" => Some(SFrameCipherSuite::AES256CTRHMACSHA51232)
    _ => None
  }
}

///|
/// SFrameType enum
pub(all) enum SFrameType {
  PerFrame
  PerPacket
} derive(Eq, Debug)

pub extend SFrameType with Eq::{equal, not_equal}
pub extend SFrameType with @debug.Debug::{to_repr}

/// Convert to string value
pub fn SFrameType::to_string(self : SFrameType) -> String {
  match self {
    SFrameType::PerFrame => "per-frame"
    SFrameType::PerPacket => "per-packet"
  }
}

/// Parse from string value
pub fn SFrameType::from_string(s : String) -> SFrameType? {
  match s {
    "per-frame" => Some(SFrameType::PerFrame)
    "per-packet" => Some(SFrameType::PerPacket)
    _ => None
  }
}

///|
/// SFrameTransformErrorEventType enum
pub(all) enum SFrameTransformErrorEventType {
  Authentication
  KeyID
  Syntax
} derive(Eq, Debug)

pub extend SFrameTransformErrorEventType with Eq::{equal, not_equal}
pub extend SFrameTransformErrorEventType with @debug.Debug::{to_repr}

/// Convert to string value
pub fn SFrameTransformErrorEventType::to_string(self : SFrameTransformErrorEventType) -> String {
  match self {
    SFrameTransformErrorEventType::Authentication => "authentication"
    SFrameTransformErrorEventType::KeyID => "keyID"
    SFrameTransformErrorEventType::Syntax => "syntax"
  }
}

/// Parse from string value
pub fn SFrameTransformErrorEventType::from_string(s : String) -> SFrameTransformErrorEventType? {
  match s {
    "authentication" => Some(SFrameTransformErrorEventType::Authentication)
    "keyID" => Some(SFrameTransformErrorEventType::KeyID)
    "syntax" => Some(SFrameTransformErrorEventType::Syntax)
    _ => None
  }
}

///|
/// RTCRtpScriptTransformType enum
pub(all) enum RTCRtpScriptTransformType {
  Sframe
} derive(Eq, Debug)

pub extend RTCRtpScriptTransformType with Eq::{equal, not_equal}
pub extend RTCRtpScriptTransformType with @debug.Debug::{to_repr}

/// Convert to string value
pub fn RTCRtpScriptTransformType::to_string(self : RTCRtpScriptTransformType) -> String {
  match self {
    RTCRtpScriptTransformType::Sframe => "sframe"
  }
}

/// Parse from string value
pub fn RTCRtpScriptTransformType::from_string(s : String) -> RTCRtpScriptTransformType? {
  match s {
    "sframe" => Some(RTCRtpScriptTransformType::Sframe)
    _ => None
  }
}

///|
/// SFrameTransformOptions dictionary
pub(all) struct SFrameTransformOptions {
  cipherSuite : SFrameCipherSuite
}

/// Create a new SFrameTransformOptions
pub fn SFrameTransformOptions::new(cipherSuite~ : SFrameCipherSuite) -> SFrameTransformOptions {
  SFrameTransformOptions::{
    cipherSuite: cipherSuite,
  }
}

extern "js" fn SFrameTransformOptions::to_js_ffi(self : SFrameTransformOptions) -> JsValue =
  #| (self) => ({
  #|   cipherSuite: ['AES_128_CTR_HMAC_SHA256_80', 'AES_128_CTR_HMAC_SHA256_64', 'AES_128_CTR_HMAC_SHA256_32', 'AES_128_GCM_SHA256_128', 'AES_256_GCM_SHA512_128', 'AES_256_CTR_HMAC_SHA512_80', 'AES_256_CTR_HMAC_SHA512_64', 'AES_256_CTR_HMAC_SHA512_32'][self.cipherSuite]
  #| })

/// Convert to JsValue
pub fn SFrameTransformOptions::to_js(self : SFrameTransformOptions) -> JsValue {
  SFrameTransformOptions::to_js_ffi(self)
}

extern "js" fn SFrameTransformOptions::from_js_ffi(value : JsValue) -> SFrameTransformOptions =
  #| (v) => ({
  #|   cipherSuite: ['AES_128_CTR_HMAC_SHA256_80', 'AES_128_CTR_HMAC_SHA256_64', 'AES_128_CTR_HMAC_SHA256_32', 'AES_128_GCM_SHA256_128', 'AES_256_GCM_SHA512_128', 'AES_256_CTR_HMAC_SHA512_80', 'AES_256_CTR_HMAC_SHA512_64', 'AES_256_CTR_HMAC_SHA512_32'].indexOf(v.cipherSuite)
  #| })

/// Convert from JsValue
pub fn SFrameTransformOptions::from_js(value : JsValue) -> SFrameTransformOptions {
  SFrameTransformOptions::from_js_ffi(value)
}

///|
/// RTCRtpSFrameEncryptorOptions dictionary
pub(all) struct RTCRtpSFrameEncryptorOptions {
  cipherSuite : SFrameCipherSuite
  type_ : SFrameType?
}

/// Create a new RTCRtpSFrameEncryptorOptions
pub fn RTCRtpSFrameEncryptorOptions::new(cipherSuite~ : SFrameCipherSuite) -> RTCRtpSFrameEncryptorOptions {
  RTCRtpSFrameEncryptorOptions::{
    cipherSuite: cipherSuite,
    type_: None,
  }
}

extern "js" fn RTCRtpSFrameEncryptorOptions::to_js_ffi(self : RTCRtpSFrameEncryptorOptions) -> JsValue =
  #| (self) => ({
  #|   cipherSuite: ['AES_128_CTR_HMAC_SHA256_80', 'AES_128_CTR_HMAC_SHA256_64', 'AES_128_CTR_HMAC_SHA256_32', 'AES_128_GCM_SHA256_128', 'AES_256_GCM_SHA512_128', 'AES_256_CTR_HMAC_SHA512_80', 'AES_256_CTR_HMAC_SHA512_64', 'AES_256_CTR_HMAC_SHA512_32'][self.cipherSuite],
  #|   type: ((() => { const v = self.type_; if (v === undefined) return undefined; return ['per-frame', 'per-packet'][v]; })())
  #| })

/// Convert to JsValue
pub fn RTCRtpSFrameEncryptorOptions::to_js(self : RTCRtpSFrameEncryptorOptions) -> JsValue {
  RTCRtpSFrameEncryptorOptions::to_js_ffi(self)
}

extern "js" fn RTCRtpSFrameEncryptorOptions::from_js_ffi(value : JsValue) -> RTCRtpSFrameEncryptorOptions =
  #| (v) => ({
  #|   cipherSuite: ['AES_128_CTR_HMAC_SHA256_80', 'AES_128_CTR_HMAC_SHA256_64', 'AES_128_CTR_HMAC_SHA256_32', 'AES_128_GCM_SHA256_128', 'AES_256_GCM_SHA512_128', 'AES_256_CTR_HMAC_SHA512_80', 'AES_256_CTR_HMAC_SHA512_64', 'AES_256_CTR_HMAC_SHA512_32'].indexOf(v.cipherSuite),
  #|   type_: (v.type === undefined ? undefined : ['per-frame', 'per-packet'].indexOf(v.type))
  #| })

/// Convert from JsValue
pub fn RTCRtpSFrameEncryptorOptions::from_js(value : JsValue) -> RTCRtpSFrameEncryptorOptions {
  RTCRtpSFrameEncryptorOptions::from_js_ffi(value)
}

///|
/// SFrameTransformErrorEventInit dictionary
pub(all) struct SFrameTransformErrorEventInit {
  errorType : SFrameTransformErrorEventType
  frame : RTCEncodedVideoFrameOrRTCEncodedAudioFrame
  keyID : Nullable[CryptoKeyID]
}

/// Create a new SFrameTransformErrorEventInit
pub fn SFrameTransformErrorEventInit::new(errorType~ : SFrameTransformErrorEventType, frame~ : RTCEncodedVideoFrameOrRTCEncodedAudioFrame) -> SFrameTransformErrorEventInit {
  SFrameTransformErrorEventInit::{
    errorType: errorType,
    frame: frame,
    keyID: Nullable::Undefined,
  }
}

extern "js" fn SFrameTransformErrorEventInit::to_js_ffi(self : SFrameTransformErrorEventInit) -> JsValue =
  #| (self) => ({
  #|   errorType: ['authentication', 'keyID', 'syntax'][self.errorType],
  #|   frame: self.frame,
  #|   keyID: ((() => { const v = self.keyID; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

/// Convert to JsValue
pub fn SFrameTransformErrorEventInit::to_js(self : SFrameTransformErrorEventInit) -> JsValue {
  SFrameTransformErrorEventInit::to_js_ffi(self)
}

extern "js" fn SFrameTransformErrorEventInit::from_js_ffi(value : JsValue) -> SFrameTransformErrorEventInit =
  #| (v) => ({
  #|   errorType: ['authentication', 'keyID', 'syntax'].indexOf(v.errorType),
  #|   frame: v.frame,
  #|   keyID: (v.keyID === undefined ? { $tag: 0 } : v.keyID === null ? { $tag: 1 } : { $tag: 2, _0: v.keyID })
  #| })

/// Convert from JsValue
pub fn SFrameTransformErrorEventInit::from_js(value : JsValue) -> SFrameTransformErrorEventInit {
  SFrameTransformErrorEventInit::from_js_ffi(value)
}

///|
/// RTCEncodedFrameMetadata dictionary
pub(all) struct RTCEncodedFrameMetadata {
  synchronizationSource : Int?
  payloadType : Int?
  contributingSources : FixedArray[Int]?
  rtpTimestamp : Int?
  receiveTime : DOMHighResTimeStamp?
  captureTime : DOMHighResTimeStamp?
  senderCaptureTimeOffset : DOMHighResTimeStamp?
  mimeType : String?
}

/// Create a new RTCEncodedFrameMetadata with default values
pub fn RTCEncodedFrameMetadata::default() -> RTCEncodedFrameMetadata {
  RTCEncodedFrameMetadata::{
    synchronizationSource: None,
    payloadType: None,
    contributingSources: None,
    rtpTimestamp: None,
    receiveTime: None,
    captureTime: None,
    senderCaptureTimeOffset: None,
    mimeType: None,
  }
}

extern "js" fn RTCEncodedFrameMetadata::to_js_ffi(self : RTCEncodedFrameMetadata) -> JsValue =
  #| (self) => ({
  #|   synchronizationSource: self.synchronizationSource,
  #|   payloadType: self.payloadType,
  #|   contributingSources: self.contributingSources,
  #|   rtpTimestamp: self.rtpTimestamp,
  #|   receiveTime: ((() => { const v = self.receiveTime; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   captureTime: ((() => { const v = self.captureTime; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   senderCaptureTimeOffset: ((() => { const v = self.senderCaptureTimeOffset; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   mimeType: self.mimeType
  #| })

/// Convert to JsValue
pub fn RTCEncodedFrameMetadata::to_js(self : RTCEncodedFrameMetadata) -> JsValue {
  RTCEncodedFrameMetadata::to_js_ffi(self)
}

extern "js" fn RTCEncodedFrameMetadata::from_js_ffi(value : JsValue) -> RTCEncodedFrameMetadata =
  #| (v) => ({
  #|   synchronizationSource: v.synchronizationSource,
  #|   payloadType: v.payloadType,
  #|   contributingSources: v.contributingSources,
  #|   rtpTimestamp: v.rtpTimestamp,
  #|   receiveTime: (v.receiveTime === undefined ? { $tag: 0 } : { $tag: 1, _0: v.receiveTime }),
  #|   captureTime: (v.captureTime === undefined ? { $tag: 0 } : { $tag: 1, _0: v.captureTime }),
  #|   senderCaptureTimeOffset: (v.senderCaptureTimeOffset === undefined ? { $tag: 0 } : { $tag: 1, _0: v.senderCaptureTimeOffset }),
  #|   mimeType: v.mimeType
  #| })

/// Convert from JsValue
pub fn RTCEncodedFrameMetadata::from_js(value : JsValue) -> RTCEncodedFrameMetadata {
  RTCEncodedFrameMetadata::from_js_ffi(value)
}

///|
/// RTCEncodedVideoFrameMetadata dictionary
pub(all) struct RTCEncodedVideoFrameMetadata {
  synchronizationSource : Int?
  payloadType : Int?
  contributingSources : FixedArray[Int]?
  rtpTimestamp : Int?
  receiveTime : DOMHighResTimeStamp?
  captureTime : DOMHighResTimeStamp?
  senderCaptureTimeOffset : DOMHighResTimeStamp?
  mimeType : String?
  frameId : Int64?
  dependencies : FixedArray[Int64]?
  width : Int?
  height : Int?
  spatialIndex : Int?
  temporalIndex : Int?
  timestamp : Int64?
}

/// Create a new RTCEncodedVideoFrameMetadata with default values
pub fn RTCEncodedVideoFrameMetadata::default() -> RTCEncodedVideoFrameMetadata {
  RTCEncodedVideoFrameMetadata::{
    synchronizationSource: None,
    payloadType: None,
    contributingSources: None,
    rtpTimestamp: None,
    receiveTime: None,
    captureTime: None,
    senderCaptureTimeOffset: None,
    mimeType: None,
    frameId: None,
    dependencies: None,
    width: None,
    height: None,
    spatialIndex: None,
    temporalIndex: None,
    timestamp: None,
  }
}

extern "js" fn RTCEncodedVideoFrameMetadata::to_js_ffi(self : RTCEncodedVideoFrameMetadata) -> JsValue =
  #| (self) => ({
  #|   synchronizationSource: self.synchronizationSource,
  #|   payloadType: self.payloadType,
  #|   contributingSources: self.contributingSources,
  #|   rtpTimestamp: self.rtpTimestamp,
  #|   receiveTime: ((() => { const v = self.receiveTime; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   captureTime: ((() => { const v = self.captureTime; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   senderCaptureTimeOffset: ((() => { const v = self.senderCaptureTimeOffset; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   mimeType: self.mimeType,
  #|   frameId: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.frameId),
  #|   dependencies: self.dependencies,
  #|   width: self.width,
  #|   height: self.height,
  #|   spatialIndex: self.spatialIndex,
  #|   temporalIndex: self.temporalIndex,
  #|   timestamp: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asIntN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.timestamp)
  #| })

/// Convert to JsValue
pub fn RTCEncodedVideoFrameMetadata::to_js(self : RTCEncodedVideoFrameMetadata) -> JsValue {
  RTCEncodedVideoFrameMetadata::to_js_ffi(self)
}

extern "js" fn RTCEncodedVideoFrameMetadata::from_js_ffi(value : JsValue) -> RTCEncodedVideoFrameMetadata =
  #| (v) => ({
  #|   synchronizationSource: v.synchronizationSource,
  #|   payloadType: v.payloadType,
  #|   contributingSources: v.contributingSources,
  #|   rtpTimestamp: v.rtpTimestamp,
  #|   receiveTime: (v.receiveTime === undefined ? { $tag: 0 } : { $tag: 1, _0: v.receiveTime }),
  #|   captureTime: (v.captureTime === undefined ? { $tag: 0 } : { $tag: 1, _0: v.captureTime }),
  #|   senderCaptureTimeOffset: (v.senderCaptureTimeOffset === undefined ? { $tag: 0 } : { $tag: 1, _0: v.senderCaptureTimeOffset }),
  #|   mimeType: v.mimeType,
  #|   frameId: (v.frameId === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.frameId)),
  #|   dependencies: v.dependencies,
  #|   width: v.width,
  #|   height: v.height,
  #|   spatialIndex: v.spatialIndex,
  #|   temporalIndex: v.temporalIndex,
  #|   timestamp: (v.timestamp === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.timestamp))
  #| })

/// Convert from JsValue
pub fn RTCEncodedVideoFrameMetadata::from_js(value : JsValue) -> RTCEncodedVideoFrameMetadata {
  RTCEncodedVideoFrameMetadata::from_js_ffi(value)
}

///|
/// Catch dictionary conversion errors, including unsafe integer ranges.
pub fn RTCEncodedVideoFrameMetadata::to_js_checked(self : RTCEncodedVideoFrameMetadata) -> Result[JsValue, JsError] { try_dictionary_conversion(() => self.to_js()) }

///|
extern "js" fn try_dictionary_RTCEncodedVideoFrameMetadata(convert : () -> RTCEncodedVideoFrameMetadata) -> Result[RTCEncodedVideoFrameMetadata, JsError] =
  #| convert => { try { return { $tag: 1, _0: convert() }; } catch (error) { return { $tag: 0, _0: error }; } }

///|
/// Catch invalid host fields, including unsafe integer ranges.
pub fn RTCEncodedVideoFrameMetadata::from_js_checked(value : JsValue) -> Result[RTCEncodedVideoFrameMetadata, JsError] { try_dictionary_RTCEncodedVideoFrameMetadata(() => RTCEncodedVideoFrameMetadata::from_js(value)) }

///|
/// RTCEncodedVideoFrameOptions dictionary
pub(all) struct RTCEncodedVideoFrameOptions {
  metadata : RTCEncodedVideoFrameMetadata?
}

/// Create a new RTCEncodedVideoFrameOptions with default values
pub fn RTCEncodedVideoFrameOptions::default() -> RTCEncodedVideoFrameOptions {
  RTCEncodedVideoFrameOptions::{
    metadata: None,
  }
}

extern "js" fn RTCEncodedVideoFrameOptions::to_js_ffi(self : RTCEncodedVideoFrameOptions, convert_metadata : (RTCEncodedVideoFrameMetadata?) -> JsValue) -> JsValue =
  #| (self, convert_metadata) => ({
  #|   metadata: convert_metadata(self.metadata)
  #| })

/// Convert to JsValue
pub fn RTCEncodedVideoFrameOptions::to_js(self : RTCEncodedVideoFrameOptions) -> JsValue {
  RTCEncodedVideoFrameOptions::to_js_ffi(self, fn(value) { match value { Some(value) => value.to_js(); None => dictionary_undefined() } })
}

extern "js" fn RTCEncodedVideoFrameOptions::from_js_ffi(value : JsValue, convert_metadata : (JsValue) -> RTCEncodedVideoFrameMetadata?) -> RTCEncodedVideoFrameOptions =
  #| (v, convert_metadata) => ({
  #|   metadata: convert_metadata(v.metadata)
  #| })

/// Convert from JsValue
pub fn RTCEncodedVideoFrameOptions::from_js(value : JsValue) -> RTCEncodedVideoFrameOptions {
  RTCEncodedVideoFrameOptions::from_js_ffi(value, fn(value) { if value.is_undefined() { None } else { Some(RTCEncodedVideoFrameMetadata::from_js(value)) } })
}

///|
/// RTCEncodedAudioFrameMetadata dictionary
pub(all) struct RTCEncodedAudioFrameMetadata {
  synchronizationSource : Int?
  payloadType : Int?
  contributingSources : FixedArray[Int]?
  rtpTimestamp : Int?
  receiveTime : DOMHighResTimeStamp?
  captureTime : DOMHighResTimeStamp?
  senderCaptureTimeOffset : DOMHighResTimeStamp?
  mimeType : String?
  sequenceNumber : Int?
  audioLevel : Double?
}

/// Create a new RTCEncodedAudioFrameMetadata with default values
pub fn RTCEncodedAudioFrameMetadata::default() -> RTCEncodedAudioFrameMetadata {
  RTCEncodedAudioFrameMetadata::{
    synchronizationSource: None,
    payloadType: None,
    contributingSources: None,
    rtpTimestamp: None,
    receiveTime: None,
    captureTime: None,
    senderCaptureTimeOffset: None,
    mimeType: None,
    sequenceNumber: None,
    audioLevel: None,
  }
}

extern "js" fn RTCEncodedAudioFrameMetadata::to_js_ffi(self : RTCEncodedAudioFrameMetadata) -> JsValue =
  #| (self) => ({
  #|   synchronizationSource: self.synchronizationSource,
  #|   payloadType: self.payloadType,
  #|   contributingSources: self.contributingSources,
  #|   rtpTimestamp: self.rtpTimestamp,
  #|   receiveTime: ((() => { const v = self.receiveTime; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   captureTime: ((() => { const v = self.captureTime; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   senderCaptureTimeOffset: ((() => { const v = self.senderCaptureTimeOffset; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   mimeType: self.mimeType,
  #|   sequenceNumber: self.sequenceNumber,
  #|   audioLevel: ((() => { const v = self.audioLevel; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

/// Convert to JsValue
pub fn RTCEncodedAudioFrameMetadata::to_js(self : RTCEncodedAudioFrameMetadata) -> JsValue {
  RTCEncodedAudioFrameMetadata::to_js_ffi(self)
}

extern "js" fn RTCEncodedAudioFrameMetadata::from_js_ffi(value : JsValue) -> RTCEncodedAudioFrameMetadata =
  #| (v) => ({
  #|   synchronizationSource: v.synchronizationSource,
  #|   payloadType: v.payloadType,
  #|   contributingSources: v.contributingSources,
  #|   rtpTimestamp: v.rtpTimestamp,
  #|   receiveTime: (v.receiveTime === undefined ? { $tag: 0 } : { $tag: 1, _0: v.receiveTime }),
  #|   captureTime: (v.captureTime === undefined ? { $tag: 0 } : { $tag: 1, _0: v.captureTime }),
  #|   senderCaptureTimeOffset: (v.senderCaptureTimeOffset === undefined ? { $tag: 0 } : { $tag: 1, _0: v.senderCaptureTimeOffset }),
  #|   mimeType: v.mimeType,
  #|   sequenceNumber: v.sequenceNumber,
  #|   audioLevel: (v.audioLevel === undefined ? { $tag: 0 } : { $tag: 1, _0: v.audioLevel })
  #| })

/// Convert from JsValue
pub fn RTCEncodedAudioFrameMetadata::from_js(value : JsValue) -> RTCEncodedAudioFrameMetadata {
  RTCEncodedAudioFrameMetadata::from_js_ffi(value)
}

///|
/// RTCEncodedAudioFrameOptions dictionary
pub(all) struct RTCEncodedAudioFrameOptions {
  metadata : RTCEncodedAudioFrameMetadata?
}

/// Create a new RTCEncodedAudioFrameOptions with default values
pub fn RTCEncodedAudioFrameOptions::default() -> RTCEncodedAudioFrameOptions {
  RTCEncodedAudioFrameOptions::{
    metadata: None,
  }
}

extern "js" fn RTCEncodedAudioFrameOptions::to_js_ffi(self : RTCEncodedAudioFrameOptions, convert_metadata : (RTCEncodedAudioFrameMetadata?) -> JsValue) -> JsValue =
  #| (self, convert_metadata) => ({
  #|   metadata: convert_metadata(self.metadata)
  #| })

/// Convert to JsValue
pub fn RTCEncodedAudioFrameOptions::to_js(self : RTCEncodedAudioFrameOptions) -> JsValue {
  RTCEncodedAudioFrameOptions::to_js_ffi(self, fn(value) { match value { Some(value) => value.to_js(); None => dictionary_undefined() } })
}

extern "js" fn RTCEncodedAudioFrameOptions::from_js_ffi(value : JsValue, convert_metadata : (JsValue) -> RTCEncodedAudioFrameMetadata?) -> RTCEncodedAudioFrameOptions =
  #| (v, convert_metadata) => ({
  #|   metadata: convert_metadata(v.metadata)
  #| })

/// Convert from JsValue
pub fn RTCEncodedAudioFrameOptions::from_js(value : JsValue) -> RTCEncodedAudioFrameOptions {
  RTCEncodedAudioFrameOptions::from_js_ffi(value, fn(value) { if value.is_undefined() { None } else { Some(RTCEncodedAudioFrameMetadata::from_js(value)) } })
}

///|
/// WorkerAndParameters dictionary
pub(all) struct WorkerAndParameters {
  worker : Worker
  type_ : RTCRtpScriptTransformType?
}

/// Create a new WorkerAndParameters
pub fn WorkerAndParameters::new(worker~ : Worker) -> WorkerAndParameters {
  WorkerAndParameters::{
    worker: worker,
    type_: None,
  }
}

extern "js" fn WorkerAndParameters::to_js_ffi(self : WorkerAndParameters) -> JsValue =
  #| (self) => ({
  #|   worker: self.worker,
  #|   type: ((() => { const v = self.type_; if (v === undefined) return undefined; return ['sframe'][v]; })())
  #| })

/// Convert to JsValue
pub fn WorkerAndParameters::to_js(self : WorkerAndParameters) -> JsValue {
  WorkerAndParameters::to_js_ffi(self)
}

extern "js" fn WorkerAndParameters::from_js_ffi(value : JsValue) -> WorkerAndParameters =
  #| (v) => ({
  #|   worker: v.worker,
  #|   type_: (v.type === undefined ? undefined : ['sframe'].indexOf(v.type))
  #| })

/// Convert from JsValue
pub fn WorkerAndParameters::from_js(value : JsValue) -> WorkerAndParameters {
  WorkerAndParameters::from_js_ffi(value)
}

///|
/// RTCRtpSFrameEncryptor interface
pub type RTCRtpSFrameEncryptor

pub extern "js" fn RTCRtpSFrameEncryptor::to_js_value(self : RTCRtpSFrameEncryptor) -> JsValue =
  #| (self) => self

/// Cast JsValue to RTCRtpSFrameEncryptor (unchecked)
pub extern "js" fn RTCRtpSFrameEncryptor::from_js_value(v : JsValue) -> RTCRtpSFrameEncryptor =
  #| (v) => v

/// Safely cast JsValue to RTCRtpSFrameEncryptor (checked with instanceof)
pub extern "js" fn RTCRtpSFrameEncryptor::from_js_value_opt(v : JsValue) -> RTCRtpSFrameEncryptor? =
  #| (v) => (v instanceof RTCRtpSFrameEncryptor) ? { $tag: 1, _0: v } : { $tag: 0 }

/// Safely cast JsValue to RTCRtpSFrameEncryptor (checked with instanceof)
pub extern "js" fn JsValue::as_rtc_rtp_s_frame_encryptor(self : JsValue) -> RTCRtpSFrameEncryptor? =
  #| (self) => (self instanceof RTCRtpSFrameEncryptor) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Cast JsValue to RTCRtpSFrameEncryptor (unchecked)
pub extern "js" fn JsValue::to_rtc_rtp_s_frame_encryptor(self : JsValue) -> RTCRtpSFrameEncryptor =
  #| (self) => self

extern "js" fn RTCRtpSFrameEncryptor::new_ffi(options : JsValue) -> RTCRtpSFrameEncryptor =
  #| (options) => new RTCRtpSFrameEncryptor(options)

pub fn RTCRtpSFrameEncryptor::new(options : RTCRtpSFrameEncryptorOptions) -> RTCRtpSFrameEncryptor {
  RTCRtpSFrameEncryptor::new_ffi(options.to_js())
}

pub extern "js" fn RTCRtpSFrameEncryptor::set_encryption_key(self : RTCRtpSFrameEncryptor, key : CryptoKey, key_id : CryptoKeyID) -> Promise[Unit] =
  #| (self, key, key_id) => self.setEncryptionKey(key, key_id)

pub extern "js" fn RTCRtpSFrameEncryptor::set_encryption_key_with_small_crypto_key_id(self : RTCRtpSFrameEncryptor, key : CryptoKey, key_id : SmallCryptoKeyID) -> Promise[Unit] =
  #| (self, key, key_id) => self.setEncryptionKey(key, key_id)

///|
/// RTCRtpSFrameDecryptor interface
pub type RTCRtpSFrameDecryptor

pub extern "js" fn RTCRtpSFrameDecryptor::to_js_value(self : RTCRtpSFrameDecryptor) -> JsValue =
  #| (self) => self

/// Cast JsValue to RTCRtpSFrameDecryptor (unchecked)
pub extern "js" fn RTCRtpSFrameDecryptor::from_js_value(v : JsValue) -> RTCRtpSFrameDecryptor =
  #| (v) => v

/// Safely cast JsValue to RTCRtpSFrameDecryptor (checked with instanceof)
pub extern "js" fn RTCRtpSFrameDecryptor::from_js_value_opt(v : JsValue) -> RTCRtpSFrameDecryptor? =
  #| (v) => (v instanceof RTCRtpSFrameDecryptor) ? { $tag: 1, _0: v } : { $tag: 0 }

/// Safely cast JsValue to RTCRtpSFrameDecryptor (checked with instanceof)
pub extern "js" fn JsValue::as_rtc_rtp_s_frame_decryptor(self : JsValue) -> RTCRtpSFrameDecryptor? =
  #| (self) => (self instanceof RTCRtpSFrameDecryptor) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Cast JsValue to RTCRtpSFrameDecryptor (unchecked)
pub extern "js" fn JsValue::to_rtc_rtp_s_frame_decryptor(self : JsValue) -> RTCRtpSFrameDecryptor =
  #| (self) => self

pub extern "js" fn RTCRtpSFrameDecryptor::to_event_target(self : RTCRtpSFrameDecryptor) -> EventTarget =
  #| (self) => self

extern "js" fn RTCRtpSFrameDecryptor::new_ffi(options : JsValue) -> RTCRtpSFrameDecryptor =
  #| (options) => new RTCRtpSFrameDecryptor(options)

pub fn RTCRtpSFrameDecryptor::new(options : SFrameTransformOptions) -> RTCRtpSFrameDecryptor {
  RTCRtpSFrameDecryptor::new_ffi(options.to_js())
}

pub extern "js" fn RTCRtpSFrameDecryptor::add_decryption_key(self : RTCRtpSFrameDecryptor, key : CryptoKey, key_id : CryptoKeyID) -> Promise[Unit] =
  #| (self, key, key_id) => self.addDecryptionKey(key, key_id)

pub extern "js" fn RTCRtpSFrameDecryptor::remove_decryption_key(self : RTCRtpSFrameDecryptor, key_id : CryptoKeyID) -> Promise[Unit] =
  #| (self, key_id) => self.removeDecryptionKey(key_id)

pub extern "js" fn RTCRtpSFrameDecryptor::set_onerror(self : RTCRtpSFrameDecryptor, handler : (Event) -> Unit) -> Unit =
  #| (self, handler) => { self.onerror = (e) => handler(e) }

pub extern "js" fn RTCRtpSFrameDecryptor::clear_onerror(self : RTCRtpSFrameDecryptor) -> Unit =
  #| (self) => { self.onerror = null }

pub extern "js" fn RTCRtpSFrameDecryptor::add_decryption_key_with_small_crypto_key_id(self : RTCRtpSFrameDecryptor, key : CryptoKey, key_id : SmallCryptoKeyID) -> Promise[Unit] =
  #| (self, key, key_id) => self.addDecryptionKey(key, key_id)

pub extern "js" fn RTCRtpSFrameDecryptor::remove_decryption_key_with_small_crypto_key_id(self : RTCRtpSFrameDecryptor, key_id : SmallCryptoKeyID) -> Promise[Unit] =
  #| (self, key_id) => self.removeDecryptionKey(key_id)

///|
/// SFrameEncryptorStream interface
pub type SFrameEncryptorStream

pub extern "js" fn SFrameEncryptorStream::to_js_value(self : SFrameEncryptorStream) -> JsValue =
  #| (self) => self

/// Cast JsValue to SFrameEncryptorStream (unchecked)
pub extern "js" fn SFrameEncryptorStream::from_js_value(v : JsValue) -> SFrameEncryptorStream =
  #| (v) => v

/// Safely cast JsValue to SFrameEncryptorStream (checked with instanceof)
pub extern "js" fn SFrameEncryptorStream::from_js_value_opt(v : JsValue) -> SFrameEncryptorStream? =
  #| (v) => (v instanceof SFrameEncryptorStream) ? { $tag: 1, _0: v } : { $tag: 0 }

/// Safely cast JsValue to SFrameEncryptorStream (checked with instanceof)
pub extern "js" fn JsValue::as_s_frame_encryptor_stream(self : JsValue) -> SFrameEncryptorStream? =
  #| (self) => (self instanceof SFrameEncryptorStream) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Cast JsValue to SFrameEncryptorStream (unchecked)
pub extern "js" fn JsValue::to_s_frame_encryptor_stream(self : JsValue) -> SFrameEncryptorStream =
  #| (self) => self

extern "js" fn SFrameEncryptorStream::new_ffi(options : JsValue) -> SFrameEncryptorStream =
  #| (options) => new SFrameEncryptorStream(options)

pub fn SFrameEncryptorStream::new(options : SFrameTransformOptions) -> SFrameEncryptorStream {
  SFrameEncryptorStream::new_ffi(options.to_js())
}

pub extern "js" fn SFrameEncryptorStream::get_readable(self : SFrameEncryptorStream) -> ReadableStream =
  #| (self) => self.readable

pub extern "js" fn SFrameEncryptorStream::get_writable(self : SFrameEncryptorStream) -> WritableStream =
  #| (self) => self.writable

pub extern "js" fn SFrameEncryptorStream::set_encryption_key(self : SFrameEncryptorStream, key : CryptoKey, key_id : CryptoKeyID) -> Promise[Unit] =
  #| (self, key, key_id) => self.setEncryptionKey(key, key_id)

pub extern "js" fn SFrameEncryptorStream::set_encryption_key_with_small_crypto_key_id(self : SFrameEncryptorStream, key : CryptoKey, key_id : SmallCryptoKeyID) -> Promise[Unit] =
  #| (self, key, key_id) => self.setEncryptionKey(key, key_id)

///|
/// SFrameDecryptorStream interface
pub type SFrameDecryptorStream

pub extern "js" fn SFrameDecryptorStream::to_js_value(self : SFrameDecryptorStream) -> JsValue =
  #| (self) => self

/// Cast JsValue to SFrameDecryptorStream (unchecked)
pub extern "js" fn SFrameDecryptorStream::from_js_value(v : JsValue) -> SFrameDecryptorStream =
  #| (v) => v

/// Safely cast JsValue to SFrameDecryptorStream (checked with instanceof)
pub extern "js" fn SFrameDecryptorStream::from_js_value_opt(v : JsValue) -> SFrameDecryptorStream? =
  #| (v) => (v instanceof SFrameDecryptorStream) ? { $tag: 1, _0: v } : { $tag: 0 }

/// Safely cast JsValue to SFrameDecryptorStream (checked with instanceof)
pub extern "js" fn JsValue::as_s_frame_decryptor_stream(self : JsValue) -> SFrameDecryptorStream? =
  #| (self) => (self instanceof SFrameDecryptorStream) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Cast JsValue to SFrameDecryptorStream (unchecked)
pub extern "js" fn JsValue::to_s_frame_decryptor_stream(self : JsValue) -> SFrameDecryptorStream =
  #| (self) => self

pub extern "js" fn SFrameDecryptorStream::to_event_target(self : SFrameDecryptorStream) -> EventTarget =
  #| (self) => self

extern "js" fn SFrameDecryptorStream::new_ffi(options : JsValue) -> SFrameDecryptorStream =
  #| (options) => new SFrameDecryptorStream(options)

pub fn SFrameDecryptorStream::new(options : SFrameTransformOptions) -> SFrameDecryptorStream {
  SFrameDecryptorStream::new_ffi(options.to_js())
}

pub extern "js" fn SFrameDecryptorStream::get_readable(self : SFrameDecryptorStream) -> ReadableStream =
  #| (self) => self.readable

pub extern "js" fn SFrameDecryptorStream::get_writable(self : SFrameDecryptorStream) -> WritableStream =
  #| (self) => self.writable

pub extern "js" fn SFrameDecryptorStream::add_decryption_key(self : SFrameDecryptorStream, key : CryptoKey, key_id : CryptoKeyID) -> Promise[Unit] =
  #| (self, key, key_id) => self.addDecryptionKey(key, key_id)

pub extern "js" fn SFrameDecryptorStream::remove_decryption_key(self : SFrameDecryptorStream, key_id : CryptoKeyID) -> Promise[Unit] =
  #| (self, key_id) => self.removeDecryptionKey(key_id)

pub extern "js" fn SFrameDecryptorStream::set_onerror(self : SFrameDecryptorStream, handler : (Event) -> Unit) -> Unit =
  #| (self, handler) => { self.onerror = (e) => handler(e) }

pub extern "js" fn SFrameDecryptorStream::clear_onerror(self : SFrameDecryptorStream) -> Unit =
  #| (self) => { self.onerror = null }

pub extern "js" fn SFrameDecryptorStream::add_decryption_key_with_small_crypto_key_id(self : SFrameDecryptorStream, key : CryptoKey, key_id : SmallCryptoKeyID) -> Promise[Unit] =
  #| (self, key, key_id) => self.addDecryptionKey(key, key_id)

pub extern "js" fn SFrameDecryptorStream::remove_decryption_key_with_small_crypto_key_id(self : SFrameDecryptorStream, key_id : SmallCryptoKeyID) -> Promise[Unit] =
  #| (self, key_id) => self.removeDecryptionKey(key_id)

///|
/// SFrameTransformErrorEvent interface
pub type SFrameTransformErrorEvent

pub extern "js" fn SFrameTransformErrorEvent::to_js_value(self : SFrameTransformErrorEvent) -> JsValue =
  #| (self) => self

/// Cast JsValue to SFrameTransformErrorEvent (unchecked)
pub extern "js" fn SFrameTransformErrorEvent::from_js_value(v : JsValue) -> SFrameTransformErrorEvent =
  #| (v) => v

/// Safely cast JsValue to SFrameTransformErrorEvent (checked with instanceof)
pub extern "js" fn SFrameTransformErrorEvent::from_js_value_opt(v : JsValue) -> SFrameTransformErrorEvent? =
  #| (v) => (v instanceof SFrameTransformErrorEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

/// Safely cast JsValue to SFrameTransformErrorEvent (checked with instanceof)
pub extern "js" fn JsValue::as_s_frame_transform_error_event(self : JsValue) -> SFrameTransformErrorEvent? =
  #| (self) => (self instanceof SFrameTransformErrorEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Cast JsValue to SFrameTransformErrorEvent (unchecked)
pub extern "js" fn JsValue::to_s_frame_transform_error_event(self : JsValue) -> SFrameTransformErrorEvent =
  #| (self) => self

pub extern "js" fn SFrameTransformErrorEvent::to_event(self : SFrameTransformErrorEvent) -> Event =
  #| (self) => self

extern "js" fn SFrameTransformErrorEvent::new_ffi(type_ : String, event_init_dict : JsValue) -> SFrameTransformErrorEvent =
  #| (type_, event_init_dict) => new SFrameTransformErrorEvent(type_, event_init_dict)

pub fn SFrameTransformErrorEvent::new(type_ : String, event_init_dict : SFrameTransformErrorEventInit) -> SFrameTransformErrorEvent {
  SFrameTransformErrorEvent::new_ffi(type_, event_init_dict.to_js())
}

pub extern "js" fn SFrameTransformErrorEvent::get_error_type(self : SFrameTransformErrorEvent) -> SFrameTransformErrorEventType =
  #| (self) => ['authentication', 'keyID', 'syntax'].indexOf(self.errorType)

pub extern "js" fn SFrameTransformErrorEvent::get_key_id(self : SFrameTransformErrorEvent) -> CryptoKeyID? =
  #| (self) => (() => { const v = self.keyID; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

pub extern "js" fn SFrameTransformErrorEvent::get_frame(self : SFrameTransformErrorEvent) -> RTCEncodedVideoFrameOrRTCEncodedAudioFrame =
  #| (self) => self.frame

///|
/// RTCEncodedVideoFrame interface
pub type RTCEncodedVideoFrame

pub extern "js" fn RTCEncodedVideoFrame::to_js_value(self : RTCEncodedVideoFrame) -> JsValue =
  #| (self) => self

/// Cast JsValue to RTCEncodedVideoFrame (unchecked)
pub extern "js" fn RTCEncodedVideoFrame::from_js_value(v : JsValue) -> RTCEncodedVideoFrame =
  #| (v) => v

/// Safely cast JsValue to RTCEncodedVideoFrame (checked with instanceof)
pub extern "js" fn RTCEncodedVideoFrame::from_js_value_opt(v : JsValue) -> RTCEncodedVideoFrame? =
  #| (v) => (v instanceof RTCEncodedVideoFrame) ? { $tag: 1, _0: v } : { $tag: 0 }

/// Safely cast JsValue to RTCEncodedVideoFrame (checked with instanceof)
pub extern "js" fn JsValue::as_rtc_encoded_video_frame(self : JsValue) -> RTCEncodedVideoFrame? =
  #| (self) => (self instanceof RTCEncodedVideoFrame) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Cast JsValue to RTCEncodedVideoFrame (unchecked)
pub extern "js" fn JsValue::to_rtc_encoded_video_frame(self : JsValue) -> RTCEncodedVideoFrame =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum RTCEncodedVideoFrameConstructorError {
  TypeError(JsError)
  RangeError(JsError)
  OtherError(JsError)
} derive(Debug)

pub extend RTCEncodedVideoFrameConstructorError with @debug.Debug::{to_repr}

pub extern "js" fn RTCEncodedVideoFrame::new(original_frame : RTCEncodedVideoFrame) -> Result[RTCEncodedVideoFrame, RTCEncodedVideoFrameConstructorError] =
  #| (original_frame) => (() => { try { return { $tag: 1, _0: new RTCEncodedVideoFrame(original_frame) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'RangeError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }; } })()

extern "js" fn RTCEncodedVideoFrame::new_with_options_ffi(original_frame : RTCEncodedVideoFrame, options : JsValue) -> Result[RTCEncodedVideoFrame, RTCEncodedVideoFrameConstructorError] =
  #| (original_frame, options) => (() => { try { return { $tag: 1, _0: new RTCEncodedVideoFrame(original_frame, options) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'RangeError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }; } })()

pub fn RTCEncodedVideoFrame::new_with_options(original_frame : RTCEncodedVideoFrame, options : RTCEncodedVideoFrameOptions) -> Result[RTCEncodedVideoFrame, RTCEncodedVideoFrameConstructorError] {
  RTCEncodedVideoFrame::new_with_options_ffi(original_frame, options.to_js())
}

pub extern "js" fn RTCEncodedVideoFrame::get_type(self : RTCEncodedVideoFrame) -> EncodedVideoChunkType =
  #| (self) => ['key', 'delta'].indexOf(self.type)

pub extern "js" fn RTCEncodedVideoFrame::get_data(self : RTCEncodedVideoFrame) -> ArrayBuffer =
  #| (self) => self.data

pub extern "js" fn RTCEncodedVideoFrame::set_data(self : RTCEncodedVideoFrame, value : ArrayBuffer) -> Unit =
  #| (self, value) => { self.data = value }

pub extern "js" fn RTCEncodedVideoFrame::get_metadata(self : RTCEncodedVideoFrame) -> RTCEncodedVideoFrameMetadata =
  #| (self) => self.getMetadata()

///|
/// RTCEncodedAudioFrame interface
pub type RTCEncodedAudioFrame

pub extern "js" fn RTCEncodedAudioFrame::to_js_value(self : RTCEncodedAudioFrame) -> JsValue =
  #| (self) => self

/// Cast JsValue to RTCEncodedAudioFrame (unchecked)
pub extern "js" fn RTCEncodedAudioFrame::from_js_value(v : JsValue) -> RTCEncodedAudioFrame =
  #| (v) => v

/// Safely cast JsValue to RTCEncodedAudioFrame (checked with instanceof)
pub extern "js" fn RTCEncodedAudioFrame::from_js_value_opt(v : JsValue) -> RTCEncodedAudioFrame? =
  #| (v) => (v instanceof RTCEncodedAudioFrame) ? { $tag: 1, _0: v } : { $tag: 0 }

/// Safely cast JsValue to RTCEncodedAudioFrame (checked with instanceof)
pub extern "js" fn JsValue::as_rtc_encoded_audio_frame(self : JsValue) -> RTCEncodedAudioFrame? =
  #| (self) => (self instanceof RTCEncodedAudioFrame) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Cast JsValue to RTCEncodedAudioFrame (unchecked)
pub extern "js" fn JsValue::to_rtc_encoded_audio_frame(self : JsValue) -> RTCEncodedAudioFrame =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum RTCEncodedAudioFrameConstructorError {
  TypeError(JsError)
  RangeError(JsError)
  OtherError(JsError)
} derive(Debug)

pub extend RTCEncodedAudioFrameConstructorError with @debug.Debug::{to_repr}

pub extern "js" fn RTCEncodedAudioFrame::new(original_frame : RTCEncodedAudioFrame) -> Result[RTCEncodedAudioFrame, RTCEncodedAudioFrameConstructorError] =
  #| (original_frame) => (() => { try { return { $tag: 1, _0: new RTCEncodedAudioFrame(original_frame) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'RangeError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }; } })()

extern "js" fn RTCEncodedAudioFrame::new_with_options_ffi(original_frame : RTCEncodedAudioFrame, options : JsValue) -> Result[RTCEncodedAudioFrame, RTCEncodedAudioFrameConstructorError] =
  #| (original_frame, options) => (() => { try { return { $tag: 1, _0: new RTCEncodedAudioFrame(original_frame, options) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'RangeError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }; } })()

pub fn RTCEncodedAudioFrame::new_with_options(original_frame : RTCEncodedAudioFrame, options : RTCEncodedAudioFrameOptions) -> Result[RTCEncodedAudioFrame, RTCEncodedAudioFrameConstructorError] {
  RTCEncodedAudioFrame::new_with_options_ffi(original_frame, options.to_js())
}

pub extern "js" fn RTCEncodedAudioFrame::get_data(self : RTCEncodedAudioFrame) -> ArrayBuffer =
  #| (self) => self.data

pub extern "js" fn RTCEncodedAudioFrame::set_data(self : RTCEncodedAudioFrame, value : ArrayBuffer) -> Unit =
  #| (self, value) => { self.data = value }

pub extern "js" fn RTCEncodedAudioFrame::get_metadata(self : RTCEncodedAudioFrame) -> RTCEncodedAudioFrameMetadata =
  #| (self) => self.getMetadata()

///|
/// RTCRtpScriptTransform interface
pub type RTCRtpScriptTransform

pub extern "js" fn RTCRtpScriptTransform::to_js_value(self : RTCRtpScriptTransform) -> JsValue =
  #| (self) => self

/// Cast JsValue to RTCRtpScriptTransform (unchecked)
pub extern "js" fn RTCRtpScriptTransform::from_js_value(v : JsValue) -> RTCRtpScriptTransform =
  #| (v) => v

/// Safely cast JsValue to RTCRtpScriptTransform (checked with instanceof)
pub extern "js" fn RTCRtpScriptTransform::from_js_value_opt(v : JsValue) -> RTCRtpScriptTransform? =
  #| (v) => (v instanceof RTCRtpScriptTransform) ? { $tag: 1, _0: v } : { $tag: 0 }

/// Safely cast JsValue to RTCRtpScriptTransform (checked with instanceof)
pub extern "js" fn JsValue::as_rtc_rtp_script_transform(self : JsValue) -> RTCRtpScriptTransform? =
  #| (self) => (self instanceof RTCRtpScriptTransform) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Cast JsValue to RTCRtpScriptTransform (unchecked)
pub extern "js" fn JsValue::to_rtc_rtp_script_transform(self : JsValue) -> RTCRtpScriptTransform =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum RTCRtpScriptTransformConstructorError {
  DataCloneError(JsError)
  OtherError(JsError)
} derive(Debug)

pub extend RTCRtpScriptTransformConstructorError with @debug.Debug::{to_repr}

pub extern "js" fn RTCRtpScriptTransform::new(worker_or_worker_and_parameters : WorkerOrWorkerAndParameters) -> Result[RTCRtpScriptTransform, RTCRtpScriptTransformConstructorError] =
  #| (worker_or_worker_and_parameters) => (() => { try { return { $tag: 1, _0: new RTCRtpScriptTransform(worker_or_worker_and_parameters) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataCloneError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

pub extern "js" fn RTCRtpScriptTransform::new_with_transfer(worker_or_worker_and_parameters : WorkerOrWorkerAndParameters, options : JsValue, transfer : FixedArray[JsValue]) -> Result[RTCRtpScriptTransform, RTCRtpScriptTransformConstructorError] =
  #| (worker_or_worker_and_parameters, options, transfer) => (() => { try { return { $tag: 1, _0: new RTCRtpScriptTransform(worker_or_worker_and_parameters, options, transfer) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataCloneError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

pub extern "js" fn RTCRtpScriptTransform::new_with_worker(worker_or_worker_and_parameters : Worker, options : JsValue, transfer : FixedArray[JsValue]) -> Result[RTCRtpScriptTransform, RTCRtpScriptTransformConstructorError] =
  #| (worker_or_worker_and_parameters, options, transfer) => (() => { try { return { $tag: 1, _0: new RTCRtpScriptTransform(worker_or_worker_and_parameters, options, transfer) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataCloneError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

extern "js" fn RTCRtpScriptTransform::new_with_worker_and_parameters_ffi(worker_or_worker_and_parameters : JsValue, options : JsValue, transfer : FixedArray[JsValue]) -> Result[RTCRtpScriptTransform, RTCRtpScriptTransformConstructorError] =
  #| (worker_or_worker_and_parameters, options, transfer) => (() => { try { return { $tag: 1, _0: new RTCRtpScriptTransform(worker_or_worker_and_parameters, options, transfer) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataCloneError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

pub fn RTCRtpScriptTransform::new_with_worker_and_parameters(worker_or_worker_and_parameters : WorkerAndParameters, options : JsValue, transfer : FixedArray[JsValue]) -> Result[RTCRtpScriptTransform, RTCRtpScriptTransformConstructorError] {
  RTCRtpScriptTransform::new_with_worker_and_parameters_ffi(worker_or_worker_and_parameters.to_js(), options, transfer)
}

///|
/// RTCRtpScriptTransformer interface
pub type RTCRtpScriptTransformer

pub extern "js" fn RTCRtpScriptTransformer::to_js_value(self : RTCRtpScriptTransformer) -> JsValue =
  #| (self) => self

/// Cast JsValue to RTCRtpScriptTransformer (unchecked)
pub extern "js" fn RTCRtpScriptTransformer::from_js_value(v : JsValue) -> RTCRtpScriptTransformer =
  #| (v) => v

/// Safely cast JsValue to RTCRtpScriptTransformer (checked with instanceof)
pub extern "js" fn RTCRtpScriptTransformer::from_js_value_opt(v : JsValue) -> RTCRtpScriptTransformer? =
  #| (v) => (v instanceof RTCRtpScriptTransformer) ? { $tag: 1, _0: v } : { $tag: 0 }

/// Safely cast JsValue to RTCRtpScriptTransformer (checked with instanceof)
pub extern "js" fn JsValue::as_rtc_rtp_script_transformer(self : JsValue) -> RTCRtpScriptTransformer? =
  #| (self) => (self instanceof RTCRtpScriptTransformer) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Cast JsValue to RTCRtpScriptTransformer (unchecked)
pub extern "js" fn JsValue::to_rtc_rtp_script_transformer(self : JsValue) -> RTCRtpScriptTransformer =
  #| (self) => self

pub extern "js" fn RTCRtpScriptTransformer::to_event_target(self : RTCRtpScriptTransformer) -> EventTarget =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum RTCRtpScriptTransformerGenerateKeyFrameError {
  TypeError(JsError)
  NotFoundError(JsError)
  InvalidStateError(JsError)
  OtherError(JsError)
} derive(Debug)

pub extend RTCRtpScriptTransformerGenerateKeyFrameError with @debug.Debug::{to_repr}

///|
/// Error type for throwing methods
pub(all) enum RTCRtpScriptTransformerSendKeyFrameRequestError {
  InvalidStateError(JsError)
  OtherError(JsError)
} derive(Debug)

pub extend RTCRtpScriptTransformerSendKeyFrameRequestError with @debug.Debug::{to_repr}

pub extern "js" fn RTCRtpScriptTransformer::get_readable(self : RTCRtpScriptTransformer) -> ReadableStream =
  #| (self) => self.readable

pub extern "js" fn RTCRtpScriptTransformer::generate_key_frame(self : RTCRtpScriptTransformer) -> Promise[Result[Unit, RTCRtpScriptTransformerGenerateKeyFrameError]] =
  #| (self) => self.generateKeyFrame().then(r => ({ $tag: 1, _0: undefined })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'NotFoundError') return { $tag: 1, _0: e }; if (n === 'InvalidStateError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }))

pub extern "js" fn RTCRtpScriptTransformer::generate_key_frame_with_rid(self : RTCRtpScriptTransformer, rid : String) -> Promise[Result[Unit, RTCRtpScriptTransformerGenerateKeyFrameError]] =
  #| (self, rid) => self.generateKeyFrame(rid).then(r => ({ $tag: 1, _0: undefined })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'NotFoundError') return { $tag: 1, _0: e }; if (n === 'InvalidStateError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }))

pub extern "js" fn RTCRtpScriptTransformer::send_key_frame_request(self : RTCRtpScriptTransformer) -> Promise[Result[Unit, RTCRtpScriptTransformerSendKeyFrameRequestError]] =
  #| (self) => self.sendKeyFrameRequest().then(r => ({ $tag: 1, _0: undefined })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'InvalidStateError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }))

pub extern "js" fn RTCRtpScriptTransformer::get_writable(self : RTCRtpScriptTransformer) -> WritableStream =
  #| (self) => self.writable

pub extern "js" fn RTCRtpScriptTransformer::set_onkeyframerequest(self : RTCRtpScriptTransformer, handler : (Event) -> Unit) -> Unit =
  #| (self, handler) => { self.onkeyframerequest = (e) => handler(e) }

pub extern "js" fn RTCRtpScriptTransformer::clear_onkeyframerequest(self : RTCRtpScriptTransformer) -> Unit =
  #| (self) => { self.onkeyframerequest = null }

pub extern "js" fn RTCRtpScriptTransformer::get_options(self : RTCRtpScriptTransformer) -> JsValue =
  #| (self) => self.options

///|
/// RTCTransformEvent interface
pub type RTCTransformEvent

pub extern "js" fn RTCTransformEvent::to_js_value(self : RTCTransformEvent) -> JsValue =
  #| (self) => self

/// Cast JsValue to RTCTransformEvent (unchecked)
pub extern "js" fn RTCTransformEvent::from_js_value(v : JsValue) -> RTCTransformEvent =
  #| (v) => v

/// Safely cast JsValue to RTCTransformEvent (checked with instanceof)
pub extern "js" fn RTCTransformEvent::from_js_value_opt(v : JsValue) -> RTCTransformEvent? =
  #| (v) => (v instanceof RTCTransformEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

/// Safely cast JsValue to RTCTransformEvent (checked with instanceof)
pub extern "js" fn JsValue::as_rtc_transform_event(self : JsValue) -> RTCTransformEvent? =
  #| (self) => (self instanceof RTCTransformEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Cast JsValue to RTCTransformEvent (unchecked)
pub extern "js" fn JsValue::to_rtc_transform_event(self : JsValue) -> RTCTransformEvent =
  #| (self) => self

pub extern "js" fn RTCTransformEvent::to_event(self : RTCTransformEvent) -> Event =
  #| (self) => self

pub extern "js" fn RTCTransformEvent::get_transformer(self : RTCTransformEvent) -> RTCRtpScriptTransformer =
  #| (self) => self.transformer

///|
/// KeyFrameRequestEvent interface
pub type KeyFrameRequestEvent

pub extern "js" fn KeyFrameRequestEvent::to_js_value(self : KeyFrameRequestEvent) -> JsValue =
  #| (self) => self

/// Cast JsValue to KeyFrameRequestEvent (unchecked)
pub extern "js" fn KeyFrameRequestEvent::from_js_value(v : JsValue) -> KeyFrameRequestEvent =
  #| (v) => v

/// Safely cast JsValue to KeyFrameRequestEvent (checked with instanceof)
pub extern "js" fn KeyFrameRequestEvent::from_js_value_opt(v : JsValue) -> KeyFrameRequestEvent? =
  #| (v) => (v instanceof KeyFrameRequestEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

/// Safely cast JsValue to KeyFrameRequestEvent (checked with instanceof)
pub extern "js" fn JsValue::as_key_frame_request_event(self : JsValue) -> KeyFrameRequestEvent? =
  #| (self) => (self instanceof KeyFrameRequestEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Cast JsValue to KeyFrameRequestEvent (unchecked)
pub extern "js" fn JsValue::to_key_frame_request_event(self : JsValue) -> KeyFrameRequestEvent =
  #| (self) => self

pub extern "js" fn KeyFrameRequestEvent::to_event(self : KeyFrameRequestEvent) -> Event =
  #| (self) => self

pub extern "js" fn KeyFrameRequestEvent::new(type_ : String) -> KeyFrameRequestEvent =
  #| (type_) => new KeyFrameRequestEvent(type_)

pub extern "js" fn KeyFrameRequestEvent::new_with_rid(type_ : String, rid : String) -> KeyFrameRequestEvent =
  #| (type_, rid) => new KeyFrameRequestEvent(type_, rid)

pub extern "js" fn KeyFrameRequestEvent::get_rid(self : KeyFrameRequestEvent) -> String? =
  #| (self) => (self.rid) ?? undefined
