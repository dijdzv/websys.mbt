// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/body-tracking

///|
/// XRBodyJoint enum
pub(all) enum XRBodyJoint {
  Hips
  SpineLower
  SpineMiddle
  SpineUpper
  Chest
  Neck
  Head
  LeftShoulder
  LeftScapula
  LeftArmUpper
  LeftArmLower
  LeftHandWristTwist
  RightShoulder
  RightScapula
  RightArmUpper
  RightArmLower
  RightHandWristTwist
  LeftHandPalm
  LeftHandWrist
  LeftHandThumbMetacarpal
  LeftHandThumbPhalanxProximal
  LeftHandThumbPhalanxDistal
  LeftHandThumbTip
  LeftHandIndexMetacarpal
  LeftHandIndexPhalanxProximal
  LeftHandIndexPhalanxIntermediate
  LeftHandIndexPhalanxDistal
  LeftHandIndexTip
  LeftHandMiddlePhalanxMetacarpal
  LeftHandMiddlePhalanxProximal
  LeftHandMiddlePhalanxIntermediate
  LeftHandMiddlePhalanxDistal
  LeftHandMiddleTip
  LeftHandRingMetacarpal
  LeftHandRingPhalanxProximal
  LeftHandRingPhalanxIntermediate
  LeftHandRingPhalanxDistal
  LeftHandRingTip
  LeftHandLittleMetacarpal
  LeftHandLittlePhalanxProximal
  LeftHandLittlePhalanxIntermediate
  LeftHandLittlePhalanxDistal
  LeftHandLittleTip
  RightHandPalm
  RightHandWrist
  RightHandThumbMetacarpal
  RightHandThumbPhalanxProximal
  RightHandThumbPhalanxDistal
  RightHandThumbTip
  RightHandIndexMetacarpal
  RightHandIndexPhalanxProximal
  RightHandIndexPhalanxIntermediate
  RightHandIndexPhalanxDistal
  RightHandIndexTip
  RightHandMiddleMetacarpal
  RightHandMiddlePhalanxProximal
  RightHandMiddlePhalanxIntermediate
  RightHandMiddlePhalanxDistal
  RightHandMiddleTip
  RightHandRingMetacarpal
  RightHandRingPhalanxProximal
  RightHandRingPhalanxIntermediate
  RightHandRingPhalanxDistal
  RightHandRingTip
  RightHandLittleMetacarpal
  RightHandLittlePhalanxProximal
  RightHandLittlePhalanxIntermediate
  RightHandLittlePhalanxDistal
  RightHandLittleTip
  LeftUpperLeg
  LeftLowerLeg
  LeftFootAnkleTwist
  LeftFootAnkle
  LeftFootSubtalar
  LeftFootTransverse
  LeftFootBall
  RightUpperLeg
  RightLowerLeg
  RightFootAnkleTwist
  RightFootAnkle
  RightFootSubtalar
  RightFootTransverse
  RightFootBall
}

