// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/navigation-timing

///|
/// NavigationTimingType enum
pub(all) enum NavigationTimingType {
  Navigate
  Reload
  BackForward
}

/// Convert to string value
pub fn NavigationTimingType::to_string(self : NavigationTimingType) -> String {
  match self {
    Navigate => "navigate"
    Reload => "reload"
    BackForward => "back_forward"
  }
}

/// Parse from string value
pub fn NavigationTimingType::from_string(s : String) -> NavigationTimingType? {
  match s {
    "navigate" => Some(Navigate)
    "reload" => Some(Reload)
    "back_forward" => Some(BackForward)
    _ => None
  }
}

///|
/// PerformanceTimingConfidenceValue enum
pub(all) enum PerformanceTimingConfidenceValue {
  High
  Low
}

/// Convert to string value
pub fn PerformanceTimingConfidenceValue::to_string(self : PerformanceTimingConfidenceValue) -> String {
  match self {
    High => "high"
    Low => "low"
  }
}

/// Parse from string value
pub fn PerformanceTimingConfidenceValue::from_string(s : String) -> PerformanceTimingConfidenceValue? {
  match s {
    "high" => Some(High)
    "low" => Some(Low)
    _ => None
  }
}

///|
/// PerformanceNavigationTiming interface
pub type PerformanceNavigationTiming

pub extern "js" fn PerformanceNavigationTiming::to_js_value(self : PerformanceNavigationTiming) -> JsValue =
  #| (self) => self

pub extern "js" fn PerformanceNavigationTiming::get_unload_event_start(self : PerformanceNavigationTiming) -> DOMHighResTimeStamp =
  #| (self) => self.unloadEventStart

pub extern "js" fn PerformanceNavigationTiming::get_unload_event_end(self : PerformanceNavigationTiming) -> DOMHighResTimeStamp =
  #| (self) => self.unloadEventEnd

pub extern "js" fn PerformanceNavigationTiming::get_dom_interactive(self : PerformanceNavigationTiming) -> DOMHighResTimeStamp =
  #| (self) => self.domInteractive

pub extern "js" fn PerformanceNavigationTiming::get_dom_content_loaded_event_start(self : PerformanceNavigationTiming) -> DOMHighResTimeStamp =
  #| (self) => self.domContentLoadedEventStart

pub extern "js" fn PerformanceNavigationTiming::get_dom_content_loaded_event_end(self : PerformanceNavigationTiming) -> DOMHighResTimeStamp =
  #| (self) => self.domContentLoadedEventEnd

pub extern "js" fn PerformanceNavigationTiming::get_dom_complete(self : PerformanceNavigationTiming) -> DOMHighResTimeStamp =
  #| (self) => self.domComplete

pub extern "js" fn PerformanceNavigationTiming::get_load_event_start(self : PerformanceNavigationTiming) -> DOMHighResTimeStamp =
  #| (self) => self.loadEventStart

pub extern "js" fn PerformanceNavigationTiming::get_load_event_end(self : PerformanceNavigationTiming) -> DOMHighResTimeStamp =
  #| (self) => self.loadEventEnd

pub extern "js" fn PerformanceNavigationTiming::get_type(self : PerformanceNavigationTiming) -> NavigationTimingType =
  #| (self) => self.type

pub extern "js" fn PerformanceNavigationTiming::get_redirect_count(self : PerformanceNavigationTiming) -> Int =
  #| (self) => self.redirectCount

pub extern "js" fn PerformanceNavigationTiming::get_critical_c_h_restart(self : PerformanceNavigationTiming) -> DOMHighResTimeStamp =
  #| (self) => self.criticalCHRestart

pub extern "js" fn PerformanceNavigationTiming::get_not_restored_reasons(self : PerformanceNavigationTiming) -> NotRestoredReasons? =
  #| (self) => self.notRestoredReasons

pub extern "js" fn PerformanceNavigationTiming::get_confidence(self : PerformanceNavigationTiming) -> PerformanceTimingConfidence =
  #| (self) => self.confidence

pub extern "js" fn PerformanceNavigationTiming::to_j_s_o_n(self : PerformanceNavigationTiming) -> JsValue =
  #| (self) => self.toJSON()

pub extern "js" fn PerformanceNavigationTiming::get_activation_start(self : PerformanceNavigationTiming) -> DOMHighResTimeStamp =
  #| (self) => self.activationStart

///|
/// PerformanceTimingConfidence interface
pub type PerformanceTimingConfidence

pub extern "js" fn PerformanceTimingConfidence::to_js_value(self : PerformanceTimingConfidence) -> JsValue =
  #| (self) => self

pub extern "js" fn PerformanceTimingConfidence::get_randomized_trigger_rate(self : PerformanceTimingConfidence) -> Double =
  #| (self) => self.randomizedTriggerRate

