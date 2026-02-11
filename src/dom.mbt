// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/dom

///|
/// ShadowRootMode enum
pub(all) enum ShadowRootMode {
  Open
  Closed
} derive(Eq, Show)

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
} derive(Eq, Show)

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
  #| (handler) => (a0) => handler(a0)

///|
/// MutationCallback callback interface
pub type MutationCallback

///|
/// Create MutationCallback from a MoonBit function
pub extern "js" fn MutationCallback::from_fn(
  handler : (Array[MutationRecord], MutationObserver) -> Unit,
) -> MutationCallback =
  #| (handler) => (a0, a1) => handler(a0, a1)

///|
/// NodeFilter callback interface
pub type NodeFilter

///|
/// Create NodeFilter from a MoonBit function
pub extern "js" fn NodeFilter::from_fn(handler : (Node) -> Int) -> NodeFilter =
  #| (handler) => (a0) => handler(a0)

///|
/// XPathNSResolver callback interface
pub type XPathNSResolver

///|
/// Create XPathNSResolver from a MoonBit function
pub extern "js" fn XPathNSResolver::from_fn(
  handler : (String?) -> String?,
) -> XPathNSResolver =
  #| (handler) => (a0) => handler(a0)

///|
/// EventInit dictionary
pub(all) struct EventInit {
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
extern "js" fn EventInit::to_js_ffi(self : EventInit) -> JsValue =
  #| (self) => ({
  #|   bubbles: (self.bubbles === -1 ? undefined : self.bubbles),
  #|   cancelable: (self.cancelable === -1 ? undefined : self.cancelable),
  #|   composed: (self.composed === -1 ? undefined : self.composed)
  #| })

///|
/// Convert to JsValue
pub fn EventInit::to_js(self : EventInit) -> JsValue {
  EventInit::to_js_ffi(self)
}

///|
extern "js" fn EventInit::from_js_ffi(value : JsValue) -> EventInit =
  #| (v) => ({
  #|   bubbles: (v.bubbles === undefined ? -1 : v.bubbles),
  #|   cancelable: (v.cancelable === undefined ? -1 : v.cancelable),
  #|   composed: (v.composed === undefined ? -1 : v.composed)
  #| })

///|
/// Convert from JsValue
pub fn EventInit::from_js(value : JsValue) -> EventInit {
  EventInit::from_js_ffi(value)
}

///|
/// CustomEventInit dictionary
pub(all) struct CustomEventInit {
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
extern "js" fn CustomEventInit::to_js_ffi(self : CustomEventInit) -> JsValue =
  #| (self) => ({
  #|   bubbles: (self.bubbles === -1 ? undefined : self.bubbles),
  #|   cancelable: (self.cancelable === -1 ? undefined : self.cancelable),
  #|   composed: (self.composed === -1 ? undefined : self.composed),
  #|   detail: ((() => { const v = self.detail; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn CustomEventInit::to_js(self : CustomEventInit) -> JsValue {
  CustomEventInit::to_js_ffi(self)
}

///|
extern "js" fn CustomEventInit::from_js_ffi(value : JsValue) -> CustomEventInit =
  #| (v) => ({
  #|   bubbles: (v.bubbles === undefined ? -1 : v.bubbles),
  #|   cancelable: (v.cancelable === undefined ? -1 : v.cancelable),
  #|   composed: (v.composed === undefined ? -1 : v.composed),
  #|   detail: (v.detail === undefined ? { $tag: 0 } : { $tag: 1, _0: v.detail })
  #| })

///|
/// Convert from JsValue
pub fn CustomEventInit::from_js(value : JsValue) -> CustomEventInit {
  CustomEventInit::from_js_ffi(value)
}

///|
/// EventListenerOptions dictionary
pub(all) struct EventListenerOptions {
  capture : Bool?
}

///|
/// Create a new EventListenerOptions with default values
pub fn EventListenerOptions::default() -> EventListenerOptions {
  EventListenerOptions::{ capture: None }
}

///|
extern "js" fn EventListenerOptions::to_js_ffi(
  self : EventListenerOptions,
) -> JsValue =
  #| (self) => ({
  #|   capture: (self.capture === -1 ? undefined : self.capture)
  #| })

///|
/// Convert to JsValue
pub fn EventListenerOptions::to_js(self : EventListenerOptions) -> JsValue {
  EventListenerOptions::to_js_ffi(self)
}

///|
extern "js" fn EventListenerOptions::from_js_ffi(
  value : JsValue,
) -> EventListenerOptions =
  #| (v) => ({
  #|   capture: (v.capture === undefined ? -1 : v.capture)
  #| })

///|
/// Convert from JsValue
pub fn EventListenerOptions::from_js(value : JsValue) -> EventListenerOptions {
  EventListenerOptions::from_js_ffi(value)
}

///|
/// AddEventListenerOptions dictionary
pub(all) struct AddEventListenerOptions {
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
extern "js" fn AddEventListenerOptions::to_js_ffi(
  self : AddEventListenerOptions,
) -> JsValue =
  #| (self) => ({
  #|   capture: (self.capture === -1 ? undefined : self.capture),
  #|   passive: (self.passive === -1 ? undefined : self.passive),
  #|   once: (self.once === -1 ? undefined : self.once),
  #|   signal: ((() => { const v = self.signal; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn AddEventListenerOptions::to_js(
  self : AddEventListenerOptions,
) -> JsValue {
  AddEventListenerOptions::to_js_ffi(self)
}

///|
extern "js" fn AddEventListenerOptions::from_js_ffi(
  value : JsValue,
) -> AddEventListenerOptions =
  #| (v) => ({
  #|   capture: (v.capture === undefined ? -1 : v.capture),
  #|   passive: (v.passive === undefined ? -1 : v.passive),
  #|   once: (v.once === undefined ? -1 : v.once),
  #|   signal: (v.signal === undefined ? { $tag: 0 } : { $tag: 1, _0: v.signal })
  #| })

///|
/// Convert from JsValue
pub fn AddEventListenerOptions::from_js(
  value : JsValue,
) -> AddEventListenerOptions {
  AddEventListenerOptions::from_js_ffi(value)
}

///|
/// MutationObserverInit dictionary
pub(all) struct MutationObserverInit {
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
extern "js" fn MutationObserverInit::to_js_ffi(
  self : MutationObserverInit,
) -> JsValue =
  #| (self) => ({
  #|   childList: (self.childList === -1 ? undefined : self.childList),
  #|   attributes: (self.attributes === -1 ? undefined : self.attributes),
  #|   characterData: (self.characterData === -1 ? undefined : self.characterData),
  #|   subtree: (self.subtree === -1 ? undefined : self.subtree),
  #|   attributeOldValue: (self.attributeOldValue === -1 ? undefined : self.attributeOldValue),
  #|   characterDataOldValue: (self.characterDataOldValue === -1 ? undefined : self.characterDataOldValue),
  #|   attributeFilter: ((() => { const v = self.attributeFilter; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MutationObserverInit::to_js(self : MutationObserverInit) -> JsValue {
  MutationObserverInit::to_js_ffi(self)
}

///|
extern "js" fn MutationObserverInit::from_js_ffi(
  value : JsValue,
) -> MutationObserverInit =
  #| (v) => ({
  #|   childList: (v.childList === undefined ? -1 : v.childList),
  #|   attributes: (v.attributes === undefined ? -1 : v.attributes),
  #|   characterData: (v.characterData === undefined ? -1 : v.characterData),
  #|   subtree: (v.subtree === undefined ? -1 : v.subtree),
  #|   attributeOldValue: (v.attributeOldValue === undefined ? -1 : v.attributeOldValue),
  #|   characterDataOldValue: (v.characterDataOldValue === undefined ? -1 : v.characterDataOldValue),
  #|   attributeFilter: (v.attributeFilter === undefined ? { $tag: 0 } : { $tag: 1, _0: v.attributeFilter })
  #| })

///|
/// Convert from JsValue
pub fn MutationObserverInit::from_js(value : JsValue) -> MutationObserverInit {
  MutationObserverInit::from_js_ffi(value)
}

///|
/// GetRootNodeOptions dictionary
pub(all) struct GetRootNodeOptions {
  composed : Bool?
}

///|
/// Create a new GetRootNodeOptions with default values
pub fn GetRootNodeOptions::default() -> GetRootNodeOptions {
  GetRootNodeOptions::{ composed: None }
}

///|
extern "js" fn GetRootNodeOptions::to_js_ffi(
  self : GetRootNodeOptions,
) -> JsValue =
  #| (self) => ({
  #|   composed: (self.composed === -1 ? undefined : self.composed)
  #| })

///|
/// Convert to JsValue
pub fn GetRootNodeOptions::to_js(self : GetRootNodeOptions) -> JsValue {
  GetRootNodeOptions::to_js_ffi(self)
}

///|
extern "js" fn GetRootNodeOptions::from_js_ffi(
  value : JsValue,
) -> GetRootNodeOptions =
  #| (v) => ({
  #|   composed: (v.composed === undefined ? -1 : v.composed)
  #| })

///|
/// Convert from JsValue
pub fn GetRootNodeOptions::from_js(value : JsValue) -> GetRootNodeOptions {
  GetRootNodeOptions::from_js_ffi(value)
}

///|
/// ElementCreationOptions dictionary
pub(all) struct ElementCreationOptions {
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
extern "js" fn ElementCreationOptions::to_js_ffi(
  self : ElementCreationOptions,
) -> JsValue =
  #| (self) => ({
  #|   customElementRegistry: ((() => { const v = self.customElementRegistry; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   is: self.is_
  #| })

///|
/// Convert to JsValue
pub fn ElementCreationOptions::to_js(self : ElementCreationOptions) -> JsValue {
  ElementCreationOptions::to_js_ffi(self)
}

///|
extern "js" fn ElementCreationOptions::from_js_ffi(
  value : JsValue,
) -> ElementCreationOptions =
  #| (v) => ({
  #|   customElementRegistry: (v.customElementRegistry === undefined ? { $tag: 0 } : v.customElementRegistry === null ? { $tag: 1 } : { $tag: 2, _0: v.customElementRegistry }),
  #|   is_: v.is
  #| })

///|
/// Convert from JsValue
pub fn ElementCreationOptions::from_js(
  value : JsValue,
) -> ElementCreationOptions {
  ElementCreationOptions::from_js_ffi(value)
}

///|
/// ImportNodeOptions dictionary
pub(all) struct ImportNodeOptions {
  customElementRegistry : CustomElementRegistry?
  selfOnly : Bool?
}

///|
/// Create a new ImportNodeOptions with default values
pub fn ImportNodeOptions::default() -> ImportNodeOptions {
  ImportNodeOptions::{ customElementRegistry: None, selfOnly: None }
}

///|
extern "js" fn ImportNodeOptions::to_js_ffi(
  self : ImportNodeOptions,
) -> JsValue =
  #| (self) => ({
  #|   customElementRegistry: ((() => { const v = self.customElementRegistry; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   selfOnly: (self.selfOnly === -1 ? undefined : self.selfOnly)
  #| })

///|
/// Convert to JsValue
pub fn ImportNodeOptions::to_js(self : ImportNodeOptions) -> JsValue {
  ImportNodeOptions::to_js_ffi(self)
}

///|
extern "js" fn ImportNodeOptions::from_js_ffi(
  value : JsValue,
) -> ImportNodeOptions =
  #| (v) => ({
  #|   customElementRegistry: (v.customElementRegistry === undefined ? { $tag: 0 } : { $tag: 1, _0: v.customElementRegistry }),
  #|   selfOnly: (v.selfOnly === undefined ? -1 : v.selfOnly)
  #| })

///|
/// Convert from JsValue
pub fn ImportNodeOptions::from_js(value : JsValue) -> ImportNodeOptions {
  ImportNodeOptions::from_js_ffi(value)
}

///|
/// ShadowRootInit dictionary
pub(all) struct ShadowRootInit {
  mode : ShadowRootMode
  delegatesFocus : Bool?
  slotAssignment : SlotAssignmentMode?
  clonable : Bool?
  serializable : Bool?
  customElementRegistry : Nullable[CustomElementRegistry]
}

///|
/// Create a new ShadowRootInit
pub fn ShadowRootInit::new(mode~ : ShadowRootMode) -> ShadowRootInit {
  ShadowRootInit::{
    mode,
    delegatesFocus: None,
    slotAssignment: None,
    clonable: None,
    serializable: None,
    customElementRegistry: Nullable::Undefined,
  }
}

///|
extern "js" fn ShadowRootInit::to_js_ffi(self : ShadowRootInit) -> JsValue =
  #| (self) => ({
  #|   mode: ['open', 'closed'][self.mode],
  #|   delegatesFocus: (self.delegatesFocus === -1 ? undefined : self.delegatesFocus),
  #|   slotAssignment: ((() => { const v = self.slotAssignment; if (v === undefined) return undefined; return ['manual', 'named'][v]; })()),
  #|   clonable: (self.clonable === -1 ? undefined : self.clonable),
  #|   serializable: (self.serializable === -1 ? undefined : self.serializable),
  #|   customElementRegistry: ((() => { const v = self.customElementRegistry; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn ShadowRootInit::to_js(self : ShadowRootInit) -> JsValue {
  ShadowRootInit::to_js_ffi(self)
}

///|
extern "js" fn ShadowRootInit::from_js_ffi(value : JsValue) -> ShadowRootInit =
  #| (v) => ({
  #|   mode: ['open', 'closed'].indexOf(v.mode),
  #|   delegatesFocus: (v.delegatesFocus === undefined ? -1 : v.delegatesFocus),
  #|   slotAssignment: (v.slotAssignment === undefined ? undefined : ['manual', 'named'].indexOf(v.slotAssignment)),
  #|   clonable: (v.clonable === undefined ? -1 : v.clonable),
  #|   serializable: (v.serializable === undefined ? -1 : v.serializable),
  #|   customElementRegistry: (v.customElementRegistry === undefined ? { $tag: 0 } : v.customElementRegistry === null ? { $tag: 1 } : { $tag: 2, _0: v.customElementRegistry })
  #| })

///|
/// Convert from JsValue
pub fn ShadowRootInit::from_js(value : JsValue) -> ShadowRootInit {
  ShadowRootInit::from_js_ffi(value)
}

///|
/// StaticRangeInit dictionary
pub(all) struct StaticRangeInit {
  startContainer : Node
  startOffset : Int
  endContainer : Node
  endOffset : Int
}

///|
/// Create a new StaticRangeInit
pub fn StaticRangeInit::new(
  startContainer~ : Node,
  endContainer~ : Node,
) -> StaticRangeInit {
  StaticRangeInit::{
    startContainer,
    startOffset: 0,
    endContainer,
    endOffset: 0,
  }
}

///|
extern "js" fn StaticRangeInit::to_js_ffi(self : StaticRangeInit) -> JsValue =
  #| (self) => ({
  #|   startContainer: self.startContainer,
  #|   startOffset: self.startOffset,
  #|   endContainer: self.endContainer,
  #|   endOffset: self.endOffset
  #| })

///|
/// Convert to JsValue
pub fn StaticRangeInit::to_js(self : StaticRangeInit) -> JsValue {
  StaticRangeInit::to_js_ffi(self)
}

///|
extern "js" fn StaticRangeInit::from_js_ffi(value : JsValue) -> StaticRangeInit =
  #| (v) => ({
  #|   startContainer: v.startContainer,
  #|   startOffset: v.startOffset,
  #|   endContainer: v.endContainer,
  #|   endOffset: v.endOffset
  #| })

///|
/// Convert from JsValue
pub fn StaticRangeInit::from_js(value : JsValue) -> StaticRangeInit {
  StaticRangeInit::from_js_ffi(value)
}

///|
/// Event interface
pub type Event

///|
pub extern "js" fn Event::to_js_value(self : Event) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Event (unchecked)
pub extern "js" fn Event::from_js_value(v : JsValue) -> Event =
  #| (v) => v

///|
/// Safely cast JsValue to Event (checked with instanceof)
pub extern "js" fn Event::from_js_value_opt(v : JsValue) -> Event? =
  #| (v) => (v instanceof Event) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Event (checked with instanceof)
pub extern "js" fn JsValue::as_event(self : JsValue) -> Event? =
  #| (self) => (self instanceof Event) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Event (unchecked)
pub extern "js" fn JsValue::to_event(self : JsValue) -> Event =
  #| (self) => self

///|
pub extern "js" fn Event::as_time_event(self : Event) -> TimeEvent? =
  #| (self) => (self instanceof TimeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_clipboard_event(self : Event) -> ClipboardEvent? =
  #| (self) => (self instanceof ClipboardEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_clipboard_change_event(
  self : Event,
) -> ClipboardChangeEvent? =
  #| (self) => (self instanceof ClipboardChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_sensor_error_event(
  self : Event,
) -> SensorErrorEvent? =
  #| (self) => (self instanceof SensorErrorEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_value_event(self : Event) -> ValueEvent? =
  #| (self) => (self instanceof ValueEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_bluetooth_advertising_event(
  self : Event,
) -> BluetoothAdvertisingEvent? =
  #| (self) => (self instanceof BluetoothAdvertisingEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_task_priority_change_event(
  self : Event,
) -> TaskPriorityChangeEvent? =
  #| (self) => (self instanceof TaskPriorityChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_s_frame_transform_error_event(
  self : Event,
) -> SFrameTransformErrorEvent? =
  #| (self) => (self instanceof SFrameTransformErrorEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_rtc_transform_event(
  self : Event,
) -> RTCTransformEvent? =
  #| (self) => (self instanceof RTCTransformEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_key_frame_request_event(
  self : Event,
) -> KeyFrameRequestEvent? =
  #| (self) => (self instanceof KeyFrameRequestEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_content_visibility_auto_state_change_event(
  self : Event,
) -> ContentVisibilityAutoStateChangeEvent? =
  #| (self) => (self instanceof ContentVisibilityAutoStateChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_close_event(self : Event) -> CloseEvent? =
  #| (self) => (self instanceof CloseEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_media_query_list_event(
  self : Event,
) -> MediaQueryListEvent? =
  #| (self) => (self instanceof MediaQueryListEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_push_event(self : Event) -> PushEvent? =
  #| (self) => (self instanceof PushEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_push_subscription_change_event(
  self : Event,
) -> PushSubscriptionChangeEvent? =
  #| (self) => (self instanceof PushSubscriptionChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_midi_message_event(
  self : Event,
) -> MIDIMessageEvent? =
  #| (self) => (self instanceof MIDIMessageEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_midi_connection_event(
  self : Event,
) -> MIDIConnectionEvent? =
  #| (self) => (self instanceof MIDIConnectionEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_capture_action_event(
  self : Event,
) -> CaptureActionEvent? =
  #| (self) => (self instanceof CaptureActionEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_media_stream_track_event(
  self : Event,
) -> MediaStreamTrackEvent? =
  #| (self) => (self instanceof MediaStreamTrackEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_device_change_event(
  self : Event,
) -> DeviceChangeEvent? =
  #| (self) => (self instanceof DeviceChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_track_event(self : Event) -> TrackEvent? =
  #| (self) => (self instanceof TrackEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_submit_event(self : Event) -> SubmitEvent? =
  #| (self) => (self instanceof SubmitEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_form_data_event(self : Event) -> FormDataEvent? =
  #| (self) => (self instanceof FormDataEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_toggle_event(self : Event) -> ToggleEvent? =
  #| (self) => (self instanceof ToggleEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_command_event(self : Event) -> CommandEvent? =
  #| (self) => (self instanceof CommandEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_drag_event(self : Event) -> DragEvent? =
  #| (self) => (self instanceof DragEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_navigate_event(self : Event) -> NavigateEvent? =
  #| (self) => (self instanceof NavigateEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_navigation_current_entry_change_event(
  self : Event,
) -> NavigationCurrentEntryChangeEvent? =
  #| (self) => (self instanceof NavigationCurrentEntryChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_pop_state_event(self : Event) -> PopStateEvent? =
  #| (self) => (self instanceof PopStateEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_hash_change_event(
  self : Event,
) -> HashChangeEvent? =
  #| (self) => (self instanceof HashChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_page_swap_event(self : Event) -> PageSwapEvent? =
  #| (self) => (self instanceof PageSwapEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_page_reveal_event(
  self : Event,
) -> PageRevealEvent? =
  #| (self) => (self instanceof PageRevealEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_page_transition_event(
  self : Event,
) -> PageTransitionEvent? =
  #| (self) => (self instanceof PageTransitionEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_before_unload_event(
  self : Event,
) -> BeforeUnloadEvent? =
  #| (self) => (self instanceof BeforeUnloadEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_error_event(self : Event) -> ErrorEvent? =
  #| (self) => (self instanceof ErrorEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_promise_rejection_event(
  self : Event,
) -> PromiseRejectionEvent? =
  #| (self) => (self instanceof PromiseRejectionEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_message_event(self : Event) -> MessageEvent? =
  #| (self) => (self instanceof MessageEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_storage_event(self : Event) -> StorageEvent? =
  #| (self) => (self instanceof StorageEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_portal_activate_event(
  self : Event,
) -> PortalActivateEvent? =
  #| (self) => (self instanceof PortalActivateEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_touch_event(self : Event) -> TouchEvent? =
  #| (self) => (self instanceof TouchEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_animation_playback_event(
  self : Event,
) -> AnimationPlaybackEvent? =
  #| (self) => (self instanceof AnimationPlaybackEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_media_key_message_event(
  self : Event,
) -> MediaKeyMessageEvent? =
  #| (self) => (self instanceof MediaKeyMessageEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_media_encrypted_event(
  self : Event,
) -> MediaEncryptedEvent? =
  #| (self) => (self instanceof MediaEncryptedEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_notification_event(
  self : Event,
) -> NotificationEvent? =
  #| (self) => (self instanceof NotificationEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_transition_event(self : Event) -> TransitionEvent? =
  #| (self) => (self instanceof TransitionEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_web_gl_context_event(
  self : Event,
) -> WebGLContextEvent? =
  #| (self) => (self instanceof WebGLContextEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_snap_event(self : Event) -> SnapEvent? =
  #| (self) => (self instanceof SnapEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_before_install_prompt_event(
  self : Event,
) -> BeforeInstallPromptEvent? =
  #| (self) => (self instanceof BeforeInstallPromptEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_window_controls_overlay_geometry_change_event(
  self : Event,
) -> WindowControlsOverlayGeometryChangeEvent? =
  #| (self) => (self instanceof WindowControlsOverlayGeometryChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_navigation_event(self : Event) -> NavigationEvent? =
  #| (self) => (self instanceof NavigationEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_progress_event(self : Event) -> ProgressEvent? =
  #| (self) => (self instanceof ProgressEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_custom_event(self : Event) -> CustomEvent? =
  #| (self) => (self instanceof CustomEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_can_make_payment_event(
  self : Event,
) -> CanMakePaymentEvent? =
  #| (self) => (self instanceof CanMakePaymentEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_payment_request_event(
  self : Event,
) -> PaymentRequestEvent? =
  #| (self) => (self instanceof PaymentRequestEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_idb_version_change_event(
  self : Event,
) -> IDBVersionChangeEvent? =
  #| (self) => (self instanceof IDBVersionChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_usb_connection_event(
  self : Event,
) -> USBConnectionEvent? =
  #| (self) => (self instanceof USBConnectionEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_font_face_set_load_event(
  self : Event,
) -> FontFaceSetLoadEvent? =
  #| (self) => (self instanceof FontFaceSetLoadEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_xr_session_event(self : Event) -> XRSessionEvent? =
  #| (self) => (self instanceof XRSessionEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_xr_input_source_event(
  self : Event,
) -> XRInputSourceEvent? =
  #| (self) => (self instanceof XRInputSourceEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_xr_input_sources_change_event(
  self : Event,
) -> XRInputSourcesChangeEvent? =
  #| (self) => (self instanceof XRInputSourcesChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_xr_reference_space_event(
  self : Event,
) -> XRReferenceSpaceEvent? =
  #| (self) => (self instanceof XRReferenceSpaceEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_xr_visibility_mask_change_event(
  self : Event,
) -> XRVisibilityMaskChangeEvent? =
  #| (self) => (self instanceof XRVisibilityMaskChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_speech_recognition_error_event(
  self : Event,
) -> SpeechRecognitionErrorEvent? =
  #| (self) => (self instanceof SpeechRecognitionErrorEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_speech_recognition_event(
  self : Event,
) -> SpeechRecognitionEvent? =
  #| (self) => (self instanceof SpeechRecognitionEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_speech_synthesis_event(
  self : Event,
) -> SpeechSynthesisEvent? =
  #| (self) => (self instanceof SpeechSynthesisEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_speech_synthesis_error_event(
  self : Event,
) -> SpeechSynthesisErrorEvent? =
  #| (self) => (self instanceof SpeechSynthesisErrorEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_offline_audio_completion_event(
  self : Event,
) -> OfflineAudioCompletionEvent? =
  #| (self) => (self instanceof OfflineAudioCompletionEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_audio_processing_event(
  self : Event,
) -> AudioProcessingEvent? =
  #| (self) => (self instanceof AudioProcessingEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_animation_event(self : Event) -> AnimationEvent? =
  #| (self) => (self instanceof AnimationEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_hid_connection_event(
  self : Event,
) -> HIDConnectionEvent? =
  #| (self) => (self instanceof HIDConnectionEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_hid_input_report_event(
  self : Event,
) -> HIDInputReportEvent? =
  #| (self) => (self instanceof HIDInputReportEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_text_update_event(
  self : Event,
) -> TextUpdateEvent? =
  #| (self) => (self instanceof TextUpdateEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_text_format_update_event(
  self : Event,
) -> TextFormatUpdateEvent? =
  #| (self) => (self instanceof TextFormatUpdateEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_character_bounds_update_event(
  self : Event,
) -> CharacterBoundsUpdateEvent? =
  #| (self) => (self instanceof CharacterBoundsUpdateEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_rtc_peer_connection_ice_event(
  self : Event,
) -> RTCPeerConnectionIceEvent? =
  #| (self) => (self instanceof RTCPeerConnectionIceEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_rtc_peer_connection_ice_error_event(
  self : Event,
) -> RTCPeerConnectionIceErrorEvent? =
  #| (self) => (self instanceof RTCPeerConnectionIceErrorEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_rtc_track_event(self : Event) -> RTCTrackEvent? =
  #| (self) => (self instanceof RTCTrackEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_rtc_data_channel_event(
  self : Event,
) -> RTCDataChannelEvent? =
  #| (self) => (self instanceof RTCDataChannelEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_rtcdtmf_tone_change_event(
  self : Event,
) -> RTCDTMFToneChangeEvent? =
  #| (self) => (self instanceof RTCDTMFToneChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_rtc_error_event(self : Event) -> RTCErrorEvent? =
  #| (self) => (self instanceof RTCErrorEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_sync_event(self : Event) -> SyncEvent? =
  #| (self) => (self instanceof SyncEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_captured_mouse_event(
  self : Event,
) -> CapturedMouseEvent? =
  #| (self) => (self instanceof CapturedMouseEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_extendable_event(self : Event) -> ExtendableEvent? =
  #| (self) => (self instanceof ExtendableEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_install_event(self : Event) -> InstallEvent? =
  #| (self) => (self instanceof InstallEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_fetch_event(self : Event) -> FetchEvent? =
  #| (self) => (self instanceof FetchEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_extendable_message_event(
  self : Event,
) -> ExtendableMessageEvent? =
  #| (self) => (self instanceof ExtendableMessageEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_picture_in_picture_event(
  self : Event,
) -> PictureInPictureEvent? =
  #| (self) => (self instanceof PictureInPictureEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_security_policy_violation_event(
  self : Event,
) -> SecurityPolicyViolationEvent? =
  #| (self) => (self instanceof SecurityPolicyViolationEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_cookie_change_event(
  self : Event,
) -> CookieChangeEvent? =
  #| (self) => (self instanceof CookieChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_extendable_cookie_change_event(
  self : Event,
) -> ExtendableCookieChangeEvent? =
  #| (self) => (self instanceof ExtendableCookieChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_gamepad_event(self : Event) -> GamepadEvent? =
  #| (self) => (self instanceof GamepadEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_ui_event(self : Event) -> UIEvent? =
  #| (self) => (self instanceof UIEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_focus_event(self : Event) -> FocusEvent? =
  #| (self) => (self instanceof FocusEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_mouse_event(self : Event) -> MouseEvent? =
  #| (self) => (self instanceof MouseEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_wheel_event(self : Event) -> WheelEvent? =
  #| (self) => (self instanceof WheelEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_input_event(self : Event) -> InputEvent? =
  #| (self) => (self instanceof InputEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_keyboard_event(self : Event) -> KeyboardEvent? =
  #| (self) => (self instanceof KeyboardEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_composition_event(
  self : Event,
) -> CompositionEvent? =
  #| (self) => (self instanceof CompositionEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_text_event(self : Event) -> TextEvent? =
  #| (self) => (self instanceof TextEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_device_orientation_event(
  self : Event,
) -> DeviceOrientationEvent? =
  #| (self) => (self instanceof DeviceOrientationEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_device_motion_event(
  self : Event,
) -> DeviceMotionEvent? =
  #| (self) => (self instanceof DeviceMotionEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_ndef_reading_event(
  self : Event,
) -> NDEFReadingEvent? =
  #| (self) => (self instanceof NDEFReadingEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_gpu_uncaptured_error_event(
  self : Event,
) -> GPUUncapturedErrorEvent? =
  #| (self) => (self instanceof GPUUncapturedErrorEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_blob_event(self : Event) -> BlobEvent? =
  #| (self) => (self instanceof BlobEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_buffered_change_event(
  self : Event,
) -> BufferedChangeEvent? =
  #| (self) => (self instanceof BufferedChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_pointer_event(self : Event) -> PointerEvent? =
  #| (self) => (self instanceof PointerEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_periodic_sync_event(
  self : Event,
) -> PeriodicSyncEvent? =
  #| (self) => (self instanceof PeriodicSyncEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_presentation_connection_available_event(
  self : Event,
) -> PresentationConnectionAvailableEvent? =
  #| (self) => (self instanceof PresentationConnectionAvailableEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_presentation_connection_close_event(
  self : Event,
) -> PresentationConnectionCloseEvent? =
  #| (self) => (self instanceof PresentationConnectionCloseEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_payment_method_change_event(
  self : Event,
) -> PaymentMethodChangeEvent? =
  #| (self) => (self instanceof PaymentMethodChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_payment_request_update_event(
  self : Event,
) -> PaymentRequestUpdateEvent? =
  #| (self) => (self instanceof PaymentRequestUpdateEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_document_picture_in_picture_event(
  self : Event,
) -> DocumentPictureInPictureEvent? =
  #| (self) => (self instanceof DocumentPictureInPictureEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_content_index_event(
  self : Event,
) -> ContentIndexEvent? =
  #| (self) => (self instanceof ContentIndexEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_background_fetch_event(
  self : Event,
) -> BackgroundFetchEvent? =
  #| (self) => (self instanceof BackgroundFetchEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_background_fetch_update_ui_event(
  self : Event,
) -> BackgroundFetchUpdateUIEvent? =
  #| (self) => (self instanceof BackgroundFetchUpdateUIEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::as_xr_layer_event(self : Event) -> XRLayerEvent? =
  #| (self) => (self instanceof XRLayerEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Event::new(type_ : String) -> Event =
  #| (type_) => new Event(type_)

///|
extern "js" fn Event::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> Event =
  #| (type_, event_init_dict) => new Event(type_, event_init_dict)

///|
pub fn Event::new_with_event_init_dict(
  type_ : String,
  event_init_dict : EventInit,
) -> Event {
  Event::new_with_event_init_dict_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn Event::get_type(self : Event) -> String =
  #| (self) => self.type

///|
pub extern "js" fn Event::get_target(self : Event) -> EventTarget? =
  #| (self) => (() => { const v = self.target; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Event::get_src_element(self : Event) -> EventTarget? =
  #| (self) => (() => { const v = self.srcElement; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Event::get_current_target(self : Event) -> EventTarget? =
  #| (self) => (() => { const v = self.currentTarget; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

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
/// Cast JsValue to CustomEvent (unchecked)
pub extern "js" fn CustomEvent::from_js_value(v : JsValue) -> CustomEvent =
  #| (v) => v

///|
/// Safely cast JsValue to CustomEvent (checked with instanceof)
pub extern "js" fn CustomEvent::from_js_value_opt(v : JsValue) -> CustomEvent? =
  #| (v) => (v instanceof CustomEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CustomEvent (checked with instanceof)
pub extern "js" fn JsValue::as_custom_event(self : JsValue) -> CustomEvent? =
  #| (self) => (self instanceof CustomEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CustomEvent (unchecked)
pub extern "js" fn JsValue::to_custom_event(self : JsValue) -> CustomEvent =
  #| (self) => self

///|
pub extern "js" fn CustomEvent::to_event(self : CustomEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn CustomEvent::new(type_ : String) -> CustomEvent =
  #| (type_) => new CustomEvent(type_)

///|
extern "js" fn CustomEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> CustomEvent =
  #| (type_, event_init_dict) => new CustomEvent(type_, event_init_dict)

///|
pub fn CustomEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : CustomEventInit,
) -> CustomEvent {
  CustomEvent::new_with_event_init_dict_ffi(type_, event_init_dict.to_js())
}

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
/// Cast JsValue to EventTarget (unchecked)
pub extern "js" fn EventTarget::from_js_value(v : JsValue) -> EventTarget =
  #| (v) => v

///|
/// Safely cast JsValue to EventTarget (checked with instanceof)
pub extern "js" fn EventTarget::from_js_value_opt(v : JsValue) -> EventTarget? =
  #| (v) => (v instanceof EventTarget) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to EventTarget (checked with instanceof)
pub extern "js" fn JsValue::as_event_target(self : JsValue) -> EventTarget? =
  #| (self) => (self instanceof EventTarget) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to EventTarget (unchecked)
pub extern "js" fn JsValue::to_event_target(self : JsValue) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn EventTarget::as_svg_animation_element(
  self : EventTarget,
) -> SVGAnimationElement? =
  #| (self) => (self instanceof SVGAnimationElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_animate_element(
  self : EventTarget,
) -> SVGAnimateElement? =
  #| (self) => (self instanceof SVGAnimateElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_set_element(
  self : EventTarget,
) -> SVGSetElement? =
  #| (self) => (self instanceof SVGSetElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_animate_motion_element(
  self : EventTarget,
) -> SVGAnimateMotionElement? =
  #| (self) => (self instanceof SVGAnimateMotionElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svgm_path_element(
  self : EventTarget,
) -> SVGMPathElement? =
  #| (self) => (self instanceof SVGMPathElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_animate_transform_element(
  self : EventTarget,
) -> SVGAnimateTransformElement? =
  #| (self) => (self instanceof SVGAnimateTransformElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_worklet_animation(
  self : EventTarget,
) -> WorkletAnimation? =
  #| (self) => (self instanceof WorkletAnimation) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_clip_path_element(
  self : EventTarget,
) -> SVGClipPathElement? =
  #| (self) => (self instanceof SVGClipPathElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_mask_element(
  self : EventTarget,
) -> SVGMaskElement? =
  #| (self) => (self instanceof SVGMaskElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_screen_orientation(
  self : EventTarget,
) -> ScreenOrientation? =
  #| (self) => (self instanceof ScreenOrientation) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_clipboard(self : EventTarget) -> Clipboard? =
  #| (self) => (self instanceof Clipboard) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_xr_body_space(
  self : EventTarget,
) -> XRBodySpace? =
  #| (self) => (self instanceof XRBodySpace) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_profiler(self : EventTarget) -> Profiler? =
  #| (self) => (self instanceof Profiler) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_sensor(self : EventTarget) -> Sensor? =
  #| (self) => (self instanceof Sensor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_filter_element(
  self : EventTarget,
) -> SVGFilterElement? =
  #| (self) => (self instanceof SVGFilterElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svgfe_blend_element(
  self : EventTarget,
) -> SVGFEBlendElement? =
  #| (self) => (self instanceof SVGFEBlendElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svgfe_color_matrix_element(
  self : EventTarget,
) -> SVGFEColorMatrixElement? =
  #| (self) => (self instanceof SVGFEColorMatrixElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svgfe_component_transfer_element(
  self : EventTarget,
) -> SVGFEComponentTransferElement? =
  #| (self) => (self instanceof SVGFEComponentTransferElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_component_transfer_function_element(
  self : EventTarget,
) -> SVGComponentTransferFunctionElement? =
  #| (self) => (self instanceof SVGComponentTransferFunctionElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svgfe_func_r_element(
  self : EventTarget,
) -> SVGFEFuncRElement? =
  #| (self) => (self instanceof SVGFEFuncRElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svgfe_func_g_element(
  self : EventTarget,
) -> SVGFEFuncGElement? =
  #| (self) => (self instanceof SVGFEFuncGElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svgfe_func_b_element(
  self : EventTarget,
) -> SVGFEFuncBElement? =
  #| (self) => (self instanceof SVGFEFuncBElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svgfe_func_a_element(
  self : EventTarget,
) -> SVGFEFuncAElement? =
  #| (self) => (self instanceof SVGFEFuncAElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svgfe_composite_element(
  self : EventTarget,
) -> SVGFECompositeElement? =
  #| (self) => (self instanceof SVGFECompositeElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svgfe_convolve_matrix_element(
  self : EventTarget,
) -> SVGFEConvolveMatrixElement? =
  #| (self) => (self instanceof SVGFEConvolveMatrixElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svgfe_diffuse_lighting_element(
  self : EventTarget,
) -> SVGFEDiffuseLightingElement? =
  #| (self) => (self instanceof SVGFEDiffuseLightingElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svgfe_distant_light_element(
  self : EventTarget,
) -> SVGFEDistantLightElement? =
  #| (self) => (self instanceof SVGFEDistantLightElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svgfe_point_light_element(
  self : EventTarget,
) -> SVGFEPointLightElement? =
  #| (self) => (self instanceof SVGFEPointLightElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svgfe_spot_light_element(
  self : EventTarget,
) -> SVGFESpotLightElement? =
  #| (self) => (self instanceof SVGFESpotLightElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svgfe_displacement_map_element(
  self : EventTarget,
) -> SVGFEDisplacementMapElement? =
  #| (self) => (self instanceof SVGFEDisplacementMapElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svgfe_drop_shadow_element(
  self : EventTarget,
) -> SVGFEDropShadowElement? =
  #| (self) => (self instanceof SVGFEDropShadowElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svgfe_flood_element(
  self : EventTarget,
) -> SVGFEFloodElement? =
  #| (self) => (self instanceof SVGFEFloodElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svgfe_gaussian_blur_element(
  self : EventTarget,
) -> SVGFEGaussianBlurElement? =
  #| (self) => (self instanceof SVGFEGaussianBlurElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svgfe_image_element(
  self : EventTarget,
) -> SVGFEImageElement? =
  #| (self) => (self instanceof SVGFEImageElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svgfe_merge_element(
  self : EventTarget,
) -> SVGFEMergeElement? =
  #| (self) => (self instanceof SVGFEMergeElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svgfe_merge_node_element(
  self : EventTarget,
) -> SVGFEMergeNodeElement? =
  #| (self) => (self instanceof SVGFEMergeNodeElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svgfe_morphology_element(
  self : EventTarget,
) -> SVGFEMorphologyElement? =
  #| (self) => (self instanceof SVGFEMorphologyElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svgfe_offset_element(
  self : EventTarget,
) -> SVGFEOffsetElement? =
  #| (self) => (self instanceof SVGFEOffsetElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svgfe_specular_lighting_element(
  self : EventTarget,
) -> SVGFESpecularLightingElement? =
  #| (self) => (self instanceof SVGFESpecularLightingElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svgfe_tile_element(
  self : EventTarget,
) -> SVGFETileElement? =
  #| (self) => (self instanceof SVGFETileElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svgfe_turbulence_element(
  self : EventTarget,
) -> SVGFETurbulenceElement? =
  #| (self) => (self instanceof SVGFETurbulenceElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_bluetooth(self : EventTarget) -> Bluetooth? =
  #| (self) => (self instanceof Bluetooth) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_bluetooth_permission_result(
  self : EventTarget,
) -> BluetoothPermissionResult? =
  #| (self) => (self instanceof BluetoothPermissionResult) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_bluetooth_device(
  self : EventTarget,
) -> BluetoothDevice? =
  #| (self) => (self instanceof BluetoothDevice) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_bluetooth_remote_gatt_service(
  self : EventTarget,
) -> BluetoothRemoteGATTService? =
  #| (self) => (self instanceof BluetoothRemoteGATTService) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_bluetooth_remote_gatt_characteristic(
  self : EventTarget,
) -> BluetoothRemoteGATTCharacteristic? =
  #| (self) => (self instanceof BluetoothRemoteGATTCharacteristic) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_task_signal(
  self : EventTarget,
) -> TaskSignal? =
  #| (self) => (self instanceof TaskSignal) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_magnetometer(
  self : EventTarget,
) -> Magnetometer? =
  #| (self) => (self instanceof Magnetometer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_uncalibrated_magnetometer(
  self : EventTarget,
) -> UncalibratedMagnetometer? =
  #| (self) => (self instanceof UncalibratedMagnetometer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_vtt_cue(self : EventTarget) -> VTTCue? =
  #| (self) => (self instanceof VTTCue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_create_monitor(
  self : EventTarget,
) -> CreateMonitor? =
  #| (self) => (self instanceof CreateMonitor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_bluetooth_le_scan_permission_result(
  self : EventTarget,
) -> BluetoothLEScanPermissionResult? =
  #| (self) => (self instanceof BluetoothLEScanPermissionResult) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_s_frame_receiver_transform(
  self : EventTarget,
) -> SFrameReceiverTransform? =
  #| (self) => (self instanceof SFrameReceiverTransform) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_s_frame_encrypter_stream(
  self : EventTarget,
) -> SFrameEncrypterStream? =
  #| (self) => (self instanceof SFrameEncrypterStream) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_s_frame_decrypter_stream(
  self : EventTarget,
) -> SFrameDecrypterStream? =
  #| (self) => (self instanceof SFrameDecrypterStream) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_rtc_rtp_script_transformer(
  self : EventTarget,
) -> RTCRtpScriptTransformer? =
  #| (self) => (self instanceof RTCRtpScriptTransformer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_wake_lock_sentinel(
  self : EventTarget,
) -> WakeLockSentinel? =
  #| (self) => (self instanceof WakeLockSentinel) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_xr_light_probe(
  self : EventTarget,
) -> XRLightProbe? =
  #| (self) => (self instanceof XRLightProbe) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_serial(self : EventTarget) -> Serial? =
  #| (self) => (self instanceof Serial) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_serial_port(
  self : EventTarget,
) -> SerialPort? =
  #| (self) => (self instanceof SerialPort) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_element(
  self : EventTarget,
) -> SVGElement? =
  #| (self) => (self instanceof SVGElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_graphics_element(
  self : EventTarget,
) -> SVGGraphicsElement? =
  #| (self) => (self instanceof SVGGraphicsElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_geometry_element(
  self : EventTarget,
) -> SVGGeometryElement? =
  #| (self) => (self instanceof SVGGeometryElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svgsvg_element(
  self : EventTarget,
) -> SVGSVGElement? =
  #| (self) => (self instanceof SVGSVGElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svgg_element(
  self : EventTarget,
) -> SVGGElement? =
  #| (self) => (self instanceof SVGGElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_defs_element(
  self : EventTarget,
) -> SVGDefsElement? =
  #| (self) => (self instanceof SVGDefsElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_desc_element(
  self : EventTarget,
) -> SVGDescElement? =
  #| (self) => (self instanceof SVGDescElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_metadata_element(
  self : EventTarget,
) -> SVGMetadataElement? =
  #| (self) => (self instanceof SVGMetadataElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_title_element(
  self : EventTarget,
) -> SVGTitleElement? =
  #| (self) => (self instanceof SVGTitleElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_symbol_element(
  self : EventTarget,
) -> SVGSymbolElement? =
  #| (self) => (self instanceof SVGSymbolElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_use_element(
  self : EventTarget,
) -> SVGUseElement? =
  #| (self) => (self instanceof SVGUseElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_use_element_shadow_root(
  self : EventTarget,
) -> SVGUseElementShadowRoot? =
  #| (self) => (self instanceof SVGUseElementShadowRoot) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_shadow_animation(
  self : EventTarget,
) -> ShadowAnimation? =
  #| (self) => (self instanceof ShadowAnimation) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_switch_element(
  self : EventTarget,
) -> SVGSwitchElement? =
  #| (self) => (self instanceof SVGSwitchElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_style_element(
  self : EventTarget,
) -> SVGStyleElement? =
  #| (self) => (self instanceof SVGStyleElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_rect_element(
  self : EventTarget,
) -> SVGRectElement? =
  #| (self) => (self instanceof SVGRectElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_circle_element(
  self : EventTarget,
) -> SVGCircleElement? =
  #| (self) => (self instanceof SVGCircleElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_ellipse_element(
  self : EventTarget,
) -> SVGEllipseElement? =
  #| (self) => (self instanceof SVGEllipseElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_line_element(
  self : EventTarget,
) -> SVGLineElement? =
  #| (self) => (self instanceof SVGLineElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_polyline_element(
  self : EventTarget,
) -> SVGPolylineElement? =
  #| (self) => (self instanceof SVGPolylineElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_polygon_element(
  self : EventTarget,
) -> SVGPolygonElement? =
  #| (self) => (self instanceof SVGPolygonElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_text_content_element(
  self : EventTarget,
) -> SVGTextContentElement? =
  #| (self) => (self instanceof SVGTextContentElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_text_positioning_element(
  self : EventTarget,
) -> SVGTextPositioningElement? =
  #| (self) => (self instanceof SVGTextPositioningElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_text_element(
  self : EventTarget,
) -> SVGTextElement? =
  #| (self) => (self instanceof SVGTextElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svgt_span_element(
  self : EventTarget,
) -> SVGTSpanElement? =
  #| (self) => (self instanceof SVGTSpanElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_text_path_element(
  self : EventTarget,
) -> SVGTextPathElement? =
  #| (self) => (self instanceof SVGTextPathElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_image_element(
  self : EventTarget,
) -> SVGImageElement? =
  #| (self) => (self instanceof SVGImageElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_foreign_object_element(
  self : EventTarget,
) -> SVGForeignObjectElement? =
  #| (self) => (self instanceof SVGForeignObjectElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_marker_element(
  self : EventTarget,
) -> SVGMarkerElement? =
  #| (self) => (self instanceof SVGMarkerElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_gradient_element(
  self : EventTarget,
) -> SVGGradientElement? =
  #| (self) => (self instanceof SVGGradientElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_linear_gradient_element(
  self : EventTarget,
) -> SVGLinearGradientElement? =
  #| (self) => (self instanceof SVGLinearGradientElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_radial_gradient_element(
  self : EventTarget,
) -> SVGRadialGradientElement? =
  #| (self) => (self instanceof SVGRadialGradientElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_stop_element(
  self : EventTarget,
) -> SVGStopElement? =
  #| (self) => (self instanceof SVGStopElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_pattern_element(
  self : EventTarget,
) -> SVGPatternElement? =
  #| (self) => (self instanceof SVGPatternElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_script_element(
  self : EventTarget,
) -> SVGScriptElement? =
  #| (self) => (self instanceof SVGScriptElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svga_element(
  self : EventTarget,
) -> SVGAElement? =
  #| (self) => (self instanceof SVGAElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_view_element(
  self : EventTarget,
) -> SVGViewElement? =
  #| (self) => (self instanceof SVGViewElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_web_socket(self : EventTarget) -> WebSocket? =
  #| (self) => (self instanceof WebSocket) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_media_query_list(
  self : EventTarget,
) -> MediaQueryList? =
  #| (self) => (self instanceof MediaQueryList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_visual_viewport(
  self : EventTarget,
) -> VisualViewport? =
  #| (self) => (self instanceof VisualViewport) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_model_element(
  self : EventTarget,
) -> HTMLModelElement? =
  #| (self) => (self instanceof HTMLModelElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_midi_access(
  self : EventTarget,
) -> MIDIAccess? =
  #| (self) => (self instanceof MIDIAccess) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_midi_port(self : EventTarget) -> MIDIPort? =
  #| (self) => (self instanceof MIDIPort) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_midi_input(self : EventTarget) -> MIDIInput? =
  #| (self) => (self instanceof MIDIInput) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_midi_output(
  self : EventTarget,
) -> MIDIOutput? =
  #| (self) => (self instanceof MIDIOutput) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_file_reader(
  self : EventTarget,
) -> FileReader? =
  #| (self) => (self instanceof FileReader) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_media_stream(
  self : EventTarget,
) -> MediaStream? =
  #| (self) => (self instanceof MediaStream) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_media_stream_track(
  self : EventTarget,
) -> MediaStreamTrack? =
  #| (self) => (self instanceof MediaStreamTrack) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_media_devices(
  self : EventTarget,
) -> MediaDevices? =
  #| (self) => (self instanceof MediaDevices) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_element(
  self : EventTarget,
) -> HTMLElement? =
  #| (self) => (self instanceof HTMLElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_unknown_element(
  self : EventTarget,
) -> HTMLUnknownElement? =
  #| (self) => (self instanceof HTMLUnknownElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_html_element(
  self : EventTarget,
) -> HTMLHtmlElement? =
  #| (self) => (self instanceof HTMLHtmlElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_head_element(
  self : EventTarget,
) -> HTMLHeadElement? =
  #| (self) => (self instanceof HTMLHeadElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_title_element(
  self : EventTarget,
) -> HTMLTitleElement? =
  #| (self) => (self instanceof HTMLTitleElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_base_element(
  self : EventTarget,
) -> HTMLBaseElement? =
  #| (self) => (self instanceof HTMLBaseElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_link_element(
  self : EventTarget,
) -> HTMLLinkElement? =
  #| (self) => (self instanceof HTMLLinkElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_meta_element(
  self : EventTarget,
) -> HTMLMetaElement? =
  #| (self) => (self instanceof HTMLMetaElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_style_element(
  self : EventTarget,
) -> HTMLStyleElement? =
  #| (self) => (self instanceof HTMLStyleElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_body_element(
  self : EventTarget,
) -> HTMLBodyElement? =
  #| (self) => (self instanceof HTMLBodyElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_heading_element(
  self : EventTarget,
) -> HTMLHeadingElement? =
  #| (self) => (self instanceof HTMLHeadingElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_paragraph_element(
  self : EventTarget,
) -> HTMLParagraphElement? =
  #| (self) => (self instanceof HTMLParagraphElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_htmlhr_element(
  self : EventTarget,
) -> HTMLHRElement? =
  #| (self) => (self instanceof HTMLHRElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_pre_element(
  self : EventTarget,
) -> HTMLPreElement? =
  #| (self) => (self instanceof HTMLPreElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_quote_element(
  self : EventTarget,
) -> HTMLQuoteElement? =
  #| (self) => (self instanceof HTMLQuoteElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_htmlo_list_element(
  self : EventTarget,
) -> HTMLOListElement? =
  #| (self) => (self instanceof HTMLOListElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_htmlu_list_element(
  self : EventTarget,
) -> HTMLUListElement? =
  #| (self) => (self instanceof HTMLUListElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_menu_element(
  self : EventTarget,
) -> HTMLMenuElement? =
  #| (self) => (self instanceof HTMLMenuElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_htmlli_element(
  self : EventTarget,
) -> HTMLLIElement? =
  #| (self) => (self instanceof HTMLLIElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_htmld_list_element(
  self : EventTarget,
) -> HTMLDListElement? =
  #| (self) => (self instanceof HTMLDListElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_div_element(
  self : EventTarget,
) -> HTMLDivElement? =
  #| (self) => (self instanceof HTMLDivElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_anchor_element(
  self : EventTarget,
) -> HTMLAnchorElement? =
  #| (self) => (self instanceof HTMLAnchorElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_data_element(
  self : EventTarget,
) -> HTMLDataElement? =
  #| (self) => (self instanceof HTMLDataElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_time_element(
  self : EventTarget,
) -> HTMLTimeElement? =
  #| (self) => (self instanceof HTMLTimeElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_span_element(
  self : EventTarget,
) -> HTMLSpanElement? =
  #| (self) => (self instanceof HTMLSpanElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_htmlbr_element(
  self : EventTarget,
) -> HTMLBRElement? =
  #| (self) => (self instanceof HTMLBRElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_mod_element(
  self : EventTarget,
) -> HTMLModElement? =
  #| (self) => (self instanceof HTMLModElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_picture_element(
  self : EventTarget,
) -> HTMLPictureElement? =
  #| (self) => (self instanceof HTMLPictureElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_source_element(
  self : EventTarget,
) -> HTMLSourceElement? =
  #| (self) => (self instanceof HTMLSourceElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_image_element(
  self : EventTarget,
) -> HTMLImageElement? =
  #| (self) => (self instanceof HTMLImageElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_htmli_frame_element(
  self : EventTarget,
) -> HTMLIFrameElement? =
  #| (self) => (self instanceof HTMLIFrameElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_embed_element(
  self : EventTarget,
) -> HTMLEmbedElement? =
  #| (self) => (self instanceof HTMLEmbedElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_object_element(
  self : EventTarget,
) -> HTMLObjectElement? =
  #| (self) => (self instanceof HTMLObjectElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_video_element(
  self : EventTarget,
) -> HTMLVideoElement? =
  #| (self) => (self instanceof HTMLVideoElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_audio_element(
  self : EventTarget,
) -> HTMLAudioElement? =
  #| (self) => (self instanceof HTMLAudioElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_track_element(
  self : EventTarget,
) -> HTMLTrackElement? =
  #| (self) => (self instanceof HTMLTrackElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_media_element(
  self : EventTarget,
) -> HTMLMediaElement? =
  #| (self) => (self instanceof HTMLMediaElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_audio_track_list(
  self : EventTarget,
) -> AudioTrackList? =
  #| (self) => (self instanceof AudioTrackList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_video_track_list(
  self : EventTarget,
) -> VideoTrackList? =
  #| (self) => (self instanceof VideoTrackList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_text_track_list(
  self : EventTarget,
) -> TextTrackList? =
  #| (self) => (self instanceof TextTrackList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_text_track(self : EventTarget) -> TextTrack? =
  #| (self) => (self instanceof TextTrack) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_text_track_cue(
  self : EventTarget,
) -> TextTrackCue? =
  #| (self) => (self instanceof TextTrackCue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_map_element(
  self : EventTarget,
) -> HTMLMapElement? =
  #| (self) => (self instanceof HTMLMapElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_area_element(
  self : EventTarget,
) -> HTMLAreaElement? =
  #| (self) => (self instanceof HTMLAreaElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_table_element(
  self : EventTarget,
) -> HTMLTableElement? =
  #| (self) => (self instanceof HTMLTableElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_table_caption_element(
  self : EventTarget,
) -> HTMLTableCaptionElement? =
  #| (self) => (self instanceof HTMLTableCaptionElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_table_col_element(
  self : EventTarget,
) -> HTMLTableColElement? =
  #| (self) => (self instanceof HTMLTableColElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_table_section_element(
  self : EventTarget,
) -> HTMLTableSectionElement? =
  #| (self) => (self instanceof HTMLTableSectionElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_table_row_element(
  self : EventTarget,
) -> HTMLTableRowElement? =
  #| (self) => (self instanceof HTMLTableRowElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_table_cell_element(
  self : EventTarget,
) -> HTMLTableCellElement? =
  #| (self) => (self instanceof HTMLTableCellElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_form_element(
  self : EventTarget,
) -> HTMLFormElement? =
  #| (self) => (self instanceof HTMLFormElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_label_element(
  self : EventTarget,
) -> HTMLLabelElement? =
  #| (self) => (self instanceof HTMLLabelElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_input_element(
  self : EventTarget,
) -> HTMLInputElement? =
  #| (self) => (self instanceof HTMLInputElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_button_element(
  self : EventTarget,
) -> HTMLButtonElement? =
  #| (self) => (self instanceof HTMLButtonElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_select_element(
  self : EventTarget,
) -> HTMLSelectElement? =
  #| (self) => (self instanceof HTMLSelectElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_data_list_element(
  self : EventTarget,
) -> HTMLDataListElement? =
  #| (self) => (self instanceof HTMLDataListElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_opt_group_element(
  self : EventTarget,
) -> HTMLOptGroupElement? =
  #| (self) => (self instanceof HTMLOptGroupElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_option_element(
  self : EventTarget,
) -> HTMLOptionElement? =
  #| (self) => (self instanceof HTMLOptionElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_text_area_element(
  self : EventTarget,
) -> HTMLTextAreaElement? =
  #| (self) => (self instanceof HTMLTextAreaElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_output_element(
  self : EventTarget,
) -> HTMLOutputElement? =
  #| (self) => (self instanceof HTMLOutputElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_progress_element(
  self : EventTarget,
) -> HTMLProgressElement? =
  #| (self) => (self instanceof HTMLProgressElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_meter_element(
  self : EventTarget,
) -> HTMLMeterElement? =
  #| (self) => (self instanceof HTMLMeterElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_field_set_element(
  self : EventTarget,
) -> HTMLFieldSetElement? =
  #| (self) => (self instanceof HTMLFieldSetElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_legend_element(
  self : EventTarget,
) -> HTMLLegendElement? =
  #| (self) => (self instanceof HTMLLegendElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_selected_content_element(
  self : EventTarget,
) -> HTMLSelectedContentElement? =
  #| (self) => (self instanceof HTMLSelectedContentElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_details_element(
  self : EventTarget,
) -> HTMLDetailsElement? =
  #| (self) => (self instanceof HTMLDetailsElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_dialog_element(
  self : EventTarget,
) -> HTMLDialogElement? =
  #| (self) => (self instanceof HTMLDialogElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_script_element(
  self : EventTarget,
) -> HTMLScriptElement? =
  #| (self) => (self instanceof HTMLScriptElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_template_element(
  self : EventTarget,
) -> HTMLTemplateElement? =
  #| (self) => (self instanceof HTMLTemplateElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_slot_element(
  self : EventTarget,
) -> HTMLSlotElement? =
  #| (self) => (self instanceof HTMLSlotElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_canvas_element(
  self : EventTarget,
) -> HTMLCanvasElement? =
  #| (self) => (self instanceof HTMLCanvasElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_offscreen_canvas(
  self : EventTarget,
) -> OffscreenCanvas? =
  #| (self) => (self instanceof OffscreenCanvas) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_close_watcher(
  self : EventTarget,
) -> CloseWatcher? =
  #| (self) => (self instanceof CloseWatcher) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_window(self : EventTarget) -> Window? =
  #| (self) => (self instanceof Window) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_navigation(
  self : EventTarget,
) -> Navigation? =
  #| (self) => (self instanceof Navigation) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_navigation_history_entry(
  self : EventTarget,
) -> NavigationHistoryEntry? =
  #| (self) => (self instanceof NavigationHistoryEntry) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_event_source(
  self : EventTarget,
) -> EventSource? =
  #| (self) => (self instanceof EventSource) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_message_port(
  self : EventTarget,
) -> MessagePort? =
  #| (self) => (self instanceof MessagePort) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_broadcast_channel(
  self : EventTarget,
) -> BroadcastChannel? =
  #| (self) => (self instanceof BroadcastChannel) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_worker_global_scope(
  self : EventTarget,
) -> WorkerGlobalScope? =
  #| (self) => (self instanceof WorkerGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_dedicated_worker_global_scope(
  self : EventTarget,
) -> DedicatedWorkerGlobalScope? =
  #| (self) => (self instanceof DedicatedWorkerGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_shared_worker_global_scope(
  self : EventTarget,
) -> SharedWorkerGlobalScope? =
  #| (self) => (self instanceof SharedWorkerGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_worker(self : EventTarget) -> Worker? =
  #| (self) => (self instanceof Worker) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_shared_worker(
  self : EventTarget,
) -> SharedWorker? =
  #| (self) => (self instanceof SharedWorker) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_marquee_element(
  self : EventTarget,
) -> HTMLMarqueeElement? =
  #| (self) => (self instanceof HTMLMarqueeElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_frame_set_element(
  self : EventTarget,
) -> HTMLFrameSetElement? =
  #| (self) => (self instanceof HTMLFrameSetElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_frame_element(
  self : EventTarget,
) -> HTMLFrameElement? =
  #| (self) => (self instanceof HTMLFrameElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_directory_element(
  self : EventTarget,
) -> HTMLDirectoryElement? =
  #| (self) => (self instanceof HTMLDirectoryElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_font_element(
  self : EventTarget,
) -> HTMLFontElement? =
  #| (self) => (self instanceof HTMLFontElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_param_element(
  self : EventTarget,
) -> HTMLParamElement? =
  #| (self) => (self instanceof HTMLParamElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_proximity_sensor(
  self : EventTarget,
) -> ProximitySensor? =
  #| (self) => (self instanceof ProximitySensor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_portal_element(
  self : EventTarget,
) -> HTMLPortalElement? =
  #| (self) => (self instanceof HTMLPortalElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_portal_host(
  self : EventTarget,
) -> PortalHost? =
  #| (self) => (self instanceof PortalHost) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_gyroscope(self : EventTarget) -> Gyroscope? =
  #| (self) => (self instanceof Gyroscope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_audio_session(
  self : EventTarget,
) -> AudioSession? =
  #| (self) => (self instanceof AudioSession) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_media_key_session(
  self : EventTarget,
) -> MediaKeySession? =
  #| (self) => (self instanceof MediaKeySession) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_notification(
  self : EventTarget,
) -> Notification? =
  #| (self) => (self instanceof Notification) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_geolocation_sensor(
  self : EventTarget,
) -> GeolocationSensor? =
  #| (self) => (self instanceof GeolocationSensor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_css_pseudo_element(
  self : EventTarget,
) -> CSSPseudoElement? =
  #| (self) => (self instanceof CSSPseudoElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_window_controls_overlay(
  self : EventTarget,
) -> WindowControlsOverlay? =
  #| (self) => (self instanceof WindowControlsOverlay) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_virtual_keyboard(
  self : EventTarget,
) -> VirtualKeyboard? =
  #| (self) => (self instanceof VirtualKeyboard) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_xml_http_request_event_target(
  self : EventTarget,
) -> XMLHttpRequestEventTarget? =
  #| (self) => (self instanceof XMLHttpRequestEventTarget) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_xml_http_request_upload(
  self : EventTarget,
) -> XMLHttpRequestUpload? =
  #| (self) => (self instanceof XMLHttpRequestUpload) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_xml_http_request(
  self : EventTarget,
) -> XMLHttpRequest? =
  #| (self) => (self instanceof XMLHttpRequest) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_abort_signal(
  self : EventTarget,
) -> AbortSignal? =
  #| (self) => (self instanceof AbortSignal) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_node(self : EventTarget) -> Node? =
  #| (self) => (self instanceof Node) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_document(self : EventTarget) -> Document? =
  #| (self) => (self instanceof Document) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_xml_document(
  self : EventTarget,
) -> XMLDocument? =
  #| (self) => (self instanceof XMLDocument) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_document_type(
  self : EventTarget,
) -> DocumentType? =
  #| (self) => (self instanceof DocumentType) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_document_fragment(
  self : EventTarget,
) -> DocumentFragment? =
  #| (self) => (self instanceof DocumentFragment) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_shadow_root(
  self : EventTarget,
) -> ShadowRoot? =
  #| (self) => (self instanceof ShadowRoot) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_element(self : EventTarget) -> Element? =
  #| (self) => (self instanceof Element) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_attr(self : EventTarget) -> Attr? =
  #| (self) => (self instanceof Attr) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_character_data(
  self : EventTarget,
) -> CharacterData? =
  #| (self) => (self instanceof CharacterData) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_text(self : EventTarget) -> Text? =
  #| (self) => (self instanceof Text) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_cdata_section(
  self : EventTarget,
) -> CDATASection? =
  #| (self) => (self instanceof CDATASection) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_processing_instruction(
  self : EventTarget,
) -> ProcessingInstruction? =
  #| (self) => (self instanceof ProcessingInstruction) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_comment(self : EventTarget) -> Comment? =
  #| (self) => (self instanceof Comment) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_keyboard(self : EventTarget) -> Keyboard? =
  #| (self) => (self instanceof Keyboard) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_idb_request(
  self : EventTarget,
) -> IDBRequest? =
  #| (self) => (self instanceof IDBRequest) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_idb_open_db_request(
  self : EventTarget,
) -> IDBOpenDBRequest? =
  #| (self) => (self instanceof IDBOpenDBRequest) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_idb_database(
  self : EventTarget,
) -> IDBDatabase? =
  #| (self) => (self instanceof IDBDatabase) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_idb_transaction(
  self : EventTarget,
) -> IDBTransaction? =
  #| (self) => (self instanceof IDBTransaction) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_usb(self : EventTarget) -> USB? =
  #| (self) => (self instanceof USB) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_usb_permission_result(
  self : EventTarget,
) -> USBPermissionResult? =
  #| (self) => (self instanceof USBPermissionResult) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_device_posture(
  self : EventTarget,
) -> DevicePosture? =
  #| (self) => (self instanceof DevicePosture) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_orientation_sensor(
  self : EventTarget,
) -> OrientationSensor? =
  #| (self) => (self instanceof OrientationSensor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_absolute_orientation_sensor(
  self : EventTarget,
) -> AbsoluteOrientationSensor? =
  #| (self) => (self instanceof AbsoluteOrientationSensor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_relative_orientation_sensor(
  self : EventTarget,
) -> RelativeOrientationSensor? =
  #| (self) => (self instanceof RelativeOrientationSensor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_network_information(
  self : EventTarget,
) -> NetworkInformation? =
  #| (self) => (self instanceof NetworkInformation) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_font_face_set(
  self : EventTarget,
) -> FontFaceSet? =
  #| (self) => (self instanceof FontFaceSet) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_capture_controller(
  self : EventTarget,
) -> CaptureController? =
  #| (self) => (self instanceof CaptureController) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_xr_system(self : EventTarget) -> XRSystem? =
  #| (self) => (self instanceof XRSystem) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_xr_session(self : EventTarget) -> XRSession? =
  #| (self) => (self instanceof XRSession) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_xr_space(self : EventTarget) -> XRSpace? =
  #| (self) => (self instanceof XRSpace) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_xr_reference_space(
  self : EventTarget,
) -> XRReferenceSpace? =
  #| (self) => (self instanceof XRReferenceSpace) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_xr_bounded_reference_space(
  self : EventTarget,
) -> XRBoundedReferenceSpace? =
  #| (self) => (self instanceof XRBoundedReferenceSpace) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_xr_layer(self : EventTarget) -> XRLayer? =
  #| (self) => (self instanceof XRLayer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_xr_web_gl_layer(
  self : EventTarget,
) -> XRWebGLLayer? =
  #| (self) => (self instanceof XRWebGLLayer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_xr_permission_status(
  self : EventTarget,
) -> XRPermissionStatus? =
  #| (self) => (self instanceof XRPermissionStatus) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_xr_joint_space(
  self : EventTarget,
) -> XRJointSpace? =
  #| (self) => (self instanceof XRJointSpace) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_rtc_identity_provider_global_scope(
  self : EventTarget,
) -> RTCIdentityProviderGlobalScope? =
  #| (self) => (self instanceof RTCIdentityProviderGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_speech_recognition(
  self : EventTarget,
) -> SpeechRecognition? =
  #| (self) => (self instanceof SpeechRecognition) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_speech_synthesis(
  self : EventTarget,
) -> SpeechSynthesis? =
  #| (self) => (self instanceof SpeechSynthesis) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_speech_synthesis_utterance(
  self : EventTarget,
) -> SpeechSynthesisUtterance? =
  #| (self) => (self instanceof SpeechSynthesisUtterance) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_base_audio_context(
  self : EventTarget,
) -> BaseAudioContext? =
  #| (self) => (self instanceof BaseAudioContext) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_audio_context(
  self : EventTarget,
) -> AudioContext? =
  #| (self) => (self instanceof AudioContext) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_offline_audio_context(
  self : EventTarget,
) -> OfflineAudioContext? =
  #| (self) => (self instanceof OfflineAudioContext) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_audio_node(self : EventTarget) -> AudioNode? =
  #| (self) => (self instanceof AudioNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_audio_scheduled_source_node(
  self : EventTarget,
) -> AudioScheduledSourceNode? =
  #| (self) => (self instanceof AudioScheduledSourceNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_analyser_node(
  self : EventTarget,
) -> AnalyserNode? =
  #| (self) => (self instanceof AnalyserNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_audio_buffer_source_node(
  self : EventTarget,
) -> AudioBufferSourceNode? =
  #| (self) => (self instanceof AudioBufferSourceNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_audio_destination_node(
  self : EventTarget,
) -> AudioDestinationNode? =
  #| (self) => (self instanceof AudioDestinationNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_biquad_filter_node(
  self : EventTarget,
) -> BiquadFilterNode? =
  #| (self) => (self instanceof BiquadFilterNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_channel_merger_node(
  self : EventTarget,
) -> ChannelMergerNode? =
  #| (self) => (self instanceof ChannelMergerNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_channel_splitter_node(
  self : EventTarget,
) -> ChannelSplitterNode? =
  #| (self) => (self instanceof ChannelSplitterNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_constant_source_node(
  self : EventTarget,
) -> ConstantSourceNode? =
  #| (self) => (self instanceof ConstantSourceNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_convolver_node(
  self : EventTarget,
) -> ConvolverNode? =
  #| (self) => (self instanceof ConvolverNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_delay_node(self : EventTarget) -> DelayNode? =
  #| (self) => (self instanceof DelayNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_dynamics_compressor_node(
  self : EventTarget,
) -> DynamicsCompressorNode? =
  #| (self) => (self instanceof DynamicsCompressorNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_gain_node(self : EventTarget) -> GainNode? =
  #| (self) => (self instanceof GainNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_iir_filter_node(
  self : EventTarget,
) -> IIRFilterNode? =
  #| (self) => (self instanceof IIRFilterNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_media_element_audio_source_node(
  self : EventTarget,
) -> MediaElementAudioSourceNode? =
  #| (self) => (self instanceof MediaElementAudioSourceNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_media_stream_audio_destination_node(
  self : EventTarget,
) -> MediaStreamAudioDestinationNode? =
  #| (self) => (self instanceof MediaStreamAudioDestinationNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_media_stream_audio_source_node(
  self : EventTarget,
) -> MediaStreamAudioSourceNode? =
  #| (self) => (self instanceof MediaStreamAudioSourceNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_media_stream_track_audio_source_node(
  self : EventTarget,
) -> MediaStreamTrackAudioSourceNode? =
  #| (self) => (self instanceof MediaStreamTrackAudioSourceNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_oscillator_node(
  self : EventTarget,
) -> OscillatorNode? =
  #| (self) => (self instanceof OscillatorNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_panner_node(
  self : EventTarget,
) -> PannerNode? =
  #| (self) => (self instanceof PannerNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_script_processor_node(
  self : EventTarget,
) -> ScriptProcessorNode? =
  #| (self) => (self instanceof ScriptProcessorNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_stereo_panner_node(
  self : EventTarget,
) -> StereoPannerNode? =
  #| (self) => (self instanceof StereoPannerNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_wave_shaper_node(
  self : EventTarget,
) -> WaveShaperNode? =
  #| (self) => (self instanceof WaveShaperNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_audio_worklet_node(
  self : EventTarget,
) -> AudioWorkletNode? =
  #| (self) => (self instanceof AudioWorkletNode) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_data_cue(self : EventTarget) -> DataCue? =
  #| (self) => (self instanceof DataCue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_hid(self : EventTarget) -> HID? =
  #| (self) => (self instanceof HID) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_hid_device(self : EventTarget) -> HIDDevice? =
  #| (self) => (self instanceof HIDDevice) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_edit_context(
  self : EventTarget,
) -> EditContext? =
  #| (self) => (self instanceof EditContext) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_css_animation(
  self : EventTarget,
) -> CSSAnimation? =
  #| (self) => (self instanceof CSSAnimation) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_performance(
  self : EventTarget,
) -> Performance? =
  #| (self) => (self instanceof Performance) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_browser_capture_media_stream_track(
  self : EventTarget,
) -> BrowserCaptureMediaStreamTrack? =
  #| (self) => (self instanceof BrowserCaptureMediaStreamTrack) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_battery_manager(
  self : EventTarget,
) -> BatteryManager? =
  #| (self) => (self instanceof BatteryManager) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_canvas_capture_media_stream_track(
  self : EventTarget,
) -> CanvasCaptureMediaStreamTrack? =
  #| (self) => (self instanceof CanvasCaptureMediaStreamTrack) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_math_ml_element(
  self : EventTarget,
) -> MathMLElement? =
  #| (self) => (self instanceof MathMLElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_animation(self : EventTarget) -> Animation? =
  #| (self) => (self instanceof Animation) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_rtc_peer_connection(
  self : EventTarget,
) -> RTCPeerConnection? =
  #| (self) => (self instanceof RTCPeerConnection) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_rtc_dtls_transport(
  self : EventTarget,
) -> RTCDtlsTransport? =
  #| (self) => (self instanceof RTCDtlsTransport) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_rtc_ice_transport(
  self : EventTarget,
) -> RTCIceTransport? =
  #| (self) => (self instanceof RTCIceTransport) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_rtc_sctp_transport(
  self : EventTarget,
) -> RTCSctpTransport? =
  #| (self) => (self instanceof RTCSctpTransport) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_rtc_data_channel(
  self : EventTarget,
) -> RTCDataChannel? =
  #| (self) => (self instanceof RTCDataChannel) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_rtcdtmf_sender(
  self : EventTarget,
) -> RTCDTMFSender? =
  #| (self) => (self instanceof RTCDTMFSender) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_svg_path_element(
  self : EventTarget,
) -> SVGPathElement? =
  #| (self) => (self instanceof SVGPathElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_service_worker(
  self : EventTarget,
) -> ServiceWorker? =
  #| (self) => (self instanceof ServiceWorker) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_service_worker_registration(
  self : EventTarget,
) -> ServiceWorkerRegistration? =
  #| (self) => (self instanceof ServiceWorkerRegistration) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_service_worker_container(
  self : EventTarget,
) -> ServiceWorkerContainer? =
  #| (self) => (self instanceof ServiceWorkerContainer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_service_worker_global_scope(
  self : EventTarget,
) -> ServiceWorkerGlobalScope? =
  #| (self) => (self instanceof ServiceWorkerGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_screen_details(
  self : EventTarget,
) -> ScreenDetails? =
  #| (self) => (self instanceof ScreenDetails) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_picture_in_picture_window(
  self : EventTarget,
) -> PictureInPictureWindow? =
  #| (self) => (self instanceof PictureInPictureWindow) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_cookie_store(
  self : EventTarget,
) -> CookieStore? =
  #| (self) => (self instanceof CookieStore) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_css_transition(
  self : EventTarget,
) -> CSSTransition? =
  #| (self) => (self instanceof CSSTransition) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_ambient_light_sensor(
  self : EventTarget,
) -> AmbientLightSensor? =
  #| (self) => (self instanceof AmbientLightSensor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_remote_playback(
  self : EventTarget,
) -> RemotePlayback? =
  #| (self) => (self instanceof RemotePlayback) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_idle_detector(
  self : EventTarget,
) -> IdleDetector? =
  #| (self) => (self instanceof IdleDetector) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_preference_object(
  self : EventTarget,
) -> PreferenceObject? =
  #| (self) => (self instanceof PreferenceObject) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_fenced_frame_element(
  self : EventTarget,
) -> HTMLFencedFrameElement? =
  #| (self) => (self instanceof HTMLFencedFrameElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_permission_status(
  self : EventTarget,
) -> PermissionStatus? =
  #| (self) => (self instanceof PermissionStatus) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_ndef_reader(
  self : EventTarget,
) -> NDEFReader? =
  #| (self) => (self instanceof NDEFReader) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_audio_decoder(
  self : EventTarget,
) -> AudioDecoder? =
  #| (self) => (self instanceof AudioDecoder) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_video_decoder(
  self : EventTarget,
) -> VideoDecoder? =
  #| (self) => (self instanceof VideoDecoder) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_audio_encoder(
  self : EventTarget,
) -> AudioEncoder? =
  #| (self) => (self instanceof AudioEncoder) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_video_encoder(
  self : EventTarget,
) -> VideoEncoder? =
  #| (self) => (self instanceof VideoEncoder) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_accelerometer(
  self : EventTarget,
) -> Accelerometer? =
  #| (self) => (self instanceof Accelerometer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_linear_acceleration_sensor(
  self : EventTarget,
) -> LinearAccelerationSensor? =
  #| (self) => (self instanceof LinearAccelerationSensor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_gravity_sensor(
  self : EventTarget,
) -> GravitySensor? =
  #| (self) => (self instanceof GravitySensor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_gpu_device(self : EventTarget) -> GPUDevice? =
  #| (self) => (self instanceof GPUDevice) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_media_recorder(
  self : EventTarget,
) -> MediaRecorder? =
  #| (self) => (self instanceof MediaRecorder) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_media_source(
  self : EventTarget,
) -> MediaSource? =
  #| (self) => (self instanceof MediaSource) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_source_buffer(
  self : EventTarget,
) -> SourceBuffer? =
  #| (self) => (self instanceof SourceBuffer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_source_buffer_list(
  self : EventTarget,
) -> SourceBufferList? =
  #| (self) => (self instanceof SourceBufferList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_managed_media_source(
  self : EventTarget,
) -> ManagedMediaSource? =
  #| (self) => (self instanceof ManagedMediaSource) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_managed_source_buffer(
  self : EventTarget,
) -> ManagedSourceBuffer? =
  #| (self) => (self instanceof ManagedSourceBuffer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_named_flow(self : EventTarget) -> NamedFlow? =
  #| (self) => (self instanceof NamedFlow) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_navigator_managed_data(
  self : EventTarget,
) -> NavigatorManagedData? =
  #| (self) => (self instanceof NavigatorManagedData) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_presentation_request(
  self : EventTarget,
) -> PresentationRequest? =
  #| (self) => (self instanceof PresentationRequest) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_presentation_availability(
  self : EventTarget,
) -> PresentationAvailability? =
  #| (self) => (self instanceof PresentationAvailability) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_presentation_connection(
  self : EventTarget,
) -> PresentationConnection? =
  #| (self) => (self instanceof PresentationConnection) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_presentation_connection_list(
  self : EventTarget,
) -> PresentationConnectionList? =
  #| (self) => (self instanceof PresentationConnectionList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_payment_request(
  self : EventTarget,
) -> PaymentRequest? =
  #| (self) => (self instanceof PaymentRequest) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_payment_response(
  self : EventTarget,
) -> PaymentResponse? =
  #| (self) => (self instanceof PaymentResponse) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_document_picture_in_picture(
  self : EventTarget,
) -> DocumentPictureInPicture? =
  #| (self) => (self instanceof DocumentPictureInPicture) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_permission_element(
  self : EventTarget,
) -> HTMLPermissionElement? =
  #| (self) => (self instanceof HTMLPermissionElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_html_geolocation_element(
  self : EventTarget,
) -> HTMLGeolocationElement? =
  #| (self) => (self instanceof HTMLGeolocationElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_background_fetch_registration(
  self : EventTarget,
) -> BackgroundFetchRegistration? =
  #| (self) => (self instanceof BackgroundFetchRegistration) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_xr_composition_layer(
  self : EventTarget,
) -> XRCompositionLayer? =
  #| (self) => (self instanceof XRCompositionLayer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_xr_projection_layer(
  self : EventTarget,
) -> XRProjectionLayer? =
  #| (self) => (self instanceof XRProjectionLayer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_xr_quad_layer(
  self : EventTarget,
) -> XRQuadLayer? =
  #| (self) => (self instanceof XRQuadLayer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_xr_cylinder_layer(
  self : EventTarget,
) -> XRCylinderLayer? =
  #| (self) => (self instanceof XRCylinderLayer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_xr_equirect_layer(
  self : EventTarget,
) -> XREquirectLayer? =
  #| (self) => (self instanceof XREquirectLayer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::as_xr_cube_layer(
  self : EventTarget,
) -> XRCubeLayer? =
  #| (self) => (self instanceof XRCubeLayer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn EventTarget::new() -> EventTarget =
  #| () => new EventTarget()

