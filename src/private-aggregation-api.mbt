// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/private-aggregation-api

///|
/// PAHistogramContribution dictionary
pub struct PAHistogramContribution {
  bucket : JsValue
  value : Int
  filteringId : JsValue?
}

///|
/// Create a new PAHistogramContribution with default values
pub fn PAHistogramContribution::default() -> PAHistogramContribution {
  PAHistogramContribution::{ bucket: panic(), value: 0, filteringId: None }
}

///|
/// Convert to JsValue
pub extern "js" fn PAHistogramContribution::to_js(
  self : PAHistogramContribution,
) -> JsValue =
  #| (self) => ({
  #|   bucket: self.bucket,
  #|   value: self.value,
  #|   filteringId: self.filteringId
  #| })

///|
/// PADebugModeOptions dictionary
pub struct PADebugModeOptions {
  debugKey : JsValue
}

///|
/// Create a new PADebugModeOptions with default values
pub fn PADebugModeOptions::default() -> PADebugModeOptions {
  PADebugModeOptions::{ debugKey: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn PADebugModeOptions::to_js(
  self : PADebugModeOptions,
) -> JsValue =
  #| (self) => ({
  #|   debugKey: self.debugKey
  #| })

///|
/// PrivateAggregation interface
pub type PrivateAggregation

///|
pub extern "js" fn PrivateAggregation::to_js_value(
  self : PrivateAggregation,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PrivateAggregation (unchecked)
pub extern "js" fn PrivateAggregation::from_js_value(
  v : JsValue,
) -> PrivateAggregation =
  #| (v) => v

///|
/// Safely cast JsValue to PrivateAggregation (checked with instanceof)
pub extern "js" fn PrivateAggregation::from_js_value_opt(
  v : JsValue,
) -> PrivateAggregation? =
  #| (v) => (v instanceof PrivateAggregation) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PrivateAggregation (checked with instanceof)
pub extern "js" fn JsValue::as_private_aggregation(
  self : JsValue,
) -> PrivateAggregation? =
  #| (self) => (self instanceof PrivateAggregation) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PrivateAggregation (unchecked)
pub extern "js" fn JsValue::to_private_aggregation(
  self : JsValue,
) -> PrivateAggregation =
  #| (self) => self

///|
pub extern "js" fn PrivateAggregation::contribute_to_histogram(
  self : PrivateAggregation,
  contribution : PAHistogramContribution,
) -> Unit =
  #| (self, contribution) => self.contributeToHistogram(contribution)

///|
pub extern "js" fn PrivateAggregation::contribute_to_histogram_on_event(
  self : PrivateAggregation,
  event : String,
  contribution : JsValue,
) -> Unit =
  #| (self, event, contribution) => self.contributeToHistogramOnEvent(event, contribution)

///|
pub extern "js" fn PrivateAggregation::enable_debug_mode(
  self : PrivateAggregation,
) -> Unit =
  #| (self) => self.enableDebugMode()

///|
pub extern "js" fn PrivateAggregation::enable_debug_mode_with_options(
  self : PrivateAggregation,
  options : PADebugModeOptions,
) -> Unit =
  #| (self, options) => self.enableDebugMode(options)
