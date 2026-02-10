// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/speech-api

///|
/// SpeechRecognitionErrorCode enum
pub(all) enum SpeechRecognitionErrorCode {
  NoSpeech
  Aborted
  AudioCapture
  Network
  NotAllowed
  ServiceNotAllowed
  LanguageNotSupported
  PhrasesNotSupported
} derive(Eq, Show)

///|
/// Convert to string value
pub fn SpeechRecognitionErrorCode::to_string(
  self : SpeechRecognitionErrorCode,
) -> String {
  match self {
    SpeechRecognitionErrorCode::NoSpeech => "no-speech"
    SpeechRecognitionErrorCode::Aborted => "aborted"
    SpeechRecognitionErrorCode::AudioCapture => "audio-capture"
    SpeechRecognitionErrorCode::Network => "network"
    SpeechRecognitionErrorCode::NotAllowed => "not-allowed"
    SpeechRecognitionErrorCode::ServiceNotAllowed => "service-not-allowed"
    SpeechRecognitionErrorCode::LanguageNotSupported => "language-not-supported"
    SpeechRecognitionErrorCode::PhrasesNotSupported => "phrases-not-supported"
  }
}

///|
/// Parse from string value
pub fn SpeechRecognitionErrorCode::from_string(
  s : String,
) -> SpeechRecognitionErrorCode? {
  match s {
    "no-speech" => Some(SpeechRecognitionErrorCode::NoSpeech)
    "aborted" => Some(SpeechRecognitionErrorCode::Aborted)
    "audio-capture" => Some(SpeechRecognitionErrorCode::AudioCapture)
    "network" => Some(SpeechRecognitionErrorCode::Network)
    "not-allowed" => Some(SpeechRecognitionErrorCode::NotAllowed)
    "service-not-allowed" => Some(SpeechRecognitionErrorCode::ServiceNotAllowed)
    "language-not-supported" =>
      Some(SpeechRecognitionErrorCode::LanguageNotSupported)
    "phrases-not-supported" =>
      Some(SpeechRecognitionErrorCode::PhrasesNotSupported)
    _ => None
  }
}

///|
/// AvailabilityStatus enum
pub(all) enum AvailabilityStatus {
  Unavailable
  Downloadable
  Downloading
  Available
} derive(Eq, Show)

///|
/// Convert to string value
pub fn AvailabilityStatus::to_string(self : AvailabilityStatus) -> String {
  match self {
    AvailabilityStatus::Unavailable => "unavailable"
    AvailabilityStatus::Downloadable => "downloadable"
    AvailabilityStatus::Downloading => "downloading"
    AvailabilityStatus::Available => "available"
  }
}

///|
/// Parse from string value
pub fn AvailabilityStatus::from_string(s : String) -> AvailabilityStatus? {
  match s {
    "unavailable" => Some(AvailabilityStatus::Unavailable)
    "downloadable" => Some(AvailabilityStatus::Downloadable)
    "downloading" => Some(AvailabilityStatus::Downloading)
    "available" => Some(AvailabilityStatus::Available)
    _ => None
  }
}

///|
/// SpeechSynthesisErrorCode enum
pub(all) enum SpeechSynthesisErrorCode {
  Canceled
  Interrupted
  AudioBusy
  AudioHardware
  Network
  SynthesisUnavailable
  SynthesisFailed
  LanguageUnavailable
  VoiceUnavailable
  TextTooLong
  InvalidArgument
  NotAllowed
} derive(Eq, Show)

///|
/// Convert to string value
pub fn SpeechSynthesisErrorCode::to_string(
  self : SpeechSynthesisErrorCode,
) -> String {
  match self {
    SpeechSynthesisErrorCode::Canceled => "canceled"
    SpeechSynthesisErrorCode::Interrupted => "interrupted"
    SpeechSynthesisErrorCode::AudioBusy => "audio-busy"
    SpeechSynthesisErrorCode::AudioHardware => "audio-hardware"
    SpeechSynthesisErrorCode::Network => "network"
    SpeechSynthesisErrorCode::SynthesisUnavailable => "synthesis-unavailable"
    SpeechSynthesisErrorCode::SynthesisFailed => "synthesis-failed"
    SpeechSynthesisErrorCode::LanguageUnavailable => "language-unavailable"
    SpeechSynthesisErrorCode::VoiceUnavailable => "voice-unavailable"
    SpeechSynthesisErrorCode::TextTooLong => "text-too-long"
    SpeechSynthesisErrorCode::InvalidArgument => "invalid-argument"
    SpeechSynthesisErrorCode::NotAllowed => "not-allowed"
  }
}

///|
/// Parse from string value
pub fn SpeechSynthesisErrorCode::from_string(
  s : String,
) -> SpeechSynthesisErrorCode? {
  match s {
    "canceled" => Some(SpeechSynthesisErrorCode::Canceled)
    "interrupted" => Some(SpeechSynthesisErrorCode::Interrupted)
    "audio-busy" => Some(SpeechSynthesisErrorCode::AudioBusy)
    "audio-hardware" => Some(SpeechSynthesisErrorCode::AudioHardware)
    "network" => Some(SpeechSynthesisErrorCode::Network)
    "synthesis-unavailable" =>
      Some(SpeechSynthesisErrorCode::SynthesisUnavailable)
    "synthesis-failed" => Some(SpeechSynthesisErrorCode::SynthesisFailed)
    "language-unavailable" =>
      Some(SpeechSynthesisErrorCode::LanguageUnavailable)
    "voice-unavailable" => Some(SpeechSynthesisErrorCode::VoiceUnavailable)
    "text-too-long" => Some(SpeechSynthesisErrorCode::TextTooLong)
    "invalid-argument" => Some(SpeechSynthesisErrorCode::InvalidArgument)
    "not-allowed" => Some(SpeechSynthesisErrorCode::NotAllowed)
    _ => None
  }
}

///|
/// SpeechRecognitionOptions dictionary
pub(all) struct SpeechRecognitionOptions {
  langs : Array[String]
  processLocally : Bool?
}

///|
/// Create a new SpeechRecognitionOptions with default values
pub fn SpeechRecognitionOptions::default() -> SpeechRecognitionOptions {
  SpeechRecognitionOptions::{ langs: [], processLocally: None }
}

///|
extern "js" fn SpeechRecognitionOptions::to_js_ffi(
  self : SpeechRecognitionOptions,
) -> JsValue =
  #| (self) => ({
  #|   langs: self.langs,
  #|   processLocally: (self.processLocally === -1 ? undefined : self.processLocally)
  #| })

///|
/// Convert to JsValue
pub fn SpeechRecognitionOptions::to_js(
  self : SpeechRecognitionOptions,
) -> JsValue {
  SpeechRecognitionOptions::to_js_ffi(self)
}

///|
extern "js" fn SpeechRecognitionOptions::from_js_ffi(
  value : JsValue,
) -> SpeechRecognitionOptions =
  #| (v) => ({
  #|   langs: v.langs,
  #|   processLocally: (v.processLocally === undefined ? -1 : v.processLocally)
  #| })