///|
pub extern "js" fn EventTarget::add_event_listener(
  self : EventTarget,
  type_ : String,
  callback : EventListener?,
) -> Unit =
  #| (self, type_, callback) => self.addEventListener(type_, (callback.$tag === 1 ? callback._0 : null))

///|
pub extern "js" fn EventTarget::add_event_listener_with_options(
  self : EventTarget,
  type_ : String,
  callback : EventListener?,
  options : AddEventListenerOptionsOrBool,
) -> Unit =
  #| (self, type_, callback, options) => self.addEventListener(type_, (callback.$tag === 1 ? callback._0 : null), options)

///|
pub extern "js" fn EventTarget::remove_event_listener(
  self : EventTarget,
  type_ : String,
  callback : EventListener?,
) -> Unit =
  #| (self, type_, callback) => self.removeEventListener(type_, (callback.$tag === 1 ? callback._0 : null))

///|
pub extern "js" fn EventTarget::remove_event_listener_with_options(
  self : EventTarget,
  type_ : String,
  callback : EventListener?,
  options : EventListenerOptionsOrBool,
) -> Unit =
  #| (self, type_, callback, options) => self.removeEventListener(type_, (callback.$tag === 1 ? callback._0 : null), options)

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
extern "js" fn EventTarget::when_with_options_ffi(
  self : EventTarget,
  type_ : String,
  options : JsValue,
) -> Observable =
  #| (self, type_, options) => self.when(type_, options)

///|
pub fn EventTarget::when_with_options(
  self : EventTarget,
  type_ : String,
  options : ObservableEventListenerOptions,
) -> Observable {
  EventTarget::when_with_options_ffi(self, type_, options.to_js())
}

///|
/// AbortController interface
pub type AbortController

