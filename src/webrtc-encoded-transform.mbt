// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webrtc-encoded-transform

///|
/// RTCRtpSenderTransform typedef
pub type RTCRtpSenderTransform

///|
pub extern "js" fn RTCRtpSenderTransform::to_js_value(
  self : RTCRtpSenderTransform,
) -> JsValue =
  #| (self) => self

///|
/// Create RTCRtpSenderTransform from SFrameSenderTransform
pub extern "js" fn RTCRtpSenderTransform::from_s_frame_sender_transform(
  v : SFrameSenderTransform,
) -> RTCRtpSenderTransform =
  #| (v) => v

///|
/// Create RTCRtpSenderTransform from RTCRtpScriptTransform
pub extern "js" fn RTCRtpSenderTransform::from_r_t_c_rtp_script_transform(
  v : RTCRtpScriptTransform,
) -> RTCRtpSenderTransform =
  #| (v) => v

///|
/// Check if this RTCRtpSenderTransform is SFrameSenderTransform
pub extern "js" fn RTCRtpSenderTransform::is_s_frame_sender_transform(
  self : RTCRtpSenderTransform,
) -> Bool =
  #| (self) => self instanceof SFrameSenderTransform

///|
/// Check if this RTCRtpSenderTransform is RTCRtpScriptTransform
pub extern "js" fn RTCRtpSenderTransform::is_r_t_c_rtp_script_transform(
  self : RTCRtpSenderTransform,
) -> Bool =
  #| (self) => self instanceof RTCRtpScriptTransform

///|
/// Try to get RTCRtpSenderTransform as SFrameSenderTransform
pub extern "js" fn RTCRtpSenderTransform::as_s_frame_sender_transform(
  self : RTCRtpSenderTransform,
) -> SFrameSenderTransform? =
  #| (self) => (self instanceof SFrameSenderTransform) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get RTCRtpSenderTransform as RTCRtpScriptTransform
pub extern "js" fn RTCRtpSenderTransform::as_r_t_c_rtp_script_transform(
  self : RTCRtpSenderTransform,
) -> RTCRtpScriptTransform? =
  #| (self) => (self instanceof RTCRtpScriptTransform) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// RTCRtpReceiverTransform typedef
pub type RTCRtpReceiverTransform

///|
pub extern "js" fn RTCRtpReceiverTransform::to_js_value(
  self : RTCRtpReceiverTransform,
) -> JsValue =
  #| (self) => self

///|
/// Create RTCRtpReceiverTransform from SFrameReceiverTransform
pub extern "js" fn RTCRtpReceiverTransform::from_s_frame_receiver_transform(
  v : SFrameReceiverTransform,
) -> RTCRtpReceiverTransform =
  #| (v) => v

///|
/// Create RTCRtpReceiverTransform from RTCRtpScriptTransform
pub extern "js" fn RTCRtpReceiverTransform::from_r_t_c_rtp_script_transform(
  v : RTCRtpScriptTransform,
) -> RTCRtpReceiverTransform =
  #| (v) => v

///|
/// Check if this RTCRtpReceiverTransform is SFrameReceiverTransform
pub extern "js" fn RTCRtpReceiverTransform::is_s_frame_receiver_transform(
  self : RTCRtpReceiverTransform,
) -> Bool =
  #| (self) => self instanceof SFrameReceiverTransform

///|
/// Check if this RTCRtpReceiverTransform is RTCRtpScriptTransform
pub extern "js" fn RTCRtpReceiverTransform::is_r_t_c_rtp_script_transform(
  self : RTCRtpReceiverTransform,
) -> Bool =
  #| (self) => self instanceof RTCRtpScriptTransform

///|
/// Try to get RTCRtpReceiverTransform as SFrameReceiverTransform
pub extern "js" fn RTCRtpReceiverTransform::as_s_frame_receiver_transform(
  self : RTCRtpReceiverTransform,
) -> SFrameReceiverTransform? =
  #| (self) => (self instanceof SFrameReceiverTransform) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get RTCRtpReceiverTransform as RTCRtpScriptTransform
pub extern "js" fn RTCRtpReceiverTransform::as_r_t_c_rtp_script_transform(
  self : RTCRtpReceiverTransform,
) -> RTCRtpScriptTransform? =
  #| (self) => (self instanceof RTCRtpScriptTransform) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// SmallCryptoKeyID typedef
pub type SmallCryptoKeyID = Int64

///|
/// CryptoKeyID typedef
pub type CryptoKeyID

///|
pub extern "js" fn CryptoKeyID::to_js_value(self : CryptoKeyID) -> JsValue =
  #| (self) => self

///|
/// Create CryptoKeyID from SmallCryptoKeyID
pub extern "js" fn CryptoKeyID::from_small_crypto_key_i_d(
  v : SmallCryptoKeyID,
) -> CryptoKeyID =
  #| (v) => v

