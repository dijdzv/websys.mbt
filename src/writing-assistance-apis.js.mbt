// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/writing-assistance-apis

///|
/// SummarizerType enum
pub(all) enum SummarizerType {
  Tldr
  Teaser
  KeyPoints
  Headline
}

/// Convert to string value
pub fn SummarizerType::to_string(self : SummarizerType) -> String {
  match self {
    Tldr => "tldr"
    Teaser => "teaser"
    KeyPoints => "key-points"
    Headline => "headline"
  }
}

/// Parse from string value
pub fn SummarizerType::from_string(s : String) -> SummarizerType? {
  match s {
    "tldr" => Some(Tldr)
    "teaser" => Some(Teaser)
    "key-points" => Some(KeyPoints)
    "headline" => Some(Headline)
    _ => None
  }
}

///|
/// SummarizerFormat enum
pub(all) enum SummarizerFormat {
  PlainText
  Markdown
}

/// Convert to string value
pub fn SummarizerFormat::to_string(self : SummarizerFormat) -> String {
  match self {
    PlainText => "plain-text"
    Markdown => "markdown"
  }
}

/// Parse from string value
pub fn SummarizerFormat::from_string(s : String) -> SummarizerFormat? {
  match s {
    "plain-text" => Some(PlainText)
    "markdown" => Some(Markdown)
    _ => None
  }
}

///|
/// SummarizerLength enum
pub(all) enum SummarizerLength {
  Short
  Medium
  Long
}

/// Convert to string value
pub fn SummarizerLength::to_string(self : SummarizerLength) -> String {
  match self {
    Short => "short"
    Medium => "medium"
    Long => "long"
  }
}

/// Parse from string value
pub fn SummarizerLength::from_string(s : String) -> SummarizerLength? {
  match s {
    "short" => Some(Short)
    "medium" => Some(Medium)
    "long" => Some(Long)
    _ => None
  }
}

///|
/// WriterTone enum
pub(all) enum WriterTone {
  Formal
  Neutral
  Casual
}

/// Convert to string value
pub fn WriterTone::to_string(self : WriterTone) -> String {
  match self {
    Formal => "formal"
    Neutral => "neutral"
    Casual => "casual"
  }
}

/// Parse from string value
pub fn WriterTone::from_string(s : String) -> WriterTone? {
  match s {
    "formal" => Some(Formal)
    "neutral" => Some(Neutral)
    "casual" => Some(Casual)
    _ => None
  }
}

///|
/// WriterFormat enum
pub(all) enum WriterFormat {
  PlainText
  Markdown
}

/// Convert to string value
pub fn WriterFormat::to_string(self : WriterFormat) -> String {
  match self {
    PlainText => "plain-text"
    Markdown => "markdown"
  }
}

/// Parse from string value
pub fn WriterFormat::from_string(s : String) -> WriterFormat? {
  match s {
    "plain-text" => Some(PlainText)
    "markdown" => Some(Markdown)
    _ => None
  }
}

///|
/// WriterLength enum
pub(all) enum WriterLength {
  Short
  Medium
  Long
}

/// Convert to string value
pub fn WriterLength::to_string(self : WriterLength) -> String {
  match self {
    Short => "short"
    Medium => "medium"
    Long => "long"
  }
}

/// Parse from string value
pub fn WriterLength::from_string(s : String) -> WriterLength? {
  match s {
    "short" => Some(Short)
    "medium" => Some(Medium)
    "long" => Some(Long)
    _ => None
  }
}

///|
/// RewriterTone enum
pub(all) enum RewriterTone {
  AsIs
  MoreFormal
  MoreCasual
}

/// Convert to string value
pub fn RewriterTone::to_string(self : RewriterTone) -> String {
  match self {
    AsIs => "as-is"
    MoreFormal => "more-formal"
    MoreCasual => "more-casual"
  }
}

/// Parse from string value
pub fn RewriterTone::from_string(s : String) -> RewriterTone? {
  match s {
    "as-is" => Some(AsIs)
    "more-formal" => Some(MoreFormal)
    "more-casual" => Some(MoreCasual)
    _ => None
  }
}

///|
/// RewriterFormat enum
pub(all) enum RewriterFormat {
  AsIs
  PlainText
  Markdown
}

/// Convert to string value
pub fn RewriterFormat::to_string(self : RewriterFormat) -> String {
  match self {
    AsIs => "as-is"
    PlainText => "plain-text"
    Markdown => "markdown"
  }
}