///|
pub extern "js" fn AbortController::to_js_value(
  self : AbortController,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AbortController (unchecked)
pub extern "js" fn AbortController::from_js_value(
  v : JsValue,
) -> AbortController =
  #| (v) => v

///|
/// Safely cast JsValue to AbortController (checked with instanceof)
pub extern "js" fn AbortController::from_js_value_opt(
  v : JsValue,
) -> AbortController? =
  #| (v) => (v instanceof AbortController) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AbortController (checked with instanceof)
pub extern "js" fn JsValue::as_abort_controller(
  self : JsValue,
) -> AbortController? =
  #| (self) => (self instanceof AbortController) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AbortController (unchecked)
pub extern "js" fn JsValue::to_abort_controller(
  self : JsValue,
) -> AbortController =
  #| (self) => self

///|
pub extern "js" fn AbortController::as_task_controller(
  self : AbortController,
) -> TaskController? =
  #| (self) => (self instanceof TaskController) ? { $tag: 1, _0: self } : { $tag: 0 }

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
/// Cast JsValue to AbortSignal (unchecked)
pub extern "js" fn AbortSignal::from_js_value(v : JsValue) -> AbortSignal =
  #| (v) => v

///|
/// Safely cast JsValue to AbortSignal (checked with instanceof)
pub extern "js" fn AbortSignal::from_js_value_opt(v : JsValue) -> AbortSignal? =
  #| (v) => (v instanceof AbortSignal) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AbortSignal (checked with instanceof)
pub extern "js" fn JsValue::as_abort_signal(self : JsValue) -> AbortSignal? =
  #| (self) => (self instanceof AbortSignal) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AbortSignal (unchecked)
pub extern "js" fn JsValue::to_abort_signal(self : JsValue) -> AbortSignal =
  #| (self) => self

///|
pub extern "js" fn AbortSignal::to_event_target(
  self : AbortSignal,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn AbortSignal::as_task_signal(
  self : AbortSignal,
) -> TaskSignal? =
  #| (self) => (self instanceof TaskSignal) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AbortSignal::abort() -> AbortSignal =
  #| () => AbortSignal.abort()

///|
pub extern "js" fn AbortSignal::abort_with_reason(
  reason : JsValue,
) -> AbortSignal =
  #| (reason) => AbortSignal.abort(reason)

///|
pub extern "js" fn AbortSignal::timeout(milliseconds : Int64) -> AbortSignal =
  #| (milliseconds) => AbortSignal.timeout((milliseconds.hi * 4294967296 + milliseconds.lo))

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
/// Cast JsValue to NodeList (unchecked)
pub extern "js" fn NodeList::from_js_value(v : JsValue) -> NodeList =
  #| (v) => v

///|
/// Safely cast JsValue to NodeList (checked with instanceof)
pub extern "js" fn NodeList::from_js_value_opt(v : JsValue) -> NodeList? =
  #| (v) => (v instanceof NodeList) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to NodeList (checked with instanceof)
pub extern "js" fn JsValue::as_node_list(self : JsValue) -> NodeList? =
  #| (self) => (self instanceof NodeList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to NodeList (unchecked)
pub extern "js" fn JsValue::to_node_list(self : JsValue) -> NodeList =
  #| (self) => self

///|
pub extern "js" fn NodeList::as_radio_node_list(
  self : NodeList,
) -> RadioNodeList? =
  #| (self) => (self instanceof RadioNodeList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn NodeList::item(self : NodeList, index : Int) -> Node? =
  #| (self, index) => (() => { const v = self.item(index); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
#alias("_[_]")
pub extern "js" fn NodeList::get(self : NodeList, index : Int) -> Node? =
  #| (self, index) => (() => { const v = self[index]; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn NodeList::get_length(self : NodeList) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn NodeList::keys(self : NodeList) -> JsValue =
  #| (self) => self.keys()

///|
pub extern "js" fn NodeList::values(self : NodeList) -> JsValue =
  #| (self) => self.values()

///|
pub extern "js" fn NodeList::entries(self : NodeList) -> JsValue =
  #| (self) => self.entries()

///|
pub extern "js" fn NodeList::for_each(
  self : NodeList,
  callback : JsValue,
) -> Unit =
  #| (self, callback) => { self.forEach(callback) }

///|
/// HTMLCollection interface
pub type HTMLCollection

///|
pub extern "js" fn HTMLCollection::to_js_value(
  self : HTMLCollection,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLCollection (unchecked)
pub extern "js" fn HTMLCollection::from_js_value(v : JsValue) -> HTMLCollection =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLCollection (checked with instanceof)
pub extern "js" fn HTMLCollection::from_js_value_opt(
  v : JsValue,
) -> HTMLCollection? =
  #| (v) => (v instanceof HTMLCollection) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLCollection (checked with instanceof)
pub extern "js" fn JsValue::as_html_collection(
  self : JsValue,
) -> HTMLCollection? =
  #| (self) => (self instanceof HTMLCollection) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLCollection (unchecked)
pub extern "js" fn JsValue::to_html_collection(
  self : JsValue,
) -> HTMLCollection =
  #| (self) => self

///|
pub extern "js" fn HTMLCollection::as_html_form_controls_collection(
  self : HTMLCollection,
) -> HTMLFormControlsCollection? =
  #| (self) => (self instanceof HTMLFormControlsCollection) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLCollection::as_html_options_collection(
  self : HTMLCollection,
) -> HTMLOptionsCollection? =
  #| (self) => (self instanceof HTMLOptionsCollection) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLCollection::get_length(self : HTMLCollection) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn HTMLCollection::item(
  self : HTMLCollection,
  index : Int,
) -> Element? =
  #| (self, index) => (() => { const v = self.item(index); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
#alias("_[_]")
pub extern "js" fn HTMLCollection::get(
  self : HTMLCollection,
  index : Int,
) -> Element? =
  #| (self, index) => (() => { const v = self[index]; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLCollection::named_item(
  self : HTMLCollection,
  name : String,
) -> Element? =
  #| (self, name) => (() => { const v = self.namedItem(name); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLCollection::get_named(
  self : HTMLCollection,
  name : String,
) -> Element? =
  #| (self, name) => (() => { const v = self[name]; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// MutationObserver interface
pub type MutationObserver

///|
pub extern "js" fn MutationObserver::to_js_value(
  self : MutationObserver,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to MutationObserver (unchecked)
pub extern "js" fn MutationObserver::from_js_value(
  v : JsValue,
) -> MutationObserver =
  #| (v) => v

///|
/// Safely cast JsValue to MutationObserver (checked with instanceof)
pub extern "js" fn MutationObserver::from_js_value_opt(
  v : JsValue,
) -> MutationObserver? =
  #| (v) => (v instanceof MutationObserver) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MutationObserver (checked with instanceof)
pub extern "js" fn JsValue::as_mutation_observer(
  self : JsValue,
) -> MutationObserver? =
  #| (self) => (self instanceof MutationObserver) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MutationObserver (unchecked)
pub extern "js" fn JsValue::to_mutation_observer(
  self : JsValue,
) -> MutationObserver =
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
extern "js" fn MutationObserver::observe_with_options_ffi(
  self : MutationObserver,
  target : Node,
  options : JsValue,
) -> Unit =
  #| (self, target, options) => self.observe(target, options)

///|
pub fn MutationObserver::observe_with_options(
  self : MutationObserver,
  target : Node,
  options : MutationObserverInit,
) -> Unit {
  MutationObserver::observe_with_options_ffi(self, target, options.to_js())
}

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
/// Cast JsValue to MutationRecord (unchecked)
pub extern "js" fn MutationRecord::from_js_value(v : JsValue) -> MutationRecord =
  #| (v) => v

///|
/// Safely cast JsValue to MutationRecord (checked with instanceof)
pub extern "js" fn MutationRecord::from_js_value_opt(
  v : JsValue,
) -> MutationRecord? =
  #| (v) => (v instanceof MutationRecord) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MutationRecord (checked with instanceof)
pub extern "js" fn JsValue::as_mutation_record(
  self : JsValue,
) -> MutationRecord? =
  #| (self) => (self instanceof MutationRecord) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MutationRecord (unchecked)
pub extern "js" fn JsValue::to_mutation_record(
  self : JsValue,
) -> MutationRecord =
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
  #| (self) => (() => { const v = self.previousSibling; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn MutationRecord::get_next_sibling(
  self : MutationRecord,
) -> Node? =
  #| (self) => (() => { const v = self.nextSibling; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn MutationRecord::get_attribute_name(
  self : MutationRecord,
) -> String? =
  #| (self) => (self.attributeName) ?? undefined

///|
pub extern "js" fn MutationRecord::get_attribute_namespace(
  self : MutationRecord,
) -> String? =
  #| (self) => (self.attributeNamespace) ?? undefined

///|
pub extern "js" fn MutationRecord::get_old_value(
  self : MutationRecord,
) -> String? =
  #| (self) => (self.oldValue) ?? undefined

///|
/// Node interface
pub type Node

///|
pub extern "js" fn Node::to_js_value(self : Node) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Node (unchecked)
pub extern "js" fn Node::from_js_value(v : JsValue) -> Node =
  #| (v) => v

///|
/// Safely cast JsValue to Node (checked with instanceof)
pub extern "js" fn Node::from_js_value_opt(v : JsValue) -> Node? =
  #| (v) => (v instanceof Node) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Node (checked with instanceof)
pub extern "js" fn JsValue::as_node(self : JsValue) -> Node? =
  #| (self) => (self instanceof Node) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Node (unchecked)
pub extern "js" fn JsValue::to_node(self : JsValue) -> Node =
  #| (self) => self

///|
pub extern "js" fn Node::to_event_target(self : Node) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn Node::as_svg_animation_element(
  self : Node,
) -> SVGAnimationElement? =
  #| (self) => (self instanceof SVGAnimationElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_animate_element(
  self : Node,
) -> SVGAnimateElement? =
  #| (self) => (self instanceof SVGAnimateElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_set_element(self : Node) -> SVGSetElement? =
  #| (self) => (self instanceof SVGSetElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_animate_motion_element(
  self : Node,
) -> SVGAnimateMotionElement? =
  #| (self) => (self instanceof SVGAnimateMotionElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svgm_path_element(self : Node) -> SVGMPathElement? =
  #| (self) => (self instanceof SVGMPathElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_animate_transform_element(
  self : Node,
) -> SVGAnimateTransformElement? =
  #| (self) => (self instanceof SVGAnimateTransformElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_clip_path_element(
  self : Node,
) -> SVGClipPathElement? =
  #| (self) => (self instanceof SVGClipPathElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_mask_element(self : Node) -> SVGMaskElement? =
  #| (self) => (self instanceof SVGMaskElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_filter_element(
  self : Node,
) -> SVGFilterElement? =
  #| (self) => (self instanceof SVGFilterElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svgfe_blend_element(
  self : Node,
) -> SVGFEBlendElement? =
  #| (self) => (self instanceof SVGFEBlendElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svgfe_color_matrix_element(
  self : Node,
) -> SVGFEColorMatrixElement? =
  #| (self) => (self instanceof SVGFEColorMatrixElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svgfe_component_transfer_element(
  self : Node,
) -> SVGFEComponentTransferElement? =
  #| (self) => (self instanceof SVGFEComponentTransferElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_component_transfer_function_element(
  self : Node,
) -> SVGComponentTransferFunctionElement? =
  #| (self) => (self instanceof SVGComponentTransferFunctionElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svgfe_func_r_element(
  self : Node,
) -> SVGFEFuncRElement? =
  #| (self) => (self instanceof SVGFEFuncRElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svgfe_func_g_element(
  self : Node,
) -> SVGFEFuncGElement? =
  #| (self) => (self instanceof SVGFEFuncGElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svgfe_func_b_element(
  self : Node,
) -> SVGFEFuncBElement? =
  #| (self) => (self instanceof SVGFEFuncBElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svgfe_func_a_element(
  self : Node,
) -> SVGFEFuncAElement? =
  #| (self) => (self instanceof SVGFEFuncAElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svgfe_composite_element(
  self : Node,
) -> SVGFECompositeElement? =
  #| (self) => (self instanceof SVGFECompositeElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svgfe_convolve_matrix_element(
  self : Node,
) -> SVGFEConvolveMatrixElement? =
  #| (self) => (self instanceof SVGFEConvolveMatrixElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svgfe_diffuse_lighting_element(
  self : Node,
) -> SVGFEDiffuseLightingElement? =
  #| (self) => (self instanceof SVGFEDiffuseLightingElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svgfe_distant_light_element(
  self : Node,
) -> SVGFEDistantLightElement? =
  #| (self) => (self instanceof SVGFEDistantLightElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svgfe_point_light_element(
  self : Node,
) -> SVGFEPointLightElement? =
  #| (self) => (self instanceof SVGFEPointLightElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svgfe_spot_light_element(
  self : Node,
) -> SVGFESpotLightElement? =
  #| (self) => (self instanceof SVGFESpotLightElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svgfe_displacement_map_element(
  self : Node,
) -> SVGFEDisplacementMapElement? =
  #| (self) => (self instanceof SVGFEDisplacementMapElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svgfe_drop_shadow_element(
  self : Node,
) -> SVGFEDropShadowElement? =
  #| (self) => (self instanceof SVGFEDropShadowElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svgfe_flood_element(
  self : Node,
) -> SVGFEFloodElement? =
  #| (self) => (self instanceof SVGFEFloodElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svgfe_gaussian_blur_element(
  self : Node,
) -> SVGFEGaussianBlurElement? =
  #| (self) => (self instanceof SVGFEGaussianBlurElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svgfe_image_element(
  self : Node,
) -> SVGFEImageElement? =
  #| (self) => (self instanceof SVGFEImageElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svgfe_merge_element(
  self : Node,
) -> SVGFEMergeElement? =
  #| (self) => (self instanceof SVGFEMergeElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svgfe_merge_node_element(
  self : Node,
) -> SVGFEMergeNodeElement? =
  #| (self) => (self instanceof SVGFEMergeNodeElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svgfe_morphology_element(
  self : Node,
) -> SVGFEMorphologyElement? =
  #| (self) => (self instanceof SVGFEMorphologyElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svgfe_offset_element(
  self : Node,
) -> SVGFEOffsetElement? =
  #| (self) => (self instanceof SVGFEOffsetElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svgfe_specular_lighting_element(
  self : Node,
) -> SVGFESpecularLightingElement? =
  #| (self) => (self instanceof SVGFESpecularLightingElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svgfe_tile_element(
  self : Node,
) -> SVGFETileElement? =
  #| (self) => (self instanceof SVGFETileElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svgfe_turbulence_element(
  self : Node,
) -> SVGFETurbulenceElement? =
  #| (self) => (self instanceof SVGFETurbulenceElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_element(self : Node) -> SVGElement? =
  #| (self) => (self instanceof SVGElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_graphics_element(
  self : Node,
) -> SVGGraphicsElement? =
  #| (self) => (self instanceof SVGGraphicsElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_geometry_element(
  self : Node,
) -> SVGGeometryElement? =
  #| (self) => (self instanceof SVGGeometryElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svgsvg_element(self : Node) -> SVGSVGElement? =
  #| (self) => (self instanceof SVGSVGElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svgg_element(self : Node) -> SVGGElement? =
  #| (self) => (self instanceof SVGGElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_defs_element(self : Node) -> SVGDefsElement? =
  #| (self) => (self instanceof SVGDefsElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_desc_element(self : Node) -> SVGDescElement? =
  #| (self) => (self instanceof SVGDescElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_metadata_element(
  self : Node,
) -> SVGMetadataElement? =
  #| (self) => (self instanceof SVGMetadataElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_title_element(self : Node) -> SVGTitleElement? =
  #| (self) => (self instanceof SVGTitleElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_symbol_element(
  self : Node,
) -> SVGSymbolElement? =
  #| (self) => (self instanceof SVGSymbolElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_use_element(self : Node) -> SVGUseElement? =
  #| (self) => (self instanceof SVGUseElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_use_element_shadow_root(
  self : Node,
) -> SVGUseElementShadowRoot? =
  #| (self) => (self instanceof SVGUseElementShadowRoot) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_switch_element(
  self : Node,
) -> SVGSwitchElement? =
  #| (self) => (self instanceof SVGSwitchElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_style_element(self : Node) -> SVGStyleElement? =
  #| (self) => (self instanceof SVGStyleElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_rect_element(self : Node) -> SVGRectElement? =
  #| (self) => (self instanceof SVGRectElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_circle_element(
  self : Node,
) -> SVGCircleElement? =
  #| (self) => (self instanceof SVGCircleElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_ellipse_element(
  self : Node,
) -> SVGEllipseElement? =
  #| (self) => (self instanceof SVGEllipseElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_line_element(self : Node) -> SVGLineElement? =
  #| (self) => (self instanceof SVGLineElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_polyline_element(
  self : Node,
) -> SVGPolylineElement? =
  #| (self) => (self instanceof SVGPolylineElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_polygon_element(
  self : Node,
) -> SVGPolygonElement? =
  #| (self) => (self instanceof SVGPolygonElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_text_content_element(
  self : Node,
) -> SVGTextContentElement? =
  #| (self) => (self instanceof SVGTextContentElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_text_positioning_element(
  self : Node,
) -> SVGTextPositioningElement? =
  #| (self) => (self instanceof SVGTextPositioningElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_text_element(self : Node) -> SVGTextElement? =
  #| (self) => (self instanceof SVGTextElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svgt_span_element(self : Node) -> SVGTSpanElement? =
  #| (self) => (self instanceof SVGTSpanElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_text_path_element(
  self : Node,
) -> SVGTextPathElement? =
  #| (self) => (self instanceof SVGTextPathElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_image_element(self : Node) -> SVGImageElement? =
  #| (self) => (self instanceof SVGImageElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_foreign_object_element(
  self : Node,
) -> SVGForeignObjectElement? =
  #| (self) => (self instanceof SVGForeignObjectElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_marker_element(
  self : Node,
) -> SVGMarkerElement? =
  #| (self) => (self instanceof SVGMarkerElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_gradient_element(
  self : Node,
) -> SVGGradientElement? =
  #| (self) => (self instanceof SVGGradientElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_linear_gradient_element(
  self : Node,
) -> SVGLinearGradientElement? =
  #| (self) => (self instanceof SVGLinearGradientElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_radial_gradient_element(
  self : Node,
) -> SVGRadialGradientElement? =
  #| (self) => (self instanceof SVGRadialGradientElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_stop_element(self : Node) -> SVGStopElement? =
  #| (self) => (self instanceof SVGStopElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_pattern_element(
  self : Node,
) -> SVGPatternElement? =
  #| (self) => (self instanceof SVGPatternElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_script_element(
  self : Node,
) -> SVGScriptElement? =
  #| (self) => (self instanceof SVGScriptElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svga_element(self : Node) -> SVGAElement? =
  #| (self) => (self instanceof SVGAElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_view_element(self : Node) -> SVGViewElement? =
  #| (self) => (self instanceof SVGViewElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_model_element(
  self : Node,
) -> HTMLModelElement? =
  #| (self) => (self instanceof HTMLModelElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_element(self : Node) -> HTMLElement? =
  #| (self) => (self instanceof HTMLElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_unknown_element(
  self : Node,
) -> HTMLUnknownElement? =
  #| (self) => (self instanceof HTMLUnknownElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_html_element(self : Node) -> HTMLHtmlElement? =
  #| (self) => (self instanceof HTMLHtmlElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_head_element(self : Node) -> HTMLHeadElement? =
  #| (self) => (self instanceof HTMLHeadElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_title_element(
  self : Node,
) -> HTMLTitleElement? =
  #| (self) => (self instanceof HTMLTitleElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_base_element(self : Node) -> HTMLBaseElement? =
  #| (self) => (self instanceof HTMLBaseElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_link_element(self : Node) -> HTMLLinkElement? =
  #| (self) => (self instanceof HTMLLinkElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_meta_element(self : Node) -> HTMLMetaElement? =
  #| (self) => (self instanceof HTMLMetaElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_style_element(
  self : Node,
) -> HTMLStyleElement? =
  #| (self) => (self instanceof HTMLStyleElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_body_element(self : Node) -> HTMLBodyElement? =
  #| (self) => (self instanceof HTMLBodyElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_heading_element(
  self : Node,
) -> HTMLHeadingElement? =
  #| (self) => (self instanceof HTMLHeadingElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_paragraph_element(
  self : Node,
) -> HTMLParagraphElement? =
  #| (self) => (self instanceof HTMLParagraphElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_htmlhr_element(self : Node) -> HTMLHRElement? =
  #| (self) => (self instanceof HTMLHRElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_pre_element(self : Node) -> HTMLPreElement? =
  #| (self) => (self instanceof HTMLPreElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_quote_element(
  self : Node,
) -> HTMLQuoteElement? =
  #| (self) => (self instanceof HTMLQuoteElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_htmlo_list_element(
  self : Node,
) -> HTMLOListElement? =
  #| (self) => (self instanceof HTMLOListElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_htmlu_list_element(
  self : Node,
) -> HTMLUListElement? =
  #| (self) => (self instanceof HTMLUListElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_menu_element(self : Node) -> HTMLMenuElement? =
  #| (self) => (self instanceof HTMLMenuElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_htmlli_element(self : Node) -> HTMLLIElement? =
  #| (self) => (self instanceof HTMLLIElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_htmld_list_element(
  self : Node,
) -> HTMLDListElement? =
  #| (self) => (self instanceof HTMLDListElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_div_element(self : Node) -> HTMLDivElement? =
  #| (self) => (self instanceof HTMLDivElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_anchor_element(
  self : Node,
) -> HTMLAnchorElement? =
  #| (self) => (self instanceof HTMLAnchorElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_data_element(self : Node) -> HTMLDataElement? =
  #| (self) => (self instanceof HTMLDataElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_time_element(self : Node) -> HTMLTimeElement? =
  #| (self) => (self instanceof HTMLTimeElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_span_element(self : Node) -> HTMLSpanElement? =
  #| (self) => (self instanceof HTMLSpanElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_htmlbr_element(self : Node) -> HTMLBRElement? =
  #| (self) => (self instanceof HTMLBRElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_mod_element(self : Node) -> HTMLModElement? =
  #| (self) => (self instanceof HTMLModElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_picture_element(
  self : Node,
) -> HTMLPictureElement? =
  #| (self) => (self instanceof HTMLPictureElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_source_element(
  self : Node,
) -> HTMLSourceElement? =
  #| (self) => (self instanceof HTMLSourceElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_image_element(
  self : Node,
) -> HTMLImageElement? =
  #| (self) => (self instanceof HTMLImageElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_htmli_frame_element(
  self : Node,
) -> HTMLIFrameElement? =
  #| (self) => (self instanceof HTMLIFrameElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_embed_element(
  self : Node,
) -> HTMLEmbedElement? =
  #| (self) => (self instanceof HTMLEmbedElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_object_element(
  self : Node,
) -> HTMLObjectElement? =
  #| (self) => (self instanceof HTMLObjectElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_video_element(
  self : Node,
) -> HTMLVideoElement? =
  #| (self) => (self instanceof HTMLVideoElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_audio_element(
  self : Node,
) -> HTMLAudioElement? =
  #| (self) => (self instanceof HTMLAudioElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_track_element(
  self : Node,
) -> HTMLTrackElement? =
  #| (self) => (self instanceof HTMLTrackElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_media_element(
  self : Node,
) -> HTMLMediaElement? =
  #| (self) => (self instanceof HTMLMediaElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_map_element(self : Node) -> HTMLMapElement? =
  #| (self) => (self instanceof HTMLMapElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_area_element(self : Node) -> HTMLAreaElement? =
  #| (self) => (self instanceof HTMLAreaElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_table_element(
  self : Node,
) -> HTMLTableElement? =
  #| (self) => (self instanceof HTMLTableElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_table_caption_element(
  self : Node,
) -> HTMLTableCaptionElement? =
  #| (self) => (self instanceof HTMLTableCaptionElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_table_col_element(
  self : Node,
) -> HTMLTableColElement? =
  #| (self) => (self instanceof HTMLTableColElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_table_section_element(
  self : Node,
) -> HTMLTableSectionElement? =
  #| (self) => (self instanceof HTMLTableSectionElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_table_row_element(
  self : Node,
) -> HTMLTableRowElement? =
  #| (self) => (self instanceof HTMLTableRowElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_table_cell_element(
  self : Node,
) -> HTMLTableCellElement? =
  #| (self) => (self instanceof HTMLTableCellElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_form_element(self : Node) -> HTMLFormElement? =
  #| (self) => (self instanceof HTMLFormElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_label_element(
  self : Node,
) -> HTMLLabelElement? =
  #| (self) => (self instanceof HTMLLabelElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_input_element(
  self : Node,
) -> HTMLInputElement? =
  #| (self) => (self instanceof HTMLInputElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_button_element(
  self : Node,
) -> HTMLButtonElement? =
  #| (self) => (self instanceof HTMLButtonElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_select_element(
  self : Node,
) -> HTMLSelectElement? =
  #| (self) => (self instanceof HTMLSelectElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_data_list_element(
  self : Node,
) -> HTMLDataListElement? =
  #| (self) => (self instanceof HTMLDataListElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_opt_group_element(
  self : Node,
) -> HTMLOptGroupElement? =
  #| (self) => (self instanceof HTMLOptGroupElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_option_element(
  self : Node,
) -> HTMLOptionElement? =
  #| (self) => (self instanceof HTMLOptionElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_text_area_element(
  self : Node,
) -> HTMLTextAreaElement? =
  #| (self) => (self instanceof HTMLTextAreaElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_output_element(
  self : Node,
) -> HTMLOutputElement? =
  #| (self) => (self instanceof HTMLOutputElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_progress_element(
  self : Node,
) -> HTMLProgressElement? =
  #| (self) => (self instanceof HTMLProgressElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_meter_element(
  self : Node,
) -> HTMLMeterElement? =
  #| (self) => (self instanceof HTMLMeterElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_field_set_element(
  self : Node,
) -> HTMLFieldSetElement? =
  #| (self) => (self instanceof HTMLFieldSetElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_legend_element(
  self : Node,
) -> HTMLLegendElement? =
  #| (self) => (self instanceof HTMLLegendElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_selected_content_element(
  self : Node,
) -> HTMLSelectedContentElement? =
  #| (self) => (self instanceof HTMLSelectedContentElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_details_element(
  self : Node,
) -> HTMLDetailsElement? =
  #| (self) => (self instanceof HTMLDetailsElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_dialog_element(
  self : Node,
) -> HTMLDialogElement? =
  #| (self) => (self instanceof HTMLDialogElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_script_element(
  self : Node,
) -> HTMLScriptElement? =
  #| (self) => (self instanceof HTMLScriptElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_template_element(
  self : Node,
) -> HTMLTemplateElement? =
  #| (self) => (self instanceof HTMLTemplateElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_slot_element(self : Node) -> HTMLSlotElement? =
  #| (self) => (self instanceof HTMLSlotElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_canvas_element(
  self : Node,
) -> HTMLCanvasElement? =
  #| (self) => (self instanceof HTMLCanvasElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_marquee_element(
  self : Node,
) -> HTMLMarqueeElement? =
  #| (self) => (self instanceof HTMLMarqueeElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_frame_set_element(
  self : Node,
) -> HTMLFrameSetElement? =
  #| (self) => (self instanceof HTMLFrameSetElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_frame_element(
  self : Node,
) -> HTMLFrameElement? =
  #| (self) => (self instanceof HTMLFrameElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_directory_element(
  self : Node,
) -> HTMLDirectoryElement? =
  #| (self) => (self instanceof HTMLDirectoryElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_font_element(self : Node) -> HTMLFontElement? =
  #| (self) => (self instanceof HTMLFontElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_param_element(
  self : Node,
) -> HTMLParamElement? =
  #| (self) => (self instanceof HTMLParamElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_portal_element(
  self : Node,
) -> HTMLPortalElement? =
  #| (self) => (self instanceof HTMLPortalElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_document(self : Node) -> Document? =
  #| (self) => (self instanceof Document) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_xml_document(self : Node) -> XMLDocument? =
  #| (self) => (self instanceof XMLDocument) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_document_type(self : Node) -> DocumentType? =
  #| (self) => (self instanceof DocumentType) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_document_fragment(self : Node) -> DocumentFragment? =
  #| (self) => (self instanceof DocumentFragment) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_shadow_root(self : Node) -> ShadowRoot? =
  #| (self) => (self instanceof ShadowRoot) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_element(self : Node) -> Element? =
  #| (self) => (self instanceof Element) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_attr(self : Node) -> Attr? =
  #| (self) => (self instanceof Attr) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_character_data(self : Node) -> CharacterData? =
  #| (self) => (self instanceof CharacterData) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_text(self : Node) -> Text? =
  #| (self) => (self instanceof Text) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_cdata_section(self : Node) -> CDATASection? =
  #| (self) => (self instanceof CDATASection) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_processing_instruction(
  self : Node,
) -> ProcessingInstruction? =
  #| (self) => (self instanceof ProcessingInstruction) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_comment(self : Node) -> Comment? =
  #| (self) => (self instanceof Comment) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_math_ml_element(self : Node) -> MathMLElement? =
  #| (self) => (self instanceof MathMLElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_svg_path_element(self : Node) -> SVGPathElement? =
  #| (self) => (self instanceof SVGPathElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_fenced_frame_element(
  self : Node,
) -> HTMLFencedFrameElement? =
  #| (self) => (self instanceof HTMLFencedFrameElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_permission_element(
  self : Node,
) -> HTMLPermissionElement? =
  #| (self) => (self instanceof HTMLPermissionElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Node::as_html_geolocation_element(
  self : Node,
) -> HTMLGeolocationElement? =
  #| (self) => (self instanceof HTMLGeolocationElement) ? { $tag: 1, _0: self } : { $tag: 0 }

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
pub extern "js" fn Node::get_base_uri(self : Node) -> String =
  #| (self) => self.baseURI

