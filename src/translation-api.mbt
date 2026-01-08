// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/translation-api

///|
/// TranslatorCreateCoreOptions dictionary
pub struct TranslatorCreateCoreOptions {
  sourceLanguage : String
  targetLanguage : String
}

///|
/// Create a new TranslatorCreateCoreOptions with default values
pub fn TranslatorCreateCoreOptions::default() -> TranslatorCreateCoreOptions {
  TranslatorCreateCoreOptions::{ sourceLanguage: "", targetLanguage: "" }
}

///|
/// Convert to JsValue
pub extern "js" fn TranslatorCreateCoreOptions::to_js(
  self : TranslatorCreateCoreOptions,
) -> JsValue =
  #| (self) => ({
  #|   sourceLanguage: self.sourceLanguage,
  #|   targetLanguage: self.targetLanguage
  #| })

///|
/// TranslatorCreateOptions dictionary
pub struct TranslatorCreateOptions {
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
/// Convert to JsValue
pub extern "js" fn TranslatorCreateOptions::to_js(
  self : TranslatorCreateOptions,
) -> JsValue =
  #| (self) => ({
  #|   sourceLanguage: self.sourceLanguage,
  #|   targetLanguage: self.targetLanguage,
  #|   signal: self.signal,
  #|   monitor: self.monitor
  #| })

///|
/// TranslatorTranslateOptions dictionary
pub struct TranslatorTranslateOptions {
  signal : AbortSignal?
}

///|
/// Create a new TranslatorTranslateOptions with default values
pub fn TranslatorTranslateOptions::default() -> TranslatorTranslateOptions {
  TranslatorTranslateOptions::{ signal: None }
}

///|
/// Convert to JsValue
pub extern "js" fn TranslatorTranslateOptions::to_js(
  self : TranslatorTranslateOptions,
) -> JsValue =
  #| (self) => ({
  #|   signal: self.signal
  #| })

///|
/// LanguageDetectorCreateCoreOptions dictionary
pub struct LanguageDetectorCreateCoreOptions {
  expectedInputLanguages : Array[String]?
}

///|
/// Create a new LanguageDetectorCreateCoreOptions with default values
pub fn LanguageDetectorCreateCoreOptions::default() -> LanguageDetectorCreateCoreOptions {
  LanguageDetectorCreateCoreOptions::{ expectedInputLanguages: None }
}

///|
/// Convert to JsValue
pub extern "js" fn LanguageDetectorCreateCoreOptions::to_js(
  self : LanguageDetectorCreateCoreOptions,
) -> JsValue =
  #| (self) => ({
  #|   expectedInputLanguages: self.expectedInputLanguages
  #| })

///|
/// LanguageDetectorCreateOptions dictionary
pub struct LanguageDetectorCreateOptions {
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
/// Convert to JsValue
pub extern "js" fn LanguageDetectorCreateOptions::to_js(
  self : LanguageDetectorCreateOptions,
) -> JsValue =
  #| (self) => ({
  #|   expectedInputLanguages: self.expectedInputLanguages,
  #|   signal: self.signal,
  #|   monitor: self.monitor
  #| })

///|
/// LanguageDetectorDetectOptions dictionary
pub struct LanguageDetectorDetectOptions {
  signal : AbortSignal?
}

///|
/// Create a new LanguageDetectorDetectOptions with default values
pub fn LanguageDetectorDetectOptions::default() -> LanguageDetectorDetectOptions {
  LanguageDetectorDetectOptions::{ signal: None }
}

///|
/// Convert to JsValue
pub extern "js" fn LanguageDetectorDetectOptions::to_js(
  self : LanguageDetectorDetectOptions,
) -> JsValue =
  #| (self) => ({
  #|   signal: self.signal
  #| })

///|
/// LanguageDetectionResult dictionary
pub struct LanguageDetectionResult {
  detectedLanguage : String?
  confidence : Double?
}

///|
/// Create a new LanguageDetectionResult with default values
pub fn LanguageDetectionResult::default() -> LanguageDetectionResult {
  LanguageDetectionResult::{ detectedLanguage: None, confidence: None }
}

///|
/// Convert to JsValue
pub extern "js" fn LanguageDetectionResult::to_js(
  self : LanguageDetectionResult,
) -> JsValue =
  #| (self) => ({
  #|   detectedLanguage: self.detectedLanguage,
  #|   confidence: self.confidence
  #| })

///|
/// Translator interface
pub type Translator

///|
pub extern "js" fn Translator::to_js_value(self : Translator) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn Translator::create(
  options : TranslatorCreateOptions,
) -> Promise[Translator] =
  #| (options) => Translator.create(options)

///|
pub extern "js" fn Translator::availability(
  options : TranslatorCreateCoreOptions,
) -> Promise[Availability] =
  #| (options) => Translator.availability(options)

///|
pub extern "js" fn Translator::translate(
  self : Translator,
  input : String,
) -> Promise[String] =
  #| (self, input) => self.translate(input)

///|
pub extern "js" fn Translator::translate_with_options(
  self : Translator,
  input : String,
  options : TranslatorTranslateOptions,
) -> Promise[String] =
  #| (self, input, options) => self.translate(input, options)

///|
pub extern "js" fn Translator::translate_streaming(
  self : Translator,
  input : String,
) -> ReadableStream =
  #| (self, input) => self.translateStreaming(input)

///|
pub extern "js" fn Translator::translate_streaming_with_options(
  self : Translator,
  input : String,
  options : TranslatorTranslateOptions,
) -> ReadableStream =
  #| (self, input, options) => self.translateStreaming(input, options)

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
pub extern "js" fn Translator::measure_input_usage_with_options(
  self : Translator,
  input : String,
  options : TranslatorTranslateOptions,
) -> Promise[Double] =
  #| (self, input, options) => self.measureInputUsage(input, options)

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
pub extern "js" fn LanguageDetector::create(
  options : LanguageDetectorCreateOptions,
) -> Promise[LanguageDetector] =
  #| (options) => LanguageDetector.create(options)

///|
pub extern "js" fn LanguageDetector::availability(
  options : LanguageDetectorCreateCoreOptions,
) -> Promise[Availability] =
  #| (options) => LanguageDetector.availability(options)

///|
pub extern "js" fn LanguageDetector::detect(
  self : LanguageDetector,
  input : String,
) -> Promise[Array[LanguageDetectionResult]] =
  #| (self, input) => self.detect(input)

///|
pub extern "js" fn LanguageDetector::detect_with_options(
  self : LanguageDetector,
  input : String,
  options : LanguageDetectorDetectOptions,
) -> Promise[Array[LanguageDetectionResult]] =
  #| (self, input, options) => self.detect(input, options)

///|
pub extern "js" fn LanguageDetector::get_expected_input_languages(
  self : LanguageDetector,
) -> JsValue? =
  #| (self) => self.expectedInputLanguages

///|
pub extern "js" fn LanguageDetector::measure_input_usage(
  self : LanguageDetector,
  input : String,
) -> Promise[Double] =
  #| (self, input) => self.measureInputUsage(input)

///|
pub extern "js" fn LanguageDetector::measure_input_usage_with_options(
  self : LanguageDetector,
  input : String,
  options : LanguageDetectorDetectOptions,
) -> Promise[Double] =
  #| (self, input, options) => self.measureInputUsage(input, options)

///|
pub extern "js" fn LanguageDetector::get_input_quota(
  self : LanguageDetector,
) -> Double =
  #| (self) => self.inputQuota

///|
pub extern "js" fn LanguageDetector::destroy(self : LanguageDetector) -> Unit =
  #| (self) => self.destroy()
