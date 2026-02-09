// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/shared-storage

///|
/// SharedStorageResponse typedef
pub type SharedStorageResponse

///|
pub extern "js" fn SharedStorageResponse::to_js_value(
  self : SharedStorageResponse,
) -> JsValue =
  #| (self) => self

///|
/// Create SharedStorageResponse from String
pub extern "js" fn SharedStorageResponse::from_string(
  v : String,
) -> SharedStorageResponse =
  #| (v) => v

///|
/// Create SharedStorageResponse from FencedFrameConfig
pub extern "js" fn SharedStorageResponse::from_fenced_frame_config(
  v : FencedFrameConfig,
) -> SharedStorageResponse =
  #| (v) => v

///|
/// Check if this SharedStorageResponse is String
pub extern "js" fn SharedStorageResponse::is_string(
  self : SharedStorageResponse,
) -> Bool =
  #| (self) => typeof self === 'string'

///|
/// Check if this SharedStorageResponse is FencedFrameConfig
pub extern "js" fn SharedStorageResponse::is_fenced_frame_config(
  self : SharedStorageResponse,
) -> Bool =
  #| (self) => self instanceof FencedFrameConfig

///|
/// Try to get SharedStorageResponse as String
pub extern "js" fn SharedStorageResponse::as_string(
  self : SharedStorageResponse,
) -> String? =
  #| (self) => (typeof self === 'string') ? self : undefined

///|
/// Try to get SharedStorageResponse as FencedFrameConfig
pub extern "js" fn SharedStorageResponse::as_fenced_frame_config(
  self : SharedStorageResponse,
) -> FencedFrameConfig? =
  #| (self) => (self instanceof FencedFrameConfig) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// RunFunctionForSharedStorageSelectURLOperation callback interface
pub type RunFunctionForSharedStorageSelectURLOperation

///|
/// Create RunFunctionForSharedStorageSelectURLOperation from a MoonBit function
pub extern "js" fn RunFunctionForSharedStorageSelectURLOperation::from_fn(
  handler : (Array[String], JsValue) -> Promise[Int],
) -> RunFunctionForSharedStorageSelectURLOperation =
  #| (handler) => (a0, a1) => handler(a0, a1)

///|
/// SharedStorageUrlWithMetadata dictionary
pub(all) struct SharedStorageUrlWithMetadata {
  url : String
  reportingMetadata : JsValue?
}

///|
/// Create a new SharedStorageUrlWithMetadata with default values
pub fn SharedStorageUrlWithMetadata::default() -> SharedStorageUrlWithMetadata {
  SharedStorageUrlWithMetadata::{ url: "", reportingMetadata: None }
}

///|
extern "js" fn SharedStorageUrlWithMetadata::to_js_ffi(
  self : SharedStorageUrlWithMetadata,
) -> JsValue =
  #| (self) => ({
  #|   url: self.url,
  #|   reportingMetadata: ((() => { const v = self.reportingMetadata; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn SharedStorageUrlWithMetadata::to_js(
  self : SharedStorageUrlWithMetadata,
) -> JsValue {
  SharedStorageUrlWithMetadata::to_js_ffi(self)
}

///|
/// SharedStorageModifierMethodOptions dictionary
pub(all) struct SharedStorageModifierMethodOptions {
  withLock : String?
}

///|
/// Create a new SharedStorageModifierMethodOptions with default values
pub fn SharedStorageModifierMethodOptions::default() -> SharedStorageModifierMethodOptions {
  SharedStorageModifierMethodOptions::{ withLock: None }
}

///|
extern "js" fn SharedStorageModifierMethodOptions::to_js_ffi(
  self : SharedStorageModifierMethodOptions,
) -> JsValue =
  #| (self) => ({
  #|   withLock: self.withLock
  #| })

///|
/// Convert to JsValue
pub fn SharedStorageModifierMethodOptions::to_js(
  self : SharedStorageModifierMethodOptions,
) -> JsValue {
  SharedStorageModifierMethodOptions::to_js_ffi(self)
}

///|
/// SharedStorageSetMethodOptions dictionary
pub(all) struct SharedStorageSetMethodOptions {
  withLock : String?
  ignoreIfPresent : Bool?
}

