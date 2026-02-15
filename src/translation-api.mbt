// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/translation-api

///|
/// TranslatorCreateCoreOptions dictionary
pub(all) struct TranslatorCreateCoreOptions {
  sourceLanguage : String
  targetLanguage : String
}

///|
/// Create a new TranslatorCreateCoreOptions with default values
pub fn TranslatorCreateCoreOptions::default() -> TranslatorCreateCoreOptions {
  TranslatorCreateCoreOptions::{ sourceLanguage: "", targetLanguage: "" }
}

///|
extern "js" fn TranslatorCreateCoreOptions::to_js_ffi(
  self : TranslatorCreateCoreOptions,
) -> JsValue =
  #| (self) => ({
  #|   sourceLanguage: self.sourceLanguage,
  #|   targetLanguage: self.targetLanguage
  #| })

///|
/// Convert to JsValue
pub fn TranslatorCreateCoreOptions::to_js(
  self : TranslatorCreateCoreOptions,
) -> JsValue {
  TranslatorCreateCoreOptions::to_js_ffi(self)
}

///|
extern "js" fn TranslatorCreateCoreOptions::from_js_ffi(
  value : JsValue,
) -> TranslatorCreateCoreOptions =
  #| (v) => ({
  #|   sourceLanguage: v.sourceLanguage,
  #|   targetLanguage: v.targetLanguage
  #| })

///|
/// Convert from JsValue
pub fn TranslatorCreateCoreOptions::from_js(
  value : JsValue,
) -> TranslatorCreateCoreOptions {
  TranslatorCreateCoreOptions::from_js_ffi(value)
}

///|
/// TranslatorCreateOptions dictionary
pub(all) struct TranslatorCreateOptions {
  sourceLanguage : String
  targetLanguage : String
  signal : AbortSignal?
  monitor : CreateMonitorCallback?
}

///|
/// Create a new TranslatorCreateOptions with default values
pub fn TranslatorCreateOptions::default() -> TranslatorCreateOptions {
  TranslatorCreateOptions::{
    sourceLanguage: "",
    targetLanguage: "",
    signal: None,
    monitor: None,
  }
}

///|
extern "js" fn TranslatorCreateOptions::to_js_ffi(
  self : TranslatorCreateOptions,
) -> JsValue =
  #| (self) => ({
  #|   sourceLanguage: self.sourceLanguage,
  #|   targetLanguage: self.targetLanguage,
  #|   signal: ((() => { const v = self.signal; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   monitor: ((() => { const v = self.monitor; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn TranslatorCreateOptions::to_js(
  self : TranslatorCreateOptions,
) -> JsValue {
  TranslatorCreateOptions::to_js_ffi(self)
}

///|
extern "js" fn TranslatorCreateOptions::from_js_ffi(
  value : JsValue,
) -> TranslatorCreateOptions =
  #| (v) => ({
  #|   sourceLanguage: v.sourceLanguage,
  #|   targetLanguage: v.targetLanguage,
  #|   signal: (v.signal === undefined ? { $tag: 0 } : { $tag: 1, _0: v.signal }),
  #|   monitor: (v.monitor === undefined ? { $tag: 0 } : { $tag: 1, _0: v.monitor })
  #| })

///|
/// Convert from JsValue
pub fn TranslatorCreateOptions::from_js(
  value : JsValue,
) -> TranslatorCreateOptions {
  TranslatorCreateOptions::from_js_ffi(value)
}

///|
/// TranslatorTranslateOptions dictionary
pub(all) struct TranslatorTranslateOptions {
  signal : AbortSignal?
}

///|
/// Create a new TranslatorTranslateOptions with default values
pub fn TranslatorTranslateOptions::default() -> TranslatorTranslateOptions {
  TranslatorTranslateOptions::{ signal: None }
}

///|
extern "js" fn TranslatorTranslateOptions::to_js_ffi(
  self : TranslatorTranslateOptions,
) -> JsValue =
  #| (self) => ({
  #|   signal: ((() => { const v = self.signal; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn TranslatorTranslateOptions::to_js(
  self : TranslatorTranslateOptions,
) -> JsValue {
  TranslatorTranslateOptions::to_js_ffi(self)
}

