// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/gamepad

///|
/// GamepadMappingType enum
pub(all) enum GamepadMappingType {
  Empty
  Standard
  XrStandard
} derive(Eq, Show)

///|
/// Convert to string value
pub fn GamepadMappingType::to_string(self : GamepadMappingType) -> String {
  match self {
    GamepadMappingType::Empty => ""
    GamepadMappingType::Standard => "standard"
    GamepadMappingType::XrStandard => "xr-standard"
  }
}

///|
/// Parse from string value
pub fn GamepadMappingType::from_string(s : String) -> GamepadMappingType? {
  match s {
    "" => Some(GamepadMappingType::Empty)
    "standard" => Some(GamepadMappingType::Standard)
    "xr-standard" => Some(GamepadMappingType::XrStandard)
    _ => None
  }
}

///|
/// GamepadHapticsResult enum
pub(all) enum GamepadHapticsResult {
  Complete
  Preempted
} derive(Eq, Show)

///|
/// Convert to string value
pub fn GamepadHapticsResult::to_string(self : GamepadHapticsResult) -> String {
  match self {
    GamepadHapticsResult::Complete => "complete"
    GamepadHapticsResult::Preempted => "preempted"
  }
}

///|
/// Parse from string value
pub fn GamepadHapticsResult::from_string(s : String) -> GamepadHapticsResult? {
  match s {
    "complete" => Some(GamepadHapticsResult::Complete)
    "preempted" => Some(GamepadHapticsResult::Preempted)
    _ => None
  }
}

///|
/// GamepadHapticEffectType enum
pub(all) enum GamepadHapticEffectType {
  DualRumble
  TriggerRumble
} derive(Eq, Show)

///|
/// Convert to string value
pub fn GamepadHapticEffectType::to_string(
  self : GamepadHapticEffectType,
) -> String {
  match self {
    GamepadHapticEffectType::DualRumble => "dual-rumble"
    GamepadHapticEffectType::TriggerRumble => "trigger-rumble"
  }
}

///|
/// Parse from string value
pub fn GamepadHapticEffectType::from_string(
  s : String,
) -> GamepadHapticEffectType? {
  match s {
    "dual-rumble" => Some(GamepadHapticEffectType::DualRumble)
    "trigger-rumble" => Some(GamepadHapticEffectType::TriggerRumble)
    _ => None
  }
}

///|
/// GamepadTouch dictionary
pub(all) struct GamepadTouch {
  touchId : Int?
  surfaceId : Int?
  position : DOMPointReadOnly?
  surfaceDimensions : Nullable[DOMRectReadOnly]
}

///|
/// Create a new GamepadTouch with default values
pub fn GamepadTouch::default() -> GamepadTouch {
  GamepadTouch::{
    touchId: None,
    surfaceId: None,
    position: None,
    surfaceDimensions: Nullable::Undefined,
  }
}

///|
extern "js" fn GamepadTouch::to_js_ffi(self : GamepadTouch) -> JsValue =
  #| (self) => ({
  #|   touchId: self.touchId,
  #|   surfaceId: self.surfaceId,
  #|   position: ((() => { const v = self.position; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   surfaceDimensions: ((() => { const v = self.surfaceDimensions; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn GamepadTouch::to_js(self : GamepadTouch) -> JsValue {
  GamepadTouch::to_js_ffi(self)
}

///|
extern "js" fn GamepadTouch::from_js_ffi(value : JsValue) -> GamepadTouch =
  #| (v) => ({
  #|   touchId: v.touchId,
  #|   surfaceId: v.surfaceId,
  #|   position: (v.position === undefined ? { $tag: 0 } : { $tag: 1, _0: v.position }),
  #|   surfaceDimensions: (v.surfaceDimensions === undefined ? { $tag: 0 } : v.surfaceDimensions === null ? { $tag: 1 } : { $tag: 2, _0: v.surfaceDimensions })
  #| })

///|
/// Convert from JsValue
pub fn GamepadTouch::from_js(value : JsValue) -> GamepadTouch {
  GamepadTouch::from_js_ffi(value)
}

///|
/// GamepadEffectParameters dictionary
pub(all) struct GamepadEffectParameters {
  duration : Int64?
  startDelay : Int64?
  strongMagnitude : Double?
  weakMagnitude : Double?
  leftTrigger : Double?
  rightTrigger : Double?
}

///|
/// Create a new GamepadEffectParameters with default values
pub fn GamepadEffectParameters::default() -> GamepadEffectParameters {
  GamepadEffectParameters::{
    duration: None,
    startDelay: None,
    strongMagnitude: None,
    weakMagnitude: None,
    leftTrigger: None,
    rightTrigger: None,
  }
}

///|
extern "js" fn GamepadEffectParameters::to_js_ffi(
  self : GamepadEffectParameters,
) -> JsValue =
  #| (self) => ({
  #|   duration: self.duration,
  #|   startDelay: self.startDelay,
  #|   strongMagnitude: self.strongMagnitude,
  #|   weakMagnitude: self.weakMagnitude,
  #|   leftTrigger: self.leftTrigger,
  #|   rightTrigger: self.rightTrigger
  #| })

