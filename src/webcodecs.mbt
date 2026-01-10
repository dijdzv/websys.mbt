// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webcodecs

///|
/// ImageBufferSource typedef
pub type ImageBufferSource

///|
pub extern "js" fn ImageBufferSource::to_js_value(
  self : ImageBufferSource,
) -> JsValue =
  #| (self) => self

///|
/// Create ImageBufferSource from AllowSharedBufferSource
pub extern "js" fn ImageBufferSource::from_allow_shared_buffer_source(
  v : AllowSharedBufferSource,
) -> ImageBufferSource =
  #| (v) => v

///|
/// Create ImageBufferSource from ReadableStream
pub extern "js" fn ImageBufferSource::from_readable_stream(
  v : ReadableStream,
) -> ImageBufferSource =
  #| (v) => v

///|
/// Check if this ImageBufferSource is AllowSharedBufferSource
pub extern "js" fn ImageBufferSource::is_allow_shared_buffer_source(
  self : ImageBufferSource,
) -> Bool =
  #| (self) => self instanceof ArrayBuffer || self instanceof SharedArrayBuffer || self instanceof Int8Array || self instanceof Int16Array || self instanceof Int32Array || self instanceof Uint8Array || self instanceof Uint16Array || self instanceof Uint32Array || self instanceof Uint8ClampedArray || self instanceof BigInt64Array || self instanceof BigUint64Array || self instanceof Float16Array || self instanceof Float32Array || self instanceof Float64Array || self instanceof DataView

///|
/// Check if this ImageBufferSource is ReadableStream
pub extern "js" fn ImageBufferSource::is_readable_stream(
  self : ImageBufferSource,
) -> Bool =
  #| (self) => self instanceof ReadableStream

///|
/// Try to get ImageBufferSource as AllowSharedBufferSource
pub extern "js" fn ImageBufferSource::as_allow_shared_buffer_source(
  self : ImageBufferSource,
) -> AllowSharedBufferSource? =
  #| (self) => (self instanceof ArrayBuffer || self instanceof SharedArrayBuffer || self instanceof Int8Array || self instanceof Int16Array || self instanceof Int32Array || self instanceof Uint8Array || self instanceof Uint16Array || self instanceof Uint32Array || self instanceof Uint8ClampedArray || self instanceof BigInt64Array || self instanceof BigUint64Array || self instanceof Float16Array || self instanceof Float32Array || self instanceof Float64Array || self instanceof DataView) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get ImageBufferSource as ReadableStream
pub extern "js" fn ImageBufferSource::as_readable_stream(
  self : ImageBufferSource,
) -> ReadableStream? =
  #| (self) => (self instanceof ReadableStream) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// HardwareAcceleration enum
pub(all) enum HardwareAcceleration {
  NoPreference
  PreferHardware
  PreferSoftware
}

///|
/// Convert to string value
pub fn HardwareAcceleration::to_string(self : HardwareAcceleration) -> String {
  match self {
    HardwareAcceleration::NoPreference => "no-preference"
    HardwareAcceleration::PreferHardware => "prefer-hardware"
    HardwareAcceleration::PreferSoftware => "prefer-software"
  }
}

///|
/// Parse from string value
pub fn HardwareAcceleration::from_string(s : String) -> HardwareAcceleration? {
  match s {
    "no-preference" => Some(HardwareAcceleration::NoPreference)
    "prefer-hardware" => Some(HardwareAcceleration::PreferHardware)
    "prefer-software" => Some(HardwareAcceleration::PreferSoftware)
    _ => None
  }
}

///|
/// AlphaOption enum
pub(all) enum AlphaOption {
  Keep
  Discard
}

///|
/// Convert to string value
pub fn AlphaOption::to_string(self : AlphaOption) -> String {
  match self {
    AlphaOption::Keep => "keep"
    AlphaOption::Discard => "discard"
  }
}

///|
/// Parse from string value
pub fn AlphaOption::from_string(s : String) -> AlphaOption? {
  match s {
    "keep" => Some(AlphaOption::Keep)
    "discard" => Some(AlphaOption::Discard)
    _ => None
  }
}

///|
/// LatencyMode enum
pub(all) enum LatencyMode {
  Quality
  Realtime
}

///|
/// Convert to string value
pub fn LatencyMode::to_string(self : LatencyMode) -> String {
  match self {
    LatencyMode::Quality => "quality"
    LatencyMode::Realtime => "realtime"
  }
}

///|
/// Parse from string value
pub fn LatencyMode::from_string(s : String) -> LatencyMode? {
  match s {
    "quality" => Some(LatencyMode::Quality)
    "realtime" => Some(LatencyMode::Realtime)
    _ => None
  }
}

///|
/// VideoEncoderBitrateMode enum
pub(all) enum VideoEncoderBitrateMode {
  Constant
  Variable
  Quantizer
}

///|
/// Convert to string value
pub fn VideoEncoderBitrateMode::to_string(
  self : VideoEncoderBitrateMode,
) -> String {
  match self {
    VideoEncoderBitrateMode::Constant => "constant"
    VideoEncoderBitrateMode::Variable => "variable"
    VideoEncoderBitrateMode::Quantizer => "quantizer"
  }
}

///|
/// Parse from string value
pub fn VideoEncoderBitrateMode::from_string(
  s : String,
) -> VideoEncoderBitrateMode? {
  match s {
    "constant" => Some(VideoEncoderBitrateMode::Constant)
    "variable" => Some(VideoEncoderBitrateMode::Variable)
    "quantizer" => Some(VideoEncoderBitrateMode::Quantizer)
    _ => None
  }
}

///|
/// CodecState enum
pub(all) enum CodecState {
  Unconfigured
  Configured
  Closed
}

///|
/// Convert to string value
pub fn CodecState::to_string(self : CodecState) -> String {
  match self {
    CodecState::Unconfigured => "unconfigured"
    CodecState::Configured => "configured"
    CodecState::Closed => "closed"
  }
}

///|
/// Parse from string value
pub fn CodecState::from_string(s : String) -> CodecState? {
  match s {
    "unconfigured" => Some(CodecState::Unconfigured)
    "configured" => Some(CodecState::Configured)
    "closed" => Some(CodecState::Closed)
    _ => None
  }
}

///|
/// EncodedAudioChunkType enum
pub(all) enum EncodedAudioChunkType {
  Key
  Delta
}

///|
/// Convert to string value
pub fn EncodedAudioChunkType::to_string(self : EncodedAudioChunkType) -> String {
  match self {
    EncodedAudioChunkType::Key => "key"
    EncodedAudioChunkType::Delta => "delta"
  }
}

///|
/// Parse from string value
pub fn EncodedAudioChunkType::from_string(s : String) -> EncodedAudioChunkType? {
  match s {
    "key" => Some(EncodedAudioChunkType::Key)
    "delta" => Some(EncodedAudioChunkType::Delta)
    _ => None
  }
}

///|
/// EncodedVideoChunkType enum
pub(all) enum EncodedVideoChunkType {
  Key
  Delta
}

///|
/// Convert to string value
pub fn EncodedVideoChunkType::to_string(self : EncodedVideoChunkType) -> String {
  match self {
    EncodedVideoChunkType::Key => "key"
    EncodedVideoChunkType::Delta => "delta"
  }
}

///|
/// Parse from string value
pub fn EncodedVideoChunkType::from_string(s : String) -> EncodedVideoChunkType? {
  match s {
    "key" => Some(EncodedVideoChunkType::Key)
    "delta" => Some(EncodedVideoChunkType::Delta)
    _ => None
  }
}