///|
/// Check if this CryptoKeyID is SmallCryptoKeyID
pub extern "js" fn CryptoKeyID::is_small_crypto_key_i_d(
  self : CryptoKeyID,
) -> Bool =
  #| (self) => typeof self === 'number'

///|
/// Try to get CryptoKeyID as SmallCryptoKeyID
pub extern "js" fn CryptoKeyID::as_small_crypto_key_i_d(
  self : CryptoKeyID,
) -> SmallCryptoKeyID? =
  #| (self) => (typeof self === 'number') ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// SFrameCipherSuite enum
pub(all) enum SFrameCipherSuite {
  AES128CTRHMACSHA25680
  AES128CTRHMACSHA25664
  AES128CTRHMACSHA25632
  AES128GCMSHA256128
  AES256GCMSHA512128
}

///|
/// Convert to string value
pub fn SFrameCipherSuite::to_string(self : SFrameCipherSuite) -> String {
  match self {
    SFrameCipherSuite::AES128CTRHMACSHA25680 => "AES_128_CTR_HMAC_SHA256_80"
    SFrameCipherSuite::AES128CTRHMACSHA25664 => "AES_128_CTR_HMAC_SHA256_64"
    SFrameCipherSuite::AES128CTRHMACSHA25632 => "AES_128_CTR_HMAC_SHA256_32"
    SFrameCipherSuite::AES128GCMSHA256128 => "AES_128_GCM_SHA256_128"
    SFrameCipherSuite::AES256GCMSHA512128 => "AES_256_GCM_SHA512_128"
  }
}

///|
/// Parse from string value
pub fn SFrameCipherSuite::from_string(s : String) -> SFrameCipherSuite? {
  match s {
    "AES_128_CTR_HMAC_SHA256_80" =>
      Some(SFrameCipherSuite::AES128CTRHMACSHA25680)
    "AES_128_CTR_HMAC_SHA256_64" =>
      Some(SFrameCipherSuite::AES128CTRHMACSHA25664)
    "AES_128_CTR_HMAC_SHA256_32" =>
      Some(SFrameCipherSuite::AES128CTRHMACSHA25632)
    "AES_128_GCM_SHA256_128" => Some(SFrameCipherSuite::AES128GCMSHA256128)
    "AES_256_GCM_SHA512_128" => Some(SFrameCipherSuite::AES256GCMSHA512128)
    _ => None
  }
}

///|
/// SFrameTransformErrorEventType enum
pub(all) enum SFrameTransformErrorEventType {
  Authentication
  KeyID
  Syntax
}

///|
/// Convert to string value
pub fn SFrameTransformErrorEventType::to_string(
  self : SFrameTransformErrorEventType,
) -> String {
  match self {
    SFrameTransformErrorEventType::Authentication => "authentication"
    SFrameTransformErrorEventType::KeyID => "keyID"
    SFrameTransformErrorEventType::Syntax => "syntax"
  }
}

///|
/// Parse from string value
pub fn SFrameTransformErrorEventType::from_string(
  s : String,
) -> SFrameTransformErrorEventType? {
  match s {
    "authentication" => Some(SFrameTransformErrorEventType::Authentication)
    "keyID" => Some(SFrameTransformErrorEventType::KeyID)
    "syntax" => Some(SFrameTransformErrorEventType::Syntax)
    _ => None
  }
}

///|
/// SFrameTransformOptions dictionary
pub struct SFrameTransformOptions {
  cipherSuite : SFrameCipherSuite
}