///|
extern "js" fn TranslatorTranslateOptions::from_js_ffi(
  value : JsValue,
) -> TranslatorTranslateOptions =
  #| (v) => ({
  #|   signal: (v.signal === undefined ? { $tag: 0 } : { $tag: 1, _0: v.signal })
  #| })

///|
/// Convert from JsValue
pub fn TranslatorTranslateOptions::from_js(
  value : JsValue,
) -> TranslatorTranslateOptions {
  TranslatorTranslateOptions::from_js_ffi(value)
}

///|
/// LanguageDetectorCreateCoreOptions dictionary
pub(all) struct LanguageDetectorCreateCoreOptions {
  expectedInputLanguages : Array[String]?
}

///|
/// Create a new LanguageDetectorCreateCoreOptions with default values
pub fn LanguageDetectorCreateCoreOptions::default() -> LanguageDetectorCreateCoreOptions {
  LanguageDetectorCreateCoreOptions::{ expectedInputLanguages: None }
}

///|
extern "js" fn LanguageDetectorCreateCoreOptions::to_js_ffi(
  self : LanguageDetectorCreateCoreOptions,
) -> JsValue =
  #| (self) => ({
  #|   expectedInputLanguages: ((() => { const v = self.expectedInputLanguages; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn LanguageDetectorCreateCoreOptions::to_js(
  self : LanguageDetectorCreateCoreOptions,
) -> JsValue {
  LanguageDetectorCreateCoreOptions::to_js_ffi(self)
}

///|
extern "js" fn LanguageDetectorCreateCoreOptions::from_js_ffi(
  value : JsValue,
) -> LanguageDetectorCreateCoreOptions =
  #| (v) => ({
  #|   expectedInputLanguages: (v.expectedInputLanguages === undefined ? { $tag: 0 } : { $tag: 1, _0: v.expectedInputLanguages })
  #| })

///|
/// Convert from JsValue
pub fn LanguageDetectorCreateCoreOptions::from_js(
  value : JsValue,
) -> LanguageDetectorCreateCoreOptions {
  LanguageDetectorCreateCoreOptions::from_js_ffi(value)
}

///|
/// LanguageDetectorCreateOptions dictionary
pub(all) struct LanguageDetectorCreateOptions {
  expectedInputLanguages : Array[String]?
  signal : AbortSignal?
  monitor : CreateMonitorCallback?
}

///|
/// Create a new LanguageDetectorCreateOptions with default values
pub fn LanguageDetectorCreateOptions::default() -> LanguageDetectorCreateOptions {
  LanguageDetectorCreateOptions::{
    expectedInputLanguages: None,
    signal: None,
    monitor: None,
  }
}

///|
extern "js" fn LanguageDetectorCreateOptions::to_js_ffi(
  self : LanguageDetectorCreateOptions,
) -> JsValue =
  #| (self) => ({
  #|   expectedInputLanguages: ((() => { const v = self.expectedInputLanguages; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   signal: ((() => { const v = self.signal; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   monitor: ((() => { const v = self.monitor; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn LanguageDetectorCreateOptions::to_js(
  self : LanguageDetectorCreateOptions,
) -> JsValue {
  LanguageDetectorCreateOptions::to_js_ffi(self)
}

///|
extern "js" fn LanguageDetectorCreateOptions::from_js_ffi(
  value : JsValue,
) -> LanguageDetectorCreateOptions =
  #| (v) => ({
  #|   expectedInputLanguages: (v.expectedInputLanguages === undefined ? { $tag: 0 } : { $tag: 1, _0: v.expectedInputLanguages }),
  #|   signal: (v.signal === undefined ? { $tag: 0 } : { $tag: 1, _0: v.signal }),
  #|   monitor: (v.monitor === undefined ? { $tag: 0 } : { $tag: 1, _0: v.monitor })
  #| })

///|
/// Convert from JsValue
pub fn LanguageDetectorCreateOptions::from_js(
  value : JsValue,
) -> LanguageDetectorCreateOptions {
  LanguageDetectorCreateOptions::from_js_ffi(value)
}

