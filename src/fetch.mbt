// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/fetch

///|
/// HeadersInit typedef
pub type HeadersInit

///|
pub extern "js" fn HeadersInit::to_js_value(self : HeadersInit) -> JsValue =
  #| (self) => self

///|
/// Create HeadersInit from Array[Array[String]]
pub extern "js" fn HeadersInit::from_array_of_array_of_string(
  v : Array[Array[String]],
) -> HeadersInit =
  #| (v) => v

///|
/// XMLHttpRequestBodyInit typedef
pub type XMLHttpRequestBodyInit

///|
pub extern "js" fn XMLHttpRequestBodyInit::to_js_value(
  self : XMLHttpRequestBodyInit,
) -> JsValue =
  #| (self) => self

///|
/// Create XMLHttpRequestBodyInit from Blob
pub extern "js" fn XMLHttpRequestBodyInit::from_blob(
  v : Blob,
) -> XMLHttpRequestBodyInit =
  #| (v) => v

///|
/// Create XMLHttpRequestBodyInit from BufferSource
pub extern "js" fn XMLHttpRequestBodyInit::from_buffer_source(
  v : BufferSource,
) -> XMLHttpRequestBodyInit =
  #| (v) => v

///|
/// Create XMLHttpRequestBodyInit from FormData
pub extern "js" fn XMLHttpRequestBodyInit::from_form_data(
  v : FormData,
) -> XMLHttpRequestBodyInit =
  #| (v) => v

///|
/// Create XMLHttpRequestBodyInit from URLSearchParams
pub extern "js" fn XMLHttpRequestBodyInit::from_u_r_l_search_params(
  v : URLSearchParams,
) -> XMLHttpRequestBodyInit =
  #| (v) => v

///|
/// Create XMLHttpRequestBodyInit from String
pub extern "js" fn XMLHttpRequestBodyInit::from_string(
  v : String,
) -> XMLHttpRequestBodyInit =
  #| (v) => v

///|
/// BodyInit typedef
pub type BodyInit

///|
pub extern "js" fn BodyInit::to_js_value(self : BodyInit) -> JsValue =
  #| (self) => self

///|
/// Create BodyInit from ReadableStream
pub extern "js" fn BodyInit::from_readable_stream(
  v : ReadableStream,
) -> BodyInit =
  #| (v) => v

///|
/// Create BodyInit from XMLHttpRequestBodyInit
pub extern "js" fn BodyInit::from_x_m_l_http_request_body_init(
  v : XMLHttpRequestBodyInit,
) -> BodyInit =
  #| (v) => v

///|
/// RequestInfo typedef
pub type RequestInfo

///|
pub extern "js" fn RequestInfo::to_js_value(self : RequestInfo) -> JsValue =
  #| (self) => self

///|
/// Create RequestInfo from Request
pub extern "js" fn RequestInfo::from_request(v : Request) -> RequestInfo =
  #| (v) => v

///|
/// Create RequestInfo from String
pub extern "js" fn RequestInfo::from_string(v : String) -> RequestInfo =
  #| (v) => v

///|
/// RequestDestination enum
pub(all) enum RequestDestination {
  Empty
  Audio
  Audioworklet
  Document
  Embed
  Font
  Frame
  Iframe
  Image
  Json
  Manifest
  Object
  Paintworklet
  Report
  Script
  Sharedworker
  Style
  Track
  Video
  Worker
  Xslt
}

///|
/// Convert to string value
pub fn RequestDestination::to_string(self : RequestDestination) -> String {
  match self {
    Empty => ""
    Audio => "audio"
    Audioworklet => "audioworklet"
    Document => "document"
    Embed => "embed"
    Font => "font"
    Frame => "frame"
    Iframe => "iframe"
    Image => "image"
    Json => "json"
    Manifest => "manifest"
    Object => "object"
    Paintworklet => "paintworklet"
    Report => "report"
    Script => "script"
    Sharedworker => "sharedworker"
    Style => "style"
    Track => "track"
    Video => "video"
    Worker => "worker"
    Xslt => "xslt"
  }
}

///|
/// Parse from string value
pub fn RequestDestination::from_string(s : String) -> RequestDestination? {
  match s {
    "" => Some(Empty)
    "audio" => Some(Audio)
    "audioworklet" => Some(Audioworklet)
    "document" => Some(Document)
    "embed" => Some(Embed)
    "font" => Some(Font)
    "frame" => Some(Frame)
    "iframe" => Some(Iframe)
    "image" => Some(Image)
    "json" => Some(Json)
    "manifest" => Some(Manifest)
    "object" => Some(Object)
    "paintworklet" => Some(Paintworklet)
    "report" => Some(Report)
    "script" => Some(Script)
    "sharedworker" => Some(Sharedworker)
    "style" => Some(Style)
    "track" => Some(Track)
    "video" => Some(Video)
    "worker" => Some(Worker)
    "xslt" => Some(Xslt)
    _ => None
  }
}