pub extern "js" fn PerformanceTimingConfidence::get_value(self : PerformanceTimingConfidence) -> PerformanceTimingConfidenceValue =
  #| (self) => self.value

pub extern "js" fn PerformanceTimingConfidence::to_j_s_o_n(self : PerformanceTimingConfidence) -> JsValue =
  #| (self) => self.toJSON()

///|
/// PerformanceTiming interface
pub type PerformanceTiming

pub extern "js" fn PerformanceTiming::to_js_value(self : PerformanceTiming) -> JsValue =
  #| (self) => self

pub extern "js" fn PerformanceTiming::get_navigation_start(self : PerformanceTiming) -> Int64 =
  #| (self) => self.navigationStart

pub extern "js" fn PerformanceTiming::get_unload_event_start(self : PerformanceTiming) -> Int64 =
  #| (self) => self.unloadEventStart

pub extern "js" fn PerformanceTiming::get_unload_event_end(self : PerformanceTiming) -> Int64 =
  #| (self) => self.unloadEventEnd

pub extern "js" fn PerformanceTiming::get_redirect_start(self : PerformanceTiming) -> Int64 =
  #| (self) => self.redirectStart

pub extern "js" fn PerformanceTiming::get_redirect_end(self : PerformanceTiming) -> Int64 =
  #| (self) => self.redirectEnd

pub extern "js" fn PerformanceTiming::get_fetch_start(self : PerformanceTiming) -> Int64 =
  #| (self) => self.fetchStart

pub extern "js" fn PerformanceTiming::get_domain_lookup_start(self : PerformanceTiming) -> Int64 =
  #| (self) => self.domainLookupStart

pub extern "js" fn PerformanceTiming::get_domain_lookup_end(self : PerformanceTiming) -> Int64 =
  #| (self) => self.domainLookupEnd

pub extern "js" fn PerformanceTiming::get_connect_start(self : PerformanceTiming) -> Int64 =
  #| (self) => self.connectStart

pub extern "js" fn PerformanceTiming::get_connect_end(self : PerformanceTiming) -> Int64 =
  #| (self) => self.connectEnd

pub extern "js" fn PerformanceTiming::get_secure_connection_start(self : PerformanceTiming) -> Int64 =
  #| (self) => self.secureConnectionStart

pub extern "js" fn PerformanceTiming::get_request_start(self : PerformanceTiming) -> Int64 =
  #| (self) => self.requestStart

pub extern "js" fn PerformanceTiming::get_response_start(self : PerformanceTiming) -> Int64 =
  #| (self) => self.responseStart

pub extern "js" fn PerformanceTiming::get_response_end(self : PerformanceTiming) -> Int64 =
  #| (self) => self.responseEnd

pub extern "js" fn PerformanceTiming::get_dom_loading(self : PerformanceTiming) -> Int64 =
  #| (self) => self.domLoading

pub extern "js" fn PerformanceTiming::get_dom_interactive(self : PerformanceTiming) -> Int64 =
  #| (self) => self.domInteractive

pub extern "js" fn PerformanceTiming::get_dom_content_loaded_event_start(self : PerformanceTiming) -> Int64 =
  #| (self) => self.domContentLoadedEventStart

pub extern "js" fn PerformanceTiming::get_dom_content_loaded_event_end(self : PerformanceTiming) -> Int64 =
  #| (self) => self.domContentLoadedEventEnd

pub extern "js" fn PerformanceTiming::get_dom_complete(self : PerformanceTiming) -> Int64 =
  #| (self) => self.domComplete

pub extern "js" fn PerformanceTiming::get_load_event_start(self : PerformanceTiming) -> Int64 =
  #| (self) => self.loadEventStart

pub extern "js" fn PerformanceTiming::get_load_event_end(self : PerformanceTiming) -> Int64 =
  #| (self) => self.loadEventEnd

pub extern "js" fn PerformanceTiming::to_j_s_o_n(self : PerformanceTiming) -> JsValue =
  #| (self) => self.toJSON()

///|
/// PerformanceNavigation interface
pub type PerformanceNavigation

pub extern "js" fn PerformanceNavigation::to_js_value(self : PerformanceNavigation) -> JsValue =
  #| (self) => self

pub extern "js" fn PerformanceNavigation::get_type(self : PerformanceNavigation) -> Int =
  #| (self) => self.type

pub extern "js" fn PerformanceNavigation::get_redirect_count(self : PerformanceNavigation) -> Int =
  #| (self) => self.redirectCount

pub extern "js" fn PerformanceNavigation::to_j_s_o_n(self : PerformanceNavigation) -> JsValue =
  #| (self) => self.toJSON()

