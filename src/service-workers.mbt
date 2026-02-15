// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/service-workers

///|
/// RouterSource typedef
pub type RouterSource

///|
pub extern "js" fn RouterSource::to_js_value(self : RouterSource) -> JsValue =
  #| (self) => self

///|
/// Create RouterSource from RouterSourceDict
pub extern "js" fn RouterSource::from_router_source_dict(
  v : RouterSourceDict,
) -> RouterSource =
  #| (v) => v

///|
/// Create RouterSource from RouterSourceEnum
pub extern "js" fn RouterSource::from_router_source_enum(
  v : RouterSourceEnum,
) -> RouterSource =
  #| (v) => v

///|
/// Check if this RouterSource is RouterSourceDict
pub extern "js" fn RouterSource::is_router_source_dict(
  self : RouterSource,
) -> Bool =
  #| (self) => typeof self === 'object' && self !== null

///|
/// Check if this RouterSource is RouterSourceEnum
pub extern "js" fn RouterSource::is_router_source_enum(
  self : RouterSource,
) -> Bool =
  #| (self) => typeof self === 'string'

///|
/// Try to get RouterSource as RouterSourceDict
pub extern "js" fn RouterSource::as_router_source_dict(
  self : RouterSource,
) -> RouterSourceDict? =
  #| (self) => (typeof self === 'object' && self !== null) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get RouterSource as RouterSourceEnum
pub extern "js" fn RouterSource::as_router_source_enum(
  self : RouterSource,
) -> RouterSourceEnum? =
  #| (self) => (typeof self === 'string') ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[RouterSource] to RouterSourceDict?
pub fn RouterSource::bind_as_router_source_dict(
  value : RouterSource?,
) -> RouterSourceDict? {
  match value {
    Some(v) => v.as_router_source_dict()
    None => None
  }
}

///|
/// Flatten Option[RouterSource] to RouterSourceEnum?
pub fn RouterSource::bind_as_router_source_enum(
  value : RouterSource?,
) -> RouterSourceEnum? {
  match value {
    Some(v) => v.as_router_source_enum()
    None => None
  }
}

///|
/// ServiceWorkerState enum
pub(all) enum ServiceWorkerState {
  Parsed
  Installing
  Installed
  Activating
  Activated
  Redundant
} derive(Eq, Show)

///|
/// Convert to string value
pub fn ServiceWorkerState::to_string(self : ServiceWorkerState) -> String {
  match self {
    ServiceWorkerState::Parsed => "parsed"
    ServiceWorkerState::Installing => "installing"
    ServiceWorkerState::Installed => "installed"
    ServiceWorkerState::Activating => "activating"
    ServiceWorkerState::Activated => "activated"
    ServiceWorkerState::Redundant => "redundant"
  }
}

///|
/// Parse from string value
pub fn ServiceWorkerState::from_string(s : String) -> ServiceWorkerState? {
  match s {
    "parsed" => Some(ServiceWorkerState::Parsed)
    "installing" => Some(ServiceWorkerState::Installing)
    "installed" => Some(ServiceWorkerState::Installed)
    "activating" => Some(ServiceWorkerState::Activating)
    "activated" => Some(ServiceWorkerState::Activated)
    "redundant" => Some(ServiceWorkerState::Redundant)
    _ => None
  }
}

///|
/// ServiceWorkerUpdateViaCache enum
pub(all) enum ServiceWorkerUpdateViaCache {
  Imports
  All
  None
} derive(Eq, Show)

///|
/// Convert to string value
pub fn ServiceWorkerUpdateViaCache::to_string(
  self : ServiceWorkerUpdateViaCache,
) -> String {
  match self {
    ServiceWorkerUpdateViaCache::Imports => "imports"
    ServiceWorkerUpdateViaCache::All => "all"
    ServiceWorkerUpdateViaCache::None => "none"
  }
}

///|
/// Parse from string value
pub fn ServiceWorkerUpdateViaCache::from_string(
  s : String,
) -> ServiceWorkerUpdateViaCache? {
  match s {
    "imports" => Some(ServiceWorkerUpdateViaCache::Imports)
    "all" => Some(ServiceWorkerUpdateViaCache::All)
    "none" => Some(ServiceWorkerUpdateViaCache::None)
    _ => None
  }
}

///|
/// FrameType enum
pub(all) enum FrameType {
  Auxiliary
  TopLevel
  Nested
  None
} derive(Eq, Show)

///|
/// Convert to string value
pub fn FrameType::to_string(self : FrameType) -> String {
  match self {
    FrameType::Auxiliary => "auxiliary"
    FrameType::TopLevel => "top-level"
    FrameType::Nested => "nested"
    FrameType::None => "none"
  }
}

///|
/// Parse from string value
pub fn FrameType::from_string(s : String) -> FrameType? {
  match s {
    "auxiliary" => Some(FrameType::Auxiliary)
    "top-level" => Some(FrameType::TopLevel)
    "nested" => Some(FrameType::Nested)
    "none" => Some(FrameType::None)
    _ => None
  }
}

///|
/// ClientType enum
pub(all) enum ClientType {
  Window
  Worker
  Sharedworker
  All
} derive(Eq, Show)

///|
/// Convert to string value
pub fn ClientType::to_string(self : ClientType) -> String {
  match self {
    ClientType::Window => "window"
    ClientType::Worker => "worker"
    ClientType::Sharedworker => "sharedworker"
    ClientType::All => "all"
  }
}

///|
/// Parse from string value
pub fn ClientType::from_string(s : String) -> ClientType? {
  match s {
    "window" => Some(ClientType::Window)
    "worker" => Some(ClientType::Worker)
    "sharedworker" => Some(ClientType::Sharedworker)
    "all" => Some(ClientType::All)
    _ => None
  }
}

///|
/// RunningStatus enum
pub(all) enum RunningStatus {
  Running
  NotRunning
} derive(Eq, Show)

///|
/// Convert to string value
pub fn RunningStatus::to_string(self : RunningStatus) -> String {
  match self {
    RunningStatus::Running => "running"
    RunningStatus::NotRunning => "not-running"
  }
}

///|
/// Parse from string value
pub fn RunningStatus::from_string(s : String) -> RunningStatus? {
  match s {
    "running" => Some(RunningStatus::Running)
    "not-running" => Some(RunningStatus::NotRunning)
    _ => None
  }
}

///|
/// RouterSourceEnum enum
pub(all) enum RouterSourceEnum {
  Cache
  FetchEvent
  Network
  RaceNetworkAndFetchHandler
} derive(Eq, Show)

///|
/// Convert to string value
pub fn RouterSourceEnum::to_string(self : RouterSourceEnum) -> String {
  match self {
    RouterSourceEnum::Cache => "cache"
    RouterSourceEnum::FetchEvent => "fetch-event"
    RouterSourceEnum::Network => "network"
    RouterSourceEnum::RaceNetworkAndFetchHandler =>
      "race-network-and-fetch-handler"
  }
}

///|
/// Parse from string value
pub fn RouterSourceEnum::from_string(s : String) -> RouterSourceEnum? {
  match s {
    "cache" => Some(RouterSourceEnum::Cache)
    "fetch-event" => Some(RouterSourceEnum::FetchEvent)
    "network" => Some(RouterSourceEnum::Network)
    "race-network-and-fetch-handler" =>
      Some(RouterSourceEnum::RaceNetworkAndFetchHandler)
    _ => None
  }
}

///|
/// RegistrationOptions dictionary
pub(all) struct RegistrationOptions {
  scope : String?
  type_ : WorkerType?
  updateViaCache : ServiceWorkerUpdateViaCache?
}

///|
/// Create a new RegistrationOptions with default values
pub fn RegistrationOptions::default() -> RegistrationOptions {
  RegistrationOptions::{ scope: None, type_: None, updateViaCache: None }
}

///|
extern "js" fn RegistrationOptions::to_js_ffi(
  self : RegistrationOptions,
) -> JsValue =
  #| (self) => ({
  #|   scope: self.scope,
  #|   type: ((() => { const v = self.type_; if (v === undefined) return undefined; return ['classic', 'module'][v]; })()),
  #|   updateViaCache: ((() => { const v = self.updateViaCache; if (v === undefined) return undefined; return ['imports', 'all', 'none'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn RegistrationOptions::to_js(self : RegistrationOptions) -> JsValue {
  RegistrationOptions::to_js_ffi(self)
}

///|
extern "js" fn RegistrationOptions::from_js_ffi(
  value : JsValue,
) -> RegistrationOptions =
  #| (v) => ({
  #|   scope: v.scope,
  #|   type_: (v.type === undefined ? undefined : ['classic', 'module'].indexOf(v.type)),
  #|   updateViaCache: (v.updateViaCache === undefined ? undefined : ['imports', 'all', 'none'].indexOf(v.updateViaCache))
  #| })

///|
/// Convert from JsValue
pub fn RegistrationOptions::from_js(value : JsValue) -> RegistrationOptions {
  RegistrationOptions::from_js_ffi(value)
}

///|
/// NavigationPreloadState dictionary
pub(all) struct NavigationPreloadState {
  enabled : Bool?
  headerValue : String?
}

///|
/// Create a new NavigationPreloadState with default values
pub fn NavigationPreloadState::default() -> NavigationPreloadState {
  NavigationPreloadState::{ enabled: None, headerValue: None }
}

///|
extern "js" fn NavigationPreloadState::to_js_ffi(
  self : NavigationPreloadState,
) -> JsValue =
  #| (self) => ({
  #|   enabled: (self.enabled === -1 ? undefined : self.enabled),
  #|   headerValue: self.headerValue
  #| })

///|
/// Convert to JsValue
pub fn NavigationPreloadState::to_js(self : NavigationPreloadState) -> JsValue {
  NavigationPreloadState::to_js_ffi(self)
}

///|
extern "js" fn NavigationPreloadState::from_js_ffi(
  value : JsValue,
) -> NavigationPreloadState =
  #| (v) => ({
  #|   enabled: (v.enabled === undefined ? -1 : v.enabled),
  #|   headerValue: v.headerValue
  #| })

///|
/// Convert from JsValue
pub fn NavigationPreloadState::from_js(
  value : JsValue,
) -> NavigationPreloadState {
  NavigationPreloadState::from_js_ffi(value)
}

///|
/// ClientQueryOptions dictionary
pub(all) struct ClientQueryOptions {
  includeUncontrolled : Bool?
  type_ : ClientType?
}

///|
/// Create a new ClientQueryOptions with default values
pub fn ClientQueryOptions::default() -> ClientQueryOptions {
  ClientQueryOptions::{ includeUncontrolled: None, type_: None }
}

///|
extern "js" fn ClientQueryOptions::to_js_ffi(
  self : ClientQueryOptions,
) -> JsValue =
  #| (self) => ({
  #|   includeUncontrolled: (self.includeUncontrolled === -1 ? undefined : self.includeUncontrolled),
  #|   type: ((() => { const v = self.type_; if (v === undefined) return undefined; return ['window', 'worker', 'sharedworker', 'all'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn ClientQueryOptions::to_js(self : ClientQueryOptions) -> JsValue {
  ClientQueryOptions::to_js_ffi(self)
}

///|
extern "js" fn ClientQueryOptions::from_js_ffi(
  value : JsValue,
) -> ClientQueryOptions =
  #| (v) => ({
  #|   includeUncontrolled: (v.includeUncontrolled === undefined ? -1 : v.includeUncontrolled),
  #|   type_: (v.type === undefined ? undefined : ['window', 'worker', 'sharedworker', 'all'].indexOf(v.type))
  #| })

///|
/// Convert from JsValue
pub fn ClientQueryOptions::from_js(value : JsValue) -> ClientQueryOptions {
  ClientQueryOptions::from_js_ffi(value)
}

///|
/// ExtendableEventInit dictionary
pub(all) struct ExtendableEventInit {}

///|
/// Create a new ExtendableEventInit with default values
pub fn ExtendableEventInit::default() -> ExtendableEventInit {
  ExtendableEventInit::{  }
}

///|
extern "js" fn ExtendableEventInit::to_js_ffi(
  self : ExtendableEventInit,
) -> JsValue =
  #| (self) => ({
  #| })

///|
/// Convert to JsValue
pub fn ExtendableEventInit::to_js(self : ExtendableEventInit) -> JsValue {
  ExtendableEventInit::to_js_ffi(self)
}

///|
extern "js" fn ExtendableEventInit::from_js_ffi(
  value : JsValue,
) -> ExtendableEventInit =
  #| (v) => ({
  #| })

///|
/// Convert from JsValue
pub fn ExtendableEventInit::from_js(value : JsValue) -> ExtendableEventInit {
  ExtendableEventInit::from_js_ffi(value)
}

///|
/// RouterRule dictionary
pub(all) struct RouterRule {
  condition : RouterCondition
  source : RouterSource
}

///|
/// Create a new RouterRule
pub fn RouterRule::new(
  condition~ : RouterCondition,
  source~ : RouterSource,
) -> RouterRule {
  RouterRule::{ condition, source }
}

///|
extern "js" fn RouterRule::to_js_ffi(self : RouterRule) -> JsValue =
  #| (self) => ({
  #|   condition: self.condition,
  #|   source: self.source.to_js_value()
  #| })

///|
/// Convert to JsValue
pub fn RouterRule::to_js(self : RouterRule) -> JsValue {
  RouterRule::to_js_ffi(self)
}

///|
extern "js" fn RouterRule::from_js_ffi(value : JsValue) -> RouterRule =
  #| (v) => ({
  #|   condition: v.condition,
  #|   source: v.source
  #| })

///|
/// Convert from JsValue
pub fn RouterRule::from_js(value : JsValue) -> RouterRule {
  RouterRule::from_js_ffi(value)
}

///|
/// RouterCondition dictionary
pub(all) struct RouterCondition {
  urlPattern : URLPatternCompatible?
  requestMethod : String?
  requestMode : RequestMode?
  requestDestination : RequestDestination?
  runningStatus : RunningStatus?
  or : Array[RouterCondition]?
  not : RouterCondition?
}

///|
/// Create a new RouterCondition with default values
pub fn RouterCondition::default() -> RouterCondition {
  RouterCondition::{
    urlPattern: None,
    requestMethod: None,
    requestMode: None,
    requestDestination: None,
    runningStatus: None,
    or: None,
    not: None,
  }
}

///|
extern "js" fn RouterCondition::to_js_ffi(self : RouterCondition) -> JsValue =
  #| (self) => ({
  #|   urlPattern: ((() => { const v = self.urlPattern; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   requestMethod: self.requestMethod,
  #|   requestMode: ((() => { const v = self.requestMode; if (v === undefined) return undefined; return ['navigate', 'same-origin', 'no-cors', 'cors'][v]; })()),
  #|   requestDestination: ((() => { const v = self.requestDestination; if (v === undefined) return undefined; return ['', 'audio', 'audioworklet', 'document', 'embed', 'font', 'frame', 'iframe', 'image', 'json', 'manifest', 'object', 'paintworklet', 'report', 'script', 'sharedworker', 'style', 'track', 'video', 'worker', 'xslt'][v]; })()),
  #|   runningStatus: ((() => { const v = self.runningStatus; if (v === undefined) return undefined; return ['running', 'not-running'][v]; })()),
  #|   or: ((() => { const v = self.or; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   not: ((() => { const v = self.not; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn RouterCondition::to_js(self : RouterCondition) -> JsValue {
  RouterCondition::to_js_ffi(self)
}

///|
extern "js" fn RouterCondition::from_js_ffi(value : JsValue) -> RouterCondition =
  #| (v) => ({
  #|   urlPattern: (v.urlPattern === undefined ? { $tag: 0 } : { $tag: 1, _0: v.urlPattern }),
  #|   requestMethod: v.requestMethod,
  #|   requestMode: (v.requestMode === undefined ? undefined : ['navigate', 'same-origin', 'no-cors', 'cors'].indexOf(v.requestMode)),
  #|   requestDestination: (v.requestDestination === undefined ? undefined : ['', 'audio', 'audioworklet', 'document', 'embed', 'font', 'frame', 'iframe', 'image', 'json', 'manifest', 'object', 'paintworklet', 'report', 'script', 'sharedworker', 'style', 'track', 'video', 'worker', 'xslt'].indexOf(v.requestDestination)),
  #|   runningStatus: (v.runningStatus === undefined ? undefined : ['running', 'not-running'].indexOf(v.runningStatus)),
  #|   or: (v.or === undefined ? { $tag: 0 } : { $tag: 1, _0: v.or }),
  #|   not: (v.not === undefined ? { $tag: 0 } : { $tag: 1, _0: v.not })
  #| })

///|
/// Convert from JsValue
pub fn RouterCondition::from_js(value : JsValue) -> RouterCondition {
  RouterCondition::from_js_ffi(value)
}

///|
/// RouterSourceDict dictionary
pub(all) struct RouterSourceDict {
  cacheName : String?
}

///|
/// Create a new RouterSourceDict with default values
pub fn RouterSourceDict::default() -> RouterSourceDict {
  RouterSourceDict::{ cacheName: None }
}

///|
extern "js" fn RouterSourceDict::to_js_ffi(self : RouterSourceDict) -> JsValue =
  #| (self) => ({
  #|   cacheName: self.cacheName
  #| })

///|
/// Convert to JsValue
pub fn RouterSourceDict::to_js(self : RouterSourceDict) -> JsValue {
  RouterSourceDict::to_js_ffi(self)
}

///|
extern "js" fn RouterSourceDict::from_js_ffi(
  value : JsValue,
) -> RouterSourceDict =
  #| (v) => ({
  #|   cacheName: v.cacheName
  #| })

///|
/// Convert from JsValue
pub fn RouterSourceDict::from_js(value : JsValue) -> RouterSourceDict {
  RouterSourceDict::from_js_ffi(value)
}

///|
/// FetchEventInit dictionary
pub(all) struct FetchEventInit {
  request : Request
  preloadResponse : Promise[JsValue]?
  clientId : String?
  resultingClientId : String?
  replacesClientId : String?
  handled : Promise[Unit]?
}

///|
/// Create a new FetchEventInit
pub fn FetchEventInit::new(request~ : Request) -> FetchEventInit {
  FetchEventInit::{
    request,
    preloadResponse: None,
    clientId: None,
    resultingClientId: None,
    replacesClientId: None,
    handled: None,
  }
}

///|
extern "js" fn FetchEventInit::to_js_ffi(self : FetchEventInit) -> JsValue =
  #| (self) => ({
  #|   request: self.request,
  #|   preloadResponse: ((() => { const v = self.preloadResponse; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   clientId: self.clientId,
  #|   resultingClientId: self.resultingClientId,
  #|   replacesClientId: self.replacesClientId,
  #|   handled: ((() => { const v = self.handled; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn FetchEventInit::to_js(self : FetchEventInit) -> JsValue {
  FetchEventInit::to_js_ffi(self)
}

///|
extern "js" fn FetchEventInit::from_js_ffi(value : JsValue) -> FetchEventInit =
  #| (v) => ({
  #|   request: v.request,
  #|   preloadResponse: (v.preloadResponse === undefined ? { $tag: 0 } : { $tag: 1, _0: v.preloadResponse }),
  #|   clientId: v.clientId,
  #|   resultingClientId: v.resultingClientId,
  #|   replacesClientId: v.replacesClientId,
  #|   handled: (v.handled === undefined ? { $tag: 0 } : { $tag: 1, _0: v.handled })
  #| })

///|
/// Convert from JsValue
pub fn FetchEventInit::from_js(value : JsValue) -> FetchEventInit {
  FetchEventInit::from_js_ffi(value)
}

///|
/// ExtendableMessageEventInit dictionary
pub(all) struct ExtendableMessageEventInit {
  data : JsValue?
  origin : String?
  lastEventId : String?
  source : ClientOrServiceWorkerOrMessagePort?
  ports : Array[MessagePort]?
}

///|
/// Create a new ExtendableMessageEventInit with default values
pub fn ExtendableMessageEventInit::default() -> ExtendableMessageEventInit {
  ExtendableMessageEventInit::{
    data: None,
    origin: None,
    lastEventId: None,
    source: None,
    ports: None,
  }
}