///|
/// Convert to string value
pub fn XRBodyJoint::to_string(self : XRBodyJoint) -> String {
  match self {
    XRBodyJoint::Hips => "hips"
    XRBodyJoint::SpineLower => "spine-lower"
    XRBodyJoint::SpineMiddle => "spine-middle"
    XRBodyJoint::SpineUpper => "spine-upper"
    XRBodyJoint::Chest => "chest"
    XRBodyJoint::Neck => "neck"
    XRBodyJoint::Head => "head"
    XRBodyJoint::LeftShoulder => "left-shoulder"
    XRBodyJoint::LeftScapula => "left-scapula"
    XRBodyJoint::LeftArmUpper => "left-arm-upper"
    XRBodyJoint::LeftArmLower => "left-arm-lower"
    XRBodyJoint::LeftHandWristTwist => "left-hand-wrist-twist"
    XRBodyJoint::RightShoulder => "right-shoulder"
    XRBodyJoint::RightScapula => "right-scapula"
    XRBodyJoint::RightArmUpper => "right-arm-upper"
    XRBodyJoint::RightArmLower => "right-arm-lower"
    XRBodyJoint::RightHandWristTwist => "right-hand-wrist-twist"
    XRBodyJoint::LeftHandPalm => "left-hand-palm"
    XRBodyJoint::LeftHandWrist => "left-hand-wrist"
    XRBodyJoint::LeftHandThumbMetacarpal => "left-hand-thumb-metacarpal"
    XRBodyJoint::LeftHandThumbPhalanxProximal =>
      "left-hand-thumb-phalanx-proximal"
    XRBodyJoint::LeftHandThumbPhalanxDistal => "left-hand-thumb-phalanx-distal"
    XRBodyJoint::LeftHandThumbTip => "left-hand-thumb-tip"
    XRBodyJoint::LeftHandIndexMetacarpal => "left-hand-index-metacarpal"
    XRBodyJoint::LeftHandIndexPhalanxProximal =>
      "left-hand-index-phalanx-proximal"
    XRBodyJoint::LeftHandIndexPhalanxIntermediate =>
      "left-hand-index-phalanx-intermediate"
    XRBodyJoint::LeftHandIndexPhalanxDistal => "left-hand-index-phalanx-distal"
    XRBodyJoint::LeftHandIndexTip => "left-hand-index-tip"
    XRBodyJoint::LeftHandMiddlePhalanxMetacarpal =>
      "left-hand-middle-phalanx-metacarpal"
    XRBodyJoint::LeftHandMiddlePhalanxProximal =>
      "left-hand-middle-phalanx-proximal"
    XRBodyJoint::LeftHandMiddlePhalanxIntermediate =>
      "left-hand-middle-phalanx-intermediate"
    XRBodyJoint::LeftHandMiddlePhalanxDistal =>
      "left-hand-middle-phalanx-distal"
    XRBodyJoint::LeftHandMiddleTip => "left-hand-middle-tip"
    XRBodyJoint::LeftHandRingMetacarpal => "left-hand-ring-metacarpal"
    XRBodyJoint::LeftHandRingPhalanxProximal =>
      "left-hand-ring-phalanx-proximal"
    XRBodyJoint::LeftHandRingPhalanxIntermediate =>
      "left-hand-ring-phalanx-intermediate"
    XRBodyJoint::LeftHandRingPhalanxDistal => "left-hand-ring-phalanx-distal"
    XRBodyJoint::LeftHandRingTip => "left-hand-ring-tip"
    XRBodyJoint::LeftHandLittleMetacarpal => "left-hand-little-metacarpal"
    XRBodyJoint::LeftHandLittlePhalanxProximal =>
      "left-hand-little-phalanx-proximal"
    XRBodyJoint::LeftHandLittlePhalanxIntermediate =>
      "left-hand-little-phalanx-intermediate"
    XRBodyJoint::LeftHandLittlePhalanxDistal =>
      "left-hand-little-phalanx-distal"
    XRBodyJoint::LeftHandLittleTip => "left-hand-little-tip"
    XRBodyJoint::RightHandPalm => "right-hand-palm"
    XRBodyJoint::RightHandWrist => "right-hand-wrist"
    XRBodyJoint::RightHandThumbMetacarpal => "right-hand-thumb-metacarpal"
    XRBodyJoint::RightHandThumbPhalanxProximal =>
      "right-hand-thumb-phalanx-proximal"
    XRBodyJoint::RightHandThumbPhalanxDistal =>
      "right-hand-thumb-phalanx-distal"
    XRBodyJoint::RightHandThumbTip => "right-hand-thumb-tip"
    XRBodyJoint::RightHandIndexMetacarpal => "right-hand-index-metacarpal"
    XRBodyJoint::RightHandIndexPhalanxProximal =>
      "right-hand-index-phalanx-proximal"
    XRBodyJoint::RightHandIndexPhalanxIntermediate =>
      "right-hand-index-phalanx-intermediate"
    XRBodyJoint::RightHandIndexPhalanxDistal =>
      "right-hand-index-phalanx-distal"
    XRBodyJoint::RightHandIndexTip => "right-hand-index-tip"
    XRBodyJoint::RightHandMiddleMetacarpal => "right-hand-middle-metacarpal"
    XRBodyJoint::RightHandMiddlePhalanxProximal =>
      "right-hand-middle-phalanx-proximal"
    XRBodyJoint::RightHandMiddlePhalanxIntermediate =>
      "right-hand-middle-phalanx-intermediate"
    XRBodyJoint::RightHandMiddlePhalanxDistal =>
      "right-hand-middle-phalanx-distal"
    XRBodyJoint::RightHandMiddleTip => "right-hand-middle-tip"
    XRBodyJoint::RightHandRingMetacarpal => "right-hand-ring-metacarpal"
    XRBodyJoint::RightHandRingPhalanxProximal =>
      "right-hand-ring-phalanx-proximal"
    XRBodyJoint::RightHandRingPhalanxIntermediate =>
      "right-hand-ring-phalanx-intermediate"
    XRBodyJoint::RightHandRingPhalanxDistal => "right-hand-ring-phalanx-distal"
    XRBodyJoint::RightHandRingTip => "right-hand-ring-tip"
    XRBodyJoint::RightHandLittleMetacarpal => "right-hand-little-metacarpal"
    XRBodyJoint::RightHandLittlePhalanxProximal =>
      "right-hand-little-phalanx-proximal"
    XRBodyJoint::RightHandLittlePhalanxIntermediate =>
      "right-hand-little-phalanx-intermediate"
    XRBodyJoint::RightHandLittlePhalanxDistal =>
      "right-hand-little-phalanx-distal"
    XRBodyJoint::RightHandLittleTip => "right-hand-little-tip"
    XRBodyJoint::LeftUpperLeg => "left-upper-leg"
    XRBodyJoint::LeftLowerLeg => "left-lower-leg"
    XRBodyJoint::LeftFootAnkleTwist => "left-foot-ankle-twist"
    XRBodyJoint::LeftFootAnkle => "left-foot-ankle"
    XRBodyJoint::LeftFootSubtalar => "left-foot-subtalar"
    XRBodyJoint::LeftFootTransverse => "left-foot-transverse"
    XRBodyJoint::LeftFootBall => "left-foot-ball"
    XRBodyJoint::RightUpperLeg => "right-upper-leg"
    XRBodyJoint::RightLowerLeg => "right-lower-leg"
    XRBodyJoint::RightFootAnkleTwist => "right-foot-ankle-twist"
    XRBodyJoint::RightFootAnkle => "right-foot-ankle"
    XRBodyJoint::RightFootSubtalar => "right-foot-subtalar"
    XRBodyJoint::RightFootTransverse => "right-foot-transverse"
    XRBodyJoint::RightFootBall => "right-foot-ball"
  }
}

