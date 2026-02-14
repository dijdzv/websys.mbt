// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/resource-timing

///|
/// RenderBlockingStatusType enum
pub(all) enum RenderBlockingStatusType {
  Blocking
  NonBlocking
} derive(Eq, Show)

///|
/// Convert to string value
pub fn RenderBlockingStatusType::to_string(
  self : RenderBlockingStatusType,
) -> String {
  match self {
    RenderBlockingStatusType::Blocking => "blocking"
    RenderBlockingStatusType::NonBlocking => "non-blocking"
  }
}

///|
/// Parse from string value
pub fn RenderBlockingStatusType::from_string(
  s : String,
) -> RenderBlockingStatusType? {
  match s {
    "blocking" => Some(RenderBlockingStatusType::Blocking)
    "non-blocking" => Some(RenderBlockingStatusType::NonBlocking)
    _ => None
  }
}

///|
/// PerformanceResourceTiming interface
pub type PerformanceResourceTiming

///|
pub extern "js" fn PerformanceResourceTiming::to_js_value(
  self : PerformanceResourceTiming,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PerformanceResourceTiming (unchecked)
pub extern "js" fn PerformanceResourceTiming::from_js_value(
  v : JsValue,
) -> PerformanceResourceTiming =
  #| (v) => v

///|
/// Safely cast JsValue to PerformanceResourceTiming (checked with instanceof)
pub extern "js" fn PerformanceResourceTiming::from_js_value_opt(
  v : JsValue,
) -> PerformanceResourceTiming? =
  #| (v) => (v instanceof PerformanceResourceTiming) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PerformanceResourceTiming (checked with instanceof)
pub extern "js" fn JsValue::as_performance_resource_timing(
  self : JsValue,
) -> PerformanceResourceTiming? =
  #| (self) => (self instanceof PerformanceResourceTiming) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PerformanceResourceTiming (unchecked)
pub extern "js" fn JsValue::to_performance_resource_timing(
  self : JsValue,
) -> PerformanceResourceTiming =
  #| (self) => self

///|
pub extern "js" fn PerformanceResourceTiming::to_performance_entry(
  self : PerformanceResourceTiming,
) -> PerformanceEntry =
  #| (self) => self

///|
pub extern "js" fn PerformanceResourceTiming::as_performance_navigation_timing(
  self : PerformanceResourceTiming,
) -> PerformanceNavigationTiming? =
  #| (self) => (self instanceof PerformanceNavigationTiming) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn PerformanceResourceTiming::get_initiator_type(
  self : PerformanceResourceTiming,
) -> String =
  #| (self) => self.initiatorType

///|
pub extern "js" fn PerformanceResourceTiming::get_delivery_type(
  self : PerformanceResourceTiming,
) -> String =
  #| (self) => self.deliveryType

///|
pub extern "js" fn PerformanceResourceTiming::get_next_hop_protocol(
  self : PerformanceResourceTiming,
) -> String =
  #| (self) => self.nextHopProtocol

///|
pub extern "js" fn PerformanceResourceTiming::get_worker_start(
  self : PerformanceResourceTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.workerStart

///|
pub extern "js" fn PerformanceResourceTiming::get_redirect_start(
  self : PerformanceResourceTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.redirectStart

///|
pub extern "js" fn PerformanceResourceTiming::get_redirect_end(
  self : PerformanceResourceTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.redirectEnd

///|
pub extern "js" fn PerformanceResourceTiming::get_fetch_start(
  self : PerformanceResourceTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.fetchStart

///|
pub extern "js" fn PerformanceResourceTiming::get_domain_lookup_start(
  self : PerformanceResourceTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.domainLookupStart

///|
pub extern "js" fn PerformanceResourceTiming::get_domain_lookup_end(
  self : PerformanceResourceTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.domainLookupEnd

///|
pub extern "js" fn PerformanceResourceTiming::get_connect_start(
  self : PerformanceResourceTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.connectStart

///|
pub extern "js" fn PerformanceResourceTiming::get_connect_end(
  self : PerformanceResourceTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.connectEnd

///|
pub extern "js" fn PerformanceResourceTiming::get_secure_connection_start(
  self : PerformanceResourceTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.secureConnectionStart

///|
pub extern "js" fn PerformanceResourceTiming::get_request_start(
  self : PerformanceResourceTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.requestStart

///|
pub extern "js" fn PerformanceResourceTiming::get_final_response_headers_start(
  self : PerformanceResourceTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.finalResponseHeadersStart

///|
pub extern "js" fn PerformanceResourceTiming::get_first_interim_response_start(
  self : PerformanceResourceTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.firstInterimResponseStart

///|
pub extern "js" fn PerformanceResourceTiming::get_response_start(
  self : PerformanceResourceTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.responseStart

///|
pub extern "js" fn PerformanceResourceTiming::get_response_end(
  self : PerformanceResourceTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.responseEnd

///|
pub extern "js" fn PerformanceResourceTiming::get_worker_router_evaluation_start(
  self : PerformanceResourceTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.workerRouterEvaluationStart

///|
pub extern "js" fn PerformanceResourceTiming::get_worker_cache_lookup_start(
  self : PerformanceResourceTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.workerCacheLookupStart

///|
pub extern "js" fn PerformanceResourceTiming::get_worker_matched_router_source(
  self : PerformanceResourceTiming,
) -> String =
  #| (self) => self.workerMatchedRouterSource

///|
pub extern "js" fn PerformanceResourceTiming::get_worker_final_router_source(
  self : PerformanceResourceTiming,
) -> String =
  #| (self) => self.workerFinalRouterSource

///|
pub extern "js" fn PerformanceResourceTiming::get_transfer_size(
  self : PerformanceResourceTiming,
) -> Int64 =
  #| (self) => (() => { const n = self.transferSize; return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

///|
pub extern "js" fn PerformanceResourceTiming::get_encoded_body_size(
  self : PerformanceResourceTiming,
) -> Int64 =
  #| (self) => (() => { const n = self.encodedBodySize; return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

///|
pub extern "js" fn PerformanceResourceTiming::get_decoded_body_size(
  self : PerformanceResourceTiming,
) -> Int64 =
  #| (self) => (() => { const n = self.decodedBodySize; return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

///|
pub extern "js" fn PerformanceResourceTiming::get_response_status(
  self : PerformanceResourceTiming,
) -> Int =
  #| (self) => self.responseStatus

///|
pub extern "js" fn PerformanceResourceTiming::get_render_blocking_status(
  self : PerformanceResourceTiming,
) -> RenderBlockingStatusType =
  #| (self) => ['blocking', 'non-blocking'].indexOf(self.renderBlockingStatus)

///|
pub extern "js" fn PerformanceResourceTiming::get_content_type(
  self : PerformanceResourceTiming,
) -> String =
  #| (self) => self.contentType

///|
pub extern "js" fn PerformanceResourceTiming::get_content_encoding(
  self : PerformanceResourceTiming,
) -> String =
  #| (self) => self.contentEncoding

///|
pub extern "js" fn PerformanceResourceTiming::to_json(
  self : PerformanceResourceTiming,
) -> JsValue =
  #| (self) => self.toJSON()

///|
pub extern "js" fn PerformanceResourceTiming::get_server_timing(
  self : PerformanceResourceTiming,
) -> Array[PerformanceServerTiming] =
  #| (self) => self.serverTiming
