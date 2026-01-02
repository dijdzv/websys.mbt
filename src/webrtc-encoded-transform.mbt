// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webrtc-encoded-transform

///|
/// RTCRtpTransform typedef
pub type RTCRtpTransform = JsValue

///|
/// SmallCryptoKeyID typedef
pub type SmallCryptoKeyID = Int64

///|
/// CryptoKeyID typedef
pub type CryptoKeyID = JsValue

///|
/// SFrameCipherSuite enum
pub(all) enum SFrameCipherSuite {
  AES128CTRHMACSHA25680
  AES128CTRHMACSHA25664
  AES128CTRHMACSHA25632
  AES128GCMSHA256128
  AES256GCMSHA512128
}

/// Convert to string value
pub fn SFrameCipherSuite::to_string(self : SFrameCipherSuite) -> String {
  match self {
    AES128CTRHMACSHA25680 => "AES_128_CTR_HMAC_SHA256_80"
    AES128CTRHMACSHA25664 => "AES_128_CTR_HMAC_SHA256_64"
    AES128CTRHMACSHA25632 => "AES_128_CTR_HMAC_SHA256_32"
    AES128GCMSHA256128 => "AES_128_GCM_SHA256_128"
    AES256GCMSHA512128 => "AES_256_GCM_SHA512_128"
  }
}

