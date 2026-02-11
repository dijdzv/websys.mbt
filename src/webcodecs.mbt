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
/// Flatten Option[ImageBufferSource] to AllowSharedBufferSource?
pub fn ImageBufferSource::bind_as_allow_shared_buffer_source(
  value : ImageBufferSource?,
) -> AllowSharedBufferSource? {
  match value {
    Some(v) => v.as_allow_shared_buffer_source()
    None => None
  }
}

///|
/// Flatten Option[ImageBufferSource] to ReadableStream?
pub fn ImageBufferSource::bind_as_readable_stream(
  value : ImageBufferSource?,
) -> ReadableStream? {
  match value {
    Some(v) => v.as_readable_stream()
    None => None
  }
}

///|
/// HardwareAcceleration enum
pub(all) enum HardwareAcceleration {
  NoPreference
  PreferHardware
  PreferSoftware
} derive(Eq, Show)

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
} derive(Eq, Show)

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
} derive(Eq, Show)

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
} derive(Eq, Show)

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
} derive(Eq, Show)

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
} derive(Eq, Show)

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
} derive(Eq, Show)

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
} derive(Eq, Show)

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
} derive(Eq, Show)

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
} derive(Eq, Show)

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
} derive(Eq, Show)

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
} derive(Eq, Show)

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
  #| (handler) => (a0) => handler(a0)

///|
/// VideoFrameOutputCallback callback interface
pub type VideoFrameOutputCallback

///|
/// Create VideoFrameOutputCallback from a MoonBit function
pub extern "js" fn VideoFrameOutputCallback::from_fn(
  handler : (VideoFrame) -> Unit,
) -> VideoFrameOutputCallback =
  #| (handler) => (a0) => handler(a0)

///|
/// EncodedAudioChunkOutputCallback callback interface
pub type EncodedAudioChunkOutputCallback

///|
/// Create EncodedAudioChunkOutputCallback from a MoonBit function
pub extern "js" fn EncodedAudioChunkOutputCallback::from_fn(
  handler : (EncodedAudioChunk, EncodedAudioChunkMetadata) -> Unit,
) -> EncodedAudioChunkOutputCallback =
  #| (handler) => (a0, a1) => handler(a0, a1)

///|
/// EncodedVideoChunkOutputCallback callback interface
pub type EncodedVideoChunkOutputCallback

///|
/// Create EncodedVideoChunkOutputCallback from a MoonBit function
pub extern "js" fn EncodedVideoChunkOutputCallback::from_fn(
  handler : (EncodedVideoChunk, EncodedVideoChunkMetadata) -> Unit,
) -> EncodedVideoChunkOutputCallback =
  #| (handler) => (a0, a1) => handler(a0, a1)

///|
/// WebCodecsErrorCallback callback interface
pub type WebCodecsErrorCallback

///|
/// Create WebCodecsErrorCallback from a MoonBit function
pub extern "js" fn WebCodecsErrorCallback::from_fn(
  handler : (DOMException) -> Unit,
) -> WebCodecsErrorCallback =
  #| (handler) => (a0) => handler(a0)

///|
/// AudioDecoderInit dictionary
pub(all) struct AudioDecoderInit {
  output : AudioDataOutputCallback
  error : WebCodecsErrorCallback
}

///|
/// Create a new AudioDecoderInit
pub fn AudioDecoderInit::new(
  output~ : AudioDataOutputCallback,
  error~ : WebCodecsErrorCallback,
) -> AudioDecoderInit {
  AudioDecoderInit::{ output, error }
}

///|
extern "js" fn AudioDecoderInit::to_js_ffi(self : AudioDecoderInit) -> JsValue =
  #| (self) => ({
  #|   output: self.output,
  #|   error: self.error
  #| })

///|
/// Convert to JsValue
pub fn AudioDecoderInit::to_js(self : AudioDecoderInit) -> JsValue {
  AudioDecoderInit::to_js_ffi(self)
}

///|
extern "js" fn AudioDecoderInit::from_js_ffi(
  value : JsValue,
) -> AudioDecoderInit =
  #| (v) => ({
  #|   output: v.output,
  #|   error: v.error
  #| })

///|
/// Convert from JsValue
pub fn AudioDecoderInit::from_js(value : JsValue) -> AudioDecoderInit {
  AudioDecoderInit::from_js_ffi(value)
}

///|
/// VideoDecoderInit dictionary
pub(all) struct VideoDecoderInit {
  output : VideoFrameOutputCallback
  error : WebCodecsErrorCallback
}

///|
/// Create a new VideoDecoderInit
pub fn VideoDecoderInit::new(
  output~ : VideoFrameOutputCallback,
  error~ : WebCodecsErrorCallback,
) -> VideoDecoderInit {
  VideoDecoderInit::{ output, error }
}

///|
extern "js" fn VideoDecoderInit::to_js_ffi(self : VideoDecoderInit) -> JsValue =
  #| (self) => ({
  #|   output: self.output,
  #|   error: self.error
  #| })

///|
/// Convert to JsValue
pub fn VideoDecoderInit::to_js(self : VideoDecoderInit) -> JsValue {
  VideoDecoderInit::to_js_ffi(self)
}

///|
extern "js" fn VideoDecoderInit::from_js_ffi(
  value : JsValue,
) -> VideoDecoderInit =
  #| (v) => ({
  #|   output: v.output,
  #|   error: v.error
  #| })

///|
/// Convert from JsValue
pub fn VideoDecoderInit::from_js(value : JsValue) -> VideoDecoderInit {
  VideoDecoderInit::from_js_ffi(value)
}

///|
/// AudioEncoderInit dictionary
pub(all) struct AudioEncoderInit {
  output : EncodedAudioChunkOutputCallback
  error : WebCodecsErrorCallback
}

///|
/// Create a new AudioEncoderInit
pub fn AudioEncoderInit::new(
  output~ : EncodedAudioChunkOutputCallback,
  error~ : WebCodecsErrorCallback,
) -> AudioEncoderInit {
  AudioEncoderInit::{ output, error }
}

///|
extern "js" fn AudioEncoderInit::to_js_ffi(self : AudioEncoderInit) -> JsValue =
  #| (self) => ({
  #|   output: self.output,
  #|   error: self.error
  #| })

///|
/// Convert to JsValue
pub fn AudioEncoderInit::to_js(self : AudioEncoderInit) -> JsValue {
  AudioEncoderInit::to_js_ffi(self)
}

///|
extern "js" fn AudioEncoderInit::from_js_ffi(
  value : JsValue,
) -> AudioEncoderInit =
  #| (v) => ({
  #|   output: v.output,
  #|   error: v.error
  #| })

///|
/// Convert from JsValue
pub fn AudioEncoderInit::from_js(value : JsValue) -> AudioEncoderInit {
  AudioEncoderInit::from_js_ffi(value)
}

///|
/// EncodedAudioChunkMetadata dictionary
pub(all) struct EncodedAudioChunkMetadata {
  decoderConfig : AudioDecoderConfig?
}

///|
/// Create a new EncodedAudioChunkMetadata with default values
pub fn EncodedAudioChunkMetadata::default() -> EncodedAudioChunkMetadata {
  EncodedAudioChunkMetadata::{ decoderConfig: None }
}

///|
extern "js" fn EncodedAudioChunkMetadata::to_js_ffi(
  self : EncodedAudioChunkMetadata,
) -> JsValue =
  #| (self) => ({
  #|   decoderConfig: ((() => { const v = self.decoderConfig; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn EncodedAudioChunkMetadata::to_js(
  self : EncodedAudioChunkMetadata,
) -> JsValue {
  EncodedAudioChunkMetadata::to_js_ffi(self)
}

///|
extern "js" fn EncodedAudioChunkMetadata::from_js_ffi(
  value : JsValue,
) -> EncodedAudioChunkMetadata =
  #| (v) => ({
  #|   decoderConfig: (v.decoderConfig === undefined ? { $tag: 0 } : { $tag: 1, _0: v.decoderConfig })
  #| })

///|
/// Convert from JsValue
pub fn EncodedAudioChunkMetadata::from_js(
  value : JsValue,
) -> EncodedAudioChunkMetadata {
  EncodedAudioChunkMetadata::from_js_ffi(value)
}

///|
/// VideoEncoderInit dictionary
pub(all) struct VideoEncoderInit {
  output : EncodedVideoChunkOutputCallback
  error : WebCodecsErrorCallback
}

///|
/// Create a new VideoEncoderInit
pub fn VideoEncoderInit::new(
  output~ : EncodedVideoChunkOutputCallback,
  error~ : WebCodecsErrorCallback,
) -> VideoEncoderInit {
  VideoEncoderInit::{ output, error }
}

///|
extern "js" fn VideoEncoderInit::to_js_ffi(self : VideoEncoderInit) -> JsValue =
  #| (self) => ({
  #|   output: self.output,
  #|   error: self.error
  #| })

///|
/// Convert to JsValue
pub fn VideoEncoderInit::to_js(self : VideoEncoderInit) -> JsValue {
  VideoEncoderInit::to_js_ffi(self)
}

///|
extern "js" fn VideoEncoderInit::from_js_ffi(
  value : JsValue,
) -> VideoEncoderInit =
  #| (v) => ({
  #|   output: v.output,
  #|   error: v.error
  #| })

///|
/// Convert from JsValue
pub fn VideoEncoderInit::from_js(value : JsValue) -> VideoEncoderInit {
  VideoEncoderInit::from_js_ffi(value)
}