///|
/// AudioSampleFormat enum
pub(all) enum AudioSampleFormat {
  U8
  S16
  S32
  F32
  U8Planar
  S16Planar
  S32Planar
  F32Planar
}

///|
/// Convert to string value
pub fn AudioSampleFormat::to_string(self : AudioSampleFormat) -> String {
  match self {
    AudioSampleFormat::U8 => "u8"
    AudioSampleFormat::S16 => "s16"
    AudioSampleFormat::S32 => "s32"
    AudioSampleFormat::F32 => "f32"
    AudioSampleFormat::U8Planar => "u8-planar"
    AudioSampleFormat::S16Planar => "s16-planar"
    AudioSampleFormat::S32Planar => "s32-planar"
    AudioSampleFormat::F32Planar => "f32-planar"
  }
}

///|
/// Parse from string value
pub fn AudioSampleFormat::from_string(s : String) -> AudioSampleFormat? {
  match s {
    "u8" => Some(AudioSampleFormat::U8)
    "s16" => Some(AudioSampleFormat::S16)
    "s32" => Some(AudioSampleFormat::S32)
    "f32" => Some(AudioSampleFormat::F32)
    "u8-planar" => Some(AudioSampleFormat::U8Planar)
    "s16-planar" => Some(AudioSampleFormat::S16Planar)
    "s32-planar" => Some(AudioSampleFormat::S32Planar)
    "f32-planar" => Some(AudioSampleFormat::F32Planar)
    _ => None
  }
}

///|
/// VideoPixelFormat enum
pub(all) enum VideoPixelFormat {
  I420
  I420P10
  I420P12
  I420A
  I420AP10
  I420AP12
  I422
  I422P10
  I422P12
  I422A
  I422AP10
  I422AP12
  I444
  I444P10
  I444P12
  I444A
  I444AP10
  I444AP12
  NV12
  RGBA
  RGBX
  BGRA
  BGRX
}

///|
/// Convert to string value
pub fn VideoPixelFormat::to_string(self : VideoPixelFormat) -> String {
  match self {
    VideoPixelFormat::I420 => "I420"
    VideoPixelFormat::I420P10 => "I420P10"
    VideoPixelFormat::I420P12 => "I420P12"
    VideoPixelFormat::I420A => "I420A"
    VideoPixelFormat::I420AP10 => "I420AP10"
    VideoPixelFormat::I420AP12 => "I420AP12"
    VideoPixelFormat::I422 => "I422"
    VideoPixelFormat::I422P10 => "I422P10"
    VideoPixelFormat::I422P12 => "I422P12"
    VideoPixelFormat::I422A => "I422A"
    VideoPixelFormat::I422AP10 => "I422AP10"
    VideoPixelFormat::I422AP12 => "I422AP12"
    VideoPixelFormat::I444 => "I444"
    VideoPixelFormat::I444P10 => "I444P10"
    VideoPixelFormat::I444P12 => "I444P12"
    VideoPixelFormat::I444A => "I444A"
    VideoPixelFormat::I444AP10 => "I444AP10"
    VideoPixelFormat::I444AP12 => "I444AP12"
    VideoPixelFormat::NV12 => "NV12"
    VideoPixelFormat::RGBA => "RGBA"
    VideoPixelFormat::RGBX => "RGBX"
    VideoPixelFormat::BGRA => "BGRA"
    VideoPixelFormat::BGRX => "BGRX"
  }
}

///|
/// Parse from string value
pub fn VideoPixelFormat::from_string(s : String) -> VideoPixelFormat? {
  match s {
    "I420" => Some(VideoPixelFormat::I420)
    "I420P10" => Some(VideoPixelFormat::I420P10)
    "I420P12" => Some(VideoPixelFormat::I420P12)
    "I420A" => Some(VideoPixelFormat::I420A)
    "I420AP10" => Some(VideoPixelFormat::I420AP10)
    "I420AP12" => Some(VideoPixelFormat::I420AP12)
    "I422" => Some(VideoPixelFormat::I422)
    "I422P10" => Some(VideoPixelFormat::I422P10)
    "I422P12" => Some(VideoPixelFormat::I422P12)
    "I422A" => Some(VideoPixelFormat::I422A)
    "I422AP10" => Some(VideoPixelFormat::I422AP10)
    "I422AP12" => Some(VideoPixelFormat::I422AP12)
    "I444" => Some(VideoPixelFormat::I444)
    "I444P10" => Some(VideoPixelFormat::I444P10)
    "I444P12" => Some(VideoPixelFormat::I444P12)
    "I444A" => Some(VideoPixelFormat::I444A)
    "I444AP10" => Some(VideoPixelFormat::I444AP10)
    "I444AP12" => Some(VideoPixelFormat::I444AP12)
    "NV12" => Some(VideoPixelFormat::NV12)
    "RGBA" => Some(VideoPixelFormat::RGBA)
    "RGBX" => Some(VideoPixelFormat::RGBX)
    "BGRA" => Some(VideoPixelFormat::BGRA)
    "BGRX" => Some(VideoPixelFormat::BGRX)
    _ => None
  }
}

///|
/// VideoColorPrimaries enum
pub(all) enum VideoColorPrimaries {
  Bt709
  Bt470bg
  Smpte170m
  Bt2020
  Smpte432
}

///|
/// Convert to string value
pub fn VideoColorPrimaries::to_string(self : VideoColorPrimaries) -> String {
  match self {
    VideoColorPrimaries::Bt709 => "bt709"
    VideoColorPrimaries::Bt470bg => "bt470bg"
    VideoColorPrimaries::Smpte170m => "smpte170m"
    VideoColorPrimaries::Bt2020 => "bt2020"
    VideoColorPrimaries::Smpte432 => "smpte432"
  }
}

///|
/// Parse from string value
pub fn VideoColorPrimaries::from_string(s : String) -> VideoColorPrimaries? {
  match s {
    "bt709" => Some(VideoColorPrimaries::Bt709)
    "bt470bg" => Some(VideoColorPrimaries::Bt470bg)
    "smpte170m" => Some(VideoColorPrimaries::Smpte170m)
    "bt2020" => Some(VideoColorPrimaries::Bt2020)
    "smpte432" => Some(VideoColorPrimaries::Smpte432)
    _ => None
  }
}

///|
/// VideoTransferCharacteristics enum
pub(all) enum VideoTransferCharacteristics {
  Bt709
  Smpte170m
  Iec6196621
  Linear
  Pq
  Hlg
}

///|
/// Convert to string value
pub fn VideoTransferCharacteristics::to_string(
  self : VideoTransferCharacteristics,
) -> String {
  match self {
    VideoTransferCharacteristics::Bt709 => "bt709"
    VideoTransferCharacteristics::Smpte170m => "smpte170m"
    VideoTransferCharacteristics::Iec6196621 => "iec61966-2-1"
    VideoTransferCharacteristics::Linear => "linear"
    VideoTransferCharacteristics::Pq => "pq"
    VideoTransferCharacteristics::Hlg => "hlg"
  }
}

///|
/// Parse from string value
pub fn VideoTransferCharacteristics::from_string(
  s : String,
) -> VideoTransferCharacteristics? {
  match s {
    "bt709" => Some(VideoTransferCharacteristics::Bt709)
    "smpte170m" => Some(VideoTransferCharacteristics::Smpte170m)
    "iec61966-2-1" => Some(VideoTransferCharacteristics::Iec6196621)
    "linear" => Some(VideoTransferCharacteristics::Linear)
    "pq" => Some(VideoTransferCharacteristics::Pq)
    "hlg" => Some(VideoTransferCharacteristics::Hlg)
    _ => None
  }
}

