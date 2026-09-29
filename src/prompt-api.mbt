// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/prompt-api

///|
/// LanguageModelPrompt typedef
pub type LanguageModelPrompt

pub extern "js" fn LanguageModelPrompt::to_js_value(self : LanguageModelPrompt) -> JsValue =
  #| (self) => self

/// Create LanguageModelPrompt from FixedArray[LanguageModelMessage]
pub extern "js" fn LanguageModelPrompt::from_array_of_language_model_message(v : FixedArray[LanguageModelMessage]) -> LanguageModelPrompt =
  #| (v) => v

/// Create LanguageModelPrompt from String
pub extern "js" fn LanguageModelPrompt::from_string(v : String) -> LanguageModelPrompt =
  #| (v) => v

/// Check if this LanguageModelPrompt is FixedArray[LanguageModelMessage]
pub extern "js" fn LanguageModelPrompt::is_array_of_language_model_message(self : LanguageModelPrompt) -> Bool =
  #| (self) => Array.isArray(self)

/// Check if this LanguageModelPrompt is String
pub extern "js" fn LanguageModelPrompt::is_string(self : LanguageModelPrompt) -> Bool =
  #| (self) => typeof self === 'string'

/// Try to get LanguageModelPrompt as FixedArray[LanguageModelMessage]
pub extern "js" fn LanguageModelPrompt::as_array_of_language_model_message(self : LanguageModelPrompt) -> FixedArray[LanguageModelMessage]? =
  #| (self) => (Array.isArray(self)) ? self : undefined

/// Try to get LanguageModelPrompt as String
pub extern "js" fn LanguageModelPrompt::as_string(self : LanguageModelPrompt) -> String? =
  #| (self) => (typeof self === 'string') ? self : undefined

/// Flatten Option[LanguageModelPrompt] to FixedArray[LanguageModelMessage]?
pub fn LanguageModelPrompt::bind_as_array_of_language_model_message(value : LanguageModelPrompt?) -> FixedArray[LanguageModelMessage]? {
  match value {
    Some(v) => v.as_array_of_language_model_message()
    None => None
  }
}

/// Flatten Option[LanguageModelPrompt] to String?
pub fn LanguageModelPrompt::bind_as_string(value : LanguageModelPrompt?) -> String? {
  match value {
    Some(v) => v.as_string()
    None => None
  }
}

///|
/// LanguageModelMessageValue typedef
pub type LanguageModelMessageValue

pub extern "js" fn LanguageModelMessageValue::to_js_value(self : LanguageModelMessageValue) -> JsValue =
  #| (self) => self

/// Create LanguageModelMessageValue from ImageBitmapSource
pub extern "js" fn LanguageModelMessageValue::from_image_bitmap_source(v : ImageBitmapSource) -> LanguageModelMessageValue =
  #| (v) => v

/// Create LanguageModelMessageValue from AudioBuffer
pub extern "js" fn LanguageModelMessageValue::from_audio_buffer(v : AudioBuffer) -> LanguageModelMessageValue =
  #| (v) => v

/// Create LanguageModelMessageValue from BufferSource
pub extern "js" fn LanguageModelMessageValue::from_buffer_source(v : BufferSource) -> LanguageModelMessageValue =
  #| (v) => v

/// Create LanguageModelMessageValue from String
pub extern "js" fn LanguageModelMessageValue::from_string(v : String) -> LanguageModelMessageValue =
  #| (v) => v

/// Check if this LanguageModelMessageValue is ImageBitmapSource
pub extern "js" fn LanguageModelMessageValue::is_image_bitmap_source(self : LanguageModelMessageValue) -> Bool =
  #| (self) => self instanceof HTMLImageElement || self instanceof SVGImageElement || self instanceof HTMLVideoElement || self instanceof HTMLCanvasElement || self instanceof ImageBitmap || self instanceof OffscreenCanvas || self instanceof VideoFrame || self instanceof Blob || self instanceof ImageData

/// Check if this LanguageModelMessageValue is AudioBuffer
pub extern "js" fn LanguageModelMessageValue::is_audio_buffer(self : LanguageModelMessageValue) -> Bool =
  #| (self) => self instanceof AudioBuffer

/// Check if this LanguageModelMessageValue is BufferSource
pub extern "js" fn LanguageModelMessageValue::is_buffer_source(self : LanguageModelMessageValue) -> Bool =
  #| (self) => self instanceof ArrayBuffer || self instanceof Int8Array || self instanceof Int16Array || self instanceof Int32Array || self instanceof Uint8Array || self instanceof Uint16Array || self instanceof Uint32Array || self instanceof Uint8ClampedArray || self instanceof BigInt64Array || self instanceof BigUint64Array || self instanceof Float16Array || self instanceof Float32Array || self instanceof Float64Array || self instanceof DataView

/// Check if this LanguageModelMessageValue is String
pub extern "js" fn LanguageModelMessageValue::is_string(self : LanguageModelMessageValue) -> Bool =
  #| (self) => typeof self === 'string'

/// Try to get LanguageModelMessageValue as ImageBitmapSource
pub extern "js" fn LanguageModelMessageValue::as_image_bitmap_source(self : LanguageModelMessageValue) -> ImageBitmapSource? =
  #| (self) => (self instanceof HTMLImageElement || self instanceof SVGImageElement || self instanceof HTMLVideoElement || self instanceof HTMLCanvasElement || self instanceof ImageBitmap || self instanceof OffscreenCanvas || self instanceof VideoFrame || self instanceof Blob || self instanceof ImageData) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Try to get LanguageModelMessageValue as AudioBuffer
pub extern "js" fn LanguageModelMessageValue::as_audio_buffer(self : LanguageModelMessageValue) -> AudioBuffer? =
  #| (self) => (self instanceof AudioBuffer) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Try to get LanguageModelMessageValue as BufferSource
pub extern "js" fn LanguageModelMessageValue::as_buffer_source(self : LanguageModelMessageValue) -> BufferSource? =
  #| (self) => (self instanceof ArrayBuffer || self instanceof Int8Array || self instanceof Int16Array || self instanceof Int32Array || self instanceof Uint8Array || self instanceof Uint16Array || self instanceof Uint32Array || self instanceof Uint8ClampedArray || self instanceof BigInt64Array || self instanceof BigUint64Array || self instanceof Float16Array || self instanceof Float32Array || self instanceof Float64Array || self instanceof DataView) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Try to get LanguageModelMessageValue as String
pub extern "js" fn LanguageModelMessageValue::as_string(self : LanguageModelMessageValue) -> String? =
  #| (self) => (typeof self === 'string') ? self : undefined

/// Flatten Option[LanguageModelMessageValue] to ImageBitmapSource?
pub fn LanguageModelMessageValue::bind_as_image_bitmap_source(value : LanguageModelMessageValue?) -> ImageBitmapSource? {
  match value {
    Some(v) => v.as_image_bitmap_source()
    None => None
  }
}

