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

/// Convert to string value
pub fn XRHandJoint::to_string(self : XRHandJoint) -> String {
  match self {
    Wrist => "wrist"
    ThumbMetacarpal => "thumb-metacarpal"
    ThumbPhalanxProximal => "thumb-phalanx-proximal"
    ThumbPhalanxDistal => "thumb-phalanx-distal"
    ThumbTip => "thumb-tip"
    IndexFingerMetacarpal => "index-finger-metacarpal"
    IndexFingerPhalanxProximal => "index-finger-phalanx-proximal"
    IndexFingerPhalanxIntermediate => "index-finger-phalanx-intermediate"
    IndexFingerPhalanxDistal => "index-finger-phalanx-distal"
    IndexFingerTip => "index-finger-tip"
    MiddleFingerMetacarpal => "middle-finger-metacarpal"
    MiddleFingerPhalanxProximal => "middle-finger-phalanx-proximal"
    MiddleFingerPhalanxIntermediate => "middle-finger-phalanx-intermediate"
    MiddleFingerPhalanxDistal => "middle-finger-phalanx-distal"
    MiddleFingerTip => "middle-finger-tip"
    RingFingerMetacarpal => "ring-finger-metacarpal"
    RingFingerPhalanxProximal => "ring-finger-phalanx-proximal"
    RingFingerPhalanxIntermediate => "ring-finger-phalanx-intermediate"
    RingFingerPhalanxDistal => "ring-finger-phalanx-distal"
    RingFingerTip => "ring-finger-tip"
    PinkyFingerMetacarpal => "pinky-finger-metacarpal"
    PinkyFingerPhalanxProximal => "pinky-finger-phalanx-proximal"
    PinkyFingerPhalanxIntermediate => "pinky-finger-phalanx-intermediate"
    PinkyFingerPhalanxDistal => "pinky-finger-phalanx-distal"
    PinkyFingerTip => "pinky-finger-tip"
  }
}

/// Parse from string value
pub fn XRHandJoint::from_string(s : String) -> XRHandJoint? {
  match s {
    "wrist" => Some(Wrist)
    "thumb-metacarpal" => Some(ThumbMetacarpal)
    "thumb-phalanx-proximal" => Some(ThumbPhalanxProximal)
    "thumb-phalanx-distal" => Some(ThumbPhalanxDistal)
    "thumb-tip" => Some(ThumbTip)
    "index-finger-metacarpal" => Some(IndexFingerMetacarpal)
    "index-finger-phalanx-proximal" => Some(IndexFingerPhalanxProximal)
    "index-finger-phalanx-intermediate" => Some(IndexFingerPhalanxIntermediate)
    "index-finger-phalanx-distal" => Some(IndexFingerPhalanxDistal)
    "index-finger-tip" => Some(IndexFingerTip)
    "middle-finger-metacarpal" => Some(MiddleFingerMetacarpal)
    "middle-finger-phalanx-proximal" => Some(MiddleFingerPhalanxProximal)
    "middle-finger-phalanx-intermediate" => Some(MiddleFingerPhalanxIntermediate)
    "middle-finger-phalanx-distal" => Some(MiddleFingerPhalanxDistal)
    "middle-finger-tip" => Some(MiddleFingerTip)
    "ring-finger-metacarpal" => Some(RingFingerMetacarpal)
    "ring-finger-phalanx-proximal" => Some(RingFingerPhalanxProximal)
    "ring-finger-phalanx-intermediate" => Some(RingFingerPhalanxIntermediate)
    "ring-finger-phalanx-distal" => Some(RingFingerPhalanxDistal)
    "ring-finger-tip" => Some(RingFingerTip)
    "pinky-finger-metacarpal" => Some(PinkyFingerMetacarpal)
    "pinky-finger-phalanx-proximal" => Some(PinkyFingerPhalanxProximal)
    "pinky-finger-phalanx-intermediate" => Some(PinkyFingerPhalanxIntermediate)
    "pinky-finger-phalanx-distal" => Some(PinkyFingerPhalanxDistal)
    "pinky-finger-tip" => Some(PinkyFingerTip)
    _ => None
  }
}

///|
/// XRHand interface
pub type XRHand

pub extern "js" fn XRHand::to_js_value(self : XRHand) -> JsValue =
  #| (self) => self

pub extern "js" fn XRHand::_unknown_(self : XRHand) -> Unit =
  #| (self) => self._unknown_()

pub extern "js" fn XRHand::get_size(self : XRHand) -> Int =
  #| (self) => self.size

pub extern "js" fn XRHand::get(self : XRHand, key : XRHandJoint) -> XRJointSpace =
  #| (self, key) => self.get(['wrist', 'thumb-metacarpal', 'thumb-phalanx-proximal', 'thumb-phalanx-distal', 'thumb-tip', 'index-finger-metacarpal', 'index-finger-phalanx-proximal', 'index-finger-phalanx-intermediate', 'index-finger-phalanx-distal', 'index-finger-tip', 'middle-finger-metacarpal', 'middle-finger-phalanx-proximal', 'middle-finger-phalanx-intermediate', 'middle-finger-phalanx-distal', 'middle-finger-tip', 'ring-finger-metacarpal', 'ring-finger-phalanx-proximal', 'ring-finger-phalanx-intermediate', 'ring-finger-phalanx-distal', 'ring-finger-tip', 'pinky-finger-metacarpal', 'pinky-finger-phalanx-proximal', 'pinky-finger-phalanx-intermediate', 'pinky-finger-phalanx-distal', 'pinky-finger-tip'][key])

///|
/// XRJointSpace interface
pub type XRJointSpace

pub extern "js" fn XRJointSpace::to_js_value(self : XRJointSpace) -> JsValue =
  #| (self) => self

pub extern "js" fn XRJointSpace::get_joint_name(self : XRJointSpace) -> XRHandJoint =
  #| (self) => self.jointName

///|
/// XRJointPose interface
pub type XRJointPose

pub extern "js" fn XRJointPose::to_js_value(self : XRJointPose) -> JsValue =
  #| (self) => self

pub extern "js" fn XRJointPose::get_radius(self : XRJointPose) -> Double =
  #| (self) => self.radius