///|
/// VideoMatrixCoefficients enum
pub(all) enum VideoMatrixCoefficients {
  Rgb
  Bt709
  Bt470bg
  Smpte170m
  Bt2020Ncl
}

///|
/// Convert to string value
pub fn VideoMatrixCoefficients::to_string(
  self : VideoMatrixCoefficients,
) -> String {
  match self {
    VideoMatrixCoefficients::Rgb => "rgb"
    VideoMatrixCoefficients::Bt709 => "bt709"
    VideoMatrixCoefficients::Bt470bg => "bt470bg"
    VideoMatrixCoefficients::Smpte170m => "smpte170m"
    VideoMatrixCoefficients::Bt2020Ncl => "bt2020-ncl"
  }
}

///|
/// Parse from string value
pub fn VideoMatrixCoefficients::from_string(
  s : String,
) -> VideoMatrixCoefficients? {
  match s {
    "rgb" => Some(VideoMatrixCoefficients::Rgb)
    "bt709" => Some(VideoMatrixCoefficients::Bt709)
    "bt470bg" => Some(VideoMatrixCoefficients::Bt470bg)
    "smpte170m" => Some(VideoMatrixCoefficients::Smpte170m)
    "bt2020-ncl" => Some(VideoMatrixCoefficients::Bt2020Ncl)
    _ => None
  }
}

///|
/// AudioDataOutputCallback callback interface
pub type AudioDataOutputCallback

///|
/// Create AudioDataOutputCallback from a MoonBit function
pub extern "js" fn AudioDataOutputCallback::from_fn(
  handler : (AudioData) -> Unit,
) -> AudioDataOutputCallback =
  #| (handler) => handler

///|
/// VideoFrameOutputCallback callback interface
pub type VideoFrameOutputCallback

///|
/// Create VideoFrameOutputCallback from a MoonBit function
pub extern "js" fn VideoFrameOutputCallback::from_fn(
  handler : (VideoFrame) -> Unit,
) -> VideoFrameOutputCallback =
  #| (handler) => handler

///|
/// EncodedAudioChunkOutputCallback callback interface
pub type EncodedAudioChunkOutputCallback

///|
/// Create EncodedAudioChunkOutputCallback from a MoonBit function
pub extern "js" fn EncodedAudioChunkOutputCallback::from_fn(
  handler : (EncodedAudioChunk, EncodedAudioChunkMetadata) -> Unit,
) -> EncodedAudioChunkOutputCallback =
  #| (handler) => handler

///|
/// EncodedVideoChunkOutputCallback callback interface
pub type EncodedVideoChunkOutputCallback

///|
/// Create EncodedVideoChunkOutputCallback from a MoonBit function
pub extern "js" fn EncodedVideoChunkOutputCallback::from_fn(
  handler : (EncodedVideoChunk, EncodedVideoChunkMetadata) -> Unit,
) -> EncodedVideoChunkOutputCallback =
  #| (handler) => handler

///|
/// WebCodecsErrorCallback callback interface
pub type WebCodecsErrorCallback

///|
/// Create WebCodecsErrorCallback from a MoonBit function
pub extern "js" fn WebCodecsErrorCallback::from_fn(
  handler : (DOMException) -> Unit,
) -> WebCodecsErrorCallback =
  #| (handler) => handler

///|
/// AudioDecoderInit dictionary
pub struct AudioDecoderInit {
  output : AudioDataOutputCallback
  error : WebCodecsErrorCallback
}