/// Flatten Option[LanguageModelMessageValue] to AudioBuffer?
pub fn LanguageModelMessageValue::bind_as_audio_buffer(value : LanguageModelMessageValue?) -> AudioBuffer? {
  match value {
    Some(v) => v.as_audio_buffer()
    None => None
  }
}

/// Flatten Option[LanguageModelMessageValue] to BufferSource?
pub fn LanguageModelMessageValue::bind_as_buffer_source(value : LanguageModelMessageValue?) -> BufferSource? {
  match value {
    Some(v) => v.as_buffer_source()
    None => None
  }
}

/// Flatten Option[LanguageModelMessageValue] to String?
pub fn LanguageModelMessageValue::bind_as_string(value : LanguageModelMessageValue?) -> String? {
  match value {
    Some(v) => v.as_string()
    None => None
  }
}

///|
/// LanguageModelSamplingMode enum
pub(all) enum LanguageModelSamplingMode {
  MostPredictable
  Predictable
  SlightlyPredictable
  Balanced
  SlightlyCreative
  Creative
  MostCreative
} derive(Eq, Debug)

pub extend LanguageModelSamplingMode with Eq::{equal, not_equal}
pub extend LanguageModelSamplingMode with @debug.Debug::{to_repr}

/// Convert to string value
pub fn LanguageModelSamplingMode::to_string(self : LanguageModelSamplingMode) -> String {
  match self {
    LanguageModelSamplingMode::MostPredictable => "most-predictable"
    LanguageModelSamplingMode::Predictable => "predictable"
    LanguageModelSamplingMode::SlightlyPredictable => "slightly-predictable"
    LanguageModelSamplingMode::Balanced => "balanced"
    LanguageModelSamplingMode::SlightlyCreative => "slightly-creative"
    LanguageModelSamplingMode::Creative => "creative"
    LanguageModelSamplingMode::MostCreative => "most-creative"
  }
}

/// Parse from string value
pub fn LanguageModelSamplingMode::from_string(s : String) -> LanguageModelSamplingMode? {
  match s {
    "most-predictable" => Some(LanguageModelSamplingMode::MostPredictable)
    "predictable" => Some(LanguageModelSamplingMode::Predictable)
    "slightly-predictable" => Some(LanguageModelSamplingMode::SlightlyPredictable)
    "balanced" => Some(LanguageModelSamplingMode::Balanced)
    "slightly-creative" => Some(LanguageModelSamplingMode::SlightlyCreative)
    "creative" => Some(LanguageModelSamplingMode::Creative)
    "most-creative" => Some(LanguageModelSamplingMode::MostCreative)
    _ => None
  }
}

///|
/// LanguageModelMessageRole enum
pub(all) enum LanguageModelMessageRole {
  System
  User
  Assistant
} derive(Eq, Debug)

pub extend LanguageModelMessageRole with Eq::{equal, not_equal}
pub extend LanguageModelMessageRole with @debug.Debug::{to_repr}

/// Convert to string value
pub fn LanguageModelMessageRole::to_string(self : LanguageModelMessageRole) -> String {
  match self {
    LanguageModelMessageRole::System => "system"
    LanguageModelMessageRole::User => "user"
    LanguageModelMessageRole::Assistant => "assistant"
  }
}

/// Parse from string value
pub fn LanguageModelMessageRole::from_string(s : String) -> LanguageModelMessageRole? {
  match s {
    "system" => Some(LanguageModelMessageRole::System)
    "user" => Some(LanguageModelMessageRole::User)
    "assistant" => Some(LanguageModelMessageRole::Assistant)
    _ => None
  }
}

///|
/// LanguageModelMessageType enum
pub(all) enum LanguageModelMessageType {
  Text
  Image
  Audio
  ToolCall
  ToolResponse
} derive(Eq, Debug)

pub extend LanguageModelMessageType with Eq::{equal, not_equal}
pub extend LanguageModelMessageType with @debug.Debug::{to_repr}

/// Convert to string value
pub fn LanguageModelMessageType::to_string(self : LanguageModelMessageType) -> String {
  match self {
    LanguageModelMessageType::Text => "text"
    LanguageModelMessageType::Image => "image"
    LanguageModelMessageType::Audio => "audio"
    LanguageModelMessageType::ToolCall => "tool-call"
    LanguageModelMessageType::ToolResponse => "tool-response"
  }
}

/// Parse from string value
pub fn LanguageModelMessageType::from_string(s : String) -> LanguageModelMessageType? {
  match s {
    "text" => Some(LanguageModelMessageType::Text)
    "image" => Some(LanguageModelMessageType::Image)
    "audio" => Some(LanguageModelMessageType::Audio)
    "tool-call" => Some(LanguageModelMessageType::ToolCall)
    "tool-response" => Some(LanguageModelMessageType::ToolResponse)
    _ => None
  }
}

/// LanguageModelToolFunction callback interface
pub type LanguageModelToolFunction

/// Create LanguageModelToolFunction from a MoonBit function
pub extern "js" fn LanguageModelToolFunction::from_fn(handler : (JsValue) -> Promise[String]) -> LanguageModelToolFunction =
  #| (handler) => (a0) => handler(a0)

///|
/// LanguageModelTool dictionary
pub(all) struct LanguageModelTool {
  name : String
  description : String
  inputSchema : JsValue
  execute : LanguageModelToolFunction
}

/// Create a new LanguageModelTool
pub fn LanguageModelTool::new(inputSchema~ : JsValue, execute~ : LanguageModelToolFunction) -> LanguageModelTool {
  LanguageModelTool::{
    name: "",
    description: "",
    inputSchema: inputSchema,
    execute: execute,
  }
}

extern "js" fn LanguageModelTool::to_js_ffi(self : LanguageModelTool) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   description: self.description,
  #|   inputSchema: self.inputSchema,
  #|   execute: self.execute
  #| })

/// Convert to JsValue
pub fn LanguageModelTool::to_js(self : LanguageModelTool) -> JsValue {
  LanguageModelTool::to_js_ffi(self)
}

extern "js" fn LanguageModelTool::from_js_ffi(value : JsValue) -> LanguageModelTool =
  #| (v) => ({
  #|   name: v.name,
  #|   description: v.description,
  #|   inputSchema: v.inputSchema,
  #|   execute: v.execute
  #| })

/// Convert from JsValue
pub fn LanguageModelTool::from_js(value : JsValue) -> LanguageModelTool {
  LanguageModelTool::from_js_ffi(value)
}

///|
/// LanguageModelCreateCoreOptions dictionary
pub(all) struct LanguageModelCreateCoreOptions {
  topK : Double?
  temperature : Double?
  samplingMode : LanguageModelSamplingMode?
  expectedInputs : FixedArray[LanguageModelExpected]?
  expectedOutputs : FixedArray[LanguageModelExpected]?
  tools : FixedArray[LanguageModelTool]?
}

/// Create a new LanguageModelCreateCoreOptions with default values
pub fn LanguageModelCreateCoreOptions::default() -> LanguageModelCreateCoreOptions {
  LanguageModelCreateCoreOptions::{
    topK: None,
    temperature: None,
    samplingMode: None,
    expectedInputs: None,
    expectedOutputs: None,
    tools: None,
  }
}

