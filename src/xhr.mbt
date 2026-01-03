// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/xhr

///|
/// FormDataEntryValue typedef
pub type FormDataEntryValue = JsValue

///|
/// XMLHttpRequestResponseType enum
pub(all) enum XMLHttpRequestResponseType {
  Empty
  Arraybuffer
  Blob
  Document
  Json
  Text
}

/// Convert to string value
pub fn XMLHttpRequestResponseType::to_string(self : XMLHttpRequestResponseType) -> String {
  match self {
    Empty => ""
    Arraybuffer => "arraybuffer"
    Blob => "blob"
    Document => "document"
    Json => "json"
    Text => "text"
  }
}

/// Parse from string value
pub fn XMLHttpRequestResponseType::from_string(s : String) -> XMLHttpRequestResponseType? {
  match s {
    "" => Some(Empty)
    "arraybuffer" => Some(Arraybuffer)
    "blob" => Some(Blob)
    "document" => Some(Document)
    "json" => Some(Json)
    "text" => Some(Text)
    _ => None
  }
}

///|
/// ProgressEventInit dictionary
pub struct ProgressEventInit {
  lengthComputable : Bool?
  loaded : Double?
  total : Double?
}

/// Create a new ProgressEventInit with default values
pub fn ProgressEventInit::default() -> ProgressEventInit {
  ProgressEventInit::{
    lengthComputable: None,
    loaded: None,
    total: None,
  }
}

/// Convert to JsValue
pub extern "js" fn ProgressEventInit::to_js(self : ProgressEventInit) -> JsValue =
  #| (self) => ({
  #|   lengthComputable: self.lengthComputable,
  #|   loaded: self.loaded,
  #|   total: self.total
  #| })

///|
/// XMLHttpRequestEventTarget interface
pub type XMLHttpRequestEventTarget

pub extern "js" fn XMLHttpRequestEventTarget::to_js_value(self : XMLHttpRequestEventTarget) -> JsValue =
  #| (self) => self

pub extern "js" fn XMLHttpRequestEventTarget::get_onloadstart(self : XMLHttpRequestEventTarget) -> EventHandler =
  #| (self) => self.onloadstart

pub extern "js" fn XMLHttpRequestEventTarget::set_onloadstart(self : XMLHttpRequestEventTarget, value : EventHandler) -> Unit =
  #| (self, value) => { self.onloadstart = value }

pub extern "js" fn XMLHttpRequestEventTarget::get_onprogress(self : XMLHttpRequestEventTarget) -> EventHandler =
  #| (self) => self.onprogress

pub extern "js" fn XMLHttpRequestEventTarget::set_onprogress(self : XMLHttpRequestEventTarget, value : EventHandler) -> Unit =
  #| (self, value) => { self.onprogress = value }

pub extern "js" fn XMLHttpRequestEventTarget::get_onabort(self : XMLHttpRequestEventTarget) -> EventHandler =
  #| (self) => self.onabort

pub extern "js" fn XMLHttpRequestEventTarget::set_onabort(self : XMLHttpRequestEventTarget, value : EventHandler) -> Unit =
  #| (self, value) => { self.onabort = value }

pub extern "js" fn XMLHttpRequestEventTarget::get_onerror(self : XMLHttpRequestEventTarget) -> EventHandler =
  #| (self) => self.onerror

pub extern "js" fn XMLHttpRequestEventTarget::set_onerror(self : XMLHttpRequestEventTarget, value : EventHandler) -> Unit =
  #| (self, value) => { self.onerror = value }

pub extern "js" fn XMLHttpRequestEventTarget::get_onload(self : XMLHttpRequestEventTarget) -> EventHandler =
  #| (self) => self.onload

pub extern "js" fn XMLHttpRequestEventTarget::set_onload(self : XMLHttpRequestEventTarget, value : EventHandler) -> Unit =
  #| (self, value) => { self.onload = value }

pub extern "js" fn XMLHttpRequestEventTarget::get_ontimeout(self : XMLHttpRequestEventTarget) -> EventHandler =
  #| (self) => self.ontimeout

pub extern "js" fn XMLHttpRequestEventTarget::set_ontimeout(self : XMLHttpRequestEventTarget, value : EventHandler) -> Unit =
  #| (self, value) => { self.ontimeout = value }

pub extern "js" fn XMLHttpRequestEventTarget::get_onloadend(self : XMLHttpRequestEventTarget) -> EventHandler =
  #| (self) => self.onloadend

pub extern "js" fn XMLHttpRequestEventTarget::set_onloadend(self : XMLHttpRequestEventTarget, value : EventHandler) -> Unit =
  #| (self, value) => { self.onloadend = value }

///|
/// XMLHttpRequestUpload interface
pub type XMLHttpRequestUpload

pub extern "js" fn XMLHttpRequestUpload::to_js_value(self : XMLHttpRequestUpload) -> JsValue =
  #| (self) => self

pub extern "js" fn XMLHttpRequestUpload::get_onloadstart(self : XMLHttpRequestUpload) -> EventHandler =
  #| (self) => self.onloadstart

pub extern "js" fn XMLHttpRequestUpload::set_onloadstart(self : XMLHttpRequestUpload, value : EventHandler) -> Unit =
  #| (self, value) => { self.onloadstart = value }

pub extern "js" fn XMLHttpRequestUpload::get_onprogress(self : XMLHttpRequestUpload) -> EventHandler =
  #| (self) => self.onprogress

pub extern "js" fn XMLHttpRequestUpload::set_onprogress(self : XMLHttpRequestUpload, value : EventHandler) -> Unit =
  #| (self, value) => { self.onprogress = value }

pub extern "js" fn XMLHttpRequestUpload::get_onabort(self : XMLHttpRequestUpload) -> EventHandler =
  #| (self) => self.onabort

pub extern "js" fn XMLHttpRequestUpload::set_onabort(self : XMLHttpRequestUpload, value : EventHandler) -> Unit =
  #| (self, value) => { self.onabort = value }

pub extern "js" fn XMLHttpRequestUpload::get_onerror(self : XMLHttpRequestUpload) -> EventHandler =
  #| (self) => self.onerror

pub extern "js" fn XMLHttpRequestUpload::set_onerror(self : XMLHttpRequestUpload, value : EventHandler) -> Unit =
  #| (self, value) => { self.onerror = value }

pub extern "js" fn XMLHttpRequestUpload::get_onload(self : XMLHttpRequestUpload) -> EventHandler =
  #| (self) => self.onload

pub extern "js" fn XMLHttpRequestUpload::set_onload(self : XMLHttpRequestUpload, value : EventHandler) -> Unit =
  #| (self, value) => { self.onload = value }

pub extern "js" fn XMLHttpRequestUpload::get_ontimeout(self : XMLHttpRequestUpload) -> EventHandler =
  #| (self) => self.ontimeout

pub extern "js" fn XMLHttpRequestUpload::set_ontimeout(self : XMLHttpRequestUpload, value : EventHandler) -> Unit =
  #| (self, value) => { self.ontimeout = value }

pub extern "js" fn XMLHttpRequestUpload::get_onloadend(self : XMLHttpRequestUpload) -> EventHandler =
  #| (self) => self.onloadend

pub extern "js" fn XMLHttpRequestUpload::set_onloadend(self : XMLHttpRequestUpload, value : EventHandler) -> Unit =
  #| (self, value) => { self.onloadend = value }

///|
/// XMLHttpRequest interface
pub type XMLHttpRequest

pub extern "js" fn XMLHttpRequest::to_js_value(self : XMLHttpRequest) -> JsValue =
  #| (self) => self

pub extern "js" fn XMLHttpRequest::get_onloadstart(self : XMLHttpRequest) -> EventHandler =
  #| (self) => self.onloadstart

pub extern "js" fn XMLHttpRequest::set_onloadstart(self : XMLHttpRequest, value : EventHandler) -> Unit =
  #| (self, value) => { self.onloadstart = value }

pub extern "js" fn XMLHttpRequest::get_onprogress(self : XMLHttpRequest) -> EventHandler =
  #| (self) => self.onprogress

pub extern "js" fn XMLHttpRequest::set_onprogress(self : XMLHttpRequest, value : EventHandler) -> Unit =
  #| (self, value) => { self.onprogress = value }

pub extern "js" fn XMLHttpRequest::get_onabort(self : XMLHttpRequest) -> EventHandler =
  #| (self) => self.onabort

pub extern "js" fn XMLHttpRequest::set_onabort(self : XMLHttpRequest, value : EventHandler) -> Unit =
  #| (self, value) => { self.onabort = value }

pub extern "js" fn XMLHttpRequest::get_onerror(self : XMLHttpRequest) -> EventHandler =
  #| (self) => self.onerror

pub extern "js" fn XMLHttpRequest::set_onerror(self : XMLHttpRequest, value : EventHandler) -> Unit =
  #| (self, value) => { self.onerror = value }

pub extern "js" fn XMLHttpRequest::get_onload(self : XMLHttpRequest) -> EventHandler =
  #| (self) => self.onload