///|
/// LanguageDetectorDetectOptions dictionary
pub(all) struct LanguageDetectorDetectOptions {
  signal : AbortSignal?
}

///|
/// Create a new LanguageDetectorDetectOptions with default values
pub fn LanguageDetectorDetectOptions::default() -> LanguageDetectorDetectOptions {
  LanguageDetectorDetectOptions::{ signal: None }
}

///|
extern "js" fn LanguageDetectorDetectOptions::to_js_ffi(
  self : LanguageDetectorDetectOptions,
) -> JsValue =
  #| (self) => ({
  #|   signal: ((() => { const v = self.signal; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn LanguageDetectorDetectOptions::to_js(
  self : LanguageDetectorDetectOptions,
) -> JsValue {
  LanguageDetectorDetectOptions::to_js_ffi(self)
}

///|
extern "js" fn LanguageDetectorDetectOptions::from_js_ffi(
  value : JsValue,
) -> LanguageDetectorDetectOptions =
  #| (v) => ({
  #|   signal: (v.signal === undefined ? { $tag: 0 } : { $tag: 1, _0: v.signal })
  #| })

///|
/// Convert from JsValue
pub fn LanguageDetectorDetectOptions::from_js(
  value : JsValue,
) -> LanguageDetectorDetectOptions {
  LanguageDetectorDetectOptions::from_js_ffi(value)
}

///|
/// LanguageDetectionResult dictionary
pub(all) struct LanguageDetectionResult {
  detectedLanguage : String?
  confidence : Double?
}

///|
/// Create a new LanguageDetectionResult with default values
pub fn LanguageDetectionResult::default() -> LanguageDetectionResult {
  LanguageDetectionResult::{ detectedLanguage: None, confidence: None }
}

///|
extern "js" fn LanguageDetectionResult::to_js_ffi(
  self : LanguageDetectionResult,
) -> JsValue =
  #| (self) => ({
  #|   detectedLanguage: self.detectedLanguage,
  #|   confidence: ((() => { const v = self.confidence; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn LanguageDetectionResult::to_js(
  self : LanguageDetectionResult,
) -> JsValue {
  LanguageDetectionResult::to_js_ffi(self)
}

///|
extern "js" fn LanguageDetectionResult::from_js_ffi(
  value : JsValue,
) -> LanguageDetectionResult =
  #| (v) => ({
  #|   detectedLanguage: v.detectedLanguage,
  #|   confidence: (v.confidence === undefined ? { $tag: 0 } : { $tag: 1, _0: v.confidence })
  #| })

///|
/// Convert from JsValue
pub fn LanguageDetectionResult::from_js(
  value : JsValue,
) -> LanguageDetectionResult {
  LanguageDetectionResult::from_js_ffi(value)
}

///|
/// Translator interface
pub type Translator

///|
pub extern "js" fn Translator::to_js_value(self : Translator) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Translator (unchecked)
pub extern "js" fn Translator::from_js_value(v : JsValue) -> Translator =
  #| (v) => v

///|
/// Safely cast JsValue to Translator (checked with instanceof)
pub extern "js" fn Translator::from_js_value_opt(v : JsValue) -> Translator? =
  #| (v) => (v instanceof Translator) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Translator (checked with instanceof)
pub extern "js" fn JsValue::as_translator(self : JsValue) -> Translator? =
  #| (self) => (self instanceof Translator) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Translator (unchecked)
pub extern "js" fn JsValue::to_translator(self : JsValue) -> Translator =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum TranslatorCreateError {
  NetworkError(JsError)
  OperationError(JsError)
  NotAllowedError(JsError)
  InvalidStateError(JsError)
  NotSupportedError(JsError)
  OtherError(JsError)
}

///|
/// Error type for throwing methods
pub(all) enum TranslatorAvailabilityError {
  UnknownError(JsError)
  OperationError(JsError)
  InvalidStateError(JsError)
  OtherError(JsError)
}

///|
/// Error type for throwing methods
pub(all) enum TranslatorTranslateError {
  AbortError(JsError)
  InvalidStateError(JsError)
  QuotaExceededError(JsError)
  OtherError(JsError)
}

///|
/// Error type for throwing methods
pub(all) enum TranslatorTranslateStreamingError {
  AbortError(JsError)
  InvalidStateError(JsError)
  QuotaExceededError(JsError)
  OtherError(JsError)
}

///|
/// Error type for throwing methods
pub(all) enum TranslatorMeasureInputUsageError {
  UnknownError(JsError)
  NotAllowedError(JsError)
  NotReadableError(JsError)
  OtherError(JsError)
}

///|
extern "js" fn Translator::create_ffi(
  options : JsValue,
) -> Promise[Result[Translator, TranslatorCreateError]] =
  #| (options) => Translator.create(options).then(v => ({ $tag: 1, _0: v })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NetworkError') return { $tag: 0, _0: e }; if (n === 'OperationError') return { $tag: 1, _0: e }; if (n === 'NotAllowedError') return { $tag: 2, _0: e }; if (n === 'InvalidStateError') return { $tag: 3, _0: e }; if (n === 'NotSupportedError') return { $tag: 4, _0: e }; return { $tag: 5, _0: e }; })() }))

///|
pub fn Translator::create(
  options : TranslatorCreateOptions,
) -> Promise[Result[Translator, TranslatorCreateError]] {
  Translator::create_ffi(options.to_js())
}

///|
extern "js" fn Translator::availability_ffi(
  options : JsValue,
) -> Promise[Result[Availability, TranslatorAvailabilityError]] =
  #| (options) => Translator.availability(options).then(v => ({ $tag: 1, _0: v })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'UnknownError') return { $tag: 0, _0: e }; if (n === 'OperationError') return { $tag: 1, _0: e }; if (n === 'InvalidStateError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }))

///|
pub fn Translator::availability(
  options : TranslatorCreateCoreOptions,
) -> Promise[Result[Availability, TranslatorAvailabilityError]] {
  Translator::availability_ffi(options.to_js())
}

///|
pub extern "js" fn Translator::translate(
  self : Translator,
  input : String,
) -> Promise[Result[String, TranslatorTranslateError]] =
  #| (self, input) => self.translate(input).then(v => ({ $tag: 1, _0: v })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'AbortError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'QuotaExceededError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }))

///|
extern "js" fn Translator::translate_with_options_ffi(
  self : Translator,
  input : String,
  options : JsValue,
) -> Promise[Result[String, TranslatorTranslateError]] =
  #| (self, input, options) => self.translate(input, options).then(v => ({ $tag: 1, _0: v })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'AbortError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'QuotaExceededError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }))

