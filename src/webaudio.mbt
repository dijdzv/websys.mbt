// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webaudio

///|
/// AudioContextState enum
pub(all) enum AudioContextState {
  Suspended
  Running
  Closed
  Interrupted
}

/// Convert to string value
pub fn AudioContextState::to_string(self : AudioContextState) -> String {
  match self {
    Suspended => "suspended"
    Running => "running"
    Closed => "closed"
    Interrupted => "interrupted"
  }
}

/// Parse from string value
pub fn AudioContextState::from_string(s : String) -> AudioContextState? {
  match s {
    "suspended" => Some(Suspended)
    "running" => Some(Running)
    "closed" => Some(Closed)
    "interrupted" => Some(Interrupted)
    _ => None
  }
}

///|
/// AudioContextRenderSizeCategory enum
pub(all) enum AudioContextRenderSizeCategory {
  Default
  Hardware
}

/// Convert to string value
pub fn AudioContextRenderSizeCategory::to_string(self : AudioContextRenderSizeCategory) -> String {
  match self {
    Default => "default"
    Hardware => "hardware"
  }
}

/// Parse from string value
pub fn AudioContextRenderSizeCategory::from_string(s : String) -> AudioContextRenderSizeCategory? {
  match s {
    "default" => Some(Default)
    "hardware" => Some(Hardware)
    _ => None
  }
}

///|
/// AudioContextLatencyCategory enum
pub(all) enum AudioContextLatencyCategory {
  Balanced
  Interactive
  Playback
}

/// Convert to string value
pub fn AudioContextLatencyCategory::to_string(self : AudioContextLatencyCategory) -> String {
  match self {
    Balanced => "balanced"
    Interactive => "interactive"
    Playback => "playback"
  }
}

/// Parse from string value
pub fn AudioContextLatencyCategory::from_string(s : String) -> AudioContextLatencyCategory? {
  match s {
    "balanced" => Some(Balanced)
    "interactive" => Some(Interactive)
    "playback" => Some(Playback)
    _ => None
  }
}

///|
/// AudioSinkType enum
pub(all) enum AudioSinkType {
  None
}

/// Convert to string value
pub fn AudioSinkType::to_string(self : AudioSinkType) -> String {
  match self {
    None => "none"
  }
}

/// Parse from string value
pub fn AudioSinkType::from_string(s : String) -> AudioSinkType? {
  match s {
    "none" => Some(None)
    _ => None
  }
}

///|
/// ChannelCountMode enum
pub(all) enum ChannelCountMode {
  Max
  ClampedMax
  Explicit
}

/// Convert to string value
pub fn ChannelCountMode::to_string(self : ChannelCountMode) -> String {
  match self {
    Max => "max"
    ClampedMax => "clamped-max"
    Explicit => "explicit"
  }
}

/// Parse from string value
pub fn ChannelCountMode::from_string(s : String) -> ChannelCountMode? {
  match s {
    "max" => Some(Max)
    "clamped-max" => Some(ClampedMax)
    "explicit" => Some(Explicit)
    _ => None
  }
}

///|
/// ChannelInterpretation enum
pub(all) enum ChannelInterpretation {
  Speakers
  Discrete
}

/// Convert to string value
pub fn ChannelInterpretation::to_string(self : ChannelInterpretation) -> String {
  match self {
    Speakers => "speakers"
    Discrete => "discrete"
  }
}

/// Parse from string value
pub fn ChannelInterpretation::from_string(s : String) -> ChannelInterpretation? {
  match s {
    "speakers" => Some(Speakers)
    "discrete" => Some(Discrete)
    _ => None
  }
}

///|
/// AutomationRate enum
pub(all) enum AutomationRate {
  ARate
  KRate
}

/// Convert to string value
pub fn AutomationRate::to_string(self : AutomationRate) -> String {
  match self {
    ARate => "a-rate"
    KRate => "k-rate"
  }
}

/// Parse from string value
pub fn AutomationRate::from_string(s : String) -> AutomationRate? {
  match s {
    "a-rate" => Some(ARate)
    "k-rate" => Some(KRate)
    _ => None
  }
}

///|
/// BiquadFilterType enum
pub(all) enum BiquadFilterType {
  Lowpass
  Highpass
  Bandpass
  Lowshelf
  Highshelf
  Peaking
  Notch
  Allpass
}

/// Convert to string value
pub fn BiquadFilterType::to_string(self : BiquadFilterType) -> String {
  match self {
    Lowpass => "lowpass"
    Highpass => "highpass"
    Bandpass => "bandpass"
    Lowshelf => "lowshelf"
    Highshelf => "highshelf"
    Peaking => "peaking"
    Notch => "notch"
    Allpass => "allpass"
  }
}

/// Parse from string value
pub fn BiquadFilterType::from_string(s : String) -> BiquadFilterType? {
  match s {
    "lowpass" => Some(Lowpass)
    "highpass" => Some(Highpass)
    "bandpass" => Some(Bandpass)
    "lowshelf" => Some(Lowshelf)
    "highshelf" => Some(Highshelf)
    "peaking" => Some(Peaking)
    "notch" => Some(Notch)
    "allpass" => Some(Allpass)
    _ => None
  }
}

///|
/// OscillatorType enum
pub(all) enum OscillatorType {
  Sine
  Square
  Sawtooth
  Triangle
  Custom
}

/// Convert to string value
pub fn OscillatorType::to_string(self : OscillatorType) -> String {
  match self {
    Sine => "sine"
    Square => "square"
    Sawtooth => "sawtooth"
    Triangle => "triangle"
    Custom => "custom"
  }
}

/// Parse from string value
pub fn OscillatorType::from_string(s : String) -> OscillatorType? {
  match s {
    "sine" => Some(Sine)
    "square" => Some(Square)
    "sawtooth" => Some(Sawtooth)
    "triangle" => Some(Triangle)
    "custom" => Some(Custom)
    _ => None
  }
}

///|
/// PanningModelType enum
pub(all) enum PanningModelType {
  Equalpower
  HRTF
}

/// Convert to string value
pub fn PanningModelType::to_string(self : PanningModelType) -> String {
  match self {
    Equalpower => "equalpower"
    HRTF => "HRTF"
  }
}

/// Parse from string value
pub fn PanningModelType::from_string(s : String) -> PanningModelType? {
  match s {
    "equalpower" => Some(Equalpower)
    "HRTF" => Some(HRTF)
    _ => None
  }
}

///|
/// DistanceModelType enum
pub(all) enum DistanceModelType {
  Linear
  Inverse
  Exponential
}

/// Convert to string value
pub fn DistanceModelType::to_string(self : DistanceModelType) -> String {
  match self {
    Linear => "linear"
    Inverse => "inverse"
    Exponential => "exponential"
  }
}

/// Parse from string value
pub fn DistanceModelType::from_string(s : String) -> DistanceModelType? {
  match s {
    "linear" => Some(Linear)
    "inverse" => Some(Inverse)
    "exponential" => Some(Exponential)
    _ => None
  }
}

///|
/// OverSampleType enum
pub(all) enum OverSampleType {
  None
  N2x
  N4x
}

/// Convert to string value
pub fn OverSampleType::to_string(self : OverSampleType) -> String {
  match self {
    None => "none"
    N2x => "2x"
    N4x => "4x"
  }
}

/// Parse from string value
pub fn OverSampleType::from_string(s : String) -> OverSampleType? {
  match s {
    "none" => Some(None)
    "2x" => Some(N2x)
    "4x" => Some(N4x)
    _ => None
  }
}

/// DecodeErrorCallback callback interface
pub type DecodeErrorCallback

/// Create DecodeErrorCallback from a MoonBit function
pub extern "js" fn DecodeErrorCallback::from_fn(handler : (DOMException) -> Unit) -> DecodeErrorCallback =
  #| (handler) => handler

/// DecodeSuccessCallback callback interface
pub type DecodeSuccessCallback

/// Create DecodeSuccessCallback from a MoonBit function
pub extern "js" fn DecodeSuccessCallback::from_fn(handler : (AudioBuffer) -> Unit) -> DecodeSuccessCallback =
  #| (handler) => handler

/// AudioWorkletProcessorConstructor callback interface
pub type AudioWorkletProcessorConstructor

/// Create AudioWorkletProcessorConstructor from a MoonBit function
pub extern "js" fn AudioWorkletProcessorConstructor::from_fn(handler : (JsValue) -> AudioWorkletProcessor) -> AudioWorkletProcessorConstructor =
  #| (handler) => handler

/// AudioWorkletProcessCallback callback interface
pub type AudioWorkletProcessCallback

/// Create AudioWorkletProcessCallback from a MoonBit function
pub extern "js" fn AudioWorkletProcessCallback::from_fn(handler : (JsValue, JsValue, JsValue) -> Bool) -> AudioWorkletProcessCallback =
  #| (handler) => handler

///|
/// AudioContextOptions dictionary
pub struct AudioContextOptions {
  latencyHint : JsValue?
  sampleRate : Double?
  sinkId : JsValue?
  renderSizeHint : JsValue?
}

/// Create a new AudioContextOptions with default values
pub fn AudioContextOptions::default() -> AudioContextOptions {
  AudioContextOptions::{
    latencyHint: None,
    sampleRate: None,
    sinkId: None,
    renderSizeHint: None,
  }
}

/// Convert to JsValue
pub extern "js" fn AudioContextOptions::to_js(self : AudioContextOptions) -> JsValue =
  #| (self) => ({
  #|   latencyHint: self.latencyHint,
  #|   sampleRate: self.sampleRate,
  #|   sinkId: self.sinkId,
  #|   renderSizeHint: self.renderSizeHint
  #| })

///|
/// AudioSinkOptions dictionary
pub struct AudioSinkOptions {
  type_ : AudioSinkType
}