///|
/// Create a new SharedStorageSetMethodOptions with default values
pub fn SharedStorageSetMethodOptions::default() -> SharedStorageSetMethodOptions {
  SharedStorageSetMethodOptions::{ withLock: None, ignoreIfPresent: None }
}

///|
extern "js" fn SharedStorageSetMethodOptions::to_js_ffi(
  self : SharedStorageSetMethodOptions,
) -> JsValue =
  #| (self) => ({
  #|   withLock: self.withLock,
  #|   ignoreIfPresent: (self.ignoreIfPresent === -1 ? undefined : self.ignoreIfPresent)
  #| })

///|
/// Convert to JsValue
pub fn SharedStorageSetMethodOptions::to_js(
  self : SharedStorageSetMethodOptions,
) -> JsValue {
  SharedStorageSetMethodOptions::to_js_ffi(self)
}

///|
/// SharedStoragePrivateAggregationConfig dictionary
pub(all) struct SharedStoragePrivateAggregationConfig {
  aggregationCoordinatorOrigin : String?
  contextId : String?
  filteringIdMaxBytes : Int64?
  maxContributions : Int64?
}

///|
/// Create a new SharedStoragePrivateAggregationConfig with default values
pub fn SharedStoragePrivateAggregationConfig::default() -> SharedStoragePrivateAggregationConfig {
  SharedStoragePrivateAggregationConfig::{
    aggregationCoordinatorOrigin: None,
    contextId: None,
    filteringIdMaxBytes: None,
    maxContributions: None,
  }
}

///|
extern "js" fn SharedStoragePrivateAggregationConfig::to_js_ffi(
  self : SharedStoragePrivateAggregationConfig,
) -> JsValue =
  #| (self) => ({
  #|   aggregationCoordinatorOrigin: self.aggregationCoordinatorOrigin,
  #|   contextId: self.contextId,
  #|   filteringIdMaxBytes: self.filteringIdMaxBytes,
  #|   maxContributions: self.maxContributions
  #| })

///|
/// Convert to JsValue
pub fn SharedStoragePrivateAggregationConfig::to_js(
  self : SharedStoragePrivateAggregationConfig,
) -> JsValue {
  SharedStoragePrivateAggregationConfig::to_js_ffi(self)
}

///|
/// SharedStorageRunOperationMethodOptions dictionary
pub(all) struct SharedStorageRunOperationMethodOptions {
  data : JsValue?
  resolveToConfig : Bool?
  keepAlive : Bool?
  privateAggregationConfig : SharedStoragePrivateAggregationConfig?
  savedQuery : String?
}

///|
/// Create a new SharedStorageRunOperationMethodOptions with default values
pub fn SharedStorageRunOperationMethodOptions::default() -> SharedStorageRunOperationMethodOptions {
  SharedStorageRunOperationMethodOptions::{
    data: None,
    resolveToConfig: None,
    keepAlive: None,
    privateAggregationConfig: None,
    savedQuery: None,
  }
}

///|
extern "js" fn SharedStorageRunOperationMethodOptions::to_js_ffi(
  self : SharedStorageRunOperationMethodOptions,
) -> JsValue =
  #| (self) => ({
  #|   data: ((() => { const v = self.data; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   resolveToConfig: (self.resolveToConfig === -1 ? undefined : self.resolveToConfig),
  #|   keepAlive: (self.keepAlive === -1 ? undefined : self.keepAlive),
  #|   privateAggregationConfig: ((() => { const v = self.privateAggregationConfig; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   savedQuery: self.savedQuery
  #| })

///|
/// Convert to JsValue
pub fn SharedStorageRunOperationMethodOptions::to_js(
  self : SharedStorageRunOperationMethodOptions,
) -> JsValue {
  SharedStorageRunOperationMethodOptions::to_js_ffi(self)
}

///|
/// SharedStorageWorkletOptions dictionary
pub(all) struct SharedStorageWorkletOptions {
  dataOrigin : String?
}

///|
/// Create a new SharedStorageWorkletOptions with default values
pub fn SharedStorageWorkletOptions::default() -> SharedStorageWorkletOptions {
  SharedStorageWorkletOptions::{ dataOrigin: None }
}

///|
extern "js" fn SharedStorageWorkletOptions::to_js_ffi(
  self : SharedStorageWorkletOptions,
) -> JsValue =
  #| (self) => ({
  #|   dataOrigin: self.dataOrigin
  #| })

