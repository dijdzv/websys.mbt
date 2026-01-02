// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/attribution-reporting-api

///|
/// AttributionReportingRequestOptions dictionary
pub struct AttributionReportingRequestOptions {
  eventSourceEligible : Bool
  triggerEligible : Bool
}

/// Create a new AttributionReportingRequestOptions with default values
pub fn AttributionReportingRequestOptions::default() -> AttributionReportingRequestOptions {
  AttributionReportingRequestOptions::{
    eventSourceEligible: false,
    triggerEligible: false,
  }
}

/// Convert to JsValue
pub extern "js" fn AttributionReportingRequestOptions::to_js(self : AttributionReportingRequestOptions) -> JsValue =
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
  body : BodyInit??
  referrer : String?
  referrerPolicy : ReferrerPolicy?
  mode : RequestMode?
  credentials : RequestCredentials?
  cache : RequestCache?
  redirect : RequestRedirect?
  integrity : String?
  keepalive : Bool?
  signal : AbortSignal??
  duplex : RequestDuplex?
  priority : RequestPriority?
  window : JsValue?
  targetAddressSpace : IPAddressSpace?
  sharedStorageWritable : Bool?
  privateToken : PrivateToken?
  adAuctionHeaders : Bool?
}

/// Create a new RequestInit with default values
pub fn RequestInit::default() -> RequestInit {
  RequestInit::{
    attributionReporting: None,
    method_: None,
    headers: None,
    body: None,
    referrer: None,
    referrerPolicy: None,
    mode: None,
    credentials: None,
    cache: None,
    redirect: None,
    integrity: None,
    keepalive: None,
    signal: None,
    duplex: None,
    priority: None,
    window: None,
    targetAddressSpace: None,
    sharedStorageWritable: None,
    privateToken: None,
    adAuctionHeaders: None,
  }
}

/// Convert to JsValue
pub extern "js" fn RequestInit::to_js(self : RequestInit) -> JsValue =
  #| (self) => ({
  #|   attributionReporting: self.attributionReporting,
  #|   method: self.method_,
  #|   headers: self.headers,
  #|   body: self.body,
  #|   referrer: self.referrer,
  #|   referrerPolicy: self.referrerPolicy,
  #|   mode: self.mode,
  #|   credentials: self.credentials,
  #|   cache: self.cache,
  #|   redirect: self.redirect,
  #|   integrity: self.integrity,
  #|   keepalive: self.keepalive,
  #|   signal: self.signal,
  #|   duplex: self.duplex,
  #|   priority: self.priority,
  #|   window: self.window,
  #|   targetAddressSpace: self.targetAddressSpace,
  #|   sharedStorageWritable: self.sharedStorageWritable,
  #|   privateToken: self.privateToken,
  #|   adAuctionHeaders: self.adAuctionHeaders
  #| })

