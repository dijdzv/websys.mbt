// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/uievents

///|
/// FocusEventInit dictionary
pub struct FocusEventInit {
  relatedTarget : EventTarget??
}

/// Create a new FocusEventInit with default values
pub fn FocusEventInit::default() -> FocusEventInit {
  FocusEventInit::{
    relatedTarget: None,
  }
}

/// Convert to JsValue
pub extern "js" fn FocusEventInit::to_js(self : FocusEventInit) -> JsValue =
  #| (self) => ({
  #|   relatedTarget: self.relatedTarget
  #| })

///|
/// EventModifierInit dictionary
pub struct EventModifierInit {
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

/// Convert to JsValue
pub extern "js" fn EventModifierInit::to_js(self : EventModifierInit) -> JsValue =
  #| (self) => ({
  #|   ctrlKey: self.ctrlKey,
  #|   shiftKey: self.shiftKey,
  #|   altKey: self.altKey,
  #|   metaKey: self.metaKey,
  #|   modifierAltGraph: self.modifierAltGraph,
  #|   modifierCapsLock: self.modifierCapsLock,
  #|   modifierFn: self.modifierFn,
  #|   modifierFnLock: self.modifierFnLock,
  #|   modifierHyper: self.modifierHyper,
  #|   modifierNumLock: self.modifierNumLock,
  #|   modifierScrollLock: self.modifierScrollLock,
  #|   modifierSuper: self.modifierSuper,
  #|   modifierSymbol: self.modifierSymbol,
  #|   modifierSymbolLock: self.modifierSymbolLock
  #| })

///|
/// WheelEventInit dictionary
pub struct WheelEventInit {
  deltaX : Double?
  deltaY : Double?
  deltaZ : Double?
  deltaMode : Int?
}

/// Create a new WheelEventInit with default values
pub fn WheelEventInit::default() -> WheelEventInit {
  WheelEventInit::{
    deltaX: None,
    deltaY: None,
    deltaZ: None,
    deltaMode: None,
  }
}

/// Convert to JsValue
pub extern "js" fn WheelEventInit::to_js(self : WheelEventInit) -> JsValue =
  #| (self) => ({
  #|   deltaX: self.deltaX,
  #|   deltaY: self.deltaY,
  #|   deltaZ: self.deltaZ,
  #|   deltaMode: self.deltaMode
  #| })

///|
/// KeyboardEventInit dictionary
pub struct KeyboardEventInit {
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

/// Convert to JsValue
pub extern "js" fn KeyboardEventInit::to_js(self : KeyboardEventInit) -> JsValue =
  #| (self) => ({
  #|   ctrlKey: self.ctrlKey,
  #|   shiftKey: self.shiftKey,
  #|   altKey: self.altKey,
  #|   metaKey: self.metaKey,
  #|   modifierAltGraph: self.modifierAltGraph,
  #|   modifierCapsLock: self.modifierCapsLock,
  #|   modifierFn: self.modifierFn,
  #|   modifierFnLock: self.modifierFnLock,
  #|   modifierHyper: self.modifierHyper,
  #|   modifierNumLock: self.modifierNumLock,
  #|   modifierScrollLock: self.modifierScrollLock,
  #|   modifierSuper: self.modifierSuper,
  #|   modifierSymbol: self.modifierSymbol,
  #|   modifierSymbolLock: self.modifierSymbolLock,
  #|   key: self.key,
  #|   code: self.code,
  #|   location: self.location,
  #|   repeat: self.repeat,
  #|   isComposing: self.isComposing,
  #|   charCode: self.charCode,
  #|   keyCode: self.keyCode
  #| })

///|
/// CompositionEventInit dictionary
pub struct CompositionEventInit {
  data : String?
}

/// Create a new CompositionEventInit with default values
pub fn CompositionEventInit::default() -> CompositionEventInit {
  CompositionEventInit::{
    data: None,
  }
}

/// Convert to JsValue
pub extern "js" fn CompositionEventInit::to_js(self : CompositionEventInit) -> JsValue =
  #| (self) => ({
  #|   data: self.data
  #| })

///|
/// UIEvent interface
pub type UIEvent

pub extern "js" fn UIEvent::to_js_value(self : UIEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn UIEvent::new(type_ : String, event_init_dict : UIEventInit) -> UIEvent =
  #| (type_, event_init_dict) => new UIEvent(type_, event_init_dict)

pub extern "js" fn UIEvent::get_view(self : UIEvent) -> Window? =
  #| (self) => self.view

pub extern "js" fn UIEvent::get_detail(self : UIEvent) -> Int =
  #| (self) => self.detail

pub extern "js" fn UIEvent::get_source_capabilities(self : UIEvent) -> InputDeviceCapabilities? =
  #| (self) => self.sourceCapabilities

pub extern "js" fn UIEvent::init_u_i_event(self : UIEvent, type_arg : String, bubbles_arg : Bool, cancelable_arg : Bool, view_arg : Window?, detail_arg : Int) -> Unit =
  #| (self, type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg) => self.initUIEvent(type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg)

pub extern "js" fn UIEvent::get_which(self : UIEvent) -> Int =
  #| (self) => self.which

///|
/// FocusEvent interface
pub type FocusEvent

pub extern "js" fn FocusEvent::to_js_value(self : FocusEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn FocusEvent::new(type_ : String, event_init_dict : UIEventInit) -> FocusEvent =
  #| (type_, event_init_dict) => new FocusEvent(type_, event_init_dict)

pub extern "js" fn FocusEvent::get_view(self : FocusEvent) -> Window? =
  #| (self) => self.view

pub extern "js" fn FocusEvent::get_detail(self : FocusEvent) -> Int =
  #| (self) => self.detail

pub extern "js" fn FocusEvent::get_source_capabilities(self : FocusEvent) -> InputDeviceCapabilities? =
  #| (self) => self.sourceCapabilities

pub extern "js" fn FocusEvent::init_u_i_event(self : FocusEvent, type_arg : String, bubbles_arg : Bool, cancelable_arg : Bool, view_arg : Window?, detail_arg : Int) -> Unit =
  #| (self, type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg) => self.initUIEvent(type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg)

pub extern "js" fn FocusEvent::get_which(self : FocusEvent) -> Int =
  #| (self) => self.which

pub extern "js" fn FocusEvent::get_related_target(self : FocusEvent) -> EventTarget? =
  #| (self) => self.relatedTarget

///|
/// MouseEvent interface
pub type MouseEvent

pub extern "js" fn MouseEvent::to_js_value(self : MouseEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn MouseEvent::new(type_ : String, event_init_dict : UIEventInit) -> MouseEvent =
  #| (type_, event_init_dict) => new MouseEvent(type_, event_init_dict)

pub extern "js" fn MouseEvent::get_view(self : MouseEvent) -> Window? =
  #| (self) => self.view

pub extern "js" fn MouseEvent::get_detail(self : MouseEvent) -> Int =
  #| (self) => self.detail

pub extern "js" fn MouseEvent::get_source_capabilities(self : MouseEvent) -> InputDeviceCapabilities? =
  #| (self) => self.sourceCapabilities

pub extern "js" fn MouseEvent::init_u_i_event(self : MouseEvent, type_arg : String, bubbles_arg : Bool, cancelable_arg : Bool, view_arg : Window?, detail_arg : Int) -> Unit =
  #| (self, type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg) => self.initUIEvent(type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg)

pub extern "js" fn MouseEvent::get_which(self : MouseEvent) -> Int =
  #| (self) => self.which

pub extern "js" fn MouseEvent::get_screen_x(self : MouseEvent) -> Int =
  #| (self) => self.screenX

pub extern "js" fn MouseEvent::get_screen_y(self : MouseEvent) -> Int =
  #| (self) => self.screenY

pub extern "js" fn MouseEvent::get_client_x(self : MouseEvent) -> Int =
  #| (self) => self.clientX

pub extern "js" fn MouseEvent::get_client_y(self : MouseEvent) -> Int =
  #| (self) => self.clientY

pub extern "js" fn MouseEvent::get_layer_x(self : MouseEvent) -> Int =
  #| (self) => self.layerX

pub extern "js" fn MouseEvent::get_layer_y(self : MouseEvent) -> Int =
  #| (self) => self.layerY

pub extern "js" fn MouseEvent::get_ctrl_key(self : MouseEvent) -> Bool =
  #| (self) => self.ctrlKey

pub extern "js" fn MouseEvent::get_shift_key(self : MouseEvent) -> Bool =
  #| (self) => self.shiftKey

pub extern "js" fn MouseEvent::get_alt_key(self : MouseEvent) -> Bool =
  #| (self) => self.altKey

pub extern "js" fn MouseEvent::get_meta_key(self : MouseEvent) -> Bool =
  #| (self) => self.metaKey

pub extern "js" fn MouseEvent::get_button(self : MouseEvent) -> Int =
  #| (self) => self.button

pub extern "js" fn MouseEvent::get_buttons(self : MouseEvent) -> Int =
  #| (self) => self.buttons

pub extern "js" fn MouseEvent::get_related_target(self : MouseEvent) -> EventTarget? =
  #| (self) => self.relatedTarget

pub extern "js" fn MouseEvent::get_modifier_state(self : MouseEvent, key_arg : String) -> Bool =
  #| (self, key_arg) => self.getModifierState(key_arg)

pub extern "js" fn MouseEvent::get_page_x(self : MouseEvent) -> Double =
  #| (self) => self.pageX

pub extern "js" fn MouseEvent::get_page_y(self : MouseEvent) -> Double =
  #| (self) => self.pageY

pub extern "js" fn MouseEvent::get_x(self : MouseEvent) -> Double =
  #| (self) => self.x

pub extern "js" fn MouseEvent::get_y(self : MouseEvent) -> Double =
  #| (self) => self.y

pub extern "js" fn MouseEvent::get_offset_x(self : MouseEvent) -> Double =
  #| (self) => self.offsetX

pub extern "js" fn MouseEvent::get_offset_y(self : MouseEvent) -> Double =
  #| (self) => self.offsetY

pub extern "js" fn MouseEvent::get_movement_x(self : MouseEvent) -> Double =
  #| (self) => self.movementX

pub extern "js" fn MouseEvent::get_movement_y(self : MouseEvent) -> Double =
  #| (self) => self.movementY

pub extern "js" fn MouseEvent::init_mouse_event(self : MouseEvent, type_arg : String, bubbles_arg : Bool, cancelable_arg : Bool, view_arg : Window?, detail_arg : Int, screen_x_arg : Int, screen_y_arg : Int, client_x_arg : Int, client_y_arg : Int, ctrl_key_arg : Bool, alt_key_arg : Bool, shift_key_arg : Bool, meta_key_arg : Bool, button_arg : Int, related_target_arg : EventTarget?) -> Unit =
  #| (self, type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg, screen_x_arg, screen_y_arg, client_x_arg, client_y_arg, ctrl_key_arg, alt_key_arg, shift_key_arg, meta_key_arg, button_arg, related_target_arg) => self.initMouseEvent(type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg, screen_x_arg, screen_y_arg, client_x_arg, client_y_arg, ctrl_key_arg, alt_key_arg, shift_key_arg, meta_key_arg, button_arg, related_target_arg)

///|
/// WheelEvent interface
pub type WheelEvent

pub extern "js" fn WheelEvent::to_js_value(self : WheelEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn WheelEvent::new(type_ : String, event_init_dict : UIEventInit) -> WheelEvent =
  #| (type_, event_init_dict) => new WheelEvent(type_, event_init_dict)

pub extern "js" fn WheelEvent::get_view(self : WheelEvent) -> Window? =
  #| (self) => self.view

pub extern "js" fn WheelEvent::get_detail(self : WheelEvent) -> Int =
  #| (self) => self.detail

pub extern "js" fn WheelEvent::get_source_capabilities(self : WheelEvent) -> InputDeviceCapabilities? =
  #| (self) => self.sourceCapabilities

pub extern "js" fn WheelEvent::init_u_i_event(self : WheelEvent, type_arg : String, bubbles_arg : Bool, cancelable_arg : Bool, view_arg : Window?, detail_arg : Int) -> Unit =
  #| (self, type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg) => self.initUIEvent(type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg)

pub extern "js" fn WheelEvent::get_which(self : WheelEvent) -> Int =
  #| (self) => self.which

pub extern "js" fn WheelEvent::get_screen_x(self : WheelEvent) -> Int =
  #| (self) => self.screenX

pub extern "js" fn WheelEvent::get_screen_y(self : WheelEvent) -> Int =
  #| (self) => self.screenY

pub extern "js" fn WheelEvent::get_client_x(self : WheelEvent) -> Int =
  #| (self) => self.clientX

pub extern "js" fn WheelEvent::get_client_y(self : WheelEvent) -> Int =
  #| (self) => self.clientY

pub extern "js" fn WheelEvent::get_layer_x(self : WheelEvent) -> Int =
  #| (self) => self.layerX

pub extern "js" fn WheelEvent::get_layer_y(self : WheelEvent) -> Int =
  #| (self) => self.layerY

pub extern "js" fn WheelEvent::get_ctrl_key(self : WheelEvent) -> Bool =
  #| (self) => self.ctrlKey

pub extern "js" fn WheelEvent::get_shift_key(self : WheelEvent) -> Bool =
  #| (self) => self.shiftKey

pub extern "js" fn WheelEvent::get_alt_key(self : WheelEvent) -> Bool =
  #| (self) => self.altKey

pub extern "js" fn WheelEvent::get_meta_key(self : WheelEvent) -> Bool =
  #| (self) => self.metaKey

pub extern "js" fn WheelEvent::get_button(self : WheelEvent) -> Int =
  #| (self) => self.button

pub extern "js" fn WheelEvent::get_buttons(self : WheelEvent) -> Int =
  #| (self) => self.buttons

pub extern "js" fn WheelEvent::get_related_target(self : WheelEvent) -> EventTarget? =
  #| (self) => self.relatedTarget

pub extern "js" fn WheelEvent::get_modifier_state(self : WheelEvent, key_arg : String) -> Bool =
  #| (self, key_arg) => self.getModifierState(key_arg)

pub extern "js" fn WheelEvent::get_page_x(self : WheelEvent) -> Double =
  #| (self) => self.pageX

pub extern "js" fn WheelEvent::get_page_y(self : WheelEvent) -> Double =
  #| (self) => self.pageY

pub extern "js" fn WheelEvent::get_x(self : WheelEvent) -> Double =
  #| (self) => self.x

pub extern "js" fn WheelEvent::get_y(self : WheelEvent) -> Double =
  #| (self) => self.y

pub extern "js" fn WheelEvent::get_offset_x(self : WheelEvent) -> Double =
  #| (self) => self.offsetX

pub extern "js" fn WheelEvent::get_offset_y(self : WheelEvent) -> Double =
  #| (self) => self.offsetY

pub extern "js" fn WheelEvent::get_movement_x(self : WheelEvent) -> Double =
  #| (self) => self.movementX

pub extern "js" fn WheelEvent::get_movement_y(self : WheelEvent) -> Double =
  #| (self) => self.movementY

pub extern "js" fn WheelEvent::init_mouse_event(self : WheelEvent, type_arg : String, bubbles_arg : Bool, cancelable_arg : Bool, view_arg : Window?, detail_arg : Int, screen_x_arg : Int, screen_y_arg : Int, client_x_arg : Int, client_y_arg : Int, ctrl_key_arg : Bool, alt_key_arg : Bool, shift_key_arg : Bool, meta_key_arg : Bool, button_arg : Int, related_target_arg : EventTarget?) -> Unit =
  #| (self, type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg, screen_x_arg, screen_y_arg, client_x_arg, client_y_arg, ctrl_key_arg, alt_key_arg, shift_key_arg, meta_key_arg, button_arg, related_target_arg) => self.initMouseEvent(type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg, screen_x_arg, screen_y_arg, client_x_arg, client_y_arg, ctrl_key_arg, alt_key_arg, shift_key_arg, meta_key_arg, button_arg, related_target_arg)

pub extern "js" fn WheelEvent::get_delta_x(self : WheelEvent) -> Double =
  #| (self) => self.deltaX

pub extern "js" fn WheelEvent::get_delta_y(self : WheelEvent) -> Double =
  #| (self) => self.deltaY

pub extern "js" fn WheelEvent::get_delta_z(self : WheelEvent) -> Double =
  #| (self) => self.deltaZ

pub extern "js" fn WheelEvent::get_delta_mode(self : WheelEvent) -> Int =
  #| (self) => self.deltaMode

///|
/// InputEvent interface
pub type InputEvent

pub extern "js" fn InputEvent::to_js_value(self : InputEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn InputEvent::new(type_ : String, event_init_dict : UIEventInit) -> InputEvent =
  #| (type_, event_init_dict) => new InputEvent(type_, event_init_dict)

pub extern "js" fn InputEvent::get_view(self : InputEvent) -> Window? =
  #| (self) => self.view

pub extern "js" fn InputEvent::get_detail(self : InputEvent) -> Int =
  #| (self) => self.detail

pub extern "js" fn InputEvent::get_source_capabilities(self : InputEvent) -> InputDeviceCapabilities? =
  #| (self) => self.sourceCapabilities

pub extern "js" fn InputEvent::init_u_i_event(self : InputEvent, type_arg : String, bubbles_arg : Bool, cancelable_arg : Bool, view_arg : Window?, detail_arg : Int) -> Unit =
  #| (self, type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg) => self.initUIEvent(type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg)

pub extern "js" fn InputEvent::get_which(self : InputEvent) -> Int =
  #| (self) => self.which

pub extern "js" fn InputEvent::get_data(self : InputEvent) -> String? =
  #| (self) => self.data

pub extern "js" fn InputEvent::get_is_composing(self : InputEvent) -> Bool =
  #| (self) => self.isComposing

pub extern "js" fn InputEvent::get_input_type(self : InputEvent) -> String =
  #| (self) => self.inputType

pub extern "js" fn InputEvent::get_data_transfer(self : InputEvent) -> DataTransfer? =
  #| (self) => self.dataTransfer

pub extern "js" fn InputEvent::get_target_ranges(self : InputEvent) -> JsValue =
  #| (self) => self.getTargetRanges()

///|
/// KeyboardEvent interface
pub type KeyboardEvent

pub extern "js" fn KeyboardEvent::to_js_value(self : KeyboardEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn KeyboardEvent::new(type_ : String, event_init_dict : UIEventInit) -> KeyboardEvent =
  #| (type_, event_init_dict) => new KeyboardEvent(type_, event_init_dict)

pub extern "js" fn KeyboardEvent::get_view(self : KeyboardEvent) -> Window? =
  #| (self) => self.view

pub extern "js" fn KeyboardEvent::get_detail(self : KeyboardEvent) -> Int =
  #| (self) => self.detail

pub extern "js" fn KeyboardEvent::get_source_capabilities(self : KeyboardEvent) -> InputDeviceCapabilities? =
  #| (self) => self.sourceCapabilities

pub extern "js" fn KeyboardEvent::init_u_i_event(self : KeyboardEvent, type_arg : String, bubbles_arg : Bool, cancelable_arg : Bool, view_arg : Window?, detail_arg : Int) -> Unit =
  #| (self, type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg) => self.initUIEvent(type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg)

pub extern "js" fn KeyboardEvent::get_which(self : KeyboardEvent) -> Int =
  #| (self) => self.which

pub extern "js" fn KeyboardEvent::get_key(self : KeyboardEvent) -> String =
  #| (self) => self.key

pub extern "js" fn KeyboardEvent::get_code(self : KeyboardEvent) -> String =
  #| (self) => self.code

pub extern "js" fn KeyboardEvent::get_location(self : KeyboardEvent) -> Int =
  #| (self) => self.location

pub extern "js" fn KeyboardEvent::get_ctrl_key(self : KeyboardEvent) -> Bool =
  #| (self) => self.ctrlKey

pub extern "js" fn KeyboardEvent::get_shift_key(self : KeyboardEvent) -> Bool =
  #| (self) => self.shiftKey

pub extern "js" fn KeyboardEvent::get_alt_key(self : KeyboardEvent) -> Bool =
  #| (self) => self.altKey

pub extern "js" fn KeyboardEvent::get_meta_key(self : KeyboardEvent) -> Bool =
  #| (self) => self.metaKey

pub extern "js" fn KeyboardEvent::get_repeat(self : KeyboardEvent) -> Bool =
  #| (self) => self.repeat

pub extern "js" fn KeyboardEvent::get_is_composing(self : KeyboardEvent) -> Bool =
  #| (self) => self.isComposing

pub extern "js" fn KeyboardEvent::get_modifier_state(self : KeyboardEvent, key_arg : String) -> Bool =
  #| (self, key_arg) => self.getModifierState(key_arg)

pub extern "js" fn KeyboardEvent::init_keyboard_event(self : KeyboardEvent, type_arg : String, bubbles_arg : Bool, cancelable_arg : Bool, view_arg : Window?, key_arg : String, location_arg : Int, ctrl_key : Bool, alt_key : Bool, shift_key : Bool, meta_key : Bool) -> Unit =
  #| (self, type_arg, bubbles_arg, cancelable_arg, view_arg, key_arg, location_arg, ctrl_key, alt_key, shift_key, meta_key) => self.initKeyboardEvent(type_arg, bubbles_arg, cancelable_arg, view_arg, key_arg, location_arg, ctrl_key, alt_key, shift_key, meta_key)

pub extern "js" fn KeyboardEvent::get_char_code(self : KeyboardEvent) -> Int =
  #| (self) => self.charCode

pub extern "js" fn KeyboardEvent::get_key_code(self : KeyboardEvent) -> Int =
  #| (self) => self.keyCode

///|
/// CompositionEvent interface
pub type CompositionEvent

pub extern "js" fn CompositionEvent::to_js_value(self : CompositionEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn CompositionEvent::new(type_ : String, event_init_dict : UIEventInit) -> CompositionEvent =
  #| (type_, event_init_dict) => new CompositionEvent(type_, event_init_dict)

pub extern "js" fn CompositionEvent::get_view(self : CompositionEvent) -> Window? =
  #| (self) => self.view

pub extern "js" fn CompositionEvent::get_detail(self : CompositionEvent) -> Int =
  #| (self) => self.detail

pub extern "js" fn CompositionEvent::get_source_capabilities(self : CompositionEvent) -> InputDeviceCapabilities? =
  #| (self) => self.sourceCapabilities

pub extern "js" fn CompositionEvent::init_u_i_event(self : CompositionEvent, type_arg : String, bubbles_arg : Bool, cancelable_arg : Bool, view_arg : Window?, detail_arg : Int) -> Unit =
  #| (self, type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg) => self.initUIEvent(type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg)

pub extern "js" fn CompositionEvent::get_which(self : CompositionEvent) -> Int =
  #| (self) => self.which

pub extern "js" fn CompositionEvent::get_data(self : CompositionEvent) -> String =
  #| (self) => self.data

pub extern "js" fn CompositionEvent::init_composition_event(self : CompositionEvent, type_arg : String, bubbles_arg : Bool, cancelable_arg : Bool, view_arg : WindowProxy?, data_arg : String) -> Unit =
  #| (self, type_arg, bubbles_arg, cancelable_arg, view_arg, data_arg) => self.initCompositionEvent(type_arg, bubbles_arg, cancelable_arg, view_arg, data_arg)

///|
/// TextEvent interface
pub type TextEvent

pub extern "js" fn TextEvent::to_js_value(self : TextEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn TextEvent::new(type_ : String, event_init_dict : UIEventInit) -> TextEvent =
  #| (type_, event_init_dict) => new TextEvent(type_, event_init_dict)

pub extern "js" fn TextEvent::get_view(self : TextEvent) -> Window? =
  #| (self) => self.view

pub extern "js" fn TextEvent::get_detail(self : TextEvent) -> Int =
  #| (self) => self.detail

pub extern "js" fn TextEvent::get_source_capabilities(self : TextEvent) -> InputDeviceCapabilities? =
  #| (self) => self.sourceCapabilities

pub extern "js" fn TextEvent::init_u_i_event(self : TextEvent, type_arg : String, bubbles_arg : Bool, cancelable_arg : Bool, view_arg : Window?, detail_arg : Int) -> Unit =
  #| (self, type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg) => self.initUIEvent(type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg)

pub extern "js" fn TextEvent::get_which(self : TextEvent) -> Int =
  #| (self) => self.which

pub extern "js" fn TextEvent::get_data(self : TextEvent) -> String =
  #| (self) => self.data

pub extern "js" fn TextEvent::init_text_event(self : TextEvent, type_ : String, bubbles : Bool, cancelable : Bool, view : Window?, data : String) -> Unit =
  #| (self, type_, bubbles, cancelable, view, data) => self.initTextEvent(type_, bubbles, cancelable, view, data)

