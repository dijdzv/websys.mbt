// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/observable

///|
/// ObserverUnion typedef
pub type ObserverUnion = JsValue

///|
/// ObservableInspectorUnion typedef
pub type ObservableInspectorUnion = JsValue

/// SubscribeCallback callback interface
pub type SubscribeCallback

/// ObservableSubscriptionCallback callback interface
pub type ObservableSubscriptionCallback

/// ObservableInspectorAbortHandler callback interface
pub type ObservableInspectorAbortHandler

/// Predicate callback interface
pub type Predicate

/// Reducer callback interface
pub type Reducer

/// Mapper callback interface
pub type Mapper

/// Visitor callback interface
pub type Visitor

/// CatchCallback callback interface
pub type CatchCallback

///|
/// SubscriptionObserver dictionary
pub struct SubscriptionObserver {
  next : ObservableSubscriptionCallback?
  error : ObservableSubscriptionCallback?
  complete : VoidFunction?
}

/// Create a new SubscriptionObserver with default values
pub fn SubscriptionObserver::default() -> SubscriptionObserver {
  SubscriptionObserver::{
    next: None,
    error: None,
    complete: None,
  }
}

/// Convert to JsValue
pub extern "js" fn SubscriptionObserver::to_js(self : SubscriptionObserver) -> JsValue =
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

/// Convert to JsValue
pub extern "js" fn ObservableInspector::to_js(self : ObservableInspector) -> JsValue =
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

/// Create a new SubscribeOptions with default values
pub fn SubscribeOptions::default() -> SubscribeOptions {
  SubscribeOptions::{
    signal: None,
  }
}

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

/// Create a new ObservableEventListenerOptions with default values
pub fn ObservableEventListenerOptions::default() -> ObservableEventListenerOptions {
  ObservableEventListenerOptions::{
    capture: None,
    passive: None,
  }
}

/// Convert to JsValue
pub extern "js" fn ObservableEventListenerOptions::to_js(self : ObservableEventListenerOptions) -> JsValue =
  #| (self) => ({
  #|   capture: self.capture,
  #|   passive: self.passive
  #| })

///|
/// Subscriber interface
pub type Subscriber

pub extern "js" fn Subscriber::to_js_value(self : Subscriber) -> JsValue =
  #| (self) => self

pub extern "js" fn Subscriber::next(self : Subscriber, value : JsValue) -> Unit =
  #| (self, value) => self.next(value)

pub extern "js" fn Subscriber::error(self : Subscriber, error : JsValue) -> Unit =
  #| (self, error) => self.error(error)

pub extern "js" fn Subscriber::complete(self : Subscriber) -> Unit =
  #| (self) => self.complete()

pub extern "js" fn Subscriber::add_teardown(self : Subscriber, teardown : VoidFunction) -> Unit =
  #| (self, teardown) => self.addTeardown(teardown)

pub extern "js" fn Subscriber::get_active(self : Subscriber) -> Bool =
  #| (self) => self.active

pub extern "js" fn Subscriber::get_signal(self : Subscriber) -> AbortSignal =
  #| (self) => self.signal

///|
/// Observable interface
pub type Observable

pub extern "js" fn Observable::to_js_value(self : Observable) -> JsValue =
  #| (self) => self

pub extern "js" fn Observable::new(callback : SubscribeCallback) -> Observable =
  #| (callback) => new Observable(callback)

pub extern "js" fn Observable::subscribe(self : Observable, observer : ObserverUnion, options : SubscribeOptions) -> Unit =
  #| (self, observer, options) => self.subscribe(observer, options)

pub extern "js" fn Observable::from(value : JsValue) -> Observable =
  #| (value) => Observable.from(value)

pub extern "js" fn Observable::take_until(self : Observable, value : JsValue) -> Observable =
  #| (self, value) => self.takeUntil(value)

pub extern "js" fn Observable::map(self : Observable, mapper : Mapper) -> Observable =
  #| (self, mapper) => self.map(mapper)

pub extern "js" fn Observable::filter(self : Observable, predicate : Predicate) -> Observable =
  #| (self, predicate) => self.filter(predicate)

pub extern "js" fn Observable::take(self : Observable, amount : Int64) -> Observable =
  #| (self, amount) => self.take(amount)

pub extern "js" fn Observable::drop(self : Observable, amount : Int64) -> Observable =
  #| (self, amount) => self.drop(amount)

pub extern "js" fn Observable::flat_map(self : Observable, mapper : Mapper) -> Observable =
  #| (self, mapper) => self.flatMap(mapper)

pub extern "js" fn Observable::switch_map(self : Observable, mapper : Mapper) -> Observable =
  #| (self, mapper) => self.switchMap(mapper)

pub extern "js" fn Observable::inspect(self : Observable, inspector_union : ObservableInspectorUnion) -> Observable =
  #| (self, inspector_union) => self.inspect(inspector_union)

pub extern "js" fn Observable::catch_(self : Observable, callback : CatchCallback) -> Observable =
  #| (self, callback) => self.catch(callback)

pub extern "js" fn Observable::finally_(self : Observable, callback : VoidFunction) -> Observable =
  #| (self, callback) => self.finally(callback)

pub extern "js" fn Observable::to_array(self : Observable, options : SubscribeOptions) -> JsValue =
  #| (self, options) => self.toArray(options)

pub extern "js" fn Observable::for_each(self : Observable, callback : Visitor, options : SubscribeOptions) -> JsValue =
  #| (self, callback, options) => self.forEach(callback, options)

pub extern "js" fn Observable::every(self : Observable, predicate : Predicate, options : SubscribeOptions) -> JsValue =
  #| (self, predicate, options) => self.every(predicate, options)

pub extern "js" fn Observable::first(self : Observable, options : SubscribeOptions) -> JsValue =
  #| (self, options) => self.first(options)

pub extern "js" fn Observable::last(self : Observable, options : SubscribeOptions) -> JsValue =
  #| (self, options) => self.last(options)

pub extern "js" fn Observable::find(self : Observable, predicate : Predicate, options : SubscribeOptions) -> JsValue =
  #| (self, predicate, options) => self.find(predicate, options)

pub extern "js" fn Observable::some(self : Observable, predicate : Predicate, options : SubscribeOptions) -> JsValue =
  #| (self, predicate, options) => self.some(predicate, options)

pub extern "js" fn Observable::reduce(self : Observable, reducer : Reducer, initial_value : JsValue, options : SubscribeOptions) -> JsValue =
  #| (self, reducer, initial_value, options) => self.reduce(reducer, initial_value, options)