///|
/// Parse from string value
pub fn XRBodyJoint::from_string(s : String) -> XRBodyJoint? {
  match s {
    "hips" => Some(XRBodyJoint::Hips)
    "spine-lower" => Some(XRBodyJoint::SpineLower)
    "spine-middle" => Some(XRBodyJoint::SpineMiddle)
    "spine-upper" => Some(XRBodyJoint::SpineUpper)
    "chest" => Some(XRBodyJoint::Chest)
    "neck" => Some(XRBodyJoint::Neck)
    "head" => Some(XRBodyJoint::Head)
    "left-shoulder" => Some(XRBodyJoint::LeftShoulder)
    "left-scapula" => Some(XRBodyJoint::LeftScapula)
    "left-arm-upper" => Some(XRBodyJoint::LeftArmUpper)
    "left-arm-lower" => Some(XRBodyJoint::LeftArmLower)
    "left-hand-wrist-twist" => Some(XRBodyJoint::LeftHandWristTwist)
    "right-shoulder" => Some(XRBodyJoint::RightShoulder)
    "right-scapula" => Some(XRBodyJoint::RightScapula)
    "right-arm-upper" => Some(XRBodyJoint::RightArmUpper)
    "right-arm-lower" => Some(XRBodyJoint::RightArmLower)
    "right-hand-wrist-twist" => Some(XRBodyJoint::RightHandWristTwist)
    "left-hand-palm" => Some(XRBodyJoint::LeftHandPalm)
    "left-hand-wrist" => Some(XRBodyJoint::LeftHandWrist)
    "left-hand-thumb-metacarpal" => Some(XRBodyJoint::LeftHandThumbMetacarpal)
    "left-hand-thumb-phalanx-proximal" =>
      Some(XRBodyJoint::LeftHandThumbPhalanxProximal)
    "left-hand-thumb-phalanx-distal" =>
      Some(XRBodyJoint::LeftHandThumbPhalanxDistal)
    "left-hand-thumb-tip" => Some(XRBodyJoint::LeftHandThumbTip)
    "left-hand-index-metacarpal" => Some(XRBodyJoint::LeftHandIndexMetacarpal)
    "left-hand-index-phalanx-proximal" =>
      Some(XRBodyJoint::LeftHandIndexPhalanxProximal)
    "left-hand-index-phalanx-intermediate" =>
      Some(XRBodyJoint::LeftHandIndexPhalanxIntermediate)
    "left-hand-index-phalanx-distal" =>
      Some(XRBodyJoint::LeftHandIndexPhalanxDistal)
    "left-hand-index-tip" => Some(XRBodyJoint::LeftHandIndexTip)
    "left-hand-middle-phalanx-metacarpal" =>
      Some(XRBodyJoint::LeftHandMiddlePhalanxMetacarpal)
    "left-hand-middle-phalanx-proximal" =>
      Some(XRBodyJoint::LeftHandMiddlePhalanxProximal)
    "left-hand-middle-phalanx-intermediate" =>
      Some(XRBodyJoint::LeftHandMiddlePhalanxIntermediate)
    "left-hand-middle-phalanx-distal" =>
      Some(XRBodyJoint::LeftHandMiddlePhalanxDistal)
    "left-hand-middle-tip" => Some(XRBodyJoint::LeftHandMiddleTip)
    "left-hand-ring-metacarpal" => Some(XRBodyJoint::LeftHandRingMetacarpal)
    "left-hand-ring-phalanx-proximal" =>
      Some(XRBodyJoint::LeftHandRingPhalanxProximal)
    "left-hand-ring-phalanx-intermediate" =>
      Some(XRBodyJoint::LeftHandRingPhalanxIntermediate)
    "left-hand-ring-phalanx-distal" =>
      Some(XRBodyJoint::LeftHandRingPhalanxDistal)
    "left-hand-ring-tip" => Some(XRBodyJoint::LeftHandRingTip)
    "left-hand-little-metacarpal" => Some(XRBodyJoint::LeftHandLittleMetacarpal)
    "left-hand-little-phalanx-proximal" =>
      Some(XRBodyJoint::LeftHandLittlePhalanxProximal)
    "left-hand-little-phalanx-intermediate" =>
      Some(XRBodyJoint::LeftHandLittlePhalanxIntermediate)
    "left-hand-little-phalanx-distal" =>
      Some(XRBodyJoint::LeftHandLittlePhalanxDistal)
    "left-hand-little-tip" => Some(XRBodyJoint::LeftHandLittleTip)
    "right-hand-palm" => Some(XRBodyJoint::RightHandPalm)
    "right-hand-wrist" => Some(XRBodyJoint::RightHandWrist)
    "right-hand-thumb-metacarpal" => Some(XRBodyJoint::RightHandThumbMetacarpal)
    "right-hand-thumb-phalanx-proximal" =>
      Some(XRBodyJoint::RightHandThumbPhalanxProximal)
    "right-hand-thumb-phalanx-distal" =>
      Some(XRBodyJoint::RightHandThumbPhalanxDistal)
    "right-hand-thumb-tip" => Some(XRBodyJoint::RightHandThumbTip)
    "right-hand-index-metacarpal" => Some(XRBodyJoint::RightHandIndexMetacarpal)
    "right-hand-index-phalanx-proximal" =>
      Some(XRBodyJoint::RightHandIndexPhalanxProximal)
    "right-hand-index-phalanx-intermediate" =>
      Some(XRBodyJoint::RightHandIndexPhalanxIntermediate)
    "right-hand-index-phalanx-distal" =>
      Some(XRBodyJoint::RightHandIndexPhalanxDistal)
    "right-hand-index-tip" => Some(XRBodyJoint::RightHandIndexTip)
    "right-hand-middle-metacarpal" =>
      Some(XRBodyJoint::RightHandMiddleMetacarpal)
    "right-hand-middle-phalanx-proximal" =>
      Some(XRBodyJoint::RightHandMiddlePhalanxProximal)
    "right-hand-middle-phalanx-intermediate" =>
      Some(XRBodyJoint::RightHandMiddlePhalanxIntermediate)
    "right-hand-middle-phalanx-distal" =>
      Some(XRBodyJoint::RightHandMiddlePhalanxDistal)
    "right-hand-middle-tip" => Some(XRBodyJoint::RightHandMiddleTip)
    "right-hand-ring-metacarpal" => Some(XRBodyJoint::RightHandRingMetacarpal)
    "right-hand-ring-phalanx-proximal" =>
      Some(XRBodyJoint::RightHandRingPhalanxProximal)
    "right-hand-ring-phalanx-intermediate" =>
      Some(XRBodyJoint::RightHandRingPhalanxIntermediate)
    "right-hand-ring-phalanx-distal" =>
      Some(XRBodyJoint::RightHandRingPhalanxDistal)
    "right-hand-ring-tip" => Some(XRBodyJoint::RightHandRingTip)
    "right-hand-little-metacarpal" =>
      Some(XRBodyJoint::RightHandLittleMetacarpal)
    "right-hand-little-phalanx-proximal" =>
      Some(XRBodyJoint::RightHandLittlePhalanxProximal)
    "right-hand-little-phalanx-intermediate" =>
      Some(XRBodyJoint::RightHandLittlePhalanxIntermediate)
    "right-hand-little-phalanx-distal" =>
      Some(XRBodyJoint::RightHandLittlePhalanxDistal)
    "right-hand-little-tip" => Some(XRBodyJoint::RightHandLittleTip)
    "left-upper-leg" => Some(XRBodyJoint::LeftUpperLeg)
    "left-lower-leg" => Some(XRBodyJoint::LeftLowerLeg)
    "left-foot-ankle-twist" => Some(XRBodyJoint::LeftFootAnkleTwist)
    "left-foot-ankle" => Some(XRBodyJoint::LeftFootAnkle)
    "left-foot-subtalar" => Some(XRBodyJoint::LeftFootSubtalar)
    "left-foot-transverse" => Some(XRBodyJoint::LeftFootTransverse)
    "left-foot-ball" => Some(XRBodyJoint::LeftFootBall)
    "right-upper-leg" => Some(XRBodyJoint::RightUpperLeg)
    "right-lower-leg" => Some(XRBodyJoint::RightLowerLeg)
    "right-foot-ankle-twist" => Some(XRBodyJoint::RightFootAnkleTwist)
    "right-foot-ankle" => Some(XRBodyJoint::RightFootAnkle)
    "right-foot-subtalar" => Some(XRBodyJoint::RightFootSubtalar)
    "right-foot-transverse" => Some(XRBodyJoint::RightFootTransverse)
    "right-foot-ball" => Some(XRBodyJoint::RightFootBall)
    _ => None
  }
}

///|
/// XRBody interface
pub type XRBody

///|
pub extern "js" fn XRBody::to_js_value(self : XRBody) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRBody (unchecked)
pub extern "js" fn XRBody::from_js_value(v : JsValue) -> XRBody =
  #| (v) => v

///|
/// Safely cast JsValue to XRBody (checked with instanceof)
pub extern "js" fn XRBody::from_js_value_opt(v : JsValue) -> XRBody? =
  #| (v) => (v instanceof XRBody) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRBody (checked with instanceof)
pub extern "js" fn JsValue::as_xr_body(self : JsValue) -> XRBody? =
  #| (self) => (self instanceof XRBody) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRBody (unchecked)
pub extern "js" fn JsValue::to_xr_body(self : JsValue) -> XRBody =
  #| (self) => self

///|
pub extern "js" fn XRBody::_unknown_(self : XRBody) -> Unit =
  #| (self) => self._unknown_()

///|
pub extern "js" fn XRBody::get_size(self : XRBody) -> Int =
  #| (self) => self.size

///|
pub extern "js" fn XRBody::get(self : XRBody, key : XRBodyJoint) -> XRBodySpace =
  #| (self, key) => self.get(['hips', 'spine-lower', 'spine-middle', 'spine-upper', 'chest', 'neck', 'head', 'left-shoulder', 'left-scapula', 'left-arm-upper', 'left-arm-lower', 'left-hand-wrist-twist', 'right-shoulder', 'right-scapula', 'right-arm-upper', 'right-arm-lower', 'right-hand-wrist-twist', 'left-hand-palm', 'left-hand-wrist', 'left-hand-thumb-metacarpal', 'left-hand-thumb-phalanx-proximal', 'left-hand-thumb-phalanx-distal', 'left-hand-thumb-tip', 'left-hand-index-metacarpal', 'left-hand-index-phalanx-proximal', 'left-hand-index-phalanx-intermediate', 'left-hand-index-phalanx-distal', 'left-hand-index-tip', 'left-hand-middle-phalanx-metacarpal', 'left-hand-middle-phalanx-proximal', 'left-hand-middle-phalanx-intermediate', 'left-hand-middle-phalanx-distal', 'left-hand-middle-tip', 'left-hand-ring-metacarpal', 'left-hand-ring-phalanx-proximal', 'left-hand-ring-phalanx-intermediate', 'left-hand-ring-phalanx-distal', 'left-hand-ring-tip', 'left-hand-little-metacarpal', 'left-hand-little-phalanx-proximal', 'left-hand-little-phalanx-intermediate', 'left-hand-little-phalanx-distal', 'left-hand-little-tip', 'right-hand-palm', 'right-hand-wrist', 'right-hand-thumb-metacarpal', 'right-hand-thumb-phalanx-proximal', 'right-hand-thumb-phalanx-distal', 'right-hand-thumb-tip', 'right-hand-index-metacarpal', 'right-hand-index-phalanx-proximal', 'right-hand-index-phalanx-intermediate', 'right-hand-index-phalanx-distal', 'right-hand-index-tip', 'right-hand-middle-metacarpal', 'right-hand-middle-phalanx-proximal', 'right-hand-middle-phalanx-intermediate', 'right-hand-middle-phalanx-distal', 'right-hand-middle-tip', 'right-hand-ring-metacarpal', 'right-hand-ring-phalanx-proximal', 'right-hand-ring-phalanx-intermediate', 'right-hand-ring-phalanx-distal', 'right-hand-ring-tip', 'right-hand-little-metacarpal', 'right-hand-little-phalanx-proximal', 'right-hand-little-phalanx-intermediate', 'right-hand-little-phalanx-distal', 'right-hand-little-tip', 'left-upper-leg', 'left-lower-leg', 'left-foot-ankle-twist', 'left-foot-ankle', 'left-foot-subtalar', 'left-foot-transverse', 'left-foot-ball', 'right-upper-leg', 'right-lower-leg', 'right-foot-ankle-twist', 'right-foot-ankle', 'right-foot-subtalar', 'right-foot-transverse', 'right-foot-ball'][key])