/// Create a new AudioSinkOptions with default values
pub fn AudioSinkOptions::default() -> AudioSinkOptions {
  AudioSinkOptions::{
    type_: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn AudioSinkOptions::to_js(self : AudioSinkOptions) -> JsValue =
  #| (self) => ({
  #|   type: self.type_
  #| })

///|
/// AudioTimestamp dictionary
pub struct AudioTimestamp {
  contextTime : Double?
  performanceTime : DOMHighResTimeStamp?
}

/// Create a new AudioTimestamp with default values
pub fn AudioTimestamp::default() -> AudioTimestamp {
  AudioTimestamp::{
    contextTime: None,
    performanceTime: None,
  }
}

/// Convert to JsValue
pub extern "js" fn AudioTimestamp::to_js(self : AudioTimestamp) -> JsValue =
  #| (self) => ({
  #|   contextTime: self.contextTime,
  #|   performanceTime: self.performanceTime
  #| })

///|
/// OfflineAudioContextOptions dictionary
pub struct OfflineAudioContextOptions {
  numberOfChannels : Int?
  length : Int
  sampleRate : Double
  renderSizeHint : JsValue?
}

/// Create a new OfflineAudioContextOptions with default values
pub fn OfflineAudioContextOptions::default() -> OfflineAudioContextOptions {
  OfflineAudioContextOptions::{
    numberOfChannels: None,
    length: 0,
    sampleRate: 0,
    renderSizeHint: None,
  }
}

/// Convert to JsValue
pub extern "js" fn OfflineAudioContextOptions::to_js(self : OfflineAudioContextOptions) -> JsValue =
  #| (self) => ({
  #|   numberOfChannels: self.numberOfChannels,
  #|   length: self.length,
  #|   sampleRate: self.sampleRate,
  #|   renderSizeHint: self.renderSizeHint
  #| })

///|
/// OfflineAudioCompletionEventInit dictionary
pub struct OfflineAudioCompletionEventInit {
  renderedBuffer : AudioBuffer
}

/// Create a new OfflineAudioCompletionEventInit with default values
pub fn OfflineAudioCompletionEventInit::default() -> OfflineAudioCompletionEventInit {
  OfflineAudioCompletionEventInit::{
    renderedBuffer: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn OfflineAudioCompletionEventInit::to_js(self : OfflineAudioCompletionEventInit) -> JsValue =
  #| (self) => ({
  #|   renderedBuffer: self.renderedBuffer
  #| })

///|
/// AudioBufferOptions dictionary
pub struct AudioBufferOptions {
  numberOfChannels : Int?
  length : Int
  sampleRate : Double
}

/// Create a new AudioBufferOptions with default values
pub fn AudioBufferOptions::default() -> AudioBufferOptions {
  AudioBufferOptions::{
    numberOfChannels: None,
    length: 0,
    sampleRate: 0,
  }
}

/// Convert to JsValue
pub extern "js" fn AudioBufferOptions::to_js(self : AudioBufferOptions) -> JsValue =
  #| (self) => ({
  #|   numberOfChannels: self.numberOfChannels,
  #|   length: self.length,
  #|   sampleRate: self.sampleRate
  #| })

///|
/// AudioNodeOptions dictionary
pub struct AudioNodeOptions {
  channelCount : Int?
  channelCountMode : ChannelCountMode?
  channelInterpretation : ChannelInterpretation?
}

/// Create a new AudioNodeOptions with default values
pub fn AudioNodeOptions::default() -> AudioNodeOptions {
  AudioNodeOptions::{
    channelCount: None,
    channelCountMode: None,
    channelInterpretation: None,
  }
}

/// Convert to JsValue
pub extern "js" fn AudioNodeOptions::to_js(self : AudioNodeOptions) -> JsValue =
  #| (self) => ({
  #|   channelCount: self.channelCount,
  #|   channelCountMode: self.channelCountMode,
  #|   channelInterpretation: self.channelInterpretation
  #| })

///|
/// AnalyserOptions dictionary
pub struct AnalyserOptions {
  channelCount : Int?
  channelCountMode : ChannelCountMode?
  channelInterpretation : ChannelInterpretation?
  fftSize : Int?
  maxDecibels : Double?
  minDecibels : Double?
  smoothingTimeConstant : Double?
}

/// Create a new AnalyserOptions with default values
pub fn AnalyserOptions::default() -> AnalyserOptions {
  AnalyserOptions::{
    channelCount: None,
    channelCountMode: None,
    channelInterpretation: None,
    fftSize: None,
    maxDecibels: None,
    minDecibels: None,
    smoothingTimeConstant: None,
  }
}

/// Convert to JsValue
pub extern "js" fn AnalyserOptions::to_js(self : AnalyserOptions) -> JsValue =
  #| (self) => ({
  #|   channelCount: self.channelCount,
  #|   channelCountMode: self.channelCountMode,
  #|   channelInterpretation: self.channelInterpretation,
  #|   fftSize: self.fftSize,
  #|   maxDecibels: self.maxDecibels,
  #|   minDecibels: self.minDecibels,
  #|   smoothingTimeConstant: self.smoothingTimeConstant
  #| })

///|
/// AudioBufferSourceOptions dictionary
pub struct AudioBufferSourceOptions {
  buffer : AudioBuffer??
  detune : Double?
  loop_ : Bool?
  loopEnd : Double?
  loopStart : Double?
  playbackRate : Double?
}

/// Create a new AudioBufferSourceOptions with default values
pub fn AudioBufferSourceOptions::default() -> AudioBufferSourceOptions {
  AudioBufferSourceOptions::{
    buffer: None,
    detune: None,
    loop_: None,
    loopEnd: None,
    loopStart: None,
    playbackRate: None,
  }
}

/// Convert to JsValue
pub extern "js" fn AudioBufferSourceOptions::to_js(self : AudioBufferSourceOptions) -> JsValue =
  #| (self) => ({
  #|   buffer: self.buffer,
  #|   detune: self.detune,
  #|   loop: self.loop_,
  #|   loopEnd: self.loopEnd,
  #|   loopStart: self.loopStart,
  #|   playbackRate: self.playbackRate
  #| })

///|
/// AudioProcessingEventInit dictionary
pub struct AudioProcessingEventInit {
  playbackTime : Double
  inputBuffer : AudioBuffer
  outputBuffer : AudioBuffer
}

/// Create a new AudioProcessingEventInit with default values
pub fn AudioProcessingEventInit::default() -> AudioProcessingEventInit {
  AudioProcessingEventInit::{
    playbackTime: 0,
    inputBuffer: panic(),
    outputBuffer: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn AudioProcessingEventInit::to_js(self : AudioProcessingEventInit) -> JsValue =
  #| (self) => ({
  #|   playbackTime: self.playbackTime,
  #|   inputBuffer: self.inputBuffer,
  #|   outputBuffer: self.outputBuffer
  #| })

///|
/// BiquadFilterOptions dictionary
pub struct BiquadFilterOptions {
  channelCount : Int?
  channelCountMode : ChannelCountMode?
  channelInterpretation : ChannelInterpretation?
  type_ : BiquadFilterType?
  q : Double?
  detune : Double?
  frequency : Double?
  gain : Double?
}

/// Create a new BiquadFilterOptions with default values
pub fn BiquadFilterOptions::default() -> BiquadFilterOptions {
  BiquadFilterOptions::{
    channelCount: None,
    channelCountMode: None,
    channelInterpretation: None,
    type_: None,
    q: None,
    detune: None,
    frequency: None,
    gain: None,
  }
}

/// Convert to JsValue
pub extern "js" fn BiquadFilterOptions::to_js(self : BiquadFilterOptions) -> JsValue =
  #| (self) => ({
  #|   channelCount: self.channelCount,
  #|   channelCountMode: self.channelCountMode,
  #|   channelInterpretation: self.channelInterpretation,
  #|   type: self.type_,
  #|   Q: self.q,
  #|   detune: self.detune,
  #|   frequency: self.frequency,
  #|   gain: self.gain
  #| })

///|
/// ChannelMergerOptions dictionary
pub struct ChannelMergerOptions {
  channelCount : Int?
  channelCountMode : ChannelCountMode?
  channelInterpretation : ChannelInterpretation?
  numberOfInputs : Int?
}

/// Create a new ChannelMergerOptions with default values
pub fn ChannelMergerOptions::default() -> ChannelMergerOptions {
  ChannelMergerOptions::{
    channelCount: None,
    channelCountMode: None,
    channelInterpretation: None,
    numberOfInputs: None,
  }
}

/// Convert to JsValue
pub extern "js" fn ChannelMergerOptions::to_js(self : ChannelMergerOptions) -> JsValue =
  #| (self) => ({
  #|   channelCount: self.channelCount,
  #|   channelCountMode: self.channelCountMode,
  #|   channelInterpretation: self.channelInterpretation,
  #|   numberOfInputs: self.numberOfInputs
  #| })

///|
/// ChannelSplitterOptions dictionary
pub struct ChannelSplitterOptions {
  channelCount : Int?
  channelCountMode : ChannelCountMode?
  channelInterpretation : ChannelInterpretation?
  numberOfOutputs : Int?
}

/// Create a new ChannelSplitterOptions with default values
pub fn ChannelSplitterOptions::default() -> ChannelSplitterOptions {
  ChannelSplitterOptions::{
    channelCount: None,
    channelCountMode: None,
    channelInterpretation: None,
    numberOfOutputs: None,
  }
}

/// Convert to JsValue
pub extern "js" fn ChannelSplitterOptions::to_js(self : ChannelSplitterOptions) -> JsValue =
  #| (self) => ({
  #|   channelCount: self.channelCount,
  #|   channelCountMode: self.channelCountMode,
  #|   channelInterpretation: self.channelInterpretation,
  #|   numberOfOutputs: self.numberOfOutputs
  #| })

///|
/// ConstantSourceOptions dictionary
pub struct ConstantSourceOptions {
  offset : Double?
}

/// Create a new ConstantSourceOptions with default values
pub fn ConstantSourceOptions::default() -> ConstantSourceOptions {
  ConstantSourceOptions::{
    offset: None,
  }
}

/// Convert to JsValue
pub extern "js" fn ConstantSourceOptions::to_js(self : ConstantSourceOptions) -> JsValue =
  #| (self) => ({
  #|   offset: self.offset
  #| })

///|
/// ConvolverOptions dictionary
pub struct ConvolverOptions {
  channelCount : Int?
  channelCountMode : ChannelCountMode?
  channelInterpretation : ChannelInterpretation?
  buffer : AudioBuffer??
  disableNormalization : Bool?
}

/// Create a new ConvolverOptions with default values
pub fn ConvolverOptions::default() -> ConvolverOptions {
  ConvolverOptions::{
    channelCount: None,
    channelCountMode: None,
    channelInterpretation: None,
    buffer: None,
    disableNormalization: None,
  }
}

/// Convert to JsValue
pub extern "js" fn ConvolverOptions::to_js(self : ConvolverOptions) -> JsValue =
  #| (self) => ({
  #|   channelCount: self.channelCount,
  #|   channelCountMode: self.channelCountMode,
  #|   channelInterpretation: self.channelInterpretation,
  #|   buffer: self.buffer,
  #|   disableNormalization: self.disableNormalization
  #| })

///|
/// DelayOptions dictionary
pub struct DelayOptions {
  channelCount : Int?
  channelCountMode : ChannelCountMode?
  channelInterpretation : ChannelInterpretation?
  maxDelayTime : Double?
  delayTime : Double?
}

/// Create a new DelayOptions with default values
pub fn DelayOptions::default() -> DelayOptions {
  DelayOptions::{
    channelCount: None,
    channelCountMode: None,
    channelInterpretation: None,
    maxDelayTime: None,
    delayTime: None,
  }
}

/// Convert to JsValue
pub extern "js" fn DelayOptions::to_js(self : DelayOptions) -> JsValue =
  #| (self) => ({
  #|   channelCount: self.channelCount,
  #|   channelCountMode: self.channelCountMode,
  #|   channelInterpretation: self.channelInterpretation,
  #|   maxDelayTime: self.maxDelayTime,
  #|   delayTime: self.delayTime
  #| })

///|
/// DynamicsCompressorOptions dictionary
pub struct DynamicsCompressorOptions {
  channelCount : Int?
  channelCountMode : ChannelCountMode?
  channelInterpretation : ChannelInterpretation?
  attack : Double?
  knee : Double?
  ratio : Double?
  release : Double?
  threshold : Double?
}

/// Create a new DynamicsCompressorOptions with default values
pub fn DynamicsCompressorOptions::default() -> DynamicsCompressorOptions {
  DynamicsCompressorOptions::{
    channelCount: None,
    channelCountMode: None,
    channelInterpretation: None,
    attack: None,
    knee: None,
    ratio: None,
    release: None,
    threshold: None,
  }
}

/// Convert to JsValue
pub extern "js" fn DynamicsCompressorOptions::to_js(self : DynamicsCompressorOptions) -> JsValue =
  #| (self) => ({
  #|   channelCount: self.channelCount,
  #|   channelCountMode: self.channelCountMode,
  #|   channelInterpretation: self.channelInterpretation,
  #|   attack: self.attack,
  #|   knee: self.knee,
  #|   ratio: self.ratio,
  #|   release: self.release,
  #|   threshold: self.threshold
  #| })

///|
/// GainOptions dictionary
pub struct GainOptions {
  channelCount : Int?
  channelCountMode : ChannelCountMode?
  channelInterpretation : ChannelInterpretation?
  gain : Double?
}

/// Create a new GainOptions with default values
pub fn GainOptions::default() -> GainOptions {
  GainOptions::{
    channelCount: None,
    channelCountMode: None,
    channelInterpretation: None,
    gain: None,
  }
}

/// Convert to JsValue
pub extern "js" fn GainOptions::to_js(self : GainOptions) -> JsValue =
  #| (self) => ({
  #|   channelCount: self.channelCount,
  #|   channelCountMode: self.channelCountMode,
  #|   channelInterpretation: self.channelInterpretation,
  #|   gain: self.gain
  #| })

///|
/// IIRFilterOptions dictionary
pub struct IIRFilterOptions {
  channelCount : Int?
  channelCountMode : ChannelCountMode?
  channelInterpretation : ChannelInterpretation?
  feedforward : Array[Double]
  feedback : Array[Double]
}

/// Create a new IIRFilterOptions with default values
pub fn IIRFilterOptions::default() -> IIRFilterOptions {
  IIRFilterOptions::{
    channelCount: None,
    channelCountMode: None,
    channelInterpretation: None,
    feedforward: [],
    feedback: [],
  }
}

/// Convert to JsValue
pub extern "js" fn IIRFilterOptions::to_js(self : IIRFilterOptions) -> JsValue =
  #| (self) => ({
  #|   channelCount: self.channelCount,
  #|   channelCountMode: self.channelCountMode,
  #|   channelInterpretation: self.channelInterpretation,
  #|   feedforward: self.feedforward,
  #|   feedback: self.feedback
  #| })

///|
/// MediaElementAudioSourceOptions dictionary
pub struct MediaElementAudioSourceOptions {
  mediaElement : HTMLMediaElement
}

/// Create a new MediaElementAudioSourceOptions with default values
pub fn MediaElementAudioSourceOptions::default() -> MediaElementAudioSourceOptions {
  MediaElementAudioSourceOptions::{
    mediaElement: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn MediaElementAudioSourceOptions::to_js(self : MediaElementAudioSourceOptions) -> JsValue =
  #| (self) => ({
  #|   mediaElement: self.mediaElement
  #| })

///|
/// MediaStreamAudioSourceOptions dictionary
pub struct MediaStreamAudioSourceOptions {
  mediaStream : MediaStream
}

/// Create a new MediaStreamAudioSourceOptions with default values
pub fn MediaStreamAudioSourceOptions::default() -> MediaStreamAudioSourceOptions {
  MediaStreamAudioSourceOptions::{
    mediaStream: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn MediaStreamAudioSourceOptions::to_js(self : MediaStreamAudioSourceOptions) -> JsValue =
  #| (self) => ({
  #|   mediaStream: self.mediaStream
  #| })

///|
/// MediaStreamTrackAudioSourceOptions dictionary
pub struct MediaStreamTrackAudioSourceOptions {
  mediaStreamTrack : MediaStreamTrack
}

/// Create a new MediaStreamTrackAudioSourceOptions with default values
pub fn MediaStreamTrackAudioSourceOptions::default() -> MediaStreamTrackAudioSourceOptions {
  MediaStreamTrackAudioSourceOptions::{
    mediaStreamTrack: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn MediaStreamTrackAudioSourceOptions::to_js(self : MediaStreamTrackAudioSourceOptions) -> JsValue =
  #| (self) => ({
  #|   mediaStreamTrack: self.mediaStreamTrack
  #| })

///|
/// OscillatorOptions dictionary
pub struct OscillatorOptions {
  channelCount : Int?
  channelCountMode : ChannelCountMode?
  channelInterpretation : ChannelInterpretation?
  type_ : OscillatorType?
  frequency : Double?
  detune : Double?
  periodicWave : PeriodicWave?
}

/// Create a new OscillatorOptions with default values
pub fn OscillatorOptions::default() -> OscillatorOptions {
  OscillatorOptions::{
    channelCount: None,
    channelCountMode: None,
    channelInterpretation: None,
    type_: None,
    frequency: None,
    detune: None,
    periodicWave: None,
  }
}

/// Convert to JsValue
pub extern "js" fn OscillatorOptions::to_js(self : OscillatorOptions) -> JsValue =
  #| (self) => ({
  #|   channelCount: self.channelCount,
  #|   channelCountMode: self.channelCountMode,
  #|   channelInterpretation: self.channelInterpretation,
  #|   type: self.type_,
  #|   frequency: self.frequency,
  #|   detune: self.detune,
  #|   periodicWave: self.periodicWave
  #| })

///|
/// PannerOptions dictionary
pub struct PannerOptions {
  channelCount : Int?
  channelCountMode : ChannelCountMode?
  channelInterpretation : ChannelInterpretation?
  panningModel : PanningModelType?
  distanceModel : DistanceModelType?
  positionX : Double?
  positionY : Double?
  positionZ : Double?
  orientationX : Double?
  orientationY : Double?
  orientationZ : Double?
  refDistance : Double?
  maxDistance : Double?
  rolloffFactor : Double?
  coneInnerAngle : Double?
  coneOuterAngle : Double?
  coneOuterGain : Double?
}

/// Create a new PannerOptions with default values
pub fn PannerOptions::default() -> PannerOptions {
  PannerOptions::{
    channelCount: None,
    channelCountMode: None,
    channelInterpretation: None,
    panningModel: None,
    distanceModel: None,
    positionX: None,
    positionY: None,
    positionZ: None,
    orientationX: None,
    orientationY: None,
    orientationZ: None,
    refDistance: None,
    maxDistance: None,
    rolloffFactor: None,
    coneInnerAngle: None,
    coneOuterAngle: None,
    coneOuterGain: None,
  }
}

/// Convert to JsValue
pub extern "js" fn PannerOptions::to_js(self : PannerOptions) -> JsValue =
  #| (self) => ({
  #|   channelCount: self.channelCount,
  #|   channelCountMode: self.channelCountMode,
  #|   channelInterpretation: self.channelInterpretation,
  #|   panningModel: self.panningModel,
  #|   distanceModel: self.distanceModel,
  #|   positionX: self.positionX,
  #|   positionY: self.positionY,
  #|   positionZ: self.positionZ,
  #|   orientationX: self.orientationX,
  #|   orientationY: self.orientationY,
  #|   orientationZ: self.orientationZ,
  #|   refDistance: self.refDistance,
  #|   maxDistance: self.maxDistance,
  #|   rolloffFactor: self.rolloffFactor,
  #|   coneInnerAngle: self.coneInnerAngle,
  #|   coneOuterAngle: self.coneOuterAngle,
  #|   coneOuterGain: self.coneOuterGain
  #| })

///|
/// PeriodicWaveConstraints dictionary
pub struct PeriodicWaveConstraints {
  disableNormalization : Bool?
}

/// Create a new PeriodicWaveConstraints with default values
pub fn PeriodicWaveConstraints::default() -> PeriodicWaveConstraints {
  PeriodicWaveConstraints::{
    disableNormalization: None,
  }
}

/// Convert to JsValue
pub extern "js" fn PeriodicWaveConstraints::to_js(self : PeriodicWaveConstraints) -> JsValue =
  #| (self) => ({
  #|   disableNormalization: self.disableNormalization
  #| })

///|
/// PeriodicWaveOptions dictionary
pub struct PeriodicWaveOptions {
  disableNormalization : Bool?
  real : Array[Double]?
  imag : Array[Double]?
}

/// Create a new PeriodicWaveOptions with default values
pub fn PeriodicWaveOptions::default() -> PeriodicWaveOptions {
  PeriodicWaveOptions::{
    disableNormalization: None,
    real: None,
    imag: None,
  }
}

/// Convert to JsValue
pub extern "js" fn PeriodicWaveOptions::to_js(self : PeriodicWaveOptions) -> JsValue =
  #| (self) => ({
  #|   disableNormalization: self.disableNormalization,
  #|   real: self.real,
  #|   imag: self.imag
  #| })

///|
/// StereoPannerOptions dictionary
pub struct StereoPannerOptions {
  channelCount : Int?
  channelCountMode : ChannelCountMode?
  channelInterpretation : ChannelInterpretation?
  pan : Double?
}

/// Create a new StereoPannerOptions with default values
pub fn StereoPannerOptions::default() -> StereoPannerOptions {
  StereoPannerOptions::{
    channelCount: None,
    channelCountMode: None,
    channelInterpretation: None,
    pan: None,
  }
}

/// Convert to JsValue
pub extern "js" fn StereoPannerOptions::to_js(self : StereoPannerOptions) -> JsValue =
  #| (self) => ({
  #|   channelCount: self.channelCount,
  #|   channelCountMode: self.channelCountMode,
  #|   channelInterpretation: self.channelInterpretation,
  #|   pan: self.pan
  #| })

///|
/// WaveShaperOptions dictionary
pub struct WaveShaperOptions {
  channelCount : Int?
  channelCountMode : ChannelCountMode?
  channelInterpretation : ChannelInterpretation?
  curve : Array[Double]?
  oversample : OverSampleType?
}

/// Create a new WaveShaperOptions with default values
pub fn WaveShaperOptions::default() -> WaveShaperOptions {
  WaveShaperOptions::{
    channelCount: None,
    channelCountMode: None,
    channelInterpretation: None,
    curve: None,
    oversample: None,
  }
}

/// Convert to JsValue
pub extern "js" fn WaveShaperOptions::to_js(self : WaveShaperOptions) -> JsValue =
  #| (self) => ({
  #|   channelCount: self.channelCount,
  #|   channelCountMode: self.channelCountMode,
  #|   channelInterpretation: self.channelInterpretation,
  #|   curve: self.curve,
  #|   oversample: self.oversample
  #| })

///|
/// AudioWorkletNodeOptions dictionary
pub struct AudioWorkletNodeOptions {
  channelCount : Int?
  channelCountMode : ChannelCountMode?
  channelInterpretation : ChannelInterpretation?
  numberOfInputs : Int?
  numberOfOutputs : Int?
  outputChannelCount : Array[Int]?
  parameterData : JsValue?
  processorOptions : JsValue?
}

/// Create a new AudioWorkletNodeOptions with default values
pub fn AudioWorkletNodeOptions::default() -> AudioWorkletNodeOptions {
  AudioWorkletNodeOptions::{
    channelCount: None,
    channelCountMode: None,
    channelInterpretation: None,
    numberOfInputs: None,
    numberOfOutputs: None,
    outputChannelCount: None,
    parameterData: None,
    processorOptions: None,
  }
}

/// Convert to JsValue
pub extern "js" fn AudioWorkletNodeOptions::to_js(self : AudioWorkletNodeOptions) -> JsValue =
  #| (self) => ({
  #|   channelCount: self.channelCount,
  #|   channelCountMode: self.channelCountMode,
  #|   channelInterpretation: self.channelInterpretation,
  #|   numberOfInputs: self.numberOfInputs,
  #|   numberOfOutputs: self.numberOfOutputs,
  #|   outputChannelCount: self.outputChannelCount,
  #|   parameterData: self.parameterData,
  #|   processorOptions: self.processorOptions
  #| })

///|
/// AudioParamDescriptor dictionary
pub struct AudioParamDescriptor {
  name : String
  defaultValue : Double?
  minValue : Double?
  maxValue : Double?
  automationRate : AutomationRate?
}

/// Create a new AudioParamDescriptor with default values
pub fn AudioParamDescriptor::default() -> AudioParamDescriptor {
  AudioParamDescriptor::{
    name: "",
    defaultValue: None,
    minValue: None,
    maxValue: None,
    automationRate: None,
  }
}

/// Convert to JsValue
pub extern "js" fn AudioParamDescriptor::to_js(self : AudioParamDescriptor) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   defaultValue: self.defaultValue,
  #|   minValue: self.minValue,
  #|   maxValue: self.maxValue,
  #|   automationRate: self.automationRate
  #| })

///|
/// BaseAudioContext interface
pub type BaseAudioContext

pub extern "js" fn BaseAudioContext::to_js_value(self : BaseAudioContext) -> JsValue =
  #| (self) => self

pub extern "js" fn BaseAudioContext::get_destination(self : BaseAudioContext) -> AudioDestinationNode =
  #| (self) => self.destination

pub extern "js" fn BaseAudioContext::get_sample_rate(self : BaseAudioContext) -> Double =
  #| (self) => self.sampleRate

pub extern "js" fn BaseAudioContext::get_current_time(self : BaseAudioContext) -> Double =
  #| (self) => self.currentTime

pub extern "js" fn BaseAudioContext::get_listener(self : BaseAudioContext) -> AudioListener =
  #| (self) => self.listener

pub extern "js" fn BaseAudioContext::get_state(self : BaseAudioContext) -> AudioContextState =
  #| (self) => self.state

pub extern "js" fn BaseAudioContext::get_render_quantum_size(self : BaseAudioContext) -> Int =
  #| (self) => self.renderQuantumSize

pub extern "js" fn BaseAudioContext::get_audio_worklet(self : BaseAudioContext) -> AudioWorklet =
  #| (self) => self.audioWorklet

pub extern "js" fn BaseAudioContext::get_onstatechange(self : BaseAudioContext) -> EventHandler =
  #| (self) => self.onstatechange

pub extern "js" fn BaseAudioContext::set_onstatechange(self : BaseAudioContext, value : EventHandler) -> Unit =
  #| (self, value) => { self.onstatechange = value }

pub extern "js" fn BaseAudioContext::create_analyser(self : BaseAudioContext) -> AnalyserNode =
  #| (self) => self.createAnalyser()

pub extern "js" fn BaseAudioContext::create_biquad_filter(self : BaseAudioContext) -> BiquadFilterNode =
  #| (self) => self.createBiquadFilter()

pub extern "js" fn BaseAudioContext::create_buffer(self : BaseAudioContext, number_of_channels : Int, length : Int, sample_rate : Double) -> AudioBuffer =
  #| (self, number_of_channels, length, sample_rate) => self.createBuffer(number_of_channels, length, sample_rate)

pub extern "js" fn BaseAudioContext::create_buffer_source(self : BaseAudioContext) -> AudioBufferSourceNode =
  #| (self) => self.createBufferSource()

pub extern "js" fn BaseAudioContext::create_channel_merger(self : BaseAudioContext) -> ChannelMergerNode =
  #| (self) => self.createChannelMerger()

pub extern "js" fn BaseAudioContext::create_channel_merger_with_number_of_inputs(self : BaseAudioContext, number_of_inputs : Int) -> ChannelMergerNode =
  #| (self, number_of_inputs) => self.createChannelMerger(number_of_inputs)

pub extern "js" fn BaseAudioContext::create_channel_splitter(self : BaseAudioContext) -> ChannelSplitterNode =
  #| (self) => self.createChannelSplitter()

pub extern "js" fn BaseAudioContext::create_channel_splitter_with_number_of_outputs(self : BaseAudioContext, number_of_outputs : Int) -> ChannelSplitterNode =
  #| (self, number_of_outputs) => self.createChannelSplitter(number_of_outputs)

pub extern "js" fn BaseAudioContext::create_constant_source(self : BaseAudioContext) -> ConstantSourceNode =
  #| (self) => self.createConstantSource()

pub extern "js" fn BaseAudioContext::create_convolver(self : BaseAudioContext) -> ConvolverNode =
  #| (self) => self.createConvolver()

pub extern "js" fn BaseAudioContext::create_delay(self : BaseAudioContext) -> DelayNode =
  #| (self) => self.createDelay()

pub extern "js" fn BaseAudioContext::create_delay_with_max_delay_time(self : BaseAudioContext, max_delay_time : Double) -> DelayNode =
  #| (self, max_delay_time) => self.createDelay(max_delay_time)

pub extern "js" fn BaseAudioContext::create_dynamics_compressor(self : BaseAudioContext) -> DynamicsCompressorNode =
  #| (self) => self.createDynamicsCompressor()

pub extern "js" fn BaseAudioContext::create_gain(self : BaseAudioContext) -> GainNode =
  #| (self) => self.createGain()

pub extern "js" fn BaseAudioContext::create_i_i_r_filter(self : BaseAudioContext, feedforward : Array[Double], feedback : Array[Double]) -> IIRFilterNode =
  #| (self, feedforward, feedback) => self.createIIRFilter(feedforward, feedback)

pub extern "js" fn BaseAudioContext::create_oscillator(self : BaseAudioContext) -> OscillatorNode =
  #| (self) => self.createOscillator()

pub extern "js" fn BaseAudioContext::create_panner(self : BaseAudioContext) -> PannerNode =
  #| (self) => self.createPanner()

pub extern "js" fn BaseAudioContext::create_periodic_wave(self : BaseAudioContext, real : Array[Double], imag : Array[Double]) -> PeriodicWave =
  #| (self, real, imag) => self.createPeriodicWave(real, imag)

pub extern "js" fn BaseAudioContext::create_periodic_wave_with_constraints(self : BaseAudioContext, real : Array[Double], imag : Array[Double], constraints : PeriodicWaveConstraints) -> PeriodicWave =
  #| (self, real, imag, constraints) => self.createPeriodicWave(real, imag, constraints)

pub extern "js" fn BaseAudioContext::create_script_processor(self : BaseAudioContext) -> ScriptProcessorNode =
  #| (self) => self.createScriptProcessor()

pub extern "js" fn BaseAudioContext::create_script_processor_with_number_of_output_channels(self : BaseAudioContext, buffer_size : Int, number_of_input_channels : Int, number_of_output_channels : Int) -> ScriptProcessorNode =
  #| (self, buffer_size, number_of_input_channels, number_of_output_channels) => self.createScriptProcessor(buffer_size, number_of_input_channels, number_of_output_channels)

pub extern "js" fn BaseAudioContext::create_stereo_panner(self : BaseAudioContext) -> StereoPannerNode =
  #| (self) => self.createStereoPanner()

pub extern "js" fn BaseAudioContext::create_wave_shaper(self : BaseAudioContext) -> WaveShaperNode =
  #| (self) => self.createWaveShaper()

pub extern "js" fn BaseAudioContext::decode_audio_data(self : BaseAudioContext, audio_data : ArrayBuffer) -> Promise[AudioBuffer] =
  #| (self, audio_data) => self.decodeAudioData(audio_data)

pub extern "js" fn BaseAudioContext::decode_audio_data_with_error_callback(self : BaseAudioContext, audio_data : ArrayBuffer, success_callback : DecodeSuccessCallback?, error_callback : DecodeErrorCallback?) -> Promise[AudioBuffer] =
  #| (self, audio_data, success_callback, error_callback) => self.decodeAudioData(audio_data, success_callback, error_callback)

///|
/// AudioContext interface
pub type AudioContext

pub extern "js" fn AudioContext::to_js_value(self : AudioContext) -> JsValue =
  #| (self) => self

pub extern "js" fn AudioContext::get_destination(self : AudioContext) -> AudioDestinationNode =
  #| (self) => self.destination

pub extern "js" fn AudioContext::get_sample_rate(self : AudioContext) -> Double =
  #| (self) => self.sampleRate

pub extern "js" fn AudioContext::get_current_time(self : AudioContext) -> Double =
  #| (self) => self.currentTime

pub extern "js" fn AudioContext::get_listener(self : AudioContext) -> AudioListener =
  #| (self) => self.listener

pub extern "js" fn AudioContext::get_state(self : AudioContext) -> AudioContextState =
  #| (self) => self.state

pub extern "js" fn AudioContext::get_render_quantum_size(self : AudioContext) -> Int =
  #| (self) => self.renderQuantumSize

pub extern "js" fn AudioContext::get_audio_worklet(self : AudioContext) -> AudioWorklet =
  #| (self) => self.audioWorklet

pub extern "js" fn AudioContext::get_onstatechange(self : AudioContext) -> EventHandler =
  #| (self) => self.onstatechange

pub extern "js" fn AudioContext::set_onstatechange(self : AudioContext, value : EventHandler) -> Unit =
  #| (self, value) => { self.onstatechange = value }

pub extern "js" fn AudioContext::create_analyser(self : AudioContext) -> AnalyserNode =
  #| (self) => self.createAnalyser()

pub extern "js" fn AudioContext::create_biquad_filter(self : AudioContext) -> BiquadFilterNode =
  #| (self) => self.createBiquadFilter()

pub extern "js" fn AudioContext::create_buffer(self : AudioContext, number_of_channels : Int, length : Int, sample_rate : Double) -> AudioBuffer =
  #| (self, number_of_channels, length, sample_rate) => self.createBuffer(number_of_channels, length, sample_rate)

pub extern "js" fn AudioContext::create_buffer_source(self : AudioContext) -> AudioBufferSourceNode =
  #| (self) => self.createBufferSource()

pub extern "js" fn AudioContext::create_channel_merger(self : AudioContext) -> ChannelMergerNode =
  #| (self) => self.createChannelMerger()

pub extern "js" fn AudioContext::create_channel_merger_with_number_of_inputs(self : AudioContext, number_of_inputs : Int) -> ChannelMergerNode =
  #| (self, number_of_inputs) => self.createChannelMerger(number_of_inputs)

pub extern "js" fn AudioContext::create_channel_splitter(self : AudioContext) -> ChannelSplitterNode =
  #| (self) => self.createChannelSplitter()

pub extern "js" fn AudioContext::create_channel_splitter_with_number_of_outputs(self : AudioContext, number_of_outputs : Int) -> ChannelSplitterNode =
  #| (self, number_of_outputs) => self.createChannelSplitter(number_of_outputs)

pub extern "js" fn AudioContext::create_constant_source(self : AudioContext) -> ConstantSourceNode =
  #| (self) => self.createConstantSource()

pub extern "js" fn AudioContext::create_convolver(self : AudioContext) -> ConvolverNode =
  #| (self) => self.createConvolver()

pub extern "js" fn AudioContext::create_delay(self : AudioContext) -> DelayNode =
  #| (self) => self.createDelay()

pub extern "js" fn AudioContext::create_delay_with_max_delay_time(self : AudioContext, max_delay_time : Double) -> DelayNode =
  #| (self, max_delay_time) => self.createDelay(max_delay_time)

pub extern "js" fn AudioContext::create_dynamics_compressor(self : AudioContext) -> DynamicsCompressorNode =
  #| (self) => self.createDynamicsCompressor()

pub extern "js" fn AudioContext::create_gain(self : AudioContext) -> GainNode =
  #| (self) => self.createGain()

pub extern "js" fn AudioContext::create_i_i_r_filter(self : AudioContext, feedforward : Array[Double], feedback : Array[Double]) -> IIRFilterNode =
  #| (self, feedforward, feedback) => self.createIIRFilter(feedforward, feedback)

pub extern "js" fn AudioContext::create_oscillator(self : AudioContext) -> OscillatorNode =
  #| (self) => self.createOscillator()

pub extern "js" fn AudioContext::create_panner(self : AudioContext) -> PannerNode =
  #| (self) => self.createPanner()

pub extern "js" fn AudioContext::create_periodic_wave(self : AudioContext, real : Array[Double], imag : Array[Double]) -> PeriodicWave =
  #| (self, real, imag) => self.createPeriodicWave(real, imag)

pub extern "js" fn AudioContext::create_periodic_wave_with_constraints(self : AudioContext, real : Array[Double], imag : Array[Double], constraints : PeriodicWaveConstraints) -> PeriodicWave =
  #| (self, real, imag, constraints) => self.createPeriodicWave(real, imag, constraints)

pub extern "js" fn AudioContext::create_script_processor(self : AudioContext) -> ScriptProcessorNode =
  #| (self) => self.createScriptProcessor()

pub extern "js" fn AudioContext::create_script_processor_with_number_of_output_channels(self : AudioContext, buffer_size : Int, number_of_input_channels : Int, number_of_output_channels : Int) -> ScriptProcessorNode =
  #| (self, buffer_size, number_of_input_channels, number_of_output_channels) => self.createScriptProcessor(buffer_size, number_of_input_channels, number_of_output_channels)

pub extern "js" fn AudioContext::create_stereo_panner(self : AudioContext) -> StereoPannerNode =
  #| (self) => self.createStereoPanner()

pub extern "js" fn AudioContext::create_wave_shaper(self : AudioContext) -> WaveShaperNode =
  #| (self) => self.createWaveShaper()

pub extern "js" fn AudioContext::decode_audio_data(self : AudioContext, audio_data : ArrayBuffer) -> Promise[AudioBuffer] =
  #| (self, audio_data) => self.decodeAudioData(audio_data)

pub extern "js" fn AudioContext::decode_audio_data_with_error_callback(self : AudioContext, audio_data : ArrayBuffer, success_callback : DecodeSuccessCallback?, error_callback : DecodeErrorCallback?) -> Promise[AudioBuffer] =
  #| (self, audio_data, success_callback, error_callback) => self.decodeAudioData(audio_data, success_callback, error_callback)

pub extern "js" fn AudioContext::new(context_options : AudioContextOptions) -> AudioContext =
  #| (context_options) => new AudioContext(context_options)

pub extern "js" fn AudioContext::get_base_latency(self : AudioContext) -> Double =
  #| (self) => self.baseLatency

pub extern "js" fn AudioContext::get_output_latency(self : AudioContext) -> Double =
  #| (self) => self.outputLatency

pub extern "js" fn AudioContext::get_sink_id(self : AudioContext) -> JsValue =
  #| (self) => self.sinkId

pub extern "js" fn AudioContext::get_onsinkchange(self : AudioContext) -> EventHandler =
  #| (self) => self.onsinkchange

pub extern "js" fn AudioContext::set_onsinkchange(self : AudioContext, value : EventHandler) -> Unit =
  #| (self, value) => { self.onsinkchange = value }

pub extern "js" fn AudioContext::get_onerror(self : AudioContext) -> EventHandler =
  #| (self) => self.onerror

pub extern "js" fn AudioContext::set_onerror(self : AudioContext, value : EventHandler) -> Unit =
  #| (self, value) => { self.onerror = value }

pub extern "js" fn AudioContext::get_output_timestamp(self : AudioContext) -> AudioTimestamp =
  #| (self) => self.getOutputTimestamp()

pub extern "js" fn AudioContext::resume_(self : AudioContext) -> Promise[Unit] =
  #| (self) => self.resume()

pub extern "js" fn AudioContext::suspend(self : AudioContext) -> Promise[Unit] =
  #| (self) => self.suspend()

pub extern "js" fn AudioContext::close(self : AudioContext) -> Promise[Unit] =
  #| (self) => self.close()

pub extern "js" fn AudioContext::set_sink_id(self : AudioContext, sink_id : JsValue) -> Promise[Unit] =
  #| (self, sink_id) => self.setSinkId(sink_id)

pub extern "js" fn AudioContext::create_media_element_source(self : AudioContext, media_element : HTMLMediaElement) -> MediaElementAudioSourceNode =
  #| (self, media_element) => self.createMediaElementSource(media_element)

pub extern "js" fn AudioContext::create_media_stream_source(self : AudioContext, media_stream : MediaStream) -> MediaStreamAudioSourceNode =
  #| (self, media_stream) => self.createMediaStreamSource(media_stream)

pub extern "js" fn AudioContext::create_media_stream_track_source(self : AudioContext, media_stream_track : MediaStreamTrack) -> MediaStreamTrackAudioSourceNode =
  #| (self, media_stream_track) => self.createMediaStreamTrackSource(media_stream_track)

pub extern "js" fn AudioContext::create_media_stream_destination(self : AudioContext) -> MediaStreamAudioDestinationNode =
  #| (self) => self.createMediaStreamDestination()

///|
/// AudioSinkInfo interface
pub type AudioSinkInfo

pub extern "js" fn AudioSinkInfo::to_js_value(self : AudioSinkInfo) -> JsValue =
  #| (self) => self

pub extern "js" fn AudioSinkInfo::get_type(self : AudioSinkInfo) -> AudioSinkType =
  #| (self) => self.type

///|
/// OfflineAudioContext interface
pub type OfflineAudioContext

pub extern "js" fn OfflineAudioContext::to_js_value(self : OfflineAudioContext) -> JsValue =
  #| (self) => self

pub extern "js" fn OfflineAudioContext::get_destination(self : OfflineAudioContext) -> AudioDestinationNode =
  #| (self) => self.destination

pub extern "js" fn OfflineAudioContext::get_sample_rate(self : OfflineAudioContext) -> Double =
  #| (self) => self.sampleRate

pub extern "js" fn OfflineAudioContext::get_current_time(self : OfflineAudioContext) -> Double =
  #| (self) => self.currentTime

pub extern "js" fn OfflineAudioContext::get_listener(self : OfflineAudioContext) -> AudioListener =
  #| (self) => self.listener

pub extern "js" fn OfflineAudioContext::get_state(self : OfflineAudioContext) -> AudioContextState =
  #| (self) => self.state

pub extern "js" fn OfflineAudioContext::get_render_quantum_size(self : OfflineAudioContext) -> Int =
  #| (self) => self.renderQuantumSize

pub extern "js" fn OfflineAudioContext::get_audio_worklet(self : OfflineAudioContext) -> AudioWorklet =
  #| (self) => self.audioWorklet

pub extern "js" fn OfflineAudioContext::get_onstatechange(self : OfflineAudioContext) -> EventHandler =
  #| (self) => self.onstatechange

pub extern "js" fn OfflineAudioContext::set_onstatechange(self : OfflineAudioContext, value : EventHandler) -> Unit =
  #| (self, value) => { self.onstatechange = value }

pub extern "js" fn OfflineAudioContext::create_analyser(self : OfflineAudioContext) -> AnalyserNode =
  #| (self) => self.createAnalyser()

pub extern "js" fn OfflineAudioContext::create_biquad_filter(self : OfflineAudioContext) -> BiquadFilterNode =
  #| (self) => self.createBiquadFilter()

pub extern "js" fn OfflineAudioContext::create_buffer(self : OfflineAudioContext, number_of_channels : Int, length : Int, sample_rate : Double) -> AudioBuffer =
  #| (self, number_of_channels, length, sample_rate) => self.createBuffer(number_of_channels, length, sample_rate)

pub extern "js" fn OfflineAudioContext::create_buffer_source(self : OfflineAudioContext) -> AudioBufferSourceNode =
  #| (self) => self.createBufferSource()

pub extern "js" fn OfflineAudioContext::create_channel_merger(self : OfflineAudioContext) -> ChannelMergerNode =
  #| (self) => self.createChannelMerger()

pub extern "js" fn OfflineAudioContext::create_channel_merger_with_number_of_inputs(self : OfflineAudioContext, number_of_inputs : Int) -> ChannelMergerNode =
  #| (self, number_of_inputs) => self.createChannelMerger(number_of_inputs)

pub extern "js" fn OfflineAudioContext::create_channel_splitter(self : OfflineAudioContext) -> ChannelSplitterNode =
  #| (self) => self.createChannelSplitter()

pub extern "js" fn OfflineAudioContext::create_channel_splitter_with_number_of_outputs(self : OfflineAudioContext, number_of_outputs : Int) -> ChannelSplitterNode =
  #| (self, number_of_outputs) => self.createChannelSplitter(number_of_outputs)

pub extern "js" fn OfflineAudioContext::create_constant_source(self : OfflineAudioContext) -> ConstantSourceNode =
  #| (self) => self.createConstantSource()

pub extern "js" fn OfflineAudioContext::create_convolver(self : OfflineAudioContext) -> ConvolverNode =
  #| (self) => self.createConvolver()

pub extern "js" fn OfflineAudioContext::create_delay(self : OfflineAudioContext) -> DelayNode =
  #| (self) => self.createDelay()

pub extern "js" fn OfflineAudioContext::create_delay_with_max_delay_time(self : OfflineAudioContext, max_delay_time : Double) -> DelayNode =
  #| (self, max_delay_time) => self.createDelay(max_delay_time)

pub extern "js" fn OfflineAudioContext::create_dynamics_compressor(self : OfflineAudioContext) -> DynamicsCompressorNode =
  #| (self) => self.createDynamicsCompressor()

pub extern "js" fn OfflineAudioContext::create_gain(self : OfflineAudioContext) -> GainNode =
  #| (self) => self.createGain()

pub extern "js" fn OfflineAudioContext::create_i_i_r_filter(self : OfflineAudioContext, feedforward : Array[Double], feedback : Array[Double]) -> IIRFilterNode =
  #| (self, feedforward, feedback) => self.createIIRFilter(feedforward, feedback)

pub extern "js" fn OfflineAudioContext::create_oscillator(self : OfflineAudioContext) -> OscillatorNode =
  #| (self) => self.createOscillator()

pub extern "js" fn OfflineAudioContext::create_panner(self : OfflineAudioContext) -> PannerNode =
  #| (self) => self.createPanner()

pub extern "js" fn OfflineAudioContext::create_periodic_wave(self : OfflineAudioContext, real : Array[Double], imag : Array[Double]) -> PeriodicWave =
  #| (self, real, imag) => self.createPeriodicWave(real, imag)

pub extern "js" fn OfflineAudioContext::create_periodic_wave_with_constraints(self : OfflineAudioContext, real : Array[Double], imag : Array[Double], constraints : PeriodicWaveConstraints) -> PeriodicWave =
  #| (self, real, imag, constraints) => self.createPeriodicWave(real, imag, constraints)

pub extern "js" fn OfflineAudioContext::create_script_processor(self : OfflineAudioContext) -> ScriptProcessorNode =
  #| (self) => self.createScriptProcessor()

pub extern "js" fn OfflineAudioContext::create_script_processor_with_number_of_output_channels(self : OfflineAudioContext, buffer_size : Int, number_of_input_channels : Int, number_of_output_channels : Int) -> ScriptProcessorNode =
  #| (self, buffer_size, number_of_input_channels, number_of_output_channels) => self.createScriptProcessor(buffer_size, number_of_input_channels, number_of_output_channels)

pub extern "js" fn OfflineAudioContext::create_stereo_panner(self : OfflineAudioContext) -> StereoPannerNode =
  #| (self) => self.createStereoPanner()

pub extern "js" fn OfflineAudioContext::create_wave_shaper(self : OfflineAudioContext) -> WaveShaperNode =
  #| (self) => self.createWaveShaper()

pub extern "js" fn OfflineAudioContext::decode_audio_data(self : OfflineAudioContext, audio_data : ArrayBuffer) -> Promise[AudioBuffer] =
  #| (self, audio_data) => self.decodeAudioData(audio_data)

pub extern "js" fn OfflineAudioContext::decode_audio_data_with_error_callback(self : OfflineAudioContext, audio_data : ArrayBuffer, success_callback : DecodeSuccessCallback?, error_callback : DecodeErrorCallback?) -> Promise[AudioBuffer] =
  #| (self, audio_data, success_callback, error_callback) => self.decodeAudioData(audio_data, success_callback, error_callback)

pub extern "js" fn OfflineAudioContext::new(context_options : OfflineAudioContextOptions) -> OfflineAudioContext =
  #| (context_options) => new OfflineAudioContext(context_options)

pub extern "js" fn OfflineAudioContext::start_rendering(self : OfflineAudioContext) -> Promise[AudioBuffer] =
  #| (self) => self.startRendering()

pub extern "js" fn OfflineAudioContext::resume_(self : OfflineAudioContext) -> Promise[Unit] =
  #| (self) => self.resume()

pub extern "js" fn OfflineAudioContext::suspend(self : OfflineAudioContext, suspend_time : Double) -> Promise[Unit] =
  #| (self, suspend_time) => self.suspend(suspend_time)

pub extern "js" fn OfflineAudioContext::get_length(self : OfflineAudioContext) -> Int =
  #| (self) => self.length

pub extern "js" fn OfflineAudioContext::get_oncomplete(self : OfflineAudioContext) -> EventHandler =
  #| (self) => self.oncomplete

pub extern "js" fn OfflineAudioContext::set_oncomplete(self : OfflineAudioContext, value : EventHandler) -> Unit =
  #| (self, value) => { self.oncomplete = value }

///|
/// OfflineAudioCompletionEvent interface
pub type OfflineAudioCompletionEvent

pub extern "js" fn OfflineAudioCompletionEvent::to_js_value(self : OfflineAudioCompletionEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn OfflineAudioCompletionEvent::new(type_ : String, event_init_dict : OfflineAudioCompletionEventInit) -> OfflineAudioCompletionEvent =
  #| (type_, event_init_dict) => new OfflineAudioCompletionEvent(type_, event_init_dict)

pub extern "js" fn OfflineAudioCompletionEvent::get_rendered_buffer(self : OfflineAudioCompletionEvent) -> AudioBuffer =
  #| (self) => self.renderedBuffer

///|
/// AudioBuffer interface
pub type AudioBuffer

pub extern "js" fn AudioBuffer::to_js_value(self : AudioBuffer) -> JsValue =
  #| (self) => self

pub extern "js" fn AudioBuffer::new(options : AudioBufferOptions) -> AudioBuffer =
  #| (options) => new AudioBuffer(options)

pub extern "js" fn AudioBuffer::get_sample_rate(self : AudioBuffer) -> Double =
  #| (self) => self.sampleRate

pub extern "js" fn AudioBuffer::get_length(self : AudioBuffer) -> Int =
  #| (self) => self.length

pub extern "js" fn AudioBuffer::get_duration(self : AudioBuffer) -> Double =
  #| (self) => self.duration

pub extern "js" fn AudioBuffer::get_number_of_channels(self : AudioBuffer) -> Int =
  #| (self) => self.numberOfChannels

pub extern "js" fn AudioBuffer::get_channel_data(self : AudioBuffer, channel : Int) -> Float32Array =
  #| (self, channel) => self.getChannelData(channel)

pub extern "js" fn AudioBuffer::copy_from_channel(self : AudioBuffer, destination : Float32Array, channel_number : Int) -> Unit =
  #| (self, destination, channel_number) => self.copyFromChannel(destination, channel_number)

pub extern "js" fn AudioBuffer::copy_from_channel_with_buffer_offset(self : AudioBuffer, destination : Float32Array, channel_number : Int, buffer_offset : Int) -> Unit =
  #| (self, destination, channel_number, buffer_offset) => self.copyFromChannel(destination, channel_number, buffer_offset)

pub extern "js" fn AudioBuffer::copy_to_channel(self : AudioBuffer, source : Float32Array, channel_number : Int) -> Unit =
  #| (self, source, channel_number) => self.copyToChannel(source, channel_number)

pub extern "js" fn AudioBuffer::copy_to_channel_with_buffer_offset(self : AudioBuffer, source : Float32Array, channel_number : Int, buffer_offset : Int) -> Unit =
  #| (self, source, channel_number, buffer_offset) => self.copyToChannel(source, channel_number, buffer_offset)

///|
/// AudioNode interface
pub type AudioNode

pub extern "js" fn AudioNode::to_js_value(self : AudioNode) -> JsValue =
  #| (self) => self

pub extern "js" fn AudioNode::connect(self : AudioNode, destination_node : AudioNode) -> AudioNode =
  #| (self, destination_node) => self.connect(destination_node)

pub extern "js" fn AudioNode::connect_with_input(self : AudioNode, destination_node : AudioNode, output : Int, input : Int) -> AudioNode =
  #| (self, destination_node, output, input) => self.connect(destination_node, output, input)

pub extern "js" fn AudioNode::connect_with_destination_param_audio_param(self : AudioNode, destination_param : AudioParam) -> Unit =
  #| (self, destination_param) => self.connect(destination_param)

pub extern "js" fn AudioNode::connect_with_destination_param_audio_param_and_output(self : AudioNode, destination_param : AudioParam, output : Int) -> Unit =
  #| (self, destination_param, output) => self.connect(destination_param, output)

pub extern "js" fn AudioNode::disconnect(self : AudioNode) -> Unit =
  #| (self) => self.disconnect()

pub extern "js" fn AudioNode::disconnect_with_output(self : AudioNode, output : Int) -> Unit =
  #| (self, output) => self.disconnect(output)

pub extern "js" fn AudioNode::disconnect_with_destination_node_audio_node(self : AudioNode, destination_node : AudioNode) -> Unit =
  #| (self, destination_node) => self.disconnect(destination_node)

pub extern "js" fn AudioNode::disconnect_with_destination_param_audio_param(self : AudioNode, destination_param : AudioParam) -> Unit =
  #| (self, destination_param) => self.disconnect(destination_param)

pub extern "js" fn AudioNode::disconnect_with_destination_node_audio_node_and_output(self : AudioNode, destination_node : AudioNode, output : Int) -> Unit =
  #| (self, destination_node, output) => self.disconnect(destination_node, output)

pub extern "js" fn AudioNode::disconnect_with_destination_param_audio_param_and_output(self : AudioNode, destination_param : AudioParam, output : Int) -> Unit =
  #| (self, destination_param, output) => self.disconnect(destination_param, output)

pub extern "js" fn AudioNode::disconnect_with_destination_node_audio_node_and_output_and_input(self : AudioNode, destination_node : AudioNode, output : Int, input : Int) -> Unit =
  #| (self, destination_node, output, input) => self.disconnect(destination_node, output, input)

pub extern "js" fn AudioNode::get_context(self : AudioNode) -> BaseAudioContext =
  #| (self) => self.context

pub extern "js" fn AudioNode::get_number_of_inputs(self : AudioNode) -> Int =
  #| (self) => self.numberOfInputs

pub extern "js" fn AudioNode::get_number_of_outputs(self : AudioNode) -> Int =
  #| (self) => self.numberOfOutputs

pub extern "js" fn AudioNode::get_channel_count(self : AudioNode) -> Int =
  #| (self) => self.channelCount

pub extern "js" fn AudioNode::set_channel_count(self : AudioNode, value : Int) -> Unit =
  #| (self, value) => { self.channelCount = value }

pub extern "js" fn AudioNode::get_channel_count_mode(self : AudioNode) -> ChannelCountMode =
  #| (self) => self.channelCountMode

pub extern "js" fn AudioNode::set_channel_count_mode(self : AudioNode, value : ChannelCountMode) -> Unit =
  #| (self, value) => { self.channelCountMode = value }

pub extern "js" fn AudioNode::get_channel_interpretation(self : AudioNode) -> ChannelInterpretation =
  #| (self) => self.channelInterpretation

pub extern "js" fn AudioNode::set_channel_interpretation(self : AudioNode, value : ChannelInterpretation) -> Unit =
  #| (self, value) => { self.channelInterpretation = value }

///|
/// AudioParam interface
pub type AudioParam

pub extern "js" fn AudioParam::to_js_value(self : AudioParam) -> JsValue =
  #| (self) => self

pub extern "js" fn AudioParam::get_value(self : AudioParam) -> Double =
  #| (self) => self.value

pub extern "js" fn AudioParam::set_value(self : AudioParam, value : Double) -> Unit =
  #| (self, value) => { self.value = value }

pub extern "js" fn AudioParam::get_automation_rate(self : AudioParam) -> AutomationRate =
  #| (self) => self.automationRate

pub extern "js" fn AudioParam::set_automation_rate(self : AudioParam, value : AutomationRate) -> Unit =
  #| (self, value) => { self.automationRate = value }

pub extern "js" fn AudioParam::get_default_value(self : AudioParam) -> Double =
  #| (self) => self.defaultValue

pub extern "js" fn AudioParam::get_min_value(self : AudioParam) -> Double =
  #| (self) => self.minValue

pub extern "js" fn AudioParam::get_max_value(self : AudioParam) -> Double =
  #| (self) => self.maxValue

pub extern "js" fn AudioParam::set_value_at_time(self : AudioParam, value : Double, start_time : Double) -> AudioParam =
  #| (self, value, start_time) => self.setValueAtTime(value, start_time)

pub extern "js" fn AudioParam::linear_ramp_to_value_at_time(self : AudioParam, value : Double, end_time : Double) -> AudioParam =
  #| (self, value, end_time) => self.linearRampToValueAtTime(value, end_time)

pub extern "js" fn AudioParam::exponential_ramp_to_value_at_time(self : AudioParam, value : Double, end_time : Double) -> AudioParam =
  #| (self, value, end_time) => self.exponentialRampToValueAtTime(value, end_time)

pub extern "js" fn AudioParam::set_target_at_time(self : AudioParam, target : Double, start_time : Double, time_constant : Double) -> AudioParam =
  #| (self, target, start_time, time_constant) => self.setTargetAtTime(target, start_time, time_constant)

pub extern "js" fn AudioParam::set_value_curve_at_time(self : AudioParam, values : Array[Double], start_time : Double, duration : Double) -> AudioParam =
  #| (self, values, start_time, duration) => self.setValueCurveAtTime(values, start_time, duration)

pub extern "js" fn AudioParam::cancel_scheduled_values(self : AudioParam, cancel_time : Double) -> AudioParam =
  #| (self, cancel_time) => self.cancelScheduledValues(cancel_time)

pub extern "js" fn AudioParam::cancel_and_hold_at_time(self : AudioParam, cancel_time : Double) -> AudioParam =
  #| (self, cancel_time) => self.cancelAndHoldAtTime(cancel_time)

///|
/// AudioScheduledSourceNode interface
pub type AudioScheduledSourceNode

pub extern "js" fn AudioScheduledSourceNode::to_js_value(self : AudioScheduledSourceNode) -> JsValue =
  #| (self) => self

pub extern "js" fn AudioScheduledSourceNode::connect(self : AudioScheduledSourceNode, destination_node : AudioNode) -> AudioNode =
  #| (self, destination_node) => self.connect(destination_node)

pub extern "js" fn AudioScheduledSourceNode::connect_with_input(self : AudioScheduledSourceNode, destination_node : AudioNode, output : Int, input : Int) -> AudioNode =
  #| (self, destination_node, output, input) => self.connect(destination_node, output, input)

pub extern "js" fn AudioScheduledSourceNode::disconnect(self : AudioScheduledSourceNode) -> Unit =
  #| (self) => self.disconnect()

pub extern "js" fn AudioScheduledSourceNode::get_context(self : AudioScheduledSourceNode) -> BaseAudioContext =
  #| (self) => self.context

pub extern "js" fn AudioScheduledSourceNode::get_number_of_inputs(self : AudioScheduledSourceNode) -> Int =
  #| (self) => self.numberOfInputs

pub extern "js" fn AudioScheduledSourceNode::get_number_of_outputs(self : AudioScheduledSourceNode) -> Int =
  #| (self) => self.numberOfOutputs

pub extern "js" fn AudioScheduledSourceNode::get_channel_count(self : AudioScheduledSourceNode) -> Int =
  #| (self) => self.channelCount

pub extern "js" fn AudioScheduledSourceNode::set_channel_count(self : AudioScheduledSourceNode, value : Int) -> Unit =
  #| (self, value) => { self.channelCount = value }

pub extern "js" fn AudioScheduledSourceNode::get_channel_count_mode(self : AudioScheduledSourceNode) -> ChannelCountMode =
  #| (self) => self.channelCountMode

pub extern "js" fn AudioScheduledSourceNode::set_channel_count_mode(self : AudioScheduledSourceNode, value : ChannelCountMode) -> Unit =
  #| (self, value) => { self.channelCountMode = value }

pub extern "js" fn AudioScheduledSourceNode::get_channel_interpretation(self : AudioScheduledSourceNode) -> ChannelInterpretation =
  #| (self) => self.channelInterpretation

pub extern "js" fn AudioScheduledSourceNode::set_channel_interpretation(self : AudioScheduledSourceNode, value : ChannelInterpretation) -> Unit =
  #| (self, value) => { self.channelInterpretation = value }

pub extern "js" fn AudioScheduledSourceNode::get_onended(self : AudioScheduledSourceNode) -> EventHandler =
  #| (self) => self.onended

pub extern "js" fn AudioScheduledSourceNode::set_onended(self : AudioScheduledSourceNode, value : EventHandler) -> Unit =
  #| (self, value) => { self.onended = value }

pub extern "js" fn AudioScheduledSourceNode::start(self : AudioScheduledSourceNode) -> Unit =
  #| (self) => self.start()

pub extern "js" fn AudioScheduledSourceNode::start_with_when(self : AudioScheduledSourceNode, when : Double) -> Unit =
  #| (self, when) => self.start(when)

pub extern "js" fn AudioScheduledSourceNode::stop(self : AudioScheduledSourceNode) -> Unit =
  #| (self) => self.stop()

pub extern "js" fn AudioScheduledSourceNode::stop_with_when(self : AudioScheduledSourceNode, when : Double) -> Unit =
  #| (self, when) => self.stop(when)

///|
/// AnalyserNode interface
pub type AnalyserNode

pub extern "js" fn AnalyserNode::to_js_value(self : AnalyserNode) -> JsValue =
  #| (self) => self

pub extern "js" fn AnalyserNode::connect(self : AnalyserNode, destination_node : AudioNode) -> AudioNode =
  #| (self, destination_node) => self.connect(destination_node)

pub extern "js" fn AnalyserNode::connect_with_input(self : AnalyserNode, destination_node : AudioNode, output : Int, input : Int) -> AudioNode =
  #| (self, destination_node, output, input) => self.connect(destination_node, output, input)

pub extern "js" fn AnalyserNode::disconnect(self : AnalyserNode) -> Unit =
  #| (self) => self.disconnect()

pub extern "js" fn AnalyserNode::get_context(self : AnalyserNode) -> BaseAudioContext =
  #| (self) => self.context

pub extern "js" fn AnalyserNode::get_number_of_inputs(self : AnalyserNode) -> Int =
  #| (self) => self.numberOfInputs

pub extern "js" fn AnalyserNode::get_number_of_outputs(self : AnalyserNode) -> Int =
  #| (self) => self.numberOfOutputs

pub extern "js" fn AnalyserNode::get_channel_count(self : AnalyserNode) -> Int =
  #| (self) => self.channelCount

pub extern "js" fn AnalyserNode::set_channel_count(self : AnalyserNode, value : Int) -> Unit =
  #| (self, value) => { self.channelCount = value }

pub extern "js" fn AnalyserNode::get_channel_count_mode(self : AnalyserNode) -> ChannelCountMode =
  #| (self) => self.channelCountMode

pub extern "js" fn AnalyserNode::set_channel_count_mode(self : AnalyserNode, value : ChannelCountMode) -> Unit =
  #| (self, value) => { self.channelCountMode = value }

pub extern "js" fn AnalyserNode::get_channel_interpretation(self : AnalyserNode) -> ChannelInterpretation =
  #| (self) => self.channelInterpretation

pub extern "js" fn AnalyserNode::set_channel_interpretation(self : AnalyserNode, value : ChannelInterpretation) -> Unit =
  #| (self, value) => { self.channelInterpretation = value }

pub extern "js" fn AnalyserNode::new(context : BaseAudioContext, options : AnalyserOptions) -> AnalyserNode =
  #| (context, options) => new AnalyserNode(context, options)

pub extern "js" fn AnalyserNode::get_float_frequency_data(self : AnalyserNode, array : Float32Array) -> Unit =
  #| (self, array) => self.getFloatFrequencyData(array)

pub extern "js" fn AnalyserNode::get_byte_frequency_data(self : AnalyserNode, array : Uint8Array) -> Unit =
  #| (self, array) => self.getByteFrequencyData(array)

pub extern "js" fn AnalyserNode::get_float_time_domain_data(self : AnalyserNode, array : Float32Array) -> Unit =
  #| (self, array) => self.getFloatTimeDomainData(array)

pub extern "js" fn AnalyserNode::get_byte_time_domain_data(self : AnalyserNode, array : Uint8Array) -> Unit =
  #| (self, array) => self.getByteTimeDomainData(array)

pub extern "js" fn AnalyserNode::get_fft_size(self : AnalyserNode) -> Int =
  #| (self) => self.fftSize

pub extern "js" fn AnalyserNode::set_fft_size(self : AnalyserNode, value : Int) -> Unit =
  #| (self, value) => { self.fftSize = value }

pub extern "js" fn AnalyserNode::get_frequency_bin_count(self : AnalyserNode) -> Int =
  #| (self) => self.frequencyBinCount

pub extern "js" fn AnalyserNode::get_min_decibels(self : AnalyserNode) -> Double =
  #| (self) => self.minDecibels

pub extern "js" fn AnalyserNode::set_min_decibels(self : AnalyserNode, value : Double) -> Unit =
  #| (self, value) => { self.minDecibels = value }

pub extern "js" fn AnalyserNode::get_max_decibels(self : AnalyserNode) -> Double =
  #| (self) => self.maxDecibels

pub extern "js" fn AnalyserNode::set_max_decibels(self : AnalyserNode, value : Double) -> Unit =
  #| (self, value) => { self.maxDecibels = value }

pub extern "js" fn AnalyserNode::get_smoothing_time_constant(self : AnalyserNode) -> Double =
  #| (self) => self.smoothingTimeConstant

pub extern "js" fn AnalyserNode::set_smoothing_time_constant(self : AnalyserNode, value : Double) -> Unit =
  #| (self, value) => { self.smoothingTimeConstant = value }

///|
/// AudioBufferSourceNode interface
pub type AudioBufferSourceNode

pub extern "js" fn AudioBufferSourceNode::to_js_value(self : AudioBufferSourceNode) -> JsValue =
  #| (self) => self

pub extern "js" fn AudioBufferSourceNode::connect(self : AudioBufferSourceNode, destination_node : AudioNode) -> AudioNode =
  #| (self, destination_node) => self.connect(destination_node)

pub extern "js" fn AudioBufferSourceNode::connect_with_input(self : AudioBufferSourceNode, destination_node : AudioNode, output : Int, input : Int) -> AudioNode =
  #| (self, destination_node, output, input) => self.connect(destination_node, output, input)

pub extern "js" fn AudioBufferSourceNode::disconnect(self : AudioBufferSourceNode) -> Unit =
  #| (self) => self.disconnect()

pub extern "js" fn AudioBufferSourceNode::get_context(self : AudioBufferSourceNode) -> BaseAudioContext =
  #| (self) => self.context

pub extern "js" fn AudioBufferSourceNode::get_number_of_inputs(self : AudioBufferSourceNode) -> Int =
  #| (self) => self.numberOfInputs

pub extern "js" fn AudioBufferSourceNode::get_number_of_outputs(self : AudioBufferSourceNode) -> Int =
  #| (self) => self.numberOfOutputs

pub extern "js" fn AudioBufferSourceNode::get_channel_count(self : AudioBufferSourceNode) -> Int =
  #| (self) => self.channelCount

pub extern "js" fn AudioBufferSourceNode::set_channel_count(self : AudioBufferSourceNode, value : Int) -> Unit =
  #| (self, value) => { self.channelCount = value }

pub extern "js" fn AudioBufferSourceNode::get_channel_count_mode(self : AudioBufferSourceNode) -> ChannelCountMode =
  #| (self) => self.channelCountMode

pub extern "js" fn AudioBufferSourceNode::set_channel_count_mode(self : AudioBufferSourceNode, value : ChannelCountMode) -> Unit =
  #| (self, value) => { self.channelCountMode = value }

pub extern "js" fn AudioBufferSourceNode::get_channel_interpretation(self : AudioBufferSourceNode) -> ChannelInterpretation =
  #| (self) => self.channelInterpretation

pub extern "js" fn AudioBufferSourceNode::set_channel_interpretation(self : AudioBufferSourceNode, value : ChannelInterpretation) -> Unit =
  #| (self, value) => { self.channelInterpretation = value }

pub extern "js" fn AudioBufferSourceNode::get_onended(self : AudioBufferSourceNode) -> EventHandler =
  #| (self) => self.onended

pub extern "js" fn AudioBufferSourceNode::set_onended(self : AudioBufferSourceNode, value : EventHandler) -> Unit =
  #| (self, value) => { self.onended = value }

pub extern "js" fn AudioBufferSourceNode::start(self : AudioBufferSourceNode) -> Unit =
  #| (self) => self.start()

pub extern "js" fn AudioBufferSourceNode::start_with_when(self : AudioBufferSourceNode, when : Double) -> Unit =
  #| (self, when) => self.start(when)

pub extern "js" fn AudioBufferSourceNode::stop(self : AudioBufferSourceNode) -> Unit =
  #| (self) => self.stop()

pub extern "js" fn AudioBufferSourceNode::stop_with_when(self : AudioBufferSourceNode, when : Double) -> Unit =
  #| (self, when) => self.stop(when)

pub extern "js" fn AudioBufferSourceNode::new(context : BaseAudioContext, options : AudioBufferSourceOptions) -> AudioBufferSourceNode =
  #| (context, options) => new AudioBufferSourceNode(context, options)

pub extern "js" fn AudioBufferSourceNode::get_buffer(self : AudioBufferSourceNode) -> AudioBuffer? =
  #| (self) => self.buffer

pub extern "js" fn AudioBufferSourceNode::set_buffer(self : AudioBufferSourceNode, value : AudioBuffer?) -> Unit =
  #| (self, value) => { self.buffer = value }

pub extern "js" fn AudioBufferSourceNode::get_playback_rate(self : AudioBufferSourceNode) -> AudioParam =
  #| (self) => self.playbackRate

pub extern "js" fn AudioBufferSourceNode::get_detune(self : AudioBufferSourceNode) -> AudioParam =
  #| (self) => self.detune

pub extern "js" fn AudioBufferSourceNode::get_loop(self : AudioBufferSourceNode) -> Bool =
  #| (self) => self.loop

pub extern "js" fn AudioBufferSourceNode::set_loop(self : AudioBufferSourceNode, value : Bool) -> Unit =
  #| (self, value) => { self.loop = value }

pub extern "js" fn AudioBufferSourceNode::get_loop_start(self : AudioBufferSourceNode) -> Double =
  #| (self) => self.loopStart

pub extern "js" fn AudioBufferSourceNode::set_loop_start(self : AudioBufferSourceNode, value : Double) -> Unit =
  #| (self, value) => { self.loopStart = value }

pub extern "js" fn AudioBufferSourceNode::get_loop_end(self : AudioBufferSourceNode) -> Double =
  #| (self) => self.loopEnd

pub extern "js" fn AudioBufferSourceNode::set_loop_end(self : AudioBufferSourceNode, value : Double) -> Unit =
  #| (self, value) => { self.loopEnd = value }

///|
/// AudioDestinationNode interface
pub type AudioDestinationNode

pub extern "js" fn AudioDestinationNode::to_js_value(self : AudioDestinationNode) -> JsValue =
  #| (self) => self

pub extern "js" fn AudioDestinationNode::connect(self : AudioDestinationNode, destination_node : AudioNode) -> AudioNode =
  #| (self, destination_node) => self.connect(destination_node)

pub extern "js" fn AudioDestinationNode::connect_with_input(self : AudioDestinationNode, destination_node : AudioNode, output : Int, input : Int) -> AudioNode =
  #| (self, destination_node, output, input) => self.connect(destination_node, output, input)

pub extern "js" fn AudioDestinationNode::disconnect(self : AudioDestinationNode) -> Unit =
  #| (self) => self.disconnect()

pub extern "js" fn AudioDestinationNode::get_context(self : AudioDestinationNode) -> BaseAudioContext =
  #| (self) => self.context

pub extern "js" fn AudioDestinationNode::get_number_of_inputs(self : AudioDestinationNode) -> Int =
  #| (self) => self.numberOfInputs

pub extern "js" fn AudioDestinationNode::get_number_of_outputs(self : AudioDestinationNode) -> Int =
  #| (self) => self.numberOfOutputs

pub extern "js" fn AudioDestinationNode::get_channel_count(self : AudioDestinationNode) -> Int =
  #| (self) => self.channelCount

pub extern "js" fn AudioDestinationNode::set_channel_count(self : AudioDestinationNode, value : Int) -> Unit =
  #| (self, value) => { self.channelCount = value }

pub extern "js" fn AudioDestinationNode::get_channel_count_mode(self : AudioDestinationNode) -> ChannelCountMode =
  #| (self) => self.channelCountMode

pub extern "js" fn AudioDestinationNode::set_channel_count_mode(self : AudioDestinationNode, value : ChannelCountMode) -> Unit =
  #| (self, value) => { self.channelCountMode = value }

pub extern "js" fn AudioDestinationNode::get_channel_interpretation(self : AudioDestinationNode) -> ChannelInterpretation =
  #| (self) => self.channelInterpretation

pub extern "js" fn AudioDestinationNode::set_channel_interpretation(self : AudioDestinationNode, value : ChannelInterpretation) -> Unit =
  #| (self, value) => { self.channelInterpretation = value }

pub extern "js" fn AudioDestinationNode::get_max_channel_count(self : AudioDestinationNode) -> Int =
  #| (self) => self.maxChannelCount

///|
/// AudioListener interface
pub type AudioListener

pub extern "js" fn AudioListener::to_js_value(self : AudioListener) -> JsValue =
  #| (self) => self

pub extern "js" fn AudioListener::get_position_x(self : AudioListener) -> AudioParam =
  #| (self) => self.positionX

pub extern "js" fn AudioListener::get_position_y(self : AudioListener) -> AudioParam =
  #| (self) => self.positionY

pub extern "js" fn AudioListener::get_position_z(self : AudioListener) -> AudioParam =
  #| (self) => self.positionZ

pub extern "js" fn AudioListener::get_forward_x(self : AudioListener) -> AudioParam =
  #| (self) => self.forwardX

pub extern "js" fn AudioListener::get_forward_y(self : AudioListener) -> AudioParam =
  #| (self) => self.forwardY

pub extern "js" fn AudioListener::get_forward_z(self : AudioListener) -> AudioParam =
  #| (self) => self.forwardZ

pub extern "js" fn AudioListener::get_up_x(self : AudioListener) -> AudioParam =
  #| (self) => self.upX

pub extern "js" fn AudioListener::get_up_y(self : AudioListener) -> AudioParam =
  #| (self) => self.upY

pub extern "js" fn AudioListener::get_up_z(self : AudioListener) -> AudioParam =
  #| (self) => self.upZ

pub extern "js" fn AudioListener::set_position(self : AudioListener, x : Double, y : Double, z : Double) -> Unit =
  #| (self, x, y, z) => self.setPosition(x, y, z)

pub extern "js" fn AudioListener::set_orientation(self : AudioListener, x : Double, y : Double, z : Double, x_up : Double, y_up : Double, z_up : Double) -> Unit =
  #| (self, x, y, z, x_up, y_up, z_up) => self.setOrientation(x, y, z, x_up, y_up, z_up)

///|
/// AudioProcessingEvent interface
pub type AudioProcessingEvent

pub extern "js" fn AudioProcessingEvent::to_js_value(self : AudioProcessingEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn AudioProcessingEvent::new(type_ : String, event_init_dict : AudioProcessingEventInit) -> AudioProcessingEvent =
  #| (type_, event_init_dict) => new AudioProcessingEvent(type_, event_init_dict)

pub extern "js" fn AudioProcessingEvent::get_playback_time(self : AudioProcessingEvent) -> Double =
  #| (self) => self.playbackTime

pub extern "js" fn AudioProcessingEvent::get_input_buffer(self : AudioProcessingEvent) -> AudioBuffer =
  #| (self) => self.inputBuffer

pub extern "js" fn AudioProcessingEvent::get_output_buffer(self : AudioProcessingEvent) -> AudioBuffer =
  #| (self) => self.outputBuffer

///|
/// BiquadFilterNode interface
pub type BiquadFilterNode

pub extern "js" fn BiquadFilterNode::to_js_value(self : BiquadFilterNode) -> JsValue =
  #| (self) => self

pub extern "js" fn BiquadFilterNode::connect(self : BiquadFilterNode, destination_node : AudioNode) -> AudioNode =
  #| (self, destination_node) => self.connect(destination_node)

pub extern "js" fn BiquadFilterNode::connect_with_input(self : BiquadFilterNode, destination_node : AudioNode, output : Int, input : Int) -> AudioNode =
  #| (self, destination_node, output, input) => self.connect(destination_node, output, input)

pub extern "js" fn BiquadFilterNode::disconnect(self : BiquadFilterNode) -> Unit =
  #| (self) => self.disconnect()

pub extern "js" fn BiquadFilterNode::get_context(self : BiquadFilterNode) -> BaseAudioContext =
  #| (self) => self.context

pub extern "js" fn BiquadFilterNode::get_number_of_inputs(self : BiquadFilterNode) -> Int =
  #| (self) => self.numberOfInputs

pub extern "js" fn BiquadFilterNode::get_number_of_outputs(self : BiquadFilterNode) -> Int =
  #| (self) => self.numberOfOutputs

pub extern "js" fn BiquadFilterNode::get_channel_count(self : BiquadFilterNode) -> Int =
  #| (self) => self.channelCount

pub extern "js" fn BiquadFilterNode::set_channel_count(self : BiquadFilterNode, value : Int) -> Unit =
  #| (self, value) => { self.channelCount = value }

pub extern "js" fn BiquadFilterNode::get_channel_count_mode(self : BiquadFilterNode) -> ChannelCountMode =
  #| (self) => self.channelCountMode

pub extern "js" fn BiquadFilterNode::set_channel_count_mode(self : BiquadFilterNode, value : ChannelCountMode) -> Unit =
  #| (self, value) => { self.channelCountMode = value }

pub extern "js" fn BiquadFilterNode::get_channel_interpretation(self : BiquadFilterNode) -> ChannelInterpretation =
  #| (self) => self.channelInterpretation

pub extern "js" fn BiquadFilterNode::set_channel_interpretation(self : BiquadFilterNode, value : ChannelInterpretation) -> Unit =
  #| (self, value) => { self.channelInterpretation = value }

pub extern "js" fn BiquadFilterNode::new(context : BaseAudioContext, options : BiquadFilterOptions) -> BiquadFilterNode =
  #| (context, options) => new BiquadFilterNode(context, options)

pub extern "js" fn BiquadFilterNode::get_type(self : BiquadFilterNode) -> BiquadFilterType =
  #| (self) => self.type

pub extern "js" fn BiquadFilterNode::set_type(self : BiquadFilterNode, value : BiquadFilterType) -> Unit =
  #| (self, value) => { self.type = value }

pub extern "js" fn BiquadFilterNode::get_frequency(self : BiquadFilterNode) -> AudioParam =
  #| (self) => self.frequency

pub extern "js" fn BiquadFilterNode::get_detune(self : BiquadFilterNode) -> AudioParam =
  #| (self) => self.detune

pub extern "js" fn BiquadFilterNode::get_q(self : BiquadFilterNode) -> AudioParam =
  #| (self) => self.Q

pub extern "js" fn BiquadFilterNode::get_gain(self : BiquadFilterNode) -> AudioParam =
  #| (self) => self.gain

pub extern "js" fn BiquadFilterNode::get_frequency_response(self : BiquadFilterNode, frequency_hz : Float32Array, mag_response : Float32Array, phase_response : Float32Array) -> Unit =
  #| (self, frequency_hz, mag_response, phase_response) => self.getFrequencyResponse(frequency_hz, mag_response, phase_response)

///|
/// ChannelMergerNode interface
pub type ChannelMergerNode

pub extern "js" fn ChannelMergerNode::to_js_value(self : ChannelMergerNode) -> JsValue =
  #| (self) => self

pub extern "js" fn ChannelMergerNode::connect(self : ChannelMergerNode, destination_node : AudioNode) -> AudioNode =
  #| (self, destination_node) => self.connect(destination_node)

pub extern "js" fn ChannelMergerNode::connect_with_input(self : ChannelMergerNode, destination_node : AudioNode, output : Int, input : Int) -> AudioNode =
  #| (self, destination_node, output, input) => self.connect(destination_node, output, input)

pub extern "js" fn ChannelMergerNode::disconnect(self : ChannelMergerNode) -> Unit =
  #| (self) => self.disconnect()

pub extern "js" fn ChannelMergerNode::get_context(self : ChannelMergerNode) -> BaseAudioContext =
  #| (self) => self.context

pub extern "js" fn ChannelMergerNode::get_number_of_inputs(self : ChannelMergerNode) -> Int =
  #| (self) => self.numberOfInputs

pub extern "js" fn ChannelMergerNode::get_number_of_outputs(self : ChannelMergerNode) -> Int =
  #| (self) => self.numberOfOutputs

pub extern "js" fn ChannelMergerNode::get_channel_count(self : ChannelMergerNode) -> Int =
  #| (self) => self.channelCount

pub extern "js" fn ChannelMergerNode::set_channel_count(self : ChannelMergerNode, value : Int) -> Unit =
  #| (self, value) => { self.channelCount = value }

pub extern "js" fn ChannelMergerNode::get_channel_count_mode(self : ChannelMergerNode) -> ChannelCountMode =
  #| (self) => self.channelCountMode

pub extern "js" fn ChannelMergerNode::set_channel_count_mode(self : ChannelMergerNode, value : ChannelCountMode) -> Unit =
  #| (self, value) => { self.channelCountMode = value }

pub extern "js" fn ChannelMergerNode::get_channel_interpretation(self : ChannelMergerNode) -> ChannelInterpretation =
  #| (self) => self.channelInterpretation

pub extern "js" fn ChannelMergerNode::set_channel_interpretation(self : ChannelMergerNode, value : ChannelInterpretation) -> Unit =
  #| (self, value) => { self.channelInterpretation = value }

pub extern "js" fn ChannelMergerNode::new(context : BaseAudioContext, options : ChannelMergerOptions) -> ChannelMergerNode =
  #| (context, options) => new ChannelMergerNode(context, options)

///|
/// ChannelSplitterNode interface
pub type ChannelSplitterNode

pub extern "js" fn ChannelSplitterNode::to_js_value(self : ChannelSplitterNode) -> JsValue =
  #| (self) => self

pub extern "js" fn ChannelSplitterNode::connect(self : ChannelSplitterNode, destination_node : AudioNode) -> AudioNode =
  #| (self, destination_node) => self.connect(destination_node)

pub extern "js" fn ChannelSplitterNode::connect_with_input(self : ChannelSplitterNode, destination_node : AudioNode, output : Int, input : Int) -> AudioNode =
  #| (self, destination_node, output, input) => self.connect(destination_node, output, input)

pub extern "js" fn ChannelSplitterNode::disconnect(self : ChannelSplitterNode) -> Unit =
  #| (self) => self.disconnect()

pub extern "js" fn ChannelSplitterNode::get_context(self : ChannelSplitterNode) -> BaseAudioContext =
  #| (self) => self.context

pub extern "js" fn ChannelSplitterNode::get_number_of_inputs(self : ChannelSplitterNode) -> Int =
  #| (self) => self.numberOfInputs

pub extern "js" fn ChannelSplitterNode::get_number_of_outputs(self : ChannelSplitterNode) -> Int =
  #| (self) => self.numberOfOutputs

pub extern "js" fn ChannelSplitterNode::get_channel_count(self : ChannelSplitterNode) -> Int =
  #| (self) => self.channelCount

pub extern "js" fn ChannelSplitterNode::set_channel_count(self : ChannelSplitterNode, value : Int) -> Unit =
  #| (self, value) => { self.channelCount = value }

pub extern "js" fn ChannelSplitterNode::get_channel_count_mode(self : ChannelSplitterNode) -> ChannelCountMode =
  #| (self) => self.channelCountMode

pub extern "js" fn ChannelSplitterNode::set_channel_count_mode(self : ChannelSplitterNode, value : ChannelCountMode) -> Unit =
  #| (self, value) => { self.channelCountMode = value }

pub extern "js" fn ChannelSplitterNode::get_channel_interpretation(self : ChannelSplitterNode) -> ChannelInterpretation =
  #| (self) => self.channelInterpretation

pub extern "js" fn ChannelSplitterNode::set_channel_interpretation(self : ChannelSplitterNode, value : ChannelInterpretation) -> Unit =
  #| (self, value) => { self.channelInterpretation = value }

pub extern "js" fn ChannelSplitterNode::new(context : BaseAudioContext, options : ChannelSplitterOptions) -> ChannelSplitterNode =
  #| (context, options) => new ChannelSplitterNode(context, options)

///|
/// ConstantSourceNode interface
pub type ConstantSourceNode

pub extern "js" fn ConstantSourceNode::to_js_value(self : ConstantSourceNode) -> JsValue =
  #| (self) => self

pub extern "js" fn ConstantSourceNode::connect(self : ConstantSourceNode, destination_node : AudioNode) -> AudioNode =
  #| (self, destination_node) => self.connect(destination_node)

pub extern "js" fn ConstantSourceNode::connect_with_input(self : ConstantSourceNode, destination_node : AudioNode, output : Int, input : Int) -> AudioNode =
  #| (self, destination_node, output, input) => self.connect(destination_node, output, input)

pub extern "js" fn ConstantSourceNode::disconnect(self : ConstantSourceNode) -> Unit =
  #| (self) => self.disconnect()

pub extern "js" fn ConstantSourceNode::get_context(self : ConstantSourceNode) -> BaseAudioContext =
  #| (self) => self.context

pub extern "js" fn ConstantSourceNode::get_number_of_inputs(self : ConstantSourceNode) -> Int =
  #| (self) => self.numberOfInputs

pub extern "js" fn ConstantSourceNode::get_number_of_outputs(self : ConstantSourceNode) -> Int =
  #| (self) => self.numberOfOutputs

pub extern "js" fn ConstantSourceNode::get_channel_count(self : ConstantSourceNode) -> Int =
  #| (self) => self.channelCount

pub extern "js" fn ConstantSourceNode::set_channel_count(self : ConstantSourceNode, value : Int) -> Unit =
  #| (self, value) => { self.channelCount = value }

pub extern "js" fn ConstantSourceNode::get_channel_count_mode(self : ConstantSourceNode) -> ChannelCountMode =
  #| (self) => self.channelCountMode

pub extern "js" fn ConstantSourceNode::set_channel_count_mode(self : ConstantSourceNode, value : ChannelCountMode) -> Unit =
  #| (self, value) => { self.channelCountMode = value }

pub extern "js" fn ConstantSourceNode::get_channel_interpretation(self : ConstantSourceNode) -> ChannelInterpretation =
  #| (self) => self.channelInterpretation

pub extern "js" fn ConstantSourceNode::set_channel_interpretation(self : ConstantSourceNode, value : ChannelInterpretation) -> Unit =
  #| (self, value) => { self.channelInterpretation = value }

pub extern "js" fn ConstantSourceNode::get_onended(self : ConstantSourceNode) -> EventHandler =
  #| (self) => self.onended

pub extern "js" fn ConstantSourceNode::set_onended(self : ConstantSourceNode, value : EventHandler) -> Unit =
  #| (self, value) => { self.onended = value }

pub extern "js" fn ConstantSourceNode::start(self : ConstantSourceNode) -> Unit =
  #| (self) => self.start()

pub extern "js" fn ConstantSourceNode::start_with_when(self : ConstantSourceNode, when : Double) -> Unit =
  #| (self, when) => self.start(when)

pub extern "js" fn ConstantSourceNode::stop(self : ConstantSourceNode) -> Unit =
  #| (self) => self.stop()

pub extern "js" fn ConstantSourceNode::stop_with_when(self : ConstantSourceNode, when : Double) -> Unit =
  #| (self, when) => self.stop(when)

pub extern "js" fn ConstantSourceNode::new(context : BaseAudioContext, options : ConstantSourceOptions) -> ConstantSourceNode =
  #| (context, options) => new ConstantSourceNode(context, options)

pub extern "js" fn ConstantSourceNode::get_offset(self : ConstantSourceNode) -> AudioParam =
  #| (self) => self.offset

///|
/// ConvolverNode interface
pub type ConvolverNode

pub extern "js" fn ConvolverNode::to_js_value(self : ConvolverNode) -> JsValue =
  #| (self) => self

pub extern "js" fn ConvolverNode::connect(self : ConvolverNode, destination_node : AudioNode) -> AudioNode =
  #| (self, destination_node) => self.connect(destination_node)

pub extern "js" fn ConvolverNode::connect_with_input(self : ConvolverNode, destination_node : AudioNode, output : Int, input : Int) -> AudioNode =
  #| (self, destination_node, output, input) => self.connect(destination_node, output, input)

pub extern "js" fn ConvolverNode::disconnect(self : ConvolverNode) -> Unit =
  #| (self) => self.disconnect()

pub extern "js" fn ConvolverNode::get_context(self : ConvolverNode) -> BaseAudioContext =
  #| (self) => self.context

pub extern "js" fn ConvolverNode::get_number_of_inputs(self : ConvolverNode) -> Int =
  #| (self) => self.numberOfInputs

pub extern "js" fn ConvolverNode::get_number_of_outputs(self : ConvolverNode) -> Int =
  #| (self) => self.numberOfOutputs

pub extern "js" fn ConvolverNode::get_channel_count(self : ConvolverNode) -> Int =
  #| (self) => self.channelCount

pub extern "js" fn ConvolverNode::set_channel_count(self : ConvolverNode, value : Int) -> Unit =
  #| (self, value) => { self.channelCount = value }

pub extern "js" fn ConvolverNode::get_channel_count_mode(self : ConvolverNode) -> ChannelCountMode =
  #| (self) => self.channelCountMode

pub extern "js" fn ConvolverNode::set_channel_count_mode(self : ConvolverNode, value : ChannelCountMode) -> Unit =
  #| (self, value) => { self.channelCountMode = value }

pub extern "js" fn ConvolverNode::get_channel_interpretation(self : ConvolverNode) -> ChannelInterpretation =
  #| (self) => self.channelInterpretation

pub extern "js" fn ConvolverNode::set_channel_interpretation(self : ConvolverNode, value : ChannelInterpretation) -> Unit =
  #| (self, value) => { self.channelInterpretation = value }

pub extern "js" fn ConvolverNode::new(context : BaseAudioContext, options : ConvolverOptions) -> ConvolverNode =
  #| (context, options) => new ConvolverNode(context, options)

pub extern "js" fn ConvolverNode::get_buffer(self : ConvolverNode) -> AudioBuffer? =
  #| (self) => self.buffer

pub extern "js" fn ConvolverNode::set_buffer(self : ConvolverNode, value : AudioBuffer?) -> Unit =
  #| (self, value) => { self.buffer = value }

pub extern "js" fn ConvolverNode::get_normalize(self : ConvolverNode) -> Bool =
  #| (self) => self.normalize

pub extern "js" fn ConvolverNode::set_normalize(self : ConvolverNode, value : Bool) -> Unit =
  #| (self, value) => { self.normalize = value }

///|
/// DelayNode interface
pub type DelayNode

pub extern "js" fn DelayNode::to_js_value(self : DelayNode) -> JsValue =
  #| (self) => self

pub extern "js" fn DelayNode::connect(self : DelayNode, destination_node : AudioNode) -> AudioNode =
  #| (self, destination_node) => self.connect(destination_node)

pub extern "js" fn DelayNode::connect_with_input(self : DelayNode, destination_node : AudioNode, output : Int, input : Int) -> AudioNode =
  #| (self, destination_node, output, input) => self.connect(destination_node, output, input)

pub extern "js" fn DelayNode::disconnect(self : DelayNode) -> Unit =
  #| (self) => self.disconnect()

pub extern "js" fn DelayNode::get_context(self : DelayNode) -> BaseAudioContext =
  #| (self) => self.context

pub extern "js" fn DelayNode::get_number_of_inputs(self : DelayNode) -> Int =
  #| (self) => self.numberOfInputs

pub extern "js" fn DelayNode::get_number_of_outputs(self : DelayNode) -> Int =
  #| (self) => self.numberOfOutputs

pub extern "js" fn DelayNode::get_channel_count(self : DelayNode) -> Int =
  #| (self) => self.channelCount

pub extern "js" fn DelayNode::set_channel_count(self : DelayNode, value : Int) -> Unit =
  #| (self, value) => { self.channelCount = value }

pub extern "js" fn DelayNode::get_channel_count_mode(self : DelayNode) -> ChannelCountMode =
  #| (self) => self.channelCountMode

pub extern "js" fn DelayNode::set_channel_count_mode(self : DelayNode, value : ChannelCountMode) -> Unit =
  #| (self, value) => { self.channelCountMode = value }

pub extern "js" fn DelayNode::get_channel_interpretation(self : DelayNode) -> ChannelInterpretation =
  #| (self) => self.channelInterpretation

pub extern "js" fn DelayNode::set_channel_interpretation(self : DelayNode, value : ChannelInterpretation) -> Unit =
  #| (self, value) => { self.channelInterpretation = value }

pub extern "js" fn DelayNode::new(context : BaseAudioContext, options : DelayOptions) -> DelayNode =
  #| (context, options) => new DelayNode(context, options)

pub extern "js" fn DelayNode::get_delay_time(self : DelayNode) -> AudioParam =
  #| (self) => self.delayTime

///|
/// DynamicsCompressorNode interface
pub type DynamicsCompressorNode

pub extern "js" fn DynamicsCompressorNode::to_js_value(self : DynamicsCompressorNode) -> JsValue =
  #| (self) => self

pub extern "js" fn DynamicsCompressorNode::connect(self : DynamicsCompressorNode, destination_node : AudioNode) -> AudioNode =
  #| (self, destination_node) => self.connect(destination_node)

pub extern "js" fn DynamicsCompressorNode::connect_with_input(self : DynamicsCompressorNode, destination_node : AudioNode, output : Int, input : Int) -> AudioNode =
  #| (self, destination_node, output, input) => self.connect(destination_node, output, input)

pub extern "js" fn DynamicsCompressorNode::disconnect(self : DynamicsCompressorNode) -> Unit =
  #| (self) => self.disconnect()

pub extern "js" fn DynamicsCompressorNode::get_context(self : DynamicsCompressorNode) -> BaseAudioContext =
  #| (self) => self.context

pub extern "js" fn DynamicsCompressorNode::get_number_of_inputs(self : DynamicsCompressorNode) -> Int =
  #| (self) => self.numberOfInputs

pub extern "js" fn DynamicsCompressorNode::get_number_of_outputs(self : DynamicsCompressorNode) -> Int =
  #| (self) => self.numberOfOutputs

pub extern "js" fn DynamicsCompressorNode::get_channel_count(self : DynamicsCompressorNode) -> Int =
  #| (self) => self.channelCount

pub extern "js" fn DynamicsCompressorNode::set_channel_count(self : DynamicsCompressorNode, value : Int) -> Unit =
  #| (self, value) => { self.channelCount = value }

pub extern "js" fn DynamicsCompressorNode::get_channel_count_mode(self : DynamicsCompressorNode) -> ChannelCountMode =
  #| (self) => self.channelCountMode

pub extern "js" fn DynamicsCompressorNode::set_channel_count_mode(self : DynamicsCompressorNode, value : ChannelCountMode) -> Unit =
  #| (self, value) => { self.channelCountMode = value }

pub extern "js" fn DynamicsCompressorNode::get_channel_interpretation(self : DynamicsCompressorNode) -> ChannelInterpretation =
  #| (self) => self.channelInterpretation

pub extern "js" fn DynamicsCompressorNode::set_channel_interpretation(self : DynamicsCompressorNode, value : ChannelInterpretation) -> Unit =
  #| (self, value) => { self.channelInterpretation = value }

pub extern "js" fn DynamicsCompressorNode::new(context : BaseAudioContext, options : DynamicsCompressorOptions) -> DynamicsCompressorNode =
  #| (context, options) => new DynamicsCompressorNode(context, options)

pub extern "js" fn DynamicsCompressorNode::get_threshold(self : DynamicsCompressorNode) -> AudioParam =
  #| (self) => self.threshold

pub extern "js" fn DynamicsCompressorNode::get_knee(self : DynamicsCompressorNode) -> AudioParam =
  #| (self) => self.knee

pub extern "js" fn DynamicsCompressorNode::get_ratio(self : DynamicsCompressorNode) -> AudioParam =
  #| (self) => self.ratio

pub extern "js" fn DynamicsCompressorNode::get_reduction(self : DynamicsCompressorNode) -> Double =
  #| (self) => self.reduction

pub extern "js" fn DynamicsCompressorNode::get_attack(self : DynamicsCompressorNode) -> AudioParam =
  #| (self) => self.attack

pub extern "js" fn DynamicsCompressorNode::get_release(self : DynamicsCompressorNode) -> AudioParam =
  #| (self) => self.release

///|
/// GainNode interface
pub type GainNode

pub extern "js" fn GainNode::to_js_value(self : GainNode) -> JsValue =
  #| (self) => self

pub extern "js" fn GainNode::connect(self : GainNode, destination_node : AudioNode) -> AudioNode =
  #| (self, destination_node) => self.connect(destination_node)

pub extern "js" fn GainNode::connect_with_input(self : GainNode, destination_node : AudioNode, output : Int, input : Int) -> AudioNode =
  #| (self, destination_node, output, input) => self.connect(destination_node, output, input)

pub extern "js" fn GainNode::disconnect(self : GainNode) -> Unit =
  #| (self) => self.disconnect()

pub extern "js" fn GainNode::get_context(self : GainNode) -> BaseAudioContext =
  #| (self) => self.context

pub extern "js" fn GainNode::get_number_of_inputs(self : GainNode) -> Int =
  #| (self) => self.numberOfInputs

pub extern "js" fn GainNode::get_number_of_outputs(self : GainNode) -> Int =
  #| (self) => self.numberOfOutputs

pub extern "js" fn GainNode::get_channel_count(self : GainNode) -> Int =
  #| (self) => self.channelCount

pub extern "js" fn GainNode::set_channel_count(self : GainNode, value : Int) -> Unit =
  #| (self, value) => { self.channelCount = value }

pub extern "js" fn GainNode::get_channel_count_mode(self : GainNode) -> ChannelCountMode =
  #| (self) => self.channelCountMode

pub extern "js" fn GainNode::set_channel_count_mode(self : GainNode, value : ChannelCountMode) -> Unit =
  #| (self, value) => { self.channelCountMode = value }

pub extern "js" fn GainNode::get_channel_interpretation(self : GainNode) -> ChannelInterpretation =
  #| (self) => self.channelInterpretation

pub extern "js" fn GainNode::set_channel_interpretation(self : GainNode, value : ChannelInterpretation) -> Unit =
  #| (self, value) => { self.channelInterpretation = value }

pub extern "js" fn GainNode::new(context : BaseAudioContext, options : GainOptions) -> GainNode =
  #| (context, options) => new GainNode(context, options)

pub extern "js" fn GainNode::get_gain(self : GainNode) -> AudioParam =
  #| (self) => self.gain

///|
/// IIRFilterNode interface
pub type IIRFilterNode

pub extern "js" fn IIRFilterNode::to_js_value(self : IIRFilterNode) -> JsValue =
  #| (self) => self

pub extern "js" fn IIRFilterNode::connect(self : IIRFilterNode, destination_node : AudioNode) -> AudioNode =
  #| (self, destination_node) => self.connect(destination_node)

pub extern "js" fn IIRFilterNode::connect_with_input(self : IIRFilterNode, destination_node : AudioNode, output : Int, input : Int) -> AudioNode =
  #| (self, destination_node, output, input) => self.connect(destination_node, output, input)

pub extern "js" fn IIRFilterNode::disconnect(self : IIRFilterNode) -> Unit =
  #| (self) => self.disconnect()

pub extern "js" fn IIRFilterNode::get_context(self : IIRFilterNode) -> BaseAudioContext =
  #| (self) => self.context

pub extern "js" fn IIRFilterNode::get_number_of_inputs(self : IIRFilterNode) -> Int =
  #| (self) => self.numberOfInputs

pub extern "js" fn IIRFilterNode::get_number_of_outputs(self : IIRFilterNode) -> Int =
  #| (self) => self.numberOfOutputs

pub extern "js" fn IIRFilterNode::get_channel_count(self : IIRFilterNode) -> Int =
  #| (self) => self.channelCount

pub extern "js" fn IIRFilterNode::set_channel_count(self : IIRFilterNode, value : Int) -> Unit =
  #| (self, value) => { self.channelCount = value }

pub extern "js" fn IIRFilterNode::get_channel_count_mode(self : IIRFilterNode) -> ChannelCountMode =
  #| (self) => self.channelCountMode

pub extern "js" fn IIRFilterNode::set_channel_count_mode(self : IIRFilterNode, value : ChannelCountMode) -> Unit =
  #| (self, value) => { self.channelCountMode = value }

pub extern "js" fn IIRFilterNode::get_channel_interpretation(self : IIRFilterNode) -> ChannelInterpretation =
  #| (self) => self.channelInterpretation

pub extern "js" fn IIRFilterNode::set_channel_interpretation(self : IIRFilterNode, value : ChannelInterpretation) -> Unit =
  #| (self, value) => { self.channelInterpretation = value }

pub extern "js" fn IIRFilterNode::new(context : BaseAudioContext, options : IIRFilterOptions) -> IIRFilterNode =
  #| (context, options) => new IIRFilterNode(context, options)

pub extern "js" fn IIRFilterNode::get_frequency_response(self : IIRFilterNode, frequency_hz : Float32Array, mag_response : Float32Array, phase_response : Float32Array) -> Unit =
  #| (self, frequency_hz, mag_response, phase_response) => self.getFrequencyResponse(frequency_hz, mag_response, phase_response)

///|
/// MediaElementAudioSourceNode interface
pub type MediaElementAudioSourceNode

pub extern "js" fn MediaElementAudioSourceNode::to_js_value(self : MediaElementAudioSourceNode) -> JsValue =
  #| (self) => self

pub extern "js" fn MediaElementAudioSourceNode::connect(self : MediaElementAudioSourceNode, destination_node : AudioNode) -> AudioNode =
  #| (self, destination_node) => self.connect(destination_node)

pub extern "js" fn MediaElementAudioSourceNode::connect_with_input(self : MediaElementAudioSourceNode, destination_node : AudioNode, output : Int, input : Int) -> AudioNode =
  #| (self, destination_node, output, input) => self.connect(destination_node, output, input)

pub extern "js" fn MediaElementAudioSourceNode::disconnect(self : MediaElementAudioSourceNode) -> Unit =
  #| (self) => self.disconnect()

pub extern "js" fn MediaElementAudioSourceNode::get_context(self : MediaElementAudioSourceNode) -> BaseAudioContext =
  #| (self) => self.context

pub extern "js" fn MediaElementAudioSourceNode::get_number_of_inputs(self : MediaElementAudioSourceNode) -> Int =
  #| (self) => self.numberOfInputs

pub extern "js" fn MediaElementAudioSourceNode::get_number_of_outputs(self : MediaElementAudioSourceNode) -> Int =
  #| (self) => self.numberOfOutputs

pub extern "js" fn MediaElementAudioSourceNode::get_channel_count(self : MediaElementAudioSourceNode) -> Int =
  #| (self) => self.channelCount

pub extern "js" fn MediaElementAudioSourceNode::set_channel_count(self : MediaElementAudioSourceNode, value : Int) -> Unit =
  #| (self, value) => { self.channelCount = value }

pub extern "js" fn MediaElementAudioSourceNode::get_channel_count_mode(self : MediaElementAudioSourceNode) -> ChannelCountMode =
  #| (self) => self.channelCountMode

pub extern "js" fn MediaElementAudioSourceNode::set_channel_count_mode(self : MediaElementAudioSourceNode, value : ChannelCountMode) -> Unit =
  #| (self, value) => { self.channelCountMode = value }

pub extern "js" fn MediaElementAudioSourceNode::get_channel_interpretation(self : MediaElementAudioSourceNode) -> ChannelInterpretation =
  #| (self) => self.channelInterpretation

pub extern "js" fn MediaElementAudioSourceNode::set_channel_interpretation(self : MediaElementAudioSourceNode, value : ChannelInterpretation) -> Unit =
  #| (self, value) => { self.channelInterpretation = value }

pub extern "js" fn MediaElementAudioSourceNode::new(context : AudioContext, options : MediaElementAudioSourceOptions) -> MediaElementAudioSourceNode =
  #| (context, options) => new MediaElementAudioSourceNode(context, options)

pub extern "js" fn MediaElementAudioSourceNode::get_media_element(self : MediaElementAudioSourceNode) -> HTMLMediaElement =
  #| (self) => self.mediaElement

///|
/// MediaStreamAudioDestinationNode interface
pub type MediaStreamAudioDestinationNode

pub extern "js" fn MediaStreamAudioDestinationNode::to_js_value(self : MediaStreamAudioDestinationNode) -> JsValue =
  #| (self) => self

pub extern "js" fn MediaStreamAudioDestinationNode::connect(self : MediaStreamAudioDestinationNode, destination_node : AudioNode) -> AudioNode =
  #| (self, destination_node) => self.connect(destination_node)

pub extern "js" fn MediaStreamAudioDestinationNode::connect_with_input(self : MediaStreamAudioDestinationNode, destination_node : AudioNode, output : Int, input : Int) -> AudioNode =
  #| (self, destination_node, output, input) => self.connect(destination_node, output, input)

pub extern "js" fn MediaStreamAudioDestinationNode::disconnect(self : MediaStreamAudioDestinationNode) -> Unit =
  #| (self) => self.disconnect()

pub extern "js" fn MediaStreamAudioDestinationNode::get_context(self : MediaStreamAudioDestinationNode) -> BaseAudioContext =
  #| (self) => self.context

pub extern "js" fn MediaStreamAudioDestinationNode::get_number_of_inputs(self : MediaStreamAudioDestinationNode) -> Int =
  #| (self) => self.numberOfInputs

pub extern "js" fn MediaStreamAudioDestinationNode::get_number_of_outputs(self : MediaStreamAudioDestinationNode) -> Int =
  #| (self) => self.numberOfOutputs

pub extern "js" fn MediaStreamAudioDestinationNode::get_channel_count(self : MediaStreamAudioDestinationNode) -> Int =
  #| (self) => self.channelCount

pub extern "js" fn MediaStreamAudioDestinationNode::set_channel_count(self : MediaStreamAudioDestinationNode, value : Int) -> Unit =
  #| (self, value) => { self.channelCount = value }

pub extern "js" fn MediaStreamAudioDestinationNode::get_channel_count_mode(self : MediaStreamAudioDestinationNode) -> ChannelCountMode =
  #| (self) => self.channelCountMode

pub extern "js" fn MediaStreamAudioDestinationNode::set_channel_count_mode(self : MediaStreamAudioDestinationNode, value : ChannelCountMode) -> Unit =
  #| (self, value) => { self.channelCountMode = value }

pub extern "js" fn MediaStreamAudioDestinationNode::get_channel_interpretation(self : MediaStreamAudioDestinationNode) -> ChannelInterpretation =
  #| (self) => self.channelInterpretation

pub extern "js" fn MediaStreamAudioDestinationNode::set_channel_interpretation(self : MediaStreamAudioDestinationNode, value : ChannelInterpretation) -> Unit =
  #| (self, value) => { self.channelInterpretation = value }

pub extern "js" fn MediaStreamAudioDestinationNode::new(context : AudioContext, options : AudioNodeOptions) -> MediaStreamAudioDestinationNode =
  #| (context, options) => new MediaStreamAudioDestinationNode(context, options)

pub extern "js" fn MediaStreamAudioDestinationNode::get_stream(self : MediaStreamAudioDestinationNode) -> MediaStream =
  #| (self) => self.stream

///|
/// MediaStreamAudioSourceNode interface
pub type MediaStreamAudioSourceNode

pub extern "js" fn MediaStreamAudioSourceNode::to_js_value(self : MediaStreamAudioSourceNode) -> JsValue =
  #| (self) => self

pub extern "js" fn MediaStreamAudioSourceNode::connect(self : MediaStreamAudioSourceNode, destination_node : AudioNode) -> AudioNode =
  #| (self, destination_node) => self.connect(destination_node)

pub extern "js" fn MediaStreamAudioSourceNode::connect_with_input(self : MediaStreamAudioSourceNode, destination_node : AudioNode, output : Int, input : Int) -> AudioNode =
  #| (self, destination_node, output, input) => self.connect(destination_node, output, input)

pub extern "js" fn MediaStreamAudioSourceNode::disconnect(self : MediaStreamAudioSourceNode) -> Unit =
  #| (self) => self.disconnect()

pub extern "js" fn MediaStreamAudioSourceNode::get_context(self : MediaStreamAudioSourceNode) -> BaseAudioContext =
  #| (self) => self.context

pub extern "js" fn MediaStreamAudioSourceNode::get_number_of_inputs(self : MediaStreamAudioSourceNode) -> Int =
  #| (self) => self.numberOfInputs

pub extern "js" fn MediaStreamAudioSourceNode::get_number_of_outputs(self : MediaStreamAudioSourceNode) -> Int =
  #| (self) => self.numberOfOutputs

pub extern "js" fn MediaStreamAudioSourceNode::get_channel_count(self : MediaStreamAudioSourceNode) -> Int =
  #| (self) => self.channelCount

pub extern "js" fn MediaStreamAudioSourceNode::set_channel_count(self : MediaStreamAudioSourceNode, value : Int) -> Unit =
  #| (self, value) => { self.channelCount = value }

pub extern "js" fn MediaStreamAudioSourceNode::get_channel_count_mode(self : MediaStreamAudioSourceNode) -> ChannelCountMode =
  #| (self) => self.channelCountMode

pub extern "js" fn MediaStreamAudioSourceNode::set_channel_count_mode(self : MediaStreamAudioSourceNode, value : ChannelCountMode) -> Unit =
  #| (self, value) => { self.channelCountMode = value }

pub extern "js" fn MediaStreamAudioSourceNode::get_channel_interpretation(self : MediaStreamAudioSourceNode) -> ChannelInterpretation =
  #| (self) => self.channelInterpretation

pub extern "js" fn MediaStreamAudioSourceNode::set_channel_interpretation(self : MediaStreamAudioSourceNode, value : ChannelInterpretation) -> Unit =
  #| (self, value) => { self.channelInterpretation = value }

pub extern "js" fn MediaStreamAudioSourceNode::new(context : AudioContext, options : MediaStreamAudioSourceOptions) -> MediaStreamAudioSourceNode =
  #| (context, options) => new MediaStreamAudioSourceNode(context, options)

pub extern "js" fn MediaStreamAudioSourceNode::get_media_stream(self : MediaStreamAudioSourceNode) -> MediaStream =
  #| (self) => self.mediaStream

///|
/// MediaStreamTrackAudioSourceNode interface
pub type MediaStreamTrackAudioSourceNode

pub extern "js" fn MediaStreamTrackAudioSourceNode::to_js_value(self : MediaStreamTrackAudioSourceNode) -> JsValue =
  #| (self) => self

pub extern "js" fn MediaStreamTrackAudioSourceNode::connect(self : MediaStreamTrackAudioSourceNode, destination_node : AudioNode) -> AudioNode =
  #| (self, destination_node) => self.connect(destination_node)

pub extern "js" fn MediaStreamTrackAudioSourceNode::connect_with_input(self : MediaStreamTrackAudioSourceNode, destination_node : AudioNode, output : Int, input : Int) -> AudioNode =
  #| (self, destination_node, output, input) => self.connect(destination_node, output, input)

pub extern "js" fn MediaStreamTrackAudioSourceNode::disconnect(self : MediaStreamTrackAudioSourceNode) -> Unit =
  #| (self) => self.disconnect()

pub extern "js" fn MediaStreamTrackAudioSourceNode::get_context(self : MediaStreamTrackAudioSourceNode) -> BaseAudioContext =
  #| (self) => self.context

pub extern "js" fn MediaStreamTrackAudioSourceNode::get_number_of_inputs(self : MediaStreamTrackAudioSourceNode) -> Int =
  #| (self) => self.numberOfInputs

pub extern "js" fn MediaStreamTrackAudioSourceNode::get_number_of_outputs(self : MediaStreamTrackAudioSourceNode) -> Int =
  #| (self) => self.numberOfOutputs

pub extern "js" fn MediaStreamTrackAudioSourceNode::get_channel_count(self : MediaStreamTrackAudioSourceNode) -> Int =
  #| (self) => self.channelCount

pub extern "js" fn MediaStreamTrackAudioSourceNode::set_channel_count(self : MediaStreamTrackAudioSourceNode, value : Int) -> Unit =
  #| (self, value) => { self.channelCount = value }

pub extern "js" fn MediaStreamTrackAudioSourceNode::get_channel_count_mode(self : MediaStreamTrackAudioSourceNode) -> ChannelCountMode =
  #| (self) => self.channelCountMode

pub extern "js" fn MediaStreamTrackAudioSourceNode::set_channel_count_mode(self : MediaStreamTrackAudioSourceNode, value : ChannelCountMode) -> Unit =
  #| (self, value) => { self.channelCountMode = value }

pub extern "js" fn MediaStreamTrackAudioSourceNode::get_channel_interpretation(self : MediaStreamTrackAudioSourceNode) -> ChannelInterpretation =
  #| (self) => self.channelInterpretation

pub extern "js" fn MediaStreamTrackAudioSourceNode::set_channel_interpretation(self : MediaStreamTrackAudioSourceNode, value : ChannelInterpretation) -> Unit =
  #| (self, value) => { self.channelInterpretation = value }

pub extern "js" fn MediaStreamTrackAudioSourceNode::new(context : AudioContext, options : MediaStreamTrackAudioSourceOptions) -> MediaStreamTrackAudioSourceNode =
  #| (context, options) => new MediaStreamTrackAudioSourceNode(context, options)

///|
/// OscillatorNode interface
pub type OscillatorNode

pub extern "js" fn OscillatorNode::to_js_value(self : OscillatorNode) -> JsValue =
  #| (self) => self

pub extern "js" fn OscillatorNode::connect(self : OscillatorNode, destination_node : AudioNode) -> AudioNode =
  #| (self, destination_node) => self.connect(destination_node)

pub extern "js" fn OscillatorNode::connect_with_input(self : OscillatorNode, destination_node : AudioNode, output : Int, input : Int) -> AudioNode =
  #| (self, destination_node, output, input) => self.connect(destination_node, output, input)

pub extern "js" fn OscillatorNode::disconnect(self : OscillatorNode) -> Unit =
  #| (self) => self.disconnect()

pub extern "js" fn OscillatorNode::get_context(self : OscillatorNode) -> BaseAudioContext =
  #| (self) => self.context

pub extern "js" fn OscillatorNode::get_number_of_inputs(self : OscillatorNode) -> Int =
  #| (self) => self.numberOfInputs

pub extern "js" fn OscillatorNode::get_number_of_outputs(self : OscillatorNode) -> Int =
  #| (self) => self.numberOfOutputs

pub extern "js" fn OscillatorNode::get_channel_count(self : OscillatorNode) -> Int =
  #| (self) => self.channelCount

pub extern "js" fn OscillatorNode::set_channel_count(self : OscillatorNode, value : Int) -> Unit =
  #| (self, value) => { self.channelCount = value }

pub extern "js" fn OscillatorNode::get_channel_count_mode(self : OscillatorNode) -> ChannelCountMode =
  #| (self) => self.channelCountMode

pub extern "js" fn OscillatorNode::set_channel_count_mode(self : OscillatorNode, value : ChannelCountMode) -> Unit =
  #| (self, value) => { self.channelCountMode = value }

pub extern "js" fn OscillatorNode::get_channel_interpretation(self : OscillatorNode) -> ChannelInterpretation =
  #| (self) => self.channelInterpretation

pub extern "js" fn OscillatorNode::set_channel_interpretation(self : OscillatorNode, value : ChannelInterpretation) -> Unit =
  #| (self, value) => { self.channelInterpretation = value }

pub extern "js" fn OscillatorNode::get_onended(self : OscillatorNode) -> EventHandler =
  #| (self) => self.onended

pub extern "js" fn OscillatorNode::set_onended(self : OscillatorNode, value : EventHandler) -> Unit =
  #| (self, value) => { self.onended = value }

pub extern "js" fn OscillatorNode::start(self : OscillatorNode) -> Unit =
  #| (self) => self.start()

pub extern "js" fn OscillatorNode::start_with_when(self : OscillatorNode, when : Double) -> Unit =
  #| (self, when) => self.start(when)

pub extern "js" fn OscillatorNode::stop(self : OscillatorNode) -> Unit =
  #| (self) => self.stop()

pub extern "js" fn OscillatorNode::stop_with_when(self : OscillatorNode, when : Double) -> Unit =
  #| (self, when) => self.stop(when)

pub extern "js" fn OscillatorNode::new(context : BaseAudioContext, options : OscillatorOptions) -> OscillatorNode =
  #| (context, options) => new OscillatorNode(context, options)

pub extern "js" fn OscillatorNode::get_type(self : OscillatorNode) -> OscillatorType =
  #| (self) => self.type

pub extern "js" fn OscillatorNode::set_type(self : OscillatorNode, value : OscillatorType) -> Unit =
  #| (self, value) => { self.type = value }

pub extern "js" fn OscillatorNode::get_frequency(self : OscillatorNode) -> AudioParam =
  #| (self) => self.frequency

pub extern "js" fn OscillatorNode::get_detune(self : OscillatorNode) -> AudioParam =
  #| (self) => self.detune

pub extern "js" fn OscillatorNode::set_periodic_wave(self : OscillatorNode, periodic_wave : PeriodicWave) -> Unit =
  #| (self, periodic_wave) => self.setPeriodicWave(periodic_wave)

///|
/// PannerNode interface
pub type PannerNode

pub extern "js" fn PannerNode::to_js_value(self : PannerNode) -> JsValue =
  #| (self) => self

pub extern "js" fn PannerNode::connect(self : PannerNode, destination_node : AudioNode) -> AudioNode =
  #| (self, destination_node) => self.connect(destination_node)

pub extern "js" fn PannerNode::connect_with_input(self : PannerNode, destination_node : AudioNode, output : Int, input : Int) -> AudioNode =
  #| (self, destination_node, output, input) => self.connect(destination_node, output, input)

pub extern "js" fn PannerNode::disconnect(self : PannerNode) -> Unit =
  #| (self) => self.disconnect()

pub extern "js" fn PannerNode::get_context(self : PannerNode) -> BaseAudioContext =
  #| (self) => self.context

pub extern "js" fn PannerNode::get_number_of_inputs(self : PannerNode) -> Int =
  #| (self) => self.numberOfInputs

pub extern "js" fn PannerNode::get_number_of_outputs(self : PannerNode) -> Int =
  #| (self) => self.numberOfOutputs

pub extern "js" fn PannerNode::get_channel_count(self : PannerNode) -> Int =
  #| (self) => self.channelCount

pub extern "js" fn PannerNode::set_channel_count(self : PannerNode, value : Int) -> Unit =
  #| (self, value) => { self.channelCount = value }

pub extern "js" fn PannerNode::get_channel_count_mode(self : PannerNode) -> ChannelCountMode =
  #| (self) => self.channelCountMode

pub extern "js" fn PannerNode::set_channel_count_mode(self : PannerNode, value : ChannelCountMode) -> Unit =
  #| (self, value) => { self.channelCountMode = value }

pub extern "js" fn PannerNode::get_channel_interpretation(self : PannerNode) -> ChannelInterpretation =
  #| (self) => self.channelInterpretation

pub extern "js" fn PannerNode::set_channel_interpretation(self : PannerNode, value : ChannelInterpretation) -> Unit =
  #| (self, value) => { self.channelInterpretation = value }

pub extern "js" fn PannerNode::new(context : BaseAudioContext, options : PannerOptions) -> PannerNode =
  #| (context, options) => new PannerNode(context, options)

pub extern "js" fn PannerNode::get_panning_model(self : PannerNode) -> PanningModelType =
  #| (self) => self.panningModel

pub extern "js" fn PannerNode::set_panning_model(self : PannerNode, value : PanningModelType) -> Unit =
  #| (self, value) => { self.panningModel = value }

pub extern "js" fn PannerNode::get_position_x(self : PannerNode) -> AudioParam =
  #| (self) => self.positionX

pub extern "js" fn PannerNode::get_position_y(self : PannerNode) -> AudioParam =
  #| (self) => self.positionY

pub extern "js" fn PannerNode::get_position_z(self : PannerNode) -> AudioParam =
  #| (self) => self.positionZ

pub extern "js" fn PannerNode::get_orientation_x(self : PannerNode) -> AudioParam =
  #| (self) => self.orientationX

pub extern "js" fn PannerNode::get_orientation_y(self : PannerNode) -> AudioParam =
  #| (self) => self.orientationY

pub extern "js" fn PannerNode::get_orientation_z(self : PannerNode) -> AudioParam =
  #| (self) => self.orientationZ

pub extern "js" fn PannerNode::get_distance_model(self : PannerNode) -> DistanceModelType =
  #| (self) => self.distanceModel

pub extern "js" fn PannerNode::set_distance_model(self : PannerNode, value : DistanceModelType) -> Unit =
  #| (self, value) => { self.distanceModel = value }

pub extern "js" fn PannerNode::get_ref_distance(self : PannerNode) -> Double =
  #| (self) => self.refDistance

pub extern "js" fn PannerNode::set_ref_distance(self : PannerNode, value : Double) -> Unit =
  #| (self, value) => { self.refDistance = value }

pub extern "js" fn PannerNode::get_max_distance(self : PannerNode) -> Double =
  #| (self) => self.maxDistance

pub extern "js" fn PannerNode::set_max_distance(self : PannerNode, value : Double) -> Unit =
  #| (self, value) => { self.maxDistance = value }

pub extern "js" fn PannerNode::get_rolloff_factor(self : PannerNode) -> Double =
  #| (self) => self.rolloffFactor

pub extern "js" fn PannerNode::set_rolloff_factor(self : PannerNode, value : Double) -> Unit =
  #| (self, value) => { self.rolloffFactor = value }

pub extern "js" fn PannerNode::get_cone_inner_angle(self : PannerNode) -> Double =
  #| (self) => self.coneInnerAngle

pub extern "js" fn PannerNode::set_cone_inner_angle(self : PannerNode, value : Double) -> Unit =
  #| (self, value) => { self.coneInnerAngle = value }

pub extern "js" fn PannerNode::get_cone_outer_angle(self : PannerNode) -> Double =
  #| (self) => self.coneOuterAngle

pub extern "js" fn PannerNode::set_cone_outer_angle(self : PannerNode, value : Double) -> Unit =
  #| (self, value) => { self.coneOuterAngle = value }

pub extern "js" fn PannerNode::get_cone_outer_gain(self : PannerNode) -> Double =
  #| (self) => self.coneOuterGain

pub extern "js" fn PannerNode::set_cone_outer_gain(self : PannerNode, value : Double) -> Unit =
  #| (self, value) => { self.coneOuterGain = value }

pub extern "js" fn PannerNode::set_position(self : PannerNode, x : Double, y : Double, z : Double) -> Unit =
  #| (self, x, y, z) => self.setPosition(x, y, z)

pub extern "js" fn PannerNode::set_orientation(self : PannerNode, x : Double, y : Double, z : Double) -> Unit =
  #| (self, x, y, z) => self.setOrientation(x, y, z)

///|
/// PeriodicWave interface
pub type PeriodicWave

pub extern "js" fn PeriodicWave::to_js_value(self : PeriodicWave) -> JsValue =
  #| (self) => self

pub extern "js" fn PeriodicWave::new(context : BaseAudioContext, options : PeriodicWaveOptions) -> PeriodicWave =
  #| (context, options) => new PeriodicWave(context, options)

///|
/// ScriptProcessorNode interface
pub type ScriptProcessorNode

pub extern "js" fn ScriptProcessorNode::to_js_value(self : ScriptProcessorNode) -> JsValue =
  #| (self) => self

pub extern "js" fn ScriptProcessorNode::connect(self : ScriptProcessorNode, destination_node : AudioNode) -> AudioNode =
  #| (self, destination_node) => self.connect(destination_node)

pub extern "js" fn ScriptProcessorNode::connect_with_input(self : ScriptProcessorNode, destination_node : AudioNode, output : Int, input : Int) -> AudioNode =
  #| (self, destination_node, output, input) => self.connect(destination_node, output, input)

pub extern "js" fn ScriptProcessorNode::disconnect(self : ScriptProcessorNode) -> Unit =
  #| (self) => self.disconnect()

pub extern "js" fn ScriptProcessorNode::get_context(self : ScriptProcessorNode) -> BaseAudioContext =
  #| (self) => self.context

pub extern "js" fn ScriptProcessorNode::get_number_of_inputs(self : ScriptProcessorNode) -> Int =
  #| (self) => self.numberOfInputs

pub extern "js" fn ScriptProcessorNode::get_number_of_outputs(self : ScriptProcessorNode) -> Int =
  #| (self) => self.numberOfOutputs

pub extern "js" fn ScriptProcessorNode::get_channel_count(self : ScriptProcessorNode) -> Int =
  #| (self) => self.channelCount

pub extern "js" fn ScriptProcessorNode::set_channel_count(self : ScriptProcessorNode, value : Int) -> Unit =
  #| (self, value) => { self.channelCount = value }

pub extern "js" fn ScriptProcessorNode::get_channel_count_mode(self : ScriptProcessorNode) -> ChannelCountMode =
  #| (self) => self.channelCountMode

pub extern "js" fn ScriptProcessorNode::set_channel_count_mode(self : ScriptProcessorNode, value : ChannelCountMode) -> Unit =
  #| (self, value) => { self.channelCountMode = value }

pub extern "js" fn ScriptProcessorNode::get_channel_interpretation(self : ScriptProcessorNode) -> ChannelInterpretation =
  #| (self) => self.channelInterpretation

pub extern "js" fn ScriptProcessorNode::set_channel_interpretation(self : ScriptProcessorNode, value : ChannelInterpretation) -> Unit =
  #| (self, value) => { self.channelInterpretation = value }

pub extern "js" fn ScriptProcessorNode::get_onaudioprocess(self : ScriptProcessorNode) -> EventHandler =
  #| (self) => self.onaudioprocess

pub extern "js" fn ScriptProcessorNode::set_onaudioprocess(self : ScriptProcessorNode, value : EventHandler) -> Unit =
  #| (self, value) => { self.onaudioprocess = value }

pub extern "js" fn ScriptProcessorNode::get_buffer_size(self : ScriptProcessorNode) -> Int =
  #| (self) => self.bufferSize

///|
/// StereoPannerNode interface
pub type StereoPannerNode

pub extern "js" fn StereoPannerNode::to_js_value(self : StereoPannerNode) -> JsValue =
  #| (self) => self

pub extern "js" fn StereoPannerNode::connect(self : StereoPannerNode, destination_node : AudioNode) -> AudioNode =
  #| (self, destination_node) => self.connect(destination_node)

pub extern "js" fn StereoPannerNode::connect_with_input(self : StereoPannerNode, destination_node : AudioNode, output : Int, input : Int) -> AudioNode =
  #| (self, destination_node, output, input) => self.connect(destination_node, output, input)

pub extern "js" fn StereoPannerNode::disconnect(self : StereoPannerNode) -> Unit =
  #| (self) => self.disconnect()

pub extern "js" fn StereoPannerNode::get_context(self : StereoPannerNode) -> BaseAudioContext =
  #| (self) => self.context

pub extern "js" fn StereoPannerNode::get_number_of_inputs(self : StereoPannerNode) -> Int =
  #| (self) => self.numberOfInputs

pub extern "js" fn StereoPannerNode::get_number_of_outputs(self : StereoPannerNode) -> Int =
  #| (self) => self.numberOfOutputs

pub extern "js" fn StereoPannerNode::get_channel_count(self : StereoPannerNode) -> Int =
  #| (self) => self.channelCount

pub extern "js" fn StereoPannerNode::set_channel_count(self : StereoPannerNode, value : Int) -> Unit =
  #| (self, value) => { self.channelCount = value }

pub extern "js" fn StereoPannerNode::get_channel_count_mode(self : StereoPannerNode) -> ChannelCountMode =
  #| (self) => self.channelCountMode

pub extern "js" fn StereoPannerNode::set_channel_count_mode(self : StereoPannerNode, value : ChannelCountMode) -> Unit =
  #| (self, value) => { self.channelCountMode = value }

pub extern "js" fn StereoPannerNode::get_channel_interpretation(self : StereoPannerNode) -> ChannelInterpretation =
  #| (self) => self.channelInterpretation

pub extern "js" fn StereoPannerNode::set_channel_interpretation(self : StereoPannerNode, value : ChannelInterpretation) -> Unit =
  #| (self, value) => { self.channelInterpretation = value }

pub extern "js" fn StereoPannerNode::new(context : BaseAudioContext, options : StereoPannerOptions) -> StereoPannerNode =
  #| (context, options) => new StereoPannerNode(context, options)

pub extern "js" fn StereoPannerNode::get_pan(self : StereoPannerNode) -> AudioParam =
  #| (self) => self.pan

///|
/// WaveShaperNode interface
pub type WaveShaperNode

pub extern "js" fn WaveShaperNode::to_js_value(self : WaveShaperNode) -> JsValue =
  #| (self) => self

pub extern "js" fn WaveShaperNode::connect(self : WaveShaperNode, destination_node : AudioNode) -> AudioNode =
  #| (self, destination_node) => self.connect(destination_node)

pub extern "js" fn WaveShaperNode::connect_with_input(self : WaveShaperNode, destination_node : AudioNode, output : Int, input : Int) -> AudioNode =
  #| (self, destination_node, output, input) => self.connect(destination_node, output, input)

pub extern "js" fn WaveShaperNode::disconnect(self : WaveShaperNode) -> Unit =
  #| (self) => self.disconnect()

pub extern "js" fn WaveShaperNode::get_context(self : WaveShaperNode) -> BaseAudioContext =
  #| (self) => self.context

pub extern "js" fn WaveShaperNode::get_number_of_inputs(self : WaveShaperNode) -> Int =
  #| (self) => self.numberOfInputs

pub extern "js" fn WaveShaperNode::get_number_of_outputs(self : WaveShaperNode) -> Int =
  #| (self) => self.numberOfOutputs

pub extern "js" fn WaveShaperNode::get_channel_count(self : WaveShaperNode) -> Int =
  #| (self) => self.channelCount

pub extern "js" fn WaveShaperNode::set_channel_count(self : WaveShaperNode, value : Int) -> Unit =
  #| (self, value) => { self.channelCount = value }

pub extern "js" fn WaveShaperNode::get_channel_count_mode(self : WaveShaperNode) -> ChannelCountMode =
  #| (self) => self.channelCountMode

pub extern "js" fn WaveShaperNode::set_channel_count_mode(self : WaveShaperNode, value : ChannelCountMode) -> Unit =
  #| (self, value) => { self.channelCountMode = value }

pub extern "js" fn WaveShaperNode::get_channel_interpretation(self : WaveShaperNode) -> ChannelInterpretation =
  #| (self) => self.channelInterpretation

pub extern "js" fn WaveShaperNode::set_channel_interpretation(self : WaveShaperNode, value : ChannelInterpretation) -> Unit =
  #| (self, value) => { self.channelInterpretation = value }

pub extern "js" fn WaveShaperNode::new(context : BaseAudioContext, options : WaveShaperOptions) -> WaveShaperNode =
  #| (context, options) => new WaveShaperNode(context, options)

pub extern "js" fn WaveShaperNode::get_curve(self : WaveShaperNode) -> Float32Array? =
  #| (self) => self.curve

pub extern "js" fn WaveShaperNode::set_curve(self : WaveShaperNode, value : Float32Array?) -> Unit =
  #| (self, value) => { self.curve = value }

pub extern "js" fn WaveShaperNode::get_oversample(self : WaveShaperNode) -> OverSampleType =
  #| (self) => self.oversample

pub extern "js" fn WaveShaperNode::set_oversample(self : WaveShaperNode, value : OverSampleType) -> Unit =
  #| (self, value) => { self.oversample = value }

///|
/// AudioWorklet interface
pub type AudioWorklet

pub extern "js" fn AudioWorklet::to_js_value(self : AudioWorklet) -> JsValue =
  #| (self) => self

pub extern "js" fn AudioWorklet::get_port(self : AudioWorklet) -> MessagePort =
  #| (self) => self.port

///|
/// AudioWorkletGlobalScope interface
pub type AudioWorkletGlobalScope

pub extern "js" fn AudioWorkletGlobalScope::to_js_value(self : AudioWorkletGlobalScope) -> JsValue =
  #| (self) => self

pub extern "js" fn AudioWorkletGlobalScope::register_processor(self : AudioWorkletGlobalScope, name : String, processor_ctor : AudioWorkletProcessorConstructor) -> Unit =
  #| (self, name, processor_ctor) => self.registerProcessor(name, processor_ctor)

pub extern "js" fn AudioWorkletGlobalScope::get_current_frame(self : AudioWorkletGlobalScope) -> Int64 =
  #| (self) => self.currentFrame

pub extern "js" fn AudioWorkletGlobalScope::get_current_time(self : AudioWorkletGlobalScope) -> Double =
  #| (self) => self.currentTime

pub extern "js" fn AudioWorkletGlobalScope::get_sample_rate(self : AudioWorkletGlobalScope) -> Double =
  #| (self) => self.sampleRate

pub extern "js" fn AudioWorkletGlobalScope::get_render_quantum_size(self : AudioWorkletGlobalScope) -> Int =
  #| (self) => self.renderQuantumSize

pub extern "js" fn AudioWorkletGlobalScope::get_port(self : AudioWorkletGlobalScope) -> MessagePort =
  #| (self) => self.port

///|
/// AudioParamMap interface
pub type AudioParamMap

pub extern "js" fn AudioParamMap::to_js_value(self : AudioParamMap) -> JsValue =
  #| (self) => self

pub extern "js" fn AudioParamMap::get(self : AudioParamMap, key : String) -> AudioParam? =
  #| (self, key) => self.get(key)

pub extern "js" fn AudioParamMap::has(self : AudioParamMap, key : String) -> Bool =
  #| (self, key) => self.has(key)

///|
/// AudioWorkletNode interface
pub type AudioWorkletNode

pub extern "js" fn AudioWorkletNode::to_js_value(self : AudioWorkletNode) -> JsValue =
  #| (self) => self

pub extern "js" fn AudioWorkletNode::connect(self : AudioWorkletNode, destination_node : AudioNode) -> AudioNode =
  #| (self, destination_node) => self.connect(destination_node)

pub extern "js" fn AudioWorkletNode::connect_with_input(self : AudioWorkletNode, destination_node : AudioNode, output : Int, input : Int) -> AudioNode =
  #| (self, destination_node, output, input) => self.connect(destination_node, output, input)

pub extern "js" fn AudioWorkletNode::disconnect(self : AudioWorkletNode) -> Unit =
  #| (self) => self.disconnect()

pub extern "js" fn AudioWorkletNode::get_context(self : AudioWorkletNode) -> BaseAudioContext =
  #| (self) => self.context

pub extern "js" fn AudioWorkletNode::get_number_of_inputs(self : AudioWorkletNode) -> Int =
  #| (self) => self.numberOfInputs

pub extern "js" fn AudioWorkletNode::get_number_of_outputs(self : AudioWorkletNode) -> Int =
  #| (self) => self.numberOfOutputs

pub extern "js" fn AudioWorkletNode::get_channel_count(self : AudioWorkletNode) -> Int =
  #| (self) => self.channelCount

pub extern "js" fn AudioWorkletNode::set_channel_count(self : AudioWorkletNode, value : Int) -> Unit =
  #| (self, value) => { self.channelCount = value }

pub extern "js" fn AudioWorkletNode::get_channel_count_mode(self : AudioWorkletNode) -> ChannelCountMode =
  #| (self) => self.channelCountMode

pub extern "js" fn AudioWorkletNode::set_channel_count_mode(self : AudioWorkletNode, value : ChannelCountMode) -> Unit =
  #| (self, value) => { self.channelCountMode = value }

pub extern "js" fn AudioWorkletNode::get_channel_interpretation(self : AudioWorkletNode) -> ChannelInterpretation =
  #| (self) => self.channelInterpretation

pub extern "js" fn AudioWorkletNode::set_channel_interpretation(self : AudioWorkletNode, value : ChannelInterpretation) -> Unit =
  #| (self, value) => { self.channelInterpretation = value }

pub extern "js" fn AudioWorkletNode::new(context : BaseAudioContext, name : String, options : AudioWorkletNodeOptions) -> AudioWorkletNode =
  #| (context, name, options) => new AudioWorkletNode(context, name, options)

pub extern "js" fn AudioWorkletNode::get_parameters(self : AudioWorkletNode) -> AudioParamMap =
  #| (self) => self.parameters

pub extern "js" fn AudioWorkletNode::get_port(self : AudioWorkletNode) -> MessagePort =
  #| (self) => self.port

pub extern "js" fn AudioWorkletNode::get_onprocessorerror(self : AudioWorkletNode) -> EventHandler =
  #| (self) => self.onprocessorerror

pub extern "js" fn AudioWorkletNode::set_onprocessorerror(self : AudioWorkletNode, value : EventHandler) -> Unit =
  #| (self, value) => { self.onprocessorerror = value }

///|
/// AudioWorkletProcessor interface
pub type AudioWorkletProcessor

pub extern "js" fn AudioWorkletProcessor::to_js_value(self : AudioWorkletProcessor) -> JsValue =
  #| (self) => self

pub extern "js" fn AudioWorkletProcessor::new() -> AudioWorkletProcessor =
  #| () => new AudioWorkletProcessor()

pub extern "js" fn AudioWorkletProcessor::get_port(self : AudioWorkletProcessor) -> MessagePort =
  #| (self) => self.port