///|
/// Create a new SFrameTransformOptions with default values
pub fn SFrameTransformOptions::default() -> SFrameTransformOptions {
  SFrameTransformOptions::{ cipherSuite: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn SFrameTransformOptions::to_js(
  self : SFrameTransformOptions,
) -> JsValue =
  #| (self) => ({
  #|   cipherSuite: ['AES_128_CTR_HMAC_SHA256_80', 'AES_128_CTR_HMAC_SHA256_64', 'AES_128_CTR_HMAC_SHA256_32', 'AES_128_GCM_SHA256_128', 'AES_256_GCM_SHA512_128'][self.cipherSuite]
  #| })

///|
/// SFrameTransformErrorEventInit dictionary
pub struct SFrameTransformErrorEventInit {
  errorType : SFrameTransformErrorEventType
  frame : JsValue
  keyID : Nullable[CryptoKeyID]
}

///|
/// Create a new SFrameTransformErrorEventInit with default values
pub fn SFrameTransformErrorEventInit::default() -> SFrameTransformErrorEventInit {
  SFrameTransformErrorEventInit::{
    errorType: panic(),
    frame: panic(),
    keyID: Nullable::Undefined,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn SFrameTransformErrorEventInit::to_js(
  self : SFrameTransformErrorEventInit,
) -> JsValue =
  #| (self) => ({
  #|   errorType: ['authentication', 'keyID', 'syntax'][self.errorType],
  #|   frame: self.frame,
  #|   keyID: ((() => { const v = self.keyID; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0.to_js_value(); })())
  #| })

///|
/// RTCEncodedFrameMetadata dictionary
pub struct RTCEncodedFrameMetadata {
  synchronizationSource : Int?
  payloadType : Int?
  contributingSources : Array[Int]?
  rtpTimestamp : Int?
  receiveTime : DOMHighResTimeStamp?
  captureTime : DOMHighResTimeStamp?
  senderCaptureTimeOffset : DOMHighResTimeStamp?
  mimeType : String?
}

///|
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

///|
/// Convert to JsValue
pub extern "js" fn RTCEncodedFrameMetadata::to_js(
  self : RTCEncodedFrameMetadata,
) -> JsValue =
  #| (self) => ({
  #|   synchronizationSource: self.synchronizationSource,
  #|   payloadType: self.payloadType,
  #|   contributingSources: self.contributingSources,
  #|   rtpTimestamp: self.rtpTimestamp,
  #|   receiveTime: self.receiveTime,
  #|   captureTime: self.captureTime,
  #|   senderCaptureTimeOffset: self.senderCaptureTimeOffset,
  #|   mimeType: self.mimeType
  #| })

///|
/// RTCEncodedVideoFrameMetadata dictionary
pub struct RTCEncodedVideoFrameMetadata {
  synchronizationSource : Int?
  payloadType : Int?
  contributingSources : Array[Int]?
  rtpTimestamp : Int?
  receiveTime : DOMHighResTimeStamp?
  captureTime : DOMHighResTimeStamp?
  senderCaptureTimeOffset : DOMHighResTimeStamp?
  mimeType : String?
  frameId : Int64?
  dependencies : Array[Int64]?
  width : Int?
  height : Int?
  spatialIndex : Int?
  temporalIndex : Int?
  timestamp : Int64?
}

///|
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

///|
/// Convert to JsValue
pub extern "js" fn RTCEncodedVideoFrameMetadata::to_js(
  self : RTCEncodedVideoFrameMetadata,
) -> JsValue =
  #| (self) => ({
  #|   synchronizationSource: self.synchronizationSource,
  #|   payloadType: self.payloadType,
  #|   contributingSources: self.contributingSources,
  #|   rtpTimestamp: self.rtpTimestamp,
  #|   receiveTime: self.receiveTime,
  #|   captureTime: self.captureTime,
  #|   senderCaptureTimeOffset: self.senderCaptureTimeOffset,
  #|   mimeType: self.mimeType,
  #|   frameId: self.frameId,
  #|   dependencies: self.dependencies,
  #|   width: self.width,
  #|   height: self.height,
  #|   spatialIndex: self.spatialIndex,
  #|   temporalIndex: self.temporalIndex,
  #|   timestamp: self.timestamp
  #| })

///|
/// RTCEncodedVideoFrameOptions dictionary
pub struct RTCEncodedVideoFrameOptions {
  metadata : RTCEncodedVideoFrameMetadata?
}

///|
/// Create a new RTCEncodedVideoFrameOptions with default values
pub fn RTCEncodedVideoFrameOptions::default() -> RTCEncodedVideoFrameOptions {
  RTCEncodedVideoFrameOptions::{ metadata: None }
}

///|
/// Convert to JsValue
pub extern "js" fn RTCEncodedVideoFrameOptions::to_js(
  self : RTCEncodedVideoFrameOptions,
) -> JsValue =
  #| (self) => ({
  #|   metadata: self.metadata
  #| })

///|
/// RTCEncodedAudioFrameMetadata dictionary
pub struct RTCEncodedAudioFrameMetadata {
  synchronizationSource : Int?
  payloadType : Int?
  contributingSources : Array[Int]?
  rtpTimestamp : Int?
  receiveTime : DOMHighResTimeStamp?
  captureTime : DOMHighResTimeStamp?
  senderCaptureTimeOffset : DOMHighResTimeStamp?
  mimeType : String?
  sequenceNumber : Int?
  audioLevel : Double?
}

///|
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

///|
/// Convert to JsValue
pub extern "js" fn RTCEncodedAudioFrameMetadata::to_js(
  self : RTCEncodedAudioFrameMetadata,
) -> JsValue =
  #| (self) => ({
  #|   synchronizationSource: self.synchronizationSource,
  #|   payloadType: self.payloadType,
  #|   contributingSources: self.contributingSources,
  #|   rtpTimestamp: self.rtpTimestamp,
  #|   receiveTime: self.receiveTime,
  #|   captureTime: self.captureTime,
  #|   senderCaptureTimeOffset: self.senderCaptureTimeOffset,
  #|   mimeType: self.mimeType,
  #|   sequenceNumber: self.sequenceNumber,
  #|   audioLevel: self.audioLevel
  #| })

///|
/// RTCEncodedAudioFrameOptions dictionary
pub struct RTCEncodedAudioFrameOptions {
  metadata : RTCEncodedAudioFrameMetadata?
}

///|
/// Create a new RTCEncodedAudioFrameOptions with default values
pub fn RTCEncodedAudioFrameOptions::default() -> RTCEncodedAudioFrameOptions {
  RTCEncodedAudioFrameOptions::{ metadata: None }
}

///|
/// Convert to JsValue
pub extern "js" fn RTCEncodedAudioFrameOptions::to_js(
  self : RTCEncodedAudioFrameOptions,
) -> JsValue =
  #| (self) => ({
  #|   metadata: self.metadata
  #| })

///|
/// SFrameSenderTransform interface
pub type SFrameSenderTransform

///|
pub extern "js" fn SFrameSenderTransform::to_js_value(
  self : SFrameSenderTransform,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SFrameSenderTransform (unchecked)
pub extern "js" fn SFrameSenderTransform::from_js_value(
  v : JsValue,
) -> SFrameSenderTransform =
  #| (v) => v

///|
/// Safely cast JsValue to SFrameSenderTransform (checked with instanceof)
pub extern "js" fn SFrameSenderTransform::from_js_value_opt(
  v : JsValue,
) -> SFrameSenderTransform? =
  #| (v) => (v instanceof SFrameSenderTransform) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SFrameSenderTransform (checked with instanceof)
pub extern "js" fn JsValue::as_s_frame_sender_transform(
  self : JsValue,
) -> SFrameSenderTransform? =
  #| (self) => (self instanceof SFrameSenderTransform) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SFrameSenderTransform (unchecked)
pub extern "js" fn JsValue::to_s_frame_sender_transform(
  self : JsValue,
) -> SFrameSenderTransform =
  #| (self) => self

///|
pub extern "js" fn SFrameSenderTransform::new(
  options : SFrameTransformOptions,
) -> SFrameSenderTransform =
  #| (options) => new SFrameSenderTransform(options)

///|
pub extern "js" fn SFrameSenderTransform::set_encryption_key(
  self : SFrameSenderTransform,
  key : CryptoKey,
  key_id : CryptoKeyID,
) -> Promise[Unit] =
  #| (self, key, key_id) => self.setEncryptionKey(key, key_id)

///|
pub extern "js" fn SFrameSenderTransform::get_onerror(
  self : SFrameSenderTransform,
) -> EventHandler =
  #| (self) => self.onerror

///|
pub extern "js" fn SFrameSenderTransform::set_onerror(
  self : SFrameSenderTransform,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onerror = value }

///|
/// SFrameReceiverTransform interface
pub type SFrameReceiverTransform

///|
pub extern "js" fn SFrameReceiverTransform::to_js_value(
  self : SFrameReceiverTransform,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SFrameReceiverTransform (unchecked)
pub extern "js" fn SFrameReceiverTransform::from_js_value(
  v : JsValue,
) -> SFrameReceiverTransform =
  #| (v) => v

///|
/// Safely cast JsValue to SFrameReceiverTransform (checked with instanceof)
pub extern "js" fn SFrameReceiverTransform::from_js_value_opt(
  v : JsValue,
) -> SFrameReceiverTransform? =
  #| (v) => (v instanceof SFrameReceiverTransform) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SFrameReceiverTransform (checked with instanceof)
pub extern "js" fn JsValue::as_s_frame_receiver_transform(
  self : JsValue,
) -> SFrameReceiverTransform? =
  #| (self) => (self instanceof SFrameReceiverTransform) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SFrameReceiverTransform (unchecked)
pub extern "js" fn JsValue::to_s_frame_receiver_transform(
  self : JsValue,
) -> SFrameReceiverTransform =
  #| (self) => self

///|
pub extern "js" fn SFrameReceiverTransform::to_event_target(
  self : SFrameReceiverTransform,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SFrameReceiverTransform::new(
  options : SFrameTransformOptions,
) -> SFrameReceiverTransform =
  #| (options) => new SFrameReceiverTransform(options)

///|
pub extern "js" fn SFrameReceiverTransform::add_decryption_key(
  self : SFrameReceiverTransform,
  key : CryptoKey,
  key_id : CryptoKeyID,
) -> Promise[Unit] =
  #| (self, key, key_id) => self.addDecryptionKey(key, key_id)

///|
pub extern "js" fn SFrameReceiverTransform::remove_decryption_key(
  self : SFrameReceiverTransform,
  key_id : CryptoKeyID,
) -> Promise[Unit] =
  #| (self, key_id) => self.removeDecryptionKey(key_id)

///|
pub extern "js" fn SFrameReceiverTransform::get_onerror(
  self : SFrameReceiverTransform,
) -> EventHandler =
  #| (self) => self.onerror

///|
pub extern "js" fn SFrameReceiverTransform::set_onerror(
  self : SFrameReceiverTransform,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onerror = value }

///|
/// SFrameEncrypterStream interface
pub type SFrameEncrypterStream

///|
pub extern "js" fn SFrameEncrypterStream::to_js_value(
  self : SFrameEncrypterStream,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SFrameEncrypterStream (unchecked)
pub extern "js" fn SFrameEncrypterStream::from_js_value(
  v : JsValue,
) -> SFrameEncrypterStream =
  #| (v) => v

///|
/// Safely cast JsValue to SFrameEncrypterStream (checked with instanceof)
pub extern "js" fn SFrameEncrypterStream::from_js_value_opt(
  v : JsValue,
) -> SFrameEncrypterStream? =
  #| (v) => (v instanceof SFrameEncrypterStream) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SFrameEncrypterStream (checked with instanceof)
pub extern "js" fn JsValue::as_s_frame_encrypter_stream(
  self : JsValue,
) -> SFrameEncrypterStream? =
  #| (self) => (self instanceof SFrameEncrypterStream) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SFrameEncrypterStream (unchecked)
pub extern "js" fn JsValue::to_s_frame_encrypter_stream(
  self : JsValue,
) -> SFrameEncrypterStream =
  #| (self) => self

///|
pub extern "js" fn SFrameEncrypterStream::to_event_target(
  self : SFrameEncrypterStream,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SFrameEncrypterStream::new(
  options : SFrameTransformOptions,
) -> SFrameEncrypterStream =
  #| (options) => new SFrameEncrypterStream(options)

///|
pub extern "js" fn SFrameEncrypterStream::get_readable(
  self : SFrameEncrypterStream,
) -> ReadableStream =
  #| (self) => self.readable

///|
pub extern "js" fn SFrameEncrypterStream::get_writable(
  self : SFrameEncrypterStream,
) -> WritableStream =
  #| (self) => self.writable

///|
pub extern "js" fn SFrameEncrypterStream::set_encryption_key(
  self : SFrameEncrypterStream,
  key : CryptoKey,
  key_id : CryptoKeyID,
) -> Promise[Unit] =
  #| (self, key, key_id) => self.setEncryptionKey(key, key_id)

///|
pub extern "js" fn SFrameEncrypterStream::get_onerror(
  self : SFrameEncrypterStream,
) -> EventHandler =
  #| (self) => self.onerror

///|
pub extern "js" fn SFrameEncrypterStream::set_onerror(
  self : SFrameEncrypterStream,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onerror = value }

///|
/// SFrameDecrypterStream interface
pub type SFrameDecrypterStream

///|
pub extern "js" fn SFrameDecrypterStream::to_js_value(
  self : SFrameDecrypterStream,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SFrameDecrypterStream (unchecked)
pub extern "js" fn SFrameDecrypterStream::from_js_value(
  v : JsValue,
) -> SFrameDecrypterStream =
  #| (v) => v

///|
/// Safely cast JsValue to SFrameDecrypterStream (checked with instanceof)
pub extern "js" fn SFrameDecrypterStream::from_js_value_opt(
  v : JsValue,
) -> SFrameDecrypterStream? =
  #| (v) => (v instanceof SFrameDecrypterStream) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SFrameDecrypterStream (checked with instanceof)
pub extern "js" fn JsValue::as_s_frame_decrypter_stream(
  self : JsValue,
) -> SFrameDecrypterStream? =
  #| (self) => (self instanceof SFrameDecrypterStream) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SFrameDecrypterStream (unchecked)
pub extern "js" fn JsValue::to_s_frame_decrypter_stream(
  self : JsValue,
) -> SFrameDecrypterStream =
  #| (self) => self

///|
pub extern "js" fn SFrameDecrypterStream::to_event_target(
  self : SFrameDecrypterStream,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SFrameDecrypterStream::new(
  options : SFrameTransformOptions,
) -> SFrameDecrypterStream =
  #| (options) => new SFrameDecrypterStream(options)

///|
pub extern "js" fn SFrameDecrypterStream::get_readable(
  self : SFrameDecrypterStream,
) -> ReadableStream =
  #| (self) => self.readable

///|
pub extern "js" fn SFrameDecrypterStream::get_writable(
  self : SFrameDecrypterStream,
) -> WritableStream =
  #| (self) => self.writable

///|
pub extern "js" fn SFrameDecrypterStream::add_decryption_key(
  self : SFrameDecrypterStream,
  key : CryptoKey,
  key_id : CryptoKeyID,
) -> Promise[Unit] =
  #| (self, key, key_id) => self.addDecryptionKey(key, key_id)

///|
pub extern "js" fn SFrameDecrypterStream::remove_decryption_key(
  self : SFrameDecrypterStream,
  key_id : CryptoKeyID,
) -> Promise[Unit] =
  #| (self, key_id) => self.removeDecryptionKey(key_id)

///|
pub extern "js" fn SFrameDecrypterStream::get_onerror(
  self : SFrameDecrypterStream,
) -> EventHandler =
  #| (self) => self.onerror

///|
pub extern "js" fn SFrameDecrypterStream::set_onerror(
  self : SFrameDecrypterStream,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onerror = value }

///|
/// SFrameTransformErrorEvent interface
pub type SFrameTransformErrorEvent

///|
pub extern "js" fn SFrameTransformErrorEvent::to_js_value(
  self : SFrameTransformErrorEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SFrameTransformErrorEvent (unchecked)
pub extern "js" fn SFrameTransformErrorEvent::from_js_value(
  v : JsValue,
) -> SFrameTransformErrorEvent =
  #| (v) => v

///|
/// Safely cast JsValue to SFrameTransformErrorEvent (checked with instanceof)
pub extern "js" fn SFrameTransformErrorEvent::from_js_value_opt(
  v : JsValue,
) -> SFrameTransformErrorEvent? =
  #| (v) => (v instanceof SFrameTransformErrorEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SFrameTransformErrorEvent (checked with instanceof)
pub extern "js" fn JsValue::as_s_frame_transform_error_event(
  self : JsValue,
) -> SFrameTransformErrorEvent? =
  #| (self) => (self instanceof SFrameTransformErrorEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SFrameTransformErrorEvent (unchecked)
pub extern "js" fn JsValue::to_s_frame_transform_error_event(
  self : JsValue,
) -> SFrameTransformErrorEvent =
  #| (self) => self

///|
pub extern "js" fn SFrameTransformErrorEvent::to_event(
  self : SFrameTransformErrorEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn SFrameTransformErrorEvent::new(
  type_ : String,
  event_init_dict : SFrameTransformErrorEventInit,
) -> SFrameTransformErrorEvent =
  #| (type_, event_init_dict) => new SFrameTransformErrorEvent(type_, event_init_dict)

///|
pub extern "js" fn SFrameTransformErrorEvent::get_error_type(
  self : SFrameTransformErrorEvent,
) -> SFrameTransformErrorEventType =
  #| (self) => self.errorType

///|
pub extern "js" fn SFrameTransformErrorEvent::get_key_id(
  self : SFrameTransformErrorEvent,
) -> CryptoKeyID? =
  #| (self) => { const v = self.keyID; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn SFrameTransformErrorEvent::get_frame(
  self : SFrameTransformErrorEvent,
) -> JsValue =
  #| (self) => self.frame

///|
/// RTCEncodedVideoFrame interface
pub type RTCEncodedVideoFrame

///|
pub extern "js" fn RTCEncodedVideoFrame::to_js_value(
  self : RTCEncodedVideoFrame,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to RTCEncodedVideoFrame (unchecked)
pub extern "js" fn RTCEncodedVideoFrame::from_js_value(
  v : JsValue,
) -> RTCEncodedVideoFrame =
  #| (v) => v

///|
/// Safely cast JsValue to RTCEncodedVideoFrame (checked with instanceof)
pub extern "js" fn RTCEncodedVideoFrame::from_js_value_opt(
  v : JsValue,
) -> RTCEncodedVideoFrame? =
  #| (v) => (v instanceof RTCEncodedVideoFrame) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to RTCEncodedVideoFrame (checked with instanceof)
pub extern "js" fn JsValue::as_rtc_encoded_video_frame(
  self : JsValue,
) -> RTCEncodedVideoFrame? =
  #| (self) => (self instanceof RTCEncodedVideoFrame) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to RTCEncodedVideoFrame (unchecked)
pub extern "js" fn JsValue::to_rtc_encoded_video_frame(
  self : JsValue,
) -> RTCEncodedVideoFrame =
  #| (self) => self

///|
pub extern "js" fn RTCEncodedVideoFrame::new(
  original_frame : RTCEncodedVideoFrame,
  options : RTCEncodedVideoFrameOptions,
) -> RTCEncodedVideoFrame =
  #| (original_frame, options) => new RTCEncodedVideoFrame(original_frame, options)

///|
pub extern "js" fn RTCEncodedVideoFrame::get_type(
  self : RTCEncodedVideoFrame,
) -> EncodedVideoChunkType =
  #| (self) => self.type

///|
pub extern "js" fn RTCEncodedVideoFrame::get_data(
  self : RTCEncodedVideoFrame,
) -> ArrayBuffer =
  #| (self) => self.data

///|
pub extern "js" fn RTCEncodedVideoFrame::set_data(
  self : RTCEncodedVideoFrame,
  value : ArrayBuffer,
) -> Unit =
  #| (self, value) => { self.data = value }

///|
pub extern "js" fn RTCEncodedVideoFrame::get_metadata(
  self : RTCEncodedVideoFrame,
) -> RTCEncodedVideoFrameMetadata =
  #| (self) => self.getMetadata()

///|
/// RTCEncodedAudioFrame interface
pub type RTCEncodedAudioFrame

///|
pub extern "js" fn RTCEncodedAudioFrame::to_js_value(
  self : RTCEncodedAudioFrame,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to RTCEncodedAudioFrame (unchecked)
pub extern "js" fn RTCEncodedAudioFrame::from_js_value(
  v : JsValue,
) -> RTCEncodedAudioFrame =
  #| (v) => v

///|
/// Safely cast JsValue to RTCEncodedAudioFrame (checked with instanceof)
pub extern "js" fn RTCEncodedAudioFrame::from_js_value_opt(
  v : JsValue,
) -> RTCEncodedAudioFrame? =
  #| (v) => (v instanceof RTCEncodedAudioFrame) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to RTCEncodedAudioFrame (checked with instanceof)
pub extern "js" fn JsValue::as_rtc_encoded_audio_frame(
  self : JsValue,
) -> RTCEncodedAudioFrame? =
  #| (self) => (self instanceof RTCEncodedAudioFrame) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to RTCEncodedAudioFrame (unchecked)
pub extern "js" fn JsValue::to_rtc_encoded_audio_frame(
  self : JsValue,
) -> RTCEncodedAudioFrame =
  #| (self) => self

///|
pub extern "js" fn RTCEncodedAudioFrame::new(
  original_frame : RTCEncodedAudioFrame,
  options : RTCEncodedAudioFrameOptions,
) -> RTCEncodedAudioFrame =
  #| (original_frame, options) => new RTCEncodedAudioFrame(original_frame, options)

///|
pub extern "js" fn RTCEncodedAudioFrame::get_data(
  self : RTCEncodedAudioFrame,
) -> ArrayBuffer =
  #| (self) => self.data

///|
pub extern "js" fn RTCEncodedAudioFrame::set_data(
  self : RTCEncodedAudioFrame,
  value : ArrayBuffer,
) -> Unit =
  #| (self, value) => { self.data = value }

///|
pub extern "js" fn RTCEncodedAudioFrame::get_metadata(
  self : RTCEncodedAudioFrame,
) -> RTCEncodedAudioFrameMetadata =
  #| (self) => self.getMetadata()

///|
/// RTCRtpScriptTransform interface
pub type RTCRtpScriptTransform

///|
pub extern "js" fn RTCRtpScriptTransform::to_js_value(
  self : RTCRtpScriptTransform,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to RTCRtpScriptTransform (unchecked)
pub extern "js" fn RTCRtpScriptTransform::from_js_value(
  v : JsValue,
) -> RTCRtpScriptTransform =
  #| (v) => v

///|
/// Safely cast JsValue to RTCRtpScriptTransform (checked with instanceof)
pub extern "js" fn RTCRtpScriptTransform::from_js_value_opt(
  v : JsValue,
) -> RTCRtpScriptTransform? =
  #| (v) => (v instanceof RTCRtpScriptTransform) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to RTCRtpScriptTransform (checked with instanceof)
pub extern "js" fn JsValue::as_rtc_rtp_script_transform(
  self : JsValue,
) -> RTCRtpScriptTransform? =
  #| (self) => (self instanceof RTCRtpScriptTransform) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to RTCRtpScriptTransform (unchecked)
pub extern "js" fn JsValue::to_rtc_rtp_script_transform(
  self : JsValue,
) -> RTCRtpScriptTransform =
  #| (self) => self

///|
pub extern "js" fn RTCRtpScriptTransform::new(
  worker : Worker,
  options : JsValue,
  transfer : Array[JsValue],
) -> RTCRtpScriptTransform =
  #| (worker, options, transfer) => new RTCRtpScriptTransform(worker, options, transfer)

///|
/// RTCRtpScriptTransformer interface
pub type RTCRtpScriptTransformer

///|
pub extern "js" fn RTCRtpScriptTransformer::to_js_value(
  self : RTCRtpScriptTransformer,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to RTCRtpScriptTransformer (unchecked)
pub extern "js" fn RTCRtpScriptTransformer::from_js_value(
  v : JsValue,
) -> RTCRtpScriptTransformer =
  #| (v) => v

///|
/// Safely cast JsValue to RTCRtpScriptTransformer (checked with instanceof)
pub extern "js" fn RTCRtpScriptTransformer::from_js_value_opt(
  v : JsValue,
) -> RTCRtpScriptTransformer? =
  #| (v) => (v instanceof RTCRtpScriptTransformer) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to RTCRtpScriptTransformer (checked with instanceof)
pub extern "js" fn JsValue::as_rtc_rtp_script_transformer(
  self : JsValue,
) -> RTCRtpScriptTransformer? =
  #| (self) => (self instanceof RTCRtpScriptTransformer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to RTCRtpScriptTransformer (unchecked)
pub extern "js" fn JsValue::to_rtc_rtp_script_transformer(
  self : JsValue,
) -> RTCRtpScriptTransformer =
  #| (self) => self

///|
pub extern "js" fn RTCRtpScriptTransformer::to_event_target(
  self : RTCRtpScriptTransformer,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn RTCRtpScriptTransformer::get_readable(
  self : RTCRtpScriptTransformer,
) -> ReadableStream =
  #| (self) => self.readable

///|
pub extern "js" fn RTCRtpScriptTransformer::generate_key_frame(
  self : RTCRtpScriptTransformer,
) -> Promise[Unit] =
  #| (self) => self.generateKeyFrame()

///|
pub extern "js" fn RTCRtpScriptTransformer::generate_key_frame_with_rid(
  self : RTCRtpScriptTransformer,
  rid : String,
) -> Promise[Unit] =
  #| (self, rid) => self.generateKeyFrame(rid)

///|
pub extern "js" fn RTCRtpScriptTransformer::send_key_frame_request(
  self : RTCRtpScriptTransformer,
) -> Promise[Unit] =
  #| (self) => self.sendKeyFrameRequest()

///|
pub extern "js" fn RTCRtpScriptTransformer::get_writable(
  self : RTCRtpScriptTransformer,
) -> WritableStream =
  #| (self) => self.writable

///|
pub extern "js" fn RTCRtpScriptTransformer::get_onkeyframerequest(
  self : RTCRtpScriptTransformer,
) -> EventHandler =
  #| (self) => self.onkeyframerequest

///|
pub extern "js" fn RTCRtpScriptTransformer::set_onkeyframerequest(
  self : RTCRtpScriptTransformer,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onkeyframerequest = value }

///|
pub extern "js" fn RTCRtpScriptTransformer::get_options(
  self : RTCRtpScriptTransformer,
) -> JsValue =
  #| (self) => self.options

///|
/// RTCTransformEvent interface
pub type RTCTransformEvent

///|
pub extern "js" fn RTCTransformEvent::to_js_value(
  self : RTCTransformEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to RTCTransformEvent (unchecked)
pub extern "js" fn RTCTransformEvent::from_js_value(
  v : JsValue,
) -> RTCTransformEvent =
  #| (v) => v

///|
/// Safely cast JsValue to RTCTransformEvent (checked with instanceof)
pub extern "js" fn RTCTransformEvent::from_js_value_opt(
  v : JsValue,
) -> RTCTransformEvent? =
  #| (v) => (v instanceof RTCTransformEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to RTCTransformEvent (checked with instanceof)
pub extern "js" fn JsValue::as_rtc_transform_event(
  self : JsValue,
) -> RTCTransformEvent? =
  #| (self) => (self instanceof RTCTransformEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to RTCTransformEvent (unchecked)
pub extern "js" fn JsValue::to_rtc_transform_event(
  self : JsValue,
) -> RTCTransformEvent =
  #| (self) => self

///|
pub extern "js" fn RTCTransformEvent::to_event(
  self : RTCTransformEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn RTCTransformEvent::get_transformer(
  self : RTCTransformEvent,
) -> RTCRtpScriptTransformer =
  #| (self) => self.transformer

///|
/// KeyFrameRequestEvent interface
pub type KeyFrameRequestEvent

///|
pub extern "js" fn KeyFrameRequestEvent::to_js_value(
  self : KeyFrameRequestEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to KeyFrameRequestEvent (unchecked)
pub extern "js" fn KeyFrameRequestEvent::from_js_value(
  v : JsValue,
) -> KeyFrameRequestEvent =
  #| (v) => v

///|
/// Safely cast JsValue to KeyFrameRequestEvent (checked with instanceof)
pub extern "js" fn KeyFrameRequestEvent::from_js_value_opt(
  v : JsValue,
) -> KeyFrameRequestEvent? =
  #| (v) => (v instanceof KeyFrameRequestEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to KeyFrameRequestEvent (checked with instanceof)
pub extern "js" fn JsValue::as_key_frame_request_event(
  self : JsValue,
) -> KeyFrameRequestEvent? =
  #| (self) => (self instanceof KeyFrameRequestEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to KeyFrameRequestEvent (unchecked)
pub extern "js" fn JsValue::to_key_frame_request_event(
  self : JsValue,
) -> KeyFrameRequestEvent =
  #| (self) => self

///|
pub extern "js" fn KeyFrameRequestEvent::to_event(
  self : KeyFrameRequestEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn KeyFrameRequestEvent::new(
  type_ : String,
  rid : String,
) -> KeyFrameRequestEvent =
  #| (type_, rid) => new KeyFrameRequestEvent(type_, rid)

///|
pub extern "js" fn KeyFrameRequestEvent::get_rid(
  self : KeyFrameRequestEvent,
) -> String? =
  #| (self) => { const v = self.rid; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }
