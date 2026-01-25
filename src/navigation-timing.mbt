// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/navigation-timing

///|
/// NavigationTimingType enum
pub(all) enum NavigationTimingType {
  Navigate
  Reload
  BackForward
}

///|
/// Convert to string value
pub fn NavigationTimingType::to_string(self : NavigationTimingType) -> String {
  match self {
    NavigationTimingType::Navigate => "navigate"
    NavigationTimingType::Reload => "reload"
    NavigationTimingType::BackForward => "back_forward"
  }
}

///|
/// Parse from string value
pub fn NavigationTimingType::from_string(s : String) -> NavigationTimingType? {
  match s {
    "navigate" => Some(NavigationTimingType::Navigate)
    "reload" => Some(NavigationTimingType::Reload)
    "back_forward" => Some(NavigationTimingType::BackForward)
    _ => None
  }
}

///|
/// PerformanceTimingConfidenceValue enum
pub(all) enum PerformanceTimingConfidenceValue {
  High
  Low
}

///|
/// Convert to string value
pub fn PerformanceTimingConfidenceValue::to_string(
  self : PerformanceTimingConfidenceValue,
) -> String {
  match self {
    PerformanceTimingConfidenceValue::High => "high"
    PerformanceTimingConfidenceValue::Low => "low"
  }
}

///|
/// Parse from string value
pub fn PerformanceTimingConfidenceValue::from_string(
  s : String,
) -> PerformanceTimingConfidenceValue? {
  match s {
    "high" => Some(PerformanceTimingConfidenceValue::High)
    "low" => Some(PerformanceTimingConfidenceValue::Low)
    _ => None
  }
}

///|
/// PerformanceNavigationTiming interface
pub type PerformanceNavigationTiming