extern "js" fn LanguageModelCreateCoreOptions::to_js_ffi(self : LanguageModelCreateCoreOptions) -> JsValue =
  #| (self) => ({
  #|   topK: ((() => { const v = self.topK; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   temperature: ((() => { const v = self.temperature; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   samplingMode: ((() => { const v = self.samplingMode; if (v === undefined) return undefined; return ['most-predictable', 'predictable', 'slightly-predictable', 'balanced', 'slightly-creative', 'creative', 'most-creative'][v]; })()),
  #|   expectedInputs: self.expectedInputs,
  #|   expectedOutputs: self.expectedOutputs,
  #|   tools: self.tools
  #| })

/// Convert to JsValue
pub fn LanguageModelCreateCoreOptions::to_js(self : LanguageModelCreateCoreOptions) -> JsValue {
  LanguageModelCreateCoreOptions::to_js_ffi(self)
}

extern "js" fn LanguageModelCreateCoreOptions::from_js_ffi(value : JsValue) -> LanguageModelCreateCoreOptions =
  #| (v) => ({
  #|   topK: (v.topK === undefined ? { $tag: 0 } : { $tag: 1, _0: v.topK }),
  #|   temperature: (v.temperature === undefined ? { $tag: 0 } : { $tag: 1, _0: v.temperature }),
  #|   samplingMode: (v.samplingMode === undefined ? undefined : ['most-predictable', 'predictable', 'slightly-predictable', 'balanced', 'slightly-creative', 'creative', 'most-creative'].indexOf(v.samplingMode)),
  #|   expectedInputs: v.expectedInputs,
  #|   expectedOutputs: v.expectedOutputs,
  #|   tools: v.tools
  #| })

/// Convert from JsValue
pub fn LanguageModelCreateCoreOptions::from_js(value : JsValue) -> LanguageModelCreateCoreOptions {
  LanguageModelCreateCoreOptions::from_js_ffi(value)
}

///|
/// LanguageModelCreateOptions dictionary
pub(all) struct LanguageModelCreateOptions {
  topK : Double?
  temperature : Double?
  samplingMode : LanguageModelSamplingMode?
  expectedInputs : FixedArray[LanguageModelExpected]?
  expectedOutputs : FixedArray[LanguageModelExpected]?
  tools : FixedArray[LanguageModelTool]?
  signal : AbortSignal?
  monitor : CreateMonitorCallback?
  initialPrompts : FixedArray[LanguageModelMessage]?
}

/// Create a new LanguageModelCreateOptions with default values
pub fn LanguageModelCreateOptions::default() -> LanguageModelCreateOptions {
  LanguageModelCreateOptions::{
    topK: None,
    temperature: None,
    samplingMode: None,
    expectedInputs: None,
    expectedOutputs: None,
    tools: None,
    signal: None,
    monitor: None,
    initialPrompts: None,
  }
}

extern "js" fn LanguageModelCreateOptions::to_js_ffi(self : LanguageModelCreateOptions) -> JsValue =
  #| (self) => ({
  #|   topK: ((() => { const v = self.topK; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   temperature: ((() => { const v = self.temperature; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   samplingMode: ((() => { const v = self.samplingMode; if (v === undefined) return undefined; return ['most-predictable', 'predictable', 'slightly-predictable', 'balanced', 'slightly-creative', 'creative', 'most-creative'][v]; })()),
  #|   expectedInputs: self.expectedInputs,
  #|   expectedOutputs: self.expectedOutputs,
  #|   tools: self.tools,
  #|   signal: ((() => { const v = self.signal; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   monitor: ((() => { const v = self.monitor; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   initialPrompts: self.initialPrompts
  #| })

/// Convert to JsValue
pub fn LanguageModelCreateOptions::to_js(self : LanguageModelCreateOptions) -> JsValue {
  LanguageModelCreateOptions::to_js_ffi(self)
}

extern "js" fn LanguageModelCreateOptions::from_js_ffi(value : JsValue) -> LanguageModelCreateOptions =
  #| (v) => ({
  #|   topK: (v.topK === undefined ? { $tag: 0 } : { $tag: 1, _0: v.topK }),
  #|   temperature: (v.temperature === undefined ? { $tag: 0 } : { $tag: 1, _0: v.temperature }),
  #|   samplingMode: (v.samplingMode === undefined ? undefined : ['most-predictable', 'predictable', 'slightly-predictable', 'balanced', 'slightly-creative', 'creative', 'most-creative'].indexOf(v.samplingMode)),
  #|   expectedInputs: v.expectedInputs,
  #|   expectedOutputs: v.expectedOutputs,
  #|   tools: v.tools,
  #|   signal: (v.signal === undefined ? { $tag: 0 } : { $tag: 1, _0: v.signal }),
  #|   monitor: (v.monitor === undefined ? { $tag: 0 } : { $tag: 1, _0: v.monitor }),
  #|   initialPrompts: v.initialPrompts
  #| })

/// Convert from JsValue
pub fn LanguageModelCreateOptions::from_js(value : JsValue) -> LanguageModelCreateOptions {
  LanguageModelCreateOptions::from_js_ffi(value)
}

///|
/// LanguageModelPromptOptions dictionary
pub(all) struct LanguageModelPromptOptions {
  responseConstraint : JsValue?
  omitResponseConstraintInput : Bool?
  signal : AbortSignal?
}

/// Create a new LanguageModelPromptOptions with default values
pub fn LanguageModelPromptOptions::default() -> LanguageModelPromptOptions {
  LanguageModelPromptOptions::{
    responseConstraint: None,
    omitResponseConstraintInput: None,
    signal: None,
  }
}

extern "js" fn LanguageModelPromptOptions::to_js_ffi(self : LanguageModelPromptOptions) -> JsValue =
  #| (self) => ({
  #|   responseConstraint: ((() => { const v = self.responseConstraint; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   omitResponseConstraintInput: (self.omitResponseConstraintInput === -1 ? undefined : self.omitResponseConstraintInput),
  #|   signal: ((() => { const v = self.signal; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

/// Convert to JsValue
pub fn LanguageModelPromptOptions::to_js(self : LanguageModelPromptOptions) -> JsValue {
  LanguageModelPromptOptions::to_js_ffi(self)
}

extern "js" fn LanguageModelPromptOptions::from_js_ffi(value : JsValue) -> LanguageModelPromptOptions =
  #| (v) => ({
  #|   responseConstraint: (v.responseConstraint === undefined ? { $tag: 0 } : { $tag: 1, _0: v.responseConstraint }),
  #|   omitResponseConstraintInput: (v.omitResponseConstraintInput === undefined ? -1 : v.omitResponseConstraintInput),
  #|   signal: (v.signal === undefined ? { $tag: 0 } : { $tag: 1, _0: v.signal })
  #| })

/// Convert from JsValue
pub fn LanguageModelPromptOptions::from_js(value : JsValue) -> LanguageModelPromptOptions {
  LanguageModelPromptOptions::from_js_ffi(value)
}