///|
extern "js" fn ExtendableMessageEventInit::to_js_ffi(
  self : ExtendableMessageEventInit,
) -> JsValue =
  #| (self) => ({
  #|   data: ((() => { const v = self.data; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   origin: self.origin,
  #|   lastEventId: self.lastEventId,
  #|   source: ((() => { const v = self.source; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   ports: ((() => { const v = self.ports; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn ExtendableMessageEventInit::to_js(
  self : ExtendableMessageEventInit,
) -> JsValue {
  ExtendableMessageEventInit::to_js_ffi(self)
}

///|
extern "js" fn ExtendableMessageEventInit::from_js_ffi(
  value : JsValue,
) -> ExtendableMessageEventInit =
  #| (v) => ({
  #|   data: (v.data === undefined ? { $tag: 0 } : { $tag: 1, _0: v.data }),
  #|   origin: v.origin,
  #|   lastEventId: v.lastEventId,
  #|   source: (v.source === undefined ? { $tag: 0 } : { $tag: 1, _0: v.source }),
  #|   ports: (v.ports === undefined ? { $tag: 0 } : { $tag: 1, _0: v.ports })
  #| })

///|
/// Convert from JsValue
pub fn ExtendableMessageEventInit::from_js(
  value : JsValue,
) -> ExtendableMessageEventInit {
  ExtendableMessageEventInit::from_js_ffi(value)
}

///|
/// CacheQueryOptions dictionary
pub(all) struct CacheQueryOptions {
  ignoreSearch : Bool?
  ignoreMethod : Bool?
  ignoreVary : Bool?
}

///|
/// Create a new CacheQueryOptions with default values
pub fn CacheQueryOptions::default() -> CacheQueryOptions {
  CacheQueryOptions::{
    ignoreSearch: None,
    ignoreMethod: None,
    ignoreVary: None,
  }
}

///|
extern "js" fn CacheQueryOptions::to_js_ffi(
  self : CacheQueryOptions,
) -> JsValue =
  #| (self) => ({
  #|   ignoreSearch: (self.ignoreSearch === -1 ? undefined : self.ignoreSearch),
  #|   ignoreMethod: (self.ignoreMethod === -1 ? undefined : self.ignoreMethod),
  #|   ignoreVary: (self.ignoreVary === -1 ? undefined : self.ignoreVary)
  #| })

///|
/// Convert to JsValue
pub fn CacheQueryOptions::to_js(self : CacheQueryOptions) -> JsValue {
  CacheQueryOptions::to_js_ffi(self)
}

///|
extern "js" fn CacheQueryOptions::from_js_ffi(
  value : JsValue,
) -> CacheQueryOptions =
  #| (v) => ({
  #|   ignoreSearch: (v.ignoreSearch === undefined ? -1 : v.ignoreSearch),
  #|   ignoreMethod: (v.ignoreMethod === undefined ? -1 : v.ignoreMethod),
  #|   ignoreVary: (v.ignoreVary === undefined ? -1 : v.ignoreVary)
  #| })

///|
/// Convert from JsValue
pub fn CacheQueryOptions::from_js(value : JsValue) -> CacheQueryOptions {
  CacheQueryOptions::from_js_ffi(value)
}

///|
/// MultiCacheQueryOptions dictionary
pub(all) struct MultiCacheQueryOptions {
  ignoreSearch : Bool?
  ignoreMethod : Bool?
  ignoreVary : Bool?
  cacheName : String?
}

///|
/// Create a new MultiCacheQueryOptions with default values
pub fn MultiCacheQueryOptions::default() -> MultiCacheQueryOptions {
  MultiCacheQueryOptions::{
    ignoreSearch: None,
    ignoreMethod: None,
    ignoreVary: None,
    cacheName: None,
  }
}

///|
extern "js" fn MultiCacheQueryOptions::to_js_ffi(
  self : MultiCacheQueryOptions,
) -> JsValue =
  #| (self) => ({
  #|   ignoreSearch: (self.ignoreSearch === -1 ? undefined : self.ignoreSearch),
  #|   ignoreMethod: (self.ignoreMethod === -1 ? undefined : self.ignoreMethod),
  #|   ignoreVary: (self.ignoreVary === -1 ? undefined : self.ignoreVary),
  #|   cacheName: self.cacheName
  #| })

///|
/// Convert to JsValue
pub fn MultiCacheQueryOptions::to_js(self : MultiCacheQueryOptions) -> JsValue {
  MultiCacheQueryOptions::to_js_ffi(self)
}

///|
extern "js" fn MultiCacheQueryOptions::from_js_ffi(
  value : JsValue,
) -> MultiCacheQueryOptions =
  #| (v) => ({
  #|   ignoreSearch: (v.ignoreSearch === undefined ? -1 : v.ignoreSearch),
  #|   ignoreMethod: (v.ignoreMethod === undefined ? -1 : v.ignoreMethod),
  #|   ignoreVary: (v.ignoreVary === undefined ? -1 : v.ignoreVary),
  #|   cacheName: v.cacheName
  #| })

///|
/// Convert from JsValue
pub fn MultiCacheQueryOptions::from_js(
  value : JsValue,
) -> MultiCacheQueryOptions {
  MultiCacheQueryOptions::from_js_ffi(value)
}

///|
/// ServiceWorker interface
pub type ServiceWorker

///|
pub extern "js" fn ServiceWorker::to_js_value(self : ServiceWorker) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ServiceWorker (unchecked)
pub extern "js" fn ServiceWorker::from_js_value(v : JsValue) -> ServiceWorker =
  #| (v) => v

///|
/// Safely cast JsValue to ServiceWorker (checked with instanceof)
pub extern "js" fn ServiceWorker::from_js_value_opt(
  v : JsValue,
) -> ServiceWorker? =
  #| (v) => (v instanceof ServiceWorker) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ServiceWorker (checked with instanceof)
pub extern "js" fn JsValue::as_service_worker(self : JsValue) -> ServiceWorker? =
  #| (self) => (self instanceof ServiceWorker) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ServiceWorker (unchecked)
pub extern "js" fn JsValue::to_service_worker(self : JsValue) -> ServiceWorker =
  #| (self) => self

///|
pub extern "js" fn ServiceWorker::to_event_target(
  self : ServiceWorker,
) -> EventTarget =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum ServiceWorkerPostMessageError {
  SyntaxError(JsError)
  OtherError(JsError)
}

///|
pub extern "js" fn ServiceWorker::get_script_url(
  self : ServiceWorker,
) -> String =
  #| (self) => self.scriptURL

///|
pub extern "js" fn ServiceWorker::get_state(
  self : ServiceWorker,
) -> ServiceWorkerState =
  #| (self) => ['parsed', 'installing', 'installed', 'activating', 'activated', 'redundant'].indexOf(self.state)

///|
pub extern "js" fn ServiceWorker::post_message(
  self : ServiceWorker,
  message : JsValue,
) -> Result[Unit, ServiceWorkerPostMessageError] =
  #| (self, message) => (() => { try { self.postMessage(message); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'SyntaxError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
extern "js" fn ServiceWorker::post_message_with_options_ffi(
  self : ServiceWorker,
  message : JsValue,
  options : JsValue,
) -> Result[Unit, ServiceWorkerPostMessageError] =
  #| (self, message, options) => (() => { try { self.postMessage(message, options); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'SyntaxError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub fn ServiceWorker::post_message_with_options(
  self : ServiceWorker,
  message : JsValue,
  options : StructuredSerializeOptions,
) -> Result[Unit, ServiceWorkerPostMessageError] {
  ServiceWorker::post_message_with_options_ffi(self, message, options.to_js())
}

///|
pub extern "js" fn ServiceWorker::post_message_with_message_and_transfer(
  self : ServiceWorker,
  message : JsValue,
  transfer : Array[JsValue],
) -> Result[Unit, ServiceWorkerPostMessageError] =
  #| (self, message, transfer) => (() => { try { self.postMessage(message, transfer); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'SyntaxError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn ServiceWorker::set_onstatechange(
  self : ServiceWorker,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onstatechange = (e) => handler(e) }

///|
pub extern "js" fn ServiceWorker::clear_onstatechange(
  self : ServiceWorker,
) -> Unit =
  #| (self) => { self.onstatechange = null }

///|
pub extern "js" fn ServiceWorker::set_onerror(
  self : ServiceWorker,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onerror = (e) => handler(e) }

///|
pub extern "js" fn ServiceWorker::clear_onerror(self : ServiceWorker) -> Unit =
  #| (self) => { self.onerror = null }

///|
/// ServiceWorkerRegistration interface
pub type ServiceWorkerRegistration

///|
pub extern "js" fn ServiceWorkerRegistration::to_js_value(
  self : ServiceWorkerRegistration,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ServiceWorkerRegistration (unchecked)
pub extern "js" fn ServiceWorkerRegistration::from_js_value(
  v : JsValue,
) -> ServiceWorkerRegistration =
  #| (v) => v

///|
/// Safely cast JsValue to ServiceWorkerRegistration (checked with instanceof)
pub extern "js" fn ServiceWorkerRegistration::from_js_value_opt(
  v : JsValue,
) -> ServiceWorkerRegistration? =
  #| (v) => (v instanceof ServiceWorkerRegistration) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ServiceWorkerRegistration (checked with instanceof)
pub extern "js" fn JsValue::as_service_worker_registration(
  self : JsValue,
) -> ServiceWorkerRegistration? =
  #| (self) => (self instanceof ServiceWorkerRegistration) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ServiceWorkerRegistration (unchecked)
pub extern "js" fn JsValue::to_service_worker_registration(
  self : JsValue,
) -> ServiceWorkerRegistration =
  #| (self) => self

///|
pub extern "js" fn ServiceWorkerRegistration::to_event_target(
  self : ServiceWorkerRegistration,
) -> EventTarget =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum ServiceWorkerRegistrationShowNotificationError {
  TypeError(JsError)
  DataCloneError(JsError)
  OtherError(JsError)
}

///|
pub extern "js" fn ServiceWorkerRegistration::get_installing(
  self : ServiceWorkerRegistration,
) -> ServiceWorker? =
  #| (self) => (() => { const v = self.installing; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn ServiceWorkerRegistration::get_waiting(
  self : ServiceWorkerRegistration,
) -> ServiceWorker? =
  #| (self) => (() => { const v = self.waiting; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn ServiceWorkerRegistration::get_active(
  self : ServiceWorkerRegistration,
) -> ServiceWorker? =
  #| (self) => (() => { const v = self.active; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn ServiceWorkerRegistration::get_navigation_preload(
  self : ServiceWorkerRegistration,
) -> NavigationPreloadManager =
  #| (self) => self.navigationPreload