///|
pub extern "js" fn PerformanceNavigationTiming::to_js_value(
  self : PerformanceNavigationTiming,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PerformanceNavigationTiming (unchecked)
pub extern "js" fn PerformanceNavigationTiming::from_js_value(
  v : JsValue,
) -> PerformanceNavigationTiming =
  #| (v) => v

///|
/// Safely cast JsValue to PerformanceNavigationTiming (checked with instanceof)
pub extern "js" fn PerformanceNavigationTiming::from_js_value_opt(
  v : JsValue,
) -> PerformanceNavigationTiming? =
  #| (v) => (v instanceof PerformanceNavigationTiming) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PerformanceNavigationTiming (checked with instanceof)
pub extern "js" fn JsValue::as_performance_navigation_timing(
  self : JsValue,
) -> PerformanceNavigationTiming? =
  #| (self) => (self instanceof PerformanceNavigationTiming) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PerformanceNavigationTiming (unchecked)
pub extern "js" fn JsValue::to_performance_navigation_timing(
  self : JsValue,
) -> PerformanceNavigationTiming =
  #| (self) => self

///|
pub extern "js" fn PerformanceNavigationTiming::to_performance_resource_timing(
  self : PerformanceNavigationTiming,
) -> PerformanceResourceTiming =
  #| (self) => self

///|
pub extern "js" fn PerformanceNavigationTiming::to_performance_entry(
  self : PerformanceNavigationTiming,
) -> PerformanceEntry =
  #| (self) => self

///|
pub extern "js" fn PerformanceNavigationTiming::get_unload_event_start(
  self : PerformanceNavigationTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.unloadEventStart

///|
pub extern "js" fn PerformanceNavigationTiming::get_unload_event_end(
  self : PerformanceNavigationTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.unloadEventEnd

///|
pub extern "js" fn PerformanceNavigationTiming::get_dom_interactive(
  self : PerformanceNavigationTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.domInteractive

///|
pub extern "js" fn PerformanceNavigationTiming::get_dom_content_loaded_event_start(
  self : PerformanceNavigationTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.domContentLoadedEventStart

///|
pub extern "js" fn PerformanceNavigationTiming::get_dom_content_loaded_event_end(
  self : PerformanceNavigationTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.domContentLoadedEventEnd

///|
pub extern "js" fn PerformanceNavigationTiming::get_dom_complete(
  self : PerformanceNavigationTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.domComplete

///|
pub extern "js" fn PerformanceNavigationTiming::get_load_event_start(
  self : PerformanceNavigationTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.loadEventStart

///|
pub extern "js" fn PerformanceNavigationTiming::get_load_event_end(
  self : PerformanceNavigationTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.loadEventEnd

///|
pub extern "js" fn PerformanceNavigationTiming::get_type(
  self : PerformanceNavigationTiming,
) -> NavigationTimingType =
  #| (self) => self.type

///|
pub extern "js" fn PerformanceNavigationTiming::get_redirect_count(
  self : PerformanceNavigationTiming,
) -> Int =
  #| (self) => self.redirectCount

///|
pub extern "js" fn PerformanceNavigationTiming::get_critical_ch_restart(
  self : PerformanceNavigationTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.criticalCHRestart

///|
pub extern "js" fn PerformanceNavigationTiming::get_not_restored_reasons(
  self : PerformanceNavigationTiming,
) -> NotRestoredReasons? =
  #| (self) => { const v = self.notRestoredReasons; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn PerformanceNavigationTiming::get_confidence(
  self : PerformanceNavigationTiming,
) -> PerformanceTimingConfidence =
  #| (self) => self.confidence

///|
pub extern "js" fn PerformanceNavigationTiming::to_json(
  self : PerformanceNavigationTiming,
) -> JsValue =
  #| (self) => self.toJSON()

///|
pub extern "js" fn PerformanceNavigationTiming::get_activation_start(
  self : PerformanceNavigationTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.activationStart

///|
/// PerformanceTimingConfidence interface
pub type PerformanceTimingConfidence

///|
pub extern "js" fn PerformanceTimingConfidence::to_js_value(
  self : PerformanceTimingConfidence,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PerformanceTimingConfidence (unchecked)
pub extern "js" fn PerformanceTimingConfidence::from_js_value(
  v : JsValue,
) -> PerformanceTimingConfidence =
  #| (v) => v

///|
/// Safely cast JsValue to PerformanceTimingConfidence (checked with instanceof)
pub extern "js" fn PerformanceTimingConfidence::from_js_value_opt(
  v : JsValue,
) -> PerformanceTimingConfidence? =
  #| (v) => (v instanceof PerformanceTimingConfidence) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PerformanceTimingConfidence (checked with instanceof)
pub extern "js" fn JsValue::as_performance_timing_confidence(
  self : JsValue,
) -> PerformanceTimingConfidence? =
  #| (self) => (self instanceof PerformanceTimingConfidence) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PerformanceTimingConfidence (unchecked)
pub extern "js" fn JsValue::to_performance_timing_confidence(
  self : JsValue,
) -> PerformanceTimingConfidence =
  #| (self) => self

///|
pub extern "js" fn PerformanceTimingConfidence::get_randomized_trigger_rate(
  self : PerformanceTimingConfidence,
) -> Double =
  #| (self) => self.randomizedTriggerRate

///|
pub extern "js" fn PerformanceTimingConfidence::get_value(
  self : PerformanceTimingConfidence,
) -> PerformanceTimingConfidenceValue =
  #| (self) => self.value

///|
pub extern "js" fn PerformanceTimingConfidence::to_json(
  self : PerformanceTimingConfidence,
) -> JsValue =
  #| (self) => self.toJSON()

///|
/// PerformanceTiming interface
pub type PerformanceTiming

///|
pub extern "js" fn PerformanceTiming::to_js_value(
  self : PerformanceTiming,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PerformanceTiming (unchecked)
pub extern "js" fn PerformanceTiming::from_js_value(
  v : JsValue,
) -> PerformanceTiming =
  #| (v) => v

///|
/// Safely cast JsValue to PerformanceTiming (checked with instanceof)
pub extern "js" fn PerformanceTiming::from_js_value_opt(
  v : JsValue,
) -> PerformanceTiming? =
  #| (v) => (v instanceof PerformanceTiming) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PerformanceTiming (checked with instanceof)
pub extern "js" fn JsValue::as_performance_timing(
  self : JsValue,
) -> PerformanceTiming? =
  #| (self) => (self instanceof PerformanceTiming) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PerformanceTiming (unchecked)
pub extern "js" fn JsValue::to_performance_timing(
  self : JsValue,
) -> PerformanceTiming =
  #| (self) => self

///|
pub extern "js" fn PerformanceTiming::get_navigation_start(
  self : PerformanceTiming,
) -> Int64 =
  #| (self) => self.navigationStart

///|
pub extern "js" fn PerformanceTiming::get_unload_event_start(
  self : PerformanceTiming,
) -> Int64 =
  #| (self) => self.unloadEventStart

///|
pub extern "js" fn PerformanceTiming::get_unload_event_end(
  self : PerformanceTiming,
) -> Int64 =
  #| (self) => self.unloadEventEnd

///|
pub extern "js" fn PerformanceTiming::get_redirect_start(
  self : PerformanceTiming,
) -> Int64 =
  #| (self) => self.redirectStart

///|
pub extern "js" fn PerformanceTiming::get_redirect_end(
  self : PerformanceTiming,
) -> Int64 =
  #| (self) => self.redirectEnd

///|
pub extern "js" fn PerformanceTiming::get_fetch_start(
  self : PerformanceTiming,
) -> Int64 =
  #| (self) => self.fetchStart

///|
pub extern "js" fn PerformanceTiming::get_domain_lookup_start(
  self : PerformanceTiming,
) -> Int64 =
  #| (self) => self.domainLookupStart

///|
pub extern "js" fn PerformanceTiming::get_domain_lookup_end(
  self : PerformanceTiming,
) -> Int64 =
  #| (self) => self.domainLookupEnd

///|
pub extern "js" fn PerformanceTiming::get_connect_start(
  self : PerformanceTiming,
) -> Int64 =
  #| (self) => self.connectStart

///|
pub extern "js" fn PerformanceTiming::get_connect_end(
  self : PerformanceTiming,
) -> Int64 =
  #| (self) => self.connectEnd

///|
pub extern "js" fn PerformanceTiming::get_secure_connection_start(
  self : PerformanceTiming,
) -> Int64 =
  #| (self) => self.secureConnectionStart

///|
pub extern "js" fn PerformanceTiming::get_request_start(
  self : PerformanceTiming,
) -> Int64 =
  #| (self) => self.requestStart

///|
pub extern "js" fn PerformanceTiming::get_response_start(
  self : PerformanceTiming,
) -> Int64 =
  #| (self) => self.responseStart

///|
pub extern "js" fn PerformanceTiming::get_response_end(
  self : PerformanceTiming,
) -> Int64 =
  #| (self) => self.responseEnd

///|
pub extern "js" fn PerformanceTiming::get_dom_loading(
  self : PerformanceTiming,
) -> Int64 =
  #| (self) => self.domLoading

///|
pub extern "js" fn PerformanceTiming::get_dom_interactive(
  self : PerformanceTiming,
) -> Int64 =
  #| (self) => self.domInteractive

///|
pub extern "js" fn PerformanceTiming::get_dom_content_loaded_event_start(
  self : PerformanceTiming,
) -> Int64 =
  #| (self) => self.domContentLoadedEventStart

///|
pub extern "js" fn PerformanceTiming::get_dom_content_loaded_event_end(
  self : PerformanceTiming,
) -> Int64 =
  #| (self) => self.domContentLoadedEventEnd

///|
pub extern "js" fn PerformanceTiming::get_dom_complete(
  self : PerformanceTiming,
) -> Int64 =
  #| (self) => self.domComplete

///|
pub extern "js" fn PerformanceTiming::get_load_event_start(
  self : PerformanceTiming,
) -> Int64 =
  #| (self) => self.loadEventStart

///|
pub extern "js" fn PerformanceTiming::get_load_event_end(
  self : PerformanceTiming,
) -> Int64 =
  #| (self) => self.loadEventEnd

///|
pub extern "js" fn PerformanceTiming::to_json(
  self : PerformanceTiming,
) -> JsValue =
  #| (self) => self.toJSON()

///|
/// PerformanceNavigation interface
pub type PerformanceNavigation

///|
pub extern "js" fn PerformanceNavigation::to_js_value(
  self : PerformanceNavigation,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PerformanceNavigation (unchecked)
pub extern "js" fn PerformanceNavigation::from_js_value(
  v : JsValue,
) -> PerformanceNavigation =
  #| (v) => v

///|
/// Safely cast JsValue to PerformanceNavigation (checked with instanceof)
pub extern "js" fn PerformanceNavigation::from_js_value_opt(
  v : JsValue,
) -> PerformanceNavigation? =
  #| (v) => (v instanceof PerformanceNavigation) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PerformanceNavigation (checked with instanceof)
pub extern "js" fn JsValue::as_performance_navigation(
  self : JsValue,
) -> PerformanceNavigation? =
  #| (self) => (self instanceof PerformanceNavigation) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PerformanceNavigation (unchecked)
pub extern "js" fn JsValue::to_performance_navigation(
  self : JsValue,
) -> PerformanceNavigation =
  #| (self) => self

// PerformanceNavigation.TYPE_NAVIGATE

///|
pub let performance_navigation_type_navigate : Int = 0

// PerformanceNavigation.TYPE_RELOAD

///|
pub let performance_navigation_type_reload : Int = 1

// PerformanceNavigation.TYPE_BACK_FORWARD

///|
pub let performance_navigation_type_back_forward : Int = 2

// PerformanceNavigation.TYPE_RESERVED

///|
pub let performance_navigation_type_reserved : Int = 255

///|
pub extern "js" fn PerformanceNavigation::get_type(
  self : PerformanceNavigation,
) -> Int =
  #| (self) => self.type

///|
pub extern "js" fn PerformanceNavigation::get_redirect_count(
  self : PerformanceNavigation,
) -> Int =
  #| (self) => self.redirectCount

///|
pub extern "js" fn PerformanceNavigation::to_json(
  self : PerformanceNavigation,
) -> JsValue =
  #| (self) => self.toJSON()
