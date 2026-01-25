// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/gamepad-extensions

///|
/// GamepadHand enum
pub(all) enum GamepadHand {
  Empty
  Left
  Right
}

///|
/// Convert to string value
pub fn GamepadHand::to_string(self : GamepadHand) -> String {
  match self {
    GamepadHand::Empty => ""
    GamepadHand::Left => "left"
    GamepadHand::Right => "right"
  }
}

///|
/// Parse from string value
pub fn GamepadHand::from_string(s : String) -> GamepadHand? {
  match s {
    "" => Some(GamepadHand::Empty)
    "left" => Some(GamepadHand::Left)
    "right" => Some(GamepadHand::Right)
    _ => None
  }
}

///|
/// GamepadPose interface
pub type GamepadPose

///|
pub extern "js" fn GamepadPose::to_js_value(self : GamepadPose) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to GamepadPose (unchecked)
pub extern "js" fn GamepadPose::from_js_value(v : JsValue) -> GamepadPose =
  #| (v) => v

///|
/// Safely cast JsValue to GamepadPose (checked with instanceof)
pub extern "js" fn GamepadPose::from_js_value_opt(v : JsValue) -> GamepadPose? =
  #| (v) => (v instanceof GamepadPose) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GamepadPose (checked with instanceof)
pub extern "js" fn JsValue::as_gamepad_pose(self : JsValue) -> GamepadPose? =
  #| (self) => (self instanceof GamepadPose) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GamepadPose (unchecked)
pub extern "js" fn JsValue::to_gamepad_pose(self : JsValue) -> GamepadPose =
  #| (self) => self

///|
pub extern "js" fn GamepadPose::get_has_orientation(self : GamepadPose) -> Bool =
  #| (self) => self.hasOrientation

///|
pub extern "js" fn GamepadPose::get_has_position(self : GamepadPose) -> Bool =
  #| (self) => self.hasPosition

///|
pub extern "js" fn GamepadPose::get_position(
  self : GamepadPose,
) -> Float32Array? =
  #| (self) => { const v = self.position; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn GamepadPose::get_linear_velocity(
  self : GamepadPose,
) -> Float32Array? =
  #| (self) => { const v = self.linearVelocity; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn GamepadPose::get_linear_acceleration(
  self : GamepadPose,
) -> Float32Array? =
  #| (self) => { const v = self.linearAcceleration; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn GamepadPose::get_orientation(
  self : GamepadPose,
) -> Float32Array? =
  #| (self) => { const v = self.orientation; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn GamepadPose::get_angular_velocity(
  self : GamepadPose,
) -> Float32Array? =
  #| (self) => { const v = self.angularVelocity; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn GamepadPose::get_angular_acceleration(
  self : GamepadPose,
) -> Float32Array? =
  #| (self) => { const v = self.angularAcceleration; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }
