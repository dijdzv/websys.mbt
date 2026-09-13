// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/uievents

///|
/// FocusEventInit dictionary
pub(all) struct FocusEventInit {
  relatedTarget : Nullable[EventTarget]
}

///|
/// Create a new FocusEventInit with default values
pub fn FocusEventInit::default() -> FocusEventInit {
  FocusEventInit::{ relatedTarget: Nullable::Undefined, }
}

///|
extern "js" fn FocusEventInit::to_js_ffi(self : FocusEventInit) -> JsValue =
  #| (self) => ({
  #|   relatedTarget: ((() => { const v = self.relatedTarget; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn FocusEventInit::to_js(self : FocusEventInit) -> JsValue {
  FocusEventInit::to_js_ffi(self)
}

///|
extern "js" fn FocusEventInit::from_js_ffi(value : JsValue) -> FocusEventInit =
  #| (v) => ({
  #|   relatedTarget: (v.relatedTarget === undefined ? { $tag: 0 } : v.relatedTarget === null ? { $tag: 1 } : { $tag: 2, _0: v.relatedTarget })
  #| })

///|
/// Convert from JsValue
pub fn FocusEventInit::from_js(value : JsValue) -> FocusEventInit {
  FocusEventInit::from_js_ffi(value)
}

///|
/// KeyboardEventInit dictionary
pub(all) struct KeyboardEventInit {
  ctrlKey : Bool?
  shiftKey : Bool?
  altKey : Bool?
  metaKey : Bool?
  modifierAltGraph : Bool?
  modifierCapsLock : Bool?
  modifierFn : Bool?
  modifierFnLock : Bool?
  modifierHyper : Bool?
  modifierNumLock : Bool?
  modifierScrollLock : Bool?
  modifierSuper : Bool?
  modifierSymbol : Bool?
  modifierSymbolLock : Bool?
  key : String?
  code : String?
  location : Int?
  repeat : Bool?
  isComposing : Bool?
  charCode : Int?
  keyCode : Int?
}

///|
/// Create a new KeyboardEventInit with default values
pub fn KeyboardEventInit::default() -> KeyboardEventInit {
  KeyboardEventInit::{
    ctrlKey: None,
    shiftKey: None,
    altKey: None,
    metaKey: None,
    modifierAltGraph: None,
    modifierCapsLock: None,
    modifierFn: None,
    modifierFnLock: None,
    modifierHyper: None,
    modifierNumLock: None,
    modifierScrollLock: None,
    modifierSuper: None,
    modifierSymbol: None,
    modifierSymbolLock: None,
    key: None,
    code: None,
    location: None,
    repeat: None,
    isComposing: None,
    charCode: None,
    keyCode: None,
  }
}

///|
extern "js" fn KeyboardEventInit::to_js_ffi(
  self : KeyboardEventInit,
) -> JsValue =
  #| (self) => ({
  #|   ctrlKey: (self.ctrlKey === -1 ? undefined : self.ctrlKey),
  #|   shiftKey: (self.shiftKey === -1 ? undefined : self.shiftKey),
  #|   altKey: (self.altKey === -1 ? undefined : self.altKey),
  #|   metaKey: (self.metaKey === -1 ? undefined : self.metaKey),
  #|   modifierAltGraph: (self.modifierAltGraph === -1 ? undefined : self.modifierAltGraph),
  #|   modifierCapsLock: (self.modifierCapsLock === -1 ? undefined : self.modifierCapsLock),
  #|   modifierFn: (self.modifierFn === -1 ? undefined : self.modifierFn),
  #|   modifierFnLock: (self.modifierFnLock === -1 ? undefined : self.modifierFnLock),
  #|   modifierHyper: (self.modifierHyper === -1 ? undefined : self.modifierHyper),
  #|   modifierNumLock: (self.modifierNumLock === -1 ? undefined : self.modifierNumLock),
  #|   modifierScrollLock: (self.modifierScrollLock === -1 ? undefined : self.modifierScrollLock),
  #|   modifierSuper: (self.modifierSuper === -1 ? undefined : self.modifierSuper),
  #|   modifierSymbol: (self.modifierSymbol === -1 ? undefined : self.modifierSymbol),
  #|   modifierSymbolLock: (self.modifierSymbolLock === -1 ? undefined : self.modifierSymbolLock),
  #|   key: self.key,
  #|   code: self.code,
  #|   location: self.location,
  #|   repeat: (self.repeat === -1 ? undefined : self.repeat),
  #|   isComposing: (self.isComposing === -1 ? undefined : self.isComposing),
  #|   charCode: self.charCode,
  #|   keyCode: self.keyCode
  #| })