///|
/// Convert to JsValue
pub fn SharedStorageWorkletOptions::to_js(
  self : SharedStorageWorkletOptions,
) -> JsValue {
  SharedStorageWorkletOptions::to_js_ffi(self)
}

///|
/// SharedStorageWorklet interface
pub type SharedStorageWorklet

///|
pub extern "js" fn SharedStorageWorklet::to_js_value(
  self : SharedStorageWorklet,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SharedStorageWorklet (unchecked)
pub extern "js" fn SharedStorageWorklet::from_js_value(
  v : JsValue,
) -> SharedStorageWorklet =
  #| (v) => v

///|
/// Safely cast JsValue to SharedStorageWorklet (checked with instanceof)
pub extern "js" fn SharedStorageWorklet::from_js_value_opt(
  v : JsValue,
) -> SharedStorageWorklet? =
  #| (v) => (v instanceof SharedStorageWorklet) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SharedStorageWorklet (checked with instanceof)
pub extern "js" fn JsValue::as_shared_storage_worklet(
  self : JsValue,
) -> SharedStorageWorklet? =
  #| (self) => (self instanceof SharedStorageWorklet) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SharedStorageWorklet (unchecked)
pub extern "js" fn JsValue::to_shared_storage_worklet(
  self : JsValue,
) -> SharedStorageWorklet =
  #| (self) => self

///|
pub extern "js" fn SharedStorageWorklet::to_worklet(
  self : SharedStorageWorklet,
) -> Worklet =
  #| (self) => self

///|
pub extern "js" fn SharedStorageWorklet::select_url(
  self : SharedStorageWorklet,
  name : String,
  urls : Array[SharedStorageUrlWithMetadata],
) -> Promise[SharedStorageResponse] =
  #| (self, name, urls) => self.selectURL(name, urls)

///|
extern "js" fn SharedStorageWorklet::select_url_with_options_ffi(
  self : SharedStorageWorklet,
  name : String,
  urls : Array[SharedStorageUrlWithMetadata],
  options : JsValue,
) -> Promise[SharedStorageResponse] =
  #| (self, name, urls, options) => self.selectURL(name, urls, options)

///|
pub fn SharedStorageWorklet::select_url_with_options(
  self : SharedStorageWorklet,
  name : String,
  urls : Array[SharedStorageUrlWithMetadata],
  options : SharedStorageRunOperationMethodOptions,
) -> Promise[SharedStorageResponse] {
  SharedStorageWorklet::select_url_with_options_ffi(
    self,
    name,
    urls,
    options.to_js(),
  )
}

///|
pub extern "js" fn SharedStorageWorklet::run(
  self : SharedStorageWorklet,
  name : String,
) -> Promise[JsValue] =
  #| (self, name) => self.run(name)

///|
extern "js" fn SharedStorageWorklet::run_with_options_ffi(
  self : SharedStorageWorklet,
  name : String,
  options : JsValue,
) -> Promise[JsValue] =
  #| (self, name, options) => self.run(name, options)

///|
pub fn SharedStorageWorklet::run_with_options(
  self : SharedStorageWorklet,
  name : String,
  options : SharedStorageRunOperationMethodOptions,
) -> Promise[JsValue] {
  SharedStorageWorklet::run_with_options_ffi(self, name, options.to_js())
}

///|
/// SharedStorageWorkletGlobalScope interface
pub type SharedStorageWorkletGlobalScope

///|
pub extern "js" fn SharedStorageWorkletGlobalScope::to_js_value(
  self : SharedStorageWorkletGlobalScope,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SharedStorageWorkletGlobalScope (unchecked)
pub extern "js" fn SharedStorageWorkletGlobalScope::from_js_value(
  v : JsValue,
) -> SharedStorageWorkletGlobalScope =
  #| (v) => v

///|
/// Safely cast JsValue to SharedStorageWorkletGlobalScope (checked with instanceof)
pub extern "js" fn SharedStorageWorkletGlobalScope::from_js_value_opt(
  v : JsValue,
) -> SharedStorageWorkletGlobalScope? =
  #| (v) => (v instanceof SharedStorageWorkletGlobalScope) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SharedStorageWorkletGlobalScope (checked with instanceof)
pub extern "js" fn JsValue::as_shared_storage_worklet_global_scope(
  self : JsValue,
) -> SharedStorageWorkletGlobalScope? =
  #| (self) => (self instanceof SharedStorageWorkletGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SharedStorageWorkletGlobalScope (unchecked)
pub extern "js" fn JsValue::to_shared_storage_worklet_global_scope(
  self : JsValue,
) -> SharedStorageWorkletGlobalScope =
  #| (self) => self

///|
pub extern "js" fn SharedStorageWorkletGlobalScope::to_worklet_global_scope(
  self : SharedStorageWorkletGlobalScope,
) -> WorkletGlobalScope =
  #| (self) => self

///|
pub extern "js" fn SharedStorageWorkletGlobalScope::register(
  self : SharedStorageWorkletGlobalScope,
  name : String,
  operation_ctor : Function,
) -> Unit =
  #| (self, name, operation_ctor) => self.register(name, operation_ctor)

///|
pub extern "js" fn SharedStorageWorkletGlobalScope::get_shared_storage(
  self : SharedStorageWorkletGlobalScope,
) -> SharedStorage =
  #| (self) => self.sharedStorage

///|
pub extern "js" fn SharedStorageWorkletGlobalScope::get_private_aggregation(
  self : SharedStorageWorkletGlobalScope,
) -> PrivateAggregation =
  #| (self) => self.privateAggregation

///|
pub extern "js" fn SharedStorageWorkletGlobalScope::interest_groups(
  self : SharedStorageWorkletGlobalScope,
) -> Promise[Array[StorageInterestGroup]] =
  #| (self) => self.interestGroups()

///|
pub extern "js" fn SharedStorageWorkletGlobalScope::get_navigator(
  self : SharedStorageWorkletGlobalScope,
) -> SharedStorageWorkletNavigator =
  #| (self) => self.navigator

///|
/// SharedStorageModifierMethod interface
pub type SharedStorageModifierMethod

///|
pub extern "js" fn SharedStorageModifierMethod::to_js_value(
  self : SharedStorageModifierMethod,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SharedStorageModifierMethod (unchecked)
pub extern "js" fn SharedStorageModifierMethod::from_js_value(
  v : JsValue,
) -> SharedStorageModifierMethod =
  #| (v) => v

///|
/// Safely cast JsValue to SharedStorageModifierMethod (checked with instanceof)
pub extern "js" fn SharedStorageModifierMethod::from_js_value_opt(
  v : JsValue,
) -> SharedStorageModifierMethod? =
  #| (v) => (v instanceof SharedStorageModifierMethod) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SharedStorageModifierMethod (checked with instanceof)
pub extern "js" fn JsValue::as_shared_storage_modifier_method(
  self : JsValue,
) -> SharedStorageModifierMethod? =
  #| (self) => (self instanceof SharedStorageModifierMethod) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SharedStorageModifierMethod (unchecked)
pub extern "js" fn JsValue::to_shared_storage_modifier_method(
  self : JsValue,
) -> SharedStorageModifierMethod =
  #| (self) => self

///|
pub extern "js" fn SharedStorageModifierMethod::as_shared_storage_set_method(
  self : SharedStorageModifierMethod,
) -> SharedStorageSetMethod? =
  #| (self) => (self instanceof SharedStorageSetMethod) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SharedStorageModifierMethod::as_shared_storage_append_method(
  self : SharedStorageModifierMethod,
) -> SharedStorageAppendMethod? =
  #| (self) => (self instanceof SharedStorageAppendMethod) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SharedStorageModifierMethod::as_shared_storage_delete_method(
  self : SharedStorageModifierMethod,
) -> SharedStorageDeleteMethod? =
  #| (self) => (self instanceof SharedStorageDeleteMethod) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SharedStorageModifierMethod::as_shared_storage_clear_method(
  self : SharedStorageModifierMethod,
) -> SharedStorageClearMethod? =
  #| (self) => (self instanceof SharedStorageClearMethod) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// SharedStorageSetMethod interface