pub extern "js" fn XMLHttpRequest::set_onload(self : XMLHttpRequest, value : EventHandler) -> Unit =
  #| (self, value) => { self.onload = value }

pub extern "js" fn XMLHttpRequest::get_ontimeout(self : XMLHttpRequest) -> EventHandler =
  #| (self) => self.ontimeout

pub extern "js" fn XMLHttpRequest::set_ontimeout(self : XMLHttpRequest, value : EventHandler) -> Unit =
  #| (self, value) => { self.ontimeout = value }

pub extern "js" fn XMLHttpRequest::get_onloadend(self : XMLHttpRequest) -> EventHandler =
  #| (self) => self.onloadend

pub extern "js" fn XMLHttpRequest::set_onloadend(self : XMLHttpRequest, value : EventHandler) -> Unit =
  #| (self, value) => { self.onloadend = value }

pub extern "js" fn XMLHttpRequest::new() -> XMLHttpRequest =
  #| () => new XMLHttpRequest()

pub extern "js" fn XMLHttpRequest::get_onreadystatechange(self : XMLHttpRequest) -> EventHandler =
  #| (self) => self.onreadystatechange

pub extern "js" fn XMLHttpRequest::set_onreadystatechange(self : XMLHttpRequest, value : EventHandler) -> Unit =
  #| (self, value) => { self.onreadystatechange = value }

// XMLHttpRequest.UNSENT
pub let x_m_l_http_request_unsent : Int = 0

// XMLHttpRequest.OPENED
pub let x_m_l_http_request_opened : Int = 1

// XMLHttpRequest.HEADERS_RECEIVED
pub let x_m_l_http_request_headers_received : Int = 2

// XMLHttpRequest.LOADING
pub let x_m_l_http_request_loading : Int = 3

// XMLHttpRequest.DONE
pub let x_m_l_http_request_done : Int = 4

pub extern "js" fn XMLHttpRequest::get_ready_state(self : XMLHttpRequest) -> Int =
  #| (self) => self.readyState

pub extern "js" fn XMLHttpRequest::open(self : XMLHttpRequest, method_ : String, url : String) -> Unit =
  #| (self, method_, url) => self.open(method_, url)

pub extern "js" fn XMLHttpRequest::open_with_method_and_url_and_async(self : XMLHttpRequest, method_ : String, url : String, async_ : Bool) -> Unit =
  #| (self, method_, url, async_) => self.open(method_, url, async_)

pub extern "js" fn XMLHttpRequest::open_with_method_and_url_and_async_and_username_and_password(self : XMLHttpRequest, method_ : String, url : String, async_ : Bool, username : String?, password : String?) -> Unit =
  #| (self, method_, url, async_, username, password) => self.open(method_, url, async_, username, password)

pub extern "js" fn XMLHttpRequest::set_request_header(self : XMLHttpRequest, name : String, value : String) -> Unit =
  #| (self, name, value) => self.setRequestHeader(name, value)

pub extern "js" fn XMLHttpRequest::get_timeout(self : XMLHttpRequest) -> Int =
  #| (self) => self.timeout

pub extern "js" fn XMLHttpRequest::set_timeout(self : XMLHttpRequest, value : Int) -> Unit =
  #| (self, value) => { self.timeout = value }

pub extern "js" fn XMLHttpRequest::get_with_credentials(self : XMLHttpRequest) -> Bool =
  #| (self) => self.withCredentials

pub extern "js" fn XMLHttpRequest::set_with_credentials(self : XMLHttpRequest, value : Bool) -> Unit =
  #| (self, value) => { self.withCredentials = value }

pub extern "js" fn XMLHttpRequest::get_upload(self : XMLHttpRequest) -> XMLHttpRequestUpload =
  #| (self) => self.upload

pub extern "js" fn XMLHttpRequest::send(self : XMLHttpRequest) -> Unit =
  #| (self) => self.send()

pub extern "js" fn XMLHttpRequest::send_with_body(self : XMLHttpRequest, body : JsValue) -> Unit =
  #| (self, body) => self.send(body)

pub extern "js" fn XMLHttpRequest::abort(self : XMLHttpRequest) -> Unit =
  #| (self) => self.abort()

pub extern "js" fn XMLHttpRequest::get_response_u_r_l(self : XMLHttpRequest) -> String =
  #| (self) => self.responseURL

pub extern "js" fn XMLHttpRequest::get_status(self : XMLHttpRequest) -> Int =
  #| (self) => self.status

pub extern "js" fn XMLHttpRequest::get_status_text(self : XMLHttpRequest) -> String =
  #| (self) => self.statusText