///|
/// Convert to JsValue
pub fn KeyboardEventInit::to_js(self : KeyboardEventInit) -> JsValue {
  KeyboardEventInit::to_js_ffi(self)
}

///|
extern "js" fn KeyboardEventInit::from_js_ffi(
  value : JsValue,
) -> KeyboardEventInit =
  #| (v) => ({
  #|   ctrlKey: (v.ctrlKey === undefined ? -1 : v.ctrlKey),
  #|   shiftKey: (v.shiftKey === undefined ? -1 : v.shiftKey),
  #|   altKey: (v.altKey === undefined ? -1 : v.altKey),
  #|   metaKey: (v.metaKey === undefined ? -1 : v.metaKey),
  #|   modifierAltGraph: (v.modifierAltGraph === undefined ? -1 : v.modifierAltGraph),
  #|   modifierCapsLock: (v.modifierCapsLock === undefined ? -1 : v.modifierCapsLock),
  #|   modifierFn: (v.modifierFn === undefined ? -1 : v.modifierFn),
  #|   modifierFnLock: (v.modifierFnLock === undefined ? -1 : v.modifierFnLock),
  #|   modifierHyper: (v.modifierHyper === undefined ? -1 : v.modifierHyper),
  #|   modifierNumLock: (v.modifierNumLock === undefined ? -1 : v.modifierNumLock),
  #|   modifierScrollLock: (v.modifierScrollLock === undefined ? -1 : v.modifierScrollLock),
  #|   modifierSuper: (v.modifierSuper === undefined ? -1 : v.modifierSuper),
  #|   modifierSymbol: (v.modifierSymbol === undefined ? -1 : v.modifierSymbol),
  #|   modifierSymbolLock: (v.modifierSymbolLock === undefined ? -1 : v.modifierSymbolLock),
  #|   key: v.key,
  #|   code: v.code,
  #|   location: v.location,
  #|   repeat: (v.repeat === undefined ? -1 : v.repeat),
  #|   isComposing: (v.isComposing === undefined ? -1 : v.isComposing),
  #|   charCode: v.charCode,
  #|   keyCode: v.keyCode
  #| })

///|
/// Convert from JsValue
pub fn KeyboardEventInit::from_js(value : JsValue) -> KeyboardEventInit {
  KeyboardEventInit::from_js_ffi(value)
}

///|
/// EventModifierInit dictionary
pub(all) struct EventModifierInit {
  ctrlKey : Bool?
  shiftKey : Bool?
  altKey : Bool?
  metaKey : Bool?
  modifierAltGraph : Bool?
  modifierCapsLock : Bool?
  modifierFn : Bool?
  modifierFnLock : Bool?
  modifierHyper : Bool?
  modifierNumLock : Bool?
  modifierScrollLock : Bool?
  modifierSuper : Bool?
  modifierSymbol : Bool?
  modifierSymbolLock : Bool?
}

///|
/// Create a new EventModifierInit with default values
pub fn EventModifierInit::default() -> EventModifierInit {
  EventModifierInit::{
    ctrlKey: None,
    shiftKey: None,
    altKey: None,
    metaKey: None,
    modifierAltGraph: None,
    modifierCapsLock: None,
    modifierFn: None,
    modifierFnLock: None,
    modifierHyper: None,
    modifierNumLock: None,
    modifierScrollLock: None,
    modifierSuper: None,
    modifierSymbol: None,
    modifierSymbolLock: None,
  }
}

///|
extern "js" fn EventModifierInit::to_js_ffi(
  self : EventModifierInit,
) -> JsValue =
  #| (self) => ({
  #|   ctrlKey: (self.ctrlKey === -1 ? undefined : self.ctrlKey),
  #|   shiftKey: (self.shiftKey === -1 ? undefined : self.shiftKey),
  #|   altKey: (self.altKey === -1 ? undefined : self.altKey),
  #|   metaKey: (self.metaKey === -1 ? undefined : self.metaKey),
  #|   modifierAltGraph: (self.modifierAltGraph === -1 ? undefined : self.modifierAltGraph),
  #|   modifierCapsLock: (self.modifierCapsLock === -1 ? undefined : self.modifierCapsLock),
  #|   modifierFn: (self.modifierFn === -1 ? undefined : self.modifierFn),
  #|   modifierFnLock: (self.modifierFnLock === -1 ? undefined : self.modifierFnLock),
  #|   modifierHyper: (self.modifierHyper === -1 ? undefined : self.modifierHyper),
  #|   modifierNumLock: (self.modifierNumLock === -1 ? undefined : self.modifierNumLock),
  #|   modifierScrollLock: (self.modifierScrollLock === -1 ? undefined : self.modifierScrollLock),
  #|   modifierSuper: (self.modifierSuper === -1 ? undefined : self.modifierSuper),
  #|   modifierSymbol: (self.modifierSymbol === -1 ? undefined : self.modifierSymbol),
  #|   modifierSymbolLock: (self.modifierSymbolLock === -1 ? undefined : self.modifierSymbolLock)
  #| })

///|
/// Convert to JsValue
pub fn EventModifierInit::to_js(self : EventModifierInit) -> JsValue {
  EventModifierInit::to_js_ffi(self)
}

///|
extern "js" fn EventModifierInit::from_js_ffi(
  value : JsValue,
) -> EventModifierInit =
  #| (v) => ({
  #|   ctrlKey: (v.ctrlKey === undefined ? -1 : v.ctrlKey),
  #|   shiftKey: (v.shiftKey === undefined ? -1 : v.shiftKey),
  #|   altKey: (v.altKey === undefined ? -1 : v.altKey),
  #|   metaKey: (v.metaKey === undefined ? -1 : v.metaKey),
  #|   modifierAltGraph: (v.modifierAltGraph === undefined ? -1 : v.modifierAltGraph),
  #|   modifierCapsLock: (v.modifierCapsLock === undefined ? -1 : v.modifierCapsLock),
  #|   modifierFn: (v.modifierFn === undefined ? -1 : v.modifierFn),
  #|   modifierFnLock: (v.modifierFnLock === undefined ? -1 : v.modifierFnLock),
  #|   modifierHyper: (v.modifierHyper === undefined ? -1 : v.modifierHyper),
  #|   modifierNumLock: (v.modifierNumLock === undefined ? -1 : v.modifierNumLock),
  #|   modifierScrollLock: (v.modifierScrollLock === undefined ? -1 : v.modifierScrollLock),
  #|   modifierSuper: (v.modifierSuper === undefined ? -1 : v.modifierSuper),
  #|   modifierSymbol: (v.modifierSymbol === undefined ? -1 : v.modifierSymbol),
  #|   modifierSymbolLock: (v.modifierSymbolLock === undefined ? -1 : v.modifierSymbolLock)
  #| })

///|
/// Convert from JsValue
pub fn EventModifierInit::from_js(value : JsValue) -> EventModifierInit {
  EventModifierInit::from_js_ffi(value)
}

///|
/// CompositionEventInit dictionary
pub(all) struct CompositionEventInit {
  data : String?
}

///|
/// Create a new CompositionEventInit with default values
pub fn CompositionEventInit::default() -> CompositionEventInit {
  CompositionEventInit::{ data: None, }
}

///|
extern "js" fn CompositionEventInit::to_js_ffi(
  self : CompositionEventInit,
) -> JsValue =
  #| (self) => ({
  #|   data: self.data
  #| })

///|
/// Convert to JsValue
pub fn CompositionEventInit::to_js(self : CompositionEventInit) -> JsValue {
  CompositionEventInit::to_js_ffi(self)
}

///|
extern "js" fn CompositionEventInit::from_js_ffi(
  value : JsValue,
) -> CompositionEventInit =
  #| (v) => ({
  #|   data: v.data
  #| })

///|
/// Convert from JsValue
pub fn CompositionEventInit::from_js(value : JsValue) -> CompositionEventInit {
  CompositionEventInit::from_js_ffi(value)
}

///|
/// UIEvent interface
pub type UIEvent

