// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/writing-assistance-apis

///|
/// SummarizerType enum
pub(all) enum SummarizerType {
  Tldr
  Teaser
  KeyPoints
  Headline
} derive(Eq, Show)

///|
/// Convert to string value
pub fn SummarizerType::to_string(self : SummarizerType) -> String {
  match self {
    SummarizerType::Tldr => "tldr"
    SummarizerType::Teaser => "teaser"
    SummarizerType::KeyPoints => "key-points"
    SummarizerType::Headline => "headline"
  }
}

///|
/// Parse from string value
pub fn SummarizerType::from_string(s : String) -> SummarizerType? {
  match s {
    "tldr" => Some(SummarizerType::Tldr)
    "teaser" => Some(SummarizerType::Teaser)
    "key-points" => Some(SummarizerType::KeyPoints)
    "headline" => Some(SummarizerType::Headline)
    _ => None
  }
}

///|
/// SummarizerFormat enum
pub(all) enum SummarizerFormat {
  PlainText
  Markdown
} derive(Eq, Show)

///|
/// Convert to string value
pub fn SummarizerFormat::to_string(self : SummarizerFormat) -> String {
  match self {
    SummarizerFormat::PlainText => "plain-text"
    SummarizerFormat::Markdown => "markdown"
  }
}

///|
/// Parse from string value
pub fn SummarizerFormat::from_string(s : String) -> SummarizerFormat? {
  match s {
    "plain-text" => Some(SummarizerFormat::PlainText)
    "markdown" => Some(SummarizerFormat::Markdown)
    _ => None
  }
}

///|
/// SummarizerLength enum
pub(all) enum SummarizerLength {
  Short
  Medium
  Long
} derive(Eq, Show)

///|
/// Convert to string value
pub fn SummarizerLength::to_string(self : SummarizerLength) -> String {
  match self {
    SummarizerLength::Short => "short"
    SummarizerLength::Medium => "medium"
    SummarizerLength::Long => "long"
  }
}

///|
/// Parse from string value
pub fn SummarizerLength::from_string(s : String) -> SummarizerLength? {
  match s {
    "short" => Some(SummarizerLength::Short)
    "medium" => Some(SummarizerLength::Medium)
    "long" => Some(SummarizerLength::Long)
    _ => None
  }
}

///|
/// WriterTone enum
pub(all) enum WriterTone {
  Formal
  Neutral
  Casual
} derive(Eq, Show)

///|
/// Convert to string value
pub fn WriterTone::to_string(self : WriterTone) -> String {
  match self {
    WriterTone::Formal => "formal"
    WriterTone::Neutral => "neutral"
    WriterTone::Casual => "casual"
  }
}

///|
/// Parse from string value
pub fn WriterTone::from_string(s : String) -> WriterTone? {
  match s {
    "formal" => Some(WriterTone::Formal)
    "neutral" => Some(WriterTone::Neutral)
    "casual" => Some(WriterTone::Casual)
    _ => None
  }
}

///|
/// WriterFormat enum
pub(all) enum WriterFormat {
  PlainText
  Markdown
} derive(Eq, Show)

///|
/// Convert to string value
pub fn WriterFormat::to_string(self : WriterFormat) -> String {
  match self {
    WriterFormat::PlainText => "plain-text"
    WriterFormat::Markdown => "markdown"
  }
}

///|
/// Parse from string value
pub fn WriterFormat::from_string(s : String) -> WriterFormat? {
  match s {
    "plain-text" => Some(WriterFormat::PlainText)
    "markdown" => Some(WriterFormat::Markdown)
    _ => None
  }
}

///|
/// WriterLength enum
pub(all) enum WriterLength {
  Short
  Medium
  Long
} derive(Eq, Show)

///|
/// Convert to string value
pub fn WriterLength::to_string(self : WriterLength) -> String {
  match self {
    WriterLength::Short => "short"
    WriterLength::Medium => "medium"
    WriterLength::Long => "long"
  }
}

///|
/// Parse from string value
pub fn WriterLength::from_string(s : String) -> WriterLength? {
  match s {
    "short" => Some(WriterLength::Short)
    "medium" => Some(WriterLength::Medium)
    "long" => Some(WriterLength::Long)
    _ => None
  }
}

///|
/// RewriterTone enum
pub(all) enum RewriterTone {
  AsIs
  MoreFormal
  MoreCasual
} derive(Eq, Show)

///|
/// Convert to string value
pub fn RewriterTone::to_string(self : RewriterTone) -> String {
  match self {
    RewriterTone::AsIs => "as-is"
    RewriterTone::MoreFormal => "more-formal"
    RewriterTone::MoreCasual => "more-casual"
  }
}

///|
/// Parse from string value
pub fn RewriterTone::from_string(s : String) -> RewriterTone? {
  match s {
    "as-is" => Some(RewriterTone::AsIs)
    "more-formal" => Some(RewriterTone::MoreFormal)
    "more-casual" => Some(RewriterTone::MoreCasual)
    _ => None
  }
}

///|
/// RewriterFormat enum
pub(all) enum RewriterFormat {
  AsIs
  PlainText
  Markdown
} derive(Eq, Show)

///|
/// Convert to string value
pub fn RewriterFormat::to_string(self : RewriterFormat) -> String {
  match self {
    RewriterFormat::AsIs => "as-is"
    RewriterFormat::PlainText => "plain-text"
    RewriterFormat::Markdown => "markdown"
  }
}

///|
/// Parse from string value
pub fn RewriterFormat::from_string(s : String) -> RewriterFormat? {
  match s {
    "as-is" => Some(RewriterFormat::AsIs)
    "plain-text" => Some(RewriterFormat::PlainText)
    "markdown" => Some(RewriterFormat::Markdown)
    _ => None
  }
}

///|
/// RewriterLength enum
pub(all) enum RewriterLength {
  AsIs
  Shorter
  Longer
} derive(Eq, Show)

///|
/// Convert to string value
pub fn RewriterLength::to_string(self : RewriterLength) -> String {
  match self {
    RewriterLength::AsIs => "as-is"
    RewriterLength::Shorter => "shorter"
    RewriterLength::Longer => "longer"
  }
}

///|
/// Parse from string value
pub fn RewriterLength::from_string(s : String) -> RewriterLength? {
  match s {
    "as-is" => Some(RewriterLength::AsIs)
    "shorter" => Some(RewriterLength::Shorter)
    "longer" => Some(RewriterLength::Longer)
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
} derive(Eq, Show)

///|
/// Convert to string value
pub fn Availability::to_string(self : Availability) -> String {
  match self {
    Availability::Unavailable => "unavailable"
    Availability::Downloadable => "downloadable"
    Availability::Downloading => "downloading"
    Availability::Available => "available"
  }
}

///|
/// Parse from string value
pub fn Availability::from_string(s : String) -> Availability? {
  match s {
    "unavailable" => Some(Availability::Unavailable)
    "downloadable" => Some(Availability::Downloadable)
    "downloading" => Some(Availability::Downloading)
    "available" => Some(Availability::Available)
    _ => None
  }
}

///|
/// CreateMonitorCallback callback interface
pub type CreateMonitorCallback

///|
/// Create CreateMonitorCallback from a MoonBit function
pub extern "js" fn CreateMonitorCallback::from_fn(
  handler : (CreateMonitor) -> Unit,
) -> CreateMonitorCallback =
  #| (handler) => (a0) => handler(a0)

///|
/// SummarizerCreateCoreOptions dictionary
pub(all) struct SummarizerCreateCoreOptions {
  type_ : SummarizerType?
  format : SummarizerFormat?
  length : SummarizerLength?
  expectedInputLanguages : Array[String]?
  expectedContextLanguages : Array[String]?
  outputLanguage : String?
}

///|
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

///|
extern "js" fn SummarizerCreateCoreOptions::to_js_ffi(
  self : SummarizerCreateCoreOptions,
) -> JsValue =
  #| (self) => ({
  #|   type: ((() => { const v = self.type_; if (v === undefined) return undefined; return ['tldr', 'teaser', 'key-points', 'headline'][v]; })()),
  #|   format: ((() => { const v = self.format; if (v === undefined) return undefined; return ['plain-text', 'markdown'][v]; })()),
  #|   length: ((() => { const v = self.length; if (v === undefined) return undefined; return ['short', 'medium', 'long'][v]; })()),
  #|   expectedInputLanguages: ((() => { const v = self.expectedInputLanguages; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   expectedContextLanguages: ((() => { const v = self.expectedContextLanguages; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   outputLanguage: self.outputLanguage
  #| })

///|
/// Convert to JsValue
pub fn SummarizerCreateCoreOptions::to_js(
  self : SummarizerCreateCoreOptions,
) -> JsValue {
  SummarizerCreateCoreOptions::to_js_ffi(self)
}

///|
extern "js" fn SummarizerCreateCoreOptions::from_js_ffi(
  value : JsValue,
) -> SummarizerCreateCoreOptions =
  #| (v) => ({
  #|   type_: (v.type === undefined ? undefined : ['tldr', 'teaser', 'key-points', 'headline'].indexOf(v.type)),
  #|   format: (v.format === undefined ? undefined : ['plain-text', 'markdown'].indexOf(v.format)),
  #|   length: (v.length === undefined ? undefined : ['short', 'medium', 'long'].indexOf(v.length)),
  #|   expectedInputLanguages: (v.expectedInputLanguages === undefined ? { $tag: 0 } : { $tag: 1, _0: v.expectedInputLanguages }),
  #|   expectedContextLanguages: (v.expectedContextLanguages === undefined ? { $tag: 0 } : { $tag: 1, _0: v.expectedContextLanguages }),
  #|   outputLanguage: v.outputLanguage
  #| })

///|
/// Convert from JsValue
pub fn SummarizerCreateCoreOptions::from_js(
  value : JsValue,
) -> SummarizerCreateCoreOptions {
  SummarizerCreateCoreOptions::from_js_ffi(value)
}

///|
/// SummarizerCreateOptions dictionary
pub(all) struct SummarizerCreateOptions {
  type_ : SummarizerType?
  format : SummarizerFormat?
  length : SummarizerLength?
  expectedInputLanguages : Array[String]?
  expectedContextLanguages : Array[String]?
  outputLanguage : String?
  signal : AbortSignal?
  monitor : CreateMonitorCallback?
  sharedContext : String?
}

///|
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

///|
extern "js" fn SummarizerCreateOptions::to_js_ffi(
  self : SummarizerCreateOptions,
) -> JsValue =
  #| (self) => ({
  #|   type: ((() => { const v = self.type_; if (v === undefined) return undefined; return ['tldr', 'teaser', 'key-points', 'headline'][v]; })()),
  #|   format: ((() => { const v = self.format; if (v === undefined) return undefined; return ['plain-text', 'markdown'][v]; })()),
  #|   length: ((() => { const v = self.length; if (v === undefined) return undefined; return ['short', 'medium', 'long'][v]; })()),
  #|   expectedInputLanguages: ((() => { const v = self.expectedInputLanguages; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   expectedContextLanguages: ((() => { const v = self.expectedContextLanguages; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   outputLanguage: self.outputLanguage,
  #|   signal: ((() => { const v = self.signal; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   monitor: ((() => { const v = self.monitor; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   sharedContext: self.sharedContext
  #| })

///|
/// Convert to JsValue
pub fn SummarizerCreateOptions::to_js(
  self : SummarizerCreateOptions,
) -> JsValue {
  SummarizerCreateOptions::to_js_ffi(self)
}

///|
extern "js" fn SummarizerCreateOptions::from_js_ffi(
  value : JsValue,
) -> SummarizerCreateOptions =
  #| (v) => ({
  #|   type_: (v.type === undefined ? undefined : ['tldr', 'teaser', 'key-points', 'headline'].indexOf(v.type)),
  #|   format: (v.format === undefined ? undefined : ['plain-text', 'markdown'].indexOf(v.format)),
  #|   length: (v.length === undefined ? undefined : ['short', 'medium', 'long'].indexOf(v.length)),
  #|   expectedInputLanguages: (v.expectedInputLanguages === undefined ? { $tag: 0 } : { $tag: 1, _0: v.expectedInputLanguages }),
  #|   expectedContextLanguages: (v.expectedContextLanguages === undefined ? { $tag: 0 } : { $tag: 1, _0: v.expectedContextLanguages }),
  #|   outputLanguage: v.outputLanguage,
  #|   signal: (v.signal === undefined ? { $tag: 0 } : { $tag: 1, _0: v.signal }),
  #|   monitor: (v.monitor === undefined ? { $tag: 0 } : { $tag: 1, _0: v.monitor }),
  #|   sharedContext: v.sharedContext
  #| })

///|
/// Convert from JsValue
pub fn SummarizerCreateOptions::from_js(
  value : JsValue,
) -> SummarizerCreateOptions {
  SummarizerCreateOptions::from_js_ffi(value)
}

///|
/// SummarizerSummarizeOptions dictionary
pub(all) struct SummarizerSummarizeOptions {
  signal : AbortSignal?
  context : String?
}

///|
/// Create a new SummarizerSummarizeOptions with default values
pub fn SummarizerSummarizeOptions::default() -> SummarizerSummarizeOptions {
  SummarizerSummarizeOptions::{ signal: None, context: None }
}

///|
extern "js" fn SummarizerSummarizeOptions::to_js_ffi(
  self : SummarizerSummarizeOptions,
) -> JsValue =
  #| (self) => ({
  #|   signal: ((() => { const v = self.signal; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   context: self.context
  #| })

///|
/// Convert to JsValue
pub fn SummarizerSummarizeOptions::to_js(
  self : SummarizerSummarizeOptions,
) -> JsValue {
  SummarizerSummarizeOptions::to_js_ffi(self)
}

///|
extern "js" fn SummarizerSummarizeOptions::from_js_ffi(
  value : JsValue,
) -> SummarizerSummarizeOptions =
  #| (v) => ({
  #|   signal: (v.signal === undefined ? { $tag: 0 } : { $tag: 1, _0: v.signal }),
  #|   context: v.context
  #| })

///|
/// Convert from JsValue
pub fn SummarizerSummarizeOptions::from_js(
  value : JsValue,
) -> SummarizerSummarizeOptions {
  SummarizerSummarizeOptions::from_js_ffi(value)
}

///|
/// WriterCreateCoreOptions dictionary
pub(all) struct WriterCreateCoreOptions {
  tone : WriterTone?
  format : WriterFormat?
  length : WriterLength?
  expectedInputLanguages : Array[String]?
  expectedContextLanguages : Array[String]?
  outputLanguage : String?
}

///|
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

///|
extern "js" fn WriterCreateCoreOptions::to_js_ffi(
  self : WriterCreateCoreOptions,
) -> JsValue =
  #| (self) => ({
  #|   tone: ((() => { const v = self.tone; if (v === undefined) return undefined; return ['formal', 'neutral', 'casual'][v]; })()),
  #|   format: ((() => { const v = self.format; if (v === undefined) return undefined; return ['plain-text', 'markdown'][v]; })()),
  #|   length: ((() => { const v = self.length; if (v === undefined) return undefined; return ['short', 'medium', 'long'][v]; })()),
  #|   expectedInputLanguages: ((() => { const v = self.expectedInputLanguages; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   expectedContextLanguages: ((() => { const v = self.expectedContextLanguages; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   outputLanguage: self.outputLanguage
  #| })

///|
/// Convert to JsValue
pub fn WriterCreateCoreOptions::to_js(
  self : WriterCreateCoreOptions,
) -> JsValue {
  WriterCreateCoreOptions::to_js_ffi(self)
}

///|
extern "js" fn WriterCreateCoreOptions::from_js_ffi(
  value : JsValue,
) -> WriterCreateCoreOptions =
  #| (v) => ({
  #|   tone: (v.tone === undefined ? undefined : ['formal', 'neutral', 'casual'].indexOf(v.tone)),
  #|   format: (v.format === undefined ? undefined : ['plain-text', 'markdown'].indexOf(v.format)),
  #|   length: (v.length === undefined ? undefined : ['short', 'medium', 'long'].indexOf(v.length)),
  #|   expectedInputLanguages: (v.expectedInputLanguages === undefined ? { $tag: 0 } : { $tag: 1, _0: v.expectedInputLanguages }),
  #|   expectedContextLanguages: (v.expectedContextLanguages === undefined ? { $tag: 0 } : { $tag: 1, _0: v.expectedContextLanguages }),
  #|   outputLanguage: v.outputLanguage
  #| })

///|
/// Convert from JsValue
pub fn WriterCreateCoreOptions::from_js(
  value : JsValue,
) -> WriterCreateCoreOptions {
  WriterCreateCoreOptions::from_js_ffi(value)
}

///|
/// WriterCreateOptions dictionary
pub(all) struct WriterCreateOptions {
  tone : WriterTone?
  format : WriterFormat?
  length : WriterLength?
  expectedInputLanguages : Array[String]?
  expectedContextLanguages : Array[String]?
  outputLanguage : String?
  signal : AbortSignal?
  monitor : CreateMonitorCallback?
  sharedContext : String?
}

///|
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

///|
extern "js" fn WriterCreateOptions::to_js_ffi(
  self : WriterCreateOptions,
) -> JsValue =
  #| (self) => ({
  #|   tone: ((() => { const v = self.tone; if (v === undefined) return undefined; return ['formal', 'neutral', 'casual'][v]; })()),
  #|   format: ((() => { const v = self.format; if (v === undefined) return undefined; return ['plain-text', 'markdown'][v]; })()),
  #|   length: ((() => { const v = self.length; if (v === undefined) return undefined; return ['short', 'medium', 'long'][v]; })()),
  #|   expectedInputLanguages: ((() => { const v = self.expectedInputLanguages; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   expectedContextLanguages: ((() => { const v = self.expectedContextLanguages; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   outputLanguage: self.outputLanguage,
  #|   signal: ((() => { const v = self.signal; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   monitor: ((() => { const v = self.monitor; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   sharedContext: self.sharedContext
  #| })

///|
/// Convert to JsValue
pub fn WriterCreateOptions::to_js(self : WriterCreateOptions) -> JsValue {
  WriterCreateOptions::to_js_ffi(self)
}

///|
extern "js" fn WriterCreateOptions::from_js_ffi(
  value : JsValue,
) -> WriterCreateOptions =
  #| (v) => ({
  #|   tone: (v.tone === undefined ? undefined : ['formal', 'neutral', 'casual'].indexOf(v.tone)),
  #|   format: (v.format === undefined ? undefined : ['plain-text', 'markdown'].indexOf(v.format)),
  #|   length: (v.length === undefined ? undefined : ['short', 'medium', 'long'].indexOf(v.length)),
  #|   expectedInputLanguages: (v.expectedInputLanguages === undefined ? { $tag: 0 } : { $tag: 1, _0: v.expectedInputLanguages }),
  #|   expectedContextLanguages: (v.expectedContextLanguages === undefined ? { $tag: 0 } : { $tag: 1, _0: v.expectedContextLanguages }),
  #|   outputLanguage: v.outputLanguage,
  #|   signal: (v.signal === undefined ? { $tag: 0 } : { $tag: 1, _0: v.signal }),
  #|   monitor: (v.monitor === undefined ? { $tag: 0 } : { $tag: 1, _0: v.monitor }),
  #|   sharedContext: v.sharedContext
  #| })

///|
/// Convert from JsValue
pub fn WriterCreateOptions::from_js(value : JsValue) -> WriterCreateOptions {
  WriterCreateOptions::from_js_ffi(value)
}

///|
/// WriterWriteOptions dictionary
pub(all) struct WriterWriteOptions {
  context : String?
  signal : AbortSignal?
}

///|
/// Create a new WriterWriteOptions with default values
pub fn WriterWriteOptions::default() -> WriterWriteOptions {
  WriterWriteOptions::{ context: None, signal: None }
}

///|
extern "js" fn WriterWriteOptions::to_js_ffi(
  self : WriterWriteOptions,
) -> JsValue =
  #| (self) => ({
  #|   context: self.context,
  #|   signal: ((() => { const v = self.signal; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn WriterWriteOptions::to_js(self : WriterWriteOptions) -> JsValue {
  WriterWriteOptions::to_js_ffi(self)
}

///|
extern "js" fn WriterWriteOptions::from_js_ffi(
  value : JsValue,
) -> WriterWriteOptions =
  #| (v) => ({
  #|   context: v.context,
  #|   signal: (v.signal === undefined ? { $tag: 0 } : { $tag: 1, _0: v.signal })
  #| })

///|
/// Convert from JsValue
pub fn WriterWriteOptions::from_js(value : JsValue) -> WriterWriteOptions {
  WriterWriteOptions::from_js_ffi(value)
}

///|
/// RewriterCreateCoreOptions dictionary
pub(all) struct RewriterCreateCoreOptions {
  tone : RewriterTone?
  format : RewriterFormat?
  length : RewriterLength?
  expectedInputLanguages : Array[String]?
  expectedContextLanguages : Array[String]?
  outputLanguage : String?
}

///|
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

///|
extern "js" fn RewriterCreateCoreOptions::to_js_ffi(
  self : RewriterCreateCoreOptions,
) -> JsValue =
  #| (self) => ({
  #|   tone: ((() => { const v = self.tone; if (v === undefined) return undefined; return ['as-is', 'more-formal', 'more-casual'][v]; })()),
  #|   format: ((() => { const v = self.format; if (v === undefined) return undefined; return ['as-is', 'plain-text', 'markdown'][v]; })()),
  #|   length: ((() => { const v = self.length; if (v === undefined) return undefined; return ['as-is', 'shorter', 'longer'][v]; })()),
  #|   expectedInputLanguages: ((() => { const v = self.expectedInputLanguages; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   expectedContextLanguages: ((() => { const v = self.expectedContextLanguages; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   outputLanguage: self.outputLanguage
  #| })

///|
/// Convert to JsValue
pub fn RewriterCreateCoreOptions::to_js(
  self : RewriterCreateCoreOptions,
) -> JsValue {
  RewriterCreateCoreOptions::to_js_ffi(self)
}

///|
extern "js" fn RewriterCreateCoreOptions::from_js_ffi(
  value : JsValue,
) -> RewriterCreateCoreOptions =
  #| (v) => ({
  #|   tone: (v.tone === undefined ? undefined : ['as-is', 'more-formal', 'more-casual'].indexOf(v.tone)),
  #|   format: (v.format === undefined ? undefined : ['as-is', 'plain-text', 'markdown'].indexOf(v.format)),
  #|   length: (v.length === undefined ? undefined : ['as-is', 'shorter', 'longer'].indexOf(v.length)),
  #|   expectedInputLanguages: (v.expectedInputLanguages === undefined ? { $tag: 0 } : { $tag: 1, _0: v.expectedInputLanguages }),
  #|   expectedContextLanguages: (v.expectedContextLanguages === undefined ? { $tag: 0 } : { $tag: 1, _0: v.expectedContextLanguages }),
  #|   outputLanguage: v.outputLanguage
  #| })

///|
/// Convert from JsValue
pub fn RewriterCreateCoreOptions::from_js(
  value : JsValue,
) -> RewriterCreateCoreOptions {
  RewriterCreateCoreOptions::from_js_ffi(value)
}

///|
/// RewriterCreateOptions dictionary
pub(all) struct RewriterCreateOptions {
  tone : RewriterTone?
  format : RewriterFormat?
  length : RewriterLength?
  expectedInputLanguages : Array[String]?
  expectedContextLanguages : Array[String]?
  outputLanguage : String?
  signal : AbortSignal?
  monitor : CreateMonitorCallback?
  sharedContext : String?
}

///|
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

///|
extern "js" fn RewriterCreateOptions::to_js_ffi(
  self : RewriterCreateOptions,
) -> JsValue =
  #| (self) => ({
  #|   tone: ((() => { const v = self.tone; if (v === undefined) return undefined; return ['as-is', 'more-formal', 'more-casual'][v]; })()),
  #|   format: ((() => { const v = self.format; if (v === undefined) return undefined; return ['as-is', 'plain-text', 'markdown'][v]; })()),
  #|   length: ((() => { const v = self.length; if (v === undefined) return undefined; return ['as-is', 'shorter', 'longer'][v]; })()),
  #|   expectedInputLanguages: ((() => { const v = self.expectedInputLanguages; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   expectedContextLanguages: ((() => { const v = self.expectedContextLanguages; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   outputLanguage: self.outputLanguage,
  #|   signal: ((() => { const v = self.signal; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   monitor: ((() => { const v = self.monitor; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   sharedContext: self.sharedContext
  #| })

///|
/// Convert to JsValue
pub fn RewriterCreateOptions::to_js(self : RewriterCreateOptions) -> JsValue {
  RewriterCreateOptions::to_js_ffi(self)
}

///|
extern "js" fn RewriterCreateOptions::from_js_ffi(
  value : JsValue,
) -> RewriterCreateOptions =
  #| (v) => ({
  #|   tone: (v.tone === undefined ? undefined : ['as-is', 'more-formal', 'more-casual'].indexOf(v.tone)),
  #|   format: (v.format === undefined ? undefined : ['as-is', 'plain-text', 'markdown'].indexOf(v.format)),
  #|   length: (v.length === undefined ? undefined : ['as-is', 'shorter', 'longer'].indexOf(v.length)),
  #|   expectedInputLanguages: (v.expectedInputLanguages === undefined ? { $tag: 0 } : { $tag: 1, _0: v.expectedInputLanguages }),
  #|   expectedContextLanguages: (v.expectedContextLanguages === undefined ? { $tag: 0 } : { $tag: 1, _0: v.expectedContextLanguages }),
  #|   outputLanguage: v.outputLanguage,
  #|   signal: (v.signal === undefined ? { $tag: 0 } : { $tag: 1, _0: v.signal }),
  #|   monitor: (v.monitor === undefined ? { $tag: 0 } : { $tag: 1, _0: v.monitor }),
  #|   sharedContext: v.sharedContext
  #| })

///|
/// Convert from JsValue
pub fn RewriterCreateOptions::from_js(value : JsValue) -> RewriterCreateOptions {
  RewriterCreateOptions::from_js_ffi(value)
}

///|
/// RewriterRewriteOptions dictionary
pub(all) struct RewriterRewriteOptions {
  context : String?
  signal : AbortSignal?
}

///|
/// Create a new RewriterRewriteOptions with default values
pub fn RewriterRewriteOptions::default() -> RewriterRewriteOptions {
  RewriterRewriteOptions::{ context: None, signal: None }
}

///|
extern "js" fn RewriterRewriteOptions::to_js_ffi(
  self : RewriterRewriteOptions,
) -> JsValue =
  #| (self) => ({
  #|   context: self.context,
  #|   signal: ((() => { const v = self.signal; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn RewriterRewriteOptions::to_js(self : RewriterRewriteOptions) -> JsValue {
  RewriterRewriteOptions::to_js_ffi(self)
}

///|
extern "js" fn RewriterRewriteOptions::from_js_ffi(
  value : JsValue,
) -> RewriterRewriteOptions =
  #| (v) => ({
  #|   context: v.context,
  #|   signal: (v.signal === undefined ? { $tag: 0 } : { $tag: 1, _0: v.signal })
  #| })

///|
/// Convert from JsValue
pub fn RewriterRewriteOptions::from_js(
  value : JsValue,
) -> RewriterRewriteOptions {
  RewriterRewriteOptions::from_js_ffi(value)
}

///|
/// Summarizer interface
pub type Summarizer

///|
pub extern "js" fn Summarizer::to_js_value(self : Summarizer) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Summarizer (unchecked)
pub extern "js" fn Summarizer::from_js_value(v : JsValue) -> Summarizer =
  #| (v) => v

///|
/// Safely cast JsValue to Summarizer (checked with instanceof)
pub extern "js" fn Summarizer::from_js_value_opt(v : JsValue) -> Summarizer? =
  #| (v) => (v instanceof Summarizer) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Summarizer (checked with instanceof)
pub extern "js" fn JsValue::as_summarizer(self : JsValue) -> Summarizer? =
  #| (self) => (self instanceof Summarizer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Summarizer (unchecked)
pub extern "js" fn JsValue::to_summarizer(self : JsValue) -> Summarizer =
  #| (self) => self

///|
pub extern "js" fn Summarizer::create() -> Promise[Summarizer] =
  #| () => Summarizer.create()

///|
extern "js" fn Summarizer::create_with_options_ffi(
  options : JsValue,
) -> Promise[Summarizer] =
  #| (options) => Summarizer.create(options)

///|
pub fn Summarizer::create_with_options(
  options : SummarizerCreateOptions,
) -> Promise[Summarizer] {
  Summarizer::create_with_options_ffi(options.to_js())
}

///|
pub extern "js" fn Summarizer::availability() -> Promise[Availability] =
  #| () => Summarizer.availability()

///|
extern "js" fn Summarizer::availability_with_options_ffi(
  options : JsValue,
) -> Promise[Availability] =
  #| (options) => Summarizer.availability(options)

///|
pub fn Summarizer::availability_with_options(
  options : SummarizerCreateCoreOptions,
) -> Promise[Availability] {
  Summarizer::availability_with_options_ffi(options.to_js())
}

///|
pub extern "js" fn Summarizer::summarize(
  self : Summarizer,
  input : String,
) -> Promise[String] =
  #| (self, input) => self.summarize(input)

///|
extern "js" fn Summarizer::summarize_with_options_ffi(
  self : Summarizer,
  input : String,
  options : JsValue,
) -> Promise[String] =
  #| (self, input, options) => self.summarize(input, options)

///|
pub fn Summarizer::summarize_with_options(
  self : Summarizer,
  input : String,
  options : SummarizerSummarizeOptions,
) -> Promise[String] {
  Summarizer::summarize_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn Summarizer::summarize_streaming(
  self : Summarizer,
  input : String,
) -> ReadableStream =
  #| (self, input) => self.summarizeStreaming(input)

///|
extern "js" fn Summarizer::summarize_streaming_with_options_ffi(
  self : Summarizer,
  input : String,
  options : JsValue,
) -> ReadableStream =
  #| (self, input, options) => self.summarizeStreaming(input, options)

///|
pub fn Summarizer::summarize_streaming_with_options(
  self : Summarizer,
  input : String,
  options : SummarizerSummarizeOptions,
) -> ReadableStream {
  Summarizer::summarize_streaming_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn Summarizer::get_shared_context(self : Summarizer) -> String =
  #| (self) => self.sharedContext

///|
pub extern "js" fn Summarizer::get_type(self : Summarizer) -> SummarizerType =
  #| (self) => ['tldr', 'teaser', 'key-points', 'headline'].indexOf(self.type)

///|
pub extern "js" fn Summarizer::get_format(
  self : Summarizer,
) -> SummarizerFormat =
  #| (self) => ['plain-text', 'markdown'].indexOf(self.format)

///|
pub extern "js" fn Summarizer::get_length(
  self : Summarizer,
) -> SummarizerLength =
  #| (self) => ['short', 'medium', 'long'].indexOf(self.length)

///|
pub extern "js" fn Summarizer::get_expected_input_languages(
  self : Summarizer,
) -> JsValue? =
  #| (self) => (() => { const v = self.expectedInputLanguages; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Summarizer::get_expected_context_languages(
  self : Summarizer,
) -> JsValue? =
  #| (self) => (() => { const v = self.expectedContextLanguages; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Summarizer::get_output_language(
  self : Summarizer,
) -> String? =
  #| (self) => (self.outputLanguage) ?? undefined

///|
pub extern "js" fn Summarizer::measure_input_usage(
  self : Summarizer,
  input : String,
) -> Promise[Double] =
  #| (self, input) => self.measureInputUsage(input)

///|
extern "js" fn Summarizer::measure_input_usage_with_options_ffi(
  self : Summarizer,
  input : String,
  options : JsValue,
) -> Promise[Double] =
  #| (self, input, options) => self.measureInputUsage(input, options)

///|
pub fn Summarizer::measure_input_usage_with_options(
  self : Summarizer,
  input : String,
  options : SummarizerSummarizeOptions,
) -> Promise[Double] {
  Summarizer::measure_input_usage_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn Summarizer::get_input_quota(self : Summarizer) -> Double =
  #| (self) => self.inputQuota

///|
pub extern "js" fn Summarizer::destroy(self : Summarizer) -> Unit =
  #| (self) => self.destroy()

///|
/// Writer interface
pub type Writer

///|
pub extern "js" fn Writer::to_js_value(self : Writer) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Writer (unchecked)
pub extern "js" fn Writer::from_js_value(v : JsValue) -> Writer =
  #| (v) => v

///|
/// Safely cast JsValue to Writer (checked with instanceof)
pub extern "js" fn Writer::from_js_value_opt(v : JsValue) -> Writer? =
  #| (v) => (v instanceof Writer) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Writer (checked with instanceof)
pub extern "js" fn JsValue::as_writer(self : JsValue) -> Writer? =
  #| (self) => (self instanceof Writer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Writer (unchecked)
pub extern "js" fn JsValue::to_writer(self : JsValue) -> Writer =
  #| (self) => self

///|
pub extern "js" fn Writer::create() -> Promise[Writer] =
  #| () => Writer.create()

///|
extern "js" fn Writer::create_with_options_ffi(
  options : JsValue,
) -> Promise[Writer] =
  #| (options) => Writer.create(options)

///|
pub fn Writer::create_with_options(
  options : WriterCreateOptions,
) -> Promise[Writer] {
  Writer::create_with_options_ffi(options.to_js())
}

///|
pub extern "js" fn Writer::availability() -> Promise[Availability] =
  #| () => Writer.availability()

///|
extern "js" fn Writer::availability_with_options_ffi(
  options : JsValue,
) -> Promise[Availability] =
  #| (options) => Writer.availability(options)

///|
pub fn Writer::availability_with_options(
  options : WriterCreateCoreOptions,
) -> Promise[Availability] {
  Writer::availability_with_options_ffi(options.to_js())
}

///|
pub extern "js" fn Writer::write(
  self : Writer,
  input : String,
) -> Promise[String] =
  #| (self, input) => self.write(input)

///|
extern "js" fn Writer::write_with_options_ffi(
  self : Writer,
  input : String,
  options : JsValue,
) -> Promise[String] =
  #| (self, input, options) => self.write(input, options)

///|
pub fn Writer::write_with_options(
  self : Writer,
  input : String,
  options : WriterWriteOptions,
) -> Promise[String] {
  Writer::write_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn Writer::write_streaming(
  self : Writer,
  input : String,
) -> ReadableStream =
  #| (self, input) => self.writeStreaming(input)

///|
extern "js" fn Writer::write_streaming_with_options_ffi(
  self : Writer,
  input : String,
  options : JsValue,
) -> ReadableStream =
  #| (self, input, options) => self.writeStreaming(input, options)

///|
pub fn Writer::write_streaming_with_options(
  self : Writer,
  input : String,
  options : WriterWriteOptions,
) -> ReadableStream {
  Writer::write_streaming_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn Writer::get_shared_context(self : Writer) -> String =
  #| (self) => self.sharedContext

///|
pub extern "js" fn Writer::get_tone(self : Writer) -> WriterTone =
  #| (self) => ['formal', 'neutral', 'casual'].indexOf(self.tone)

///|
pub extern "js" fn Writer::get_format(self : Writer) -> WriterFormat =
  #| (self) => ['plain-text', 'markdown'].indexOf(self.format)

///|
pub extern "js" fn Writer::get_length(self : Writer) -> WriterLength =
  #| (self) => ['short', 'medium', 'long'].indexOf(self.length)

///|
pub extern "js" fn Writer::get_expected_input_languages(
  self : Writer,
) -> JsValue? =
  #| (self) => (() => { const v = self.expectedInputLanguages; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Writer::get_expected_context_languages(
  self : Writer,
) -> JsValue? =
  #| (self) => (() => { const v = self.expectedContextLanguages; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Writer::get_output_language(self : Writer) -> String? =
  #| (self) => (self.outputLanguage) ?? undefined

///|
pub extern "js" fn Writer::measure_input_usage(
  self : Writer,
  input : String,
) -> Promise[Double] =
  #| (self, input) => self.measureInputUsage(input)

///|
extern "js" fn Writer::measure_input_usage_with_options_ffi(
  self : Writer,
  input : String,
  options : JsValue,
) -> Promise[Double] =
  #| (self, input, options) => self.measureInputUsage(input, options)

///|
pub fn Writer::measure_input_usage_with_options(
  self : Writer,
  input : String,
  options : WriterWriteOptions,
) -> Promise[Double] {
  Writer::measure_input_usage_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn Writer::get_input_quota(self : Writer) -> Double =
  #| (self) => self.inputQuota

///|
pub extern "js" fn Writer::destroy(self : Writer) -> Unit =
  #| (self) => self.destroy()

///|
/// Rewriter interface
pub type Rewriter

///|
pub extern "js" fn Rewriter::to_js_value(self : Rewriter) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Rewriter (unchecked)
pub extern "js" fn Rewriter::from_js_value(v : JsValue) -> Rewriter =
  #| (v) => v

///|
/// Safely cast JsValue to Rewriter (checked with instanceof)
pub extern "js" fn Rewriter::from_js_value_opt(v : JsValue) -> Rewriter? =
  #| (v) => (v instanceof Rewriter) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Rewriter (checked with instanceof)
pub extern "js" fn JsValue::as_rewriter(self : JsValue) -> Rewriter? =
  #| (self) => (self instanceof Rewriter) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Rewriter (unchecked)
pub extern "js" fn JsValue::to_rewriter(self : JsValue) -> Rewriter =
  #| (self) => self

///|
pub extern "js" fn Rewriter::create() -> Promise[Rewriter] =
  #| () => Rewriter.create()

///|
extern "js" fn Rewriter::create_with_options_ffi(
  options : JsValue,
) -> Promise[Rewriter] =
  #| (options) => Rewriter.create(options)

///|
pub fn Rewriter::create_with_options(
  options : RewriterCreateOptions,
) -> Promise[Rewriter] {
  Rewriter::create_with_options_ffi(options.to_js())
}

///|
pub extern "js" fn Rewriter::availability() -> Promise[Availability] =
  #| () => Rewriter.availability()

///|
extern "js" fn Rewriter::availability_with_options_ffi(
  options : JsValue,
) -> Promise[Availability] =
  #| (options) => Rewriter.availability(options)

///|
pub fn Rewriter::availability_with_options(
  options : RewriterCreateCoreOptions,
) -> Promise[Availability] {
  Rewriter::availability_with_options_ffi(options.to_js())
}

///|
pub extern "js" fn Rewriter::rewrite(
  self : Rewriter,
  input : String,
) -> Promise[String] =
  #| (self, input) => self.rewrite(input)

///|
extern "js" fn Rewriter::rewrite_with_options_ffi(
  self : Rewriter,
  input : String,
  options : JsValue,
) -> Promise[String] =
  #| (self, input, options) => self.rewrite(input, options)

///|
pub fn Rewriter::rewrite_with_options(
  self : Rewriter,
  input : String,
  options : RewriterRewriteOptions,
) -> Promise[String] {
  Rewriter::rewrite_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn Rewriter::rewrite_streaming(
  self : Rewriter,
  input : String,
) -> ReadableStream =
  #| (self, input) => self.rewriteStreaming(input)

///|
extern "js" fn Rewriter::rewrite_streaming_with_options_ffi(
  self : Rewriter,
  input : String,
  options : JsValue,
) -> ReadableStream =
  #| (self, input, options) => self.rewriteStreaming(input, options)

///|
pub fn Rewriter::rewrite_streaming_with_options(
  self : Rewriter,
  input : String,
  options : RewriterRewriteOptions,
) -> ReadableStream {
  Rewriter::rewrite_streaming_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn Rewriter::get_shared_context(self : Rewriter) -> String =
  #| (self) => self.sharedContext

///|
pub extern "js" fn Rewriter::get_tone(self : Rewriter) -> RewriterTone =
  #| (self) => ['as-is', 'more-formal', 'more-casual'].indexOf(self.tone)

///|
pub extern "js" fn Rewriter::get_format(self : Rewriter) -> RewriterFormat =
  #| (self) => ['as-is', 'plain-text', 'markdown'].indexOf(self.format)

///|
pub extern "js" fn Rewriter::get_length(self : Rewriter) -> RewriterLength =
  #| (self) => ['as-is', 'shorter', 'longer'].indexOf(self.length)

///|
pub extern "js" fn Rewriter::get_expected_input_languages(
  self : Rewriter,
) -> JsValue? =
  #| (self) => (() => { const v = self.expectedInputLanguages; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Rewriter::get_expected_context_languages(
  self : Rewriter,
) -> JsValue? =
  #| (self) => (() => { const v = self.expectedContextLanguages; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Rewriter::get_output_language(self : Rewriter) -> String? =
  #| (self) => (self.outputLanguage) ?? undefined

///|
pub extern "js" fn Rewriter::measure_input_usage(
  self : Rewriter,
  input : String,
) -> Promise[Double] =
  #| (self, input) => self.measureInputUsage(input)

///|
extern "js" fn Rewriter::measure_input_usage_with_options_ffi(
  self : Rewriter,
  input : String,
  options : JsValue,
) -> Promise[Double] =
  #| (self, input, options) => self.measureInputUsage(input, options)

///|
pub fn Rewriter::measure_input_usage_with_options(
  self : Rewriter,
  input : String,
  options : RewriterRewriteOptions,
) -> Promise[Double] {
  Rewriter::measure_input_usage_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn Rewriter::get_input_quota(self : Rewriter) -> Double =
  #| (self) => self.inputQuota

///|
pub extern "js" fn Rewriter::destroy(self : Rewriter) -> Unit =
  #| (self) => self.destroy()

///|
/// CreateMonitor interface
pub type CreateMonitor

///|
pub extern "js" fn CreateMonitor::to_js_value(self : CreateMonitor) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CreateMonitor (unchecked)
pub extern "js" fn CreateMonitor::from_js_value(v : JsValue) -> CreateMonitor =
  #| (v) => v

///|
/// Safely cast JsValue to CreateMonitor (checked with instanceof)
pub extern "js" fn CreateMonitor::from_js_value_opt(
  v : JsValue,
) -> CreateMonitor? =
  #| (v) => (v instanceof CreateMonitor) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CreateMonitor (checked with instanceof)
pub extern "js" fn JsValue::as_create_monitor(self : JsValue) -> CreateMonitor? =
  #| (self) => (self instanceof CreateMonitor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CreateMonitor (unchecked)
pub extern "js" fn JsValue::to_create_monitor(self : JsValue) -> CreateMonitor =
  #| (self) => self

///|
pub extern "js" fn CreateMonitor::to_event_target(
  self : CreateMonitor,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn CreateMonitor::get_ondownloadprogress(
  self : CreateMonitor,
) -> EventHandler =
  #| (self) => self.ondownloadprogress

///|
pub extern "js" fn CreateMonitor::set_ondownloadprogress(
  self : CreateMonitor,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondownloadprogress = value }