///|
/// LanguageModelAppendOptions dictionary
pub(all) struct LanguageModelAppendOptions {
  signal : AbortSignal?
}

/// Create a new LanguageModelAppendOptions with default values
pub fn LanguageModelAppendOptions::default() -> LanguageModelAppendOptions {
  LanguageModelAppendOptions::{
    signal: None,
  }
}

extern "js" fn LanguageModelAppendOptions::to_js_ffi(self : LanguageModelAppendOptions) -> JsValue =
  #| (self) => ({
  #|   signal: ((() => { const v = self.signal; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

/// Convert to JsValue
pub fn LanguageModelAppendOptions::to_js(self : LanguageModelAppendOptions) -> JsValue {
  LanguageModelAppendOptions::to_js_ffi(self)
}

extern "js" fn LanguageModelAppendOptions::from_js_ffi(value : JsValue) -> LanguageModelAppendOptions =
  #| (v) => ({
  #|   signal: (v.signal === undefined ? { $tag: 0 } : { $tag: 1, _0: v.signal })
  #| })

/// Convert from JsValue
pub fn LanguageModelAppendOptions::from_js(value : JsValue) -> LanguageModelAppendOptions {
  LanguageModelAppendOptions::from_js_ffi(value)
}

///|
/// LanguageModelCloneOptions dictionary
pub(all) struct LanguageModelCloneOptions {
  signal : AbortSignal?
}

/// Create a new LanguageModelCloneOptions with default values
pub fn LanguageModelCloneOptions::default() -> LanguageModelCloneOptions {
  LanguageModelCloneOptions::{
    signal: None,
  }
}

extern "js" fn LanguageModelCloneOptions::to_js_ffi(self : LanguageModelCloneOptions) -> JsValue =
  #| (self) => ({
  #|   signal: ((() => { const v = self.signal; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

/// Convert to JsValue
pub fn LanguageModelCloneOptions::to_js(self : LanguageModelCloneOptions) -> JsValue {
  LanguageModelCloneOptions::to_js_ffi(self)
}

extern "js" fn LanguageModelCloneOptions::from_js_ffi(value : JsValue) -> LanguageModelCloneOptions =
  #| (v) => ({
  #|   signal: (v.signal === undefined ? { $tag: 0 } : { $tag: 1, _0: v.signal })
  #| })

/// Convert from JsValue
pub fn LanguageModelCloneOptions::from_js(value : JsValue) -> LanguageModelCloneOptions {
  LanguageModelCloneOptions::from_js_ffi(value)
}

///|
/// LanguageModelExpected dictionary
pub(all) struct LanguageModelExpected {
  type_ : LanguageModelMessageType
  languages : FixedArray[String]?
}

/// Create a new LanguageModelExpected
pub fn LanguageModelExpected::new(type_~ : LanguageModelMessageType) -> LanguageModelExpected {
  LanguageModelExpected::{
    type_: type_,
    languages: None,
  }
}

extern "js" fn LanguageModelExpected::to_js_ffi(self : LanguageModelExpected) -> JsValue =
  #| (self) => ({
  #|   type: ['text', 'image', 'audio', 'tool-call', 'tool-response'][self.type_],
  #|   languages: self.languages
  #| })

/// Convert to JsValue
pub fn LanguageModelExpected::to_js(self : LanguageModelExpected) -> JsValue {
  LanguageModelExpected::to_js_ffi(self)
}

extern "js" fn LanguageModelExpected::from_js_ffi(value : JsValue) -> LanguageModelExpected =
  #| (v) => ({
  #|   type_: ['text', 'image', 'audio', 'tool-call', 'tool-response'].indexOf(v.type),
  #|   languages: v.languages
  #| })

/// Convert from JsValue
pub fn LanguageModelExpected::from_js(value : JsValue) -> LanguageModelExpected {
  LanguageModelExpected::from_js_ffi(value)
}

///|
/// LanguageModelMessage dictionary
pub(all) struct LanguageModelMessage {
  role : LanguageModelMessageRole
  content : StringOrArrayOfLanguageModelMessageContent
  prefix : Bool?
}

/// Create a new LanguageModelMessage
pub fn LanguageModelMessage::new(role~ : LanguageModelMessageRole, content~ : StringOrArrayOfLanguageModelMessageContent) -> LanguageModelMessage {
  LanguageModelMessage::{
    role: role,
    content: content,
    prefix: None,
  }
}

extern "js" fn LanguageModelMessage::to_js_ffi(self : LanguageModelMessage) -> JsValue =
  #| (self) => ({
  #|   role: ['system', 'user', 'assistant'][self.role],
  #|   content: self.content,
  #|   prefix: (self.prefix === -1 ? undefined : self.prefix)
  #| })

/// Convert to JsValue
pub fn LanguageModelMessage::to_js(self : LanguageModelMessage) -> JsValue {
  LanguageModelMessage::to_js_ffi(self)
}

extern "js" fn LanguageModelMessage::from_js_ffi(value : JsValue) -> LanguageModelMessage =
  #| (v) => ({
  #|   role: ['system', 'user', 'assistant'].indexOf(v.role),
  #|   content: v.content,
  #|   prefix: (v.prefix === undefined ? -1 : v.prefix)
  #| })

/// Convert from JsValue
pub fn LanguageModelMessage::from_js(value : JsValue) -> LanguageModelMessage {
  LanguageModelMessage::from_js_ffi(value)
}

///|
/// LanguageModelMessageContent dictionary
pub(all) struct LanguageModelMessageContent {
  type_ : LanguageModelMessageType
  value : LanguageModelMessageValue
}

/// Create a new LanguageModelMessageContent
pub fn LanguageModelMessageContent::new(type_~ : LanguageModelMessageType, value~ : LanguageModelMessageValue) -> LanguageModelMessageContent {
  LanguageModelMessageContent::{
    type_: type_,
    value: value,
  }
}

extern "js" fn LanguageModelMessageContent::to_js_ffi(self : LanguageModelMessageContent) -> JsValue =
  #| (self) => ({
  #|   type: ['text', 'image', 'audio', 'tool-call', 'tool-response'][self.type_],
  #|   value: self.value
  #| })

/// Convert to JsValue
pub fn LanguageModelMessageContent::to_js(self : LanguageModelMessageContent) -> JsValue {
  LanguageModelMessageContent::to_js_ffi(self)
}

extern "js" fn LanguageModelMessageContent::from_js_ffi(value : JsValue) -> LanguageModelMessageContent =
  #| (v) => ({
  #|   type_: ['text', 'image', 'audio', 'tool-call', 'tool-response'].indexOf(v.type),
  #|   value: v.value
  #| })

/// Convert from JsValue
pub fn LanguageModelMessageContent::from_js(value : JsValue) -> LanguageModelMessageContent {
  LanguageModelMessageContent::from_js_ffi(value)
}

///|
/// LanguageModel interface
pub type LanguageModel

pub extern "js" fn LanguageModel::to_js_value(self : LanguageModel) -> JsValue =
  #| (self) => self