///|
/// XRBodySpace interface
pub type XRBodySpace

///|
pub extern "js" fn XRBodySpace::to_js_value(self : XRBodySpace) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRBodySpace (unchecked)
pub extern "js" fn XRBodySpace::from_js_value(v : JsValue) -> XRBodySpace =
  #| (v) => v

///|
/// Safely cast JsValue to XRBodySpace (checked with instanceof)
pub extern "js" fn XRBodySpace::from_js_value_opt(v : JsValue) -> XRBodySpace? =
  #| (v) => (v instanceof XRBodySpace) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRBodySpace (checked with instanceof)
pub extern "js" fn JsValue::as_xr_body_space(self : JsValue) -> XRBodySpace? =
  #| (self) => (self instanceof XRBodySpace) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRBodySpace (unchecked)
pub extern "js" fn JsValue::to_xr_body_space(self : JsValue) -> XRBodySpace =
  #| (self) => self

///|
pub extern "js" fn XRBodySpace::to_xr_space(self : XRBodySpace) -> XRSpace =
  #| (self) => self

///|
pub extern "js" fn XRBodySpace::to_event_target(
  self : XRBodySpace,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn XRBodySpace::get_joint_name(
  self : XRBodySpace,
) -> XRBodyJoint =
  #| (self) => self.jointName