///|
pub fn Translator::translate_with_options(
  self : Translator,
  input : String,
  options : TranslatorTranslateOptions,
) -> Promise[Result[String, TranslatorTranslateError]] {
  Translator::translate_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn Translator::translate_streaming(
  self : Translator,
  input : String,
) -> Result[ReadableStream, TranslatorTranslateStreamingError] =
  #| (self, input) => (() => { try { return { $tag: 1, _0: self.translateStreaming(input) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'AbortError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'QuotaExceededError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }; } })()

///|
extern "js" fn Translator::translate_streaming_with_options_ffi(
  self : Translator,
  input : String,
  options : JsValue,
) -> Result[ReadableStream, TranslatorTranslateStreamingError] =
  #| (self, input, options) => (() => { try { return { $tag: 1, _0: self.translateStreaming(input, options) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'AbortError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'QuotaExceededError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }; } })()

///|
pub fn Translator::translate_streaming_with_options(
  self : Translator,
  input : String,
  options : TranslatorTranslateOptions,
) -> Result[ReadableStream, TranslatorTranslateStreamingError] {
  Translator::translate_streaming_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn Translator::get_source_language(self : Translator) -> String =
  #| (self) => self.sourceLanguage

///|
pub extern "js" fn Translator::get_target_language(self : Translator) -> String =
  #| (self) => self.targetLanguage

///|
pub extern "js" fn Translator::measure_input_usage(
  self : Translator,
  input : String,
) -> Promise[Result[Double, TranslatorMeasureInputUsageError]] =
  #| (self, input) => self.measureInputUsage(input).then(v => ({ $tag: 1, _0: v })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'UnknownError') return { $tag: 0, _0: e }; if (n === 'NotAllowedError') return { $tag: 1, _0: e }; if (n === 'NotReadableError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }))

///|
extern "js" fn Translator::measure_input_usage_with_options_ffi(
  self : Translator,
  input : String,
  options : JsValue,
) -> Promise[Result[Double, TranslatorMeasureInputUsageError]] =
  #| (self, input, options) => self.measureInputUsage(input, options).then(v => ({ $tag: 1, _0: v })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'UnknownError') return { $tag: 0, _0: e }; if (n === 'NotAllowedError') return { $tag: 1, _0: e }; if (n === 'NotReadableError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }))

///|
pub fn Translator::measure_input_usage_with_options(
  self : Translator,
  input : String,
  options : TranslatorTranslateOptions,
) -> Promise[Result[Double, TranslatorMeasureInputUsageError]] {
  Translator::measure_input_usage_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn Translator::get_input_quota(self : Translator) -> Double =
  #| (self) => self.inputQuota

///|
pub extern "js" fn Translator::destroy(self : Translator) -> Unit =
  #| (self) => self.destroy()

///|
/// LanguageDetector interface
pub type LanguageDetector

///|
pub extern "js" fn LanguageDetector::to_js_value(
  self : LanguageDetector,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to LanguageDetector (unchecked)
pub extern "js" fn LanguageDetector::from_js_value(
  v : JsValue,
) -> LanguageDetector =
  #| (v) => v

///|
/// Safely cast JsValue to LanguageDetector (checked with instanceof)
pub extern "js" fn LanguageDetector::from_js_value_opt(
  v : JsValue,
) -> LanguageDetector? =
  #| (v) => (v instanceof LanguageDetector) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to LanguageDetector (checked with instanceof)
pub extern "js" fn JsValue::as_language_detector(
  self : JsValue,
) -> LanguageDetector? =
  #| (self) => (self instanceof LanguageDetector) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to LanguageDetector (unchecked)
pub extern "js" fn JsValue::to_language_detector(
  self : JsValue,
) -> LanguageDetector =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum LanguageDetectorCreateError {
  NetworkError(JsError)
  OperationError(JsError)
  NotAllowedError(JsError)
  InvalidStateError(JsError)
  NotSupportedError(JsError)
  OtherError(JsError)
}

///|
/// Error type for throwing methods
pub(all) enum LanguageDetectorAvailabilityError {
  UnknownError(JsError)
  OperationError(JsError)
  InvalidStateError(JsError)
  OtherError(JsError)
}

///|
/// Error type for throwing methods
pub(all) enum LanguageDetectorDetectError {
  AbortError(JsError)
  InvalidStateError(JsError)
  QuotaExceededError(JsError)
  OtherError(JsError)
}

///|
/// Error type for throwing methods
pub(all) enum LanguageDetectorMeasureInputUsageError {
  UnknownError(JsError)
  NotAllowedError(JsError)
  OtherError(JsError)
}

///|
pub extern "js" fn LanguageDetector::create() -> Promise[
  Result[LanguageDetector, LanguageDetectorCreateError],
] =
  #| () => LanguageDetector.create().then(v => ({ $tag: 1, _0: v })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NetworkError') return { $tag: 0, _0: e }; if (n === 'OperationError') return { $tag: 1, _0: e }; if (n === 'NotAllowedError') return { $tag: 2, _0: e }; if (n === 'InvalidStateError') return { $tag: 3, _0: e }; if (n === 'NotSupportedError') return { $tag: 4, _0: e }; return { $tag: 5, _0: e }; })() }))

///|
extern "js" fn LanguageDetector::create_with_options_ffi(
  options : JsValue,
) -> Promise[Result[LanguageDetector, LanguageDetectorCreateError]] =
  #| (options) => LanguageDetector.create(options).then(v => ({ $tag: 1, _0: v })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NetworkError') return { $tag: 0, _0: e }; if (n === 'OperationError') return { $tag: 1, _0: e }; if (n === 'NotAllowedError') return { $tag: 2, _0: e }; if (n === 'InvalidStateError') return { $tag: 3, _0: e }; if (n === 'NotSupportedError') return { $tag: 4, _0: e }; return { $tag: 5, _0: e }; })() }))

///|
pub fn LanguageDetector::create_with_options(
  options : LanguageDetectorCreateOptions,
) -> Promise[Result[LanguageDetector, LanguageDetectorCreateError]] {
  LanguageDetector::create_with_options_ffi(options.to_js())
}

///|
pub extern "js" fn LanguageDetector::availability() -> Promise[
  Result[Availability, LanguageDetectorAvailabilityError],
] =
  #| () => LanguageDetector.availability().then(v => ({ $tag: 1, _0: v })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'UnknownError') return { $tag: 0, _0: e }; if (n === 'OperationError') return { $tag: 1, _0: e }; if (n === 'InvalidStateError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }))

///|
extern "js" fn LanguageDetector::availability_with_options_ffi(
  options : JsValue,
) -> Promise[Result[Availability, LanguageDetectorAvailabilityError]] =
  #| (options) => LanguageDetector.availability(options).then(v => ({ $tag: 1, _0: v })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'UnknownError') return { $tag: 0, _0: e }; if (n === 'OperationError') return { $tag: 1, _0: e }; if (n === 'InvalidStateError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }))

///|
pub fn LanguageDetector::availability_with_options(
  options : LanguageDetectorCreateCoreOptions,
) -> Promise[Result[Availability, LanguageDetectorAvailabilityError]] {
  LanguageDetector::availability_with_options_ffi(options.to_js())
}

///|
pub extern "js" fn LanguageDetector::detect(
  self : LanguageDetector,
  input : String,
) -> Promise[
  Result[Array[LanguageDetectionResult], LanguageDetectorDetectError],
] =
  #| (self, input) => self.detect(input).then(v => ({ $tag: 1, _0: v })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'AbortError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'QuotaExceededError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }))

///|
extern "js" fn LanguageDetector::detect_with_options_ffi(
  self : LanguageDetector,
  input : String,
  options : JsValue,
) -> Promise[
  Result[Array[LanguageDetectionResult], LanguageDetectorDetectError],
] =
  #| (self, input, options) => self.detect(input, options).then(v => ({ $tag: 1, _0: v })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'AbortError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'QuotaExceededError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }))

///|
pub fn LanguageDetector::detect_with_options(
  self : LanguageDetector,
  input : String,
  options : LanguageDetectorDetectOptions,
) -> Promise[
  Result[Array[LanguageDetectionResult], LanguageDetectorDetectError],
] {
  LanguageDetector::detect_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn LanguageDetector::get_expected_input_languages(
  self : LanguageDetector,
) -> Array[String] =
  #| (self) => self.expectedInputLanguages

///|
pub extern "js" fn LanguageDetector::measure_input_usage(
  self : LanguageDetector,
  input : String,
) -> Promise[Result[Double, LanguageDetectorMeasureInputUsageError]] =
  #| (self, input) => self.measureInputUsage(input).then(v => ({ $tag: 1, _0: v })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'UnknownError') return { $tag: 0, _0: e }; if (n === 'NotAllowedError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }))

///|
extern "js" fn LanguageDetector::measure_input_usage_with_options_ffi(
  self : LanguageDetector,
  input : String,
  options : JsValue,
) -> Promise[Result[Double, LanguageDetectorMeasureInputUsageError]] =
  #| (self, input, options) => self.measureInputUsage(input, options).then(v => ({ $tag: 1, _0: v })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'UnknownError') return { $tag: 0, _0: e }; if (n === 'NotAllowedError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }))

///|
pub fn LanguageDetector::measure_input_usage_with_options(
  self : LanguageDetector,
  input : String,
  options : LanguageDetectorDetectOptions,
) -> Promise[Result[Double, LanguageDetectorMeasureInputUsageError]] {
  LanguageDetector::measure_input_usage_with_options_ffi(
    self,
    input,
    options.to_js(),
  )
}

///|
pub extern "js" fn LanguageDetector::get_input_quota(
  self : LanguageDetector,
) -> Double =
  #| (self) => self.inputQuota

///|
pub extern "js" fn LanguageDetector::destroy(self : LanguageDetector) -> Unit =
  #| (self) => self.destroy()