///|
/// Convert to JsValue
pub fn GamepadEffectParameters::to_js(
  self : GamepadEffectParameters,
) -> JsValue {
  GamepadEffectParameters::to_js_ffi(self)
}

///|
extern "js" fn GamepadEffectParameters::from_js_ffi(
  value : JsValue,
) -> GamepadEffectParameters =
  #| (v) => ({
  #|   duration: v.duration,
  #|   startDelay: v.startDelay,
  #|   strongMagnitude: v.strongMagnitude,
  #|   weakMagnitude: v.weakMagnitude,
  #|   leftTrigger: v.leftTrigger,
  #|   rightTrigger: v.rightTrigger
  #| })

///|
/// Convert from JsValue
pub fn GamepadEffectParameters::from_js(
  value : JsValue,
) -> GamepadEffectParameters {
  GamepadEffectParameters::from_js_ffi(value)
}

///|
/// GamepadEventInit dictionary
pub(all) struct GamepadEventInit {
  gamepad : Gamepad
}

///|
/// Create a new GamepadEventInit
pub fn GamepadEventInit::new(gamepad~ : Gamepad) -> GamepadEventInit {
  GamepadEventInit::{ gamepad, }
}

///|
extern "js" fn GamepadEventInit::to_js_ffi(self : GamepadEventInit) -> JsValue =
  #| (self) => ({
  #|   gamepad: self.gamepad
  #| })

///|
/// Convert to JsValue
pub fn GamepadEventInit::to_js(self : GamepadEventInit) -> JsValue {
  GamepadEventInit::to_js_ffi(self)
}

///|
extern "js" fn GamepadEventInit::from_js_ffi(
  value : JsValue,
) -> GamepadEventInit =
  #| (v) => ({
  #|   gamepad: v.gamepad
  #| })

///|
/// Convert from JsValue
pub fn GamepadEventInit::from_js(value : JsValue) -> GamepadEventInit {
  GamepadEventInit::from_js_ffi(value)
}

///|
/// Gamepad interface
pub type Gamepad

///|
pub extern "js" fn Gamepad::to_js_value(self : Gamepad) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Gamepad (unchecked)
pub extern "js" fn Gamepad::from_js_value(v : JsValue) -> Gamepad =
  #| (v) => v

///|
/// Safely cast JsValue to Gamepad (checked with instanceof)
pub extern "js" fn Gamepad::from_js_value_opt(v : JsValue) -> Gamepad? =
  #| (v) => (v instanceof Gamepad) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Gamepad (checked with instanceof)
pub extern "js" fn JsValue::as_gamepad(self : JsValue) -> Gamepad? =
  #| (self) => (self instanceof Gamepad) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Gamepad (unchecked)
pub extern "js" fn JsValue::to_gamepad(self : JsValue) -> Gamepad =
  #| (self) => self

///|
pub extern "js" fn Gamepad::get_id(self : Gamepad) -> String =
  #| (self) => self.id

///|
pub extern "js" fn Gamepad::get_index(self : Gamepad) -> Int =
  #| (self) => self.index

///|
pub extern "js" fn Gamepad::get_connected(self : Gamepad) -> Bool =
  #| (self) => self.connected

///|
pub extern "js" fn Gamepad::get_timestamp(
  self : Gamepad,
) -> DOMHighResTimeStamp =
  #| (self) => self.timestamp

///|
pub extern "js" fn Gamepad::get_mapping(self : Gamepad) -> GamepadMappingType =
  #| (self) => ['', 'standard', 'xr-standard'].indexOf(self.mapping)

///|
pub extern "js" fn Gamepad::get_axes(self : Gamepad) -> JsValue =
  #| (self) => self.axes

///|
pub extern "js" fn Gamepad::get_buttons(self : Gamepad) -> JsValue =
  #| (self) => self.buttons

///|
pub extern "js" fn Gamepad::get_touches(self : Gamepad) -> JsValue =
  #| (self) => self.touches

///|
pub extern "js" fn Gamepad::get_vibration_actuator(
  self : Gamepad,
) -> GamepadHapticActuator =
  #| (self) => self.vibrationActuator

///|
pub extern "js" fn Gamepad::get_hand(self : Gamepad) -> GamepadHand =
  #| (self) => ['', 'left', 'right'].indexOf(self.hand)

///|
pub extern "js" fn Gamepad::get_haptic_actuators(self : Gamepad) -> JsValue =
  #| (self) => self.hapticActuators

///|
pub extern "js" fn Gamepad::get_pose(self : Gamepad) -> GamepadPose? =
  #| (self) => (() => { const v = self.pose; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// GamepadButton interface
pub type GamepadButton

///|
pub extern "js" fn GamepadButton::to_js_value(self : GamepadButton) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to GamepadButton (unchecked)
pub extern "js" fn GamepadButton::from_js_value(v : JsValue) -> GamepadButton =
  #| (v) => v

///|
/// Safely cast JsValue to GamepadButton (checked with instanceof)
pub extern "js" fn GamepadButton::from_js_value_opt(
  v : JsValue,
) -> GamepadButton? =
  #| (v) => (v instanceof GamepadButton) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GamepadButton (checked with instanceof)