///|
/// RequestMode enum
pub(all) enum RequestMode {
  Navigate
  SameOrigin
  NoCors
  Cors
}

///|
/// Convert to string value
pub fn RequestMode::to_string(self : RequestMode) -> String {
  match self {
    Navigate => "navigate"
    SameOrigin => "same-origin"
    NoCors => "no-cors"
    Cors => "cors"
  }
}

///|
/// Parse from string value
pub fn RequestMode::from_string(s : String) -> RequestMode? {
  match s {
    "navigate" => Some(Navigate)
    "same-origin" => Some(SameOrigin)
    "no-cors" => Some(NoCors)
    "cors" => Some(Cors)
    _ => None
  }
}

///|
/// RequestCredentials enum
pub(all) enum RequestCredentials {
  Omit
  SameOrigin
  Include
}

///|
/// Convert to string value
pub fn RequestCredentials::to_string(self : RequestCredentials) -> String {
  match self {
    Omit => "omit"
    SameOrigin => "same-origin"
    Include => "include"
  }
}

///|
/// Parse from string value
pub fn RequestCredentials::from_string(s : String) -> RequestCredentials? {
  match s {
    "omit" => Some(Omit)
    "same-origin" => Some(SameOrigin)
    "include" => Some(Include)
    _ => None
  }
}

///|
/// RequestCache enum
pub(all) enum RequestCache {
  Default
  NoStore
  Reload
  NoCache
  ForceCache
  OnlyIfCached
}

///|
/// Convert to string value
pub fn RequestCache::to_string(self : RequestCache) -> String {
  match self {
    Default => "default"
    NoStore => "no-store"
    Reload => "reload"
    NoCache => "no-cache"
    ForceCache => "force-cache"
    OnlyIfCached => "only-if-cached"
  }
}

///|
/// Parse from string value
pub fn RequestCache::from_string(s : String) -> RequestCache? {
  match s {
    "default" => Some(Default)
    "no-store" => Some(NoStore)
    "reload" => Some(Reload)
    "no-cache" => Some(NoCache)
    "force-cache" => Some(ForceCache)
    "only-if-cached" => Some(OnlyIfCached)
    _ => None
  }
}

///|
/// RequestRedirect enum
pub(all) enum RequestRedirect {
  Follow
  Error
  Manual
}

///|
/// Convert to string value
pub fn RequestRedirect::to_string(self : RequestRedirect) -> String {
  match self {
    Follow => "follow"
    Error => "error"
    Manual => "manual"
  }
}

///|
/// Parse from string value
pub fn RequestRedirect::from_string(s : String) -> RequestRedirect? {
  match s {
    "follow" => Some(Follow)
    "error" => Some(Error)
    "manual" => Some(Manual)
    _ => None
  }
}

///|
/// RequestDuplex enum
pub(all) enum RequestDuplex {
  Half
}

///|
/// Convert to string value
pub fn RequestDuplex::to_string(self : RequestDuplex) -> String {
  match self {
    Half => "half"
  }
}

///|
/// Parse from string value
pub fn RequestDuplex::from_string(s : String) -> RequestDuplex? {
  match s {
    "half" => Some(Half)
    _ => None
  }
}

///|
/// RequestPriority enum
pub(all) enum RequestPriority {
  High
  Low
  Auto
}

///|
/// Convert to string value
pub fn RequestPriority::to_string(self : RequestPriority) -> String {
  match self {
    High => "high"
    Low => "low"
    Auto => "auto"
  }
}

///|
/// Parse from string value
pub fn RequestPriority::from_string(s : String) -> RequestPriority? {
  match s {
    "high" => Some(High)
    "low" => Some(Low)
    "auto" => Some(Auto)
    _ => None
  }
}

///|
/// ResponseType enum
pub(all) enum ResponseType {
  Basic
  Cors
  Default
  Error
  Opaque
  Opaqueredirect
}

///|
/// Convert to string value
pub fn ResponseType::to_string(self : ResponseType) -> String {
  match self {
    Basic => "basic"
    Cors => "cors"
    Default => "default"
    Error => "error"
    Opaque => "opaque"
    Opaqueredirect => "opaqueredirect"
  }
}

