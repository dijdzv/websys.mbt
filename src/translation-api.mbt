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
  #|   confidence: self.confidence
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
  #|   confidence: v.confidence
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
extern "js" fn Translator::create_ffi(options : JsValue) -> Promise[Translator] =
  #| (options) => Translator.create(options)

///|
pub fn Translator::create(
  options : TranslatorCreateOptions,
) -> Promise[Translator] {
  Translator::create_ffi(options.to_js())
}

///|
extern "js" fn Translator::availability_ffi(
  options : JsValue,
) -> Promise[Availability] =
  #| (options) => Translator.availability(options)

///|
pub fn Translator::availability(
  options : TranslatorCreateCoreOptions,
) -> Promise[Availability] {
  Translator::availability_ffi(options.to_js())
}

///|
pub extern "js" fn Translator::translate(
  self : Translator,
  input : String,
) -> Promise[String] =
  #| (self, input) => self.translate(input)

///|
extern "js" fn Translator::translate_with_options_ffi(
  self : Translator,
  input : String,
  options : JsValue,
) -> Promise[String] =
  #| (self, input, options) => self.translate(input, options)

///|
pub fn Translator::translate_with_options(
  self : Translator,
  input : String,
  options : TranslatorTranslateOptions,
) -> Promise[String] {
  Translator::translate_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn Translator::translate_streaming(
  self : Translator,
  input : String,
) -> ReadableStream =
  #| (self, input) => self.translateStreaming(input)

///|
extern "js" fn Translator::translate_streaming_with_options_ffi(
  self : Translator,
  input : String,
  options : JsValue,
) -> ReadableStream =
  #| (self, input, options) => self.translateStreaming(input, options)

///|
pub fn Translator::translate_streaming_with_options(
  self : Translator,
  input : String,
  options : TranslatorTranslateOptions,
) -> ReadableStream {
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
) -> Promise[Double] =
  #| (self, input) => self.measureInputUsage(input)

///|
extern "js" fn Translator::measure_input_usage_with_options_ffi(
  self : Translator,
  input : String,
  options : JsValue,
) -> Promise[Double] =
  #| (self, input, options) => self.measureInputUsage(input, options)

///|
pub fn Translator::measure_input_usage_with_options(
  self : Translator,
  input : String,
  options : TranslatorTranslateOptions,
) -> Promise[Double] {
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
pub extern "js" fn LanguageDetector::create() -> Promise[LanguageDetector] =
  #| () => LanguageDetector.create()

///|
extern "js" fn LanguageDetector::create_with_options_ffi(
  options : JsValue,
) -> Promise[LanguageDetector] =
  #| (options) => LanguageDetector.create(options)

///|
pub fn LanguageDetector::create_with_options(
  options : LanguageDetectorCreateOptions,
) -> Promise[LanguageDetector] {
  LanguageDetector::create_with_options_ffi(options.to_js())
}

///|
pub extern "js" fn LanguageDetector::availability() -> Promise[Availability] =
  #| () => LanguageDetector.availability()

///|
extern "js" fn LanguageDetector::availability_with_options_ffi(
  options : JsValue,
) -> Promise[Availability] =
  #| (options) => LanguageDetector.availability(options)

///|
pub fn LanguageDetector::availability_with_options(
  options : LanguageDetectorCreateCoreOptions,
) -> Promise[Availability] {
  LanguageDetector::availability_with_options_ffi(options.to_js())
}

///|
pub extern "js" fn LanguageDetector::detect(
  self : LanguageDetector,
  input : String,
) -> Promise[Array[LanguageDetectionResult]] =
  #| (self, input) => self.detect(input)

///|
extern "js" fn LanguageDetector::detect_with_options_ffi(
  self : LanguageDetector,
  input : String,
  options : JsValue,
) -> Promise[Array[LanguageDetectionResult]] =
  #| (self, input, options) => self.detect(input, options)

///|
pub fn LanguageDetector::detect_with_options(
  self : LanguageDetector,
  input : String,
  options : LanguageDetectorDetectOptions,
) -> Promise[Array[LanguageDetectionResult]] {
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
) -> Promise[Double] =
  #| (self, input) => self.measureInputUsage(input)

///|
extern "js" fn LanguageDetector::measure_input_usage_with_options_ffi(
  self : LanguageDetector,
  input : String,
  options : JsValue,
) -> Promise[Double] =
  #| (self, input, options) => self.measureInputUsage(input, options)

///|
pub fn LanguageDetector::measure_input_usage_with_options(
  self : LanguageDetector,
  input : String,
  options : LanguageDetectorDetectOptions,
) -> Promise[Double] {
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