///|
/// Convert from JsValue
pub fn SpeechRecognitionOptions::from_js(
  value : JsValue,
) -> SpeechRecognitionOptions {
  SpeechRecognitionOptions::from_js_ffi(value)
}

///|
/// SpeechRecognitionErrorEventInit dictionary
pub(all) struct SpeechRecognitionErrorEventInit {
  error : SpeechRecognitionErrorCode
  message : String?
}

///|
/// Create a new SpeechRecognitionErrorEventInit
pub fn SpeechRecognitionErrorEventInit::new(
  error~ : SpeechRecognitionErrorCode,
) -> SpeechRecognitionErrorEventInit {
  SpeechRecognitionErrorEventInit::{ error, message: None }
}

///|
extern "js" fn SpeechRecognitionErrorEventInit::to_js_ffi(
  self : SpeechRecognitionErrorEventInit,
) -> JsValue =
  #| (self) => ({
  #|   error: ['no-speech', 'aborted', 'audio-capture', 'network', 'not-allowed', 'service-not-allowed', 'language-not-supported', 'phrases-not-supported'][self.error],
  #|   message: self.message
  #| })

///|
/// Convert to JsValue
pub fn SpeechRecognitionErrorEventInit::to_js(
  self : SpeechRecognitionErrorEventInit,
) -> JsValue {
  SpeechRecognitionErrorEventInit::to_js_ffi(self)
}

///|
extern "js" fn SpeechRecognitionErrorEventInit::from_js_ffi(
  value : JsValue,
) -> SpeechRecognitionErrorEventInit =
  #| (v) => ({
  #|   error: ['no-speech', 'aborted', 'audio-capture', 'network', 'not-allowed', 'service-not-allowed', 'language-not-supported', 'phrases-not-supported'].indexOf(v.error),
  #|   message: v.message
  #| })

///|
/// Convert from JsValue
pub fn SpeechRecognitionErrorEventInit::from_js(
  value : JsValue,
) -> SpeechRecognitionErrorEventInit {
  SpeechRecognitionErrorEventInit::from_js_ffi(value)
}

///|
/// SpeechRecognitionEventInit dictionary
pub(all) struct SpeechRecognitionEventInit {
  resultIndex : Int?
  results : SpeechRecognitionResultList
}

///|
/// Create a new SpeechRecognitionEventInit
pub fn SpeechRecognitionEventInit::new(
  results~ : SpeechRecognitionResultList,
) -> SpeechRecognitionEventInit {
  SpeechRecognitionEventInit::{ resultIndex: None, results }
}

///|
extern "js" fn SpeechRecognitionEventInit::to_js_ffi(
  self : SpeechRecognitionEventInit,
) -> JsValue =
  #| (self) => ({
  #|   resultIndex: self.resultIndex,
  #|   results: self.results
  #| })

///|
/// Convert to JsValue
pub fn SpeechRecognitionEventInit::to_js(
  self : SpeechRecognitionEventInit,
) -> JsValue {
  SpeechRecognitionEventInit::to_js_ffi(self)
}

///|
extern "js" fn SpeechRecognitionEventInit::from_js_ffi(
  value : JsValue,
) -> SpeechRecognitionEventInit =
  #| (v) => ({
  #|   resultIndex: v.resultIndex,
  #|   results: v.results
  #| })

///|
/// Convert from JsValue
pub fn SpeechRecognitionEventInit::from_js(
  value : JsValue,
) -> SpeechRecognitionEventInit {
  SpeechRecognitionEventInit::from_js_ffi(value)
}

///|
/// SpeechSynthesisEventInit dictionary
pub(all) struct SpeechSynthesisEventInit {
  utterance : SpeechSynthesisUtterance
  charIndex : Int?
  charLength : Int?
  elapsedTime : Double?
  name : String?
}

///|
/// Create a new SpeechSynthesisEventInit
pub fn SpeechSynthesisEventInit::new(
  utterance~ : SpeechSynthesisUtterance,
) -> SpeechSynthesisEventInit {
  SpeechSynthesisEventInit::{
    utterance,
    charIndex: None,
    charLength: None,
    elapsedTime: None,
    name: None,
  }
}

///|
extern "js" fn SpeechSynthesisEventInit::to_js_ffi(
  self : SpeechSynthesisEventInit,
) -> JsValue =
  #| (self) => ({
  #|   utterance: self.utterance,
  #|   charIndex: self.charIndex,
  #|   charLength: self.charLength,
  #|   elapsedTime: self.elapsedTime,
  #|   name: self.name
  #| })

///|
/// Convert to JsValue
pub fn SpeechSynthesisEventInit::to_js(
  self : SpeechSynthesisEventInit,
) -> JsValue {
  SpeechSynthesisEventInit::to_js_ffi(self)
}

///|
extern "js" fn SpeechSynthesisEventInit::from_js_ffi(
  value : JsValue,
) -> SpeechSynthesisEventInit =
  #| (v) => ({
  #|   utterance: v.utterance,
  #|   charIndex: v.charIndex,
  #|   charLength: v.charLength,
  #|   elapsedTime: v.elapsedTime,
  #|   name: v.name
  #| })

///|
/// Convert from JsValue
pub fn SpeechSynthesisEventInit::from_js(
  value : JsValue,
) -> SpeechSynthesisEventInit {
  SpeechSynthesisEventInit::from_js_ffi(value)
}

///|
/// SpeechSynthesisErrorEventInit dictionary
pub(all) struct SpeechSynthesisErrorEventInit {
  utterance : SpeechSynthesisUtterance
  charIndex : Int?
  charLength : Int?
  elapsedTime : Double?
  name : String?
  error : SpeechSynthesisErrorCode
}

///|
/// Create a new SpeechSynthesisErrorEventInit
pub fn SpeechSynthesisErrorEventInit::new(
  utterance~ : SpeechSynthesisUtterance,
  error~ : SpeechSynthesisErrorCode,
) -> SpeechSynthesisErrorEventInit {
  SpeechSynthesisErrorEventInit::{
    utterance,
    charIndex: None,
    charLength: None,
    elapsedTime: None,
    name: None,
    error,
  }
}

///|
extern "js" fn SpeechSynthesisErrorEventInit::to_js_ffi(
  self : SpeechSynthesisErrorEventInit,
) -> JsValue =
  #| (self) => ({
  #|   utterance: self.utterance,
  #|   charIndex: self.charIndex,
  #|   charLength: self.charLength,
  #|   elapsedTime: self.elapsedTime,
  #|   name: self.name,
  #|   error: ['canceled', 'interrupted', 'audio-busy', 'audio-hardware', 'network', 'synthesis-unavailable', 'synthesis-failed', 'language-unavailable', 'voice-unavailable', 'text-too-long', 'invalid-argument', 'not-allowed'][self.error]
  #| })