/// Parse from string value
pub fn RewriterFormat::from_string(s : String) -> RewriterFormat? {
  match s {
    "as-is" => Some(AsIs)
    "plain-text" => Some(PlainText)
    "markdown" => Some(Markdown)
    _ => None
  }
}

///|
/// RewriterLength enum
pub(all) enum RewriterLength {
  AsIs
  Shorter
  Longer
}

/// Convert to string value
pub fn RewriterLength::to_string(self : RewriterLength) -> String {
  match self {
    AsIs => "as-is"
    Shorter => "shorter"
    Longer => "longer"
  }
}

/// Parse from string value
pub fn RewriterLength::from_string(s : String) -> RewriterLength? {
  match s {
    "as-is" => Some(AsIs)
    "shorter" => Some(Shorter)
    "longer" => Some(Longer)
    _ => None
  }
}

///|
/// Availability enum
pub(all) enum Availability {
  Unavailable
  Downloadable
  Downloading
  Available
}

/// Convert to string value
pub fn Availability::to_string(self : Availability) -> String {
  match self {
    Unavailable => "unavailable"
    Downloadable => "downloadable"
    Downloading => "downloading"
    Available => "available"
  }
}

/// Parse from string value
pub fn Availability::from_string(s : String) -> Availability? {
  match s {
    "unavailable" => Some(Unavailable)
    "downloadable" => Some(Downloadable)
    "downloading" => Some(Downloading)
    "available" => Some(Available)
    _ => None
  }
}

/// CreateMonitorCallback callback interface
pub type CreateMonitorCallback

///|
/// SummarizerCreateCoreOptions dictionary
pub struct SummarizerCreateCoreOptions {
  type_ : SummarizerType?
  format : SummarizerFormat?
  length : SummarizerLength?
  expectedInputLanguages : JsValue?
  expectedContextLanguages : JsValue?
  outputLanguage : String?
}

/// Create a new SummarizerCreateCoreOptions with default values
pub fn SummarizerCreateCoreOptions::default() -> SummarizerCreateCoreOptions {
  SummarizerCreateCoreOptions::{
    type_: None,
    format: None,
    length: None,
    expectedInputLanguages: None,
    expectedContextLanguages: None,
    outputLanguage: None,
  }
}

/// Convert to JsValue
pub extern "js" fn SummarizerCreateCoreOptions::to_js(self : SummarizerCreateCoreOptions) -> JsValue =
  #| (self) => ({
  #|   type: self.type_,
  #|   format: self.format,
  #|   length: self.length,
  #|   expectedInputLanguages: self.expectedInputLanguages,
  #|   expectedContextLanguages: self.expectedContextLanguages,
  #|   outputLanguage: self.outputLanguage
  #| })

///|
/// SummarizerCreateOptions dictionary
pub struct SummarizerCreateOptions {
  type_ : SummarizerType?
  format : SummarizerFormat?
  length : SummarizerLength?
  expectedInputLanguages : JsValue?
  expectedContextLanguages : JsValue?
  outputLanguage : String?
  signal : AbortSignal?
  monitor : CreateMonitorCallback?
  sharedContext : String?
}

/// Create a new SummarizerCreateOptions with default values
pub fn SummarizerCreateOptions::default() -> SummarizerCreateOptions {
  SummarizerCreateOptions::{
    type_: None,
    format: None,
    length: None,
    expectedInputLanguages: None,
    expectedContextLanguages: None,
    outputLanguage: None,
    signal: None,
    monitor: None,
    sharedContext: None,
  }
}

/// Convert to JsValue
pub extern "js" fn SummarizerCreateOptions::to_js(self : SummarizerCreateOptions) -> JsValue =
  #| (self) => ({
  #|   type: self.type_,
  #|   format: self.format,
  #|   length: self.length,
  #|   expectedInputLanguages: self.expectedInputLanguages,
  #|   expectedContextLanguages: self.expectedContextLanguages,
  #|   outputLanguage: self.outputLanguage,
  #|   signal: self.signal,
  #|   monitor: self.monitor,
  #|   sharedContext: self.sharedContext
  #| })

///|
/// SummarizerSummarizeOptions dictionary
pub struct SummarizerSummarizeOptions {
  signal : AbortSignal?
  context : String?
}

/// Create a new SummarizerSummarizeOptions with default values
pub fn SummarizerSummarizeOptions::default() -> SummarizerSummarizeOptions {
  SummarizerSummarizeOptions::{
    signal: None,
    context: None,
  }
}