///|
pub extern "js" fn ServiceWorkerRegistration::get_scope(
  self : ServiceWorkerRegistration,
) -> String =
  #| (self) => self.scope

///|
pub extern "js" fn ServiceWorkerRegistration::get_update_via_cache(
  self : ServiceWorkerRegistration,
) -> ServiceWorkerUpdateViaCache =
  #| (self) => ['imports', 'all', 'none'].indexOf(self.updateViaCache)

///|
pub extern "js" fn ServiceWorkerRegistration::update(
  self : ServiceWorkerRegistration,
) -> Promise[ServiceWorkerRegistration] =
  #| (self) => self.update()

///|
pub extern "js" fn ServiceWorkerRegistration::unregister(
  self : ServiceWorkerRegistration,
) -> Promise[Bool] =
  #| (self) => self.unregister()

///|
pub extern "js" fn ServiceWorkerRegistration::set_onupdatefound(
  self : ServiceWorkerRegistration,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onupdatefound = (e) => handler(e) }

///|
pub extern "js" fn ServiceWorkerRegistration::clear_onupdatefound(
  self : ServiceWorkerRegistration,
) -> Unit =
  #| (self) => { self.onupdatefound = null }

///|
pub extern "js" fn ServiceWorkerRegistration::show_notification(
  self : ServiceWorkerRegistration,
  title : String,
) -> Promise[Result[Unit, ServiceWorkerRegistrationShowNotificationError]] =
  #| (self, title) => self.showNotification(title).then(v => ({ $tag: 1, _0: undefined })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'DataCloneError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }))

///|
extern "js" fn ServiceWorkerRegistration::show_notification_with_options_ffi(
  self : ServiceWorkerRegistration,
  title : String,
  options : JsValue,
) -> Promise[Result[Unit, ServiceWorkerRegistrationShowNotificationError]] =
  #| (self, title, options) => self.showNotification(title, options).then(v => ({ $tag: 1, _0: undefined })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'DataCloneError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }))

///|
pub fn ServiceWorkerRegistration::show_notification_with_options(
  self : ServiceWorkerRegistration,
  title : String,
  options : NotificationOptions,
) -> Promise[Result[Unit, ServiceWorkerRegistrationShowNotificationError]] {
  ServiceWorkerRegistration::show_notification_with_options_ffi(
    self,
    title,
    options.to_js(),
  )
}

///|
pub extern "js" fn ServiceWorkerRegistration::get_notifications(
  self : ServiceWorkerRegistration,
) -> Promise[Array[Notification]] =
  #| (self) => self.getNotifications()

///|
extern "js" fn ServiceWorkerRegistration::get_notifications_with_filter_ffi(
  self : ServiceWorkerRegistration,
  filter : JsValue,
) -> Promise[Array[Notification]] =
  #| (self, filter) => self.getNotifications(filter)

///|
pub fn ServiceWorkerRegistration::get_notifications_with_filter(
  self : ServiceWorkerRegistration,
  filter : GetNotificationOptions,
) -> Promise[Array[Notification]] {
  ServiceWorkerRegistration::get_notifications_with_filter_ffi(
    self,
    filter.to_js(),
  )
}

///|
pub extern "js" fn ServiceWorkerRegistration::get_payment_manager(
  self : ServiceWorkerRegistration,
) -> PaymentManager =
  #| (self) => self.paymentManager

///|
pub extern "js" fn ServiceWorkerRegistration::get_sync(
  self : ServiceWorkerRegistration,
) -> SyncManager =
  #| (self) => self.sync

///|
pub extern "js" fn ServiceWorkerRegistration::get_cookies(
  self : ServiceWorkerRegistration,
) -> CookieStoreManager =
  #| (self) => self.cookies

///|
pub extern "js" fn ServiceWorkerRegistration::get_periodic_sync(
  self : ServiceWorkerRegistration,
) -> PeriodicSyncManager =
  #| (self) => self.periodicSync

///|
pub extern "js" fn ServiceWorkerRegistration::get_index(
  self : ServiceWorkerRegistration,
) -> ContentIndex =
  #| (self) => self.index

///|
pub extern "js" fn ServiceWorkerRegistration::get_background_fetch(
  self : ServiceWorkerRegistration,
) -> BackgroundFetchManager =
  #| (self) => self.backgroundFetch

///|
pub extern "js" fn ServiceWorkerRegistration::get_push_manager(
  self : ServiceWorkerRegistration,
) -> PushManager =
  #| (self) => self.pushManager

///|
/// ServiceWorkerContainer interface
pub type ServiceWorkerContainer

///|
pub extern "js" fn ServiceWorkerContainer::to_js_value(
  self : ServiceWorkerContainer,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ServiceWorkerContainer (unchecked)
pub extern "js" fn ServiceWorkerContainer::from_js_value(
  v : JsValue,
) -> ServiceWorkerContainer =
  #| (v) => v

///|
/// Safely cast JsValue to ServiceWorkerContainer (checked with instanceof)
pub extern "js" fn ServiceWorkerContainer::from_js_value_opt(
  v : JsValue,
) -> ServiceWorkerContainer? =
  #| (v) => (v instanceof ServiceWorkerContainer) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ServiceWorkerContainer (checked with instanceof)
pub extern "js" fn JsValue::as_service_worker_container(
  self : JsValue,
) -> ServiceWorkerContainer? =
  #| (self) => (self instanceof ServiceWorkerContainer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ServiceWorkerContainer (unchecked)
pub extern "js" fn JsValue::to_service_worker_container(
  self : JsValue,
) -> ServiceWorkerContainer =
  #| (self) => self

///|
pub extern "js" fn ServiceWorkerContainer::to_event_target(
  self : ServiceWorkerContainer,
) -> EventTarget =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum ServiceWorkerContainerRegisterError {
  TypeError(JsError)
  SecurityError(JsError)
  OtherError(JsError)
}

///|
pub extern "js" fn ServiceWorkerContainer::get_controller(
  self : ServiceWorkerContainer,
) -> ServiceWorker? =
  #| (self) => (() => { const v = self.controller; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn ServiceWorkerContainer::get_ready(
  self : ServiceWorkerContainer,
) -> Promise[ServiceWorkerRegistration] =
  #| (self) => self.ready

///|
pub extern "js" fn ServiceWorkerContainer::register(
  self : ServiceWorkerContainer,
  script_url : TrustedScriptURLOrString,
) -> Promise[
  Result[ServiceWorkerRegistration, ServiceWorkerContainerRegisterError],
] =
  #| (self, script_url) => self.register(script_url).then(v => ({ $tag: 1, _0: v })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'SecurityError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }))

///|
extern "js" fn ServiceWorkerContainer::register_with_options_ffi(
  self : ServiceWorkerContainer,
  script_url : TrustedScriptURLOrString,
  options : JsValue,
) -> Promise[
  Result[ServiceWorkerRegistration, ServiceWorkerContainerRegisterError],
] =
  #| (self, script_url, options) => self.register(script_url, options).then(v => ({ $tag: 1, _0: v })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'SecurityError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }))

///|
pub fn ServiceWorkerContainer::register_with_options(
  self : ServiceWorkerContainer,
  script_url : TrustedScriptURLOrString,
  options : RegistrationOptions,
) -> Promise[
  Result[ServiceWorkerRegistration, ServiceWorkerContainerRegisterError],
] {
  ServiceWorkerContainer::register_with_options_ffi(
    self,
    script_url,
    options.to_js(),
  )
}

///|
pub extern "js" fn ServiceWorkerContainer::get_registration(
  self : ServiceWorkerContainer,
) -> Promise[ServiceWorkerRegistrationOrVoid] =
  #| (self) => self.getRegistration()

///|
pub extern "js" fn ServiceWorkerContainer::get_registration_with_client_url(
  self : ServiceWorkerContainer,
  client_url : String,
) -> Promise[ServiceWorkerRegistrationOrVoid] =
  #| (self, client_url) => self.getRegistration(client_url)

///|
pub extern "js" fn ServiceWorkerContainer::get_registrations(
  self : ServiceWorkerContainer,
) -> Promise[Array[ServiceWorkerRegistration]] =
  #| (self) => self.getRegistrations()

///|
pub extern "js" fn ServiceWorkerContainer::start_messages(
  self : ServiceWorkerContainer,
) -> Unit =
  #| (self) => self.startMessages()

///|
pub extern "js" fn ServiceWorkerContainer::set_oncontrollerchange(
  self : ServiceWorkerContainer,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.oncontrollerchange = (e) => handler(e) }

///|
pub extern "js" fn ServiceWorkerContainer::clear_oncontrollerchange(
  self : ServiceWorkerContainer,
) -> Unit =
  #| (self) => { self.oncontrollerchange = null }

