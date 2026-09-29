// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/proofreader-api

///|
/// CorrectionType enum
pub(all) enum CorrectionType {
  Spelling
  Punctuation
  Capitalization
  Grammar
} derive(Eq, Debug)

pub extend CorrectionType with Eq::{equal, not_equal}
pub extend CorrectionType with @debug.Debug::{to_repr}

/// Convert to string value
pub fn CorrectionType::to_string(self : CorrectionType) -> String {
  match self {
    CorrectionType::Spelling => "spelling"
    CorrectionType::Punctuation => "punctuation"
    CorrectionType::Capitalization => "capitalization"
    CorrectionType::Grammar => "grammar"
  }
}

/// Parse from string value
pub fn CorrectionType::from_string(s : String) -> CorrectionType? {
  match s {
    "spelling" => Some(CorrectionType::Spelling)
    "punctuation" => Some(CorrectionType::Punctuation)
    "capitalization" => Some(CorrectionType::Capitalization)
    "grammar" => Some(CorrectionType::Grammar)
    _ => None
  }
}

///|
/// ProofreaderCreateCoreOptions dictionary
pub(all) struct ProofreaderCreateCoreOptions {
  includeCorrectionTypes : Bool?
  includeCorrectionExplanations : Bool?
  expectedInputLanguages : FixedArray[String]?
  correctionExplanationLanguage : String?
}

/// Create a new ProofreaderCreateCoreOptions with default values
pub fn ProofreaderCreateCoreOptions::default() -> ProofreaderCreateCoreOptions {
  ProofreaderCreateCoreOptions::{
    includeCorrectionTypes: None,
    includeCorrectionExplanations: None,
    expectedInputLanguages: None,
    correctionExplanationLanguage: None,
  }
}

extern "js" fn ProofreaderCreateCoreOptions::to_js_ffi(self : ProofreaderCreateCoreOptions) -> JsValue =
  #| (self) => ({
  #|   includeCorrectionTypes: (self.includeCorrectionTypes === -1 ? undefined : self.includeCorrectionTypes),
  #|   includeCorrectionExplanations: (self.includeCorrectionExplanations === -1 ? undefined : self.includeCorrectionExplanations),
  #|   expectedInputLanguages: self.expectedInputLanguages,
  #|   correctionExplanationLanguage: self.correctionExplanationLanguage
  #| })

/// Convert to JsValue
pub fn ProofreaderCreateCoreOptions::to_js(self : ProofreaderCreateCoreOptions) -> JsValue {
  ProofreaderCreateCoreOptions::to_js_ffi(self)
}

extern "js" fn ProofreaderCreateCoreOptions::from_js_ffi(value : JsValue) -> ProofreaderCreateCoreOptions =
  #| (v) => ({
  #|   includeCorrectionTypes: (v.includeCorrectionTypes === undefined ? -1 : v.includeCorrectionTypes),
  #|   includeCorrectionExplanations: (v.includeCorrectionExplanations === undefined ? -1 : v.includeCorrectionExplanations),
  #|   expectedInputLanguages: v.expectedInputLanguages,
  #|   correctionExplanationLanguage: v.correctionExplanationLanguage
  #| })

/// Convert from JsValue
pub fn ProofreaderCreateCoreOptions::from_js(value : JsValue) -> ProofreaderCreateCoreOptions {
  ProofreaderCreateCoreOptions::from_js_ffi(value)
}

///|
/// ProofreaderCreateOptions dictionary
pub(all) struct ProofreaderCreateOptions {
  includeCorrectionTypes : Bool?
  includeCorrectionExplanations : Bool?
  expectedInputLanguages : FixedArray[String]?
  correctionExplanationLanguage : String?
  signal : AbortSignal?
  monitor : CreateMonitorCallback?
}

/// Create a new ProofreaderCreateOptions with default values
pub fn ProofreaderCreateOptions::default() -> ProofreaderCreateOptions {
  ProofreaderCreateOptions::{
    includeCorrectionTypes: None,
    includeCorrectionExplanations: None,
    expectedInputLanguages: None,
    correctionExplanationLanguage: None,
    signal: None,
    monitor: None,
  }
}

extern "js" fn ProofreaderCreateOptions::to_js_ffi(self : ProofreaderCreateOptions) -> JsValue =
  #| (self) => ({
  #|   includeCorrectionTypes: (self.includeCorrectionTypes === -1 ? undefined : self.includeCorrectionTypes),
  #|   includeCorrectionExplanations: (self.includeCorrectionExplanations === -1 ? undefined : self.includeCorrectionExplanations),
  #|   expectedInputLanguages: self.expectedInputLanguages,
  #|   correctionExplanationLanguage: self.correctionExplanationLanguage,
  #|   signal: ((() => { const v = self.signal; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   monitor: ((() => { const v = self.monitor; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

/// Convert to JsValue
pub fn ProofreaderCreateOptions::to_js(self : ProofreaderCreateOptions) -> JsValue {
  ProofreaderCreateOptions::to_js_ffi(self)
}

extern "js" fn ProofreaderCreateOptions::from_js_ffi(value : JsValue) -> ProofreaderCreateOptions =
  #| (v) => ({
  #|   includeCorrectionTypes: (v.includeCorrectionTypes === undefined ? -1 : v.includeCorrectionTypes),
  #|   includeCorrectionExplanations: (v.includeCorrectionExplanations === undefined ? -1 : v.includeCorrectionExplanations),
  #|   expectedInputLanguages: v.expectedInputLanguages,
  #|   correctionExplanationLanguage: v.correctionExplanationLanguage,
  #|   signal: (v.signal === undefined ? { $tag: 0 } : { $tag: 1, _0: v.signal }),
  #|   monitor: (v.monitor === undefined ? { $tag: 0 } : { $tag: 1, _0: v.monitor })
  #| })

/// Convert from JsValue
pub fn ProofreaderCreateOptions::from_js(value : JsValue) -> ProofreaderCreateOptions {
  ProofreaderCreateOptions::from_js_ffi(value)
}

///|
/// ProofreaderProofreadOptions dictionary
pub(all) struct ProofreaderProofreadOptions {
  signal : AbortSignal?
}

/// Create a new ProofreaderProofreadOptions with default values
pub fn ProofreaderProofreadOptions::default() -> ProofreaderProofreadOptions {
  ProofreaderProofreadOptions::{
    signal: None,
  }
}

extern "js" fn ProofreaderProofreadOptions::to_js_ffi(self : ProofreaderProofreadOptions) -> JsValue =
  #| (self) => ({
  #|   signal: ((() => { const v = self.signal; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

/// Convert to JsValue
pub fn ProofreaderProofreadOptions::to_js(self : ProofreaderProofreadOptions) -> JsValue {
  ProofreaderProofreadOptions::to_js_ffi(self)
}

extern "js" fn ProofreaderProofreadOptions::from_js_ffi(value : JsValue) -> ProofreaderProofreadOptions =
  #| (v) => ({
  #|   signal: (v.signal === undefined ? { $tag: 0 } : { $tag: 1, _0: v.signal })
  #| })

/// Convert from JsValue
pub fn ProofreaderProofreadOptions::from_js(value : JsValue) -> ProofreaderProofreadOptions {
  ProofreaderProofreadOptions::from_js_ffi(value)
}

///|
/// ProofreadResult dictionary
pub(all) struct ProofreadResult {
  correctedInput : String?
  corrections : FixedArray[ProofreadCorrection]?
}

/// Create a new ProofreadResult with default values
pub fn ProofreadResult::default() -> ProofreadResult {
  ProofreadResult::{
    correctedInput: None,
    corrections: None,
  }
}

extern "js" fn ProofreadResult::to_js_ffi(self : ProofreadResult) -> JsValue =
  #| (self) => ({
  #|   correctedInput: self.correctedInput,
  #|   corrections: self.corrections
  #| })

/// Convert to JsValue
pub fn ProofreadResult::to_js(self : ProofreadResult) -> JsValue {
  ProofreadResult::to_js_ffi(self)
}

extern "js" fn ProofreadResult::from_js_ffi(value : JsValue) -> ProofreadResult =
  #| (v) => ({
  #|   correctedInput: v.correctedInput,
  #|   corrections: v.corrections
  #| })

/// Convert from JsValue
pub fn ProofreadResult::from_js(value : JsValue) -> ProofreadResult {
  ProofreadResult::from_js_ffi(value)
}

///|
/// ProofreadCorrection dictionary
pub(all) struct ProofreadCorrection {
  startIndex : Int64?
  endIndex : Int64?
  correction : String?
  types : FixedArray[CorrectionType]?
  explanation : String?
}

/// Create a new ProofreadCorrection with default values
pub fn ProofreadCorrection::default() -> ProofreadCorrection {
  ProofreadCorrection::{
    startIndex: None,
    endIndex: None,
    correction: None,
    types: None,
    explanation: None,
  }
}

extern "js" fn ProofreadCorrection::to_js_ffi(self : ProofreadCorrection) -> JsValue =
  #| (self) => ({
  #|   startIndex: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.startIndex),
  #|   endIndex: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.endIndex),
  #|   correction: self.correction,
  #|   types: self.types,
  #|   explanation: self.explanation
  #| })

/// Convert to JsValue
pub fn ProofreadCorrection::to_js(self : ProofreadCorrection) -> JsValue {
  ProofreadCorrection::to_js_ffi(self)
}

extern "js" fn ProofreadCorrection::from_js_ffi(value : JsValue) -> ProofreadCorrection =
  #| (v) => ({
  #|   startIndex: (v.startIndex === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.startIndex)),
  #|   endIndex: (v.endIndex === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.endIndex)),
  #|   correction: v.correction,
  #|   types: v.types,
  #|   explanation: v.explanation
  #| })

/// Convert from JsValue
pub fn ProofreadCorrection::from_js(value : JsValue) -> ProofreadCorrection {
  ProofreadCorrection::from_js_ffi(value)
}

///|
/// Catch dictionary conversion errors, including unsafe integer ranges.
pub fn ProofreadCorrection::to_js_checked(self : ProofreadCorrection) -> Result[JsValue, JsError] { try_dictionary_conversion(() => self.to_js()) }

///|
extern "js" fn try_dictionary_ProofreadCorrection(convert : () -> ProofreadCorrection) -> Result[ProofreadCorrection, JsError] =
  #| convert => { try { return { $tag: 1, _0: convert() }; } catch (error) { return { $tag: 0, _0: error }; } }

///|
/// Catch invalid host fields, including unsafe integer ranges.
pub fn ProofreadCorrection::from_js_checked(value : JsValue) -> Result[ProofreadCorrection, JsError] { try_dictionary_ProofreadCorrection(() => ProofreadCorrection::from_js(value)) }

///|
/// Proofreader interface
pub type Proofreader

pub extern "js" fn Proofreader::to_js_value(self : Proofreader) -> JsValue =
  #| (self) => self

/// Cast JsValue to Proofreader (unchecked)
pub extern "js" fn Proofreader::from_js_value(v : JsValue) -> Proofreader =
  #| (v) => v

/// Safely cast JsValue to Proofreader (checked with instanceof)
pub extern "js" fn Proofreader::from_js_value_opt(v : JsValue) -> Proofreader? =
  #| (v) => (v instanceof Proofreader) ? { $tag: 1, _0: v } : { $tag: 0 }

/// Safely cast JsValue to Proofreader (checked with instanceof)
pub extern "js" fn JsValue::as_proofreader(self : JsValue) -> Proofreader? =
  #| (self) => (self instanceof Proofreader) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Cast JsValue to Proofreader (unchecked)
pub extern "js" fn JsValue::to_proofreader(self : JsValue) -> Proofreader =
  #| (self) => self

pub extern "js" fn Proofreader::create() -> Promise[Proofreader] =
  #| () => Proofreader.create()

extern "js" fn Proofreader::create_with_options_ffi(options : JsValue) -> Promise[Proofreader] =
  #| (options) => Proofreader.create(options)

pub fn Proofreader::create_with_options(options : ProofreaderCreateOptions) -> Promise[Proofreader] {
  Proofreader::create_with_options_ffi(options.to_js())
}

pub extern "js" fn Proofreader::availability() -> Promise[Availability] =
  #| () => Proofreader.availability()

extern "js" fn Proofreader::availability_with_options_ffi(options : JsValue) -> Promise[Availability] =
  #| (options) => Proofreader.availability(options)

pub fn Proofreader::availability_with_options(options : ProofreaderCreateCoreOptions) -> Promise[Availability] {
  Proofreader::availability_with_options_ffi(options.to_js())
}

pub extern "js" fn Proofreader::proofread(self : Proofreader, input : String) -> Promise[ProofreadResult] =
  #| (self, input) => self.proofread(input).then(v => ({
  #|   correctedInput: v.correctedInput,
  #|   corrections: v.corrections
  #| }))

extern "js" fn Proofreader::proofread_with_options_ffi(self : Proofreader, input : String, options : JsValue) -> Promise[ProofreadResult] =
  #| (self, input, options) => self.proofread(input, options).then(v => ({
  #|   correctedInput: v.correctedInput,
  #|   corrections: v.corrections
  #| }))

pub fn Proofreader::proofread_with_options(self : Proofreader, input : String, options : ProofreaderProofreadOptions) -> Promise[ProofreadResult] {
  Proofreader::proofread_with_options_ffi(self, input, options.to_js())
}

pub extern "js" fn Proofreader::get_include_correction_types(self : Proofreader) -> Bool =
  #| (self) => self.includeCorrectionTypes

pub extern "js" fn Proofreader::get_include_correction_explanations(self : Proofreader) -> Bool =
  #| (self) => self.includeCorrectionExplanations

pub extern "js" fn Proofreader::get_expected_input_languages(self : Proofreader) -> FixedArray[String] =
  #| (self) => self.expectedInputLanguages

pub extern "js" fn Proofreader::get_correction_explanation_language(self : Proofreader) -> String? =
  #| (self) => (self.correctionExplanationLanguage) ?? undefined