///|
/// EncodedVideoChunkMetadata dictionary
pub(all) struct EncodedVideoChunkMetadata {
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
extern "js" fn EncodedVideoChunkMetadata::to_js_ffi(
  self : EncodedVideoChunkMetadata,
) -> JsValue =
  #| (self) => ({
  #|   decoderConfig: ((() => { const v = self.decoderConfig; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   svc: ((() => { const v = self.svc; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   alphaSideData: ((() => { const v = self.alphaSideData; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })())
  #| })

///|
/// Convert to JsValue
pub fn EncodedVideoChunkMetadata::to_js(
  self : EncodedVideoChunkMetadata,
) -> JsValue {
  EncodedVideoChunkMetadata::to_js_ffi(self)
}

///|
extern "js" fn EncodedVideoChunkMetadata::from_js_ffi(
  value : JsValue,
) -> EncodedVideoChunkMetadata =
  #| (v) => ({
  #|   decoderConfig: (v.decoderConfig === undefined ? { $tag: 0 } : { $tag: 1, _0: v.decoderConfig }),
  #|   svc: (v.svc === undefined ? { $tag: 0 } : { $tag: 1, _0: v.svc }),
  #|   alphaSideData: (v.alphaSideData === undefined ? { $tag: 0 } : { $tag: 1, _0: v.alphaSideData })
  #| })

///|
/// Convert from JsValue
pub fn EncodedVideoChunkMetadata::from_js(
  value : JsValue,
) -> EncodedVideoChunkMetadata {
  EncodedVideoChunkMetadata::from_js_ffi(value)
}

///|
/// SvcOutputMetadata dictionary
pub(all) struct SvcOutputMetadata {
  temporalLayerId : Int?
}

///|
/// Create a new SvcOutputMetadata with default values
pub fn SvcOutputMetadata::default() -> SvcOutputMetadata {
  SvcOutputMetadata::{ temporalLayerId: None }
}

///|
extern "js" fn SvcOutputMetadata::to_js_ffi(
  self : SvcOutputMetadata,
) -> JsValue =
  #| (self) => ({
  #|   temporalLayerId: self.temporalLayerId
  #| })

///|
/// Convert to JsValue
pub fn SvcOutputMetadata::to_js(self : SvcOutputMetadata) -> JsValue {
  SvcOutputMetadata::to_js_ffi(self)
}

///|
extern "js" fn SvcOutputMetadata::from_js_ffi(
  value : JsValue,
) -> SvcOutputMetadata =
  #| (v) => ({
  #|   temporalLayerId: v.temporalLayerId
  #| })

///|
/// Convert from JsValue
pub fn SvcOutputMetadata::from_js(value : JsValue) -> SvcOutputMetadata {
  SvcOutputMetadata::from_js_ffi(value)
}

///|
/// AudioDecoderSupport dictionary
pub(all) struct AudioDecoderSupport {
  supported : Bool?
  config : AudioDecoderConfig?
}

///|
/// Create a new AudioDecoderSupport with default values
pub fn AudioDecoderSupport::default() -> AudioDecoderSupport {
  AudioDecoderSupport::{ supported: None, config: None }
}

///|
extern "js" fn AudioDecoderSupport::to_js_ffi(
  self : AudioDecoderSupport,
) -> JsValue =
  #| (self) => ({
  #|   supported: (self.supported === -1 ? undefined : self.supported),
  #|   config: ((() => { const v = self.config; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn AudioDecoderSupport::to_js(self : AudioDecoderSupport) -> JsValue {
  AudioDecoderSupport::to_js_ffi(self)
}

///|
extern "js" fn AudioDecoderSupport::from_js_ffi(
  value : JsValue,
) -> AudioDecoderSupport =
  #| (v) => ({
  #|   supported: (v.supported === undefined ? -1 : v.supported),
  #|   config: (v.config === undefined ? { $tag: 0 } : { $tag: 1, _0: v.config })
  #| })

///|
/// Convert from JsValue
pub fn AudioDecoderSupport::from_js(value : JsValue) -> AudioDecoderSupport {
  AudioDecoderSupport::from_js_ffi(value)
}

///|
/// VideoDecoderSupport dictionary
pub(all) struct VideoDecoderSupport {
  supported : Bool?
  config : VideoDecoderConfig?
}

///|
/// Create a new VideoDecoderSupport with default values
pub fn VideoDecoderSupport::default() -> VideoDecoderSupport {
  VideoDecoderSupport::{ supported: None, config: None }
}

///|
extern "js" fn VideoDecoderSupport::to_js_ffi(
  self : VideoDecoderSupport,
) -> JsValue =
  #| (self) => ({
  #|   supported: (self.supported === -1 ? undefined : self.supported),
  #|   config: ((() => { const v = self.config; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn VideoDecoderSupport::to_js(self : VideoDecoderSupport) -> JsValue {
  VideoDecoderSupport::to_js_ffi(self)
}

///|
extern "js" fn VideoDecoderSupport::from_js_ffi(
  value : JsValue,
) -> VideoDecoderSupport =
  #| (v) => ({
  #|   supported: (v.supported === undefined ? -1 : v.supported),
  #|   config: (v.config === undefined ? { $tag: 0 } : { $tag: 1, _0: v.config })
  #| })

///|
/// Convert from JsValue
pub fn VideoDecoderSupport::from_js(value : JsValue) -> VideoDecoderSupport {
  VideoDecoderSupport::from_js_ffi(value)
}

///|
/// AudioEncoderSupport dictionary
pub(all) struct AudioEncoderSupport {
  supported : Bool?
  config : AudioEncoderConfig?
}

///|
/// Create a new AudioEncoderSupport with default values
pub fn AudioEncoderSupport::default() -> AudioEncoderSupport {
  AudioEncoderSupport::{ supported: None, config: None }
}

///|
extern "js" fn AudioEncoderSupport::to_js_ffi(
  self : AudioEncoderSupport,
) -> JsValue =
  #| (self) => ({
  #|   supported: (self.supported === -1 ? undefined : self.supported),
  #|   config: ((() => { const v = self.config; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn AudioEncoderSupport::to_js(self : AudioEncoderSupport) -> JsValue {
  AudioEncoderSupport::to_js_ffi(self)
}

///|
extern "js" fn AudioEncoderSupport::from_js_ffi(
  value : JsValue,
) -> AudioEncoderSupport =
  #| (v) => ({
  #|   supported: (v.supported === undefined ? -1 : v.supported),
  #|   config: (v.config === undefined ? { $tag: 0 } : { $tag: 1, _0: v.config })
  #| })

///|
/// Convert from JsValue
pub fn AudioEncoderSupport::from_js(value : JsValue) -> AudioEncoderSupport {
  AudioEncoderSupport::from_js_ffi(value)
}

///|
/// VideoEncoderSupport dictionary
pub(all) struct VideoEncoderSupport {
  supported : Bool?
  config : VideoEncoderConfig?
}

///|
/// Create a new VideoEncoderSupport with default values
pub fn VideoEncoderSupport::default() -> VideoEncoderSupport {
  VideoEncoderSupport::{ supported: None, config: None }
}

///|
extern "js" fn VideoEncoderSupport::to_js_ffi(
  self : VideoEncoderSupport,
) -> JsValue =
  #| (self) => ({
  #|   supported: (self.supported === -1 ? undefined : self.supported),
  #|   config: ((() => { const v = self.config; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn VideoEncoderSupport::to_js(self : VideoEncoderSupport) -> JsValue {
  VideoEncoderSupport::to_js_ffi(self)
}

///|
extern "js" fn VideoEncoderSupport::from_js_ffi(
  value : JsValue,
) -> VideoEncoderSupport =
  #| (v) => ({
  #|   supported: (v.supported === undefined ? -1 : v.supported),
  #|   config: (v.config === undefined ? { $tag: 0 } : { $tag: 1, _0: v.config })
  #| })

///|
/// Convert from JsValue
pub fn VideoEncoderSupport::from_js(value : JsValue) -> VideoEncoderSupport {
  VideoEncoderSupport::from_js_ffi(value)
}