pub extern "js" fn XMLHttpRequest::get_response_header(self : XMLHttpRequest, name : String) -> String? =
  #| (self, name) => self.getResponseHeader(name)

pub extern "js" fn XMLHttpRequest::get_all_response_headers(self : XMLHttpRequest) -> String =
  #| (self) => self.getAllResponseHeaders()

pub extern "js" fn XMLHttpRequest::override_mime_type(self : XMLHttpRequest, mime : String) -> Unit =
  #| (self, mime) => self.overrideMimeType(mime)

pub extern "js" fn XMLHttpRequest::get_response_type(self : XMLHttpRequest) -> XMLHttpRequestResponseType =
  #| (self) => self.responseType

pub extern "js" fn XMLHttpRequest::set_response_type(self : XMLHttpRequest, value : XMLHttpRequestResponseType) -> Unit =
  #| (self, value) => { self.responseType = value }

pub extern "js" fn XMLHttpRequest::get_response(self : XMLHttpRequest) -> JsValue =
  #| (self) => self.response

pub extern "js" fn XMLHttpRequest::get_response_text(self : XMLHttpRequest) -> String =
  #| (self) => self.responseText

pub extern "js" fn XMLHttpRequest::get_response_x_m_l(self : XMLHttpRequest) -> Document? =
  #| (self) => self.responseXML

pub extern "js" fn XMLHttpRequest::set_attribution_reporting(self : XMLHttpRequest, options : AttributionReportingRequestOptions) -> Unit =
  #| (self, options) => self.setAttributionReporting(options)

pub extern "js" fn XMLHttpRequest::set_private_token(self : XMLHttpRequest, private_token : PrivateToken) -> Unit =
  #| (self, private_token) => self.setPrivateToken(private_token)

///|
/// FormData interface
pub type FormData

pub extern "js" fn FormData::to_js_value(self : FormData) -> JsValue =
  #| (self) => self

pub extern "js" fn FormData::new(form : HTMLFormElement, submitter : HTMLElement?) -> FormData =
  #| (form, submitter) => new FormData(form, submitter)

pub extern "js" fn FormData::append(self : FormData, name : String, value : String) -> Unit =
  #| (self, name, value) => self.append(name, value)

pub extern "js" fn FormData::append_with_name_and_blob_value_blob(self : FormData, name : String, blob_value : Blob) -> Unit =
  #| (self, name, blob_value) => self.append(name, blob_value)

pub extern "js" fn FormData::append_with_name_and_blob_value_blob_and_filename(self : FormData, name : String, blob_value : Blob, filename : String) -> Unit =
  #| (self, name, blob_value, filename) => self.append(name, blob_value, filename)

pub extern "js" fn FormData::delete(self : FormData, name : String) -> Unit =
  #| (self, name) => self.delete(name)

pub extern "js" fn FormData::get(self : FormData, name : String) -> FormDataEntryValue? =
  #| (self, name) => self.get(name)

pub extern "js" fn FormData::get_all(self : FormData, name : String) -> Array[FormDataEntryValue] =
  #| (self, name) => self.getAll(name)

pub extern "js" fn FormData::has(self : FormData, name : String) -> Bool =
  #| (self, name) => self.has(name)

pub extern "js" fn FormData::set(self : FormData, name : String, value : String) -> Unit =
  #| (self, name, value) => self.set(name, value)

pub extern "js" fn FormData::set_with_name_and_blob_value_blob(self : FormData, name : String, blob_value : Blob) -> Unit =
  #| (self, name, blob_value) => self.set(name, blob_value)

pub extern "js" fn FormData::set_with_name_and_blob_value_blob_and_filename(self : FormData, name : String, blob_value : Blob, filename : String) -> Unit =
  #| (self, name, blob_value, filename) => self.set(name, blob_value, filename)

pub extern "js" fn FormData::_unknown_(self : FormData) -> Unit =
  #| (self) => self._unknown_()

///|
/// ProgressEvent interface
pub type ProgressEvent

pub extern "js" fn ProgressEvent::to_js_value(self : ProgressEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn ProgressEvent::new(type_ : String, event_init_dict : ProgressEventInit) -> ProgressEvent =
  #| (type_, event_init_dict) => new ProgressEvent(type_, event_init_dict)

pub extern "js" fn ProgressEvent::get_length_computable(self : ProgressEvent) -> Bool =
  #| (self) => self.lengthComputable

pub extern "js" fn ProgressEvent::get_loaded(self : ProgressEvent) -> Double =
  #| (self) => self.loaded

pub extern "js" fn ProgressEvent::get_total(self : ProgressEvent) -> Double =
  #| (self) => self.total