///|
pub extern "js" fn UIEvent::to_js_value(self : UIEvent) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to UIEvent (unchecked)
pub extern "js" fn UIEvent::from_js_value(v : JsValue) -> UIEvent =
  #| (v) => v

///|
/// Safely cast JsValue to UIEvent (checked with instanceof)
pub extern "js" fn UIEvent::from_js_value_opt(v : JsValue) -> UIEvent? =
  #| (v) => (v instanceof UIEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to UIEvent (checked with instanceof)
pub extern "js" fn JsValue::as_ui_event(self : JsValue) -> UIEvent? =
  #| (self) => (self instanceof UIEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to UIEvent (unchecked)
pub extern "js" fn JsValue::to_ui_event(self : JsValue) -> UIEvent =
  #| (self) => self

///|
pub extern "js" fn UIEvent::to_event(self : UIEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn UIEvent::as_navigation_event(
  self : UIEvent,
) -> NavigationEvent? =
  #| (self) => (self instanceof NavigationEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn UIEvent::as_drag_event(self : UIEvent) -> DragEvent? =
  #| (self) => (self instanceof DragEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn UIEvent::as_mouse_event(self : UIEvent) -> MouseEvent? =
  #| (self) => (self instanceof MouseEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn UIEvent::as_pointer_event(self : UIEvent) -> PointerEvent? =
  #| (self) => (self instanceof PointerEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn UIEvent::as_wheel_event(self : UIEvent) -> WheelEvent? =
  #| (self) => (self instanceof WheelEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn UIEvent::as_touch_event(self : UIEvent) -> TouchEvent? =
  #| (self) => (self instanceof TouchEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn UIEvent::as_focus_event(self : UIEvent) -> FocusEvent? =
  #| (self) => (self instanceof FocusEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn UIEvent::as_input_event(self : UIEvent) -> InputEvent? =
  #| (self) => (self instanceof InputEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn UIEvent::as_keyboard_event(self : UIEvent) -> KeyboardEvent? =
  #| (self) => (self instanceof KeyboardEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn UIEvent::as_composition_event(
  self : UIEvent,
) -> CompositionEvent? =
  #| (self) => (self instanceof CompositionEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn UIEvent::as_text_event(self : UIEvent) -> TextEvent? =
  #| (self) => (self instanceof TextEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn UIEvent::new(type_ : String) -> UIEvent =
  #| (type_) => new UIEvent(type_)

///|
extern "js" fn UIEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> UIEvent =
  #| (type_, event_init_dict) => new UIEvent(type_, event_init_dict)

