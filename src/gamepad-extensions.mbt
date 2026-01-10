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
pub extern "js" fn GamepadPose::get_has_orientation(self : GamepadPose) -> Bool =
  #| (self) => self.hasOrientation

///|
pub extern "js" fn GamepadPose::get_has_position(self : GamepadPose) -> Bool =
  #| (self) => self.hasPosition

///|
pub extern "js" fn GamepadPose::get_position(
  self : GamepadPose,
) -> Float32Array? =
  #| (self) => self.position

///|
pub extern "js" fn GamepadPose::get_linear_velocity(
  self : GamepadPose,
) -> Float32Array? =
  #| (self) => self.linearVelocity

///|
pub extern "js" fn GamepadPose::get_linear_acceleration(
  self : GamepadPose,
) -> Float32Array? =
  #| (self) => self.linearAcceleration

///|
pub extern "js" fn GamepadPose::get_orientation(
  self : GamepadPose,
) -> Float32Array? =
  #| (self) => self.orientation

///|
pub extern "js" fn GamepadPose::get_angular_velocity(
  self : GamepadPose,
) -> Float32Array? =
  #| (self) => self.angularVelocity

///|
pub extern "js" fn GamepadPose::get_angular_acceleration(
  self : GamepadPose,
) -> Float32Array? =
  #| (self) => self.angularAcceleration