/// Convert to JsValue
pub extern "js" fn SummarizerSummarizeOptions::to_js(self : SummarizerSummarizeOptions) -> JsValue =
  #| (self) => ({
  #|   signal: self.signal,
  #|   context: self.context
  #| })

///|
/// WriterCreateCoreOptions dictionary
pub struct WriterCreateCoreOptions {
  tone : WriterTone?
  format : WriterFormat?
  length : WriterLength?
  expectedInputLanguages : JsValue?
  expectedContextLanguages : JsValue?
  outputLanguage : String?
}

/// Create a new WriterCreateCoreOptions with default values
pub fn WriterCreateCoreOptions::default() -> WriterCreateCoreOptions {
  WriterCreateCoreOptions::{
    tone: None,
    format: None,
    length: None,
    expectedInputLanguages: None,
    expectedContextLanguages: None,
    outputLanguage: None,
  }
}

/// Convert to JsValue
pub extern "js" fn WriterCreateCoreOptions::to_js(self : WriterCreateCoreOptions) -> JsValue =
  #| (self) => ({
  #|   tone: self.tone,
  #|   format: self.format,
  #|   length: self.length,
  #|   expectedInputLanguages: self.expectedInputLanguages,
  #|   expectedContextLanguages: self.expectedContextLanguages,
  #|   outputLanguage: self.outputLanguage
  #| })

///|
/// WriterCreateOptions dictionary
pub struct WriterCreateOptions {
  tone : WriterTone?
  format : WriterFormat?
  length : WriterLength?
  expectedInputLanguages : JsValue?
  expectedContextLanguages : JsValue?
  outputLanguage : String?
  signal : AbortSignal?
  monitor : CreateMonitorCallback?
  sharedContext : String?
}

/// Create a new WriterCreateOptions with default values
pub fn WriterCreateOptions::default() -> WriterCreateOptions {
  WriterCreateOptions::{
    tone: None,
    format: None,
    length: None,
    expectedInputLanguages: None,
    expectedContextLanguages: None,
    outputLanguage: None,
    signal: None,
    monitor: None,
    sharedContext: None,
  }
}

/// Convert to JsValue
pub extern "js" fn WriterCreateOptions::to_js(self : WriterCreateOptions) -> JsValue =
  #| (self) => ({
  #|   tone: self.tone,
  #|   format: self.format,
  #|   length: self.length,
  #|   expectedInputLanguages: self.expectedInputLanguages,
  #|   expectedContextLanguages: self.expectedContextLanguages,
  #|   outputLanguage: self.outputLanguage,
  #|   signal: self.signal,
  #|   monitor: self.monitor,
  #|   sharedContext: self.sharedContext
  #| })

///|
/// WriterWriteOptions dictionary
pub struct WriterWriteOptions {
  context : String?
  signal : AbortSignal?
}

/// Create a new WriterWriteOptions with default values
pub fn WriterWriteOptions::default() -> WriterWriteOptions {
  WriterWriteOptions::{
    context: None,
    signal: None,
  }
}

/// Convert to JsValue
pub extern "js" fn WriterWriteOptions::to_js(self : WriterWriteOptions) -> JsValue =
  #| (self) => ({
  #|   context: self.context,
  #|   signal: self.signal
  #| })

///|
/// RewriterCreateCoreOptions dictionary
pub struct RewriterCreateCoreOptions {
  tone : RewriterTone?
  format : RewriterFormat?
  length : RewriterLength?
  expectedInputLanguages : JsValue?
  expectedContextLanguages : JsValue?
  outputLanguage : String?
}

/// Create a new RewriterCreateCoreOptions with default values
pub fn RewriterCreateCoreOptions::default() -> RewriterCreateCoreOptions {
  RewriterCreateCoreOptions::{
    tone: None,
    format: None,
    length: None,
    expectedInputLanguages: None,
    expectedContextLanguages: None,
    outputLanguage: None,
  }
}

/// Convert to JsValue
pub extern "js" fn RewriterCreateCoreOptions::to_js(self : RewriterCreateCoreOptions) -> JsValue =
  #| (self) => ({
  #|   tone: self.tone,
  #|   format: self.format,
  #|   length: self.length,
  #|   expectedInputLanguages: self.expectedInputLanguages,
  #|   expectedContextLanguages: self.expectedContextLanguages,
  #|   outputLanguage: self.outputLanguage
  #| })

///|
/// RewriterCreateOptions dictionary
pub struct RewriterCreateOptions {
  tone : RewriterTone?
  format : RewriterFormat?
  length : RewriterLength?
  expectedInputLanguages : JsValue?
  expectedContextLanguages : JsValue?
  outputLanguage : String?
  signal : AbortSignal?
  monitor : CreateMonitorCallback?
  sharedContext : String?
}

/// Create a new RewriterCreateOptions with default values
pub fn RewriterCreateOptions::default() -> RewriterCreateOptions {
  RewriterCreateOptions::{
    tone: None,
    format: None,
    length: None,
    expectedInputLanguages: None,
    expectedContextLanguages: None,
    outputLanguage: None,
    signal: None,
    monitor: None,
    sharedContext: None,
  }
}

/// Convert to JsValue
pub extern "js" fn RewriterCreateOptions::to_js(self : RewriterCreateOptions) -> JsValue =
  #| (self) => ({
  #|   tone: self.tone,
  #|   format: self.format,
  #|   length: self.length,
  #|   expectedInputLanguages: self.expectedInputLanguages,
  #|   expectedContextLanguages: self.expectedContextLanguages,
  #|   outputLanguage: self.outputLanguage,
  #|   signal: self.signal,
  #|   monitor: self.monitor,
  #|   sharedContext: self.sharedContext
  #| })

///|
/// RewriterRewriteOptions dictionary
pub struct RewriterRewriteOptions {
  context : String?
  signal : AbortSignal?
}

/// Create a new RewriterRewriteOptions with default values
pub fn RewriterRewriteOptions::default() -> RewriterRewriteOptions {
  RewriterRewriteOptions::{
    context: None,
    signal: None,
  }
}

/// Convert to JsValue
pub extern "js" fn RewriterRewriteOptions::to_js(self : RewriterRewriteOptions) -> JsValue =
  #| (self) => ({
  #|   context: self.context,
  #|   signal: self.signal
  #| })

///|
/// Summarizer interface
pub type Summarizer

pub extern "js" fn Summarizer::to_js_value(self : Summarizer) -> JsValue =
  #| (self) => self

pub extern "js" fn Summarizer::create(options : SummarizerCreateOptions) -> JsValue =
  #| (options) => Summarizer.create(options)

pub extern "js" fn Summarizer::availability(options : SummarizerCreateCoreOptions) -> JsValue =
  #| (options) => Summarizer.availability(options)

pub extern "js" fn Summarizer::summarize(self : Summarizer, input : String, options : SummarizerSummarizeOptions) -> JsValue =
  #| (self, input, options) => self.summarize(input, options)

pub extern "js" fn Summarizer::summarize_streaming(self : Summarizer, input : String, options : SummarizerSummarizeOptions) -> ReadableStream =
  #| (self, input, options) => self.summarizeStreaming(input, options)

pub extern "js" fn Summarizer::get_shared_context(self : Summarizer) -> String =
  #| (self) => self.sharedContext

pub extern "js" fn Summarizer::get_type(self : Summarizer) -> SummarizerType =
  #| (self) => self.type

pub extern "js" fn Summarizer::get_format(self : Summarizer) -> SummarizerFormat =
  #| (self) => self.format

pub extern "js" fn Summarizer::get_length(self : Summarizer) -> SummarizerLength =
  #| (self) => self.length

pub extern "js" fn Summarizer::get_expected_input_languages(self : Summarizer) -> JsValue? =
  #| (self) => self.expectedInputLanguages

pub extern "js" fn Summarizer::get_expected_context_languages(self : Summarizer) -> JsValue? =
  #| (self) => self.expectedContextLanguages

pub extern "js" fn Summarizer::get_output_language(self : Summarizer) -> String? =
  #| (self) => self.outputLanguage

pub extern "js" fn Summarizer::measure_input_usage(self : Summarizer, input : String, options : SummarizerSummarizeOptions) -> JsValue =
  #| (self, input, options) => self.measureInputUsage(input, options)

pub extern "js" fn Summarizer::get_input_quota(self : Summarizer) -> Double =
  #| (self) => self.inputQuota

pub extern "js" fn Summarizer::destroy(self : Summarizer) -> Unit =
  #| (self) => self.destroy()

///|
/// Writer interface
pub type Writer

pub extern "js" fn Writer::to_js_value(self : Writer) -> JsValue =
  #| (self) => self

pub extern "js" fn Writer::create(options : WriterCreateOptions) -> JsValue =
  #| (options) => Writer.create(options)

pub extern "js" fn Writer::availability(options : WriterCreateCoreOptions) -> JsValue =
  #| (options) => Writer.availability(options)