///|
pub extern "js" fn ServiceWorkerContainer::set_onmessage(
  self : ServiceWorkerContainer,
  handler : (MessageEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onmessage = (e) => handler(e) }

///|
pub extern "js" fn ServiceWorkerContainer::clear_onmessage(
  self : ServiceWorkerContainer,
) -> Unit =
  #| (self) => { self.onmessage = null }

///|
pub extern "js" fn ServiceWorkerContainer::set_onmessageerror(
  self : ServiceWorkerContainer,
  handler : (MessageEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onmessageerror = (e) => handler(e) }

///|
pub extern "js" fn ServiceWorkerContainer::clear_onmessageerror(
  self : ServiceWorkerContainer,
) -> Unit =
  #| (self) => { self.onmessageerror = null }

///|
/// NavigationPreloadManager interface
pub type NavigationPreloadManager

///|
pub extern "js" fn NavigationPreloadManager::to_js_value(
  self : NavigationPreloadManager,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to NavigationPreloadManager (unchecked)
pub extern "js" fn NavigationPreloadManager::from_js_value(
  v : JsValue,
) -> NavigationPreloadManager =
  #| (v) => v

///|
/// Safely cast JsValue to NavigationPreloadManager (checked with instanceof)
pub extern "js" fn NavigationPreloadManager::from_js_value_opt(
  v : JsValue,
) -> NavigationPreloadManager? =
  #| (v) => (v instanceof NavigationPreloadManager) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to NavigationPreloadManager (checked with instanceof)
pub extern "js" fn JsValue::as_navigation_preload_manager(
  self : JsValue,
) -> NavigationPreloadManager? =
  #| (self) => (self instanceof NavigationPreloadManager) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to NavigationPreloadManager (unchecked)
pub extern "js" fn JsValue::to_navigation_preload_manager(
  self : JsValue,
) -> NavigationPreloadManager =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum NavigationPreloadManagerEnableError {
  InvalidStateError(JsError)
  OtherError(JsError)
}

///|
/// Error type for throwing methods
pub(all) enum NavigationPreloadManagerDisableError {
  InvalidStateError(JsError)
  OtherError(JsError)
}

///|
/// Error type for throwing methods
pub(all) enum NavigationPreloadManagerSetHeaderValueError {
  InvalidStateError(JsError)
  OtherError(JsError)
}

///|
/// Error type for throwing methods
pub(all) enum NavigationPreloadManagerGetStateError {
  InvalidStateError(JsError)
  OtherError(JsError)
}

///|
pub extern "js" fn NavigationPreloadManager::enable(
  self : NavigationPreloadManager,
) -> Promise[Result[Unit, NavigationPreloadManagerEnableError]] =
  #| (self) => self.enable().then(v => ({ $tag: 1, _0: undefined })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'InvalidStateError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }))

///|
pub extern "js" fn NavigationPreloadManager::disable(
  self : NavigationPreloadManager,
) -> Promise[Result[Unit, NavigationPreloadManagerDisableError]] =
  #| (self) => self.disable().then(v => ({ $tag: 1, _0: undefined })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'InvalidStateError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }))

///|
pub extern "js" fn NavigationPreloadManager::set_header_value(
  self : NavigationPreloadManager,
  value : String,
) -> Promise[Result[Unit, NavigationPreloadManagerSetHeaderValueError]] =
  #| (self, value) => self.setHeaderValue(value).then(v => ({ $tag: 1, _0: undefined })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'InvalidStateError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }))

///|
pub extern "js" fn NavigationPreloadManager::get_state(
  self : NavigationPreloadManager,
) -> Promise[
  Result[NavigationPreloadState, NavigationPreloadManagerGetStateError],
] =
  #| (self) => self.getState().then(v => ({
  #|   enabled: (v.enabled === undefined ? -1 : v.enabled),
  #|   headerValue: v.headerValue
  #| })).then(v => ({ $tag: 1, _0: v })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'InvalidStateError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }))

///|
/// ServiceWorkerGlobalScope interface
pub type ServiceWorkerGlobalScope

///|
pub extern "js" fn ServiceWorkerGlobalScope::to_js_value(
  self : ServiceWorkerGlobalScope,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ServiceWorkerGlobalScope (unchecked)
pub extern "js" fn ServiceWorkerGlobalScope::from_js_value(
  v : JsValue,
) -> ServiceWorkerGlobalScope =
  #| (v) => v

///|
/// Safely cast JsValue to ServiceWorkerGlobalScope (checked with instanceof)
pub extern "js" fn ServiceWorkerGlobalScope::from_js_value_opt(
  v : JsValue,
) -> ServiceWorkerGlobalScope? =
  #| (v) => (v instanceof ServiceWorkerGlobalScope) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ServiceWorkerGlobalScope (checked with instanceof)
pub extern "js" fn JsValue::as_service_worker_global_scope(
  self : JsValue,
) -> ServiceWorkerGlobalScope? =
  #| (self) => (self instanceof ServiceWorkerGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ServiceWorkerGlobalScope (unchecked)
pub extern "js" fn JsValue::to_service_worker_global_scope(
  self : JsValue,
) -> ServiceWorkerGlobalScope =
  #| (self) => self

///|
pub extern "js" fn ServiceWorkerGlobalScope::to_worker_global_scope(
  self : ServiceWorkerGlobalScope,
) -> WorkerGlobalScope =
  #| (self) => self

///|
pub extern "js" fn ServiceWorkerGlobalScope::to_event_target(
  self : ServiceWorkerGlobalScope,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn ServiceWorkerGlobalScope::get_clients(
  self : ServiceWorkerGlobalScope,
) -> Clients =
  #| (self) => self.clients

///|
pub extern "js" fn ServiceWorkerGlobalScope::get_registration(
  self : ServiceWorkerGlobalScope,
) -> ServiceWorkerRegistration =
  #| (self) => self.registration

///|
pub extern "js" fn ServiceWorkerGlobalScope::get_service_worker(
  self : ServiceWorkerGlobalScope,
) -> ServiceWorker =
  #| (self) => self.serviceWorker

///|
pub extern "js" fn ServiceWorkerGlobalScope::skip_waiting(
  self : ServiceWorkerGlobalScope,
) -> Promise[Unit] =
  #| (self) => self.skipWaiting()

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_oninstall(
  self : ServiceWorkerGlobalScope,
  handler : (ExtendableEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.oninstall = (e) => handler(e) }

///|
pub extern "js" fn ServiceWorkerGlobalScope::clear_oninstall(
  self : ServiceWorkerGlobalScope,
) -> Unit =
  #| (self) => { self.oninstall = null }

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_onactivate(
  self : ServiceWorkerGlobalScope,
  handler : (ExtendableEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onactivate = (e) => handler(e) }

///|
pub extern "js" fn ServiceWorkerGlobalScope::clear_onactivate(
  self : ServiceWorkerGlobalScope,
) -> Unit =
  #| (self) => { self.onactivate = null }

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_onfetch(
  self : ServiceWorkerGlobalScope,
  handler : (FetchEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onfetch = (e) => handler(e) }

///|
pub extern "js" fn ServiceWorkerGlobalScope::clear_onfetch(
  self : ServiceWorkerGlobalScope,
) -> Unit =
  #| (self) => { self.onfetch = null }

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_onmessage(
  self : ServiceWorkerGlobalScope,
  handler : (ExtendableMessageEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onmessage = (e) => handler(e) }

///|
pub extern "js" fn ServiceWorkerGlobalScope::clear_onmessage(
  self : ServiceWorkerGlobalScope,
) -> Unit =
  #| (self) => { self.onmessage = null }

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_onmessageerror(
  self : ServiceWorkerGlobalScope,
  handler : (ExtendableMessageEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onmessageerror = (e) => handler(e) }

///|
pub extern "js" fn ServiceWorkerGlobalScope::clear_onmessageerror(
  self : ServiceWorkerGlobalScope,
) -> Unit =
  #| (self) => { self.onmessageerror = null }

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_onpush(
  self : ServiceWorkerGlobalScope,
  handler : (PushEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpush = (e) => handler(e) }

///|
pub extern "js" fn ServiceWorkerGlobalScope::clear_onpush(
  self : ServiceWorkerGlobalScope,
) -> Unit =
  #| (self) => { self.onpush = null }

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_onpushsubscriptionchange(
  self : ServiceWorkerGlobalScope,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpushsubscriptionchange = (e) => handler(e) }

///|
pub extern "js" fn ServiceWorkerGlobalScope::clear_onpushsubscriptionchange(
  self : ServiceWorkerGlobalScope,
) -> Unit =
  #| (self) => { self.onpushsubscriptionchange = null }

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_onnotificationclick(
  self : ServiceWorkerGlobalScope,
  handler : (NotificationEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onnotificationclick = (e) => handler(e) }

///|
pub extern "js" fn ServiceWorkerGlobalScope::clear_onnotificationclick(
  self : ServiceWorkerGlobalScope,
) -> Unit =
  #| (self) => { self.onnotificationclick = null }

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_onnotificationclose(
  self : ServiceWorkerGlobalScope,
  handler : (NotificationEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onnotificationclose = (e) => handler(e) }

///|
pub extern "js" fn ServiceWorkerGlobalScope::clear_onnotificationclose(
  self : ServiceWorkerGlobalScope,
) -> Unit =
  #| (self) => { self.onnotificationclose = null }

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_oncanmakepayment(
  self : ServiceWorkerGlobalScope,
  handler : (CanMakePaymentEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.oncanmakepayment = (e) => handler(e) }

///|
pub extern "js" fn ServiceWorkerGlobalScope::clear_oncanmakepayment(
  self : ServiceWorkerGlobalScope,
) -> Unit =
  #| (self) => { self.oncanmakepayment = null }

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_onpaymentrequest(
  self : ServiceWorkerGlobalScope,
  handler : (PaymentRequestEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpaymentrequest = (e) => handler(e) }

///|
pub extern "js" fn ServiceWorkerGlobalScope::clear_onpaymentrequest(
  self : ServiceWorkerGlobalScope,
) -> Unit =
  #| (self) => { self.onpaymentrequest = null }

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_onsync(
  self : ServiceWorkerGlobalScope,
  handler : (SyncEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onsync = (e) => handler(e) }

///|
pub extern "js" fn ServiceWorkerGlobalScope::clear_onsync(
  self : ServiceWorkerGlobalScope,
) -> Unit =
  #| (self) => { self.onsync = null }

///|
pub extern "js" fn ServiceWorkerGlobalScope::get_cookie_store(
  self : ServiceWorkerGlobalScope,
) -> CookieStore =
  #| (self) => self.cookieStore

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_oncookiechange(
  self : ServiceWorkerGlobalScope,
  handler : (ExtendableCookieChangeEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.oncookiechange = (e) => handler(e) }

///|
pub extern "js" fn ServiceWorkerGlobalScope::clear_oncookiechange(
  self : ServiceWorkerGlobalScope,
) -> Unit =
  #| (self) => { self.oncookiechange = null }

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_onperiodicsync(
  self : ServiceWorkerGlobalScope,
  handler : (PeriodicSyncEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onperiodicsync = (e) => handler(e) }

///|
pub extern "js" fn ServiceWorkerGlobalScope::clear_onperiodicsync(
  self : ServiceWorkerGlobalScope,
) -> Unit =
  #| (self) => { self.onperiodicsync = null }

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_oncontentdelete(
  self : ServiceWorkerGlobalScope,
  handler : (ContentIndexEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.oncontentdelete = (e) => handler(e) }

///|
pub extern "js" fn ServiceWorkerGlobalScope::clear_oncontentdelete(
  self : ServiceWorkerGlobalScope,
) -> Unit =
  #| (self) => { self.oncontentdelete = null }

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_onbackgroundfetchsuccess(
  self : ServiceWorkerGlobalScope,
  handler : (BackgroundFetchUpdateUIEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onbackgroundfetchsuccess = (e) => handler(e) }

///|
pub extern "js" fn ServiceWorkerGlobalScope::clear_onbackgroundfetchsuccess(
  self : ServiceWorkerGlobalScope,
) -> Unit =
  #| (self) => { self.onbackgroundfetchsuccess = null }

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_onbackgroundfetchfail(
  self : ServiceWorkerGlobalScope,
  handler : (BackgroundFetchUpdateUIEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onbackgroundfetchfail = (e) => handler(e) }

///|
pub extern "js" fn ServiceWorkerGlobalScope::clear_onbackgroundfetchfail(
  self : ServiceWorkerGlobalScope,
) -> Unit =
  #| (self) => { self.onbackgroundfetchfail = null }

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_onbackgroundfetchabort(
  self : ServiceWorkerGlobalScope,
  handler : (BackgroundFetchEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onbackgroundfetchabort = (e) => handler(e) }

///|
pub extern "js" fn ServiceWorkerGlobalScope::clear_onbackgroundfetchabort(
  self : ServiceWorkerGlobalScope,
) -> Unit =
  #| (self) => { self.onbackgroundfetchabort = null }

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_onbackgroundfetchclick(
  self : ServiceWorkerGlobalScope,
  handler : (BackgroundFetchEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onbackgroundfetchclick = (e) => handler(e) }

///|
pub extern "js" fn ServiceWorkerGlobalScope::clear_onbackgroundfetchclick(
  self : ServiceWorkerGlobalScope,
) -> Unit =
  #| (self) => { self.onbackgroundfetchclick = null }

///|
/// Client interface
pub type Client

///|
pub extern "js" fn Client::to_js_value(self : Client) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Client (unchecked)
pub extern "js" fn Client::from_js_value(v : JsValue) -> Client =
  #| (v) => v

///|
/// Safely cast JsValue to Client (checked with instanceof)
pub extern "js" fn Client::from_js_value_opt(v : JsValue) -> Client? =
  #| (v) => (v instanceof Client) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Client (checked with instanceof)
pub extern "js" fn JsValue::as_client(self : JsValue) -> Client? =
  #| (self) => (self instanceof Client) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Client (unchecked)
pub extern "js" fn JsValue::to_client(self : JsValue) -> Client =
  #| (self) => self

///|
pub extern "js" fn Client::as_window_client(self : Client) -> WindowClient? =
  #| (self) => (self instanceof WindowClient) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Client::get_url(self : Client) -> String =
  #| (self) => self.url

///|
pub extern "js" fn Client::get_frame_type(self : Client) -> FrameType =
  #| (self) => ['auxiliary', 'top-level', 'nested', 'none'].indexOf(self.frameType)

///|
pub extern "js" fn Client::get_id(self : Client) -> String =
  #| (self) => self.id

///|
pub extern "js" fn Client::get_type(self : Client) -> ClientType =
  #| (self) => ['window', 'worker', 'sharedworker', 'all'].indexOf(self.type)

///|
pub extern "js" fn Client::post_message(
  self : Client,
  message : JsValue,
) -> Unit =
  #| (self, message) => self.postMessage(message)

///|
extern "js" fn Client::post_message_with_options_ffi(
  self : Client,
  message : JsValue,
  options : JsValue,
) -> Unit =
  #| (self, message, options) => self.postMessage(message, options)

///|
pub fn Client::post_message_with_options(
  self : Client,
  message : JsValue,
  options : StructuredSerializeOptions,
) -> Unit {
  Client::post_message_with_options_ffi(self, message, options.to_js())
}

///|
pub extern "js" fn Client::post_message_with_message_and_transfer(
  self : Client,
  message : JsValue,
  transfer : Array[JsValue],
) -> Unit =
  #| (self, message, transfer) => self.postMessage(message, transfer)

///|
pub extern "js" fn Client::get_lifecycle_state(
  self : Client,
) -> ClientLifecycleState =
  #| (self) => ['active', 'frozen'].indexOf(self.lifecycleState)

///|
/// WindowClient interface
pub type WindowClient

///|
pub extern "js" fn WindowClient::to_js_value(self : WindowClient) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WindowClient (unchecked)
pub extern "js" fn WindowClient::from_js_value(v : JsValue) -> WindowClient =
  #| (v) => v

///|
/// Safely cast JsValue to WindowClient (checked with instanceof)
pub extern "js" fn WindowClient::from_js_value_opt(
  v : JsValue,
) -> WindowClient? =
  #| (v) => (v instanceof WindowClient) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WindowClient (checked with instanceof)
pub extern "js" fn JsValue::as_window_client(self : JsValue) -> WindowClient? =
  #| (self) => (self instanceof WindowClient) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WindowClient (unchecked)
pub extern "js" fn JsValue::to_window_client(self : JsValue) -> WindowClient =
  #| (self) => self

///|
pub extern "js" fn WindowClient::to_client(self : WindowClient) -> Client =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum WindowClientFocusError {
  InvalidAccessError(JsError)
  OtherError(JsError)
}

///|
pub extern "js" fn WindowClient::get_visibility_state(
  self : WindowClient,
) -> DocumentVisibilityState =
  #| (self) => ['visible', 'hidden'].indexOf(self.visibilityState)

///|
pub extern "js" fn WindowClient::get_focused(self : WindowClient) -> Bool =
  #| (self) => self.focused

///|
pub extern "js" fn WindowClient::get_ancestor_origins(
  self : WindowClient,
) -> Array[String] =
  #| (self) => self.ancestorOrigins

///|
pub extern "js" fn WindowClient::focus(
  self : WindowClient,
) -> Promise[Result[WindowClient, WindowClientFocusError]] =
  #| (self) => self.focus().then(v => ({ $tag: 1, _0: v })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'InvalidAccessError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }))

///|
pub extern "js" fn WindowClient::navigate(
  self : WindowClient,
  url : String,
) -> Promise[WindowClient?] =
  #| (self, url) => self.navigate(url)

///|
/// Clients interface
pub type Clients

///|
pub extern "js" fn Clients::to_js_value(self : Clients) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Clients (unchecked)
pub extern "js" fn Clients::from_js_value(v : JsValue) -> Clients =
  #| (v) => v

///|
/// Safely cast JsValue to Clients (checked with instanceof)
pub extern "js" fn Clients::from_js_value_opt(v : JsValue) -> Clients? =
  #| (v) => (v instanceof Clients) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Clients (checked with instanceof)
pub extern "js" fn JsValue::as_clients(self : JsValue) -> Clients? =
  #| (self) => (self instanceof Clients) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Clients (unchecked)
pub extern "js" fn JsValue::to_clients(self : JsValue) -> Clients =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum ClientsOpenWindowError {
  InvalidAccessError(JsError)
  OtherError(JsError)
}

///|
pub extern "js" fn Clients::get(
  self : Clients,
  id : String,
) -> Promise[ClientOrVoid] =
  #| (self, id) => self.get(id)

///|
pub extern "js" fn Clients::match_all(self : Clients) -> Promise[Array[Client]] =
  #| (self) => self.matchAll()

///|
extern "js" fn Clients::match_all_with_options_ffi(
  self : Clients,
  options : JsValue,
) -> Promise[Array[Client]] =
  #| (self, options) => self.matchAll(options)

///|
pub fn Clients::match_all_with_options(
  self : Clients,
  options : ClientQueryOptions,
) -> Promise[Array[Client]] {
  Clients::match_all_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn Clients::open_window(
  self : Clients,
  url : String,
) -> Promise[Result[WindowClient?, ClientsOpenWindowError]] =
  #| (self, url) => self.openWindow(url).then(v => ({ $tag: 1, _0: (() => { const v = v; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })() })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'InvalidAccessError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }))

///|
pub extern "js" fn Clients::claim(self : Clients) -> Promise[Unit] =
  #| (self) => self.claim()

///|
/// ExtendableEvent interface
pub type ExtendableEvent

///|
pub extern "js" fn ExtendableEvent::to_js_value(
  self : ExtendableEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ExtendableEvent (unchecked)
pub extern "js" fn ExtendableEvent::from_js_value(
  v : JsValue,
) -> ExtendableEvent =
  #| (v) => v

///|
/// Safely cast JsValue to ExtendableEvent (checked with instanceof)
pub extern "js" fn ExtendableEvent::from_js_value_opt(
  v : JsValue,
) -> ExtendableEvent? =
  #| (v) => (v instanceof ExtendableEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ExtendableEvent (checked with instanceof)
pub extern "js" fn JsValue::as_extendable_event(
  self : JsValue,
) -> ExtendableEvent? =
  #| (self) => (self instanceof ExtendableEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ExtendableEvent (unchecked)
pub extern "js" fn JsValue::to_extendable_event(
  self : JsValue,
) -> ExtendableEvent =
  #| (self) => self

///|
pub extern "js" fn ExtendableEvent::to_event(self : ExtendableEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn ExtendableEvent::as_push_event(
  self : ExtendableEvent,
) -> PushEvent? =
  #| (self) => (self instanceof PushEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn ExtendableEvent::as_push_subscription_change_event(
  self : ExtendableEvent,
) -> PushSubscriptionChangeEvent? =
  #| (self) => (self instanceof PushSubscriptionChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn ExtendableEvent::as_notification_event(
  self : ExtendableEvent,
) -> NotificationEvent? =
  #| (self) => (self instanceof NotificationEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn ExtendableEvent::as_can_make_payment_event(
  self : ExtendableEvent,
) -> CanMakePaymentEvent? =
  #| (self) => (self instanceof CanMakePaymentEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn ExtendableEvent::as_payment_request_event(
  self : ExtendableEvent,
) -> PaymentRequestEvent? =
  #| (self) => (self instanceof PaymentRequestEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn ExtendableEvent::as_sync_event(
  self : ExtendableEvent,
) -> SyncEvent? =
  #| (self) => (self instanceof SyncEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn ExtendableEvent::as_install_event(
  self : ExtendableEvent,
) -> InstallEvent? =
  #| (self) => (self instanceof InstallEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn ExtendableEvent::as_fetch_event(
  self : ExtendableEvent,
) -> FetchEvent? =
  #| (self) => (self instanceof FetchEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn ExtendableEvent::as_extendable_message_event(
  self : ExtendableEvent,
) -> ExtendableMessageEvent? =
  #| (self) => (self instanceof ExtendableMessageEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn ExtendableEvent::as_extendable_cookie_change_event(
  self : ExtendableEvent,
) -> ExtendableCookieChangeEvent? =
  #| (self) => (self instanceof ExtendableCookieChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn ExtendableEvent::as_periodic_sync_event(
  self : ExtendableEvent,
) -> PeriodicSyncEvent? =
  #| (self) => (self instanceof PeriodicSyncEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn ExtendableEvent::as_content_index_event(
  self : ExtendableEvent,
) -> ContentIndexEvent? =
  #| (self) => (self instanceof ContentIndexEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn ExtendableEvent::as_background_fetch_event(
  self : ExtendableEvent,
) -> BackgroundFetchEvent? =
  #| (self) => (self instanceof BackgroundFetchEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn ExtendableEvent::as_background_fetch_update_ui_event(
  self : ExtendableEvent,
) -> BackgroundFetchUpdateUIEvent? =
  #| (self) => (self instanceof BackgroundFetchUpdateUIEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn ExtendableEvent::new(type_ : String) -> ExtendableEvent =
  #| (type_) => new ExtendableEvent(type_)

///|
extern "js" fn ExtendableEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> ExtendableEvent =
  #| (type_, event_init_dict) => new ExtendableEvent(type_, event_init_dict)

///|
pub fn ExtendableEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : ExtendableEventInit,
) -> ExtendableEvent {
  ExtendableEvent::new_with_event_init_dict_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn ExtendableEvent::wait_until(
  self : ExtendableEvent,
  f : Promise[JsValue],
) -> Unit =
  #| (self, f) => self.waitUntil(f)

///|
/// InstallEvent interface
pub type InstallEvent

///|
pub extern "js" fn InstallEvent::to_js_value(self : InstallEvent) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to InstallEvent (unchecked)
pub extern "js" fn InstallEvent::from_js_value(v : JsValue) -> InstallEvent =
  #| (v) => v

///|
/// Safely cast JsValue to InstallEvent (checked with instanceof)
pub extern "js" fn InstallEvent::from_js_value_opt(
  v : JsValue,
) -> InstallEvent? =
  #| (v) => (v instanceof InstallEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to InstallEvent (checked with instanceof)
pub extern "js" fn JsValue::as_install_event(self : JsValue) -> InstallEvent? =
  #| (self) => (self instanceof InstallEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to InstallEvent (unchecked)
pub extern "js" fn JsValue::to_install_event(self : JsValue) -> InstallEvent =
  #| (self) => self

///|
pub extern "js" fn InstallEvent::to_extendable_event(
  self : InstallEvent,
) -> ExtendableEvent =
  #| (self) => self

///|
pub extern "js" fn InstallEvent::to_event(self : InstallEvent) -> Event =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum InstallEventAddRoutesError {
  TypeError(JsError)
  OtherError(JsError)
}

///|
pub extern "js" fn InstallEvent::new(type_ : String) -> InstallEvent =
  #| (type_) => new InstallEvent(type_)

///|
extern "js" fn InstallEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> InstallEvent =
  #| (type_, event_init_dict) => new InstallEvent(type_, event_init_dict)

///|
pub fn InstallEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : ExtendableEventInit,
) -> InstallEvent {
  InstallEvent::new_with_event_init_dict_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn InstallEvent::add_routes(
  self : InstallEvent,
  rules : RouterRuleOrArrayOfRouterRule,
) -> Promise[Result[Unit, InstallEventAddRoutesError]] =
  #| (self, rules) => self.addRoutes(rules).then(v => ({ $tag: 1, _0: undefined })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }))

///|
/// FetchEvent interface
pub type FetchEvent

///|
pub extern "js" fn FetchEvent::to_js_value(self : FetchEvent) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to FetchEvent (unchecked)
pub extern "js" fn FetchEvent::from_js_value(v : JsValue) -> FetchEvent =
  #| (v) => v

///|
/// Safely cast JsValue to FetchEvent (checked with instanceof)
pub extern "js" fn FetchEvent::from_js_value_opt(v : JsValue) -> FetchEvent? =
  #| (v) => (v instanceof FetchEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to FetchEvent (checked with instanceof)
pub extern "js" fn JsValue::as_fetch_event(self : JsValue) -> FetchEvent? =
  #| (self) => (self instanceof FetchEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to FetchEvent (unchecked)
pub extern "js" fn JsValue::to_fetch_event(self : JsValue) -> FetchEvent =
  #| (self) => self

///|
pub extern "js" fn FetchEvent::to_extendable_event(
  self : FetchEvent,
) -> ExtendableEvent =
  #| (self) => self

///|
pub extern "js" fn FetchEvent::to_event(self : FetchEvent) -> Event =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum FetchEventRespondWithError {
  NetworkError(JsError)
  InvalidStateError(JsError)
  OtherError(JsError)
}

///|
extern "js" fn FetchEvent::new_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> FetchEvent =
  #| (type_, event_init_dict) => new FetchEvent(type_, event_init_dict)

///|
pub fn FetchEvent::new(
  type_ : String,
  event_init_dict : FetchEventInit,
) -> FetchEvent {
  FetchEvent::new_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn FetchEvent::get_request(self : FetchEvent) -> Request =
  #| (self) => self.request

///|
pub extern "js" fn FetchEvent::get_preload_response(
  self : FetchEvent,
) -> Promise[JsValue] =
  #| (self) => self.preloadResponse

///|
pub extern "js" fn FetchEvent::get_client_id(self : FetchEvent) -> String =
  #| (self) => self.clientId

///|
pub extern "js" fn FetchEvent::get_resulting_client_id(
  self : FetchEvent,
) -> String =
  #| (self) => self.resultingClientId

///|
pub extern "js" fn FetchEvent::get_replaces_client_id(
  self : FetchEvent,
) -> String =
  #| (self) => self.replacesClientId

///|
pub extern "js" fn FetchEvent::get_handled(self : FetchEvent) -> Promise[Unit] =
  #| (self) => self.handled

///|
pub extern "js" fn FetchEvent::respond_with(
  self : FetchEvent,
  r : Promise[Response],
) -> Result[Unit, FetchEventRespondWithError] =
  #| (self, r) => (() => { try { self.respondWith(r); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NetworkError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }; } })()

///|
/// ExtendableMessageEvent interface
pub type ExtendableMessageEvent

///|
pub extern "js" fn ExtendableMessageEvent::to_js_value(
  self : ExtendableMessageEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ExtendableMessageEvent (unchecked)
pub extern "js" fn ExtendableMessageEvent::from_js_value(
  v : JsValue,
) -> ExtendableMessageEvent =
  #| (v) => v

///|
/// Safely cast JsValue to ExtendableMessageEvent (checked with instanceof)
pub extern "js" fn ExtendableMessageEvent::from_js_value_opt(
  v : JsValue,
) -> ExtendableMessageEvent? =
  #| (v) => (v instanceof ExtendableMessageEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ExtendableMessageEvent (checked with instanceof)
pub extern "js" fn JsValue::as_extendable_message_event(
  self : JsValue,
) -> ExtendableMessageEvent? =
  #| (self) => (self instanceof ExtendableMessageEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ExtendableMessageEvent (unchecked)
pub extern "js" fn JsValue::to_extendable_message_event(
  self : JsValue,
) -> ExtendableMessageEvent =
  #| (self) => self

///|
pub extern "js" fn ExtendableMessageEvent::to_extendable_event(
  self : ExtendableMessageEvent,
) -> ExtendableEvent =
  #| (self) => self

///|
pub extern "js" fn ExtendableMessageEvent::to_event(
  self : ExtendableMessageEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn ExtendableMessageEvent::new(
  type_ : String,
) -> ExtendableMessageEvent =
  #| (type_) => new ExtendableMessageEvent(type_)

///|
extern "js" fn ExtendableMessageEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> ExtendableMessageEvent =
  #| (type_, event_init_dict) => new ExtendableMessageEvent(type_, event_init_dict)

///|
pub fn ExtendableMessageEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : ExtendableMessageEventInit,
) -> ExtendableMessageEvent {
  ExtendableMessageEvent::new_with_event_init_dict_ffi(
    type_,
    event_init_dict.to_js(),
  )
}

///|
pub extern "js" fn ExtendableMessageEvent::get_data(
  self : ExtendableMessageEvent,
) -> JsValue =
  #| (self) => self.data

///|
pub extern "js" fn ExtendableMessageEvent::get_origin(
  self : ExtendableMessageEvent,
) -> String =
  #| (self) => self.origin

///|
pub extern "js" fn ExtendableMessageEvent::get_last_event_id(
  self : ExtendableMessageEvent,
) -> String =
  #| (self) => self.lastEventId

///|
pub extern "js" fn ExtendableMessageEvent::get_source(
  self : ExtendableMessageEvent,
) -> ClientOrServiceWorkerOrMessagePort =
  #| (self) => self.source

///|
pub extern "js" fn ExtendableMessageEvent::get_ports(
  self : ExtendableMessageEvent,
) -> Array[MessagePort] =
  #| (self) => self.ports

///|
/// Cache interface
pub type Cache

///|
pub extern "js" fn Cache::to_js_value(self : Cache) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Cache (unchecked)
pub extern "js" fn Cache::from_js_value(v : JsValue) -> Cache =
  #| (v) => v

///|
/// Safely cast JsValue to Cache (checked with instanceof)
pub extern "js" fn Cache::from_js_value_opt(v : JsValue) -> Cache? =
  #| (v) => (v instanceof Cache) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Cache (checked with instanceof)
pub extern "js" fn JsValue::as_cache(self : JsValue) -> Cache? =
  #| (self) => (self instanceof Cache) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Cache (unchecked)
pub extern "js" fn JsValue::to_cache(self : JsValue) -> Cache =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum CacheAddError {
  TypeError(JsError)
  OtherError(JsError)
}

///|
/// Error type for throwing methods
pub(all) enum CacheAddAllError {
  TypeError(JsError)
  OtherError(JsError)
}

///|
/// Error type for throwing methods
pub(all) enum CachePutError {
  TypeError(JsError)
  OtherError(JsError)
}

///|
pub extern "js" fn Cache::match_(
  self : Cache,
  request : RequestInfo,
) -> Promise[ResponseOrVoid] =
  #| (self, request) => self.match(request)

///|
extern "js" fn Cache::match__with_options_ffi(
  self : Cache,
  request : RequestInfo,
  options : JsValue,
) -> Promise[ResponseOrVoid] =
  #| (self, request, options) => self.match(request, options)

///|
pub fn Cache::match__with_options(
  self : Cache,
  request : RequestInfo,
  options : CacheQueryOptions,
) -> Promise[ResponseOrVoid] {
  Cache::match__with_options_ffi(self, request, options.to_js())
}

///|
pub extern "js" fn Cache::match_all(self : Cache) -> Promise[Array[Response]] =
  #| (self) => self.matchAll()

///|
extern "js" fn Cache::match_all_with_options_ffi(
  self : Cache,
  request : RequestInfo,
  options : JsValue,
) -> Promise[Array[Response]] =
  #| (self, request, options) => self.matchAll(request, options)

///|
pub fn Cache::match_all_with_options(
  self : Cache,
  request : RequestInfo,
  options : CacheQueryOptions,
) -> Promise[Array[Response]] {
  Cache::match_all_with_options_ffi(self, request, options.to_js())
}

///|
pub extern "js" fn Cache::add(
  self : Cache,
  request : RequestInfo,
) -> Promise[Result[Unit, CacheAddError]] =
  #| (self, request) => self.add(request).then(v => ({ $tag: 1, _0: undefined })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }))

///|
pub extern "js" fn Cache::add_all(
  self : Cache,
  requests : Array[RequestInfo],
) -> Promise[Result[Unit, CacheAddAllError]] =
  #| (self, requests) => self.addAll(requests).then(v => ({ $tag: 1, _0: undefined })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }))

///|
pub extern "js" fn Cache::put(
  self : Cache,
  request : RequestInfo,
  response : Response,
) -> Promise[Result[Unit, CachePutError]] =
  #| (self, request, response) => self.put(request, response).then(v => ({ $tag: 1, _0: undefined })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }))

///|
pub extern "js" fn Cache::delete(
  self : Cache,
  request : RequestInfo,
) -> Promise[Bool] =
  #| (self, request) => self.delete(request)

///|
extern "js" fn Cache::delete_with_options_ffi(
  self : Cache,
  request : RequestInfo,
  options : JsValue,
) -> Promise[Bool] =
  #| (self, request, options) => self.delete(request, options)

///|
pub fn Cache::delete_with_options(
  self : Cache,
  request : RequestInfo,
  options : CacheQueryOptions,
) -> Promise[Bool] {
  Cache::delete_with_options_ffi(self, request, options.to_js())
}

///|
pub extern "js" fn Cache::keys(self : Cache) -> Promise[Array[Request]] =
  #| (self) => self.keys()

///|
extern "js" fn Cache::keys_with_options_ffi(
  self : Cache,
  request : RequestInfo,
  options : JsValue,
) -> Promise[Array[Request]] =
  #| (self, request, options) => self.keys(request, options)

///|
pub fn Cache::keys_with_options(
  self : Cache,
  request : RequestInfo,
  options : CacheQueryOptions,
) -> Promise[Array[Request]] {
  Cache::keys_with_options_ffi(self, request, options.to_js())
}

///|
pub extern "js" fn Cache::match__with_request(
  self : Cache,
  request : Request,
  options : CacheQueryOptions,
) -> Promise[ResponseOrVoid] =
  #| (self, request, options) => self.match(request, options)

///|
pub extern "js" fn Cache::match__with_string(
  self : Cache,
  request : String,
  options : CacheQueryOptions,
) -> Promise[ResponseOrVoid] =
  #| (self, request, options) => self.match(request, options)

///|
pub extern "js" fn Cache::match_all_with_request(
  self : Cache,
  request : Request,
  options : CacheQueryOptions,
) -> Promise[Array[Response]] =
  #| (self, request, options) => self.matchAll(request, options)

///|
pub extern "js" fn Cache::match_all_with_string(
  self : Cache,
  request : String,
  options : CacheQueryOptions,
) -> Promise[Array[Response]] =
  #| (self, request, options) => self.matchAll(request, options)

///|
pub extern "js" fn Cache::add_with_request(
  self : Cache,
  request : Request,
) -> Promise[Result[Unit, CacheAddError]] =
  #| (self, request) => self.add(request).then(v => ({ $tag: 1, _0: undefined })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }))

///|
pub extern "js" fn Cache::add_with_string(
  self : Cache,
  request : String,
) -> Promise[Result[Unit, CacheAddError]] =
  #| (self, request) => self.add(request).then(v => ({ $tag: 1, _0: undefined })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }))

///|
pub extern "js" fn Cache::put_with_request(
  self : Cache,
  request : Request,
  response : Response,
) -> Promise[Result[Unit, CachePutError]] =
  #| (self, request, response) => self.put(request, response).then(v => ({ $tag: 1, _0: undefined })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }))

///|
pub extern "js" fn Cache::put_with_string(
  self : Cache,
  request : String,
  response : Response,
) -> Promise[Result[Unit, CachePutError]] =
  #| (self, request, response) => self.put(request, response).then(v => ({ $tag: 1, _0: undefined })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }))

///|
pub extern "js" fn Cache::delete_with_request(
  self : Cache,
  request : Request,
  options : CacheQueryOptions,
) -> Promise[Bool] =
  #| (self, request, options) => self.delete(request, options)

///|
pub extern "js" fn Cache::delete_with_string(
  self : Cache,
  request : String,
  options : CacheQueryOptions,
) -> Promise[Bool] =
  #| (self, request, options) => self.delete(request, options)

///|
pub extern "js" fn Cache::keys_with_request(
  self : Cache,
  request : Request,
  options : CacheQueryOptions,
) -> Promise[Array[Request]] =
  #| (self, request, options) => self.keys(request, options)

///|
pub extern "js" fn Cache::keys_with_string(
  self : Cache,
  request : String,
  options : CacheQueryOptions,
) -> Promise[Array[Request]] =
  #| (self, request, options) => self.keys(request, options)

///|
/// CacheStorage interface
pub type CacheStorage

///|
pub extern "js" fn CacheStorage::to_js_value(self : CacheStorage) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CacheStorage (unchecked)
pub extern "js" fn CacheStorage::from_js_value(v : JsValue) -> CacheStorage =
  #| (v) => v

///|
/// Safely cast JsValue to CacheStorage (checked with instanceof)
pub extern "js" fn CacheStorage::from_js_value_opt(
  v : JsValue,
) -> CacheStorage? =
  #| (v) => (v instanceof CacheStorage) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CacheStorage (checked with instanceof)
pub extern "js" fn JsValue::as_cache_storage(self : JsValue) -> CacheStorage? =
  #| (self) => (self instanceof CacheStorage) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CacheStorage (unchecked)
pub extern "js" fn JsValue::to_cache_storage(self : JsValue) -> CacheStorage =
  #| (self) => self

///|
pub extern "js" fn CacheStorage::match_(
  self : CacheStorage,
  request : RequestInfo,
) -> Promise[ResponseOrVoid] =
  #| (self, request) => self.match(request)

///|
extern "js" fn CacheStorage::match__with_options_ffi(
  self : CacheStorage,
  request : RequestInfo,
  options : JsValue,
) -> Promise[ResponseOrVoid] =
  #| (self, request, options) => self.match(request, options)

///|
pub fn CacheStorage::match__with_options(
  self : CacheStorage,
  request : RequestInfo,
  options : MultiCacheQueryOptions,
) -> Promise[ResponseOrVoid] {
  CacheStorage::match__with_options_ffi(self, request, options.to_js())
}

///|
pub extern "js" fn CacheStorage::has(
  self : CacheStorage,
  cache_name : String,
) -> Promise[Bool] =
  #| (self, cache_name) => self.has(cache_name)

///|
pub extern "js" fn CacheStorage::open(
  self : CacheStorage,
  cache_name : String,
) -> Promise[Cache] =
  #| (self, cache_name) => self.open(cache_name)

///|
pub extern "js" fn CacheStorage::delete(
  self : CacheStorage,
  cache_name : String,
) -> Promise[Bool] =
  #| (self, cache_name) => self.delete(cache_name)

///|
pub extern "js" fn CacheStorage::keys(
  self : CacheStorage,
) -> Promise[Array[String]] =
  #| (self) => self.keys()

///|
pub extern "js" fn CacheStorage::match__with_request(
  self : CacheStorage,
  request : Request,
  options : MultiCacheQueryOptions,
) -> Promise[ResponseOrVoid] =
  #| (self, request, options) => self.match(request, options)

///|
pub extern "js" fn CacheStorage::match__with_string(
  self : CacheStorage,
  request : String,
  options : MultiCacheQueryOptions,
) -> Promise[ResponseOrVoid] =
  #| (self, request, options) => self.match(request, options)
