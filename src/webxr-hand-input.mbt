// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webxr-hand-input

///|
/// XRHandJoint enum
pub(all) enum XRHandJoint {
  Wrist
  ThumbMetacarpal
  ThumbPhalanxProximal
  ThumbPhalanxDistal
  ThumbTip
  IndexFingerMetacarpal
  IndexFingerPhalanxProximal
  IndexFingerPhalanxIntermediate
  IndexFingerPhalanxDistal
  IndexFingerTip
  MiddleFingerMetacarpal
  MiddleFingerPhalanxProximal
  MiddleFingerPhalanxIntermediate
  MiddleFingerPhalanxDistal
  MiddleFingerTip
  RingFingerMetacarpal
  RingFingerPhalanxProximal
  RingFingerPhalanxIntermediate
  RingFingerPhalanxDistal
  RingFingerTip
  PinkyFingerMetacarpal
  PinkyFingerPhalanxProximal
  PinkyFingerPhalanxIntermediate
  PinkyFingerPhalanxDistal
  PinkyFingerTip
}

///|
/// Convert to string value
pub fn XRHandJoint::to_string(self : XRHandJoint) -> String {
  match self {
    XRHandJoint::Wrist => "wrist"
    XRHandJoint::ThumbMetacarpal => "thumb-metacarpal"
    XRHandJoint::ThumbPhalanxProximal => "thumb-phalanx-proximal"
    XRHandJoint::ThumbPhalanxDistal => "thumb-phalanx-distal"
    XRHandJoint::ThumbTip => "thumb-tip"
    XRHandJoint::IndexFingerMetacarpal => "index-finger-metacarpal"
    XRHandJoint::IndexFingerPhalanxProximal => "index-finger-phalanx-proximal"
    XRHandJoint::IndexFingerPhalanxIntermediate =>
      "index-finger-phalanx-intermediate"
    XRHandJoint::IndexFingerPhalanxDistal => "index-finger-phalanx-distal"
    XRHandJoint::IndexFingerTip => "index-finger-tip"
    XRHandJoint::MiddleFingerMetacarpal => "middle-finger-metacarpal"
    XRHandJoint::MiddleFingerPhalanxProximal => "middle-finger-phalanx-proximal"
    XRHandJoint::MiddleFingerPhalanxIntermediate =>
      "middle-finger-phalanx-intermediate"
    XRHandJoint::MiddleFingerPhalanxDistal => "middle-finger-phalanx-distal"
    XRHandJoint::MiddleFingerTip => "middle-finger-tip"
    XRHandJoint::RingFingerMetacarpal => "ring-finger-metacarpal"
    XRHandJoint::RingFingerPhalanxProximal => "ring-finger-phalanx-proximal"
    XRHandJoint::RingFingerPhalanxIntermediate =>
      "ring-finger-phalanx-intermediate"
    XRHandJoint::RingFingerPhalanxDistal => "ring-finger-phalanx-distal"
    XRHandJoint::RingFingerTip => "ring-finger-tip"
    XRHandJoint::PinkyFingerMetacarpal => "pinky-finger-metacarpal"
    XRHandJoint::PinkyFingerPhalanxProximal => "pinky-finger-phalanx-proximal"
    XRHandJoint::PinkyFingerPhalanxIntermediate =>
      "pinky-finger-phalanx-intermediate"
    XRHandJoint::PinkyFingerPhalanxDistal => "pinky-finger-phalanx-distal"
    XRHandJoint::PinkyFingerTip => "pinky-finger-tip"
  }
}