pub extern "js" fn Writer::write(self : Writer, input : String, options : WriterWriteOptions) -> JsValue =
  #| (self, input, options) => self.write(input, options)

pub extern "js" fn Writer::write_streaming(self : Writer, input : String, options : WriterWriteOptions) -> ReadableStream =
  #| (self, input, options) => self.writeStreaming(input, options)

pub extern "js" fn Writer::get_shared_context(self : Writer) -> String =
  #| (self) => self.sharedContext

pub extern "js" fn Writer::get_tone(self : Writer) -> WriterTone =
  #| (self) => self.tone

pub extern "js" fn Writer::get_format(self : Writer) -> WriterFormat =
  #| (self) => self.format

pub extern "js" fn Writer::get_length(self : Writer) -> WriterLength =
  #| (self) => self.length

pub extern "js" fn Writer::get_expected_input_languages(self : Writer) -> JsValue? =
  #| (self) => self.expectedInputLanguages

pub extern "js" fn Writer::get_expected_context_languages(self : Writer) -> JsValue? =
  #| (self) => self.expectedContextLanguages

pub extern "js" fn Writer::get_output_language(self : Writer) -> String? =
  #| (self) => self.outputLanguage

pub extern "js" fn Writer::measure_input_usage(self : Writer, input : String, options : WriterWriteOptions) -> JsValue =
  #| (self, input, options) => self.measureInputUsage(input, options)

pub extern "js" fn Writer::get_input_quota(self : Writer) -> Double =
  #| (self) => self.inputQuota

pub extern "js" fn Writer::destroy(self : Writer) -> Unit =
  #| (self) => self.destroy()

///|
/// Rewriter interface
pub type Rewriter

pub extern "js" fn Rewriter::to_js_value(self : Rewriter) -> JsValue =
  #| (self) => self

pub extern "js" fn Rewriter::create(options : RewriterCreateOptions) -> JsValue =
  #| (options) => Rewriter.create(options)

pub extern "js" fn Rewriter::availability(options : RewriterCreateCoreOptions) -> JsValue =
  #| (options) => Rewriter.availability(options)

pub extern "js" fn Rewriter::rewrite(self : Rewriter, input : String, options : RewriterRewriteOptions) -> JsValue =
  #| (self, input, options) => self.rewrite(input, options)

pub extern "js" fn Rewriter::rewrite_streaming(self : Rewriter, input : String, options : RewriterRewriteOptions) -> ReadableStream =
  #| (self, input, options) => self.rewriteStreaming(input, options)

pub extern "js" fn Rewriter::get_shared_context(self : Rewriter) -> String =
  #| (self) => self.sharedContext

pub extern "js" fn Rewriter::get_tone(self : Rewriter) -> RewriterTone =
  #| (self) => self.tone

pub extern "js" fn Rewriter::get_format(self : Rewriter) -> RewriterFormat =
  #| (self) => self.format

pub extern "js" fn Rewriter::get_length(self : Rewriter) -> RewriterLength =
  #| (self) => self.length

pub extern "js" fn Rewriter::get_expected_input_languages(self : Rewriter) -> JsValue? =
  #| (self) => self.expectedInputLanguages

pub extern "js" fn Rewriter::get_expected_context_languages(self : Rewriter) -> JsValue? =
  #| (self) => self.expectedContextLanguages

pub extern "js" fn Rewriter::get_output_language(self : Rewriter) -> String? =
  #| (self) => self.outputLanguage

pub extern "js" fn Rewriter::measure_input_usage(self : Rewriter, input : String, options : RewriterRewriteOptions) -> JsValue =
  #| (self, input, options) => self.measureInputUsage(input, options)

pub extern "js" fn Rewriter::get_input_quota(self : Rewriter) -> Double =
  #| (self) => self.inputQuota

pub extern "js" fn Rewriter::destroy(self : Rewriter) -> Unit =
  #| (self) => self.destroy()

///|
/// CreateMonitor interface
pub type CreateMonitor

pub extern "js" fn CreateMonitor::to_js_value(self : CreateMonitor) -> JsValue =
  #| (self) => self

pub extern "js" fn CreateMonitor::get_ondownloadprogress(self : CreateMonitor) -> EventHandler =
  #| (self) => self.ondownloadprogress

pub extern "js" fn CreateMonitor::set_ondownloadprogress(self : CreateMonitor, value : EventHandler) -> Unit =
  #| (self, value) => { self.ondownloadprogress = value }

