// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/attribution

///|
/// AttributionAggregationProtocol enum
pub(all) enum AttributionAggregationProtocol {
  Dap15Histogram
}

///|
/// Convert to string value
pub fn AttributionAggregationProtocol::to_string(
  self : AttributionAggregationProtocol,
) -> String {
  match self {
    AttributionAggregationProtocol::Dap15Histogram => "dap-15-histogram"
  }
}

///|
/// Parse from string value
pub fn AttributionAggregationProtocol::from_string(
  s : String,
) -> AttributionAggregationProtocol? {
  match s {
    "dap-15-histogram" => Some(AttributionAggregationProtocol::Dap15Histogram)
    _ => None
  }
}

///|
/// AttributionAggregationService dictionary
pub(all) struct AttributionAggregationService {
  protocol : AttributionAggregationProtocol
}

///|
/// Create a new AttributionAggregationService
pub fn AttributionAggregationService::new(
  protocol~ : AttributionAggregationProtocol,
) -> AttributionAggregationService {
  AttributionAggregationService::{ protocol, }
}

///|
extern "js" fn AttributionAggregationService::to_js_ffi(
  self : AttributionAggregationService,
) -> JsValue =
  #| (self) => ({
  #|   protocol: ['dap-15-histogram'][self.protocol]
  #| })

///|
/// Convert to JsValue
pub fn AttributionAggregationService::to_js(
  self : AttributionAggregationService,
) -> JsValue {
  AttributionAggregationService::to_js_ffi(self)
}

///|
/// AttributionImpressionOptions dictionary
pub(all) struct AttributionImpressionOptions {
  histogramIndex : Int
  matchValue : Int?
  conversionSites : Array[String]?
  conversionCallers : Array[String]?
  lifetimeDays : Int?
  priority : Int?
}

///|
/// Create a new AttributionImpressionOptions with default values
pub fn AttributionImpressionOptions::default() -> AttributionImpressionOptions {
  AttributionImpressionOptions::{
    histogramIndex: 0,
    matchValue: None,
    conversionSites: None,
    conversionCallers: None,
    lifetimeDays: None,
    priority: None,
  }
}

///|
extern "js" fn AttributionImpressionOptions::to_js_ffi(
  self : AttributionImpressionOptions,
) -> JsValue =
  #| (self) => ({
  #|   histogramIndex: self.histogramIndex,
  #|   matchValue: self.matchValue,
  #|   conversionSites: ((() => { const v = self.conversionSites; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   conversionCallers: ((() => { const v = self.conversionCallers; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   lifetimeDays: self.lifetimeDays,
  #|   priority: self.priority
  #| })

///|
/// Convert to JsValue
pub fn AttributionImpressionOptions::to_js(
  self : AttributionImpressionOptions,
) -> JsValue {
  AttributionImpressionOptions::to_js_ffi(self)
}

///|
/// AttributionImpressionResult dictionary
pub(all) struct AttributionImpressionResult {}

///|
/// Create a new AttributionImpressionResult with default values
pub fn AttributionImpressionResult::default() -> AttributionImpressionResult {
  AttributionImpressionResult::{  }
}

///|
extern "js" fn AttributionImpressionResult::to_js_ffi(
  self : AttributionImpressionResult,
) -> JsValue =
  #| (self) => ({
  #| })

///|
/// Convert to JsValue
pub fn AttributionImpressionResult::to_js(
  self : AttributionImpressionResult,
) -> JsValue {
  AttributionImpressionResult::to_js_ffi(self)
}

///|
/// AttributionConversionOptions dictionary
pub(all) struct AttributionConversionOptions {
  aggregationService : String
  epsilon : Double?
  histogramSize : Int
  lookbackDays : Int?
  matchValues : Array[Int]?
  impressionSites : Array[String]?
  impressionCallers : Array[String]?
  credit : Array[Double]?
  value : Int?
  maxValue : Int?
}

///|
/// Create a new AttributionConversionOptions with default values
pub fn AttributionConversionOptions::default() -> AttributionConversionOptions {
  AttributionConversionOptions::{
    aggregationService: "",
    epsilon: None,
    histogramSize: 0,
    lookbackDays: None,
    matchValues: None,
    impressionSites: None,
    impressionCallers: None,
    credit: None,
    value: None,
    maxValue: None,
  }
}