///|
pub extern "js" fn Node::get_is_connected(self : Node) -> Bool =
  #| (self) => self.isConnected

///|
pub extern "js" fn Node::get_owner_document(self : Node) -> Document? =
  #| (self) => (() => { const v = self.ownerDocument; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Node::get_root_node(self : Node) -> Node =
  #| (self) => self.getRootNode()

///|
extern "js" fn Node::get_root_node_with_options_ffi(
  self : Node,
  options : JsValue,
) -> Node =
  #| (self, options) => self.getRootNode(options)

///|
pub fn Node::get_root_node_with_options(
  self : Node,
  options : GetRootNodeOptions,
) -> Node {
  Node::get_root_node_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn Node::get_parent_node(self : Node) -> Node? =
  #| (self) => (() => { const v = self.parentNode; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Node::get_parent_element(self : Node) -> Element? =
  #| (self) => (() => { const v = self.parentElement; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Node::has_child_nodes(self : Node) -> Bool =
  #| (self) => self.hasChildNodes()

///|
pub extern "js" fn Node::get_child_nodes(self : Node) -> NodeList =
  #| (self) => self.childNodes

///|
pub extern "js" fn Node::get_first_child(self : Node) -> Node? =
  #| (self) => (() => { const v = self.firstChild; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Node::get_last_child(self : Node) -> Node? =
  #| (self) => (() => { const v = self.lastChild; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Node::get_previous_sibling(self : Node) -> Node? =
  #| (self) => (() => { const v = self.previousSibling; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Node::get_next_sibling(self : Node) -> Node? =
  #| (self) => (() => { const v = self.nextSibling; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Node::get_node_value(self : Node) -> String? =
  #| (self) => (self.nodeValue) ?? undefined

///|
pub extern "js" fn Node::set_node_value(self : Node, value : String?) -> Unit =
  #| (self, value) => { self.nodeValue = value }

///|
pub extern "js" fn Node::get_text_content(self : Node) -> String? =
  #| (self) => (self.textContent) ?? undefined

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
  #| (self, other_node) => self.isEqualNode((other_node.$tag === 1 ? other_node._0 : null))

///|
pub extern "js" fn Node::is_same_node(self : Node, other_node : Node?) -> Bool =
  #| (self, other_node) => self.isSameNode((other_node.$tag === 1 ? other_node._0 : null))

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
  #| (self, other) => self.contains((other.$tag === 1 ? other._0 : null))

///|
pub extern "js" fn Node::lookup_prefix(
  self : Node,
  namespace_ : String?,
) -> String? =
  #| (self, namespace_) => (self.lookupPrefix(namespace_)) ?? undefined

///|
pub extern "js" fn Node::lookup_namespace_uri(
  self : Node,
  prefix : String?,
) -> String? =
  #| (self, prefix) => (self.lookupNamespaceURI(prefix)) ?? undefined

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
  #| (self, node, child) => self.insertBefore(node, (child.$tag === 1 ? child._0 : null))

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
/// Cast JsValue to Document (unchecked)
pub extern "js" fn Document::from_js_value(v : JsValue) -> Document =
  #| (v) => v

///|
/// Safely cast JsValue to Document (checked with instanceof)
pub extern "js" fn Document::from_js_value_opt(v : JsValue) -> Document? =
  #| (v) => (v instanceof Document) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Document (checked with instanceof)
pub extern "js" fn JsValue::as_document(self : JsValue) -> Document? =
  #| (self) => (self instanceof Document) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Document (unchecked)
pub extern "js" fn JsValue::to_document(self : JsValue) -> Document =
  #| (self) => self

///|
pub extern "js" fn Document::to_node(self : Document) -> Node =
  #| (self) => self

///|
pub extern "js" fn Document::to_event_target(self : Document) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn Document::as_xml_document(self : Document) -> XMLDocument? =
  #| (self) => (self instanceof XMLDocument) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Document::new() -> Document =
  #| () => new Document()

///|
pub extern "js" fn Document::get_implementation(
  self : Document,
) -> DOMImplementation =
  #| (self) => self.implementation

///|
pub extern "js" fn Document::get_url(self : Document) -> String =
  #| (self) => self.URL

///|
pub extern "js" fn Document::get_document_uri(self : Document) -> String =
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
  #| (self) => (() => { const v = self.doctype; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Document::get_document_element(self : Document) -> Element? =
  #| (self) => (() => { const v = self.documentElement; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Document::get_elements_by_tag_name(
  self : Document,
  qualified_name : String,
) -> HTMLCollection =
  #| (self, qualified_name) => self.getElementsByTagName(qualified_name)

///|
pub extern "js" fn Document::get_elements_by_tag_name_ns(
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
pub extern "js" fn Document::create_element_ns(
  self : Document,
  namespace_ : String?,
  qualified_name : String,
) -> Element =
  #| (self, namespace_, qualified_name) => self.createElementNS(namespace_, qualified_name)

///|
pub extern "js" fn Document::create_element_ns_with_options(
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
pub extern "js" fn Document::create_cdata_section(
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
pub extern "js" fn Document::create_attribute_ns(
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
  #| (self, root, what_to_show, filter) => self.createNodeIterator(root, what_to_show, (filter.$tag === 1 ? filter._0 : null))

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
  #| (self, root, what_to_show, filter) => self.createTreeWalker(root, what_to_show, (filter.$tag === 1 ? filter._0 : null))

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
pub extern "js" fn Document::get_root_element(
  self : Document,
) -> SVGSVGElement? =
  #| (self) => (() => { const v = self.rootElement; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Document::element_from_point(
  self : Document,
  x : Double,
  y : Double,
) -> Element? =
  #| (self, x, y) => (() => { const v = self.elementFromPoint(x, y); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

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
  #| (self, x, y) => (() => { const v = self.caretPositionFromPoint(x, y); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
extern "js" fn Document::caret_position_from_point_with_options_ffi(
  self : Document,
  x : Double,
  y : Double,
  options : JsValue,
) -> CaretPosition? =
  #| (self, x, y, options) => (() => { const v = self.caretPositionFromPoint(x, y, options); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub fn Document::caret_position_from_point_with_options(
  self : Document,
  x : Double,
  y : Double,
  options : CaretPositionFromPointOptions,
) -> CaretPosition? {
  Document::caret_position_from_point_with_options_ffi(
    self,
    x,
    y,
    options.to_js(),
  )
}

///|
pub extern "js" fn Document::get_scrolling_element(self : Document) -> Element? =
  #| (self) => (() => { const v = self.scrollingElement; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Document::parse_html_unsafe(
  html : TrustedHTMLOrString,
) -> Document =
  #| (html) => Document.parseHTMLUnsafe(html)

///|
pub extern "js" fn Document::get_location(self : Document) -> Location? =
  #| (self) => (() => { const v = self.location; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

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
  #| (self) => ['loading', 'interactive', 'complete'].indexOf(self.readyState)

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
  #| (self) => (() => { const v = self.body; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Document::set_body(
  self : Document,
  value : HTMLElement?,
) -> Unit =
  #| (self, value) => { self.body = (value.$tag === 1 ? value._0 : null) }

///|
pub extern "js" fn Document::get_head(self : Document) -> HTMLHeadElement? =
  #| (self) => (() => { const v = self.head; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

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
  #| (self) => (() => { const v = self.currentScript; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

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
) -> Window? =
  #| (self, url, name, features) => (() => { const v = self.open(url, name, features); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

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
pub extern "js" fn Document::get_default_view(self : Document) -> Window? =
  #| (self) => (() => { const v = self.defaultView; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

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
  show_ui : Bool,
  value : String,
) -> Bool =
  #| (self, command_id, show_ui, value) => self.execCommand(command_id, show_ui, value)

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
  #| (self) => ['visible', 'hidden'].indexOf(self.visibilityState)

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
pub extern "js" fn Document::get_fragment_directive(
  self : Document,
) -> FragmentDirective =
  #| (self) => self.fragmentDirective

///|
pub extern "js" fn Document::request_storage_access_for(
  self : Document,
  requested_origin : String,
) -> Promise[Unit] =
  #| (self, requested_origin) => self.requestStorageAccessFor(requested_origin)

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
pub extern "js" fn Document::get_timeline(self : Document) -> DocumentTimeline =
  #| (self) => self.timeline

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
  #| (self) => (() => { const v = self.activeViewTransition; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

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
pub extern "js" fn Document::has_unpartitioned_cookie_access(
  self : Document,
) -> Promise[Bool] =
  #| (self) => self.hasUnpartitionedCookieAccess()

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
pub extern "js" fn Document::get_named_flows(self : Document) -> NamedFlowMap =
  #| (self) => self.namedFlows

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
pub extern "js" fn Document::get_selection(self : Document) -> Selection? =
  #| (self) => (() => { const v = self.getSelection(); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Document::get_box_quads(self : Document) -> Array[DOMQuad] =
  #| (self) => self.getBoxQuads()

///|
extern "js" fn Document::get_box_quads_with_options_ffi(
  self : Document,
  options : JsValue,
) -> Array[DOMQuad] =
  #| (self, options) => self.getBoxQuads(options)

///|
pub fn Document::get_box_quads_with_options(
  self : Document,
  options : BoxQuadOptions,
) -> Array[DOMQuad] {
  Document::get_box_quads_with_options_ffi(self, options.to_js())
}

///|
extern "js" fn Document::convert_quad_from_node_ffi(
  self : Document,
  quad : JsValue,
  from : GeometryNode,
) -> DOMQuad =
  #| (self, quad, from) => self.convertQuadFromNode(quad, from)

///|
pub fn Document::convert_quad_from_node(
  self : Document,
  quad : DOMQuadInit,
  from : GeometryNode,
) -> DOMQuad {
  Document::convert_quad_from_node_ffi(self, quad.to_js(), from)
}

///|
extern "js" fn Document::convert_quad_from_node_with_options_ffi(
  self : Document,
  quad : JsValue,
  from : GeometryNode,
  options : JsValue,
) -> DOMQuad =
  #| (self, quad, from, options) => self.convertQuadFromNode(quad, from, options)

///|
pub fn Document::convert_quad_from_node_with_options(
  self : Document,
  quad : DOMQuadInit,
  from : GeometryNode,
  options : ConvertCoordinateOptions,
) -> DOMQuad {
  Document::convert_quad_from_node_with_options_ffi(
    self,
    quad.to_js(),
    from,
    options.to_js(),
  )
}

///|
pub extern "js" fn Document::convert_rect_from_node(
  self : Document,
  rect : DOMRectReadOnly,
  from : GeometryNode,
) -> DOMQuad =
  #| (self, rect, from) => self.convertRectFromNode(rect, from)

///|
extern "js" fn Document::convert_rect_from_node_with_options_ffi(
  self : Document,
  rect : DOMRectReadOnly,
  from : GeometryNode,
  options : JsValue,
) -> DOMQuad =
  #| (self, rect, from, options) => self.convertRectFromNode(rect, from, options)

///|
pub fn Document::convert_rect_from_node_with_options(
  self : Document,
  rect : DOMRectReadOnly,
  from : GeometryNode,
  options : ConvertCoordinateOptions,
) -> DOMQuad {
  Document::convert_rect_from_node_with_options_ffi(
    self,
    rect,
    from,
    options.to_js(),
  )
}

///|
extern "js" fn Document::convert_point_from_node_ffi(
  self : Document,
  point : JsValue,
  from : GeometryNode,
) -> DOMPoint =
  #| (self, point, from) => self.convertPointFromNode(point, from)

///|
pub fn Document::convert_point_from_node(
  self : Document,
  point : DOMPointInit,
  from : GeometryNode,
) -> DOMPoint {
  Document::convert_point_from_node_ffi(self, point.to_js(), from)
}

///|
extern "js" fn Document::convert_point_from_node_with_options_ffi(
  self : Document,
  point : JsValue,
  from : GeometryNode,
  options : JsValue,
) -> DOMPoint =
  #| (self, point, from, options) => self.convertPointFromNode(point, from, options)

///|
pub fn Document::convert_point_from_node_with_options(
  self : Document,
  point : DOMPointInit,
  from : GeometryNode,
  options : ConvertCoordinateOptions,
) -> DOMPoint {
  Document::convert_point_from_node_with_options_ffi(
    self,
    point.to_js(),
    from,
    options.to_js(),
  )
}

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
pub extern "js" fn Document::get_element_by_id(
  self : Document,
  element_id : String,
) -> Element? =
  #| (self, element_id) => (() => { const v = self.getElementById(element_id); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Document::get_active_element(self : Document) -> Element? =
  #| (self) => (() => { const v = self.activeElement; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Document::get_custom_element_registry(
  self : Document,
) -> CustomElementRegistry? =
  #| (self) => (() => { const v = self.customElementRegistry; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Document::get_style_sheets(
  self : Document,
) -> StyleSheetList =
  #| (self) => self.styleSheets

///|
pub extern "js" fn Document::get_adopted_style_sheets(
  self : Document,
) -> Array[CSSStyleSheet] =
  #| (self) => self.adoptedStyleSheets

///|
pub extern "js" fn Document::set_adopted_style_sheets(
  self : Document,
  value : Array[CSSStyleSheet],
) -> Unit =
  #| (self, value) => { self.adoptedStyleSheets = value }

///|
pub extern "js" fn Document::get_fullscreen_element(
  self : Document,
) -> Element? =
  #| (self) => (() => { const v = self.fullscreenElement; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Document::get_animations(
  self : Document,
) -> Array[Animation] =
  #| (self) => self.getAnimations()

///|
pub extern "js" fn Document::get_picture_in_picture_element(
  self : Document,
) -> Element? =
  #| (self) => (() => { const v = self.pictureInPictureElement; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Document::get_pointer_lock_element(
  self : Document,
) -> Element? =
  #| (self) => (() => { const v = self.pointerLockElement; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Document::get_children(self : Document) -> HTMLCollection =
  #| (self) => self.children

///|
pub extern "js" fn Document::get_first_element_child(
  self : Document,
) -> Element? =
  #| (self) => (() => { const v = self.firstElementChild; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Document::get_last_element_child(
  self : Document,
) -> Element? =
  #| (self) => (() => { const v = self.lastElementChild; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

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
  #| (self, node, child) => self.moveBefore(node, (child.$tag === 1 ? child._0 : null))

///|
pub extern "js" fn Document::query_selector(
  self : Document,
  selectors : String,
) -> Element? =
  #| (self, selectors) => (() => { const v = self.querySelector(selectors); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

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
  #| (self, expression, resolver) => self.createExpression(expression, (resolver.$tag === 1 ? resolver._0 : null))

///|
pub extern "js" fn Document::create_ns_resolver(
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
  #| (self, expression, context_node, resolver, type_, result) => self.evaluate(expression, context_node, (resolver.$tag === 1 ? resolver._0 : null), type_, (result.$tag === 1 ? result._0 : null))

///|
pub extern "js" fn Document::get_fonts(self : Document) -> FontFaceSet =
  #| (self) => self.fonts

///|
pub extern "js" fn Document::convert_quad_from_node_with_text(
  self : Document,
  quad : DOMQuadInit,
  from : Text,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, quad, from, options) => self.convertQuadFromNode(quad, from, options)

///|
pub extern "js" fn Document::convert_quad_from_node_with_element(
  self : Document,
  quad : DOMQuadInit,
  from : Element,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, quad, from, options) => self.convertQuadFromNode(quad, from, options)

///|
pub extern "js" fn Document::convert_quad_from_node_with_css_pseudo_element(
  self : Document,
  quad : DOMQuadInit,
  from : CSSPseudoElement,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, quad, from, options) => self.convertQuadFromNode(quad, from, options)

///|
pub extern "js" fn Document::convert_quad_from_node_with_document(
  self : Document,
  quad : DOMQuadInit,
  from : Document,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, quad, from, options) => self.convertQuadFromNode(quad, from, options)

///|
pub extern "js" fn Document::convert_rect_from_node_with_text(
  self : Document,
  rect : DOMRectReadOnly,
  from : Text,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, rect, from, options) => self.convertRectFromNode(rect, from, options)

///|
pub extern "js" fn Document::convert_rect_from_node_with_element(
  self : Document,
  rect : DOMRectReadOnly,
  from : Element,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, rect, from, options) => self.convertRectFromNode(rect, from, options)

///|
pub extern "js" fn Document::convert_rect_from_node_with_css_pseudo_element(
  self : Document,
  rect : DOMRectReadOnly,
  from : CSSPseudoElement,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, rect, from, options) => self.convertRectFromNode(rect, from, options)

///|
pub extern "js" fn Document::convert_rect_from_node_with_document(
  self : Document,
  rect : DOMRectReadOnly,
  from : Document,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, rect, from, options) => self.convertRectFromNode(rect, from, options)

///|
pub extern "js" fn Document::convert_point_from_node_with_text(
  self : Document,
  point : DOMPointInit,
  from : Text,
  options : ConvertCoordinateOptions,
) -> DOMPoint =
  #| (self, point, from, options) => self.convertPointFromNode(point, from, options)

///|
pub extern "js" fn Document::convert_point_from_node_with_element(
  self : Document,
  point : DOMPointInit,
  from : Element,
  options : ConvertCoordinateOptions,
) -> DOMPoint =
  #| (self, point, from, options) => self.convertPointFromNode(point, from, options)

///|
pub extern "js" fn Document::convert_point_from_node_with_css_pseudo_element(
  self : Document,
  point : DOMPointInit,
  from : CSSPseudoElement,
  options : ConvertCoordinateOptions,
) -> DOMPoint =
  #| (self, point, from, options) => self.convertPointFromNode(point, from, options)

///|
pub extern "js" fn Document::convert_point_from_node_with_document(
  self : Document,
  point : DOMPointInit,
  from : Document,
  options : ConvertCoordinateOptions,
) -> DOMPoint =
  #| (self, point, from, options) => self.convertPointFromNode(point, from, options)

///|
/// XMLDocument interface
pub type XMLDocument

///|
pub extern "js" fn XMLDocument::to_js_value(self : XMLDocument) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XMLDocument (unchecked)
pub extern "js" fn XMLDocument::from_js_value(v : JsValue) -> XMLDocument =
  #| (v) => v

///|
/// Safely cast JsValue to XMLDocument (checked with instanceof)
pub extern "js" fn XMLDocument::from_js_value_opt(v : JsValue) -> XMLDocument? =
  #| (v) => (v instanceof XMLDocument) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XMLDocument (checked with instanceof)
pub extern "js" fn JsValue::as_xml_document(self : JsValue) -> XMLDocument? =
  #| (self) => (self instanceof XMLDocument) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XMLDocument (unchecked)
pub extern "js" fn JsValue::to_xml_document(self : JsValue) -> XMLDocument =
  #| (self) => self

///|
pub extern "js" fn XMLDocument::to_document(self : XMLDocument) -> Document =
  #| (self) => self

///|
pub extern "js" fn XMLDocument::to_node(self : XMLDocument) -> Node =
  #| (self) => self

///|
pub extern "js" fn XMLDocument::to_event_target(
  self : XMLDocument,
) -> EventTarget =
  #| (self) => self

///|
/// DOMImplementation interface
pub type DOMImplementation

///|
pub extern "js" fn DOMImplementation::to_js_value(
  self : DOMImplementation,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to DOMImplementation (unchecked)
pub extern "js" fn DOMImplementation::from_js_value(
  v : JsValue,
) -> DOMImplementation =
  #| (v) => v

///|
/// Safely cast JsValue to DOMImplementation (checked with instanceof)
pub extern "js" fn DOMImplementation::from_js_value_opt(
  v : JsValue,
) -> DOMImplementation? =
  #| (v) => (v instanceof DOMImplementation) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to DOMImplementation (checked with instanceof)
pub extern "js" fn JsValue::as_dom_implementation(
  self : JsValue,
) -> DOMImplementation? =
  #| (self) => (self instanceof DOMImplementation) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to DOMImplementation (unchecked)
pub extern "js" fn JsValue::to_dom_implementation(
  self : JsValue,
) -> DOMImplementation =
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
  #| (self, namespace_, qualified_name, doctype) => self.createDocument(namespace_, qualified_name, (doctype.$tag === 1 ? doctype._0 : null))

///|
pub extern "js" fn DOMImplementation::create_html_document(
  self : DOMImplementation,
) -> Document =
  #| (self) => self.createHTMLDocument()

///|
pub extern "js" fn DOMImplementation::create_html_document_with_title(
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
/// Cast JsValue to DocumentType (unchecked)
pub extern "js" fn DocumentType::from_js_value(v : JsValue) -> DocumentType =
  #| (v) => v

///|
/// Safely cast JsValue to DocumentType (checked with instanceof)
pub extern "js" fn DocumentType::from_js_value_opt(
  v : JsValue,
) -> DocumentType? =
  #| (v) => (v instanceof DocumentType) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to DocumentType (checked with instanceof)
pub extern "js" fn JsValue::as_document_type(self : JsValue) -> DocumentType? =
  #| (self) => (self instanceof DocumentType) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to DocumentType (unchecked)
pub extern "js" fn JsValue::to_document_type(self : JsValue) -> DocumentType =
  #| (self) => self

///|
pub extern "js" fn DocumentType::to_node(self : DocumentType) -> Node =
  #| (self) => self

///|
pub extern "js" fn DocumentType::to_event_target(
  self : DocumentType,
) -> EventTarget =
  #| (self) => self

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
/// Cast JsValue to DocumentFragment (unchecked)
pub extern "js" fn DocumentFragment::from_js_value(
  v : JsValue,
) -> DocumentFragment =
  #| (v) => v

///|
/// Safely cast JsValue to DocumentFragment (checked with instanceof)
pub extern "js" fn DocumentFragment::from_js_value_opt(
  v : JsValue,
) -> DocumentFragment? =
  #| (v) => (v instanceof DocumentFragment) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to DocumentFragment (checked with instanceof)
pub extern "js" fn JsValue::as_document_fragment(
  self : JsValue,
) -> DocumentFragment? =
  #| (self) => (self instanceof DocumentFragment) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to DocumentFragment (unchecked)
pub extern "js" fn JsValue::to_document_fragment(
  self : JsValue,
) -> DocumentFragment =
  #| (self) => self

///|
pub extern "js" fn DocumentFragment::to_node(self : DocumentFragment) -> Node =
  #| (self) => self

///|
pub extern "js" fn DocumentFragment::to_event_target(
  self : DocumentFragment,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn DocumentFragment::as_svg_use_element_shadow_root(
  self : DocumentFragment,
) -> SVGUseElementShadowRoot? =
  #| (self) => (self instanceof SVGUseElementShadowRoot) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn DocumentFragment::as_shadow_root(
  self : DocumentFragment,
) -> ShadowRoot? =
  #| (self) => (self instanceof ShadowRoot) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn DocumentFragment::new() -> DocumentFragment =
  #| () => new DocumentFragment()

///|
pub extern "js" fn DocumentFragment::get_element_by_id(
  self : DocumentFragment,
  element_id : String,
) -> Element? =
  #| (self, element_id) => (() => { const v = self.getElementById(element_id); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn DocumentFragment::get_children(
  self : DocumentFragment,
) -> HTMLCollection =
  #| (self) => self.children

///|
pub extern "js" fn DocumentFragment::get_first_element_child(
  self : DocumentFragment,
) -> Element? =
  #| (self) => (() => { const v = self.firstElementChild; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn DocumentFragment::get_last_element_child(
  self : DocumentFragment,
) -> Element? =
  #| (self) => (() => { const v = self.lastElementChild; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

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
  #| (self, node, child) => self.moveBefore(node, (child.$tag === 1 ? child._0 : null))

///|
pub extern "js" fn DocumentFragment::query_selector(
  self : DocumentFragment,
  selectors : String,
) -> Element? =
  #| (self, selectors) => (() => { const v = self.querySelector(selectors); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

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
/// Cast JsValue to ShadowRoot (unchecked)
pub extern "js" fn ShadowRoot::from_js_value(v : JsValue) -> ShadowRoot =
  #| (v) => v

///|
/// Safely cast JsValue to ShadowRoot (checked with instanceof)
pub extern "js" fn ShadowRoot::from_js_value_opt(v : JsValue) -> ShadowRoot? =
  #| (v) => (v instanceof ShadowRoot) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ShadowRoot (checked with instanceof)
pub extern "js" fn JsValue::as_shadow_root(self : JsValue) -> ShadowRoot? =
  #| (self) => (self instanceof ShadowRoot) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ShadowRoot (unchecked)
pub extern "js" fn JsValue::to_shadow_root(self : JsValue) -> ShadowRoot =
  #| (self) => self

///|
pub extern "js" fn ShadowRoot::to_document_fragment(
  self : ShadowRoot,
) -> DocumentFragment =
  #| (self) => self

///|
pub extern "js" fn ShadowRoot::to_node(self : ShadowRoot) -> Node =
  #| (self) => self

///|
pub extern "js" fn ShadowRoot::to_event_target(
  self : ShadowRoot,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn ShadowRoot::as_svg_use_element_shadow_root(
  self : ShadowRoot,
) -> SVGUseElementShadowRoot? =
  #| (self) => (self instanceof SVGUseElementShadowRoot) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn ShadowRoot::get_mode(self : ShadowRoot) -> ShadowRootMode =
  #| (self) => ['open', 'closed'].indexOf(self.mode)

///|
pub extern "js" fn ShadowRoot::get_delegates_focus(self : ShadowRoot) -> Bool =
  #| (self) => self.delegatesFocus

///|
pub extern "js" fn ShadowRoot::get_slot_assignment(
  self : ShadowRoot,
) -> SlotAssignmentMode =
  #| (self) => ['manual', 'named'].indexOf(self.slotAssignment)

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
pub extern "js" fn ShadowRoot::set_html_unsafe(
  self : ShadowRoot,
  html : TrustedHTMLOrString,
) -> Unit =
  #| (self, html) => self.setHTMLUnsafe(html)

///|
pub extern "js" fn ShadowRoot::get_html(self : ShadowRoot) -> String =
  #| (self) => self.getHTML()

///|
extern "js" fn ShadowRoot::get_html_with_options_ffi(
  self : ShadowRoot,
  options : JsValue,
) -> String =
  #| (self, options) => self.getHTML(options)

///|
pub fn ShadowRoot::get_html_with_options(
  self : ShadowRoot,
  options : GetHTMLOptions,
) -> String {
  ShadowRoot::get_html_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn ShadowRoot::get_inner_html(
  self : ShadowRoot,
) -> TrustedHTMLOrString =
  #| (self) => self.innerHTML

///|
pub extern "js" fn ShadowRoot::set_inner_html(
  self : ShadowRoot,
  value : TrustedHTMLOrString,
) -> Unit =
  #| (self, value) => { self.innerHTML = value }

///|
pub extern "js" fn ShadowRoot::get_active_element(
  self : ShadowRoot,
) -> Element? =
  #| (self) => (() => { const v = self.activeElement; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn ShadowRoot::get_custom_element_registry(
  self : ShadowRoot,
) -> CustomElementRegistry? =
  #| (self) => (() => { const v = self.customElementRegistry; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn ShadowRoot::get_style_sheets(
  self : ShadowRoot,
) -> StyleSheetList =
  #| (self) => self.styleSheets

///|
pub extern "js" fn ShadowRoot::get_adopted_style_sheets(
  self : ShadowRoot,
) -> Array[CSSStyleSheet] =
  #| (self) => self.adoptedStyleSheets

///|
pub extern "js" fn ShadowRoot::set_adopted_style_sheets(
  self : ShadowRoot,
  value : Array[CSSStyleSheet],
) -> Unit =
  #| (self, value) => { self.adoptedStyleSheets = value }

///|
pub extern "js" fn ShadowRoot::get_fullscreen_element(
  self : ShadowRoot,
) -> Element? =
  #| (self) => (() => { const v = self.fullscreenElement; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn ShadowRoot::get_animations(
  self : ShadowRoot,
) -> Array[Animation] =
  #| (self) => self.getAnimations()