///|
pub fn UIEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : UIEventInit,
) -> UIEvent {
  UIEvent::new_with_event_init_dict_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn UIEvent::get_view(self : UIEvent) -> Window? =
  #| (self) => (() => { const v = self.view; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn UIEvent::get_detail(self : UIEvent) -> Int =
  #| (self) => self.detail

///|
pub extern "js" fn UIEvent::get_source_capabilities(
  self : UIEvent,
) -> InputDeviceCapabilities? =
  #| (self) => (() => { const v = self.sourceCapabilities; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// @alert deprecated "initUIEvent is deprecated"
pub extern "js" fn UIEvent::init_ui_event(
  self : UIEvent,
  type_arg : String,
) -> Unit =
  #| (self, type_arg) => self.initUIEvent(type_arg)

///|
pub extern "js" fn UIEvent::init_ui_event_with_detail_arg(
  self : UIEvent,
  type_arg : String,
  bubbles_arg : Bool,
  cancelable_arg : Bool,
  view_arg : Window?,
  detail_arg : Int,
) -> Unit =
  #| (self, type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg) => self.initUIEvent(type_arg, bubbles_arg, cancelable_arg, (view_arg.$tag === 1 ? view_arg._0 : null), detail_arg)

///|
pub extern "js" fn UIEvent::get_which(self : UIEvent) -> Int =
  #| (self) => self.which

///|
/// FocusEvent interface
pub type FocusEvent

///|
pub extern "js" fn FocusEvent::to_js_value(self : FocusEvent) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to FocusEvent (unchecked)
pub extern "js" fn FocusEvent::from_js_value(v : JsValue) -> FocusEvent =
  #| (v) => v

///|
/// Safely cast JsValue to FocusEvent (checked with instanceof)
pub extern "js" fn FocusEvent::from_js_value_opt(v : JsValue) -> FocusEvent? =
  #| (v) => (v instanceof FocusEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to FocusEvent (checked with instanceof)
pub extern "js" fn JsValue::as_focus_event(self : JsValue) -> FocusEvent? =
  #| (self) => (self instanceof FocusEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to FocusEvent (unchecked)
pub extern "js" fn JsValue::to_focus_event(self : JsValue) -> FocusEvent =
  #| (self) => self

///|
pub extern "js" fn FocusEvent::to_ui_event(self : FocusEvent) -> UIEvent =
  #| (self) => self

///|
pub extern "js" fn FocusEvent::to_event(self : FocusEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn FocusEvent::new(type_ : String) -> FocusEvent =
  #| (type_) => new FocusEvent(type_)

///|
extern "js" fn FocusEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> FocusEvent =
  #| (type_, event_init_dict) => new FocusEvent(type_, event_init_dict)

///|
pub fn FocusEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : FocusEventInit,
) -> FocusEvent {
  FocusEvent::new_with_event_init_dict_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn FocusEvent::get_related_target(
  self : FocusEvent,
) -> EventTarget? =
  #| (self) => (() => { const v = self.relatedTarget; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// InputEvent interface
pub type InputEvent

///|
pub extern "js" fn InputEvent::to_js_value(self : InputEvent) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to InputEvent (unchecked)
pub extern "js" fn InputEvent::from_js_value(v : JsValue) -> InputEvent =
  #| (v) => v

///|
/// Safely cast JsValue to InputEvent (checked with instanceof)
pub extern "js" fn InputEvent::from_js_value_opt(v : JsValue) -> InputEvent? =
  #| (v) => (v instanceof InputEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to InputEvent (checked with instanceof)
pub extern "js" fn JsValue::as_input_event(self : JsValue) -> InputEvent? =
  #| (self) => (self instanceof InputEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to InputEvent (unchecked)
pub extern "js" fn JsValue::to_input_event(self : JsValue) -> InputEvent =
  #| (self) => self

///|
pub extern "js" fn InputEvent::to_ui_event(self : InputEvent) -> UIEvent =
  #| (self) => self

///|
pub extern "js" fn InputEvent::to_event(self : InputEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn InputEvent::new(type_ : String) -> InputEvent =
  #| (type_) => new InputEvent(type_)

///|
extern "js" fn InputEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> InputEvent =
  #| (type_, event_init_dict) => new InputEvent(type_, event_init_dict)

///|
pub fn InputEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : InputEventInit,
) -> InputEvent {
  InputEvent::new_with_event_init_dict_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn InputEvent::get_data(self : InputEvent) -> String? =
  #| (self) => (self.data) ?? undefined

///|
pub extern "js" fn InputEvent::get_is_composing(self : InputEvent) -> Bool =
  #| (self) => self.isComposing

///|
pub extern "js" fn InputEvent::get_input_type(self : InputEvent) -> String =
  #| (self) => self.inputType

///|
pub extern "js" fn InputEvent::get_data_transfer(
  self : InputEvent,
) -> DataTransfer? =
  #| (self) => (() => { const v = self.dataTransfer; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn InputEvent::get_target_ranges(
  self : InputEvent,
) -> FixedArray[StaticRange] =
  #| (self) => self.getTargetRanges()

///|
/// KeyboardEvent interface
pub type KeyboardEvent

///|
pub extern "js" fn KeyboardEvent::to_js_value(self : KeyboardEvent) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to KeyboardEvent (unchecked)
pub extern "js" fn KeyboardEvent::from_js_value(v : JsValue) -> KeyboardEvent =
  #| (v) => v

///|
/// Safely cast JsValue to KeyboardEvent (checked with instanceof)
pub extern "js" fn KeyboardEvent::from_js_value_opt(
  v : JsValue,
) -> KeyboardEvent? =
  #| (v) => (v instanceof KeyboardEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to KeyboardEvent (checked with instanceof)
pub extern "js" fn JsValue::as_keyboard_event(self : JsValue) -> KeyboardEvent? =
  #| (self) => (self instanceof KeyboardEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to KeyboardEvent (unchecked)
pub extern "js" fn JsValue::to_keyboard_event(self : JsValue) -> KeyboardEvent =
  #| (self) => self

///|
pub extern "js" fn KeyboardEvent::to_ui_event(self : KeyboardEvent) -> UIEvent =
  #| (self) => self

///|
pub extern "js" fn KeyboardEvent::to_event(self : KeyboardEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn KeyboardEvent::new(type_ : String) -> KeyboardEvent =
  #| (type_) => new KeyboardEvent(type_)

///|
extern "js" fn KeyboardEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> KeyboardEvent =
  #| (type_, event_init_dict) => new KeyboardEvent(type_, event_init_dict)

///|
pub fn KeyboardEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : KeyboardEventInit,
) -> KeyboardEvent {
  KeyboardEvent::new_with_event_init_dict_ffi(type_, event_init_dict.to_js())
}

// KeyboardEvent.DOM_KEY_LOCATION_STANDARD

///|
pub let keyboard_event_dom_key_location_standard : Int = 0x00

// KeyboardEvent.DOM_KEY_LOCATION_LEFT

///|
pub let keyboard_event_dom_key_location_left : Int = 0x01

// KeyboardEvent.DOM_KEY_LOCATION_RIGHT

///|
pub let keyboard_event_dom_key_location_right : Int = 0x02

// KeyboardEvent.DOM_KEY_LOCATION_NUMPAD

///|
pub let keyboard_event_dom_key_location_numpad : Int = 0x03

///|
pub extern "js" fn KeyboardEvent::get_key(self : KeyboardEvent) -> String =
  #| (self) => self.key

///|
pub extern "js" fn KeyboardEvent::get_code(self : KeyboardEvent) -> String =
  #| (self) => self.code

///|
pub extern "js" fn KeyboardEvent::get_location(self : KeyboardEvent) -> Int =
  #| (self) => self.location

///|
pub extern "js" fn KeyboardEvent::get_ctrl_key(self : KeyboardEvent) -> Bool =
  #| (self) => self.ctrlKey

///|
pub extern "js" fn KeyboardEvent::get_shift_key(self : KeyboardEvent) -> Bool =
  #| (self) => self.shiftKey

///|
pub extern "js" fn KeyboardEvent::get_alt_key(self : KeyboardEvent) -> Bool =
  #| (self) => self.altKey

///|
pub extern "js" fn KeyboardEvent::get_meta_key(self : KeyboardEvent) -> Bool =
  #| (self) => self.metaKey

///|
pub extern "js" fn KeyboardEvent::get_repeat(self : KeyboardEvent) -> Bool =
  #| (self) => self.repeat

///|
pub extern "js" fn KeyboardEvent::get_is_composing(
  self : KeyboardEvent,
) -> Bool =
  #| (self) => self.isComposing

///|
pub extern "js" fn KeyboardEvent::get_modifier_state(
  self : KeyboardEvent,
  key_arg : String,
) -> Bool =
  #| (self, key_arg) => self.getModifierState(key_arg)

///|
/// @alert deprecated "initKeyboardEvent is deprecated"
pub extern "js" fn KeyboardEvent::init_keyboard_event(
  self : KeyboardEvent,
  type_arg : String,
) -> Unit =
  #| (self, type_arg) => self.initKeyboardEvent(type_arg)

///|
pub extern "js" fn KeyboardEvent::init_keyboard_event_with_meta_key(
  self : KeyboardEvent,
  type_arg : String,
  bubbles_arg : Bool,
  cancelable_arg : Bool,
  view_arg : Window?,
  key_arg : String,
  location_arg : Int,
  ctrl_key : Bool,
  alt_key : Bool,
  shift_key : Bool,
  meta_key : Bool,
) -> Unit =
  #| (self, type_arg, bubbles_arg, cancelable_arg, view_arg, key_arg, location_arg, ctrl_key, alt_key, shift_key, meta_key) => self.initKeyboardEvent(type_arg, bubbles_arg, cancelable_arg, (view_arg.$tag === 1 ? view_arg._0 : null), key_arg, location_arg, ctrl_key, alt_key, shift_key, meta_key)

///|
pub extern "js" fn KeyboardEvent::get_char_code(self : KeyboardEvent) -> Int =
  #| (self) => self.charCode

///|
pub extern "js" fn KeyboardEvent::get_key_code(self : KeyboardEvent) -> Int =
  #| (self) => self.keyCode

///|
/// CompositionEvent interface
pub type CompositionEvent

///|
pub extern "js" fn CompositionEvent::to_js_value(
  self : CompositionEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CompositionEvent (unchecked)
pub extern "js" fn CompositionEvent::from_js_value(
  v : JsValue,
) -> CompositionEvent =
  #| (v) => v

///|
/// Safely cast JsValue to CompositionEvent (checked with instanceof)
pub extern "js" fn CompositionEvent::from_js_value_opt(
  v : JsValue,
) -> CompositionEvent? =
  #| (v) => (v instanceof CompositionEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CompositionEvent (checked with instanceof)
pub extern "js" fn JsValue::as_composition_event(
  self : JsValue,
) -> CompositionEvent? =
  #| (self) => (self instanceof CompositionEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CompositionEvent (unchecked)
pub extern "js" fn JsValue::to_composition_event(
  self : JsValue,
) -> CompositionEvent =
  #| (self) => self

///|
pub extern "js" fn CompositionEvent::to_ui_event(
  self : CompositionEvent,
) -> UIEvent =
  #| (self) => self

///|
pub extern "js" fn CompositionEvent::to_event(self : CompositionEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn CompositionEvent::new(type_ : String) -> CompositionEvent =
  #| (type_) => new CompositionEvent(type_)

///|
extern "js" fn CompositionEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> CompositionEvent =
  #| (type_, event_init_dict) => new CompositionEvent(type_, event_init_dict)

///|
pub fn CompositionEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : CompositionEventInit,
) -> CompositionEvent {
  CompositionEvent::new_with_event_init_dict_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn CompositionEvent::get_data(
  self : CompositionEvent,
) -> String =
  #| (self) => self.data

///|
/// @alert deprecated "initCompositionEvent is deprecated"
pub extern "js" fn CompositionEvent::init_composition_event(
  self : CompositionEvent,
  type_arg : String,
) -> Unit =
  #| (self, type_arg) => self.initCompositionEvent(type_arg)

///|
pub extern "js" fn CompositionEvent::init_composition_event_with_data_arg(
  self : CompositionEvent,
  type_arg : String,
  bubbles_arg : Bool,
  cancelable_arg : Bool,
  view_arg : Window?,
  data_arg : String,
) -> Unit =
  #| (self, type_arg, bubbles_arg, cancelable_arg, view_arg, data_arg) => self.initCompositionEvent(type_arg, bubbles_arg, cancelable_arg, (view_arg.$tag === 1 ? view_arg._0 : null), data_arg)

///|
/// TextEvent interface
pub type TextEvent

///|
pub extern "js" fn TextEvent::to_js_value(self : TextEvent) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to TextEvent (unchecked)
pub extern "js" fn TextEvent::from_js_value(v : JsValue) -> TextEvent =
  #| (v) => v

///|
/// Safely cast JsValue to TextEvent (checked with instanceof)
pub extern "js" fn TextEvent::from_js_value_opt(v : JsValue) -> TextEvent? =
  #| (v) => (v instanceof TextEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to TextEvent (checked with instanceof)
pub extern "js" fn JsValue::as_text_event(self : JsValue) -> TextEvent? =
  #| (self) => (self instanceof TextEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to TextEvent (unchecked)
pub extern "js" fn JsValue::to_text_event(self : JsValue) -> TextEvent =
  #| (self) => self

///|
pub extern "js" fn TextEvent::to_ui_event(self : TextEvent) -> UIEvent =
  #| (self) => self

///|
pub extern "js" fn TextEvent::to_event(self : TextEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn TextEvent::get_data(self : TextEvent) -> String =
  #| (self) => self.data

///|
/// @alert deprecated "initTextEvent is deprecated"
pub extern "js" fn TextEvent::init_text_event(
  self : TextEvent,
  type_ : String,
) -> Unit =
  #| (self, type_) => self.initTextEvent(type_)

///|
pub extern "js" fn TextEvent::init_text_event_with_data(
  self : TextEvent,
  type_ : String,
  bubbles : Bool,
  cancelable : Bool,
  view : Window?,
  data : String,
) -> Unit =
  #| (self, type_, bubbles, cancelable, view, data) => self.initTextEvent(type_, bubbles, cancelable, (view.$tag === 1 ? view._0 : null), data)