///|
/// Parse from string value
pub fn XRHandJoint::from_string(s : String) -> XRHandJoint? {
  match s {
    "wrist" => Some(XRHandJoint::Wrist)
    "thumb-metacarpal" => Some(XRHandJoint::ThumbMetacarpal)
    "thumb-phalanx-proximal" => Some(XRHandJoint::ThumbPhalanxProximal)
    "thumb-phalanx-distal" => Some(XRHandJoint::ThumbPhalanxDistal)
    "thumb-tip" => Some(XRHandJoint::ThumbTip)
    "index-finger-metacarpal" => Some(XRHandJoint::IndexFingerMetacarpal)
    "index-finger-phalanx-proximal" =>
      Some(XRHandJoint::IndexFingerPhalanxProximal)
    "index-finger-phalanx-intermediate" =>
      Some(XRHandJoint::IndexFingerPhalanxIntermediate)
    "index-finger-phalanx-distal" => Some(XRHandJoint::IndexFingerPhalanxDistal)
    "index-finger-tip" => Some(XRHandJoint::IndexFingerTip)
    "middle-finger-metacarpal" => Some(XRHandJoint::MiddleFingerMetacarpal)
    "middle-finger-phalanx-proximal" =>
      Some(XRHandJoint::MiddleFingerPhalanxProximal)
    "middle-finger-phalanx-intermediate" =>
      Some(XRHandJoint::MiddleFingerPhalanxIntermediate)
    "middle-finger-phalanx-distal" =>
      Some(XRHandJoint::MiddleFingerPhalanxDistal)
    "middle-finger-tip" => Some(XRHandJoint::MiddleFingerTip)
    "ring-finger-metacarpal" => Some(XRHandJoint::RingFingerMetacarpal)
    "ring-finger-phalanx-proximal" =>
      Some(XRHandJoint::RingFingerPhalanxProximal)
    "ring-finger-phalanx-intermediate" =>
      Some(XRHandJoint::RingFingerPhalanxIntermediate)
    "ring-finger-phalanx-distal" => Some(XRHandJoint::RingFingerPhalanxDistal)
    "ring-finger-tip" => Some(XRHandJoint::RingFingerTip)
    "pinky-finger-metacarpal" => Some(XRHandJoint::PinkyFingerMetacarpal)
    "pinky-finger-phalanx-proximal" =>
      Some(XRHandJoint::PinkyFingerPhalanxProximal)
    "pinky-finger-phalanx-intermediate" =>
      Some(XRHandJoint::PinkyFingerPhalanxIntermediate)
    "pinky-finger-phalanx-distal" => Some(XRHandJoint::PinkyFingerPhalanxDistal)
    "pinky-finger-tip" => Some(XRHandJoint::PinkyFingerTip)
    _ => None
  }
}

///|
/// XRHand interface
pub type XRHand

///|
pub extern "js" fn XRHand::to_js_value(self : XRHand) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn XRHand::_unknown_(self : XRHand) -> Unit =
  #| (self) => self._unknown_()

///|
pub extern "js" fn XRHand::get_size(self : XRHand) -> Int =
  #| (self) => self.size

///|
pub extern "js" fn XRHand::get(
  self : XRHand,
  key : XRHandJoint,
) -> XRJointSpace =
  #| (self, key) => self.get(['wrist', 'thumb-metacarpal', 'thumb-phalanx-proximal', 'thumb-phalanx-distal', 'thumb-tip', 'index-finger-metacarpal', 'index-finger-phalanx-proximal', 'index-finger-phalanx-intermediate', 'index-finger-phalanx-distal', 'index-finger-tip', 'middle-finger-metacarpal', 'middle-finger-phalanx-proximal', 'middle-finger-phalanx-intermediate', 'middle-finger-phalanx-distal', 'middle-finger-tip', 'ring-finger-metacarpal', 'ring-finger-phalanx-proximal', 'ring-finger-phalanx-intermediate', 'ring-finger-phalanx-distal', 'ring-finger-tip', 'pinky-finger-metacarpal', 'pinky-finger-phalanx-proximal', 'pinky-finger-phalanx-intermediate', 'pinky-finger-phalanx-distal', 'pinky-finger-tip'][key])

///|
/// XRJointSpace interface
pub type XRJointSpace

///|
pub extern "js" fn XRJointSpace::to_js_value(self : XRJointSpace) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn XRJointSpace::get_joint_name(
  self : XRJointSpace,
) -> XRHandJoint =
  #| (self) => self.jointName

///|
/// XRJointPose interface
pub type XRJointPose

///|
pub extern "js" fn XRJointPose::to_js_value(self : XRJointPose) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn XRJointPose::get_radius(self : XRJointPose) -> Double =
  #| (self) => self.radius
