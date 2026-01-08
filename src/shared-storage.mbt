// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/shared-storage

///|
/// SharedStorageResponse typedef
pub type SharedStorageResponse = JsValue

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
/// RunFunctionForSharedStorageSelectURLOperation callback interface
pub type RunFunctionForSharedStorageSelectURLOperation

///|
/// Create RunFunctionForSharedStorageSelectURLOperation from a MoonBit function
pub extern "js" fn RunFunctionForSharedStorageSelectURLOperation::from_fn(
  handler : (Array[String], JsValue) -> Promise[Int],
) -> RunFunctionForSharedStorageSelectURLOperation =
  #| (handler) => handler

///|
/// SharedStorageUrlWithMetadata dictionary
pub struct SharedStorageUrlWithMetadata {
  url : String
  reportingMetadata : JsValue?
}

///|
/// Create a new SharedStorageUrlWithMetadata with default values
pub fn SharedStorageUrlWithMetadata::default() -> SharedStorageUrlWithMetadata {
  SharedStorageUrlWithMetadata::{ url: "", reportingMetadata: None }
}

///|
/// Convert to JsValue
pub extern "js" fn SharedStorageUrlWithMetadata::to_js(
  self : SharedStorageUrlWithMetadata,
) -> JsValue =
  #| (self) => ({
  #|   url: self.url,
  #|   reportingMetadata: self.reportingMetadata
  #| })

///|
/// SharedStorageModifierMethodOptions dictionary
pub struct SharedStorageModifierMethodOptions {
  withLock : String?
}

///|
/// Create a new SharedStorageModifierMethodOptions with default values
pub fn SharedStorageModifierMethodOptions::default() -> SharedStorageModifierMethodOptions {
  SharedStorageModifierMethodOptions::{ withLock: None }
}

///|
/// Convert to JsValue
pub extern "js" fn SharedStorageModifierMethodOptions::to_js(
  self : SharedStorageModifierMethodOptions,
) -> JsValue =
  #| (self) => ({
  #|   withLock: self.withLock
  #| })

///|
/// SharedStorageSetMethodOptions dictionary
pub struct SharedStorageSetMethodOptions {
  withLock : String?
  ignoreIfPresent : Bool?
}

///|
/// Create a new SharedStorageSetMethodOptions with default values
pub fn SharedStorageSetMethodOptions::default() -> SharedStorageSetMethodOptions {
  SharedStorageSetMethodOptions::{ withLock: None, ignoreIfPresent: None }
}

///|
/// Convert to JsValue
pub extern "js" fn SharedStorageSetMethodOptions::to_js(
  self : SharedStorageSetMethodOptions,
) -> JsValue =
  #| (self) => ({
  #|   withLock: self.withLock,
  #|   ignoreIfPresent: self.ignoreIfPresent
  #| })

///|
/// SharedStoragePrivateAggregationConfig dictionary
pub struct SharedStoragePrivateAggregationConfig {
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
/// Convert to JsValue
pub extern "js" fn SharedStoragePrivateAggregationConfig::to_js(
  self : SharedStoragePrivateAggregationConfig,
) -> JsValue =
  #| (self) => ({
  #|   aggregationCoordinatorOrigin: self.aggregationCoordinatorOrigin,
  #|   contextId: self.contextId,
  #|   filteringIdMaxBytes: self.filteringIdMaxBytes,
  #|   maxContributions: self.maxContributions
  #| })

///|
/// SharedStorageRunOperationMethodOptions dictionary
pub struct SharedStorageRunOperationMethodOptions {
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
/// Convert to JsValue
pub extern "js" fn SharedStorageRunOperationMethodOptions::to_js(
  self : SharedStorageRunOperationMethodOptions,
) -> JsValue =
  #| (self) => ({
  #|   data: self.data,
  #|   resolveToConfig: self.resolveToConfig,
  #|   keepAlive: self.keepAlive,
  #|   privateAggregationConfig: self.privateAggregationConfig,
  #|   savedQuery: self.savedQuery
  #| })

///|
/// SharedStorageWorkletOptions dictionary
pub struct SharedStorageWorkletOptions {
  dataOrigin : String?
}

///|
/// Create a new SharedStorageWorkletOptions with default values
pub fn SharedStorageWorkletOptions::default() -> SharedStorageWorkletOptions {
  SharedStorageWorkletOptions::{ dataOrigin: None }
}

///|
/// Convert to JsValue
pub extern "js" fn SharedStorageWorkletOptions::to_js(
  self : SharedStorageWorkletOptions,
) -> JsValue =
  #| (self) => ({
  #|   dataOrigin: self.dataOrigin
  #| })

///|
/// SharedStorageWorklet interface
pub type SharedStorageWorklet

///|
pub extern "js" fn SharedStorageWorklet::to_js_value(
  self : SharedStorageWorklet,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn SharedStorageWorklet::select_u_r_l(
  self : SharedStorageWorklet,
  name : String,
  urls : Array[SharedStorageUrlWithMetadata],
) -> Promise[SharedStorageResponse] =
  #| (self, name, urls) => self.selectURL(name, urls)

///|
pub extern "js" fn SharedStorageWorklet::select_u_r_l_with_options(
  self : SharedStorageWorklet,
  name : String,
  urls : Array[SharedStorageUrlWithMetadata],
  options : SharedStorageRunOperationMethodOptions,
) -> Promise[SharedStorageResponse] =
  #| (self, name, urls, options) => self.selectURL(name, urls, options)

///|
pub extern "js" fn SharedStorageWorklet::run(
  self : SharedStorageWorklet,
  name : String,
) -> Promise[JsValue] =
  #| (self, name) => self.run(name)

///|
pub extern "js" fn SharedStorageWorklet::run_with_options(
  self : SharedStorageWorklet,
  name : String,
  options : SharedStorageRunOperationMethodOptions,
) -> Promise[JsValue] =
  #| (self, name, options) => self.run(name, options)

///|
/// SharedStorageWorkletGlobalScope interface
pub type SharedStorageWorkletGlobalScope

///|
pub extern "js" fn SharedStorageWorkletGlobalScope::to_js_value(
  self : SharedStorageWorkletGlobalScope,
) -> JsValue =
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
/// SharedStorageSetMethod interface
pub type SharedStorageSetMethod

///|
pub extern "js" fn SharedStorageSetMethod::to_js_value(
  self : SharedStorageSetMethod,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn SharedStorageSetMethod::new(
  key : String,
  value : String,
  options : SharedStorageSetMethodOptions,
) -> SharedStorageSetMethod =
  #| (key, value, options) => new SharedStorageSetMethod(key, value, options)

///|
/// SharedStorageAppendMethod interface
pub type SharedStorageAppendMethod

///|
pub extern "js" fn SharedStorageAppendMethod::to_js_value(
  self : SharedStorageAppendMethod,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn SharedStorageAppendMethod::new(
  key : String,
  value : String,
  options : SharedStorageModifierMethodOptions,
) -> SharedStorageAppendMethod =
  #| (key, value, options) => new SharedStorageAppendMethod(key, value, options)

///|
/// SharedStorageDeleteMethod interface
pub type SharedStorageDeleteMethod

///|
pub extern "js" fn SharedStorageDeleteMethod::to_js_value(
  self : SharedStorageDeleteMethod,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn SharedStorageDeleteMethod::new(
  key : String,
  options : SharedStorageModifierMethodOptions,
) -> SharedStorageDeleteMethod =
  #| (key, options) => new SharedStorageDeleteMethod(key, options)

///|
/// SharedStorageClearMethod interface
pub type SharedStorageClearMethod

///|
pub extern "js" fn SharedStorageClearMethod::to_js_value(
  self : SharedStorageClearMethod,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn SharedStorageClearMethod::new(
  options : SharedStorageModifierMethodOptions,
) -> SharedStorageClearMethod =
  #| (options) => new SharedStorageClearMethod(options)

///|
/// SharedStorage interface
pub type SharedStorage

///|
pub extern "js" fn SharedStorage::to_js_value(self : SharedStorage) -> JsValue =
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
pub extern "js" fn SharedStorage::set_with_options(
  self : SharedStorage,
  key : String,
  value : String,
  options : SharedStorageSetMethodOptions,
) -> Promise[JsValue] =
  #| (self, key, value, options) => self.set(key, value, options)

///|
pub extern "js" fn SharedStorage::append(
  self : SharedStorage,
  key : String,
  value : String,
) -> Promise[JsValue] =
  #| (self, key, value) => self.append(key, value)

///|
pub extern "js" fn SharedStorage::append_with_options(
  self : SharedStorage,
  key : String,
  value : String,
  options : SharedStorageModifierMethodOptions,
) -> Promise[JsValue] =
  #| (self, key, value, options) => self.append(key, value, options)

///|
pub extern "js" fn SharedStorage::delete(
  self : SharedStorage,
  key : String,
) -> Promise[JsValue] =
  #| (self, key) => self.delete(key)

///|
pub extern "js" fn SharedStorage::delete_with_options(
  self : SharedStorage,
  key : String,
  options : SharedStorageModifierMethodOptions,
) -> Promise[JsValue] =
  #| (self, key, options) => self.delete(key, options)

///|
pub extern "js" fn SharedStorage::clear(
  self : SharedStorage,
) -> Promise[JsValue] =
  #| (self) => self.clear()

///|
pub extern "js" fn SharedStorage::clear_with_options(
  self : SharedStorage,
  options : SharedStorageModifierMethodOptions,
) -> Promise[JsValue] =
  #| (self, options) => self.clear(options)

///|
pub extern "js" fn SharedStorage::batch_update(
  self : SharedStorage,
  methods : Array[SharedStorageModifierMethod],
) -> Promise[JsValue] =
  #| (self, methods) => self.batchUpdate(methods)

///|
pub extern "js" fn SharedStorage::batch_update_with_options(
  self : SharedStorage,
  methods : Array[SharedStorageModifierMethod],
  options : SharedStorageModifierMethodOptions,
) -> Promise[JsValue] =
  #| (self, methods, options) => self.batchUpdate(methods, options)

///|
pub extern "js" fn SharedStorage::select_u_r_l(
  self : SharedStorage,
  name : String,
  urls : Array[SharedStorageUrlWithMetadata],
) -> Promise[SharedStorageResponse] =
  #| (self, name, urls) => self.selectURL(name, urls)

///|
pub extern "js" fn SharedStorage::select_u_r_l_with_options(
  self : SharedStorage,
  name : String,
  urls : Array[SharedStorageUrlWithMetadata],
  options : SharedStorageRunOperationMethodOptions,
) -> Promise[SharedStorageResponse] =
  #| (self, name, urls, options) => self.selectURL(name, urls, options)

///|
pub extern "js" fn SharedStorage::run(
  self : SharedStorage,
  name : String,
) -> Promise[JsValue] =
  #| (self, name) => self.run(name)

///|
pub extern "js" fn SharedStorage::run_with_options(
  self : SharedStorage,
  name : String,
  options : SharedStorageRunOperationMethodOptions,
) -> Promise[JsValue] =
  #| (self, name, options) => self.run(name, options)

///|
pub extern "js" fn SharedStorage::create_worklet(
  self : SharedStorage,
  module_u_r_l : String,
) -> Promise[SharedStorageWorklet] =
  #| (self, module_u_r_l) => self.createWorklet(module_u_r_l)

///|
pub extern "js" fn SharedStorage::create_worklet_with_options(
  self : SharedStorage,
  module_u_r_l : String,
  options : SharedStorageWorkletOptions,
) -> Promise[SharedStorageWorklet] =
  #| (self, module_u_r_l, options) => self.createWorklet(module_u_r_l, options)

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
pub extern "js" fn SharedStorage::_unknown_(self : SharedStorage) -> Unit =
  #| (self) => self._unknown_()

///|
/// SharedStorageWorkletNavigator interface
pub type SharedStorageWorkletNavigator

///|
pub extern "js" fn SharedStorageWorkletNavigator::to_js_value(
  self : SharedStorageWorkletNavigator,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn SharedStorageWorkletNavigator::get_locks(
  self : SharedStorageWorkletNavigator,
) -> LockManager =
  #| (self) => self.locks
