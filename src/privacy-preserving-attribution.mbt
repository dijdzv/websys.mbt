// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/privacy-preserving-attribution

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
    Dap15Histogram => "dap-15-histogram"
  }
}

///|
/// Parse from string value
pub fn AttributionAggregationProtocol::from_string(
  s : String,
) -> AttributionAggregationProtocol? {
  match s {
    "dap-15-histogram" => Some(Dap15Histogram)
    _ => None
  }
}

///|
/// AttributionAggregationService dictionary
pub struct AttributionAggregationService {
  protocol : AttributionAggregationProtocol
}

///|
/// Create a new AttributionAggregationService with default values
pub fn AttributionAggregationService::default() -> AttributionAggregationService {
  AttributionAggregationService::{ protocol: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn AttributionAggregationService::to_js(
  self : AttributionAggregationService,
) -> JsValue =
  #| (self) => ({
  #|   protocol: ['dap-15-histogram'][self.protocol]
  #| })

///|
/// AttributionImpressionOptions dictionary
pub struct AttributionImpressionOptions {
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
/// Convert to JsValue
pub extern "js" fn AttributionImpressionOptions::to_js(
  self : AttributionImpressionOptions,
) -> JsValue =
  #| (self) => ({
  #|   histogramIndex: self.histogramIndex,
  #|   matchValue: self.matchValue,
  #|   conversionSites: self.conversionSites,
  #|   conversionCallers: self.conversionCallers,
  #|   lifetimeDays: self.lifetimeDays,
  #|   priority: self.priority
  #| })

///|
/// AttributionImpressionResult dictionary
pub struct AttributionImpressionResult {}

///|
/// Create a new AttributionImpressionResult with default values
pub fn AttributionImpressionResult::default() -> AttributionImpressionResult {
  AttributionImpressionResult::{  }
}

///|
/// Convert to JsValue
pub extern "js" fn AttributionImpressionResult::to_js(
  self : AttributionImpressionResult,
) -> JsValue =
  #| (self) => ({
  #| })

///|
/// AttributionConversionOptions dictionary
pub struct AttributionConversionOptions {
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
/// Convert to JsValue
pub extern "js" fn AttributionConversionOptions::to_js(
  self : AttributionConversionOptions,
) -> JsValue =
  #| (self) => ({
  #|   aggregationService: self.aggregationService,
  #|   epsilon: self.epsilon,
  #|   histogramSize: self.histogramSize,
  #|   lookbackDays: self.lookbackDays,
  #|   matchValues: self.matchValues,
  #|   impressionSites: self.impressionSites,
  #|   impressionCallers: self.impressionCallers,
  #|   credit: self.credit,
  #|   value: self.value,
  #|   maxValue: self.maxValue
  #| })

///|
/// AttributionConversionResult dictionary
pub struct AttributionConversionResult {
  report : Uint8Array
}

///|
/// Create a new AttributionConversionResult with default values
pub fn AttributionConversionResult::default() -> AttributionConversionResult {
  AttributionConversionResult::{ report: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn AttributionConversionResult::to_js(
  self : AttributionConversionResult,
) -> JsValue =
  #| (self) => ({
  #|   report: self.report
  #| })

///|
/// AttributionAggregationServices interface
pub type AttributionAggregationServices

///|
pub extern "js" fn AttributionAggregationServices::to_js_value(
  self : AttributionAggregationServices,
) -> JsValue =
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
pub extern "js" fn Attribution::get_aggregation_services(
  self : Attribution,
) -> AttributionAggregationServices =
  #| (self) => self.aggregationServices

///|
pub extern "js" fn Attribution::save_impression(
  self : Attribution,
  options : AttributionImpressionOptions,
) -> Promise[AttributionImpressionResult] =
  #| (self, options) => self.saveImpression(options)

///|
pub extern "js" fn Attribution::measure_conversion(
  self : Attribution,
  options : AttributionConversionOptions,
) -> Promise[AttributionConversionResult] =
  #| (self, options) => self.measureConversion(options)