///|
/// Parse from string value
pub fn ResponseType::from_string(s : String) -> ResponseType? {
  match s {
    "basic" => Some(Basic)
    "cors" => Some(Cors)
    "default" => Some(Default)
    "error" => Some(Error)
    "opaque" => Some(Opaque)
    "opaqueredirect" => Some(Opaqueredirect)
    _ => None
  }
}

///|
/// ResponseInit dictionary
pub struct ResponseInit {
  status : Int?
  statusText : String?
  headers : HeadersInit?
}

///|
/// Create a new ResponseInit with default values
pub fn ResponseInit::default() -> ResponseInit {
  ResponseInit::{ status: None, statusText: None, headers: None }
}

///|
/// Convert to JsValue
pub extern "js" fn ResponseInit::to_js(self : ResponseInit) -> JsValue =
  #| (self) => ({
  #|   status: self.status,
  #|   statusText: self.statusText,
  #|   headers: self.headers.to_js_value()
  #| })

///|
/// DeferredRequestInit dictionary
pub struct DeferredRequestInit {
  activateAfter : DOMHighResTimeStamp?
}

///|
/// Create a new DeferredRequestInit with default values
pub fn DeferredRequestInit::default() -> DeferredRequestInit {
  DeferredRequestInit::{ activateAfter: None }
}

///|
/// Convert to JsValue
pub extern "js" fn DeferredRequestInit::to_js(
  self : DeferredRequestInit,
) -> JsValue =
  #| (self) => ({
  #|   activateAfter: self.activateAfter
  #| })

///|
/// Headers interface
pub type Headers

///|
pub extern "js" fn Headers::to_js_value(self : Headers) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn Headers::new(init_ : HeadersInit) -> Headers =
  #| (init_) => new Headers(init_)

///|
pub extern "js" fn Headers::append(
  self : Headers,
  name : String,
  value : String,
) -> Unit =
  #| (self, name, value) => self.append(name, value)

///|
pub extern "js" fn Headers::delete(self : Headers, name : String) -> Unit =
  #| (self, name) => self.delete(name)

///|
pub extern "js" fn Headers::get(self : Headers, name : String) -> String? =
  #| (self, name) => self.get(name)

///|
pub extern "js" fn Headers::get_set_cookie(self : Headers) -> Array[String] =
  #| (self) => self.getSetCookie()

///|
pub extern "js" fn Headers::has(self : Headers, name : String) -> Bool =
  #| (self, name) => self.has(name)

///|
pub extern "js" fn Headers::set(
  self : Headers,
  name : String,
  value : String,
) -> Unit =
  #| (self, name, value) => self.set(name, value)

///|
pub extern "js" fn Headers::_unknown_(self : Headers) -> Unit =
  #| (self) => self._unknown_()

///|
/// Request interface
pub type Request

///|
pub extern "js" fn Request::to_js_value(self : Request) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn Request::new(
  input : RequestInfo,
  init_ : RequestInit,
) -> Request =
  #| (input, init_) => new Request(input, init_)

///|
pub extern "js" fn Request::get_method(self : Request) -> String =
  #| (self) => self.method

///|
pub extern "js" fn Request::get_url(self : Request) -> String =
  #| (self) => self.url

///|
pub extern "js" fn Request::get_headers(self : Request) -> Headers =
  #| (self) => self.headers

///|
pub extern "js" fn Request::get_destination(
  self : Request,
) -> RequestDestination =
  #| (self) => self.destination

///|
pub extern "js" fn Request::get_referrer(self : Request) -> String =
  #| (self) => self.referrer

///|
pub extern "js" fn Request::get_referrer_policy(
  self : Request,
) -> ReferrerPolicy =
  #| (self) => self.referrerPolicy

///|
pub extern "js" fn Request::get_mode(self : Request) -> RequestMode =
  #| (self) => self.mode

///|
pub extern "js" fn Request::get_credentials(
  self : Request,
) -> RequestCredentials =
  #| (self) => self.credentials

///|
pub extern "js" fn Request::get_cache(self : Request) -> RequestCache =
  #| (self) => self.cache

///|
pub extern "js" fn Request::get_redirect(self : Request) -> RequestRedirect =
  #| (self) => self.redirect

///|
pub extern "js" fn Request::get_integrity(self : Request) -> String =
  #| (self) => self.integrity

///|
pub extern "js" fn Request::get_keepalive(self : Request) -> Bool =
  #| (self) => self.keepalive

