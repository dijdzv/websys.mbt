// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/attribution-reporting-api

///|
/// AttributionReportingRequestOptions dictionary
pub(all) struct AttributionReportingRequestOptions {
  eventSourceEligible : Bool
  triggerEligible : Bool
}

///|
/// Create a new AttributionReportingRequestOptions with default values
pub fn AttributionReportingRequestOptions::default() -> AttributionReportingRequestOptions {
  AttributionReportingRequestOptions::{
    eventSourceEligible: false,
    triggerEligible: false,
  }
}

///|
extern "js" fn AttributionReportingRequestOptions::to_js_ffi(
  self : AttributionReportingRequestOptions,
) -> JsValue =
  #| (self) => ({
  #|   eventSourceEligible: self.eventSourceEligible,
  #|   triggerEligible: self.triggerEligible
  #| })

///|
/// Convert to JsValue
pub fn AttributionReportingRequestOptions::to_js(
  self : AttributionReportingRequestOptions,
) -> JsValue {
  AttributionReportingRequestOptions::to_js_ffi(self)
}

///|
/// RequestInit dictionary
pub(all) struct RequestInit {
  attributionReporting : AttributionReportingRequestOptions?
  targetAddressSpace : IPAddressSpace?
  adAuctionHeaders : Bool?
  sharedStorageWritable : Bool?
  privateToken : PrivateToken?
  method_ : String?
  headers : HeadersInit?
  body : Nullable[BodyInit]
  referrer : String?
  referrerPolicy : ReferrerPolicy?
  mode : RequestMode?
  credentials : RequestCredentials?
  cache : RequestCache?
  redirect : RequestRedirect?
  integrity : String?
  keepalive : Bool?
  signal : Nullable[AbortSignal]
  duplex : RequestDuplex?
  priority : RequestPriority?
  window : JsValue?
}

///|
/// Create a new RequestInit with default values
pub fn RequestInit::default() -> RequestInit {
  RequestInit::{
    attributionReporting: None,
    targetAddressSpace: None,
    adAuctionHeaders: None,
    sharedStorageWritable: None,
    privateToken: None,
    method_: None,
    headers: None,
    body: Nullable::Undefined,
    referrer: None,
    referrerPolicy: None,
    mode: None,
    credentials: None,
    cache: None,
    redirect: None,
    integrity: None,
    keepalive: None,
    signal: Nullable::Undefined,
    duplex: None,
    priority: None,
    window: None,
  }
}

///|
extern "js" fn RequestInit::to_js_ffi(self : RequestInit) -> JsValue =
  #| (self) => ({
  #|   attributionReporting: ((() => { const v = self.attributionReporting; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   targetAddressSpace: ((() => { const v = self.targetAddressSpace; if (v === undefined) return undefined; return ['public', 'local', 'loopback'][v]; })()),
  #|   adAuctionHeaders: (self.adAuctionHeaders === -1 ? undefined : self.adAuctionHeaders),
  #|   sharedStorageWritable: (self.sharedStorageWritable === -1 ? undefined : self.sharedStorageWritable),
  #|   privateToken: ((() => { const v = self.privateToken; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   method: self.method_,
  #|   headers: ((() => { const v = self.headers; if (v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   body: ((() => { const v = self.body; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0.to_js_value(); })()),
  #|   referrer: self.referrer,
  #|   referrerPolicy: ((() => { const v = self.referrerPolicy; if (v === undefined) return undefined; return ['', 'no-referrer', 'no-referrer-when-downgrade', 'same-origin', 'origin', 'strict-origin', 'origin-when-cross-origin', 'strict-origin-when-cross-origin', 'unsafe-url'][v]; })()),
  #|   mode: ((() => { const v = self.mode; if (v === undefined) return undefined; return ['navigate', 'same-origin', 'no-cors', 'cors'][v]; })()),
  #|   credentials: ((() => { const v = self.credentials; if (v === undefined) return undefined; return ['omit', 'same-origin', 'include'][v]; })()),
  #|   cache: ((() => { const v = self.cache; if (v === undefined) return undefined; return ['default', 'no-store', 'reload', 'no-cache', 'force-cache', 'only-if-cached'][v]; })()),
  #|   redirect: ((() => { const v = self.redirect; if (v === undefined) return undefined; return ['follow', 'error', 'manual'][v]; })()),
  #|   integrity: self.integrity,
  #|   keepalive: (self.keepalive === -1 ? undefined : self.keepalive),
  #|   signal: ((() => { const v = self.signal; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   duplex: ((() => { const v = self.duplex; if (v === undefined) return undefined; return ['half'][v]; })()),
  #|   priority: ((() => { const v = self.priority; if (v === undefined) return undefined; return ['high', 'low', 'auto'][v]; })()),
  #|   window: ((() => { const v = self.window; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn RequestInit::to_js(self : RequestInit) -> JsValue {
  RequestInit::to_js_ffi(self)
}