///|
/// AudioDecoderConfig dictionary
pub(all) struct AudioDecoderConfig {
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
extern "js" fn AudioDecoderConfig::to_js_ffi(
  self : AudioDecoderConfig,
) -> JsValue =
  #| (self) => ({
  #|   codec: self.codec,
  #|   sampleRate: self.sampleRate,
  #|   numberOfChannels: self.numberOfChannels,
  #|   description: ((() => { const v = self.description; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })())
  #| })

///|
/// Convert to JsValue
pub fn AudioDecoderConfig::to_js(self : AudioDecoderConfig) -> JsValue {
  AudioDecoderConfig::to_js_ffi(self)
}

///|
extern "js" fn AudioDecoderConfig::from_js_ffi(
  value : JsValue,
) -> AudioDecoderConfig =
  #| (v) => ({
  #|   codec: v.codec,
  #|   sampleRate: v.sampleRate,
  #|   numberOfChannels: v.numberOfChannels,
  #|   description: (v.description === undefined ? { $tag: 0 } : { $tag: 1, _0: v.description })
  #| })

///|
/// Convert from JsValue
pub fn AudioDecoderConfig::from_js(value : JsValue) -> AudioDecoderConfig {
  AudioDecoderConfig::from_js_ffi(value)
}

///|
/// VideoDecoderConfig dictionary
pub(all) struct VideoDecoderConfig {
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
extern "js" fn VideoDecoderConfig::to_js_ffi(
  self : VideoDecoderConfig,
) -> JsValue =
  #| (self) => ({
  #|   codec: self.codec,
  #|   description: ((() => { const v = self.description; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   codedWidth: self.codedWidth,
  #|   codedHeight: self.codedHeight,
  #|   displayAspectWidth: self.displayAspectWidth,
  #|   displayAspectHeight: self.displayAspectHeight,
  #|   colorSpace: ((() => { const v = self.colorSpace; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   hardwareAcceleration: ((() => { const v = self.hardwareAcceleration; if (v === undefined) return undefined; return ['no-preference', 'prefer-hardware', 'prefer-software'][v]; })()),
  #|   optimizeForLatency: (self.optimizeForLatency === -1 ? undefined : self.optimizeForLatency),
  #|   rotation: self.rotation,
  #|   flip: (self.flip === -1 ? undefined : self.flip)
  #| })

///|
/// Convert to JsValue
pub fn VideoDecoderConfig::to_js(self : VideoDecoderConfig) -> JsValue {
  VideoDecoderConfig::to_js_ffi(self)
}

///|
extern "js" fn VideoDecoderConfig::from_js_ffi(
  value : JsValue,
) -> VideoDecoderConfig =
  #| (v) => ({
  #|   codec: v.codec,
  #|   description: (v.description === undefined ? { $tag: 0 } : { $tag: 1, _0: v.description }),
  #|   codedWidth: v.codedWidth,
  #|   codedHeight: v.codedHeight,
  #|   displayAspectWidth: v.displayAspectWidth,
  #|   displayAspectHeight: v.displayAspectHeight,
  #|   colorSpace: (v.colorSpace === undefined ? { $tag: 0 } : { $tag: 1, _0: v.colorSpace }),
  #|   hardwareAcceleration: (v.hardwareAcceleration === undefined ? undefined : ['no-preference', 'prefer-hardware', 'prefer-software'].indexOf(v.hardwareAcceleration)),
  #|   optimizeForLatency: (v.optimizeForLatency === undefined ? -1 : v.optimizeForLatency),
  #|   rotation: v.rotation,
  #|   flip: (v.flip === undefined ? -1 : v.flip)
  #| })

///|
/// Convert from JsValue
pub fn VideoDecoderConfig::from_js(value : JsValue) -> VideoDecoderConfig {
  VideoDecoderConfig::from_js_ffi(value)
}

///|
/// EncodedAudioChunkInit dictionary
pub(all) struct EncodedAudioChunkInit {
  type_ : EncodedAudioChunkType
  timestamp : Int64
  duration : Int64?
  data : AllowSharedBufferSource
  transfer : Array[ArrayBuffer]?
}

///|
/// Create a new EncodedAudioChunkInit
pub fn EncodedAudioChunkInit::new(
  type_~ : EncodedAudioChunkType,
  data~ : AllowSharedBufferSource,
) -> EncodedAudioChunkInit {
  EncodedAudioChunkInit::{
    type_,
    timestamp: 0,
    duration: None,
    data,
    transfer: None,
  }
}

///|
extern "js" fn EncodedAudioChunkInit::to_js_ffi(
  self : EncodedAudioChunkInit,
) -> JsValue =
  #| (self) => ({
  #|   type: ['key', 'delta'][self.type_],
  #|   timestamp: self.timestamp,
  #|   duration: self.duration,
  #|   data: self.data.to_js_value(),
  #|   transfer: ((() => { const v = self.transfer; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn EncodedAudioChunkInit::to_js(self : EncodedAudioChunkInit) -> JsValue {
  EncodedAudioChunkInit::to_js_ffi(self)
}

///|
extern "js" fn EncodedAudioChunkInit::from_js_ffi(
  value : JsValue,
) -> EncodedAudioChunkInit =
  #| (v) => ({
  #|   type_: ['key', 'delta'].indexOf(v.type),
  #|   timestamp: v.timestamp,
  #|   duration: v.duration,
  #|   data: v.data,
  #|   transfer: (v.transfer === undefined ? { $tag: 0 } : { $tag: 1, _0: v.transfer })
  #| })

///|
/// Convert from JsValue
pub fn EncodedAudioChunkInit::from_js(value : JsValue) -> EncodedAudioChunkInit {
  EncodedAudioChunkInit::from_js_ffi(value)
}

///|
/// EncodedVideoChunkInit dictionary
pub(all) struct EncodedVideoChunkInit {
  type_ : EncodedVideoChunkType
  timestamp : Int64
  duration : Int64?
  data : AllowSharedBufferSource
  transfer : Array[ArrayBuffer]?
}

///|
/// Create a new EncodedVideoChunkInit
pub fn EncodedVideoChunkInit::new(
  type_~ : EncodedVideoChunkType,
  data~ : AllowSharedBufferSource,
) -> EncodedVideoChunkInit {
  EncodedVideoChunkInit::{
    type_,
    timestamp: 0,
    duration: None,
    data,
    transfer: None,
  }
}

///|
extern "js" fn EncodedVideoChunkInit::to_js_ffi(
  self : EncodedVideoChunkInit,
) -> JsValue =
  #| (self) => ({
  #|   type: ['key', 'delta'][self.type_],
  #|   timestamp: self.timestamp,
  #|   duration: self.duration,
  #|   data: self.data.to_js_value(),
  #|   transfer: ((() => { const v = self.transfer; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn EncodedVideoChunkInit::to_js(self : EncodedVideoChunkInit) -> JsValue {
  EncodedVideoChunkInit::to_js_ffi(self)
}

///|
extern "js" fn EncodedVideoChunkInit::from_js_ffi(
  value : JsValue,
) -> EncodedVideoChunkInit =
  #| (v) => ({
  #|   type_: ['key', 'delta'].indexOf(v.type),
  #|   timestamp: v.timestamp,
  #|   duration: v.duration,
  #|   data: v.data,
  #|   transfer: (v.transfer === undefined ? { $tag: 0 } : { $tag: 1, _0: v.transfer })
  #| })

///|
/// Convert from JsValue
pub fn EncodedVideoChunkInit::from_js(value : JsValue) -> EncodedVideoChunkInit {
  EncodedVideoChunkInit::from_js_ffi(value)
}

///|
/// AudioDataInit dictionary
pub(all) struct AudioDataInit {
  format : AudioSampleFormat
  sampleRate : Double
  numberOfFrames : Int
  numberOfChannels : Int
  timestamp : Int64
  data : BufferSource
  transfer : Array[ArrayBuffer]?
}

///|
/// Create a new AudioDataInit
pub fn AudioDataInit::new(
  format~ : AudioSampleFormat,
  data~ : BufferSource,
) -> AudioDataInit {
  AudioDataInit::{
    format,
    sampleRate: 0,
    numberOfFrames: 0,
    numberOfChannels: 0,
    timestamp: 0,
    data,
    transfer: None,
  }
}

///|
extern "js" fn AudioDataInit::to_js_ffi(self : AudioDataInit) -> JsValue =
  #| (self) => ({
  #|   format: ['u8', 's16', 's32', 'f32', 'u8-planar', 's16-planar', 's32-planar', 'f32-planar'][self.format],
  #|   sampleRate: self.sampleRate,
  #|   numberOfFrames: self.numberOfFrames,
  #|   numberOfChannels: self.numberOfChannels,
  #|   timestamp: self.timestamp,
  #|   data: self.data.to_js_value(),
  #|   transfer: ((() => { const v = self.transfer; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn AudioDataInit::to_js(self : AudioDataInit) -> JsValue {
  AudioDataInit::to_js_ffi(self)
}

///|
extern "js" fn AudioDataInit::from_js_ffi(value : JsValue) -> AudioDataInit =
  #| (v) => ({
  #|   format: ['u8', 's16', 's32', 'f32', 'u8-planar', 's16-planar', 's32-planar', 'f32-planar'].indexOf(v.format),
  #|   sampleRate: v.sampleRate,
  #|   numberOfFrames: v.numberOfFrames,
  #|   numberOfChannels: v.numberOfChannels,
  #|   timestamp: v.timestamp,
  #|   data: v.data,
  #|   transfer: (v.transfer === undefined ? { $tag: 0 } : { $tag: 1, _0: v.transfer })
  #| })

///|
/// Convert from JsValue
pub fn AudioDataInit::from_js(value : JsValue) -> AudioDataInit {
  AudioDataInit::from_js_ffi(value)
}

///|
/// AudioDataCopyToOptions dictionary
pub(all) struct AudioDataCopyToOptions {
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
extern "js" fn AudioDataCopyToOptions::to_js_ffi(
  self : AudioDataCopyToOptions,
) -> JsValue =
  #| (self) => ({
  #|   planeIndex: self.planeIndex,
  #|   frameOffset: self.frameOffset,
  #|   frameCount: self.frameCount,
  #|   format: ((() => { const v = self.format; if (v === undefined) return undefined; return ['u8', 's16', 's32', 'f32', 'u8-planar', 's16-planar', 's32-planar', 'f32-planar'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn AudioDataCopyToOptions::to_js(self : AudioDataCopyToOptions) -> JsValue {
  AudioDataCopyToOptions::to_js_ffi(self)
}

///|
extern "js" fn AudioDataCopyToOptions::from_js_ffi(
  value : JsValue,
) -> AudioDataCopyToOptions =
  #| (v) => ({
  #|   planeIndex: v.planeIndex,
  #|   frameOffset: v.frameOffset,
  #|   frameCount: v.frameCount,
  #|   format: (v.format === undefined ? undefined : ['u8', 's16', 's32', 'f32', 'u8-planar', 's16-planar', 's32-planar', 'f32-planar'].indexOf(v.format))
  #| })

///|
/// Convert from JsValue
pub fn AudioDataCopyToOptions::from_js(
  value : JsValue,
) -> AudioDataCopyToOptions {
  AudioDataCopyToOptions::from_js_ffi(value)
}

///|
/// VideoFrameInit dictionary
pub(all) struct VideoFrameInit {
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
extern "js" fn VideoFrameInit::to_js_ffi(self : VideoFrameInit) -> JsValue =
  #| (self) => ({
  #|   duration: self.duration,
  #|   timestamp: self.timestamp,
  #|   alpha: ((() => { const v = self.alpha; if (v === undefined) return undefined; return ['keep', 'discard'][v]; })()),
  #|   visibleRect: ((() => { const v = self.visibleRect; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   rotation: self.rotation,
  #|   flip: (self.flip === -1 ? undefined : self.flip),
  #|   displayWidth: self.displayWidth,
  #|   displayHeight: self.displayHeight,
  #|   metadata: ((() => { const v = self.metadata; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn VideoFrameInit::to_js(self : VideoFrameInit) -> JsValue {
  VideoFrameInit::to_js_ffi(self)
}

///|
extern "js" fn VideoFrameInit::from_js_ffi(value : JsValue) -> VideoFrameInit =
  #| (v) => ({
  #|   duration: v.duration,
  #|   timestamp: v.timestamp,
  #|   alpha: (v.alpha === undefined ? undefined : ['keep', 'discard'].indexOf(v.alpha)),
  #|   visibleRect: (v.visibleRect === undefined ? { $tag: 0 } : { $tag: 1, _0: v.visibleRect }),
  #|   rotation: v.rotation,
  #|   flip: (v.flip === undefined ? -1 : v.flip),
  #|   displayWidth: v.displayWidth,
  #|   displayHeight: v.displayHeight,
  #|   metadata: (v.metadata === undefined ? { $tag: 0 } : { $tag: 1, _0: v.metadata })
  #| })

