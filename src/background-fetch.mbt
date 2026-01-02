// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/background-fetch

///|
/// BackgroundFetchResult enum
pub(all) enum BackgroundFetchResult {
  Empty
  Success
  Failure
}

/// Convert to string value
pub fn BackgroundFetchResult::to_string(self : BackgroundFetchResult) -> String {
  match self {
    Empty => ""
    Success => "success"
    Failure => "failure"
  }
}

/// Parse from string value
pub fn BackgroundFetchResult::from_string(s : String) -> BackgroundFetchResult? {
  match s {
    "" => Some(Empty)
    "success" => Some(Success)
    "failure" => Some(Failure)
    _ => None
  }
}

///|
/// BackgroundFetchFailureReason enum
pub(all) enum BackgroundFetchFailureReason {
  Empty
  Aborted
  BadStatus
  FetchError
  QuotaExceeded
  DownloadTotalExceeded
}

/// Convert to string value
pub fn BackgroundFetchFailureReason::to_string(self : BackgroundFetchFailureReason) -> String {
  match self {
    Empty => ""
    Aborted => "aborted"
    BadStatus => "bad-status"
    FetchError => "fetch-error"
    QuotaExceeded => "quota-exceeded"
    DownloadTotalExceeded => "download-total-exceeded"
  }
}

/// Parse from string value
pub fn BackgroundFetchFailureReason::from_string(s : String) -> BackgroundFetchFailureReason? {
  match s {
    "" => Some(Empty)
    "aborted" => Some(Aborted)
    "bad-status" => Some(BadStatus)
    "fetch-error" => Some(FetchError)
    "quota-exceeded" => Some(QuotaExceeded)
    "download-total-exceeded" => Some(DownloadTotalExceeded)
    _ => None
  }
}

///|
/// BackgroundFetchUIOptions dictionary
pub struct BackgroundFetchUIOptions {
  icons : Array[ImageResource]?
  title : String?
}

/// Create a new BackgroundFetchUIOptions with default values
pub fn BackgroundFetchUIOptions::default() -> BackgroundFetchUIOptions {
  BackgroundFetchUIOptions::{
    icons: None,
    title: None,
  }
}

/// Convert to JsValue
pub extern "js" fn BackgroundFetchUIOptions::to_js(self : BackgroundFetchUIOptions) -> JsValue =
  #| (self) => ({
  #|   icons: self.icons,
  #|   title: self.title
  #| })

///|
/// BackgroundFetchOptions dictionary
pub struct BackgroundFetchOptions {
  icons : Array[ImageResource]?
  title : String?
  downloadTotal : Int64?
}

/// Create a new BackgroundFetchOptions with default values
pub fn BackgroundFetchOptions::default() -> BackgroundFetchOptions {
  BackgroundFetchOptions::{
    icons: None,
    title: None,
    downloadTotal: None,
  }
}

/// Convert to JsValue
pub extern "js" fn BackgroundFetchOptions::to_js(self : BackgroundFetchOptions) -> JsValue =
  #| (self) => ({
  #|   icons: self.icons,
  #|   title: self.title,
  #|   downloadTotal: self.downloadTotal
  #| })

///|
/// BackgroundFetchEventInit dictionary
pub struct BackgroundFetchEventInit {
  registration : BackgroundFetchRegistration
}

