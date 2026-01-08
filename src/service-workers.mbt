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
/// ServiceWorkerState enum
pub(all) enum ServiceWorkerState {
  Parsed
  Installing
  Installed
  Activating
  Activated
  Redundant
}

///|
/// Convert to string value
pub fn ServiceWorkerState::to_string(self : ServiceWorkerState) -> String {
  match self {
    Parsed => "parsed"
    Installing => "installing"
    Installed => "installed"
    Activating => "activating"
    Activated => "activated"
    Redundant => "redundant"
  }
}

///|
/// Parse from string value
pub fn ServiceWorkerState::from_string(s : String) -> ServiceWorkerState? {
  match s {
    "parsed" => Some(Parsed)
    "installing" => Some(Installing)
    "installed" => Some(Installed)
    "activating" => Some(Activating)
    "activated" => Some(Activated)
    "redundant" => Some(Redundant)
    _ => None
  }
}

///|
/// ServiceWorkerUpdateViaCache enum
pub(all) enum ServiceWorkerUpdateViaCache {
  Imports
  All
  None
}

///|
/// Convert to string value
pub fn ServiceWorkerUpdateViaCache::to_string(
  self : ServiceWorkerUpdateViaCache,
) -> String {
  match self {
    Imports => "imports"
    All => "all"
    None => "none"
  }
}