///|
/// Convert from JsValue
pub fn VideoFrameInit::from_js(value : JsValue) -> VideoFrameInit {
  VideoFrameInit::from_js_ffi(value)
}

///|
/// VideoFrameBufferInit dictionary
pub(all) struct VideoFrameBufferInit {
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
/// Create a new VideoFrameBufferInit
pub fn VideoFrameBufferInit::new(
  format~ : VideoPixelFormat,
) -> VideoFrameBufferInit {
  VideoFrameBufferInit::{
    format,
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
extern "js" fn VideoFrameBufferInit::to_js_ffi(
  self : VideoFrameBufferInit,
) -> JsValue =
  #| (self) => ({
  #|   format: ['I420', 'I420P10', 'I420P12', 'I420A', 'I420AP10', 'I420AP12', 'I422', 'I422P10', 'I422P12', 'I422A', 'I422AP10', 'I422AP12', 'I444', 'I444P10', 'I444P12', 'I444A', 'I444AP10', 'I444AP12', 'NV12', 'RGBA', 'RGBX', 'BGRA', 'BGRX'][self.format],
  #|   codedWidth: self.codedWidth,
  #|   codedHeight: self.codedHeight,
  #|   timestamp: self.timestamp,
  #|   duration: self.duration,
  #|   layout: ((() => { const v = self.layout; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   visibleRect: ((() => { const v = self.visibleRect; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   rotation: self.rotation,
  #|   flip: (self.flip === -1 ? undefined : self.flip),
  #|   displayWidth: self.displayWidth,
  #|   displayHeight: self.displayHeight,
  #|   colorSpace: ((() => { const v = self.colorSpace; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   transfer: ((() => { const v = self.transfer; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   metadata: ((() => { const v = self.metadata; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn VideoFrameBufferInit::to_js(self : VideoFrameBufferInit) -> JsValue {
  VideoFrameBufferInit::to_js_ffi(self)
}

///|
extern "js" fn VideoFrameBufferInit::from_js_ffi(
  value : JsValue,
) -> VideoFrameBufferInit =
  #| (v) => ({
  #|   format: ['I420', 'I420P10', 'I420P12', 'I420A', 'I420AP10', 'I420AP12', 'I422', 'I422P10', 'I422P12', 'I422A', 'I422AP10', 'I422AP12', 'I444', 'I444P10', 'I444P12', 'I444A', 'I444AP10', 'I444AP12', 'NV12', 'RGBA', 'RGBX', 'BGRA', 'BGRX'].indexOf(v.format),
  #|   codedWidth: v.codedWidth,
  #|   codedHeight: v.codedHeight,
  #|   timestamp: v.timestamp,
  #|   duration: v.duration,
  #|   layout: (v.layout === undefined ? { $tag: 0 } : { $tag: 1, _0: v.layout }),
  #|   visibleRect: (v.visibleRect === undefined ? { $tag: 0 } : { $tag: 1, _0: v.visibleRect }),
  #|   rotation: v.rotation,
  #|   flip: (v.flip === undefined ? -1 : v.flip),
  #|   displayWidth: v.displayWidth,
  #|   displayHeight: v.displayHeight,
  #|   colorSpace: (v.colorSpace === undefined ? { $tag: 0 } : { $tag: 1, _0: v.colorSpace }),
  #|   transfer: (v.transfer === undefined ? { $tag: 0 } : { $tag: 1, _0: v.transfer }),
  #|   metadata: (v.metadata === undefined ? { $tag: 0 } : { $tag: 1, _0: v.metadata })
  #| })

///|
/// Convert from JsValue
pub fn VideoFrameBufferInit::from_js(value : JsValue) -> VideoFrameBufferInit {
  VideoFrameBufferInit::from_js_ffi(value)
}

///|
/// VideoFrameMetadata dictionary
pub(all) struct VideoFrameMetadata {}

///|
/// Create a new VideoFrameMetadata with default values
pub fn VideoFrameMetadata::default() -> VideoFrameMetadata {
  VideoFrameMetadata::{  }
}

///|
extern "js" fn VideoFrameMetadata::to_js_ffi(
  self : VideoFrameMetadata,
) -> JsValue =
  #| (self) => ({
  #| })

///|
/// Convert to JsValue
pub fn VideoFrameMetadata::to_js(self : VideoFrameMetadata) -> JsValue {
  VideoFrameMetadata::to_js_ffi(self)
}

///|
extern "js" fn VideoFrameMetadata::from_js_ffi(
  value : JsValue,
) -> VideoFrameMetadata =
  #| (v) => ({
  #| })

///|
/// Convert from JsValue
pub fn VideoFrameMetadata::from_js(value : JsValue) -> VideoFrameMetadata {
  VideoFrameMetadata::from_js_ffi(value)
}

///|
/// VideoFrameCopyToOptions dictionary
pub(all) struct VideoFrameCopyToOptions {
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
extern "js" fn VideoFrameCopyToOptions::to_js_ffi(
  self : VideoFrameCopyToOptions,
) -> JsValue =
  #| (self) => ({
  #|   rect: ((() => { const v = self.rect; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   layout: ((() => { const v = self.layout; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   format: ((() => { const v = self.format; if (v === undefined) return undefined; return ['I420', 'I420P10', 'I420P12', 'I420A', 'I420AP10', 'I420AP12', 'I422', 'I422P10', 'I422P12', 'I422A', 'I422AP10', 'I422AP12', 'I444', 'I444P10', 'I444P12', 'I444A', 'I444AP10', 'I444AP12', 'NV12', 'RGBA', 'RGBX', 'BGRA', 'BGRX'][v]; })()),
  #|   colorSpace: ((() => { const v = self.colorSpace; if (v === undefined) return undefined; return ['srgb', 'srgb-linear', 'display-p3', 'display-p3-linear'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn VideoFrameCopyToOptions::to_js(
  self : VideoFrameCopyToOptions,
) -> JsValue {
  VideoFrameCopyToOptions::to_js_ffi(self)
}

///|
extern "js" fn VideoFrameCopyToOptions::from_js_ffi(
  value : JsValue,
) -> VideoFrameCopyToOptions =
  #| (v) => ({
  #|   rect: (v.rect === undefined ? { $tag: 0 } : { $tag: 1, _0: v.rect }),
  #|   layout: (v.layout === undefined ? { $tag: 0 } : { $tag: 1, _0: v.layout }),
  #|   format: (v.format === undefined ? undefined : ['I420', 'I420P10', 'I420P12', 'I420A', 'I420AP10', 'I420AP12', 'I422', 'I422P10', 'I422P12', 'I422A', 'I422AP10', 'I422AP12', 'I444', 'I444P10', 'I444P12', 'I444A', 'I444AP10', 'I444AP12', 'NV12', 'RGBA', 'RGBX', 'BGRA', 'BGRX'].indexOf(v.format)),
  #|   colorSpace: (v.colorSpace === undefined ? undefined : ['srgb', 'srgb-linear', 'display-p3', 'display-p3-linear'].indexOf(v.colorSpace))
  #| })

///|
/// Convert from JsValue
pub fn VideoFrameCopyToOptions::from_js(
  value : JsValue,
) -> VideoFrameCopyToOptions {
  VideoFrameCopyToOptions::from_js_ffi(value)
}

///|
/// PlaneLayout dictionary
pub(all) struct PlaneLayout {
  offset : Int
  stride : Int
}

///|
/// Create a new PlaneLayout with default values
pub fn PlaneLayout::default() -> PlaneLayout {
  PlaneLayout::{ offset: 0, stride: 0 }
}

///|
extern "js" fn PlaneLayout::to_js_ffi(self : PlaneLayout) -> JsValue =
  #| (self) => ({
  #|   offset: self.offset,
  #|   stride: self.stride
  #| })

///|
/// Convert to JsValue
pub fn PlaneLayout::to_js(self : PlaneLayout) -> JsValue {
  PlaneLayout::to_js_ffi(self)
}

///|
extern "js" fn PlaneLayout::from_js_ffi(value : JsValue) -> PlaneLayout =
  #| (v) => ({
  #|   offset: v.offset,
  #|   stride: v.stride
  #| })

///|
/// Convert from JsValue
pub fn PlaneLayout::from_js(value : JsValue) -> PlaneLayout {
  PlaneLayout::from_js_ffi(value)
}

///|
/// VideoColorSpaceInit dictionary
pub(all) struct VideoColorSpaceInit {
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
extern "js" fn VideoColorSpaceInit::to_js_ffi(
  self : VideoColorSpaceInit,
) -> JsValue =
  #| (self) => ({
  #|   primaries: ((() => { const v = self.primaries; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return ['bt709', 'bt470bg', 'smpte170m', 'bt2020', 'smpte432'][v._0]; })()),
  #|   transfer: ((() => { const v = self.transfer; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return ['bt709', 'smpte170m', 'iec61966-2-1', 'linear', 'pq', 'hlg'][v._0]; })()),
  #|   matrix: ((() => { const v = self.matrix; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return ['rgb', 'bt709', 'bt470bg', 'smpte170m', 'bt2020-ncl'][v._0]; })()),
  #|   fullRange: ((() => { const v = self.fullRange; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn VideoColorSpaceInit::to_js(self : VideoColorSpaceInit) -> JsValue {
  VideoColorSpaceInit::to_js_ffi(self)
}

///|
extern "js" fn VideoColorSpaceInit::from_js_ffi(
  value : JsValue,
) -> VideoColorSpaceInit =
  #| (v) => ({
  #|   primaries: (v.primaries === undefined ? { $tag: 0 } : v.primaries === null ? { $tag: 1 } : { $tag: 2, _0: ['bt709', 'bt470bg', 'smpte170m', 'bt2020', 'smpte432'].indexOf(v.primaries) }),
  #|   transfer: (v.transfer === undefined ? { $tag: 0 } : v.transfer === null ? { $tag: 1 } : { $tag: 2, _0: ['bt709', 'smpte170m', 'iec61966-2-1', 'linear', 'pq', 'hlg'].indexOf(v.transfer) }),
  #|   matrix: (v.matrix === undefined ? { $tag: 0 } : v.matrix === null ? { $tag: 1 } : { $tag: 2, _0: ['rgb', 'bt709', 'bt470bg', 'smpte170m', 'bt2020-ncl'].indexOf(v.matrix) }),
  #|   fullRange: (v.fullRange === undefined ? { $tag: 0 } : v.fullRange === null ? { $tag: 1 } : { $tag: 2, _0: v.fullRange })
  #| })

///|
/// Convert from JsValue
pub fn VideoColorSpaceInit::from_js(value : JsValue) -> VideoColorSpaceInit {
  VideoColorSpaceInit::from_js_ffi(value)
}

///|
/// ImageDecoderInit dictionary
pub(all) struct ImageDecoderInit {
  type_ : String
  data : ImageBufferSource
  colorSpaceConversion : ColorSpaceConversion?
  desiredWidth : Int?
  desiredHeight : Int?
  preferAnimation : Bool?
  transfer : Array[ArrayBuffer]?
}

///|
/// Create a new ImageDecoderInit
pub fn ImageDecoderInit::new(data~ : ImageBufferSource) -> ImageDecoderInit {
  ImageDecoderInit::{
    type_: "",
    data,
    colorSpaceConversion: None,
    desiredWidth: None,
    desiredHeight: None,
    preferAnimation: None,
    transfer: None,
  }
}

///|
extern "js" fn ImageDecoderInit::to_js_ffi(self : ImageDecoderInit) -> JsValue =
  #| (self) => ({
  #|   type: self.type_,
  #|   data: self.data.to_js_value(),
  #|   colorSpaceConversion: ((() => { const v = self.colorSpaceConversion; if (v === undefined) return undefined; return ['none', 'default'][v]; })()),
  #|   desiredWidth: self.desiredWidth,
  #|   desiredHeight: self.desiredHeight,
  #|   preferAnimation: (self.preferAnimation === -1 ? undefined : self.preferAnimation),
  #|   transfer: ((() => { const v = self.transfer; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn ImageDecoderInit::to_js(self : ImageDecoderInit) -> JsValue {
  ImageDecoderInit::to_js_ffi(self)
}

///|
extern "js" fn ImageDecoderInit::from_js_ffi(
  value : JsValue,
) -> ImageDecoderInit =
  #| (v) => ({
  #|   type_: v.type,
  #|   data: v.data,
  #|   colorSpaceConversion: (v.colorSpaceConversion === undefined ? undefined : ['none', 'default'].indexOf(v.colorSpaceConversion)),
  #|   desiredWidth: v.desiredWidth,
  #|   desiredHeight: v.desiredHeight,
  #|   preferAnimation: (v.preferAnimation === undefined ? -1 : v.preferAnimation),
  #|   transfer: (v.transfer === undefined ? { $tag: 0 } : { $tag: 1, _0: v.transfer })
  #| })

///|
/// Convert from JsValue
pub fn ImageDecoderInit::from_js(value : JsValue) -> ImageDecoderInit {
  ImageDecoderInit::from_js_ffi(value)
}

///|
/// ImageDecodeOptions dictionary
pub(all) struct ImageDecodeOptions {
  frameIndex : Int?
  completeFramesOnly : Bool?
}

///|
/// Create a new ImageDecodeOptions with default values
pub fn ImageDecodeOptions::default() -> ImageDecodeOptions {
  ImageDecodeOptions::{ frameIndex: None, completeFramesOnly: None }
}

///|
extern "js" fn ImageDecodeOptions::to_js_ffi(
  self : ImageDecodeOptions,
) -> JsValue =
  #| (self) => ({
  #|   frameIndex: self.frameIndex,
  #|   completeFramesOnly: (self.completeFramesOnly === -1 ? undefined : self.completeFramesOnly)
  #| })

///|
/// Convert to JsValue
pub fn ImageDecodeOptions::to_js(self : ImageDecodeOptions) -> JsValue {
  ImageDecodeOptions::to_js_ffi(self)
}

///|
extern "js" fn ImageDecodeOptions::from_js_ffi(
  value : JsValue,
) -> ImageDecodeOptions =
  #| (v) => ({
  #|   frameIndex: v.frameIndex,
  #|   completeFramesOnly: (v.completeFramesOnly === undefined ? -1 : v.completeFramesOnly)
  #| })

///|
/// Convert from JsValue
pub fn ImageDecodeOptions::from_js(value : JsValue) -> ImageDecodeOptions {
  ImageDecodeOptions::from_js_ffi(value)
}

///|
/// ImageDecodeResult dictionary
pub(all) struct ImageDecodeResult {
  image : VideoFrame
  complete : Bool
}

///|
/// Create a new ImageDecodeResult
pub fn ImageDecodeResult::new(image~ : VideoFrame) -> ImageDecodeResult {
  ImageDecodeResult::{ image, complete: false }
}

///|
extern "js" fn ImageDecodeResult::to_js_ffi(
  self : ImageDecodeResult,
) -> JsValue =
  #| (self) => ({
  #|   image: self.image,
  #|   complete: self.complete
  #| })

///|
/// Convert to JsValue
pub fn ImageDecodeResult::to_js(self : ImageDecodeResult) -> JsValue {
  ImageDecodeResult::to_js_ffi(self)
}

///|
extern "js" fn ImageDecodeResult::from_js_ffi(
  value : JsValue,
) -> ImageDecodeResult =
  #| (v) => ({
  #|   image: v.image,
  #|   complete: v.complete
  #| })

///|
/// Convert from JsValue
pub fn ImageDecodeResult::from_js(value : JsValue) -> ImageDecodeResult {
  ImageDecodeResult::from_js_ffi(value)
}

///|
/// AudioDecoder interface
pub type AudioDecoder

///|
pub extern "js" fn AudioDecoder::to_js_value(self : AudioDecoder) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AudioDecoder (unchecked)
pub extern "js" fn AudioDecoder::from_js_value(v : JsValue) -> AudioDecoder =
  #| (v) => v

///|
/// Safely cast JsValue to AudioDecoder (checked with instanceof)
pub extern "js" fn AudioDecoder::from_js_value_opt(
  v : JsValue,
) -> AudioDecoder? =
  #| (v) => (v instanceof AudioDecoder) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AudioDecoder (checked with instanceof)
pub extern "js" fn JsValue::as_audio_decoder(self : JsValue) -> AudioDecoder? =
  #| (self) => (self instanceof AudioDecoder) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AudioDecoder (unchecked)
pub extern "js" fn JsValue::to_audio_decoder(self : JsValue) -> AudioDecoder =
  #| (self) => self

///|
pub extern "js" fn AudioDecoder::to_event_target(
  self : AudioDecoder,
) -> EventTarget =
  #| (self) => self

///|
extern "js" fn AudioDecoder::new_ffi(init_ : JsValue) -> AudioDecoder =
  #| (init_) => new AudioDecoder(init_)

///|
pub fn AudioDecoder::new(init_ : AudioDecoderInit) -> AudioDecoder {
  AudioDecoder::new_ffi(init_.to_js())
}

///|
pub extern "js" fn AudioDecoder::get_state(self : AudioDecoder) -> CodecState =
  #| (self) => ['unconfigured', 'configured', 'closed'].indexOf(self.state)

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
extern "js" fn AudioDecoder::configure_ffi(
  self : AudioDecoder,
  config : JsValue,
) -> Unit =
  #| (self, config) => self.configure(config)

///|
pub fn AudioDecoder::configure(
  self : AudioDecoder,
  config : AudioDecoderConfig,
) -> Unit {
  AudioDecoder::configure_ffi(self, config.to_js())
}

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
extern "js" fn AudioDecoder::is_config_supported_ffi(
  config : JsValue,
) -> Promise[AudioDecoderSupport] =
  #| (config) => AudioDecoder.isConfigSupported(config).then(v => ({
  #|   supported: (v.supported === undefined ? -1 : v.supported),
  #|   config: (v.config === undefined ? { $tag: 0 } : { $tag: 1, _0: v.config })
  #| }))

///|
pub fn AudioDecoder::is_config_supported(
  config : AudioDecoderConfig,
) -> Promise[AudioDecoderSupport] {
  AudioDecoder::is_config_supported_ffi(config.to_js())
}

///|
/// VideoDecoder interface
pub type VideoDecoder

///|
pub extern "js" fn VideoDecoder::to_js_value(self : VideoDecoder) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to VideoDecoder (unchecked)
pub extern "js" fn VideoDecoder::from_js_value(v : JsValue) -> VideoDecoder =
  #| (v) => v

///|
/// Safely cast JsValue to VideoDecoder (checked with instanceof)
pub extern "js" fn VideoDecoder::from_js_value_opt(
  v : JsValue,
) -> VideoDecoder? =
  #| (v) => (v instanceof VideoDecoder) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to VideoDecoder (checked with instanceof)
pub extern "js" fn JsValue::as_video_decoder(self : JsValue) -> VideoDecoder? =
  #| (self) => (self instanceof VideoDecoder) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to VideoDecoder (unchecked)
pub extern "js" fn JsValue::to_video_decoder(self : JsValue) -> VideoDecoder =
  #| (self) => self

///|
pub extern "js" fn VideoDecoder::to_event_target(
  self : VideoDecoder,
) -> EventTarget =
  #| (self) => self

///|
extern "js" fn VideoDecoder::new_ffi(init_ : JsValue) -> VideoDecoder =
  #| (init_) => new VideoDecoder(init_)

///|
pub fn VideoDecoder::new(init_ : VideoDecoderInit) -> VideoDecoder {
  VideoDecoder::new_ffi(init_.to_js())
}

///|
pub extern "js" fn VideoDecoder::get_state(self : VideoDecoder) -> CodecState =
  #| (self) => ['unconfigured', 'configured', 'closed'].indexOf(self.state)

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
extern "js" fn VideoDecoder::configure_ffi(
  self : VideoDecoder,
  config : JsValue,
) -> Unit =
  #| (self, config) => self.configure(config)

///|
pub fn VideoDecoder::configure(
  self : VideoDecoder,
  config : VideoDecoderConfig,
) -> Unit {
  VideoDecoder::configure_ffi(self, config.to_js())
}

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
extern "js" fn VideoDecoder::is_config_supported_ffi(
  config : JsValue,
) -> Promise[VideoDecoderSupport] =
  #| (config) => VideoDecoder.isConfigSupported(config).then(v => ({
  #|   supported: (v.supported === undefined ? -1 : v.supported),
  #|   config: (v.config === undefined ? { $tag: 0 } : { $tag: 1, _0: v.config })
  #| }))

///|
pub fn VideoDecoder::is_config_supported(
  config : VideoDecoderConfig,
) -> Promise[VideoDecoderSupport] {
  VideoDecoder::is_config_supported_ffi(config.to_js())
}

///|
/// AudioEncoder interface
pub type AudioEncoder

///|
pub extern "js" fn AudioEncoder::to_js_value(self : AudioEncoder) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AudioEncoder (unchecked)
pub extern "js" fn AudioEncoder::from_js_value(v : JsValue) -> AudioEncoder =
  #| (v) => v

///|
/// Safely cast JsValue to AudioEncoder (checked with instanceof)
pub extern "js" fn AudioEncoder::from_js_value_opt(
  v : JsValue,
) -> AudioEncoder? =
  #| (v) => (v instanceof AudioEncoder) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AudioEncoder (checked with instanceof)
pub extern "js" fn JsValue::as_audio_encoder(self : JsValue) -> AudioEncoder? =
  #| (self) => (self instanceof AudioEncoder) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AudioEncoder (unchecked)
pub extern "js" fn JsValue::to_audio_encoder(self : JsValue) -> AudioEncoder =
  #| (self) => self

///|
pub extern "js" fn AudioEncoder::to_event_target(
  self : AudioEncoder,
) -> EventTarget =
  #| (self) => self

///|
extern "js" fn AudioEncoder::new_ffi(init_ : JsValue) -> AudioEncoder =
  #| (init_) => new AudioEncoder(init_)

///|
pub fn AudioEncoder::new(init_ : AudioEncoderInit) -> AudioEncoder {
  AudioEncoder::new_ffi(init_.to_js())
}

///|
pub extern "js" fn AudioEncoder::get_state(self : AudioEncoder) -> CodecState =
  #| (self) => ['unconfigured', 'configured', 'closed'].indexOf(self.state)

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
extern "js" fn AudioEncoder::configure_ffi(
  self : AudioEncoder,
  config : JsValue,
) -> Unit =
  #| (self, config) => self.configure(config)

///|
pub fn AudioEncoder::configure(
  self : AudioEncoder,
  config : AudioEncoderConfig,
) -> Unit {
  AudioEncoder::configure_ffi(self, config.to_js())
}

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
extern "js" fn AudioEncoder::is_config_supported_ffi(
  config : JsValue,
) -> Promise[AudioEncoderSupport] =
  #| (config) => AudioEncoder.isConfigSupported(config).then(v => ({
  #|   supported: (v.supported === undefined ? -1 : v.supported),
  #|   config: (v.config === undefined ? { $tag: 0 } : { $tag: 1, _0: v.config })
  #| }))

///|
pub fn AudioEncoder::is_config_supported(
  config : AudioEncoderConfig,
) -> Promise[AudioEncoderSupport] {
  AudioEncoder::is_config_supported_ffi(config.to_js())
}

///|
/// VideoEncoder interface
pub type VideoEncoder

///|
pub extern "js" fn VideoEncoder::to_js_value(self : VideoEncoder) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to VideoEncoder (unchecked)
pub extern "js" fn VideoEncoder::from_js_value(v : JsValue) -> VideoEncoder =
  #| (v) => v

///|
/// Safely cast JsValue to VideoEncoder (checked with instanceof)
pub extern "js" fn VideoEncoder::from_js_value_opt(
  v : JsValue,
) -> VideoEncoder? =
  #| (v) => (v instanceof VideoEncoder) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to VideoEncoder (checked with instanceof)
pub extern "js" fn JsValue::as_video_encoder(self : JsValue) -> VideoEncoder? =
  #| (self) => (self instanceof VideoEncoder) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to VideoEncoder (unchecked)
pub extern "js" fn JsValue::to_video_encoder(self : JsValue) -> VideoEncoder =
  #| (self) => self

///|
pub extern "js" fn VideoEncoder::to_event_target(
  self : VideoEncoder,
) -> EventTarget =
  #| (self) => self

///|
extern "js" fn VideoEncoder::new_ffi(init_ : JsValue) -> VideoEncoder =
  #| (init_) => new VideoEncoder(init_)

///|
pub fn VideoEncoder::new(init_ : VideoEncoderInit) -> VideoEncoder {
  VideoEncoder::new_ffi(init_.to_js())
}

///|
pub extern "js" fn VideoEncoder::get_state(self : VideoEncoder) -> CodecState =
  #| (self) => ['unconfigured', 'configured', 'closed'].indexOf(self.state)

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
extern "js" fn VideoEncoder::configure_ffi(
  self : VideoEncoder,
  config : JsValue,
) -> Unit =
  #| (self, config) => self.configure(config)

///|
pub fn VideoEncoder::configure(
  self : VideoEncoder,
  config : VideoEncoderConfig,
) -> Unit {
  VideoEncoder::configure_ffi(self, config.to_js())
}

///|
pub extern "js" fn VideoEncoder::encode(
  self : VideoEncoder,
  frame : VideoFrame,
) -> Unit =
  #| (self, frame) => self.encode(frame)

///|
extern "js" fn VideoEncoder::encode_with_options_ffi(
  self : VideoEncoder,
  frame : VideoFrame,
  options : JsValue,
) -> Unit =
  #| (self, frame, options) => self.encode(frame, options)

///|
pub fn VideoEncoder::encode_with_options(
  self : VideoEncoder,
  frame : VideoFrame,
  options : VideoEncoderEncodeOptions,
) -> Unit {
  VideoEncoder::encode_with_options_ffi(self, frame, options.to_js())
}

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
extern "js" fn VideoEncoder::is_config_supported_ffi(
  config : JsValue,
) -> Promise[VideoEncoderSupport] =
  #| (config) => VideoEncoder.isConfigSupported(config).then(v => ({
  #|   supported: (v.supported === undefined ? -1 : v.supported),
  #|   config: (v.config === undefined ? { $tag: 0 } : { $tag: 1, _0: v.config })
  #| }))

///|
pub fn VideoEncoder::is_config_supported(
  config : VideoEncoderConfig,
) -> Promise[VideoEncoderSupport] {
  VideoEncoder::is_config_supported_ffi(config.to_js())
}

///|
/// EncodedAudioChunk interface
pub type EncodedAudioChunk

///|
pub extern "js" fn EncodedAudioChunk::to_js_value(
  self : EncodedAudioChunk,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to EncodedAudioChunk (unchecked)
pub extern "js" fn EncodedAudioChunk::from_js_value(
  v : JsValue,
) -> EncodedAudioChunk =
  #| (v) => v

///|
/// Safely cast JsValue to EncodedAudioChunk (checked with instanceof)
pub extern "js" fn EncodedAudioChunk::from_js_value_opt(
  v : JsValue,
) -> EncodedAudioChunk? =
  #| (v) => (v instanceof EncodedAudioChunk) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to EncodedAudioChunk (checked with instanceof)
pub extern "js" fn JsValue::as_encoded_audio_chunk(
  self : JsValue,
) -> EncodedAudioChunk? =
  #| (self) => (self instanceof EncodedAudioChunk) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to EncodedAudioChunk (unchecked)
pub extern "js" fn JsValue::to_encoded_audio_chunk(
  self : JsValue,
) -> EncodedAudioChunk =
  #| (self) => self

///|
extern "js" fn EncodedAudioChunk::new_ffi(init_ : JsValue) -> EncodedAudioChunk =
  #| (init_) => new EncodedAudioChunk(init_)

///|
pub fn EncodedAudioChunk::new(
  init_ : EncodedAudioChunkInit,
) -> EncodedAudioChunk {
  EncodedAudioChunk::new_ffi(init_.to_js())
}

///|
pub extern "js" fn EncodedAudioChunk::get_type(
  self : EncodedAudioChunk,
) -> EncodedAudioChunkType =
  #| (self) => ['key', 'delta'].indexOf(self.type)

///|
pub extern "js" fn EncodedAudioChunk::get_timestamp(
  self : EncodedAudioChunk,
) -> Int64 =
  #| (self) => (() => { const n = self.timestamp; return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

///|
pub extern "js" fn EncodedAudioChunk::get_duration(
  self : EncodedAudioChunk,
) -> Int64? =
  #| (self) => (() => { const v = self.duration; if (v == null) return undefined; const n = v; return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

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
pub extern "js" fn EncodedAudioChunk::copy_to_with_array_buffer(
  self : EncodedAudioChunk,
  destination : ArrayBuffer,
) -> Unit =
  #| (self, destination) => self.copyTo(destination)

///|
pub extern "js" fn EncodedAudioChunk::copy_to_with_shared_array_buffer(
  self : EncodedAudioChunk,
  destination : SharedArrayBuffer,
) -> Unit =
  #| (self, destination) => self.copyTo(destination)

///|
pub extern "js" fn EncodedAudioChunk::copy_to_with_array_buffer_view(
  self : EncodedAudioChunk,
  destination : ArrayBufferView,
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
/// Cast JsValue to EncodedVideoChunk (unchecked)
pub extern "js" fn EncodedVideoChunk::from_js_value(
  v : JsValue,
) -> EncodedVideoChunk =
  #| (v) => v

///|
/// Safely cast JsValue to EncodedVideoChunk (checked with instanceof)
pub extern "js" fn EncodedVideoChunk::from_js_value_opt(
  v : JsValue,
) -> EncodedVideoChunk? =
  #| (v) => (v instanceof EncodedVideoChunk) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to EncodedVideoChunk (checked with instanceof)
pub extern "js" fn JsValue::as_encoded_video_chunk(
  self : JsValue,
) -> EncodedVideoChunk? =
  #| (self) => (self instanceof EncodedVideoChunk) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to EncodedVideoChunk (unchecked)
pub extern "js" fn JsValue::to_encoded_video_chunk(
  self : JsValue,
) -> EncodedVideoChunk =
  #| (self) => self

///|
extern "js" fn EncodedVideoChunk::new_ffi(init_ : JsValue) -> EncodedVideoChunk =
  #| (init_) => new EncodedVideoChunk(init_)

///|
pub fn EncodedVideoChunk::new(
  init_ : EncodedVideoChunkInit,
) -> EncodedVideoChunk {
  EncodedVideoChunk::new_ffi(init_.to_js())
}

///|
pub extern "js" fn EncodedVideoChunk::get_type(
  self : EncodedVideoChunk,
) -> EncodedVideoChunkType =
  #| (self) => ['key', 'delta'].indexOf(self.type)

///|
pub extern "js" fn EncodedVideoChunk::get_timestamp(
  self : EncodedVideoChunk,
) -> Int64 =
  #| (self) => (() => { const n = self.timestamp; return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

///|
pub extern "js" fn EncodedVideoChunk::get_duration(
  self : EncodedVideoChunk,
) -> Int64? =
  #| (self) => (() => { const v = self.duration; if (v == null) return undefined; const n = v; return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

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
pub extern "js" fn EncodedVideoChunk::copy_to_with_array_buffer(
  self : EncodedVideoChunk,
  destination : ArrayBuffer,
) -> Unit =
  #| (self, destination) => self.copyTo(destination)

///|
pub extern "js" fn EncodedVideoChunk::copy_to_with_shared_array_buffer(
  self : EncodedVideoChunk,
  destination : SharedArrayBuffer,
) -> Unit =
  #| (self, destination) => self.copyTo(destination)

///|
pub extern "js" fn EncodedVideoChunk::copy_to_with_array_buffer_view(
  self : EncodedVideoChunk,
  destination : ArrayBufferView,
) -> Unit =
  #| (self, destination) => self.copyTo(destination)

///|
/// AudioData interface
pub type AudioData

///|
pub extern "js" fn AudioData::to_js_value(self : AudioData) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AudioData (unchecked)
pub extern "js" fn AudioData::from_js_value(v : JsValue) -> AudioData =
  #| (v) => v

///|
/// Safely cast JsValue to AudioData (checked with instanceof)
pub extern "js" fn AudioData::from_js_value_opt(v : JsValue) -> AudioData? =
  #| (v) => (v instanceof AudioData) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AudioData (checked with instanceof)
pub extern "js" fn JsValue::as_audio_data(self : JsValue) -> AudioData? =
  #| (self) => (self instanceof AudioData) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AudioData (unchecked)
pub extern "js" fn JsValue::to_audio_data(self : JsValue) -> AudioData =
  #| (self) => self

///|
extern "js" fn AudioData::new_ffi(init_ : JsValue) -> AudioData =
  #| (init_) => new AudioData(init_)

///|
pub fn AudioData::new(init_ : AudioDataInit) -> AudioData {
  AudioData::new_ffi(init_.to_js())
}

///|
pub extern "js" fn AudioData::get_format(
  self : AudioData,
) -> AudioSampleFormat? =
  #| (self) => (() => { const v = self.format; return v == null ? undefined : ['u8', 's16', 's32', 'f32', 'u8-planar', 's16-planar', 's32-planar', 'f32-planar'].indexOf(v); })()

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
  #| (self) => (() => { const n = self.duration; return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

///|
pub extern "js" fn AudioData::get_timestamp(self : AudioData) -> Int64 =
  #| (self) => (() => { const n = self.timestamp; return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

///|
extern "js" fn AudioData::allocation_size_ffi(
  self : AudioData,
  options : JsValue,
) -> Int =
  #| (self, options) => self.allocationSize(options)

///|
pub fn AudioData::allocation_size(
  self : AudioData,
  options : AudioDataCopyToOptions,
) -> Int {
  AudioData::allocation_size_ffi(self, options.to_js())
}

///|
extern "js" fn AudioData::copy_to_ffi(
  self : AudioData,
  destination : AllowSharedBufferSource,
  options : JsValue,
) -> Unit =
  #| (self, destination, options) => self.copyTo(destination, options)

///|
pub fn AudioData::copy_to(
  self : AudioData,
  destination : AllowSharedBufferSource,
  options : AudioDataCopyToOptions,
) -> Unit {
  AudioData::copy_to_ffi(self, destination, options.to_js())
}

///|
pub extern "js" fn AudioData::clone(self : AudioData) -> AudioData =
  #| (self) => self.clone()

///|
pub extern "js" fn AudioData::close(self : AudioData) -> Unit =
  #| (self) => self.close()

///|
pub extern "js" fn AudioData::copy_to_with_array_buffer(
  self : AudioData,
  destination : ArrayBuffer,
  options : AudioDataCopyToOptions,
) -> Unit =
  #| (self, destination, options) => self.copyTo(destination, options)

///|
pub extern "js" fn AudioData::copy_to_with_shared_array_buffer(
  self : AudioData,
  destination : SharedArrayBuffer,
  options : AudioDataCopyToOptions,
) -> Unit =
  #| (self, destination, options) => self.copyTo(destination, options)

///|
pub extern "js" fn AudioData::copy_to_with_array_buffer_view(
  self : AudioData,
  destination : ArrayBufferView,
  options : AudioDataCopyToOptions,
) -> Unit =
  #| (self, destination, options) => self.copyTo(destination, options)

///|
/// VideoFrame interface
pub type VideoFrame

///|
pub extern "js" fn VideoFrame::to_js_value(self : VideoFrame) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to VideoFrame (unchecked)
pub extern "js" fn VideoFrame::from_js_value(v : JsValue) -> VideoFrame =
  #| (v) => v

///|
/// Safely cast JsValue to VideoFrame (checked with instanceof)
pub extern "js" fn VideoFrame::from_js_value_opt(v : JsValue) -> VideoFrame? =
  #| (v) => (v instanceof VideoFrame) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to VideoFrame (checked with instanceof)
pub extern "js" fn JsValue::as_video_frame(self : JsValue) -> VideoFrame? =
  #| (self) => (self instanceof VideoFrame) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to VideoFrame (unchecked)
pub extern "js" fn JsValue::to_video_frame(self : JsValue) -> VideoFrame =
  #| (self) => self

///|
pub extern "js" fn VideoFrame::new_with_canvas_image_source(
  image : CanvasImageSource,
) -> VideoFrame =
  #| (image) => new VideoFrame(image)

///|
extern "js" fn VideoFrame::new_with_canvas_image_source_with_init_ffi(
  image : CanvasImageSource,
  init_ : JsValue,
) -> VideoFrame =
  #| (image, init_) => new VideoFrame(image, init_)

///|
pub fn VideoFrame::new_with_canvas_image_source_with_init(
  image : CanvasImageSource,
  init_ : VideoFrameInit,
) -> VideoFrame {
  VideoFrame::new_with_canvas_image_source_with_init_ffi(image, init_.to_js())
}

///|
extern "js" fn VideoFrame::new_with_allow_shared_buffer_source_ffi(
  data : AllowSharedBufferSource,
  init_ : JsValue,
) -> VideoFrame =
  #| (data, init_) => new VideoFrame(data, init_)

///|
pub fn VideoFrame::new_with_allow_shared_buffer_source(
  data : AllowSharedBufferSource,
  init_ : VideoFrameBufferInit,
) -> VideoFrame {
  VideoFrame::new_with_allow_shared_buffer_source_ffi(data, init_.to_js())
}

///|
pub extern "js" fn VideoFrame::get_format(
  self : VideoFrame,
) -> VideoPixelFormat? =
  #| (self) => (() => { const v = self.format; return v == null ? undefined : ['I420', 'I420P10', 'I420P12', 'I420A', 'I420AP10', 'I420AP12', 'I422', 'I422P10', 'I422P12', 'I422A', 'I422AP10', 'I422AP12', 'I444', 'I444P10', 'I444P12', 'I444A', 'I444AP10', 'I444AP12', 'NV12', 'RGBA', 'RGBX', 'BGRA', 'BGRX'].indexOf(v); })()

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
  #| (self) => (() => { const v = self.codedRect; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn VideoFrame::get_visible_rect(
  self : VideoFrame,
) -> DOMRectReadOnly? =
  #| (self) => (() => { const v = self.visibleRect; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

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
  #| (self) => (() => { const v = self.duration; if (v == null) return undefined; const n = v; return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

///|
pub extern "js" fn VideoFrame::get_timestamp(self : VideoFrame) -> Int64 =
  #| (self) => (() => { const n = self.timestamp; return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

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
extern "js" fn VideoFrame::allocation_size_with_options_ffi(
  self : VideoFrame,
  options : JsValue,
) -> Int =
  #| (self, options) => self.allocationSize(options)

///|
pub fn VideoFrame::allocation_size_with_options(
  self : VideoFrame,
  options : VideoFrameCopyToOptions,
) -> Int {
  VideoFrame::allocation_size_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn VideoFrame::copy_to(
  self : VideoFrame,
  destination : AllowSharedBufferSource,
) -> Promise[Array[PlaneLayout]] =
  #| (self, destination) => self.copyTo(destination)

///|
extern "js" fn VideoFrame::copy_to_with_options_ffi(
  self : VideoFrame,
  destination : AllowSharedBufferSource,
  options : JsValue,
) -> Promise[Array[PlaneLayout]] =
  #| (self, destination, options) => self.copyTo(destination, options)

///|
pub fn VideoFrame::copy_to_with_options(
  self : VideoFrame,
  destination : AllowSharedBufferSource,
  options : VideoFrameCopyToOptions,
) -> Promise[Array[PlaneLayout]] {
  VideoFrame::copy_to_with_options_ffi(self, destination, options.to_js())
}

///|
pub extern "js" fn VideoFrame::clone(self : VideoFrame) -> VideoFrame =
  #| (self) => self.clone()

///|
pub extern "js" fn VideoFrame::close(self : VideoFrame) -> Unit =
  #| (self) => self.close()

///|
pub extern "js" fn VideoFrame::new_with_html_or_svg_image_element(
  image : HTMLOrSVGImageElement,
  init_ : VideoFrameInit,
) -> VideoFrame =
  #| (image, init_) => new VideoFrame(image, init_)

///|
pub extern "js" fn VideoFrame::new_with_html_video_element(
  image : HTMLVideoElement,
  init_ : VideoFrameInit,
) -> VideoFrame =
  #| (image, init_) => new VideoFrame(image, init_)

///|
pub extern "js" fn VideoFrame::new_with_html_canvas_element(
  image : HTMLCanvasElement,
  init_ : VideoFrameInit,
) -> VideoFrame =
  #| (image, init_) => new VideoFrame(image, init_)

///|
pub extern "js" fn VideoFrame::new_with_image_bitmap(
  image : ImageBitmap,
  init_ : VideoFrameInit,
) -> VideoFrame =
  #| (image, init_) => new VideoFrame(image, init_)

///|
pub extern "js" fn VideoFrame::new_with_offscreen_canvas(
  image : OffscreenCanvas,
  init_ : VideoFrameInit,
) -> VideoFrame =
  #| (image, init_) => new VideoFrame(image, init_)

///|
pub extern "js" fn VideoFrame::new_with_video_frame(
  image : VideoFrame,
  init_ : VideoFrameInit,
) -> VideoFrame =
  #| (image, init_) => new VideoFrame(image, init_)

///|
pub extern "js" fn VideoFrame::new_with_array_buffer(
  data : ArrayBuffer,
  init_ : VideoFrameBufferInit,
) -> VideoFrame =
  #| (data, init_) => new VideoFrame(data, init_)

///|
pub extern "js" fn VideoFrame::new_with_shared_array_buffer(
  data : SharedArrayBuffer,
  init_ : VideoFrameBufferInit,
) -> VideoFrame =
  #| (data, init_) => new VideoFrame(data, init_)

///|
pub extern "js" fn VideoFrame::new_with_array_buffer_view(
  data : ArrayBufferView,
  init_ : VideoFrameBufferInit,
) -> VideoFrame =
  #| (data, init_) => new VideoFrame(data, init_)

///|
pub extern "js" fn VideoFrame::copy_to_with_array_buffer(
  self : VideoFrame,
  destination : ArrayBuffer,
  options : VideoFrameCopyToOptions,
) -> Promise[Array[PlaneLayout]] =
  #| (self, destination, options) => self.copyTo(destination, options)

///|
pub extern "js" fn VideoFrame::copy_to_with_shared_array_buffer(
  self : VideoFrame,
  destination : SharedArrayBuffer,
  options : VideoFrameCopyToOptions,
) -> Promise[Array[PlaneLayout]] =
  #| (self, destination, options) => self.copyTo(destination, options)

///|
pub extern "js" fn VideoFrame::copy_to_with_array_buffer_view(
  self : VideoFrame,
  destination : ArrayBufferView,
  options : VideoFrameCopyToOptions,
) -> Promise[Array[PlaneLayout]] =
  #| (self, destination, options) => self.copyTo(destination, options)

///|
/// VideoColorSpace interface
pub type VideoColorSpace

///|
pub extern "js" fn VideoColorSpace::to_js_value(
  self : VideoColorSpace,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to VideoColorSpace (unchecked)
pub extern "js" fn VideoColorSpace::from_js_value(
  v : JsValue,
) -> VideoColorSpace =
  #| (v) => v

///|
/// Safely cast JsValue to VideoColorSpace (checked with instanceof)
pub extern "js" fn VideoColorSpace::from_js_value_opt(
  v : JsValue,
) -> VideoColorSpace? =
  #| (v) => (v instanceof VideoColorSpace) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to VideoColorSpace (checked with instanceof)
pub extern "js" fn JsValue::as_video_color_space(
  self : JsValue,
) -> VideoColorSpace? =
  #| (self) => (self instanceof VideoColorSpace) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to VideoColorSpace (unchecked)
pub extern "js" fn JsValue::to_video_color_space(
  self : JsValue,
) -> VideoColorSpace =
  #| (self) => self

///|
pub extern "js" fn VideoColorSpace::new() -> VideoColorSpace =
  #| () => new VideoColorSpace()

///|
extern "js" fn VideoColorSpace::new_with_init_ffi(
  init_ : JsValue,
) -> VideoColorSpace =
  #| (init_) => new VideoColorSpace(init_)

///|
pub fn VideoColorSpace::new_with_init(
  init_ : VideoColorSpaceInit,
) -> VideoColorSpace {
  VideoColorSpace::new_with_init_ffi(init_.to_js())
}

///|
pub extern "js" fn VideoColorSpace::get_primaries(
  self : VideoColorSpace,
) -> VideoColorPrimaries? =
  #| (self) => (() => { const v = self.primaries; return v == null ? undefined : ['bt709', 'bt470bg', 'smpte170m', 'bt2020', 'smpte432'].indexOf(v); })()

///|
pub extern "js" fn VideoColorSpace::get_transfer(
  self : VideoColorSpace,
) -> VideoTransferCharacteristics? =
  #| (self) => (() => { const v = self.transfer; return v == null ? undefined : ['bt709', 'smpte170m', 'iec61966-2-1', 'linear', 'pq', 'hlg'].indexOf(v); })()

///|
pub extern "js" fn VideoColorSpace::get_matrix(
  self : VideoColorSpace,
) -> VideoMatrixCoefficients? =
  #| (self) => (() => { const v = self.matrix; return v == null ? undefined : ['rgb', 'bt709', 'bt470bg', 'smpte170m', 'bt2020-ncl'].indexOf(v); })()

///|
pub extern "js" fn VideoColorSpace::get_full_range(
  self : VideoColorSpace,
) -> Bool? =
  #| (self) => (self.fullRange) ?? undefined

///|
pub extern "js" fn VideoColorSpace::to_json(
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
/// Cast JsValue to ImageDecoder (unchecked)
pub extern "js" fn ImageDecoder::from_js_value(v : JsValue) -> ImageDecoder =
  #| (v) => v

///|
/// Safely cast JsValue to ImageDecoder (checked with instanceof)
pub extern "js" fn ImageDecoder::from_js_value_opt(
  v : JsValue,
) -> ImageDecoder? =
  #| (v) => (v instanceof ImageDecoder) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ImageDecoder (checked with instanceof)
pub extern "js" fn JsValue::as_image_decoder(self : JsValue) -> ImageDecoder? =
  #| (self) => (self instanceof ImageDecoder) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ImageDecoder (unchecked)
pub extern "js" fn JsValue::to_image_decoder(self : JsValue) -> ImageDecoder =
  #| (self) => self

///|
extern "js" fn ImageDecoder::new_ffi(init_ : JsValue) -> ImageDecoder =
  #| (init_) => new ImageDecoder(init_)

///|
pub fn ImageDecoder::new(init_ : ImageDecoderInit) -> ImageDecoder {
  ImageDecoder::new_ffi(init_.to_js())
}

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
  #| (self) => self.decode().then(v => ({
  #|   image: v.image,
  #|   complete: v.complete
  #| }))

///|
extern "js" fn ImageDecoder::decode_with_options_ffi(
  self : ImageDecoder,
  options : JsValue,
) -> Promise[ImageDecodeResult] =
  #| (self, options) => self.decode(options).then(v => ({
  #|   image: v.image,
  #|   complete: v.complete
  #| }))

///|
pub fn ImageDecoder::decode_with_options(
  self : ImageDecoder,
  options : ImageDecodeOptions,
) -> Promise[ImageDecodeResult] {
  ImageDecoder::decode_with_options_ffi(self, options.to_js())
}

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
/// Cast JsValue to ImageTrackList (unchecked)
pub extern "js" fn ImageTrackList::from_js_value(v : JsValue) -> ImageTrackList =
  #| (v) => v

///|
/// Safely cast JsValue to ImageTrackList (checked with instanceof)
pub extern "js" fn ImageTrackList::from_js_value_opt(
  v : JsValue,
) -> ImageTrackList? =
  #| (v) => (v instanceof ImageTrackList) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ImageTrackList (checked with instanceof)
pub extern "js" fn JsValue::as_image_track_list(
  self : JsValue,
) -> ImageTrackList? =
  #| (self) => (self instanceof ImageTrackList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ImageTrackList (unchecked)
pub extern "js" fn JsValue::to_image_track_list(
  self : JsValue,
) -> ImageTrackList =
  #| (self) => self

///|
#alias("_[_]")
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
  #| (self) => (() => { const v = self.selectedTrack; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// ImageTrack interface
pub type ImageTrack

///|
pub extern "js" fn ImageTrack::to_js_value(self : ImageTrack) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ImageTrack (unchecked)
pub extern "js" fn ImageTrack::from_js_value(v : JsValue) -> ImageTrack =
  #| (v) => v

///|
/// Safely cast JsValue to ImageTrack (checked with instanceof)
pub extern "js" fn ImageTrack::from_js_value_opt(v : JsValue) -> ImageTrack? =
  #| (v) => (v instanceof ImageTrack) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ImageTrack (checked with instanceof)
pub extern "js" fn JsValue::as_image_track(self : JsValue) -> ImageTrack? =
  #| (self) => (self instanceof ImageTrack) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ImageTrack (unchecked)
pub extern "js" fn JsValue::to_image_track(self : JsValue) -> ImageTrack =
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
