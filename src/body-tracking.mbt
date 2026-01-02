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

/// Convert to string value
pub fn XRBodyJoint::to_string(self : XRBodyJoint) -> String {
  match self {
    Hips => "hips"
    SpineLower => "spine-lower"
    SpineMiddle => "spine-middle"
    SpineUpper => "spine-upper"
    Chest => "chest"
    Neck => "neck"
    Head => "head"
    LeftShoulder => "left-shoulder"
    LeftScapula => "left-scapula"
    LeftArmUpper => "left-arm-upper"
    LeftArmLower => "left-arm-lower"
    LeftHandWristTwist => "left-hand-wrist-twist"
    RightShoulder => "right-shoulder"
    RightScapula => "right-scapula"
    RightArmUpper => "right-arm-upper"
    RightArmLower => "right-arm-lower"
    RightHandWristTwist => "right-hand-wrist-twist"
    LeftHandPalm => "left-hand-palm"
    LeftHandWrist => "left-hand-wrist"
    LeftHandThumbMetacarpal => "left-hand-thumb-metacarpal"
    LeftHandThumbPhalanxProximal => "left-hand-thumb-phalanx-proximal"
    LeftHandThumbPhalanxDistal => "left-hand-thumb-phalanx-distal"
    LeftHandThumbTip => "left-hand-thumb-tip"
    LeftHandIndexMetacarpal => "left-hand-index-metacarpal"
    LeftHandIndexPhalanxProximal => "left-hand-index-phalanx-proximal"
    LeftHandIndexPhalanxIntermediate => "left-hand-index-phalanx-intermediate"
    LeftHandIndexPhalanxDistal => "left-hand-index-phalanx-distal"
    LeftHandIndexTip => "left-hand-index-tip"
    LeftHandMiddlePhalanxMetacarpal => "left-hand-middle-phalanx-metacarpal"
    LeftHandMiddlePhalanxProximal => "left-hand-middle-phalanx-proximal"
    LeftHandMiddlePhalanxIntermediate => "left-hand-middle-phalanx-intermediate"
    LeftHandMiddlePhalanxDistal => "left-hand-middle-phalanx-distal"
    LeftHandMiddleTip => "left-hand-middle-tip"
    LeftHandRingMetacarpal => "left-hand-ring-metacarpal"
    LeftHandRingPhalanxProximal => "left-hand-ring-phalanx-proximal"
    LeftHandRingPhalanxIntermediate => "left-hand-ring-phalanx-intermediate"
    LeftHandRingPhalanxDistal => "left-hand-ring-phalanx-distal"
    LeftHandRingTip => "left-hand-ring-tip"
    LeftHandLittleMetacarpal => "left-hand-little-metacarpal"
    LeftHandLittlePhalanxProximal => "left-hand-little-phalanx-proximal"
    LeftHandLittlePhalanxIntermediate => "left-hand-little-phalanx-intermediate"
    LeftHandLittlePhalanxDistal => "left-hand-little-phalanx-distal"
    LeftHandLittleTip => "left-hand-little-tip"
    RightHandPalm => "right-hand-palm"
    RightHandWrist => "right-hand-wrist"
    RightHandThumbMetacarpal => "right-hand-thumb-metacarpal"
    RightHandThumbPhalanxProximal => "right-hand-thumb-phalanx-proximal"
    RightHandThumbPhalanxDistal => "right-hand-thumb-phalanx-distal"
    RightHandThumbTip => "right-hand-thumb-tip"
    RightHandIndexMetacarpal => "right-hand-index-metacarpal"
    RightHandIndexPhalanxProximal => "right-hand-index-phalanx-proximal"
    RightHandIndexPhalanxIntermediate => "right-hand-index-phalanx-intermediate"
    RightHandIndexPhalanxDistal => "right-hand-index-phalanx-distal"
    RightHandIndexTip => "right-hand-index-tip"
    RightHandMiddleMetacarpal => "right-hand-middle-metacarpal"
    RightHandMiddlePhalanxProximal => "right-hand-middle-phalanx-proximal"
    RightHandMiddlePhalanxIntermediate => "right-hand-middle-phalanx-intermediate"
    RightHandMiddlePhalanxDistal => "right-hand-middle-phalanx-distal"
    RightHandMiddleTip => "right-hand-middle-tip"
    RightHandRingMetacarpal => "right-hand-ring-metacarpal"
    RightHandRingPhalanxProximal => "right-hand-ring-phalanx-proximal"
    RightHandRingPhalanxIntermediate => "right-hand-ring-phalanx-intermediate"
    RightHandRingPhalanxDistal => "right-hand-ring-phalanx-distal"
    RightHandRingTip => "right-hand-ring-tip"
    RightHandLittleMetacarpal => "right-hand-little-metacarpal"
    RightHandLittlePhalanxProximal => "right-hand-little-phalanx-proximal"
    RightHandLittlePhalanxIntermediate => "right-hand-little-phalanx-intermediate"
    RightHandLittlePhalanxDistal => "right-hand-little-phalanx-distal"
    RightHandLittleTip => "right-hand-little-tip"
    LeftUpperLeg => "left-upper-leg"
    LeftLowerLeg => "left-lower-leg"
    LeftFootAnkleTwist => "left-foot-ankle-twist"
    LeftFootAnkle => "left-foot-ankle"
    LeftFootSubtalar => "left-foot-subtalar"
    LeftFootTransverse => "left-foot-transverse"
    LeftFootBall => "left-foot-ball"
    RightUpperLeg => "right-upper-leg"
    RightLowerLeg => "right-lower-leg"
    RightFootAnkleTwist => "right-foot-ankle-twist"
    RightFootAnkle => "right-foot-ankle"
    RightFootSubtalar => "right-foot-subtalar"
    RightFootTransverse => "right-foot-transverse"
    RightFootBall => "right-foot-ball"
  }
}

