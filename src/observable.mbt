// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/observable

///|
/// ObserverUnion typedef
pub type ObserverUnion

///|
pub extern "js" fn ObserverUnion::to_js_value(self : ObserverUnion) -> JsValue =
  #| (self) => self

///|
/// Create ObserverUnion from ObservableSubscriptionCallback
pub extern "js" fn ObserverUnion::from_observable_subscription_callback(
  v : ObservableSubscriptionCallback,
) -> ObserverUnion =
  #| (v) => v

///|
/// Create ObserverUnion from SubscriptionObserver
pub extern "js" fn ObserverUnion::from_subscription_observer(
  v : SubscriptionObserver,
) -> ObserverUnion =
  #| (v) => v

///|
/// Check if this ObserverUnion is ObservableSubscriptionCallback
pub extern "js" fn ObserverUnion::is_observable_subscription_callback(
  self : ObserverUnion,
) -> Bool =
  #| (self) => typeof self === 'function'

///|
/// Check if this ObserverUnion is SubscriptionObserver
pub extern "js" fn ObserverUnion::is_subscription_observer(
  self : ObserverUnion,
) -> Bool =
  #| (self) => typeof self === 'object' && self !== null

///|
/// Try to get ObserverUnion as ObservableSubscriptionCallback
pub extern "js" fn ObserverUnion::as_observable_subscription_callback(
  self : ObserverUnion,
) -> ObservableSubscriptionCallback? =
  #| (self) => (typeof self === 'function') ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get ObserverUnion as SubscriptionObserver
pub extern "js" fn ObserverUnion::as_subscription_observer(
  self : ObserverUnion,
) -> SubscriptionObserver? =
  #| (self) => (typeof self === 'object' && self !== null) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// ObservableInspectorUnion typedef
pub type ObservableInspectorUnion

///|
pub extern "js" fn ObservableInspectorUnion::to_js_value(
  self : ObservableInspectorUnion,
) -> JsValue =
  #| (self) => self

///|
/// Create ObservableInspectorUnion from ObservableSubscriptionCallback
pub extern "js" fn ObservableInspectorUnion::from_observable_subscription_callback(
  v : ObservableSubscriptionCallback,
) -> ObservableInspectorUnion =
  #| (v) => v

///|
/// Create ObservableInspectorUnion from ObservableInspector
pub extern "js" fn ObservableInspectorUnion::from_observable_inspector(
  v : ObservableInspector,
) -> ObservableInspectorUnion =
  #| (v) => v

///|
/// Check if this ObservableInspectorUnion is ObservableSubscriptionCallback
pub extern "js" fn ObservableInspectorUnion::is_observable_subscription_callback(
  self : ObservableInspectorUnion,
) -> Bool =
  #| (self) => typeof self === 'function'

///|
/// Check if this ObservableInspectorUnion is ObservableInspector
pub extern "js" fn ObservableInspectorUnion::is_observable_inspector(
  self : ObservableInspectorUnion,
) -> Bool =
  #| (self) => typeof self === 'object' && self !== null

///|
/// Try to get ObservableInspectorUnion as ObservableSubscriptionCallback
pub extern "js" fn ObservableInspectorUnion::as_observable_subscription_callback(
  self : ObservableInspectorUnion,
) -> ObservableSubscriptionCallback? =
  #| (self) => (typeof self === 'function') ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get ObservableInspectorUnion as ObservableInspector
pub extern "js" fn ObservableInspectorUnion::as_observable_inspector(
  self : ObservableInspectorUnion,
) -> ObservableInspector? =
  #| (self) => (typeof self === 'object' && self !== null) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// SubscribeCallback callback interface
pub type SubscribeCallback

///|
/// Create SubscribeCallback from a MoonBit function
pub extern "js" fn SubscribeCallback::from_fn(
  handler : (Subscriber) -> Unit,
) -> SubscribeCallback =
  #| (handler) => handler

///|
/// ObservableSubscriptionCallback callback interface
pub type ObservableSubscriptionCallback

///|
/// Create ObservableSubscriptionCallback from a MoonBit function
pub extern "js" fn ObservableSubscriptionCallback::from_fn(
  handler : (JsValue) -> Unit,
) -> ObservableSubscriptionCallback =
  #| (handler) => handler

///|
/// ObservableInspectorAbortHandler callback interface
pub type ObservableInspectorAbortHandler

///|
/// Create ObservableInspectorAbortHandler from a MoonBit function
pub extern "js" fn ObservableInspectorAbortHandler::from_fn(
  handler : (JsValue) -> Unit,
) -> ObservableInspectorAbortHandler =
  #| (handler) => handler

///|
/// Predicate callback interface
pub type Predicate

///|
/// Create Predicate from a MoonBit function
pub extern "js" fn Predicate::from_fn(
  handler : (JsValue, Int64) -> Bool,
) -> Predicate =
  #| (handler) => handler

///|
/// Reducer callback interface
pub type Reducer

///|
/// Create Reducer from a MoonBit function
pub extern "js" fn Reducer::from_fn(
  handler : (JsValue, JsValue, Int64) -> JsValue,
) -> Reducer =
  #| (handler) => handler

///|
/// Mapper callback interface
pub type Mapper

///|
/// Create Mapper from a MoonBit function
pub extern "js" fn Mapper::from_fn(
  handler : (JsValue, Int64) -> JsValue,
) -> Mapper =
  #| (handler) => handler

///|
/// Visitor callback interface
pub type Visitor

///|
/// Create Visitor from a MoonBit function
pub extern "js" fn Visitor::from_fn(
  handler : (JsValue, Int64) -> Unit,
) -> Visitor =
  #| (handler) => handler

///|
/// CatchCallback callback interface
pub type CatchCallback

///|
/// Create CatchCallback from a MoonBit function
pub extern "js" fn CatchCallback::from_fn(
  handler : (JsValue) -> JsValue,
) -> CatchCallback =
  #| (handler) => handler

///|
/// SubscriptionObserver dictionary
pub struct SubscriptionObserver {
  next : ObservableSubscriptionCallback?
  error : ObservableSubscriptionCallback?
  complete : VoidFunction?
}

///|
/// Create a new SubscriptionObserver with default values
pub fn SubscriptionObserver::default() -> SubscriptionObserver {
  SubscriptionObserver::{ next: None, error: None, complete: None }
}

///|
/// Convert to JsValue
pub extern "js" fn SubscriptionObserver::to_js(
  self : SubscriptionObserver,
) -> JsValue =
  #| (self) => ({
  #|   next: self.next,
  #|   error: self.error,
  #|   complete: self.complete
  #| })

///|
/// ObservableInspector dictionary
pub struct ObservableInspector {
  next : ObservableSubscriptionCallback?
  error : ObservableSubscriptionCallback?
  complete : VoidFunction?
  subscribe : VoidFunction?
  abort : ObservableInspectorAbortHandler?
}

