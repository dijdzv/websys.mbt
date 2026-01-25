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

///|
/// Convert to string value
pub fn AudioContextState::to_string(self : AudioContextState) -> String {
  match self {
    AudioContextState::Suspended => "suspended"
    AudioContextState::Running => "running"
    AudioContextState::Closed => "closed"
    AudioContextState::Interrupted => "interrupted"
  }
}

///|
/// Parse from string value
pub fn AudioContextState::from_string(s : String) -> AudioContextState? {
  match s {
    "suspended" => Some(AudioContextState::Suspended)
    "running" => Some(AudioContextState::Running)
    "closed" => Some(AudioContextState::Closed)
    "interrupted" => Some(AudioContextState::Interrupted)
    _ => None
  }
}

///|
/// AudioContextRenderSizeCategory enum
pub(all) enum AudioContextRenderSizeCategory {
  Default
  Hardware
}

///|
/// Convert to string value
pub fn AudioContextRenderSizeCategory::to_string(
  self : AudioContextRenderSizeCategory,
) -> String {
  match self {
    AudioContextRenderSizeCategory::Default => "default"
    AudioContextRenderSizeCategory::Hardware => "hardware"
  }
}

///|
/// Parse from string value
pub fn AudioContextRenderSizeCategory::from_string(
  s : String,
) -> AudioContextRenderSizeCategory? {
  match s {
    "default" => Some(AudioContextRenderSizeCategory::Default)
    "hardware" => Some(AudioContextRenderSizeCategory::Hardware)
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

///|
/// Convert to string value
pub fn AudioContextLatencyCategory::to_string(
  self : AudioContextLatencyCategory,
) -> String {
  match self {
    AudioContextLatencyCategory::Balanced => "balanced"
    AudioContextLatencyCategory::Interactive => "interactive"
    AudioContextLatencyCategory::Playback => "playback"
  }
}

///|
/// Parse from string value
pub fn AudioContextLatencyCategory::from_string(
  s : String,
) -> AudioContextLatencyCategory? {
  match s {
    "balanced" => Some(AudioContextLatencyCategory::Balanced)
    "interactive" => Some(AudioContextLatencyCategory::Interactive)
    "playback" => Some(AudioContextLatencyCategory::Playback)
    _ => None
  }
}

///|
/// AudioSinkType enum
pub(all) enum AudioSinkType {
  None
}

///|
/// Convert to string value
pub fn AudioSinkType::to_string(self : AudioSinkType) -> String {
  match self {
    AudioSinkType::None => "none"
  }
}

///|
/// Parse from string value
pub fn AudioSinkType::from_string(s : String) -> AudioSinkType? {
  match s {
    "none" => Some(AudioSinkType::None)
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

///|
/// Convert to string value
pub fn ChannelCountMode::to_string(self : ChannelCountMode) -> String {
  match self {
    ChannelCountMode::Max => "max"
    ChannelCountMode::ClampedMax => "clamped-max"
    ChannelCountMode::Explicit => "explicit"
  }
}

///|
/// Parse from string value
pub fn ChannelCountMode::from_string(s : String) -> ChannelCountMode? {
  match s {
    "max" => Some(ChannelCountMode::Max)
    "clamped-max" => Some(ChannelCountMode::ClampedMax)
    "explicit" => Some(ChannelCountMode::Explicit)
    _ => None
  }
}

///|
/// ChannelInterpretation enum
pub(all) enum ChannelInterpretation {
  Speakers
  Discrete
}

///|
/// Convert to string value
pub fn ChannelInterpretation::to_string(self : ChannelInterpretation) -> String {
  match self {
    ChannelInterpretation::Speakers => "speakers"
    ChannelInterpretation::Discrete => "discrete"
  }
}

///|
/// Parse from string value
pub fn ChannelInterpretation::from_string(s : String) -> ChannelInterpretation? {
  match s {
    "speakers" => Some(ChannelInterpretation::Speakers)
    "discrete" => Some(ChannelInterpretation::Discrete)
    _ => None
  }
}

///|
/// AutomationRate enum
pub(all) enum AutomationRate {
  ARate
  KRate
}

///|
/// Convert to string value
pub fn AutomationRate::to_string(self : AutomationRate) -> String {
  match self {
    AutomationRate::ARate => "a-rate"
    AutomationRate::KRate => "k-rate"
  }
}

///|
/// Parse from string value
pub fn AutomationRate::from_string(s : String) -> AutomationRate? {
  match s {
    "a-rate" => Some(AutomationRate::ARate)
    "k-rate" => Some(AutomationRate::KRate)
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

///|
/// Convert to string value
pub fn BiquadFilterType::to_string(self : BiquadFilterType) -> String {
  match self {
    BiquadFilterType::Lowpass => "lowpass"
    BiquadFilterType::Highpass => "highpass"
    BiquadFilterType::Bandpass => "bandpass"
    BiquadFilterType::Lowshelf => "lowshelf"
    BiquadFilterType::Highshelf => "highshelf"
    BiquadFilterType::Peaking => "peaking"
    BiquadFilterType::Notch => "notch"
    BiquadFilterType::Allpass => "allpass"
  }
}

///|
/// Parse from string value
pub fn BiquadFilterType::from_string(s : String) -> BiquadFilterType? {
  match s {
    "lowpass" => Some(BiquadFilterType::Lowpass)
    "highpass" => Some(BiquadFilterType::Highpass)
    "bandpass" => Some(BiquadFilterType::Bandpass)
    "lowshelf" => Some(BiquadFilterType::Lowshelf)
    "highshelf" => Some(BiquadFilterType::Highshelf)
    "peaking" => Some(BiquadFilterType::Peaking)
    "notch" => Some(BiquadFilterType::Notch)
    "allpass" => Some(BiquadFilterType::Allpass)
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

///|
/// Convert to string value
pub fn OscillatorType::to_string(self : OscillatorType) -> String {
  match self {
    OscillatorType::Sine => "sine"
    OscillatorType::Square => "square"
    OscillatorType::Sawtooth => "sawtooth"
    OscillatorType::Triangle => "triangle"
    OscillatorType::Custom => "custom"
  }
}

///|
/// Parse from string value
pub fn OscillatorType::from_string(s : String) -> OscillatorType? {
  match s {
    "sine" => Some(OscillatorType::Sine)
    "square" => Some(OscillatorType::Square)
    "sawtooth" => Some(OscillatorType::Sawtooth)
    "triangle" => Some(OscillatorType::Triangle)
    "custom" => Some(OscillatorType::Custom)
    _ => None
  }
}

///|
/// PanningModelType enum
pub(all) enum PanningModelType {
  Equalpower
  HRTF
}

///|
/// Convert to string value
pub fn PanningModelType::to_string(self : PanningModelType) -> String {
  match self {
    PanningModelType::Equalpower => "equalpower"
    PanningModelType::HRTF => "HRTF"
  }
}

///|
/// Parse from string value
pub fn PanningModelType::from_string(s : String) -> PanningModelType? {
  match s {
    "equalpower" => Some(PanningModelType::Equalpower)
    "HRTF" => Some(PanningModelType::HRTF)
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

///|
/// Convert to string value
pub fn DistanceModelType::to_string(self : DistanceModelType) -> String {
  match self {
    DistanceModelType::Linear => "linear"
    DistanceModelType::Inverse => "inverse"
    DistanceModelType::Exponential => "exponential"
  }
}

///|
/// Parse from string value
pub fn DistanceModelType::from_string(s : String) -> DistanceModelType? {
  match s {
    "linear" => Some(DistanceModelType::Linear)
    "inverse" => Some(DistanceModelType::Inverse)
    "exponential" => Some(DistanceModelType::Exponential)
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

///|
/// Convert to string value
pub fn OverSampleType::to_string(self : OverSampleType) -> String {
  match self {
    OverSampleType::None => "none"
    OverSampleType::N2x => "2x"
    OverSampleType::N4x => "4x"
  }
}

///|
/// Parse from string value
pub fn OverSampleType::from_string(s : String) -> OverSampleType? {
  match s {
    "none" => Some(OverSampleType::None)
    "2x" => Some(OverSampleType::N2x)
    "4x" => Some(OverSampleType::N4x)
    _ => None
  }
}

///|
/// DecodeErrorCallback callback interface
pub type DecodeErrorCallback

///|
/// Create DecodeErrorCallback from a MoonBit function
pub extern "js" fn DecodeErrorCallback::from_fn(
  handler : (DOMException) -> Unit,
) -> DecodeErrorCallback =
  #| (handler) => handler

///|
/// DecodeSuccessCallback callback interface
pub type DecodeSuccessCallback

///|
/// Create DecodeSuccessCallback from a MoonBit function
pub extern "js" fn DecodeSuccessCallback::from_fn(
  handler : (AudioBuffer) -> Unit,
) -> DecodeSuccessCallback =
  #| (handler) => handler

///|
/// AudioWorkletProcessorConstructor callback interface
pub type AudioWorkletProcessorConstructor

///|
/// Create AudioWorkletProcessorConstructor from a MoonBit function
pub extern "js" fn AudioWorkletProcessorConstructor::from_fn(
  handler : (JsValue) -> AudioWorkletProcessor,
) -> AudioWorkletProcessorConstructor =
  #| (handler) => handler

///|
/// AudioWorkletProcessCallback callback interface
pub type AudioWorkletProcessCallback

///|
/// Create AudioWorkletProcessCallback from a MoonBit function
pub extern "js" fn AudioWorkletProcessCallback::from_fn(
  handler : (JsValue, JsValue, JsValue) -> Bool,
) -> AudioWorkletProcessCallback =
  #| (handler) => handler

///|
/// AudioContextOptions dictionary
pub struct AudioContextOptions {
  latencyHint : AudioContextLatencyCategoryOrDouble?
  sampleRate : Double?
  sinkId : StringOrAudioSinkOptions?
  renderSizeHint : AudioContextRenderSizeCategoryOrInt?
}

///|
/// Create a new AudioContextOptions with default values
pub fn AudioContextOptions::default() -> AudioContextOptions {
  AudioContextOptions::{
    latencyHint: None,
    sampleRate: None,
    sinkId: None,
    renderSizeHint: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn AudioContextOptions::to_js(
  self : AudioContextOptions,
) -> JsValue =
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

///|
/// Create a new AudioSinkOptions with default values
pub fn AudioSinkOptions::default() -> AudioSinkOptions {
  AudioSinkOptions::{ type_: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn AudioSinkOptions::to_js(self : AudioSinkOptions) -> JsValue =
  #| (self) => ({
  #|   type: ['none'][self.type_]
  #| })

///|
/// AudioTimestamp dictionary
pub struct AudioTimestamp {
  contextTime : Double?
  performanceTime : DOMHighResTimeStamp?
}

///|
/// Create a new AudioTimestamp with default values
pub fn AudioTimestamp::default() -> AudioTimestamp {
  AudioTimestamp::{ contextTime: None, performanceTime: None }
}

///|
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
  renderSizeHint : AudioContextRenderSizeCategoryOrInt?
}

///|
/// Create a new OfflineAudioContextOptions with default values
pub fn OfflineAudioContextOptions::default() -> OfflineAudioContextOptions {
  OfflineAudioContextOptions::{
    numberOfChannels: None,
    length: 0,
    sampleRate: 0,
    renderSizeHint: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn OfflineAudioContextOptions::to_js(
  self : OfflineAudioContextOptions,
) -> JsValue =
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

///|
/// Create a new OfflineAudioCompletionEventInit with default values
pub fn OfflineAudioCompletionEventInit::default() -> OfflineAudioCompletionEventInit {
  OfflineAudioCompletionEventInit::{ renderedBuffer: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn OfflineAudioCompletionEventInit::to_js(
  self : OfflineAudioCompletionEventInit,
) -> JsValue =
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

///|
/// Create a new AudioBufferOptions with default values
pub fn AudioBufferOptions::default() -> AudioBufferOptions {
  AudioBufferOptions::{ numberOfChannels: None, length: 0, sampleRate: 0 }
}

///|
/// Convert to JsValue
pub extern "js" fn AudioBufferOptions::to_js(
  self : AudioBufferOptions,
) -> JsValue =
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

///|
/// Create a new AudioNodeOptions with default values
pub fn AudioNodeOptions::default() -> AudioNodeOptions {
  AudioNodeOptions::{
    channelCount: None,
    channelCountMode: None,
    channelInterpretation: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn AudioNodeOptions::to_js(self : AudioNodeOptions) -> JsValue =
  #| (self) => ({
  #|   channelCount: self.channelCount,
  #|   channelCountMode: ['max', 'clamped-max', 'explicit'][self.channelCountMode],
  #|   channelInterpretation: ['speakers', 'discrete'][self.channelInterpretation]
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

///|
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

///|
/// Convert to JsValue
pub extern "js" fn AnalyserOptions::to_js(self : AnalyserOptions) -> JsValue =
  #| (self) => ({
  #|   channelCount: self.channelCount,
  #|   channelCountMode: ['max', 'clamped-max', 'explicit'][self.channelCountMode],
  #|   channelInterpretation: ['speakers', 'discrete'][self.channelInterpretation],
  #|   fftSize: self.fftSize,
  #|   maxDecibels: self.maxDecibels,
  #|   minDecibels: self.minDecibels,
  #|   smoothingTimeConstant: self.smoothingTimeConstant
  #| })

///|
/// AudioBufferSourceOptions dictionary
pub struct AudioBufferSourceOptions {
  buffer : Nullable[AudioBuffer]
  detune : Double?
  loop_ : Bool?
  loopEnd : Double?
  loopStart : Double?
  playbackRate : Double?
}

///|
/// Create a new AudioBufferSourceOptions with default values
pub fn AudioBufferSourceOptions::default() -> AudioBufferSourceOptions {
  AudioBufferSourceOptions::{
    buffer: Nullable::Undefined,
    detune: None,
    loop_: None,
    loopEnd: None,
    loopStart: None,
    playbackRate: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn AudioBufferSourceOptions::to_js(
  self : AudioBufferSourceOptions,
) -> JsValue =
  #| (self) => ({
  #|   buffer: ((() => { const v = self.buffer; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
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

///|
/// Create a new AudioProcessingEventInit with default values
pub fn AudioProcessingEventInit::default() -> AudioProcessingEventInit {
  AudioProcessingEventInit::{
    playbackTime: 0,
    inputBuffer: panic(),
    outputBuffer: panic(),
  }
}

///|
/// Convert to JsValue
pub extern "js" fn AudioProcessingEventInit::to_js(
  self : AudioProcessingEventInit,
) -> JsValue =
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

///|
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

///|
/// Convert to JsValue
pub extern "js" fn BiquadFilterOptions::to_js(
  self : BiquadFilterOptions,
) -> JsValue =
  #| (self) => ({
  #|   channelCount: self.channelCount,
  #|   channelCountMode: ['max', 'clamped-max', 'explicit'][self.channelCountMode],
  #|   channelInterpretation: ['speakers', 'discrete'][self.channelInterpretation],
  #|   type: ['lowpass', 'highpass', 'bandpass', 'lowshelf', 'highshelf', 'peaking', 'notch', 'allpass'][self.type_],
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

///|
/// Create a new ChannelMergerOptions with default values
pub fn ChannelMergerOptions::default() -> ChannelMergerOptions {
  ChannelMergerOptions::{
    channelCount: None,
    channelCountMode: None,
    channelInterpretation: None,
    numberOfInputs: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn ChannelMergerOptions::to_js(
  self : ChannelMergerOptions,
) -> JsValue =
  #| (self) => ({
  #|   channelCount: self.channelCount,
  #|   channelCountMode: ['max', 'clamped-max', 'explicit'][self.channelCountMode],
  #|   channelInterpretation: ['speakers', 'discrete'][self.channelInterpretation],
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

///|
/// Create a new ChannelSplitterOptions with default values
pub fn ChannelSplitterOptions::default() -> ChannelSplitterOptions {
  ChannelSplitterOptions::{
    channelCount: None,
    channelCountMode: None,
    channelInterpretation: None,
    numberOfOutputs: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn ChannelSplitterOptions::to_js(
  self : ChannelSplitterOptions,
) -> JsValue =
  #| (self) => ({
  #|   channelCount: self.channelCount,
  #|   channelCountMode: ['max', 'clamped-max', 'explicit'][self.channelCountMode],
  #|   channelInterpretation: ['speakers', 'discrete'][self.channelInterpretation],
  #|   numberOfOutputs: self.numberOfOutputs
  #| })

///|
/// ConstantSourceOptions dictionary
pub struct ConstantSourceOptions {
  offset : Double?
}

///|
/// Create a new ConstantSourceOptions with default values
pub fn ConstantSourceOptions::default() -> ConstantSourceOptions {
  ConstantSourceOptions::{ offset: None }
}

///|
/// Convert to JsValue
pub extern "js" fn ConstantSourceOptions::to_js(
  self : ConstantSourceOptions,
) -> JsValue =
  #| (self) => ({
  #|   offset: self.offset
  #| })

///|
/// ConvolverOptions dictionary
pub struct ConvolverOptions {
  channelCount : Int?
  channelCountMode : ChannelCountMode?
  channelInterpretation : ChannelInterpretation?
  buffer : Nullable[AudioBuffer]
  disableNormalization : Bool?
}

///|
/// Create a new ConvolverOptions with default values
pub fn ConvolverOptions::default() -> ConvolverOptions {
  ConvolverOptions::{
    channelCount: None,
    channelCountMode: None,
    channelInterpretation: None,
    buffer: Nullable::Undefined,
    disableNormalization: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn ConvolverOptions::to_js(self : ConvolverOptions) -> JsValue =
  #| (self) => ({
  #|   channelCount: self.channelCount,
  #|   channelCountMode: ['max', 'clamped-max', 'explicit'][self.channelCountMode],
  #|   channelInterpretation: ['speakers', 'discrete'][self.channelInterpretation],
  #|   buffer: ((() => { const v = self.buffer; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
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

///|
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

///|
/// Convert to JsValue
pub extern "js" fn DelayOptions::to_js(self : DelayOptions) -> JsValue =
  #| (self) => ({
  #|   channelCount: self.channelCount,
  #|   channelCountMode: ['max', 'clamped-max', 'explicit'][self.channelCountMode],
  #|   channelInterpretation: ['speakers', 'discrete'][self.channelInterpretation],
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

///|
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

///|
/// Convert to JsValue
pub extern "js" fn DynamicsCompressorOptions::to_js(
  self : DynamicsCompressorOptions,
) -> JsValue =
  #| (self) => ({
  #|   channelCount: self.channelCount,
  #|   channelCountMode: ['max', 'clamped-max', 'explicit'][self.channelCountMode],
  #|   channelInterpretation: ['speakers', 'discrete'][self.channelInterpretation],
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

///|
/// Create a new GainOptions with default values
pub fn GainOptions::default() -> GainOptions {
  GainOptions::{
    channelCount: None,
    channelCountMode: None,
    channelInterpretation: None,
    gain: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn GainOptions::to_js(self : GainOptions) -> JsValue =
  #| (self) => ({
  #|   channelCount: self.channelCount,
  #|   channelCountMode: ['max', 'clamped-max', 'explicit'][self.channelCountMode],
  #|   channelInterpretation: ['speakers', 'discrete'][self.channelInterpretation],
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

///|
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

///|
/// Convert to JsValue
pub extern "js" fn IIRFilterOptions::to_js(self : IIRFilterOptions) -> JsValue =
  #| (self) => ({
  #|   channelCount: self.channelCount,
  #|   channelCountMode: ['max', 'clamped-max', 'explicit'][self.channelCountMode],
  #|   channelInterpretation: ['speakers', 'discrete'][self.channelInterpretation],
  #|   feedforward: self.feedforward,
  #|   feedback: self.feedback
  #| })

///|
/// MediaElementAudioSourceOptions dictionary
pub struct MediaElementAudioSourceOptions {
  mediaElement : HTMLMediaElement
}

///|
/// Create a new MediaElementAudioSourceOptions with default values
pub fn MediaElementAudioSourceOptions::default() -> MediaElementAudioSourceOptions {
  MediaElementAudioSourceOptions::{ mediaElement: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn MediaElementAudioSourceOptions::to_js(
  self : MediaElementAudioSourceOptions,
) -> JsValue =
  #| (self) => ({
  #|   mediaElement: self.mediaElement
  #| })

///|
/// MediaStreamAudioSourceOptions dictionary
pub struct MediaStreamAudioSourceOptions {
  mediaStream : MediaStream
}

///|
/// Create a new MediaStreamAudioSourceOptions with default values
pub fn MediaStreamAudioSourceOptions::default() -> MediaStreamAudioSourceOptions {
  MediaStreamAudioSourceOptions::{ mediaStream: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn MediaStreamAudioSourceOptions::to_js(
  self : MediaStreamAudioSourceOptions,
) -> JsValue =
  #| (self) => ({
  #|   mediaStream: self.mediaStream
  #| })

///|
/// MediaStreamTrackAudioSourceOptions dictionary
pub struct MediaStreamTrackAudioSourceOptions {
  mediaStreamTrack : MediaStreamTrack
}

///|
/// Create a new MediaStreamTrackAudioSourceOptions with default values
pub fn MediaStreamTrackAudioSourceOptions::default() -> MediaStreamTrackAudioSourceOptions {
  MediaStreamTrackAudioSourceOptions::{ mediaStreamTrack: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn MediaStreamTrackAudioSourceOptions::to_js(
  self : MediaStreamTrackAudioSourceOptions,
) -> JsValue =
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

///|
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

///|
/// Convert to JsValue
pub extern "js" fn OscillatorOptions::to_js(
  self : OscillatorOptions,
) -> JsValue =
  #| (self) => ({
  #|   channelCount: self.channelCount,
  #|   channelCountMode: ['max', 'clamped-max', 'explicit'][self.channelCountMode],
  #|   channelInterpretation: ['speakers', 'discrete'][self.channelInterpretation],
  #|   type: ['sine', 'square', 'sawtooth', 'triangle', 'custom'][self.type_],
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

///|
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

///|
/// Convert to JsValue
pub extern "js" fn PannerOptions::to_js(self : PannerOptions) -> JsValue =
  #| (self) => ({
  #|   channelCount: self.channelCount,
  #|   channelCountMode: ['max', 'clamped-max', 'explicit'][self.channelCountMode],
  #|   channelInterpretation: ['speakers', 'discrete'][self.channelInterpretation],
  #|   panningModel: ['equalpower', 'HRTF'][self.panningModel],
  #|   distanceModel: ['linear', 'inverse', 'exponential'][self.distanceModel],
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

///|
/// Create a new PeriodicWaveConstraints with default values
pub fn PeriodicWaveConstraints::default() -> PeriodicWaveConstraints {
  PeriodicWaveConstraints::{ disableNormalization: None }
}

///|
/// Convert to JsValue
pub extern "js" fn PeriodicWaveConstraints::to_js(
  self : PeriodicWaveConstraints,
) -> JsValue =
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

///|
/// Create a new PeriodicWaveOptions with default values
pub fn PeriodicWaveOptions::default() -> PeriodicWaveOptions {
  PeriodicWaveOptions::{ disableNormalization: None, real: None, imag: None }
}

///|
/// Convert to JsValue
pub extern "js" fn PeriodicWaveOptions::to_js(
  self : PeriodicWaveOptions,
) -> JsValue =
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

///|
/// Create a new StereoPannerOptions with default values
pub fn StereoPannerOptions::default() -> StereoPannerOptions {
  StereoPannerOptions::{
    channelCount: None,
    channelCountMode: None,
    channelInterpretation: None,
    pan: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn StereoPannerOptions::to_js(
  self : StereoPannerOptions,
) -> JsValue =
  #| (self) => ({
  #|   channelCount: self.channelCount,
  #|   channelCountMode: ['max', 'clamped-max', 'explicit'][self.channelCountMode],
  #|   channelInterpretation: ['speakers', 'discrete'][self.channelInterpretation],
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

///|
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

///|
/// Convert to JsValue
pub extern "js" fn WaveShaperOptions::to_js(
  self : WaveShaperOptions,
) -> JsValue =
  #| (self) => ({
  #|   channelCount: self.channelCount,
  #|   channelCountMode: ['max', 'clamped-max', 'explicit'][self.channelCountMode],
  #|   channelInterpretation: ['speakers', 'discrete'][self.channelInterpretation],
  #|   curve: self.curve,
  #|   oversample: ['none', '2x', '4x'][self.oversample]
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

///|
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

///|
/// Convert to JsValue
pub extern "js" fn AudioWorkletNodeOptions::to_js(
  self : AudioWorkletNodeOptions,
) -> JsValue =
  #| (self) => ({
  #|   channelCount: self.channelCount,
  #|   channelCountMode: ['max', 'clamped-max', 'explicit'][self.channelCountMode],
  #|   channelInterpretation: ['speakers', 'discrete'][self.channelInterpretation],
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

///|
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

///|
/// Convert to JsValue
pub extern "js" fn AudioParamDescriptor::to_js(
  self : AudioParamDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   defaultValue: self.defaultValue,
  #|   minValue: self.minValue,
  #|   maxValue: self.maxValue,
  #|   automationRate: ['a-rate', 'k-rate'][self.automationRate]
  #| })

///|
/// BaseAudioContext interface
pub type BaseAudioContext

///|
pub extern "js" fn BaseAudioContext::to_js_value(
  self : BaseAudioContext,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to BaseAudioContext (unchecked)
pub extern "js" fn BaseAudioContext::from_js_value(
  v : JsValue,
) -> BaseAudioContext =
  #| (v) => v

///|
/// Safely cast JsValue to BaseAudioContext (checked with instanceof)
pub extern "js" fn BaseAudioContext::from_js_value_opt(
  v : JsValue,
) -> BaseAudioContext? =
  #| (v) => (v instanceof BaseAudioContext) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to BaseAudioContext (checked with instanceof)
pub extern "js" fn JsValue::as_base_audio_context(
  self : JsValue,
) -> BaseAudioContext? =
  #| (self) => (self instanceof BaseAudioContext) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to BaseAudioContext (unchecked)
pub extern "js" fn JsValue::to_base_audio_context(
  self : JsValue,
) -> BaseAudioContext =
  #| (self) => self

///|
pub extern "js" fn BaseAudioContext::to_event_target(
  self : BaseAudioContext,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn BaseAudioContext::as_audio_context(
  self : BaseAudioContext,
) -> AudioContext? =
  #| (self) => (self instanceof AudioContext) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn BaseAudioContext::as_offline_audio_context(
  self : BaseAudioContext,
) -> OfflineAudioContext? =
  #| (self) => (self instanceof OfflineAudioContext) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn BaseAudioContext::get_destination(
  self : BaseAudioContext,
) -> AudioDestinationNode =
  #| (self) => self.destination

///|
pub extern "js" fn BaseAudioContext::get_sample_rate(
  self : BaseAudioContext,
) -> Double =
  #| (self) => self.sampleRate

///|
pub extern "js" fn BaseAudioContext::get_current_time(
  self : BaseAudioContext,
) -> Double =
  #| (self) => self.currentTime

///|
pub extern "js" fn BaseAudioContext::get_listener(
  self : BaseAudioContext,
) -> AudioListener =
  #| (self) => self.listener

///|
pub extern "js" fn BaseAudioContext::get_state(
  self : BaseAudioContext,
) -> AudioContextState =
  #| (self) => self.state

///|
pub extern "js" fn BaseAudioContext::get_render_quantum_size(
  self : BaseAudioContext,
) -> Int =
  #| (self) => self.renderQuantumSize

///|
pub extern "js" fn BaseAudioContext::get_audio_worklet(
  self : BaseAudioContext,
) -> AudioWorklet =
  #| (self) => self.audioWorklet

///|
pub extern "js" fn BaseAudioContext::get_onstatechange(
  self : BaseAudioContext,
) -> EventHandler =
  #| (self) => self.onstatechange

///|
pub extern "js" fn BaseAudioContext::set_onstatechange(
  self : BaseAudioContext,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onstatechange = value }

///|
pub extern "js" fn BaseAudioContext::create_analyser(
  self : BaseAudioContext,
) -> AnalyserNode =
  #| (self) => self.createAnalyser()

///|
pub extern "js" fn BaseAudioContext::create_biquad_filter(
  self : BaseAudioContext,
) -> BiquadFilterNode =
  #| (self) => self.createBiquadFilter()

///|
pub extern "js" fn BaseAudioContext::create_buffer(
  self : BaseAudioContext,
  number_of_channels : Int,
  length : Int,
  sample_rate : Double,
) -> AudioBuffer =
  #| (self, number_of_channels, length, sample_rate) => self.createBuffer(number_of_channels, length, sample_rate)

///|
pub extern "js" fn BaseAudioContext::create_buffer_source(
  self : BaseAudioContext,
) -> AudioBufferSourceNode =
  #| (self) => self.createBufferSource()

///|
pub extern "js" fn BaseAudioContext::create_channel_merger(
  self : BaseAudioContext,
) -> ChannelMergerNode =
  #| (self) => self.createChannelMerger()

///|
pub extern "js" fn BaseAudioContext::create_channel_merger_with_number_of_inputs(
  self : BaseAudioContext,
  number_of_inputs : Int,
) -> ChannelMergerNode =
  #| (self, number_of_inputs) => self.createChannelMerger(number_of_inputs)

///|
pub extern "js" fn BaseAudioContext::create_channel_splitter(
  self : BaseAudioContext,
) -> ChannelSplitterNode =
  #| (self) => self.createChannelSplitter()

///|
pub extern "js" fn BaseAudioContext::create_channel_splitter_with_number_of_outputs(
  self : BaseAudioContext,
  number_of_outputs : Int,
) -> ChannelSplitterNode =
  #| (self, number_of_outputs) => self.createChannelSplitter(number_of_outputs)

///|
pub extern "js" fn BaseAudioContext::create_constant_source(
  self : BaseAudioContext,
) -> ConstantSourceNode =
  #| (self) => self.createConstantSource()

///|
pub extern "js" fn BaseAudioContext::create_convolver(
  self : BaseAudioContext,
) -> ConvolverNode =
  #| (self) => self.createConvolver()

///|
pub extern "js" fn BaseAudioContext::create_delay(
  self : BaseAudioContext,
) -> DelayNode =
  #| (self) => self.createDelay()

///|
pub extern "js" fn BaseAudioContext::create_delay_with_max_delay_time(
  self : BaseAudioContext,
  max_delay_time : Double,
) -> DelayNode =
  #| (self, max_delay_time) => self.createDelay(max_delay_time)

///|
pub extern "js" fn BaseAudioContext::create_dynamics_compressor(
  self : BaseAudioContext,
) -> DynamicsCompressorNode =
  #| (self) => self.createDynamicsCompressor()

///|
pub extern "js" fn BaseAudioContext::create_gain(
  self : BaseAudioContext,
) -> GainNode =
  #| (self) => self.createGain()

///|
pub extern "js" fn BaseAudioContext::create_iir_filter(
  self : BaseAudioContext,
  feedforward : Array[Double],
  feedback : Array[Double],
) -> IIRFilterNode =
  #| (self, feedforward, feedback) => self.createIIRFilter(feedforward, feedback)

///|
pub extern "js" fn BaseAudioContext::create_oscillator(
  self : BaseAudioContext,
) -> OscillatorNode =
  #| (self) => self.createOscillator()

///|
pub extern "js" fn BaseAudioContext::create_panner(
  self : BaseAudioContext,
) -> PannerNode =
  #| (self) => self.createPanner()

///|
pub extern "js" fn BaseAudioContext::create_periodic_wave(
  self : BaseAudioContext,
  real : Array[Double],
  imag : Array[Double],
) -> PeriodicWave =
  #| (self, real, imag) => self.createPeriodicWave(real, imag)

///|
pub extern "js" fn BaseAudioContext::create_periodic_wave_with_constraints(
  self : BaseAudioContext,
  real : Array[Double],
  imag : Array[Double],
  constraints : PeriodicWaveConstraints,
) -> PeriodicWave =
  #| (self, real, imag, constraints) => self.createPeriodicWave(real, imag, constraints)

///|
pub extern "js" fn BaseAudioContext::create_script_processor(
  self : BaseAudioContext,
) -> ScriptProcessorNode =
  #| (self) => self.createScriptProcessor()

///|
pub extern "js" fn BaseAudioContext::create_script_processor_with_number_of_output_channels(
  self : BaseAudioContext,
  buffer_size : Int,
  number_of_input_channels : Int,
  number_of_output_channels : Int,
) -> ScriptProcessorNode =
  #| (self, buffer_size, number_of_input_channels, number_of_output_channels) => self.createScriptProcessor(buffer_size, number_of_input_channels, number_of_output_channels)

///|
pub extern "js" fn BaseAudioContext::create_stereo_panner(
  self : BaseAudioContext,
) -> StereoPannerNode =
  #| (self) => self.createStereoPanner()

///|
pub extern "js" fn BaseAudioContext::create_wave_shaper(
  self : BaseAudioContext,
) -> WaveShaperNode =
  #| (self) => self.createWaveShaper()

///|
pub extern "js" fn BaseAudioContext::decode_audio_data(
  self : BaseAudioContext,
  audio_data : ArrayBuffer,
) -> Promise[AudioBuffer] =
  #| (self, audio_data) => self.decodeAudioData(audio_data)

///|
pub extern "js" fn BaseAudioContext::decode_audio_data_with_error_callback(
  self : BaseAudioContext,
  audio_data : ArrayBuffer,
  success_callback : DecodeSuccessCallback?,
  error_callback : DecodeErrorCallback?,
) -> Promise[AudioBuffer] =
  #| (self, audio_data, success_callback, error_callback) => self.decodeAudioData(audio_data, success_callback, error_callback)

///|
/// AudioContext interface
pub type AudioContext

///|
pub extern "js" fn AudioContext::to_js_value(self : AudioContext) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AudioContext (unchecked)
pub extern "js" fn AudioContext::from_js_value(v : JsValue) -> AudioContext =
  #| (v) => v

///|
/// Safely cast JsValue to AudioContext (checked with instanceof)
pub extern "js" fn AudioContext::from_js_value_opt(
  v : JsValue,
) -> AudioContext? =
  #| (v) => (v instanceof AudioContext) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AudioContext (checked with instanceof)
pub extern "js" fn JsValue::as_audio_context(self : JsValue) -> AudioContext? =
  #| (self) => (self instanceof AudioContext) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AudioContext (unchecked)
pub extern "js" fn JsValue::to_audio_context(self : JsValue) -> AudioContext =
  #| (self) => self

///|
pub extern "js" fn AudioContext::to_base_audio_context(
  self : AudioContext,
) -> BaseAudioContext =
  #| (self) => self

///|
pub extern "js" fn AudioContext::to_event_target(
  self : AudioContext,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn AudioContext::new(
  context_options : AudioContextOptions,
) -> AudioContext =
  #| (context_options) => new AudioContext(context_options)

///|
pub extern "js" fn AudioContext::get_base_latency(
  self : AudioContext,
) -> Double =
  #| (self) => self.baseLatency

///|
pub extern "js" fn AudioContext::get_output_latency(
  self : AudioContext,
) -> Double =
  #| (self) => self.outputLatency

///|
pub extern "js" fn AudioContext::get_sink_id(
  self : AudioContext,
) -> StringOrAudioSinkInfo =
  #| (self) => self.sinkId

///|
pub extern "js" fn AudioContext::get_onsinkchange(
  self : AudioContext,
) -> EventHandler =
  #| (self) => self.onsinkchange

///|
pub extern "js" fn AudioContext::set_onsinkchange(
  self : AudioContext,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsinkchange = value }

///|
pub extern "js" fn AudioContext::get_onerror(
  self : AudioContext,
) -> EventHandler =
  #| (self) => self.onerror

///|
pub extern "js" fn AudioContext::set_onerror(
  self : AudioContext,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onerror = value }

///|
pub extern "js" fn AudioContext::get_playback_stats(
  self : AudioContext,
) -> AudioPlaybackStats =
  #| (self) => self.playbackStats

///|
pub extern "js" fn AudioContext::get_output_timestamp(
  self : AudioContext,
) -> AudioTimestamp =
  #| (self) => self.getOutputTimestamp()

///|
pub extern "js" fn AudioContext::resume_(self : AudioContext) -> Promise[Unit] =
  #| (self) => self.resume()

///|
pub extern "js" fn AudioContext::suspend(self : AudioContext) -> Promise[Unit] =
  #| (self) => self.suspend()

///|
pub extern "js" fn AudioContext::close(self : AudioContext) -> Promise[Unit] =
  #| (self) => self.close()

///|
pub extern "js" fn AudioContext::set_sink_id(
  self : AudioContext,
  sink_id : StringOrAudioSinkOptions,
) -> Promise[Unit] =
  #| (self, sink_id) => self.setSinkId(sink_id)

///|
pub extern "js" fn AudioContext::create_media_element_source(
  self : AudioContext,
  media_element : HTMLMediaElement,
) -> MediaElementAudioSourceNode =
  #| (self, media_element) => self.createMediaElementSource(media_element)

///|
pub extern "js" fn AudioContext::create_media_stream_source(
  self : AudioContext,
  media_stream : MediaStream,
) -> MediaStreamAudioSourceNode =
  #| (self, media_stream) => self.createMediaStreamSource(media_stream)

///|
pub extern "js" fn AudioContext::create_media_stream_track_source(
  self : AudioContext,
  media_stream_track : MediaStreamTrack,
) -> MediaStreamTrackAudioSourceNode =
  #| (self, media_stream_track) => self.createMediaStreamTrackSource(media_stream_track)

///|
pub extern "js" fn AudioContext::create_media_stream_destination(
  self : AudioContext,
) -> MediaStreamAudioDestinationNode =
  #| (self) => self.createMediaStreamDestination()

///|
/// AudioSinkInfo interface
pub type AudioSinkInfo

///|
pub extern "js" fn AudioSinkInfo::to_js_value(self : AudioSinkInfo) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AudioSinkInfo (unchecked)
pub extern "js" fn AudioSinkInfo::from_js_value(v : JsValue) -> AudioSinkInfo =
  #| (v) => v

///|
/// Safely cast JsValue to AudioSinkInfo (checked with instanceof)
pub extern "js" fn AudioSinkInfo::from_js_value_opt(
  v : JsValue,
) -> AudioSinkInfo? =
  #| (v) => (v instanceof AudioSinkInfo) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AudioSinkInfo (checked with instanceof)
pub extern "js" fn JsValue::as_audio_sink_info(
  self : JsValue,
) -> AudioSinkInfo? =
  #| (self) => (self instanceof AudioSinkInfo) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AudioSinkInfo (unchecked)
pub extern "js" fn JsValue::to_audio_sink_info(self : JsValue) -> AudioSinkInfo =
  #| (self) => self

///|
pub extern "js" fn AudioSinkInfo::get_type(
  self : AudioSinkInfo,
) -> AudioSinkType =
  #| (self) => self.type

///|
/// OfflineAudioContext interface
pub type OfflineAudioContext

///|
pub extern "js" fn OfflineAudioContext::to_js_value(
  self : OfflineAudioContext,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to OfflineAudioContext (unchecked)
pub extern "js" fn OfflineAudioContext::from_js_value(
  v : JsValue,
) -> OfflineAudioContext =
  #| (v) => v

///|
/// Safely cast JsValue to OfflineAudioContext (checked with instanceof)
pub extern "js" fn OfflineAudioContext::from_js_value_opt(
  v : JsValue,
) -> OfflineAudioContext? =
  #| (v) => (v instanceof OfflineAudioContext) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to OfflineAudioContext (checked with instanceof)
pub extern "js" fn JsValue::as_offline_audio_context(
  self : JsValue,
) -> OfflineAudioContext? =
  #| (self) => (self instanceof OfflineAudioContext) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to OfflineAudioContext (unchecked)
pub extern "js" fn JsValue::to_offline_audio_context(
  self : JsValue,
) -> OfflineAudioContext =
  #| (self) => self

///|
pub extern "js" fn OfflineAudioContext::to_base_audio_context(
  self : OfflineAudioContext,
) -> BaseAudioContext =
  #| (self) => self

///|
pub extern "js" fn OfflineAudioContext::to_event_target(
  self : OfflineAudioContext,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn OfflineAudioContext::new(
  context_options : OfflineAudioContextOptions,
) -> OfflineAudioContext =
  #| (context_options) => new OfflineAudioContext(context_options)

///|
pub extern "js" fn OfflineAudioContext::start_rendering(
  self : OfflineAudioContext,
) -> Promise[AudioBuffer] =
  #| (self) => self.startRendering()

///|
pub extern "js" fn OfflineAudioContext::resume_(
  self : OfflineAudioContext,
) -> Promise[Unit] =
  #| (self) => self.resume()

///|
pub extern "js" fn OfflineAudioContext::suspend(
  self : OfflineAudioContext,
  suspend_time : Double,
) -> Promise[Unit] =
  #| (self, suspend_time) => self.suspend(suspend_time)

///|
pub extern "js" fn OfflineAudioContext::get_length(
  self : OfflineAudioContext,
) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn OfflineAudioContext::get_oncomplete(
  self : OfflineAudioContext,
) -> EventHandler =
  #| (self) => self.oncomplete

///|
pub extern "js" fn OfflineAudioContext::set_oncomplete(
  self : OfflineAudioContext,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncomplete = value }

///|
/// OfflineAudioCompletionEvent interface
pub type OfflineAudioCompletionEvent

///|
pub extern "js" fn OfflineAudioCompletionEvent::to_js_value(
  self : OfflineAudioCompletionEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to OfflineAudioCompletionEvent (unchecked)
pub extern "js" fn OfflineAudioCompletionEvent::from_js_value(
  v : JsValue,
) -> OfflineAudioCompletionEvent =
  #| (v) => v

///|
/// Safely cast JsValue to OfflineAudioCompletionEvent (checked with instanceof)
pub extern "js" fn OfflineAudioCompletionEvent::from_js_value_opt(
  v : JsValue,
) -> OfflineAudioCompletionEvent? =
  #| (v) => (v instanceof OfflineAudioCompletionEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to OfflineAudioCompletionEvent (checked with instanceof)
pub extern "js" fn JsValue::as_offline_audio_completion_event(
  self : JsValue,
) -> OfflineAudioCompletionEvent? =
  #| (self) => (self instanceof OfflineAudioCompletionEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to OfflineAudioCompletionEvent (unchecked)
pub extern "js" fn JsValue::to_offline_audio_completion_event(
  self : JsValue,
) -> OfflineAudioCompletionEvent =
  #| (self) => self

///|
pub extern "js" fn OfflineAudioCompletionEvent::to_event(
  self : OfflineAudioCompletionEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn OfflineAudioCompletionEvent::new(
  type_ : String,
  event_init_dict : OfflineAudioCompletionEventInit,
) -> OfflineAudioCompletionEvent =
  #| (type_, event_init_dict) => new OfflineAudioCompletionEvent(type_, event_init_dict)

///|
pub extern "js" fn OfflineAudioCompletionEvent::get_rendered_buffer(
  self : OfflineAudioCompletionEvent,
) -> AudioBuffer =
  #| (self) => self.renderedBuffer

///|
/// AudioBuffer interface
pub type AudioBuffer

///|
pub extern "js" fn AudioBuffer::to_js_value(self : AudioBuffer) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AudioBuffer (unchecked)
pub extern "js" fn AudioBuffer::from_js_value(v : JsValue) -> AudioBuffer =
  #| (v) => v

///|
/// Safely cast JsValue to AudioBuffer (checked with instanceof)
pub extern "js" fn AudioBuffer::from_js_value_opt(v : JsValue) -> AudioBuffer? =
  #| (v) => (v instanceof AudioBuffer) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AudioBuffer (checked with instanceof)
pub extern "js" fn JsValue::as_audio_buffer(self : JsValue) -> AudioBuffer? =
  #| (self) => (self instanceof AudioBuffer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AudioBuffer (unchecked)
pub extern "js" fn JsValue::to_audio_buffer(self : JsValue) -> AudioBuffer =
  #| (self) => self

///|
pub extern "js" fn AudioBuffer::new(
  options : AudioBufferOptions,
) -> AudioBuffer =
  #| (options) => new AudioBuffer(options)

///|
pub extern "js" fn AudioBuffer::get_sample_rate(self : AudioBuffer) -> Double =
  #| (self) => self.sampleRate

///|
pub extern "js" fn AudioBuffer::get_length(self : AudioBuffer) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn AudioBuffer::get_duration(self : AudioBuffer) -> Double =
  #| (self) => self.duration

///|
pub extern "js" fn AudioBuffer::get_number_of_channels(
  self : AudioBuffer,
) -> Int =
  #| (self) => self.numberOfChannels

///|
pub extern "js" fn AudioBuffer::get_channel_data(
  self : AudioBuffer,
  channel : Int,
) -> Float32Array =
  #| (self, channel) => self.getChannelData(channel)

///|
pub extern "js" fn AudioBuffer::copy_from_channel(
  self : AudioBuffer,
  destination : Float32Array,
  channel_number : Int,
) -> Unit =
  #| (self, destination, channel_number) => self.copyFromChannel(destination, channel_number)

///|
pub extern "js" fn AudioBuffer::copy_from_channel_with_buffer_offset(
  self : AudioBuffer,
  destination : Float32Array,
  channel_number : Int,
  buffer_offset : Int,
) -> Unit =
  #| (self, destination, channel_number, buffer_offset) => self.copyFromChannel(destination, channel_number, buffer_offset)

///|
pub extern "js" fn AudioBuffer::copy_to_channel(
  self : AudioBuffer,
  source : Float32Array,
  channel_number : Int,
) -> Unit =
  #| (self, source, channel_number) => self.copyToChannel(source, channel_number)

///|
pub extern "js" fn AudioBuffer::copy_to_channel_with_buffer_offset(
  self : AudioBuffer,
  source : Float32Array,
  channel_number : Int,
  buffer_offset : Int,
) -> Unit =
  #| (self, source, channel_number, buffer_offset) => self.copyToChannel(source, channel_number, buffer_offset)

///|
/// AudioNode interface
pub type AudioNode

///|
pub extern "js" fn AudioNode::to_js_value(self : AudioNode) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AudioNode (unchecked)
pub extern "js" fn AudioNode::from_js_value(v : JsValue) -> AudioNode =
  #| (v) => v

///|
/// Safely cast JsValue to AudioNode (checked with instanceof)
pub extern "js" fn AudioNode::from_js_value_opt(v : JsValue) -> AudioNode? =
  #| (v) => (v instanceof AudioNode) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AudioNode (checked with instanceof)
pub extern "js" fn JsValue::as_audio_node(self : JsValue) -> AudioNode? =
  #| (self) => (self instanceof AudioNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AudioNode (unchecked)
pub extern "js" fn JsValue::to_audio_node(self : JsValue) -> AudioNode =
  #| (self) => self

///|
pub extern "js" fn AudioNode::to_event_target(self : AudioNode) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn AudioNode::as_audio_scheduled_source_node(
  self : AudioNode,
) -> AudioScheduledSourceNode? =
  #| (self) => (self instanceof AudioScheduledSourceNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AudioNode::as_analyser_node(
  self : AudioNode,
) -> AnalyserNode? =
  #| (self) => (self instanceof AnalyserNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AudioNode::as_audio_buffer_source_node(
  self : AudioNode,
) -> AudioBufferSourceNode? =
  #| (self) => (self instanceof AudioBufferSourceNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AudioNode::as_audio_destination_node(
  self : AudioNode,
) -> AudioDestinationNode? =
  #| (self) => (self instanceof AudioDestinationNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AudioNode::as_biquad_filter_node(
  self : AudioNode,
) -> BiquadFilterNode? =
  #| (self) => (self instanceof BiquadFilterNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AudioNode::as_channel_merger_node(
  self : AudioNode,
) -> ChannelMergerNode? =
  #| (self) => (self instanceof ChannelMergerNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AudioNode::as_channel_splitter_node(
  self : AudioNode,
) -> ChannelSplitterNode? =
  #| (self) => (self instanceof ChannelSplitterNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AudioNode::as_constant_source_node(
  self : AudioNode,
) -> ConstantSourceNode? =
  #| (self) => (self instanceof ConstantSourceNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AudioNode::as_convolver_node(
  self : AudioNode,
) -> ConvolverNode? =
  #| (self) => (self instanceof ConvolverNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AudioNode::as_delay_node(self : AudioNode) -> DelayNode? =
  #| (self) => (self instanceof DelayNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AudioNode::as_dynamics_compressor_node(
  self : AudioNode,
) -> DynamicsCompressorNode? =
  #| (self) => (self instanceof DynamicsCompressorNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AudioNode::as_gain_node(self : AudioNode) -> GainNode? =
  #| (self) => (self instanceof GainNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AudioNode::as_iir_filter_node(
  self : AudioNode,
) -> IIRFilterNode? =
  #| (self) => (self instanceof IIRFilterNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AudioNode::as_media_element_audio_source_node(
  self : AudioNode,
) -> MediaElementAudioSourceNode? =
  #| (self) => (self instanceof MediaElementAudioSourceNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AudioNode::as_media_stream_audio_destination_node(
  self : AudioNode,
) -> MediaStreamAudioDestinationNode? =
  #| (self) => (self instanceof MediaStreamAudioDestinationNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AudioNode::as_media_stream_audio_source_node(
  self : AudioNode,
) -> MediaStreamAudioSourceNode? =
  #| (self) => (self instanceof MediaStreamAudioSourceNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AudioNode::as_media_stream_track_audio_source_node(
  self : AudioNode,
) -> MediaStreamTrackAudioSourceNode? =
  #| (self) => (self instanceof MediaStreamTrackAudioSourceNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AudioNode::as_oscillator_node(
  self : AudioNode,
) -> OscillatorNode? =
  #| (self) => (self instanceof OscillatorNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AudioNode::as_panner_node(self : AudioNode) -> PannerNode? =
  #| (self) => (self instanceof PannerNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AudioNode::as_script_processor_node(
  self : AudioNode,
) -> ScriptProcessorNode? =
  #| (self) => (self instanceof ScriptProcessorNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AudioNode::as_stereo_panner_node(
  self : AudioNode,
) -> StereoPannerNode? =
  #| (self) => (self instanceof StereoPannerNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AudioNode::as_wave_shaper_node(
  self : AudioNode,
) -> WaveShaperNode? =
  #| (self) => (self instanceof WaveShaperNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AudioNode::as_audio_worklet_node(
  self : AudioNode,
) -> AudioWorkletNode? =
  #| (self) => (self instanceof AudioWorkletNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AudioNode::connect(
  self : AudioNode,
  destination_node : AudioNode,
) -> AudioNode =
  #| (self, destination_node) => self.connect(destination_node)

///|
pub extern "js" fn AudioNode::connect_with_input(
  self : AudioNode,
  destination_node : AudioNode,
  output : Int,
  input : Int,
) -> AudioNode =
  #| (self, destination_node, output, input) => self.connect(destination_node, output, input)

///|
pub extern "js" fn AudioNode::connect_with_destination_param_audio_param(
  self : AudioNode,
  destination_param : AudioParam,
) -> Unit =
  #| (self, destination_param) => self.connect(destination_param)

///|
pub extern "js" fn AudioNode::connect_with_destination_param_audio_param_and_output(
  self : AudioNode,
  destination_param : AudioParam,
  output : Int,
) -> Unit =
  #| (self, destination_param, output) => self.connect(destination_param, output)

///|
pub extern "js" fn AudioNode::disconnect(self : AudioNode) -> Unit =
  #| (self) => self.disconnect()

///|
pub extern "js" fn AudioNode::disconnect_with_output(
  self : AudioNode,
  output : Int,
) -> Unit =
  #| (self, output) => self.disconnect(output)

///|
pub extern "js" fn AudioNode::disconnect_with_destination_node_audio_node(
  self : AudioNode,
  destination_node : AudioNode,
) -> Unit =
  #| (self, destination_node) => self.disconnect(destination_node)

///|
pub extern "js" fn AudioNode::disconnect_with_destination_param_audio_param(
  self : AudioNode,
  destination_param : AudioParam,
) -> Unit =
  #| (self, destination_param) => self.disconnect(destination_param)

///|
pub extern "js" fn AudioNode::disconnect_with_destination_node_audio_node_and_output(
  self : AudioNode,
  destination_node : AudioNode,
  output : Int,
) -> Unit =
  #| (self, destination_node, output) => self.disconnect(destination_node, output)

///|
pub extern "js" fn AudioNode::disconnect_with_destination_param_audio_param_and_output(
  self : AudioNode,
  destination_param : AudioParam,
  output : Int,
) -> Unit =
  #| (self, destination_param, output) => self.disconnect(destination_param, output)

///|
pub extern "js" fn AudioNode::disconnect_with_destination_node_audio_node_and_output_and_input(
  self : AudioNode,
  destination_node : AudioNode,
  output : Int,
  input : Int,
) -> Unit =
  #| (self, destination_node, output, input) => self.disconnect(destination_node, output, input)

///|
pub extern "js" fn AudioNode::get_context(self : AudioNode) -> BaseAudioContext =
  #| (self) => self.context

///|
pub extern "js" fn AudioNode::get_number_of_inputs(self : AudioNode) -> Int =
  #| (self) => self.numberOfInputs

///|
pub extern "js" fn AudioNode::get_number_of_outputs(self : AudioNode) -> Int =
  #| (self) => self.numberOfOutputs

///|
pub extern "js" fn AudioNode::get_channel_count(self : AudioNode) -> Int =
  #| (self) => self.channelCount

///|
pub extern "js" fn AudioNode::set_channel_count(
  self : AudioNode,
  value : Int,
) -> Unit =
  #| (self, value) => { self.channelCount = value }

///|
pub extern "js" fn AudioNode::get_channel_count_mode(
  self : AudioNode,
) -> ChannelCountMode =
  #| (self) => self.channelCountMode

///|
pub extern "js" fn AudioNode::set_channel_count_mode(
  self : AudioNode,
  value : ChannelCountMode,
) -> Unit =
  #| (self, value) => { self.channelCountMode = value }

///|
pub extern "js" fn AudioNode::get_channel_interpretation(
  self : AudioNode,
) -> ChannelInterpretation =
  #| (self) => self.channelInterpretation

///|
pub extern "js" fn AudioNode::set_channel_interpretation(
  self : AudioNode,
  value : ChannelInterpretation,
) -> Unit =
  #| (self, value) => { self.channelInterpretation = value }

///|
/// AudioParam interface
pub type AudioParam

///|
pub extern "js" fn AudioParam::to_js_value(self : AudioParam) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AudioParam (unchecked)
pub extern "js" fn AudioParam::from_js_value(v : JsValue) -> AudioParam =
  #| (v) => v

///|
/// Safely cast JsValue to AudioParam (checked with instanceof)
pub extern "js" fn AudioParam::from_js_value_opt(v : JsValue) -> AudioParam? =
  #| (v) => (v instanceof AudioParam) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AudioParam (checked with instanceof)
pub extern "js" fn JsValue::as_audio_param(self : JsValue) -> AudioParam? =
  #| (self) => (self instanceof AudioParam) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AudioParam (unchecked)
pub extern "js" fn JsValue::to_audio_param(self : JsValue) -> AudioParam =
  #| (self) => self

///|
pub extern "js" fn AudioParam::get_value(self : AudioParam) -> Double =
  #| (self) => self.value

///|
pub extern "js" fn AudioParam::set_value(
  self : AudioParam,
  value : Double,
) -> Unit =
  #| (self, value) => { self.value = value }

///|
pub extern "js" fn AudioParam::get_automation_rate(
  self : AudioParam,
) -> AutomationRate =
  #| (self) => self.automationRate

///|
pub extern "js" fn AudioParam::set_automation_rate(
  self : AudioParam,
  value : AutomationRate,
) -> Unit =
  #| (self, value) => { self.automationRate = value }

///|
pub extern "js" fn AudioParam::get_default_value(self : AudioParam) -> Double =
  #| (self) => self.defaultValue

///|
pub extern "js" fn AudioParam::get_min_value(self : AudioParam) -> Double =
  #| (self) => self.minValue

///|
pub extern "js" fn AudioParam::get_max_value(self : AudioParam) -> Double =
  #| (self) => self.maxValue

///|
pub extern "js" fn AudioParam::set_value_at_time(
  self : AudioParam,
  value : Double,
  start_time : Double,
) -> AudioParam =
  #| (self, value, start_time) => self.setValueAtTime(value, start_time)

///|
pub extern "js" fn AudioParam::linear_ramp_to_value_at_time(
  self : AudioParam,
  value : Double,
  end_time : Double,
) -> AudioParam =
  #| (self, value, end_time) => self.linearRampToValueAtTime(value, end_time)

///|
pub extern "js" fn AudioParam::exponential_ramp_to_value_at_time(
  self : AudioParam,
  value : Double,
  end_time : Double,
) -> AudioParam =
  #| (self, value, end_time) => self.exponentialRampToValueAtTime(value, end_time)

///|
pub extern "js" fn AudioParam::set_target_at_time(
  self : AudioParam,
  target : Double,
  start_time : Double,
  time_constant : Double,
) -> AudioParam =
  #| (self, target, start_time, time_constant) => self.setTargetAtTime(target, start_time, time_constant)

///|
pub extern "js" fn AudioParam::set_value_curve_at_time(
  self : AudioParam,
  values : Array[Double],
  start_time : Double,
  duration : Double,
) -> AudioParam =
  #| (self, values, start_time, duration) => self.setValueCurveAtTime(values, start_time, duration)

///|
pub extern "js" fn AudioParam::cancel_scheduled_values(
  self : AudioParam,
  cancel_time : Double,
) -> AudioParam =
  #| (self, cancel_time) => self.cancelScheduledValues(cancel_time)

///|
pub extern "js" fn AudioParam::cancel_and_hold_at_time(
  self : AudioParam,
  cancel_time : Double,
) -> AudioParam =
  #| (self, cancel_time) => self.cancelAndHoldAtTime(cancel_time)

///|
/// AudioScheduledSourceNode interface
pub type AudioScheduledSourceNode

///|
pub extern "js" fn AudioScheduledSourceNode::to_js_value(
  self : AudioScheduledSourceNode,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AudioScheduledSourceNode (unchecked)
pub extern "js" fn AudioScheduledSourceNode::from_js_value(
  v : JsValue,
) -> AudioScheduledSourceNode =
  #| (v) => v

///|
/// Safely cast JsValue to AudioScheduledSourceNode (checked with instanceof)
pub extern "js" fn AudioScheduledSourceNode::from_js_value_opt(
  v : JsValue,
) -> AudioScheduledSourceNode? =
  #| (v) => (v instanceof AudioScheduledSourceNode) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AudioScheduledSourceNode (checked with instanceof)
pub extern "js" fn JsValue::as_audio_scheduled_source_node(
  self : JsValue,
) -> AudioScheduledSourceNode? =
  #| (self) => (self instanceof AudioScheduledSourceNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AudioScheduledSourceNode (unchecked)
pub extern "js" fn JsValue::to_audio_scheduled_source_node(
  self : JsValue,
) -> AudioScheduledSourceNode =
  #| (self) => self

///|
pub extern "js" fn AudioScheduledSourceNode::to_audio_node(
  self : AudioScheduledSourceNode,
) -> AudioNode =
  #| (self) => self

///|
pub extern "js" fn AudioScheduledSourceNode::to_event_target(
  self : AudioScheduledSourceNode,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn AudioScheduledSourceNode::as_audio_buffer_source_node(
  self : AudioScheduledSourceNode,
) -> AudioBufferSourceNode? =
  #| (self) => (self instanceof AudioBufferSourceNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AudioScheduledSourceNode::as_constant_source_node(
  self : AudioScheduledSourceNode,
) -> ConstantSourceNode? =
  #| (self) => (self instanceof ConstantSourceNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AudioScheduledSourceNode::as_oscillator_node(
  self : AudioScheduledSourceNode,
) -> OscillatorNode? =
  #| (self) => (self instanceof OscillatorNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AudioScheduledSourceNode::get_onended(
  self : AudioScheduledSourceNode,
) -> EventHandler =
  #| (self) => self.onended

///|
pub extern "js" fn AudioScheduledSourceNode::set_onended(
  self : AudioScheduledSourceNode,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onended = value }

///|
pub extern "js" fn AudioScheduledSourceNode::start(
  self : AudioScheduledSourceNode,
) -> Unit =
  #| (self) => self.start()

///|
pub extern "js" fn AudioScheduledSourceNode::start_with_when(
  self : AudioScheduledSourceNode,
  when : Double,
) -> Unit =
  #| (self, when) => self.start(when)

///|
pub extern "js" fn AudioScheduledSourceNode::stop(
  self : AudioScheduledSourceNode,
) -> Unit =
  #| (self) => self.stop()

///|
pub extern "js" fn AudioScheduledSourceNode::stop_with_when(
  self : AudioScheduledSourceNode,
  when : Double,
) -> Unit =
  #| (self, when) => self.stop(when)

///|
/// AnalyserNode interface
pub type AnalyserNode

///|
pub extern "js" fn AnalyserNode::to_js_value(self : AnalyserNode) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AnalyserNode (unchecked)
pub extern "js" fn AnalyserNode::from_js_value(v : JsValue) -> AnalyserNode =
  #| (v) => v

///|
/// Safely cast JsValue to AnalyserNode (checked with instanceof)
pub extern "js" fn AnalyserNode::from_js_value_opt(
  v : JsValue,
) -> AnalyserNode? =
  #| (v) => (v instanceof AnalyserNode) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AnalyserNode (checked with instanceof)
pub extern "js" fn JsValue::as_analyser_node(self : JsValue) -> AnalyserNode? =
  #| (self) => (self instanceof AnalyserNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AnalyserNode (unchecked)
pub extern "js" fn JsValue::to_analyser_node(self : JsValue) -> AnalyserNode =
  #| (self) => self

///|
pub extern "js" fn AnalyserNode::to_audio_node(
  self : AnalyserNode,
) -> AudioNode =
  #| (self) => self

///|
pub extern "js" fn AnalyserNode::to_event_target(
  self : AnalyserNode,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn AnalyserNode::new(
  context : BaseAudioContext,
  options : AnalyserOptions,
) -> AnalyserNode =
  #| (context, options) => new AnalyserNode(context, options)

///|
pub extern "js" fn AnalyserNode::get_float_frequency_data(
  self : AnalyserNode,
  array : Float32Array,
) -> Unit =
  #| (self, array) => self.getFloatFrequencyData(array)

///|
pub extern "js" fn AnalyserNode::get_byte_frequency_data(
  self : AnalyserNode,
  array : Uint8Array,
) -> Unit =
  #| (self, array) => self.getByteFrequencyData(array)

///|
pub extern "js" fn AnalyserNode::get_float_time_domain_data(
  self : AnalyserNode,
  array : Float32Array,
) -> Unit =
  #| (self, array) => self.getFloatTimeDomainData(array)

///|
pub extern "js" fn AnalyserNode::get_byte_time_domain_data(
  self : AnalyserNode,
  array : Uint8Array,
) -> Unit =
  #| (self, array) => self.getByteTimeDomainData(array)

///|
pub extern "js" fn AnalyserNode::get_fft_size(self : AnalyserNode) -> Int =
  #| (self) => self.fftSize

///|
pub extern "js" fn AnalyserNode::set_fft_size(
  self : AnalyserNode,
  value : Int,
) -> Unit =
  #| (self, value) => { self.fftSize = value }

///|
pub extern "js" fn AnalyserNode::get_frequency_bin_count(
  self : AnalyserNode,
) -> Int =
  #| (self) => self.frequencyBinCount

///|
pub extern "js" fn AnalyserNode::get_min_decibels(
  self : AnalyserNode,
) -> Double =
  #| (self) => self.minDecibels

///|
pub extern "js" fn AnalyserNode::set_min_decibels(
  self : AnalyserNode,
  value : Double,
) -> Unit =
  #| (self, value) => { self.minDecibels = value }

///|
pub extern "js" fn AnalyserNode::get_max_decibels(
  self : AnalyserNode,
) -> Double =
  #| (self) => self.maxDecibels

///|
pub extern "js" fn AnalyserNode::set_max_decibels(
  self : AnalyserNode,
  value : Double,
) -> Unit =
  #| (self, value) => { self.maxDecibels = value }

///|
pub extern "js" fn AnalyserNode::get_smoothing_time_constant(
  self : AnalyserNode,
) -> Double =
  #| (self) => self.smoothingTimeConstant

///|
pub extern "js" fn AnalyserNode::set_smoothing_time_constant(
  self : AnalyserNode,
  value : Double,
) -> Unit =
  #| (self, value) => { self.smoothingTimeConstant = value }

///|
/// AudioBufferSourceNode interface
pub type AudioBufferSourceNode

///|
pub extern "js" fn AudioBufferSourceNode::to_js_value(
  self : AudioBufferSourceNode,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AudioBufferSourceNode (unchecked)
pub extern "js" fn AudioBufferSourceNode::from_js_value(
  v : JsValue,
) -> AudioBufferSourceNode =
  #| (v) => v

///|
/// Safely cast JsValue to AudioBufferSourceNode (checked with instanceof)
pub extern "js" fn AudioBufferSourceNode::from_js_value_opt(
  v : JsValue,
) -> AudioBufferSourceNode? =
  #| (v) => (v instanceof AudioBufferSourceNode) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AudioBufferSourceNode (checked with instanceof)
pub extern "js" fn JsValue::as_audio_buffer_source_node(
  self : JsValue,
) -> AudioBufferSourceNode? =
  #| (self) => (self instanceof AudioBufferSourceNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AudioBufferSourceNode (unchecked)
pub extern "js" fn JsValue::to_audio_buffer_source_node(
  self : JsValue,
) -> AudioBufferSourceNode =
  #| (self) => self

///|
pub extern "js" fn AudioBufferSourceNode::to_audio_scheduled_source_node(
  self : AudioBufferSourceNode,
) -> AudioScheduledSourceNode =
  #| (self) => self

///|
pub extern "js" fn AudioBufferSourceNode::to_audio_node(
  self : AudioBufferSourceNode,
) -> AudioNode =
  #| (self) => self

///|
pub extern "js" fn AudioBufferSourceNode::to_event_target(
  self : AudioBufferSourceNode,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn AudioBufferSourceNode::new(
  context : BaseAudioContext,
  options : AudioBufferSourceOptions,
) -> AudioBufferSourceNode =
  #| (context, options) => new AudioBufferSourceNode(context, options)

///|
pub extern "js" fn AudioBufferSourceNode::get_buffer(
  self : AudioBufferSourceNode,
) -> AudioBuffer? =
  #| (self) => { const v = self.buffer; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn AudioBufferSourceNode::set_buffer(
  self : AudioBufferSourceNode,
  value : AudioBuffer?,
) -> Unit =
  #| (self, value) => { self.buffer = value }

///|
pub extern "js" fn AudioBufferSourceNode::get_playback_rate(
  self : AudioBufferSourceNode,
) -> AudioParam =
  #| (self) => self.playbackRate

///|
pub extern "js" fn AudioBufferSourceNode::get_detune(
  self : AudioBufferSourceNode,
) -> AudioParam =
  #| (self) => self.detune

///|
pub extern "js" fn AudioBufferSourceNode::get_loop(
  self : AudioBufferSourceNode,
) -> Bool =
  #| (self) => self.loop

///|
pub extern "js" fn AudioBufferSourceNode::set_loop(
  self : AudioBufferSourceNode,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.loop = value }

///|
pub extern "js" fn AudioBufferSourceNode::get_loop_start(
  self : AudioBufferSourceNode,
) -> Double =
  #| (self) => self.loopStart

///|
pub extern "js" fn AudioBufferSourceNode::set_loop_start(
  self : AudioBufferSourceNode,
  value : Double,
) -> Unit =
  #| (self, value) => { self.loopStart = value }

///|
pub extern "js" fn AudioBufferSourceNode::get_loop_end(
  self : AudioBufferSourceNode,
) -> Double =
  #| (self) => self.loopEnd

///|
pub extern "js" fn AudioBufferSourceNode::set_loop_end(
  self : AudioBufferSourceNode,
  value : Double,
) -> Unit =
  #| (self, value) => { self.loopEnd = value }

///|
pub extern "js" fn AudioBufferSourceNode::start(
  self : AudioBufferSourceNode,
) -> Unit =
  #| (self) => self.start()

///|
pub extern "js" fn AudioBufferSourceNode::start_with_duration(
  self : AudioBufferSourceNode,
  when : Double,
  offset : Double,
  duration : Double,
) -> Unit =
  #| (self, when, offset, duration) => self.start(when, offset, duration)

///|
/// AudioDestinationNode interface
pub type AudioDestinationNode

///|
pub extern "js" fn AudioDestinationNode::to_js_value(
  self : AudioDestinationNode,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AudioDestinationNode (unchecked)
pub extern "js" fn AudioDestinationNode::from_js_value(
  v : JsValue,
) -> AudioDestinationNode =
  #| (v) => v

///|
/// Safely cast JsValue to AudioDestinationNode (checked with instanceof)
pub extern "js" fn AudioDestinationNode::from_js_value_opt(
  v : JsValue,
) -> AudioDestinationNode? =
  #| (v) => (v instanceof AudioDestinationNode) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AudioDestinationNode (checked with instanceof)
pub extern "js" fn JsValue::as_audio_destination_node(
  self : JsValue,
) -> AudioDestinationNode? =
  #| (self) => (self instanceof AudioDestinationNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AudioDestinationNode (unchecked)
pub extern "js" fn JsValue::to_audio_destination_node(
  self : JsValue,
) -> AudioDestinationNode =
  #| (self) => self

///|
pub extern "js" fn AudioDestinationNode::to_audio_node(
  self : AudioDestinationNode,
) -> AudioNode =
  #| (self) => self

///|
pub extern "js" fn AudioDestinationNode::to_event_target(
  self : AudioDestinationNode,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn AudioDestinationNode::get_max_channel_count(
  self : AudioDestinationNode,
) -> Int =
  #| (self) => self.maxChannelCount

///|
/// AudioListener interface
pub type AudioListener

///|
pub extern "js" fn AudioListener::to_js_value(self : AudioListener) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AudioListener (unchecked)
pub extern "js" fn AudioListener::from_js_value(v : JsValue) -> AudioListener =
  #| (v) => v

///|
/// Safely cast JsValue to AudioListener (checked with instanceof)
pub extern "js" fn AudioListener::from_js_value_opt(
  v : JsValue,
) -> AudioListener? =
  #| (v) => (v instanceof AudioListener) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AudioListener (checked with instanceof)
pub extern "js" fn JsValue::as_audio_listener(self : JsValue) -> AudioListener? =
  #| (self) => (self instanceof AudioListener) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AudioListener (unchecked)
pub extern "js" fn JsValue::to_audio_listener(self : JsValue) -> AudioListener =
  #| (self) => self

///|
pub extern "js" fn AudioListener::get_position_x(
  self : AudioListener,
) -> AudioParam =
  #| (self) => self.positionX

///|
pub extern "js" fn AudioListener::get_position_y(
  self : AudioListener,
) -> AudioParam =
  #| (self) => self.positionY

///|
pub extern "js" fn AudioListener::get_position_z(
  self : AudioListener,
) -> AudioParam =
  #| (self) => self.positionZ

///|
pub extern "js" fn AudioListener::get_forward_x(
  self : AudioListener,
) -> AudioParam =
  #| (self) => self.forwardX

///|
pub extern "js" fn AudioListener::get_forward_y(
  self : AudioListener,
) -> AudioParam =
  #| (self) => self.forwardY

///|
pub extern "js" fn AudioListener::get_forward_z(
  self : AudioListener,
) -> AudioParam =
  #| (self) => self.forwardZ

///|
pub extern "js" fn AudioListener::get_up_x(self : AudioListener) -> AudioParam =
  #| (self) => self.upX

///|
pub extern "js" fn AudioListener::get_up_y(self : AudioListener) -> AudioParam =
  #| (self) => self.upY

///|
pub extern "js" fn AudioListener::get_up_z(self : AudioListener) -> AudioParam =
  #| (self) => self.upZ

///|
pub extern "js" fn AudioListener::set_position(
  self : AudioListener,
  x : Double,
  y : Double,
  z : Double,
) -> Unit =
  #| (self, x, y, z) => self.setPosition(x, y, z)

///|
pub extern "js" fn AudioListener::set_orientation(
  self : AudioListener,
  x : Double,
  y : Double,
  z : Double,
  x_up : Double,
  y_up : Double,
  z_up : Double,
) -> Unit =
  #| (self, x, y, z, x_up, y_up, z_up) => self.setOrientation(x, y, z, x_up, y_up, z_up)

///|
/// AudioProcessingEvent interface
pub type AudioProcessingEvent

///|
pub extern "js" fn AudioProcessingEvent::to_js_value(
  self : AudioProcessingEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AudioProcessingEvent (unchecked)
pub extern "js" fn AudioProcessingEvent::from_js_value(
  v : JsValue,
) -> AudioProcessingEvent =
  #| (v) => v

///|
/// Safely cast JsValue to AudioProcessingEvent (checked with instanceof)
pub extern "js" fn AudioProcessingEvent::from_js_value_opt(
  v : JsValue,
) -> AudioProcessingEvent? =
  #| (v) => (v instanceof AudioProcessingEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AudioProcessingEvent (checked with instanceof)
pub extern "js" fn JsValue::as_audio_processing_event(
  self : JsValue,
) -> AudioProcessingEvent? =
  #| (self) => (self instanceof AudioProcessingEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AudioProcessingEvent (unchecked)
pub extern "js" fn JsValue::to_audio_processing_event(
  self : JsValue,
) -> AudioProcessingEvent =
  #| (self) => self

///|
pub extern "js" fn AudioProcessingEvent::to_event(
  self : AudioProcessingEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn AudioProcessingEvent::new(
  type_ : String,
  event_init_dict : AudioProcessingEventInit,
) -> AudioProcessingEvent =
  #| (type_, event_init_dict) => new AudioProcessingEvent(type_, event_init_dict)

///|
pub extern "js" fn AudioProcessingEvent::get_playback_time(
  self : AudioProcessingEvent,
) -> Double =
  #| (self) => self.playbackTime

///|
pub extern "js" fn AudioProcessingEvent::get_input_buffer(
  self : AudioProcessingEvent,
) -> AudioBuffer =
  #| (self) => self.inputBuffer

///|
pub extern "js" fn AudioProcessingEvent::get_output_buffer(
  self : AudioProcessingEvent,
) -> AudioBuffer =
  #| (self) => self.outputBuffer

///|
/// BiquadFilterNode interface
pub type BiquadFilterNode

///|
pub extern "js" fn BiquadFilterNode::to_js_value(
  self : BiquadFilterNode,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to BiquadFilterNode (unchecked)
pub extern "js" fn BiquadFilterNode::from_js_value(
  v : JsValue,
) -> BiquadFilterNode =
  #| (v) => v

///|
/// Safely cast JsValue to BiquadFilterNode (checked with instanceof)
pub extern "js" fn BiquadFilterNode::from_js_value_opt(
  v : JsValue,
) -> BiquadFilterNode? =
  #| (v) => (v instanceof BiquadFilterNode) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to BiquadFilterNode (checked with instanceof)
pub extern "js" fn JsValue::as_biquad_filter_node(
  self : JsValue,
) -> BiquadFilterNode? =
  #| (self) => (self instanceof BiquadFilterNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to BiquadFilterNode (unchecked)
pub extern "js" fn JsValue::to_biquad_filter_node(
  self : JsValue,
) -> BiquadFilterNode =
  #| (self) => self

///|
pub extern "js" fn BiquadFilterNode::to_audio_node(
  self : BiquadFilterNode,
) -> AudioNode =
  #| (self) => self

///|
pub extern "js" fn BiquadFilterNode::to_event_target(
  self : BiquadFilterNode,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn BiquadFilterNode::new(
  context : BaseAudioContext,
  options : BiquadFilterOptions,
) -> BiquadFilterNode =
  #| (context, options) => new BiquadFilterNode(context, options)

///|
pub extern "js" fn BiquadFilterNode::get_type(
  self : BiquadFilterNode,
) -> BiquadFilterType =
  #| (self) => self.type

///|
pub extern "js" fn BiquadFilterNode::set_type(
  self : BiquadFilterNode,
  value : BiquadFilterType,
) -> Unit =
  #| (self, value) => { self.type = value }

///|
pub extern "js" fn BiquadFilterNode::get_frequency(
  self : BiquadFilterNode,
) -> AudioParam =
  #| (self) => self.frequency

///|
pub extern "js" fn BiquadFilterNode::get_detune(
  self : BiquadFilterNode,
) -> AudioParam =
  #| (self) => self.detune

///|
pub extern "js" fn BiquadFilterNode::get_q(
  self : BiquadFilterNode,
) -> AudioParam =
  #| (self) => self.Q

///|
pub extern "js" fn BiquadFilterNode::get_gain(
  self : BiquadFilterNode,
) -> AudioParam =
  #| (self) => self.gain

///|
pub extern "js" fn BiquadFilterNode::get_frequency_response(
  self : BiquadFilterNode,
  frequency_hz : Float32Array,
  mag_response : Float32Array,
  phase_response : Float32Array,
) -> Unit =
  #| (self, frequency_hz, mag_response, phase_response) => self.getFrequencyResponse(frequency_hz, mag_response, phase_response)

///|
/// ChannelMergerNode interface
pub type ChannelMergerNode

///|
pub extern "js" fn ChannelMergerNode::to_js_value(
  self : ChannelMergerNode,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ChannelMergerNode (unchecked)
pub extern "js" fn ChannelMergerNode::from_js_value(
  v : JsValue,
) -> ChannelMergerNode =
  #| (v) => v

///|
/// Safely cast JsValue to ChannelMergerNode (checked with instanceof)
pub extern "js" fn ChannelMergerNode::from_js_value_opt(
  v : JsValue,
) -> ChannelMergerNode? =
  #| (v) => (v instanceof ChannelMergerNode) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ChannelMergerNode (checked with instanceof)
pub extern "js" fn JsValue::as_channel_merger_node(
  self : JsValue,
) -> ChannelMergerNode? =
  #| (self) => (self instanceof ChannelMergerNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ChannelMergerNode (unchecked)
pub extern "js" fn JsValue::to_channel_merger_node(
  self : JsValue,
) -> ChannelMergerNode =
  #| (self) => self

///|
pub extern "js" fn ChannelMergerNode::to_audio_node(
  self : ChannelMergerNode,
) -> AudioNode =
  #| (self) => self

///|
pub extern "js" fn ChannelMergerNode::to_event_target(
  self : ChannelMergerNode,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn ChannelMergerNode::new(
  context : BaseAudioContext,
  options : ChannelMergerOptions,
) -> ChannelMergerNode =
  #| (context, options) => new ChannelMergerNode(context, options)

///|
/// ChannelSplitterNode interface
pub type ChannelSplitterNode

///|
pub extern "js" fn ChannelSplitterNode::to_js_value(
  self : ChannelSplitterNode,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ChannelSplitterNode (unchecked)
pub extern "js" fn ChannelSplitterNode::from_js_value(
  v : JsValue,
) -> ChannelSplitterNode =
  #| (v) => v

///|
/// Safely cast JsValue to ChannelSplitterNode (checked with instanceof)
pub extern "js" fn ChannelSplitterNode::from_js_value_opt(
  v : JsValue,
) -> ChannelSplitterNode? =
  #| (v) => (v instanceof ChannelSplitterNode) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ChannelSplitterNode (checked with instanceof)
pub extern "js" fn JsValue::as_channel_splitter_node(
  self : JsValue,
) -> ChannelSplitterNode? =
  #| (self) => (self instanceof ChannelSplitterNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ChannelSplitterNode (unchecked)
pub extern "js" fn JsValue::to_channel_splitter_node(
  self : JsValue,
) -> ChannelSplitterNode =
  #| (self) => self

///|
pub extern "js" fn ChannelSplitterNode::to_audio_node(
  self : ChannelSplitterNode,
) -> AudioNode =
  #| (self) => self

///|
pub extern "js" fn ChannelSplitterNode::to_event_target(
  self : ChannelSplitterNode,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn ChannelSplitterNode::new(
  context : BaseAudioContext,
  options : ChannelSplitterOptions,
) -> ChannelSplitterNode =
  #| (context, options) => new ChannelSplitterNode(context, options)

///|
/// ConstantSourceNode interface
pub type ConstantSourceNode

///|
pub extern "js" fn ConstantSourceNode::to_js_value(
  self : ConstantSourceNode,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ConstantSourceNode (unchecked)
pub extern "js" fn ConstantSourceNode::from_js_value(
  v : JsValue,
) -> ConstantSourceNode =
  #| (v) => v

///|
/// Safely cast JsValue to ConstantSourceNode (checked with instanceof)
pub extern "js" fn ConstantSourceNode::from_js_value_opt(
  v : JsValue,
) -> ConstantSourceNode? =
  #| (v) => (v instanceof ConstantSourceNode) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ConstantSourceNode (checked with instanceof)
pub extern "js" fn JsValue::as_constant_source_node(
  self : JsValue,
) -> ConstantSourceNode? =
  #| (self) => (self instanceof ConstantSourceNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ConstantSourceNode (unchecked)
pub extern "js" fn JsValue::to_constant_source_node(
  self : JsValue,
) -> ConstantSourceNode =
  #| (self) => self

///|
pub extern "js" fn ConstantSourceNode::to_audio_scheduled_source_node(
  self : ConstantSourceNode,
) -> AudioScheduledSourceNode =
  #| (self) => self

///|
pub extern "js" fn ConstantSourceNode::to_audio_node(
  self : ConstantSourceNode,
) -> AudioNode =
  #| (self) => self

///|
pub extern "js" fn ConstantSourceNode::to_event_target(
  self : ConstantSourceNode,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn ConstantSourceNode::new(
  context : BaseAudioContext,
  options : ConstantSourceOptions,
) -> ConstantSourceNode =
  #| (context, options) => new ConstantSourceNode(context, options)

///|
pub extern "js" fn ConstantSourceNode::get_offset(
  self : ConstantSourceNode,
) -> AudioParam =
  #| (self) => self.offset

///|
/// ConvolverNode interface
pub type ConvolverNode

///|
pub extern "js" fn ConvolverNode::to_js_value(self : ConvolverNode) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ConvolverNode (unchecked)
pub extern "js" fn ConvolverNode::from_js_value(v : JsValue) -> ConvolverNode =
  #| (v) => v

///|
/// Safely cast JsValue to ConvolverNode (checked with instanceof)
pub extern "js" fn ConvolverNode::from_js_value_opt(
  v : JsValue,
) -> ConvolverNode? =
  #| (v) => (v instanceof ConvolverNode) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ConvolverNode (checked with instanceof)
pub extern "js" fn JsValue::as_convolver_node(self : JsValue) -> ConvolverNode? =
  #| (self) => (self instanceof ConvolverNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ConvolverNode (unchecked)
pub extern "js" fn JsValue::to_convolver_node(self : JsValue) -> ConvolverNode =
  #| (self) => self

///|
pub extern "js" fn ConvolverNode::to_audio_node(
  self : ConvolverNode,
) -> AudioNode =
  #| (self) => self

///|
pub extern "js" fn ConvolverNode::to_event_target(
  self : ConvolverNode,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn ConvolverNode::new(
  context : BaseAudioContext,
  options : ConvolverOptions,
) -> ConvolverNode =
  #| (context, options) => new ConvolverNode(context, options)

///|
pub extern "js" fn ConvolverNode::get_buffer(
  self : ConvolverNode,
) -> AudioBuffer? =
  #| (self) => { const v = self.buffer; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn ConvolverNode::set_buffer(
  self : ConvolverNode,
  value : AudioBuffer?,
) -> Unit =
  #| (self, value) => { self.buffer = value }

///|
pub extern "js" fn ConvolverNode::get_normalize(self : ConvolverNode) -> Bool =
  #| (self) => self.normalize

///|
pub extern "js" fn ConvolverNode::set_normalize(
  self : ConvolverNode,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.normalize = value }

///|
/// DelayNode interface
pub type DelayNode

///|
pub extern "js" fn DelayNode::to_js_value(self : DelayNode) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to DelayNode (unchecked)
pub extern "js" fn DelayNode::from_js_value(v : JsValue) -> DelayNode =
  #| (v) => v

///|
/// Safely cast JsValue to DelayNode (checked with instanceof)
pub extern "js" fn DelayNode::from_js_value_opt(v : JsValue) -> DelayNode? =
  #| (v) => (v instanceof DelayNode) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to DelayNode (checked with instanceof)
pub extern "js" fn JsValue::as_delay_node(self : JsValue) -> DelayNode? =
  #| (self) => (self instanceof DelayNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to DelayNode (unchecked)
pub extern "js" fn JsValue::to_delay_node(self : JsValue) -> DelayNode =
  #| (self) => self

///|
pub extern "js" fn DelayNode::to_audio_node(self : DelayNode) -> AudioNode =
  #| (self) => self

///|
pub extern "js" fn DelayNode::to_event_target(self : DelayNode) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn DelayNode::new(
  context : BaseAudioContext,
  options : DelayOptions,
) -> DelayNode =
  #| (context, options) => new DelayNode(context, options)

///|
pub extern "js" fn DelayNode::get_delay_time(self : DelayNode) -> AudioParam =
  #| (self) => self.delayTime

///|
/// DynamicsCompressorNode interface
pub type DynamicsCompressorNode

///|
pub extern "js" fn DynamicsCompressorNode::to_js_value(
  self : DynamicsCompressorNode,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to DynamicsCompressorNode (unchecked)
pub extern "js" fn DynamicsCompressorNode::from_js_value(
  v : JsValue,
) -> DynamicsCompressorNode =
  #| (v) => v

///|
/// Safely cast JsValue to DynamicsCompressorNode (checked with instanceof)
pub extern "js" fn DynamicsCompressorNode::from_js_value_opt(
  v : JsValue,
) -> DynamicsCompressorNode? =
  #| (v) => (v instanceof DynamicsCompressorNode) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to DynamicsCompressorNode (checked with instanceof)
pub extern "js" fn JsValue::as_dynamics_compressor_node(
  self : JsValue,
) -> DynamicsCompressorNode? =
  #| (self) => (self instanceof DynamicsCompressorNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to DynamicsCompressorNode (unchecked)
pub extern "js" fn JsValue::to_dynamics_compressor_node(
  self : JsValue,
) -> DynamicsCompressorNode =
  #| (self) => self

///|
pub extern "js" fn DynamicsCompressorNode::to_audio_node(
  self : DynamicsCompressorNode,
) -> AudioNode =
  #| (self) => self

///|
pub extern "js" fn DynamicsCompressorNode::to_event_target(
  self : DynamicsCompressorNode,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn DynamicsCompressorNode::new(
  context : BaseAudioContext,
  options : DynamicsCompressorOptions,
) -> DynamicsCompressorNode =
  #| (context, options) => new DynamicsCompressorNode(context, options)

///|
pub extern "js" fn DynamicsCompressorNode::get_threshold(
  self : DynamicsCompressorNode,
) -> AudioParam =
  #| (self) => self.threshold

///|
pub extern "js" fn DynamicsCompressorNode::get_knee(
  self : DynamicsCompressorNode,
) -> AudioParam =
  #| (self) => self.knee

///|
pub extern "js" fn DynamicsCompressorNode::get_ratio(
  self : DynamicsCompressorNode,
) -> AudioParam =
  #| (self) => self.ratio

///|
pub extern "js" fn DynamicsCompressorNode::get_reduction(
  self : DynamicsCompressorNode,
) -> Double =
  #| (self) => self.reduction

///|
pub extern "js" fn DynamicsCompressorNode::get_attack(
  self : DynamicsCompressorNode,
) -> AudioParam =
  #| (self) => self.attack

///|
pub extern "js" fn DynamicsCompressorNode::get_release(
  self : DynamicsCompressorNode,
) -> AudioParam =
  #| (self) => self.release

///|
/// GainNode interface
pub type GainNode

///|
pub extern "js" fn GainNode::to_js_value(self : GainNode) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to GainNode (unchecked)
pub extern "js" fn GainNode::from_js_value(v : JsValue) -> GainNode =
  #| (v) => v

///|
/// Safely cast JsValue to GainNode (checked with instanceof)
pub extern "js" fn GainNode::from_js_value_opt(v : JsValue) -> GainNode? =
  #| (v) => (v instanceof GainNode) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GainNode (checked with instanceof)
pub extern "js" fn JsValue::as_gain_node(self : JsValue) -> GainNode? =
  #| (self) => (self instanceof GainNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GainNode (unchecked)
pub extern "js" fn JsValue::to_gain_node(self : JsValue) -> GainNode =
  #| (self) => self

///|
pub extern "js" fn GainNode::to_audio_node(self : GainNode) -> AudioNode =
  #| (self) => self

///|
pub extern "js" fn GainNode::to_event_target(self : GainNode) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn GainNode::new(
  context : BaseAudioContext,
  options : GainOptions,
) -> GainNode =
  #| (context, options) => new GainNode(context, options)

///|
pub extern "js" fn GainNode::get_gain(self : GainNode) -> AudioParam =
  #| (self) => self.gain

///|
/// IIRFilterNode interface
pub type IIRFilterNode

///|
pub extern "js" fn IIRFilterNode::to_js_value(self : IIRFilterNode) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to IIRFilterNode (unchecked)
pub extern "js" fn IIRFilterNode::from_js_value(v : JsValue) -> IIRFilterNode =
  #| (v) => v

///|
/// Safely cast JsValue to IIRFilterNode (checked with instanceof)
pub extern "js" fn IIRFilterNode::from_js_value_opt(
  v : JsValue,
) -> IIRFilterNode? =
  #| (v) => (v instanceof IIRFilterNode) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to IIRFilterNode (checked with instanceof)
pub extern "js" fn JsValue::as_iir_filter_node(
  self : JsValue,
) -> IIRFilterNode? =
  #| (self) => (self instanceof IIRFilterNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to IIRFilterNode (unchecked)
pub extern "js" fn JsValue::to_iir_filter_node(self : JsValue) -> IIRFilterNode =
  #| (self) => self

///|
pub extern "js" fn IIRFilterNode::to_audio_node(
  self : IIRFilterNode,
) -> AudioNode =
  #| (self) => self

///|
pub extern "js" fn IIRFilterNode::to_event_target(
  self : IIRFilterNode,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn IIRFilterNode::new(
  context : BaseAudioContext,
  options : IIRFilterOptions,
) -> IIRFilterNode =
  #| (context, options) => new IIRFilterNode(context, options)

///|
pub extern "js" fn IIRFilterNode::get_frequency_response(
  self : IIRFilterNode,
  frequency_hz : Float32Array,
  mag_response : Float32Array,
  phase_response : Float32Array,
) -> Unit =
  #| (self, frequency_hz, mag_response, phase_response) => self.getFrequencyResponse(frequency_hz, mag_response, phase_response)

///|
/// MediaElementAudioSourceNode interface
pub type MediaElementAudioSourceNode

///|
pub extern "js" fn MediaElementAudioSourceNode::to_js_value(
  self : MediaElementAudioSourceNode,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to MediaElementAudioSourceNode (unchecked)
pub extern "js" fn MediaElementAudioSourceNode::from_js_value(
  v : JsValue,
) -> MediaElementAudioSourceNode =
  #| (v) => v

///|
/// Safely cast JsValue to MediaElementAudioSourceNode (checked with instanceof)
pub extern "js" fn MediaElementAudioSourceNode::from_js_value_opt(
  v : JsValue,
) -> MediaElementAudioSourceNode? =
  #| (v) => (v instanceof MediaElementAudioSourceNode) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MediaElementAudioSourceNode (checked with instanceof)
pub extern "js" fn JsValue::as_media_element_audio_source_node(
  self : JsValue,
) -> MediaElementAudioSourceNode? =
  #| (self) => (self instanceof MediaElementAudioSourceNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MediaElementAudioSourceNode (unchecked)
pub extern "js" fn JsValue::to_media_element_audio_source_node(
  self : JsValue,
) -> MediaElementAudioSourceNode =
  #| (self) => self

///|
pub extern "js" fn MediaElementAudioSourceNode::to_audio_node(
  self : MediaElementAudioSourceNode,
) -> AudioNode =
  #| (self) => self

///|
pub extern "js" fn MediaElementAudioSourceNode::to_event_target(
  self : MediaElementAudioSourceNode,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn MediaElementAudioSourceNode::new(
  context : AudioContext,
  options : MediaElementAudioSourceOptions,
) -> MediaElementAudioSourceNode =
  #| (context, options) => new MediaElementAudioSourceNode(context, options)

///|
pub extern "js" fn MediaElementAudioSourceNode::get_media_element(
  self : MediaElementAudioSourceNode,
) -> HTMLMediaElement =
  #| (self) => self.mediaElement

///|
/// MediaStreamAudioDestinationNode interface
pub type MediaStreamAudioDestinationNode

///|
pub extern "js" fn MediaStreamAudioDestinationNode::to_js_value(
  self : MediaStreamAudioDestinationNode,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to MediaStreamAudioDestinationNode (unchecked)
pub extern "js" fn MediaStreamAudioDestinationNode::from_js_value(
  v : JsValue,
) -> MediaStreamAudioDestinationNode =
  #| (v) => v

///|
/// Safely cast JsValue to MediaStreamAudioDestinationNode (checked with instanceof)
pub extern "js" fn MediaStreamAudioDestinationNode::from_js_value_opt(
  v : JsValue,
) -> MediaStreamAudioDestinationNode? =
  #| (v) => (v instanceof MediaStreamAudioDestinationNode) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MediaStreamAudioDestinationNode (checked with instanceof)
pub extern "js" fn JsValue::as_media_stream_audio_destination_node(
  self : JsValue,
) -> MediaStreamAudioDestinationNode? =
  #| (self) => (self instanceof MediaStreamAudioDestinationNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MediaStreamAudioDestinationNode (unchecked)
pub extern "js" fn JsValue::to_media_stream_audio_destination_node(
  self : JsValue,
) -> MediaStreamAudioDestinationNode =
  #| (self) => self

///|
pub extern "js" fn MediaStreamAudioDestinationNode::to_audio_node(
  self : MediaStreamAudioDestinationNode,
) -> AudioNode =
  #| (self) => self

///|
pub extern "js" fn MediaStreamAudioDestinationNode::to_event_target(
  self : MediaStreamAudioDestinationNode,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn MediaStreamAudioDestinationNode::new(
  context : AudioContext,
  options : AudioNodeOptions,
) -> MediaStreamAudioDestinationNode =
  #| (context, options) => new MediaStreamAudioDestinationNode(context, options)

///|
pub extern "js" fn MediaStreamAudioDestinationNode::get_stream(
  self : MediaStreamAudioDestinationNode,
) -> MediaStream =
  #| (self) => self.stream

///|
/// MediaStreamAudioSourceNode interface
pub type MediaStreamAudioSourceNode

///|
pub extern "js" fn MediaStreamAudioSourceNode::to_js_value(
  self : MediaStreamAudioSourceNode,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to MediaStreamAudioSourceNode (unchecked)
pub extern "js" fn MediaStreamAudioSourceNode::from_js_value(
  v : JsValue,
) -> MediaStreamAudioSourceNode =
  #| (v) => v

///|
/// Safely cast JsValue to MediaStreamAudioSourceNode (checked with instanceof)
pub extern "js" fn MediaStreamAudioSourceNode::from_js_value_opt(
  v : JsValue,
) -> MediaStreamAudioSourceNode? =
  #| (v) => (v instanceof MediaStreamAudioSourceNode) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MediaStreamAudioSourceNode (checked with instanceof)
pub extern "js" fn JsValue::as_media_stream_audio_source_node(
  self : JsValue,
) -> MediaStreamAudioSourceNode? =
  #| (self) => (self instanceof MediaStreamAudioSourceNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MediaStreamAudioSourceNode (unchecked)
pub extern "js" fn JsValue::to_media_stream_audio_source_node(
  self : JsValue,
) -> MediaStreamAudioSourceNode =
  #| (self) => self

///|
pub extern "js" fn MediaStreamAudioSourceNode::to_audio_node(
  self : MediaStreamAudioSourceNode,
) -> AudioNode =
  #| (self) => self

///|
pub extern "js" fn MediaStreamAudioSourceNode::to_event_target(
  self : MediaStreamAudioSourceNode,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn MediaStreamAudioSourceNode::new(
  context : AudioContext,
  options : MediaStreamAudioSourceOptions,
) -> MediaStreamAudioSourceNode =
  #| (context, options) => new MediaStreamAudioSourceNode(context, options)

///|
pub extern "js" fn MediaStreamAudioSourceNode::get_media_stream(
  self : MediaStreamAudioSourceNode,
) -> MediaStream =
  #| (self) => self.mediaStream

///|
/// MediaStreamTrackAudioSourceNode interface
pub type MediaStreamTrackAudioSourceNode

///|
pub extern "js" fn MediaStreamTrackAudioSourceNode::to_js_value(
  self : MediaStreamTrackAudioSourceNode,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to MediaStreamTrackAudioSourceNode (unchecked)
pub extern "js" fn MediaStreamTrackAudioSourceNode::from_js_value(
  v : JsValue,
) -> MediaStreamTrackAudioSourceNode =
  #| (v) => v

///|
/// Safely cast JsValue to MediaStreamTrackAudioSourceNode (checked with instanceof)
pub extern "js" fn MediaStreamTrackAudioSourceNode::from_js_value_opt(
  v : JsValue,
) -> MediaStreamTrackAudioSourceNode? =
  #| (v) => (v instanceof MediaStreamTrackAudioSourceNode) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MediaStreamTrackAudioSourceNode (checked with instanceof)
pub extern "js" fn JsValue::as_media_stream_track_audio_source_node(
  self : JsValue,
) -> MediaStreamTrackAudioSourceNode? =
  #| (self) => (self instanceof MediaStreamTrackAudioSourceNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MediaStreamTrackAudioSourceNode (unchecked)
pub extern "js" fn JsValue::to_media_stream_track_audio_source_node(
  self : JsValue,
) -> MediaStreamTrackAudioSourceNode =
  #| (self) => self

///|
pub extern "js" fn MediaStreamTrackAudioSourceNode::to_audio_node(
  self : MediaStreamTrackAudioSourceNode,
) -> AudioNode =
  #| (self) => self

///|
pub extern "js" fn MediaStreamTrackAudioSourceNode::to_event_target(
  self : MediaStreamTrackAudioSourceNode,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn MediaStreamTrackAudioSourceNode::new(
  context : AudioContext,
  options : MediaStreamTrackAudioSourceOptions,
) -> MediaStreamTrackAudioSourceNode =
  #| (context, options) => new MediaStreamTrackAudioSourceNode(context, options)

///|
/// OscillatorNode interface
pub type OscillatorNode

///|
pub extern "js" fn OscillatorNode::to_js_value(
  self : OscillatorNode,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to OscillatorNode (unchecked)
pub extern "js" fn OscillatorNode::from_js_value(v : JsValue) -> OscillatorNode =
  #| (v) => v

///|
/// Safely cast JsValue to OscillatorNode (checked with instanceof)
pub extern "js" fn OscillatorNode::from_js_value_opt(
  v : JsValue,
) -> OscillatorNode? =
  #| (v) => (v instanceof OscillatorNode) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to OscillatorNode (checked with instanceof)
pub extern "js" fn JsValue::as_oscillator_node(
  self : JsValue,
) -> OscillatorNode? =
  #| (self) => (self instanceof OscillatorNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to OscillatorNode (unchecked)
pub extern "js" fn JsValue::to_oscillator_node(
  self : JsValue,
) -> OscillatorNode =
  #| (self) => self

///|
pub extern "js" fn OscillatorNode::to_audio_scheduled_source_node(
  self : OscillatorNode,
) -> AudioScheduledSourceNode =
  #| (self) => self

///|
pub extern "js" fn OscillatorNode::to_audio_node(
  self : OscillatorNode,
) -> AudioNode =
  #| (self) => self

///|
pub extern "js" fn OscillatorNode::to_event_target(
  self : OscillatorNode,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn OscillatorNode::new(
  context : BaseAudioContext,
  options : OscillatorOptions,
) -> OscillatorNode =
  #| (context, options) => new OscillatorNode(context, options)

///|
pub extern "js" fn OscillatorNode::get_type(
  self : OscillatorNode,
) -> OscillatorType =
  #| (self) => self.type

///|
pub extern "js" fn OscillatorNode::set_type(
  self : OscillatorNode,
  value : OscillatorType,
) -> Unit =
  #| (self, value) => { self.type = value }

///|
pub extern "js" fn OscillatorNode::get_frequency(
  self : OscillatorNode,
) -> AudioParam =
  #| (self) => self.frequency

///|
pub extern "js" fn OscillatorNode::get_detune(
  self : OscillatorNode,
) -> AudioParam =
  #| (self) => self.detune

///|
pub extern "js" fn OscillatorNode::set_periodic_wave(
  self : OscillatorNode,
  periodic_wave : PeriodicWave,
) -> Unit =
  #| (self, periodic_wave) => self.setPeriodicWave(periodic_wave)

///|
/// PannerNode interface
pub type PannerNode

///|
pub extern "js" fn PannerNode::to_js_value(self : PannerNode) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PannerNode (unchecked)
pub extern "js" fn PannerNode::from_js_value(v : JsValue) -> PannerNode =
  #| (v) => v

///|
/// Safely cast JsValue to PannerNode (checked with instanceof)
pub extern "js" fn PannerNode::from_js_value_opt(v : JsValue) -> PannerNode? =
  #| (v) => (v instanceof PannerNode) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PannerNode (checked with instanceof)
pub extern "js" fn JsValue::as_panner_node(self : JsValue) -> PannerNode? =
  #| (self) => (self instanceof PannerNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PannerNode (unchecked)
pub extern "js" fn JsValue::to_panner_node(self : JsValue) -> PannerNode =
  #| (self) => self

///|
pub extern "js" fn PannerNode::to_audio_node(self : PannerNode) -> AudioNode =
  #| (self) => self

///|
pub extern "js" fn PannerNode::to_event_target(
  self : PannerNode,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn PannerNode::new(
  context : BaseAudioContext,
  options : PannerOptions,
) -> PannerNode =
  #| (context, options) => new PannerNode(context, options)

///|
pub extern "js" fn PannerNode::get_panning_model(
  self : PannerNode,
) -> PanningModelType =
  #| (self) => self.panningModel

///|
pub extern "js" fn PannerNode::set_panning_model(
  self : PannerNode,
  value : PanningModelType,
) -> Unit =
  #| (self, value) => { self.panningModel = value }

///|
pub extern "js" fn PannerNode::get_position_x(self : PannerNode) -> AudioParam =
  #| (self) => self.positionX

///|
pub extern "js" fn PannerNode::get_position_y(self : PannerNode) -> AudioParam =
  #| (self) => self.positionY

///|
pub extern "js" fn PannerNode::get_position_z(self : PannerNode) -> AudioParam =
  #| (self) => self.positionZ

///|
pub extern "js" fn PannerNode::get_orientation_x(
  self : PannerNode,
) -> AudioParam =
  #| (self) => self.orientationX

///|
pub extern "js" fn PannerNode::get_orientation_y(
  self : PannerNode,
) -> AudioParam =
  #| (self) => self.orientationY

///|
pub extern "js" fn PannerNode::get_orientation_z(
  self : PannerNode,
) -> AudioParam =
  #| (self) => self.orientationZ

///|
pub extern "js" fn PannerNode::get_distance_model(
  self : PannerNode,
) -> DistanceModelType =
  #| (self) => self.distanceModel

///|
pub extern "js" fn PannerNode::set_distance_model(
  self : PannerNode,
  value : DistanceModelType,
) -> Unit =
  #| (self, value) => { self.distanceModel = value }

///|
pub extern "js" fn PannerNode::get_ref_distance(self : PannerNode) -> Double =
  #| (self) => self.refDistance

///|
pub extern "js" fn PannerNode::set_ref_distance(
  self : PannerNode,
  value : Double,
) -> Unit =
  #| (self, value) => { self.refDistance = value }

///|
pub extern "js" fn PannerNode::get_max_distance(self : PannerNode) -> Double =
  #| (self) => self.maxDistance

///|
pub extern "js" fn PannerNode::set_max_distance(
  self : PannerNode,
  value : Double,
) -> Unit =
  #| (self, value) => { self.maxDistance = value }

///|
pub extern "js" fn PannerNode::get_rolloff_factor(self : PannerNode) -> Double =
  #| (self) => self.rolloffFactor

///|
pub extern "js" fn PannerNode::set_rolloff_factor(
  self : PannerNode,
  value : Double,
) -> Unit =
  #| (self, value) => { self.rolloffFactor = value }

///|
pub extern "js" fn PannerNode::get_cone_inner_angle(
  self : PannerNode,
) -> Double =
  #| (self) => self.coneInnerAngle

///|
pub extern "js" fn PannerNode::set_cone_inner_angle(
  self : PannerNode,
  value : Double,
) -> Unit =
  #| (self, value) => { self.coneInnerAngle = value }

///|
pub extern "js" fn PannerNode::get_cone_outer_angle(
  self : PannerNode,
) -> Double =
  #| (self) => self.coneOuterAngle

///|
pub extern "js" fn PannerNode::set_cone_outer_angle(
  self : PannerNode,
  value : Double,
) -> Unit =
  #| (self, value) => { self.coneOuterAngle = value }

///|
pub extern "js" fn PannerNode::get_cone_outer_gain(self : PannerNode) -> Double =
  #| (self) => self.coneOuterGain

///|
pub extern "js" fn PannerNode::set_cone_outer_gain(
  self : PannerNode,
  value : Double,
) -> Unit =
  #| (self, value) => { self.coneOuterGain = value }

///|
pub extern "js" fn PannerNode::set_position(
  self : PannerNode,
  x : Double,
  y : Double,
  z : Double,
) -> Unit =
  #| (self, x, y, z) => self.setPosition(x, y, z)

///|
pub extern "js" fn PannerNode::set_orientation(
  self : PannerNode,
  x : Double,
  y : Double,
  z : Double,
) -> Unit =
  #| (self, x, y, z) => self.setOrientation(x, y, z)

///|
/// PeriodicWave interface
pub type PeriodicWave

///|
pub extern "js" fn PeriodicWave::to_js_value(self : PeriodicWave) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PeriodicWave (unchecked)
pub extern "js" fn PeriodicWave::from_js_value(v : JsValue) -> PeriodicWave =
  #| (v) => v

///|
/// Safely cast JsValue to PeriodicWave (checked with instanceof)
pub extern "js" fn PeriodicWave::from_js_value_opt(
  v : JsValue,
) -> PeriodicWave? =
  #| (v) => (v instanceof PeriodicWave) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PeriodicWave (checked with instanceof)
pub extern "js" fn JsValue::as_periodic_wave(self : JsValue) -> PeriodicWave? =
  #| (self) => (self instanceof PeriodicWave) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PeriodicWave (unchecked)
pub extern "js" fn JsValue::to_periodic_wave(self : JsValue) -> PeriodicWave =
  #| (self) => self

///|
pub extern "js" fn PeriodicWave::new(
  context : BaseAudioContext,
  options : PeriodicWaveOptions,
) -> PeriodicWave =
  #| (context, options) => new PeriodicWave(context, options)

///|
/// ScriptProcessorNode interface
pub type ScriptProcessorNode

///|
pub extern "js" fn ScriptProcessorNode::to_js_value(
  self : ScriptProcessorNode,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ScriptProcessorNode (unchecked)
pub extern "js" fn ScriptProcessorNode::from_js_value(
  v : JsValue,
) -> ScriptProcessorNode =
  #| (v) => v

///|
/// Safely cast JsValue to ScriptProcessorNode (checked with instanceof)
pub extern "js" fn ScriptProcessorNode::from_js_value_opt(
  v : JsValue,
) -> ScriptProcessorNode? =
  #| (v) => (v instanceof ScriptProcessorNode) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ScriptProcessorNode (checked with instanceof)
pub extern "js" fn JsValue::as_script_processor_node(
  self : JsValue,
) -> ScriptProcessorNode? =
  #| (self) => (self instanceof ScriptProcessorNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ScriptProcessorNode (unchecked)
pub extern "js" fn JsValue::to_script_processor_node(
  self : JsValue,
) -> ScriptProcessorNode =
  #| (self) => self

///|
pub extern "js" fn ScriptProcessorNode::to_audio_node(
  self : ScriptProcessorNode,
) -> AudioNode =
  #| (self) => self

///|
pub extern "js" fn ScriptProcessorNode::to_event_target(
  self : ScriptProcessorNode,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn ScriptProcessorNode::get_onaudioprocess(
  self : ScriptProcessorNode,
) -> EventHandler =
  #| (self) => self.onaudioprocess

///|
pub extern "js" fn ScriptProcessorNode::set_onaudioprocess(
  self : ScriptProcessorNode,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onaudioprocess = value }

///|
pub extern "js" fn ScriptProcessorNode::get_buffer_size(
  self : ScriptProcessorNode,
) -> Int =
  #| (self) => self.bufferSize

///|
/// StereoPannerNode interface
pub type StereoPannerNode

///|
pub extern "js" fn StereoPannerNode::to_js_value(
  self : StereoPannerNode,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to StereoPannerNode (unchecked)
pub extern "js" fn StereoPannerNode::from_js_value(
  v : JsValue,
) -> StereoPannerNode =
  #| (v) => v

///|
/// Safely cast JsValue to StereoPannerNode (checked with instanceof)
pub extern "js" fn StereoPannerNode::from_js_value_opt(
  v : JsValue,
) -> StereoPannerNode? =
  #| (v) => (v instanceof StereoPannerNode) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to StereoPannerNode (checked with instanceof)
pub extern "js" fn JsValue::as_stereo_panner_node(
  self : JsValue,
) -> StereoPannerNode? =
  #| (self) => (self instanceof StereoPannerNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to StereoPannerNode (unchecked)
pub extern "js" fn JsValue::to_stereo_panner_node(
  self : JsValue,
) -> StereoPannerNode =
  #| (self) => self

///|
pub extern "js" fn StereoPannerNode::to_audio_node(
  self : StereoPannerNode,
) -> AudioNode =
  #| (self) => self

///|
pub extern "js" fn StereoPannerNode::to_event_target(
  self : StereoPannerNode,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn StereoPannerNode::new(
  context : BaseAudioContext,
  options : StereoPannerOptions,
) -> StereoPannerNode =
  #| (context, options) => new StereoPannerNode(context, options)

///|
pub extern "js" fn StereoPannerNode::get_pan(
  self : StereoPannerNode,
) -> AudioParam =
  #| (self) => self.pan

///|
/// WaveShaperNode interface
pub type WaveShaperNode

///|
pub extern "js" fn WaveShaperNode::to_js_value(
  self : WaveShaperNode,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WaveShaperNode (unchecked)
pub extern "js" fn WaveShaperNode::from_js_value(v : JsValue) -> WaveShaperNode =
  #| (v) => v

///|
/// Safely cast JsValue to WaveShaperNode (checked with instanceof)
pub extern "js" fn WaveShaperNode::from_js_value_opt(
  v : JsValue,
) -> WaveShaperNode? =
  #| (v) => (v instanceof WaveShaperNode) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WaveShaperNode (checked with instanceof)
pub extern "js" fn JsValue::as_wave_shaper_node(
  self : JsValue,
) -> WaveShaperNode? =
  #| (self) => (self instanceof WaveShaperNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WaveShaperNode (unchecked)
pub extern "js" fn JsValue::to_wave_shaper_node(
  self : JsValue,
) -> WaveShaperNode =
  #| (self) => self

///|
pub extern "js" fn WaveShaperNode::to_audio_node(
  self : WaveShaperNode,
) -> AudioNode =
  #| (self) => self

///|
pub extern "js" fn WaveShaperNode::to_event_target(
  self : WaveShaperNode,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn WaveShaperNode::new(
  context : BaseAudioContext,
  options : WaveShaperOptions,
) -> WaveShaperNode =
  #| (context, options) => new WaveShaperNode(context, options)

///|
pub extern "js" fn WaveShaperNode::get_curve(
  self : WaveShaperNode,
) -> Float32Array? =
  #| (self) => { const v = self.curve; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn WaveShaperNode::set_curve(
  self : WaveShaperNode,
  value : Float32Array?,
) -> Unit =
  #| (self, value) => { self.curve = value }

///|
pub extern "js" fn WaveShaperNode::get_oversample(
  self : WaveShaperNode,
) -> OverSampleType =
  #| (self) => self.oversample

///|
pub extern "js" fn WaveShaperNode::set_oversample(
  self : WaveShaperNode,
  value : OverSampleType,
) -> Unit =
  #| (self, value) => { self.oversample = value }

///|
/// AudioWorklet interface
pub type AudioWorklet

///|
pub extern "js" fn AudioWorklet::to_js_value(self : AudioWorklet) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AudioWorklet (unchecked)
pub extern "js" fn AudioWorklet::from_js_value(v : JsValue) -> AudioWorklet =
  #| (v) => v

///|
/// Safely cast JsValue to AudioWorklet (checked with instanceof)
pub extern "js" fn AudioWorklet::from_js_value_opt(
  v : JsValue,
) -> AudioWorklet? =
  #| (v) => (v instanceof AudioWorklet) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AudioWorklet (checked with instanceof)
pub extern "js" fn JsValue::as_audio_worklet(self : JsValue) -> AudioWorklet? =
  #| (self) => (self instanceof AudioWorklet) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AudioWorklet (unchecked)
pub extern "js" fn JsValue::to_audio_worklet(self : JsValue) -> AudioWorklet =
  #| (self) => self

///|
pub extern "js" fn AudioWorklet::to_worklet(self : AudioWorklet) -> Worklet =
  #| (self) => self

///|
pub extern "js" fn AudioWorklet::get_port(self : AudioWorklet) -> MessagePort =
  #| (self) => self.port

///|
/// AudioWorkletGlobalScope interface
pub type AudioWorkletGlobalScope

///|
pub extern "js" fn AudioWorkletGlobalScope::to_js_value(
  self : AudioWorkletGlobalScope,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AudioWorkletGlobalScope (unchecked)
pub extern "js" fn AudioWorkletGlobalScope::from_js_value(
  v : JsValue,
) -> AudioWorkletGlobalScope =
  #| (v) => v

///|
/// Safely cast JsValue to AudioWorkletGlobalScope (checked with instanceof)
pub extern "js" fn AudioWorkletGlobalScope::from_js_value_opt(
  v : JsValue,
) -> AudioWorkletGlobalScope? =
  #| (v) => (v instanceof AudioWorkletGlobalScope) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AudioWorkletGlobalScope (checked with instanceof)
pub extern "js" fn JsValue::as_audio_worklet_global_scope(
  self : JsValue,
) -> AudioWorkletGlobalScope? =
  #| (self) => (self instanceof AudioWorkletGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AudioWorkletGlobalScope (unchecked)
pub extern "js" fn JsValue::to_audio_worklet_global_scope(
  self : JsValue,
) -> AudioWorkletGlobalScope =
  #| (self) => self

///|
pub extern "js" fn AudioWorkletGlobalScope::to_worklet_global_scope(
  self : AudioWorkletGlobalScope,
) -> WorkletGlobalScope =
  #| (self) => self

///|
pub extern "js" fn AudioWorkletGlobalScope::register_processor(
  self : AudioWorkletGlobalScope,
  name : String,
  processor_ctor : AudioWorkletProcessorConstructor,
) -> Unit =
  #| (self, name, processor_ctor) => self.registerProcessor(name, processor_ctor)

///|
pub extern "js" fn AudioWorkletGlobalScope::get_current_frame(
  self : AudioWorkletGlobalScope,
) -> Int64 =
  #| (self) => self.currentFrame

///|
pub extern "js" fn AudioWorkletGlobalScope::get_current_time(
  self : AudioWorkletGlobalScope,
) -> Double =
  #| (self) => self.currentTime

///|
pub extern "js" fn AudioWorkletGlobalScope::get_sample_rate(
  self : AudioWorkletGlobalScope,
) -> Double =
  #| (self) => self.sampleRate

///|
pub extern "js" fn AudioWorkletGlobalScope::get_render_quantum_size(
  self : AudioWorkletGlobalScope,
) -> Int =
  #| (self) => self.renderQuantumSize

///|
pub extern "js" fn AudioWorkletGlobalScope::get_port(
  self : AudioWorkletGlobalScope,
) -> MessagePort =
  #| (self) => self.port

///|
/// AudioParamMap interface
pub type AudioParamMap

///|
pub extern "js" fn AudioParamMap::to_js_value(self : AudioParamMap) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AudioParamMap (unchecked)
pub extern "js" fn AudioParamMap::from_js_value(v : JsValue) -> AudioParamMap =
  #| (v) => v

///|
/// Safely cast JsValue to AudioParamMap (checked with instanceof)
pub extern "js" fn AudioParamMap::from_js_value_opt(
  v : JsValue,
) -> AudioParamMap? =
  #| (v) => (v instanceof AudioParamMap) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AudioParamMap (checked with instanceof)
pub extern "js" fn JsValue::as_audio_param_map(
  self : JsValue,
) -> AudioParamMap? =
  #| (self) => (self instanceof AudioParamMap) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AudioParamMap (unchecked)
pub extern "js" fn JsValue::to_audio_param_map(self : JsValue) -> AudioParamMap =
  #| (self) => self

///|
pub extern "js" fn AudioParamMap::get(
  self : AudioParamMap,
  key : String,
) -> AudioParam? =
  #| (self, key) => { const v = self.get(key); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn AudioParamMap::has(
  self : AudioParamMap,
  key : String,
) -> Bool =
  #| (self, key) => self.has(key)

///|
/// AudioWorkletNode interface
pub type AudioWorkletNode

///|
pub extern "js" fn AudioWorkletNode::to_js_value(
  self : AudioWorkletNode,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AudioWorkletNode (unchecked)
pub extern "js" fn AudioWorkletNode::from_js_value(
  v : JsValue,
) -> AudioWorkletNode =
  #| (v) => v

///|
/// Safely cast JsValue to AudioWorkletNode (checked with instanceof)
pub extern "js" fn AudioWorkletNode::from_js_value_opt(
  v : JsValue,
) -> AudioWorkletNode? =
  #| (v) => (v instanceof AudioWorkletNode) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AudioWorkletNode (checked with instanceof)
pub extern "js" fn JsValue::as_audio_worklet_node(
  self : JsValue,
) -> AudioWorkletNode? =
  #| (self) => (self instanceof AudioWorkletNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AudioWorkletNode (unchecked)
pub extern "js" fn JsValue::to_audio_worklet_node(
  self : JsValue,
) -> AudioWorkletNode =
  #| (self) => self

///|
pub extern "js" fn AudioWorkletNode::to_audio_node(
  self : AudioWorkletNode,
) -> AudioNode =
  #| (self) => self

///|
pub extern "js" fn AudioWorkletNode::to_event_target(
  self : AudioWorkletNode,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn AudioWorkletNode::new(
  context : BaseAudioContext,
  name : String,
  options : AudioWorkletNodeOptions,
) -> AudioWorkletNode =
  #| (context, name, options) => new AudioWorkletNode(context, name, options)

///|
pub extern "js" fn AudioWorkletNode::get_parameters(
  self : AudioWorkletNode,
) -> AudioParamMap =
  #| (self) => self.parameters

///|
pub extern "js" fn AudioWorkletNode::get_port(
  self : AudioWorkletNode,
) -> MessagePort =
  #| (self) => self.port

///|
pub extern "js" fn AudioWorkletNode::get_onprocessorerror(
  self : AudioWorkletNode,
) -> EventHandler =
  #| (self) => self.onprocessorerror

///|
pub extern "js" fn AudioWorkletNode::set_onprocessorerror(
  self : AudioWorkletNode,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onprocessorerror = value }

///|
/// AudioWorkletProcessor interface
pub type AudioWorkletProcessor

///|
pub extern "js" fn AudioWorkletProcessor::to_js_value(
  self : AudioWorkletProcessor,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AudioWorkletProcessor (unchecked)
pub extern "js" fn AudioWorkletProcessor::from_js_value(
  v : JsValue,
) -> AudioWorkletProcessor =
  #| (v) => v

///|
/// Safely cast JsValue to AudioWorkletProcessor (checked with instanceof)
pub extern "js" fn AudioWorkletProcessor::from_js_value_opt(
  v : JsValue,
) -> AudioWorkletProcessor? =
  #| (v) => (v instanceof AudioWorkletProcessor) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AudioWorkletProcessor (checked with instanceof)
pub extern "js" fn JsValue::as_audio_worklet_processor(
  self : JsValue,
) -> AudioWorkletProcessor? =
  #| (self) => (self instanceof AudioWorkletProcessor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AudioWorkletProcessor (unchecked)
pub extern "js" fn JsValue::to_audio_worklet_processor(
  self : JsValue,
) -> AudioWorkletProcessor =
  #| (self) => self

///|
pub extern "js" fn AudioWorkletProcessor::new() -> AudioWorkletProcessor =
  #| () => new AudioWorkletProcessor()

///|
pub extern "js" fn AudioWorkletProcessor::get_port(
  self : AudioWorkletProcessor,
) -> MessagePort =
  #| (self) => self.port

///|
/// AudioPlaybackStats interface
pub type AudioPlaybackStats

///|
pub extern "js" fn AudioPlaybackStats::to_js_value(
  self : AudioPlaybackStats,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AudioPlaybackStats (unchecked)
pub extern "js" fn AudioPlaybackStats::from_js_value(
  v : JsValue,
) -> AudioPlaybackStats =
  #| (v) => v

///|
/// Safely cast JsValue to AudioPlaybackStats (checked with instanceof)
pub extern "js" fn AudioPlaybackStats::from_js_value_opt(
  v : JsValue,
) -> AudioPlaybackStats? =
  #| (v) => (v instanceof AudioPlaybackStats) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AudioPlaybackStats (checked with instanceof)
pub extern "js" fn JsValue::as_audio_playback_stats(
  self : JsValue,
) -> AudioPlaybackStats? =
  #| (self) => (self instanceof AudioPlaybackStats) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AudioPlaybackStats (unchecked)
pub extern "js" fn JsValue::to_audio_playback_stats(
  self : JsValue,
) -> AudioPlaybackStats =
  #| (self) => self

///|
pub extern "js" fn AudioPlaybackStats::get_underrun_duration(
  self : AudioPlaybackStats,
) -> Double =
  #| (self) => self.underrunDuration

///|
pub extern "js" fn AudioPlaybackStats::get_underrun_events(
  self : AudioPlaybackStats,
) -> Int =
  #| (self) => self.underrunEvents

///|
pub extern "js" fn AudioPlaybackStats::get_total_duration(
  self : AudioPlaybackStats,
) -> Double =
  #| (self) => self.totalDuration

///|
pub extern "js" fn AudioPlaybackStats::get_average_latency(
  self : AudioPlaybackStats,
) -> Double =
  #| (self) => self.averageLatency

///|
pub extern "js" fn AudioPlaybackStats::get_minimum_latency(
  self : AudioPlaybackStats,
) -> Double =
  #| (self) => self.minimumLatency

///|
pub extern "js" fn AudioPlaybackStats::get_maximum_latency(
  self : AudioPlaybackStats,
) -> Double =
  #| (self) => self.maximumLatency

///|
pub extern "js" fn AudioPlaybackStats::reset_latency(
  self : AudioPlaybackStats,
) -> Unit =
  #| (self) => self.resetLatency()

///|
pub extern "js" fn AudioPlaybackStats::to_json(
  self : AudioPlaybackStats,
) -> JsValue =
  #| (self) => self.toJSON()
