// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/xhr

///|
/// FormDataEntryValue typedef
pub type FormDataEntryValue

///|
pub extern "js" fn FormDataEntryValue::to_js_value(
  self : FormDataEntryValue,
) -> JsValue =
  #| (self) => self

///|
/// Create FormDataEntryValue from File
pub extern "js" fn FormDataEntryValue::from_file(
  v : File,
) -> FormDataEntryValue =
  #| (v) => v

///|
/// Create FormDataEntryValue from String
pub extern "js" fn FormDataEntryValue::from_string(
  v : String,
) -> FormDataEntryValue =
  #| (v) => v

///|
/// Check if this FormDataEntryValue is File
pub extern "js" fn FormDataEntryValue::is_file(
  self : FormDataEntryValue,
) -> Bool =
  #| (self) => self instanceof File

///|
/// Check if this FormDataEntryValue is String
pub extern "js" fn FormDataEntryValue::is_string(
  self : FormDataEntryValue,
) -> Bool =
  #| (self) => typeof self === 'string'

///|
/// Try to get FormDataEntryValue as File
pub extern "js" fn FormDataEntryValue::as_file(
  self : FormDataEntryValue,
) -> File? =
  #| (self) => (self instanceof File) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get FormDataEntryValue as String
pub extern "js" fn FormDataEntryValue::as_string(
  self : FormDataEntryValue,
) -> String? =
  #| (self) => (typeof self === 'string') ? self : undefined

///|
/// Flatten Option[FormDataEntryValue] to File?
pub fn FormDataEntryValue::bind_as_file(value : FormDataEntryValue?) -> File? {
  match value {
    Some(v) => v.as_file()
    None => None
  }
}

///|
/// Flatten Option[FormDataEntryValue] to String?
pub fn FormDataEntryValue::bind_as_string(
  value : FormDataEntryValue?,
) -> String? {
  match value {
    Some(v) => v.as_string()
    None => None
  }
}

///|
/// XMLHttpRequestResponseType enum
pub(all) enum XMLHttpRequestResponseType {
  Empty
  Arraybuffer
  Blob
  Document
  Json
  Text
} derive(Eq, Show)

///|
/// Convert to string value
pub fn XMLHttpRequestResponseType::to_string(
  self : XMLHttpRequestResponseType,
) -> String {
  match self {
    XMLHttpRequestResponseType::Empty => ""
    XMLHttpRequestResponseType::Arraybuffer => "arraybuffer"
    XMLHttpRequestResponseType::Blob => "blob"
    XMLHttpRequestResponseType::Document => "document"
    XMLHttpRequestResponseType::Json => "json"
    XMLHttpRequestResponseType::Text => "text"
  }
}

///|
/// Parse from string value
pub fn XMLHttpRequestResponseType::from_string(
  s : String,
) -> XMLHttpRequestResponseType? {
  match s {
    "" => Some(XMLHttpRequestResponseType::Empty)
    "arraybuffer" => Some(XMLHttpRequestResponseType::Arraybuffer)
    "blob" => Some(XMLHttpRequestResponseType::Blob)
    "document" => Some(XMLHttpRequestResponseType::Document)
    "json" => Some(XMLHttpRequestResponseType::Json)
    "text" => Some(XMLHttpRequestResponseType::Text)
    _ => None
  }
}

///|
/// ProgressEventInit dictionary
pub(all) struct ProgressEventInit {
  lengthComputable : Bool?
  loaded : Double?
  total : Double?
}

///|
/// Create a new ProgressEventInit with default values
pub fn ProgressEventInit::default() -> ProgressEventInit {
  ProgressEventInit::{ lengthComputable: None, loaded: None, total: None }
}

///|
extern "js" fn ProgressEventInit::to_js_ffi(
  self : ProgressEventInit,
) -> JsValue =
  #| (self) => ({
  #|   lengthComputable: (self.lengthComputable === -1 ? undefined : self.lengthComputable),
  #|   loaded: self.loaded,
  #|   total: self.total
  #| })

///|
/// Convert to JsValue
pub fn ProgressEventInit::to_js(self : ProgressEventInit) -> JsValue {
  ProgressEventInit::to_js_ffi(self)
}

///|
extern "js" fn ProgressEventInit::from_js_ffi(
  value : JsValue,
) -> ProgressEventInit =
  #| (v) => ({
  #|   lengthComputable: (v.lengthComputable === undefined ? -1 : v.lengthComputable),
  #|   loaded: v.loaded,
  #|   total: v.total
  #| })

///|
/// Convert from JsValue
pub fn ProgressEventInit::from_js(value : JsValue) -> ProgressEventInit {
  ProgressEventInit::from_js_ffi(value)
}

///|
/// XMLHttpRequestEventTarget interface
pub type XMLHttpRequestEventTarget

///|
pub extern "js" fn XMLHttpRequestEventTarget::to_js_value(
  self : XMLHttpRequestEventTarget,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XMLHttpRequestEventTarget (unchecked)
pub extern "js" fn XMLHttpRequestEventTarget::from_js_value(
  v : JsValue,
) -> XMLHttpRequestEventTarget =
  #| (v) => v

///|
/// Safely cast JsValue to XMLHttpRequestEventTarget (checked with instanceof)
pub extern "js" fn XMLHttpRequestEventTarget::from_js_value_opt(
  v : JsValue,
) -> XMLHttpRequestEventTarget? =
  #| (v) => (v instanceof XMLHttpRequestEventTarget) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XMLHttpRequestEventTarget (checked with instanceof)
pub extern "js" fn JsValue::as_xml_http_request_event_target(
  self : JsValue,
) -> XMLHttpRequestEventTarget? =
  #| (self) => (self instanceof XMLHttpRequestEventTarget) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XMLHttpRequestEventTarget (unchecked)
pub extern "js" fn JsValue::to_xml_http_request_event_target(
  self : JsValue,
) -> XMLHttpRequestEventTarget =
  #| (self) => self

///|
pub extern "js" fn XMLHttpRequestEventTarget::to_event_target(
  self : XMLHttpRequestEventTarget,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn XMLHttpRequestEventTarget::as_xml_http_request_upload(
  self : XMLHttpRequestEventTarget,
) -> XMLHttpRequestUpload? =
  #| (self) => (self instanceof XMLHttpRequestUpload) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn XMLHttpRequestEventTarget::as_xml_http_request(
  self : XMLHttpRequestEventTarget,
) -> XMLHttpRequest? =
  #| (self) => (self instanceof XMLHttpRequest) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn XMLHttpRequestEventTarget::get_onloadstart(
  self : XMLHttpRequestEventTarget,
) -> EventHandler =
  #| (self) => self.onloadstart

///|
pub extern "js" fn XMLHttpRequestEventTarget::set_onloadstart(
  self : XMLHttpRequestEventTarget,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onloadstart = value }

///|
pub extern "js" fn XMLHttpRequestEventTarget::get_onprogress(
  self : XMLHttpRequestEventTarget,
) -> EventHandler =
  #| (self) => self.onprogress

///|
pub extern "js" fn XMLHttpRequestEventTarget::set_onprogress(
  self : XMLHttpRequestEventTarget,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onprogress = value }

///|
pub extern "js" fn XMLHttpRequestEventTarget::get_onabort(
  self : XMLHttpRequestEventTarget,
) -> EventHandler =
  #| (self) => self.onabort

///|
pub extern "js" fn XMLHttpRequestEventTarget::set_onabort(
  self : XMLHttpRequestEventTarget,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onabort = value }

///|
pub extern "js" fn XMLHttpRequestEventTarget::get_onerror(
  self : XMLHttpRequestEventTarget,
) -> EventHandler =
  #| (self) => self.onerror

///|
pub extern "js" fn XMLHttpRequestEventTarget::set_onerror(
  self : XMLHttpRequestEventTarget,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onerror = value }