///|
/// Create a new ObservableInspector with default values
pub fn ObservableInspector::default() -> ObservableInspector {
  ObservableInspector::{
    next: None,
    error: None,
    complete: None,
    subscribe: None,
    abort: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn ObservableInspector::to_js(
  self : ObservableInspector,
) -> JsValue =
  #| (self) => ({
  #|   next: self.next,
  #|   error: self.error,
  #|   complete: self.complete,
  #|   subscribe: self.subscribe,
  #|   abort: self.abort
  #| })

///|
/// SubscribeOptions dictionary
pub struct SubscribeOptions {
  signal : AbortSignal?
}

///|
/// Create a new SubscribeOptions with default values
pub fn SubscribeOptions::default() -> SubscribeOptions {
  SubscribeOptions::{ signal: None }
}

///|
/// Convert to JsValue
pub extern "js" fn SubscribeOptions::to_js(self : SubscribeOptions) -> JsValue =
  #| (self) => ({
  #|   signal: self.signal
  #| })

///|
/// ObservableEventListenerOptions dictionary
pub struct ObservableEventListenerOptions {
  capture : Bool?
  passive : Bool?
}

///|
/// Create a new ObservableEventListenerOptions with default values
pub fn ObservableEventListenerOptions::default() -> ObservableEventListenerOptions {
  ObservableEventListenerOptions::{ capture: None, passive: None }
}

///|
/// Convert to JsValue
pub extern "js" fn ObservableEventListenerOptions::to_js(
  self : ObservableEventListenerOptions,
) -> JsValue =
  #| (self) => ({
  #|   capture: self.capture,
  #|   passive: self.passive
  #| })

///|
/// Subscriber interface
pub type Subscriber

///|
pub extern "js" fn Subscriber::to_js_value(self : Subscriber) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Subscriber (unchecked)
pub extern "js" fn Subscriber::from_js_value(v : JsValue) -> Subscriber =
  #| (v) => v

///|
/// Safely cast JsValue to Subscriber (checked with instanceof)
pub extern "js" fn Subscriber::from_js_value_opt(v : JsValue) -> Subscriber? =
  #| (v) => (v instanceof Subscriber) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Subscriber (checked with instanceof)
pub extern "js" fn JsValue::as_subscriber(self : JsValue) -> Subscriber? =
  #| (self) => (self instanceof Subscriber) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Subscriber (unchecked)
pub extern "js" fn JsValue::to_subscriber(self : JsValue) -> Subscriber =
  #| (self) => self

///|
pub extern "js" fn Subscriber::next(self : Subscriber, value : JsValue) -> Unit =
  #| (self, value) => self.next(value)

///|
pub extern "js" fn Subscriber::error(
  self : Subscriber,
  error : JsValue,
) -> Unit =
  #| (self, error) => self.error(error)

///|
pub extern "js" fn Subscriber::complete(self : Subscriber) -> Unit =
  #| (self) => self.complete()

///|
pub extern "js" fn Subscriber::add_teardown(
  self : Subscriber,
  teardown : VoidFunction,
) -> Unit =
  #| (self, teardown) => self.addTeardown(teardown)

///|
pub extern "js" fn Subscriber::get_active(self : Subscriber) -> Bool =
  #| (self) => self.active

///|
pub extern "js" fn Subscriber::get_signal(self : Subscriber) -> AbortSignal =
  #| (self) => self.signal

///|
/// Observable interface
pub type Observable

///|
pub extern "js" fn Observable::to_js_value(self : Observable) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Observable (unchecked)
pub extern "js" fn Observable::from_js_value(v : JsValue) -> Observable =
  #| (v) => v

///|
/// Safely cast JsValue to Observable (checked with instanceof)
pub extern "js" fn Observable::from_js_value_opt(v : JsValue) -> Observable? =
  #| (v) => (v instanceof Observable) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Observable (checked with instanceof)
pub extern "js" fn JsValue::as_observable(self : JsValue) -> Observable? =
  #| (self) => (self instanceof Observable) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Observable (unchecked)
pub extern "js" fn JsValue::to_observable(self : JsValue) -> Observable =
  #| (self) => self

///|
pub extern "js" fn Observable::new(callback : SubscribeCallback) -> Observable =
  #| (callback) => new Observable(callback)

///|
pub extern "js" fn Observable::subscribe(self : Observable) -> Unit =
  #| (self) => self.subscribe()

///|
pub extern "js" fn Observable::subscribe_with_options(
  self : Observable,
  observer : ObserverUnion,
  options : SubscribeOptions,
) -> Unit =
  #| (self, observer, options) => self.subscribe(observer, options)

///|
pub extern "js" fn Observable::from(value : JsValue) -> Observable =
  #| (value) => Observable.from(value)

///|
pub extern "js" fn Observable::take_until(
  self : Observable,
  value : JsValue,
) -> Observable =
  #| (self, value) => self.takeUntil(value)

///|
pub extern "js" fn Observable::map(
  self : Observable,
  mapper : Mapper,
) -> Observable =
  #| (self, mapper) => self.map(mapper)

///|
pub extern "js" fn Observable::filter(
  self : Observable,
  predicate : Predicate,
) -> Observable =
  #| (self, predicate) => self.filter(predicate)

///|
pub extern "js" fn Observable::take(
  self : Observable,
  amount : Int64,
) -> Observable =
  #| (self, amount) => self.take(amount)

///|
pub extern "js" fn Observable::drop(
  self : Observable,
  amount : Int64,
) -> Observable =
  #| (self, amount) => self.drop(amount)

///|
pub extern "js" fn Observable::flat_map(
  self : Observable,
  mapper : Mapper,
) -> Observable =
  #| (self, mapper) => self.flatMap(mapper)

///|
pub extern "js" fn Observable::switch_map(
  self : Observable,
  mapper : Mapper,
) -> Observable =
  #| (self, mapper) => self.switchMap(mapper)

///|
pub extern "js" fn Observable::inspect(self : Observable) -> Observable =
  #| (self) => self.inspect()

///|
pub extern "js" fn Observable::inspect_with_inspector_union(
  self : Observable,
  inspector_union : ObservableInspectorUnion,
) -> Observable =
  #| (self, inspector_union) => self.inspect(inspector_union)

///|
pub extern "js" fn Observable::catch_(
  self : Observable,
  callback : CatchCallback,
) -> Observable =
  #| (self, callback) => self.catch(callback)

///|
pub extern "js" fn Observable::finally_(
  self : Observable,
  callback : VoidFunction,
) -> Observable =
  #| (self, callback) => self.finally(callback)

///|
pub extern "js" fn Observable::to_array(
  self : Observable,
) -> Promise[Array[JsValue]] =
  #| (self) => self.toArray()

///|
pub extern "js" fn Observable::to_array_with_options(
  self : Observable,
  options : SubscribeOptions,
) -> Promise[Array[JsValue]] =
  #| (self, options) => self.toArray(options)

///|
pub extern "js" fn Observable::for_each(
  self : Observable,
  callback : Visitor,
) -> Promise[Unit] =
  #| (self, callback) => self.forEach(callback)

///|
pub extern "js" fn Observable::for_each_with_options(
  self : Observable,
  callback : Visitor,
  options : SubscribeOptions,
) -> Promise[Unit] =
  #| (self, callback, options) => self.forEach(callback, options)

///|
pub extern "js" fn Observable::every(
  self : Observable,
  predicate : Predicate,
) -> Promise[Bool] =
  #| (self, predicate) => self.every(predicate)

///|
pub extern "js" fn Observable::every_with_options(
  self : Observable,
  predicate : Predicate,
  options : SubscribeOptions,
) -> Promise[Bool] =
  #| (self, predicate, options) => self.every(predicate, options)

///|
pub extern "js" fn Observable::first(self : Observable) -> Promise[JsValue] =
  #| (self) => self.first()

///|
pub extern "js" fn Observable::first_with_options(
  self : Observable,
  options : SubscribeOptions,
) -> Promise[JsValue] =
  #| (self, options) => self.first(options)

///|
pub extern "js" fn Observable::last(self : Observable) -> Promise[JsValue] =
  #| (self) => self.last()

///|
pub extern "js" fn Observable::last_with_options(
  self : Observable,
  options : SubscribeOptions,
) -> Promise[JsValue] =
  #| (self, options) => self.last(options)

///|
pub extern "js" fn Observable::find(
  self : Observable,
  predicate : Predicate,
) -> Promise[JsValue] =
  #| (self, predicate) => self.find(predicate)

///|
pub extern "js" fn Observable::find_with_options(
  self : Observable,
  predicate : Predicate,
  options : SubscribeOptions,
) -> Promise[JsValue] =
  #| (self, predicate, options) => self.find(predicate, options)

///|
pub extern "js" fn Observable::some(
  self : Observable,
  predicate : Predicate,
) -> Promise[Bool] =
  #| (self, predicate) => self.some(predicate)

///|
pub extern "js" fn Observable::some_with_options(
  self : Observable,
  predicate : Predicate,
  options : SubscribeOptions,
) -> Promise[Bool] =
  #| (self, predicate, options) => self.some(predicate, options)

///|
pub extern "js" fn Observable::reduce(
  self : Observable,
  reducer : Reducer,
) -> Promise[JsValue] =
  #| (self, reducer) => self.reduce(reducer)

///|
pub extern "js" fn Observable::reduce_with_options(
  self : Observable,
  reducer : Reducer,
  initial_value : JsValue,
  options : SubscribeOptions,
) -> Promise[JsValue] =
  #| (self, reducer, initial_value, options) => self.reduce(reducer, initial_value, options)