///|
extern "js" fn AttributionConversionOptions::to_js_ffi(
  self : AttributionConversionOptions,
) -> JsValue =
  #| (self) => ({
  #|   aggregationService: self.aggregationService,
  #|   epsilon: self.epsilon,
  #|   histogramSize: self.histogramSize,
  #|   lookbackDays: self.lookbackDays,
  #|   matchValues: ((() => { const v = self.matchValues; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   impressionSites: ((() => { const v = self.impressionSites; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   impressionCallers: ((() => { const v = self.impressionCallers; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   credit: ((() => { const v = self.credit; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   value: self.value,
  #|   maxValue: self.maxValue
  #| })

///|
/// Convert to JsValue
pub fn AttributionConversionOptions::to_js(
  self : AttributionConversionOptions,
) -> JsValue {
  AttributionConversionOptions::to_js_ffi(self)
}

///|
/// AttributionConversionResult dictionary
pub(all) struct AttributionConversionResult {
  report : Uint8Array
}

///|
/// Create a new AttributionConversionResult
pub fn AttributionConversionResult::new(
  report~ : Uint8Array,
) -> AttributionConversionResult {
  AttributionConversionResult::{ report, }
}

///|
extern "js" fn AttributionConversionResult::to_js_ffi(
  self : AttributionConversionResult,
) -> JsValue =
  #| (self) => ({
  #|   report: self.report
  #| })

///|
/// Convert to JsValue
pub fn AttributionConversionResult::to_js(
  self : AttributionConversionResult,
) -> JsValue {
  AttributionConversionResult::to_js_ffi(self)
}

///|
/// AttributionAggregationServices interface
pub type AttributionAggregationServices

///|
pub extern "js" fn AttributionAggregationServices::to_js_value(
  self : AttributionAggregationServices,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AttributionAggregationServices (unchecked)
pub extern "js" fn AttributionAggregationServices::from_js_value(
  v : JsValue,
) -> AttributionAggregationServices =
  #| (v) => v

///|
/// Safely cast JsValue to AttributionAggregationServices (checked with instanceof)
pub extern "js" fn AttributionAggregationServices::from_js_value_opt(
  v : JsValue,
) -> AttributionAggregationServices? =
  #| (v) => (v instanceof AttributionAggregationServices) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AttributionAggregationServices (checked with instanceof)
pub extern "js" fn JsValue::as_attribution_aggregation_services(
  self : JsValue,
) -> AttributionAggregationServices? =
  #| (self) => (self instanceof AttributionAggregationServices) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AttributionAggregationServices (unchecked)
pub extern "js" fn JsValue::to_attribution_aggregation_services(
  self : JsValue,
) -> AttributionAggregationServices =
  #| (self) => self

///|
pub extern "js" fn AttributionAggregationServices::get(
  self : AttributionAggregationServices,
  key : String,
) -> AttributionAggregationService? =
  #| (self, key) => self.get(key)

///|
pub extern "js" fn AttributionAggregationServices::has(
  self : AttributionAggregationServices,
  key : String,
) -> Bool =
  #| (self, key) => self.has(key)

///|
/// Attribution interface
pub type Attribution

///|
pub extern "js" fn Attribution::to_js_value(self : Attribution) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Attribution (unchecked)
pub extern "js" fn Attribution::from_js_value(v : JsValue) -> Attribution =
  #| (v) => v

///|
/// Safely cast JsValue to Attribution (checked with instanceof)
pub extern "js" fn Attribution::from_js_value_opt(v : JsValue) -> Attribution? =
  #| (v) => (v instanceof Attribution) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Attribution (checked with instanceof)
pub extern "js" fn JsValue::as_attribution(self : JsValue) -> Attribution? =
  #| (self) => (self instanceof Attribution) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Attribution (unchecked)
pub extern "js" fn JsValue::to_attribution(self : JsValue) -> Attribution =
  #| (self) => self

///|
pub extern "js" fn Attribution::get_aggregation_services(
  self : Attribution,
) -> AttributionAggregationServices =
  #| (self) => self.aggregationServices

///|
extern "js" fn Attribution::save_impression_ffi(
  self : Attribution,
  options : JsValue,
) -> Promise[AttributionImpressionResult] =
  #| (self, options) => self.saveImpression(options)

///|
pub fn Attribution::save_impression(
  self : Attribution,
  options : AttributionImpressionOptions,
) -> Promise[AttributionImpressionResult] {
  Attribution::save_impression_ffi(self, options.to_js())
}

///|
extern "js" fn Attribution::measure_conversion_ffi(
  self : Attribution,
  options : JsValue,
) -> Promise[AttributionConversionResult] =
  #| (self, options) => self.measureConversion(options)

///|
pub fn Attribution::measure_conversion(
  self : Attribution,
  options : AttributionConversionOptions,
) -> Promise[AttributionConversionResult] {
  Attribution::measure_conversion_ffi(self, options.to_js())
}