/// Parse from string value
pub fn SFrameCipherSuite::from_string(s : String) -> SFrameCipherSuite? {
  match s {
    "AES_128_CTR_HMAC_SHA256_80" => Some(AES128CTRHMACSHA25680)
    "AES_128_CTR_HMAC_SHA256_64" => Some(AES128CTRHMACSHA25664)
    "AES_128_CTR_HMAC_SHA256_32" => Some(AES128CTRHMACSHA25632)
    "AES_128_GCM_SHA256_128" => Some(AES128GCMSHA256128)
    "AES_256_GCM_SHA512_128" => Some(AES256GCMSHA512128)
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

/// Convert to string value
pub fn SFrameTransformErrorEventType::to_string(self : SFrameTransformErrorEventType) -> String {
  match self {
    Authentication => "authentication"
    KeyID => "keyID"
    Syntax => "syntax"
  }
}

/// Parse from string value
pub fn SFrameTransformErrorEventType::from_string(s : String) -> SFrameTransformErrorEventType? {
  match s {
    "authentication" => Some(Authentication)
    "keyID" => Some(KeyID)
    "syntax" => Some(Syntax)
    _ => None
  }
}

///|
/// SFrameTransformOptions dictionary
pub struct SFrameTransformOptions {
  cipherSuite : SFrameCipherSuite
}

/// Create a new SFrameTransformOptions with default values
pub fn SFrameTransformOptions::default() -> SFrameTransformOptions {
  SFrameTransformOptions::{
    cipherSuite: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn SFrameTransformOptions::to_js(self : SFrameTransformOptions) -> JsValue =
  #| (self) => ({
  #|   cipherSuite: self.cipherSuite
  #| })

///|
/// SFrameTransformErrorEventInit dictionary
pub struct SFrameTransformErrorEventInit {
  errorType : SFrameTransformErrorEventType
  frame : JsValue
  keyID : CryptoKeyID??
}

/// Create a new SFrameTransformErrorEventInit with default values
pub fn SFrameTransformErrorEventInit::default() -> SFrameTransformErrorEventInit {
  SFrameTransformErrorEventInit::{
    errorType: panic(),
    frame: panic(),
    keyID: None,
  }
}

/// Convert to JsValue
pub extern "js" fn SFrameTransformErrorEventInit::to_js(self : SFrameTransformErrorEventInit) -> JsValue =
  #| (self) => ({
  #|   errorType: self.errorType,
  #|   frame: self.frame,
  #|   keyID: self.keyID
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

/// Convert to JsValue
pub extern "js" fn RTCEncodedFrameMetadata::to_js(self : RTCEncodedFrameMetadata) -> JsValue =
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

/// Convert to JsValue
pub extern "js" fn RTCEncodedVideoFrameMetadata::to_js(self : RTCEncodedVideoFrameMetadata) -> JsValue =
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

/// Create a new RTCEncodedVideoFrameOptions with default values
pub fn RTCEncodedVideoFrameOptions::default() -> RTCEncodedVideoFrameOptions {
  RTCEncodedVideoFrameOptions::{
    metadata: None,
  }
}

/// Convert to JsValue
pub extern "js" fn RTCEncodedVideoFrameOptions::to_js(self : RTCEncodedVideoFrameOptions) -> JsValue =
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

/// Convert to JsValue
pub extern "js" fn RTCEncodedAudioFrameMetadata::to_js(self : RTCEncodedAudioFrameMetadata) -> JsValue =
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

/// Create a new RTCEncodedAudioFrameOptions with default values
pub fn RTCEncodedAudioFrameOptions::default() -> RTCEncodedAudioFrameOptions {
  RTCEncodedAudioFrameOptions::{
    metadata: None,
  }
}

/// Convert to JsValue
pub extern "js" fn RTCEncodedAudioFrameOptions::to_js(self : RTCEncodedAudioFrameOptions) -> JsValue =
  #| (self) => ({
  #|   metadata: self.metadata
  #| })

///|
/// SFrameTransform interface
pub type SFrameTransform

pub extern "js" fn SFrameTransform::to_js_value(self : SFrameTransform) -> JsValue =
  #| (self) => self

pub extern "js" fn SFrameTransform::new(options : SFrameTransformOptions) -> SFrameTransform =
  #| (options) => new SFrameTransform(options)

pub extern "js" fn SFrameTransform::set_encryption_key(self : SFrameTransform, key : CryptoKey) -> Promise[Unit] =
  #| (self, key) => self.setEncryptionKey(key)

pub extern "js" fn SFrameTransform::set_encryption_key_with_key_i_d(self : SFrameTransform, key : CryptoKey, key_i_d : CryptoKeyID) -> Promise[Unit] =
  #| (self, key, key_i_d) => self.setEncryptionKey(key, key_i_d)

pub extern "js" fn SFrameTransform::get_onerror(self : SFrameTransform) -> EventHandler =
  #| (self) => self.onerror

pub extern "js" fn SFrameTransform::set_onerror(self : SFrameTransform, value : EventHandler) -> Unit =
  #| (self, value) => { self.onerror = value }

///|
/// SFrameEncrypterStream interface
pub type SFrameEncrypterStream

pub extern "js" fn SFrameEncrypterStream::to_js_value(self : SFrameEncrypterStream) -> JsValue =
  #| (self) => self

pub extern "js" fn SFrameEncrypterStream::new(options : SFrameTransformOptions) -> SFrameEncrypterStream =
  #| (options) => new SFrameEncrypterStream(options)

pub extern "js" fn SFrameEncrypterStream::get_readable(self : SFrameEncrypterStream) -> ReadableStream =
  #| (self) => self.readable

pub extern "js" fn SFrameEncrypterStream::get_writable(self : SFrameEncrypterStream) -> WritableStream =
  #| (self) => self.writable

pub extern "js" fn SFrameEncrypterStream::set_encryption_key(self : SFrameEncrypterStream, key : CryptoKey) -> Promise[Unit] =
  #| (self, key) => self.setEncryptionKey(key)

pub extern "js" fn SFrameEncrypterStream::set_encryption_key_with_key_i_d(self : SFrameEncrypterStream, key : CryptoKey, key_i_d : CryptoKeyID) -> Promise[Unit] =
  #| (self, key, key_i_d) => self.setEncryptionKey(key, key_i_d)

pub extern "js" fn SFrameEncrypterStream::get_onerror(self : SFrameEncrypterStream) -> EventHandler =
  #| (self) => self.onerror

pub extern "js" fn SFrameEncrypterStream::set_onerror(self : SFrameEncrypterStream, value : EventHandler) -> Unit =
  #| (self, value) => { self.onerror = value }

///|
/// SFrameDecrypterStream interface
pub type SFrameDecrypterStream

pub extern "js" fn SFrameDecrypterStream::to_js_value(self : SFrameDecrypterStream) -> JsValue =
  #| (self) => self

pub extern "js" fn SFrameDecrypterStream::new(options : SFrameTransformOptions) -> SFrameDecrypterStream =
  #| (options) => new SFrameDecrypterStream(options)

pub extern "js" fn SFrameDecrypterStream::get_readable(self : SFrameDecrypterStream) -> ReadableStream =
  #| (self) => self.readable

pub extern "js" fn SFrameDecrypterStream::get_writable(self : SFrameDecrypterStream) -> WritableStream =
  #| (self) => self.writable

pub extern "js" fn SFrameDecrypterStream::set_encryption_key(self : SFrameDecrypterStream, key : CryptoKey) -> Promise[Unit] =
  #| (self, key) => self.setEncryptionKey(key)

pub extern "js" fn SFrameDecrypterStream::set_encryption_key_with_key_i_d(self : SFrameDecrypterStream, key : CryptoKey, key_i_d : CryptoKeyID) -> Promise[Unit] =
  #| (self, key, key_i_d) => self.setEncryptionKey(key, key_i_d)

pub extern "js" fn SFrameDecrypterStream::get_onerror(self : SFrameDecrypterStream) -> EventHandler =
  #| (self) => self.onerror

pub extern "js" fn SFrameDecrypterStream::set_onerror(self : SFrameDecrypterStream, value : EventHandler) -> Unit =
  #| (self, value) => { self.onerror = value }

///|
/// SFrameTransformErrorEvent interface
pub type SFrameTransformErrorEvent

pub extern "js" fn SFrameTransformErrorEvent::to_js_value(self : SFrameTransformErrorEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn SFrameTransformErrorEvent::new(type_ : String, event_init_dict : SFrameTransformErrorEventInit) -> SFrameTransformErrorEvent =
  #| (type_, event_init_dict) => new SFrameTransformErrorEvent(type_, event_init_dict)

pub extern "js" fn SFrameTransformErrorEvent::get_error_type(self : SFrameTransformErrorEvent) -> SFrameTransformErrorEventType =
  #| (self) => self.errorType

pub extern "js" fn SFrameTransformErrorEvent::get_key_i_d(self : SFrameTransformErrorEvent) -> CryptoKeyID? =
  #| (self) => self.keyID

pub extern "js" fn SFrameTransformErrorEvent::get_frame(self : SFrameTransformErrorEvent) -> JsValue =
  #| (self) => self.frame

///|
/// RTCEncodedVideoFrame interface
pub type RTCEncodedVideoFrame

pub extern "js" fn RTCEncodedVideoFrame::to_js_value(self : RTCEncodedVideoFrame) -> JsValue =
  #| (self) => self

pub extern "js" fn RTCEncodedVideoFrame::new(original_frame : RTCEncodedVideoFrame, options : RTCEncodedVideoFrameOptions) -> RTCEncodedVideoFrame =
  #| (original_frame, options) => new RTCEncodedVideoFrame(original_frame, options)

pub extern "js" fn RTCEncodedVideoFrame::get_type(self : RTCEncodedVideoFrame) -> EncodedVideoChunkType =
  #| (self) => self.type

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

pub extern "js" fn RTCEncodedAudioFrame::new(original_frame : RTCEncodedAudioFrame, options : RTCEncodedAudioFrameOptions) -> RTCEncodedAudioFrame =
  #| (original_frame, options) => new RTCEncodedAudioFrame(original_frame, options)

pub extern "js" fn RTCEncodedAudioFrame::get_data(self : RTCEncodedAudioFrame) -> ArrayBuffer =
  #| (self) => self.data

pub extern "js" fn RTCEncodedAudioFrame::set_data(self : RTCEncodedAudioFrame, value : ArrayBuffer) -> Unit =
  #| (self, value) => { self.data = value }

pub extern "js" fn RTCEncodedAudioFrame::get_metadata(self : RTCEncodedAudioFrame) -> RTCEncodedAudioFrameMetadata =
  #| (self) => self.getMetadata()

///|
/// RTCTransformEvent interface
pub type RTCTransformEvent

pub extern "js" fn RTCTransformEvent::to_js_value(self : RTCTransformEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn RTCTransformEvent::get_transformer(self : RTCTransformEvent) -> RTCRtpScriptTransformer =
  #| (self) => self.transformer

///|
/// RTCRtpScriptTransformer interface
pub type RTCRtpScriptTransformer

pub extern "js" fn RTCRtpScriptTransformer::to_js_value(self : RTCRtpScriptTransformer) -> JsValue =
  #| (self) => self

pub extern "js" fn RTCRtpScriptTransformer::get_readable(self : RTCRtpScriptTransformer) -> ReadableStream =
  #| (self) => self.readable

pub extern "js" fn RTCRtpScriptTransformer::generate_key_frame(self : RTCRtpScriptTransformer) -> Promise[Unit] =
  #| (self) => self.generateKeyFrame()

pub extern "js" fn RTCRtpScriptTransformer::generate_key_frame_with_rid(self : RTCRtpScriptTransformer, rid : String) -> Promise[Unit] =
  #| (self, rid) => self.generateKeyFrame(rid)

pub extern "js" fn RTCRtpScriptTransformer::send_key_frame_request(self : RTCRtpScriptTransformer) -> Promise[Unit] =
  #| (self) => self.sendKeyFrameRequest()

pub extern "js" fn RTCRtpScriptTransformer::get_writable(self : RTCRtpScriptTransformer) -> WritableStream =
  #| (self) => self.writable

pub extern "js" fn RTCRtpScriptTransformer::get_onkeyframerequest(self : RTCRtpScriptTransformer) -> EventHandler =
  #| (self) => self.onkeyframerequest

pub extern "js" fn RTCRtpScriptTransformer::set_onkeyframerequest(self : RTCRtpScriptTransformer, value : EventHandler) -> Unit =
  #| (self, value) => { self.onkeyframerequest = value }

pub extern "js" fn RTCRtpScriptTransformer::get_options(self : RTCRtpScriptTransformer) -> JsValue =
  #| (self) => self.options

///|
/// RTCRtpScriptTransform interface
pub type RTCRtpScriptTransform

pub extern "js" fn RTCRtpScriptTransform::to_js_value(self : RTCRtpScriptTransform) -> JsValue =
  #| (self) => self

pub extern "js" fn RTCRtpScriptTransform::new(worker : Worker, options : JsValue, transfer : Array[JsValue]) -> RTCRtpScriptTransform =
  #| (worker, options, transfer) => new RTCRtpScriptTransform(worker, options, transfer)

///|
/// KeyFrameRequestEvent interface
pub type KeyFrameRequestEvent

pub extern "js" fn KeyFrameRequestEvent::to_js_value(self : KeyFrameRequestEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn KeyFrameRequestEvent::new(type_ : String, rid : String) -> KeyFrameRequestEvent =
  #| (type_, rid) => new KeyFrameRequestEvent(type_, rid)

pub extern "js" fn KeyFrameRequestEvent::get_rid(self : KeyFrameRequestEvent) -> String? =
  #| (self) => self.rid