///|
pub extern "js" fn ShadowRoot::get_picture_in_picture_element(
  self : ShadowRoot,
) -> Element? =
  #| (self) => (() => { const v = self.pictureInPictureElement; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn ShadowRoot::get_pointer_lock_element(
  self : ShadowRoot,
) -> Element? =
  #| (self) => (() => { const v = self.pointerLockElement; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// Element interface
pub type Element

///|
pub extern "js" fn Element::to_js_value(self : Element) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Element (unchecked)
pub extern "js" fn Element::from_js_value(v : JsValue) -> Element =
  #| (v) => v

///|
/// Safely cast JsValue to Element (checked with instanceof)
pub extern "js" fn Element::from_js_value_opt(v : JsValue) -> Element? =
  #| (v) => (v instanceof Element) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Element (checked with instanceof)
pub extern "js" fn JsValue::as_element(self : JsValue) -> Element? =
  #| (self) => (self instanceof Element) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Element (unchecked)
pub extern "js" fn JsValue::to_element(self : JsValue) -> Element =
  #| (self) => self

///|
pub extern "js" fn Element::to_node(self : Element) -> Node =
  #| (self) => self

///|
pub extern "js" fn Element::to_event_target(self : Element) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn Element::as_svg_animation_element(
  self : Element,
) -> SVGAnimationElement? =
  #| (self) => (self instanceof SVGAnimationElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_animate_element(
  self : Element,
) -> SVGAnimateElement? =
  #| (self) => (self instanceof SVGAnimateElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_set_element(
  self : Element,
) -> SVGSetElement? =
  #| (self) => (self instanceof SVGSetElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_animate_motion_element(
  self : Element,
) -> SVGAnimateMotionElement? =
  #| (self) => (self instanceof SVGAnimateMotionElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svgm_path_element(
  self : Element,
) -> SVGMPathElement? =
  #| (self) => (self instanceof SVGMPathElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_animate_transform_element(
  self : Element,
) -> SVGAnimateTransformElement? =
  #| (self) => (self instanceof SVGAnimateTransformElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_clip_path_element(
  self : Element,
) -> SVGClipPathElement? =
  #| (self) => (self instanceof SVGClipPathElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_mask_element(
  self : Element,
) -> SVGMaskElement? =
  #| (self) => (self instanceof SVGMaskElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_filter_element(
  self : Element,
) -> SVGFilterElement? =
  #| (self) => (self instanceof SVGFilterElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svgfe_blend_element(
  self : Element,
) -> SVGFEBlendElement? =
  #| (self) => (self instanceof SVGFEBlendElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svgfe_color_matrix_element(
  self : Element,
) -> SVGFEColorMatrixElement? =
  #| (self) => (self instanceof SVGFEColorMatrixElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svgfe_component_transfer_element(
  self : Element,
) -> SVGFEComponentTransferElement? =
  #| (self) => (self instanceof SVGFEComponentTransferElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_component_transfer_function_element(
  self : Element,
) -> SVGComponentTransferFunctionElement? =
  #| (self) => (self instanceof SVGComponentTransferFunctionElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svgfe_func_r_element(
  self : Element,
) -> SVGFEFuncRElement? =
  #| (self) => (self instanceof SVGFEFuncRElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svgfe_func_g_element(
  self : Element,
) -> SVGFEFuncGElement? =
  #| (self) => (self instanceof SVGFEFuncGElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svgfe_func_b_element(
  self : Element,
) -> SVGFEFuncBElement? =
  #| (self) => (self instanceof SVGFEFuncBElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svgfe_func_a_element(
  self : Element,
) -> SVGFEFuncAElement? =
  #| (self) => (self instanceof SVGFEFuncAElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svgfe_composite_element(
  self : Element,
) -> SVGFECompositeElement? =
  #| (self) => (self instanceof SVGFECompositeElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svgfe_convolve_matrix_element(
  self : Element,
) -> SVGFEConvolveMatrixElement? =
  #| (self) => (self instanceof SVGFEConvolveMatrixElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svgfe_diffuse_lighting_element(
  self : Element,
) -> SVGFEDiffuseLightingElement? =
  #| (self) => (self instanceof SVGFEDiffuseLightingElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svgfe_distant_light_element(
  self : Element,
) -> SVGFEDistantLightElement? =
  #| (self) => (self instanceof SVGFEDistantLightElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svgfe_point_light_element(
  self : Element,
) -> SVGFEPointLightElement? =
  #| (self) => (self instanceof SVGFEPointLightElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svgfe_spot_light_element(
  self : Element,
) -> SVGFESpotLightElement? =
  #| (self) => (self instanceof SVGFESpotLightElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svgfe_displacement_map_element(
  self : Element,
) -> SVGFEDisplacementMapElement? =
  #| (self) => (self instanceof SVGFEDisplacementMapElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svgfe_drop_shadow_element(
  self : Element,
) -> SVGFEDropShadowElement? =
  #| (self) => (self instanceof SVGFEDropShadowElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svgfe_flood_element(
  self : Element,
) -> SVGFEFloodElement? =
  #| (self) => (self instanceof SVGFEFloodElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svgfe_gaussian_blur_element(
  self : Element,
) -> SVGFEGaussianBlurElement? =
  #| (self) => (self instanceof SVGFEGaussianBlurElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svgfe_image_element(
  self : Element,
) -> SVGFEImageElement? =
  #| (self) => (self instanceof SVGFEImageElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svgfe_merge_element(
  self : Element,
) -> SVGFEMergeElement? =
  #| (self) => (self instanceof SVGFEMergeElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svgfe_merge_node_element(
  self : Element,
) -> SVGFEMergeNodeElement? =
  #| (self) => (self instanceof SVGFEMergeNodeElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svgfe_morphology_element(
  self : Element,
) -> SVGFEMorphologyElement? =
  #| (self) => (self instanceof SVGFEMorphologyElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svgfe_offset_element(
  self : Element,
) -> SVGFEOffsetElement? =
  #| (self) => (self instanceof SVGFEOffsetElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svgfe_specular_lighting_element(
  self : Element,
) -> SVGFESpecularLightingElement? =
  #| (self) => (self instanceof SVGFESpecularLightingElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svgfe_tile_element(
  self : Element,
) -> SVGFETileElement? =
  #| (self) => (self instanceof SVGFETileElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svgfe_turbulence_element(
  self : Element,
) -> SVGFETurbulenceElement? =
  #| (self) => (self instanceof SVGFETurbulenceElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_element(self : Element) -> SVGElement? =
  #| (self) => (self instanceof SVGElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_graphics_element(
  self : Element,
) -> SVGGraphicsElement? =
  #| (self) => (self instanceof SVGGraphicsElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_geometry_element(
  self : Element,
) -> SVGGeometryElement? =
  #| (self) => (self instanceof SVGGeometryElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svgsvg_element(self : Element) -> SVGSVGElement? =
  #| (self) => (self instanceof SVGSVGElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svgg_element(self : Element) -> SVGGElement? =
  #| (self) => (self instanceof SVGGElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_defs_element(
  self : Element,
) -> SVGDefsElement? =
  #| (self) => (self instanceof SVGDefsElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_desc_element(
  self : Element,
) -> SVGDescElement? =
  #| (self) => (self instanceof SVGDescElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_metadata_element(
  self : Element,
) -> SVGMetadataElement? =
  #| (self) => (self instanceof SVGMetadataElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_title_element(
  self : Element,
) -> SVGTitleElement? =
  #| (self) => (self instanceof SVGTitleElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_symbol_element(
  self : Element,
) -> SVGSymbolElement? =
  #| (self) => (self instanceof SVGSymbolElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_use_element(
  self : Element,
) -> SVGUseElement? =
  #| (self) => (self instanceof SVGUseElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_switch_element(
  self : Element,
) -> SVGSwitchElement? =
  #| (self) => (self instanceof SVGSwitchElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_style_element(
  self : Element,
) -> SVGStyleElement? =
  #| (self) => (self instanceof SVGStyleElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_rect_element(
  self : Element,
) -> SVGRectElement? =
  #| (self) => (self instanceof SVGRectElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_circle_element(
  self : Element,
) -> SVGCircleElement? =
  #| (self) => (self instanceof SVGCircleElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_ellipse_element(
  self : Element,
) -> SVGEllipseElement? =
  #| (self) => (self instanceof SVGEllipseElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_line_element(
  self : Element,
) -> SVGLineElement? =
  #| (self) => (self instanceof SVGLineElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_polyline_element(
  self : Element,
) -> SVGPolylineElement? =
  #| (self) => (self instanceof SVGPolylineElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_polygon_element(
  self : Element,
) -> SVGPolygonElement? =
  #| (self) => (self instanceof SVGPolygonElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_text_content_element(
  self : Element,
) -> SVGTextContentElement? =
  #| (self) => (self instanceof SVGTextContentElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_text_positioning_element(
  self : Element,
) -> SVGTextPositioningElement? =
  #| (self) => (self instanceof SVGTextPositioningElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_text_element(
  self : Element,
) -> SVGTextElement? =
  #| (self) => (self instanceof SVGTextElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svgt_span_element(
  self : Element,
) -> SVGTSpanElement? =
  #| (self) => (self instanceof SVGTSpanElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_text_path_element(
  self : Element,
) -> SVGTextPathElement? =
  #| (self) => (self instanceof SVGTextPathElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_image_element(
  self : Element,
) -> SVGImageElement? =
  #| (self) => (self instanceof SVGImageElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_foreign_object_element(
  self : Element,
) -> SVGForeignObjectElement? =
  #| (self) => (self instanceof SVGForeignObjectElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_marker_element(
  self : Element,
) -> SVGMarkerElement? =
  #| (self) => (self instanceof SVGMarkerElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_gradient_element(
  self : Element,
) -> SVGGradientElement? =
  #| (self) => (self instanceof SVGGradientElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_linear_gradient_element(
  self : Element,
) -> SVGLinearGradientElement? =
  #| (self) => (self instanceof SVGLinearGradientElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_radial_gradient_element(
  self : Element,
) -> SVGRadialGradientElement? =
  #| (self) => (self instanceof SVGRadialGradientElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_stop_element(
  self : Element,
) -> SVGStopElement? =
  #| (self) => (self instanceof SVGStopElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_pattern_element(
  self : Element,
) -> SVGPatternElement? =
  #| (self) => (self instanceof SVGPatternElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_script_element(
  self : Element,
) -> SVGScriptElement? =
  #| (self) => (self instanceof SVGScriptElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svga_element(self : Element) -> SVGAElement? =
  #| (self) => (self instanceof SVGAElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_view_element(
  self : Element,
) -> SVGViewElement? =
  #| (self) => (self instanceof SVGViewElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_model_element(
  self : Element,
) -> HTMLModelElement? =
  #| (self) => (self instanceof HTMLModelElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_element(self : Element) -> HTMLElement? =
  #| (self) => (self instanceof HTMLElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_unknown_element(
  self : Element,
) -> HTMLUnknownElement? =
  #| (self) => (self instanceof HTMLUnknownElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_html_element(
  self : Element,
) -> HTMLHtmlElement? =
  #| (self) => (self instanceof HTMLHtmlElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_head_element(
  self : Element,
) -> HTMLHeadElement? =
  #| (self) => (self instanceof HTMLHeadElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_title_element(
  self : Element,
) -> HTMLTitleElement? =
  #| (self) => (self instanceof HTMLTitleElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_base_element(
  self : Element,
) -> HTMLBaseElement? =
  #| (self) => (self instanceof HTMLBaseElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_link_element(
  self : Element,
) -> HTMLLinkElement? =
  #| (self) => (self instanceof HTMLLinkElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_meta_element(
  self : Element,
) -> HTMLMetaElement? =
  #| (self) => (self instanceof HTMLMetaElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_style_element(
  self : Element,
) -> HTMLStyleElement? =
  #| (self) => (self instanceof HTMLStyleElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_body_element(
  self : Element,
) -> HTMLBodyElement? =
  #| (self) => (self instanceof HTMLBodyElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_heading_element(
  self : Element,
) -> HTMLHeadingElement? =
  #| (self) => (self instanceof HTMLHeadingElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_paragraph_element(
  self : Element,
) -> HTMLParagraphElement? =
  #| (self) => (self instanceof HTMLParagraphElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_htmlhr_element(self : Element) -> HTMLHRElement? =
  #| (self) => (self instanceof HTMLHRElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_pre_element(
  self : Element,
) -> HTMLPreElement? =
  #| (self) => (self instanceof HTMLPreElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_quote_element(
  self : Element,
) -> HTMLQuoteElement? =
  #| (self) => (self instanceof HTMLQuoteElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_htmlo_list_element(
  self : Element,
) -> HTMLOListElement? =
  #| (self) => (self instanceof HTMLOListElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_htmlu_list_element(
  self : Element,
) -> HTMLUListElement? =
  #| (self) => (self instanceof HTMLUListElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_menu_element(
  self : Element,
) -> HTMLMenuElement? =
  #| (self) => (self instanceof HTMLMenuElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_htmlli_element(self : Element) -> HTMLLIElement? =
  #| (self) => (self instanceof HTMLLIElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_htmld_list_element(
  self : Element,
) -> HTMLDListElement? =
  #| (self) => (self instanceof HTMLDListElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_div_element(
  self : Element,
) -> HTMLDivElement? =
  #| (self) => (self instanceof HTMLDivElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_anchor_element(
  self : Element,
) -> HTMLAnchorElement? =
  #| (self) => (self instanceof HTMLAnchorElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_data_element(
  self : Element,
) -> HTMLDataElement? =
  #| (self) => (self instanceof HTMLDataElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_time_element(
  self : Element,
) -> HTMLTimeElement? =
  #| (self) => (self instanceof HTMLTimeElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_span_element(
  self : Element,
) -> HTMLSpanElement? =
  #| (self) => (self instanceof HTMLSpanElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_htmlbr_element(self : Element) -> HTMLBRElement? =
  #| (self) => (self instanceof HTMLBRElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_mod_element(
  self : Element,
) -> HTMLModElement? =
  #| (self) => (self instanceof HTMLModElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_picture_element(
  self : Element,
) -> HTMLPictureElement? =
  #| (self) => (self instanceof HTMLPictureElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_source_element(
  self : Element,
) -> HTMLSourceElement? =
  #| (self) => (self instanceof HTMLSourceElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_image_element(
  self : Element,
) -> HTMLImageElement? =
  #| (self) => (self instanceof HTMLImageElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_htmli_frame_element(
  self : Element,
) -> HTMLIFrameElement? =
  #| (self) => (self instanceof HTMLIFrameElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_embed_element(
  self : Element,
) -> HTMLEmbedElement? =
  #| (self) => (self instanceof HTMLEmbedElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_object_element(
  self : Element,
) -> HTMLObjectElement? =
  #| (self) => (self instanceof HTMLObjectElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_video_element(
  self : Element,
) -> HTMLVideoElement? =
  #| (self) => (self instanceof HTMLVideoElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_audio_element(
  self : Element,
) -> HTMLAudioElement? =
  #| (self) => (self instanceof HTMLAudioElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_track_element(
  self : Element,
) -> HTMLTrackElement? =
  #| (self) => (self instanceof HTMLTrackElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_media_element(
  self : Element,
) -> HTMLMediaElement? =
  #| (self) => (self instanceof HTMLMediaElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_map_element(
  self : Element,
) -> HTMLMapElement? =
  #| (self) => (self instanceof HTMLMapElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_area_element(
  self : Element,
) -> HTMLAreaElement? =
  #| (self) => (self instanceof HTMLAreaElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_table_element(
  self : Element,
) -> HTMLTableElement? =
  #| (self) => (self instanceof HTMLTableElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_table_caption_element(
  self : Element,
) -> HTMLTableCaptionElement? =
  #| (self) => (self instanceof HTMLTableCaptionElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_table_col_element(
  self : Element,
) -> HTMLTableColElement? =
  #| (self) => (self instanceof HTMLTableColElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_table_section_element(
  self : Element,
) -> HTMLTableSectionElement? =
  #| (self) => (self instanceof HTMLTableSectionElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_table_row_element(
  self : Element,
) -> HTMLTableRowElement? =
  #| (self) => (self instanceof HTMLTableRowElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_table_cell_element(
  self : Element,
) -> HTMLTableCellElement? =
  #| (self) => (self instanceof HTMLTableCellElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_form_element(
  self : Element,
) -> HTMLFormElement? =
  #| (self) => (self instanceof HTMLFormElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_label_element(
  self : Element,
) -> HTMLLabelElement? =
  #| (self) => (self instanceof HTMLLabelElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_input_element(
  self : Element,
) -> HTMLInputElement? =
  #| (self) => (self instanceof HTMLInputElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_button_element(
  self : Element,
) -> HTMLButtonElement? =
  #| (self) => (self instanceof HTMLButtonElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_select_element(
  self : Element,
) -> HTMLSelectElement? =
  #| (self) => (self instanceof HTMLSelectElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_data_list_element(
  self : Element,
) -> HTMLDataListElement? =
  #| (self) => (self instanceof HTMLDataListElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_opt_group_element(
  self : Element,
) -> HTMLOptGroupElement? =
  #| (self) => (self instanceof HTMLOptGroupElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_option_element(
  self : Element,
) -> HTMLOptionElement? =
  #| (self) => (self instanceof HTMLOptionElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_text_area_element(
  self : Element,
) -> HTMLTextAreaElement? =
  #| (self) => (self instanceof HTMLTextAreaElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_output_element(
  self : Element,
) -> HTMLOutputElement? =
  #| (self) => (self instanceof HTMLOutputElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_progress_element(
  self : Element,
) -> HTMLProgressElement? =
  #| (self) => (self instanceof HTMLProgressElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_meter_element(
  self : Element,
) -> HTMLMeterElement? =
  #| (self) => (self instanceof HTMLMeterElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_field_set_element(
  self : Element,
) -> HTMLFieldSetElement? =
  #| (self) => (self instanceof HTMLFieldSetElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_legend_element(
  self : Element,
) -> HTMLLegendElement? =
  #| (self) => (self instanceof HTMLLegendElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_selected_content_element(
  self : Element,
) -> HTMLSelectedContentElement? =
  #| (self) => (self instanceof HTMLSelectedContentElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_details_element(
  self : Element,
) -> HTMLDetailsElement? =
  #| (self) => (self instanceof HTMLDetailsElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_dialog_element(
  self : Element,
) -> HTMLDialogElement? =
  #| (self) => (self instanceof HTMLDialogElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_script_element(
  self : Element,
) -> HTMLScriptElement? =
  #| (self) => (self instanceof HTMLScriptElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_template_element(
  self : Element,
) -> HTMLTemplateElement? =
  #| (self) => (self instanceof HTMLTemplateElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_slot_element(
  self : Element,
) -> HTMLSlotElement? =
  #| (self) => (self instanceof HTMLSlotElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_canvas_element(
  self : Element,
) -> HTMLCanvasElement? =
  #| (self) => (self instanceof HTMLCanvasElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_marquee_element(
  self : Element,
) -> HTMLMarqueeElement? =
  #| (self) => (self instanceof HTMLMarqueeElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_frame_set_element(
  self : Element,
) -> HTMLFrameSetElement? =
  #| (self) => (self instanceof HTMLFrameSetElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_frame_element(
  self : Element,
) -> HTMLFrameElement? =
  #| (self) => (self instanceof HTMLFrameElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_directory_element(
  self : Element,
) -> HTMLDirectoryElement? =
  #| (self) => (self instanceof HTMLDirectoryElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_font_element(
  self : Element,
) -> HTMLFontElement? =
  #| (self) => (self instanceof HTMLFontElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_param_element(
  self : Element,
) -> HTMLParamElement? =
  #| (self) => (self instanceof HTMLParamElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_portal_element(
  self : Element,
) -> HTMLPortalElement? =
  #| (self) => (self instanceof HTMLPortalElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_math_ml_element(
  self : Element,
) -> MathMLElement? =
  #| (self) => (self instanceof MathMLElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_svg_path_element(
  self : Element,
) -> SVGPathElement? =
  #| (self) => (self instanceof SVGPathElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_fenced_frame_element(
  self : Element,
) -> HTMLFencedFrameElement? =
  #| (self) => (self instanceof HTMLFencedFrameElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_permission_element(
  self : Element,
) -> HTMLPermissionElement? =
  #| (self) => (self instanceof HTMLPermissionElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::as_html_geolocation_element(
  self : Element,
) -> HTMLGeolocationElement? =
  #| (self) => (self instanceof HTMLGeolocationElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Element::get_namespace_uri(self : Element) -> String? =
  #| (self) => (self.namespaceURI) ?? undefined

///|
pub extern "js" fn Element::get_prefix(self : Element) -> String? =
  #| (self) => (self.prefix) ?? undefined

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
  #| (self, qualified_name) => (self.getAttribute(qualified_name)) ?? undefined

///|
pub extern "js" fn Element::get_attribute_ns(
  self : Element,
  namespace_ : String?,
  local_name : String,
) -> String? =
  #| (self, namespace_, local_name) => (self.getAttributeNS(namespace_, local_name)) ?? undefined

///|
pub extern "js" fn Element::set_attribute(
  self : Element,
  qualified_name : String,
  value : TrustedTypeOrString,
) -> Unit =
  #| (self, qualified_name, value) => self.setAttribute(qualified_name, value)

///|
pub extern "js" fn Element::set_attribute_ns(
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
pub extern "js" fn Element::remove_attribute_ns(
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
pub extern "js" fn Element::has_attribute_ns(
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
  #| (self, qualified_name) => (() => { const v = self.getAttributeNode(qualified_name); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Element::get_attribute_node_ns(
  self : Element,
  namespace_ : String?,
  local_name : String,
) -> Attr? =
  #| (self, namespace_, local_name) => (() => { const v = self.getAttributeNodeNS(namespace_, local_name); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Element::set_attribute_node(
  self : Element,
  attr : Attr,
) -> Attr? =
  #| (self, attr) => (() => { const v = self.setAttributeNode(attr); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Element::set_attribute_node_ns(
  self : Element,
  attr : Attr,
) -> Attr? =
  #| (self, attr) => (() => { const v = self.setAttributeNodeNS(attr); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Element::remove_attribute_node(
  self : Element,
  attr : Attr,
) -> Attr =
  #| (self, attr) => self.removeAttributeNode(attr)

///|
extern "js" fn Element::attach_shadow_ffi(
  self : Element,
  init_ : JsValue,
) -> ShadowRoot =
  #| (self, init_) => self.attachShadow(init_)

///|
pub fn Element::attach_shadow(
  self : Element,
  init_ : ShadowRootInit,
) -> ShadowRoot {
  Element::attach_shadow_ffi(self, init_.to_js())
}

///|
pub extern "js" fn Element::get_shadow_root(self : Element) -> ShadowRoot? =
  #| (self) => (() => { const v = self.shadowRoot; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Element::get_custom_element_registry(
  self : Element,
) -> CustomElementRegistry? =
  #| (self) => (() => { const v = self.customElementRegistry; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Element::closest(
  self : Element,
  selectors : String,
) -> Element? =
  #| (self, selectors) => (() => { const v = self.closest(selectors); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

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
pub extern "js" fn Element::get_elements_by_tag_name_ns(
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
  #| (self, where_, element) => (() => { const v = self.insertAdjacentElement(where_, element); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Element::insert_adjacent_text(
  self : Element,
  where_ : String,
  data : String,
) -> Unit =
  #| (self, where_, data) => self.insertAdjacentText(where_, data)

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
extern "js" fn Element::check_visibility_with_options_ffi(
  self : Element,
  options : JsValue,
) -> Bool =
  #| (self, options) => self.checkVisibility(options)

///|
pub fn Element::check_visibility_with_options(
  self : Element,
  options : CheckVisibilityOptions,
) -> Bool {
  Element::check_visibility_with_options_ffi(self, options.to_js())
}

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
extern "js" fn Element::scroll_with_options_ffi(
  self : Element,
  options : JsValue,
) -> Promise[Unit] =
  #| (self, options) => self.scroll(options)

///|
pub fn Element::scroll_with_options(
  self : Element,
  options : ScrollToOptions,
) -> Promise[Unit] {
  Element::scroll_with_options_ffi(self, options.to_js())
}

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
extern "js" fn Element::scroll_to_with_options_ffi(
  self : Element,
  options : JsValue,
) -> Promise[Unit] =
  #| (self, options) => self.scrollTo(options)

///|
pub fn Element::scroll_to_with_options(
  self : Element,
  options : ScrollToOptions,
) -> Promise[Unit] {
  Element::scroll_to_with_options_ffi(self, options.to_js())
}

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
extern "js" fn Element::scroll_by_with_options_ffi(
  self : Element,
  options : JsValue,
) -> Promise[Unit] =
  #| (self, options) => self.scrollBy(options)

///|
pub fn Element::scroll_by_with_options(
  self : Element,
  options : ScrollToOptions,
) -> Promise[Unit] {
  Element::scroll_by_with_options_ffi(self, options.to_js())
}

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
pub extern "js" fn Element::get_current_css_zoom(self : Element) -> Double =
  #| (self) => self.currentCSSZoom

///|
pub extern "js" fn Element::set_html_unsafe(
  self : Element,
  html : TrustedHTMLOrString,
) -> Unit =
  #| (self, html) => self.setHTMLUnsafe(html)

///|
pub extern "js" fn Element::get_html(self : Element) -> String =
  #| (self) => self.getHTML()

///|
extern "js" fn Element::get_html_with_options_ffi(
  self : Element,
  options : JsValue,
) -> String =
  #| (self, options) => self.getHTML(options)

