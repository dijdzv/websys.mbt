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
}

/// Convert to string value
pub fn SpeechRecognitionErrorCode::to_string(self : SpeechRecognitionErrorCode) -> String {
  match self {
    NoSpeech => "no-speech"
    Aborted => "aborted"
    AudioCapture => "audio-capture"
    Network => "network"
    NotAllowed => "not-allowed"
    ServiceNotAllowed => "service-not-allowed"
    LanguageNotSupported => "language-not-supported"
    PhrasesNotSupported => "phrases-not-supported"
  }
}

/// Parse from string value
pub fn SpeechRecognitionErrorCode::from_string(s : String) -> SpeechRecognitionErrorCode? {
  match s {
    "no-speech" => Some(NoSpeech)
    "aborted" => Some(Aborted)
    "audio-capture" => Some(AudioCapture)
    "network" => Some(Network)
    "not-allowed" => Some(NotAllowed)
    "service-not-allowed" => Some(ServiceNotAllowed)
    "language-not-supported" => Some(LanguageNotSupported)
    "phrases-not-supported" => Some(PhrasesNotSupported)
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
}

/// Convert to string value
pub fn AvailabilityStatus::to_string(self : AvailabilityStatus) -> String {
  match self {
    Unavailable => "unavailable"
    Downloadable => "downloadable"
    Downloading => "downloading"
    Available => "available"
  }
}

/// Parse from string value
pub fn AvailabilityStatus::from_string(s : String) -> AvailabilityStatus? {
  match s {
    "unavailable" => Some(Unavailable)
    "downloadable" => Some(Downloadable)
    "downloading" => Some(Downloading)
    "available" => Some(Available)
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
}

/// Convert to string value
pub fn SpeechSynthesisErrorCode::to_string(self : SpeechSynthesisErrorCode) -> String {
  match self {
    Canceled => "canceled"
    Interrupted => "interrupted"
    AudioBusy => "audio-busy"
    AudioHardware => "audio-hardware"
    Network => "network"
    SynthesisUnavailable => "synthesis-unavailable"
    SynthesisFailed => "synthesis-failed"
    LanguageUnavailable => "language-unavailable"
    VoiceUnavailable => "voice-unavailable"
    TextTooLong => "text-too-long"
    InvalidArgument => "invalid-argument"
    NotAllowed => "not-allowed"
  }
}

/// Parse from string value
pub fn SpeechSynthesisErrorCode::from_string(s : String) -> SpeechSynthesisErrorCode? {
  match s {
    "canceled" => Some(Canceled)
    "interrupted" => Some(Interrupted)
    "audio-busy" => Some(AudioBusy)
    "audio-hardware" => Some(AudioHardware)
    "network" => Some(Network)
    "synthesis-unavailable" => Some(SynthesisUnavailable)
    "synthesis-failed" => Some(SynthesisFailed)
    "language-unavailable" => Some(LanguageUnavailable)
    "voice-unavailable" => Some(VoiceUnavailable)
    "text-too-long" => Some(TextTooLong)
    "invalid-argument" => Some(InvalidArgument)
    "not-allowed" => Some(NotAllowed)
    _ => None
  }
}

///|
/// SpeechRecognitionOptions dictionary
pub struct SpeechRecognitionOptions {
  langs : Array[String]
  processLocally : Bool?
}

/// Create a new SpeechRecognitionOptions with default values
pub fn SpeechRecognitionOptions::default() -> SpeechRecognitionOptions {
  SpeechRecognitionOptions::{
    langs: [],
    processLocally: None,
  }
}

/// Convert to JsValue
pub extern "js" fn SpeechRecognitionOptions::to_js(self : SpeechRecognitionOptions) -> JsValue =
  #| (self) => ({
  #|   langs: self.langs,
  #|   processLocally: self.processLocally
  #| })

///|
/// SpeechRecognitionErrorEventInit dictionary
pub struct SpeechRecognitionErrorEventInit {
  error : SpeechRecognitionErrorCode
  message : String?
}

/// Create a new SpeechRecognitionErrorEventInit with default values
pub fn SpeechRecognitionErrorEventInit::default() -> SpeechRecognitionErrorEventInit {
  SpeechRecognitionErrorEventInit::{
    error: panic(),
    message: None,
  }
}

/// Convert to JsValue
pub extern "js" fn SpeechRecognitionErrorEventInit::to_js(self : SpeechRecognitionErrorEventInit) -> JsValue =
  #| (self) => ({
  #|   error: self.error,
  #|   message: self.message
  #| })

///|
/// SpeechRecognitionEventInit dictionary
pub struct SpeechRecognitionEventInit {
  resultIndex : Int?
  results : SpeechRecognitionResultList
}

/// Create a new SpeechRecognitionEventInit with default values
pub fn SpeechRecognitionEventInit::default() -> SpeechRecognitionEventInit {
  SpeechRecognitionEventInit::{
    resultIndex: None,
    results: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn SpeechRecognitionEventInit::to_js(self : SpeechRecognitionEventInit) -> JsValue =
  #| (self) => ({
  #|   resultIndex: self.resultIndex,
  #|   results: self.results
  #| })

///|
/// SpeechSynthesisEventInit dictionary
pub struct SpeechSynthesisEventInit {
  utterance : SpeechSynthesisUtterance
  charIndex : Int?
  charLength : Int?
  elapsedTime : Double?
  name : String?
}

/// Create a new SpeechSynthesisEventInit with default values
pub fn SpeechSynthesisEventInit::default() -> SpeechSynthesisEventInit {
  SpeechSynthesisEventInit::{
    utterance: panic(),
    charIndex: None,
    charLength: None,
    elapsedTime: None,
    name: None,
  }
}

/// Convert to JsValue
pub extern "js" fn SpeechSynthesisEventInit::to_js(self : SpeechSynthesisEventInit) -> JsValue =
  #| (self) => ({
  #|   utterance: self.utterance,
  #|   charIndex: self.charIndex,
  #|   charLength: self.charLength,
  #|   elapsedTime: self.elapsedTime,
  #|   name: self.name
  #| })

///|
/// SpeechSynthesisErrorEventInit dictionary
pub struct SpeechSynthesisErrorEventInit {
  utterance : SpeechSynthesisUtterance
  charIndex : Int?
  charLength : Int?
  elapsedTime : Double?
  name : String?
  error : SpeechSynthesisErrorCode
}

/// Create a new SpeechSynthesisErrorEventInit with default values
pub fn SpeechSynthesisErrorEventInit::default() -> SpeechSynthesisErrorEventInit {
  SpeechSynthesisErrorEventInit::{
    utterance: panic(),
    charIndex: None,
    charLength: None,
    elapsedTime: None,
    name: None,
    error: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn SpeechSynthesisErrorEventInit::to_js(self : SpeechSynthesisErrorEventInit) -> JsValue =
  #| (self) => ({
  #|   utterance: self.utterance,
  #|   charIndex: self.charIndex,
  #|   charLength: self.charLength,
  #|   elapsedTime: self.elapsedTime,
  #|   name: self.name,
  #|   error: self.error
  #| })

///|
/// SpeechRecognition interface
pub type SpeechRecognition

pub extern "js" fn SpeechRecognition::to_js_value(self : SpeechRecognition) -> JsValue =
  #| (self) => self

pub extern "js" fn SpeechRecognition::new() -> SpeechRecognition =
  #| () => new SpeechRecognition()

pub extern "js" fn SpeechRecognition::get_grammars(self : SpeechRecognition) -> SpeechGrammarList =
  #| (self) => self.grammars

pub extern "js" fn SpeechRecognition::set_grammars(self : SpeechRecognition, value : SpeechGrammarList) -> Unit =
  #| (self, value) => { self.grammars = value }

pub extern "js" fn SpeechRecognition::get_lang(self : SpeechRecognition) -> String =
  #| (self) => self.lang

pub extern "js" fn SpeechRecognition::set_lang(self : SpeechRecognition, value : String) -> Unit =
  #| (self, value) => { self.lang = value }

pub extern "js" fn SpeechRecognition::get_continuous(self : SpeechRecognition) -> Bool =
  #| (self) => self.continuous

pub extern "js" fn SpeechRecognition::set_continuous(self : SpeechRecognition, value : Bool) -> Unit =
  #| (self, value) => { self.continuous = value }

pub extern "js" fn SpeechRecognition::get_interim_results(self : SpeechRecognition) -> Bool =
  #| (self) => self.interimResults

pub extern "js" fn SpeechRecognition::set_interim_results(self : SpeechRecognition, value : Bool) -> Unit =
  #| (self, value) => { self.interimResults = value }

pub extern "js" fn SpeechRecognition::get_max_alternatives(self : SpeechRecognition) -> Int =
  #| (self) => self.maxAlternatives

pub extern "js" fn SpeechRecognition::set_max_alternatives(self : SpeechRecognition, value : Int) -> Unit =
  #| (self, value) => { self.maxAlternatives = value }

pub extern "js" fn SpeechRecognition::get_process_locally(self : SpeechRecognition) -> Bool =
  #| (self) => self.processLocally

pub extern "js" fn SpeechRecognition::set_process_locally(self : SpeechRecognition, value : Bool) -> Unit =
  #| (self, value) => { self.processLocally = value }

pub extern "js" fn SpeechRecognition::get_phrases(self : SpeechRecognition) -> JsValue =
  #| (self) => self.phrases

pub extern "js" fn SpeechRecognition::set_phrases(self : SpeechRecognition, value : JsValue) -> Unit =
  #| (self, value) => { self.phrases = value }

pub extern "js" fn SpeechRecognition::start(self : SpeechRecognition) -> Unit =
  #| (self) => self.start()

pub extern "js" fn SpeechRecognition::start_with_audio_track_media_stream_track(self : SpeechRecognition, audio_track : MediaStreamTrack) -> Unit =
  #| (self, audio_track) => self.start(audio_track)

pub extern "js" fn SpeechRecognition::stop(self : SpeechRecognition) -> Unit =
  #| (self) => self.stop()

pub extern "js" fn SpeechRecognition::abort(self : SpeechRecognition) -> Unit =
  #| (self) => self.abort()

pub extern "js" fn SpeechRecognition::available(options : SpeechRecognitionOptions) -> Promise[AvailabilityStatus] =
  #| (options) => SpeechRecognition.available(options)

pub extern "js" fn SpeechRecognition::install(options : SpeechRecognitionOptions) -> Promise[Bool] =
  #| (options) => SpeechRecognition.install(options)

pub extern "js" fn SpeechRecognition::get_onaudiostart(self : SpeechRecognition) -> EventHandler =
  #| (self) => self.onaudiostart

pub extern "js" fn SpeechRecognition::set_onaudiostart(self : SpeechRecognition, value : EventHandler) -> Unit =
  #| (self, value) => { self.onaudiostart = value }

pub extern "js" fn SpeechRecognition::get_onsoundstart(self : SpeechRecognition) -> EventHandler =
  #| (self) => self.onsoundstart

pub extern "js" fn SpeechRecognition::set_onsoundstart(self : SpeechRecognition, value : EventHandler) -> Unit =
  #| (self, value) => { self.onsoundstart = value }

pub extern "js" fn SpeechRecognition::get_onspeechstart(self : SpeechRecognition) -> EventHandler =
  #| (self) => self.onspeechstart

pub extern "js" fn SpeechRecognition::set_onspeechstart(self : SpeechRecognition, value : EventHandler) -> Unit =
  #| (self, value) => { self.onspeechstart = value }

pub extern "js" fn SpeechRecognition::get_onspeechend(self : SpeechRecognition) -> EventHandler =
  #| (self) => self.onspeechend

pub extern "js" fn SpeechRecognition::set_onspeechend(self : SpeechRecognition, value : EventHandler) -> Unit =
  #| (self, value) => { self.onspeechend = value }

pub extern "js" fn SpeechRecognition::get_onsoundend(self : SpeechRecognition) -> EventHandler =
  #| (self) => self.onsoundend

pub extern "js" fn SpeechRecognition::set_onsoundend(self : SpeechRecognition, value : EventHandler) -> Unit =
  #| (self, value) => { self.onsoundend = value }

pub extern "js" fn SpeechRecognition::get_onaudioend(self : SpeechRecognition) -> EventHandler =
  #| (self) => self.onaudioend

pub extern "js" fn SpeechRecognition::set_onaudioend(self : SpeechRecognition, value : EventHandler) -> Unit =
  #| (self, value) => { self.onaudioend = value }

pub extern "js" fn SpeechRecognition::get_onresult(self : SpeechRecognition) -> EventHandler =
  #| (self) => self.onresult

pub extern "js" fn SpeechRecognition::set_onresult(self : SpeechRecognition, value : EventHandler) -> Unit =
  #| (self, value) => { self.onresult = value }

pub extern "js" fn SpeechRecognition::get_onnomatch(self : SpeechRecognition) -> EventHandler =
  #| (self) => self.onnomatch

pub extern "js" fn SpeechRecognition::set_onnomatch(self : SpeechRecognition, value : EventHandler) -> Unit =
  #| (self, value) => { self.onnomatch = value }

pub extern "js" fn SpeechRecognition::get_onerror(self : SpeechRecognition) -> EventHandler =
  #| (self) => self.onerror

pub extern "js" fn SpeechRecognition::set_onerror(self : SpeechRecognition, value : EventHandler) -> Unit =
  #| (self, value) => { self.onerror = value }

pub extern "js" fn SpeechRecognition::get_onstart(self : SpeechRecognition) -> EventHandler =
  #| (self) => self.onstart

pub extern "js" fn SpeechRecognition::set_onstart(self : SpeechRecognition, value : EventHandler) -> Unit =
  #| (self, value) => { self.onstart = value }

pub extern "js" fn SpeechRecognition::get_onend(self : SpeechRecognition) -> EventHandler =
  #| (self) => self.onend

pub extern "js" fn SpeechRecognition::set_onend(self : SpeechRecognition, value : EventHandler) -> Unit =
  #| (self, value) => { self.onend = value }

///|
/// SpeechRecognitionErrorEvent interface
pub type SpeechRecognitionErrorEvent

pub extern "js" fn SpeechRecognitionErrorEvent::to_js_value(self : SpeechRecognitionErrorEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn SpeechRecognitionErrorEvent::new(type_ : String, event_init_dict : SpeechRecognitionErrorEventInit) -> SpeechRecognitionErrorEvent =
  #| (type_, event_init_dict) => new SpeechRecognitionErrorEvent(type_, event_init_dict)

pub extern "js" fn SpeechRecognitionErrorEvent::get_error(self : SpeechRecognitionErrorEvent) -> SpeechRecognitionErrorCode =
  #| (self) => self.error

pub extern "js" fn SpeechRecognitionErrorEvent::get_message(self : SpeechRecognitionErrorEvent) -> String =
  #| (self) => self.message

///|
/// SpeechRecognitionAlternative interface
pub type SpeechRecognitionAlternative

pub extern "js" fn SpeechRecognitionAlternative::to_js_value(self : SpeechRecognitionAlternative) -> JsValue =
  #| (self) => self

pub extern "js" fn SpeechRecognitionAlternative::get_transcript(self : SpeechRecognitionAlternative) -> String =
  #| (self) => self.transcript

pub extern "js" fn SpeechRecognitionAlternative::get_confidence(self : SpeechRecognitionAlternative) -> Double =
  #| (self) => self.confidence

///|
/// SpeechRecognitionResult interface
pub type SpeechRecognitionResult

pub extern "js" fn SpeechRecognitionResult::to_js_value(self : SpeechRecognitionResult) -> JsValue =
  #| (self) => self

pub extern "js" fn SpeechRecognitionResult::get_length(self : SpeechRecognitionResult) -> Int =
  #| (self) => self.length

pub extern "js" fn SpeechRecognitionResult::item(self : SpeechRecognitionResult, index : Int) -> SpeechRecognitionAlternative =
  #| (self, index) => self.item(index)

pub extern "js" fn SpeechRecognitionResult::get(self : SpeechRecognitionResult, index : Int) -> SpeechRecognitionAlternative =
  #| (self, index) => self[index]

pub extern "js" fn SpeechRecognitionResult::get_is_final(self : SpeechRecognitionResult) -> Bool =
  #| (self) => self.isFinal

///|
/// SpeechRecognitionResultList interface
pub type SpeechRecognitionResultList

pub extern "js" fn SpeechRecognitionResultList::to_js_value(self : SpeechRecognitionResultList) -> JsValue =
  #| (self) => self

pub extern "js" fn SpeechRecognitionResultList::get_length(self : SpeechRecognitionResultList) -> Int =
  #| (self) => self.length

pub extern "js" fn SpeechRecognitionResultList::item(self : SpeechRecognitionResultList, index : Int) -> SpeechRecognitionResult =
  #| (self, index) => self.item(index)

pub extern "js" fn SpeechRecognitionResultList::get(self : SpeechRecognitionResultList, index : Int) -> SpeechRecognitionResult =
  #| (self, index) => self[index]

///|
/// SpeechRecognitionEvent interface
pub type SpeechRecognitionEvent

pub extern "js" fn SpeechRecognitionEvent::to_js_value(self : SpeechRecognitionEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn SpeechRecognitionEvent::new(type_ : String, event_init_dict : SpeechRecognitionEventInit) -> SpeechRecognitionEvent =
  #| (type_, event_init_dict) => new SpeechRecognitionEvent(type_, event_init_dict)

pub extern "js" fn SpeechRecognitionEvent::get_result_index(self : SpeechRecognitionEvent) -> Int =
  #| (self) => self.resultIndex

pub extern "js" fn SpeechRecognitionEvent::get_results(self : SpeechRecognitionEvent) -> SpeechRecognitionResultList =
  #| (self) => self.results

///|
/// SpeechGrammar interface
pub type SpeechGrammar

pub extern "js" fn SpeechGrammar::to_js_value(self : SpeechGrammar) -> JsValue =
  #| (self) => self

pub extern "js" fn SpeechGrammar::get_src(self : SpeechGrammar) -> String =
  #| (self) => self.src

pub extern "js" fn SpeechGrammar::set_src(self : SpeechGrammar, value : String) -> Unit =
  #| (self, value) => { self.src = value }

pub extern "js" fn SpeechGrammar::get_weight(self : SpeechGrammar) -> Double =
  #| (self) => self.weight

pub extern "js" fn SpeechGrammar::set_weight(self : SpeechGrammar, value : Double) -> Unit =
  #| (self, value) => { self.weight = value }

///|
/// SpeechGrammarList interface
pub type SpeechGrammarList

pub extern "js" fn SpeechGrammarList::to_js_value(self : SpeechGrammarList) -> JsValue =
  #| (self) => self

pub extern "js" fn SpeechGrammarList::new() -> SpeechGrammarList =
  #| () => new SpeechGrammarList()

pub extern "js" fn SpeechGrammarList::get_length(self : SpeechGrammarList) -> Int =
  #| (self) => self.length

pub extern "js" fn SpeechGrammarList::item(self : SpeechGrammarList, index : Int) -> SpeechGrammar =
  #| (self, index) => self.item(index)

pub extern "js" fn SpeechGrammarList::get(self : SpeechGrammarList, index : Int) -> SpeechGrammar =
  #| (self, index) => self[index]

pub extern "js" fn SpeechGrammarList::add_from_u_r_i(self : SpeechGrammarList, src : String) -> Unit =
  #| (self, src) => self.addFromURI(src)

pub extern "js" fn SpeechGrammarList::add_from_u_r_i_with_weight(self : SpeechGrammarList, src : String, weight : Double) -> Unit =
  #| (self, src, weight) => self.addFromURI(src, weight)

pub extern "js" fn SpeechGrammarList::add_from_string(self : SpeechGrammarList, string : String) -> Unit =
  #| (self, string) => self.addFromString(string)

pub extern "js" fn SpeechGrammarList::add_from_string_with_weight(self : SpeechGrammarList, string : String, weight : Double) -> Unit =
  #| (self, string, weight) => self.addFromString(string, weight)

///|
/// SpeechRecognitionPhrase interface
pub type SpeechRecognitionPhrase

pub extern "js" fn SpeechRecognitionPhrase::to_js_value(self : SpeechRecognitionPhrase) -> JsValue =
  #| (self) => self

pub extern "js" fn SpeechRecognitionPhrase::new(phrase : String, boost : Double) -> SpeechRecognitionPhrase =
  #| (phrase, boost) => new SpeechRecognitionPhrase(phrase, boost)

pub extern "js" fn SpeechRecognitionPhrase::get_phrase(self : SpeechRecognitionPhrase) -> String =
  #| (self) => self.phrase

pub extern "js" fn SpeechRecognitionPhrase::get_boost(self : SpeechRecognitionPhrase) -> Double =
  #| (self) => self.boost

///|
/// SpeechSynthesis interface
pub type SpeechSynthesis

pub extern "js" fn SpeechSynthesis::to_js_value(self : SpeechSynthesis) -> JsValue =
  #| (self) => self

pub extern "js" fn SpeechSynthesis::get_pending(self : SpeechSynthesis) -> Bool =
  #| (self) => self.pending

pub extern "js" fn SpeechSynthesis::get_speaking(self : SpeechSynthesis) -> Bool =
  #| (self) => self.speaking

pub extern "js" fn SpeechSynthesis::get_paused(self : SpeechSynthesis) -> Bool =
  #| (self) => self.paused

pub extern "js" fn SpeechSynthesis::get_onvoiceschanged(self : SpeechSynthesis) -> EventHandler =
  #| (self) => self.onvoiceschanged

pub extern "js" fn SpeechSynthesis::set_onvoiceschanged(self : SpeechSynthesis, value : EventHandler) -> Unit =
  #| (self, value) => { self.onvoiceschanged = value }

pub extern "js" fn SpeechSynthesis::speak(self : SpeechSynthesis, utterance : SpeechSynthesisUtterance) -> Unit =
  #| (self, utterance) => self.speak(utterance)

pub extern "js" fn SpeechSynthesis::cancel(self : SpeechSynthesis) -> Unit =
  #| (self) => self.cancel()

pub extern "js" fn SpeechSynthesis::pause(self : SpeechSynthesis) -> Unit =
  #| (self) => self.pause()

pub extern "js" fn SpeechSynthesis::resume_(self : SpeechSynthesis) -> Unit =
  #| (self) => self.resume()

pub extern "js" fn SpeechSynthesis::get_voices(self : SpeechSynthesis) -> Array[SpeechSynthesisVoice] =
  #| (self) => self.getVoices()

///|
/// SpeechSynthesisUtterance interface
pub type SpeechSynthesisUtterance

pub extern "js" fn SpeechSynthesisUtterance::to_js_value(self : SpeechSynthesisUtterance) -> JsValue =
  #| (self) => self

pub extern "js" fn SpeechSynthesisUtterance::new(text : String) -> SpeechSynthesisUtterance =
  #| (text) => new SpeechSynthesisUtterance(text)

pub extern "js" fn SpeechSynthesisUtterance::get_text(self : SpeechSynthesisUtterance) -> String =
  #| (self) => self.text

pub extern "js" fn SpeechSynthesisUtterance::set_text(self : SpeechSynthesisUtterance, value : String) -> Unit =
  #| (self, value) => { self.text = value }

pub extern "js" fn SpeechSynthesisUtterance::get_lang(self : SpeechSynthesisUtterance) -> String =
  #| (self) => self.lang

pub extern "js" fn SpeechSynthesisUtterance::set_lang(self : SpeechSynthesisUtterance, value : String) -> Unit =
  #| (self, value) => { self.lang = value }

pub extern "js" fn SpeechSynthesisUtterance::get_voice(self : SpeechSynthesisUtterance) -> SpeechSynthesisVoice? =
  #| (self) => self.voice

pub extern "js" fn SpeechSynthesisUtterance::set_voice(self : SpeechSynthesisUtterance, value : SpeechSynthesisVoice?) -> Unit =
  #| (self, value) => { self.voice = value }

pub extern "js" fn SpeechSynthesisUtterance::get_volume(self : SpeechSynthesisUtterance) -> Double =
  #| (self) => self.volume

pub extern "js" fn SpeechSynthesisUtterance::set_volume(self : SpeechSynthesisUtterance, value : Double) -> Unit =
  #| (self, value) => { self.volume = value }

pub extern "js" fn SpeechSynthesisUtterance::get_rate(self : SpeechSynthesisUtterance) -> Double =
  #| (self) => self.rate

pub extern "js" fn SpeechSynthesisUtterance::set_rate(self : SpeechSynthesisUtterance, value : Double) -> Unit =
  #| (self, value) => { self.rate = value }

pub extern "js" fn SpeechSynthesisUtterance::get_pitch(self : SpeechSynthesisUtterance) -> Double =
  #| (self) => self.pitch

pub extern "js" fn SpeechSynthesisUtterance::set_pitch(self : SpeechSynthesisUtterance, value : Double) -> Unit =
  #| (self, value) => { self.pitch = value }

pub extern "js" fn SpeechSynthesisUtterance::get_onstart(self : SpeechSynthesisUtterance) -> EventHandler =
  #| (self) => self.onstart

pub extern "js" fn SpeechSynthesisUtterance::set_onstart(self : SpeechSynthesisUtterance, value : EventHandler) -> Unit =
  #| (self, value) => { self.onstart = value }

pub extern "js" fn SpeechSynthesisUtterance::get_onend(self : SpeechSynthesisUtterance) -> EventHandler =
  #| (self) => self.onend

pub extern "js" fn SpeechSynthesisUtterance::set_onend(self : SpeechSynthesisUtterance, value : EventHandler) -> Unit =
  #| (self, value) => { self.onend = value }

pub extern "js" fn SpeechSynthesisUtterance::get_onerror(self : SpeechSynthesisUtterance) -> EventHandler =
  #| (self) => self.onerror

pub extern "js" fn SpeechSynthesisUtterance::set_onerror(self : SpeechSynthesisUtterance, value : EventHandler) -> Unit =
  #| (self, value) => { self.onerror = value }

pub extern "js" fn SpeechSynthesisUtterance::get_onpause(self : SpeechSynthesisUtterance) -> EventHandler =
  #| (self) => self.onpause

pub extern "js" fn SpeechSynthesisUtterance::set_onpause(self : SpeechSynthesisUtterance, value : EventHandler) -> Unit =
  #| (self, value) => { self.onpause = value }

pub extern "js" fn SpeechSynthesisUtterance::get_onresume(self : SpeechSynthesisUtterance) -> EventHandler =
  #| (self) => self.onresume

pub extern "js" fn SpeechSynthesisUtterance::set_onresume(self : SpeechSynthesisUtterance, value : EventHandler) -> Unit =
  #| (self, value) => { self.onresume = value }

pub extern "js" fn SpeechSynthesisUtterance::get_onmark(self : SpeechSynthesisUtterance) -> EventHandler =
  #| (self) => self.onmark

pub extern "js" fn SpeechSynthesisUtterance::set_onmark(self : SpeechSynthesisUtterance, value : EventHandler) -> Unit =
  #| (self, value) => { self.onmark = value }

pub extern "js" fn SpeechSynthesisUtterance::get_onboundary(self : SpeechSynthesisUtterance) -> EventHandler =
  #| (self) => self.onboundary

pub extern "js" fn SpeechSynthesisUtterance::set_onboundary(self : SpeechSynthesisUtterance, value : EventHandler) -> Unit =
  #| (self, value) => { self.onboundary = value }

///|
/// SpeechSynthesisEvent interface
pub type SpeechSynthesisEvent

pub extern "js" fn SpeechSynthesisEvent::to_js_value(self : SpeechSynthesisEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn SpeechSynthesisEvent::new(type_ : String, event_init_dict : SpeechSynthesisEventInit) -> SpeechSynthesisEvent =
  #| (type_, event_init_dict) => new SpeechSynthesisEvent(type_, event_init_dict)

pub extern "js" fn SpeechSynthesisEvent::get_utterance(self : SpeechSynthesisEvent) -> SpeechSynthesisUtterance =
  #| (self) => self.utterance

pub extern "js" fn SpeechSynthesisEvent::get_char_index(self : SpeechSynthesisEvent) -> Int =
  #| (self) => self.charIndex

pub extern "js" fn SpeechSynthesisEvent::get_char_length(self : SpeechSynthesisEvent) -> Int =
  #| (self) => self.charLength

pub extern "js" fn SpeechSynthesisEvent::get_elapsed_time(self : SpeechSynthesisEvent) -> Double =
  #| (self) => self.elapsedTime

pub extern "js" fn SpeechSynthesisEvent::get_name(self : SpeechSynthesisEvent) -> String =
  #| (self) => self.name

///|
/// SpeechSynthesisErrorEvent interface
pub type SpeechSynthesisErrorEvent

pub extern "js" fn SpeechSynthesisErrorEvent::to_js_value(self : SpeechSynthesisErrorEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn SpeechSynthesisErrorEvent::new(type_ : String, event_init_dict : SpeechSynthesisEventInit) -> SpeechSynthesisErrorEvent =
  #| (type_, event_init_dict) => new SpeechSynthesisErrorEvent(type_, event_init_dict)

pub extern "js" fn SpeechSynthesisErrorEvent::get_utterance(self : SpeechSynthesisErrorEvent) -> SpeechSynthesisUtterance =
  #| (self) => self.utterance

pub extern "js" fn SpeechSynthesisErrorEvent::get_char_index(self : SpeechSynthesisErrorEvent) -> Int =
  #| (self) => self.charIndex

pub extern "js" fn SpeechSynthesisErrorEvent::get_char_length(self : SpeechSynthesisErrorEvent) -> Int =
  #| (self) => self.charLength

pub extern "js" fn SpeechSynthesisErrorEvent::get_elapsed_time(self : SpeechSynthesisErrorEvent) -> Double =
  #| (self) => self.elapsedTime

pub extern "js" fn SpeechSynthesisErrorEvent::get_name(self : SpeechSynthesisErrorEvent) -> String =
  #| (self) => self.name

pub extern "js" fn SpeechSynthesisErrorEvent::get_error(self : SpeechSynthesisErrorEvent) -> SpeechSynthesisErrorCode =
  #| (self) => self.error

///|
/// SpeechSynthesisVoice interface
pub type SpeechSynthesisVoice

pub extern "js" fn SpeechSynthesisVoice::to_js_value(self : SpeechSynthesisVoice) -> JsValue =
  #| (self) => self

pub extern "js" fn SpeechSynthesisVoice::get_voice_u_r_i(self : SpeechSynthesisVoice) -> String =
  #| (self) => self.voiceURI

pub extern "js" fn SpeechSynthesisVoice::get_name(self : SpeechSynthesisVoice) -> String =
  #| (self) => self.name

pub extern "js" fn SpeechSynthesisVoice::get_lang(self : SpeechSynthesisVoice) -> String =
  #| (self) => self.lang

pub extern "js" fn SpeechSynthesisVoice::get_local_service(self : SpeechSynthesisVoice) -> Bool =
  #| (self) => self.localService

pub extern "js" fn SpeechSynthesisVoice::get_default(self : SpeechSynthesisVoice) -> Bool =
  #| (self) => self.default