pub type SharedStorageSetMethod

///|
pub extern "js" fn SharedStorageSetMethod::to_js_value(
  self : SharedStorageSetMethod,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SharedStorageSetMethod (unchecked)
pub extern "js" fn SharedStorageSetMethod::from_js_value(
  v : JsValue,
) -> SharedStorageSetMethod =
  #| (v) => v

///|
/// Safely cast JsValue to SharedStorageSetMethod (checked with instanceof)
pub extern "js" fn SharedStorageSetMethod::from_js_value_opt(
  v : JsValue,
) -> SharedStorageSetMethod? =
  #| (v) => (v instanceof SharedStorageSetMethod) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SharedStorageSetMethod (checked with instanceof)
pub extern "js" fn JsValue::as_shared_storage_set_method(
  self : JsValue,
) -> SharedStorageSetMethod? =
  #| (self) => (self instanceof SharedStorageSetMethod) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SharedStorageSetMethod (unchecked)
pub extern "js" fn JsValue::to_shared_storage_set_method(
  self : JsValue,
) -> SharedStorageSetMethod =
  #| (self) => self

///|
pub extern "js" fn SharedStorageSetMethod::to_shared_storage_modifier_method(
  self : SharedStorageSetMethod,
) -> SharedStorageModifierMethod =
  #| (self) => self

///|
pub extern "js" fn SharedStorageSetMethod::new(
  key : String,
  value : String,
) -> SharedStorageSetMethod =
  #| (key, value) => new SharedStorageSetMethod(key, value)

///|
extern "js" fn SharedStorageSetMethod::new_with_options_ffi(
  key : String,
  value : String,
  options : JsValue,
) -> SharedStorageSetMethod =
  #| (key, value, options) => new SharedStorageSetMethod(key, value, options)

///|
pub fn SharedStorageSetMethod::new_with_options(
  key : String,
  value : String,
  options : SharedStorageSetMethodOptions,
) -> SharedStorageSetMethod {
  SharedStorageSetMethod::new_with_options_ffi(key, value, options.to_js())
}

///|
/// SharedStorageAppendMethod interface
pub type SharedStorageAppendMethod

///|
pub extern "js" fn SharedStorageAppendMethod::to_js_value(
  self : SharedStorageAppendMethod,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SharedStorageAppendMethod (unchecked)
pub extern "js" fn SharedStorageAppendMethod::from_js_value(
  v : JsValue,
) -> SharedStorageAppendMethod =
  #| (v) => v

///|
/// Safely cast JsValue to SharedStorageAppendMethod (checked with instanceof)
pub extern "js" fn SharedStorageAppendMethod::from_js_value_opt(
  v : JsValue,
) -> SharedStorageAppendMethod? =
  #| (v) => (v instanceof SharedStorageAppendMethod) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SharedStorageAppendMethod (checked with instanceof)
pub extern "js" fn JsValue::as_shared_storage_append_method(
  self : JsValue,
) -> SharedStorageAppendMethod? =
  #| (self) => (self instanceof SharedStorageAppendMethod) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SharedStorageAppendMethod (unchecked)
pub extern "js" fn JsValue::to_shared_storage_append_method(
  self : JsValue,
) -> SharedStorageAppendMethod =
  #| (self) => self

///|
pub extern "js" fn SharedStorageAppendMethod::to_shared_storage_modifier_method(
  self : SharedStorageAppendMethod,
) -> SharedStorageModifierMethod =
  #| (self) => self

///|
pub extern "js" fn SharedStorageAppendMethod::new(
  key : String,
  value : String,
) -> SharedStorageAppendMethod =
  #| (key, value) => new SharedStorageAppendMethod(key, value)

///|
extern "js" fn SharedStorageAppendMethod::new_with_options_ffi(
  key : String,
  value : String,
  options : JsValue,
) -> SharedStorageAppendMethod =
  #| (key, value, options) => new SharedStorageAppendMethod(key, value, options)

///|
pub fn SharedStorageAppendMethod::new_with_options(
  key : String,
  value : String,
  options : SharedStorageModifierMethodOptions,
) -> SharedStorageAppendMethod {
  SharedStorageAppendMethod::new_with_options_ffi(key, value, options.to_js())
}

///|
/// SharedStorageDeleteMethod interface
pub type SharedStorageDeleteMethod

///|
pub extern "js" fn SharedStorageDeleteMethod::to_js_value(
  self : SharedStorageDeleteMethod,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SharedStorageDeleteMethod (unchecked)
pub extern "js" fn SharedStorageDeleteMethod::from_js_value(
  v : JsValue,
) -> SharedStorageDeleteMethod =
  #| (v) => v

///|
/// Safely cast JsValue to SharedStorageDeleteMethod (checked with instanceof)
pub extern "js" fn SharedStorageDeleteMethod::from_js_value_opt(
  v : JsValue,
) -> SharedStorageDeleteMethod? =
  #| (v) => (v instanceof SharedStorageDeleteMethod) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SharedStorageDeleteMethod (checked with instanceof)
pub extern "js" fn JsValue::as_shared_storage_delete_method(
  self : JsValue,
) -> SharedStorageDeleteMethod? =
  #| (self) => (self instanceof SharedStorageDeleteMethod) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SharedStorageDeleteMethod (unchecked)
pub extern "js" fn JsValue::to_shared_storage_delete_method(
  self : JsValue,
) -> SharedStorageDeleteMethod =
  #| (self) => self

///|
pub extern "js" fn SharedStorageDeleteMethod::to_shared_storage_modifier_method(
  self : SharedStorageDeleteMethod,
) -> SharedStorageModifierMethod =
  #| (self) => self

///|
pub extern "js" fn SharedStorageDeleteMethod::new(
  key : String,
) -> SharedStorageDeleteMethod =
  #| (key) => new SharedStorageDeleteMethod(key)

///|
extern "js" fn SharedStorageDeleteMethod::new_with_options_ffi(
  key : String,
  options : JsValue,
) -> SharedStorageDeleteMethod =
  #| (key, options) => new SharedStorageDeleteMethod(key, options)

///|
pub fn SharedStorageDeleteMethod::new_with_options(
  key : String,
  options : SharedStorageModifierMethodOptions,
) -> SharedStorageDeleteMethod {
  SharedStorageDeleteMethod::new_with_options_ffi(key, options.to_js())
}

///|
/// SharedStorageClearMethod interface
pub type SharedStorageClearMethod

///|
pub extern "js" fn SharedStorageClearMethod::to_js_value(
  self : SharedStorageClearMethod,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SharedStorageClearMethod (unchecked)
pub extern "js" fn SharedStorageClearMethod::from_js_value(
  v : JsValue,
) -> SharedStorageClearMethod =
  #| (v) => v

///|
/// Safely cast JsValue to SharedStorageClearMethod (checked with instanceof)
pub extern "js" fn SharedStorageClearMethod::from_js_value_opt(
  v : JsValue,
) -> SharedStorageClearMethod? =
  #| (v) => (v instanceof SharedStorageClearMethod) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SharedStorageClearMethod (checked with instanceof)
pub extern "js" fn JsValue::as_shared_storage_clear_method(
  self : JsValue,
) -> SharedStorageClearMethod? =
  #| (self) => (self instanceof SharedStorageClearMethod) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SharedStorageClearMethod (unchecked)
pub extern "js" fn JsValue::to_shared_storage_clear_method(
  self : JsValue,
) -> SharedStorageClearMethod =
  #| (self) => self

///|
pub extern "js" fn SharedStorageClearMethod::to_shared_storage_modifier_method(
  self : SharedStorageClearMethod,
) -> SharedStorageModifierMethod =
  #| (self) => self

///|
pub extern "js" fn SharedStorageClearMethod::new() -> SharedStorageClearMethod =
  #| () => new SharedStorageClearMethod()

///|
extern "js" fn SharedStorageClearMethod::new_with_options_ffi(
  options : JsValue,
) -> SharedStorageClearMethod =
  #| (options) => new SharedStorageClearMethod(options)

///|
pub fn SharedStorageClearMethod::new_with_options(
  options : SharedStorageModifierMethodOptions,
) -> SharedStorageClearMethod {
  SharedStorageClearMethod::new_with_options_ffi(options.to_js())
}

///|
/// SharedStorage interface
pub type SharedStorage

///|
pub extern "js" fn SharedStorage::to_js_value(self : SharedStorage) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SharedStorage (unchecked)
pub extern "js" fn SharedStorage::from_js_value(v : JsValue) -> SharedStorage =
  #| (v) => v

///|
/// Safely cast JsValue to SharedStorage (checked with instanceof)
pub extern "js" fn SharedStorage::from_js_value_opt(
  v : JsValue,
) -> SharedStorage? =
  #| (v) => (v instanceof SharedStorage) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SharedStorage (checked with instanceof)
pub extern "js" fn JsValue::as_shared_storage(self : JsValue) -> SharedStorage? =
  #| (self) => (self instanceof SharedStorage) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SharedStorage (unchecked)
pub extern "js" fn JsValue::to_shared_storage(self : JsValue) -> SharedStorage =
  #| (self) => self

///|
pub extern "js" fn SharedStorage::get(
  self : SharedStorage,
  key : String,
) -> Promise[String] =
  #| (self, key) => self.get(key)

///|
pub extern "js" fn SharedStorage::set(
  self : SharedStorage,
  key : String,
  value : String,
) -> Promise[JsValue] =
  #| (self, key, value) => self.set(key, value)

///|
extern "js" fn SharedStorage::set_with_options_ffi(
  self : SharedStorage,
  key : String,
  value : String,
  options : JsValue,
) -> Promise[JsValue] =
  #| (self, key, value, options) => self.set(key, value, options)

///|
pub fn SharedStorage::set_with_options(
  self : SharedStorage,
  key : String,
  value : String,
  options : SharedStorageSetMethodOptions,
) -> Promise[JsValue] {
  SharedStorage::set_with_options_ffi(self, key, value, options.to_js())
}

///|
pub extern "js" fn SharedStorage::append(
  self : SharedStorage,
  key : String,
  value : String,
) -> Promise[JsValue] =
  #| (self, key, value) => self.append(key, value)

///|
extern "js" fn SharedStorage::append_with_options_ffi(
  self : SharedStorage,
  key : String,
  value : String,
  options : JsValue,
) -> Promise[JsValue] =
  #| (self, key, value, options) => self.append(key, value, options)

///|
pub fn SharedStorage::append_with_options(
  self : SharedStorage,
  key : String,
  value : String,
  options : SharedStorageModifierMethodOptions,
) -> Promise[JsValue] {
  SharedStorage::append_with_options_ffi(self, key, value, options.to_js())
}

///|
pub extern "js" fn SharedStorage::delete(
  self : SharedStorage,
  key : String,
) -> Promise[JsValue] =
  #| (self, key) => self.delete(key)

///|
extern "js" fn SharedStorage::delete_with_options_ffi(
  self : SharedStorage,
  key : String,
  options : JsValue,
) -> Promise[JsValue] =
  #| (self, key, options) => self.delete(key, options)

///|
pub fn SharedStorage::delete_with_options(
  self : SharedStorage,
  key : String,
  options : SharedStorageModifierMethodOptions,
) -> Promise[JsValue] {
  SharedStorage::delete_with_options_ffi(self, key, options.to_js())
}

///|
pub extern "js" fn SharedStorage::clear(
  self : SharedStorage,
) -> Promise[JsValue] =
  #| (self) => self.clear()

///|
extern "js" fn SharedStorage::clear_with_options_ffi(
  self : SharedStorage,
  options : JsValue,
) -> Promise[JsValue] =
  #| (self, options) => self.clear(options)

///|
pub fn SharedStorage::clear_with_options(
  self : SharedStorage,
  options : SharedStorageModifierMethodOptions,
) -> Promise[JsValue] {
  SharedStorage::clear_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn SharedStorage::batch_update(
  self : SharedStorage,
  methods : Array[SharedStorageModifierMethod],
) -> Promise[JsValue] =
  #| (self, methods) => self.batchUpdate(methods)

///|
extern "js" fn SharedStorage::batch_update_with_options_ffi(
  self : SharedStorage,
  methods : Array[SharedStorageModifierMethod],
  options : JsValue,
) -> Promise[JsValue] =
  #| (self, methods, options) => self.batchUpdate(methods, options)

///|
pub fn SharedStorage::batch_update_with_options(
  self : SharedStorage,
  methods : Array[SharedStorageModifierMethod],
  options : SharedStorageModifierMethodOptions,
) -> Promise[JsValue] {
  SharedStorage::batch_update_with_options_ffi(self, methods, options.to_js())
}

///|
pub extern "js" fn SharedStorage::select_url(
  self : SharedStorage,
  name : String,
  urls : Array[SharedStorageUrlWithMetadata],
) -> Promise[SharedStorageResponse] =
  #| (self, name, urls) => self.selectURL(name, urls)

///|
extern "js" fn SharedStorage::select_url_with_options_ffi(
  self : SharedStorage,
  name : String,
  urls : Array[SharedStorageUrlWithMetadata],
  options : JsValue,
) -> Promise[SharedStorageResponse] =
  #| (self, name, urls, options) => self.selectURL(name, urls, options)

///|
pub fn SharedStorage::select_url_with_options(
  self : SharedStorage,
  name : String,
  urls : Array[SharedStorageUrlWithMetadata],
  options : SharedStorageRunOperationMethodOptions,
) -> Promise[SharedStorageResponse] {
  SharedStorage::select_url_with_options_ffi(self, name, urls, options.to_js())
}

///|
pub extern "js" fn SharedStorage::run(
  self : SharedStorage,
  name : String,
) -> Promise[JsValue] =
  #| (self, name) => self.run(name)

///|
extern "js" fn SharedStorage::run_with_options_ffi(
  self : SharedStorage,
  name : String,
  options : JsValue,
) -> Promise[JsValue] =
  #| (self, name, options) => self.run(name, options)

///|
pub fn SharedStorage::run_with_options(
  self : SharedStorage,
  name : String,
  options : SharedStorageRunOperationMethodOptions,
) -> Promise[JsValue] {
  SharedStorage::run_with_options_ffi(self, name, options.to_js())
}

///|
pub extern "js" fn SharedStorage::create_worklet(
  self : SharedStorage,
  module_url : String,
) -> Promise[SharedStorageWorklet] =
  #| (self, module_url) => self.createWorklet(module_url)

///|
extern "js" fn SharedStorage::create_worklet_with_options_ffi(
  self : SharedStorage,
  module_url : String,
  options : JsValue,
) -> Promise[SharedStorageWorklet] =
  #| (self, module_url, options) => self.createWorklet(module_url, options)

///|
pub fn SharedStorage::create_worklet_with_options(
  self : SharedStorage,
  module_url : String,
  options : SharedStorageWorkletOptions,
) -> Promise[SharedStorageWorklet] {
  SharedStorage::create_worklet_with_options_ffi(
    self,
    module_url,
    options.to_js(),
  )
}

///|
pub extern "js" fn SharedStorage::get_worklet(
  self : SharedStorage,
) -> SharedStorageWorklet =
  #| (self) => self.worklet

///|
pub extern "js" fn SharedStorage::length(self : SharedStorage) -> Promise[Int] =
  #| (self) => self.length()

///|
pub extern "js" fn SharedStorage::remaining_budget(
  self : SharedStorage,
) -> Promise[Double] =
  #| (self) => self.remainingBudget()

///|
pub extern "js" fn SharedStorage::keys(self : SharedStorage) -> JsValue =
  #| (self) => self.keys()

///|
pub extern "js" fn SharedStorage::values(self : SharedStorage) -> JsValue =
  #| (self) => self.values()

///|
pub extern "js" fn SharedStorage::entries(self : SharedStorage) -> JsValue =
  #| (self) => self.entries()

///|
/// SharedStorageWorkletNavigator interface
pub type SharedStorageWorkletNavigator

///|
pub extern "js" fn SharedStorageWorkletNavigator::to_js_value(
  self : SharedStorageWorkletNavigator,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SharedStorageWorkletNavigator (unchecked)
pub extern "js" fn SharedStorageWorkletNavigator::from_js_value(
  v : JsValue,
) -> SharedStorageWorkletNavigator =
  #| (v) => v

///|
/// Safely cast JsValue to SharedStorageWorkletNavigator (checked with instanceof)
pub extern "js" fn SharedStorageWorkletNavigator::from_js_value_opt(
  v : JsValue,
) -> SharedStorageWorkletNavigator? =
  #| (v) => (v instanceof SharedStorageWorkletNavigator) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SharedStorageWorkletNavigator (checked with instanceof)
pub extern "js" fn JsValue::as_shared_storage_worklet_navigator(
  self : JsValue,
) -> SharedStorageWorkletNavigator? =
  #| (self) => (self instanceof SharedStorageWorkletNavigator) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SharedStorageWorkletNavigator (unchecked)
pub extern "js" fn JsValue::to_shared_storage_worklet_navigator(
  self : JsValue,
) -> SharedStorageWorkletNavigator =
  #| (self) => self

///|
pub extern "js" fn SharedStorageWorkletNavigator::get_locks(
  self : SharedStorageWorkletNavigator,
) -> LockManager =
  #| (self) => self.locks