///|
/// Parse from string value
pub fn ServiceWorkerUpdateViaCache::from_string(
  s : String,
) -> ServiceWorkerUpdateViaCache? {
  match s {
    "imports" => Some(Imports)
    "all" => Some(All)
    "none" => Some(None)
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
}

///|
/// Convert to string value
pub fn FrameType::to_string(self : FrameType) -> String {
  match self {
    Auxiliary => "auxiliary"
    TopLevel => "top-level"
    Nested => "nested"
    None => "none"
  }
}

///|
/// Parse from string value
pub fn FrameType::from_string(s : String) -> FrameType? {
  match s {
    "auxiliary" => Some(Auxiliary)
    "top-level" => Some(TopLevel)
    "nested" => Some(Nested)
    "none" => Some(None)
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
}

///|
/// Convert to string value
pub fn ClientType::to_string(self : ClientType) -> String {
  match self {
    Window => "window"
    Worker => "worker"
    Sharedworker => "sharedworker"
    All => "all"
  }
}

///|
/// Parse from string value
pub fn ClientType::from_string(s : String) -> ClientType? {
  match s {
    "window" => Some(Window)
    "worker" => Some(Worker)
    "sharedworker" => Some(Sharedworker)
    "all" => Some(All)
    _ => None
  }
}

///|
/// RunningStatus enum
pub(all) enum RunningStatus {
  Running
  NotRunning
}

///|
/// Convert to string value
pub fn RunningStatus::to_string(self : RunningStatus) -> String {
  match self {
    Running => "running"
    NotRunning => "not-running"
  }
}

///|
/// Parse from string value
pub fn RunningStatus::from_string(s : String) -> RunningStatus? {
  match s {
    "running" => Some(Running)
    "not-running" => Some(NotRunning)
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
}

///|
/// Convert to string value
pub fn RouterSourceEnum::to_string(self : RouterSourceEnum) -> String {
  match self {
    Cache => "cache"
    FetchEvent => "fetch-event"
    Network => "network"
    RaceNetworkAndFetchHandler => "race-network-and-fetch-handler"
  }
}

///|
/// Parse from string value
pub fn RouterSourceEnum::from_string(s : String) -> RouterSourceEnum? {
  match s {
    "cache" => Some(Cache)
    "fetch-event" => Some(FetchEvent)
    "network" => Some(Network)
    "race-network-and-fetch-handler" => Some(RaceNetworkAndFetchHandler)
    _ => None
  }
}

///|
/// RegistrationOptions dictionary
pub struct RegistrationOptions {
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
/// Convert to JsValue
pub extern "js" fn RegistrationOptions::to_js(
  self : RegistrationOptions,
) -> JsValue =
  #| (self) => ({
  #|   scope: self.scope,
  #|   type: ['classic', 'module'][self.type_],
  #|   updateViaCache: ['imports', 'all', 'none'][self.updateViaCache]
  #| })

///|
/// NavigationPreloadState dictionary
pub struct NavigationPreloadState {
  enabled : Bool?
  headerValue : String?
}

///|
/// Create a new NavigationPreloadState with default values
pub fn NavigationPreloadState::default() -> NavigationPreloadState {
  NavigationPreloadState::{ enabled: None, headerValue: None }
}

///|
/// Convert to JsValue
pub extern "js" fn NavigationPreloadState::to_js(
  self : NavigationPreloadState,
) -> JsValue =
  #| (self) => ({
  #|   enabled: self.enabled,
  #|   headerValue: self.headerValue
  #| })

///|
/// ClientQueryOptions dictionary
pub struct ClientQueryOptions {
  includeUncontrolled : Bool?
  type_ : ClientType?
}

///|
/// Create a new ClientQueryOptions with default values
pub fn ClientQueryOptions::default() -> ClientQueryOptions {
  ClientQueryOptions::{ includeUncontrolled: None, type_: None }
}

///|
/// Convert to JsValue
pub extern "js" fn ClientQueryOptions::to_js(
  self : ClientQueryOptions,
) -> JsValue =
  #| (self) => ({
  #|   includeUncontrolled: self.includeUncontrolled,
  #|   type: ['window', 'worker', 'sharedworker', 'all'][self.type_]
  #| })

///|
/// ExtendableEventInit dictionary
pub struct ExtendableEventInit {}

///|
/// Create a new ExtendableEventInit with default values
pub fn ExtendableEventInit::default() -> ExtendableEventInit {
  ExtendableEventInit::{  }
}

///|
/// Convert to JsValue
pub extern "js" fn ExtendableEventInit::to_js(
  self : ExtendableEventInit,
) -> JsValue =
  #| (self) => ({
  #| })

///|
/// RouterRule dictionary
pub struct RouterRule {
  condition : RouterCondition
  source : RouterSource
}

///|
/// Create a new RouterRule with default values
pub fn RouterRule::default() -> RouterRule {
  RouterRule::{ condition: panic(), source: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn RouterRule::to_js(self : RouterRule) -> JsValue =
  #| (self) => ({
  #|   condition: self.condition,
  #|   source: self.source.to_js_value()
  #| })

///|
/// RouterCondition dictionary
pub struct RouterCondition {
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
/// Convert to JsValue
pub extern "js" fn RouterCondition::to_js(self : RouterCondition) -> JsValue =
  #| (self) => ({
  #|   urlPattern: self.urlPattern.to_js_value(),
  #|   requestMethod: self.requestMethod,
  #|   requestMode: ['navigate', 'same-origin', 'no-cors', 'cors'][self.requestMode],
  #|   requestDestination: ['', 'audio', 'audioworklet', 'document', 'embed', 'font', 'frame', 'iframe', 'image', 'json', 'manifest', 'object', 'paintworklet', 'report', 'script', 'sharedworker', 'style', 'track', 'video', 'worker', 'xslt'][self.requestDestination],
  #|   runningStatus: ['running', 'not-running'][self.runningStatus],
  #|   or: self.or,
  #|   not: self.not
  #| })

///|
/// RouterSourceDict dictionary
pub struct RouterSourceDict {
  cacheName : String?
}

///|
/// Create a new RouterSourceDict with default values
pub fn RouterSourceDict::default() -> RouterSourceDict {
  RouterSourceDict::{ cacheName: None }
}

///|
/// Convert to JsValue
pub extern "js" fn RouterSourceDict::to_js(self : RouterSourceDict) -> JsValue =
  #| (self) => ({
  #|   cacheName: self.cacheName
  #| })

///|
/// FetchEventInit dictionary
pub struct FetchEventInit {
  request : Request
  preloadResponse : Promise[JsValue]?
  clientId : String?
  resultingClientId : String?
  replacesClientId : String?
  handled : Promise[Unit]?
}

///|
/// Create a new FetchEventInit with default values
pub fn FetchEventInit::default() -> FetchEventInit {
  FetchEventInit::{
    request: panic(),
    preloadResponse: None,
    clientId: None,
    resultingClientId: None,
    replacesClientId: None,
    handled: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn FetchEventInit::to_js(self : FetchEventInit) -> JsValue =
  #| (self) => ({
  #|   request: self.request,
  #|   preloadResponse: self.preloadResponse,
  #|   clientId: self.clientId,
  #|   resultingClientId: self.resultingClientId,
  #|   replacesClientId: self.replacesClientId,
  #|   handled: self.handled
  #| })

///|
/// ExtendableMessageEventInit dictionary
pub struct ExtendableMessageEventInit {
  data : JsValue?
  origin : String?
  lastEventId : String?
  source : JsValue?
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
/// Convert to JsValue
pub extern "js" fn ExtendableMessageEventInit::to_js(
  self : ExtendableMessageEventInit,
) -> JsValue =
  #| (self) => ({
  #|   data: self.data,
  #|   origin: self.origin,
  #|   lastEventId: self.lastEventId,
  #|   source: self.source,
  #|   ports: self.ports
  #| })

///|
/// CacheQueryOptions dictionary
pub struct CacheQueryOptions {
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
/// Convert to JsValue
pub extern "js" fn CacheQueryOptions::to_js(
  self : CacheQueryOptions,
) -> JsValue =
  #| (self) => ({
  #|   ignoreSearch: self.ignoreSearch,
  #|   ignoreMethod: self.ignoreMethod,
  #|   ignoreVary: self.ignoreVary
  #| })

///|
/// MultiCacheQueryOptions dictionary
pub struct MultiCacheQueryOptions {
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
/// Convert to JsValue
pub extern "js" fn MultiCacheQueryOptions::to_js(
  self : MultiCacheQueryOptions,
) -> JsValue =
  #| (self) => ({
  #|   ignoreSearch: self.ignoreSearch,
  #|   ignoreMethod: self.ignoreMethod,
  #|   ignoreVary: self.ignoreVary,
  #|   cacheName: self.cacheName
  #| })

///|
/// ServiceWorker interface
pub type ServiceWorker

///|
pub extern "js" fn ServiceWorker::to_js_value(self : ServiceWorker) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn ServiceWorker::get_script_u_r_l(
  self : ServiceWorker,
) -> String =
  #| (self) => self.scriptURL

///|
pub extern "js" fn ServiceWorker::get_state(
  self : ServiceWorker,
) -> ServiceWorkerState =
  #| (self) => self.state

///|
pub extern "js" fn ServiceWorker::post_message(
  self : ServiceWorker,
  message : JsValue,
) -> Unit =
  #| (self, message) => self.postMessage(message)

///|
pub extern "js" fn ServiceWorker::post_message_with_options(
  self : ServiceWorker,
  message : JsValue,
  options : StructuredSerializeOptions,
) -> Unit =
  #| (self, message, options) => self.postMessage(message, options)

///|
pub extern "js" fn ServiceWorker::post_message_with_message_and_transfer(
  self : ServiceWorker,
  message : JsValue,
  transfer : Array[JsValue],
) -> Unit =
  #| (self, message, transfer) => self.postMessage(message, transfer)

///|
pub extern "js" fn ServiceWorker::get_onstatechange(
  self : ServiceWorker,
) -> EventHandler =
  #| (self) => self.onstatechange

///|
pub extern "js" fn ServiceWorker::set_onstatechange(
  self : ServiceWorker,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onstatechange = value }

///|
pub extern "js" fn ServiceWorker::get_onerror(
  self : ServiceWorker,
) -> EventHandler =
  #| (self) => self.onerror

///|
pub extern "js" fn ServiceWorker::set_onerror(
  self : ServiceWorker,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onerror = value }

///|
/// ServiceWorkerRegistration interface
pub type ServiceWorkerRegistration

///|
pub extern "js" fn ServiceWorkerRegistration::to_js_value(
  self : ServiceWorkerRegistration,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn ServiceWorkerRegistration::get_installing(
  self : ServiceWorkerRegistration,
) -> ServiceWorker? =
  #| (self) => self.installing

///|
pub extern "js" fn ServiceWorkerRegistration::get_waiting(
  self : ServiceWorkerRegistration,
) -> ServiceWorker? =
  #| (self) => self.waiting

///|
pub extern "js" fn ServiceWorkerRegistration::get_active(
  self : ServiceWorkerRegistration,
) -> ServiceWorker? =
  #| (self) => self.active

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
  #| (self) => self.updateViaCache

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
pub extern "js" fn ServiceWorkerRegistration::get_onupdatefound(
  self : ServiceWorkerRegistration,
) -> EventHandler =
  #| (self) => self.onupdatefound

///|
pub extern "js" fn ServiceWorkerRegistration::set_onupdatefound(
  self : ServiceWorkerRegistration,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onupdatefound = value }

///|
pub extern "js" fn ServiceWorkerRegistration::get_background_fetch(
  self : ServiceWorkerRegistration,
) -> BackgroundFetchManager =
  #| (self) => self.backgroundFetch

///|
pub extern "js" fn ServiceWorkerRegistration::get_sync(
  self : ServiceWorkerRegistration,
) -> SyncManager =
  #| (self) => self.sync

///|
pub extern "js" fn ServiceWorkerRegistration::get_index(
  self : ServiceWorkerRegistration,
) -> ContentIndex =
  #| (self) => self.index

///|
pub extern "js" fn ServiceWorkerRegistration::get_cookies(
  self : ServiceWorkerRegistration,
) -> CookieStoreManager =
  #| (self) => self.cookies

///|
pub extern "js" fn ServiceWorkerRegistration::show_notification(
  self : ServiceWorkerRegistration,
  title : String,
) -> Promise[Unit] =
  #| (self, title) => self.showNotification(title)

///|
pub extern "js" fn ServiceWorkerRegistration::show_notification_with_options(
  self : ServiceWorkerRegistration,
  title : String,
  options : NotificationOptions,
) -> Promise[Unit] =
  #| (self, title, options) => self.showNotification(title, options)

///|
pub extern "js" fn ServiceWorkerRegistration::get_notifications(
  self : ServiceWorkerRegistration,
) -> Promise[Array[Notification]] =
  #| (self) => self.getNotifications()

///|
pub extern "js" fn ServiceWorkerRegistration::get_notifications_with_filter(
  self : ServiceWorkerRegistration,
  filter : GetNotificationOptions,
) -> Promise[Array[Notification]] =
  #| (self, filter) => self.getNotifications(filter)

///|
pub extern "js" fn ServiceWorkerRegistration::get_payment_manager(
  self : ServiceWorkerRegistration,
) -> PaymentManager =
  #| (self) => self.paymentManager

///|
pub extern "js" fn ServiceWorkerRegistration::get_periodic_sync(
  self : ServiceWorkerRegistration,
) -> PeriodicSyncManager =
  #| (self) => self.periodicSync

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
pub extern "js" fn ServiceWorkerContainer::get_controller(
  self : ServiceWorkerContainer,
) -> ServiceWorker? =
  #| (self) => self.controller

///|
pub extern "js" fn ServiceWorkerContainer::get_ready(
  self : ServiceWorkerContainer,
) -> Promise[ServiceWorkerRegistration] =
  #| (self) => self.ready

///|
pub extern "js" fn ServiceWorkerContainer::register(
  self : ServiceWorkerContainer,
  script_u_r_l : JsValue,
) -> Promise[ServiceWorkerRegistration] =
  #| (self, script_u_r_l) => self.register(script_u_r_l)

///|
pub extern "js" fn ServiceWorkerContainer::register_with_options(
  self : ServiceWorkerContainer,
  script_u_r_l : JsValue,
  options : RegistrationOptions,
) -> Promise[ServiceWorkerRegistration] =
  #| (self, script_u_r_l, options) => self.register(script_u_r_l, options)

///|
pub extern "js" fn ServiceWorkerContainer::get_registration(
  self : ServiceWorkerContainer,
) -> Promise[JsValue] =
  #| (self) => self.getRegistration()

///|
pub extern "js" fn ServiceWorkerContainer::get_registration_with_client_u_r_l(
  self : ServiceWorkerContainer,
  client_u_r_l : String,
) -> Promise[JsValue] =
  #| (self, client_u_r_l) => self.getRegistration(client_u_r_l)

///|
pub extern "js" fn ServiceWorkerContainer::get_registrations(
  self : ServiceWorkerContainer,
) -> Promise[JsValue] =
  #| (self) => self.getRegistrations()

///|
pub extern "js" fn ServiceWorkerContainer::start_messages(
  self : ServiceWorkerContainer,
) -> Unit =
  #| (self) => self.startMessages()

///|
pub extern "js" fn ServiceWorkerContainer::get_oncontrollerchange(
  self : ServiceWorkerContainer,
) -> EventHandler =
  #| (self) => self.oncontrollerchange

///|
pub extern "js" fn ServiceWorkerContainer::set_oncontrollerchange(
  self : ServiceWorkerContainer,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncontrollerchange = value }

///|
pub extern "js" fn ServiceWorkerContainer::get_onmessage(
  self : ServiceWorkerContainer,
) -> EventHandler =
  #| (self) => self.onmessage

///|
pub extern "js" fn ServiceWorkerContainer::set_onmessage(
  self : ServiceWorkerContainer,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmessage = value }

///|
pub extern "js" fn ServiceWorkerContainer::get_onmessageerror(
  self : ServiceWorkerContainer,
) -> EventHandler =
  #| (self) => self.onmessageerror

///|
pub extern "js" fn ServiceWorkerContainer::set_onmessageerror(
  self : ServiceWorkerContainer,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmessageerror = value }

///|
/// NavigationPreloadManager interface
pub type NavigationPreloadManager

///|
pub extern "js" fn NavigationPreloadManager::to_js_value(
  self : NavigationPreloadManager,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn NavigationPreloadManager::enable(
  self : NavigationPreloadManager,
) -> Promise[Unit] =
  #| (self) => self.enable()

///|
pub extern "js" fn NavigationPreloadManager::disable(
  self : NavigationPreloadManager,
) -> Promise[Unit] =
  #| (self) => self.disable()

///|
pub extern "js" fn NavigationPreloadManager::set_header_value(
  self : NavigationPreloadManager,
  value : String,
) -> Promise[Unit] =
  #| (self, value) => self.setHeaderValue(value)

///|
pub extern "js" fn NavigationPreloadManager::get_state(
  self : NavigationPreloadManager,
) -> Promise[NavigationPreloadState] =
  #| (self) => self.getState()

///|
/// ServiceWorkerGlobalScope interface
pub type ServiceWorkerGlobalScope

///|
pub extern "js" fn ServiceWorkerGlobalScope::to_js_value(
  self : ServiceWorkerGlobalScope,
) -> JsValue =
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
pub extern "js" fn ServiceWorkerGlobalScope::get_oninstall(
  self : ServiceWorkerGlobalScope,
) -> EventHandler =
  #| (self) => self.oninstall

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_oninstall(
  self : ServiceWorkerGlobalScope,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oninstall = value }

///|
pub extern "js" fn ServiceWorkerGlobalScope::get_onactivate(
  self : ServiceWorkerGlobalScope,
) -> EventHandler =
  #| (self) => self.onactivate

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_onactivate(
  self : ServiceWorkerGlobalScope,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onactivate = value }

///|
pub extern "js" fn ServiceWorkerGlobalScope::get_onfetch(
  self : ServiceWorkerGlobalScope,
) -> EventHandler =
  #| (self) => self.onfetch

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_onfetch(
  self : ServiceWorkerGlobalScope,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onfetch = value }

///|
pub extern "js" fn ServiceWorkerGlobalScope::get_onmessage(
  self : ServiceWorkerGlobalScope,
) -> EventHandler =
  #| (self) => self.onmessage

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_onmessage(
  self : ServiceWorkerGlobalScope,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmessage = value }

///|
pub extern "js" fn ServiceWorkerGlobalScope::get_onmessageerror(
  self : ServiceWorkerGlobalScope,
) -> EventHandler =
  #| (self) => self.onmessageerror

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_onmessageerror(
  self : ServiceWorkerGlobalScope,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmessageerror = value }

///|
pub extern "js" fn ServiceWorkerGlobalScope::get_onbackgroundfetchsuccess(
  self : ServiceWorkerGlobalScope,
) -> EventHandler =
  #| (self) => self.onbackgroundfetchsuccess

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_onbackgroundfetchsuccess(
  self : ServiceWorkerGlobalScope,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbackgroundfetchsuccess = value }

///|
pub extern "js" fn ServiceWorkerGlobalScope::get_onbackgroundfetchfail(
  self : ServiceWorkerGlobalScope,
) -> EventHandler =
  #| (self) => self.onbackgroundfetchfail

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_onbackgroundfetchfail(
  self : ServiceWorkerGlobalScope,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbackgroundfetchfail = value }

///|
pub extern "js" fn ServiceWorkerGlobalScope::get_onbackgroundfetchabort(
  self : ServiceWorkerGlobalScope,
) -> EventHandler =
  #| (self) => self.onbackgroundfetchabort

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_onbackgroundfetchabort(
  self : ServiceWorkerGlobalScope,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbackgroundfetchabort = value }

///|
pub extern "js" fn ServiceWorkerGlobalScope::get_onbackgroundfetchclick(
  self : ServiceWorkerGlobalScope,
) -> EventHandler =
  #| (self) => self.onbackgroundfetchclick

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_onbackgroundfetchclick(
  self : ServiceWorkerGlobalScope,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbackgroundfetchclick = value }

///|
pub extern "js" fn ServiceWorkerGlobalScope::get_onsync(
  self : ServiceWorkerGlobalScope,
) -> EventHandler =
  #| (self) => self.onsync

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_onsync(
  self : ServiceWorkerGlobalScope,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsync = value }

///|
pub extern "js" fn ServiceWorkerGlobalScope::get_oncontentdelete(
  self : ServiceWorkerGlobalScope,
) -> EventHandler =
  #| (self) => self.oncontentdelete

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_oncontentdelete(
  self : ServiceWorkerGlobalScope,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncontentdelete = value }

///|
pub extern "js" fn ServiceWorkerGlobalScope::get_cookie_store(
  self : ServiceWorkerGlobalScope,
) -> CookieStore =
  #| (self) => self.cookieStore

///|
pub extern "js" fn ServiceWorkerGlobalScope::get_oncookiechange(
  self : ServiceWorkerGlobalScope,
) -> EventHandler =
  #| (self) => self.oncookiechange

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_oncookiechange(
  self : ServiceWorkerGlobalScope,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncookiechange = value }

///|
pub extern "js" fn ServiceWorkerGlobalScope::get_onnotificationclick(
  self : ServiceWorkerGlobalScope,
) -> EventHandler =
  #| (self) => self.onnotificationclick

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_onnotificationclick(
  self : ServiceWorkerGlobalScope,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onnotificationclick = value }

///|
pub extern "js" fn ServiceWorkerGlobalScope::get_onnotificationclose(
  self : ServiceWorkerGlobalScope,
) -> EventHandler =
  #| (self) => self.onnotificationclose

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_onnotificationclose(
  self : ServiceWorkerGlobalScope,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onnotificationclose = value }

///|
pub extern "js" fn ServiceWorkerGlobalScope::get_oncanmakepayment(
  self : ServiceWorkerGlobalScope,
) -> EventHandler =
  #| (self) => self.oncanmakepayment

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_oncanmakepayment(
  self : ServiceWorkerGlobalScope,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncanmakepayment = value }

///|
pub extern "js" fn ServiceWorkerGlobalScope::get_onpaymentrequest(
  self : ServiceWorkerGlobalScope,
) -> EventHandler =
  #| (self) => self.onpaymentrequest

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_onpaymentrequest(
  self : ServiceWorkerGlobalScope,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpaymentrequest = value }

///|
pub extern "js" fn ServiceWorkerGlobalScope::get_onperiodicsync(
  self : ServiceWorkerGlobalScope,
) -> EventHandler =
  #| (self) => self.onperiodicsync

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_onperiodicsync(
  self : ServiceWorkerGlobalScope,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onperiodicsync = value }

///|
pub extern "js" fn ServiceWorkerGlobalScope::get_onpush(
  self : ServiceWorkerGlobalScope,
) -> EventHandler =
  #| (self) => self.onpush

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_onpush(
  self : ServiceWorkerGlobalScope,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpush = value }

///|
pub extern "js" fn ServiceWorkerGlobalScope::get_onpushsubscriptionchange(
  self : ServiceWorkerGlobalScope,
) -> EventHandler =
  #| (self) => self.onpushsubscriptionchange

///|
pub extern "js" fn ServiceWorkerGlobalScope::set_onpushsubscriptionchange(
  self : ServiceWorkerGlobalScope,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpushsubscriptionchange = value }

///|
/// Client interface
pub type Client

///|
pub extern "js" fn Client::to_js_value(self : Client) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn Client::get_url(self : Client) -> String =
  #| (self) => self.url

///|
pub extern "js" fn Client::get_frame_type(self : Client) -> FrameType =
  #| (self) => self.frameType

///|
pub extern "js" fn Client::get_id(self : Client) -> String =
  #| (self) => self.id

///|
pub extern "js" fn Client::get_type(self : Client) -> ClientType =
  #| (self) => self.type

///|
pub extern "js" fn Client::post_message(
  self : Client,
  message : JsValue,
) -> Unit =
  #| (self, message) => self.postMessage(message)

///|
pub extern "js" fn Client::post_message_with_options(
  self : Client,
  message : JsValue,
  options : StructuredSerializeOptions,
) -> Unit =
  #| (self, message, options) => self.postMessage(message, options)

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
  #| (self) => self.lifecycleState

///|
/// WindowClient interface
pub type WindowClient

///|
pub extern "js" fn WindowClient::to_js_value(self : WindowClient) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn WindowClient::get_url(self : WindowClient) -> String =
  #| (self) => self.url

///|
pub extern "js" fn WindowClient::get_frame_type(
  self : WindowClient,
) -> FrameType =
  #| (self) => self.frameType

///|
pub extern "js" fn WindowClient::get_id(self : WindowClient) -> String =
  #| (self) => self.id

///|
pub extern "js" fn WindowClient::get_type(self : WindowClient) -> ClientType =
  #| (self) => self.type

///|
pub extern "js" fn WindowClient::post_message(
  self : WindowClient,
  message : JsValue,
  transfer : Array[JsValue],
) -> Unit =
  #| (self, message, transfer) => self.postMessage(message, transfer)

///|
pub extern "js" fn WindowClient::get_lifecycle_state(
  self : WindowClient,
) -> ClientLifecycleState =
  #| (self) => self.lifecycleState

///|
pub extern "js" fn WindowClient::get_visibility_state(
  self : WindowClient,
) -> DocumentVisibilityState =
  #| (self) => self.visibilityState

///|
pub extern "js" fn WindowClient::get_focused(self : WindowClient) -> Bool =
  #| (self) => self.focused

///|
pub extern "js" fn WindowClient::get_ancestor_origins(
  self : WindowClient,
) -> JsValue =
  #| (self) => self.ancestorOrigins

///|
pub extern "js" fn WindowClient::focus(
  self : WindowClient,
) -> Promise[WindowClient] =
  #| (self) => self.focus()

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
pub extern "js" fn Clients::get(
  self : Clients,
  id : String,
) -> Promise[JsValue] =
  #| (self, id) => self.get(id)

///|
pub extern "js" fn Clients::match_all(self : Clients) -> Promise[JsValue] =
  #| (self) => self.matchAll()

///|
pub extern "js" fn Clients::match_all_with_options(
  self : Clients,
  options : ClientQueryOptions,
) -> Promise[JsValue] =
  #| (self, options) => self.matchAll(options)

///|
pub extern "js" fn Clients::open_window(
  self : Clients,
  url : String,
) -> Promise[WindowClient?] =
  #| (self, url) => self.openWindow(url)

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
pub extern "js" fn ExtendableEvent::new(
  type_ : String,
  event_init_dict : ExtendableEventInit,
) -> ExtendableEvent =
  #| (type_, event_init_dict) => new ExtendableEvent(type_, event_init_dict)

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
pub extern "js" fn InstallEvent::new(
  type_ : String,
  event_init_dict : ExtendableEventInit,
) -> InstallEvent =
  #| (type_, event_init_dict) => new InstallEvent(type_, event_init_dict)

///|
pub extern "js" fn InstallEvent::wait_until(
  self : InstallEvent,
  f : Promise[JsValue],
) -> Unit =
  #| (self, f) => self.waitUntil(f)

///|
pub extern "js" fn InstallEvent::add_routes(
  self : InstallEvent,
  rules : JsValue,
) -> Promise[Unit] =
  #| (self, rules) => self.addRoutes(rules)

///|
/// FetchEvent interface
pub type FetchEvent

///|
pub extern "js" fn FetchEvent::to_js_value(self : FetchEvent) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn FetchEvent::new(
  type_ : String,
  event_init_dict : ExtendableEventInit,
) -> FetchEvent =
  #| (type_, event_init_dict) => new FetchEvent(type_, event_init_dict)

///|
pub extern "js" fn FetchEvent::wait_until(
  self : FetchEvent,
  f : Promise[JsValue],
) -> Unit =
  #| (self, f) => self.waitUntil(f)

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
) -> Unit =
  #| (self, r) => self.respondWith(r)

///|
/// ExtendableMessageEvent interface
pub type ExtendableMessageEvent

///|
pub extern "js" fn ExtendableMessageEvent::to_js_value(
  self : ExtendableMessageEvent,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn ExtendableMessageEvent::new(
  type_ : String,
  event_init_dict : ExtendableEventInit,
) -> ExtendableMessageEvent =
  #| (type_, event_init_dict) => new ExtendableMessageEvent(type_, event_init_dict)

///|
pub extern "js" fn ExtendableMessageEvent::wait_until(
  self : ExtendableMessageEvent,
  f : Promise[JsValue],
) -> Unit =
  #| (self, f) => self.waitUntil(f)

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
) -> JsValue =
  #| (self) => self.source

///|
pub extern "js" fn ExtendableMessageEvent::get_ports(
  self : ExtendableMessageEvent,
) -> JsValue =
  #| (self) => self.ports

///|
/// Cache interface
pub type Cache

///|
pub extern "js" fn Cache::to_js_value(self : Cache) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn Cache::match_(
  self : Cache,
  request : RequestInfo,
) -> Promise[JsValue] =
  #| (self, request) => self.match(request)

///|
pub extern "js" fn Cache::match__with_options(
  self : Cache,
  request : RequestInfo,
  options : CacheQueryOptions,
) -> Promise[JsValue] =
  #| (self, request, options) => self.match(request, options)

///|
pub extern "js" fn Cache::match_all(self : Cache) -> Promise[JsValue] =
  #| (self) => self.matchAll()

///|
pub extern "js" fn Cache::match_all_with_options(
  self : Cache,
  request : RequestInfo,
  options : CacheQueryOptions,
) -> Promise[JsValue] =
  #| (self, request, options) => self.matchAll(request, options)

///|
pub extern "js" fn Cache::add(
  self : Cache,
  request : RequestInfo,
) -> Promise[Unit] =
  #| (self, request) => self.add(request)

///|
pub extern "js" fn Cache::add_all(
  self : Cache,
  requests : Array[RequestInfo],
) -> Promise[Unit] =
  #| (self, requests) => self.addAll(requests)

///|
pub extern "js" fn Cache::put(
  self : Cache,
  request : RequestInfo,
  response : Response,
) -> Promise[Unit] =
  #| (self, request, response) => self.put(request, response)

///|
pub extern "js" fn Cache::delete(
  self : Cache,
  request : RequestInfo,
) -> Promise[Bool] =
  #| (self, request) => self.delete(request)

///|
pub extern "js" fn Cache::delete_with_options(
  self : Cache,
  request : RequestInfo,
  options : CacheQueryOptions,
) -> Promise[Bool] =
  #| (self, request, options) => self.delete(request, options)

///|
pub extern "js" fn Cache::keys(self : Cache) -> Promise[JsValue] =
  #| (self) => self.keys()

///|
pub extern "js" fn Cache::keys_with_options(
  self : Cache,
  request : RequestInfo,
  options : CacheQueryOptions,
) -> Promise[JsValue] =
  #| (self, request, options) => self.keys(request, options)

///|
/// CacheStorage interface
pub type CacheStorage

///|
pub extern "js" fn CacheStorage::to_js_value(self : CacheStorage) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CacheStorage::match_(
  self : CacheStorage,
  request : RequestInfo,
) -> Promise[JsValue] =
  #| (self, request) => self.match(request)

///|
pub extern "js" fn CacheStorage::match__with_options(
  self : CacheStorage,
  request : RequestInfo,
  options : MultiCacheQueryOptions,
) -> Promise[JsValue] =
  #| (self, request, options) => self.match(request, options)

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