pub extern "js" fn JsValue::as_gamepad_button(self : JsValue) -> GamepadButton? =
  #| (self) => (self instanceof GamepadButton) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GamepadButton (unchecked)
pub extern "js" fn JsValue::to_gamepad_button(self : JsValue) -> GamepadButton =
  #| (self) => self

///|
pub extern "js" fn GamepadButton::get_pressed(self : GamepadButton) -> Bool =
  #| (self) => self.pressed

///|
pub extern "js" fn GamepadButton::get_touched(self : GamepadButton) -> Bool =
  #| (self) => self.touched

///|
pub extern "js" fn GamepadButton::get_value(self : GamepadButton) -> Double =
  #| (self) => self.value

///|
/// GamepadHapticActuator interface
pub type GamepadHapticActuator

///|
pub extern "js" fn GamepadHapticActuator::to_js_value(
  self : GamepadHapticActuator,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to GamepadHapticActuator (unchecked)
pub extern "js" fn GamepadHapticActuator::from_js_value(
  v : JsValue,
) -> GamepadHapticActuator =
  #| (v) => v

///|
/// Safely cast JsValue to GamepadHapticActuator (checked with instanceof)
pub extern "js" fn GamepadHapticActuator::from_js_value_opt(
  v : JsValue,
) -> GamepadHapticActuator? =
  #| (v) => (v instanceof GamepadHapticActuator) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GamepadHapticActuator (checked with instanceof)
pub extern "js" fn JsValue::as_gamepad_haptic_actuator(
  self : JsValue,
) -> GamepadHapticActuator? =
  #| (self) => (self instanceof GamepadHapticActuator) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GamepadHapticActuator (unchecked)
pub extern "js" fn JsValue::to_gamepad_haptic_actuator(
  self : JsValue,
) -> GamepadHapticActuator =
  #| (self) => self

///|
pub extern "js" fn GamepadHapticActuator::get_effects(
  self : GamepadHapticActuator,
) -> JsValue =
  #| (self) => self.effects

///|
pub extern "js" fn GamepadHapticActuator::play_effect(
  self : GamepadHapticActuator,
  type_ : GamepadHapticEffectType,
) -> Promise[GamepadHapticsResult] =
  #| (self, type_) => self.playEffect(['dual-rumble', 'trigger-rumble'][type_])

///|
extern "js" fn GamepadHapticActuator::play_effect_with_params_ffi(
  self : GamepadHapticActuator,
  type_ : GamepadHapticEffectType,
  params : JsValue,
) -> Promise[GamepadHapticsResult] =
  #| (self, type_, params) => self.playEffect(['dual-rumble', 'trigger-rumble'][type_], params)

///|
pub fn GamepadHapticActuator::play_effect_with_params(
  self : GamepadHapticActuator,
  type_ : GamepadHapticEffectType,
  params : GamepadEffectParameters,
) -> Promise[GamepadHapticsResult] {
  GamepadHapticActuator::play_effect_with_params_ffi(
    self,
    type_,
    params.to_js(),
  )
}

///|
pub extern "js" fn GamepadHapticActuator::reset(
  self : GamepadHapticActuator,
) -> Promise[GamepadHapticsResult] =
  #| (self) => self.reset()

///|
pub extern "js" fn GamepadHapticActuator::pulse(
  self : GamepadHapticActuator,
  value : Double,
  duration : Double,
) -> Promise[Bool] =
  #| (self, value, duration) => self.pulse(value, duration)

///|
/// GamepadEvent interface
pub type GamepadEvent

///|
pub extern "js" fn GamepadEvent::to_js_value(self : GamepadEvent) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to GamepadEvent (unchecked)
pub extern "js" fn GamepadEvent::from_js_value(v : JsValue) -> GamepadEvent =
  #| (v) => v

///|
/// Safely cast JsValue to GamepadEvent (checked with instanceof)
pub extern "js" fn GamepadEvent::from_js_value_opt(
  v : JsValue,
) -> GamepadEvent? =
  #| (v) => (v instanceof GamepadEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GamepadEvent (checked with instanceof)
pub extern "js" fn JsValue::as_gamepad_event(self : JsValue) -> GamepadEvent? =
  #| (self) => (self instanceof GamepadEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GamepadEvent (unchecked)
pub extern "js" fn JsValue::to_gamepad_event(self : JsValue) -> GamepadEvent =
  #| (self) => self

///|
pub extern "js" fn GamepadEvent::to_event(self : GamepadEvent) -> Event =
  #| (self) => self

///|
extern "js" fn GamepadEvent::new_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> GamepadEvent =
  #| (type_, event_init_dict) => new GamepadEvent(type_, event_init_dict)

///|
pub fn GamepadEvent::new(
  type_ : String,
  event_init_dict : GamepadEventInit,
) -> GamepadEvent {
  GamepadEvent::new_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn GamepadEvent::get_gamepad(self : GamepadEvent) -> Gamepad =
  #| (self) => self.gamepad
