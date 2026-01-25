// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webrtc-priority

///|
/// RTCPriorityType enum
pub(all) enum RTCPriorityType {
  VeryLow
  Low
  Medium
  High
}

///|
/// Convert to string value
pub fn RTCPriorityType::to_string(self : RTCPriorityType) -> String {
  match self {
    RTCPriorityType::VeryLow => "very-low"
    RTCPriorityType::Low => "low"
    RTCPriorityType::Medium => "medium"
    RTCPriorityType::High => "high"
  }
}

///|
/// Parse from string value
pub fn RTCPriorityType::from_string(s : String) -> RTCPriorityType? {
  match s {
    "very-low" => Some(RTCPriorityType::VeryLow)
    "low" => Some(RTCPriorityType::Low)
    "medium" => Some(RTCPriorityType::Medium)
    "high" => Some(RTCPriorityType::High)
    _ => None
  }
}

///|
/// RTCRtpEncodingParameters dictionary
pub struct RTCRtpEncodingParameters {
  priority : RTCPriorityType?
  networkPriority : RTCPriorityType?
  active : Bool?
  codec : RTCRtpCodec?
  maxBitrate : Int?
  maxFramerate : Double?
  scaleResolutionDownBy : Double?
  scalabilityMode : String?
}

///|
/// Create a new RTCRtpEncodingParameters with default values
pub fn RTCRtpEncodingParameters::default() -> RTCRtpEncodingParameters {
  RTCRtpEncodingParameters::{
    priority: None,
    networkPriority: None,
    active: None,
    codec: None,
    maxBitrate: None,
    maxFramerate: None,
    scaleResolutionDownBy: None,
    scalabilityMode: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn RTCRtpEncodingParameters::to_js(
  self : RTCRtpEncodingParameters,
) -> JsValue =
  #| (self) => ({
  #|   priority: ['very-low', 'low', 'medium', 'high'][self.priority],
  #|   networkPriority: ['very-low', 'low', 'medium', 'high'][self.networkPriority],
  #|   active: self.active,
  #|   codec: self.codec,
  #|   maxBitrate: self.maxBitrate,
  #|   maxFramerate: self.maxFramerate,
  #|   scaleResolutionDownBy: self.scaleResolutionDownBy,
  #|   scalabilityMode: self.scalabilityMode
  #| })

///|
/// RTCDataChannelInit dictionary
pub struct RTCDataChannelInit {
  priority : RTCPriorityType?
  ordered : Bool?
  maxPacketLifeTime : Int?
  maxRetransmits : Int?
  protocol : String?
  negotiated : Bool?
  id : Int?
}

///|
/// Create a new RTCDataChannelInit with default values
pub fn RTCDataChannelInit::default() -> RTCDataChannelInit {
  RTCDataChannelInit::{
    priority: None,
    ordered: None,
    maxPacketLifeTime: None,
    maxRetransmits: None,
    protocol: None,
    negotiated: None,
    id: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn RTCDataChannelInit::to_js(
  self : RTCDataChannelInit,
) -> JsValue =
  #| (self) => ({
  #|   priority: ['very-low', 'low', 'medium', 'high'][self.priority],
  #|   ordered: self.ordered,
  #|   maxPacketLifeTime: self.maxPacketLifeTime,
  #|   maxRetransmits: self.maxRetransmits,
  #|   protocol: self.protocol,
  #|   negotiated: self.negotiated,
  #|   id: self.id
  #| })
