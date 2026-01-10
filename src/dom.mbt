// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/dom

///|
/// ShadowRootMode enum
pub(all) enum ShadowRootMode {
  Open
  Closed
}

///|
/// Convert to string value
pub fn ShadowRootMode::to_string(self : ShadowRootMode) -> String {
  match self {
    ShadowRootMode::Open => "open"
    ShadowRootMode::Closed => "closed"
  }
}

///|
/// Parse from string value
pub fn ShadowRootMode::from_string(s : String) -> ShadowRootMode? {
  match s {
    "open" => Some(ShadowRootMode::Open)
    "closed" => Some(ShadowRootMode::Closed)
    _ => None
  }
}

///|
/// SlotAssignmentMode enum
pub(all) enum SlotAssignmentMode {
  Manual
  Named
}

///|
/// Convert to string value
pub fn SlotAssignmentMode::to_string(self : SlotAssignmentMode) -> String {
  match self {
    SlotAssignmentMode::Manual => "manual"
    SlotAssignmentMode::Named => "named"
  }
}

///|
/// Parse from string value
pub fn SlotAssignmentMode::from_string(s : String) -> SlotAssignmentMode? {
  match s {
    "manual" => Some(SlotAssignmentMode::Manual)
    "named" => Some(SlotAssignmentMode::Named)
    _ => None
  }
}

///|
/// EventListener callback interface
pub type EventListener

///|
/// Create EventListener from a MoonBit function
pub extern "js" fn EventListener::from_fn(
  handler : (Event) -> Unit,
) -> EventListener =
  #| (handler) => handler

///|
/// MutationCallback callback interface
pub type MutationCallback

///|
/// Create MutationCallback from a MoonBit function
pub extern "js" fn MutationCallback::from_fn(
  handler : (Array[MutationRecord], MutationObserver) -> Unit,
) -> MutationCallback =
  #| (handler) => handler

///|
/// NodeFilter callback interface
pub type NodeFilter

///|
/// Create NodeFilter from a MoonBit function
pub extern "js" fn NodeFilter::from_fn(handler : (Node) -> Int) -> NodeFilter =
  #| (handler) => handler

///|
/// XPathNSResolver callback interface
pub type XPathNSResolver

///|
/// Create XPathNSResolver from a MoonBit function
pub extern "js" fn XPathNSResolver::from_fn(
  handler : (String?) -> String?,
) -> XPathNSResolver =
  #| (handler) => handler

///|
/// EventInit dictionary
pub struct EventInit {
  bubbles : Bool?
  cancelable : Bool?
  composed : Bool?
}

///|
/// Create a new EventInit with default values
pub fn EventInit::default() -> EventInit {
  EventInit::{ bubbles: None, cancelable: None, composed: None }
}

///|
/// Convert to JsValue
pub extern "js" fn EventInit::to_js(self : EventInit) -> JsValue =
  #| (self) => ({
  #|   bubbles: self.bubbles,
  #|   cancelable: self.cancelable,
  #|   composed: self.composed
  #| })

///|
/// CustomEventInit dictionary
pub struct CustomEventInit {
  bubbles : Bool?
  cancelable : Bool?
  composed : Bool?
  detail : JsValue?
}

///|
/// Create a new CustomEventInit with default values
pub fn CustomEventInit::default() -> CustomEventInit {
  CustomEventInit::{
    bubbles: None,
    cancelable: None,
    composed: None,
    detail: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn CustomEventInit::to_js(self : CustomEventInit) -> JsValue =
  #| (self) => ({
  #|   bubbles: self.bubbles,
  #|   cancelable: self.cancelable,
  #|   composed: self.composed,
  #|   detail: self.detail
  #| })

///|
/// EventListenerOptions dictionary
pub struct EventListenerOptions {
  capture : Bool?
}

///|
/// Create a new EventListenerOptions with default values
pub fn EventListenerOptions::default() -> EventListenerOptions {
  EventListenerOptions::{ capture: None }
}

///|
/// Convert to JsValue
pub extern "js" fn EventListenerOptions::to_js(
  self : EventListenerOptions,
) -> JsValue =
  #| (self) => ({
  #|   capture: self.capture
  #| })

///|
/// AddEventListenerOptions dictionary
pub struct AddEventListenerOptions {
  capture : Bool?
  passive : Bool?
  once : Bool?
  signal : AbortSignal?
}

///|
/// Create a new AddEventListenerOptions with default values
pub fn AddEventListenerOptions::default() -> AddEventListenerOptions {
  AddEventListenerOptions::{
    capture: None,
    passive: None,
    once: None,
    signal: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn AddEventListenerOptions::to_js(
  self : AddEventListenerOptions,
) -> JsValue =
  #| (self) => ({
  #|   capture: self.capture,
  #|   passive: self.passive,
  #|   once: self.once,
  #|   signal: self.signal
  #| })

///|
/// MutationObserverInit dictionary
pub struct MutationObserverInit {
  childList : Bool?
  attributes : Bool?
  characterData : Bool?
  subtree : Bool?
  attributeOldValue : Bool?
  characterDataOldValue : Bool?
  attributeFilter : Array[String]?
}

///|
/// Create a new MutationObserverInit with default values
pub fn MutationObserverInit::default() -> MutationObserverInit {
  MutationObserverInit::{
    childList: None,
    attributes: None,
    characterData: None,
    subtree: None,
    attributeOldValue: None,
    characterDataOldValue: None,
    attributeFilter: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MutationObserverInit::to_js(
  self : MutationObserverInit,
) -> JsValue =
  #| (self) => ({
  #|   childList: self.childList,
  #|   attributes: self.attributes,
  #|   characterData: self.characterData,
  #|   subtree: self.subtree,
  #|   attributeOldValue: self.attributeOldValue,
  #|   characterDataOldValue: self.characterDataOldValue,
  #|   attributeFilter: self.attributeFilter
  #| })

///|
/// GetRootNodeOptions dictionary
pub struct GetRootNodeOptions {
  composed : Bool?
}

///|
/// Create a new GetRootNodeOptions with default values
pub fn GetRootNodeOptions::default() -> GetRootNodeOptions {
  GetRootNodeOptions::{ composed: None }
}

///|
/// Convert to JsValue
pub extern "js" fn GetRootNodeOptions::to_js(
  self : GetRootNodeOptions,
) -> JsValue =
  #| (self) => ({
  #|   composed: self.composed
  #| })

///|
/// ElementCreationOptions dictionary
pub struct ElementCreationOptions {
  customElementRegistry : Nullable[CustomElementRegistry]
  is_ : String?
}

///|
/// Create a new ElementCreationOptions with default values
pub fn ElementCreationOptions::default() -> ElementCreationOptions {
  ElementCreationOptions::{
    customElementRegistry: Nullable::Undefined,
    is_: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn ElementCreationOptions::to_js(
  self : ElementCreationOptions,
) -> JsValue =
  #| (self) => ({
  #|   customElementRegistry: ((() => { const v = self.customElementRegistry; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   is: self.is_
  #| })

///|
/// ImportNodeOptions dictionary
pub struct ImportNodeOptions {
  customElementRegistry : CustomElementRegistry?
  selfOnly : Bool?
}

///|
/// Create a new ImportNodeOptions with default values
pub fn ImportNodeOptions::default() -> ImportNodeOptions {
  ImportNodeOptions::{ customElementRegistry: None, selfOnly: None }
}

///|
/// Convert to JsValue
pub extern "js" fn ImportNodeOptions::to_js(
  self : ImportNodeOptions,
) -> JsValue =
  #| (self) => ({
  #|   customElementRegistry: self.customElementRegistry,
  #|   selfOnly: self.selfOnly
  #| })

///|
/// ShadowRootInit dictionary
pub struct ShadowRootInit {
  mode : ShadowRootMode
  delegatesFocus : Bool?
  slotAssignment : SlotAssignmentMode?
  clonable : Bool?
  serializable : Bool?
  customElementRegistry : Nullable[CustomElementRegistry]
}

///|
/// Create a new ShadowRootInit with default values
pub fn ShadowRootInit::default() -> ShadowRootInit {
  ShadowRootInit::{
    mode: panic(),
    delegatesFocus: None,
    slotAssignment: None,
    clonable: None,
    serializable: None,
    customElementRegistry: Nullable::Undefined,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn ShadowRootInit::to_js(self : ShadowRootInit) -> JsValue =
  #| (self) => ({
  #|   mode: ['open', 'closed'][self.mode],
  #|   delegatesFocus: self.delegatesFocus,
  #|   slotAssignment: ['manual', 'named'][self.slotAssignment],
  #|   clonable: self.clonable,
  #|   serializable: self.serializable,
  #|   customElementRegistry: ((() => { const v = self.customElementRegistry; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// StaticRangeInit dictionary
pub struct StaticRangeInit {
  startContainer : Node
  startOffset : Int
  endContainer : Node
  endOffset : Int
}

///|
/// Create a new StaticRangeInit with default values
pub fn StaticRangeInit::default() -> StaticRangeInit {
  StaticRangeInit::{
    startContainer: panic(),
    startOffset: 0,
    endContainer: panic(),
    endOffset: 0,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn StaticRangeInit::to_js(self : StaticRangeInit) -> JsValue =
  #| (self) => ({
  #|   startContainer: self.startContainer,
  #|   startOffset: self.startOffset,
  #|   endContainer: self.endContainer,
  #|   endOffset: self.endOffset
  #| })

///|
/// Event interface
pub type Event

///|
pub extern "js" fn Event::to_js_value(self : Event) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn Event::new(
  type_ : String,
  event_init_dict : EventInit,
) -> Event =
  #| (type_, event_init_dict) => new Event(type_, event_init_dict)

///|
pub extern "js" fn Event::get_type(self : Event) -> String =
  #| (self) => self.type

///|
pub extern "js" fn Event::get_target(self : Event) -> EventTarget? =
  #| (self) => self.target

///|
pub extern "js" fn Event::get_src_element(self : Event) -> EventTarget? =
  #| (self) => self.srcElement

///|
pub extern "js" fn Event::get_current_target(self : Event) -> EventTarget? =
  #| (self) => self.currentTarget

///|
pub extern "js" fn Event::composed_path(self : Event) -> Array[EventTarget] =
  #| (self) => self.composedPath()

// Event.NONE

///|
pub let event_none : Int = 0

// Event.CAPTURING_PHASE

///|
pub let event_capturing_phase : Int = 1

// Event.AT_TARGET

///|
pub let event_at_target : Int = 2

// Event.BUBBLING_PHASE

///|
pub let event_bubbling_phase : Int = 3

///|
pub extern "js" fn Event::get_event_phase(self : Event) -> Int =
  #| (self) => self.eventPhase

///|
pub extern "js" fn Event::stop_propagation(self : Event) -> Unit =
  #| (self) => self.stopPropagation()

///|
pub extern "js" fn Event::get_cancel_bubble(self : Event) -> Bool =
  #| (self) => self.cancelBubble

///|
pub extern "js" fn Event::set_cancel_bubble(self : Event, value : Bool) -> Unit =
  #| (self, value) => { self.cancelBubble = value }

///|
pub extern "js" fn Event::stop_immediate_propagation(self : Event) -> Unit =
  #| (self) => self.stopImmediatePropagation()

///|
pub extern "js" fn Event::get_bubbles(self : Event) -> Bool =
  #| (self) => self.bubbles

///|
pub extern "js" fn Event::get_cancelable(self : Event) -> Bool =
  #| (self) => self.cancelable

///|
pub extern "js" fn Event::get_return_value(self : Event) -> Bool =
  #| (self) => self.returnValue

///|
pub extern "js" fn Event::set_return_value(self : Event, value : Bool) -> Unit =
  #| (self, value) => { self.returnValue = value }

///|
pub extern "js" fn Event::prevent_default(self : Event) -> Unit =
  #| (self) => self.preventDefault()

///|
pub extern "js" fn Event::get_default_prevented(self : Event) -> Bool =
  #| (self) => self.defaultPrevented

///|
pub extern "js" fn Event::get_composed(self : Event) -> Bool =
  #| (self) => self.composed

///|
pub extern "js" fn Event::get_is_trusted(self : Event) -> Bool =
  #| (self) => self.isTrusted

///|
pub extern "js" fn Event::get_time_stamp(self : Event) -> DOMHighResTimeStamp =
  #| (self) => self.timeStamp

///|
pub extern "js" fn Event::init_event(self : Event, type_ : String) -> Unit =
  #| (self, type_) => self.initEvent(type_)

///|
pub extern "js" fn Event::init_event_with_cancelable(
  self : Event,
  type_ : String,
  bubbles : Bool,
  cancelable : Bool,
) -> Unit =
  #| (self, type_, bubbles, cancelable) => self.initEvent(type_, bubbles, cancelable)

///|
/// CustomEvent interface
pub type CustomEvent

///|
pub extern "js" fn CustomEvent::to_js_value(self : CustomEvent) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CustomEvent::new(
  type_ : String,
  event_init_dict : EventInit,
) -> CustomEvent =
  #| (type_, event_init_dict) => new CustomEvent(type_, event_init_dict)

///|
pub extern "js" fn CustomEvent::get_type(self : CustomEvent) -> String =
  #| (self) => self.type

///|
pub extern "js" fn CustomEvent::get_target(self : CustomEvent) -> EventTarget? =
  #| (self) => self.target

///|
pub extern "js" fn CustomEvent::get_src_element(
  self : CustomEvent,
) -> EventTarget? =
  #| (self) => self.srcElement

///|
pub extern "js" fn CustomEvent::get_current_target(
  self : CustomEvent,
) -> EventTarget? =
  #| (self) => self.currentTarget

///|
pub extern "js" fn CustomEvent::composed_path(
  self : CustomEvent,
) -> Array[EventTarget] =
  #| (self) => self.composedPath()

// CustomEvent.NONE

///|
pub let custom_event_none : Int = 0

// CustomEvent.CAPTURING_PHASE

///|
pub let custom_event_capturing_phase : Int = 1

// CustomEvent.AT_TARGET

///|
pub let custom_event_at_target : Int = 2

// CustomEvent.BUBBLING_PHASE

///|
pub let custom_event_bubbling_phase : Int = 3

///|
pub extern "js" fn CustomEvent::get_event_phase(self : CustomEvent) -> Int =
  #| (self) => self.eventPhase

///|
pub extern "js" fn CustomEvent::stop_propagation(self : CustomEvent) -> Unit =
  #| (self) => self.stopPropagation()

///|
pub extern "js" fn CustomEvent::get_cancel_bubble(self : CustomEvent) -> Bool =
  #| (self) => self.cancelBubble

///|
pub extern "js" fn CustomEvent::set_cancel_bubble(
  self : CustomEvent,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.cancelBubble = value }

///|
pub extern "js" fn CustomEvent::stop_immediate_propagation(
  self : CustomEvent,
) -> Unit =
  #| (self) => self.stopImmediatePropagation()

///|
pub extern "js" fn CustomEvent::get_bubbles(self : CustomEvent) -> Bool =
  #| (self) => self.bubbles

///|
pub extern "js" fn CustomEvent::get_cancelable(self : CustomEvent) -> Bool =
  #| (self) => self.cancelable

///|
pub extern "js" fn CustomEvent::get_return_value(self : CustomEvent) -> Bool =
  #| (self) => self.returnValue

///|
pub extern "js" fn CustomEvent::set_return_value(
  self : CustomEvent,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.returnValue = value }

///|
pub extern "js" fn CustomEvent::prevent_default(self : CustomEvent) -> Unit =
  #| (self) => self.preventDefault()

///|
pub extern "js" fn CustomEvent::get_default_prevented(
  self : CustomEvent,
) -> Bool =
  #| (self) => self.defaultPrevented

///|
pub extern "js" fn CustomEvent::get_composed(self : CustomEvent) -> Bool =
  #| (self) => self.composed

///|
pub extern "js" fn CustomEvent::get_is_trusted(self : CustomEvent) -> Bool =
  #| (self) => self.isTrusted

///|
pub extern "js" fn CustomEvent::get_time_stamp(
  self : CustomEvent,
) -> DOMHighResTimeStamp =
  #| (self) => self.timeStamp

///|
pub extern "js" fn CustomEvent::init_event(
  self : CustomEvent,
  type_ : String,
) -> Unit =
  #| (self, type_) => self.initEvent(type_)

///|
pub extern "js" fn CustomEvent::init_event_with_cancelable(
  self : CustomEvent,
  type_ : String,
  bubbles : Bool,
  cancelable : Bool,
) -> Unit =
  #| (self, type_, bubbles, cancelable) => self.initEvent(type_, bubbles, cancelable)

///|
pub extern "js" fn CustomEvent::get_detail(self : CustomEvent) -> JsValue =
  #| (self) => self.detail

///|
pub extern "js" fn CustomEvent::init_custom_event(
  self : CustomEvent,
  type_ : String,
) -> Unit =
  #| (self, type_) => self.initCustomEvent(type_)

///|
pub extern "js" fn CustomEvent::init_custom_event_with_detail(
  self : CustomEvent,
  type_ : String,
  bubbles : Bool,
  cancelable : Bool,
  detail : JsValue,
) -> Unit =
  #| (self, type_, bubbles, cancelable, detail) => self.initCustomEvent(type_, bubbles, cancelable, detail)

///|
/// EventTarget interface
pub type EventTarget

///|
pub extern "js" fn EventTarget::to_js_value(self : EventTarget) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn EventTarget::new() -> EventTarget =
  #| () => new EventTarget()

///|
pub extern "js" fn EventTarget::add_event_listener(
  self : EventTarget,
  type_ : String,
  callback : EventListener?,
) -> Unit =
  #| (self, type_, callback) => self.addEventListener(type_, callback)

///|
pub extern "js" fn EventTarget::add_event_listener_with_options(
  self : EventTarget,
  type_ : String,
  callback : EventListener?,
  options : AddEventListenerOptionsOrBool,
) -> Unit =
  #| (self, type_, callback, options) => self.addEventListener(type_, callback, options)

///|
pub extern "js" fn EventTarget::remove_event_listener(
  self : EventTarget,
  type_ : String,
  callback : EventListener?,
) -> Unit =
  #| (self, type_, callback) => self.removeEventListener(type_, callback)

///|
pub extern "js" fn EventTarget::remove_event_listener_with_options(
  self : EventTarget,
  type_ : String,
  callback : EventListener?,
  options : EventListenerOptionsOrBool,
) -> Unit =
  #| (self, type_, callback, options) => self.removeEventListener(type_, callback, options)

///|
pub extern "js" fn EventTarget::dispatch_event(
  self : EventTarget,
  event : Event,
) -> Bool =
  #| (self, event) => self.dispatchEvent(event)

///|
pub extern "js" fn EventTarget::when(
  self : EventTarget,
  type_ : String,
) -> Observable =
  #| (self, type_) => self.when(type_)

///|
pub extern "js" fn EventTarget::when_with_options(
  self : EventTarget,
  type_ : String,
  options : ObservableEventListenerOptions,
) -> Observable =
  #| (self, type_, options) => self.when(type_, options)

///|
/// AbortController interface
pub type AbortController

///|
pub extern "js" fn AbortController::to_js_value(
  self : AbortController,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn AbortController::new() -> AbortController =
  #| () => new AbortController()

///|
pub extern "js" fn AbortController::get_signal(
  self : AbortController,
) -> AbortSignal =
  #| (self) => self.signal

///|
pub extern "js" fn AbortController::abort(self : AbortController) -> Unit =
  #| (self) => self.abort()

///|
pub extern "js" fn AbortController::abort_with_reason(
  self : AbortController,
  reason : JsValue,
) -> Unit =
  #| (self, reason) => self.abort(reason)

///|
/// AbortSignal interface
pub type AbortSignal

///|
pub extern "js" fn AbortSignal::to_js_value(self : AbortSignal) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn AbortSignal::new() -> AbortSignal =
  #| () => new AbortSignal()

///|
pub extern "js" fn AbortSignal::add_event_listener(
  self : AbortSignal,
  type_ : String,
  callback : EventListener?,
) -> Unit =
  #| (self, type_, callback) => self.addEventListener(type_, callback)

///|
pub extern "js" fn AbortSignal::add_event_listener_with_options(
  self : AbortSignal,
  type_ : String,
  callback : EventListener?,
  options : AddEventListenerOptionsOrBool,
) -> Unit =
  #| (self, type_, callback, options) => self.addEventListener(type_, callback, options)

///|
pub extern "js" fn AbortSignal::remove_event_listener(
  self : AbortSignal,
  type_ : String,
  callback : EventListener?,
) -> Unit =
  #| (self, type_, callback) => self.removeEventListener(type_, callback)

///|
pub extern "js" fn AbortSignal::remove_event_listener_with_options(
  self : AbortSignal,
  type_ : String,
  callback : EventListener?,
  options : EventListenerOptionsOrBool,
) -> Unit =
  #| (self, type_, callback, options) => self.removeEventListener(type_, callback, options)

///|
pub extern "js" fn AbortSignal::dispatch_event(
  self : AbortSignal,
  event : Event,
) -> Bool =
  #| (self, event) => self.dispatchEvent(event)

///|
pub extern "js" fn AbortSignal::when(
  self : AbortSignal,
  type_ : String,
) -> Observable =
  #| (self, type_) => self.when(type_)

///|
pub extern "js" fn AbortSignal::when_with_options(
  self : AbortSignal,
  type_ : String,
  options : ObservableEventListenerOptions,
) -> Observable =
  #| (self, type_, options) => self.when(type_, options)

///|
pub extern "js" fn AbortSignal::abort(reason : JsValue) -> AbortSignal =
  #| (reason) => AbortSignal.abort(reason)

///|
pub extern "js" fn AbortSignal::timeout(milliseconds : Int64) -> AbortSignal =
  #| (milliseconds) => AbortSignal.timeout(milliseconds)

///|
pub extern "js" fn AbortSignal::any(
  signals : Array[AbortSignal],
) -> AbortSignal =
  #| (signals) => AbortSignal.any(signals)

///|
pub extern "js" fn AbortSignal::get_aborted(self : AbortSignal) -> Bool =
  #| (self) => self.aborted

///|
pub extern "js" fn AbortSignal::get_reason(self : AbortSignal) -> JsValue =
  #| (self) => self.reason

///|
pub extern "js" fn AbortSignal::throw_if_aborted(self : AbortSignal) -> Unit =
  #| (self) => self.throwIfAborted()

///|
pub extern "js" fn AbortSignal::get_onabort(self : AbortSignal) -> EventHandler =
  #| (self) => self.onabort

///|
pub extern "js" fn AbortSignal::set_onabort(
  self : AbortSignal,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onabort = value }

///|
/// NodeList interface
pub type NodeList

///|
pub extern "js" fn NodeList::to_js_value(self : NodeList) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn NodeList::item(self : NodeList, index : Int) -> Node? =
  #| (self, index) => self.item(index)

///|
pub extern "js" fn NodeList::get(self : NodeList, index : Int) -> Node? =
  #| (self, index) => self[index]

///|
pub extern "js" fn NodeList::get_length(self : NodeList) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn NodeList::_unknown_(self : NodeList) -> Unit =
  #| (self) => self._unknown_()

///|
/// HTMLCollection interface
pub type HTMLCollection

///|
pub extern "js" fn HTMLCollection::to_js_value(
  self : HTMLCollection,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn HTMLCollection::get_length(self : HTMLCollection) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn HTMLCollection::item(
  self : HTMLCollection,
  index : Int,
) -> Element? =
  #| (self, index) => self.item(index)

///|
pub extern "js" fn HTMLCollection::get(
  self : HTMLCollection,
  index : Int,
) -> Element? =
  #| (self, index) => self[index]

///|
pub extern "js" fn HTMLCollection::named_item(
  self : HTMLCollection,
  name : String,
) -> Element? =
  #| (self, name) => self.namedItem(name)

///|
pub extern "js" fn HTMLCollection::get_named(
  self : HTMLCollection,
  name : String,
) -> Element? =
  #| (self, name) => self[name]

///|
/// MutationObserver interface
pub type MutationObserver

///|
pub extern "js" fn MutationObserver::to_js_value(
  self : MutationObserver,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn MutationObserver::new(
  callback : MutationCallback,
) -> MutationObserver =
  #| (callback) => new MutationObserver(callback)

///|
pub extern "js" fn MutationObserver::observe(
  self : MutationObserver,
  target : Node,
) -> Unit =
  #| (self, target) => self.observe(target)

///|
pub extern "js" fn MutationObserver::observe_with_options(
  self : MutationObserver,
  target : Node,
  options : MutationObserverInit,
) -> Unit =
  #| (self, target, options) => self.observe(target, options)

///|
pub extern "js" fn MutationObserver::disconnect(
  self : MutationObserver,
) -> Unit =
  #| (self) => self.disconnect()

///|
pub extern "js" fn MutationObserver::take_records(
  self : MutationObserver,
) -> Array[MutationRecord] =
  #| (self) => self.takeRecords()

///|
/// MutationRecord interface
pub type MutationRecord

///|
pub extern "js" fn MutationRecord::to_js_value(
  self : MutationRecord,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn MutationRecord::get_type(self : MutationRecord) -> String =
  #| (self) => self.type

///|
pub extern "js" fn MutationRecord::get_target(self : MutationRecord) -> Node =
  #| (self) => self.target

///|
pub extern "js" fn MutationRecord::get_added_nodes(
  self : MutationRecord,
) -> NodeList =
  #| (self) => self.addedNodes

///|
pub extern "js" fn MutationRecord::get_removed_nodes(
  self : MutationRecord,
) -> NodeList =
  #| (self) => self.removedNodes

///|
pub extern "js" fn MutationRecord::get_previous_sibling(
  self : MutationRecord,
) -> Node? =
  #| (self) => self.previousSibling

///|
pub extern "js" fn MutationRecord::get_next_sibling(
  self : MutationRecord,
) -> Node? =
  #| (self) => self.nextSibling

///|
pub extern "js" fn MutationRecord::get_attribute_name(
  self : MutationRecord,
) -> String? =
  #| (self) => self.attributeName

///|
pub extern "js" fn MutationRecord::get_attribute_namespace(
  self : MutationRecord,
) -> String? =
  #| (self) => self.attributeNamespace

///|
pub extern "js" fn MutationRecord::get_old_value(
  self : MutationRecord,
) -> String? =
  #| (self) => self.oldValue

///|
/// Node interface
pub type Node

///|
pub extern "js" fn Node::to_js_value(self : Node) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn Node::new() -> Node =
  #| () => new Node()

///|
pub extern "js" fn Node::add_event_listener(
  self : Node,
  type_ : String,
  callback : EventListener?,
) -> Unit =
  #| (self, type_, callback) => self.addEventListener(type_, callback)

///|
pub extern "js" fn Node::add_event_listener_with_options(
  self : Node,
  type_ : String,
  callback : EventListener?,
  options : AddEventListenerOptionsOrBool,
) -> Unit =
  #| (self, type_, callback, options) => self.addEventListener(type_, callback, options)

///|
pub extern "js" fn Node::remove_event_listener(
  self : Node,
  type_ : String,
  callback : EventListener?,
) -> Unit =
  #| (self, type_, callback) => self.removeEventListener(type_, callback)

///|
pub extern "js" fn Node::remove_event_listener_with_options(
  self : Node,
  type_ : String,
  callback : EventListener?,
  options : EventListenerOptionsOrBool,
) -> Unit =
  #| (self, type_, callback, options) => self.removeEventListener(type_, callback, options)

///|
pub extern "js" fn Node::dispatch_event(self : Node, event : Event) -> Bool =
  #| (self, event) => self.dispatchEvent(event)

///|
pub extern "js" fn Node::when(self : Node, type_ : String) -> Observable =
  #| (self, type_) => self.when(type_)

///|
pub extern "js" fn Node::when_with_options(
  self : Node,
  type_ : String,
  options : ObservableEventListenerOptions,
) -> Observable =
  #| (self, type_, options) => self.when(type_, options)

// Node.ELEMENT_NODE

///|
pub let node_element_node : Int = 1

// Node.ATTRIBUTE_NODE

///|
pub let node_attribute_node : Int = 2

// Node.TEXT_NODE

///|
pub let node_text_node : Int = 3

// Node.CDATA_SECTION_NODE

///|
pub let node_cdata_section_node : Int = 4

// Node.ENTITY_REFERENCE_NODE

///|
pub let node_entity_reference_node : Int = 5

// Node.ENTITY_NODE

///|
pub let node_entity_node : Int = 6

// Node.PROCESSING_INSTRUCTION_NODE

///|
pub let node_processing_instruction_node : Int = 7

// Node.COMMENT_NODE

///|
pub let node_comment_node : Int = 8

// Node.DOCUMENT_NODE

///|
pub let node_document_node : Int = 9

// Node.DOCUMENT_TYPE_NODE

///|
pub let node_document_type_node : Int = 10

// Node.DOCUMENT_FRAGMENT_NODE

///|
pub let node_document_fragment_node : Int = 11

// Node.NOTATION_NODE

///|
pub let node_notation_node : Int = 12

///|
pub extern "js" fn Node::get_node_type(self : Node) -> Int =
  #| (self) => self.nodeType

///|
pub extern "js" fn Node::get_node_name(self : Node) -> String =
  #| (self) => self.nodeName

///|
pub extern "js" fn Node::get_base_u_r_i(self : Node) -> String =
  #| (self) => self.baseURI

///|
pub extern "js" fn Node::get_is_connected(self : Node) -> Bool =
  #| (self) => self.isConnected

///|
pub extern "js" fn Node::get_owner_document(self : Node) -> Document? =
  #| (self) => self.ownerDocument

///|
pub extern "js" fn Node::get_root_node(self : Node) -> Node =
  #| (self) => self.getRootNode()

///|
pub extern "js" fn Node::get_root_node_with_options(
  self : Node,
  options : GetRootNodeOptions,
) -> Node =
  #| (self, options) => self.getRootNode(options)

///|
pub extern "js" fn Node::get_parent_node(self : Node) -> Node? =
  #| (self) => self.parentNode

///|
pub extern "js" fn Node::get_parent_element(self : Node) -> Element? =
  #| (self) => self.parentElement

///|
pub extern "js" fn Node::has_child_nodes(self : Node) -> Bool =
  #| (self) => self.hasChildNodes()

///|
pub extern "js" fn Node::get_child_nodes(self : Node) -> NodeList =
  #| (self) => self.childNodes

///|
pub extern "js" fn Node::get_first_child(self : Node) -> Node? =
  #| (self) => self.firstChild

///|
pub extern "js" fn Node::get_last_child(self : Node) -> Node? =
  #| (self) => self.lastChild

///|
pub extern "js" fn Node::get_previous_sibling(self : Node) -> Node? =
  #| (self) => self.previousSibling

///|
pub extern "js" fn Node::get_next_sibling(self : Node) -> Node? =
  #| (self) => self.nextSibling

///|
pub extern "js" fn Node::get_node_value(self : Node) -> String? =
  #| (self) => self.nodeValue

///|
pub extern "js" fn Node::set_node_value(self : Node, value : String?) -> Unit =
  #| (self, value) => { self.nodeValue = value }

///|
pub extern "js" fn Node::get_text_content(self : Node) -> String? =
  #| (self) => self.textContent

///|
pub extern "js" fn Node::set_text_content(self : Node, value : String?) -> Unit =
  #| (self, value) => { self.textContent = value }

///|
pub extern "js" fn Node::normalize(self : Node) -> Unit =
  #| (self) => self.normalize()

///|
pub extern "js" fn Node::clone_node(self : Node) -> Node =
  #| (self) => self.cloneNode()

///|
pub extern "js" fn Node::clone_node_with_subtree(
  self : Node,
  subtree : Bool,
) -> Node =
  #| (self, subtree) => self.cloneNode(subtree)

///|
pub extern "js" fn Node::is_equal_node(self : Node, other_node : Node?) -> Bool =
  #| (self, other_node) => self.isEqualNode(other_node)

///|
pub extern "js" fn Node::is_same_node(self : Node, other_node : Node?) -> Bool =
  #| (self, other_node) => self.isSameNode(other_node)

// Node.DOCUMENT_POSITION_DISCONNECTED

///|
pub let node_document_position_disconnected : Int = 0x01

// Node.DOCUMENT_POSITION_PRECEDING

///|
pub let node_document_position_preceding : Int = 0x02

// Node.DOCUMENT_POSITION_FOLLOWING

///|
pub let node_document_position_following : Int = 0x04

// Node.DOCUMENT_POSITION_CONTAINS

///|
pub let node_document_position_contains : Int = 0x08

// Node.DOCUMENT_POSITION_CONTAINED_BY

///|
pub let node_document_position_contained_by : Int = 0x10

// Node.DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC

///|
pub let node_document_position_implementation_specific : Int = 0x20

///|
pub extern "js" fn Node::compare_document_position(
  self : Node,
  other : Node,
) -> Int =
  #| (self, other) => self.compareDocumentPosition(other)

///|
pub extern "js" fn Node::contains(self : Node, other : Node?) -> Bool =
  #| (self, other) => self.contains(other)

///|
pub extern "js" fn Node::lookup_prefix(
  self : Node,
  namespace_ : String?,
) -> String? =
  #| (self, namespace_) => self.lookupPrefix(namespace_)

///|
pub extern "js" fn Node::lookup_namespace_u_r_i(
  self : Node,
  prefix : String?,
) -> String? =
  #| (self, prefix) => self.lookupNamespaceURI(prefix)

///|
pub extern "js" fn Node::is_default_namespace(
  self : Node,
  namespace_ : String?,
) -> Bool =
  #| (self, namespace_) => self.isDefaultNamespace(namespace_)

///|
pub extern "js" fn Node::insert_before(
  self : Node,
  node : Node,
  child : Node?,
) -> Node =
  #| (self, node, child) => self.insertBefore(node, child)

///|
pub extern "js" fn Node::append_child(self : Node, node : Node) -> Node =
  #| (self, node) => self.appendChild(node)

///|
pub extern "js" fn Node::replace_child(
  self : Node,
  node : Node,
  child : Node,
) -> Node =
  #| (self, node, child) => self.replaceChild(node, child)

///|
pub extern "js" fn Node::remove_child(self : Node, child : Node) -> Node =
  #| (self, child) => self.removeChild(child)

///|
/// Document interface
pub type Document

///|
pub extern "js" fn Document::to_js_value(self : Document) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn Document::new() -> Document =
  #| () => new Document()

///|
pub extern "js" fn Document::add_event_listener(
  self : Document,
  type_ : String,
  callback : EventListener?,
) -> Unit =
  #| (self, type_, callback) => self.addEventListener(type_, callback)

///|
pub extern "js" fn Document::add_event_listener_with_options(
  self : Document,
  type_ : String,
  callback : EventListener?,
  options : AddEventListenerOptionsOrBool,
) -> Unit =
  #| (self, type_, callback, options) => self.addEventListener(type_, callback, options)

///|
pub extern "js" fn Document::remove_event_listener(
  self : Document,
  type_ : String,
  callback : EventListener?,
) -> Unit =
  #| (self, type_, callback) => self.removeEventListener(type_, callback)

///|
pub extern "js" fn Document::remove_event_listener_with_options(
  self : Document,
  type_ : String,
  callback : EventListener?,
  options : EventListenerOptionsOrBool,
) -> Unit =
  #| (self, type_, callback, options) => self.removeEventListener(type_, callback, options)

///|
pub extern "js" fn Document::dispatch_event(
  self : Document,
  event : Event,
) -> Bool =
  #| (self, event) => self.dispatchEvent(event)

///|
pub extern "js" fn Document::when(
  self : Document,
  type_ : String,
) -> Observable =
  #| (self, type_) => self.when(type_)

///|
pub extern "js" fn Document::when_with_options(
  self : Document,
  type_ : String,
  options : ObservableEventListenerOptions,
) -> Observable =
  #| (self, type_, options) => self.when(type_, options)

// Document.ELEMENT_NODE

///|
pub let document_element_node : Int = 1

// Document.ATTRIBUTE_NODE

///|
pub let document_attribute_node : Int = 2

// Document.TEXT_NODE

///|
pub let document_text_node : Int = 3

// Document.CDATA_SECTION_NODE

///|
pub let document_cdata_section_node : Int = 4

// Document.ENTITY_REFERENCE_NODE

///|
pub let document_entity_reference_node : Int = 5

// Document.ENTITY_NODE

///|
pub let document_entity_node : Int = 6

// Document.PROCESSING_INSTRUCTION_NODE

///|
pub let document_processing_instruction_node : Int = 7

// Document.COMMENT_NODE

///|
pub let document_comment_node : Int = 8

// Document.DOCUMENT_NODE

///|
pub let document_document_node : Int = 9

// Document.DOCUMENT_TYPE_NODE

///|
pub let document_document_type_node : Int = 10

// Document.DOCUMENT_FRAGMENT_NODE

///|
pub let document_document_fragment_node : Int = 11

// Document.NOTATION_NODE

///|
pub let document_notation_node : Int = 12

///|
pub extern "js" fn Document::get_node_type(self : Document) -> Int =
  #| (self) => self.nodeType

///|
pub extern "js" fn Document::get_node_name(self : Document) -> String =
  #| (self) => self.nodeName

///|
pub extern "js" fn Document::get_base_u_r_i(self : Document) -> String =
  #| (self) => self.baseURI

///|
pub extern "js" fn Document::get_is_connected(self : Document) -> Bool =
  #| (self) => self.isConnected

///|
pub extern "js" fn Document::get_owner_document(self : Document) -> Document? =
  #| (self) => self.ownerDocument

///|
pub extern "js" fn Document::get_root_node(self : Document) -> Node =
  #| (self) => self.getRootNode()

///|
pub extern "js" fn Document::get_root_node_with_options(
  self : Document,
  options : GetRootNodeOptions,
) -> Node =
  #| (self, options) => self.getRootNode(options)

///|
pub extern "js" fn Document::get_parent_node(self : Document) -> Node? =
  #| (self) => self.parentNode

///|
pub extern "js" fn Document::get_parent_element(self : Document) -> Element? =
  #| (self) => self.parentElement

///|
pub extern "js" fn Document::has_child_nodes(self : Document) -> Bool =
  #| (self) => self.hasChildNodes()

///|
pub extern "js" fn Document::get_child_nodes(self : Document) -> NodeList =
  #| (self) => self.childNodes

///|
pub extern "js" fn Document::get_first_child(self : Document) -> Node? =
  #| (self) => self.firstChild

///|
pub extern "js" fn Document::get_last_child(self : Document) -> Node? =
  #| (self) => self.lastChild

///|
pub extern "js" fn Document::get_previous_sibling(self : Document) -> Node? =
  #| (self) => self.previousSibling

///|
pub extern "js" fn Document::get_next_sibling(self : Document) -> Node? =
  #| (self) => self.nextSibling

///|
pub extern "js" fn Document::get_node_value(self : Document) -> String? =
  #| (self) => self.nodeValue

///|
pub extern "js" fn Document::set_node_value(
  self : Document,
  value : String?,
) -> Unit =
  #| (self, value) => { self.nodeValue = value }

///|
pub extern "js" fn Document::get_text_content(self : Document) -> String? =
  #| (self) => self.textContent

///|
pub extern "js" fn Document::set_text_content(
  self : Document,
  value : String?,
) -> Unit =
  #| (self, value) => { self.textContent = value }

///|
pub extern "js" fn Document::normalize(self : Document) -> Unit =
  #| (self) => self.normalize()

///|
pub extern "js" fn Document::clone_node(self : Document) -> Node =
  #| (self) => self.cloneNode()

///|
pub extern "js" fn Document::clone_node_with_subtree(
  self : Document,
  subtree : Bool,
) -> Node =
  #| (self, subtree) => self.cloneNode(subtree)

///|
pub extern "js" fn Document::is_equal_node(
  self : Document,
  other_node : Node?,
) -> Bool =
  #| (self, other_node) => self.isEqualNode(other_node)

///|
pub extern "js" fn Document::is_same_node(
  self : Document,
  other_node : Node?,
) -> Bool =
  #| (self, other_node) => self.isSameNode(other_node)

// Document.DOCUMENT_POSITION_DISCONNECTED

///|
pub let document_document_position_disconnected : Int = 0x01

// Document.DOCUMENT_POSITION_PRECEDING

///|
pub let document_document_position_preceding : Int = 0x02

// Document.DOCUMENT_POSITION_FOLLOWING

///|
pub let document_document_position_following : Int = 0x04

// Document.DOCUMENT_POSITION_CONTAINS

///|
pub let document_document_position_contains : Int = 0x08

// Document.DOCUMENT_POSITION_CONTAINED_BY

///|
pub let document_document_position_contained_by : Int = 0x10

// Document.DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC

///|
pub let document_document_position_implementation_specific : Int = 0x20

///|
pub extern "js" fn Document::compare_document_position(
  self : Document,
  other : Node,
) -> Int =
  #| (self, other) => self.compareDocumentPosition(other)

///|
pub extern "js" fn Document::contains(self : Document, other : Node?) -> Bool =
  #| (self, other) => self.contains(other)

///|
pub extern "js" fn Document::lookup_prefix(
  self : Document,
  namespace_ : String?,
) -> String? =
  #| (self, namespace_) => self.lookupPrefix(namespace_)

///|
pub extern "js" fn Document::lookup_namespace_u_r_i(
  self : Document,
  prefix : String?,
) -> String? =
  #| (self, prefix) => self.lookupNamespaceURI(prefix)

///|
pub extern "js" fn Document::is_default_namespace(
  self : Document,
  namespace_ : String?,
) -> Bool =
  #| (self, namespace_) => self.isDefaultNamespace(namespace_)

///|
pub extern "js" fn Document::insert_before(
  self : Document,
  node : Node,
  child : Node?,
) -> Node =
  #| (self, node, child) => self.insertBefore(node, child)

///|
pub extern "js" fn Document::append_child(self : Document, node : Node) -> Node =
  #| (self, node) => self.appendChild(node)

///|
pub extern "js" fn Document::replace_child(
  self : Document,
  node : Node,
  child : Node,
) -> Node =
  #| (self, node, child) => self.replaceChild(node, child)

///|
pub extern "js" fn Document::remove_child(
  self : Document,
  child : Node,
) -> Node =
  #| (self, child) => self.removeChild(child)

///|
pub extern "js" fn Document::get_implementation(
  self : Document,
) -> DOMImplementation =
  #| (self) => self.implementation

///|
pub extern "js" fn Document::get_u_r_l(self : Document) -> String =
  #| (self) => self.URL

///|
pub extern "js" fn Document::get_document_u_r_i(self : Document) -> String =
  #| (self) => self.documentURI

///|
pub extern "js" fn Document::get_compat_mode(self : Document) -> String =
  #| (self) => self.compatMode

///|
pub extern "js" fn Document::get_character_set(self : Document) -> String =
  #| (self) => self.characterSet

///|
pub extern "js" fn Document::get_charset(self : Document) -> String =
  #| (self) => self.charset

///|
pub extern "js" fn Document::get_input_encoding(self : Document) -> String =
  #| (self) => self.inputEncoding

///|
pub extern "js" fn Document::get_content_type(self : Document) -> String =
  #| (self) => self.contentType

///|
pub extern "js" fn Document::get_doctype(self : Document) -> DocumentType? =
  #| (self) => self.doctype

///|
pub extern "js" fn Document::get_document_element(self : Document) -> Element? =
  #| (self) => self.documentElement

///|
pub extern "js" fn Document::get_elements_by_tag_name(
  self : Document,
  qualified_name : String,
) -> HTMLCollection =
  #| (self, qualified_name) => self.getElementsByTagName(qualified_name)

///|
pub extern "js" fn Document::get_elements_by_tag_name_n_s(
  self : Document,
  namespace_ : String?,
  local_name : String,
) -> HTMLCollection =
  #| (self, namespace_, local_name) => self.getElementsByTagNameNS(namespace_, local_name)

///|
pub extern "js" fn Document::get_elements_by_class_name(
  self : Document,
  class_names : String,
) -> HTMLCollection =
  #| (self, class_names) => self.getElementsByClassName(class_names)

///|
pub extern "js" fn Document::create_element(
  self : Document,
  local_name : String,
) -> Element =
  #| (self, local_name) => self.createElement(local_name)

///|
pub extern "js" fn Document::create_element_with_options(
  self : Document,
  local_name : String,
  options : StringOrElementCreationOptions,
) -> Element =
  #| (self, local_name, options) => self.createElement(local_name, options)

///|
pub extern "js" fn Document::create_element_n_s(
  self : Document,
  namespace_ : String?,
  qualified_name : String,
) -> Element =
  #| (self, namespace_, qualified_name) => self.createElementNS(namespace_, qualified_name)

///|
pub extern "js" fn Document::create_element_n_s_with_options(
  self : Document,
  namespace_ : String?,
  qualified_name : String,
  options : StringOrElementCreationOptions,
) -> Element =
  #| (self, namespace_, qualified_name, options) => self.createElementNS(namespace_, qualified_name, options)

///|
pub extern "js" fn Document::create_document_fragment(
  self : Document,
) -> DocumentFragment =
  #| (self) => self.createDocumentFragment()

///|
pub extern "js" fn Document::create_text_node(
  self : Document,
  data : String,
) -> Text =
  #| (self, data) => self.createTextNode(data)

///|
pub extern "js" fn Document::create_c_d_a_t_a_section(
  self : Document,
  data : String,
) -> CDATASection =
  #| (self, data) => self.createCDATASection(data)

///|
pub extern "js" fn Document::create_comment(
  self : Document,
  data : String,
) -> Comment =
  #| (self, data) => self.createComment(data)

///|
pub extern "js" fn Document::create_processing_instruction(
  self : Document,
  target : String,
  data : String,
) -> ProcessingInstruction =
  #| (self, target, data) => self.createProcessingInstruction(target, data)

///|
pub extern "js" fn Document::import_node(self : Document, node : Node) -> Node =
  #| (self, node) => self.importNode(node)

///|
pub extern "js" fn Document::import_node_with_options(
  self : Document,
  node : Node,
  options : BoolOrImportNodeOptions,
) -> Node =
  #| (self, node, options) => self.importNode(node, options)

///|
pub extern "js" fn Document::adopt_node(self : Document, node : Node) -> Node =
  #| (self, node) => self.adoptNode(node)

///|
pub extern "js" fn Document::create_attribute(
  self : Document,
  local_name : String,
) -> Attr =
  #| (self, local_name) => self.createAttribute(local_name)

///|
pub extern "js" fn Document::create_attribute_n_s(
  self : Document,
  namespace_ : String?,
  qualified_name : String,
) -> Attr =
  #| (self, namespace_, qualified_name) => self.createAttributeNS(namespace_, qualified_name)

///|
pub extern "js" fn Document::create_event(
  self : Document,
  interface : String,
) -> Event =
  #| (self, interface) => self.createEvent(interface)

///|
pub extern "js" fn Document::create_range(self : Document) -> Range =
  #| (self) => self.createRange()

///|
pub extern "js" fn Document::create_node_iterator(
  self : Document,
  root : Node,
) -> NodeIterator =
  #| (self, root) => self.createNodeIterator(root)

///|
pub extern "js" fn Document::create_node_iterator_with_filter(
  self : Document,
  root : Node,
  what_to_show : Int,
  filter : NodeFilter?,
) -> NodeIterator =
  #| (self, root, what_to_show, filter) => self.createNodeIterator(root, what_to_show, filter)

///|
pub extern "js" fn Document::create_tree_walker(
  self : Document,
  root : Node,
) -> TreeWalker =
  #| (self, root) => self.createTreeWalker(root)

///|
pub extern "js" fn Document::create_tree_walker_with_filter(
  self : Document,
  root : Node,
  what_to_show : Int,
  filter : NodeFilter?,
) -> TreeWalker =
  #| (self, root, what_to_show, filter) => self.createTreeWalker(root, what_to_show, filter)

///|
pub extern "js" fn Document::get_root_element(
  self : Document,
) -> SVGSVGElement? =
  #| (self) => self.rootElement

///|
pub extern "js" fn Document::get_named_flows(self : Document) -> NamedFlowMap =
  #| (self) => self.namedFlows

///|
pub extern "js" fn Document::start_view_transition(
  self : Document,
) -> ViewTransition =
  #| (self) => self.startViewTransition()

///|
pub extern "js" fn Document::start_view_transition_with_callback_options(
  self : Document,
  callback_options : ViewTransitionUpdateCallbackOrStartViewTransitionOptions,
) -> ViewTransition =
  #| (self, callback_options) => self.startViewTransition(callback_options)

///|
pub extern "js" fn Document::get_active_view_transition(
  self : Document,
) -> ViewTransition? =
  #| (self) => self.activeViewTransition

///|
pub extern "js" fn Document::element_from_point(
  self : Document,
  x : Double,
  y : Double,
) -> Element? =
  #| (self, x, y) => self.elementFromPoint(x, y)

///|
pub extern "js" fn Document::elements_from_point(
  self : Document,
  x : Double,
  y : Double,
) -> Array[Element] =
  #| (self, x, y) => self.elementsFromPoint(x, y)

///|
pub extern "js" fn Document::caret_position_from_point(
  self : Document,
  x : Double,
  y : Double,
) -> CaretPosition? =
  #| (self, x, y) => self.caretPositionFromPoint(x, y)

///|
pub extern "js" fn Document::caret_position_from_point_with_options(
  self : Document,
  x : Double,
  y : Double,
  options : CaretPositionFromPointOptions,
) -> CaretPosition? =
  #| (self, x, y, options) => self.caretPositionFromPoint(x, y, options)

///|
pub extern "js" fn Document::get_scrolling_element(self : Document) -> Element? =
  #| (self) => self.scrollingElement

///|
pub extern "js" fn Document::measure_element(
  self : Document,
  element : Element,
) -> FontMetrics =
  #| (self, element) => self.measureElement(element)

///|
pub extern "js" fn Document::measure_text(
  self : Document,
  text : String,
  style_map : StylePropertyMapReadOnly,
) -> FontMetrics =
  #| (self, text, style_map) => self.measureText(text, style_map)

///|
pub extern "js" fn Document::get_fullscreen_enabled(self : Document) -> Bool =
  #| (self) => self.fullscreenEnabled

///|
pub extern "js" fn Document::get_fullscreen(self : Document) -> Bool =
  #| (self) => self.fullscreen

///|
pub extern "js" fn Document::exit_fullscreen(self : Document) -> Promise[Unit] =
  #| (self) => self.exitFullscreen()

///|
pub extern "js" fn Document::get_onfullscreenchange(
  self : Document,
) -> EventHandler =
  #| (self) => self.onfullscreenchange

///|
pub extern "js" fn Document::set_onfullscreenchange(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onfullscreenchange = value }

///|
pub extern "js" fn Document::get_onfullscreenerror(
  self : Document,
) -> EventHandler =
  #| (self) => self.onfullscreenerror

///|
pub extern "js" fn Document::set_onfullscreenerror(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onfullscreenerror = value }

///|
pub extern "js" fn Document::parse_h_t_m_l_unsafe(
  html : TrustedHTMLOrString,
) -> Document =
  #| (html) => Document.parseHTMLUnsafe(html)

///|
pub extern "js" fn Document::get_location(self : Document) -> Location? =
  #| (self) => self.location

///|
pub extern "js" fn Document::get_domain(self : Document) -> String =
  #| (self) => self.domain

///|
pub extern "js" fn Document::set_domain(
  self : Document,
  value : String,
) -> Unit =
  #| (self, value) => { self.domain = value }

///|
pub extern "js" fn Document::get_referrer(self : Document) -> String =
  #| (self) => self.referrer

///|
pub extern "js" fn Document::get_cookie(self : Document) -> String =
  #| (self) => self.cookie

///|
pub extern "js" fn Document::set_cookie(
  self : Document,
  value : String,
) -> Unit =
  #| (self, value) => { self.cookie = value }

///|
pub extern "js" fn Document::get_last_modified(self : Document) -> String =
  #| (self) => self.lastModified

///|
pub extern "js" fn Document::get_ready_state(
  self : Document,
) -> DocumentReadyState =
  #| (self) => self.readyState

///|
pub extern "js" fn Document::get_named(
  self : Document,
  name : String,
) -> JsValue =
  #| (self, name) => self[name]

///|
pub extern "js" fn Document::get_title(self : Document) -> String =
  #| (self) => self.title

///|
pub extern "js" fn Document::set_title(self : Document, value : String) -> Unit =
  #| (self, value) => { self.title = value }

///|
pub extern "js" fn Document::get_dir(self : Document) -> String =
  #| (self) => self.dir

///|
pub extern "js" fn Document::set_dir(self : Document, value : String) -> Unit =
  #| (self, value) => { self.dir = value }

///|
pub extern "js" fn Document::get_body(self : Document) -> HTMLElement? =
  #| (self) => self.body

///|
pub extern "js" fn Document::set_body(
  self : Document,
  value : HTMLElement?,
) -> Unit =
  #| (self, value) => { self.body = value }

///|
pub extern "js" fn Document::get_head(self : Document) -> HTMLHeadElement? =
  #| (self) => self.head

///|
pub extern "js" fn Document::get_images(self : Document) -> HTMLCollection =
  #| (self) => self.images

///|
pub extern "js" fn Document::get_embeds(self : Document) -> HTMLCollection =
  #| (self) => self.embeds

///|
pub extern "js" fn Document::get_plugins(self : Document) -> HTMLCollection =
  #| (self) => self.plugins

///|
pub extern "js" fn Document::get_links(self : Document) -> HTMLCollection =
  #| (self) => self.links

///|
pub extern "js" fn Document::get_forms(self : Document) -> HTMLCollection =
  #| (self) => self.forms

///|
pub extern "js" fn Document::get_scripts(self : Document) -> HTMLCollection =
  #| (self) => self.scripts

///|
pub extern "js" fn Document::get_elements_by_name(
  self : Document,
  element_name : String,
) -> NodeList =
  #| (self, element_name) => self.getElementsByName(element_name)

///|
pub extern "js" fn Document::get_current_script(
  self : Document,
) -> HTMLOrSVGScriptElement? =
  #| (self) => self.currentScript

///|
pub extern "js" fn Document::open(self : Document) -> Document =
  #| (self) => self.open()

///|
pub extern "js" fn Document::open_with_unused2(
  self : Document,
  unused1 : String,
  unused2 : String,
) -> Document =
  #| (self, unused1, unused2) => self.open(unused1, unused2)

///|
pub extern "js" fn Document::open_with_url_and_name_and_features(
  self : Document,
  url : String,
  name : String,
  features : String,
) -> WindowProxy? =
  #| (self, url, name, features) => self.open(url, name, features)

///|
pub extern "js" fn Document::close(self : Document) -> Unit =
  #| (self) => self.close()

///|
pub extern "js" fn Document::write(
  self : Document,
  text : TrustedHTMLOrString,
) -> Unit =
  #| (self, text) => self.write(text)

///|
pub extern "js" fn Document::writeln(
  self : Document,
  text : TrustedHTMLOrString,
) -> Unit =
  #| (self, text) => self.writeln(text)

///|
pub extern "js" fn Document::get_default_view(self : Document) -> WindowProxy? =
  #| (self) => self.defaultView

///|
pub extern "js" fn Document::has_focus(self : Document) -> Bool =
  #| (self) => self.hasFocus()

///|
pub extern "js" fn Document::get_design_mode(self : Document) -> String =
  #| (self) => self.designMode

///|
pub extern "js" fn Document::set_design_mode(
  self : Document,
  value : String,
) -> Unit =
  #| (self, value) => { self.designMode = value }

///|
pub extern "js" fn Document::exec_command(
  self : Document,
  command_id : String,
) -> Bool =
  #| (self, command_id) => self.execCommand(command_id)

///|
pub extern "js" fn Document::exec_command_with_value(
  self : Document,
  command_id : String,
  show_u_i : Bool,
  value : String,
) -> Bool =
  #| (self, command_id, show_u_i, value) => self.execCommand(command_id, show_u_i, value)

///|
pub extern "js" fn Document::query_command_enabled(
  self : Document,
  command_id : String,
) -> Bool =
  #| (self, command_id) => self.queryCommandEnabled(command_id)

///|
pub extern "js" fn Document::query_command_indeterm(
  self : Document,
  command_id : String,
) -> Bool =
  #| (self, command_id) => self.queryCommandIndeterm(command_id)

///|
pub extern "js" fn Document::query_command_state(
  self : Document,
  command_id : String,
) -> Bool =
  #| (self, command_id) => self.queryCommandState(command_id)

///|
pub extern "js" fn Document::query_command_supported(
  self : Document,
  command_id : String,
) -> Bool =
  #| (self, command_id) => self.queryCommandSupported(command_id)

///|
pub extern "js" fn Document::query_command_value(
  self : Document,
  command_id : String,
) -> String =
  #| (self, command_id) => self.queryCommandValue(command_id)

///|
pub extern "js" fn Document::get_hidden(self : Document) -> Bool =
  #| (self) => self.hidden

///|
pub extern "js" fn Document::get_visibility_state(
  self : Document,
) -> DocumentVisibilityState =
  #| (self) => self.visibilityState

///|
pub extern "js" fn Document::get_onreadystatechange(
  self : Document,
) -> EventHandler =
  #| (self) => self.onreadystatechange

///|
pub extern "js" fn Document::set_onreadystatechange(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onreadystatechange = value }

///|
pub extern "js" fn Document::get_onvisibilitychange(
  self : Document,
) -> EventHandler =
  #| (self) => self.onvisibilitychange

///|
pub extern "js" fn Document::set_onvisibilitychange(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onvisibilitychange = value }

///|
pub extern "js" fn Document::get_fg_color(self : Document) -> String =
  #| (self) => self.fgColor

///|
pub extern "js" fn Document::set_fg_color(
  self : Document,
  value : String,
) -> Unit =
  #| (self, value) => { self.fgColor = value }

///|
pub extern "js" fn Document::get_link_color(self : Document) -> String =
  #| (self) => self.linkColor

///|
pub extern "js" fn Document::set_link_color(
  self : Document,
  value : String,
) -> Unit =
  #| (self, value) => { self.linkColor = value }

///|
pub extern "js" fn Document::get_vlink_color(self : Document) -> String =
  #| (self) => self.vlinkColor

///|
pub extern "js" fn Document::set_vlink_color(
  self : Document,
  value : String,
) -> Unit =
  #| (self, value) => { self.vlinkColor = value }

///|
pub extern "js" fn Document::get_alink_color(self : Document) -> String =
  #| (self) => self.alinkColor

///|
pub extern "js" fn Document::set_alink_color(
  self : Document,
  value : String,
) -> Unit =
  #| (self, value) => { self.alinkColor = value }

///|
pub extern "js" fn Document::get_bg_color(self : Document) -> String =
  #| (self) => self.bgColor

///|
pub extern "js" fn Document::set_bg_color(
  self : Document,
  value : String,
) -> Unit =
  #| (self, value) => { self.bgColor = value }

///|
pub extern "js" fn Document::get_anchors(self : Document) -> HTMLCollection =
  #| (self) => self.anchors

///|
pub extern "js" fn Document::get_applets(self : Document) -> HTMLCollection =
  #| (self) => self.applets

///|
pub extern "js" fn Document::clear(self : Document) -> Unit =
  #| (self) => self.clear()

///|
pub extern "js" fn Document::capture_events(self : Document) -> Unit =
  #| (self) => self.captureEvents()

///|
pub extern "js" fn Document::release_events(self : Document) -> Unit =
  #| (self) => self.releaseEvents()

///|
pub extern "js" fn Document::get_all(self : Document) -> HTMLAllCollection =
  #| (self) => self.all

///|
pub extern "js" fn Document::get_onfreeze(self : Document) -> EventHandler =
  #| (self) => self.onfreeze

///|
pub extern "js" fn Document::set_onfreeze(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onfreeze = value }

///|
pub extern "js" fn Document::get_onresume(self : Document) -> EventHandler =
  #| (self) => self.onresume

///|
pub extern "js" fn Document::set_onresume(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onresume = value }

///|
pub extern "js" fn Document::get_was_discarded(self : Document) -> Bool =
  #| (self) => self.wasDiscarded

///|
pub extern "js" fn Document::get_permissions_policy(
  self : Document,
) -> PermissionsPolicy =
  #| (self) => self.permissionsPolicy

///|
pub extern "js" fn Document::get_picture_in_picture_enabled(
  self : Document,
) -> Bool =
  #| (self) => self.pictureInPictureEnabled

///|
pub extern "js" fn Document::exit_picture_in_picture(
  self : Document,
) -> Promise[Unit] =
  #| (self) => self.exitPictureInPicture()

///|
pub extern "js" fn Document::get_onpointerlockchange(
  self : Document,
) -> EventHandler =
  #| (self) => self.onpointerlockchange

///|
pub extern "js" fn Document::set_onpointerlockchange(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerlockchange = value }

///|
pub extern "js" fn Document::get_onpointerlockerror(
  self : Document,
) -> EventHandler =
  #| (self) => self.onpointerlockerror

///|
pub extern "js" fn Document::set_onpointerlockerror(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerlockerror = value }

///|
pub extern "js" fn Document::exit_pointer_lock(self : Document) -> Unit =
  #| (self) => self.exitPointerLock()

///|
pub extern "js" fn Document::get_prerendering(self : Document) -> Bool =
  #| (self) => self.prerendering

///|
pub extern "js" fn Document::get_onprerenderingchange(
  self : Document,
) -> EventHandler =
  #| (self) => self.onprerenderingchange

///|
pub extern "js" fn Document::set_onprerenderingchange(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onprerenderingchange = value }

///|
pub extern "js" fn Document::request_storage_access_for(
  self : Document,
  requested_origin : String,
) -> Promise[Unit] =
  #| (self, requested_origin) => self.requestStorageAccessFor(requested_origin)

///|
pub extern "js" fn Document::has_unpartitioned_cookie_access(
  self : Document,
) -> Promise[Bool] =
  #| (self) => self.hasUnpartitionedCookieAccess()

///|
pub extern "js" fn Document::get_fragment_directive(
  self : Document,
) -> FragmentDirective =
  #| (self) => self.fragmentDirective

///|
pub extern "js" fn Document::get_selection(self : Document) -> Selection? =
  #| (self) => self.getSelection()

///|
pub extern "js" fn Document::has_storage_access(
  self : Document,
) -> Promise[Bool] =
  #| (self) => self.hasStorageAccess()

///|
pub extern "js" fn Document::request_storage_access(
  self : Document,
) -> Promise[Unit] =
  #| (self) => self.requestStorageAccess()

///|
pub extern "js" fn Document::has_private_token(
  self : Document,
  issuer : String,
) -> Promise[Bool] =
  #| (self, issuer) => self.hasPrivateToken(issuer)

///|
pub extern "js" fn Document::has_redemption_record(
  self : Document,
  issuer : String,
) -> Promise[Bool] =
  #| (self, issuer) => self.hasRedemptionRecord(issuer)

///|
pub extern "js" fn Document::get_timeline(self : Document) -> DocumentTimeline =
  #| (self) => self.timeline

///|
pub extern "js" fn Document::get_fonts(self : Document) -> FontFaceSet =
  #| (self) => self.fonts

///|
pub extern "js" fn Document::get_box_quads(self : Document) -> Array[DOMQuad] =
  #| (self) => self.getBoxQuads()

///|
pub extern "js" fn Document::get_box_quads_with_options(
  self : Document,
  options : BoxQuadOptions,
) -> Array[DOMQuad] =
  #| (self, options) => self.getBoxQuads(options)

///|
pub extern "js" fn Document::convert_quad_from_node(
  self : Document,
  quad : DOMQuadInit,
  from : GeometryNode,
) -> DOMQuad =
  #| (self, quad, from) => self.convertQuadFromNode(quad, from)

///|
pub extern "js" fn Document::convert_quad_from_node_with_options(
  self : Document,
  quad : DOMQuadInit,
  from : GeometryNode,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, quad, from, options) => self.convertQuadFromNode(quad, from, options)

///|
pub extern "js" fn Document::convert_rect_from_node(
  self : Document,
  rect : DOMRectReadOnly,
  from : GeometryNode,
) -> DOMQuad =
  #| (self, rect, from) => self.convertRectFromNode(rect, from)

///|
pub extern "js" fn Document::convert_rect_from_node_with_options(
  self : Document,
  rect : DOMRectReadOnly,
  from : GeometryNode,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, rect, from, options) => self.convertRectFromNode(rect, from, options)

///|
pub extern "js" fn Document::convert_point_from_node(
  self : Document,
  point : DOMPointInit,
  from : GeometryNode,
) -> DOMPoint =
  #| (self, point, from) => self.convertPointFromNode(point, from)

///|
pub extern "js" fn Document::convert_point_from_node_with_options(
  self : Document,
  point : DOMPointInit,
  from : GeometryNode,
  options : ConvertCoordinateOptions,
) -> DOMPoint =
  #| (self, point, from, options) => self.convertPointFromNode(point, from, options)

///|
pub extern "js" fn Document::get_element_by_id(
  self : Document,
  element_id : String,
) -> Element? =
  #| (self, element_id) => self.getElementById(element_id)

///|
pub extern "js" fn Document::get_style_sheets(
  self : Document,
) -> StyleSheetList =
  #| (self) => self.styleSheets

///|
pub extern "js" fn Document::get_adopted_style_sheets(
  self : Document,
) -> JsValue =
  #| (self) => self.adoptedStyleSheets

///|
pub extern "js" fn Document::set_adopted_style_sheets(
  self : Document,
  value : JsValue,
) -> Unit =
  #| (self, value) => { self.adoptedStyleSheets = value }

///|
pub extern "js" fn Document::get_custom_element_registry(
  self : Document,
) -> CustomElementRegistry? =
  #| (self) => self.customElementRegistry

///|
pub extern "js" fn Document::get_fullscreen_element(
  self : Document,
) -> Element? =
  #| (self) => self.fullscreenElement

///|
pub extern "js" fn Document::get_active_element(self : Document) -> Element? =
  #| (self) => self.activeElement

///|
pub extern "js" fn Document::get_picture_in_picture_element(
  self : Document,
) -> Element? =
  #| (self) => self.pictureInPictureElement

///|
pub extern "js" fn Document::get_pointer_lock_element(
  self : Document,
) -> Element? =
  #| (self) => self.pointerLockElement

///|
pub extern "js" fn Document::get_animations(
  self : Document,
) -> Array[Animation] =
  #| (self) => self.getAnimations()

///|
pub extern "js" fn Document::get_children(self : Document) -> HTMLCollection =
  #| (self) => self.children

///|
pub extern "js" fn Document::get_first_element_child(
  self : Document,
) -> Element? =
  #| (self) => self.firstElementChild

///|
pub extern "js" fn Document::get_last_element_child(
  self : Document,
) -> Element? =
  #| (self) => self.lastElementChild

///|
pub extern "js" fn Document::get_child_element_count(self : Document) -> Int =
  #| (self) => self.childElementCount

///|
pub extern "js" fn Document::prepend(
  self : Document,
  nodes : NodeOrString,
) -> Unit =
  #| (self, nodes) => self.prepend(nodes)

///|
pub extern "js" fn Document::append(
  self : Document,
  nodes : NodeOrString,
) -> Unit =
  #| (self, nodes) => self.append(nodes)

///|
pub extern "js" fn Document::replace_children(
  self : Document,
  nodes : NodeOrString,
) -> Unit =
  #| (self, nodes) => self.replaceChildren(nodes)

///|
pub extern "js" fn Document::move_before(
  self : Document,
  node : Node,
  child : Node?,
) -> Unit =
  #| (self, node, child) => self.moveBefore(node, child)

///|
pub extern "js" fn Document::query_selector(
  self : Document,
  selectors : String,
) -> Element? =
  #| (self, selectors) => self.querySelector(selectors)

///|
pub extern "js" fn Document::query_selector_all(
  self : Document,
  selectors : String,
) -> NodeList =
  #| (self, selectors) => self.querySelectorAll(selectors)

///|
pub extern "js" fn Document::create_expression(
  self : Document,
  expression : String,
) -> XPathExpression =
  #| (self, expression) => self.createExpression(expression)

///|
pub extern "js" fn Document::create_expression_with_resolver(
  self : Document,
  expression : String,
  resolver : XPathNSResolver?,
) -> XPathExpression =
  #| (self, expression, resolver) => self.createExpression(expression, resolver)

///|
pub extern "js" fn Document::create_n_s_resolver(
  self : Document,
  node_resolver : Node,
) -> Node =
  #| (self, node_resolver) => self.createNSResolver(node_resolver)

///|
pub extern "js" fn Document::evaluate(
  self : Document,
  expression : String,
  context_node : Node,
) -> XPathResult =
  #| (self, expression, context_node) => self.evaluate(expression, context_node)

///|
pub extern "js" fn Document::evaluate_with_result(
  self : Document,
  expression : String,
  context_node : Node,
  resolver : XPathNSResolver?,
  type_ : Int,
  result : XPathResult?,
) -> XPathResult =
  #| (self, expression, context_node, resolver, type_, result) => self.evaluate(expression, context_node, resolver, type_, result)

///|
pub extern "js" fn Document::get_onanimationstart(
  self : Document,
) -> EventHandler =
  #| (self) => self.onanimationstart

///|
pub extern "js" fn Document::set_onanimationstart(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onanimationstart = value }

///|
pub extern "js" fn Document::get_onanimationiteration(
  self : Document,
) -> EventHandler =
  #| (self) => self.onanimationiteration

///|
pub extern "js" fn Document::set_onanimationiteration(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onanimationiteration = value }

///|
pub extern "js" fn Document::get_onanimationend(
  self : Document,
) -> EventHandler =
  #| (self) => self.onanimationend

///|
pub extern "js" fn Document::set_onanimationend(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onanimationend = value }

///|
pub extern "js" fn Document::get_onanimationcancel(
  self : Document,
) -> EventHandler =
  #| (self) => self.onanimationcancel

///|
pub extern "js" fn Document::set_onanimationcancel(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onanimationcancel = value }

///|
pub extern "js" fn Document::get_onsnapchanged(self : Document) -> EventHandler =
  #| (self) => self.onsnapchanged

///|
pub extern "js" fn Document::set_onsnapchanged(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsnapchanged = value }

///|
pub extern "js" fn Document::get_onsnapchanging(
  self : Document,
) -> EventHandler =
  #| (self) => self.onsnapchanging

///|
pub extern "js" fn Document::set_onsnapchanging(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsnapchanging = value }

///|
pub extern "js" fn Document::get_ontransitionrun(
  self : Document,
) -> EventHandler =
  #| (self) => self.ontransitionrun

///|
pub extern "js" fn Document::set_ontransitionrun(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontransitionrun = value }

///|
pub extern "js" fn Document::get_ontransitionstart(
  self : Document,
) -> EventHandler =
  #| (self) => self.ontransitionstart

///|
pub extern "js" fn Document::set_ontransitionstart(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontransitionstart = value }

///|
pub extern "js" fn Document::get_ontransitionend(
  self : Document,
) -> EventHandler =
  #| (self) => self.ontransitionend

///|
pub extern "js" fn Document::set_ontransitionend(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontransitionend = value }

///|
pub extern "js" fn Document::get_ontransitioncancel(
  self : Document,
) -> EventHandler =
  #| (self) => self.ontransitioncancel

///|
pub extern "js" fn Document::set_ontransitioncancel(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontransitioncancel = value }

///|
pub extern "js" fn Document::get_onfencedtreeclick(
  self : Document,
) -> EventHandler =
  #| (self) => self.onfencedtreeclick

///|
pub extern "js" fn Document::set_onfencedtreeclick(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onfencedtreeclick = value }

///|
pub extern "js" fn Document::get_onabort(self : Document) -> EventHandler =
  #| (self) => self.onabort

///|
pub extern "js" fn Document::set_onabort(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onabort = value }

///|
pub extern "js" fn Document::get_onauxclick(self : Document) -> EventHandler =
  #| (self) => self.onauxclick

///|
pub extern "js" fn Document::set_onauxclick(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onauxclick = value }

///|
pub extern "js" fn Document::get_onbeforeinput(self : Document) -> EventHandler =
  #| (self) => self.onbeforeinput

///|
pub extern "js" fn Document::set_onbeforeinput(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbeforeinput = value }

///|
pub extern "js" fn Document::get_onbeforematch(self : Document) -> EventHandler =
  #| (self) => self.onbeforematch

///|
pub extern "js" fn Document::set_onbeforematch(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbeforematch = value }

///|
pub extern "js" fn Document::get_onbeforetoggle(
  self : Document,
) -> EventHandler =
  #| (self) => self.onbeforetoggle

///|
pub extern "js" fn Document::set_onbeforetoggle(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbeforetoggle = value }

///|
pub extern "js" fn Document::get_onblur(self : Document) -> EventHandler =
  #| (self) => self.onblur

///|
pub extern "js" fn Document::set_onblur(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onblur = value }

///|
pub extern "js" fn Document::get_oncancel(self : Document) -> EventHandler =
  #| (self) => self.oncancel

///|
pub extern "js" fn Document::set_oncancel(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncancel = value }

///|
pub extern "js" fn Document::get_oncanplay(self : Document) -> EventHandler =
  #| (self) => self.oncanplay

///|
pub extern "js" fn Document::set_oncanplay(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncanplay = value }

///|
pub extern "js" fn Document::get_oncanplaythrough(
  self : Document,
) -> EventHandler =
  #| (self) => self.oncanplaythrough

///|
pub extern "js" fn Document::set_oncanplaythrough(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncanplaythrough = value }

///|
pub extern "js" fn Document::get_onchange(self : Document) -> EventHandler =
  #| (self) => self.onchange

///|
pub extern "js" fn Document::set_onchange(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onchange = value }

///|
pub extern "js" fn Document::get_onclick(self : Document) -> EventHandler =
  #| (self) => self.onclick

///|
pub extern "js" fn Document::set_onclick(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onclick = value }

///|
pub extern "js" fn Document::get_onclose(self : Document) -> EventHandler =
  #| (self) => self.onclose

///|
pub extern "js" fn Document::set_onclose(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onclose = value }

///|
pub extern "js" fn Document::get_oncommand(self : Document) -> EventHandler =
  #| (self) => self.oncommand

///|
pub extern "js" fn Document::set_oncommand(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncommand = value }

///|
pub extern "js" fn Document::get_oncontextlost(self : Document) -> EventHandler =
  #| (self) => self.oncontextlost

///|
pub extern "js" fn Document::set_oncontextlost(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncontextlost = value }

///|
pub extern "js" fn Document::get_oncontextmenu(self : Document) -> EventHandler =
  #| (self) => self.oncontextmenu

///|
pub extern "js" fn Document::set_oncontextmenu(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncontextmenu = value }

///|
pub extern "js" fn Document::get_oncontextrestored(
  self : Document,
) -> EventHandler =
  #| (self) => self.oncontextrestored

///|
pub extern "js" fn Document::set_oncontextrestored(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncontextrestored = value }

///|
pub extern "js" fn Document::get_oncopy(self : Document) -> EventHandler =
  #| (self) => self.oncopy

///|
pub extern "js" fn Document::set_oncopy(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncopy = value }

///|
pub extern "js" fn Document::get_oncuechange(self : Document) -> EventHandler =
  #| (self) => self.oncuechange

///|
pub extern "js" fn Document::set_oncuechange(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncuechange = value }

///|
pub extern "js" fn Document::get_oncut(self : Document) -> EventHandler =
  #| (self) => self.oncut

///|
pub extern "js" fn Document::set_oncut(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncut = value }

///|
pub extern "js" fn Document::get_ondblclick(self : Document) -> EventHandler =
  #| (self) => self.ondblclick

///|
pub extern "js" fn Document::set_ondblclick(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondblclick = value }

///|
pub extern "js" fn Document::get_ondrag(self : Document) -> EventHandler =
  #| (self) => self.ondrag

///|
pub extern "js" fn Document::set_ondrag(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondrag = value }

///|
pub extern "js" fn Document::get_ondragend(self : Document) -> EventHandler =
  #| (self) => self.ondragend

///|
pub extern "js" fn Document::set_ondragend(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondragend = value }

///|
pub extern "js" fn Document::get_ondragenter(self : Document) -> EventHandler =
  #| (self) => self.ondragenter

///|
pub extern "js" fn Document::set_ondragenter(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondragenter = value }

///|
pub extern "js" fn Document::get_ondragleave(self : Document) -> EventHandler =
  #| (self) => self.ondragleave

///|
pub extern "js" fn Document::set_ondragleave(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondragleave = value }

///|
pub extern "js" fn Document::get_ondragover(self : Document) -> EventHandler =
  #| (self) => self.ondragover

///|
pub extern "js" fn Document::set_ondragover(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondragover = value }

///|
pub extern "js" fn Document::get_ondragstart(self : Document) -> EventHandler =
  #| (self) => self.ondragstart

///|
pub extern "js" fn Document::set_ondragstart(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondragstart = value }

///|
pub extern "js" fn Document::get_ondrop(self : Document) -> EventHandler =
  #| (self) => self.ondrop

///|
pub extern "js" fn Document::set_ondrop(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondrop = value }

///|
pub extern "js" fn Document::get_ondurationchange(
  self : Document,
) -> EventHandler =
  #| (self) => self.ondurationchange

///|
pub extern "js" fn Document::set_ondurationchange(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondurationchange = value }

///|
pub extern "js" fn Document::get_onemptied(self : Document) -> EventHandler =
  #| (self) => self.onemptied

///|
pub extern "js" fn Document::set_onemptied(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onemptied = value }

///|
pub extern "js" fn Document::get_onended(self : Document) -> EventHandler =
  #| (self) => self.onended

///|
pub extern "js" fn Document::set_onended(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onended = value }

///|
pub extern "js" fn Document::get_onerror(
  self : Document,
) -> OnErrorEventHandler =
  #| (self) => self.onerror

///|
pub extern "js" fn Document::set_onerror(
  self : Document,
  value : OnErrorEventHandler,
) -> Unit =
  #| (self, value) => { self.onerror = value }

///|
pub extern "js" fn Document::get_onfocus(self : Document) -> EventHandler =
  #| (self) => self.onfocus

///|
pub extern "js" fn Document::set_onfocus(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onfocus = value }

///|
pub extern "js" fn Document::get_onformdata(self : Document) -> EventHandler =
  #| (self) => self.onformdata

///|
pub extern "js" fn Document::set_onformdata(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onformdata = value }

///|
pub extern "js" fn Document::get_oninput(self : Document) -> EventHandler =
  #| (self) => self.oninput

///|
pub extern "js" fn Document::set_oninput(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oninput = value }

///|
pub extern "js" fn Document::get_oninvalid(self : Document) -> EventHandler =
  #| (self) => self.oninvalid

///|
pub extern "js" fn Document::set_oninvalid(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oninvalid = value }

///|
pub extern "js" fn Document::get_onkeydown(self : Document) -> EventHandler =
  #| (self) => self.onkeydown

///|
pub extern "js" fn Document::set_onkeydown(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onkeydown = value }

///|
pub extern "js" fn Document::get_onkeypress(self : Document) -> EventHandler =
  #| (self) => self.onkeypress

///|
pub extern "js" fn Document::set_onkeypress(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onkeypress = value }

///|
pub extern "js" fn Document::get_onkeyup(self : Document) -> EventHandler =
  #| (self) => self.onkeyup

///|
pub extern "js" fn Document::set_onkeyup(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onkeyup = value }

///|
pub extern "js" fn Document::get_onload(self : Document) -> EventHandler =
  #| (self) => self.onload

///|
pub extern "js" fn Document::set_onload(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onload = value }

///|
pub extern "js" fn Document::get_onloadeddata(self : Document) -> EventHandler =
  #| (self) => self.onloadeddata

///|
pub extern "js" fn Document::set_onloadeddata(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onloadeddata = value }

///|
pub extern "js" fn Document::get_onloadedmetadata(
  self : Document,
) -> EventHandler =
  #| (self) => self.onloadedmetadata

///|
pub extern "js" fn Document::set_onloadedmetadata(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onloadedmetadata = value }

///|
pub extern "js" fn Document::get_onloadstart(self : Document) -> EventHandler =
  #| (self) => self.onloadstart

///|
pub extern "js" fn Document::set_onloadstart(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onloadstart = value }

///|
pub extern "js" fn Document::get_onmousedown(self : Document) -> EventHandler =
  #| (self) => self.onmousedown

///|
pub extern "js" fn Document::set_onmousedown(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmousedown = value }

///|
pub extern "js" fn Document::get_onmouseenter(self : Document) -> EventHandler =
  #| (self) => self.onmouseenter

///|
pub extern "js" fn Document::set_onmouseenter(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmouseenter = value }

///|
pub extern "js" fn Document::get_onmouseleave(self : Document) -> EventHandler =
  #| (self) => self.onmouseleave

///|
pub extern "js" fn Document::set_onmouseleave(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmouseleave = value }

///|
pub extern "js" fn Document::get_onmousemove(self : Document) -> EventHandler =
  #| (self) => self.onmousemove

///|
pub extern "js" fn Document::set_onmousemove(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmousemove = value }

///|
pub extern "js" fn Document::get_onmouseout(self : Document) -> EventHandler =
  #| (self) => self.onmouseout

///|
pub extern "js" fn Document::set_onmouseout(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmouseout = value }

///|
pub extern "js" fn Document::get_onmouseover(self : Document) -> EventHandler =
  #| (self) => self.onmouseover

///|
pub extern "js" fn Document::set_onmouseover(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmouseover = value }

///|
pub extern "js" fn Document::get_onmouseup(self : Document) -> EventHandler =
  #| (self) => self.onmouseup

///|
pub extern "js" fn Document::set_onmouseup(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmouseup = value }

///|
pub extern "js" fn Document::get_onpaste(self : Document) -> EventHandler =
  #| (self) => self.onpaste

///|
pub extern "js" fn Document::set_onpaste(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpaste = value }

///|
pub extern "js" fn Document::get_onpause(self : Document) -> EventHandler =
  #| (self) => self.onpause

///|
pub extern "js" fn Document::set_onpause(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpause = value }

///|
pub extern "js" fn Document::get_onplay(self : Document) -> EventHandler =
  #| (self) => self.onplay

///|
pub extern "js" fn Document::set_onplay(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onplay = value }

///|
pub extern "js" fn Document::get_onplaying(self : Document) -> EventHandler =
  #| (self) => self.onplaying

///|
pub extern "js" fn Document::set_onplaying(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onplaying = value }

///|
pub extern "js" fn Document::get_onprogress(self : Document) -> EventHandler =
  #| (self) => self.onprogress

///|
pub extern "js" fn Document::set_onprogress(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onprogress = value }

///|
pub extern "js" fn Document::get_onratechange(self : Document) -> EventHandler =
  #| (self) => self.onratechange

///|
pub extern "js" fn Document::set_onratechange(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onratechange = value }

///|
pub extern "js" fn Document::get_onreset(self : Document) -> EventHandler =
  #| (self) => self.onreset

///|
pub extern "js" fn Document::set_onreset(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onreset = value }

///|
pub extern "js" fn Document::get_onresize(self : Document) -> EventHandler =
  #| (self) => self.onresize

///|
pub extern "js" fn Document::set_onresize(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onresize = value }

///|
pub extern "js" fn Document::get_onscroll(self : Document) -> EventHandler =
  #| (self) => self.onscroll

///|
pub extern "js" fn Document::set_onscroll(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onscroll = value }

///|
pub extern "js" fn Document::get_onscrollend(self : Document) -> EventHandler =
  #| (self) => self.onscrollend

///|
pub extern "js" fn Document::set_onscrollend(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onscrollend = value }

///|
pub extern "js" fn Document::get_onsecuritypolicyviolation(
  self : Document,
) -> EventHandler =
  #| (self) => self.onsecuritypolicyviolation

///|
pub extern "js" fn Document::set_onsecuritypolicyviolation(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsecuritypolicyviolation = value }

///|
pub extern "js" fn Document::get_onseeked(self : Document) -> EventHandler =
  #| (self) => self.onseeked

///|
pub extern "js" fn Document::set_onseeked(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onseeked = value }

///|
pub extern "js" fn Document::get_onseeking(self : Document) -> EventHandler =
  #| (self) => self.onseeking

///|
pub extern "js" fn Document::set_onseeking(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onseeking = value }

///|
pub extern "js" fn Document::get_onselect(self : Document) -> EventHandler =
  #| (self) => self.onselect

///|
pub extern "js" fn Document::set_onselect(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onselect = value }

///|
pub extern "js" fn Document::get_onslotchange(self : Document) -> EventHandler =
  #| (self) => self.onslotchange

///|
pub extern "js" fn Document::set_onslotchange(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onslotchange = value }

///|
pub extern "js" fn Document::get_onstalled(self : Document) -> EventHandler =
  #| (self) => self.onstalled

///|
pub extern "js" fn Document::set_onstalled(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onstalled = value }

///|
pub extern "js" fn Document::get_onsubmit(self : Document) -> EventHandler =
  #| (self) => self.onsubmit

///|
pub extern "js" fn Document::set_onsubmit(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsubmit = value }

///|
pub extern "js" fn Document::get_onsuspend(self : Document) -> EventHandler =
  #| (self) => self.onsuspend

///|
pub extern "js" fn Document::set_onsuspend(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsuspend = value }

///|
pub extern "js" fn Document::get_ontimeupdate(self : Document) -> EventHandler =
  #| (self) => self.ontimeupdate

///|
pub extern "js" fn Document::set_ontimeupdate(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontimeupdate = value }

///|
pub extern "js" fn Document::get_ontoggle(self : Document) -> EventHandler =
  #| (self) => self.ontoggle

///|
pub extern "js" fn Document::set_ontoggle(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontoggle = value }

///|
pub extern "js" fn Document::get_onvolumechange(
  self : Document,
) -> EventHandler =
  #| (self) => self.onvolumechange

///|
pub extern "js" fn Document::set_onvolumechange(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onvolumechange = value }

///|
pub extern "js" fn Document::get_onwaiting(self : Document) -> EventHandler =
  #| (self) => self.onwaiting

///|
pub extern "js" fn Document::set_onwaiting(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onwaiting = value }

///|
pub extern "js" fn Document::get_onwebkitanimationend(
  self : Document,
) -> EventHandler =
  #| (self) => self.onwebkitanimationend

///|
pub extern "js" fn Document::set_onwebkitanimationend(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onwebkitanimationend = value }

///|
pub extern "js" fn Document::get_onwebkitanimationiteration(
  self : Document,
) -> EventHandler =
  #| (self) => self.onwebkitanimationiteration

///|
pub extern "js" fn Document::set_onwebkitanimationiteration(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onwebkitanimationiteration = value }

///|
pub extern "js" fn Document::get_onwebkitanimationstart(
  self : Document,
) -> EventHandler =
  #| (self) => self.onwebkitanimationstart

///|
pub extern "js" fn Document::set_onwebkitanimationstart(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onwebkitanimationstart = value }

///|
pub extern "js" fn Document::get_onwebkittransitionend(
  self : Document,
) -> EventHandler =
  #| (self) => self.onwebkittransitionend

///|
pub extern "js" fn Document::set_onwebkittransitionend(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onwebkittransitionend = value }

///|
pub extern "js" fn Document::get_onwheel(self : Document) -> EventHandler =
  #| (self) => self.onwheel

///|
pub extern "js" fn Document::set_onwheel(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onwheel = value }

///|
pub extern "js" fn Document::get_onpointerover(self : Document) -> EventHandler =
  #| (self) => self.onpointerover

///|
pub extern "js" fn Document::set_onpointerover(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerover = value }

///|
pub extern "js" fn Document::get_onpointerenter(
  self : Document,
) -> EventHandler =
  #| (self) => self.onpointerenter

///|
pub extern "js" fn Document::set_onpointerenter(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerenter = value }

///|
pub extern "js" fn Document::get_onpointerdown(self : Document) -> EventHandler =
  #| (self) => self.onpointerdown

///|
pub extern "js" fn Document::set_onpointerdown(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerdown = value }

///|
pub extern "js" fn Document::get_onpointermove(self : Document) -> EventHandler =
  #| (self) => self.onpointermove

///|
pub extern "js" fn Document::set_onpointermove(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointermove = value }

///|
pub extern "js" fn Document::get_onpointerrawupdate(
  self : Document,
) -> EventHandler =
  #| (self) => self.onpointerrawupdate

///|
pub extern "js" fn Document::set_onpointerrawupdate(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerrawupdate = value }

///|
pub extern "js" fn Document::get_onpointerup(self : Document) -> EventHandler =
  #| (self) => self.onpointerup

///|
pub extern "js" fn Document::set_onpointerup(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerup = value }

///|
pub extern "js" fn Document::get_onpointercancel(
  self : Document,
) -> EventHandler =
  #| (self) => self.onpointercancel

///|
pub extern "js" fn Document::set_onpointercancel(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointercancel = value }

///|
pub extern "js" fn Document::get_onpointerout(self : Document) -> EventHandler =
  #| (self) => self.onpointerout

///|
pub extern "js" fn Document::set_onpointerout(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerout = value }

///|
pub extern "js" fn Document::get_onpointerleave(
  self : Document,
) -> EventHandler =
  #| (self) => self.onpointerleave

///|
pub extern "js" fn Document::set_onpointerleave(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerleave = value }

///|
pub extern "js" fn Document::get_ongotpointercapture(
  self : Document,
) -> EventHandler =
  #| (self) => self.ongotpointercapture

///|
pub extern "js" fn Document::set_ongotpointercapture(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ongotpointercapture = value }

///|
pub extern "js" fn Document::get_onlostpointercapture(
  self : Document,
) -> EventHandler =
  #| (self) => self.onlostpointercapture

///|
pub extern "js" fn Document::set_onlostpointercapture(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onlostpointercapture = value }

///|
pub extern "js" fn Document::get_onselectstart(self : Document) -> EventHandler =
  #| (self) => self.onselectstart

///|
pub extern "js" fn Document::set_onselectstart(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onselectstart = value }

///|
pub extern "js" fn Document::get_onselectionchange(
  self : Document,
) -> EventHandler =
  #| (self) => self.onselectionchange

///|
pub extern "js" fn Document::set_onselectionchange(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onselectionchange = value }

///|
pub extern "js" fn Document::get_ontouchstart(self : Document) -> EventHandler =
  #| (self) => self.ontouchstart

///|
pub extern "js" fn Document::set_ontouchstart(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontouchstart = value }

///|
pub extern "js" fn Document::get_ontouchend(self : Document) -> EventHandler =
  #| (self) => self.ontouchend

///|
pub extern "js" fn Document::set_ontouchend(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontouchend = value }

///|
pub extern "js" fn Document::get_ontouchmove(self : Document) -> EventHandler =
  #| (self) => self.ontouchmove

///|
pub extern "js" fn Document::set_ontouchmove(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontouchmove = value }

///|
pub extern "js" fn Document::get_ontouchcancel(self : Document) -> EventHandler =
  #| (self) => self.ontouchcancel

///|
pub extern "js" fn Document::set_ontouchcancel(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontouchcancel = value }

///|
pub extern "js" fn Document::get_onbeforexrselect(
  self : Document,
) -> EventHandler =
  #| (self) => self.onbeforexrselect

///|
pub extern "js" fn Document::set_onbeforexrselect(
  self : Document,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbeforexrselect = value }

///|
/// XMLDocument interface
pub type XMLDocument

///|
pub extern "js" fn XMLDocument::to_js_value(self : XMLDocument) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn XMLDocument::new() -> XMLDocument =
  #| () => new XMLDocument()

///|
pub extern "js" fn XMLDocument::add_event_listener(
  self : XMLDocument,
  type_ : String,
  callback : EventListener?,
) -> Unit =
  #| (self, type_, callback) => self.addEventListener(type_, callback)

///|
pub extern "js" fn XMLDocument::add_event_listener_with_options(
  self : XMLDocument,
  type_ : String,
  callback : EventListener?,
  options : AddEventListenerOptionsOrBool,
) -> Unit =
  #| (self, type_, callback, options) => self.addEventListener(type_, callback, options)

///|
pub extern "js" fn XMLDocument::remove_event_listener(
  self : XMLDocument,
  type_ : String,
  callback : EventListener?,
) -> Unit =
  #| (self, type_, callback) => self.removeEventListener(type_, callback)

///|
pub extern "js" fn XMLDocument::remove_event_listener_with_options(
  self : XMLDocument,
  type_ : String,
  callback : EventListener?,
  options : EventListenerOptionsOrBool,
) -> Unit =
  #| (self, type_, callback, options) => self.removeEventListener(type_, callback, options)

///|
pub extern "js" fn XMLDocument::dispatch_event(
  self : XMLDocument,
  event : Event,
) -> Bool =
  #| (self, event) => self.dispatchEvent(event)

///|
pub extern "js" fn XMLDocument::when(
  self : XMLDocument,
  type_ : String,
) -> Observable =
  #| (self, type_) => self.when(type_)

///|
pub extern "js" fn XMLDocument::when_with_options(
  self : XMLDocument,
  type_ : String,
  options : ObservableEventListenerOptions,
) -> Observable =
  #| (self, type_, options) => self.when(type_, options)

// XMLDocument.ELEMENT_NODE

///|
pub let x_m_l_document_element_node : Int = 1

// XMLDocument.ATTRIBUTE_NODE

///|
pub let x_m_l_document_attribute_node : Int = 2

// XMLDocument.TEXT_NODE

///|
pub let x_m_l_document_text_node : Int = 3

// XMLDocument.CDATA_SECTION_NODE

///|
pub let x_m_l_document_cdata_section_node : Int = 4

// XMLDocument.ENTITY_REFERENCE_NODE

///|
pub let x_m_l_document_entity_reference_node : Int = 5

// XMLDocument.ENTITY_NODE

///|
pub let x_m_l_document_entity_node : Int = 6

// XMLDocument.PROCESSING_INSTRUCTION_NODE

///|
pub let x_m_l_document_processing_instruction_node : Int = 7

// XMLDocument.COMMENT_NODE

///|
pub let x_m_l_document_comment_node : Int = 8

// XMLDocument.DOCUMENT_NODE

///|
pub let x_m_l_document_document_node : Int = 9

// XMLDocument.DOCUMENT_TYPE_NODE

///|
pub let x_m_l_document_document_type_node : Int = 10

// XMLDocument.DOCUMENT_FRAGMENT_NODE

///|
pub let x_m_l_document_document_fragment_node : Int = 11

// XMLDocument.NOTATION_NODE

///|
pub let x_m_l_document_notation_node : Int = 12

///|
pub extern "js" fn XMLDocument::get_node_type(self : XMLDocument) -> Int =
  #| (self) => self.nodeType

///|
pub extern "js" fn XMLDocument::get_node_name(self : XMLDocument) -> String =
  #| (self) => self.nodeName

///|
pub extern "js" fn XMLDocument::get_base_u_r_i(self : XMLDocument) -> String =
  #| (self) => self.baseURI

///|
pub extern "js" fn XMLDocument::get_is_connected(self : XMLDocument) -> Bool =
  #| (self) => self.isConnected

///|
pub extern "js" fn XMLDocument::get_owner_document(
  self : XMLDocument,
) -> Document? =
  #| (self) => self.ownerDocument

///|
pub extern "js" fn XMLDocument::get_root_node(self : XMLDocument) -> Node =
  #| (self) => self.getRootNode()

///|
pub extern "js" fn XMLDocument::get_root_node_with_options(
  self : XMLDocument,
  options : GetRootNodeOptions,
) -> Node =
  #| (self, options) => self.getRootNode(options)

///|
pub extern "js" fn XMLDocument::get_parent_node(self : XMLDocument) -> Node? =
  #| (self) => self.parentNode

///|
pub extern "js" fn XMLDocument::get_parent_element(
  self : XMLDocument,
) -> Element? =
  #| (self) => self.parentElement

///|
pub extern "js" fn XMLDocument::has_child_nodes(self : XMLDocument) -> Bool =
  #| (self) => self.hasChildNodes()

///|
pub extern "js" fn XMLDocument::get_child_nodes(self : XMLDocument) -> NodeList =
  #| (self) => self.childNodes

///|
pub extern "js" fn XMLDocument::get_first_child(self : XMLDocument) -> Node? =
  #| (self) => self.firstChild

///|
pub extern "js" fn XMLDocument::get_last_child(self : XMLDocument) -> Node? =
  #| (self) => self.lastChild

///|
pub extern "js" fn XMLDocument::get_previous_sibling(
  self : XMLDocument,
) -> Node? =
  #| (self) => self.previousSibling

///|
pub extern "js" fn XMLDocument::get_next_sibling(self : XMLDocument) -> Node? =
  #| (self) => self.nextSibling

///|
pub extern "js" fn XMLDocument::get_node_value(self : XMLDocument) -> String? =
  #| (self) => self.nodeValue

///|
pub extern "js" fn XMLDocument::set_node_value(
  self : XMLDocument,
  value : String?,
) -> Unit =
  #| (self, value) => { self.nodeValue = value }

///|
pub extern "js" fn XMLDocument::get_text_content(self : XMLDocument) -> String? =
  #| (self) => self.textContent

///|
pub extern "js" fn XMLDocument::set_text_content(
  self : XMLDocument,
  value : String?,
) -> Unit =
  #| (self, value) => { self.textContent = value }

///|
pub extern "js" fn XMLDocument::normalize(self : XMLDocument) -> Unit =
  #| (self) => self.normalize()

///|
pub extern "js" fn XMLDocument::clone_node(self : XMLDocument) -> Node =
  #| (self) => self.cloneNode()

///|
pub extern "js" fn XMLDocument::clone_node_with_subtree(
  self : XMLDocument,
  subtree : Bool,
) -> Node =
  #| (self, subtree) => self.cloneNode(subtree)

///|
pub extern "js" fn XMLDocument::is_equal_node(
  self : XMLDocument,
  other_node : Node?,
) -> Bool =
  #| (self, other_node) => self.isEqualNode(other_node)

///|
pub extern "js" fn XMLDocument::is_same_node(
  self : XMLDocument,
  other_node : Node?,
) -> Bool =
  #| (self, other_node) => self.isSameNode(other_node)

// XMLDocument.DOCUMENT_POSITION_DISCONNECTED

///|
pub let x_m_l_document_document_position_disconnected : Int = 0x01

// XMLDocument.DOCUMENT_POSITION_PRECEDING

///|
pub let x_m_l_document_document_position_preceding : Int = 0x02

// XMLDocument.DOCUMENT_POSITION_FOLLOWING

///|
pub let x_m_l_document_document_position_following : Int = 0x04

// XMLDocument.DOCUMENT_POSITION_CONTAINS

///|
pub let x_m_l_document_document_position_contains : Int = 0x08

// XMLDocument.DOCUMENT_POSITION_CONTAINED_BY

///|
pub let x_m_l_document_document_position_contained_by : Int = 0x10

// XMLDocument.DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC

///|
pub let x_m_l_document_document_position_implementation_specific : Int = 0x20

///|
pub extern "js" fn XMLDocument::compare_document_position(
  self : XMLDocument,
  other : Node,
) -> Int =
  #| (self, other) => self.compareDocumentPosition(other)

///|
pub extern "js" fn XMLDocument::contains(
  self : XMLDocument,
  other : Node?,
) -> Bool =
  #| (self, other) => self.contains(other)

///|
pub extern "js" fn XMLDocument::lookup_prefix(
  self : XMLDocument,
  namespace_ : String?,
) -> String? =
  #| (self, namespace_) => self.lookupPrefix(namespace_)

///|
pub extern "js" fn XMLDocument::lookup_namespace_u_r_i(
  self : XMLDocument,
  prefix : String?,
) -> String? =
  #| (self, prefix) => self.lookupNamespaceURI(prefix)

///|
pub extern "js" fn XMLDocument::is_default_namespace(
  self : XMLDocument,
  namespace_ : String?,
) -> Bool =
  #| (self, namespace_) => self.isDefaultNamespace(namespace_)

///|
pub extern "js" fn XMLDocument::insert_before(
  self : XMLDocument,
  node : Node,
  child : Node?,
) -> Node =
  #| (self, node, child) => self.insertBefore(node, child)

///|
pub extern "js" fn XMLDocument::append_child(
  self : XMLDocument,
  node : Node,
) -> Node =
  #| (self, node) => self.appendChild(node)

///|
pub extern "js" fn XMLDocument::replace_child(
  self : XMLDocument,
  node : Node,
  child : Node,
) -> Node =
  #| (self, node, child) => self.replaceChild(node, child)

///|
pub extern "js" fn XMLDocument::remove_child(
  self : XMLDocument,
  child : Node,
) -> Node =
  #| (self, child) => self.removeChild(child)

///|
pub extern "js" fn XMLDocument::get_implementation(
  self : XMLDocument,
) -> DOMImplementation =
  #| (self) => self.implementation

///|
pub extern "js" fn XMLDocument::get_u_r_l(self : XMLDocument) -> String =
  #| (self) => self.URL

///|
pub extern "js" fn XMLDocument::get_document_u_r_i(
  self : XMLDocument,
) -> String =
  #| (self) => self.documentURI

///|
pub extern "js" fn XMLDocument::get_compat_mode(self : XMLDocument) -> String =
  #| (self) => self.compatMode

///|
pub extern "js" fn XMLDocument::get_character_set(self : XMLDocument) -> String =
  #| (self) => self.characterSet

///|
pub extern "js" fn XMLDocument::get_charset(self : XMLDocument) -> String =
  #| (self) => self.charset

///|
pub extern "js" fn XMLDocument::get_input_encoding(
  self : XMLDocument,
) -> String =
  #| (self) => self.inputEncoding

///|
pub extern "js" fn XMLDocument::get_content_type(self : XMLDocument) -> String =
  #| (self) => self.contentType

///|
pub extern "js" fn XMLDocument::get_doctype(
  self : XMLDocument,
) -> DocumentType? =
  #| (self) => self.doctype

///|
pub extern "js" fn XMLDocument::get_document_element(
  self : XMLDocument,
) -> Element? =
  #| (self) => self.documentElement

///|
pub extern "js" fn XMLDocument::get_elements_by_tag_name(
  self : XMLDocument,
  qualified_name : String,
) -> HTMLCollection =
  #| (self, qualified_name) => self.getElementsByTagName(qualified_name)

///|
pub extern "js" fn XMLDocument::get_elements_by_tag_name_n_s(
  self : XMLDocument,
  namespace_ : String?,
  local_name : String,
) -> HTMLCollection =
  #| (self, namespace_, local_name) => self.getElementsByTagNameNS(namespace_, local_name)

///|
pub extern "js" fn XMLDocument::get_elements_by_class_name(
  self : XMLDocument,
  class_names : String,
) -> HTMLCollection =
  #| (self, class_names) => self.getElementsByClassName(class_names)

///|
pub extern "js" fn XMLDocument::create_element(
  self : XMLDocument,
  local_name : String,
) -> Element =
  #| (self, local_name) => self.createElement(local_name)

///|
pub extern "js" fn XMLDocument::create_element_with_options(
  self : XMLDocument,
  local_name : String,
  options : StringOrElementCreationOptions,
) -> Element =
  #| (self, local_name, options) => self.createElement(local_name, options)

///|
pub extern "js" fn XMLDocument::create_element_n_s(
  self : XMLDocument,
  namespace_ : String?,
  qualified_name : String,
) -> Element =
  #| (self, namespace_, qualified_name) => self.createElementNS(namespace_, qualified_name)

///|
pub extern "js" fn XMLDocument::create_element_n_s_with_options(
  self : XMLDocument,
  namespace_ : String?,
  qualified_name : String,
  options : StringOrElementCreationOptions,
) -> Element =
  #| (self, namespace_, qualified_name, options) => self.createElementNS(namespace_, qualified_name, options)

///|
pub extern "js" fn XMLDocument::create_document_fragment(
  self : XMLDocument,
) -> DocumentFragment =
  #| (self) => self.createDocumentFragment()

///|
pub extern "js" fn XMLDocument::create_text_node(
  self : XMLDocument,
  data : String,
) -> Text =
  #| (self, data) => self.createTextNode(data)

///|
pub extern "js" fn XMLDocument::create_c_d_a_t_a_section(
  self : XMLDocument,
  data : String,
) -> CDATASection =
  #| (self, data) => self.createCDATASection(data)

///|
pub extern "js" fn XMLDocument::create_comment(
  self : XMLDocument,
  data : String,
) -> Comment =
  #| (self, data) => self.createComment(data)

///|
pub extern "js" fn XMLDocument::create_processing_instruction(
  self : XMLDocument,
  target : String,
  data : String,
) -> ProcessingInstruction =
  #| (self, target, data) => self.createProcessingInstruction(target, data)

///|
pub extern "js" fn XMLDocument::import_node(
  self : XMLDocument,
  node : Node,
) -> Node =
  #| (self, node) => self.importNode(node)

///|
pub extern "js" fn XMLDocument::import_node_with_options(
  self : XMLDocument,
  node : Node,
  options : BoolOrImportNodeOptions,
) -> Node =
  #| (self, node, options) => self.importNode(node, options)

///|
pub extern "js" fn XMLDocument::adopt_node(
  self : XMLDocument,
  node : Node,
) -> Node =
  #| (self, node) => self.adoptNode(node)

///|
pub extern "js" fn XMLDocument::create_attribute(
  self : XMLDocument,
  local_name : String,
) -> Attr =
  #| (self, local_name) => self.createAttribute(local_name)

///|
pub extern "js" fn XMLDocument::create_attribute_n_s(
  self : XMLDocument,
  namespace_ : String?,
  qualified_name : String,
) -> Attr =
  #| (self, namespace_, qualified_name) => self.createAttributeNS(namespace_, qualified_name)

///|
pub extern "js" fn XMLDocument::create_event(
  self : XMLDocument,
  interface : String,
) -> Event =
  #| (self, interface) => self.createEvent(interface)

///|
pub extern "js" fn XMLDocument::create_range(self : XMLDocument) -> Range =
  #| (self) => self.createRange()

///|
pub extern "js" fn XMLDocument::create_node_iterator(
  self : XMLDocument,
  root : Node,
) -> NodeIterator =
  #| (self, root) => self.createNodeIterator(root)

///|
pub extern "js" fn XMLDocument::create_node_iterator_with_filter(
  self : XMLDocument,
  root : Node,
  what_to_show : Int,
  filter : NodeFilter?,
) -> NodeIterator =
  #| (self, root, what_to_show, filter) => self.createNodeIterator(root, what_to_show, filter)

///|
pub extern "js" fn XMLDocument::create_tree_walker(
  self : XMLDocument,
  root : Node,
) -> TreeWalker =
  #| (self, root) => self.createTreeWalker(root)

///|
pub extern "js" fn XMLDocument::create_tree_walker_with_filter(
  self : XMLDocument,
  root : Node,
  what_to_show : Int,
  filter : NodeFilter?,
) -> TreeWalker =
  #| (self, root, what_to_show, filter) => self.createTreeWalker(root, what_to_show, filter)

///|
pub extern "js" fn XMLDocument::get_root_element(
  self : XMLDocument,
) -> SVGSVGElement? =
  #| (self) => self.rootElement

///|
pub extern "js" fn XMLDocument::get_named_flows(
  self : XMLDocument,
) -> NamedFlowMap =
  #| (self) => self.namedFlows

///|
pub extern "js" fn XMLDocument::start_view_transition(
  self : XMLDocument,
) -> ViewTransition =
  #| (self) => self.startViewTransition()

///|
pub extern "js" fn XMLDocument::start_view_transition_with_callback_options(
  self : XMLDocument,
  callback_options : ViewTransitionUpdateCallbackOrStartViewTransitionOptions,
) -> ViewTransition =
  #| (self, callback_options) => self.startViewTransition(callback_options)

///|
pub extern "js" fn XMLDocument::get_active_view_transition(
  self : XMLDocument,
) -> ViewTransition? =
  #| (self) => self.activeViewTransition

///|
pub extern "js" fn XMLDocument::element_from_point(
  self : XMLDocument,
  x : Double,
  y : Double,
) -> Element? =
  #| (self, x, y) => self.elementFromPoint(x, y)

///|
pub extern "js" fn XMLDocument::elements_from_point(
  self : XMLDocument,
  x : Double,
  y : Double,
) -> Array[Element] =
  #| (self, x, y) => self.elementsFromPoint(x, y)

///|
pub extern "js" fn XMLDocument::caret_position_from_point(
  self : XMLDocument,
  x : Double,
  y : Double,
) -> CaretPosition? =
  #| (self, x, y) => self.caretPositionFromPoint(x, y)

///|
pub extern "js" fn XMLDocument::caret_position_from_point_with_options(
  self : XMLDocument,
  x : Double,
  y : Double,
  options : CaretPositionFromPointOptions,
) -> CaretPosition? =
  #| (self, x, y, options) => self.caretPositionFromPoint(x, y, options)

///|
pub extern "js" fn XMLDocument::get_scrolling_element(
  self : XMLDocument,
) -> Element? =
  #| (self) => self.scrollingElement

///|
pub extern "js" fn XMLDocument::measure_element(
  self : XMLDocument,
  element : Element,
) -> FontMetrics =
  #| (self, element) => self.measureElement(element)

///|
pub extern "js" fn XMLDocument::measure_text(
  self : XMLDocument,
  text : String,
  style_map : StylePropertyMapReadOnly,
) -> FontMetrics =
  #| (self, text, style_map) => self.measureText(text, style_map)

///|
pub extern "js" fn XMLDocument::get_fullscreen_enabled(
  self : XMLDocument,
) -> Bool =
  #| (self) => self.fullscreenEnabled

///|
pub extern "js" fn XMLDocument::get_fullscreen(self : XMLDocument) -> Bool =
  #| (self) => self.fullscreen

///|
pub extern "js" fn XMLDocument::exit_fullscreen(
  self : XMLDocument,
) -> Promise[Unit] =
  #| (self) => self.exitFullscreen()

///|
pub extern "js" fn XMLDocument::get_onfullscreenchange(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onfullscreenchange

///|
pub extern "js" fn XMLDocument::set_onfullscreenchange(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onfullscreenchange = value }

///|
pub extern "js" fn XMLDocument::get_onfullscreenerror(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onfullscreenerror

///|
pub extern "js" fn XMLDocument::set_onfullscreenerror(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onfullscreenerror = value }

///|
pub extern "js" fn XMLDocument::parse_h_t_m_l_unsafe(
  html : TrustedHTMLOrString,
) -> Document =
  #| (html) => XMLDocument.parseHTMLUnsafe(html)

///|
pub extern "js" fn XMLDocument::get_location(self : XMLDocument) -> Location? =
  #| (self) => self.location

///|
pub extern "js" fn XMLDocument::get_domain(self : XMLDocument) -> String =
  #| (self) => self.domain

///|
pub extern "js" fn XMLDocument::set_domain(
  self : XMLDocument,
  value : String,
) -> Unit =
  #| (self, value) => { self.domain = value }

///|
pub extern "js" fn XMLDocument::get_referrer(self : XMLDocument) -> String =
  #| (self) => self.referrer

///|
pub extern "js" fn XMLDocument::get_cookie(self : XMLDocument) -> String =
  #| (self) => self.cookie

///|
pub extern "js" fn XMLDocument::set_cookie(
  self : XMLDocument,
  value : String,
) -> Unit =
  #| (self, value) => { self.cookie = value }

///|
pub extern "js" fn XMLDocument::get_last_modified(self : XMLDocument) -> String =
  #| (self) => self.lastModified

///|
pub extern "js" fn XMLDocument::get_ready_state(
  self : XMLDocument,
) -> DocumentReadyState =
  #| (self) => self.readyState

///|
pub extern "js" fn XMLDocument::get_named(
  self : XMLDocument,
  name : String,
) -> JsValue =
  #| (self, name) => self[name]

///|
pub extern "js" fn XMLDocument::get_title(self : XMLDocument) -> String =
  #| (self) => self.title

///|
pub extern "js" fn XMLDocument::set_title(
  self : XMLDocument,
  value : String,
) -> Unit =
  #| (self, value) => { self.title = value }

///|
pub extern "js" fn XMLDocument::get_dir(self : XMLDocument) -> String =
  #| (self) => self.dir

///|
pub extern "js" fn XMLDocument::set_dir(
  self : XMLDocument,
  value : String,
) -> Unit =
  #| (self, value) => { self.dir = value }

///|
pub extern "js" fn XMLDocument::get_body(self : XMLDocument) -> HTMLElement? =
  #| (self) => self.body

///|
pub extern "js" fn XMLDocument::set_body(
  self : XMLDocument,
  value : HTMLElement?,
) -> Unit =
  #| (self, value) => { self.body = value }

///|
pub extern "js" fn XMLDocument::get_head(
  self : XMLDocument,
) -> HTMLHeadElement? =
  #| (self) => self.head

///|
pub extern "js" fn XMLDocument::get_images(
  self : XMLDocument,
) -> HTMLCollection =
  #| (self) => self.images

///|
pub extern "js" fn XMLDocument::get_embeds(
  self : XMLDocument,
) -> HTMLCollection =
  #| (self) => self.embeds

///|
pub extern "js" fn XMLDocument::get_plugins(
  self : XMLDocument,
) -> HTMLCollection =
  #| (self) => self.plugins

///|
pub extern "js" fn XMLDocument::get_links(self : XMLDocument) -> HTMLCollection =
  #| (self) => self.links

///|
pub extern "js" fn XMLDocument::get_forms(self : XMLDocument) -> HTMLCollection =
  #| (self) => self.forms

///|
pub extern "js" fn XMLDocument::get_scripts(
  self : XMLDocument,
) -> HTMLCollection =
  #| (self) => self.scripts

///|
pub extern "js" fn XMLDocument::get_elements_by_name(
  self : XMLDocument,
  element_name : String,
) -> NodeList =
  #| (self, element_name) => self.getElementsByName(element_name)

///|
pub extern "js" fn XMLDocument::get_current_script(
  self : XMLDocument,
) -> HTMLOrSVGScriptElement? =
  #| (self) => self.currentScript

///|
pub extern "js" fn XMLDocument::open(self : XMLDocument) -> Document =
  #| (self) => self.open()

///|
pub extern "js" fn XMLDocument::open_with_unused2(
  self : XMLDocument,
  unused1 : String,
  unused2 : String,
) -> Document =
  #| (self, unused1, unused2) => self.open(unused1, unused2)

///|
pub extern "js" fn XMLDocument::close(self : XMLDocument) -> Unit =
  #| (self) => self.close()

///|
pub extern "js" fn XMLDocument::write(
  self : XMLDocument,
  text : TrustedHTMLOrString,
) -> Unit =
  #| (self, text) => self.write(text)

///|
pub extern "js" fn XMLDocument::writeln(
  self : XMLDocument,
  text : TrustedHTMLOrString,
) -> Unit =
  #| (self, text) => self.writeln(text)

///|
pub extern "js" fn XMLDocument::get_default_view(
  self : XMLDocument,
) -> WindowProxy? =
  #| (self) => self.defaultView

///|
pub extern "js" fn XMLDocument::has_focus(self : XMLDocument) -> Bool =
  #| (self) => self.hasFocus()

///|
pub extern "js" fn XMLDocument::get_design_mode(self : XMLDocument) -> String =
  #| (self) => self.designMode

///|
pub extern "js" fn XMLDocument::set_design_mode(
  self : XMLDocument,
  value : String,
) -> Unit =
  #| (self, value) => { self.designMode = value }

///|
pub extern "js" fn XMLDocument::exec_command(
  self : XMLDocument,
  command_id : String,
) -> Bool =
  #| (self, command_id) => self.execCommand(command_id)

///|
pub extern "js" fn XMLDocument::exec_command_with_value(
  self : XMLDocument,
  command_id : String,
  show_u_i : Bool,
  value : String,
) -> Bool =
  #| (self, command_id, show_u_i, value) => self.execCommand(command_id, show_u_i, value)

///|
pub extern "js" fn XMLDocument::query_command_enabled(
  self : XMLDocument,
  command_id : String,
) -> Bool =
  #| (self, command_id) => self.queryCommandEnabled(command_id)

///|
pub extern "js" fn XMLDocument::query_command_indeterm(
  self : XMLDocument,
  command_id : String,
) -> Bool =
  #| (self, command_id) => self.queryCommandIndeterm(command_id)

///|
pub extern "js" fn XMLDocument::query_command_state(
  self : XMLDocument,
  command_id : String,
) -> Bool =
  #| (self, command_id) => self.queryCommandState(command_id)

///|
pub extern "js" fn XMLDocument::query_command_supported(
  self : XMLDocument,
  command_id : String,
) -> Bool =
  #| (self, command_id) => self.queryCommandSupported(command_id)

///|
pub extern "js" fn XMLDocument::query_command_value(
  self : XMLDocument,
  command_id : String,
) -> String =
  #| (self, command_id) => self.queryCommandValue(command_id)

///|
pub extern "js" fn XMLDocument::get_hidden(self : XMLDocument) -> Bool =
  #| (self) => self.hidden

///|
pub extern "js" fn XMLDocument::get_visibility_state(
  self : XMLDocument,
) -> DocumentVisibilityState =
  #| (self) => self.visibilityState

///|
pub extern "js" fn XMLDocument::get_onreadystatechange(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onreadystatechange

///|
pub extern "js" fn XMLDocument::set_onreadystatechange(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onreadystatechange = value }

///|
pub extern "js" fn XMLDocument::get_onvisibilitychange(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onvisibilitychange

///|
pub extern "js" fn XMLDocument::set_onvisibilitychange(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onvisibilitychange = value }

///|
pub extern "js" fn XMLDocument::get_fg_color(self : XMLDocument) -> String =
  #| (self) => self.fgColor

///|
pub extern "js" fn XMLDocument::set_fg_color(
  self : XMLDocument,
  value : String,
) -> Unit =
  #| (self, value) => { self.fgColor = value }

///|
pub extern "js" fn XMLDocument::get_link_color(self : XMLDocument) -> String =
  #| (self) => self.linkColor

///|
pub extern "js" fn XMLDocument::set_link_color(
  self : XMLDocument,
  value : String,
) -> Unit =
  #| (self, value) => { self.linkColor = value }

///|
pub extern "js" fn XMLDocument::get_vlink_color(self : XMLDocument) -> String =
  #| (self) => self.vlinkColor

///|
pub extern "js" fn XMLDocument::set_vlink_color(
  self : XMLDocument,
  value : String,
) -> Unit =
  #| (self, value) => { self.vlinkColor = value }

///|
pub extern "js" fn XMLDocument::get_alink_color(self : XMLDocument) -> String =
  #| (self) => self.alinkColor

///|
pub extern "js" fn XMLDocument::set_alink_color(
  self : XMLDocument,
  value : String,
) -> Unit =
  #| (self, value) => { self.alinkColor = value }

///|
pub extern "js" fn XMLDocument::get_bg_color(self : XMLDocument) -> String =
  #| (self) => self.bgColor

///|
pub extern "js" fn XMLDocument::set_bg_color(
  self : XMLDocument,
  value : String,
) -> Unit =
  #| (self, value) => { self.bgColor = value }

///|
pub extern "js" fn XMLDocument::get_anchors(
  self : XMLDocument,
) -> HTMLCollection =
  #| (self) => self.anchors

///|
pub extern "js" fn XMLDocument::get_applets(
  self : XMLDocument,
) -> HTMLCollection =
  #| (self) => self.applets

///|
pub extern "js" fn XMLDocument::clear(self : XMLDocument) -> Unit =
  #| (self) => self.clear()

///|
pub extern "js" fn XMLDocument::capture_events(self : XMLDocument) -> Unit =
  #| (self) => self.captureEvents()

///|
pub extern "js" fn XMLDocument::release_events(self : XMLDocument) -> Unit =
  #| (self) => self.releaseEvents()

///|
pub extern "js" fn XMLDocument::get_all(
  self : XMLDocument,
) -> HTMLAllCollection =
  #| (self) => self.all

///|
pub extern "js" fn XMLDocument::get_onfreeze(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onfreeze

///|
pub extern "js" fn XMLDocument::set_onfreeze(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onfreeze = value }

///|
pub extern "js" fn XMLDocument::get_onresume(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onresume

///|
pub extern "js" fn XMLDocument::set_onresume(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onresume = value }

///|
pub extern "js" fn XMLDocument::get_was_discarded(self : XMLDocument) -> Bool =
  #| (self) => self.wasDiscarded

///|
pub extern "js" fn XMLDocument::get_permissions_policy(
  self : XMLDocument,
) -> PermissionsPolicy =
  #| (self) => self.permissionsPolicy

///|
pub extern "js" fn XMLDocument::get_picture_in_picture_enabled(
  self : XMLDocument,
) -> Bool =
  #| (self) => self.pictureInPictureEnabled

///|
pub extern "js" fn XMLDocument::exit_picture_in_picture(
  self : XMLDocument,
) -> Promise[Unit] =
  #| (self) => self.exitPictureInPicture()

///|
pub extern "js" fn XMLDocument::get_onpointerlockchange(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onpointerlockchange

///|
pub extern "js" fn XMLDocument::set_onpointerlockchange(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerlockchange = value }

///|
pub extern "js" fn XMLDocument::get_onpointerlockerror(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onpointerlockerror

///|
pub extern "js" fn XMLDocument::set_onpointerlockerror(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerlockerror = value }

///|
pub extern "js" fn XMLDocument::exit_pointer_lock(self : XMLDocument) -> Unit =
  #| (self) => self.exitPointerLock()

///|
pub extern "js" fn XMLDocument::get_prerendering(self : XMLDocument) -> Bool =
  #| (self) => self.prerendering

///|
pub extern "js" fn XMLDocument::get_onprerenderingchange(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onprerenderingchange

///|
pub extern "js" fn XMLDocument::set_onprerenderingchange(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onprerenderingchange = value }

///|
pub extern "js" fn XMLDocument::request_storage_access_for(
  self : XMLDocument,
  requested_origin : String,
) -> Promise[Unit] =
  #| (self, requested_origin) => self.requestStorageAccessFor(requested_origin)

///|
pub extern "js" fn XMLDocument::has_unpartitioned_cookie_access(
  self : XMLDocument,
) -> Promise[Bool] =
  #| (self) => self.hasUnpartitionedCookieAccess()

///|
pub extern "js" fn XMLDocument::get_fragment_directive(
  self : XMLDocument,
) -> FragmentDirective =
  #| (self) => self.fragmentDirective

///|
pub extern "js" fn XMLDocument::get_selection(self : XMLDocument) -> Selection? =
  #| (self) => self.getSelection()

///|
pub extern "js" fn XMLDocument::has_storage_access(
  self : XMLDocument,
) -> Promise[Bool] =
  #| (self) => self.hasStorageAccess()

///|
pub extern "js" fn XMLDocument::request_storage_access(
  self : XMLDocument,
) -> Promise[Unit] =
  #| (self) => self.requestStorageAccess()

///|
pub extern "js" fn XMLDocument::has_private_token(
  self : XMLDocument,
  issuer : String,
) -> Promise[Bool] =
  #| (self, issuer) => self.hasPrivateToken(issuer)

///|
pub extern "js" fn XMLDocument::has_redemption_record(
  self : XMLDocument,
  issuer : String,
) -> Promise[Bool] =
  #| (self, issuer) => self.hasRedemptionRecord(issuer)

///|
pub extern "js" fn XMLDocument::get_timeline(
  self : XMLDocument,
) -> DocumentTimeline =
  #| (self) => self.timeline

///|
pub extern "js" fn XMLDocument::get_fonts(self : XMLDocument) -> FontFaceSet =
  #| (self) => self.fonts

///|
pub extern "js" fn XMLDocument::get_box_quads(
  self : XMLDocument,
) -> Array[DOMQuad] =
  #| (self) => self.getBoxQuads()

///|
pub extern "js" fn XMLDocument::get_box_quads_with_options(
  self : XMLDocument,
  options : BoxQuadOptions,
) -> Array[DOMQuad] =
  #| (self, options) => self.getBoxQuads(options)

///|
pub extern "js" fn XMLDocument::convert_quad_from_node(
  self : XMLDocument,
  quad : DOMQuadInit,
  from : GeometryNode,
) -> DOMQuad =
  #| (self, quad, from) => self.convertQuadFromNode(quad, from)

///|
pub extern "js" fn XMLDocument::convert_quad_from_node_with_options(
  self : XMLDocument,
  quad : DOMQuadInit,
  from : GeometryNode,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, quad, from, options) => self.convertQuadFromNode(quad, from, options)

///|
pub extern "js" fn XMLDocument::convert_rect_from_node(
  self : XMLDocument,
  rect : DOMRectReadOnly,
  from : GeometryNode,
) -> DOMQuad =
  #| (self, rect, from) => self.convertRectFromNode(rect, from)

///|
pub extern "js" fn XMLDocument::convert_rect_from_node_with_options(
  self : XMLDocument,
  rect : DOMRectReadOnly,
  from : GeometryNode,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, rect, from, options) => self.convertRectFromNode(rect, from, options)

///|
pub extern "js" fn XMLDocument::convert_point_from_node(
  self : XMLDocument,
  point : DOMPointInit,
  from : GeometryNode,
) -> DOMPoint =
  #| (self, point, from) => self.convertPointFromNode(point, from)

///|
pub extern "js" fn XMLDocument::convert_point_from_node_with_options(
  self : XMLDocument,
  point : DOMPointInit,
  from : GeometryNode,
  options : ConvertCoordinateOptions,
) -> DOMPoint =
  #| (self, point, from, options) => self.convertPointFromNode(point, from, options)

///|
pub extern "js" fn XMLDocument::get_element_by_id(
  self : XMLDocument,
  element_id : String,
) -> Element? =
  #| (self, element_id) => self.getElementById(element_id)

///|
pub extern "js" fn XMLDocument::get_style_sheets(
  self : XMLDocument,
) -> StyleSheetList =
  #| (self) => self.styleSheets

///|
pub extern "js" fn XMLDocument::get_adopted_style_sheets(
  self : XMLDocument,
) -> JsValue =
  #| (self) => self.adoptedStyleSheets

///|
pub extern "js" fn XMLDocument::set_adopted_style_sheets(
  self : XMLDocument,
  value : JsValue,
) -> Unit =
  #| (self, value) => { self.adoptedStyleSheets = value }

///|
pub extern "js" fn XMLDocument::get_custom_element_registry(
  self : XMLDocument,
) -> CustomElementRegistry? =
  #| (self) => self.customElementRegistry

///|
pub extern "js" fn XMLDocument::get_fullscreen_element(
  self : XMLDocument,
) -> Element? =
  #| (self) => self.fullscreenElement

///|
pub extern "js" fn XMLDocument::get_active_element(
  self : XMLDocument,
) -> Element? =
  #| (self) => self.activeElement

///|
pub extern "js" fn XMLDocument::get_picture_in_picture_element(
  self : XMLDocument,
) -> Element? =
  #| (self) => self.pictureInPictureElement

///|
pub extern "js" fn XMLDocument::get_pointer_lock_element(
  self : XMLDocument,
) -> Element? =
  #| (self) => self.pointerLockElement

///|
pub extern "js" fn XMLDocument::get_animations(
  self : XMLDocument,
) -> Array[Animation] =
  #| (self) => self.getAnimations()

///|
pub extern "js" fn XMLDocument::get_children(
  self : XMLDocument,
) -> HTMLCollection =
  #| (self) => self.children

///|
pub extern "js" fn XMLDocument::get_first_element_child(
  self : XMLDocument,
) -> Element? =
  #| (self) => self.firstElementChild

///|
pub extern "js" fn XMLDocument::get_last_element_child(
  self : XMLDocument,
) -> Element? =
  #| (self) => self.lastElementChild

///|
pub extern "js" fn XMLDocument::get_child_element_count(
  self : XMLDocument,
) -> Int =
  #| (self) => self.childElementCount

///|
pub extern "js" fn XMLDocument::prepend(
  self : XMLDocument,
  nodes : NodeOrString,
) -> Unit =
  #| (self, nodes) => self.prepend(nodes)

///|
pub extern "js" fn XMLDocument::append(
  self : XMLDocument,
  nodes : NodeOrString,
) -> Unit =
  #| (self, nodes) => self.append(nodes)

///|
pub extern "js" fn XMLDocument::replace_children(
  self : XMLDocument,
  nodes : NodeOrString,
) -> Unit =
  #| (self, nodes) => self.replaceChildren(nodes)

///|
pub extern "js" fn XMLDocument::move_before(
  self : XMLDocument,
  node : Node,
  child : Node?,
) -> Unit =
  #| (self, node, child) => self.moveBefore(node, child)

///|
pub extern "js" fn XMLDocument::query_selector(
  self : XMLDocument,
  selectors : String,
) -> Element? =
  #| (self, selectors) => self.querySelector(selectors)

///|
pub extern "js" fn XMLDocument::query_selector_all(
  self : XMLDocument,
  selectors : String,
) -> NodeList =
  #| (self, selectors) => self.querySelectorAll(selectors)

///|
pub extern "js" fn XMLDocument::create_expression(
  self : XMLDocument,
  expression : String,
) -> XPathExpression =
  #| (self, expression) => self.createExpression(expression)

///|
pub extern "js" fn XMLDocument::create_expression_with_resolver(
  self : XMLDocument,
  expression : String,
  resolver : XPathNSResolver?,
) -> XPathExpression =
  #| (self, expression, resolver) => self.createExpression(expression, resolver)

///|
pub extern "js" fn XMLDocument::create_n_s_resolver(
  self : XMLDocument,
  node_resolver : Node,
) -> Node =
  #| (self, node_resolver) => self.createNSResolver(node_resolver)

///|
pub extern "js" fn XMLDocument::evaluate(
  self : XMLDocument,
  expression : String,
  context_node : Node,
) -> XPathResult =
  #| (self, expression, context_node) => self.evaluate(expression, context_node)

///|
pub extern "js" fn XMLDocument::evaluate_with_result(
  self : XMLDocument,
  expression : String,
  context_node : Node,
  resolver : XPathNSResolver?,
  type_ : Int,
  result : XPathResult?,
) -> XPathResult =
  #| (self, expression, context_node, resolver, type_, result) => self.evaluate(expression, context_node, resolver, type_, result)

///|
pub extern "js" fn XMLDocument::get_onanimationstart(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onanimationstart

///|
pub extern "js" fn XMLDocument::set_onanimationstart(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onanimationstart = value }

///|
pub extern "js" fn XMLDocument::get_onanimationiteration(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onanimationiteration

///|
pub extern "js" fn XMLDocument::set_onanimationiteration(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onanimationiteration = value }

///|
pub extern "js" fn XMLDocument::get_onanimationend(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onanimationend

///|
pub extern "js" fn XMLDocument::set_onanimationend(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onanimationend = value }

///|
pub extern "js" fn XMLDocument::get_onanimationcancel(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onanimationcancel

///|
pub extern "js" fn XMLDocument::set_onanimationcancel(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onanimationcancel = value }

///|
pub extern "js" fn XMLDocument::get_onsnapchanged(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onsnapchanged

///|
pub extern "js" fn XMLDocument::set_onsnapchanged(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsnapchanged = value }

///|
pub extern "js" fn XMLDocument::get_onsnapchanging(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onsnapchanging

///|
pub extern "js" fn XMLDocument::set_onsnapchanging(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsnapchanging = value }

///|
pub extern "js" fn XMLDocument::get_ontransitionrun(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.ontransitionrun

///|
pub extern "js" fn XMLDocument::set_ontransitionrun(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontransitionrun = value }

///|
pub extern "js" fn XMLDocument::get_ontransitionstart(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.ontransitionstart

///|
pub extern "js" fn XMLDocument::set_ontransitionstart(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontransitionstart = value }

///|
pub extern "js" fn XMLDocument::get_ontransitionend(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.ontransitionend

///|
pub extern "js" fn XMLDocument::set_ontransitionend(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontransitionend = value }

///|
pub extern "js" fn XMLDocument::get_ontransitioncancel(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.ontransitioncancel

///|
pub extern "js" fn XMLDocument::set_ontransitioncancel(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontransitioncancel = value }

///|
pub extern "js" fn XMLDocument::get_onfencedtreeclick(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onfencedtreeclick

///|
pub extern "js" fn XMLDocument::set_onfencedtreeclick(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onfencedtreeclick = value }

///|
pub extern "js" fn XMLDocument::get_onabort(self : XMLDocument) -> EventHandler =
  #| (self) => self.onabort

///|
pub extern "js" fn XMLDocument::set_onabort(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onabort = value }

///|
pub extern "js" fn XMLDocument::get_onauxclick(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onauxclick

///|
pub extern "js" fn XMLDocument::set_onauxclick(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onauxclick = value }

///|
pub extern "js" fn XMLDocument::get_onbeforeinput(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onbeforeinput

///|
pub extern "js" fn XMLDocument::set_onbeforeinput(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbeforeinput = value }

///|
pub extern "js" fn XMLDocument::get_onbeforematch(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onbeforematch

///|
pub extern "js" fn XMLDocument::set_onbeforematch(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbeforematch = value }

///|
pub extern "js" fn XMLDocument::get_onbeforetoggle(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onbeforetoggle

///|
pub extern "js" fn XMLDocument::set_onbeforetoggle(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbeforetoggle = value }

///|
pub extern "js" fn XMLDocument::get_onblur(self : XMLDocument) -> EventHandler =
  #| (self) => self.onblur

///|
pub extern "js" fn XMLDocument::set_onblur(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onblur = value }

///|
pub extern "js" fn XMLDocument::get_oncancel(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.oncancel

///|
pub extern "js" fn XMLDocument::set_oncancel(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncancel = value }

///|
pub extern "js" fn XMLDocument::get_oncanplay(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.oncanplay

///|
pub extern "js" fn XMLDocument::set_oncanplay(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncanplay = value }

///|
pub extern "js" fn XMLDocument::get_oncanplaythrough(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.oncanplaythrough

///|
pub extern "js" fn XMLDocument::set_oncanplaythrough(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncanplaythrough = value }

///|
pub extern "js" fn XMLDocument::get_onchange(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onchange

///|
pub extern "js" fn XMLDocument::set_onchange(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onchange = value }

///|
pub extern "js" fn XMLDocument::get_onclick(self : XMLDocument) -> EventHandler =
  #| (self) => self.onclick

///|
pub extern "js" fn XMLDocument::set_onclick(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onclick = value }

///|
pub extern "js" fn XMLDocument::get_onclose(self : XMLDocument) -> EventHandler =
  #| (self) => self.onclose

///|
pub extern "js" fn XMLDocument::set_onclose(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onclose = value }

///|
pub extern "js" fn XMLDocument::get_oncommand(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.oncommand

///|
pub extern "js" fn XMLDocument::set_oncommand(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncommand = value }

///|
pub extern "js" fn XMLDocument::get_oncontextlost(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.oncontextlost

///|
pub extern "js" fn XMLDocument::set_oncontextlost(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncontextlost = value }

///|
pub extern "js" fn XMLDocument::get_oncontextmenu(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.oncontextmenu

///|
pub extern "js" fn XMLDocument::set_oncontextmenu(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncontextmenu = value }

///|
pub extern "js" fn XMLDocument::get_oncontextrestored(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.oncontextrestored

///|
pub extern "js" fn XMLDocument::set_oncontextrestored(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncontextrestored = value }

///|
pub extern "js" fn XMLDocument::get_oncopy(self : XMLDocument) -> EventHandler =
  #| (self) => self.oncopy

///|
pub extern "js" fn XMLDocument::set_oncopy(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncopy = value }

///|
pub extern "js" fn XMLDocument::get_oncuechange(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.oncuechange

///|
pub extern "js" fn XMLDocument::set_oncuechange(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncuechange = value }

///|
pub extern "js" fn XMLDocument::get_oncut(self : XMLDocument) -> EventHandler =
  #| (self) => self.oncut

///|
pub extern "js" fn XMLDocument::set_oncut(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncut = value }

///|
pub extern "js" fn XMLDocument::get_ondblclick(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.ondblclick

///|
pub extern "js" fn XMLDocument::set_ondblclick(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondblclick = value }

///|
pub extern "js" fn XMLDocument::get_ondrag(self : XMLDocument) -> EventHandler =
  #| (self) => self.ondrag

///|
pub extern "js" fn XMLDocument::set_ondrag(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondrag = value }

///|
pub extern "js" fn XMLDocument::get_ondragend(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.ondragend

///|
pub extern "js" fn XMLDocument::set_ondragend(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondragend = value }

///|
pub extern "js" fn XMLDocument::get_ondragenter(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.ondragenter

///|
pub extern "js" fn XMLDocument::set_ondragenter(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondragenter = value }

///|
pub extern "js" fn XMLDocument::get_ondragleave(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.ondragleave

///|
pub extern "js" fn XMLDocument::set_ondragleave(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondragleave = value }

///|
pub extern "js" fn XMLDocument::get_ondragover(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.ondragover

///|
pub extern "js" fn XMLDocument::set_ondragover(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondragover = value }

///|
pub extern "js" fn XMLDocument::get_ondragstart(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.ondragstart

///|
pub extern "js" fn XMLDocument::set_ondragstart(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondragstart = value }

///|
pub extern "js" fn XMLDocument::get_ondrop(self : XMLDocument) -> EventHandler =
  #| (self) => self.ondrop

///|
pub extern "js" fn XMLDocument::set_ondrop(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondrop = value }

///|
pub extern "js" fn XMLDocument::get_ondurationchange(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.ondurationchange

///|
pub extern "js" fn XMLDocument::set_ondurationchange(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondurationchange = value }

///|
pub extern "js" fn XMLDocument::get_onemptied(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onemptied

///|
pub extern "js" fn XMLDocument::set_onemptied(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onemptied = value }

///|
pub extern "js" fn XMLDocument::get_onended(self : XMLDocument) -> EventHandler =
  #| (self) => self.onended

///|
pub extern "js" fn XMLDocument::set_onended(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onended = value }

///|
pub extern "js" fn XMLDocument::get_onerror(
  self : XMLDocument,
) -> OnErrorEventHandler =
  #| (self) => self.onerror

///|
pub extern "js" fn XMLDocument::set_onerror(
  self : XMLDocument,
  value : OnErrorEventHandler,
) -> Unit =
  #| (self, value) => { self.onerror = value }

///|
pub extern "js" fn XMLDocument::get_onfocus(self : XMLDocument) -> EventHandler =
  #| (self) => self.onfocus

///|
pub extern "js" fn XMLDocument::set_onfocus(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onfocus = value }

///|
pub extern "js" fn XMLDocument::get_onformdata(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onformdata

///|
pub extern "js" fn XMLDocument::set_onformdata(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onformdata = value }

///|
pub extern "js" fn XMLDocument::get_oninput(self : XMLDocument) -> EventHandler =
  #| (self) => self.oninput

///|
pub extern "js" fn XMLDocument::set_oninput(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oninput = value }

///|
pub extern "js" fn XMLDocument::get_oninvalid(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.oninvalid

///|
pub extern "js" fn XMLDocument::set_oninvalid(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oninvalid = value }

///|
pub extern "js" fn XMLDocument::get_onkeydown(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onkeydown

///|
pub extern "js" fn XMLDocument::set_onkeydown(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onkeydown = value }

///|
pub extern "js" fn XMLDocument::get_onkeypress(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onkeypress

///|
pub extern "js" fn XMLDocument::set_onkeypress(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onkeypress = value }

///|
pub extern "js" fn XMLDocument::get_onkeyup(self : XMLDocument) -> EventHandler =
  #| (self) => self.onkeyup

///|
pub extern "js" fn XMLDocument::set_onkeyup(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onkeyup = value }

///|
pub extern "js" fn XMLDocument::get_onload(self : XMLDocument) -> EventHandler =
  #| (self) => self.onload

///|
pub extern "js" fn XMLDocument::set_onload(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onload = value }

///|
pub extern "js" fn XMLDocument::get_onloadeddata(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onloadeddata

///|
pub extern "js" fn XMLDocument::set_onloadeddata(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onloadeddata = value }

///|
pub extern "js" fn XMLDocument::get_onloadedmetadata(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onloadedmetadata

///|
pub extern "js" fn XMLDocument::set_onloadedmetadata(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onloadedmetadata = value }

///|
pub extern "js" fn XMLDocument::get_onloadstart(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onloadstart

///|
pub extern "js" fn XMLDocument::set_onloadstart(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onloadstart = value }

///|
pub extern "js" fn XMLDocument::get_onmousedown(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onmousedown

///|
pub extern "js" fn XMLDocument::set_onmousedown(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmousedown = value }

///|
pub extern "js" fn XMLDocument::get_onmouseenter(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onmouseenter

///|
pub extern "js" fn XMLDocument::set_onmouseenter(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmouseenter = value }

///|
pub extern "js" fn XMLDocument::get_onmouseleave(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onmouseleave

///|
pub extern "js" fn XMLDocument::set_onmouseleave(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmouseleave = value }

///|
pub extern "js" fn XMLDocument::get_onmousemove(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onmousemove

///|
pub extern "js" fn XMLDocument::set_onmousemove(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmousemove = value }

///|
pub extern "js" fn XMLDocument::get_onmouseout(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onmouseout

///|
pub extern "js" fn XMLDocument::set_onmouseout(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmouseout = value }

///|
pub extern "js" fn XMLDocument::get_onmouseover(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onmouseover

///|
pub extern "js" fn XMLDocument::set_onmouseover(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmouseover = value }

///|
pub extern "js" fn XMLDocument::get_onmouseup(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onmouseup

///|
pub extern "js" fn XMLDocument::set_onmouseup(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmouseup = value }

///|
pub extern "js" fn XMLDocument::get_onpaste(self : XMLDocument) -> EventHandler =
  #| (self) => self.onpaste

///|
pub extern "js" fn XMLDocument::set_onpaste(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpaste = value }

///|
pub extern "js" fn XMLDocument::get_onpause(self : XMLDocument) -> EventHandler =
  #| (self) => self.onpause

///|
pub extern "js" fn XMLDocument::set_onpause(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpause = value }

///|
pub extern "js" fn XMLDocument::get_onplay(self : XMLDocument) -> EventHandler =
  #| (self) => self.onplay

///|
pub extern "js" fn XMLDocument::set_onplay(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onplay = value }

///|
pub extern "js" fn XMLDocument::get_onplaying(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onplaying

///|
pub extern "js" fn XMLDocument::set_onplaying(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onplaying = value }

///|
pub extern "js" fn XMLDocument::get_onprogress(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onprogress

///|
pub extern "js" fn XMLDocument::set_onprogress(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onprogress = value }

///|
pub extern "js" fn XMLDocument::get_onratechange(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onratechange

///|
pub extern "js" fn XMLDocument::set_onratechange(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onratechange = value }

///|
pub extern "js" fn XMLDocument::get_onreset(self : XMLDocument) -> EventHandler =
  #| (self) => self.onreset

///|
pub extern "js" fn XMLDocument::set_onreset(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onreset = value }

///|
pub extern "js" fn XMLDocument::get_onresize(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onresize

///|
pub extern "js" fn XMLDocument::set_onresize(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onresize = value }

///|
pub extern "js" fn XMLDocument::get_onscroll(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onscroll

///|
pub extern "js" fn XMLDocument::set_onscroll(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onscroll = value }

///|
pub extern "js" fn XMLDocument::get_onscrollend(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onscrollend

///|
pub extern "js" fn XMLDocument::set_onscrollend(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onscrollend = value }

///|
pub extern "js" fn XMLDocument::get_onsecuritypolicyviolation(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onsecuritypolicyviolation

///|
pub extern "js" fn XMLDocument::set_onsecuritypolicyviolation(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsecuritypolicyviolation = value }

///|
pub extern "js" fn XMLDocument::get_onseeked(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onseeked

///|
pub extern "js" fn XMLDocument::set_onseeked(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onseeked = value }

///|
pub extern "js" fn XMLDocument::get_onseeking(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onseeking

///|
pub extern "js" fn XMLDocument::set_onseeking(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onseeking = value }

///|
pub extern "js" fn XMLDocument::get_onselect(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onselect

///|
pub extern "js" fn XMLDocument::set_onselect(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onselect = value }

///|
pub extern "js" fn XMLDocument::get_onslotchange(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onslotchange

///|
pub extern "js" fn XMLDocument::set_onslotchange(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onslotchange = value }

///|
pub extern "js" fn XMLDocument::get_onstalled(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onstalled

///|
pub extern "js" fn XMLDocument::set_onstalled(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onstalled = value }

///|
pub extern "js" fn XMLDocument::get_onsubmit(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onsubmit

///|
pub extern "js" fn XMLDocument::set_onsubmit(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsubmit = value }

///|
pub extern "js" fn XMLDocument::get_onsuspend(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onsuspend

///|
pub extern "js" fn XMLDocument::set_onsuspend(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsuspend = value }

///|
pub extern "js" fn XMLDocument::get_ontimeupdate(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.ontimeupdate

///|
pub extern "js" fn XMLDocument::set_ontimeupdate(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontimeupdate = value }

///|
pub extern "js" fn XMLDocument::get_ontoggle(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.ontoggle

///|
pub extern "js" fn XMLDocument::set_ontoggle(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontoggle = value }

///|
pub extern "js" fn XMLDocument::get_onvolumechange(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onvolumechange

///|
pub extern "js" fn XMLDocument::set_onvolumechange(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onvolumechange = value }

///|
pub extern "js" fn XMLDocument::get_onwaiting(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onwaiting

///|
pub extern "js" fn XMLDocument::set_onwaiting(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onwaiting = value }

///|
pub extern "js" fn XMLDocument::get_onwebkitanimationend(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onwebkitanimationend

///|
pub extern "js" fn XMLDocument::set_onwebkitanimationend(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onwebkitanimationend = value }

///|
pub extern "js" fn XMLDocument::get_onwebkitanimationiteration(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onwebkitanimationiteration

///|
pub extern "js" fn XMLDocument::set_onwebkitanimationiteration(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onwebkitanimationiteration = value }

///|
pub extern "js" fn XMLDocument::get_onwebkitanimationstart(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onwebkitanimationstart

///|
pub extern "js" fn XMLDocument::set_onwebkitanimationstart(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onwebkitanimationstart = value }

///|
pub extern "js" fn XMLDocument::get_onwebkittransitionend(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onwebkittransitionend

///|
pub extern "js" fn XMLDocument::set_onwebkittransitionend(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onwebkittransitionend = value }

///|
pub extern "js" fn XMLDocument::get_onwheel(self : XMLDocument) -> EventHandler =
  #| (self) => self.onwheel

///|
pub extern "js" fn XMLDocument::set_onwheel(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onwheel = value }

///|
pub extern "js" fn XMLDocument::get_onpointerover(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onpointerover

///|
pub extern "js" fn XMLDocument::set_onpointerover(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerover = value }

///|
pub extern "js" fn XMLDocument::get_onpointerenter(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onpointerenter

///|
pub extern "js" fn XMLDocument::set_onpointerenter(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerenter = value }

///|
pub extern "js" fn XMLDocument::get_onpointerdown(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onpointerdown

///|
pub extern "js" fn XMLDocument::set_onpointerdown(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerdown = value }

///|
pub extern "js" fn XMLDocument::get_onpointermove(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onpointermove

///|
pub extern "js" fn XMLDocument::set_onpointermove(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointermove = value }

///|
pub extern "js" fn XMLDocument::get_onpointerrawupdate(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onpointerrawupdate

///|
pub extern "js" fn XMLDocument::set_onpointerrawupdate(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerrawupdate = value }

///|
pub extern "js" fn XMLDocument::get_onpointerup(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onpointerup

///|
pub extern "js" fn XMLDocument::set_onpointerup(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerup = value }

///|
pub extern "js" fn XMLDocument::get_onpointercancel(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onpointercancel

///|
pub extern "js" fn XMLDocument::set_onpointercancel(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointercancel = value }

///|
pub extern "js" fn XMLDocument::get_onpointerout(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onpointerout

///|
pub extern "js" fn XMLDocument::set_onpointerout(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerout = value }

///|
pub extern "js" fn XMLDocument::get_onpointerleave(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onpointerleave

///|
pub extern "js" fn XMLDocument::set_onpointerleave(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerleave = value }

///|
pub extern "js" fn XMLDocument::get_ongotpointercapture(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.ongotpointercapture

///|
pub extern "js" fn XMLDocument::set_ongotpointercapture(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ongotpointercapture = value }

///|
pub extern "js" fn XMLDocument::get_onlostpointercapture(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onlostpointercapture

///|
pub extern "js" fn XMLDocument::set_onlostpointercapture(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onlostpointercapture = value }

///|
pub extern "js" fn XMLDocument::get_onselectstart(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onselectstart

///|
pub extern "js" fn XMLDocument::set_onselectstart(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onselectstart = value }

///|
pub extern "js" fn XMLDocument::get_onselectionchange(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onselectionchange

///|
pub extern "js" fn XMLDocument::set_onselectionchange(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onselectionchange = value }

///|
pub extern "js" fn XMLDocument::get_ontouchstart(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.ontouchstart

///|
pub extern "js" fn XMLDocument::set_ontouchstart(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontouchstart = value }

///|
pub extern "js" fn XMLDocument::get_ontouchend(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.ontouchend

///|
pub extern "js" fn XMLDocument::set_ontouchend(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontouchend = value }

///|
pub extern "js" fn XMLDocument::get_ontouchmove(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.ontouchmove

///|
pub extern "js" fn XMLDocument::set_ontouchmove(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontouchmove = value }

///|
pub extern "js" fn XMLDocument::get_ontouchcancel(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.ontouchcancel

///|
pub extern "js" fn XMLDocument::set_ontouchcancel(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontouchcancel = value }

///|
pub extern "js" fn XMLDocument::get_onbeforexrselect(
  self : XMLDocument,
) -> EventHandler =
  #| (self) => self.onbeforexrselect

///|
pub extern "js" fn XMLDocument::set_onbeforexrselect(
  self : XMLDocument,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbeforexrselect = value }

///|
/// DOMImplementation interface
pub type DOMImplementation

///|
pub extern "js" fn DOMImplementation::to_js_value(
  self : DOMImplementation,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn DOMImplementation::create_document_type(
  self : DOMImplementation,
  name : String,
  public_id : String,
  system_id : String,
) -> DocumentType =
  #| (self, name, public_id, system_id) => self.createDocumentType(name, public_id, system_id)

///|
pub extern "js" fn DOMImplementation::create_document(
  self : DOMImplementation,
  namespace_ : String?,
  qualified_name : String,
) -> XMLDocument =
  #| (self, namespace_, qualified_name) => self.createDocument(namespace_, qualified_name)

///|
pub extern "js" fn DOMImplementation::create_document_with_doctype(
  self : DOMImplementation,
  namespace_ : String?,
  qualified_name : String,
  doctype : DocumentType?,
) -> XMLDocument =
  #| (self, namespace_, qualified_name, doctype) => self.createDocument(namespace_, qualified_name, doctype)

///|
pub extern "js" fn DOMImplementation::create_h_t_m_l_document(
  self : DOMImplementation,
) -> Document =
  #| (self) => self.createHTMLDocument()

///|
pub extern "js" fn DOMImplementation::create_h_t_m_l_document_with_title(
  self : DOMImplementation,
  title : String,
) -> Document =
  #| (self, title) => self.createHTMLDocument(title)

///|
pub extern "js" fn DOMImplementation::has_feature(
  self : DOMImplementation,
) -> Bool =
  #| (self) => self.hasFeature()

///|
/// DocumentType interface
pub type DocumentType

///|
pub extern "js" fn DocumentType::to_js_value(self : DocumentType) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn DocumentType::new() -> DocumentType =
  #| () => new DocumentType()

///|
pub extern "js" fn DocumentType::add_event_listener(
  self : DocumentType,
  type_ : String,
  callback : EventListener?,
) -> Unit =
  #| (self, type_, callback) => self.addEventListener(type_, callback)

///|
pub extern "js" fn DocumentType::add_event_listener_with_options(
  self : DocumentType,
  type_ : String,
  callback : EventListener?,
  options : AddEventListenerOptionsOrBool,
) -> Unit =
  #| (self, type_, callback, options) => self.addEventListener(type_, callback, options)

///|
pub extern "js" fn DocumentType::remove_event_listener(
  self : DocumentType,
  type_ : String,
  callback : EventListener?,
) -> Unit =
  #| (self, type_, callback) => self.removeEventListener(type_, callback)

///|
pub extern "js" fn DocumentType::remove_event_listener_with_options(
  self : DocumentType,
  type_ : String,
  callback : EventListener?,
  options : EventListenerOptionsOrBool,
) -> Unit =
  #| (self, type_, callback, options) => self.removeEventListener(type_, callback, options)

///|
pub extern "js" fn DocumentType::dispatch_event(
  self : DocumentType,
  event : Event,
) -> Bool =
  #| (self, event) => self.dispatchEvent(event)

///|
pub extern "js" fn DocumentType::when(
  self : DocumentType,
  type_ : String,
) -> Observable =
  #| (self, type_) => self.when(type_)

///|
pub extern "js" fn DocumentType::when_with_options(
  self : DocumentType,
  type_ : String,
  options : ObservableEventListenerOptions,
) -> Observable =
  #| (self, type_, options) => self.when(type_, options)

// DocumentType.ELEMENT_NODE

///|
pub let document_type_element_node : Int = 1

// DocumentType.ATTRIBUTE_NODE

///|
pub let document_type_attribute_node : Int = 2

// DocumentType.TEXT_NODE

///|
pub let document_type_text_node : Int = 3

// DocumentType.CDATA_SECTION_NODE

///|
pub let document_type_cdata_section_node : Int = 4

// DocumentType.ENTITY_REFERENCE_NODE

///|
pub let document_type_entity_reference_node : Int = 5

// DocumentType.ENTITY_NODE

///|
pub let document_type_entity_node : Int = 6

// DocumentType.PROCESSING_INSTRUCTION_NODE

///|
pub let document_type_processing_instruction_node : Int = 7

// DocumentType.COMMENT_NODE

///|
pub let document_type_comment_node : Int = 8

// DocumentType.DOCUMENT_NODE

///|
pub let document_type_document_node : Int = 9

// DocumentType.DOCUMENT_TYPE_NODE

///|
pub let document_type_document_type_node : Int = 10

// DocumentType.DOCUMENT_FRAGMENT_NODE

///|
pub let document_type_document_fragment_node : Int = 11

// DocumentType.NOTATION_NODE

///|
pub let document_type_notation_node : Int = 12

///|
pub extern "js" fn DocumentType::get_node_type(self : DocumentType) -> Int =
  #| (self) => self.nodeType

///|
pub extern "js" fn DocumentType::get_node_name(self : DocumentType) -> String =
  #| (self) => self.nodeName

///|
pub extern "js" fn DocumentType::get_base_u_r_i(self : DocumentType) -> String =
  #| (self) => self.baseURI

///|
pub extern "js" fn DocumentType::get_is_connected(self : DocumentType) -> Bool =
  #| (self) => self.isConnected

///|
pub extern "js" fn DocumentType::get_owner_document(
  self : DocumentType,
) -> Document? =
  #| (self) => self.ownerDocument

///|
pub extern "js" fn DocumentType::get_root_node(self : DocumentType) -> Node =
  #| (self) => self.getRootNode()

///|
pub extern "js" fn DocumentType::get_root_node_with_options(
  self : DocumentType,
  options : GetRootNodeOptions,
) -> Node =
  #| (self, options) => self.getRootNode(options)

///|
pub extern "js" fn DocumentType::get_parent_node(self : DocumentType) -> Node? =
  #| (self) => self.parentNode

///|
pub extern "js" fn DocumentType::get_parent_element(
  self : DocumentType,
) -> Element? =
  #| (self) => self.parentElement

///|
pub extern "js" fn DocumentType::has_child_nodes(self : DocumentType) -> Bool =
  #| (self) => self.hasChildNodes()

///|
pub extern "js" fn DocumentType::get_child_nodes(
  self : DocumentType,
) -> NodeList =
  #| (self) => self.childNodes

///|
pub extern "js" fn DocumentType::get_first_child(self : DocumentType) -> Node? =
  #| (self) => self.firstChild

///|
pub extern "js" fn DocumentType::get_last_child(self : DocumentType) -> Node? =
  #| (self) => self.lastChild

///|
pub extern "js" fn DocumentType::get_previous_sibling(
  self : DocumentType,
) -> Node? =
  #| (self) => self.previousSibling

///|
pub extern "js" fn DocumentType::get_next_sibling(self : DocumentType) -> Node? =
  #| (self) => self.nextSibling

///|
pub extern "js" fn DocumentType::get_node_value(self : DocumentType) -> String? =
  #| (self) => self.nodeValue

///|
pub extern "js" fn DocumentType::set_node_value(
  self : DocumentType,
  value : String?,
) -> Unit =
  #| (self, value) => { self.nodeValue = value }

///|
pub extern "js" fn DocumentType::get_text_content(
  self : DocumentType,
) -> String? =
  #| (self) => self.textContent

///|
pub extern "js" fn DocumentType::set_text_content(
  self : DocumentType,
  value : String?,
) -> Unit =
  #| (self, value) => { self.textContent = value }

///|
pub extern "js" fn DocumentType::normalize(self : DocumentType) -> Unit =
  #| (self) => self.normalize()

///|
pub extern "js" fn DocumentType::clone_node(self : DocumentType) -> Node =
  #| (self) => self.cloneNode()

///|
pub extern "js" fn DocumentType::clone_node_with_subtree(
  self : DocumentType,
  subtree : Bool,
) -> Node =
  #| (self, subtree) => self.cloneNode(subtree)

///|
pub extern "js" fn DocumentType::is_equal_node(
  self : DocumentType,
  other_node : Node?,
) -> Bool =
  #| (self, other_node) => self.isEqualNode(other_node)

///|
pub extern "js" fn DocumentType::is_same_node(
  self : DocumentType,
  other_node : Node?,
) -> Bool =
  #| (self, other_node) => self.isSameNode(other_node)

// DocumentType.DOCUMENT_POSITION_DISCONNECTED

///|
pub let document_type_document_position_disconnected : Int = 0x01

// DocumentType.DOCUMENT_POSITION_PRECEDING

///|
pub let document_type_document_position_preceding : Int = 0x02

// DocumentType.DOCUMENT_POSITION_FOLLOWING

///|
pub let document_type_document_position_following : Int = 0x04

// DocumentType.DOCUMENT_POSITION_CONTAINS

///|
pub let document_type_document_position_contains : Int = 0x08

// DocumentType.DOCUMENT_POSITION_CONTAINED_BY

///|
pub let document_type_document_position_contained_by : Int = 0x10

// DocumentType.DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC

///|
pub let document_type_document_position_implementation_specific : Int = 0x20

///|
pub extern "js" fn DocumentType::compare_document_position(
  self : DocumentType,
  other : Node,
) -> Int =
  #| (self, other) => self.compareDocumentPosition(other)

///|
pub extern "js" fn DocumentType::contains(
  self : DocumentType,
  other : Node?,
) -> Bool =
  #| (self, other) => self.contains(other)

///|
pub extern "js" fn DocumentType::lookup_prefix(
  self : DocumentType,
  namespace_ : String?,
) -> String? =
  #| (self, namespace_) => self.lookupPrefix(namespace_)

///|
pub extern "js" fn DocumentType::lookup_namespace_u_r_i(
  self : DocumentType,
  prefix : String?,
) -> String? =
  #| (self, prefix) => self.lookupNamespaceURI(prefix)

///|
pub extern "js" fn DocumentType::is_default_namespace(
  self : DocumentType,
  namespace_ : String?,
) -> Bool =
  #| (self, namespace_) => self.isDefaultNamespace(namespace_)

///|
pub extern "js" fn DocumentType::insert_before(
  self : DocumentType,
  node : Node,
  child : Node?,
) -> Node =
  #| (self, node, child) => self.insertBefore(node, child)

///|
pub extern "js" fn DocumentType::append_child(
  self : DocumentType,
  node : Node,
) -> Node =
  #| (self, node) => self.appendChild(node)

///|
pub extern "js" fn DocumentType::replace_child(
  self : DocumentType,
  node : Node,
  child : Node,
) -> Node =
  #| (self, node, child) => self.replaceChild(node, child)

///|
pub extern "js" fn DocumentType::remove_child(
  self : DocumentType,
  child : Node,
) -> Node =
  #| (self, child) => self.removeChild(child)

///|
pub extern "js" fn DocumentType::get_name(self : DocumentType) -> String =
  #| (self) => self.name

///|
pub extern "js" fn DocumentType::get_public_id(self : DocumentType) -> String =
  #| (self) => self.publicId

///|
pub extern "js" fn DocumentType::get_system_id(self : DocumentType) -> String =
  #| (self) => self.systemId

///|
pub extern "js" fn DocumentType::before(
  self : DocumentType,
  nodes : NodeOrString,
) -> Unit =
  #| (self, nodes) => self.before(nodes)

///|
pub extern "js" fn DocumentType::after(
  self : DocumentType,
  nodes : NodeOrString,
) -> Unit =
  #| (self, nodes) => self.after(nodes)

///|
pub extern "js" fn DocumentType::replace_with(
  self : DocumentType,
  nodes : NodeOrString,
) -> Unit =
  #| (self, nodes) => self.replaceWith(nodes)

///|
pub extern "js" fn DocumentType::remove(self : DocumentType) -> Unit =
  #| (self) => self.remove()

///|
/// DocumentFragment interface
pub type DocumentFragment

///|
pub extern "js" fn DocumentFragment::to_js_value(
  self : DocumentFragment,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn DocumentFragment::new() -> DocumentFragment =
  #| () => new DocumentFragment()

///|
pub extern "js" fn DocumentFragment::add_event_listener(
  self : DocumentFragment,
  type_ : String,
  callback : EventListener?,
) -> Unit =
  #| (self, type_, callback) => self.addEventListener(type_, callback)

///|
pub extern "js" fn DocumentFragment::add_event_listener_with_options(
  self : DocumentFragment,
  type_ : String,
  callback : EventListener?,
  options : AddEventListenerOptionsOrBool,
) -> Unit =
  #| (self, type_, callback, options) => self.addEventListener(type_, callback, options)

///|
pub extern "js" fn DocumentFragment::remove_event_listener(
  self : DocumentFragment,
  type_ : String,
  callback : EventListener?,
) -> Unit =
  #| (self, type_, callback) => self.removeEventListener(type_, callback)

///|
pub extern "js" fn DocumentFragment::remove_event_listener_with_options(
  self : DocumentFragment,
  type_ : String,
  callback : EventListener?,
  options : EventListenerOptionsOrBool,
) -> Unit =
  #| (self, type_, callback, options) => self.removeEventListener(type_, callback, options)

///|
pub extern "js" fn DocumentFragment::dispatch_event(
  self : DocumentFragment,
  event : Event,
) -> Bool =
  #| (self, event) => self.dispatchEvent(event)

///|
pub extern "js" fn DocumentFragment::when(
  self : DocumentFragment,
  type_ : String,
) -> Observable =
  #| (self, type_) => self.when(type_)

///|
pub extern "js" fn DocumentFragment::when_with_options(
  self : DocumentFragment,
  type_ : String,
  options : ObservableEventListenerOptions,
) -> Observable =
  #| (self, type_, options) => self.when(type_, options)

// DocumentFragment.ELEMENT_NODE

///|
pub let document_fragment_element_node : Int = 1

// DocumentFragment.ATTRIBUTE_NODE

///|
pub let document_fragment_attribute_node : Int = 2

// DocumentFragment.TEXT_NODE

///|
pub let document_fragment_text_node : Int = 3

// DocumentFragment.CDATA_SECTION_NODE

///|
pub let document_fragment_cdata_section_node : Int = 4

// DocumentFragment.ENTITY_REFERENCE_NODE

///|
pub let document_fragment_entity_reference_node : Int = 5

// DocumentFragment.ENTITY_NODE

///|
pub let document_fragment_entity_node : Int = 6

// DocumentFragment.PROCESSING_INSTRUCTION_NODE

///|
pub let document_fragment_processing_instruction_node : Int = 7

// DocumentFragment.COMMENT_NODE

///|
pub let document_fragment_comment_node : Int = 8

// DocumentFragment.DOCUMENT_NODE

///|
pub let document_fragment_document_node : Int = 9

// DocumentFragment.DOCUMENT_TYPE_NODE

///|
pub let document_fragment_document_type_node : Int = 10

// DocumentFragment.DOCUMENT_FRAGMENT_NODE

///|
pub let document_fragment_document_fragment_node : Int = 11

// DocumentFragment.NOTATION_NODE

///|
pub let document_fragment_notation_node : Int = 12

///|
pub extern "js" fn DocumentFragment::get_node_type(
  self : DocumentFragment,
) -> Int =
  #| (self) => self.nodeType

///|
pub extern "js" fn DocumentFragment::get_node_name(
  self : DocumentFragment,
) -> String =
  #| (self) => self.nodeName

///|
pub extern "js" fn DocumentFragment::get_base_u_r_i(
  self : DocumentFragment,
) -> String =
  #| (self) => self.baseURI

///|
pub extern "js" fn DocumentFragment::get_is_connected(
  self : DocumentFragment,
) -> Bool =
  #| (self) => self.isConnected

///|
pub extern "js" fn DocumentFragment::get_owner_document(
  self : DocumentFragment,
) -> Document? =
  #| (self) => self.ownerDocument

///|
pub extern "js" fn DocumentFragment::get_root_node(
  self : DocumentFragment,
) -> Node =
  #| (self) => self.getRootNode()

///|
pub extern "js" fn DocumentFragment::get_root_node_with_options(
  self : DocumentFragment,
  options : GetRootNodeOptions,
) -> Node =
  #| (self, options) => self.getRootNode(options)

///|
pub extern "js" fn DocumentFragment::get_parent_node(
  self : DocumentFragment,
) -> Node? =
  #| (self) => self.parentNode

///|
pub extern "js" fn DocumentFragment::get_parent_element(
  self : DocumentFragment,
) -> Element? =
  #| (self) => self.parentElement

///|
pub extern "js" fn DocumentFragment::has_child_nodes(
  self : DocumentFragment,
) -> Bool =
  #| (self) => self.hasChildNodes()

///|
pub extern "js" fn DocumentFragment::get_child_nodes(
  self : DocumentFragment,
) -> NodeList =
  #| (self) => self.childNodes

///|
pub extern "js" fn DocumentFragment::get_first_child(
  self : DocumentFragment,
) -> Node? =
  #| (self) => self.firstChild

///|
pub extern "js" fn DocumentFragment::get_last_child(
  self : DocumentFragment,
) -> Node? =
  #| (self) => self.lastChild

///|
pub extern "js" fn DocumentFragment::get_previous_sibling(
  self : DocumentFragment,
) -> Node? =
  #| (self) => self.previousSibling

///|
pub extern "js" fn DocumentFragment::get_next_sibling(
  self : DocumentFragment,
) -> Node? =
  #| (self) => self.nextSibling

///|
pub extern "js" fn DocumentFragment::get_node_value(
  self : DocumentFragment,
) -> String? =
  #| (self) => self.nodeValue

///|
pub extern "js" fn DocumentFragment::set_node_value(
  self : DocumentFragment,
  value : String?,
) -> Unit =
  #| (self, value) => { self.nodeValue = value }

///|
pub extern "js" fn DocumentFragment::get_text_content(
  self : DocumentFragment,
) -> String? =
  #| (self) => self.textContent

///|
pub extern "js" fn DocumentFragment::set_text_content(
  self : DocumentFragment,
  value : String?,
) -> Unit =
  #| (self, value) => { self.textContent = value }

///|
pub extern "js" fn DocumentFragment::normalize(self : DocumentFragment) -> Unit =
  #| (self) => self.normalize()

///|
pub extern "js" fn DocumentFragment::clone_node(
  self : DocumentFragment,
) -> Node =
  #| (self) => self.cloneNode()

///|
pub extern "js" fn DocumentFragment::clone_node_with_subtree(
  self : DocumentFragment,
  subtree : Bool,
) -> Node =
  #| (self, subtree) => self.cloneNode(subtree)

///|
pub extern "js" fn DocumentFragment::is_equal_node(
  self : DocumentFragment,
  other_node : Node?,
) -> Bool =
  #| (self, other_node) => self.isEqualNode(other_node)

///|
pub extern "js" fn DocumentFragment::is_same_node(
  self : DocumentFragment,
  other_node : Node?,
) -> Bool =
  #| (self, other_node) => self.isSameNode(other_node)

// DocumentFragment.DOCUMENT_POSITION_DISCONNECTED

///|
pub let document_fragment_document_position_disconnected : Int = 0x01

// DocumentFragment.DOCUMENT_POSITION_PRECEDING

///|
pub let document_fragment_document_position_preceding : Int = 0x02

// DocumentFragment.DOCUMENT_POSITION_FOLLOWING

///|
pub let document_fragment_document_position_following : Int = 0x04

// DocumentFragment.DOCUMENT_POSITION_CONTAINS

///|
pub let document_fragment_document_position_contains : Int = 0x08

// DocumentFragment.DOCUMENT_POSITION_CONTAINED_BY

///|
pub let document_fragment_document_position_contained_by : Int = 0x10

// DocumentFragment.DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC

///|
pub let document_fragment_document_position_implementation_specific : Int = 0x20

///|
pub extern "js" fn DocumentFragment::compare_document_position(
  self : DocumentFragment,
  other : Node,
) -> Int =
  #| (self, other) => self.compareDocumentPosition(other)

///|
pub extern "js" fn DocumentFragment::contains(
  self : DocumentFragment,
  other : Node?,
) -> Bool =
  #| (self, other) => self.contains(other)

///|
pub extern "js" fn DocumentFragment::lookup_prefix(
  self : DocumentFragment,
  namespace_ : String?,
) -> String? =
  #| (self, namespace_) => self.lookupPrefix(namespace_)

///|
pub extern "js" fn DocumentFragment::lookup_namespace_u_r_i(
  self : DocumentFragment,
  prefix : String?,
) -> String? =
  #| (self, prefix) => self.lookupNamespaceURI(prefix)

///|
pub extern "js" fn DocumentFragment::is_default_namespace(
  self : DocumentFragment,
  namespace_ : String?,
) -> Bool =
  #| (self, namespace_) => self.isDefaultNamespace(namespace_)

///|
pub extern "js" fn DocumentFragment::insert_before(
  self : DocumentFragment,
  node : Node,
  child : Node?,
) -> Node =
  #| (self, node, child) => self.insertBefore(node, child)

///|
pub extern "js" fn DocumentFragment::append_child(
  self : DocumentFragment,
  node : Node,
) -> Node =
  #| (self, node) => self.appendChild(node)

///|
pub extern "js" fn DocumentFragment::replace_child(
  self : DocumentFragment,
  node : Node,
  child : Node,
) -> Node =
  #| (self, node, child) => self.replaceChild(node, child)

///|
pub extern "js" fn DocumentFragment::remove_child(
  self : DocumentFragment,
  child : Node,
) -> Node =
  #| (self, child) => self.removeChild(child)

///|
pub extern "js" fn DocumentFragment::get_element_by_id(
  self : DocumentFragment,
  element_id : String,
) -> Element? =
  #| (self, element_id) => self.getElementById(element_id)

///|
pub extern "js" fn DocumentFragment::get_children(
  self : DocumentFragment,
) -> HTMLCollection =
  #| (self) => self.children

///|
pub extern "js" fn DocumentFragment::get_first_element_child(
  self : DocumentFragment,
) -> Element? =
  #| (self) => self.firstElementChild

///|
pub extern "js" fn DocumentFragment::get_last_element_child(
  self : DocumentFragment,
) -> Element? =
  #| (self) => self.lastElementChild

///|
pub extern "js" fn DocumentFragment::get_child_element_count(
  self : DocumentFragment,
) -> Int =
  #| (self) => self.childElementCount

///|
pub extern "js" fn DocumentFragment::prepend(
  self : DocumentFragment,
  nodes : NodeOrString,
) -> Unit =
  #| (self, nodes) => self.prepend(nodes)

///|
pub extern "js" fn DocumentFragment::append(
  self : DocumentFragment,
  nodes : NodeOrString,
) -> Unit =
  #| (self, nodes) => self.append(nodes)

///|
pub extern "js" fn DocumentFragment::replace_children(
  self : DocumentFragment,
  nodes : NodeOrString,
) -> Unit =
  #| (self, nodes) => self.replaceChildren(nodes)

///|
pub extern "js" fn DocumentFragment::move_before(
  self : DocumentFragment,
  node : Node,
  child : Node?,
) -> Unit =
  #| (self, node, child) => self.moveBefore(node, child)

///|
pub extern "js" fn DocumentFragment::query_selector(
  self : DocumentFragment,
  selectors : String,
) -> Element? =
  #| (self, selectors) => self.querySelector(selectors)

///|
pub extern "js" fn DocumentFragment::query_selector_all(
  self : DocumentFragment,
  selectors : String,
) -> NodeList =
  #| (self, selectors) => self.querySelectorAll(selectors)

///|
/// ShadowRoot interface
pub type ShadowRoot

///|
pub extern "js" fn ShadowRoot::to_js_value(self : ShadowRoot) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn ShadowRoot::new() -> ShadowRoot =
  #| () => new ShadowRoot()

///|
pub extern "js" fn ShadowRoot::add_event_listener(
  self : ShadowRoot,
  type_ : String,
  callback : EventListener?,
) -> Unit =
  #| (self, type_, callback) => self.addEventListener(type_, callback)

///|
pub extern "js" fn ShadowRoot::add_event_listener_with_options(
  self : ShadowRoot,
  type_ : String,
  callback : EventListener?,
  options : AddEventListenerOptionsOrBool,
) -> Unit =
  #| (self, type_, callback, options) => self.addEventListener(type_, callback, options)

///|
pub extern "js" fn ShadowRoot::remove_event_listener(
  self : ShadowRoot,
  type_ : String,
  callback : EventListener?,
) -> Unit =
  #| (self, type_, callback) => self.removeEventListener(type_, callback)

///|
pub extern "js" fn ShadowRoot::remove_event_listener_with_options(
  self : ShadowRoot,
  type_ : String,
  callback : EventListener?,
  options : EventListenerOptionsOrBool,
) -> Unit =
  #| (self, type_, callback, options) => self.removeEventListener(type_, callback, options)

///|
pub extern "js" fn ShadowRoot::dispatch_event(
  self : ShadowRoot,
  event : Event,
) -> Bool =
  #| (self, event) => self.dispatchEvent(event)

///|
pub extern "js" fn ShadowRoot::when(
  self : ShadowRoot,
  type_ : String,
) -> Observable =
  #| (self, type_) => self.when(type_)

///|
pub extern "js" fn ShadowRoot::when_with_options(
  self : ShadowRoot,
  type_ : String,
  options : ObservableEventListenerOptions,
) -> Observable =
  #| (self, type_, options) => self.when(type_, options)

// ShadowRoot.ELEMENT_NODE

///|
pub let shadow_root_element_node : Int = 1

// ShadowRoot.ATTRIBUTE_NODE

///|
pub let shadow_root_attribute_node : Int = 2

// ShadowRoot.TEXT_NODE

///|
pub let shadow_root_text_node : Int = 3

// ShadowRoot.CDATA_SECTION_NODE

///|
pub let shadow_root_cdata_section_node : Int = 4

// ShadowRoot.ENTITY_REFERENCE_NODE

///|
pub let shadow_root_entity_reference_node : Int = 5

// ShadowRoot.ENTITY_NODE

///|
pub let shadow_root_entity_node : Int = 6

// ShadowRoot.PROCESSING_INSTRUCTION_NODE

///|
pub let shadow_root_processing_instruction_node : Int = 7

// ShadowRoot.COMMENT_NODE

///|
pub let shadow_root_comment_node : Int = 8

// ShadowRoot.DOCUMENT_NODE

///|
pub let shadow_root_document_node : Int = 9

// ShadowRoot.DOCUMENT_TYPE_NODE

///|
pub let shadow_root_document_type_node : Int = 10

// ShadowRoot.DOCUMENT_FRAGMENT_NODE

///|
pub let shadow_root_document_fragment_node : Int = 11

// ShadowRoot.NOTATION_NODE

///|
pub let shadow_root_notation_node : Int = 12

///|
pub extern "js" fn ShadowRoot::get_node_type(self : ShadowRoot) -> Int =
  #| (self) => self.nodeType

///|
pub extern "js" fn ShadowRoot::get_node_name(self : ShadowRoot) -> String =
  #| (self) => self.nodeName

///|
pub extern "js" fn ShadowRoot::get_base_u_r_i(self : ShadowRoot) -> String =
  #| (self) => self.baseURI

///|
pub extern "js" fn ShadowRoot::get_is_connected(self : ShadowRoot) -> Bool =
  #| (self) => self.isConnected

///|
pub extern "js" fn ShadowRoot::get_owner_document(
  self : ShadowRoot,
) -> Document? =
  #| (self) => self.ownerDocument

///|
pub extern "js" fn ShadowRoot::get_root_node(self : ShadowRoot) -> Node =
  #| (self) => self.getRootNode()

///|
pub extern "js" fn ShadowRoot::get_root_node_with_options(
  self : ShadowRoot,
  options : GetRootNodeOptions,
) -> Node =
  #| (self, options) => self.getRootNode(options)

///|
pub extern "js" fn ShadowRoot::get_parent_node(self : ShadowRoot) -> Node? =
  #| (self) => self.parentNode

///|
pub extern "js" fn ShadowRoot::get_parent_element(
  self : ShadowRoot,
) -> Element? =
  #| (self) => self.parentElement

///|
pub extern "js" fn ShadowRoot::has_child_nodes(self : ShadowRoot) -> Bool =
  #| (self) => self.hasChildNodes()

///|
pub extern "js" fn ShadowRoot::get_child_nodes(self : ShadowRoot) -> NodeList =
  #| (self) => self.childNodes

///|
pub extern "js" fn ShadowRoot::get_first_child(self : ShadowRoot) -> Node? =
  #| (self) => self.firstChild

///|
pub extern "js" fn ShadowRoot::get_last_child(self : ShadowRoot) -> Node? =
  #| (self) => self.lastChild

///|
pub extern "js" fn ShadowRoot::get_previous_sibling(self : ShadowRoot) -> Node? =
  #| (self) => self.previousSibling

///|
pub extern "js" fn ShadowRoot::get_next_sibling(self : ShadowRoot) -> Node? =
  #| (self) => self.nextSibling

///|
pub extern "js" fn ShadowRoot::get_node_value(self : ShadowRoot) -> String? =
  #| (self) => self.nodeValue

///|
pub extern "js" fn ShadowRoot::set_node_value(
  self : ShadowRoot,
  value : String?,
) -> Unit =
  #| (self, value) => { self.nodeValue = value }

///|
pub extern "js" fn ShadowRoot::get_text_content(self : ShadowRoot) -> String? =
  #| (self) => self.textContent

///|
pub extern "js" fn ShadowRoot::set_text_content(
  self : ShadowRoot,
  value : String?,
) -> Unit =
  #| (self, value) => { self.textContent = value }

///|
pub extern "js" fn ShadowRoot::normalize(self : ShadowRoot) -> Unit =
  #| (self) => self.normalize()

///|
pub extern "js" fn ShadowRoot::clone_node(self : ShadowRoot) -> Node =
  #| (self) => self.cloneNode()

///|
pub extern "js" fn ShadowRoot::clone_node_with_subtree(
  self : ShadowRoot,
  subtree : Bool,
) -> Node =
  #| (self, subtree) => self.cloneNode(subtree)

///|
pub extern "js" fn ShadowRoot::is_equal_node(
  self : ShadowRoot,
  other_node : Node?,
) -> Bool =
  #| (self, other_node) => self.isEqualNode(other_node)

///|
pub extern "js" fn ShadowRoot::is_same_node(
  self : ShadowRoot,
  other_node : Node?,
) -> Bool =
  #| (self, other_node) => self.isSameNode(other_node)

// ShadowRoot.DOCUMENT_POSITION_DISCONNECTED

///|
pub let shadow_root_document_position_disconnected : Int = 0x01

// ShadowRoot.DOCUMENT_POSITION_PRECEDING

///|
pub let shadow_root_document_position_preceding : Int = 0x02

// ShadowRoot.DOCUMENT_POSITION_FOLLOWING

///|
pub let shadow_root_document_position_following : Int = 0x04

// ShadowRoot.DOCUMENT_POSITION_CONTAINS

///|
pub let shadow_root_document_position_contains : Int = 0x08

// ShadowRoot.DOCUMENT_POSITION_CONTAINED_BY

///|
pub let shadow_root_document_position_contained_by : Int = 0x10

// ShadowRoot.DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC

///|
pub let shadow_root_document_position_implementation_specific : Int = 0x20

///|
pub extern "js" fn ShadowRoot::compare_document_position(
  self : ShadowRoot,
  other : Node,
) -> Int =
  #| (self, other) => self.compareDocumentPosition(other)

///|
pub extern "js" fn ShadowRoot::contains(
  self : ShadowRoot,
  other : Node?,
) -> Bool =
  #| (self, other) => self.contains(other)

///|
pub extern "js" fn ShadowRoot::lookup_prefix(
  self : ShadowRoot,
  namespace_ : String?,
) -> String? =
  #| (self, namespace_) => self.lookupPrefix(namespace_)

///|
pub extern "js" fn ShadowRoot::lookup_namespace_u_r_i(
  self : ShadowRoot,
  prefix : String?,
) -> String? =
  #| (self, prefix) => self.lookupNamespaceURI(prefix)

///|
pub extern "js" fn ShadowRoot::is_default_namespace(
  self : ShadowRoot,
  namespace_ : String?,
) -> Bool =
  #| (self, namespace_) => self.isDefaultNamespace(namespace_)

///|
pub extern "js" fn ShadowRoot::insert_before(
  self : ShadowRoot,
  node : Node,
  child : Node?,
) -> Node =
  #| (self, node, child) => self.insertBefore(node, child)

///|
pub extern "js" fn ShadowRoot::append_child(
  self : ShadowRoot,
  node : Node,
) -> Node =
  #| (self, node) => self.appendChild(node)

///|
pub extern "js" fn ShadowRoot::replace_child(
  self : ShadowRoot,
  node : Node,
  child : Node,
) -> Node =
  #| (self, node, child) => self.replaceChild(node, child)

///|
pub extern "js" fn ShadowRoot::remove_child(
  self : ShadowRoot,
  child : Node,
) -> Node =
  #| (self, child) => self.removeChild(child)

///|
pub extern "js" fn ShadowRoot::get_element_by_id(
  self : ShadowRoot,
  element_id : String,
) -> Element? =
  #| (self, element_id) => self.getElementById(element_id)

///|
pub extern "js" fn ShadowRoot::get_children(
  self : ShadowRoot,
) -> HTMLCollection =
  #| (self) => self.children

///|
pub extern "js" fn ShadowRoot::get_first_element_child(
  self : ShadowRoot,
) -> Element? =
  #| (self) => self.firstElementChild

///|
pub extern "js" fn ShadowRoot::get_last_element_child(
  self : ShadowRoot,
) -> Element? =
  #| (self) => self.lastElementChild

///|
pub extern "js" fn ShadowRoot::get_child_element_count(
  self : ShadowRoot,
) -> Int =
  #| (self) => self.childElementCount

///|
pub extern "js" fn ShadowRoot::prepend(
  self : ShadowRoot,
  nodes : NodeOrString,
) -> Unit =
  #| (self, nodes) => self.prepend(nodes)

///|
pub extern "js" fn ShadowRoot::append(
  self : ShadowRoot,
  nodes : NodeOrString,
) -> Unit =
  #| (self, nodes) => self.append(nodes)

///|
pub extern "js" fn ShadowRoot::replace_children(
  self : ShadowRoot,
  nodes : NodeOrString,
) -> Unit =
  #| (self, nodes) => self.replaceChildren(nodes)

///|
pub extern "js" fn ShadowRoot::move_before(
  self : ShadowRoot,
  node : Node,
  child : Node?,
) -> Unit =
  #| (self, node, child) => self.moveBefore(node, child)

///|
pub extern "js" fn ShadowRoot::query_selector(
  self : ShadowRoot,
  selectors : String,
) -> Element? =
  #| (self, selectors) => self.querySelector(selectors)

///|
pub extern "js" fn ShadowRoot::query_selector_all(
  self : ShadowRoot,
  selectors : String,
) -> NodeList =
  #| (self, selectors) => self.querySelectorAll(selectors)

///|
pub extern "js" fn ShadowRoot::get_mode(self : ShadowRoot) -> ShadowRootMode =
  #| (self) => self.mode

///|
pub extern "js" fn ShadowRoot::get_delegates_focus(self : ShadowRoot) -> Bool =
  #| (self) => self.delegatesFocus

///|
pub extern "js" fn ShadowRoot::get_slot_assignment(
  self : ShadowRoot,
) -> SlotAssignmentMode =
  #| (self) => self.slotAssignment

///|
pub extern "js" fn ShadowRoot::get_clonable(self : ShadowRoot) -> Bool =
  #| (self) => self.clonable

///|
pub extern "js" fn ShadowRoot::get_serializable(self : ShadowRoot) -> Bool =
  #| (self) => self.serializable

///|
pub extern "js" fn ShadowRoot::get_host(self : ShadowRoot) -> Element =
  #| (self) => self.host

///|
pub extern "js" fn ShadowRoot::get_onslotchange(
  self : ShadowRoot,
) -> EventHandler =
  #| (self) => self.onslotchange

///|
pub extern "js" fn ShadowRoot::set_onslotchange(
  self : ShadowRoot,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onslotchange = value }

///|
pub extern "js" fn ShadowRoot::set_h_t_m_l_unsafe(
  self : ShadowRoot,
  html : TrustedHTMLOrString,
) -> Unit =
  #| (self, html) => self.setHTMLUnsafe(html)

///|
pub extern "js" fn ShadowRoot::get_h_t_m_l(self : ShadowRoot) -> String =
  #| (self) => self.getHTML()

///|
pub extern "js" fn ShadowRoot::get_h_t_m_l_with_options(
  self : ShadowRoot,
  options : GetHTMLOptions,
) -> String =
  #| (self, options) => self.getHTML(options)

///|
pub extern "js" fn ShadowRoot::get_inner_h_t_m_l(
  self : ShadowRoot,
) -> TrustedHTMLOrString =
  #| (self) => self.innerHTML

///|
pub extern "js" fn ShadowRoot::set_inner_h_t_m_l(
  self : ShadowRoot,
  value : TrustedHTMLOrString,
) -> Unit =
  #| (self, value) => { self.innerHTML = value }

///|
pub extern "js" fn ShadowRoot::get_style_sheets(
  self : ShadowRoot,
) -> StyleSheetList =
  #| (self) => self.styleSheets

///|
pub extern "js" fn ShadowRoot::get_adopted_style_sheets(
  self : ShadowRoot,
) -> JsValue =
  #| (self) => self.adoptedStyleSheets

///|
pub extern "js" fn ShadowRoot::set_adopted_style_sheets(
  self : ShadowRoot,
  value : JsValue,
) -> Unit =
  #| (self, value) => { self.adoptedStyleSheets = value }

///|
pub extern "js" fn ShadowRoot::get_custom_element_registry(
  self : ShadowRoot,
) -> CustomElementRegistry? =
  #| (self) => self.customElementRegistry

///|
pub extern "js" fn ShadowRoot::get_fullscreen_element(
  self : ShadowRoot,
) -> Element? =
  #| (self) => self.fullscreenElement

///|
pub extern "js" fn ShadowRoot::get_active_element(
  self : ShadowRoot,
) -> Element? =
  #| (self) => self.activeElement

///|
pub extern "js" fn ShadowRoot::get_picture_in_picture_element(
  self : ShadowRoot,
) -> Element? =
  #| (self) => self.pictureInPictureElement

///|
pub extern "js" fn ShadowRoot::get_pointer_lock_element(
  self : ShadowRoot,
) -> Element? =
  #| (self) => self.pointerLockElement

///|
pub extern "js" fn ShadowRoot::get_animations(
  self : ShadowRoot,
) -> Array[Animation] =
  #| (self) => self.getAnimations()

///|
/// Element interface
pub type Element

///|
pub extern "js" fn Element::to_js_value(self : Element) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn Element::new() -> Element =
  #| () => new Element()

///|
pub extern "js" fn Element::add_event_listener(
  self : Element,
  type_ : String,
  callback : EventListener?,
) -> Unit =
  #| (self, type_, callback) => self.addEventListener(type_, callback)

///|
pub extern "js" fn Element::add_event_listener_with_options(
  self : Element,
  type_ : String,
  callback : EventListener?,
  options : AddEventListenerOptionsOrBool,
) -> Unit =
  #| (self, type_, callback, options) => self.addEventListener(type_, callback, options)

///|
pub extern "js" fn Element::remove_event_listener(
  self : Element,
  type_ : String,
  callback : EventListener?,
) -> Unit =
  #| (self, type_, callback) => self.removeEventListener(type_, callback)

///|
pub extern "js" fn Element::remove_event_listener_with_options(
  self : Element,
  type_ : String,
  callback : EventListener?,
  options : EventListenerOptionsOrBool,
) -> Unit =
  #| (self, type_, callback, options) => self.removeEventListener(type_, callback, options)

///|
pub extern "js" fn Element::dispatch_event(
  self : Element,
  event : Event,
) -> Bool =
  #| (self, event) => self.dispatchEvent(event)

///|
pub extern "js" fn Element::when(self : Element, type_ : String) -> Observable =
  #| (self, type_) => self.when(type_)

///|
pub extern "js" fn Element::when_with_options(
  self : Element,
  type_ : String,
  options : ObservableEventListenerOptions,
) -> Observable =
  #| (self, type_, options) => self.when(type_, options)

// Element.ELEMENT_NODE

///|
pub let element_element_node : Int = 1

// Element.ATTRIBUTE_NODE

///|
pub let element_attribute_node : Int = 2

// Element.TEXT_NODE

///|
pub let element_text_node : Int = 3

// Element.CDATA_SECTION_NODE

///|
pub let element_cdata_section_node : Int = 4

// Element.ENTITY_REFERENCE_NODE

///|
pub let element_entity_reference_node : Int = 5

// Element.ENTITY_NODE

///|
pub let element_entity_node : Int = 6

// Element.PROCESSING_INSTRUCTION_NODE

///|
pub let element_processing_instruction_node : Int = 7

// Element.COMMENT_NODE

///|
pub let element_comment_node : Int = 8

// Element.DOCUMENT_NODE

///|
pub let element_document_node : Int = 9

// Element.DOCUMENT_TYPE_NODE

///|
pub let element_document_type_node : Int = 10

// Element.DOCUMENT_FRAGMENT_NODE

///|
pub let element_document_fragment_node : Int = 11

// Element.NOTATION_NODE

///|
pub let element_notation_node : Int = 12

///|
pub extern "js" fn Element::get_node_type(self : Element) -> Int =
  #| (self) => self.nodeType

///|
pub extern "js" fn Element::get_node_name(self : Element) -> String =
  #| (self) => self.nodeName

///|
pub extern "js" fn Element::get_base_u_r_i(self : Element) -> String =
  #| (self) => self.baseURI

///|
pub extern "js" fn Element::get_is_connected(self : Element) -> Bool =
  #| (self) => self.isConnected

///|
pub extern "js" fn Element::get_owner_document(self : Element) -> Document? =
  #| (self) => self.ownerDocument

///|
pub extern "js" fn Element::get_root_node(self : Element) -> Node =
  #| (self) => self.getRootNode()

///|
pub extern "js" fn Element::get_root_node_with_options(
  self : Element,
  options : GetRootNodeOptions,
) -> Node =
  #| (self, options) => self.getRootNode(options)

///|
pub extern "js" fn Element::get_parent_node(self : Element) -> Node? =
  #| (self) => self.parentNode

///|
pub extern "js" fn Element::get_parent_element(self : Element) -> Element? =
  #| (self) => self.parentElement

///|
pub extern "js" fn Element::has_child_nodes(self : Element) -> Bool =
  #| (self) => self.hasChildNodes()

///|
pub extern "js" fn Element::get_child_nodes(self : Element) -> NodeList =
  #| (self) => self.childNodes

///|
pub extern "js" fn Element::get_first_child(self : Element) -> Node? =
  #| (self) => self.firstChild

///|
pub extern "js" fn Element::get_last_child(self : Element) -> Node? =
  #| (self) => self.lastChild

///|
pub extern "js" fn Element::get_previous_sibling(self : Element) -> Node? =
  #| (self) => self.previousSibling

///|
pub extern "js" fn Element::get_next_sibling(self : Element) -> Node? =
  #| (self) => self.nextSibling

///|
pub extern "js" fn Element::get_node_value(self : Element) -> String? =
  #| (self) => self.nodeValue

///|
pub extern "js" fn Element::set_node_value(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.nodeValue = value }

///|
pub extern "js" fn Element::get_text_content(self : Element) -> String? =
  #| (self) => self.textContent

///|
pub extern "js" fn Element::set_text_content(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.textContent = value }

///|
pub extern "js" fn Element::normalize(self : Element) -> Unit =
  #| (self) => self.normalize()

///|
pub extern "js" fn Element::clone_node(self : Element) -> Node =
  #| (self) => self.cloneNode()

///|
pub extern "js" fn Element::clone_node_with_subtree(
  self : Element,
  subtree : Bool,
) -> Node =
  #| (self, subtree) => self.cloneNode(subtree)

///|
pub extern "js" fn Element::is_equal_node(
  self : Element,
  other_node : Node?,
) -> Bool =
  #| (self, other_node) => self.isEqualNode(other_node)

///|
pub extern "js" fn Element::is_same_node(
  self : Element,
  other_node : Node?,
) -> Bool =
  #| (self, other_node) => self.isSameNode(other_node)

// Element.DOCUMENT_POSITION_DISCONNECTED

///|
pub let element_document_position_disconnected : Int = 0x01

// Element.DOCUMENT_POSITION_PRECEDING

///|
pub let element_document_position_preceding : Int = 0x02

// Element.DOCUMENT_POSITION_FOLLOWING

///|
pub let element_document_position_following : Int = 0x04

// Element.DOCUMENT_POSITION_CONTAINS

///|
pub let element_document_position_contains : Int = 0x08

// Element.DOCUMENT_POSITION_CONTAINED_BY

///|
pub let element_document_position_contained_by : Int = 0x10

// Element.DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC

///|
pub let element_document_position_implementation_specific : Int = 0x20

///|
pub extern "js" fn Element::compare_document_position(
  self : Element,
  other : Node,
) -> Int =
  #| (self, other) => self.compareDocumentPosition(other)

///|
pub extern "js" fn Element::contains(self : Element, other : Node?) -> Bool =
  #| (self, other) => self.contains(other)

///|
pub extern "js" fn Element::lookup_prefix(
  self : Element,
  namespace_ : String?,
) -> String? =
  #| (self, namespace_) => self.lookupPrefix(namespace_)

///|
pub extern "js" fn Element::lookup_namespace_u_r_i(
  self : Element,
  prefix : String?,
) -> String? =
  #| (self, prefix) => self.lookupNamespaceURI(prefix)

///|
pub extern "js" fn Element::is_default_namespace(
  self : Element,
  namespace_ : String?,
) -> Bool =
  #| (self, namespace_) => self.isDefaultNamespace(namespace_)

///|
pub extern "js" fn Element::insert_before(
  self : Element,
  node : Node,
  child : Node?,
) -> Node =
  #| (self, node, child) => self.insertBefore(node, child)

///|
pub extern "js" fn Element::append_child(self : Element, node : Node) -> Node =
  #| (self, node) => self.appendChild(node)

///|
pub extern "js" fn Element::replace_child(
  self : Element,
  node : Node,
  child : Node,
) -> Node =
  #| (self, node, child) => self.replaceChild(node, child)

///|
pub extern "js" fn Element::remove_child(self : Element, child : Node) -> Node =
  #| (self, child) => self.removeChild(child)

///|
pub extern "js" fn Element::get_namespace_u_r_i(self : Element) -> String? =
  #| (self) => self.namespaceURI

///|
pub extern "js" fn Element::get_prefix(self : Element) -> String? =
  #| (self) => self.prefix

///|
pub extern "js" fn Element::get_local_name(self : Element) -> String =
  #| (self) => self.localName

///|
pub extern "js" fn Element::get_tag_name(self : Element) -> String =
  #| (self) => self.tagName

///|
pub extern "js" fn Element::get_id(self : Element) -> String =
  #| (self) => self.id

///|
pub extern "js" fn Element::set_id(self : Element, value : String) -> Unit =
  #| (self, value) => { self.id = value }

///|
pub extern "js" fn Element::get_class_name(self : Element) -> String =
  #| (self) => self.className

///|
pub extern "js" fn Element::set_class_name(
  self : Element,
  value : String,
) -> Unit =
  #| (self, value) => { self.className = value }

///|
pub extern "js" fn Element::get_class_list(self : Element) -> DOMTokenList =
  #| (self) => self.classList

///|
pub extern "js" fn Element::get_slot(self : Element) -> String =
  #| (self) => self.slot

///|
pub extern "js" fn Element::set_slot(self : Element, value : String) -> Unit =
  #| (self, value) => { self.slot = value }

///|
pub extern "js" fn Element::has_attributes(self : Element) -> Bool =
  #| (self) => self.hasAttributes()

///|
pub extern "js" fn Element::get_attributes(self : Element) -> NamedNodeMap =
  #| (self) => self.attributes

///|
pub extern "js" fn Element::get_attribute_names(
  self : Element,
) -> Array[String] =
  #| (self) => self.getAttributeNames()

///|
pub extern "js" fn Element::get_attribute(
  self : Element,
  qualified_name : String,
) -> String? =
  #| (self, qualified_name) => self.getAttribute(qualified_name)

///|
pub extern "js" fn Element::get_attribute_n_s(
  self : Element,
  namespace_ : String?,
  local_name : String,
) -> String? =
  #| (self, namespace_, local_name) => self.getAttributeNS(namespace_, local_name)

///|
pub extern "js" fn Element::set_attribute(
  self : Element,
  qualified_name : String,
  value : TrustedTypeOrString,
) -> Unit =
  #| (self, qualified_name, value) => self.setAttribute(qualified_name, value)

///|
pub extern "js" fn Element::set_attribute_n_s(
  self : Element,
  namespace_ : String?,
  qualified_name : String,
  value : TrustedTypeOrString,
) -> Unit =
  #| (self, namespace_, qualified_name, value) => self.setAttributeNS(namespace_, qualified_name, value)

///|
pub extern "js" fn Element::remove_attribute(
  self : Element,
  qualified_name : String,
) -> Unit =
  #| (self, qualified_name) => self.removeAttribute(qualified_name)

///|
pub extern "js" fn Element::remove_attribute_n_s(
  self : Element,
  namespace_ : String?,
  local_name : String,
) -> Unit =
  #| (self, namespace_, local_name) => self.removeAttributeNS(namespace_, local_name)

///|
pub extern "js" fn Element::toggle_attribute(
  self : Element,
  qualified_name : String,
) -> Bool =
  #| (self, qualified_name) => self.toggleAttribute(qualified_name)

///|
pub extern "js" fn Element::toggle_attribute_with_force(
  self : Element,
  qualified_name : String,
  force : Bool,
) -> Bool =
  #| (self, qualified_name, force) => self.toggleAttribute(qualified_name, force)

///|
pub extern "js" fn Element::has_attribute(
  self : Element,
  qualified_name : String,
) -> Bool =
  #| (self, qualified_name) => self.hasAttribute(qualified_name)

///|
pub extern "js" fn Element::has_attribute_n_s(
  self : Element,
  namespace_ : String?,
  local_name : String,
) -> Bool =
  #| (self, namespace_, local_name) => self.hasAttributeNS(namespace_, local_name)

///|
pub extern "js" fn Element::get_attribute_node(
  self : Element,
  qualified_name : String,
) -> Attr? =
  #| (self, qualified_name) => self.getAttributeNode(qualified_name)

///|
pub extern "js" fn Element::get_attribute_node_n_s(
  self : Element,
  namespace_ : String?,
  local_name : String,
) -> Attr? =
  #| (self, namespace_, local_name) => self.getAttributeNodeNS(namespace_, local_name)

///|
pub extern "js" fn Element::set_attribute_node(
  self : Element,
  attr : Attr,
) -> Attr? =
  #| (self, attr) => self.setAttributeNode(attr)

///|
pub extern "js" fn Element::set_attribute_node_n_s(
  self : Element,
  attr : Attr,
) -> Attr? =
  #| (self, attr) => self.setAttributeNodeNS(attr)

///|
pub extern "js" fn Element::remove_attribute_node(
  self : Element,
  attr : Attr,
) -> Attr =
  #| (self, attr) => self.removeAttributeNode(attr)

///|
pub extern "js" fn Element::attach_shadow(
  self : Element,
  init_ : ShadowRootInit,
) -> ShadowRoot =
  #| (self, init_) => self.attachShadow(init_)

///|
pub extern "js" fn Element::get_shadow_root(self : Element) -> ShadowRoot? =
  #| (self) => self.shadowRoot

///|
pub extern "js" fn Element::get_custom_element_registry(
  self : Element,
) -> CustomElementRegistry? =
  #| (self) => self.customElementRegistry

///|
pub extern "js" fn Element::closest(
  self : Element,
  selectors : String,
) -> Element? =
  #| (self, selectors) => self.closest(selectors)

///|
pub extern "js" fn Element::matches(self : Element, selectors : String) -> Bool =
  #| (self, selectors) => self.matches(selectors)

///|
pub extern "js" fn Element::webkit_matches_selector(
  self : Element,
  selectors : String,
) -> Bool =
  #| (self, selectors) => self.webkitMatchesSelector(selectors)

///|
pub extern "js" fn Element::get_elements_by_tag_name(
  self : Element,
  qualified_name : String,
) -> HTMLCollection =
  #| (self, qualified_name) => self.getElementsByTagName(qualified_name)

///|
pub extern "js" fn Element::get_elements_by_tag_name_n_s(
  self : Element,
  namespace_ : String?,
  local_name : String,
) -> HTMLCollection =
  #| (self, namespace_, local_name) => self.getElementsByTagNameNS(namespace_, local_name)

///|
pub extern "js" fn Element::get_elements_by_class_name(
  self : Element,
  class_names : String,
) -> HTMLCollection =
  #| (self, class_names) => self.getElementsByClassName(class_names)

///|
pub extern "js" fn Element::insert_adjacent_element(
  self : Element,
  where_ : String,
  element : Element,
) -> Element? =
  #| (self, where_, element) => self.insertAdjacentElement(where_, element)

///|
pub extern "js" fn Element::insert_adjacent_text(
  self : Element,
  where_ : String,
  data : String,
) -> Unit =
  #| (self, where_, data) => self.insertAdjacentText(where_, data)

///|
pub extern "js" fn Element::get_spatial_navigation_container(
  self : Element,
) -> Node =
  #| (self) => self.getSpatialNavigationContainer()

///|
pub extern "js" fn Element::focusable_areas(self : Element) -> Array[Node] =
  #| (self) => self.focusableAreas()

///|
pub extern "js" fn Element::focusable_areas_with_option(
  self : Element,
  option : FocusableAreasOption,
) -> Array[Node] =
  #| (self, option) => self.focusableAreas(option)

///|
pub extern "js" fn Element::spatial_navigation_search(
  self : Element,
  dir : SpatialNavigationDirection,
) -> Node? =
  #| (self, dir) => self.spatialNavigationSearch(['up', 'down', 'left', 'right'][dir])

///|
pub extern "js" fn Element::spatial_navigation_search_with_options(
  self : Element,
  dir : SpatialNavigationDirection,
  options : SpatialNavigationSearchOptions,
) -> Node? =
  #| (self, dir, options) => self.spatialNavigationSearch(['up', 'down', 'left', 'right'][dir], options)

///|
pub extern "js" fn Element::pseudo(
  self : Element,
  type_ : CSSOMString,
) -> CSSPseudoElement? =
  #| (self, type_) => self.pseudo(type_)

///|
pub extern "js" fn Element::get_part(self : Element) -> DOMTokenList =
  #| (self) => self.part

///|
pub extern "js" fn Element::computed_style_map(
  self : Element,
) -> StylePropertyMapReadOnly =
  #| (self) => self.computedStyleMap()

///|
pub extern "js" fn Element::start_view_transition(
  self : Element,
) -> ViewTransition =
  #| (self) => self.startViewTransition()

///|
pub extern "js" fn Element::start_view_transition_with_callback_options(
  self : Element,
  callback_options : ViewTransitionUpdateCallbackOrStartViewTransitionOptions,
) -> ViewTransition =
  #| (self, callback_options) => self.startViewTransition(callback_options)

///|
pub extern "js" fn Element::get_active_view_transition(
  self : Element,
) -> ViewTransition? =
  #| (self) => self.activeViewTransition

///|
pub extern "js" fn Element::get_client_rects(self : Element) -> DOMRectList =
  #| (self) => self.getClientRects()

///|
pub extern "js" fn Element::get_bounding_client_rect(self : Element) -> DOMRect =
  #| (self) => self.getBoundingClientRect()

///|
pub extern "js" fn Element::check_visibility(self : Element) -> Bool =
  #| (self) => self.checkVisibility()

///|
pub extern "js" fn Element::check_visibility_with_options(
  self : Element,
  options : CheckVisibilityOptions,
) -> Bool =
  #| (self, options) => self.checkVisibility(options)

///|
pub extern "js" fn Element::scroll_into_view(self : Element) -> Promise[Unit] =
  #| (self) => self.scrollIntoView()

///|
pub extern "js" fn Element::scroll_into_view_with_arg(
  self : Element,
  arg : BoolOrScrollIntoViewOptions,
) -> Promise[Unit] =
  #| (self, arg) => self.scrollIntoView(arg)

///|
pub extern "js" fn Element::scroll(self : Element) -> Promise[Unit] =
  #| (self) => self.scroll()

///|
pub extern "js" fn Element::scroll_with_options(
  self : Element,
  options : ScrollToOptions,
) -> Promise[Unit] =
  #| (self, options) => self.scroll(options)

///|
pub extern "js" fn Element::scroll_with_x_and_y(
  self : Element,
  x : Double,
  y : Double,
) -> Promise[Unit] =
  #| (self, x, y) => self.scroll(x, y)

///|
pub extern "js" fn Element::scroll_to(self : Element) -> Promise[Unit] =
  #| (self) => self.scrollTo()

///|
pub extern "js" fn Element::scroll_to_with_options(
  self : Element,
  options : ScrollToOptions,
) -> Promise[Unit] =
  #| (self, options) => self.scrollTo(options)

///|
pub extern "js" fn Element::scroll_to_with_x_and_y(
  self : Element,
  x : Double,
  y : Double,
) -> Promise[Unit] =
  #| (self, x, y) => self.scrollTo(x, y)

///|
pub extern "js" fn Element::scroll_by(self : Element) -> Promise[Unit] =
  #| (self) => self.scrollBy()

///|
pub extern "js" fn Element::scroll_by_with_options(
  self : Element,
  options : ScrollToOptions,
) -> Promise[Unit] =
  #| (self, options) => self.scrollBy(options)

///|
pub extern "js" fn Element::scroll_by_with_x_and_y(
  self : Element,
  x : Double,
  y : Double,
) -> Promise[Unit] =
  #| (self, x, y) => self.scrollBy(x, y)

///|
pub extern "js" fn Element::get_scroll_top(self : Element) -> Double =
  #| (self) => self.scrollTop

///|
pub extern "js" fn Element::set_scroll_top(
  self : Element,
  value : Double,
) -> Unit =
  #| (self, value) => { self.scrollTop = value }

///|
pub extern "js" fn Element::get_scroll_left(self : Element) -> Double =
  #| (self) => self.scrollLeft

///|
pub extern "js" fn Element::set_scroll_left(
  self : Element,
  value : Double,
) -> Unit =
  #| (self, value) => { self.scrollLeft = value }

///|
pub extern "js" fn Element::get_scroll_width(self : Element) -> Int =
  #| (self) => self.scrollWidth

///|
pub extern "js" fn Element::get_scroll_height(self : Element) -> Int =
  #| (self) => self.scrollHeight

///|
pub extern "js" fn Element::get_client_top(self : Element) -> Int =
  #| (self) => self.clientTop

///|
pub extern "js" fn Element::get_client_left(self : Element) -> Int =
  #| (self) => self.clientLeft

///|
pub extern "js" fn Element::get_client_width(self : Element) -> Int =
  #| (self) => self.clientWidth

///|
pub extern "js" fn Element::get_client_height(self : Element) -> Int =
  #| (self) => self.clientHeight

///|
pub extern "js" fn Element::get_current_c_s_s_zoom(self : Element) -> Double =
  #| (self) => self.currentCSSZoom

///|
pub extern "js" fn Element::get_element_timing(self : Element) -> String =
  #| (self) => self.elementTiming

///|
pub extern "js" fn Element::set_element_timing(
  self : Element,
  value : String,
) -> Unit =
  #| (self, value) => { self.elementTiming = value }

///|
pub extern "js" fn Element::request_fullscreen(self : Element) -> Promise[Unit] =
  #| (self) => self.requestFullscreen()

///|
pub extern "js" fn Element::request_fullscreen_with_options(
  self : Element,
  options : FullscreenOptions,
) -> Promise[Unit] =
  #| (self, options) => self.requestFullscreen(options)

///|
pub extern "js" fn Element::get_onfullscreenchange(
  self : Element,
) -> EventHandler =
  #| (self) => self.onfullscreenchange

///|
pub extern "js" fn Element::set_onfullscreenchange(
  self : Element,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onfullscreenchange = value }

///|
pub extern "js" fn Element::get_onfullscreenerror(
  self : Element,
) -> EventHandler =
  #| (self) => self.onfullscreenerror

///|
pub extern "js" fn Element::set_onfullscreenerror(
  self : Element,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onfullscreenerror = value }

///|
pub extern "js" fn Element::set_h_t_m_l_unsafe(
  self : Element,
  html : TrustedHTMLOrString,
) -> Unit =
  #| (self, html) => self.setHTMLUnsafe(html)

///|
pub extern "js" fn Element::get_h_t_m_l(self : Element) -> String =
  #| (self) => self.getHTML()

///|
pub extern "js" fn Element::get_h_t_m_l_with_options(
  self : Element,
  options : GetHTMLOptions,
) -> String =
  #| (self, options) => self.getHTML(options)

///|
pub extern "js" fn Element::get_inner_h_t_m_l(
  self : Element,
) -> TrustedHTMLOrString =
  #| (self) => self.innerHTML

///|
pub extern "js" fn Element::set_inner_h_t_m_l(
  self : Element,
  value : TrustedHTMLOrString,
) -> Unit =
  #| (self, value) => { self.innerHTML = value }

///|
pub extern "js" fn Element::get_outer_h_t_m_l(
  self : Element,
) -> TrustedHTMLOrString =
  #| (self) => self.outerHTML

///|
pub extern "js" fn Element::set_outer_h_t_m_l(
  self : Element,
  value : TrustedHTMLOrString,
) -> Unit =
  #| (self, value) => { self.outerHTML = value }

///|
pub extern "js" fn Element::insert_adjacent_h_t_m_l(
  self : Element,
  position : String,
  string : TrustedHTMLOrString,
) -> Unit =
  #| (self, position, string) => self.insertAdjacentHTML(position, string)

///|
pub extern "js" fn Element::set_pointer_capture(
  self : Element,
  pointer_id : Int,
) -> Unit =
  #| (self, pointer_id) => self.setPointerCapture(pointer_id)

///|
pub extern "js" fn Element::release_pointer_capture(
  self : Element,
  pointer_id : Int,
) -> Unit =
  #| (self, pointer_id) => self.releasePointerCapture(pointer_id)

///|
pub extern "js" fn Element::has_pointer_capture(
  self : Element,
  pointer_id : Int,
) -> Bool =
  #| (self, pointer_id) => self.hasPointerCapture(pointer_id)

///|
pub extern "js" fn Element::request_pointer_lock(
  self : Element,
) -> Promise[Unit] =
  #| (self) => self.requestPointerLock()

///|
pub extern "js" fn Element::request_pointer_lock_with_options(
  self : Element,
  options : PointerLockOptions,
) -> Promise[Unit] =
  #| (self, options) => self.requestPointerLock(options)

///|
pub extern "js" fn Element::get_region_overset(self : Element) -> CSSOMString =
  #| (self) => self.regionOverset

///|
pub extern "js" fn Element::get_region_flow_ranges(
  self : Element,
) -> Array[Range] =
  #| (self) => self.getRegionFlowRanges()

///|
pub extern "js" fn Element::get_box_quads(self : Element) -> Array[DOMQuad] =
  #| (self) => self.getBoxQuads()

///|
pub extern "js" fn Element::get_box_quads_with_options(
  self : Element,
  options : BoxQuadOptions,
) -> Array[DOMQuad] =
  #| (self, options) => self.getBoxQuads(options)

///|
pub extern "js" fn Element::convert_quad_from_node(
  self : Element,
  quad : DOMQuadInit,
  from : GeometryNode,
) -> DOMQuad =
  #| (self, quad, from) => self.convertQuadFromNode(quad, from)

///|
pub extern "js" fn Element::convert_quad_from_node_with_options(
  self : Element,
  quad : DOMQuadInit,
  from : GeometryNode,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, quad, from, options) => self.convertQuadFromNode(quad, from, options)

///|
pub extern "js" fn Element::convert_rect_from_node(
  self : Element,
  rect : DOMRectReadOnly,
  from : GeometryNode,
) -> DOMQuad =
  #| (self, rect, from) => self.convertRectFromNode(rect, from)

///|
pub extern "js" fn Element::convert_rect_from_node_with_options(
  self : Element,
  rect : DOMRectReadOnly,
  from : GeometryNode,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, rect, from, options) => self.convertRectFromNode(rect, from, options)

///|
pub extern "js" fn Element::convert_point_from_node(
  self : Element,
  point : DOMPointInit,
  from : GeometryNode,
) -> DOMPoint =
  #| (self, point, from) => self.convertPointFromNode(point, from)

///|
pub extern "js" fn Element::convert_point_from_node_with_options(
  self : Element,
  point : DOMPointInit,
  from : GeometryNode,
  options : ConvertCoordinateOptions,
) -> DOMPoint =
  #| (self, point, from, options) => self.convertPointFromNode(point, from, options)

///|
pub extern "js" fn Element::get_children(self : Element) -> HTMLCollection =
  #| (self) => self.children

///|
pub extern "js" fn Element::get_first_element_child(self : Element) -> Element? =
  #| (self) => self.firstElementChild

///|
pub extern "js" fn Element::get_last_element_child(self : Element) -> Element? =
  #| (self) => self.lastElementChild

///|
pub extern "js" fn Element::get_child_element_count(self : Element) -> Int =
  #| (self) => self.childElementCount

///|
pub extern "js" fn Element::prepend(
  self : Element,
  nodes : NodeOrString,
) -> Unit =
  #| (self, nodes) => self.prepend(nodes)

///|
pub extern "js" fn Element::append(
  self : Element,
  nodes : NodeOrString,
) -> Unit =
  #| (self, nodes) => self.append(nodes)

///|
pub extern "js" fn Element::replace_children(
  self : Element,
  nodes : NodeOrString,
) -> Unit =
  #| (self, nodes) => self.replaceChildren(nodes)

///|
pub extern "js" fn Element::move_before(
  self : Element,
  node : Node,
  child : Node?,
) -> Unit =
  #| (self, node, child) => self.moveBefore(node, child)

///|
pub extern "js" fn Element::query_selector(
  self : Element,
  selectors : String,
) -> Element? =
  #| (self, selectors) => self.querySelector(selectors)

///|
pub extern "js" fn Element::query_selector_all(
  self : Element,
  selectors : String,
) -> NodeList =
  #| (self, selectors) => self.querySelectorAll(selectors)

///|
pub extern "js" fn Element::get_previous_element_sibling(
  self : Element,
) -> Element? =
  #| (self) => self.previousElementSibling

///|
pub extern "js" fn Element::get_next_element_sibling(
  self : Element,
) -> Element? =
  #| (self) => self.nextElementSibling

///|
pub extern "js" fn Element::before(
  self : Element,
  nodes : NodeOrString,
) -> Unit =
  #| (self, nodes) => self.before(nodes)

///|
pub extern "js" fn Element::after(self : Element, nodes : NodeOrString) -> Unit =
  #| (self, nodes) => self.after(nodes)

///|
pub extern "js" fn Element::replace_with(
  self : Element,
  nodes : NodeOrString,
) -> Unit =
  #| (self, nodes) => self.replaceWith(nodes)

///|
pub extern "js" fn Element::remove(self : Element) -> Unit =
  #| (self) => self.remove()

///|
pub extern "js" fn Element::get_assigned_slot(
  self : Element,
) -> HTMLSlotElement? =
  #| (self) => self.assignedSlot

///|
pub extern "js" fn Element::get_role(self : Element) -> String? =
  #| (self) => self.role

///|
pub extern "js" fn Element::set_role(self : Element, value : String?) -> Unit =
  #| (self, value) => { self.role = value }

///|
pub extern "js" fn Element::get_aria_active_descendant_element(
  self : Element,
) -> Element? =
  #| (self) => self.ariaActiveDescendantElement

///|
pub extern "js" fn Element::set_aria_active_descendant_element(
  self : Element,
  value : Element?,
) -> Unit =
  #| (self, value) => { self.ariaActiveDescendantElement = value }

///|
pub extern "js" fn Element::get_aria_atomic(self : Element) -> String? =
  #| (self) => self.ariaAtomic

///|
pub extern "js" fn Element::set_aria_atomic(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaAtomic = value }

///|
pub extern "js" fn Element::get_aria_auto_complete(self : Element) -> String? =
  #| (self) => self.ariaAutoComplete

///|
pub extern "js" fn Element::set_aria_auto_complete(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaAutoComplete = value }

///|
pub extern "js" fn Element::get_aria_braille_label(self : Element) -> String? =
  #| (self) => self.ariaBrailleLabel

///|
pub extern "js" fn Element::set_aria_braille_label(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaBrailleLabel = value }

///|
pub extern "js" fn Element::get_aria_braille_role_description(
  self : Element,
) -> String? =
  #| (self) => self.ariaBrailleRoleDescription

///|
pub extern "js" fn Element::set_aria_braille_role_description(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaBrailleRoleDescription = value }

///|
pub extern "js" fn Element::get_aria_busy(self : Element) -> String? =
  #| (self) => self.ariaBusy

///|
pub extern "js" fn Element::set_aria_busy(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaBusy = value }

///|
pub extern "js" fn Element::get_aria_checked(self : Element) -> String? =
  #| (self) => self.ariaChecked

///|
pub extern "js" fn Element::set_aria_checked(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaChecked = value }

///|
pub extern "js" fn Element::get_aria_col_count(self : Element) -> String? =
  #| (self) => self.ariaColCount

///|
pub extern "js" fn Element::set_aria_col_count(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaColCount = value }

///|
pub extern "js" fn Element::get_aria_col_index(self : Element) -> String? =
  #| (self) => self.ariaColIndex

///|
pub extern "js" fn Element::set_aria_col_index(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaColIndex = value }

///|
pub extern "js" fn Element::get_aria_col_index_text(self : Element) -> String? =
  #| (self) => self.ariaColIndexText

///|
pub extern "js" fn Element::set_aria_col_index_text(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaColIndexText = value }

///|
pub extern "js" fn Element::get_aria_col_span(self : Element) -> String? =
  #| (self) => self.ariaColSpan

///|
pub extern "js" fn Element::set_aria_col_span(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaColSpan = value }

///|
pub extern "js" fn Element::get_aria_controls_elements(
  self : Element,
) -> JsValue? =
  #| (self) => self.ariaControlsElements

///|
pub extern "js" fn Element::set_aria_controls_elements(
  self : Element,
  value : JsValue?,
) -> Unit =
  #| (self, value) => { self.ariaControlsElements = value }

///|
pub extern "js" fn Element::get_aria_current(self : Element) -> String? =
  #| (self) => self.ariaCurrent

///|
pub extern "js" fn Element::set_aria_current(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaCurrent = value }

///|
pub extern "js" fn Element::get_aria_described_by_elements(
  self : Element,
) -> JsValue? =
  #| (self) => self.ariaDescribedByElements

///|
pub extern "js" fn Element::set_aria_described_by_elements(
  self : Element,
  value : JsValue?,
) -> Unit =
  #| (self, value) => { self.ariaDescribedByElements = value }

///|
pub extern "js" fn Element::get_aria_description(self : Element) -> String? =
  #| (self) => self.ariaDescription

///|
pub extern "js" fn Element::set_aria_description(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaDescription = value }

///|
pub extern "js" fn Element::get_aria_details_elements(
  self : Element,
) -> JsValue? =
  #| (self) => self.ariaDetailsElements

///|
pub extern "js" fn Element::set_aria_details_elements(
  self : Element,
  value : JsValue?,
) -> Unit =
  #| (self, value) => { self.ariaDetailsElements = value }

///|
pub extern "js" fn Element::get_aria_disabled(self : Element) -> String? =
  #| (self) => self.ariaDisabled

///|
pub extern "js" fn Element::set_aria_disabled(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaDisabled = value }

///|
pub extern "js" fn Element::get_aria_error_message_elements(
  self : Element,
) -> JsValue? =
  #| (self) => self.ariaErrorMessageElements

///|
pub extern "js" fn Element::set_aria_error_message_elements(
  self : Element,
  value : JsValue?,
) -> Unit =
  #| (self, value) => { self.ariaErrorMessageElements = value }

///|
pub extern "js" fn Element::get_aria_expanded(self : Element) -> String? =
  #| (self) => self.ariaExpanded

///|
pub extern "js" fn Element::set_aria_expanded(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaExpanded = value }

///|
pub extern "js" fn Element::get_aria_flow_to_elements(
  self : Element,
) -> JsValue? =
  #| (self) => self.ariaFlowToElements

///|
pub extern "js" fn Element::set_aria_flow_to_elements(
  self : Element,
  value : JsValue?,
) -> Unit =
  #| (self, value) => { self.ariaFlowToElements = value }

///|
pub extern "js" fn Element::get_aria_has_popup(self : Element) -> String? =
  #| (self) => self.ariaHasPopup

///|
pub extern "js" fn Element::set_aria_has_popup(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaHasPopup = value }

///|
pub extern "js" fn Element::get_aria_hidden(self : Element) -> String? =
  #| (self) => self.ariaHidden

///|
pub extern "js" fn Element::set_aria_hidden(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaHidden = value }

///|
pub extern "js" fn Element::get_aria_invalid(self : Element) -> String? =
  #| (self) => self.ariaInvalid

///|
pub extern "js" fn Element::set_aria_invalid(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaInvalid = value }

///|
pub extern "js" fn Element::get_aria_key_shortcuts(self : Element) -> String? =
  #| (self) => self.ariaKeyShortcuts

///|
pub extern "js" fn Element::set_aria_key_shortcuts(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaKeyShortcuts = value }

///|
pub extern "js" fn Element::get_aria_label(self : Element) -> String? =
  #| (self) => self.ariaLabel

///|
pub extern "js" fn Element::set_aria_label(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaLabel = value }

///|
pub extern "js" fn Element::get_aria_labelled_by_elements(
  self : Element,
) -> JsValue? =
  #| (self) => self.ariaLabelledByElements

///|
pub extern "js" fn Element::set_aria_labelled_by_elements(
  self : Element,
  value : JsValue?,
) -> Unit =
  #| (self, value) => { self.ariaLabelledByElements = value }

///|
pub extern "js" fn Element::get_aria_level(self : Element) -> String? =
  #| (self) => self.ariaLevel

///|
pub extern "js" fn Element::set_aria_level(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaLevel = value }

///|
pub extern "js" fn Element::get_aria_live(self : Element) -> String? =
  #| (self) => self.ariaLive

///|
pub extern "js" fn Element::set_aria_live(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaLive = value }

///|
pub extern "js" fn Element::get_aria_modal(self : Element) -> String? =
  #| (self) => self.ariaModal

///|
pub extern "js" fn Element::set_aria_modal(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaModal = value }

///|
pub extern "js" fn Element::get_aria_multi_line(self : Element) -> String? =
  #| (self) => self.ariaMultiLine

///|
pub extern "js" fn Element::set_aria_multi_line(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaMultiLine = value }

///|
pub extern "js" fn Element::get_aria_multi_selectable(
  self : Element,
) -> String? =
  #| (self) => self.ariaMultiSelectable

///|
pub extern "js" fn Element::set_aria_multi_selectable(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaMultiSelectable = value }

///|
pub extern "js" fn Element::get_aria_orientation(self : Element) -> String? =
  #| (self) => self.ariaOrientation

///|
pub extern "js" fn Element::set_aria_orientation(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaOrientation = value }

///|
pub extern "js" fn Element::get_aria_owns_elements(self : Element) -> JsValue? =
  #| (self) => self.ariaOwnsElements

///|
pub extern "js" fn Element::set_aria_owns_elements(
  self : Element,
  value : JsValue?,
) -> Unit =
  #| (self, value) => { self.ariaOwnsElements = value }

///|
pub extern "js" fn Element::get_aria_placeholder(self : Element) -> String? =
  #| (self) => self.ariaPlaceholder

///|
pub extern "js" fn Element::set_aria_placeholder(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaPlaceholder = value }

///|
pub extern "js" fn Element::get_aria_pos_in_set(self : Element) -> String? =
  #| (self) => self.ariaPosInSet

///|
pub extern "js" fn Element::set_aria_pos_in_set(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaPosInSet = value }

///|
pub extern "js" fn Element::get_aria_pressed(self : Element) -> String? =
  #| (self) => self.ariaPressed

///|
pub extern "js" fn Element::set_aria_pressed(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaPressed = value }

///|
pub extern "js" fn Element::get_aria_read_only(self : Element) -> String? =
  #| (self) => self.ariaReadOnly

///|
pub extern "js" fn Element::set_aria_read_only(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaReadOnly = value }

///|
pub extern "js" fn Element::get_aria_relevant(self : Element) -> String? =
  #| (self) => self.ariaRelevant

///|
pub extern "js" fn Element::set_aria_relevant(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaRelevant = value }

///|
pub extern "js" fn Element::get_aria_required(self : Element) -> String? =
  #| (self) => self.ariaRequired

///|
pub extern "js" fn Element::set_aria_required(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaRequired = value }

///|
pub extern "js" fn Element::get_aria_role_description(
  self : Element,
) -> String? =
  #| (self) => self.ariaRoleDescription

///|
pub extern "js" fn Element::set_aria_role_description(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaRoleDescription = value }

///|
pub extern "js" fn Element::get_aria_row_count(self : Element) -> String? =
  #| (self) => self.ariaRowCount

///|
pub extern "js" fn Element::set_aria_row_count(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaRowCount = value }

///|
pub extern "js" fn Element::get_aria_row_index(self : Element) -> String? =
  #| (self) => self.ariaRowIndex

///|
pub extern "js" fn Element::set_aria_row_index(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaRowIndex = value }

///|
pub extern "js" fn Element::get_aria_row_index_text(self : Element) -> String? =
  #| (self) => self.ariaRowIndexText

///|
pub extern "js" fn Element::set_aria_row_index_text(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaRowIndexText = value }

///|
pub extern "js" fn Element::get_aria_row_span(self : Element) -> String? =
  #| (self) => self.ariaRowSpan

///|
pub extern "js" fn Element::set_aria_row_span(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaRowSpan = value }

///|
pub extern "js" fn Element::get_aria_selected(self : Element) -> String? =
  #| (self) => self.ariaSelected

///|
pub extern "js" fn Element::set_aria_selected(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaSelected = value }

///|
pub extern "js" fn Element::get_aria_set_size(self : Element) -> String? =
  #| (self) => self.ariaSetSize

///|
pub extern "js" fn Element::set_aria_set_size(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaSetSize = value }

///|
pub extern "js" fn Element::get_aria_sort(self : Element) -> String? =
  #| (self) => self.ariaSort

///|
pub extern "js" fn Element::set_aria_sort(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaSort = value }

///|
pub extern "js" fn Element::get_aria_value_max(self : Element) -> String? =
  #| (self) => self.ariaValueMax

///|
pub extern "js" fn Element::set_aria_value_max(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaValueMax = value }

///|
pub extern "js" fn Element::get_aria_value_min(self : Element) -> String? =
  #| (self) => self.ariaValueMin

///|
pub extern "js" fn Element::set_aria_value_min(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaValueMin = value }

///|
pub extern "js" fn Element::get_aria_value_now(self : Element) -> String? =
  #| (self) => self.ariaValueNow

///|
pub extern "js" fn Element::set_aria_value_now(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaValueNow = value }

///|
pub extern "js" fn Element::get_aria_value_text(self : Element) -> String? =
  #| (self) => self.ariaValueText

///|
pub extern "js" fn Element::set_aria_value_text(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaValueText = value }

///|
pub extern "js" fn Element::animate(
  self : Element,
  keyframes : JsValue?,
) -> Animation =
  #| (self, keyframes) => self.animate(keyframes)

///|
pub extern "js" fn Element::animate_with_options(
  self : Element,
  keyframes : JsValue?,
  options : DoubleOrKeyframeAnimationOptions,
) -> Animation =
  #| (self, keyframes, options) => self.animate(keyframes, options)

///|
pub extern "js" fn Element::get_animations(self : Element) -> Array[Animation] =
  #| (self) => self.getAnimations()

///|
pub extern "js" fn Element::get_animations_with_options(
  self : Element,
  options : GetAnimationsOptions,
) -> Array[Animation] =
  #| (self, options) => self.getAnimations(options)

///|
/// NamedNodeMap interface
pub type NamedNodeMap

///|
pub extern "js" fn NamedNodeMap::to_js_value(self : NamedNodeMap) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn NamedNodeMap::get_length(self : NamedNodeMap) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn NamedNodeMap::item(
  self : NamedNodeMap,
  index : Int,
) -> Attr? =
  #| (self, index) => self.item(index)

///|
pub extern "js" fn NamedNodeMap::get(self : NamedNodeMap, index : Int) -> Attr? =
  #| (self, index) => self[index]

///|
pub extern "js" fn NamedNodeMap::get_named_item(
  self : NamedNodeMap,
  qualified_name : String,
) -> Attr? =
  #| (self, qualified_name) => self.getNamedItem(qualified_name)

///|
pub extern "js" fn NamedNodeMap::get_named(
  self : NamedNodeMap,
  qualified_name : String,
) -> Attr? =
  #| (self, qualified_name) => self[qualified_name]

///|
pub extern "js" fn NamedNodeMap::get_named_item_n_s(
  self : NamedNodeMap,
  namespace_ : String?,
  local_name : String,
) -> Attr? =
  #| (self, namespace_, local_name) => self.getNamedItemNS(namespace_, local_name)

///|
pub extern "js" fn NamedNodeMap::set_named_item(
  self : NamedNodeMap,
  attr : Attr,
) -> Attr? =
  #| (self, attr) => self.setNamedItem(attr)

///|
pub extern "js" fn NamedNodeMap::set_named_item_n_s(
  self : NamedNodeMap,
  attr : Attr,
) -> Attr? =
  #| (self, attr) => self.setNamedItemNS(attr)

///|
pub extern "js" fn NamedNodeMap::remove_named_item(
  self : NamedNodeMap,
  qualified_name : String,
) -> Attr =
  #| (self, qualified_name) => self.removeNamedItem(qualified_name)

///|
pub extern "js" fn NamedNodeMap::remove_named_item_n_s(
  self : NamedNodeMap,
  namespace_ : String?,
  local_name : String,
) -> Attr =
  #| (self, namespace_, local_name) => self.removeNamedItemNS(namespace_, local_name)

///|
/// Attr interface
pub type Attr

///|
pub extern "js" fn Attr::to_js_value(self : Attr) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn Attr::new() -> Attr =
  #| () => new Attr()

///|
pub extern "js" fn Attr::add_event_listener(
  self : Attr,
  type_ : String,
  callback : EventListener?,
) -> Unit =
  #| (self, type_, callback) => self.addEventListener(type_, callback)

///|
pub extern "js" fn Attr::add_event_listener_with_options(
  self : Attr,
  type_ : String,
  callback : EventListener?,
  options : AddEventListenerOptionsOrBool,
) -> Unit =
  #| (self, type_, callback, options) => self.addEventListener(type_, callback, options)

///|
pub extern "js" fn Attr::remove_event_listener(
  self : Attr,
  type_ : String,
  callback : EventListener?,
) -> Unit =
  #| (self, type_, callback) => self.removeEventListener(type_, callback)

///|
pub extern "js" fn Attr::remove_event_listener_with_options(
  self : Attr,
  type_ : String,
  callback : EventListener?,
  options : EventListenerOptionsOrBool,
) -> Unit =
  #| (self, type_, callback, options) => self.removeEventListener(type_, callback, options)

///|
pub extern "js" fn Attr::dispatch_event(self : Attr, event : Event) -> Bool =
  #| (self, event) => self.dispatchEvent(event)

///|
pub extern "js" fn Attr::when(self : Attr, type_ : String) -> Observable =
  #| (self, type_) => self.when(type_)

///|
pub extern "js" fn Attr::when_with_options(
  self : Attr,
  type_ : String,
  options : ObservableEventListenerOptions,
) -> Observable =
  #| (self, type_, options) => self.when(type_, options)

// Attr.ELEMENT_NODE

///|
pub let attr_element_node : Int = 1

// Attr.ATTRIBUTE_NODE

///|
pub let attr_attribute_node : Int = 2

// Attr.TEXT_NODE

///|
pub let attr_text_node : Int = 3

// Attr.CDATA_SECTION_NODE

///|
pub let attr_cdata_section_node : Int = 4

// Attr.ENTITY_REFERENCE_NODE

///|
pub let attr_entity_reference_node : Int = 5

// Attr.ENTITY_NODE

///|
pub let attr_entity_node : Int = 6

// Attr.PROCESSING_INSTRUCTION_NODE

///|
pub let attr_processing_instruction_node : Int = 7

// Attr.COMMENT_NODE

///|
pub let attr_comment_node : Int = 8

// Attr.DOCUMENT_NODE

///|
pub let attr_document_node : Int = 9

// Attr.DOCUMENT_TYPE_NODE

///|
pub let attr_document_type_node : Int = 10

// Attr.DOCUMENT_FRAGMENT_NODE

///|
pub let attr_document_fragment_node : Int = 11

// Attr.NOTATION_NODE

///|
pub let attr_notation_node : Int = 12

///|
pub extern "js" fn Attr::get_node_type(self : Attr) -> Int =
  #| (self) => self.nodeType

///|
pub extern "js" fn Attr::get_node_name(self : Attr) -> String =
  #| (self) => self.nodeName

///|
pub extern "js" fn Attr::get_base_u_r_i(self : Attr) -> String =
  #| (self) => self.baseURI

///|
pub extern "js" fn Attr::get_is_connected(self : Attr) -> Bool =
  #| (self) => self.isConnected

///|
pub extern "js" fn Attr::get_owner_document(self : Attr) -> Document? =
  #| (self) => self.ownerDocument

///|
pub extern "js" fn Attr::get_root_node(self : Attr) -> Node =
  #| (self) => self.getRootNode()

///|
pub extern "js" fn Attr::get_root_node_with_options(
  self : Attr,
  options : GetRootNodeOptions,
) -> Node =
  #| (self, options) => self.getRootNode(options)

///|
pub extern "js" fn Attr::get_parent_node(self : Attr) -> Node? =
  #| (self) => self.parentNode

///|
pub extern "js" fn Attr::get_parent_element(self : Attr) -> Element? =
  #| (self) => self.parentElement

///|
pub extern "js" fn Attr::has_child_nodes(self : Attr) -> Bool =
  #| (self) => self.hasChildNodes()

///|
pub extern "js" fn Attr::get_child_nodes(self : Attr) -> NodeList =
  #| (self) => self.childNodes

///|
pub extern "js" fn Attr::get_first_child(self : Attr) -> Node? =
  #| (self) => self.firstChild

///|
pub extern "js" fn Attr::get_last_child(self : Attr) -> Node? =
  #| (self) => self.lastChild

///|
pub extern "js" fn Attr::get_previous_sibling(self : Attr) -> Node? =
  #| (self) => self.previousSibling

///|
pub extern "js" fn Attr::get_next_sibling(self : Attr) -> Node? =
  #| (self) => self.nextSibling

///|
pub extern "js" fn Attr::get_node_value(self : Attr) -> String? =
  #| (self) => self.nodeValue

///|
pub extern "js" fn Attr::set_node_value(self : Attr, value : String?) -> Unit =
  #| (self, value) => { self.nodeValue = value }

///|
pub extern "js" fn Attr::get_text_content(self : Attr) -> String? =
  #| (self) => self.textContent

///|
pub extern "js" fn Attr::set_text_content(self : Attr, value : String?) -> Unit =
  #| (self, value) => { self.textContent = value }

///|
pub extern "js" fn Attr::normalize(self : Attr) -> Unit =
  #| (self) => self.normalize()

///|
pub extern "js" fn Attr::clone_node(self : Attr) -> Node =
  #| (self) => self.cloneNode()

///|
pub extern "js" fn Attr::clone_node_with_subtree(
  self : Attr,
  subtree : Bool,
) -> Node =
  #| (self, subtree) => self.cloneNode(subtree)

///|
pub extern "js" fn Attr::is_equal_node(self : Attr, other_node : Node?) -> Bool =
  #| (self, other_node) => self.isEqualNode(other_node)

///|
pub extern "js" fn Attr::is_same_node(self : Attr, other_node : Node?) -> Bool =
  #| (self, other_node) => self.isSameNode(other_node)

// Attr.DOCUMENT_POSITION_DISCONNECTED

///|
pub let attr_document_position_disconnected : Int = 0x01

// Attr.DOCUMENT_POSITION_PRECEDING

///|
pub let attr_document_position_preceding : Int = 0x02

// Attr.DOCUMENT_POSITION_FOLLOWING

///|
pub let attr_document_position_following : Int = 0x04

// Attr.DOCUMENT_POSITION_CONTAINS

///|
pub let attr_document_position_contains : Int = 0x08

// Attr.DOCUMENT_POSITION_CONTAINED_BY

///|
pub let attr_document_position_contained_by : Int = 0x10

// Attr.DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC

///|
pub let attr_document_position_implementation_specific : Int = 0x20

///|
pub extern "js" fn Attr::compare_document_position(
  self : Attr,
  other : Node,
) -> Int =
  #| (self, other) => self.compareDocumentPosition(other)

///|
pub extern "js" fn Attr::contains(self : Attr, other : Node?) -> Bool =
  #| (self, other) => self.contains(other)

///|
pub extern "js" fn Attr::lookup_prefix(
  self : Attr,
  namespace_ : String?,
) -> String? =
  #| (self, namespace_) => self.lookupPrefix(namespace_)

///|
pub extern "js" fn Attr::lookup_namespace_u_r_i(
  self : Attr,
  prefix : String?,
) -> String? =
  #| (self, prefix) => self.lookupNamespaceURI(prefix)

///|
pub extern "js" fn Attr::is_default_namespace(
  self : Attr,
  namespace_ : String?,
) -> Bool =
  #| (self, namespace_) => self.isDefaultNamespace(namespace_)

///|
pub extern "js" fn Attr::insert_before(
  self : Attr,
  node : Node,
  child : Node?,
) -> Node =
  #| (self, node, child) => self.insertBefore(node, child)

///|
pub extern "js" fn Attr::append_child(self : Attr, node : Node) -> Node =
  #| (self, node) => self.appendChild(node)

///|
pub extern "js" fn Attr::replace_child(
  self : Attr,
  node : Node,
  child : Node,
) -> Node =
  #| (self, node, child) => self.replaceChild(node, child)

///|
pub extern "js" fn Attr::remove_child(self : Attr, child : Node) -> Node =
  #| (self, child) => self.removeChild(child)

///|
pub extern "js" fn Attr::get_namespace_u_r_i(self : Attr) -> String? =
  #| (self) => self.namespaceURI

///|
pub extern "js" fn Attr::get_prefix(self : Attr) -> String? =
  #| (self) => self.prefix

///|
pub extern "js" fn Attr::get_local_name(self : Attr) -> String =
  #| (self) => self.localName

///|
pub extern "js" fn Attr::get_name(self : Attr) -> String =
  #| (self) => self.name

///|
pub extern "js" fn Attr::get_value(self : Attr) -> String =
  #| (self) => self.value

///|
pub extern "js" fn Attr::set_value(self : Attr, value : String) -> Unit =
  #| (self, value) => { self.value = value }

///|
pub extern "js" fn Attr::get_owner_element(self : Attr) -> Element? =
  #| (self) => self.ownerElement

///|
pub extern "js" fn Attr::get_specified(self : Attr) -> Bool =
  #| (self) => self.specified

///|
/// CharacterData interface
pub type CharacterData

///|
pub extern "js" fn CharacterData::to_js_value(self : CharacterData) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CharacterData::new() -> CharacterData =
  #| () => new CharacterData()

///|
pub extern "js" fn CharacterData::add_event_listener(
  self : CharacterData,
  type_ : String,
  callback : EventListener?,
) -> Unit =
  #| (self, type_, callback) => self.addEventListener(type_, callback)

///|
pub extern "js" fn CharacterData::add_event_listener_with_options(
  self : CharacterData,
  type_ : String,
  callback : EventListener?,
  options : AddEventListenerOptionsOrBool,
) -> Unit =
  #| (self, type_, callback, options) => self.addEventListener(type_, callback, options)

///|
pub extern "js" fn CharacterData::remove_event_listener(
  self : CharacterData,
  type_ : String,
  callback : EventListener?,
) -> Unit =
  #| (self, type_, callback) => self.removeEventListener(type_, callback)

///|
pub extern "js" fn CharacterData::remove_event_listener_with_options(
  self : CharacterData,
  type_ : String,
  callback : EventListener?,
  options : EventListenerOptionsOrBool,
) -> Unit =
  #| (self, type_, callback, options) => self.removeEventListener(type_, callback, options)

///|
pub extern "js" fn CharacterData::dispatch_event(
  self : CharacterData,
  event : Event,
) -> Bool =
  #| (self, event) => self.dispatchEvent(event)

///|
pub extern "js" fn CharacterData::when(
  self : CharacterData,
  type_ : String,
) -> Observable =
  #| (self, type_) => self.when(type_)

///|
pub extern "js" fn CharacterData::when_with_options(
  self : CharacterData,
  type_ : String,
  options : ObservableEventListenerOptions,
) -> Observable =
  #| (self, type_, options) => self.when(type_, options)

// CharacterData.ELEMENT_NODE

///|
pub let character_data_element_node : Int = 1

// CharacterData.ATTRIBUTE_NODE

///|
pub let character_data_attribute_node : Int = 2

// CharacterData.TEXT_NODE

///|
pub let character_data_text_node : Int = 3

// CharacterData.CDATA_SECTION_NODE

///|
pub let character_data_cdata_section_node : Int = 4

// CharacterData.ENTITY_REFERENCE_NODE

///|
pub let character_data_entity_reference_node : Int = 5

// CharacterData.ENTITY_NODE

///|
pub let character_data_entity_node : Int = 6

// CharacterData.PROCESSING_INSTRUCTION_NODE

///|
pub let character_data_processing_instruction_node : Int = 7

// CharacterData.COMMENT_NODE

///|
pub let character_data_comment_node : Int = 8

// CharacterData.DOCUMENT_NODE

///|
pub let character_data_document_node : Int = 9

// CharacterData.DOCUMENT_TYPE_NODE

///|
pub let character_data_document_type_node : Int = 10

// CharacterData.DOCUMENT_FRAGMENT_NODE

///|
pub let character_data_document_fragment_node : Int = 11

// CharacterData.NOTATION_NODE

///|
pub let character_data_notation_node : Int = 12

///|
pub extern "js" fn CharacterData::get_node_type(self : CharacterData) -> Int =
  #| (self) => self.nodeType

///|
pub extern "js" fn CharacterData::get_node_name(self : CharacterData) -> String =
  #| (self) => self.nodeName

///|
pub extern "js" fn CharacterData::get_base_u_r_i(
  self : CharacterData,
) -> String =
  #| (self) => self.baseURI

///|
pub extern "js" fn CharacterData::get_is_connected(
  self : CharacterData,
) -> Bool =
  #| (self) => self.isConnected

///|
pub extern "js" fn CharacterData::get_owner_document(
  self : CharacterData,
) -> Document? =
  #| (self) => self.ownerDocument

///|
pub extern "js" fn CharacterData::get_root_node(self : CharacterData) -> Node =
  #| (self) => self.getRootNode()

///|
pub extern "js" fn CharacterData::get_root_node_with_options(
  self : CharacterData,
  options : GetRootNodeOptions,
) -> Node =
  #| (self, options) => self.getRootNode(options)

///|
pub extern "js" fn CharacterData::get_parent_node(
  self : CharacterData,
) -> Node? =
  #| (self) => self.parentNode

///|
pub extern "js" fn CharacterData::get_parent_element(
  self : CharacterData,
) -> Element? =
  #| (self) => self.parentElement

///|
pub extern "js" fn CharacterData::has_child_nodes(self : CharacterData) -> Bool =
  #| (self) => self.hasChildNodes()

///|
pub extern "js" fn CharacterData::get_child_nodes(
  self : CharacterData,
) -> NodeList =
  #| (self) => self.childNodes

///|
pub extern "js" fn CharacterData::get_first_child(
  self : CharacterData,
) -> Node? =
  #| (self) => self.firstChild

///|
pub extern "js" fn CharacterData::get_last_child(self : CharacterData) -> Node? =
  #| (self) => self.lastChild

///|
pub extern "js" fn CharacterData::get_previous_sibling(
  self : CharacterData,
) -> Node? =
  #| (self) => self.previousSibling

///|
pub extern "js" fn CharacterData::get_next_sibling(
  self : CharacterData,
) -> Node? =
  #| (self) => self.nextSibling

///|
pub extern "js" fn CharacterData::get_node_value(
  self : CharacterData,
) -> String? =
  #| (self) => self.nodeValue

///|
pub extern "js" fn CharacterData::set_node_value(
  self : CharacterData,
  value : String?,
) -> Unit =
  #| (self, value) => { self.nodeValue = value }

///|
pub extern "js" fn CharacterData::get_text_content(
  self : CharacterData,
) -> String? =
  #| (self) => self.textContent

///|
pub extern "js" fn CharacterData::set_text_content(
  self : CharacterData,
  value : String?,
) -> Unit =
  #| (self, value) => { self.textContent = value }

///|
pub extern "js" fn CharacterData::normalize(self : CharacterData) -> Unit =
  #| (self) => self.normalize()

///|
pub extern "js" fn CharacterData::clone_node(self : CharacterData) -> Node =
  #| (self) => self.cloneNode()

///|
pub extern "js" fn CharacterData::clone_node_with_subtree(
  self : CharacterData,
  subtree : Bool,
) -> Node =
  #| (self, subtree) => self.cloneNode(subtree)

///|
pub extern "js" fn CharacterData::is_equal_node(
  self : CharacterData,
  other_node : Node?,
) -> Bool =
  #| (self, other_node) => self.isEqualNode(other_node)

///|
pub extern "js" fn CharacterData::is_same_node(
  self : CharacterData,
  other_node : Node?,
) -> Bool =
  #| (self, other_node) => self.isSameNode(other_node)

// CharacterData.DOCUMENT_POSITION_DISCONNECTED

///|
pub let character_data_document_position_disconnected : Int = 0x01

// CharacterData.DOCUMENT_POSITION_PRECEDING

///|
pub let character_data_document_position_preceding : Int = 0x02

// CharacterData.DOCUMENT_POSITION_FOLLOWING

///|
pub let character_data_document_position_following : Int = 0x04

// CharacterData.DOCUMENT_POSITION_CONTAINS

///|
pub let character_data_document_position_contains : Int = 0x08

// CharacterData.DOCUMENT_POSITION_CONTAINED_BY

///|
pub let character_data_document_position_contained_by : Int = 0x10

// CharacterData.DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC

///|
pub let character_data_document_position_implementation_specific : Int = 0x20

///|
pub extern "js" fn CharacterData::compare_document_position(
  self : CharacterData,
  other : Node,
) -> Int =
  #| (self, other) => self.compareDocumentPosition(other)

///|
pub extern "js" fn CharacterData::contains(
  self : CharacterData,
  other : Node?,
) -> Bool =
  #| (self, other) => self.contains(other)

///|
pub extern "js" fn CharacterData::lookup_prefix(
  self : CharacterData,
  namespace_ : String?,
) -> String? =
  #| (self, namespace_) => self.lookupPrefix(namespace_)

///|
pub extern "js" fn CharacterData::lookup_namespace_u_r_i(
  self : CharacterData,
  prefix : String?,
) -> String? =
  #| (self, prefix) => self.lookupNamespaceURI(prefix)

///|
pub extern "js" fn CharacterData::is_default_namespace(
  self : CharacterData,
  namespace_ : String?,
) -> Bool =
  #| (self, namespace_) => self.isDefaultNamespace(namespace_)

///|
pub extern "js" fn CharacterData::insert_before(
  self : CharacterData,
  node : Node,
  child : Node?,
) -> Node =
  #| (self, node, child) => self.insertBefore(node, child)

///|
pub extern "js" fn CharacterData::append_child(
  self : CharacterData,
  node : Node,
) -> Node =
  #| (self, node) => self.appendChild(node)

///|
pub extern "js" fn CharacterData::replace_child(
  self : CharacterData,
  node : Node,
  child : Node,
) -> Node =
  #| (self, node, child) => self.replaceChild(node, child)

///|
pub extern "js" fn CharacterData::remove_child(
  self : CharacterData,
  child : Node,
) -> Node =
  #| (self, child) => self.removeChild(child)

///|
pub extern "js" fn CharacterData::get_data(self : CharacterData) -> String =
  #| (self) => self.data

///|
pub extern "js" fn CharacterData::set_data(
  self : CharacterData,
  value : String,
) -> Unit =
  #| (self, value) => { self.data = value }

///|
pub extern "js" fn CharacterData::get_length(self : CharacterData) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn CharacterData::substring_data(
  self : CharacterData,
  offset : Int,
  count : Int,
) -> String =
  #| (self, offset, count) => self.substringData(offset, count)

///|
pub extern "js" fn CharacterData::append_data(
  self : CharacterData,
  data : String,
) -> Unit =
  #| (self, data) => self.appendData(data)

///|
pub extern "js" fn CharacterData::insert_data(
  self : CharacterData,
  offset : Int,
  data : String,
) -> Unit =
  #| (self, offset, data) => self.insertData(offset, data)

///|
pub extern "js" fn CharacterData::delete_data(
  self : CharacterData,
  offset : Int,
  count : Int,
) -> Unit =
  #| (self, offset, count) => self.deleteData(offset, count)

///|
pub extern "js" fn CharacterData::replace_data(
  self : CharacterData,
  offset : Int,
  count : Int,
  data : String,
) -> Unit =
  #| (self, offset, count, data) => self.replaceData(offset, count, data)

///|
pub extern "js" fn CharacterData::get_previous_element_sibling(
  self : CharacterData,
) -> Element? =
  #| (self) => self.previousElementSibling

///|
pub extern "js" fn CharacterData::get_next_element_sibling(
  self : CharacterData,
) -> Element? =
  #| (self) => self.nextElementSibling

///|
pub extern "js" fn CharacterData::before(
  self : CharacterData,
  nodes : NodeOrString,
) -> Unit =
  #| (self, nodes) => self.before(nodes)

///|
pub extern "js" fn CharacterData::after(
  self : CharacterData,
  nodes : NodeOrString,
) -> Unit =
  #| (self, nodes) => self.after(nodes)

///|
pub extern "js" fn CharacterData::replace_with(
  self : CharacterData,
  nodes : NodeOrString,
) -> Unit =
  #| (self, nodes) => self.replaceWith(nodes)

///|
pub extern "js" fn CharacterData::remove(self : CharacterData) -> Unit =
  #| (self) => self.remove()

///|
/// Text interface
pub type Text

///|
pub extern "js" fn Text::to_js_value(self : Text) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn Text::new() -> Text =
  #| () => new Text()

///|
pub extern "js" fn Text::add_event_listener(
  self : Text,
  type_ : String,
  callback : EventListener?,
) -> Unit =
  #| (self, type_, callback) => self.addEventListener(type_, callback)

///|
pub extern "js" fn Text::add_event_listener_with_options(
  self : Text,
  type_ : String,
  callback : EventListener?,
  options : AddEventListenerOptionsOrBool,
) -> Unit =
  #| (self, type_, callback, options) => self.addEventListener(type_, callback, options)

///|
pub extern "js" fn Text::remove_event_listener(
  self : Text,
  type_ : String,
  callback : EventListener?,
) -> Unit =
  #| (self, type_, callback) => self.removeEventListener(type_, callback)

///|
pub extern "js" fn Text::remove_event_listener_with_options(
  self : Text,
  type_ : String,
  callback : EventListener?,
  options : EventListenerOptionsOrBool,
) -> Unit =
  #| (self, type_, callback, options) => self.removeEventListener(type_, callback, options)

///|
pub extern "js" fn Text::dispatch_event(self : Text, event : Event) -> Bool =
  #| (self, event) => self.dispatchEvent(event)

///|
pub extern "js" fn Text::when(self : Text, type_ : String) -> Observable =
  #| (self, type_) => self.when(type_)

///|
pub extern "js" fn Text::when_with_options(
  self : Text,
  type_ : String,
  options : ObservableEventListenerOptions,
) -> Observable =
  #| (self, type_, options) => self.when(type_, options)

// Text.ELEMENT_NODE

///|
pub let text_element_node : Int = 1

// Text.ATTRIBUTE_NODE

///|
pub let text_attribute_node : Int = 2

// Text.TEXT_NODE

///|
pub let text_text_node : Int = 3

// Text.CDATA_SECTION_NODE

///|
pub let text_cdata_section_node : Int = 4

// Text.ENTITY_REFERENCE_NODE

///|
pub let text_entity_reference_node : Int = 5

// Text.ENTITY_NODE

///|
pub let text_entity_node : Int = 6

// Text.PROCESSING_INSTRUCTION_NODE

///|
pub let text_processing_instruction_node : Int = 7

// Text.COMMENT_NODE

///|
pub let text_comment_node : Int = 8

// Text.DOCUMENT_NODE

///|
pub let text_document_node : Int = 9

// Text.DOCUMENT_TYPE_NODE

///|
pub let text_document_type_node : Int = 10

// Text.DOCUMENT_FRAGMENT_NODE

///|
pub let text_document_fragment_node : Int = 11

// Text.NOTATION_NODE

///|
pub let text_notation_node : Int = 12

///|
pub extern "js" fn Text::get_node_type(self : Text) -> Int =
  #| (self) => self.nodeType

///|
pub extern "js" fn Text::get_node_name(self : Text) -> String =
  #| (self) => self.nodeName

///|
pub extern "js" fn Text::get_base_u_r_i(self : Text) -> String =
  #| (self) => self.baseURI

///|
pub extern "js" fn Text::get_is_connected(self : Text) -> Bool =
  #| (self) => self.isConnected

///|
pub extern "js" fn Text::get_owner_document(self : Text) -> Document? =
  #| (self) => self.ownerDocument

///|
pub extern "js" fn Text::get_root_node(self : Text) -> Node =
  #| (self) => self.getRootNode()

///|
pub extern "js" fn Text::get_root_node_with_options(
  self : Text,
  options : GetRootNodeOptions,
) -> Node =
  #| (self, options) => self.getRootNode(options)

///|
pub extern "js" fn Text::get_parent_node(self : Text) -> Node? =
  #| (self) => self.parentNode

///|
pub extern "js" fn Text::get_parent_element(self : Text) -> Element? =
  #| (self) => self.parentElement

///|
pub extern "js" fn Text::has_child_nodes(self : Text) -> Bool =
  #| (self) => self.hasChildNodes()

///|
pub extern "js" fn Text::get_child_nodes(self : Text) -> NodeList =
  #| (self) => self.childNodes

///|
pub extern "js" fn Text::get_first_child(self : Text) -> Node? =
  #| (self) => self.firstChild

///|
pub extern "js" fn Text::get_last_child(self : Text) -> Node? =
  #| (self) => self.lastChild

///|
pub extern "js" fn Text::get_previous_sibling(self : Text) -> Node? =
  #| (self) => self.previousSibling

///|
pub extern "js" fn Text::get_next_sibling(self : Text) -> Node? =
  #| (self) => self.nextSibling

///|
pub extern "js" fn Text::get_node_value(self : Text) -> String? =
  #| (self) => self.nodeValue

///|
pub extern "js" fn Text::set_node_value(self : Text, value : String?) -> Unit =
  #| (self, value) => { self.nodeValue = value }

///|
pub extern "js" fn Text::get_text_content(self : Text) -> String? =
  #| (self) => self.textContent

///|
pub extern "js" fn Text::set_text_content(self : Text, value : String?) -> Unit =
  #| (self, value) => { self.textContent = value }

///|
pub extern "js" fn Text::normalize(self : Text) -> Unit =
  #| (self) => self.normalize()

///|
pub extern "js" fn Text::clone_node(self : Text) -> Node =
  #| (self) => self.cloneNode()

///|
pub extern "js" fn Text::clone_node_with_subtree(
  self : Text,
  subtree : Bool,
) -> Node =
  #| (self, subtree) => self.cloneNode(subtree)

///|
pub extern "js" fn Text::is_equal_node(self : Text, other_node : Node?) -> Bool =
  #| (self, other_node) => self.isEqualNode(other_node)

///|
pub extern "js" fn Text::is_same_node(self : Text, other_node : Node?) -> Bool =
  #| (self, other_node) => self.isSameNode(other_node)

// Text.DOCUMENT_POSITION_DISCONNECTED

///|
pub let text_document_position_disconnected : Int = 0x01

// Text.DOCUMENT_POSITION_PRECEDING

///|
pub let text_document_position_preceding : Int = 0x02

// Text.DOCUMENT_POSITION_FOLLOWING

///|
pub let text_document_position_following : Int = 0x04

// Text.DOCUMENT_POSITION_CONTAINS

///|
pub let text_document_position_contains : Int = 0x08

// Text.DOCUMENT_POSITION_CONTAINED_BY

///|
pub let text_document_position_contained_by : Int = 0x10

// Text.DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC

///|
pub let text_document_position_implementation_specific : Int = 0x20

///|
pub extern "js" fn Text::compare_document_position(
  self : Text,
  other : Node,
) -> Int =
  #| (self, other) => self.compareDocumentPosition(other)

///|
pub extern "js" fn Text::contains(self : Text, other : Node?) -> Bool =
  #| (self, other) => self.contains(other)

///|
pub extern "js" fn Text::lookup_prefix(
  self : Text,
  namespace_ : String?,
) -> String? =
  #| (self, namespace_) => self.lookupPrefix(namespace_)

///|
pub extern "js" fn Text::lookup_namespace_u_r_i(
  self : Text,
  prefix : String?,
) -> String? =
  #| (self, prefix) => self.lookupNamespaceURI(prefix)

///|
pub extern "js" fn Text::is_default_namespace(
  self : Text,
  namespace_ : String?,
) -> Bool =
  #| (self, namespace_) => self.isDefaultNamespace(namespace_)

///|
pub extern "js" fn Text::insert_before(
  self : Text,
  node : Node,
  child : Node?,
) -> Node =
  #| (self, node, child) => self.insertBefore(node, child)

///|
pub extern "js" fn Text::append_child(self : Text, node : Node) -> Node =
  #| (self, node) => self.appendChild(node)

///|
pub extern "js" fn Text::replace_child(
  self : Text,
  node : Node,
  child : Node,
) -> Node =
  #| (self, node, child) => self.replaceChild(node, child)

///|
pub extern "js" fn Text::remove_child(self : Text, child : Node) -> Node =
  #| (self, child) => self.removeChild(child)

///|
pub extern "js" fn Text::get_data(self : Text) -> String =
  #| (self) => self.data

///|
pub extern "js" fn Text::set_data(self : Text, value : String) -> Unit =
  #| (self, value) => { self.data = value }

///|
pub extern "js" fn Text::get_length(self : Text) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn Text::substring_data(
  self : Text,
  offset : Int,
  count : Int,
) -> String =
  #| (self, offset, count) => self.substringData(offset, count)

///|
pub extern "js" fn Text::append_data(self : Text, data : String) -> Unit =
  #| (self, data) => self.appendData(data)

///|
pub extern "js" fn Text::insert_data(
  self : Text,
  offset : Int,
  data : String,
) -> Unit =
  #| (self, offset, data) => self.insertData(offset, data)

///|
pub extern "js" fn Text::delete_data(
  self : Text,
  offset : Int,
  count : Int,
) -> Unit =
  #| (self, offset, count) => self.deleteData(offset, count)

///|
pub extern "js" fn Text::replace_data(
  self : Text,
  offset : Int,
  count : Int,
  data : String,
) -> Unit =
  #| (self, offset, count, data) => self.replaceData(offset, count, data)

///|
pub extern "js" fn Text::get_previous_element_sibling(self : Text) -> Element? =
  #| (self) => self.previousElementSibling

///|
pub extern "js" fn Text::get_next_element_sibling(self : Text) -> Element? =
  #| (self) => self.nextElementSibling

///|
pub extern "js" fn Text::before(self : Text, nodes : NodeOrString) -> Unit =
  #| (self, nodes) => self.before(nodes)

///|
pub extern "js" fn Text::after(self : Text, nodes : NodeOrString) -> Unit =
  #| (self, nodes) => self.after(nodes)

///|
pub extern "js" fn Text::replace_with(
  self : Text,
  nodes : NodeOrString,
) -> Unit =
  #| (self, nodes) => self.replaceWith(nodes)

///|
pub extern "js" fn Text::remove(self : Text) -> Unit =
  #| (self) => self.remove()

///|
pub extern "js" fn Text::split_text(self : Text, offset : Int) -> Text =
  #| (self, offset) => self.splitText(offset)

///|
pub extern "js" fn Text::get_whole_text(self : Text) -> String =
  #| (self) => self.wholeText

///|
pub extern "js" fn Text::get_box_quads(self : Text) -> Array[DOMQuad] =
  #| (self) => self.getBoxQuads()

///|
pub extern "js" fn Text::get_box_quads_with_options(
  self : Text,
  options : BoxQuadOptions,
) -> Array[DOMQuad] =
  #| (self, options) => self.getBoxQuads(options)

///|
pub extern "js" fn Text::convert_quad_from_node(
  self : Text,
  quad : DOMQuadInit,
  from : GeometryNode,
) -> DOMQuad =
  #| (self, quad, from) => self.convertQuadFromNode(quad, from)

///|
pub extern "js" fn Text::convert_quad_from_node_with_options(
  self : Text,
  quad : DOMQuadInit,
  from : GeometryNode,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, quad, from, options) => self.convertQuadFromNode(quad, from, options)

///|
pub extern "js" fn Text::convert_rect_from_node(
  self : Text,
  rect : DOMRectReadOnly,
  from : GeometryNode,
) -> DOMQuad =
  #| (self, rect, from) => self.convertRectFromNode(rect, from)

///|
pub extern "js" fn Text::convert_rect_from_node_with_options(
  self : Text,
  rect : DOMRectReadOnly,
  from : GeometryNode,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, rect, from, options) => self.convertRectFromNode(rect, from, options)

///|
pub extern "js" fn Text::convert_point_from_node(
  self : Text,
  point : DOMPointInit,
  from : GeometryNode,
) -> DOMPoint =
  #| (self, point, from) => self.convertPointFromNode(point, from)

///|
pub extern "js" fn Text::convert_point_from_node_with_options(
  self : Text,
  point : DOMPointInit,
  from : GeometryNode,
  options : ConvertCoordinateOptions,
) -> DOMPoint =
  #| (self, point, from, options) => self.convertPointFromNode(point, from, options)

///|
pub extern "js" fn Text::get_assigned_slot(self : Text) -> HTMLSlotElement? =
  #| (self) => self.assignedSlot

///|
/// CDATASection interface
pub type CDATASection

///|
pub extern "js" fn CDATASection::to_js_value(self : CDATASection) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CDATASection::new() -> CDATASection =
  #| () => new CDATASection()

///|
pub extern "js" fn CDATASection::add_event_listener(
  self : CDATASection,
  type_ : String,
  callback : EventListener?,
) -> Unit =
  #| (self, type_, callback) => self.addEventListener(type_, callback)

///|
pub extern "js" fn CDATASection::add_event_listener_with_options(
  self : CDATASection,
  type_ : String,
  callback : EventListener?,
  options : AddEventListenerOptionsOrBool,
) -> Unit =
  #| (self, type_, callback, options) => self.addEventListener(type_, callback, options)

///|
pub extern "js" fn CDATASection::remove_event_listener(
  self : CDATASection,
  type_ : String,
  callback : EventListener?,
) -> Unit =
  #| (self, type_, callback) => self.removeEventListener(type_, callback)

///|
pub extern "js" fn CDATASection::remove_event_listener_with_options(
  self : CDATASection,
  type_ : String,
  callback : EventListener?,
  options : EventListenerOptionsOrBool,
) -> Unit =
  #| (self, type_, callback, options) => self.removeEventListener(type_, callback, options)

///|
pub extern "js" fn CDATASection::dispatch_event(
  self : CDATASection,
  event : Event,
) -> Bool =
  #| (self, event) => self.dispatchEvent(event)

///|
pub extern "js" fn CDATASection::when(
  self : CDATASection,
  type_ : String,
) -> Observable =
  #| (self, type_) => self.when(type_)

///|
pub extern "js" fn CDATASection::when_with_options(
  self : CDATASection,
  type_ : String,
  options : ObservableEventListenerOptions,
) -> Observable =
  #| (self, type_, options) => self.when(type_, options)

// CDATASection.ELEMENT_NODE

///|
pub let c_d_a_t_a_section_element_node : Int = 1

// CDATASection.ATTRIBUTE_NODE

///|
pub let c_d_a_t_a_section_attribute_node : Int = 2

// CDATASection.TEXT_NODE

///|
pub let c_d_a_t_a_section_text_node : Int = 3

// CDATASection.CDATA_SECTION_NODE

///|
pub let c_d_a_t_a_section_cdata_section_node : Int = 4

// CDATASection.ENTITY_REFERENCE_NODE

///|
pub let c_d_a_t_a_section_entity_reference_node : Int = 5

// CDATASection.ENTITY_NODE

///|
pub let c_d_a_t_a_section_entity_node : Int = 6

// CDATASection.PROCESSING_INSTRUCTION_NODE

///|
pub let c_d_a_t_a_section_processing_instruction_node : Int = 7

// CDATASection.COMMENT_NODE

///|
pub let c_d_a_t_a_section_comment_node : Int = 8

// CDATASection.DOCUMENT_NODE

///|
pub let c_d_a_t_a_section_document_node : Int = 9

// CDATASection.DOCUMENT_TYPE_NODE

///|
pub let c_d_a_t_a_section_document_type_node : Int = 10

// CDATASection.DOCUMENT_FRAGMENT_NODE

///|
pub let c_d_a_t_a_section_document_fragment_node : Int = 11

// CDATASection.NOTATION_NODE

///|
pub let c_d_a_t_a_section_notation_node : Int = 12

///|
pub extern "js" fn CDATASection::get_node_type(self : CDATASection) -> Int =
  #| (self) => self.nodeType

///|
pub extern "js" fn CDATASection::get_node_name(self : CDATASection) -> String =
  #| (self) => self.nodeName

///|
pub extern "js" fn CDATASection::get_base_u_r_i(self : CDATASection) -> String =
  #| (self) => self.baseURI

///|
pub extern "js" fn CDATASection::get_is_connected(self : CDATASection) -> Bool =
  #| (self) => self.isConnected

///|
pub extern "js" fn CDATASection::get_owner_document(
  self : CDATASection,
) -> Document? =
  #| (self) => self.ownerDocument

///|
pub extern "js" fn CDATASection::get_root_node(self : CDATASection) -> Node =
  #| (self) => self.getRootNode()

///|
pub extern "js" fn CDATASection::get_root_node_with_options(
  self : CDATASection,
  options : GetRootNodeOptions,
) -> Node =
  #| (self, options) => self.getRootNode(options)

///|
pub extern "js" fn CDATASection::get_parent_node(self : CDATASection) -> Node? =
  #| (self) => self.parentNode

///|
pub extern "js" fn CDATASection::get_parent_element(
  self : CDATASection,
) -> Element? =
  #| (self) => self.parentElement

///|
pub extern "js" fn CDATASection::has_child_nodes(self : CDATASection) -> Bool =
  #| (self) => self.hasChildNodes()

///|
pub extern "js" fn CDATASection::get_child_nodes(
  self : CDATASection,
) -> NodeList =
  #| (self) => self.childNodes

///|
pub extern "js" fn CDATASection::get_first_child(self : CDATASection) -> Node? =
  #| (self) => self.firstChild

///|
pub extern "js" fn CDATASection::get_last_child(self : CDATASection) -> Node? =
  #| (self) => self.lastChild

///|
pub extern "js" fn CDATASection::get_previous_sibling(
  self : CDATASection,
) -> Node? =
  #| (self) => self.previousSibling

///|
pub extern "js" fn CDATASection::get_next_sibling(self : CDATASection) -> Node? =
  #| (self) => self.nextSibling

///|
pub extern "js" fn CDATASection::get_node_value(self : CDATASection) -> String? =
  #| (self) => self.nodeValue

///|
pub extern "js" fn CDATASection::set_node_value(
  self : CDATASection,
  value : String?,
) -> Unit =
  #| (self, value) => { self.nodeValue = value }

///|
pub extern "js" fn CDATASection::get_text_content(
  self : CDATASection,
) -> String? =
  #| (self) => self.textContent

///|
pub extern "js" fn CDATASection::set_text_content(
  self : CDATASection,
  value : String?,
) -> Unit =
  #| (self, value) => { self.textContent = value }

///|
pub extern "js" fn CDATASection::normalize(self : CDATASection) -> Unit =
  #| (self) => self.normalize()

///|
pub extern "js" fn CDATASection::clone_node(self : CDATASection) -> Node =
  #| (self) => self.cloneNode()

///|
pub extern "js" fn CDATASection::clone_node_with_subtree(
  self : CDATASection,
  subtree : Bool,
) -> Node =
  #| (self, subtree) => self.cloneNode(subtree)

///|
pub extern "js" fn CDATASection::is_equal_node(
  self : CDATASection,
  other_node : Node?,
) -> Bool =
  #| (self, other_node) => self.isEqualNode(other_node)

///|
pub extern "js" fn CDATASection::is_same_node(
  self : CDATASection,
  other_node : Node?,
) -> Bool =
  #| (self, other_node) => self.isSameNode(other_node)

// CDATASection.DOCUMENT_POSITION_DISCONNECTED

///|
pub let c_d_a_t_a_section_document_position_disconnected : Int = 0x01

// CDATASection.DOCUMENT_POSITION_PRECEDING

///|
pub let c_d_a_t_a_section_document_position_preceding : Int = 0x02

// CDATASection.DOCUMENT_POSITION_FOLLOWING

///|
pub let c_d_a_t_a_section_document_position_following : Int = 0x04

// CDATASection.DOCUMENT_POSITION_CONTAINS

///|
pub let c_d_a_t_a_section_document_position_contains : Int = 0x08

// CDATASection.DOCUMENT_POSITION_CONTAINED_BY

///|
pub let c_d_a_t_a_section_document_position_contained_by : Int = 0x10

// CDATASection.DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC

///|
pub let c_d_a_t_a_section_document_position_implementation_specific : Int = 0x20

///|
pub extern "js" fn CDATASection::compare_document_position(
  self : CDATASection,
  other : Node,
) -> Int =
  #| (self, other) => self.compareDocumentPosition(other)

///|
pub extern "js" fn CDATASection::contains(
  self : CDATASection,
  other : Node?,
) -> Bool =
  #| (self, other) => self.contains(other)

///|
pub extern "js" fn CDATASection::lookup_prefix(
  self : CDATASection,
  namespace_ : String?,
) -> String? =
  #| (self, namespace_) => self.lookupPrefix(namespace_)

///|
pub extern "js" fn CDATASection::lookup_namespace_u_r_i(
  self : CDATASection,
  prefix : String?,
) -> String? =
  #| (self, prefix) => self.lookupNamespaceURI(prefix)

///|
pub extern "js" fn CDATASection::is_default_namespace(
  self : CDATASection,
  namespace_ : String?,
) -> Bool =
  #| (self, namespace_) => self.isDefaultNamespace(namespace_)

///|
pub extern "js" fn CDATASection::insert_before(
  self : CDATASection,
  node : Node,
  child : Node?,
) -> Node =
  #| (self, node, child) => self.insertBefore(node, child)

///|
pub extern "js" fn CDATASection::append_child(
  self : CDATASection,
  node : Node,
) -> Node =
  #| (self, node) => self.appendChild(node)

///|
pub extern "js" fn CDATASection::replace_child(
  self : CDATASection,
  node : Node,
  child : Node,
) -> Node =
  #| (self, node, child) => self.replaceChild(node, child)

///|
pub extern "js" fn CDATASection::remove_child(
  self : CDATASection,
  child : Node,
) -> Node =
  #| (self, child) => self.removeChild(child)

///|
pub extern "js" fn CDATASection::get_data(self : CDATASection) -> String =
  #| (self) => self.data

///|
pub extern "js" fn CDATASection::set_data(
  self : CDATASection,
  value : String,
) -> Unit =
  #| (self, value) => { self.data = value }

///|
pub extern "js" fn CDATASection::get_length(self : CDATASection) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn CDATASection::substring_data(
  self : CDATASection,
  offset : Int,
  count : Int,
) -> String =
  #| (self, offset, count) => self.substringData(offset, count)

///|
pub extern "js" fn CDATASection::append_data(
  self : CDATASection,
  data : String,
) -> Unit =
  #| (self, data) => self.appendData(data)

///|
pub extern "js" fn CDATASection::insert_data(
  self : CDATASection,
  offset : Int,
  data : String,
) -> Unit =
  #| (self, offset, data) => self.insertData(offset, data)

///|
pub extern "js" fn CDATASection::delete_data(
  self : CDATASection,
  offset : Int,
  count : Int,
) -> Unit =
  #| (self, offset, count) => self.deleteData(offset, count)

///|
pub extern "js" fn CDATASection::replace_data(
  self : CDATASection,
  offset : Int,
  count : Int,
  data : String,
) -> Unit =
  #| (self, offset, count, data) => self.replaceData(offset, count, data)

///|
pub extern "js" fn CDATASection::get_previous_element_sibling(
  self : CDATASection,
) -> Element? =
  #| (self) => self.previousElementSibling

///|
pub extern "js" fn CDATASection::get_next_element_sibling(
  self : CDATASection,
) -> Element? =
  #| (self) => self.nextElementSibling

///|
pub extern "js" fn CDATASection::before(
  self : CDATASection,
  nodes : NodeOrString,
) -> Unit =
  #| (self, nodes) => self.before(nodes)

///|
pub extern "js" fn CDATASection::after(
  self : CDATASection,
  nodes : NodeOrString,
) -> Unit =
  #| (self, nodes) => self.after(nodes)

///|
pub extern "js" fn CDATASection::replace_with(
  self : CDATASection,
  nodes : NodeOrString,
) -> Unit =
  #| (self, nodes) => self.replaceWith(nodes)

///|
pub extern "js" fn CDATASection::remove(self : CDATASection) -> Unit =
  #| (self) => self.remove()

///|
pub extern "js" fn CDATASection::split_text(
  self : CDATASection,
  offset : Int,
) -> Text =
  #| (self, offset) => self.splitText(offset)

///|
pub extern "js" fn CDATASection::get_whole_text(self : CDATASection) -> String =
  #| (self) => self.wholeText

///|
pub extern "js" fn CDATASection::get_box_quads(
  self : CDATASection,
) -> Array[DOMQuad] =
  #| (self) => self.getBoxQuads()

///|
pub extern "js" fn CDATASection::get_box_quads_with_options(
  self : CDATASection,
  options : BoxQuadOptions,
) -> Array[DOMQuad] =
  #| (self, options) => self.getBoxQuads(options)

///|
pub extern "js" fn CDATASection::convert_quad_from_node(
  self : CDATASection,
  quad : DOMQuadInit,
  from : GeometryNode,
) -> DOMQuad =
  #| (self, quad, from) => self.convertQuadFromNode(quad, from)

///|
pub extern "js" fn CDATASection::convert_quad_from_node_with_options(
  self : CDATASection,
  quad : DOMQuadInit,
  from : GeometryNode,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, quad, from, options) => self.convertQuadFromNode(quad, from, options)

///|
pub extern "js" fn CDATASection::convert_rect_from_node(
  self : CDATASection,
  rect : DOMRectReadOnly,
  from : GeometryNode,
) -> DOMQuad =
  #| (self, rect, from) => self.convertRectFromNode(rect, from)

///|
pub extern "js" fn CDATASection::convert_rect_from_node_with_options(
  self : CDATASection,
  rect : DOMRectReadOnly,
  from : GeometryNode,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, rect, from, options) => self.convertRectFromNode(rect, from, options)

///|
pub extern "js" fn CDATASection::convert_point_from_node(
  self : CDATASection,
  point : DOMPointInit,
  from : GeometryNode,
) -> DOMPoint =
  #| (self, point, from) => self.convertPointFromNode(point, from)

///|
pub extern "js" fn CDATASection::convert_point_from_node_with_options(
  self : CDATASection,
  point : DOMPointInit,
  from : GeometryNode,
  options : ConvertCoordinateOptions,
) -> DOMPoint =
  #| (self, point, from, options) => self.convertPointFromNode(point, from, options)

///|
pub extern "js" fn CDATASection::get_assigned_slot(
  self : CDATASection,
) -> HTMLSlotElement? =
  #| (self) => self.assignedSlot

///|
/// ProcessingInstruction interface
pub type ProcessingInstruction

///|
pub extern "js" fn ProcessingInstruction::to_js_value(
  self : ProcessingInstruction,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn ProcessingInstruction::new() -> ProcessingInstruction =
  #| () => new ProcessingInstruction()

///|
pub extern "js" fn ProcessingInstruction::add_event_listener(
  self : ProcessingInstruction,
  type_ : String,
  callback : EventListener?,
) -> Unit =
  #| (self, type_, callback) => self.addEventListener(type_, callback)

///|
pub extern "js" fn ProcessingInstruction::add_event_listener_with_options(
  self : ProcessingInstruction,
  type_ : String,
  callback : EventListener?,
  options : AddEventListenerOptionsOrBool,
) -> Unit =
  #| (self, type_, callback, options) => self.addEventListener(type_, callback, options)

///|
pub extern "js" fn ProcessingInstruction::remove_event_listener(
  self : ProcessingInstruction,
  type_ : String,
  callback : EventListener?,
) -> Unit =
  #| (self, type_, callback) => self.removeEventListener(type_, callback)

///|
pub extern "js" fn ProcessingInstruction::remove_event_listener_with_options(
  self : ProcessingInstruction,
  type_ : String,
  callback : EventListener?,
  options : EventListenerOptionsOrBool,
) -> Unit =
  #| (self, type_, callback, options) => self.removeEventListener(type_, callback, options)

///|
pub extern "js" fn ProcessingInstruction::dispatch_event(
  self : ProcessingInstruction,
  event : Event,
) -> Bool =
  #| (self, event) => self.dispatchEvent(event)

///|
pub extern "js" fn ProcessingInstruction::when(
  self : ProcessingInstruction,
  type_ : String,
) -> Observable =
  #| (self, type_) => self.when(type_)

///|
pub extern "js" fn ProcessingInstruction::when_with_options(
  self : ProcessingInstruction,
  type_ : String,
  options : ObservableEventListenerOptions,
) -> Observable =
  #| (self, type_, options) => self.when(type_, options)

// ProcessingInstruction.ELEMENT_NODE

///|
pub let processing_instruction_element_node : Int = 1

// ProcessingInstruction.ATTRIBUTE_NODE

///|
pub let processing_instruction_attribute_node : Int = 2

// ProcessingInstruction.TEXT_NODE

///|
pub let processing_instruction_text_node : Int = 3

// ProcessingInstruction.CDATA_SECTION_NODE

///|
pub let processing_instruction_cdata_section_node : Int = 4

// ProcessingInstruction.ENTITY_REFERENCE_NODE

///|
pub let processing_instruction_entity_reference_node : Int = 5

// ProcessingInstruction.ENTITY_NODE

///|
pub let processing_instruction_entity_node : Int = 6

// ProcessingInstruction.PROCESSING_INSTRUCTION_NODE

///|
pub let processing_instruction_processing_instruction_node : Int = 7

// ProcessingInstruction.COMMENT_NODE

///|
pub let processing_instruction_comment_node : Int = 8

// ProcessingInstruction.DOCUMENT_NODE

///|
pub let processing_instruction_document_node : Int = 9

// ProcessingInstruction.DOCUMENT_TYPE_NODE

///|
pub let processing_instruction_document_type_node : Int = 10

// ProcessingInstruction.DOCUMENT_FRAGMENT_NODE

///|
pub let processing_instruction_document_fragment_node : Int = 11

// ProcessingInstruction.NOTATION_NODE

///|
pub let processing_instruction_notation_node : Int = 12

///|
pub extern "js" fn ProcessingInstruction::get_node_type(
  self : ProcessingInstruction,
) -> Int =
  #| (self) => self.nodeType

///|
pub extern "js" fn ProcessingInstruction::get_node_name(
  self : ProcessingInstruction,
) -> String =
  #| (self) => self.nodeName

///|
pub extern "js" fn ProcessingInstruction::get_base_u_r_i(
  self : ProcessingInstruction,
) -> String =
  #| (self) => self.baseURI

///|
pub extern "js" fn ProcessingInstruction::get_is_connected(
  self : ProcessingInstruction,
) -> Bool =
  #| (self) => self.isConnected

///|
pub extern "js" fn ProcessingInstruction::get_owner_document(
  self : ProcessingInstruction,
) -> Document? =
  #| (self) => self.ownerDocument

///|
pub extern "js" fn ProcessingInstruction::get_root_node(
  self : ProcessingInstruction,
) -> Node =
  #| (self) => self.getRootNode()

///|
pub extern "js" fn ProcessingInstruction::get_root_node_with_options(
  self : ProcessingInstruction,
  options : GetRootNodeOptions,
) -> Node =
  #| (self, options) => self.getRootNode(options)

///|
pub extern "js" fn ProcessingInstruction::get_parent_node(
  self : ProcessingInstruction,
) -> Node? =
  #| (self) => self.parentNode

///|
pub extern "js" fn ProcessingInstruction::get_parent_element(
  self : ProcessingInstruction,
) -> Element? =
  #| (self) => self.parentElement

///|
pub extern "js" fn ProcessingInstruction::has_child_nodes(
  self : ProcessingInstruction,
) -> Bool =
  #| (self) => self.hasChildNodes()

///|
pub extern "js" fn ProcessingInstruction::get_child_nodes(
  self : ProcessingInstruction,
) -> NodeList =
  #| (self) => self.childNodes

///|
pub extern "js" fn ProcessingInstruction::get_first_child(
  self : ProcessingInstruction,
) -> Node? =
  #| (self) => self.firstChild

///|
pub extern "js" fn ProcessingInstruction::get_last_child(
  self : ProcessingInstruction,
) -> Node? =
  #| (self) => self.lastChild

///|
pub extern "js" fn ProcessingInstruction::get_previous_sibling(
  self : ProcessingInstruction,
) -> Node? =
  #| (self) => self.previousSibling

///|
pub extern "js" fn ProcessingInstruction::get_next_sibling(
  self : ProcessingInstruction,
) -> Node? =
  #| (self) => self.nextSibling

///|
pub extern "js" fn ProcessingInstruction::get_node_value(
  self : ProcessingInstruction,
) -> String? =
  #| (self) => self.nodeValue

///|
pub extern "js" fn ProcessingInstruction::set_node_value(
  self : ProcessingInstruction,
  value : String?,
) -> Unit =
  #| (self, value) => { self.nodeValue = value }

///|
pub extern "js" fn ProcessingInstruction::get_text_content(
  self : ProcessingInstruction,
) -> String? =
  #| (self) => self.textContent

///|
pub extern "js" fn ProcessingInstruction::set_text_content(
  self : ProcessingInstruction,
  value : String?,
) -> Unit =
  #| (self, value) => { self.textContent = value }

///|
pub extern "js" fn ProcessingInstruction::normalize(
  self : ProcessingInstruction,
) -> Unit =
  #| (self) => self.normalize()

///|
pub extern "js" fn ProcessingInstruction::clone_node(
  self : ProcessingInstruction,
) -> Node =
  #| (self) => self.cloneNode()

///|
pub extern "js" fn ProcessingInstruction::clone_node_with_subtree(
  self : ProcessingInstruction,
  subtree : Bool,
) -> Node =
  #| (self, subtree) => self.cloneNode(subtree)

///|
pub extern "js" fn ProcessingInstruction::is_equal_node(
  self : ProcessingInstruction,
  other_node : Node?,
) -> Bool =
  #| (self, other_node) => self.isEqualNode(other_node)

///|
pub extern "js" fn ProcessingInstruction::is_same_node(
  self : ProcessingInstruction,
  other_node : Node?,
) -> Bool =
  #| (self, other_node) => self.isSameNode(other_node)

// ProcessingInstruction.DOCUMENT_POSITION_DISCONNECTED

///|
pub let processing_instruction_document_position_disconnected : Int = 0x01

// ProcessingInstruction.DOCUMENT_POSITION_PRECEDING

///|
pub let processing_instruction_document_position_preceding : Int = 0x02

// ProcessingInstruction.DOCUMENT_POSITION_FOLLOWING

///|
pub let processing_instruction_document_position_following : Int = 0x04

// ProcessingInstruction.DOCUMENT_POSITION_CONTAINS

///|
pub let processing_instruction_document_position_contains : Int = 0x08

// ProcessingInstruction.DOCUMENT_POSITION_CONTAINED_BY

///|
pub let processing_instruction_document_position_contained_by : Int = 0x10

// ProcessingInstruction.DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC

///|
pub let processing_instruction_document_position_implementation_specific : Int = 0x20

///|
pub extern "js" fn ProcessingInstruction::compare_document_position(
  self : ProcessingInstruction,
  other : Node,
) -> Int =
  #| (self, other) => self.compareDocumentPosition(other)

///|
pub extern "js" fn ProcessingInstruction::contains(
  self : ProcessingInstruction,
  other : Node?,
) -> Bool =
  #| (self, other) => self.contains(other)

///|
pub extern "js" fn ProcessingInstruction::lookup_prefix(
  self : ProcessingInstruction,
  namespace_ : String?,
) -> String? =
  #| (self, namespace_) => self.lookupPrefix(namespace_)

///|
pub extern "js" fn ProcessingInstruction::lookup_namespace_u_r_i(
  self : ProcessingInstruction,
  prefix : String?,
) -> String? =
  #| (self, prefix) => self.lookupNamespaceURI(prefix)

///|
pub extern "js" fn ProcessingInstruction::is_default_namespace(
  self : ProcessingInstruction,
  namespace_ : String?,
) -> Bool =
  #| (self, namespace_) => self.isDefaultNamespace(namespace_)

///|
pub extern "js" fn ProcessingInstruction::insert_before(
  self : ProcessingInstruction,
  node : Node,
  child : Node?,
) -> Node =
  #| (self, node, child) => self.insertBefore(node, child)

///|
pub extern "js" fn ProcessingInstruction::append_child(
  self : ProcessingInstruction,
  node : Node,
) -> Node =
  #| (self, node) => self.appendChild(node)

///|
pub extern "js" fn ProcessingInstruction::replace_child(
  self : ProcessingInstruction,
  node : Node,
  child : Node,
) -> Node =
  #| (self, node, child) => self.replaceChild(node, child)

///|
pub extern "js" fn ProcessingInstruction::remove_child(
  self : ProcessingInstruction,
  child : Node,
) -> Node =
  #| (self, child) => self.removeChild(child)

///|
pub extern "js" fn ProcessingInstruction::get_data(
  self : ProcessingInstruction,
) -> String =
  #| (self) => self.data

///|
pub extern "js" fn ProcessingInstruction::set_data(
  self : ProcessingInstruction,
  value : String,
) -> Unit =
  #| (self, value) => { self.data = value }

///|
pub extern "js" fn ProcessingInstruction::get_length(
  self : ProcessingInstruction,
) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn ProcessingInstruction::substring_data(
  self : ProcessingInstruction,
  offset : Int,
  count : Int,
) -> String =
  #| (self, offset, count) => self.substringData(offset, count)

///|
pub extern "js" fn ProcessingInstruction::append_data(
  self : ProcessingInstruction,
  data : String,
) -> Unit =
  #| (self, data) => self.appendData(data)

///|
pub extern "js" fn ProcessingInstruction::insert_data(
  self : ProcessingInstruction,
  offset : Int,
  data : String,
) -> Unit =
  #| (self, offset, data) => self.insertData(offset, data)

///|
pub extern "js" fn ProcessingInstruction::delete_data(
  self : ProcessingInstruction,
  offset : Int,
  count : Int,
) -> Unit =
  #| (self, offset, count) => self.deleteData(offset, count)

///|
pub extern "js" fn ProcessingInstruction::replace_data(
  self : ProcessingInstruction,
  offset : Int,
  count : Int,
  data : String,
) -> Unit =
  #| (self, offset, count, data) => self.replaceData(offset, count, data)

///|
pub extern "js" fn ProcessingInstruction::get_previous_element_sibling(
  self : ProcessingInstruction,
) -> Element? =
  #| (self) => self.previousElementSibling

///|
pub extern "js" fn ProcessingInstruction::get_next_element_sibling(
  self : ProcessingInstruction,
) -> Element? =
  #| (self) => self.nextElementSibling

///|
pub extern "js" fn ProcessingInstruction::before(
  self : ProcessingInstruction,
  nodes : NodeOrString,
) -> Unit =
  #| (self, nodes) => self.before(nodes)

///|
pub extern "js" fn ProcessingInstruction::after(
  self : ProcessingInstruction,
  nodes : NodeOrString,
) -> Unit =
  #| (self, nodes) => self.after(nodes)

///|
pub extern "js" fn ProcessingInstruction::replace_with(
  self : ProcessingInstruction,
  nodes : NodeOrString,
) -> Unit =
  #| (self, nodes) => self.replaceWith(nodes)

///|
pub extern "js" fn ProcessingInstruction::remove(
  self : ProcessingInstruction,
) -> Unit =
  #| (self) => self.remove()

///|
pub extern "js" fn ProcessingInstruction::get_target(
  self : ProcessingInstruction,
) -> String =
  #| (self) => self.target

///|
pub extern "js" fn ProcessingInstruction::get_sheet(
  self : ProcessingInstruction,
) -> CSSStyleSheet? =
  #| (self) => self.sheet

///|
/// Comment interface
pub type Comment

///|
pub extern "js" fn Comment::to_js_value(self : Comment) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn Comment::new() -> Comment =
  #| () => new Comment()

///|
pub extern "js" fn Comment::add_event_listener(
  self : Comment,
  type_ : String,
  callback : EventListener?,
) -> Unit =
  #| (self, type_, callback) => self.addEventListener(type_, callback)

///|
pub extern "js" fn Comment::add_event_listener_with_options(
  self : Comment,
  type_ : String,
  callback : EventListener?,
  options : AddEventListenerOptionsOrBool,
) -> Unit =
  #| (self, type_, callback, options) => self.addEventListener(type_, callback, options)

///|
pub extern "js" fn Comment::remove_event_listener(
  self : Comment,
  type_ : String,
  callback : EventListener?,
) -> Unit =
  #| (self, type_, callback) => self.removeEventListener(type_, callback)

///|
pub extern "js" fn Comment::remove_event_listener_with_options(
  self : Comment,
  type_ : String,
  callback : EventListener?,
  options : EventListenerOptionsOrBool,
) -> Unit =
  #| (self, type_, callback, options) => self.removeEventListener(type_, callback, options)

///|
pub extern "js" fn Comment::dispatch_event(
  self : Comment,
  event : Event,
) -> Bool =
  #| (self, event) => self.dispatchEvent(event)

///|
pub extern "js" fn Comment::when(self : Comment, type_ : String) -> Observable =
  #| (self, type_) => self.when(type_)

///|
pub extern "js" fn Comment::when_with_options(
  self : Comment,
  type_ : String,
  options : ObservableEventListenerOptions,
) -> Observable =
  #| (self, type_, options) => self.when(type_, options)

// Comment.ELEMENT_NODE

///|
pub let comment_element_node : Int = 1

// Comment.ATTRIBUTE_NODE

///|
pub let comment_attribute_node : Int = 2

// Comment.TEXT_NODE

///|
pub let comment_text_node : Int = 3

// Comment.CDATA_SECTION_NODE

///|
pub let comment_cdata_section_node : Int = 4

// Comment.ENTITY_REFERENCE_NODE

///|
pub let comment_entity_reference_node : Int = 5

// Comment.ENTITY_NODE

///|
pub let comment_entity_node : Int = 6

// Comment.PROCESSING_INSTRUCTION_NODE

///|
pub let comment_processing_instruction_node : Int = 7

// Comment.COMMENT_NODE

///|
pub let comment_comment_node : Int = 8

// Comment.DOCUMENT_NODE

///|
pub let comment_document_node : Int = 9

// Comment.DOCUMENT_TYPE_NODE

///|
pub let comment_document_type_node : Int = 10

// Comment.DOCUMENT_FRAGMENT_NODE

///|
pub let comment_document_fragment_node : Int = 11

// Comment.NOTATION_NODE

///|
pub let comment_notation_node : Int = 12

///|
pub extern "js" fn Comment::get_node_type(self : Comment) -> Int =
  #| (self) => self.nodeType

///|
pub extern "js" fn Comment::get_node_name(self : Comment) -> String =
  #| (self) => self.nodeName

///|
pub extern "js" fn Comment::get_base_u_r_i(self : Comment) -> String =
  #| (self) => self.baseURI

///|
pub extern "js" fn Comment::get_is_connected(self : Comment) -> Bool =
  #| (self) => self.isConnected

///|
pub extern "js" fn Comment::get_owner_document(self : Comment) -> Document? =
  #| (self) => self.ownerDocument

///|
pub extern "js" fn Comment::get_root_node(self : Comment) -> Node =
  #| (self) => self.getRootNode()

///|
pub extern "js" fn Comment::get_root_node_with_options(
  self : Comment,
  options : GetRootNodeOptions,
) -> Node =
  #| (self, options) => self.getRootNode(options)

///|
pub extern "js" fn Comment::get_parent_node(self : Comment) -> Node? =
  #| (self) => self.parentNode

///|
pub extern "js" fn Comment::get_parent_element(self : Comment) -> Element? =
  #| (self) => self.parentElement

///|
pub extern "js" fn Comment::has_child_nodes(self : Comment) -> Bool =
  #| (self) => self.hasChildNodes()

///|
pub extern "js" fn Comment::get_child_nodes(self : Comment) -> NodeList =
  #| (self) => self.childNodes

///|
pub extern "js" fn Comment::get_first_child(self : Comment) -> Node? =
  #| (self) => self.firstChild

///|
pub extern "js" fn Comment::get_last_child(self : Comment) -> Node? =
  #| (self) => self.lastChild

///|
pub extern "js" fn Comment::get_previous_sibling(self : Comment) -> Node? =
  #| (self) => self.previousSibling

///|
pub extern "js" fn Comment::get_next_sibling(self : Comment) -> Node? =
  #| (self) => self.nextSibling

///|
pub extern "js" fn Comment::get_node_value(self : Comment) -> String? =
  #| (self) => self.nodeValue

///|
pub extern "js" fn Comment::set_node_value(
  self : Comment,
  value : String?,
) -> Unit =
  #| (self, value) => { self.nodeValue = value }

///|
pub extern "js" fn Comment::get_text_content(self : Comment) -> String? =
  #| (self) => self.textContent

///|
pub extern "js" fn Comment::set_text_content(
  self : Comment,
  value : String?,
) -> Unit =
  #| (self, value) => { self.textContent = value }

///|
pub extern "js" fn Comment::normalize(self : Comment) -> Unit =
  #| (self) => self.normalize()

///|
pub extern "js" fn Comment::clone_node(self : Comment) -> Node =
  #| (self) => self.cloneNode()

///|
pub extern "js" fn Comment::clone_node_with_subtree(
  self : Comment,
  subtree : Bool,
) -> Node =
  #| (self, subtree) => self.cloneNode(subtree)

///|
pub extern "js" fn Comment::is_equal_node(
  self : Comment,
  other_node : Node?,
) -> Bool =
  #| (self, other_node) => self.isEqualNode(other_node)

///|
pub extern "js" fn Comment::is_same_node(
  self : Comment,
  other_node : Node?,
) -> Bool =
  #| (self, other_node) => self.isSameNode(other_node)

// Comment.DOCUMENT_POSITION_DISCONNECTED

///|
pub let comment_document_position_disconnected : Int = 0x01

// Comment.DOCUMENT_POSITION_PRECEDING

///|
pub let comment_document_position_preceding : Int = 0x02

// Comment.DOCUMENT_POSITION_FOLLOWING

///|
pub let comment_document_position_following : Int = 0x04

// Comment.DOCUMENT_POSITION_CONTAINS

///|
pub let comment_document_position_contains : Int = 0x08

// Comment.DOCUMENT_POSITION_CONTAINED_BY

///|
pub let comment_document_position_contained_by : Int = 0x10

// Comment.DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC

///|
pub let comment_document_position_implementation_specific : Int = 0x20

///|
pub extern "js" fn Comment::compare_document_position(
  self : Comment,
  other : Node,
) -> Int =
  #| (self, other) => self.compareDocumentPosition(other)

///|
pub extern "js" fn Comment::contains(self : Comment, other : Node?) -> Bool =
  #| (self, other) => self.contains(other)

///|
pub extern "js" fn Comment::lookup_prefix(
  self : Comment,
  namespace_ : String?,
) -> String? =
  #| (self, namespace_) => self.lookupPrefix(namespace_)

///|
pub extern "js" fn Comment::lookup_namespace_u_r_i(
  self : Comment,
  prefix : String?,
) -> String? =
  #| (self, prefix) => self.lookupNamespaceURI(prefix)

///|
pub extern "js" fn Comment::is_default_namespace(
  self : Comment,
  namespace_ : String?,
) -> Bool =
  #| (self, namespace_) => self.isDefaultNamespace(namespace_)

///|
pub extern "js" fn Comment::insert_before(
  self : Comment,
  node : Node,
  child : Node?,
) -> Node =
  #| (self, node, child) => self.insertBefore(node, child)

///|
pub extern "js" fn Comment::append_child(self : Comment, node : Node) -> Node =
  #| (self, node) => self.appendChild(node)

///|
pub extern "js" fn Comment::replace_child(
  self : Comment,
  node : Node,
  child : Node,
) -> Node =
  #| (self, node, child) => self.replaceChild(node, child)

///|
pub extern "js" fn Comment::remove_child(self : Comment, child : Node) -> Node =
  #| (self, child) => self.removeChild(child)

///|
pub extern "js" fn Comment::get_data(self : Comment) -> String =
  #| (self) => self.data

///|
pub extern "js" fn Comment::set_data(self : Comment, value : String) -> Unit =
  #| (self, value) => { self.data = value }

///|
pub extern "js" fn Comment::get_length(self : Comment) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn Comment::substring_data(
  self : Comment,
  offset : Int,
  count : Int,
) -> String =
  #| (self, offset, count) => self.substringData(offset, count)

///|
pub extern "js" fn Comment::append_data(self : Comment, data : String) -> Unit =
  #| (self, data) => self.appendData(data)

///|
pub extern "js" fn Comment::insert_data(
  self : Comment,
  offset : Int,
  data : String,
) -> Unit =
  #| (self, offset, data) => self.insertData(offset, data)

///|
pub extern "js" fn Comment::delete_data(
  self : Comment,
  offset : Int,
  count : Int,
) -> Unit =
  #| (self, offset, count) => self.deleteData(offset, count)

///|
pub extern "js" fn Comment::replace_data(
  self : Comment,
  offset : Int,
  count : Int,
  data : String,
) -> Unit =
  #| (self, offset, count, data) => self.replaceData(offset, count, data)

///|
pub extern "js" fn Comment::get_previous_element_sibling(
  self : Comment,
) -> Element? =
  #| (self) => self.previousElementSibling

///|
pub extern "js" fn Comment::get_next_element_sibling(
  self : Comment,
) -> Element? =
  #| (self) => self.nextElementSibling

///|
pub extern "js" fn Comment::before(
  self : Comment,
  nodes : NodeOrString,
) -> Unit =
  #| (self, nodes) => self.before(nodes)

///|
pub extern "js" fn Comment::after(self : Comment, nodes : NodeOrString) -> Unit =
  #| (self, nodes) => self.after(nodes)

///|
pub extern "js" fn Comment::replace_with(
  self : Comment,
  nodes : NodeOrString,
) -> Unit =
  #| (self, nodes) => self.replaceWith(nodes)

///|
pub extern "js" fn Comment::remove(self : Comment) -> Unit =
  #| (self) => self.remove()

///|
/// AbstractRange interface
pub type AbstractRange

///|
pub extern "js" fn AbstractRange::to_js_value(self : AbstractRange) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn AbstractRange::get_start_container(
  self : AbstractRange,
) -> Node =
  #| (self) => self.startContainer

///|
pub extern "js" fn AbstractRange::get_start_offset(self : AbstractRange) -> Int =
  #| (self) => self.startOffset

///|
pub extern "js" fn AbstractRange::get_end_container(
  self : AbstractRange,
) -> Node =
  #| (self) => self.endContainer

///|
pub extern "js" fn AbstractRange::get_end_offset(self : AbstractRange) -> Int =
  #| (self) => self.endOffset

///|
pub extern "js" fn AbstractRange::get_collapsed(self : AbstractRange) -> Bool =
  #| (self) => self.collapsed

///|
/// StaticRange interface
pub type StaticRange

///|
pub extern "js" fn StaticRange::to_js_value(self : StaticRange) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn StaticRange::get_start_container(self : StaticRange) -> Node =
  #| (self) => self.startContainer

///|
pub extern "js" fn StaticRange::get_start_offset(self : StaticRange) -> Int =
  #| (self) => self.startOffset

///|
pub extern "js" fn StaticRange::get_end_container(self : StaticRange) -> Node =
  #| (self) => self.endContainer

///|
pub extern "js" fn StaticRange::get_end_offset(self : StaticRange) -> Int =
  #| (self) => self.endOffset

///|
pub extern "js" fn StaticRange::get_collapsed(self : StaticRange) -> Bool =
  #| (self) => self.collapsed

///|
pub extern "js" fn StaticRange::new(init_ : StaticRangeInit) -> StaticRange =
  #| (init_) => new StaticRange(init_)

///|
/// Range interface
pub type Range

///|
pub extern "js" fn Range::to_js_value(self : Range) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn Range::get_start_container(self : Range) -> Node =
  #| (self) => self.startContainer

///|
pub extern "js" fn Range::get_start_offset(self : Range) -> Int =
  #| (self) => self.startOffset

///|
pub extern "js" fn Range::get_end_container(self : Range) -> Node =
  #| (self) => self.endContainer

///|
pub extern "js" fn Range::get_end_offset(self : Range) -> Int =
  #| (self) => self.endOffset

///|
pub extern "js" fn Range::get_collapsed(self : Range) -> Bool =
  #| (self) => self.collapsed

///|
pub extern "js" fn Range::new() -> Range =
  #| () => new Range()

///|
pub extern "js" fn Range::get_common_ancestor_container(self : Range) -> Node =
  #| (self) => self.commonAncestorContainer

///|
pub extern "js" fn Range::set_start(
  self : Range,
  node : Node,
  offset : Int,
) -> Unit =
  #| (self, node, offset) => self.setStart(node, offset)

///|
pub extern "js" fn Range::set_end(
  self : Range,
  node : Node,
  offset : Int,
) -> Unit =
  #| (self, node, offset) => self.setEnd(node, offset)

///|
pub extern "js" fn Range::set_start_before(self : Range, node : Node) -> Unit =
  #| (self, node) => self.setStartBefore(node)

///|
pub extern "js" fn Range::set_start_after(self : Range, node : Node) -> Unit =
  #| (self, node) => self.setStartAfter(node)

///|
pub extern "js" fn Range::set_end_before(self : Range, node : Node) -> Unit =
  #| (self, node) => self.setEndBefore(node)

///|
pub extern "js" fn Range::set_end_after(self : Range, node : Node) -> Unit =
  #| (self, node) => self.setEndAfter(node)

///|
pub extern "js" fn Range::collapse(self : Range) -> Unit =
  #| (self) => self.collapse()

///|
pub extern "js" fn Range::collapse_with_to_start(
  self : Range,
  to_start : Bool,
) -> Unit =
  #| (self, to_start) => self.collapse(to_start)

///|
pub extern "js" fn Range::select_node(self : Range, node : Node) -> Unit =
  #| (self, node) => self.selectNode(node)

///|
pub extern "js" fn Range::select_node_contents(
  self : Range,
  node : Node,
) -> Unit =
  #| (self, node) => self.selectNodeContents(node)

// Range.START_TO_START

///|
pub let range_start_to_start : Int = 0

// Range.START_TO_END

///|
pub let range_start_to_end : Int = 1

// Range.END_TO_END

///|
pub let range_end_to_end : Int = 2

// Range.END_TO_START

///|
pub let range_end_to_start : Int = 3

///|
pub extern "js" fn Range::compare_boundary_points(
  self : Range,
  how : Int,
  source_range : Range,
) -> Int =
  #| (self, how, source_range) => self.compareBoundaryPoints(how, source_range)

///|
pub extern "js" fn Range::delete_contents(self : Range) -> Unit =
  #| (self) => self.deleteContents()

///|
pub extern "js" fn Range::extract_contents(self : Range) -> DocumentFragment =
  #| (self) => self.extractContents()

///|
pub extern "js" fn Range::clone_contents(self : Range) -> DocumentFragment =
  #| (self) => self.cloneContents()

///|
pub extern "js" fn Range::insert_node(self : Range, node : Node) -> Unit =
  #| (self, node) => self.insertNode(node)

///|
pub extern "js" fn Range::surround_contents(
  self : Range,
  new_parent : Node,
) -> Unit =
  #| (self, new_parent) => self.surroundContents(new_parent)

///|
pub extern "js" fn Range::clone_range(self : Range) -> Range =
  #| (self) => self.cloneRange()

///|
pub extern "js" fn Range::detach(self : Range) -> Unit =
  #| (self) => self.detach()

///|
pub extern "js" fn Range::is_point_in_range(
  self : Range,
  node : Node,
  offset : Int,
) -> Bool =
  #| (self, node, offset) => self.isPointInRange(node, offset)

///|
pub extern "js" fn Range::compare_point(
  self : Range,
  node : Node,
  offset : Int,
) -> Int =
  #| (self, node, offset) => self.comparePoint(node, offset)

///|
pub extern "js" fn Range::intersects_node(self : Range, node : Node) -> Bool =
  #| (self, node) => self.intersectsNode(node)

///|
pub extern "js" fn Range::get_client_rects(self : Range) -> DOMRectList =
  #| (self) => self.getClientRects()

///|
pub extern "js" fn Range::get_bounding_client_rect(self : Range) -> DOMRect =
  #| (self) => self.getBoundingClientRect()

///|
pub extern "js" fn Range::create_contextual_fragment(
  self : Range,
  string : TrustedHTMLOrString,
) -> DocumentFragment =
  #| (self, string) => self.createContextualFragment(string)

///|
/// NodeIterator interface
pub type NodeIterator

///|
pub extern "js" fn NodeIterator::to_js_value(self : NodeIterator) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn NodeIterator::get_root(self : NodeIterator) -> Node =
  #| (self) => self.root

///|
pub extern "js" fn NodeIterator::get_reference_node(
  self : NodeIterator,
) -> Node =
  #| (self) => self.referenceNode

///|
pub extern "js" fn NodeIterator::get_pointer_before_reference_node(
  self : NodeIterator,
) -> Bool =
  #| (self) => self.pointerBeforeReferenceNode

///|
pub extern "js" fn NodeIterator::get_what_to_show(self : NodeIterator) -> Int =
  #| (self) => self.whatToShow

///|
pub extern "js" fn NodeIterator::get_filter(self : NodeIterator) -> NodeFilter? =
  #| (self) => self.filter

///|
pub extern "js" fn NodeIterator::next_node(self : NodeIterator) -> Node? =
  #| (self) => self.nextNode()

///|
pub extern "js" fn NodeIterator::previous_node(self : NodeIterator) -> Node? =
  #| (self) => self.previousNode()

///|
pub extern "js" fn NodeIterator::detach(self : NodeIterator) -> Unit =
  #| (self) => self.detach()

///|
/// TreeWalker interface
pub type TreeWalker

///|
pub extern "js" fn TreeWalker::to_js_value(self : TreeWalker) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn TreeWalker::get_root(self : TreeWalker) -> Node =
  #| (self) => self.root

///|
pub extern "js" fn TreeWalker::get_what_to_show(self : TreeWalker) -> Int =
  #| (self) => self.whatToShow

///|
pub extern "js" fn TreeWalker::get_filter(self : TreeWalker) -> NodeFilter? =
  #| (self) => self.filter

///|
pub extern "js" fn TreeWalker::get_current_node(self : TreeWalker) -> Node =
  #| (self) => self.currentNode

///|
pub extern "js" fn TreeWalker::set_current_node(
  self : TreeWalker,
  value : Node,
) -> Unit =
  #| (self, value) => { self.currentNode = value }

///|
pub extern "js" fn TreeWalker::parent_node(self : TreeWalker) -> Node? =
  #| (self) => self.parentNode()

///|
pub extern "js" fn TreeWalker::first_child(self : TreeWalker) -> Node? =
  #| (self) => self.firstChild()

///|
pub extern "js" fn TreeWalker::last_child(self : TreeWalker) -> Node? =
  #| (self) => self.lastChild()

///|
pub extern "js" fn TreeWalker::previous_sibling(self : TreeWalker) -> Node? =
  #| (self) => self.previousSibling()

///|
pub extern "js" fn TreeWalker::next_sibling(self : TreeWalker) -> Node? =
  #| (self) => self.nextSibling()

///|
pub extern "js" fn TreeWalker::previous_node(self : TreeWalker) -> Node? =
  #| (self) => self.previousNode()

///|
pub extern "js" fn TreeWalker::next_node(self : TreeWalker) -> Node? =
  #| (self) => self.nextNode()

///|
/// DOMTokenList interface
pub type DOMTokenList

///|
pub extern "js" fn DOMTokenList::to_js_value(self : DOMTokenList) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn DOMTokenList::get_length(self : DOMTokenList) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn DOMTokenList::item(
  self : DOMTokenList,
  index : Int,
) -> String? =
  #| (self, index) => self.item(index)

///|
pub extern "js" fn DOMTokenList::get(
  self : DOMTokenList,
  index : Int,
) -> String? =
  #| (self, index) => self[index]

///|
pub extern "js" fn DOMTokenList::contains(
  self : DOMTokenList,
  token : String,
) -> Bool =
  #| (self, token) => self.contains(token)

///|
pub extern "js" fn DOMTokenList::add(
  self : DOMTokenList,
  tokens : String,
) -> Unit =
  #| (self, tokens) => self.add(tokens)

///|
pub extern "js" fn DOMTokenList::remove(
  self : DOMTokenList,
  tokens : String,
) -> Unit =
  #| (self, tokens) => self.remove(tokens)

///|
pub extern "js" fn DOMTokenList::toggle(
  self : DOMTokenList,
  token : String,
) -> Bool =
  #| (self, token) => self.toggle(token)

///|
pub extern "js" fn DOMTokenList::toggle_with_force(
  self : DOMTokenList,
  token : String,
  force : Bool,
) -> Bool =
  #| (self, token, force) => self.toggle(token, force)

///|
pub extern "js" fn DOMTokenList::replace(
  self : DOMTokenList,
  token : String,
  new_token : String,
) -> Bool =
  #| (self, token, new_token) => self.replace(token, new_token)

///|
pub extern "js" fn DOMTokenList::supports(
  self : DOMTokenList,
  token : String,
) -> Bool =
  #| (self, token) => self.supports(token)

///|
pub extern "js" fn DOMTokenList::get_value(self : DOMTokenList) -> String =
  #| (self) => self.value

///|
pub extern "js" fn DOMTokenList::set_value(
  self : DOMTokenList,
  value : String,
) -> Unit =
  #| (self, value) => { self.value = value }

///|
pub extern "js" fn DOMTokenList::_unknown_(self : DOMTokenList) -> Unit =
  #| (self) => self._unknown_()

///|
/// XPathResult interface
pub type XPathResult

///|
pub extern "js" fn XPathResult::to_js_value(self : XPathResult) -> JsValue =
  #| (self) => self

// XPathResult.ANY_TYPE

///|
pub let x_path_result_any_type : Int = 0

// XPathResult.NUMBER_TYPE

///|
pub let x_path_result_number_type : Int = 1

// XPathResult.STRING_TYPE

///|
pub let x_path_result_string_type : Int = 2

// XPathResult.BOOLEAN_TYPE

///|
pub let x_path_result_boolean_type : Int = 3

// XPathResult.UNORDERED_NODE_ITERATOR_TYPE

///|
pub let x_path_result_unordered_node_iterator_type : Int = 4

// XPathResult.ORDERED_NODE_ITERATOR_TYPE

///|
pub let x_path_result_ordered_node_iterator_type : Int = 5

// XPathResult.UNORDERED_NODE_SNAPSHOT_TYPE

///|
pub let x_path_result_unordered_node_snapshot_type : Int = 6

// XPathResult.ORDERED_NODE_SNAPSHOT_TYPE

///|
pub let x_path_result_ordered_node_snapshot_type : Int = 7

// XPathResult.ANY_UNORDERED_NODE_TYPE

///|
pub let x_path_result_any_unordered_node_type : Int = 8

// XPathResult.FIRST_ORDERED_NODE_TYPE

///|
pub let x_path_result_first_ordered_node_type : Int = 9

///|
pub extern "js" fn XPathResult::get_result_type(self : XPathResult) -> Int =
  #| (self) => self.resultType

///|
pub extern "js" fn XPathResult::get_number_value(self : XPathResult) -> Double =
  #| (self) => self.numberValue

///|
pub extern "js" fn XPathResult::get_string_value(self : XPathResult) -> String =
  #| (self) => self.stringValue

///|
pub extern "js" fn XPathResult::get_boolean_value(self : XPathResult) -> Bool =
  #| (self) => self.booleanValue

///|
pub extern "js" fn XPathResult::get_single_node_value(
  self : XPathResult,
) -> Node? =
  #| (self) => self.singleNodeValue

///|
pub extern "js" fn XPathResult::get_invalid_iterator_state(
  self : XPathResult,
) -> Bool =
  #| (self) => self.invalidIteratorState

///|
pub extern "js" fn XPathResult::get_snapshot_length(self : XPathResult) -> Int =
  #| (self) => self.snapshotLength

///|
pub extern "js" fn XPathResult::iterate_next(self : XPathResult) -> Node? =
  #| (self) => self.iterateNext()

///|
pub extern "js" fn XPathResult::snapshot_item(
  self : XPathResult,
  index : Int,
) -> Node? =
  #| (self, index) => self.snapshotItem(index)

///|
/// XPathExpression interface
pub type XPathExpression

///|
pub extern "js" fn XPathExpression::to_js_value(
  self : XPathExpression,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn XPathExpression::evaluate(
  self : XPathExpression,
  context_node : Node,
) -> XPathResult =
  #| (self, context_node) => self.evaluate(context_node)

///|
pub extern "js" fn XPathExpression::evaluate_with_result(
  self : XPathExpression,
  context_node : Node,
  type_ : Int,
  result : XPathResult?,
) -> XPathResult =
  #| (self, context_node, type_, result) => self.evaluate(context_node, type_, result)

///|
/// XPathEvaluator interface
pub type XPathEvaluator

///|
pub extern "js" fn XPathEvaluator::to_js_value(
  self : XPathEvaluator,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn XPathEvaluator::new() -> XPathEvaluator =
  #| () => new XPathEvaluator()

///|
pub extern "js" fn XPathEvaluator::create_expression(
  self : XPathEvaluator,
  expression : String,
) -> XPathExpression =
  #| (self, expression) => self.createExpression(expression)

///|
pub extern "js" fn XPathEvaluator::create_expression_with_resolver(
  self : XPathEvaluator,
  expression : String,
  resolver : XPathNSResolver?,
) -> XPathExpression =
  #| (self, expression, resolver) => self.createExpression(expression, resolver)

///|
pub extern "js" fn XPathEvaluator::create_n_s_resolver(
  self : XPathEvaluator,
  node_resolver : Node,
) -> Node =
  #| (self, node_resolver) => self.createNSResolver(node_resolver)

///|
pub extern "js" fn XPathEvaluator::evaluate(
  self : XPathEvaluator,
  expression : String,
  context_node : Node,
) -> XPathResult =
  #| (self, expression, context_node) => self.evaluate(expression, context_node)

///|
pub extern "js" fn XPathEvaluator::evaluate_with_result(
  self : XPathEvaluator,
  expression : String,
  context_node : Node,
  resolver : XPathNSResolver?,
  type_ : Int,
  result : XPathResult?,
) -> XPathResult =
  #| (self, expression, context_node, resolver, type_, result) => self.evaluate(expression, context_node, resolver, type_, result)

///|
/// XSLTProcessor interface
pub type XSLTProcessor

///|
pub extern "js" fn XSLTProcessor::to_js_value(self : XSLTProcessor) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn XSLTProcessor::new() -> XSLTProcessor =
  #| () => new XSLTProcessor()

///|
pub extern "js" fn XSLTProcessor::import_stylesheet(
  self : XSLTProcessor,
  style : Node,
) -> Unit =
  #| (self, style) => self.importStylesheet(style)

///|
pub extern "js" fn XSLTProcessor::transform_to_fragment(
  self : XSLTProcessor,
  source : Node,
  output : Document,
) -> DocumentFragment =
  #| (self, source, output) => self.transformToFragment(source, output)

///|
pub extern "js" fn XSLTProcessor::transform_to_document(
  self : XSLTProcessor,
  source : Node,
) -> Document =
  #| (self, source) => self.transformToDocument(source)

///|
pub extern "js" fn XSLTProcessor::set_parameter(
  self : XSLTProcessor,
  namespace_u_r_i : String,
  local_name : String,
  value : JsValue,
) -> Unit =
  #| (self, namespace_u_r_i, local_name, value) => self.setParameter(namespace_u_r_i, local_name, value)

///|
pub extern "js" fn XSLTProcessor::get_parameter(
  self : XSLTProcessor,
  namespace_u_r_i : String,
  local_name : String,
) -> JsValue =
  #| (self, namespace_u_r_i, local_name) => self.getParameter(namespace_u_r_i, local_name)

///|
pub extern "js" fn XSLTProcessor::remove_parameter(
  self : XSLTProcessor,
  namespace_u_r_i : String,
  local_name : String,
) -> Unit =
  #| (self, namespace_u_r_i, local_name) => self.removeParameter(namespace_u_r_i, local_name)

///|
pub extern "js" fn XSLTProcessor::clear_parameters(
  self : XSLTProcessor,
) -> Unit =
  #| (self) => self.clearParameters()

///|
pub extern "js" fn XSLTProcessor::reset(self : XSLTProcessor) -> Unit =
  #| (self) => self.reset()