///|
pub extern "js" fn XMLHttpRequestEventTarget::get_onload(
  self : XMLHttpRequestEventTarget,
) -> EventHandler =
  #| (self) => self.onload

///|
pub extern "js" fn XMLHttpRequestEventTarget::set_onload(
  self : XMLHttpRequestEventTarget,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onload = value }

///|
pub extern "js" fn XMLHttpRequestEventTarget::get_ontimeout(
  self : XMLHttpRequestEventTarget,
) -> EventHandler =
  #| (self) => self.ontimeout

///|
pub extern "js" fn XMLHttpRequestEventTarget::set_ontimeout(
  self : XMLHttpRequestEventTarget,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontimeout = value }

///|
pub extern "js" fn XMLHttpRequestEventTarget::get_onloadend(
  self : XMLHttpRequestEventTarget,
) -> EventHandler =
  #| (self) => self.onloadend

///|
pub extern "js" fn XMLHttpRequestEventTarget::set_onloadend(
  self : XMLHttpRequestEventTarget,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onloadend = value }

///|
/// XMLHttpRequestUpload interface
pub type XMLHttpRequestUpload

///|
pub extern "js" fn XMLHttpRequestUpload::to_js_value(
  self : XMLHttpRequestUpload,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XMLHttpRequestUpload (unchecked)
pub extern "js" fn XMLHttpRequestUpload::from_js_value(
  v : JsValue,
) -> XMLHttpRequestUpload =
  #| (v) => v

///|
/// Safely cast JsValue to XMLHttpRequestUpload (checked with instanceof)
pub extern "js" fn XMLHttpRequestUpload::from_js_value_opt(
  v : JsValue,
) -> XMLHttpRequestUpload? =
  #| (v) => (v instanceof XMLHttpRequestUpload) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XMLHttpRequestUpload (checked with instanceof)
pub extern "js" fn JsValue::as_xml_http_request_upload(
  self : JsValue,
) -> XMLHttpRequestUpload? =
  #| (self) => (self instanceof XMLHttpRequestUpload) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XMLHttpRequestUpload (unchecked)
pub extern "js" fn JsValue::to_xml_http_request_upload(
  self : JsValue,
) -> XMLHttpRequestUpload =
  #| (self) => self

///|
pub extern "js" fn XMLHttpRequestUpload::to_xml_http_request_event_target(
  self : XMLHttpRequestUpload,
) -> XMLHttpRequestEventTarget =
  #| (self) => self

///|
pub extern "js" fn XMLHttpRequestUpload::to_event_target(
  self : XMLHttpRequestUpload,
) -> EventTarget =
  #| (self) => self

///|
/// XMLHttpRequest interface
pub type XMLHttpRequest

///|
pub extern "js" fn XMLHttpRequest::to_js_value(
  self : XMLHttpRequest,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XMLHttpRequest (unchecked)
pub extern "js" fn XMLHttpRequest::from_js_value(v : JsValue) -> XMLHttpRequest =
  #| (v) => v

///|
/// Safely cast JsValue to XMLHttpRequest (checked with instanceof)
pub extern "js" fn XMLHttpRequest::from_js_value_opt(
  v : JsValue,
) -> XMLHttpRequest? =
  #| (v) => (v instanceof XMLHttpRequest) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XMLHttpRequest (checked with instanceof)
pub extern "js" fn JsValue::as_xml_http_request(
  self : JsValue,
) -> XMLHttpRequest? =
  #| (self) => (self instanceof XMLHttpRequest) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XMLHttpRequest (unchecked)
pub extern "js" fn JsValue::to_xml_http_request(
  self : JsValue,
) -> XMLHttpRequest =
  #| (self) => self

///|
pub extern "js" fn XMLHttpRequest::to_xml_http_request_event_target(
  self : XMLHttpRequest,
) -> XMLHttpRequestEventTarget =
  #| (self) => self

///|
pub extern "js" fn XMLHttpRequest::to_event_target(
  self : XMLHttpRequest,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn XMLHttpRequest::new() -> XMLHttpRequest =
  #| () => new XMLHttpRequest()

///|
pub extern "js" fn XMLHttpRequest::get_onreadystatechange(
  self : XMLHttpRequest,
) -> EventHandler =
  #| (self) => self.onreadystatechange

///|
pub extern "js" fn XMLHttpRequest::set_onreadystatechange(
  self : XMLHttpRequest,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onreadystatechange = value }

// XMLHttpRequest.UNSENT

///|
pub let xml_http_request_unsent : Int = 0

// XMLHttpRequest.OPENED

///|
pub let xml_http_request_opened : Int = 1

// XMLHttpRequest.HEADERS_RECEIVED

///|
pub let xml_http_request_headers_received : Int = 2

// XMLHttpRequest.LOADING

///|
pub let xml_http_request_loading : Int = 3

// XMLHttpRequest.DONE

///|
pub let xml_http_request_done : Int = 4

///|
pub extern "js" fn XMLHttpRequest::get_ready_state(
  self : XMLHttpRequest,
) -> Int =
  #| (self) => self.readyState

///|
pub extern "js" fn XMLHttpRequest::open(
  self : XMLHttpRequest,
  method_ : String,
  url : String,
) -> Unit =
  #| (self, method_, url) => self.open(method_, url)

///|
pub extern "js" fn XMLHttpRequest::open_with_method_and_url_and_async(
  self : XMLHttpRequest,
  method_ : String,
  url : String,
  async_ : Bool,
) -> Unit =
  #| (self, method_, url, async_) => self.open(method_, url, async_)

///|
pub extern "js" fn XMLHttpRequest::open_with_method_and_url_and_async_and_username_and_password(
  self : XMLHttpRequest,
  method_ : String,
  url : String,
  async_ : Bool,
  username : String?,
  password : String?,
) -> Unit =
  #| (self, method_, url, async_, username, password) => self.open(method_, url, async_, username, password)

///|
pub extern "js" fn XMLHttpRequest::set_request_header(
  self : XMLHttpRequest,
  name : String,
  value : String,
) -> Unit =
  #| (self, name, value) => self.setRequestHeader(name, value)

///|
pub extern "js" fn XMLHttpRequest::get_timeout(self : XMLHttpRequest) -> Int =
  #| (self) => self.timeout

///|
pub extern "js" fn XMLHttpRequest::set_timeout(
  self : XMLHttpRequest,
  value : Int,
) -> Unit =
  #| (self, value) => { self.timeout = value }

///|
pub extern "js" fn XMLHttpRequest::get_with_credentials(
  self : XMLHttpRequest,
) -> Bool =
  #| (self) => self.withCredentials

///|
pub extern "js" fn XMLHttpRequest::set_with_credentials(
  self : XMLHttpRequest,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.withCredentials = value }

///|
pub extern "js" fn XMLHttpRequest::get_upload(
  self : XMLHttpRequest,
) -> XMLHttpRequestUpload =
  #| (self) => self.upload

///|
pub extern "js" fn XMLHttpRequest::send(self : XMLHttpRequest) -> Unit =
  #| (self) => self.send()

///|
pub extern "js" fn XMLHttpRequest::send_with_body(
  self : XMLHttpRequest,
  body : DocumentOrXMLHttpRequestBodyInit,
) -> Unit =
  #| (self, body) => self.send(body)

///|
pub extern "js" fn XMLHttpRequest::abort(self : XMLHttpRequest) -> Unit =
  #| (self) => self.abort()

///|
pub extern "js" fn XMLHttpRequest::get_response_url(
  self : XMLHttpRequest,
) -> String =
  #| (self) => self.responseURL

///|
pub extern "js" fn XMLHttpRequest::get_status(self : XMLHttpRequest) -> Int =
  #| (self) => self.status

///|
pub extern "js" fn XMLHttpRequest::get_status_text(
  self : XMLHttpRequest,
) -> String =
  #| (self) => self.statusText

///|
pub extern "js" fn XMLHttpRequest::get_response_header(
  self : XMLHttpRequest,
  name : String,
) -> String? =
  #| (self, name) => (self.getResponseHeader(name)) ?? undefined

///|
pub extern "js" fn XMLHttpRequest::get_all_response_headers(
  self : XMLHttpRequest,
) -> String =
  #| (self) => self.getAllResponseHeaders()

///|
pub extern "js" fn XMLHttpRequest::override_mime_type(
  self : XMLHttpRequest,
  mime : String,
) -> Unit =
  #| (self, mime) => self.overrideMimeType(mime)

///|
pub extern "js" fn XMLHttpRequest::get_response_type(
  self : XMLHttpRequest,
) -> XMLHttpRequestResponseType =
  #| (self) => ['', 'arraybuffer', 'blob', 'document', 'json', 'text'].indexOf(self.responseType)

///|
pub extern "js" fn XMLHttpRequest::set_response_type(
  self : XMLHttpRequest,
  value : XMLHttpRequestResponseType,
) -> Unit =
  #| (self, value) => { self.responseType = ['', 'arraybuffer', 'blob', 'document', 'json', 'text'][value] }

///|
pub extern "js" fn XMLHttpRequest::get_response(
  self : XMLHttpRequest,
) -> JsValue =
  #| (self) => self.response

///|
pub extern "js" fn XMLHttpRequest::get_response_text(
  self : XMLHttpRequest,
) -> String =
  #| (self) => self.responseText

///|
pub extern "js" fn XMLHttpRequest::get_response_xml(
  self : XMLHttpRequest,
) -> Document? =
  #| (self) => (() => { const v = self.responseXML; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
extern "js" fn XMLHttpRequest::set_attribution_reporting_ffi(
  self : XMLHttpRequest,
  options : JsValue,
) -> Unit =
  #| (self, options) => self.setAttributionReporting(options)

///|
pub fn XMLHttpRequest::set_attribution_reporting(
  self : XMLHttpRequest,
  options : AttributionReportingRequestOptions,
) -> Unit {
  XMLHttpRequest::set_attribution_reporting_ffi(self, options.to_js())
}

///|
extern "js" fn XMLHttpRequest::set_private_token_ffi(
  self : XMLHttpRequest,
  private_token : JsValue,
) -> Unit =
  #| (self, private_token) => self.setPrivateToken(private_token)

///|
pub fn XMLHttpRequest::set_private_token(
  self : XMLHttpRequest,
  private_token : PrivateToken,
) -> Unit {
  XMLHttpRequest::set_private_token_ffi(self, private_token.to_js())
}

///|
/// FormData interface
pub type FormData

///|
pub extern "js" fn FormData::to_js_value(self : FormData) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to FormData (unchecked)
pub extern "js" fn FormData::from_js_value(v : JsValue) -> FormData =
  #| (v) => v

///|
/// Safely cast JsValue to FormData (checked with instanceof)
pub extern "js" fn FormData::from_js_value_opt(v : JsValue) -> FormData? =
  #| (v) => (v instanceof FormData) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to FormData (checked with instanceof)
pub extern "js" fn JsValue::as_form_data(self : JsValue) -> FormData? =
  #| (self) => (self instanceof FormData) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to FormData (unchecked)
pub extern "js" fn JsValue::to_form_data(self : JsValue) -> FormData =
  #| (self) => self

///|
pub extern "js" fn FormData::new() -> FormData =
  #| () => new FormData()

///|
pub extern "js" fn FormData::new_with_submitter(
  form : HTMLFormElement,
  submitter : HTMLElement?,
) -> FormData =
  #| (form, submitter) => new FormData(form, (submitter.$tag === 1 ? submitter._0 : null))

///|
pub extern "js" fn FormData::append(
  self : FormData,
  name : String,
  value : String,
) -> Unit =
  #| (self, name, value) => self.append(name, value)

///|
pub extern "js" fn FormData::append_with_name_and_blob_value_blob(
  self : FormData,
  name : String,
  blob_value : Blob,
) -> Unit =
  #| (self, name, blob_value) => self.append(name, blob_value)

///|
pub extern "js" fn FormData::append_with_name_and_blob_value_blob_and_filename(
  self : FormData,
  name : String,
  blob_value : Blob,
  filename : String,
) -> Unit =
  #| (self, name, blob_value, filename) => self.append(name, blob_value, filename)

///|
pub extern "js" fn FormData::delete(self : FormData, name : String) -> Unit =
  #| (self, name) => self.delete(name)

///|
pub extern "js" fn FormData::get(
  self : FormData,
  name : String,
) -> FormDataEntryValue? =
  #| (self, name) => (() => { const v = self.get(name); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn FormData::get_all(
  self : FormData,
  name : String,
) -> Array[FormDataEntryValue] =
  #| (self, name) => self.getAll(name)

///|
pub extern "js" fn FormData::has(self : FormData, name : String) -> Bool =
  #| (self, name) => self.has(name)

///|
pub extern "js" fn FormData::set(
  self : FormData,
  name : String,
  value : String,
) -> Unit =
  #| (self, name, value) => self.set(name, value)

///|
pub extern "js" fn FormData::set_with_name_and_blob_value_blob(
  self : FormData,
  name : String,
  blob_value : Blob,
) -> Unit =
  #| (self, name, blob_value) => self.set(name, blob_value)

///|
pub extern "js" fn FormData::set_with_name_and_blob_value_blob_and_filename(
  self : FormData,
  name : String,
  blob_value : Blob,
  filename : String,
) -> Unit =
  #| (self, name, blob_value, filename) => self.set(name, blob_value, filename)

///|
pub extern "js" fn FormData::keys(self : FormData) -> JsValue =
  #| (self) => self.keys()

///|
pub extern "js" fn FormData::values(self : FormData) -> JsValue =
  #| (self) => self.values()

///|
pub extern "js" fn FormData::entries(self : FormData) -> JsValue =
  #| (self) => self.entries()

///|
pub extern "js" fn FormData::for_each(
  self : FormData,
  callback : JsValue,
) -> Unit =
  #| (self, callback) => { self.forEach(callback) }

///|
/// ProgressEvent interface
pub type ProgressEvent

///|
pub extern "js" fn ProgressEvent::to_js_value(self : ProgressEvent) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ProgressEvent (unchecked)
pub extern "js" fn ProgressEvent::from_js_value(v : JsValue) -> ProgressEvent =
  #| (v) => v

///|
/// Safely cast JsValue to ProgressEvent (checked with instanceof)
pub extern "js" fn ProgressEvent::from_js_value_opt(
  v : JsValue,
) -> ProgressEvent? =
  #| (v) => (v instanceof ProgressEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ProgressEvent (checked with instanceof)
pub extern "js" fn JsValue::as_progress_event(self : JsValue) -> ProgressEvent? =
  #| (self) => (self instanceof ProgressEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ProgressEvent (unchecked)
pub extern "js" fn JsValue::to_progress_event(self : JsValue) -> ProgressEvent =
  #| (self) => self

///|
pub extern "js" fn ProgressEvent::to_event(self : ProgressEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn ProgressEvent::new(type_ : String) -> ProgressEvent =
  #| (type_) => new ProgressEvent(type_)

///|
extern "js" fn ProgressEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> ProgressEvent =
  #| (type_, event_init_dict) => new ProgressEvent(type_, event_init_dict)

///|
pub fn ProgressEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : ProgressEventInit,
) -> ProgressEvent {
  ProgressEvent::new_with_event_init_dict_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn ProgressEvent::get_length_computable(
  self : ProgressEvent,
) -> Bool =
  #| (self) => self.lengthComputable

///|
pub extern "js" fn ProgressEvent::get_loaded(self : ProgressEvent) -> Double =
  #| (self) => self.loaded

///|
pub extern "js" fn ProgressEvent::get_total(self : ProgressEvent) -> Double =
  #| (self) => self.total