///|
pub extern "js" fn Request::get_is_reload_navigation(self : Request) -> Bool =
  #| (self) => self.isReloadNavigation

///|
pub extern "js" fn Request::get_is_history_navigation(self : Request) -> Bool =
  #| (self) => self.isHistoryNavigation

///|
pub extern "js" fn Request::get_signal(self : Request) -> AbortSignal =
  #| (self) => self.signal

///|
pub extern "js" fn Request::get_duplex(self : Request) -> RequestDuplex =
  #| (self) => self.duplex

///|
pub extern "js" fn Request::clone(self : Request) -> Request =
  #| (self) => self.clone()

///|
pub extern "js" fn Request::get_target_address_space(
  self : Request,
) -> IPAddressSpace =
  #| (self) => self.targetAddressSpace

///|
pub extern "js" fn Request::get_body(self : Request) -> ReadableStream? =
  #| (self) => self.body

///|
pub extern "js" fn Request::get_body_used(self : Request) -> Bool =
  #| (self) => self.bodyUsed

///|
pub extern "js" fn Request::array_buffer(
  self : Request,
) -> Promise[ArrayBuffer] =
  #| (self) => self.arrayBuffer()

///|
pub extern "js" fn Request::blob(self : Request) -> Promise[Blob] =
  #| (self) => self.blob()

///|
pub extern "js" fn Request::bytes(self : Request) -> Promise[Uint8Array] =
  #| (self) => self.bytes()

///|
pub extern "js" fn Request::form_data(self : Request) -> Promise[FormData] =
  #| (self) => self.formData()

///|
pub extern "js" fn Request::json(self : Request) -> Promise[JsValue] =
  #| (self) => self.json()

///|
pub extern "js" fn Request::text(self : Request) -> Promise[String] =
  #| (self) => self.text()

///|
/// Response interface
pub type Response

///|
pub extern "js" fn Response::to_js_value(self : Response) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn Response::new(
  body : BodyInit?,
  init_ : ResponseInit,
) -> Response =
  #| (body, init_) => new Response(body, init_)

///|
pub extern "js" fn Response::error() -> Response =
  #| () => Response.error()

///|
pub extern "js" fn Response::redirect(url : String, status : Int) -> Response =
  #| (url, status) => Response.redirect(url, status)

///|
pub extern "js" fn Response::json(
  data : JsValue,
  init_ : ResponseInit,
) -> Response =
  #| (data, init_) => Response.json(data, init_)

///|
pub extern "js" fn Response::get_type(self : Response) -> ResponseType =
  #| (self) => self.type

///|
pub extern "js" fn Response::get_url(self : Response) -> String =
  #| (self) => self.url

///|
pub extern "js" fn Response::get_redirected(self : Response) -> Bool =
  #| (self) => self.redirected

///|
pub extern "js" fn Response::get_status(self : Response) -> Int =
  #| (self) => self.status

///|
pub extern "js" fn Response::get_ok(self : Response) -> Bool =
  #| (self) => self.ok

///|
pub extern "js" fn Response::get_status_text(self : Response) -> String =
  #| (self) => self.statusText

///|
pub extern "js" fn Response::get_headers(self : Response) -> Headers =
  #| (self) => self.headers

///|
pub extern "js" fn Response::clone(self : Response) -> Response =
  #| (self) => self.clone()

///|
pub extern "js" fn Response::get_body(self : Response) -> ReadableStream? =
  #| (self) => self.body

///|
pub extern "js" fn Response::get_body_used(self : Response) -> Bool =
  #| (self) => self.bodyUsed

///|
pub extern "js" fn Response::array_buffer(
  self : Response,
) -> Promise[ArrayBuffer] =
  #| (self) => self.arrayBuffer()

///|
pub extern "js" fn Response::blob(self : Response) -> Promise[Blob] =
  #| (self) => self.blob()

///|
pub extern "js" fn Response::bytes(self : Response) -> Promise[Uint8Array] =
  #| (self) => self.bytes()

///|
pub extern "js" fn Response::form_data(self : Response) -> Promise[FormData] =
  #| (self) => self.formData()

///|
pub extern "js" fn Response::text(self : Response) -> Promise[String] =
  #| (self) => self.text()

///|
/// FetchLaterResult interface
pub type FetchLaterResult

///|
pub extern "js" fn FetchLaterResult::to_js_value(
  self : FetchLaterResult,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn FetchLaterResult::get_activated(
  self : FetchLaterResult,
) -> Bool =
  #| (self) => self.activated