///|
/// Create a new AudioDecoderInit with default values
pub fn AudioDecoderInit::default() -> AudioDecoderInit {
  AudioDecoderInit::{ output: panic(), error: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn AudioDecoderInit::to_js(self : AudioDecoderInit) -> JsValue =
  #| (self) => ({
  #|   output: self.output,
  #|   error: self.error
  #| })

///|
/// VideoDecoderInit dictionary
pub struct VideoDecoderInit {
  output : VideoFrameOutputCallback
  error : WebCodecsErrorCallback
}

///|
/// Create a new VideoDecoderInit with default values
pub fn VideoDecoderInit::default() -> VideoDecoderInit {
  VideoDecoderInit::{ output: panic(), error: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn VideoDecoderInit::to_js(self : VideoDecoderInit) -> JsValue =
  #| (self) => ({
  #|   output: self.output,
  #|   error: self.error
  #| })

///|
/// AudioEncoderInit dictionary
pub struct AudioEncoderInit {
  output : EncodedAudioChunkOutputCallback
  error : WebCodecsErrorCallback
}

///|
/// Create a new AudioEncoderInit with default values
pub fn AudioEncoderInit::default() -> AudioEncoderInit {
  AudioEncoderInit::{ output: panic(), error: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn AudioEncoderInit::to_js(self : AudioEncoderInit) -> JsValue =
  #| (self) => ({
  #|   output: self.output,
  #|   error: self.error
  #| })

///|
/// EncodedAudioChunkMetadata dictionary
pub struct EncodedAudioChunkMetadata {
  decoderConfig : AudioDecoderConfig?
}

///|
/// Create a new EncodedAudioChunkMetadata with default values
pub fn EncodedAudioChunkMetadata::default() -> EncodedAudioChunkMetadata {
  EncodedAudioChunkMetadata::{ decoderConfig: None }
}

///|
/// Convert to JsValue
pub extern "js" fn EncodedAudioChunkMetadata::to_js(
  self : EncodedAudioChunkMetadata,
) -> JsValue =
  #| (self) => ({
  #|   decoderConfig: self.decoderConfig
  #| })

///|
/// VideoEncoderInit dictionary
pub struct VideoEncoderInit {
  output : EncodedVideoChunkOutputCallback
  error : WebCodecsErrorCallback
}

///|
/// Create a new VideoEncoderInit with default values
pub fn VideoEncoderInit::default() -> VideoEncoderInit {
  VideoEncoderInit::{ output: panic(), error: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn VideoEncoderInit::to_js(self : VideoEncoderInit) -> JsValue =
  #| (self) => ({
  #|   output: self.output,
  #|   error: self.error
  #| })

///|
/// EncodedVideoChunkMetadata dictionary
pub struct EncodedVideoChunkMetadata {
  decoderConfig : VideoDecoderConfig?
  svc : SvcOutputMetadata?
  alphaSideData : BufferSource?
}

///|
/// Create a new EncodedVideoChunkMetadata with default values
pub fn EncodedVideoChunkMetadata::default() -> EncodedVideoChunkMetadata {
  EncodedVideoChunkMetadata::{
    decoderConfig: None,
    svc: None,
    alphaSideData: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn EncodedVideoChunkMetadata::to_js(
  self : EncodedVideoChunkMetadata,
) -> JsValue =
  #| (self) => ({
  #|   decoderConfig: self.decoderConfig,
  #|   svc: self.svc,
  #|   alphaSideData: self.alphaSideData.to_js_value()
  #| })

///|
/// SvcOutputMetadata dictionary
pub struct SvcOutputMetadata {
  temporalLayerId : Int?
}

///|
/// Create a new SvcOutputMetadata with default values
pub fn SvcOutputMetadata::default() -> SvcOutputMetadata {
  SvcOutputMetadata::{ temporalLayerId: None }
}

///|
/// Convert to JsValue
pub extern "js" fn SvcOutputMetadata::to_js(
  self : SvcOutputMetadata,
) -> JsValue =
  #| (self) => ({
  #|   temporalLayerId: self.temporalLayerId
  #| })

///|
/// AudioDecoderSupport dictionary
pub struct AudioDecoderSupport {
  supported : Bool?
  config : AudioDecoderConfig?
}

///|
/// Create a new AudioDecoderSupport with default values
pub fn AudioDecoderSupport::default() -> AudioDecoderSupport {
  AudioDecoderSupport::{ supported: None, config: None }
}

///|
/// Convert to JsValue
pub extern "js" fn AudioDecoderSupport::to_js(
  self : AudioDecoderSupport,
) -> JsValue =
  #| (self) => ({
  #|   supported: self.supported,
  #|   config: self.config
  #| })

///|
/// VideoDecoderSupport dictionary
pub struct VideoDecoderSupport {
  supported : Bool?
  config : VideoDecoderConfig?
}

///|
/// Create a new VideoDecoderSupport with default values
pub fn VideoDecoderSupport::default() -> VideoDecoderSupport {
  VideoDecoderSupport::{ supported: None, config: None }
}

///|
/// Convert to JsValue
pub extern "js" fn VideoDecoderSupport::to_js(
  self : VideoDecoderSupport,
) -> JsValue =
  #| (self) => ({
  #|   supported: self.supported,
  #|   config: self.config
  #| })

///|
/// AudioEncoderSupport dictionary
pub struct AudioEncoderSupport {
  supported : Bool?
  config : AudioEncoderConfig?
}

///|
/// Create a new AudioEncoderSupport with default values
pub fn AudioEncoderSupport::default() -> AudioEncoderSupport {
  AudioEncoderSupport::{ supported: None, config: None }
}

///|
/// Convert to JsValue
pub extern "js" fn AudioEncoderSupport::to_js(
  self : AudioEncoderSupport,
) -> JsValue =
  #| (self) => ({
  #|   supported: self.supported,
  #|   config: self.config
  #| })

///|
/// VideoEncoderSupport dictionary
pub struct VideoEncoderSupport {
  supported : Bool?
  config : VideoEncoderConfig?
}

///|
/// Create a new VideoEncoderSupport with default values
pub fn VideoEncoderSupport::default() -> VideoEncoderSupport {
  VideoEncoderSupport::{ supported: None, config: None }
}

///|
/// Convert to JsValue
pub extern "js" fn VideoEncoderSupport::to_js(
  self : VideoEncoderSupport,
) -> JsValue =
  #| (self) => ({
  #|   supported: self.supported,
  #|   config: self.config
  #| })

///|
/// AudioDecoderConfig dictionary
pub struct AudioDecoderConfig {
  codec : String
  sampleRate : Int
  numberOfChannels : Int
  description : AllowSharedBufferSource?
}

///|
/// Create a new AudioDecoderConfig with default values
pub fn AudioDecoderConfig::default() -> AudioDecoderConfig {
  AudioDecoderConfig::{
    codec: "",
    sampleRate: 0,
    numberOfChannels: 0,
    description: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn AudioDecoderConfig::to_js(
  self : AudioDecoderConfig,
) -> JsValue =
  #| (self) => ({
  #|   codec: self.codec,
  #|   sampleRate: self.sampleRate,
  #|   numberOfChannels: self.numberOfChannels,
  #|   description: self.description.to_js_value()
  #| })

///|
/// VideoDecoderConfig dictionary
pub struct VideoDecoderConfig {
  codec : String
  description : AllowSharedBufferSource?
  codedWidth : Int?
  codedHeight : Int?
  displayAspectWidth : Int?
  displayAspectHeight : Int?
  colorSpace : VideoColorSpaceInit?
  hardwareAcceleration : HardwareAcceleration?
  optimizeForLatency : Bool?
  rotation : Double?
  flip : Bool?
}

///|
/// Create a new VideoDecoderConfig with default values
pub fn VideoDecoderConfig::default() -> VideoDecoderConfig {
  VideoDecoderConfig::{
    codec: "",
    description: None,
    codedWidth: None,
    codedHeight: None,
    displayAspectWidth: None,
    displayAspectHeight: None,
    colorSpace: None,
    hardwareAcceleration: None,
    optimizeForLatency: None,
    rotation: None,
    flip: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn VideoDecoderConfig::to_js(
  self : VideoDecoderConfig,
) -> JsValue =
  #| (self) => ({
  #|   codec: self.codec,
  #|   description: self.description.to_js_value(),
  #|   codedWidth: self.codedWidth,
  #|   codedHeight: self.codedHeight,
  #|   displayAspectWidth: self.displayAspectWidth,
  #|   displayAspectHeight: self.displayAspectHeight,
  #|   colorSpace: self.colorSpace,
  #|   hardwareAcceleration: ['no-preference', 'prefer-hardware', 'prefer-software'][self.hardwareAcceleration],
  #|   optimizeForLatency: self.optimizeForLatency,
  #|   rotation: self.rotation,
  #|   flip: self.flip
  #| })

///|
/// EncodedAudioChunkInit dictionary
pub struct EncodedAudioChunkInit {
  type_ : EncodedAudioChunkType
  timestamp : Int64
  duration : Int64?
  data : AllowSharedBufferSource
  transfer : Array[ArrayBuffer]?
}

///|
/// Create a new EncodedAudioChunkInit with default values
pub fn EncodedAudioChunkInit::default() -> EncodedAudioChunkInit {
  EncodedAudioChunkInit::{
    type_: panic(),
    timestamp: 0,
    duration: None,
    data: panic(),
    transfer: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn EncodedAudioChunkInit::to_js(
  self : EncodedAudioChunkInit,
) -> JsValue =
  #| (self) => ({
  #|   type: ['key', 'delta'][self.type_],
  #|   timestamp: self.timestamp,
  #|   duration: self.duration,
  #|   data: self.data.to_js_value(),
  #|   transfer: self.transfer
  #| })

///|
/// EncodedVideoChunkInit dictionary
pub struct EncodedVideoChunkInit {
  type_ : EncodedVideoChunkType
  timestamp : Int64
  duration : Int64?
  data : AllowSharedBufferSource
  transfer : Array[ArrayBuffer]?
}

///|
/// Create a new EncodedVideoChunkInit with default values
pub fn EncodedVideoChunkInit::default() -> EncodedVideoChunkInit {
  EncodedVideoChunkInit::{
    type_: panic(),
    timestamp: 0,
    duration: None,
    data: panic(),
    transfer: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn EncodedVideoChunkInit::to_js(
  self : EncodedVideoChunkInit,
) -> JsValue =
  #| (self) => ({
  #|   type: ['key', 'delta'][self.type_],
  #|   timestamp: self.timestamp,
  #|   duration: self.duration,
  #|   data: self.data.to_js_value(),
  #|   transfer: self.transfer
  #| })

///|
/// AudioDataInit dictionary
pub struct AudioDataInit {
  format : AudioSampleFormat
  sampleRate : Double
  numberOfFrames : Int
  numberOfChannels : Int
  timestamp : Int64
  data : BufferSource
  transfer : Array[ArrayBuffer]?
}

///|
/// Create a new AudioDataInit with default values
pub fn AudioDataInit::default() -> AudioDataInit {
  AudioDataInit::{
    format: panic(),
    sampleRate: 0,
    numberOfFrames: 0,
    numberOfChannels: 0,
    timestamp: 0,
    data: panic(),
    transfer: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn AudioDataInit::to_js(self : AudioDataInit) -> JsValue =
  #| (self) => ({
  #|   format: ['u8', 's16', 's32', 'f32', 'u8-planar', 's16-planar', 's32-planar', 'f32-planar'][self.format],
  #|   sampleRate: self.sampleRate,
  #|   numberOfFrames: self.numberOfFrames,
  #|   numberOfChannels: self.numberOfChannels,
  #|   timestamp: self.timestamp,
  #|   data: self.data.to_js_value(),
  #|   transfer: self.transfer
  #| })

///|
/// AudioDataCopyToOptions dictionary
pub struct AudioDataCopyToOptions {
  planeIndex : Int
  frameOffset : Int?
  frameCount : Int?
  format : AudioSampleFormat?
}

///|
/// Create a new AudioDataCopyToOptions with default values
pub fn AudioDataCopyToOptions::default() -> AudioDataCopyToOptions {
  AudioDataCopyToOptions::{
    planeIndex: 0,
    frameOffset: None,
    frameCount: None,
    format: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn AudioDataCopyToOptions::to_js(
  self : AudioDataCopyToOptions,
) -> JsValue =
  #| (self) => ({
  #|   planeIndex: self.planeIndex,
  #|   frameOffset: self.frameOffset,
  #|   frameCount: self.frameCount,
  #|   format: ['u8', 's16', 's32', 'f32', 'u8-planar', 's16-planar', 's32-planar', 'f32-planar'][self.format]
  #| })

///|
/// VideoFrameInit dictionary
pub struct VideoFrameInit {
  duration : Int64?
  timestamp : Int64?
  alpha : AlphaOption?
  visibleRect : DOMRectInit?
  rotation : Double?
  flip : Bool?
  displayWidth : Int?
  displayHeight : Int?
  metadata : VideoFrameMetadata?
}

///|
/// Create a new VideoFrameInit with default values
pub fn VideoFrameInit::default() -> VideoFrameInit {
  VideoFrameInit::{
    duration: None,
    timestamp: None,
    alpha: None,
    visibleRect: None,
    rotation: None,
    flip: None,
    displayWidth: None,
    displayHeight: None,
    metadata: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn VideoFrameInit::to_js(self : VideoFrameInit) -> JsValue =
  #| (self) => ({
  #|   duration: self.duration,
  #|   timestamp: self.timestamp,
  #|   alpha: ['keep', 'discard'][self.alpha],
  #|   visibleRect: self.visibleRect,
  #|   rotation: self.rotation,
  #|   flip: self.flip,
  #|   displayWidth: self.displayWidth,
  #|   displayHeight: self.displayHeight,
  #|   metadata: self.metadata
  #| })

///|
/// VideoFrameBufferInit dictionary
pub struct VideoFrameBufferInit {
  format : VideoPixelFormat
  codedWidth : Int
  codedHeight : Int
  timestamp : Int64
  duration : Int64?
  layout : Array[PlaneLayout]?
  visibleRect : DOMRectInit?
  rotation : Double?
  flip : Bool?
  displayWidth : Int?
  displayHeight : Int?
  colorSpace : VideoColorSpaceInit?
  transfer : Array[ArrayBuffer]?
  metadata : VideoFrameMetadata?
}

///|
/// Create a new VideoFrameBufferInit with default values
pub fn VideoFrameBufferInit::default() -> VideoFrameBufferInit {
  VideoFrameBufferInit::{
    format: panic(),
    codedWidth: 0,
    codedHeight: 0,
    timestamp: 0,
    duration: None,
    layout: None,
    visibleRect: None,
    rotation: None,
    flip: None,
    displayWidth: None,
    displayHeight: None,
    colorSpace: None,
    transfer: None,
    metadata: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn VideoFrameBufferInit::to_js(
  self : VideoFrameBufferInit,
) -> JsValue =
  #| (self) => ({
  #|   format: ['I420', 'I420P10', 'I420P12', 'I420A', 'I420AP10', 'I420AP12', 'I422', 'I422P10', 'I422P12', 'I422A', 'I422AP10', 'I422AP12', 'I444', 'I444P10', 'I444P12', 'I444A', 'I444AP10', 'I444AP12', 'NV12', 'RGBA', 'RGBX', 'BGRA', 'BGRX'][self.format],
  #|   codedWidth: self.codedWidth,
  #|   codedHeight: self.codedHeight,
  #|   timestamp: self.timestamp,
  #|   duration: self.duration,
  #|   layout: self.layout,
  #|   visibleRect: self.visibleRect,
  #|   rotation: self.rotation,
  #|   flip: self.flip,
  #|   displayWidth: self.displayWidth,
  #|   displayHeight: self.displayHeight,
  #|   colorSpace: self.colorSpace,
  #|   transfer: self.transfer,
  #|   metadata: self.metadata
  #| })

///|
/// VideoFrameMetadata dictionary
pub struct VideoFrameMetadata {}

///|
/// Create a new VideoFrameMetadata with default values
pub fn VideoFrameMetadata::default() -> VideoFrameMetadata {
  VideoFrameMetadata::{  }
}

///|
/// Convert to JsValue
pub extern "js" fn VideoFrameMetadata::to_js(
  self : VideoFrameMetadata,
) -> JsValue =
  #| (self) => ({
  #| })

///|
/// VideoFrameCopyToOptions dictionary
pub struct VideoFrameCopyToOptions {
  rect : DOMRectInit?
  layout : Array[PlaneLayout]?
  format : VideoPixelFormat?
  colorSpace : PredefinedColorSpace?
}

///|
/// Create a new VideoFrameCopyToOptions with default values
pub fn VideoFrameCopyToOptions::default() -> VideoFrameCopyToOptions {
  VideoFrameCopyToOptions::{
    rect: None,
    layout: None,
    format: None,
    colorSpace: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn VideoFrameCopyToOptions::to_js(
  self : VideoFrameCopyToOptions,
) -> JsValue =
  #| (self) => ({
  #|   rect: self.rect,
  #|   layout: self.layout,
  #|   format: ['I420', 'I420P10', 'I420P12', 'I420A', 'I420AP10', 'I420AP12', 'I422', 'I422P10', 'I422P12', 'I422A', 'I422AP10', 'I422AP12', 'I444', 'I444P10', 'I444P12', 'I444A', 'I444AP10', 'I444AP12', 'NV12', 'RGBA', 'RGBX', 'BGRA', 'BGRX'][self.format],
  #|   colorSpace: ['srgb', 'srgb-linear', 'display-p3', 'display-p3-linear'][self.colorSpace]
  #| })

///|
/// PlaneLayout dictionary
pub struct PlaneLayout {
  offset : Int
  stride : Int
}

///|
/// Create a new PlaneLayout with default values
pub fn PlaneLayout::default() -> PlaneLayout {
  PlaneLayout::{ offset: 0, stride: 0 }
}

///|
/// Convert to JsValue
pub extern "js" fn PlaneLayout::to_js(self : PlaneLayout) -> JsValue =
  #| (self) => ({
  #|   offset: self.offset,
  #|   stride: self.stride
  #| })

///|
/// VideoColorSpaceInit dictionary
pub struct VideoColorSpaceInit {
  primaries : Nullable[VideoColorPrimaries]
  transfer : Nullable[VideoTransferCharacteristics]
  matrix : Nullable[VideoMatrixCoefficients]
  fullRange : Nullable[Bool]
}

///|
/// Create a new VideoColorSpaceInit with default values
pub fn VideoColorSpaceInit::default() -> VideoColorSpaceInit {
  VideoColorSpaceInit::{
    primaries: Nullable::Undefined,
    transfer: Nullable::Undefined,
    matrix: Nullable::Undefined,
    fullRange: Nullable::Undefined,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn VideoColorSpaceInit::to_js(
  self : VideoColorSpaceInit,
) -> JsValue =
  #| (self) => ({
  #|   primaries: ((() => { const v = self.primaries; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return ['bt709', 'bt470bg', 'smpte170m', 'bt2020', 'smpte432'][v.$0]; })()),
  #|   transfer: ((() => { const v = self.transfer; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return ['bt709', 'smpte170m', 'iec61966-2-1', 'linear', 'pq', 'hlg'][v.$0]; })()),
  #|   matrix: ((() => { const v = self.matrix; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return ['rgb', 'bt709', 'bt470bg', 'smpte170m', 'bt2020-ncl'][v.$0]; })()),
  #|   fullRange: ((() => { const v = self.fullRange; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// ImageDecoderInit dictionary
pub struct ImageDecoderInit {
  type_ : String
  data : ImageBufferSource
  colorSpaceConversion : ColorSpaceConversion?
  desiredWidth : Int?
  desiredHeight : Int?
  preferAnimation : Bool?
  transfer : Array[ArrayBuffer]?
}

///|
/// Create a new ImageDecoderInit with default values
pub fn ImageDecoderInit::default() -> ImageDecoderInit {
  ImageDecoderInit::{
    type_: "",
    data: panic(),
    colorSpaceConversion: None,
    desiredWidth: None,
    desiredHeight: None,
    preferAnimation: None,
    transfer: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn ImageDecoderInit::to_js(self : ImageDecoderInit) -> JsValue =
  #| (self) => ({
  #|   type: self.type_,
  #|   data: self.data.to_js_value(),
  #|   colorSpaceConversion: ['none', 'default'][self.colorSpaceConversion],
  #|   desiredWidth: self.desiredWidth,
  #|   desiredHeight: self.desiredHeight,
  #|   preferAnimation: self.preferAnimation,
  #|   transfer: self.transfer
  #| })

///|
/// ImageDecodeOptions dictionary
pub struct ImageDecodeOptions {
  frameIndex : Int?
  completeFramesOnly : Bool?
}

///|
/// Create a new ImageDecodeOptions with default values
pub fn ImageDecodeOptions::default() -> ImageDecodeOptions {
  ImageDecodeOptions::{ frameIndex: None, completeFramesOnly: None }
}

///|
/// Convert to JsValue
pub extern "js" fn ImageDecodeOptions::to_js(
  self : ImageDecodeOptions,
) -> JsValue =
  #| (self) => ({
  #|   frameIndex: self.frameIndex,
  #|   completeFramesOnly: self.completeFramesOnly
  #| })

///|
/// ImageDecodeResult dictionary
pub struct ImageDecodeResult {
  image : VideoFrame
  complete : Bool
}

///|
/// Create a new ImageDecodeResult with default values
pub fn ImageDecodeResult::default() -> ImageDecodeResult {
  ImageDecodeResult::{ image: panic(), complete: false }
}

///|
/// Convert to JsValue
pub extern "js" fn ImageDecodeResult::to_js(
  self : ImageDecodeResult,
) -> JsValue =
  #| (self) => ({
  #|   image: self.image,
  #|   complete: self.complete
  #| })

///|
/// AudioDecoder interface
pub type AudioDecoder

///|
pub extern "js" fn AudioDecoder::to_js_value(self : AudioDecoder) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn AudioDecoder::new(init_ : AudioDecoderInit) -> AudioDecoder =
  #| (init_) => new AudioDecoder(init_)

///|
pub extern "js" fn AudioDecoder::get_state(self : AudioDecoder) -> CodecState =
  #| (self) => self.state

///|
pub extern "js" fn AudioDecoder::get_decode_queue_size(
  self : AudioDecoder,
) -> Int =
  #| (self) => self.decodeQueueSize

///|
pub extern "js" fn AudioDecoder::get_ondequeue(
  self : AudioDecoder,
) -> EventHandler =
  #| (self) => self.ondequeue

///|
pub extern "js" fn AudioDecoder::set_ondequeue(
  self : AudioDecoder,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondequeue = value }

///|
pub extern "js" fn AudioDecoder::configure(
  self : AudioDecoder,
  config : AudioDecoderConfig,
) -> Unit =
  #| (self, config) => self.configure(config)

///|
pub extern "js" fn AudioDecoder::decode(
  self : AudioDecoder,
  chunk : EncodedAudioChunk,
) -> Unit =
  #| (self, chunk) => self.decode(chunk)

///|
pub extern "js" fn AudioDecoder::flush(self : AudioDecoder) -> Promise[Unit] =
  #| (self) => self.flush()

///|
pub extern "js" fn AudioDecoder::reset(self : AudioDecoder) -> Unit =
  #| (self) => self.reset()

///|
pub extern "js" fn AudioDecoder::close(self : AudioDecoder) -> Unit =
  #| (self) => self.close()

///|
pub extern "js" fn AudioDecoder::is_config_supported(
  config : AudioDecoderConfig,
) -> Promise[AudioDecoderSupport] =
  #| (config) => AudioDecoder.isConfigSupported(config)

///|
/// VideoDecoder interface
pub type VideoDecoder

///|
pub extern "js" fn VideoDecoder::to_js_value(self : VideoDecoder) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn VideoDecoder::new(init_ : VideoDecoderInit) -> VideoDecoder =
  #| (init_) => new VideoDecoder(init_)

///|
pub extern "js" fn VideoDecoder::get_state(self : VideoDecoder) -> CodecState =
  #| (self) => self.state

///|
pub extern "js" fn VideoDecoder::get_decode_queue_size(
  self : VideoDecoder,
) -> Int =
  #| (self) => self.decodeQueueSize

///|
pub extern "js" fn VideoDecoder::get_ondequeue(
  self : VideoDecoder,
) -> EventHandler =
  #| (self) => self.ondequeue

///|
pub extern "js" fn VideoDecoder::set_ondequeue(
  self : VideoDecoder,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondequeue = value }

///|
pub extern "js" fn VideoDecoder::configure(
  self : VideoDecoder,
  config : VideoDecoderConfig,
) -> Unit =
  #| (self, config) => self.configure(config)

///|
pub extern "js" fn VideoDecoder::decode(
  self : VideoDecoder,
  chunk : EncodedVideoChunk,
) -> Unit =
  #| (self, chunk) => self.decode(chunk)

///|
pub extern "js" fn VideoDecoder::flush(self : VideoDecoder) -> Promise[Unit] =
  #| (self) => self.flush()

///|
pub extern "js" fn VideoDecoder::reset(self : VideoDecoder) -> Unit =
  #| (self) => self.reset()

///|
pub extern "js" fn VideoDecoder::close(self : VideoDecoder) -> Unit =
  #| (self) => self.close()

///|
pub extern "js" fn VideoDecoder::is_config_supported(
  config : VideoDecoderConfig,
) -> Promise[VideoDecoderSupport] =
  #| (config) => VideoDecoder.isConfigSupported(config)

///|
/// AudioEncoder interface
pub type AudioEncoder

///|
pub extern "js" fn AudioEncoder::to_js_value(self : AudioEncoder) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn AudioEncoder::new(init_ : AudioEncoderInit) -> AudioEncoder =
  #| (init_) => new AudioEncoder(init_)

///|
pub extern "js" fn AudioEncoder::get_state(self : AudioEncoder) -> CodecState =
  #| (self) => self.state

///|
pub extern "js" fn AudioEncoder::get_encode_queue_size(
  self : AudioEncoder,
) -> Int =
  #| (self) => self.encodeQueueSize

///|
pub extern "js" fn AudioEncoder::get_ondequeue(
  self : AudioEncoder,
) -> EventHandler =
  #| (self) => self.ondequeue

///|
pub extern "js" fn AudioEncoder::set_ondequeue(
  self : AudioEncoder,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondequeue = value }

///|
pub extern "js" fn AudioEncoder::configure(
  self : AudioEncoder,
  config : AudioEncoderConfig,
) -> Unit =
  #| (self, config) => self.configure(config)

///|
pub extern "js" fn AudioEncoder::encode(
  self : AudioEncoder,
  data : AudioData,
) -> Unit =
  #| (self, data) => self.encode(data)

///|
pub extern "js" fn AudioEncoder::flush(self : AudioEncoder) -> Promise[Unit] =
  #| (self) => self.flush()

///|
pub extern "js" fn AudioEncoder::reset(self : AudioEncoder) -> Unit =
  #| (self) => self.reset()

///|
pub extern "js" fn AudioEncoder::close(self : AudioEncoder) -> Unit =
  #| (self) => self.close()

///|
pub extern "js" fn AudioEncoder::is_config_supported(
  config : AudioEncoderConfig,
) -> Promise[AudioEncoderSupport] =
  #| (config) => AudioEncoder.isConfigSupported(config)

///|
/// VideoEncoder interface
pub type VideoEncoder

///|
pub extern "js" fn VideoEncoder::to_js_value(self : VideoEncoder) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn VideoEncoder::new(init_ : VideoEncoderInit) -> VideoEncoder =
  #| (init_) => new VideoEncoder(init_)

///|
pub extern "js" fn VideoEncoder::get_state(self : VideoEncoder) -> CodecState =
  #| (self) => self.state

///|
pub extern "js" fn VideoEncoder::get_encode_queue_size(
  self : VideoEncoder,
) -> Int =
  #| (self) => self.encodeQueueSize

///|
pub extern "js" fn VideoEncoder::get_ondequeue(
  self : VideoEncoder,
) -> EventHandler =
  #| (self) => self.ondequeue

///|
pub extern "js" fn VideoEncoder::set_ondequeue(
  self : VideoEncoder,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondequeue = value }

///|
pub extern "js" fn VideoEncoder::configure(
  self : VideoEncoder,
  config : VideoEncoderConfig,
) -> Unit =
  #| (self, config) => self.configure(config)

///|
pub extern "js" fn VideoEncoder::encode(
  self : VideoEncoder,
  frame : VideoFrame,
) -> Unit =
  #| (self, frame) => self.encode(frame)

///|
pub extern "js" fn VideoEncoder::encode_with_options(
  self : VideoEncoder,
  frame : VideoFrame,
  options : VideoEncoderEncodeOptions,
) -> Unit =
  #| (self, frame, options) => self.encode(frame, options)

///|
pub extern "js" fn VideoEncoder::flush(self : VideoEncoder) -> Promise[Unit] =
  #| (self) => self.flush()

///|
pub extern "js" fn VideoEncoder::reset(self : VideoEncoder) -> Unit =
  #| (self) => self.reset()

///|
pub extern "js" fn VideoEncoder::close(self : VideoEncoder) -> Unit =
  #| (self) => self.close()

///|
pub extern "js" fn VideoEncoder::is_config_supported(
  config : VideoEncoderConfig,
) -> Promise[VideoEncoderSupport] =
  #| (config) => VideoEncoder.isConfigSupported(config)

///|
/// EncodedAudioChunk interface
pub type EncodedAudioChunk

///|
pub extern "js" fn EncodedAudioChunk::to_js_value(
  self : EncodedAudioChunk,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn EncodedAudioChunk::new(
  init_ : EncodedAudioChunkInit,
) -> EncodedAudioChunk =
  #| (init_) => new EncodedAudioChunk(init_)

///|
pub extern "js" fn EncodedAudioChunk::get_type(
  self : EncodedAudioChunk,
) -> EncodedAudioChunkType =
  #| (self) => self.type

///|
pub extern "js" fn EncodedAudioChunk::get_timestamp(
  self : EncodedAudioChunk,
) -> Int64 =
  #| (self) => self.timestamp

///|
pub extern "js" fn EncodedAudioChunk::get_duration(
  self : EncodedAudioChunk,
) -> Int64? =
  #| (self) => self.duration

///|
pub extern "js" fn EncodedAudioChunk::get_byte_length(
  self : EncodedAudioChunk,
) -> Int =
  #| (self) => self.byteLength

///|
pub extern "js" fn EncodedAudioChunk::copy_to(
  self : EncodedAudioChunk,
  destination : AllowSharedBufferSource,
) -> Unit =
  #| (self, destination) => self.copyTo(destination)

///|
/// EncodedVideoChunk interface
pub type EncodedVideoChunk

///|
pub extern "js" fn EncodedVideoChunk::to_js_value(
  self : EncodedVideoChunk,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn EncodedVideoChunk::new(
  init_ : EncodedVideoChunkInit,
) -> EncodedVideoChunk =
  #| (init_) => new EncodedVideoChunk(init_)

///|
pub extern "js" fn EncodedVideoChunk::get_type(
  self : EncodedVideoChunk,
) -> EncodedVideoChunkType =
  #| (self) => self.type

///|
pub extern "js" fn EncodedVideoChunk::get_timestamp(
  self : EncodedVideoChunk,
) -> Int64 =
  #| (self) => self.timestamp

///|
pub extern "js" fn EncodedVideoChunk::get_duration(
  self : EncodedVideoChunk,
) -> Int64? =
  #| (self) => self.duration

///|
pub extern "js" fn EncodedVideoChunk::get_byte_length(
  self : EncodedVideoChunk,
) -> Int =
  #| (self) => self.byteLength

///|
pub extern "js" fn EncodedVideoChunk::copy_to(
  self : EncodedVideoChunk,
  destination : AllowSharedBufferSource,
) -> Unit =
  #| (self, destination) => self.copyTo(destination)

///|
/// AudioData interface
pub type AudioData

///|
pub extern "js" fn AudioData::to_js_value(self : AudioData) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn AudioData::new(init_ : AudioDataInit) -> AudioData =
  #| (init_) => new AudioData(init_)

///|
pub extern "js" fn AudioData::get_format(
  self : AudioData,
) -> AudioSampleFormat? =
  #| (self) => self.format

///|
pub extern "js" fn AudioData::get_sample_rate(self : AudioData) -> Double =
  #| (self) => self.sampleRate

///|
pub extern "js" fn AudioData::get_number_of_frames(self : AudioData) -> Int =
  #| (self) => self.numberOfFrames

///|
pub extern "js" fn AudioData::get_number_of_channels(self : AudioData) -> Int =
  #| (self) => self.numberOfChannels

///|
pub extern "js" fn AudioData::get_duration(self : AudioData) -> Int64 =
  #| (self) => self.duration

///|
pub extern "js" fn AudioData::get_timestamp(self : AudioData) -> Int64 =
  #| (self) => self.timestamp

///|
pub extern "js" fn AudioData::allocation_size(
  self : AudioData,
  options : AudioDataCopyToOptions,
) -> Int =
  #| (self, options) => self.allocationSize(options)

///|
pub extern "js" fn AudioData::copy_to(
  self : AudioData,
  destination : AllowSharedBufferSource,
  options : AudioDataCopyToOptions,
) -> Unit =
  #| (self, destination, options) => self.copyTo(destination, options)

///|
pub extern "js" fn AudioData::clone(self : AudioData) -> AudioData =
  #| (self) => self.clone()

///|
pub extern "js" fn AudioData::close(self : AudioData) -> Unit =
  #| (self) => self.close()

///|
/// VideoFrame interface
pub type VideoFrame

///|
pub extern "js" fn VideoFrame::to_js_value(self : VideoFrame) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn VideoFrame::new(
  image : CanvasImageSource,
  init_ : VideoFrameInit,
) -> VideoFrame =
  #| (image, init_) => new VideoFrame(image, init_)

///|
pub extern "js" fn VideoFrame::get_format(
  self : VideoFrame,
) -> VideoPixelFormat? =
  #| (self) => self.format

///|
pub extern "js" fn VideoFrame::get_coded_width(self : VideoFrame) -> Int =
  #| (self) => self.codedWidth

///|
pub extern "js" fn VideoFrame::get_coded_height(self : VideoFrame) -> Int =
  #| (self) => self.codedHeight

///|
pub extern "js" fn VideoFrame::get_coded_rect(
  self : VideoFrame,
) -> DOMRectReadOnly? =
  #| (self) => self.codedRect

///|
pub extern "js" fn VideoFrame::get_visible_rect(
  self : VideoFrame,
) -> DOMRectReadOnly? =
  #| (self) => self.visibleRect

///|
pub extern "js" fn VideoFrame::get_rotation(self : VideoFrame) -> Double =
  #| (self) => self.rotation

///|
pub extern "js" fn VideoFrame::get_flip(self : VideoFrame) -> Bool =
  #| (self) => self.flip

///|
pub extern "js" fn VideoFrame::get_display_width(self : VideoFrame) -> Int =
  #| (self) => self.displayWidth

///|
pub extern "js" fn VideoFrame::get_display_height(self : VideoFrame) -> Int =
  #| (self) => self.displayHeight

///|
pub extern "js" fn VideoFrame::get_duration(self : VideoFrame) -> Int64? =
  #| (self) => self.duration

///|
pub extern "js" fn VideoFrame::get_timestamp(self : VideoFrame) -> Int64 =
  #| (self) => self.timestamp

///|
pub extern "js" fn VideoFrame::get_color_space(
  self : VideoFrame,
) -> VideoColorSpace =
  #| (self) => self.colorSpace

///|
pub extern "js" fn VideoFrame::metadata(
  self : VideoFrame,
) -> VideoFrameMetadata =
  #| (self) => self.metadata()

///|
pub extern "js" fn VideoFrame::allocation_size(self : VideoFrame) -> Int =
  #| (self) => self.allocationSize()

///|
pub extern "js" fn VideoFrame::allocation_size_with_options(
  self : VideoFrame,
  options : VideoFrameCopyToOptions,
) -> Int =
  #| (self, options) => self.allocationSize(options)

///|
pub extern "js" fn VideoFrame::copy_to(
  self : VideoFrame,
  destination : AllowSharedBufferSource,
) -> Promise[Unit] =
  #| (self, destination) => self.copyTo(destination)

///|
pub extern "js" fn VideoFrame::copy_to_with_options(
  self : VideoFrame,
  destination : AllowSharedBufferSource,
  options : VideoFrameCopyToOptions,
) -> Promise[Unit] =
  #| (self, destination, options) => self.copyTo(destination, options)

///|
pub extern "js" fn VideoFrame::clone(self : VideoFrame) -> VideoFrame =
  #| (self) => self.clone()

///|
pub extern "js" fn VideoFrame::close(self : VideoFrame) -> Unit =
  #| (self) => self.close()

///|
/// VideoColorSpace interface
pub type VideoColorSpace

///|
pub extern "js" fn VideoColorSpace::to_js_value(
  self : VideoColorSpace,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn VideoColorSpace::new(
  init_ : VideoColorSpaceInit,
) -> VideoColorSpace =
  #| (init_) => new VideoColorSpace(init_)

///|
pub extern "js" fn VideoColorSpace::get_primaries(
  self : VideoColorSpace,
) -> VideoColorPrimaries? =
  #| (self) => self.primaries

///|
pub extern "js" fn VideoColorSpace::get_transfer(
  self : VideoColorSpace,
) -> VideoTransferCharacteristics? =
  #| (self) => self.transfer

///|
pub extern "js" fn VideoColorSpace::get_matrix(
  self : VideoColorSpace,
) -> VideoMatrixCoefficients? =
  #| (self) => self.matrix

///|
pub extern "js" fn VideoColorSpace::get_full_range(
  self : VideoColorSpace,
) -> Bool? =
  #| (self) => self.fullRange

///|
pub extern "js" fn VideoColorSpace::to_j_s_o_n(
  self : VideoColorSpace,
) -> VideoColorSpaceInit =
  #| (self) => self.toJSON()

///|
/// ImageDecoder interface
pub type ImageDecoder

///|
pub extern "js" fn ImageDecoder::to_js_value(self : ImageDecoder) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn ImageDecoder::new(init_ : ImageDecoderInit) -> ImageDecoder =
  #| (init_) => new ImageDecoder(init_)

///|
pub extern "js" fn ImageDecoder::get_type(self : ImageDecoder) -> String =
  #| (self) => self.type

///|
pub extern "js" fn ImageDecoder::get_complete(self : ImageDecoder) -> Bool =
  #| (self) => self.complete

///|
pub extern "js" fn ImageDecoder::get_completed(
  self : ImageDecoder,
) -> Promise[Unit] =
  #| (self) => self.completed

///|
pub extern "js" fn ImageDecoder::get_tracks(
  self : ImageDecoder,
) -> ImageTrackList =
  #| (self) => self.tracks

///|
pub extern "js" fn ImageDecoder::decode(
  self : ImageDecoder,
) -> Promise[ImageDecodeResult] =
  #| (self) => self.decode()

///|
pub extern "js" fn ImageDecoder::decode_with_options(
  self : ImageDecoder,
  options : ImageDecodeOptions,
) -> Promise[ImageDecodeResult] =
  #| (self, options) => self.decode(options)

///|
pub extern "js" fn ImageDecoder::reset(self : ImageDecoder) -> Unit =
  #| (self) => self.reset()

///|
pub extern "js" fn ImageDecoder::close(self : ImageDecoder) -> Unit =
  #| (self) => self.close()

///|
pub extern "js" fn ImageDecoder::is_type_supported(
  type_ : String,
) -> Promise[Bool] =
  #| (type_) => ImageDecoder.isTypeSupported(type_)

///|
/// ImageTrackList interface
pub type ImageTrackList

///|
pub extern "js" fn ImageTrackList::to_js_value(
  self : ImageTrackList,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn ImageTrackList::get(
  self : ImageTrackList,
  index : Int,
) -> ImageTrack =
  #| (self, index) => self[index]

///|
pub extern "js" fn ImageTrackList::get_ready(
  self : ImageTrackList,
) -> Promise[Unit] =
  #| (self) => self.ready

///|
pub extern "js" fn ImageTrackList::get_length(self : ImageTrackList) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn ImageTrackList::get_selected_index(
  self : ImageTrackList,
) -> Int =
  #| (self) => self.selectedIndex

///|
pub extern "js" fn ImageTrackList::get_selected_track(
  self : ImageTrackList,
) -> ImageTrack? =
  #| (self) => self.selectedTrack

///|
/// ImageTrack interface
pub type ImageTrack

///|
pub extern "js" fn ImageTrack::to_js_value(self : ImageTrack) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn ImageTrack::get_animated(self : ImageTrack) -> Bool =
  #| (self) => self.animated

///|
pub extern "js" fn ImageTrack::get_frame_count(self : ImageTrack) -> Int =
  #| (self) => self.frameCount

///|
pub extern "js" fn ImageTrack::get_repetition_count(
  self : ImageTrack,
) -> Double =
  #| (self) => self.repetitionCount

///|
pub extern "js" fn ImageTrack::get_selected(self : ImageTrack) -> Bool =
  #| (self) => self.selected

///|
pub extern "js" fn ImageTrack::set_selected(
  self : ImageTrack,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.selected = value }