/// Parse from string value
pub fn XRBodyJoint::from_string(s : String) -> XRBodyJoint? {
  match s {
    "hips" => Some(Hips)
    "spine-lower" => Some(SpineLower)
    "spine-middle" => Some(SpineMiddle)
    "spine-upper" => Some(SpineUpper)
    "chest" => Some(Chest)
    "neck" => Some(Neck)
    "head" => Some(Head)
    "left-shoulder" => Some(LeftShoulder)
    "left-scapula" => Some(LeftScapula)
    "left-arm-upper" => Some(LeftArmUpper)
    "left-arm-lower" => Some(LeftArmLower)
    "left-hand-wrist-twist" => Some(LeftHandWristTwist)
    "right-shoulder" => Some(RightShoulder)
    "right-scapula" => Some(RightScapula)
    "right-arm-upper" => Some(RightArmUpper)
    "right-arm-lower" => Some(RightArmLower)
    "right-hand-wrist-twist" => Some(RightHandWristTwist)
    "left-hand-palm" => Some(LeftHandPalm)
    "left-hand-wrist" => Some(LeftHandWrist)
    "left-hand-thumb-metacarpal" => Some(LeftHandThumbMetacarpal)
    "left-hand-thumb-phalanx-proximal" => Some(LeftHandThumbPhalanxProximal)
    "left-hand-thumb-phalanx-distal" => Some(LeftHandThumbPhalanxDistal)
    "left-hand-thumb-tip" => Some(LeftHandThumbTip)
    "left-hand-index-metacarpal" => Some(LeftHandIndexMetacarpal)
    "left-hand-index-phalanx-proximal" => Some(LeftHandIndexPhalanxProximal)
    "left-hand-index-phalanx-intermediate" => Some(LeftHandIndexPhalanxIntermediate)
    "left-hand-index-phalanx-distal" => Some(LeftHandIndexPhalanxDistal)
    "left-hand-index-tip" => Some(LeftHandIndexTip)
    "left-hand-middle-phalanx-metacarpal" => Some(LeftHandMiddlePhalanxMetacarpal)
    "left-hand-middle-phalanx-proximal" => Some(LeftHandMiddlePhalanxProximal)
    "left-hand-middle-phalanx-intermediate" => Some(LeftHandMiddlePhalanxIntermediate)
    "left-hand-middle-phalanx-distal" => Some(LeftHandMiddlePhalanxDistal)
    "left-hand-middle-tip" => Some(LeftHandMiddleTip)
    "left-hand-ring-metacarpal" => Some(LeftHandRingMetacarpal)
    "left-hand-ring-phalanx-proximal" => Some(LeftHandRingPhalanxProximal)
    "left-hand-ring-phalanx-intermediate" => Some(LeftHandRingPhalanxIntermediate)
    "left-hand-ring-phalanx-distal" => Some(LeftHandRingPhalanxDistal)
    "left-hand-ring-tip" => Some(LeftHandRingTip)
    "left-hand-little-metacarpal" => Some(LeftHandLittleMetacarpal)
    "left-hand-little-phalanx-proximal" => Some(LeftHandLittlePhalanxProximal)
    "left-hand-little-phalanx-intermediate" => Some(LeftHandLittlePhalanxIntermediate)
    "left-hand-little-phalanx-distal" => Some(LeftHandLittlePhalanxDistal)
    "left-hand-little-tip" => Some(LeftHandLittleTip)
    "right-hand-palm" => Some(RightHandPalm)
    "right-hand-wrist" => Some(RightHandWrist)
    "right-hand-thumb-metacarpal" => Some(RightHandThumbMetacarpal)
    "right-hand-thumb-phalanx-proximal" => Some(RightHandThumbPhalanxProximal)
    "right-hand-thumb-phalanx-distal" => Some(RightHandThumbPhalanxDistal)
    "right-hand-thumb-tip" => Some(RightHandThumbTip)
    "right-hand-index-metacarpal" => Some(RightHandIndexMetacarpal)
    "right-hand-index-phalanx-proximal" => Some(RightHandIndexPhalanxProximal)
    "right-hand-index-phalanx-intermediate" => Some(RightHandIndexPhalanxIntermediate)
    "right-hand-index-phalanx-distal" => Some(RightHandIndexPhalanxDistal)
    "right-hand-index-tip" => Some(RightHandIndexTip)
    "right-hand-middle-metacarpal" => Some(RightHandMiddleMetacarpal)
    "right-hand-middle-phalanx-proximal" => Some(RightHandMiddlePhalanxProximal)
    "right-hand-middle-phalanx-intermediate" => Some(RightHandMiddlePhalanxIntermediate)
    "right-hand-middle-phalanx-distal" => Some(RightHandMiddlePhalanxDistal)
    "right-hand-middle-tip" => Some(RightHandMiddleTip)
    "right-hand-ring-metacarpal" => Some(RightHandRingMetacarpal)
    "right-hand-ring-phalanx-proximal" => Some(RightHandRingPhalanxProximal)
    "right-hand-ring-phalanx-intermediate" => Some(RightHandRingPhalanxIntermediate)
    "right-hand-ring-phalanx-distal" => Some(RightHandRingPhalanxDistal)
    "right-hand-ring-tip" => Some(RightHandRingTip)
    "right-hand-little-metacarpal" => Some(RightHandLittleMetacarpal)
    "right-hand-little-phalanx-proximal" => Some(RightHandLittlePhalanxProximal)
    "right-hand-little-phalanx-intermediate" => Some(RightHandLittlePhalanxIntermediate)
    "right-hand-little-phalanx-distal" => Some(RightHandLittlePhalanxDistal)
    "right-hand-little-tip" => Some(RightHandLittleTip)
    "left-upper-leg" => Some(LeftUpperLeg)
    "left-lower-leg" => Some(LeftLowerLeg)
    "left-foot-ankle-twist" => Some(LeftFootAnkleTwist)
    "left-foot-ankle" => Some(LeftFootAnkle)
    "left-foot-subtalar" => Some(LeftFootSubtalar)
    "left-foot-transverse" => Some(LeftFootTransverse)
    "left-foot-ball" => Some(LeftFootBall)
    "right-upper-leg" => Some(RightUpperLeg)
    "right-lower-leg" => Some(RightLowerLeg)
    "right-foot-ankle-twist" => Some(RightFootAnkleTwist)
    "right-foot-ankle" => Some(RightFootAnkle)
    "right-foot-subtalar" => Some(RightFootSubtalar)
    "right-foot-transverse" => Some(RightFootTransverse)
    "right-foot-ball" => Some(RightFootBall)
    _ => None
  }
}

