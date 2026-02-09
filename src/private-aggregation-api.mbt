// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/private-aggregation-api

///|
/// PAHistogramContribution dictionary
pub(all) struct PAHistogramContribution {
  bucket : JsValue
  value : Int
  filteringId : JsValue?
}

///|
/// Create a new PAHistogramContribution
pub fn PAHistogramContribution::new(
  bucket~ : JsValue,
) -> PAHistogramContribution {
  PAHistogramContribution::{ bucket, value: 0, filteringId: None }
}

///|
extern "js" fn PAHistogramContribution::to_js_ffi(
  self : PAHistogramContribution,
) -> JsValue =
  #| (self) => ({
  #|   bucket: self.bucket,
  #|   value: self.value,
  #|   filteringId: ((() => { const v = self.filteringId; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn PAHistogramContribution::to_js(
  self : PAHistogramContribution,
) -> JsValue {
  PAHistogramContribution::to_js_ffi(self)
}

///|
/// PADebugModeOptions dictionary
pub(all) struct PADebugModeOptions {
  debugKey : JsValue
}

///|
/// Create a new PADebugModeOptions
pub fn PADebugModeOptions::new(debugKey~ : JsValue) -> PADebugModeOptions {
  PADebugModeOptions::{ debugKey, }
}

///|
extern "js" fn PADebugModeOptions::to_js_ffi(
  self : PADebugModeOptions,
) -> JsValue =
  #| (self) => ({
  #|   debugKey: self.debugKey
  #| })

///|
/// Convert to JsValue
pub fn PADebugModeOptions::to_js(self : PADebugModeOptions) -> JsValue {
  PADebugModeOptions::to_js_ffi(self)
}

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
extern "js" fn PrivateAggregation::contribute_to_histogram_ffi(
  self : PrivateAggregation,
  contribution : JsValue,
) -> Unit =
  #| (self, contribution) => self.contributeToHistogram(contribution)

///|
pub fn PrivateAggregation::contribute_to_histogram(
  self : PrivateAggregation,
  contribution : PAHistogramContribution,
) -> Unit {
  PrivateAggregation::contribute_to_histogram_ffi(self, contribution.to_js())
}

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
extern "js" fn PrivateAggregation::enable_debug_mode_with_options_ffi(
  self : PrivateAggregation,
  options : JsValue,
) -> Unit =
  #| (self, options) => self.enableDebugMode(options)

///|
pub fn PrivateAggregation::enable_debug_mode_with_options(
  self : PrivateAggregation,
  options : PADebugModeOptions,
) -> Unit {
  PrivateAggregation::enable_debug_mode_with_options_ffi(self, options.to_js())
}