/// Create a new BackgroundFetchEventInit with default values
pub fn BackgroundFetchEventInit::default() -> BackgroundFetchEventInit {
  BackgroundFetchEventInit::{
    registration: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn BackgroundFetchEventInit::to_js(self : BackgroundFetchEventInit) -> JsValue =
  #| (self) => ({
  #|   registration: self.registration
  #| })

///|
/// BackgroundFetchManager interface
pub type BackgroundFetchManager

pub extern "js" fn BackgroundFetchManager::to_js_value(self : BackgroundFetchManager) -> JsValue =
  #| (self) => self

pub extern "js" fn BackgroundFetchManager::fetch(self : BackgroundFetchManager, id : String, requests : JsValue) -> Promise[BackgroundFetchRegistration] =
  #| (self, id, requests) => self.fetch(id, requests)

pub extern "js" fn BackgroundFetchManager::fetch_with_options(self : BackgroundFetchManager, id : String, requests : JsValue, options : BackgroundFetchOptions) -> Promise[BackgroundFetchRegistration] =
  #| (self, id, requests, options) => self.fetch(id, requests, options)

pub extern "js" fn BackgroundFetchManager::get(self : BackgroundFetchManager, id : String) -> Promise[BackgroundFetchRegistration?] =
  #| (self, id) => self.get(id)

pub extern "js" fn BackgroundFetchManager::get_ids(self : BackgroundFetchManager) -> Promise[Array[String]] =
  #| (self) => self.getIds()

///|
/// BackgroundFetchRegistration interface
pub type BackgroundFetchRegistration

pub extern "js" fn BackgroundFetchRegistration::to_js_value(self : BackgroundFetchRegistration) -> JsValue =
  #| (self) => self

pub extern "js" fn BackgroundFetchRegistration::get_id(self : BackgroundFetchRegistration) -> String =
  #| (self) => self.id

pub extern "js" fn BackgroundFetchRegistration::get_upload_total(self : BackgroundFetchRegistration) -> Int64 =
  #| (self) => self.uploadTotal

pub extern "js" fn BackgroundFetchRegistration::get_uploaded(self : BackgroundFetchRegistration) -> Int64 =
  #| (self) => self.uploaded

pub extern "js" fn BackgroundFetchRegistration::get_download_total(self : BackgroundFetchRegistration) -> Int64 =
  #| (self) => self.downloadTotal

pub extern "js" fn BackgroundFetchRegistration::get_downloaded(self : BackgroundFetchRegistration) -> Int64 =
  #| (self) => self.downloaded

pub extern "js" fn BackgroundFetchRegistration::get_result(self : BackgroundFetchRegistration) -> BackgroundFetchResult =
  #| (self) => self.result

pub extern "js" fn BackgroundFetchRegistration::get_failure_reason(self : BackgroundFetchRegistration) -> BackgroundFetchFailureReason =
  #| (self) => self.failureReason

pub extern "js" fn BackgroundFetchRegistration::get_records_available(self : BackgroundFetchRegistration) -> Bool =
  #| (self) => self.recordsAvailable

pub extern "js" fn BackgroundFetchRegistration::get_onprogress(self : BackgroundFetchRegistration) -> EventHandler =
  #| (self) => self.onprogress

pub extern "js" fn BackgroundFetchRegistration::set_onprogress(self : BackgroundFetchRegistration, value : EventHandler) -> Unit =
  #| (self, value) => { self.onprogress = value }

pub extern "js" fn BackgroundFetchRegistration::abort(self : BackgroundFetchRegistration) -> Promise[Bool] =
  #| (self) => self.abort()

pub extern "js" fn BackgroundFetchRegistration::match_(self : BackgroundFetchRegistration, request : RequestInfo) -> Promise[BackgroundFetchRecord] =
  #| (self, request) => self.match(request)

pub extern "js" fn BackgroundFetchRegistration::match__with_options(self : BackgroundFetchRegistration, request : RequestInfo, options : CacheQueryOptions) -> Promise[BackgroundFetchRecord] =
  #| (self, request, options) => self.match(request, options)

pub extern "js" fn BackgroundFetchRegistration::match_all(self : BackgroundFetchRegistration) -> Promise[Array[BackgroundFetchRecord]] =
  #| (self) => self.matchAll()

pub extern "js" fn BackgroundFetchRegistration::match_all_with_options(self : BackgroundFetchRegistration, request : RequestInfo, options : CacheQueryOptions) -> Promise[Array[BackgroundFetchRecord]] =
  #| (self, request, options) => self.matchAll(request, options)

///|
/// BackgroundFetchRecord interface
pub type BackgroundFetchRecord

pub extern "js" fn BackgroundFetchRecord::to_js_value(self : BackgroundFetchRecord) -> JsValue =
  #| (self) => self

pub extern "js" fn BackgroundFetchRecord::get_request(self : BackgroundFetchRecord) -> Request =
  #| (self) => self.request

pub extern "js" fn BackgroundFetchRecord::get_response_ready(self : BackgroundFetchRecord) -> Promise[Response] =
  #| (self) => self.responseReady

///|
/// BackgroundFetchEvent interface
pub type BackgroundFetchEvent

pub extern "js" fn BackgroundFetchEvent::to_js_value(self : BackgroundFetchEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn BackgroundFetchEvent::new(type_ : String, init_ : BackgroundFetchEventInit) -> BackgroundFetchEvent =
  #| (type_, init_) => new BackgroundFetchEvent(type_, init_)

pub extern "js" fn BackgroundFetchEvent::get_registration(self : BackgroundFetchEvent) -> BackgroundFetchRegistration =
  #| (self) => self.registration

///|
/// BackgroundFetchUpdateUIEvent interface
pub type BackgroundFetchUpdateUIEvent

pub extern "js" fn BackgroundFetchUpdateUIEvent::to_js_value(self : BackgroundFetchUpdateUIEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn BackgroundFetchUpdateUIEvent::new(type_ : String, init_ : BackgroundFetchEventInit) -> BackgroundFetchUpdateUIEvent =
  #| (type_, init_) => new BackgroundFetchUpdateUIEvent(type_, init_)

pub extern "js" fn BackgroundFetchUpdateUIEvent::get_registration(self : BackgroundFetchUpdateUIEvent) -> BackgroundFetchRegistration =
  #| (self) => self.registration

pub extern "js" fn BackgroundFetchUpdateUIEvent::update_u_i(self : BackgroundFetchUpdateUIEvent) -> Promise[Unit] =
  #| (self) => self.updateUI()

pub extern "js" fn BackgroundFetchUpdateUIEvent::update_u_i_with_options(self : BackgroundFetchUpdateUIEvent, options : BackgroundFetchUIOptions) -> Promise[Unit] =
  #| (self, options) => self.updateUI(options)