/// Cast JsValue to LanguageModel (unchecked)
pub extern "js" fn LanguageModel::from_js_value(v : JsValue) -> LanguageModel =
  #| (v) => v

/// Safely cast JsValue to LanguageModel (checked with instanceof)
pub extern "js" fn LanguageModel::from_js_value_opt(v : JsValue) -> LanguageModel? =
  #| (v) => (v instanceof LanguageModel) ? { $tag: 1, _0: v } : { $tag: 0 }

/// Safely cast JsValue to LanguageModel (checked with instanceof)
pub extern "js" fn JsValue::as_language_model(self : JsValue) -> LanguageModel? =
  #| (self) => (self instanceof LanguageModel) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Cast JsValue to LanguageModel (unchecked)
pub extern "js" fn JsValue::to_language_model(self : JsValue) -> LanguageModel =
  #| (self) => self

pub extern "js" fn LanguageModel::to_event_target(self : LanguageModel) -> EventTarget =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum LanguageModelCreateError {
  TypeError(JsError)
  AbortError(JsError)
  SyntaxError(JsError)
  OperationError(JsError)
  NotAllowedError(JsError)
  InvalidStateError(JsError)
  NotSupportedError(JsError)
  QuotaExceededError(JsError)
  OtherError(JsError)
} derive(Debug)

pub extend LanguageModelCreateError with @debug.Debug::{to_repr}

///|
/// Error type for throwing methods
pub(all) enum LanguageModelAvailabilityError {
  NotAllowedError(JsError)
  InvalidStateError(JsError)
  OtherError(JsError)
} derive(Debug)

pub extend LanguageModelAvailabilityError with @debug.Debug::{to_repr}

///|
/// Error type for throwing methods
pub(all) enum LanguageModelPromptError {
  TypeError(JsError)
  AbortError(JsError)
  SyntaxError(JsError)
  OperationError(JsError)
  NotAllowedError(JsError)
  NotSupportedError(JsError)
  QuotaExceededError(JsError)
  OtherError(JsError)
} derive(Debug)

pub extend LanguageModelPromptError with @debug.Debug::{to_repr}

///|
/// Error type for throwing methods
pub(all) enum LanguageModelPromptStreamingError {
  TypeError(JsError)
  AbortError(JsError)
  SyntaxError(JsError)
  OperationError(JsError)
  NotAllowedError(JsError)
  NotSupportedError(JsError)
  QuotaExceededError(JsError)
  OtherError(JsError)
} derive(Debug)

pub extend LanguageModelPromptStreamingError with @debug.Debug::{to_repr}

///|
/// Error type for throwing methods
pub(all) enum LanguageModelAppendError {
  TypeError(JsError)
  AbortError(JsError)
  SyntaxError(JsError)
  OperationError(JsError)
  NotAllowedError(JsError)
  NotSupportedError(JsError)
  QuotaExceededError(JsError)
  OtherError(JsError)
} derive(Debug)

pub extend LanguageModelAppendError with @debug.Debug::{to_repr}

///|
/// Error type for throwing methods
pub(all) enum LanguageModelMeasureContextUsageError {
  TypeError(JsError)
  AbortError(JsError)
  SyntaxError(JsError)
  NotAllowedError(JsError)
  NotSupportedError(JsError)
  OtherError(JsError)
} derive(Debug)

pub extend LanguageModelMeasureContextUsageError with @debug.Debug::{to_repr}

///|
/// Error type for throwing methods
pub(all) enum LanguageModelCloneError {
  AbortError(JsError)
  OperationError(JsError)
  NotAllowedError(JsError)
  OtherError(JsError)
} derive(Debug)

pub extend LanguageModelCloneError with @debug.Debug::{to_repr}

///|
/// Error type for throwing methods
pub(all) enum LanguageModelDestroyError {
  NotAllowedError(JsError)
  OtherError(JsError)
} derive(Debug)

pub extend LanguageModelDestroyError with @debug.Debug::{to_repr}

pub extern "js" fn LanguageModel::create() -> Promise[Result[LanguageModel, LanguageModelCreateError]] =
  #| () => LanguageModel.create().then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'AbortError') return { $tag: 1, _0: e }; if (n === 'SyntaxError') return { $tag: 2, _0: e }; if (n === 'OperationError') return { $tag: 3, _0: e }; if (n === 'NotAllowedError') return { $tag: 4, _0: e }; if (n === 'InvalidStateError') return { $tag: 5, _0: e }; if (n === 'NotSupportedError') return { $tag: 6, _0: e }; if (n === 'QuotaExceededError') return { $tag: 7, _0: e }; return { $tag: 8, _0: e }; })() }))

extern "js" fn LanguageModel::create_with_options_ffi(options : JsValue) -> Promise[Result[LanguageModel, LanguageModelCreateError]] =
  #| (options) => LanguageModel.create(options).then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'AbortError') return { $tag: 1, _0: e }; if (n === 'SyntaxError') return { $tag: 2, _0: e }; if (n === 'OperationError') return { $tag: 3, _0: e }; if (n === 'NotAllowedError') return { $tag: 4, _0: e }; if (n === 'InvalidStateError') return { $tag: 5, _0: e }; if (n === 'NotSupportedError') return { $tag: 6, _0: e }; if (n === 'QuotaExceededError') return { $tag: 7, _0: e }; return { $tag: 8, _0: e }; })() }))

pub fn LanguageModel::create_with_options(options : LanguageModelCreateOptions) -> Promise[Result[LanguageModel, LanguageModelCreateError]] {
  LanguageModel::create_with_options_ffi(options.to_js())
}

pub extern "js" fn LanguageModel::availability() -> Promise[Result[Availability, LanguageModelAvailabilityError]] =
  #| () => LanguageModel.availability().then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NotAllowedError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }))

extern "js" fn LanguageModel::availability_with_options_ffi(options : JsValue) -> Promise[Result[Availability, LanguageModelAvailabilityError]] =
  #| (options) => LanguageModel.availability(options).then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NotAllowedError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }))

pub fn LanguageModel::availability_with_options(options : LanguageModelCreateCoreOptions) -> Promise[Result[Availability, LanguageModelAvailabilityError]] {
  LanguageModel::availability_with_options_ffi(options.to_js())
}

pub extern "js" fn LanguageModel::params() -> Promise[LanguageModelParams?] =
  #| () => LanguageModel.params().then(value => (() => { const v = value; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })())

pub extern "js" fn LanguageModel::prompt(self : LanguageModel, input : LanguageModelPrompt) -> Promise[Result[String, LanguageModelPromptError]] =
  #| (self, input) => self.prompt(input).then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'AbortError') return { $tag: 1, _0: e }; if (n === 'SyntaxError') return { $tag: 2, _0: e }; if (n === 'OperationError') return { $tag: 3, _0: e }; if (n === 'NotAllowedError') return { $tag: 4, _0: e }; if (n === 'NotSupportedError') return { $tag: 5, _0: e }; if (n === 'QuotaExceededError') return { $tag: 6, _0: e }; return { $tag: 7, _0: e }; })() }))

extern "js" fn LanguageModel::prompt_with_options_ffi(self : LanguageModel, input : LanguageModelPrompt, options : JsValue) -> Promise[Result[String, LanguageModelPromptError]] =
  #| (self, input, options) => self.prompt(input, options).then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'AbortError') return { $tag: 1, _0: e }; if (n === 'SyntaxError') return { $tag: 2, _0: e }; if (n === 'OperationError') return { $tag: 3, _0: e }; if (n === 'NotAllowedError') return { $tag: 4, _0: e }; if (n === 'NotSupportedError') return { $tag: 5, _0: e }; if (n === 'QuotaExceededError') return { $tag: 6, _0: e }; return { $tag: 7, _0: e }; })() }))

pub fn LanguageModel::prompt_with_options(self : LanguageModel, input : LanguageModelPrompt, options : LanguageModelPromptOptions) -> Promise[Result[String, LanguageModelPromptError]] {
  LanguageModel::prompt_with_options_ffi(self, input, options.to_js())
}

pub extern "js" fn LanguageModel::prompt_streaming(self : LanguageModel, input : LanguageModelPrompt) -> Result[ReadableStream, LanguageModelPromptStreamingError] =
  #| (self, input) => (() => { try { return { $tag: 1, _0: self.promptStreaming(input) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'AbortError') return { $tag: 1, _0: e }; if (n === 'SyntaxError') return { $tag: 2, _0: e }; if (n === 'OperationError') return { $tag: 3, _0: e }; if (n === 'NotAllowedError') return { $tag: 4, _0: e }; if (n === 'NotSupportedError') return { $tag: 5, _0: e }; if (n === 'QuotaExceededError') return { $tag: 6, _0: e }; return { $tag: 7, _0: e }; })() }; } })()

extern "js" fn LanguageModel::prompt_streaming_with_options_ffi(self : LanguageModel, input : LanguageModelPrompt, options : JsValue) -> Result[ReadableStream, LanguageModelPromptStreamingError] =
  #| (self, input, options) => (() => { try { return { $tag: 1, _0: self.promptStreaming(input, options) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'AbortError') return { $tag: 1, _0: e }; if (n === 'SyntaxError') return { $tag: 2, _0: e }; if (n === 'OperationError') return { $tag: 3, _0: e }; if (n === 'NotAllowedError') return { $tag: 4, _0: e }; if (n === 'NotSupportedError') return { $tag: 5, _0: e }; if (n === 'QuotaExceededError') return { $tag: 6, _0: e }; return { $tag: 7, _0: e }; })() }; } })()

pub fn LanguageModel::prompt_streaming_with_options(self : LanguageModel, input : LanguageModelPrompt, options : LanguageModelPromptOptions) -> Result[ReadableStream, LanguageModelPromptStreamingError] {
  LanguageModel::prompt_streaming_with_options_ffi(self, input, options.to_js())
}

pub extern "js" fn LanguageModel::append(self : LanguageModel, input : LanguageModelPrompt) -> Promise[Result[Unit, LanguageModelAppendError]] =
  #| (self, input) => self.append(input).then(r => ({ $tag: 1, _0: undefined })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'AbortError') return { $tag: 1, _0: e }; if (n === 'SyntaxError') return { $tag: 2, _0: e }; if (n === 'OperationError') return { $tag: 3, _0: e }; if (n === 'NotAllowedError') return { $tag: 4, _0: e }; if (n === 'NotSupportedError') return { $tag: 5, _0: e }; if (n === 'QuotaExceededError') return { $tag: 6, _0: e }; return { $tag: 7, _0: e }; })() }))

extern "js" fn LanguageModel::append_with_options_ffi(self : LanguageModel, input : LanguageModelPrompt, options : JsValue) -> Promise[Result[Unit, LanguageModelAppendError]] =
  #| (self, input, options) => self.append(input, options).then(r => ({ $tag: 1, _0: undefined })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'AbortError') return { $tag: 1, _0: e }; if (n === 'SyntaxError') return { $tag: 2, _0: e }; if (n === 'OperationError') return { $tag: 3, _0: e }; if (n === 'NotAllowedError') return { $tag: 4, _0: e }; if (n === 'NotSupportedError') return { $tag: 5, _0: e }; if (n === 'QuotaExceededError') return { $tag: 6, _0: e }; return { $tag: 7, _0: e }; })() }))

pub fn LanguageModel::append_with_options(self : LanguageModel, input : LanguageModelPrompt, options : LanguageModelAppendOptions) -> Promise[Result[Unit, LanguageModelAppendError]] {
  LanguageModel::append_with_options_ffi(self, input, options.to_js())
}

pub extern "js" fn LanguageModel::measure_context_usage(self : LanguageModel, input : LanguageModelPrompt) -> Promise[Result[Double, LanguageModelMeasureContextUsageError]] =
  #| (self, input) => self.measureContextUsage(input).then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'AbortError') return { $tag: 1, _0: e }; if (n === 'SyntaxError') return { $tag: 2, _0: e }; if (n === 'NotAllowedError') return { $tag: 3, _0: e }; if (n === 'NotSupportedError') return { $tag: 4, _0: e }; return { $tag: 5, _0: e }; })() }))

extern "js" fn LanguageModel::measure_context_usage_with_options_ffi(self : LanguageModel, input : LanguageModelPrompt, options : JsValue) -> Promise[Result[Double, LanguageModelMeasureContextUsageError]] =
  #| (self, input, options) => self.measureContextUsage(input, options).then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'AbortError') return { $tag: 1, _0: e }; if (n === 'SyntaxError') return { $tag: 2, _0: e }; if (n === 'NotAllowedError') return { $tag: 3, _0: e }; if (n === 'NotSupportedError') return { $tag: 4, _0: e }; return { $tag: 5, _0: e }; })() }))

pub fn LanguageModel::measure_context_usage_with_options(self : LanguageModel, input : LanguageModelPrompt, options : LanguageModelPromptOptions) -> Promise[Result[Double, LanguageModelMeasureContextUsageError]] {
  LanguageModel::measure_context_usage_with_options_ffi(self, input, options.to_js())
}

pub extern "js" fn LanguageModel::get_context_usage(self : LanguageModel) -> Double =
  #| (self) => self.contextUsage

pub extern "js" fn LanguageModel::get_context_window(self : LanguageModel) -> Double =
  #| (self) => self.contextWindow

pub extern "js" fn LanguageModel::set_oncontextoverflow(self : LanguageModel, handler : (Event) -> Unit) -> Unit =
  #| (self, handler) => { self.oncontextoverflow = (e) => handler(e) }

pub extern "js" fn LanguageModel::clear_oncontextoverflow(self : LanguageModel) -> Unit =
  #| (self) => { self.oncontextoverflow = null }

pub extern "js" fn LanguageModel::measure_input_usage(self : LanguageModel, input : LanguageModelPrompt) -> Promise[Double] =
  #| (self, input) => self.measureInputUsage(input)