///|
/// XRBody interface
pub type XRBody

pub extern "js" fn XRBody::to_js_value(self : XRBody) -> JsValue =
  #| (self) => self

pub extern "js" fn XRBody::_unknown_(self : XRBody) -> Unit =
  #| (self) => self._unknown_()

pub extern "js" fn XRBody::get_size(self : XRBody) -> Int =
  #| (self) => self.size

pub extern "js" fn XRBody::get(self : XRBody, key : XRBodyJoint) -> XRBodySpace =
  #| (self, key) => self.get(['hips', 'spine-lower', 'spine-middle', 'spine-upper', 'chest', 'neck', 'head', 'left-shoulder', 'left-scapula', 'left-arm-upper', 'left-arm-lower', 'left-hand-wrist-twist', 'right-shoulder', 'right-scapula', 'right-arm-upper', 'right-arm-lower', 'right-hand-wrist-twist', 'left-hand-palm', 'left-hand-wrist', 'left-hand-thumb-metacarpal', 'left-hand-thumb-phalanx-proximal', 'left-hand-thumb-phalanx-distal', 'left-hand-thumb-tip', 'left-hand-index-metacarpal', 'left-hand-index-phalanx-proximal', 'left-hand-index-phalanx-intermediate', 'left-hand-index-phalanx-distal', 'left-hand-index-tip', 'left-hand-middle-phalanx-metacarpal', 'left-hand-middle-phalanx-proximal', 'left-hand-middle-phalanx-intermediate', 'left-hand-middle-phalanx-distal', 'left-hand-middle-tip', 'left-hand-ring-metacarpal', 'left-hand-ring-phalanx-proximal', 'left-hand-ring-phalanx-intermediate', 'left-hand-ring-phalanx-distal', 'left-hand-ring-tip', 'left-hand-little-metacarpal', 'left-hand-little-phalanx-proximal', 'left-hand-little-phalanx-intermediate', 'left-hand-little-phalanx-distal', 'left-hand-little-tip', 'right-hand-palm', 'right-hand-wrist', 'right-hand-thumb-metacarpal', 'right-hand-thumb-phalanx-proximal', 'right-hand-thumb-phalanx-distal', 'right-hand-thumb-tip', 'right-hand-index-metacarpal', 'right-hand-index-phalanx-proximal', 'right-hand-index-phalanx-intermediate', 'right-hand-index-phalanx-distal', 'right-hand-index-tip', 'right-hand-middle-metacarpal', 'right-hand-middle-phalanx-proximal', 'right-hand-middle-phalanx-intermediate', 'right-hand-middle-phalanx-distal', 'right-hand-middle-tip', 'right-hand-ring-metacarpal', 'right-hand-ring-phalanx-proximal', 'right-hand-ring-phalanx-intermediate', 'right-hand-ring-phalanx-distal', 'right-hand-ring-tip', 'right-hand-little-metacarpal', 'right-hand-little-phalanx-proximal', 'right-hand-little-phalanx-intermediate', 'right-hand-little-phalanx-distal', 'right-hand-little-tip', 'left-upper-leg', 'left-lower-leg', 'left-foot-ankle-twist', 'left-foot-ankle', 'left-foot-subtalar', 'left-foot-transverse', 'left-foot-ball', 'right-upper-leg', 'right-lower-leg', 'right-foot-ankle-twist', 'right-foot-ankle', 'right-foot-subtalar', 'right-foot-transverse', 'right-foot-ball'][key])

///|
/// XRBodySpace interface
pub type XRBodySpace

pub extern "js" fn XRBodySpace::to_js_value(self : XRBodySpace) -> JsValue =
  #| (self) => self

pub extern "js" fn XRBodySpace::get_joint_name(self : XRBodySpace) -> XRBodyJoint =
  #| (self) => self.jointName

