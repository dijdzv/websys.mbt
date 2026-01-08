// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/attribution-reporting-api

///|
/// AttributionReportingRequestOptions dictionary
pub struct AttributionReportingRequestOptions {
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
/// Convert to JsValue
pub extern "js" fn AttributionReportingRequestOptions::to_js(
  self : AttributionReportingRequestOptions,
) -> JsValue =
  #| (self) => ({
  #|   eventSourceEligible: self.eventSourceEligible,
  #|   triggerEligible: self.triggerEligible
  #| })

///|
/// RequestInit dictionary
pub struct RequestInit {
  attributionReporting : AttributionReportingRequestOptions?
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
  targetAddressSpace : IPAddressSpace?
  sharedStorageWritable : Bool?
  privateToken : PrivateToken?
  adAuctionHeaders : Bool?
}

///|
/// Create a new RequestInit with default values
pub fn RequestInit::default() -> RequestInit {
  RequestInit::{
    attributionReporting: None,
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
    targetAddressSpace: None,
    sharedStorageWritable: None,
    privateToken: None,
    adAuctionHeaders: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn RequestInit::to_js(self : RequestInit) -> JsValue =
  #| (self) => ({
  #|   attributionReporting: self.attributionReporting,
  #|   method: self.method_,
  #|   headers: self.headers.to_js_value(),
  #|   body: ((() => { const v = self.body; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0.to_js_value(); })()),
  #|   referrer: self.referrer,
  #|   referrerPolicy: ['', 'no-referrer', 'no-referrer-when-downgrade', 'same-origin', 'origin', 'strict-origin', 'origin-when-cross-origin', 'strict-origin-when-cross-origin', 'unsafe-url'][self.referrerPolicy],
  #|   mode: ['navigate', 'same-origin', 'no-cors', 'cors'][self.mode],
  #|   credentials: ['omit', 'same-origin', 'include'][self.credentials],
  #|   cache: ['default', 'no-store', 'reload', 'no-cache', 'force-cache', 'only-if-cached'][self.cache],
  #|   redirect: ['follow', 'error', 'manual'][self.redirect],
  #|   integrity: self.integrity,
  #|   keepalive: self.keepalive,
  #|   signal: ((() => { const v = self.signal; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   duplex: ['half'][self.duplex],
  #|   priority: ['high', 'low', 'auto'][self.priority],
  #|   window: self.window,
  #|   targetAddressSpace: ['public', 'local', 'loopback'][self.targetAddressSpace],
  #|   sharedStorageWritable: self.sharedStorageWritable,
  #|   privateToken: self.privateToken,
  #|   adAuctionHeaders: self.adAuctionHeaders
  #| })