extern "js" fn LanguageModel::measure_input_usage_with_options_ffi(self : LanguageModel, input : LanguageModelPrompt, options : JsValue) -> Promise[Double] =
  #| (self, input, options) => self.measureInputUsage(input, options)

pub fn LanguageModel::measure_input_usage_with_options(self : LanguageModel, input : LanguageModelPrompt, options : LanguageModelPromptOptions) -> Promise[Double] {
  LanguageModel::measure_input_usage_with_options_ffi(self, input, options.to_js())
}

pub extern "js" fn LanguageModel::get_input_usage(self : LanguageModel) -> Double =
  #| (self) => self.inputUsage

pub extern "js" fn LanguageModel::get_input_quota(self : LanguageModel) -> Double =
  #| (self) => self.inputQuota

pub extern "js" fn LanguageModel::set_onquotaoverflow(self : LanguageModel, handler : (Event) -> Unit) -> Unit =
  #| (self, handler) => { self.onquotaoverflow = (e) => handler(e) }

pub extern "js" fn LanguageModel::clear_onquotaoverflow(self : LanguageModel) -> Unit =
  #| (self) => { self.onquotaoverflow = null }

pub extern "js" fn LanguageModel::get_top_k(self : LanguageModel) -> Int =
  #| (self) => self.topK

pub extern "js" fn LanguageModel::get_temperature(self : LanguageModel) -> Double =
  #| (self) => self.temperature

pub extern "js" fn LanguageModel::get_sampling_mode(self : LanguageModel) -> LanguageModelSamplingMode? =
  #| (self) => (() => { const v = self.samplingMode; return v == null ? undefined : ['most-predictable', 'predictable', 'slightly-predictable', 'balanced', 'slightly-creative', 'creative', 'most-creative'].indexOf(v); })()

pub extern "js" fn LanguageModel::clone(self : LanguageModel) -> Promise[Result[LanguageModel, LanguageModelCloneError]] =
  #| (self) => self.clone().then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'AbortError') return { $tag: 0, _0: e }; if (n === 'OperationError') return { $tag: 1, _0: e }; if (n === 'NotAllowedError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }))

extern "js" fn LanguageModel::clone_with_options_ffi(self : LanguageModel, options : JsValue) -> Promise[Result[LanguageModel, LanguageModelCloneError]] =
  #| (self, options) => self.clone(options).then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'AbortError') return { $tag: 0, _0: e }; if (n === 'OperationError') return { $tag: 1, _0: e }; if (n === 'NotAllowedError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }))

pub fn LanguageModel::clone_with_options(self : LanguageModel, options : LanguageModelCloneOptions) -> Promise[Result[LanguageModel, LanguageModelCloneError]] {
  LanguageModel::clone_with_options_ffi(self, options.to_js())
}

pub extern "js" fn LanguageModel::destroy(self : LanguageModel) -> Result[Unit, LanguageModelDestroyError] =
  #| (self) => (() => { try { self.destroy(); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NotAllowedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

extern "js" fn LanguageModel::prompt_with_array_of_language_model_message_ffi(self : LanguageModel, input : FixedArray[LanguageModelMessage], options : JsValue) -> Promise[Result[String, LanguageModelPromptError]] =
  #| (self, input, options) => self.prompt(input, options).then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'AbortError') return { $tag: 1, _0: e }; if (n === 'SyntaxError') return { $tag: 2, _0: e }; if (n === 'OperationError') return { $tag: 3, _0: e }; if (n === 'NotAllowedError') return { $tag: 4, _0: e }; if (n === 'NotSupportedError') return { $tag: 5, _0: e }; if (n === 'QuotaExceededError') return { $tag: 6, _0: e }; return { $tag: 7, _0: e }; })() }))

pub fn LanguageModel::prompt_with_array_of_language_model_message(self : LanguageModel, input : FixedArray[LanguageModelMessage], options : LanguageModelPromptOptions) -> Promise[Result[String, LanguageModelPromptError]] {
  LanguageModel::prompt_with_array_of_language_model_message_ffi(self, input, options.to_js())
}
extern "js" fn LanguageModel::prompt_with_string_ffi(self : LanguageModel, input : String, options : JsValue) -> Promise[Result[String, LanguageModelPromptError]] =
  #| (self, input, options) => self.prompt(input, options).then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'AbortError') return { $tag: 1, _0: e }; if (n === 'SyntaxError') return { $tag: 2, _0: e }; if (n === 'OperationError') return { $tag: 3, _0: e }; if (n === 'NotAllowedError') return { $tag: 4, _0: e }; if (n === 'NotSupportedError') return { $tag: 5, _0: e }; if (n === 'QuotaExceededError') return { $tag: 6, _0: e }; return { $tag: 7, _0: e }; })() }))

pub fn LanguageModel::prompt_with_string(self : LanguageModel, input : String, options : LanguageModelPromptOptions) -> Promise[Result[String, LanguageModelPromptError]] {
  LanguageModel::prompt_with_string_ffi(self, input, options.to_js())
}
extern "js" fn LanguageModel::prompt_streaming_with_array_of_language_model_message_ffi(self : LanguageModel, input : FixedArray[LanguageModelMessage], options : JsValue) -> Result[ReadableStream, LanguageModelPromptStreamingError] =
  #| (self, input, options) => (() => { try { return { $tag: 1, _0: self.promptStreaming(input, options) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'AbortError') return { $tag: 1, _0: e }; if (n === 'SyntaxError') return { $tag: 2, _0: e }; if (n === 'OperationError') return { $tag: 3, _0: e }; if (n === 'NotAllowedError') return { $tag: 4, _0: e }; if (n === 'NotSupportedError') return { $tag: 5, _0: e }; if (n === 'QuotaExceededError') return { $tag: 6, _0: e }; return { $tag: 7, _0: e }; })() }; } })()

pub fn LanguageModel::prompt_streaming_with_array_of_language_model_message(self : LanguageModel, input : FixedArray[LanguageModelMessage], options : LanguageModelPromptOptions) -> Result[ReadableStream, LanguageModelPromptStreamingError] {
  LanguageModel::prompt_streaming_with_array_of_language_model_message_ffi(self, input, options.to_js())
}
extern "js" fn LanguageModel::prompt_streaming_with_string_ffi(self : LanguageModel, input : String, options : JsValue) -> Result[ReadableStream, LanguageModelPromptStreamingError] =
  #| (self, input, options) => (() => { try { return { $tag: 1, _0: self.promptStreaming(input, options) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'AbortError') return { $tag: 1, _0: e }; if (n === 'SyntaxError') return { $tag: 2, _0: e }; if (n === 'OperationError') return { $tag: 3, _0: e }; if (n === 'NotAllowedError') return { $tag: 4, _0: e }; if (n === 'NotSupportedError') return { $tag: 5, _0: e }; if (n === 'QuotaExceededError') return { $tag: 6, _0: e }; return { $tag: 7, _0: e }; })() }; } })()