///|
pub fn Element::get_html_with_options(
  self : Element,
  options : GetHTMLOptions,
) -> String {
  Element::get_html_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn Element::get_inner_html(
  self : Element,
) -> TrustedHTMLOrString =
  #| (self) => self.innerHTML

///|
pub extern "js" fn Element::set_inner_html(
  self : Element,
  value : TrustedHTMLOrString,
) -> Unit =
  #| (self, value) => { self.innerHTML = value }

///|
pub extern "js" fn Element::get_outer_html(
  self : Element,
) -> TrustedHTMLOrString =
  #| (self) => self.outerHTML

///|
pub extern "js" fn Element::set_outer_html(
  self : Element,
  value : TrustedHTMLOrString,
) -> Unit =
  #| (self, value) => { self.outerHTML = value }

///|
pub extern "js" fn Element::insert_adjacent_html(
  self : Element,
  position : String,
  string : TrustedHTMLOrString,
) -> Unit =
  #| (self, position, string) => self.insertAdjacentHTML(position, string)

///|
pub extern "js" fn Element::get_part(self : Element) -> DOMTokenList =
  #| (self) => self.part

///|
pub extern "js" fn Element::pseudo(
  self : Element,
  type_ : String,
) -> CSSPseudoElement? =
  #| (self, type_) => (() => { const v = self.pseudo(type_); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Element::get_spatial_navigation_container(
  self : Element,
) -> Node =
  #| (self) => self.getSpatialNavigationContainer()

///|
pub extern "js" fn Element::focusable_areas(self : Element) -> Array[Node] =
  #| (self) => self.focusableAreas()

///|
extern "js" fn Element::focusable_areas_with_option_ffi(
  self : Element,
  option : JsValue,
) -> Array[Node] =
  #| (self, option) => self.focusableAreas(option)

///|
pub fn Element::focusable_areas_with_option(
  self : Element,
  option : FocusableAreasOption,
) -> Array[Node] {
  Element::focusable_areas_with_option_ffi(self, option.to_js())
}

///|
pub extern "js" fn Element::spatial_navigation_search(
  self : Element,
  dir : SpatialNavigationDirection,
) -> Node? =
  #| (self, dir) => (() => { const v = self.spatialNavigationSearch(['up', 'down', 'left', 'right'][dir]); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
extern "js" fn Element::spatial_navigation_search_with_options_ffi(
  self : Element,
  dir : SpatialNavigationDirection,
  options : JsValue,
) -> Node? =
  #| (self, dir, options) => (() => { const v = self.spatialNavigationSearch(['up', 'down', 'left', 'right'][dir], options); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub fn Element::spatial_navigation_search_with_options(
  self : Element,
  dir : SpatialNavigationDirection,
  options : SpatialNavigationSearchOptions,
) -> Node? {
  Element::spatial_navigation_search_with_options_ffi(
    self,
    dir,
    options.to_js(),
  )
}

///|
pub extern "js" fn Element::request_fullscreen(self : Element) -> Promise[Unit] =
  #| (self) => self.requestFullscreen()

///|
extern "js" fn Element::request_fullscreen_with_options_ffi(
  self : Element,
  options : JsValue,
) -> Promise[Unit] =
  #| (self, options) => self.requestFullscreen(options)

///|
pub fn Element::request_fullscreen_with_options(
  self : Element,
  options : FullscreenOptions,
) -> Promise[Unit] {
  Element::request_fullscreen_with_options_ffi(self, options.to_js())
}

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
pub extern "js" fn Element::get_element_timing(self : Element) -> String =
  #| (self) => self.elementTiming

///|
pub extern "js" fn Element::set_element_timing(
  self : Element,
  value : String,
) -> Unit =
  #| (self, value) => { self.elementTiming = value }

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
  #| (self) => (() => { const v = self.activeViewTransition; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

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
extern "js" fn Element::request_pointer_lock_with_options_ffi(
  self : Element,
  options : JsValue,
) -> Promise[Unit] =
  #| (self, options) => self.requestPointerLock(options)

///|
pub fn Element::request_pointer_lock_with_options(
  self : Element,
  options : PointerLockOptions,
) -> Promise[Unit] {
  Element::request_pointer_lock_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn Element::computed_style_map(
  self : Element,
) -> StylePropertyMapReadOnly =
  #| (self) => self.computedStyleMap()

///|
pub extern "js" fn Element::get_box_quads(self : Element) -> Array[DOMQuad] =
  #| (self) => self.getBoxQuads()

///|
extern "js" fn Element::get_box_quads_with_options_ffi(
  self : Element,
  options : JsValue,
) -> Array[DOMQuad] =
  #| (self, options) => self.getBoxQuads(options)

///|
pub fn Element::get_box_quads_with_options(
  self : Element,
  options : BoxQuadOptions,
) -> Array[DOMQuad] {
  Element::get_box_quads_with_options_ffi(self, options.to_js())
}

///|
extern "js" fn Element::convert_quad_from_node_ffi(
  self : Element,
  quad : JsValue,
  from : GeometryNode,
) -> DOMQuad =
  #| (self, quad, from) => self.convertQuadFromNode(quad, from)

///|
pub fn Element::convert_quad_from_node(
  self : Element,
  quad : DOMQuadInit,
  from : GeometryNode,
) -> DOMQuad {
  Element::convert_quad_from_node_ffi(self, quad.to_js(), from)
}

///|
extern "js" fn Element::convert_quad_from_node_with_options_ffi(
  self : Element,
  quad : JsValue,
  from : GeometryNode,
  options : JsValue,
) -> DOMQuad =
  #| (self, quad, from, options) => self.convertQuadFromNode(quad, from, options)

///|
pub fn Element::convert_quad_from_node_with_options(
  self : Element,
  quad : DOMQuadInit,
  from : GeometryNode,
  options : ConvertCoordinateOptions,
) -> DOMQuad {
  Element::convert_quad_from_node_with_options_ffi(
    self,
    quad.to_js(),
    from,
    options.to_js(),
  )
}

///|
pub extern "js" fn Element::convert_rect_from_node(
  self : Element,
  rect : DOMRectReadOnly,
  from : GeometryNode,
) -> DOMQuad =
  #| (self, rect, from) => self.convertRectFromNode(rect, from)

///|
extern "js" fn Element::convert_rect_from_node_with_options_ffi(
  self : Element,
  rect : DOMRectReadOnly,
  from : GeometryNode,
  options : JsValue,
) -> DOMQuad =
  #| (self, rect, from, options) => self.convertRectFromNode(rect, from, options)

///|
pub fn Element::convert_rect_from_node_with_options(
  self : Element,
  rect : DOMRectReadOnly,
  from : GeometryNode,
  options : ConvertCoordinateOptions,
) -> DOMQuad {
  Element::convert_rect_from_node_with_options_ffi(
    self,
    rect,
    from,
    options.to_js(),
  )
}

///|
extern "js" fn Element::convert_point_from_node_ffi(
  self : Element,
  point : JsValue,
  from : GeometryNode,
) -> DOMPoint =
  #| (self, point, from) => self.convertPointFromNode(point, from)

///|
pub fn Element::convert_point_from_node(
  self : Element,
  point : DOMPointInit,
  from : GeometryNode,
) -> DOMPoint {
  Element::convert_point_from_node_ffi(self, point.to_js(), from)
}

///|
extern "js" fn Element::convert_point_from_node_with_options_ffi(
  self : Element,
  point : JsValue,
  from : GeometryNode,
  options : JsValue,
) -> DOMPoint =
  #| (self, point, from, options) => self.convertPointFromNode(point, from, options)

///|
pub fn Element::convert_point_from_node_with_options(
  self : Element,
  point : DOMPointInit,
  from : GeometryNode,
  options : ConvertCoordinateOptions,
) -> DOMPoint {
  Element::convert_point_from_node_with_options_ffi(
    self,
    point.to_js(),
    from,
    options.to_js(),
  )
}

///|
pub extern "js" fn Element::get_role(self : Element) -> String? =
  #| (self) => (self.role) ?? undefined

///|
pub extern "js" fn Element::set_role(self : Element, value : String?) -> Unit =
  #| (self, value) => { self.role = value }

///|
pub extern "js" fn Element::get_aria_active_descendant_element(
  self : Element,
) -> Element? =
  #| (self) => (() => { const v = self.ariaActiveDescendantElement; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Element::set_aria_active_descendant_element(
  self : Element,
  value : Element?,
) -> Unit =
  #| (self, value) => { self.ariaActiveDescendantElement = (value.$tag === 1 ? value._0 : null) }

///|
pub extern "js" fn Element::get_aria_atomic(self : Element) -> String? =
  #| (self) => (self.ariaAtomic) ?? undefined

///|
pub extern "js" fn Element::set_aria_atomic(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaAtomic = value }

///|
pub extern "js" fn Element::get_aria_auto_complete(self : Element) -> String? =
  #| (self) => (self.ariaAutoComplete) ?? undefined

///|
pub extern "js" fn Element::set_aria_auto_complete(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaAutoComplete = value }

///|
pub extern "js" fn Element::get_aria_braille_label(self : Element) -> String? =
  #| (self) => (self.ariaBrailleLabel) ?? undefined

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
  #| (self) => (self.ariaBrailleRoleDescription) ?? undefined

///|
pub extern "js" fn Element::set_aria_braille_role_description(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaBrailleRoleDescription = value }

///|
pub extern "js" fn Element::get_aria_busy(self : Element) -> String? =
  #| (self) => (self.ariaBusy) ?? undefined

///|
pub extern "js" fn Element::set_aria_busy(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaBusy = value }

///|
pub extern "js" fn Element::get_aria_checked(self : Element) -> String? =
  #| (self) => (self.ariaChecked) ?? undefined

///|
pub extern "js" fn Element::set_aria_checked(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaChecked = value }

///|
pub extern "js" fn Element::get_aria_col_count(self : Element) -> String? =
  #| (self) => (self.ariaColCount) ?? undefined

///|
pub extern "js" fn Element::set_aria_col_count(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaColCount = value }

///|
pub extern "js" fn Element::get_aria_col_index(self : Element) -> String? =
  #| (self) => (self.ariaColIndex) ?? undefined

///|
pub extern "js" fn Element::set_aria_col_index(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaColIndex = value }

///|
pub extern "js" fn Element::get_aria_col_index_text(self : Element) -> String? =
  #| (self) => (self.ariaColIndexText) ?? undefined

///|
pub extern "js" fn Element::set_aria_col_index_text(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaColIndexText = value }

///|
pub extern "js" fn Element::get_aria_col_span(self : Element) -> String? =
  #| (self) => (self.ariaColSpan) ?? undefined

///|
pub extern "js" fn Element::set_aria_col_span(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaColSpan = value }

///|
pub extern "js" fn Element::get_aria_controls_elements(
  self : Element,
) -> Array[Element] =
  #| (self) => self.ariaControlsElements

///|
pub extern "js" fn Element::set_aria_controls_elements(
  self : Element,
  value : Array[Element],
) -> Unit =
  #| (self, value) => { self.ariaControlsElements = value }

///|
pub extern "js" fn Element::get_aria_current(self : Element) -> String? =
  #| (self) => (self.ariaCurrent) ?? undefined

///|
pub extern "js" fn Element::set_aria_current(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaCurrent = value }

///|
pub extern "js" fn Element::get_aria_described_by_elements(
  self : Element,
) -> Array[Element] =
  #| (self) => self.ariaDescribedByElements

///|
pub extern "js" fn Element::set_aria_described_by_elements(
  self : Element,
  value : Array[Element],
) -> Unit =
  #| (self, value) => { self.ariaDescribedByElements = value }

///|
pub extern "js" fn Element::get_aria_description(self : Element) -> String? =
  #| (self) => (self.ariaDescription) ?? undefined

///|
pub extern "js" fn Element::set_aria_description(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaDescription = value }

///|
pub extern "js" fn Element::get_aria_details_elements(
  self : Element,
) -> Array[Element] =
  #| (self) => self.ariaDetailsElements

///|
pub extern "js" fn Element::set_aria_details_elements(
  self : Element,
  value : Array[Element],
) -> Unit =
  #| (self, value) => { self.ariaDetailsElements = value }

///|
pub extern "js" fn Element::get_aria_disabled(self : Element) -> String? =
  #| (self) => (self.ariaDisabled) ?? undefined

///|
pub extern "js" fn Element::set_aria_disabled(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaDisabled = value }

///|
pub extern "js" fn Element::get_aria_error_message_elements(
  self : Element,
) -> Array[Element] =
  #| (self) => self.ariaErrorMessageElements

///|
pub extern "js" fn Element::set_aria_error_message_elements(
  self : Element,
  value : Array[Element],
) -> Unit =
  #| (self, value) => { self.ariaErrorMessageElements = value }

///|
pub extern "js" fn Element::get_aria_expanded(self : Element) -> String? =
  #| (self) => (self.ariaExpanded) ?? undefined

///|
pub extern "js" fn Element::set_aria_expanded(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaExpanded = value }

///|
pub extern "js" fn Element::get_aria_flow_to_elements(
  self : Element,
) -> Array[Element] =
  #| (self) => self.ariaFlowToElements

///|
pub extern "js" fn Element::set_aria_flow_to_elements(
  self : Element,
  value : Array[Element],
) -> Unit =
  #| (self, value) => { self.ariaFlowToElements = value }

///|
pub extern "js" fn Element::get_aria_has_popup(self : Element) -> String? =
  #| (self) => (self.ariaHasPopup) ?? undefined

///|
pub extern "js" fn Element::set_aria_has_popup(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaHasPopup = value }

///|
pub extern "js" fn Element::get_aria_hidden(self : Element) -> String? =
  #| (self) => (self.ariaHidden) ?? undefined

///|
pub extern "js" fn Element::set_aria_hidden(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaHidden = value }

///|
pub extern "js" fn Element::get_aria_invalid(self : Element) -> String? =
  #| (self) => (self.ariaInvalid) ?? undefined

///|
pub extern "js" fn Element::set_aria_invalid(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaInvalid = value }

///|
pub extern "js" fn Element::get_aria_key_shortcuts(self : Element) -> String? =
  #| (self) => (self.ariaKeyShortcuts) ?? undefined

///|
pub extern "js" fn Element::set_aria_key_shortcuts(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaKeyShortcuts = value }

///|
pub extern "js" fn Element::get_aria_label(self : Element) -> String? =
  #| (self) => (self.ariaLabel) ?? undefined

///|
pub extern "js" fn Element::set_aria_label(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaLabel = value }

///|
pub extern "js" fn Element::get_aria_labelled_by_elements(
  self : Element,
) -> Array[Element] =
  #| (self) => self.ariaLabelledByElements

///|
pub extern "js" fn Element::set_aria_labelled_by_elements(
  self : Element,
  value : Array[Element],
) -> Unit =
  #| (self, value) => { self.ariaLabelledByElements = value }

///|
pub extern "js" fn Element::get_aria_level(self : Element) -> String? =
  #| (self) => (self.ariaLevel) ?? undefined

///|
pub extern "js" fn Element::set_aria_level(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaLevel = value }

///|
pub extern "js" fn Element::get_aria_live(self : Element) -> String? =
  #| (self) => (self.ariaLive) ?? undefined

///|
pub extern "js" fn Element::set_aria_live(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaLive = value }

///|
pub extern "js" fn Element::get_aria_modal(self : Element) -> String? =
  #| (self) => (self.ariaModal) ?? undefined

///|
pub extern "js" fn Element::set_aria_modal(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaModal = value }

///|
pub extern "js" fn Element::get_aria_multi_line(self : Element) -> String? =
  #| (self) => (self.ariaMultiLine) ?? undefined

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
  #| (self) => (self.ariaMultiSelectable) ?? undefined

///|
pub extern "js" fn Element::set_aria_multi_selectable(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaMultiSelectable = value }

///|
pub extern "js" fn Element::get_aria_orientation(self : Element) -> String? =
  #| (self) => (self.ariaOrientation) ?? undefined

///|
pub extern "js" fn Element::set_aria_orientation(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaOrientation = value }

///|
pub extern "js" fn Element::get_aria_owns_elements(
  self : Element,
) -> Array[Element] =
  #| (self) => self.ariaOwnsElements

///|
pub extern "js" fn Element::set_aria_owns_elements(
  self : Element,
  value : Array[Element],
) -> Unit =
  #| (self, value) => { self.ariaOwnsElements = value }

///|
pub extern "js" fn Element::get_aria_placeholder(self : Element) -> String? =
  #| (self) => (self.ariaPlaceholder) ?? undefined

///|
pub extern "js" fn Element::set_aria_placeholder(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaPlaceholder = value }

///|
pub extern "js" fn Element::get_aria_pos_in_set(self : Element) -> String? =
  #| (self) => (self.ariaPosInSet) ?? undefined

///|
pub extern "js" fn Element::set_aria_pos_in_set(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaPosInSet = value }

///|
pub extern "js" fn Element::get_aria_pressed(self : Element) -> String? =
  #| (self) => (self.ariaPressed) ?? undefined

///|
pub extern "js" fn Element::set_aria_pressed(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaPressed = value }

///|
pub extern "js" fn Element::get_aria_read_only(self : Element) -> String? =
  #| (self) => (self.ariaReadOnly) ?? undefined

///|
pub extern "js" fn Element::set_aria_read_only(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaReadOnly = value }

///|
pub extern "js" fn Element::get_aria_relevant(self : Element) -> String? =
  #| (self) => (self.ariaRelevant) ?? undefined

///|
pub extern "js" fn Element::set_aria_relevant(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaRelevant = value }

///|
pub extern "js" fn Element::get_aria_required(self : Element) -> String? =
  #| (self) => (self.ariaRequired) ?? undefined

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
  #| (self) => (self.ariaRoleDescription) ?? undefined

///|
pub extern "js" fn Element::set_aria_role_description(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaRoleDescription = value }

///|
pub extern "js" fn Element::get_aria_row_count(self : Element) -> String? =
  #| (self) => (self.ariaRowCount) ?? undefined

///|
pub extern "js" fn Element::set_aria_row_count(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaRowCount = value }

///|
pub extern "js" fn Element::get_aria_row_index(self : Element) -> String? =
  #| (self) => (self.ariaRowIndex) ?? undefined

///|
pub extern "js" fn Element::set_aria_row_index(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaRowIndex = value }

///|
pub extern "js" fn Element::get_aria_row_index_text(self : Element) -> String? =
  #| (self) => (self.ariaRowIndexText) ?? undefined

///|
pub extern "js" fn Element::set_aria_row_index_text(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaRowIndexText = value }

///|
pub extern "js" fn Element::get_aria_row_span(self : Element) -> String? =
  #| (self) => (self.ariaRowSpan) ?? undefined

///|
pub extern "js" fn Element::set_aria_row_span(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaRowSpan = value }

///|
pub extern "js" fn Element::get_aria_selected(self : Element) -> String? =
  #| (self) => (self.ariaSelected) ?? undefined

///|
pub extern "js" fn Element::set_aria_selected(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaSelected = value }

///|
pub extern "js" fn Element::get_aria_set_size(self : Element) -> String? =
  #| (self) => (self.ariaSetSize) ?? undefined

///|
pub extern "js" fn Element::set_aria_set_size(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaSetSize = value }

///|
pub extern "js" fn Element::get_aria_sort(self : Element) -> String? =
  #| (self) => (self.ariaSort) ?? undefined

///|
pub extern "js" fn Element::set_aria_sort(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaSort = value }

///|
pub extern "js" fn Element::get_aria_value_max(self : Element) -> String? =
  #| (self) => (self.ariaValueMax) ?? undefined

///|
pub extern "js" fn Element::set_aria_value_max(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaValueMax = value }

///|
pub extern "js" fn Element::get_aria_value_min(self : Element) -> String? =
  #| (self) => (self.ariaValueMin) ?? undefined

///|
pub extern "js" fn Element::set_aria_value_min(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaValueMin = value }

///|
pub extern "js" fn Element::get_aria_value_now(self : Element) -> String? =
  #| (self) => (self.ariaValueNow) ?? undefined

///|
pub extern "js" fn Element::set_aria_value_now(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaValueNow = value }

///|
pub extern "js" fn Element::get_aria_value_text(self : Element) -> String? =
  #| (self) => (self.ariaValueText) ?? undefined

///|
pub extern "js" fn Element::set_aria_value_text(
  self : Element,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaValueText = value }

///|
pub extern "js" fn Element::get_children(self : Element) -> HTMLCollection =
  #| (self) => self.children

///|
pub extern "js" fn Element::get_first_element_child(self : Element) -> Element? =
  #| (self) => (() => { const v = self.firstElementChild; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Element::get_last_element_child(self : Element) -> Element? =
  #| (self) => (() => { const v = self.lastElementChild; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

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
  #| (self, node, child) => self.moveBefore(node, (child.$tag === 1 ? child._0 : null))

///|
pub extern "js" fn Element::query_selector(
  self : Element,
  selectors : String,
) -> Element? =
  #| (self, selectors) => (() => { const v = self.querySelector(selectors); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

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
  #| (self) => (() => { const v = self.previousElementSibling; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Element::get_next_element_sibling(
  self : Element,
) -> Element? =
  #| (self) => (() => { const v = self.nextElementSibling; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

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
  #| (self) => (() => { const v = self.assignedSlot; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Element::animate(
  self : Element,
  keyframes : JsValue?,
) -> Animation =
  #| (self, keyframes) => self.animate((keyframes.$tag === 1 ? keyframes._0 : null))

///|
pub extern "js" fn Element::animate_with_options(
  self : Element,
  keyframes : JsValue?,
  options : DoubleOrKeyframeAnimationOptions,
) -> Animation =
  #| (self, keyframes, options) => self.animate((keyframes.$tag === 1 ? keyframes._0 : null), options)

///|
pub extern "js" fn Element::get_animations(self : Element) -> Array[Animation] =
  #| (self) => self.getAnimations()

///|
extern "js" fn Element::get_animations_with_options_ffi(
  self : Element,
  options : JsValue,
) -> Array[Animation] =
  #| (self, options) => self.getAnimations(options)

///|
pub fn Element::get_animations_with_options(
  self : Element,
  options : GetAnimationsOptions,
) -> Array[Animation] {
  Element::get_animations_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn Element::get_region_overset(self : Element) -> String =
  #| (self) => self.regionOverset

///|
pub extern "js" fn Element::get_region_flow_ranges(
  self : Element,
) -> Array[Range] =
  #| (self) => self.getRegionFlowRanges()

///|
pub extern "js" fn Element::convert_quad_from_node_with_text(
  self : Element,
  quad : DOMQuadInit,
  from : Text,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, quad, from, options) => self.convertQuadFromNode(quad, from, options)

///|
pub extern "js" fn Element::convert_quad_from_node_with_element(
  self : Element,
  quad : DOMQuadInit,
  from : Element,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, quad, from, options) => self.convertQuadFromNode(quad, from, options)

///|
pub extern "js" fn Element::convert_quad_from_node_with_css_pseudo_element(
  self : Element,
  quad : DOMQuadInit,
  from : CSSPseudoElement,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, quad, from, options) => self.convertQuadFromNode(quad, from, options)

///|
pub extern "js" fn Element::convert_quad_from_node_with_document(
  self : Element,
  quad : DOMQuadInit,
  from : Document,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, quad, from, options) => self.convertQuadFromNode(quad, from, options)

///|
pub extern "js" fn Element::convert_rect_from_node_with_text(
  self : Element,
  rect : DOMRectReadOnly,
  from : Text,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, rect, from, options) => self.convertRectFromNode(rect, from, options)

///|
pub extern "js" fn Element::convert_rect_from_node_with_element(
  self : Element,
  rect : DOMRectReadOnly,
  from : Element,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, rect, from, options) => self.convertRectFromNode(rect, from, options)

///|
pub extern "js" fn Element::convert_rect_from_node_with_css_pseudo_element(
  self : Element,
  rect : DOMRectReadOnly,
  from : CSSPseudoElement,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, rect, from, options) => self.convertRectFromNode(rect, from, options)

///|
pub extern "js" fn Element::convert_rect_from_node_with_document(
  self : Element,
  rect : DOMRectReadOnly,
  from : Document,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, rect, from, options) => self.convertRectFromNode(rect, from, options)

///|
pub extern "js" fn Element::convert_point_from_node_with_text(
  self : Element,
  point : DOMPointInit,
  from : Text,
  options : ConvertCoordinateOptions,
) -> DOMPoint =
  #| (self, point, from, options) => self.convertPointFromNode(point, from, options)

///|
pub extern "js" fn Element::convert_point_from_node_with_element(
  self : Element,
  point : DOMPointInit,
  from : Element,
  options : ConvertCoordinateOptions,
) -> DOMPoint =
  #| (self, point, from, options) => self.convertPointFromNode(point, from, options)

///|
pub extern "js" fn Element::convert_point_from_node_with_css_pseudo_element(
  self : Element,
  point : DOMPointInit,
  from : CSSPseudoElement,
  options : ConvertCoordinateOptions,
) -> DOMPoint =
  #| (self, point, from, options) => self.convertPointFromNode(point, from, options)

///|
pub extern "js" fn Element::convert_point_from_node_with_document(
  self : Element,
  point : DOMPointInit,
  from : Document,
  options : ConvertCoordinateOptions,
) -> DOMPoint =
  #| (self, point, from, options) => self.convertPointFromNode(point, from, options)

///|
/// NamedNodeMap interface
pub type NamedNodeMap

///|
pub extern "js" fn NamedNodeMap::to_js_value(self : NamedNodeMap) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to NamedNodeMap (unchecked)
pub extern "js" fn NamedNodeMap::from_js_value(v : JsValue) -> NamedNodeMap =
  #| (v) => v

///|
/// Safely cast JsValue to NamedNodeMap (checked with instanceof)
pub extern "js" fn NamedNodeMap::from_js_value_opt(
  v : JsValue,
) -> NamedNodeMap? =
  #| (v) => (v instanceof NamedNodeMap) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to NamedNodeMap (checked with instanceof)
pub extern "js" fn JsValue::as_named_node_map(self : JsValue) -> NamedNodeMap? =
  #| (self) => (self instanceof NamedNodeMap) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to NamedNodeMap (unchecked)
pub extern "js" fn JsValue::to_named_node_map(self : JsValue) -> NamedNodeMap =
  #| (self) => self

///|
pub extern "js" fn NamedNodeMap::get_length(self : NamedNodeMap) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn NamedNodeMap::item(
  self : NamedNodeMap,
  index : Int,
) -> Attr? =
  #| (self, index) => (() => { const v = self.item(index); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
#alias("_[_]")
pub extern "js" fn NamedNodeMap::get(self : NamedNodeMap, index : Int) -> Attr? =
  #| (self, index) => (() => { const v = self[index]; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn NamedNodeMap::get_named_item(
  self : NamedNodeMap,
  qualified_name : String,
) -> Attr? =
  #| (self, qualified_name) => (() => { const v = self.getNamedItem(qualified_name); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn NamedNodeMap::get_named(
  self : NamedNodeMap,
  qualified_name : String,
) -> Attr? =
  #| (self, qualified_name) => (() => { const v = self[qualified_name]; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn NamedNodeMap::get_named_item_ns(
  self : NamedNodeMap,
  namespace_ : String?,
  local_name : String,
) -> Attr? =
  #| (self, namespace_, local_name) => (() => { const v = self.getNamedItemNS(namespace_, local_name); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn NamedNodeMap::set_named_item(
  self : NamedNodeMap,
  attr : Attr,
) -> Attr? =
  #| (self, attr) => (() => { const v = self.setNamedItem(attr); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn NamedNodeMap::set_named_item_ns(
  self : NamedNodeMap,
  attr : Attr,
) -> Attr? =
  #| (self, attr) => (() => { const v = self.setNamedItemNS(attr); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn NamedNodeMap::remove_named_item(
  self : NamedNodeMap,
  qualified_name : String,
) -> Attr =
  #| (self, qualified_name) => self.removeNamedItem(qualified_name)