///|
/// Convert to JsValue
pub fn SpeechSynthesisErrorEventInit::to_js(
  self : SpeechSynthesisErrorEventInit,
) -> JsValue {
  SpeechSynthesisErrorEventInit::to_js_ffi(self)
}

///|
extern "js" fn SpeechSynthesisErrorEventInit::from_js_ffi(
  value : JsValue,
) -> SpeechSynthesisErrorEventInit =
  #| (v) => ({
  #|   utterance: v.utterance,
  #|   charIndex: v.charIndex,
  #|   charLength: v.charLength,
  #|   elapsedTime: v.elapsedTime,
  #|   name: v.name,
  #|   error: ['canceled', 'interrupted', 'audio-busy', 'audio-hardware', 'network', 'synthesis-unavailable', 'synthesis-failed', 'language-unavailable', 'voice-unavailable', 'text-too-long', 'invalid-argument', 'not-allowed'].indexOf(v.error)
  #| })

///|
/// Convert from JsValue
pub fn SpeechSynthesisErrorEventInit::from_js(
  value : JsValue,
) -> SpeechSynthesisErrorEventInit {
  SpeechSynthesisErrorEventInit::from_js_ffi(value)
}

///|
/// SpeechRecognition interface
pub type SpeechRecognition

///|
pub extern "js" fn SpeechRecognition::to_js_value(
  self : SpeechRecognition,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SpeechRecognition (unchecked)
pub extern "js" fn SpeechRecognition::from_js_value(
  v : JsValue,
) -> SpeechRecognition =
  #| (v) => v

///|
/// Safely cast JsValue to SpeechRecognition (checked with instanceof)
pub extern "js" fn SpeechRecognition::from_js_value_opt(
  v : JsValue,
) -> SpeechRecognition? =
  #| (v) => (v instanceof SpeechRecognition) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SpeechRecognition (checked with instanceof)
pub extern "js" fn JsValue::as_speech_recognition(
  self : JsValue,
) -> SpeechRecognition? =
  #| (self) => (self instanceof SpeechRecognition) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SpeechRecognition (unchecked)
pub extern "js" fn JsValue::to_speech_recognition(
  self : JsValue,
) -> SpeechRecognition =
  #| (self) => self

///|
pub extern "js" fn SpeechRecognition::to_event_target(
  self : SpeechRecognition,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SpeechRecognition::new() -> SpeechRecognition =
  #| () => new SpeechRecognition()

///|
pub extern "js" fn SpeechRecognition::get_grammars(
  self : SpeechRecognition,
) -> SpeechGrammarList =
  #| (self) => self.grammars

///|
pub extern "js" fn SpeechRecognition::set_grammars(
  self : SpeechRecognition,
  value : SpeechGrammarList,
) -> Unit =
  #| (self, value) => { self.grammars = value }

///|
pub extern "js" fn SpeechRecognition::get_lang(
  self : SpeechRecognition,
) -> String =
  #| (self) => self.lang

///|
pub extern "js" fn SpeechRecognition::set_lang(
  self : SpeechRecognition,
  value : String,
) -> Unit =
  #| (self, value) => { self.lang = value }

///|
pub extern "js" fn SpeechRecognition::get_continuous(
  self : SpeechRecognition,
) -> Bool =
  #| (self) => self.continuous

///|
pub extern "js" fn SpeechRecognition::set_continuous(
  self : SpeechRecognition,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.continuous = value }

///|
pub extern "js" fn SpeechRecognition::get_interim_results(
  self : SpeechRecognition,
) -> Bool =
  #| (self) => self.interimResults

///|
pub extern "js" fn SpeechRecognition::set_interim_results(
  self : SpeechRecognition,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.interimResults = value }

///|
pub extern "js" fn SpeechRecognition::get_max_alternatives(
  self : SpeechRecognition,
) -> Int =
  #| (self) => self.maxAlternatives

///|
pub extern "js" fn SpeechRecognition::set_max_alternatives(
  self : SpeechRecognition,
  value : Int,
) -> Unit =
  #| (self, value) => { self.maxAlternatives = value }

///|
pub extern "js" fn SpeechRecognition::get_process_locally(
  self : SpeechRecognition,
) -> Bool =
  #| (self) => self.processLocally

///|
pub extern "js" fn SpeechRecognition::set_process_locally(
  self : SpeechRecognition,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.processLocally = value }

///|
pub extern "js" fn SpeechRecognition::get_phrases(
  self : SpeechRecognition,
) -> JsValue =
  #| (self) => self.phrases

///|
pub extern "js" fn SpeechRecognition::set_phrases(
  self : SpeechRecognition,
  value : JsValue,
) -> Unit =
  #| (self, value) => { self.phrases = value }

///|
pub extern "js" fn SpeechRecognition::start(self : SpeechRecognition) -> Unit =
  #| (self) => self.start()

///|
pub extern "js" fn SpeechRecognition::start_with_audio_track_media_stream_track(
  self : SpeechRecognition,
  audio_track : MediaStreamTrack,
) -> Unit =
  #| (self, audio_track) => self.start(audio_track)

///|
pub extern "js" fn SpeechRecognition::stop(self : SpeechRecognition) -> Unit =
  #| (self) => self.stop()

///|
pub extern "js" fn SpeechRecognition::abort(self : SpeechRecognition) -> Unit =
  #| (self) => self.abort()

///|
extern "js" fn SpeechRecognition::available_ffi(
  options : JsValue,
) -> Promise[AvailabilityStatus] =
  #| (options) => SpeechRecognition.available(options)

///|
pub fn SpeechRecognition::available(
  options : SpeechRecognitionOptions,
) -> Promise[AvailabilityStatus] {
  SpeechRecognition::available_ffi(options.to_js())
}

///|
extern "js" fn SpeechRecognition::install_ffi(
  options : JsValue,
) -> Promise[Bool] =
  #| (options) => SpeechRecognition.install(options)

///|
pub fn SpeechRecognition::install(
  options : SpeechRecognitionOptions,
) -> Promise[Bool] {
  SpeechRecognition::install_ffi(options.to_js())
}

///|
pub extern "js" fn SpeechRecognition::get_onaudiostart(
  self : SpeechRecognition,
) -> EventHandler =
  #| (self) => self.onaudiostart

///|
pub extern "js" fn SpeechRecognition::set_onaudiostart(
  self : SpeechRecognition,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onaudiostart = value }

///|
pub extern "js" fn SpeechRecognition::get_onsoundstart(
  self : SpeechRecognition,
) -> EventHandler =
  #| (self) => self.onsoundstart

///|
pub extern "js" fn SpeechRecognition::set_onsoundstart(
  self : SpeechRecognition,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsoundstart = value }

///|
pub extern "js" fn SpeechRecognition::get_onspeechstart(
  self : SpeechRecognition,
) -> EventHandler =
  #| (self) => self.onspeechstart

///|
pub extern "js" fn SpeechRecognition::set_onspeechstart(
  self : SpeechRecognition,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onspeechstart = value }

///|
pub extern "js" fn SpeechRecognition::get_onspeechend(
  self : SpeechRecognition,
) -> EventHandler =
  #| (self) => self.onspeechend

///|
pub extern "js" fn SpeechRecognition::set_onspeechend(
  self : SpeechRecognition,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onspeechend = value }

///|
pub extern "js" fn SpeechRecognition::get_onsoundend(
  self : SpeechRecognition,
) -> EventHandler =
  #| (self) => self.onsoundend

///|
pub extern "js" fn SpeechRecognition::set_onsoundend(
  self : SpeechRecognition,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsoundend = value }

///|
pub extern "js" fn SpeechRecognition::get_onaudioend(
  self : SpeechRecognition,
) -> EventHandler =
  #| (self) => self.onaudioend

///|
pub extern "js" fn SpeechRecognition::set_onaudioend(
  self : SpeechRecognition,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onaudioend = value }

///|
pub extern "js" fn SpeechRecognition::get_onresult(
  self : SpeechRecognition,
) -> EventHandler =
  #| (self) => self.onresult

///|
pub extern "js" fn SpeechRecognition::set_onresult(
  self : SpeechRecognition,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onresult = value }

///|
pub extern "js" fn SpeechRecognition::get_onnomatch(
  self : SpeechRecognition,
) -> EventHandler =
  #| (self) => self.onnomatch

///|
pub extern "js" fn SpeechRecognition::set_onnomatch(
  self : SpeechRecognition,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onnomatch = value }

///|
pub extern "js" fn SpeechRecognition::get_onerror(
  self : SpeechRecognition,
) -> EventHandler =
  #| (self) => self.onerror

///|
pub extern "js" fn SpeechRecognition::set_onerror(
  self : SpeechRecognition,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onerror = value }

///|
pub extern "js" fn SpeechRecognition::get_onstart(
  self : SpeechRecognition,
) -> EventHandler =
  #| (self) => self.onstart

///|
pub extern "js" fn SpeechRecognition::set_onstart(
  self : SpeechRecognition,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onstart = value }

///|
pub extern "js" fn SpeechRecognition::get_onend(
  self : SpeechRecognition,
) -> EventHandler =
  #| (self) => self.onend

///|
pub extern "js" fn SpeechRecognition::set_onend(
  self : SpeechRecognition,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onend = value }

///|
/// SpeechRecognitionErrorEvent interface
pub type SpeechRecognitionErrorEvent

///|
pub extern "js" fn SpeechRecognitionErrorEvent::to_js_value(
  self : SpeechRecognitionErrorEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SpeechRecognitionErrorEvent (unchecked)
pub extern "js" fn SpeechRecognitionErrorEvent::from_js_value(
  v : JsValue,
) -> SpeechRecognitionErrorEvent =
  #| (v) => v

///|
/// Safely cast JsValue to SpeechRecognitionErrorEvent (checked with instanceof)
pub extern "js" fn SpeechRecognitionErrorEvent::from_js_value_opt(
  v : JsValue,
) -> SpeechRecognitionErrorEvent? =
  #| (v) => (v instanceof SpeechRecognitionErrorEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SpeechRecognitionErrorEvent (checked with instanceof)
pub extern "js" fn JsValue::as_speech_recognition_error_event(
  self : JsValue,
) -> SpeechRecognitionErrorEvent? =
  #| (self) => (self instanceof SpeechRecognitionErrorEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SpeechRecognitionErrorEvent (unchecked)
pub extern "js" fn JsValue::to_speech_recognition_error_event(
  self : JsValue,
) -> SpeechRecognitionErrorEvent =
  #| (self) => self

///|
pub extern "js" fn SpeechRecognitionErrorEvent::to_event(
  self : SpeechRecognitionErrorEvent,
) -> Event =
  #| (self) => self

///|
extern "js" fn SpeechRecognitionErrorEvent::new_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> SpeechRecognitionErrorEvent =
  #| (type_, event_init_dict) => new SpeechRecognitionErrorEvent(type_, event_init_dict)

///|
pub fn SpeechRecognitionErrorEvent::new(
  type_ : String,
  event_init_dict : SpeechRecognitionErrorEventInit,
) -> SpeechRecognitionErrorEvent {
  SpeechRecognitionErrorEvent::new_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn SpeechRecognitionErrorEvent::get_error(
  self : SpeechRecognitionErrorEvent,
) -> SpeechRecognitionErrorCode =
  #| (self) => ['no-speech', 'aborted', 'audio-capture', 'network', 'not-allowed', 'service-not-allowed', 'language-not-supported', 'phrases-not-supported'].indexOf(self.error)

///|
pub extern "js" fn SpeechRecognitionErrorEvent::get_message(
  self : SpeechRecognitionErrorEvent,
) -> String =
  #| (self) => self.message

///|
/// SpeechRecognitionAlternative interface
pub type SpeechRecognitionAlternative

///|
pub extern "js" fn SpeechRecognitionAlternative::to_js_value(
  self : SpeechRecognitionAlternative,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SpeechRecognitionAlternative (unchecked)
pub extern "js" fn SpeechRecognitionAlternative::from_js_value(
  v : JsValue,
) -> SpeechRecognitionAlternative =
  #| (v) => v

///|
/// Safely cast JsValue to SpeechRecognitionAlternative (checked with instanceof)
pub extern "js" fn SpeechRecognitionAlternative::from_js_value_opt(
  v : JsValue,
) -> SpeechRecognitionAlternative? =
  #| (v) => (v instanceof SpeechRecognitionAlternative) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SpeechRecognitionAlternative (checked with instanceof)
pub extern "js" fn JsValue::as_speech_recognition_alternative(
  self : JsValue,
) -> SpeechRecognitionAlternative? =
  #| (self) => (self instanceof SpeechRecognitionAlternative) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SpeechRecognitionAlternative (unchecked)
pub extern "js" fn JsValue::to_speech_recognition_alternative(
  self : JsValue,
) -> SpeechRecognitionAlternative =
  #| (self) => self

///|
pub extern "js" fn SpeechRecognitionAlternative::get_transcript(
  self : SpeechRecognitionAlternative,
) -> String =
  #| (self) => self.transcript

///|
pub extern "js" fn SpeechRecognitionAlternative::get_confidence(
  self : SpeechRecognitionAlternative,
) -> Double =
  #| (self) => self.confidence

///|
/// SpeechRecognitionResult interface
pub type SpeechRecognitionResult

///|
pub extern "js" fn SpeechRecognitionResult::to_js_value(
  self : SpeechRecognitionResult,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SpeechRecognitionResult (unchecked)
pub extern "js" fn SpeechRecognitionResult::from_js_value(
  v : JsValue,
) -> SpeechRecognitionResult =
  #| (v) => v

///|
/// Safely cast JsValue to SpeechRecognitionResult (checked with instanceof)
pub extern "js" fn SpeechRecognitionResult::from_js_value_opt(
  v : JsValue,
) -> SpeechRecognitionResult? =
  #| (v) => (v instanceof SpeechRecognitionResult) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SpeechRecognitionResult (checked with instanceof)
pub extern "js" fn JsValue::as_speech_recognition_result(
  self : JsValue,
) -> SpeechRecognitionResult? =
  #| (self) => (self instanceof SpeechRecognitionResult) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SpeechRecognitionResult (unchecked)
pub extern "js" fn JsValue::to_speech_recognition_result(
  self : JsValue,
) -> SpeechRecognitionResult =
  #| (self) => self

///|
pub extern "js" fn SpeechRecognitionResult::get_length(
  self : SpeechRecognitionResult,
) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn SpeechRecognitionResult::item(
  self : SpeechRecognitionResult,
  index : Int,
) -> SpeechRecognitionAlternative =
  #| (self, index) => self.item(index)

///|
pub extern "js" fn SpeechRecognitionResult::get(
  self : SpeechRecognitionResult,
  index : Int,
) -> SpeechRecognitionAlternative =
  #| (self, index) => self[index]

///|
pub extern "js" fn SpeechRecognitionResult::get_is_final(
  self : SpeechRecognitionResult,
) -> Bool =
  #| (self) => self.isFinal

///|
/// SpeechRecognitionResultList interface
pub type SpeechRecognitionResultList

///|
pub extern "js" fn SpeechRecognitionResultList::to_js_value(
  self : SpeechRecognitionResultList,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SpeechRecognitionResultList (unchecked)
pub extern "js" fn SpeechRecognitionResultList::from_js_value(
  v : JsValue,
) -> SpeechRecognitionResultList =
  #| (v) => v

///|
/// Safely cast JsValue to SpeechRecognitionResultList (checked with instanceof)
pub extern "js" fn SpeechRecognitionResultList::from_js_value_opt(
  v : JsValue,
) -> SpeechRecognitionResultList? =
  #| (v) => (v instanceof SpeechRecognitionResultList) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SpeechRecognitionResultList (checked with instanceof)
pub extern "js" fn JsValue::as_speech_recognition_result_list(
  self : JsValue,
) -> SpeechRecognitionResultList? =
  #| (self) => (self instanceof SpeechRecognitionResultList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SpeechRecognitionResultList (unchecked)
pub extern "js" fn JsValue::to_speech_recognition_result_list(
  self : JsValue,
) -> SpeechRecognitionResultList =
  #| (self) => self

///|
pub extern "js" fn SpeechRecognitionResultList::get_length(
  self : SpeechRecognitionResultList,
) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn SpeechRecognitionResultList::item(
  self : SpeechRecognitionResultList,
  index : Int,
) -> SpeechRecognitionResult =
  #| (self, index) => self.item(index)

///|
pub extern "js" fn SpeechRecognitionResultList::get(
  self : SpeechRecognitionResultList,
  index : Int,
) -> SpeechRecognitionResult =
  #| (self, index) => self[index]

///|
/// SpeechRecognitionEvent interface
pub type SpeechRecognitionEvent

///|
pub extern "js" fn SpeechRecognitionEvent::to_js_value(
  self : SpeechRecognitionEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SpeechRecognitionEvent (unchecked)
pub extern "js" fn SpeechRecognitionEvent::from_js_value(
  v : JsValue,
) -> SpeechRecognitionEvent =
  #| (v) => v

///|
/// Safely cast JsValue to SpeechRecognitionEvent (checked with instanceof)
pub extern "js" fn SpeechRecognitionEvent::from_js_value_opt(
  v : JsValue,
) -> SpeechRecognitionEvent? =
  #| (v) => (v instanceof SpeechRecognitionEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SpeechRecognitionEvent (checked with instanceof)
pub extern "js" fn JsValue::as_speech_recognition_event(
  self : JsValue,
) -> SpeechRecognitionEvent? =
  #| (self) => (self instanceof SpeechRecognitionEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SpeechRecognitionEvent (unchecked)
pub extern "js" fn JsValue::to_speech_recognition_event(
  self : JsValue,
) -> SpeechRecognitionEvent =
  #| (self) => self

///|
pub extern "js" fn SpeechRecognitionEvent::to_event(
  self : SpeechRecognitionEvent,
) -> Event =
  #| (self) => self

///|
extern "js" fn SpeechRecognitionEvent::new_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> SpeechRecognitionEvent =
  #| (type_, event_init_dict) => new SpeechRecognitionEvent(type_, event_init_dict)

///|
pub fn SpeechRecognitionEvent::new(
  type_ : String,
  event_init_dict : SpeechRecognitionEventInit,
) -> SpeechRecognitionEvent {
  SpeechRecognitionEvent::new_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn SpeechRecognitionEvent::get_result_index(
  self : SpeechRecognitionEvent,
) -> Int =
  #| (self) => self.resultIndex

///|
pub extern "js" fn SpeechRecognitionEvent::get_results(
  self : SpeechRecognitionEvent,
) -> SpeechRecognitionResultList =
  #| (self) => self.results

///|
/// SpeechGrammar interface
pub type SpeechGrammar

///|
pub extern "js" fn SpeechGrammar::to_js_value(self : SpeechGrammar) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SpeechGrammar (unchecked)
pub extern "js" fn SpeechGrammar::from_js_value(v : JsValue) -> SpeechGrammar =
  #| (v) => v

///|
/// Safely cast JsValue to SpeechGrammar (checked with instanceof)
pub extern "js" fn SpeechGrammar::from_js_value_opt(
  v : JsValue,
) -> SpeechGrammar? =
  #| (v) => (v instanceof SpeechGrammar) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SpeechGrammar (checked with instanceof)
pub extern "js" fn JsValue::as_speech_grammar(self : JsValue) -> SpeechGrammar? =
  #| (self) => (self instanceof SpeechGrammar) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SpeechGrammar (unchecked)
pub extern "js" fn JsValue::to_speech_grammar(self : JsValue) -> SpeechGrammar =
  #| (self) => self

///|
pub extern "js" fn SpeechGrammar::get_src(self : SpeechGrammar) -> String =
  #| (self) => self.src

///|
pub extern "js" fn SpeechGrammar::set_src(
  self : SpeechGrammar,
  value : String,
) -> Unit =
  #| (self, value) => { self.src = value }

///|
pub extern "js" fn SpeechGrammar::get_weight(self : SpeechGrammar) -> Double =
  #| (self) => self.weight

///|
pub extern "js" fn SpeechGrammar::set_weight(
  self : SpeechGrammar,
  value : Double,
) -> Unit =
  #| (self, value) => { self.weight = value }

///|
/// SpeechGrammarList interface
pub type SpeechGrammarList

///|
pub extern "js" fn SpeechGrammarList::to_js_value(
  self : SpeechGrammarList,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SpeechGrammarList (unchecked)
pub extern "js" fn SpeechGrammarList::from_js_value(
  v : JsValue,
) -> SpeechGrammarList =
  #| (v) => v

///|
/// Safely cast JsValue to SpeechGrammarList (checked with instanceof)
pub extern "js" fn SpeechGrammarList::from_js_value_opt(
  v : JsValue,
) -> SpeechGrammarList? =
  #| (v) => (v instanceof SpeechGrammarList) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SpeechGrammarList (checked with instanceof)
pub extern "js" fn JsValue::as_speech_grammar_list(
  self : JsValue,
) -> SpeechGrammarList? =
  #| (self) => (self instanceof SpeechGrammarList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SpeechGrammarList (unchecked)
pub extern "js" fn JsValue::to_speech_grammar_list(
  self : JsValue,
) -> SpeechGrammarList =
  #| (self) => self

///|
pub extern "js" fn SpeechGrammarList::new() -> SpeechGrammarList =
  #| () => new SpeechGrammarList()

///|
pub extern "js" fn SpeechGrammarList::get_length(
  self : SpeechGrammarList,
) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn SpeechGrammarList::item(
  self : SpeechGrammarList,
  index : Int,
) -> SpeechGrammar =
  #| (self, index) => self.item(index)

///|
pub extern "js" fn SpeechGrammarList::get(
  self : SpeechGrammarList,
  index : Int,
) -> SpeechGrammar =
  #| (self, index) => self[index]

///|
pub extern "js" fn SpeechGrammarList::add_from_uri(
  self : SpeechGrammarList,
  src : String,
) -> Unit =
  #| (self, src) => self.addFromURI(src)

///|
pub extern "js" fn SpeechGrammarList::add_from_uri_with_weight(
  self : SpeechGrammarList,
  src : String,
  weight : Double,
) -> Unit =
  #| (self, src, weight) => self.addFromURI(src, weight)

///|
pub extern "js" fn SpeechGrammarList::add_from_string(
  self : SpeechGrammarList,
  string : String,
) -> Unit =
  #| (self, string) => self.addFromString(string)

///|
pub extern "js" fn SpeechGrammarList::add_from_string_with_weight(
  self : SpeechGrammarList,
  string : String,
  weight : Double,
) -> Unit =
  #| (self, string, weight) => self.addFromString(string, weight)

///|
/// SpeechRecognitionPhrase interface
pub type SpeechRecognitionPhrase

///|
pub extern "js" fn SpeechRecognitionPhrase::to_js_value(
  self : SpeechRecognitionPhrase,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SpeechRecognitionPhrase (unchecked)
pub extern "js" fn SpeechRecognitionPhrase::from_js_value(
  v : JsValue,
) -> SpeechRecognitionPhrase =
  #| (v) => v

///|
/// Safely cast JsValue to SpeechRecognitionPhrase (checked with instanceof)
pub extern "js" fn SpeechRecognitionPhrase::from_js_value_opt(
  v : JsValue,
) -> SpeechRecognitionPhrase? =
  #| (v) => (v instanceof SpeechRecognitionPhrase) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SpeechRecognitionPhrase (checked with instanceof)
pub extern "js" fn JsValue::as_speech_recognition_phrase(
  self : JsValue,
) -> SpeechRecognitionPhrase? =
  #| (self) => (self instanceof SpeechRecognitionPhrase) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SpeechRecognitionPhrase (unchecked)
pub extern "js" fn JsValue::to_speech_recognition_phrase(
  self : JsValue,
) -> SpeechRecognitionPhrase =
  #| (self) => self

///|
pub extern "js" fn SpeechRecognitionPhrase::new(
  phrase : String,
) -> SpeechRecognitionPhrase =
  #| (phrase) => new SpeechRecognitionPhrase(phrase)

///|
pub extern "js" fn SpeechRecognitionPhrase::new_with_boost(
  phrase : String,
  boost : Double,
) -> SpeechRecognitionPhrase =
  #| (phrase, boost) => new SpeechRecognitionPhrase(phrase, boost)

///|
pub extern "js" fn SpeechRecognitionPhrase::get_phrase(
  self : SpeechRecognitionPhrase,
) -> String =
  #| (self) => self.phrase

///|
pub extern "js" fn SpeechRecognitionPhrase::get_boost(
  self : SpeechRecognitionPhrase,
) -> Double =
  #| (self) => self.boost

///|
/// SpeechSynthesis interface
pub type SpeechSynthesis

///|
pub extern "js" fn SpeechSynthesis::to_js_value(
  self : SpeechSynthesis,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SpeechSynthesis (unchecked)
pub extern "js" fn SpeechSynthesis::from_js_value(
  v : JsValue,
) -> SpeechSynthesis =
  #| (v) => v

///|
/// Safely cast JsValue to SpeechSynthesis (checked with instanceof)
pub extern "js" fn SpeechSynthesis::from_js_value_opt(
  v : JsValue,
) -> SpeechSynthesis? =
  #| (v) => (v instanceof SpeechSynthesis) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SpeechSynthesis (checked with instanceof)
pub extern "js" fn JsValue::as_speech_synthesis(
  self : JsValue,
) -> SpeechSynthesis? =
  #| (self) => (self instanceof SpeechSynthesis) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SpeechSynthesis (unchecked)
pub extern "js" fn JsValue::to_speech_synthesis(
  self : JsValue,
) -> SpeechSynthesis =
  #| (self) => self

///|
pub extern "js" fn SpeechSynthesis::to_event_target(
  self : SpeechSynthesis,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SpeechSynthesis::get_pending(self : SpeechSynthesis) -> Bool =
  #| (self) => self.pending

///|
pub extern "js" fn SpeechSynthesis::get_speaking(
  self : SpeechSynthesis,
) -> Bool =
  #| (self) => self.speaking

///|
pub extern "js" fn SpeechSynthesis::get_paused(self : SpeechSynthesis) -> Bool =
  #| (self) => self.paused

///|
pub extern "js" fn SpeechSynthesis::get_onvoiceschanged(
  self : SpeechSynthesis,
) -> EventHandler =
  #| (self) => self.onvoiceschanged

///|
pub extern "js" fn SpeechSynthesis::set_onvoiceschanged(
  self : SpeechSynthesis,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onvoiceschanged = value }

///|
pub extern "js" fn SpeechSynthesis::speak(
  self : SpeechSynthesis,
  utterance : SpeechSynthesisUtterance,
) -> Unit =
  #| (self, utterance) => self.speak(utterance)

///|
pub extern "js" fn SpeechSynthesis::cancel(self : SpeechSynthesis) -> Unit =
  #| (self) => self.cancel()

///|
pub extern "js" fn SpeechSynthesis::pause(self : SpeechSynthesis) -> Unit =
  #| (self) => self.pause()

///|
pub extern "js" fn SpeechSynthesis::resume_(self : SpeechSynthesis) -> Unit =
  #| (self) => self.resume()

///|
pub extern "js" fn SpeechSynthesis::get_voices(
  self : SpeechSynthesis,
) -> Array[SpeechSynthesisVoice] =
  #| (self) => self.getVoices()

///|
/// SpeechSynthesisUtterance interface
pub type SpeechSynthesisUtterance

///|
pub extern "js" fn SpeechSynthesisUtterance::to_js_value(
  self : SpeechSynthesisUtterance,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SpeechSynthesisUtterance (unchecked)
pub extern "js" fn SpeechSynthesisUtterance::from_js_value(
  v : JsValue,
) -> SpeechSynthesisUtterance =
  #| (v) => v

///|
/// Safely cast JsValue to SpeechSynthesisUtterance (checked with instanceof)
pub extern "js" fn SpeechSynthesisUtterance::from_js_value_opt(
  v : JsValue,
) -> SpeechSynthesisUtterance? =
  #| (v) => (v instanceof SpeechSynthesisUtterance) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SpeechSynthesisUtterance (checked with instanceof)
pub extern "js" fn JsValue::as_speech_synthesis_utterance(
  self : JsValue,
) -> SpeechSynthesisUtterance? =
  #| (self) => (self instanceof SpeechSynthesisUtterance) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SpeechSynthesisUtterance (unchecked)
pub extern "js" fn JsValue::to_speech_synthesis_utterance(
  self : JsValue,
) -> SpeechSynthesisUtterance =
  #| (self) => self

///|
pub extern "js" fn SpeechSynthesisUtterance::to_event_target(
  self : SpeechSynthesisUtterance,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SpeechSynthesisUtterance::new() -> SpeechSynthesisUtterance =
  #| () => new SpeechSynthesisUtterance()

///|
pub extern "js" fn SpeechSynthesisUtterance::new_with_text(
  text : String,
) -> SpeechSynthesisUtterance =
  #| (text) => new SpeechSynthesisUtterance(text)

///|
pub extern "js" fn SpeechSynthesisUtterance::get_text(
  self : SpeechSynthesisUtterance,
) -> String =
  #| (self) => self.text

///|
pub extern "js" fn SpeechSynthesisUtterance::set_text(
  self : SpeechSynthesisUtterance,
  value : String,
) -> Unit =
  #| (self, value) => { self.text = value }

///|
pub extern "js" fn SpeechSynthesisUtterance::get_lang(
  self : SpeechSynthesisUtterance,
) -> String =
  #| (self) => self.lang

///|
pub extern "js" fn SpeechSynthesisUtterance::set_lang(
  self : SpeechSynthesisUtterance,
  value : String,
) -> Unit =
  #| (self, value) => { self.lang = value }

///|
pub extern "js" fn SpeechSynthesisUtterance::get_voice(
  self : SpeechSynthesisUtterance,
) -> SpeechSynthesisVoice? =
  #| (self) => (() => { const v = self.voice; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn SpeechSynthesisUtterance::set_voice(
  self : SpeechSynthesisUtterance,
  value : SpeechSynthesisVoice?,
) -> Unit =
  #| (self, value) => { self.voice = (value.$tag === 1 ? value._0 : null) }

///|
pub extern "js" fn SpeechSynthesisUtterance::get_volume(
  self : SpeechSynthesisUtterance,
) -> Double =
  #| (self) => self.volume

///|
pub extern "js" fn SpeechSynthesisUtterance::set_volume(
  self : SpeechSynthesisUtterance,
  value : Double,
) -> Unit =
  #| (self, value) => { self.volume = value }

///|
pub extern "js" fn SpeechSynthesisUtterance::get_rate(
  self : SpeechSynthesisUtterance,
) -> Double =
  #| (self) => self.rate

///|
pub extern "js" fn SpeechSynthesisUtterance::set_rate(
  self : SpeechSynthesisUtterance,
  value : Double,
) -> Unit =
  #| (self, value) => { self.rate = value }

///|
pub extern "js" fn SpeechSynthesisUtterance::get_pitch(
  self : SpeechSynthesisUtterance,
) -> Double =
  #| (self) => self.pitch

///|
pub extern "js" fn SpeechSynthesisUtterance::set_pitch(
  self : SpeechSynthesisUtterance,
  value : Double,
) -> Unit =
  #| (self, value) => { self.pitch = value }

///|
pub extern "js" fn SpeechSynthesisUtterance::get_onstart(
  self : SpeechSynthesisUtterance,
) -> EventHandler =
  #| (self) => self.onstart

///|
pub extern "js" fn SpeechSynthesisUtterance::set_onstart(
  self : SpeechSynthesisUtterance,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onstart = value }

///|
pub extern "js" fn SpeechSynthesisUtterance::get_onend(
  self : SpeechSynthesisUtterance,
) -> EventHandler =
  #| (self) => self.onend

///|
pub extern "js" fn SpeechSynthesisUtterance::set_onend(
  self : SpeechSynthesisUtterance,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onend = value }

///|
pub extern "js" fn SpeechSynthesisUtterance::get_onerror(
  self : SpeechSynthesisUtterance,
) -> EventHandler =
  #| (self) => self.onerror

///|
pub extern "js" fn SpeechSynthesisUtterance::set_onerror(
  self : SpeechSynthesisUtterance,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onerror = value }

///|
pub extern "js" fn SpeechSynthesisUtterance::get_onpause(
  self : SpeechSynthesisUtterance,
) -> EventHandler =
  #| (self) => self.onpause

///|
pub extern "js" fn SpeechSynthesisUtterance::set_onpause(
  self : SpeechSynthesisUtterance,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpause = value }

///|
pub extern "js" fn SpeechSynthesisUtterance::get_onresume(
  self : SpeechSynthesisUtterance,
) -> EventHandler =
  #| (self) => self.onresume

///|
pub extern "js" fn SpeechSynthesisUtterance::set_onresume(
  self : SpeechSynthesisUtterance,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onresume = value }

///|
pub extern "js" fn SpeechSynthesisUtterance::get_onmark(
  self : SpeechSynthesisUtterance,
) -> EventHandler =
  #| (self) => self.onmark

///|
pub extern "js" fn SpeechSynthesisUtterance::set_onmark(
  self : SpeechSynthesisUtterance,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmark = value }

///|
pub extern "js" fn SpeechSynthesisUtterance::get_onboundary(
  self : SpeechSynthesisUtterance,
) -> EventHandler =
  #| (self) => self.onboundary

///|
pub extern "js" fn SpeechSynthesisUtterance::set_onboundary(
  self : SpeechSynthesisUtterance,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onboundary = value }

///|
/// SpeechSynthesisEvent interface
pub type SpeechSynthesisEvent

///|
pub extern "js" fn SpeechSynthesisEvent::to_js_value(
  self : SpeechSynthesisEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SpeechSynthesisEvent (unchecked)
pub extern "js" fn SpeechSynthesisEvent::from_js_value(
  v : JsValue,
) -> SpeechSynthesisEvent =
  #| (v) => v

///|
/// Safely cast JsValue to SpeechSynthesisEvent (checked with instanceof)
pub extern "js" fn SpeechSynthesisEvent::from_js_value_opt(
  v : JsValue,
) -> SpeechSynthesisEvent? =
  #| (v) => (v instanceof SpeechSynthesisEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SpeechSynthesisEvent (checked with instanceof)
pub extern "js" fn JsValue::as_speech_synthesis_event(
  self : JsValue,
) -> SpeechSynthesisEvent? =
  #| (self) => (self instanceof SpeechSynthesisEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SpeechSynthesisEvent (unchecked)
pub extern "js" fn JsValue::to_speech_synthesis_event(
  self : JsValue,
) -> SpeechSynthesisEvent =
  #| (self) => self

///|
pub extern "js" fn SpeechSynthesisEvent::to_event(
  self : SpeechSynthesisEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn SpeechSynthesisEvent::as_speech_synthesis_error_event(
  self : SpeechSynthesisEvent,
) -> SpeechSynthesisErrorEvent? =
  #| (self) => (self instanceof SpeechSynthesisErrorEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
extern "js" fn SpeechSynthesisEvent::new_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> SpeechSynthesisEvent =
  #| (type_, event_init_dict) => new SpeechSynthesisEvent(type_, event_init_dict)

///|
pub fn SpeechSynthesisEvent::new(
  type_ : String,
  event_init_dict : SpeechSynthesisEventInit,
) -> SpeechSynthesisEvent {
  SpeechSynthesisEvent::new_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn SpeechSynthesisEvent::get_utterance(
  self : SpeechSynthesisEvent,
) -> SpeechSynthesisUtterance =
  #| (self) => self.utterance

///|
pub extern "js" fn SpeechSynthesisEvent::get_char_index(
  self : SpeechSynthesisEvent,
) -> Int =
  #| (self) => self.charIndex

///|
pub extern "js" fn SpeechSynthesisEvent::get_char_length(
  self : SpeechSynthesisEvent,
) -> Int =
  #| (self) => self.charLength

///|
pub extern "js" fn SpeechSynthesisEvent::get_elapsed_time(
  self : SpeechSynthesisEvent,
) -> Double =
  #| (self) => self.elapsedTime

///|
pub extern "js" fn SpeechSynthesisEvent::get_name(
  self : SpeechSynthesisEvent,
) -> String =
  #| (self) => self.name

///|
/// SpeechSynthesisErrorEvent interface
pub type SpeechSynthesisErrorEvent

///|
pub extern "js" fn SpeechSynthesisErrorEvent::to_js_value(
  self : SpeechSynthesisErrorEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SpeechSynthesisErrorEvent (unchecked)
pub extern "js" fn SpeechSynthesisErrorEvent::from_js_value(
  v : JsValue,
) -> SpeechSynthesisErrorEvent =
  #| (v) => v

///|
/// Safely cast JsValue to SpeechSynthesisErrorEvent (checked with instanceof)
pub extern "js" fn SpeechSynthesisErrorEvent::from_js_value_opt(
  v : JsValue,
) -> SpeechSynthesisErrorEvent? =
  #| (v) => (v instanceof SpeechSynthesisErrorEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SpeechSynthesisErrorEvent (checked with instanceof)
pub extern "js" fn JsValue::as_speech_synthesis_error_event(
  self : JsValue,
) -> SpeechSynthesisErrorEvent? =
  #| (self) => (self instanceof SpeechSynthesisErrorEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SpeechSynthesisErrorEvent (unchecked)
pub extern "js" fn JsValue::to_speech_synthesis_error_event(
  self : JsValue,
) -> SpeechSynthesisErrorEvent =
  #| (self) => self

///|
pub extern "js" fn SpeechSynthesisErrorEvent::to_speech_synthesis_event(
  self : SpeechSynthesisErrorEvent,
) -> SpeechSynthesisEvent =
  #| (self) => self

///|
pub extern "js" fn SpeechSynthesisErrorEvent::to_event(
  self : SpeechSynthesisErrorEvent,
) -> Event =
  #| (self) => self

///|
extern "js" fn SpeechSynthesisErrorEvent::new_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> SpeechSynthesisErrorEvent =
  #| (type_, event_init_dict) => new SpeechSynthesisErrorEvent(type_, event_init_dict)

///|
pub fn SpeechSynthesisErrorEvent::new(
  type_ : String,
  event_init_dict : SpeechSynthesisErrorEventInit,
) -> SpeechSynthesisErrorEvent {
  SpeechSynthesisErrorEvent::new_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn SpeechSynthesisErrorEvent::get_error(
  self : SpeechSynthesisErrorEvent,
) -> SpeechSynthesisErrorCode =
  #| (self) => ['canceled', 'interrupted', 'audio-busy', 'audio-hardware', 'network', 'synthesis-unavailable', 'synthesis-failed', 'language-unavailable', 'voice-unavailable', 'text-too-long', 'invalid-argument', 'not-allowed'].indexOf(self.error)

///|
/// SpeechSynthesisVoice interface
pub type SpeechSynthesisVoice

///|
pub extern "js" fn SpeechSynthesisVoice::to_js_value(
  self : SpeechSynthesisVoice,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SpeechSynthesisVoice (unchecked)
pub extern "js" fn SpeechSynthesisVoice::from_js_value(
  v : JsValue,
) -> SpeechSynthesisVoice =
  #| (v) => v

///|
/// Safely cast JsValue to SpeechSynthesisVoice (checked with instanceof)
pub extern "js" fn SpeechSynthesisVoice::from_js_value_opt(
  v : JsValue,
) -> SpeechSynthesisVoice? =
  #| (v) => (v instanceof SpeechSynthesisVoice) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SpeechSynthesisVoice (checked with instanceof)
pub extern "js" fn JsValue::as_speech_synthesis_voice(
  self : JsValue,
) -> SpeechSynthesisVoice? =
  #| (self) => (self instanceof SpeechSynthesisVoice) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SpeechSynthesisVoice (unchecked)
pub extern "js" fn JsValue::to_speech_synthesis_voice(
  self : JsValue,
) -> SpeechSynthesisVoice =
  #| (self) => self

///|
pub extern "js" fn SpeechSynthesisVoice::get_voice_uri(
  self : SpeechSynthesisVoice,
) -> String =
  #| (self) => self.voiceURI

///|
pub extern "js" fn SpeechSynthesisVoice::get_name(
  self : SpeechSynthesisVoice,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn SpeechSynthesisVoice::get_lang(
  self : SpeechSynthesisVoice,
) -> String =
  #| (self) => self.lang

///|
pub extern "js" fn SpeechSynthesisVoice::get_local_service(
  self : SpeechSynthesisVoice,
) -> Bool =
  #| (self) => self.localService

///|
pub extern "js" fn SpeechSynthesisVoice::get_default(
  self : SpeechSynthesisVoice,
) -> Bool =
  #| (self) => self.default