pub fn LanguageModel::prompt_streaming_with_string(self : LanguageModel, input : String, options : LanguageModelPromptOptions) -> Result[ReadableStream, LanguageModelPromptStreamingError] {
  LanguageModel::prompt_streaming_with_string_ffi(self, input, options.to_js())
}
extern "js" fn LanguageModel::append_with_array_of_language_model_message_ffi(self : LanguageModel, input : FixedArray[LanguageModelMessage], options : JsValue) -> Promise[Result[Unit, LanguageModelAppendError]] =
  #| (self, input, options) => self.append(input, options).then(r => ({ $tag: 1, _0: undefined })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'AbortError') return { $tag: 1, _0: e }; if (n === 'SyntaxError') return { $tag: 2, _0: e }; if (n === 'OperationError') return { $tag: 3, _0: e }; if (n === 'NotAllowedError') return { $tag: 4, _0: e }; if (n === 'NotSupportedError') return { $tag: 5, _0: e }; if (n === 'QuotaExceededError') return { $tag: 6, _0: e }; return { $tag: 7, _0: e }; })() }))

pub fn LanguageModel::append_with_array_of_language_model_message(self : LanguageModel, input : FixedArray[LanguageModelMessage], options : LanguageModelAppendOptions) -> Promise[Result[Unit, LanguageModelAppendError]] {
  LanguageModel::append_with_array_of_language_model_message_ffi(self, input, options.to_js())
}
extern "js" fn LanguageModel::append_with_string_ffi(self : LanguageModel, input : String, options : JsValue) -> Promise[Result[Unit, LanguageModelAppendError]] =
  #| (self, input, options) => self.append(input, options).then(r => ({ $tag: 1, _0: undefined })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'AbortError') return { $tag: 1, _0: e }; if (n === 'SyntaxError') return { $tag: 2, _0: e }; if (n === 'OperationError') return { $tag: 3, _0: e }; if (n === 'NotAllowedError') return { $tag: 4, _0: e }; if (n === 'NotSupportedError') return { $tag: 5, _0: e }; if (n === 'QuotaExceededError') return { $tag: 6, _0: e }; return { $tag: 7, _0: e }; })() }))

pub fn LanguageModel::append_with_string(self : LanguageModel, input : String, options : LanguageModelAppendOptions) -> Promise[Result[Unit, LanguageModelAppendError]] {
  LanguageModel::append_with_string_ffi(self, input, options.to_js())
}
extern "js" fn LanguageModel::measure_context_usage_with_array_of_language_model_message_ffi(self : LanguageModel, input : FixedArray[LanguageModelMessage], options : JsValue) -> Promise[Result[Double, LanguageModelMeasureContextUsageError]] =
  #| (self, input, options) => self.measureContextUsage(input, options).then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'AbortError') return { $tag: 1, _0: e }; if (n === 'SyntaxError') return { $tag: 2, _0: e }; if (n === 'NotAllowedError') return { $tag: 3, _0: e }; if (n === 'NotSupportedError') return { $tag: 4, _0: e }; return { $tag: 5, _0: e }; })() }))

pub fn LanguageModel::measure_context_usage_with_array_of_language_model_message(self : LanguageModel, input : FixedArray[LanguageModelMessage], options : LanguageModelPromptOptions) -> Promise[Result[Double, LanguageModelMeasureContextUsageError]] {
  LanguageModel::measure_context_usage_with_array_of_language_model_message_ffi(self, input, options.to_js())
}
extern "js" fn LanguageModel::measure_context_usage_with_string_ffi(self : LanguageModel, input : String, options : JsValue) -> Promise[Result[Double, LanguageModelMeasureContextUsageError]] =
  #| (self, input, options) => self.measureContextUsage(input, options).then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'AbortError') return { $tag: 1, _0: e }; if (n === 'SyntaxError') return { $tag: 2, _0: e }; if (n === 'NotAllowedError') return { $tag: 3, _0: e }; if (n === 'NotSupportedError') return { $tag: 4, _0: e }; return { $tag: 5, _0: e }; })() }))

pub fn LanguageModel::measure_context_usage_with_string(self : LanguageModel, input : String, options : LanguageModelPromptOptions) -> Promise[Result[Double, LanguageModelMeasureContextUsageError]] {
  LanguageModel::measure_context_usage_with_string_ffi(self, input, options.to_js())
}
extern "js" fn LanguageModel::measure_input_usage_with_array_of_language_model_message_ffi(self : LanguageModel, input : FixedArray[LanguageModelMessage], options : JsValue) -> Promise[Double] =
  #| (self, input, options) => self.measureInputUsage(input, options)

pub fn LanguageModel::measure_input_usage_with_array_of_language_model_message(self : LanguageModel, input : FixedArray[LanguageModelMessage], options : LanguageModelPromptOptions) -> Promise[Double] {
  LanguageModel::measure_input_usage_with_array_of_language_model_message_ffi(self, input, options.to_js())
}
extern "js" fn LanguageModel::measure_input_usage_with_string_ffi(self : LanguageModel, input : String, options : JsValue) -> Promise[Double] =
  #| (self, input, options) => self.measureInputUsage(input, options)

pub fn LanguageModel::measure_input_usage_with_string(self : LanguageModel, input : String, options : LanguageModelPromptOptions) -> Promise[Double] {
  LanguageModel::measure_input_usage_with_string_ffi(self, input, options.to_js())
}

///|
/// LanguageModelParams interface
pub type LanguageModelParams

pub extern "js" fn LanguageModelParams::to_js_value(self : LanguageModelParams) -> JsValue =
  #| (self) => self

/// Cast JsValue to LanguageModelParams (unchecked)
pub extern "js" fn LanguageModelParams::from_js_value(v : JsValue) -> LanguageModelParams =
  #| (v) => v

/// Safely cast JsValue to LanguageModelParams (checked with instanceof)
pub extern "js" fn LanguageModelParams::from_js_value_opt(v : JsValue) -> LanguageModelParams? =
  #| (v) => (v instanceof LanguageModelParams) ? { $tag: 1, _0: v } : { $tag: 0 }

/// Safely cast JsValue to LanguageModelParams (checked with instanceof)
pub extern "js" fn JsValue::as_language_model_params(self : JsValue) -> LanguageModelParams? =
  #| (self) => (self instanceof LanguageModelParams) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Cast JsValue to LanguageModelParams (unchecked)
pub extern "js" fn JsValue::to_language_model_params(self : JsValue) -> LanguageModelParams =
  #| (self) => self

pub extern "js" fn LanguageModelParams::get_default_top_k(self : LanguageModelParams) -> Int =
  #| (self) => self.defaultTopK

pub extern "js" fn LanguageModelParams::get_max_top_k(self : LanguageModelParams) -> Int =
  #| (self) => self.maxTopK

pub extern "js" fn LanguageModelParams::get_default_temperature(self : LanguageModelParams) -> Double =
  #| (self) => self.defaultTemperature

pub extern "js" fn LanguageModelParams::get_max_temperature(self : LanguageModelParams) -> Double =
  #| (self) => self.maxTemperature