///|
pub extern "js" fn NamedNodeMap::remove_named_item_ns(
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
/// Cast JsValue to Attr (unchecked)
pub extern "js" fn Attr::from_js_value(v : JsValue) -> Attr =
  #| (v) => v

///|
/// Safely cast JsValue to Attr (checked with instanceof)
pub extern "js" fn Attr::from_js_value_opt(v : JsValue) -> Attr? =
  #| (v) => (v instanceof Attr) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Attr (checked with instanceof)
pub extern "js" fn JsValue::as_attr(self : JsValue) -> Attr? =
  #| (self) => (self instanceof Attr) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Attr (unchecked)
pub extern "js" fn JsValue::to_attr(self : JsValue) -> Attr =
  #| (self) => self

///|
pub extern "js" fn Attr::to_node(self : Attr) -> Node =
  #| (self) => self

///|
pub extern "js" fn Attr::to_event_target(self : Attr) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn Attr::get_namespace_uri(self : Attr) -> String? =
  #| (self) => (self.namespaceURI) ?? undefined

///|
pub extern "js" fn Attr::get_prefix(self : Attr) -> String? =
  #| (self) => (self.prefix) ?? undefined

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
  #| (self) => (() => { const v = self.ownerElement; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

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
/// Cast JsValue to CharacterData (unchecked)
pub extern "js" fn CharacterData::from_js_value(v : JsValue) -> CharacterData =
  #| (v) => v

///|
/// Safely cast JsValue to CharacterData (checked with instanceof)
pub extern "js" fn CharacterData::from_js_value_opt(
  v : JsValue,
) -> CharacterData? =
  #| (v) => (v instanceof CharacterData) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CharacterData (checked with instanceof)
pub extern "js" fn JsValue::as_character_data(self : JsValue) -> CharacterData? =
  #| (self) => (self instanceof CharacterData) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CharacterData (unchecked)
pub extern "js" fn JsValue::to_character_data(self : JsValue) -> CharacterData =
  #| (self) => self

///|
pub extern "js" fn CharacterData::to_node(self : CharacterData) -> Node =
  #| (self) => self

///|
pub extern "js" fn CharacterData::to_event_target(
  self : CharacterData,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn CharacterData::as_text(self : CharacterData) -> Text? =
  #| (self) => (self instanceof Text) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CharacterData::as_cdata_section(
  self : CharacterData,
) -> CDATASection? =
  #| (self) => (self instanceof CDATASection) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CharacterData::as_processing_instruction(
  self : CharacterData,
) -> ProcessingInstruction? =
  #| (self) => (self instanceof ProcessingInstruction) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CharacterData::as_comment(self : CharacterData) -> Comment? =
  #| (self) => (self instanceof Comment) ? { $tag: 1, _0: self } : { $tag: 0 }

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
  #| (self) => (() => { const v = self.previousElementSibling; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn CharacterData::get_next_element_sibling(
  self : CharacterData,
) -> Element? =
  #| (self) => (() => { const v = self.nextElementSibling; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

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
/// Cast JsValue to Text (unchecked)
pub extern "js" fn Text::from_js_value(v : JsValue) -> Text =
  #| (v) => v

///|
/// Safely cast JsValue to Text (checked with instanceof)
pub extern "js" fn Text::from_js_value_opt(v : JsValue) -> Text? =
  #| (v) => (v instanceof Text) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Text (checked with instanceof)
pub extern "js" fn JsValue::as_text(self : JsValue) -> Text? =
  #| (self) => (self instanceof Text) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Text (unchecked)
pub extern "js" fn JsValue::to_text(self : JsValue) -> Text =
  #| (self) => self

///|
pub extern "js" fn Text::to_character_data(self : Text) -> CharacterData =
  #| (self) => self

///|
pub extern "js" fn Text::to_node(self : Text) -> Node =
  #| (self) => self

///|
pub extern "js" fn Text::to_event_target(self : Text) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn Text::as_cdata_section(self : Text) -> CDATASection? =
  #| (self) => (self instanceof CDATASection) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Text::new() -> Text =
  #| () => new Text()

///|
pub extern "js" fn Text::new_with_data(data : String) -> Text =
  #| (data) => new Text(data)

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
extern "js" fn Text::get_box_quads_with_options_ffi(
  self : Text,
  options : JsValue,
) -> Array[DOMQuad] =
  #| (self, options) => self.getBoxQuads(options)

///|
pub fn Text::get_box_quads_with_options(
  self : Text,
  options : BoxQuadOptions,
) -> Array[DOMQuad] {
  Text::get_box_quads_with_options_ffi(self, options.to_js())
}

///|
extern "js" fn Text::convert_quad_from_node_ffi(
  self : Text,
  quad : JsValue,
  from : GeometryNode,
) -> DOMQuad =
  #| (self, quad, from) => self.convertQuadFromNode(quad, from)

///|
pub fn Text::convert_quad_from_node(
  self : Text,
  quad : DOMQuadInit,
  from : GeometryNode,
) -> DOMQuad {
  Text::convert_quad_from_node_ffi(self, quad.to_js(), from)
}

///|
extern "js" fn Text::convert_quad_from_node_with_options_ffi(
  self : Text,
  quad : JsValue,
  from : GeometryNode,
  options : JsValue,
) -> DOMQuad =
  #| (self, quad, from, options) => self.convertQuadFromNode(quad, from, options)

///|
pub fn Text::convert_quad_from_node_with_options(
  self : Text,
  quad : DOMQuadInit,
  from : GeometryNode,
  options : ConvertCoordinateOptions,
) -> DOMQuad {
  Text::convert_quad_from_node_with_options_ffi(
    self,
    quad.to_js(),
    from,
    options.to_js(),
  )
}

///|
pub extern "js" fn Text::convert_rect_from_node(
  self : Text,
  rect : DOMRectReadOnly,
  from : GeometryNode,
) -> DOMQuad =
  #| (self, rect, from) => self.convertRectFromNode(rect, from)

///|
extern "js" fn Text::convert_rect_from_node_with_options_ffi(
  self : Text,
  rect : DOMRectReadOnly,
  from : GeometryNode,
  options : JsValue,
) -> DOMQuad =
  #| (self, rect, from, options) => self.convertRectFromNode(rect, from, options)

///|
pub fn Text::convert_rect_from_node_with_options(
  self : Text,
  rect : DOMRectReadOnly,
  from : GeometryNode,
  options : ConvertCoordinateOptions,
) -> DOMQuad {
  Text::convert_rect_from_node_with_options_ffi(
    self,
    rect,
    from,
    options.to_js(),
  )
}

///|
extern "js" fn Text::convert_point_from_node_ffi(
  self : Text,
  point : JsValue,
  from : GeometryNode,
) -> DOMPoint =
  #| (self, point, from) => self.convertPointFromNode(point, from)

///|
pub fn Text::convert_point_from_node(
  self : Text,
  point : DOMPointInit,
  from : GeometryNode,
) -> DOMPoint {
  Text::convert_point_from_node_ffi(self, point.to_js(), from)
}

///|
extern "js" fn Text::convert_point_from_node_with_options_ffi(
  self : Text,
  point : JsValue,
  from : GeometryNode,
  options : JsValue,
) -> DOMPoint =
  #| (self, point, from, options) => self.convertPointFromNode(point, from, options)

///|
pub fn Text::convert_point_from_node_with_options(
  self : Text,
  point : DOMPointInit,
  from : GeometryNode,
  options : ConvertCoordinateOptions,
) -> DOMPoint {
  Text::convert_point_from_node_with_options_ffi(
    self,
    point.to_js(),
    from,
    options.to_js(),
  )
}

///|
pub extern "js" fn Text::get_assigned_slot(self : Text) -> HTMLSlotElement? =
  #| (self) => (() => { const v = self.assignedSlot; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Text::convert_quad_from_node_with_text(
  self : Text,
  quad : DOMQuadInit,
  from : Text,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, quad, from, options) => self.convertQuadFromNode(quad, from, options)

///|
pub extern "js" fn Text::convert_quad_from_node_with_element(
  self : Text,
  quad : DOMQuadInit,
  from : Element,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, quad, from, options) => self.convertQuadFromNode(quad, from, options)

///|
pub extern "js" fn Text::convert_quad_from_node_with_css_pseudo_element(
  self : Text,
  quad : DOMQuadInit,
  from : CSSPseudoElement,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, quad, from, options) => self.convertQuadFromNode(quad, from, options)

///|
pub extern "js" fn Text::convert_quad_from_node_with_document(
  self : Text,
  quad : DOMQuadInit,
  from : Document,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, quad, from, options) => self.convertQuadFromNode(quad, from, options)

///|
pub extern "js" fn Text::convert_rect_from_node_with_text(
  self : Text,
  rect : DOMRectReadOnly,
  from : Text,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, rect, from, options) => self.convertRectFromNode(rect, from, options)

///|
pub extern "js" fn Text::convert_rect_from_node_with_element(
  self : Text,
  rect : DOMRectReadOnly,
  from : Element,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, rect, from, options) => self.convertRectFromNode(rect, from, options)

///|
pub extern "js" fn Text::convert_rect_from_node_with_css_pseudo_element(
  self : Text,
  rect : DOMRectReadOnly,
  from : CSSPseudoElement,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, rect, from, options) => self.convertRectFromNode(rect, from, options)

///|
pub extern "js" fn Text::convert_rect_from_node_with_document(
  self : Text,
  rect : DOMRectReadOnly,
  from : Document,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, rect, from, options) => self.convertRectFromNode(rect, from, options)

///|
pub extern "js" fn Text::convert_point_from_node_with_text(
  self : Text,
  point : DOMPointInit,
  from : Text,
  options : ConvertCoordinateOptions,
) -> DOMPoint =
  #| (self, point, from, options) => self.convertPointFromNode(point, from, options)

///|
pub extern "js" fn Text::convert_point_from_node_with_element(
  self : Text,
  point : DOMPointInit,
  from : Element,
  options : ConvertCoordinateOptions,
) -> DOMPoint =
  #| (self, point, from, options) => self.convertPointFromNode(point, from, options)

///|
pub extern "js" fn Text::convert_point_from_node_with_css_pseudo_element(
  self : Text,
  point : DOMPointInit,
  from : CSSPseudoElement,
  options : ConvertCoordinateOptions,
) -> DOMPoint =
  #| (self, point, from, options) => self.convertPointFromNode(point, from, options)

///|
pub extern "js" fn Text::convert_point_from_node_with_document(
  self : Text,
  point : DOMPointInit,
  from : Document,
  options : ConvertCoordinateOptions,
) -> DOMPoint =
  #| (self, point, from, options) => self.convertPointFromNode(point, from, options)

///|
/// CDATASection interface
pub type CDATASection

///|
pub extern "js" fn CDATASection::to_js_value(self : CDATASection) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CDATASection (unchecked)
pub extern "js" fn CDATASection::from_js_value(v : JsValue) -> CDATASection =
  #| (v) => v

///|
/// Safely cast JsValue to CDATASection (checked with instanceof)
pub extern "js" fn CDATASection::from_js_value_opt(
  v : JsValue,
) -> CDATASection? =
  #| (v) => (v instanceof CDATASection) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CDATASection (checked with instanceof)
pub extern "js" fn JsValue::as_cdata_section(self : JsValue) -> CDATASection? =
  #| (self) => (self instanceof CDATASection) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CDATASection (unchecked)
pub extern "js" fn JsValue::to_cdata_section(self : JsValue) -> CDATASection =
  #| (self) => self

///|
pub extern "js" fn CDATASection::to_text(self : CDATASection) -> Text =
  #| (self) => self

///|
pub extern "js" fn CDATASection::to_character_data(
  self : CDATASection,
) -> CharacterData =
  #| (self) => self

///|
pub extern "js" fn CDATASection::to_node(self : CDATASection) -> Node =
  #| (self) => self

///|
pub extern "js" fn CDATASection::to_event_target(
  self : CDATASection,
) -> EventTarget =
  #| (self) => self

///|
/// ProcessingInstruction interface
pub type ProcessingInstruction

///|
pub extern "js" fn ProcessingInstruction::to_js_value(
  self : ProcessingInstruction,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ProcessingInstruction (unchecked)
pub extern "js" fn ProcessingInstruction::from_js_value(
  v : JsValue,
) -> ProcessingInstruction =
  #| (v) => v

///|
/// Safely cast JsValue to ProcessingInstruction (checked with instanceof)
pub extern "js" fn ProcessingInstruction::from_js_value_opt(
  v : JsValue,
) -> ProcessingInstruction? =
  #| (v) => (v instanceof ProcessingInstruction) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ProcessingInstruction (checked with instanceof)
pub extern "js" fn JsValue::as_processing_instruction(
  self : JsValue,
) -> ProcessingInstruction? =
  #| (self) => (self instanceof ProcessingInstruction) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ProcessingInstruction (unchecked)
pub extern "js" fn JsValue::to_processing_instruction(
  self : JsValue,
) -> ProcessingInstruction =
  #| (self) => self

///|
pub extern "js" fn ProcessingInstruction::to_character_data(
  self : ProcessingInstruction,
) -> CharacterData =
  #| (self) => self

///|
pub extern "js" fn ProcessingInstruction::to_node(
  self : ProcessingInstruction,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn ProcessingInstruction::to_event_target(
  self : ProcessingInstruction,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn ProcessingInstruction::get_target(
  self : ProcessingInstruction,
) -> String =
  #| (self) => self.target

///|
pub extern "js" fn ProcessingInstruction::get_sheet(
  self : ProcessingInstruction,
) -> CSSStyleSheet? =
  #| (self) => (() => { const v = self.sheet; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// Comment interface
pub type Comment

///|
pub extern "js" fn Comment::to_js_value(self : Comment) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Comment (unchecked)
pub extern "js" fn Comment::from_js_value(v : JsValue) -> Comment =
  #| (v) => v

///|
/// Safely cast JsValue to Comment (checked with instanceof)
pub extern "js" fn Comment::from_js_value_opt(v : JsValue) -> Comment? =
  #| (v) => (v instanceof Comment) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Comment (checked with instanceof)
pub extern "js" fn JsValue::as_comment(self : JsValue) -> Comment? =
  #| (self) => (self instanceof Comment) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Comment (unchecked)
pub extern "js" fn JsValue::to_comment(self : JsValue) -> Comment =
  #| (self) => self

///|
pub extern "js" fn Comment::to_character_data(self : Comment) -> CharacterData =
  #| (self) => self

///|
pub extern "js" fn Comment::to_node(self : Comment) -> Node =
  #| (self) => self

///|
pub extern "js" fn Comment::to_event_target(self : Comment) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn Comment::new() -> Comment =
  #| () => new Comment()

///|
pub extern "js" fn Comment::new_with_data(data : String) -> Comment =
  #| (data) => new Comment(data)

///|
/// AbstractRange interface
pub type AbstractRange

///|
pub extern "js" fn AbstractRange::to_js_value(self : AbstractRange) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AbstractRange (unchecked)
pub extern "js" fn AbstractRange::from_js_value(v : JsValue) -> AbstractRange =
  #| (v) => v

///|
/// Safely cast JsValue to AbstractRange (checked with instanceof)
pub extern "js" fn AbstractRange::from_js_value_opt(
  v : JsValue,
) -> AbstractRange? =
  #| (v) => (v instanceof AbstractRange) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AbstractRange (checked with instanceof)
pub extern "js" fn JsValue::as_abstract_range(self : JsValue) -> AbstractRange? =
  #| (self) => (self instanceof AbstractRange) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AbstractRange (unchecked)
pub extern "js" fn JsValue::to_abstract_range(self : JsValue) -> AbstractRange =
  #| (self) => self

///|
pub extern "js" fn AbstractRange::as_static_range(
  self : AbstractRange,
) -> StaticRange? =
  #| (self) => (self instanceof StaticRange) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AbstractRange::as_range(self : AbstractRange) -> Range? =
  #| (self) => (self instanceof Range) ? { $tag: 1, _0: self } : { $tag: 0 }

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
/// Cast JsValue to StaticRange (unchecked)
pub extern "js" fn StaticRange::from_js_value(v : JsValue) -> StaticRange =
  #| (v) => v

///|
/// Safely cast JsValue to StaticRange (checked with instanceof)
pub extern "js" fn StaticRange::from_js_value_opt(v : JsValue) -> StaticRange? =
  #| (v) => (v instanceof StaticRange) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to StaticRange (checked with instanceof)
pub extern "js" fn JsValue::as_static_range(self : JsValue) -> StaticRange? =
  #| (self) => (self instanceof StaticRange) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to StaticRange (unchecked)
pub extern "js" fn JsValue::to_static_range(self : JsValue) -> StaticRange =
  #| (self) => self

///|
pub extern "js" fn StaticRange::to_abstract_range(
  self : StaticRange,
) -> AbstractRange =
  #| (self) => self

///|
extern "js" fn StaticRange::new_ffi(init_ : JsValue) -> StaticRange =
  #| (init_) => new StaticRange(init_)

///|
pub fn StaticRange::new(init_ : StaticRangeInit) -> StaticRange {
  StaticRange::new_ffi(init_.to_js())
}

///|
/// Range interface
pub type Range

///|
pub extern "js" fn Range::to_js_value(self : Range) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Range (unchecked)
pub extern "js" fn Range::from_js_value(v : JsValue) -> Range =
  #| (v) => v

///|
/// Safely cast JsValue to Range (checked with instanceof)
pub extern "js" fn Range::from_js_value_opt(v : JsValue) -> Range? =
  #| (v) => (v instanceof Range) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Range (checked with instanceof)
pub extern "js" fn JsValue::as_range(self : JsValue) -> Range? =
  #| (self) => (self instanceof Range) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Range (unchecked)
pub extern "js" fn JsValue::to_range(self : JsValue) -> Range =
  #| (self) => self

///|
pub extern "js" fn Range::to_abstract_range(self : Range) -> AbstractRange =
  #| (self) => self

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
/// Cast JsValue to NodeIterator (unchecked)
pub extern "js" fn NodeIterator::from_js_value(v : JsValue) -> NodeIterator =
  #| (v) => v

///|
/// Safely cast JsValue to NodeIterator (checked with instanceof)
pub extern "js" fn NodeIterator::from_js_value_opt(
  v : JsValue,
) -> NodeIterator? =
  #| (v) => (v instanceof NodeIterator) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to NodeIterator (checked with instanceof)
pub extern "js" fn JsValue::as_node_iterator(self : JsValue) -> NodeIterator? =
  #| (self) => (self instanceof NodeIterator) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to NodeIterator (unchecked)
pub extern "js" fn JsValue::to_node_iterator(self : JsValue) -> NodeIterator =
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
  #| (self) => (() => { const v = self.filter; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn NodeIterator::next_node(self : NodeIterator) -> Node? =
  #| (self) => (() => { const v = self.nextNode(); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn NodeIterator::previous_node(self : NodeIterator) -> Node? =
  #| (self) => (() => { const v = self.previousNode(); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

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
/// Cast JsValue to TreeWalker (unchecked)
pub extern "js" fn TreeWalker::from_js_value(v : JsValue) -> TreeWalker =
  #| (v) => v

///|
/// Safely cast JsValue to TreeWalker (checked with instanceof)
pub extern "js" fn TreeWalker::from_js_value_opt(v : JsValue) -> TreeWalker? =
  #| (v) => (v instanceof TreeWalker) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to TreeWalker (checked with instanceof)
pub extern "js" fn JsValue::as_tree_walker(self : JsValue) -> TreeWalker? =
  #| (self) => (self instanceof TreeWalker) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to TreeWalker (unchecked)
pub extern "js" fn JsValue::to_tree_walker(self : JsValue) -> TreeWalker =
  #| (self) => self

///|
pub extern "js" fn TreeWalker::get_root(self : TreeWalker) -> Node =
  #| (self) => self.root

///|
pub extern "js" fn TreeWalker::get_what_to_show(self : TreeWalker) -> Int =
  #| (self) => self.whatToShow

///|
pub extern "js" fn TreeWalker::get_filter(self : TreeWalker) -> NodeFilter? =
  #| (self) => (() => { const v = self.filter; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

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
  #| (self) => (() => { const v = self.parentNode(); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn TreeWalker::first_child(self : TreeWalker) -> Node? =
  #| (self) => (() => { const v = self.firstChild(); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn TreeWalker::last_child(self : TreeWalker) -> Node? =
  #| (self) => (() => { const v = self.lastChild(); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn TreeWalker::previous_sibling(self : TreeWalker) -> Node? =
  #| (self) => (() => { const v = self.previousSibling(); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn TreeWalker::next_sibling(self : TreeWalker) -> Node? =
  #| (self) => (() => { const v = self.nextSibling(); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn TreeWalker::previous_node(self : TreeWalker) -> Node? =
  #| (self) => (() => { const v = self.previousNode(); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn TreeWalker::next_node(self : TreeWalker) -> Node? =
  #| (self) => (() => { const v = self.nextNode(); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// DOMTokenList interface
pub type DOMTokenList

///|
pub extern "js" fn DOMTokenList::to_js_value(self : DOMTokenList) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to DOMTokenList (unchecked)
pub extern "js" fn DOMTokenList::from_js_value(v : JsValue) -> DOMTokenList =
  #| (v) => v

///|
/// Safely cast JsValue to DOMTokenList (checked with instanceof)
pub extern "js" fn DOMTokenList::from_js_value_opt(
  v : JsValue,
) -> DOMTokenList? =
  #| (v) => (v instanceof DOMTokenList) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to DOMTokenList (checked with instanceof)
pub extern "js" fn JsValue::as_dom_token_list(self : JsValue) -> DOMTokenList? =
  #| (self) => (self instanceof DOMTokenList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to DOMTokenList (unchecked)
pub extern "js" fn JsValue::to_dom_token_list(self : JsValue) -> DOMTokenList =
  #| (self) => self

///|
pub extern "js" fn DOMTokenList::get_length(self : DOMTokenList) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn DOMTokenList::item(
  self : DOMTokenList,
  index : Int,
) -> String? =
  #| (self, index) => (self.item(index)) ?? undefined

///|
#alias("_[_]")
pub extern "js" fn DOMTokenList::get(
  self : DOMTokenList,
  index : Int,
) -> String? =
  #| (self, index) => (self[index]) ?? undefined

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
pub extern "js" fn DOMTokenList::keys(self : DOMTokenList) -> JsValue =
  #| (self) => self.keys()

///|
pub extern "js" fn DOMTokenList::values(self : DOMTokenList) -> JsValue =
  #| (self) => self.values()

///|
pub extern "js" fn DOMTokenList::entries(self : DOMTokenList) -> JsValue =
  #| (self) => self.entries()

///|
pub extern "js" fn DOMTokenList::for_each(
  self : DOMTokenList,
  callback : JsValue,
) -> Unit =
  #| (self, callback) => { self.forEach(callback) }

///|
/// XPathResult interface
pub type XPathResult

///|
pub extern "js" fn XPathResult::to_js_value(self : XPathResult) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XPathResult (unchecked)
pub extern "js" fn XPathResult::from_js_value(v : JsValue) -> XPathResult =
  #| (v) => v

///|
/// Safely cast JsValue to XPathResult (checked with instanceof)
pub extern "js" fn XPathResult::from_js_value_opt(v : JsValue) -> XPathResult? =
  #| (v) => (v instanceof XPathResult) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XPathResult (checked with instanceof)
pub extern "js" fn JsValue::as_x_path_result(self : JsValue) -> XPathResult? =
  #| (self) => (self instanceof XPathResult) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XPathResult (unchecked)
pub extern "js" fn JsValue::to_x_path_result(self : JsValue) -> XPathResult =
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
  #| (self) => (() => { const v = self.singleNodeValue; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

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
  #| (self) => (() => { const v = self.iterateNext(); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn XPathResult::snapshot_item(
  self : XPathResult,
  index : Int,
) -> Node? =
  #| (self, index) => (() => { const v = self.snapshotItem(index); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// XPathExpression interface
pub type XPathExpression

///|
pub extern "js" fn XPathExpression::to_js_value(
  self : XPathExpression,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XPathExpression (unchecked)
pub extern "js" fn XPathExpression::from_js_value(
  v : JsValue,
) -> XPathExpression =
  #| (v) => v

///|
/// Safely cast JsValue to XPathExpression (checked with instanceof)
pub extern "js" fn XPathExpression::from_js_value_opt(
  v : JsValue,
) -> XPathExpression? =
  #| (v) => (v instanceof XPathExpression) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XPathExpression (checked with instanceof)
pub extern "js" fn JsValue::as_x_path_expression(
  self : JsValue,
) -> XPathExpression? =
  #| (self) => (self instanceof XPathExpression) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XPathExpression (unchecked)
pub extern "js" fn JsValue::to_x_path_expression(
  self : JsValue,
) -> XPathExpression =
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
  #| (self, context_node, type_, result) => self.evaluate(context_node, type_, (result.$tag === 1 ? result._0 : null))

///|
/// XPathEvaluator interface
pub type XPathEvaluator

///|
pub extern "js" fn XPathEvaluator::to_js_value(
  self : XPathEvaluator,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XPathEvaluator (unchecked)
pub extern "js" fn XPathEvaluator::from_js_value(v : JsValue) -> XPathEvaluator =
  #| (v) => v

///|
/// Safely cast JsValue to XPathEvaluator (checked with instanceof)
pub extern "js" fn XPathEvaluator::from_js_value_opt(
  v : JsValue,
) -> XPathEvaluator? =
  #| (v) => (v instanceof XPathEvaluator) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XPathEvaluator (checked with instanceof)
pub extern "js" fn JsValue::as_x_path_evaluator(
  self : JsValue,
) -> XPathEvaluator? =
  #| (self) => (self instanceof XPathEvaluator) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XPathEvaluator (unchecked)
pub extern "js" fn JsValue::to_x_path_evaluator(
  self : JsValue,
) -> XPathEvaluator =
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
  #| (self, expression, resolver) => self.createExpression(expression, (resolver.$tag === 1 ? resolver._0 : null))

///|
pub extern "js" fn XPathEvaluator::create_ns_resolver(
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
  #| (self, expression, context_node, resolver, type_, result) => self.evaluate(expression, context_node, (resolver.$tag === 1 ? resolver._0 : null), type_, (result.$tag === 1 ? result._0 : null))

///|
/// XSLTProcessor interface
pub type XSLTProcessor

///|
pub extern "js" fn XSLTProcessor::to_js_value(self : XSLTProcessor) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XSLTProcessor (unchecked)
pub extern "js" fn XSLTProcessor::from_js_value(v : JsValue) -> XSLTProcessor =
  #| (v) => v

///|
/// Safely cast JsValue to XSLTProcessor (checked with instanceof)
pub extern "js" fn XSLTProcessor::from_js_value_opt(
  v : JsValue,
) -> XSLTProcessor? =
  #| (v) => (v instanceof XSLTProcessor) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XSLTProcessor (checked with instanceof)
pub extern "js" fn JsValue::as_xslt_processor(self : JsValue) -> XSLTProcessor? =
  #| (self) => (self instanceof XSLTProcessor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XSLTProcessor (unchecked)
pub extern "js" fn JsValue::to_xslt_processor(self : JsValue) -> XSLTProcessor =
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
  namespace_uri : String,
  local_name : String,
  value : JsValue,
) -> Unit =
  #| (self, namespace_uri, local_name, value) => self.setParameter(namespace_uri, local_name, value)

///|
pub extern "js" fn XSLTProcessor::get_parameter(
  self : XSLTProcessor,
  namespace_uri : String,
  local_name : String,
) -> JsValue =
  #| (self, namespace_uri, local_name) => self.getParameter(namespace_uri, local_name)

///|
pub extern "js" fn XSLTProcessor::remove_parameter(
  self : XSLTProcessor,
  namespace_uri : String,
  local_name : String,
) -> Unit =
  #| (self, namespace_uri, local_name) => self.removeParameter(namespace_uri, local_name)

///|
pub extern "js" fn XSLTProcessor::clear_parameters(
  self : XSLTProcessor,
) -> Unit =
  #| (self) => self.clearParameters()

///|
pub extern "js" fn XSLTProcessor::reset(self : XSLTProcessor) -> Unit =
  #| (self) => self.reset()
