// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webrtc

///|
/// RTCIceTransportPolicy enum
pub(all) enum RTCIceTransportPolicy {
  Relay
  All
} derive(Eq, Show)

///|
/// Convert to string value
pub fn RTCIceTransportPolicy::to_string(self : RTCIceTransportPolicy) -> String {
  match self {
    RTCIceTransportPolicy::Relay => "relay"
    RTCIceTransportPolicy::All => "all"
  }
}

///|
/// Parse from string value
pub fn RTCIceTransportPolicy::from_string(s : String) -> RTCIceTransportPolicy? {
  match s {
    "relay" => Some(RTCIceTransportPolicy::Relay)
    "all" => Some(RTCIceTransportPolicy::All)
    _ => None
  }
}

///|
/// RTCBundlePolicy enum
pub(all) enum RTCBundlePolicy {
  Balanced
  MaxCompat
  MaxBundle
} derive(Eq, Show)

///|
/// Convert to string value
pub fn RTCBundlePolicy::to_string(self : RTCBundlePolicy) -> String {
  match self {
    RTCBundlePolicy::Balanced => "balanced"
    RTCBundlePolicy::MaxCompat => "max-compat"
    RTCBundlePolicy::MaxBundle => "max-bundle"
  }
}

///|
/// Parse from string value
pub fn RTCBundlePolicy::from_string(s : String) -> RTCBundlePolicy? {
  match s {
    "balanced" => Some(RTCBundlePolicy::Balanced)
    "max-compat" => Some(RTCBundlePolicy::MaxCompat)
    "max-bundle" => Some(RTCBundlePolicy::MaxBundle)
    _ => None
  }
}

///|
/// RTCRtcpMuxPolicy enum
pub(all) enum RTCRtcpMuxPolicy {
  Require
} derive(Eq, Show)

///|
/// Convert to string value
pub fn RTCRtcpMuxPolicy::to_string(self : RTCRtcpMuxPolicy) -> String {
  match self {
    RTCRtcpMuxPolicy::Require => "require"
  }
}

///|
/// Parse from string value
pub fn RTCRtcpMuxPolicy::from_string(s : String) -> RTCRtcpMuxPolicy? {
  match s {
    "require" => Some(RTCRtcpMuxPolicy::Require)
    _ => None
  }
}

///|
/// RTCSignalingState enum
pub(all) enum RTCSignalingState {
  Stable
  HaveLocalOffer
  HaveRemoteOffer
  HaveLocalPranswer
  HaveRemotePranswer
  Closed
} derive(Eq, Show)

///|
/// Convert to string value
pub fn RTCSignalingState::to_string(self : RTCSignalingState) -> String {
  match self {
    RTCSignalingState::Stable => "stable"
    RTCSignalingState::HaveLocalOffer => "have-local-offer"
    RTCSignalingState::HaveRemoteOffer => "have-remote-offer"
    RTCSignalingState::HaveLocalPranswer => "have-local-pranswer"
    RTCSignalingState::HaveRemotePranswer => "have-remote-pranswer"
    RTCSignalingState::Closed => "closed"
  }
}

///|
/// Parse from string value
pub fn RTCSignalingState::from_string(s : String) -> RTCSignalingState? {
  match s {
    "stable" => Some(RTCSignalingState::Stable)
    "have-local-offer" => Some(RTCSignalingState::HaveLocalOffer)
    "have-remote-offer" => Some(RTCSignalingState::HaveRemoteOffer)
    "have-local-pranswer" => Some(RTCSignalingState::HaveLocalPranswer)
    "have-remote-pranswer" => Some(RTCSignalingState::HaveRemotePranswer)
    "closed" => Some(RTCSignalingState::Closed)
    _ => None
  }
}

///|
/// RTCIceGatheringState enum
pub(all) enum RTCIceGatheringState {
  New
  Gathering
  Complete
} derive(Eq, Show)

///|
/// Convert to string value
pub fn RTCIceGatheringState::to_string(self : RTCIceGatheringState) -> String {
  match self {
    RTCIceGatheringState::New => "new"
    RTCIceGatheringState::Gathering => "gathering"
    RTCIceGatheringState::Complete => "complete"
  }
}

///|
/// Parse from string value
pub fn RTCIceGatheringState::from_string(s : String) -> RTCIceGatheringState? {
  match s {
    "new" => Some(RTCIceGatheringState::New)
    "gathering" => Some(RTCIceGatheringState::Gathering)
    "complete" => Some(RTCIceGatheringState::Complete)
    _ => None
  }
}

///|
/// RTCPeerConnectionState enum
pub(all) enum RTCPeerConnectionState {
  Closed
  Failed
  Disconnected
  New
  Connecting
  Connected
} derive(Eq, Show)

///|
/// Convert to string value
pub fn RTCPeerConnectionState::to_string(
  self : RTCPeerConnectionState,
) -> String {
  match self {
    RTCPeerConnectionState::Closed => "closed"
    RTCPeerConnectionState::Failed => "failed"
    RTCPeerConnectionState::Disconnected => "disconnected"
    RTCPeerConnectionState::New => "new"
    RTCPeerConnectionState::Connecting => "connecting"
    RTCPeerConnectionState::Connected => "connected"
  }
}

///|
/// Parse from string value
pub fn RTCPeerConnectionState::from_string(
  s : String,
) -> RTCPeerConnectionState? {
  match s {
    "closed" => Some(RTCPeerConnectionState::Closed)
    "failed" => Some(RTCPeerConnectionState::Failed)
    "disconnected" => Some(RTCPeerConnectionState::Disconnected)
    "new" => Some(RTCPeerConnectionState::New)
    "connecting" => Some(RTCPeerConnectionState::Connecting)
    "connected" => Some(RTCPeerConnectionState::Connected)
    _ => None
  }
}

///|
/// RTCIceConnectionState enum
pub(all) enum RTCIceConnectionState {
  Closed
  Failed
  Disconnected
  New
  Checking
  Completed
  Connected
} derive(Eq, Show)

///|
/// Convert to string value
pub fn RTCIceConnectionState::to_string(self : RTCIceConnectionState) -> String {
  match self {
    RTCIceConnectionState::Closed => "closed"
    RTCIceConnectionState::Failed => "failed"
    RTCIceConnectionState::Disconnected => "disconnected"
    RTCIceConnectionState::New => "new"
    RTCIceConnectionState::Checking => "checking"
    RTCIceConnectionState::Completed => "completed"
    RTCIceConnectionState::Connected => "connected"
  }
}

///|
/// Parse from string value
pub fn RTCIceConnectionState::from_string(s : String) -> RTCIceConnectionState? {
  match s {
    "closed" => Some(RTCIceConnectionState::Closed)
    "failed" => Some(RTCIceConnectionState::Failed)
    "disconnected" => Some(RTCIceConnectionState::Disconnected)
    "new" => Some(RTCIceConnectionState::New)
    "checking" => Some(RTCIceConnectionState::Checking)
    "completed" => Some(RTCIceConnectionState::Completed)
    "connected" => Some(RTCIceConnectionState::Connected)
    _ => None
  }
}

///|
/// RTCSdpType enum
pub(all) enum RTCSdpType {
  Offer
  Pranswer
  Answer
  Rollback
} derive(Eq, Show)

///|
/// Convert to string value
pub fn RTCSdpType::to_string(self : RTCSdpType) -> String {
  match self {
    RTCSdpType::Offer => "offer"
    RTCSdpType::Pranswer => "pranswer"
    RTCSdpType::Answer => "answer"
    RTCSdpType::Rollback => "rollback"
  }
}

///|
/// Parse from string value
pub fn RTCSdpType::from_string(s : String) -> RTCSdpType? {
  match s {
    "offer" => Some(RTCSdpType::Offer)
    "pranswer" => Some(RTCSdpType::Pranswer)
    "answer" => Some(RTCSdpType::Answer)
    "rollback" => Some(RTCSdpType::Rollback)
    _ => None
  }
}

///|
/// RTCIceProtocol enum
pub(all) enum RTCIceProtocol {
  Udp
  Tcp
} derive(Eq, Show)

///|
/// Convert to string value
pub fn RTCIceProtocol::to_string(self : RTCIceProtocol) -> String {
  match self {
    RTCIceProtocol::Udp => "udp"
    RTCIceProtocol::Tcp => "tcp"
  }
}

///|
/// Parse from string value
pub fn RTCIceProtocol::from_string(s : String) -> RTCIceProtocol? {
  match s {
    "udp" => Some(RTCIceProtocol::Udp)
    "tcp" => Some(RTCIceProtocol::Tcp)
    _ => None
  }
}

///|
/// RTCIceTcpCandidateType enum
pub(all) enum RTCIceTcpCandidateType {
  Active
  Passive
  So
} derive(Eq, Show)

///|
/// Convert to string value
pub fn RTCIceTcpCandidateType::to_string(
  self : RTCIceTcpCandidateType,
) -> String {
  match self {
    RTCIceTcpCandidateType::Active => "active"
    RTCIceTcpCandidateType::Passive => "passive"
    RTCIceTcpCandidateType::So => "so"
  }
}

///|
/// Parse from string value
pub fn RTCIceTcpCandidateType::from_string(
  s : String,
) -> RTCIceTcpCandidateType? {
  match s {
    "active" => Some(RTCIceTcpCandidateType::Active)
    "passive" => Some(RTCIceTcpCandidateType::Passive)
    "so" => Some(RTCIceTcpCandidateType::So)
    _ => None
  }
}

///|
/// RTCIceCandidateType enum
pub(all) enum RTCIceCandidateType {
  Host
  Srflx
  Prflx
  Relay
} derive(Eq, Show)

///|
/// Convert to string value
pub fn RTCIceCandidateType::to_string(self : RTCIceCandidateType) -> String {
  match self {
    RTCIceCandidateType::Host => "host"
    RTCIceCandidateType::Srflx => "srflx"
    RTCIceCandidateType::Prflx => "prflx"
    RTCIceCandidateType::Relay => "relay"
  }
}

///|
/// Parse from string value
pub fn RTCIceCandidateType::from_string(s : String) -> RTCIceCandidateType? {
  match s {
    "host" => Some(RTCIceCandidateType::Host)
    "srflx" => Some(RTCIceCandidateType::Srflx)
    "prflx" => Some(RTCIceCandidateType::Prflx)
    "relay" => Some(RTCIceCandidateType::Relay)
    _ => None
  }
}

///|
/// RTCIceServerTransportProtocol enum
pub(all) enum RTCIceServerTransportProtocol {
  Udp
  Tcp
  Tls
} derive(Eq, Show)

///|
/// Convert to string value
pub fn RTCIceServerTransportProtocol::to_string(
  self : RTCIceServerTransportProtocol,
) -> String {
  match self {
    RTCIceServerTransportProtocol::Udp => "udp"
    RTCIceServerTransportProtocol::Tcp => "tcp"
    RTCIceServerTransportProtocol::Tls => "tls"
  }
}

///|
/// Parse from string value
pub fn RTCIceServerTransportProtocol::from_string(
  s : String,
) -> RTCIceServerTransportProtocol? {
  match s {
    "udp" => Some(RTCIceServerTransportProtocol::Udp)
    "tcp" => Some(RTCIceServerTransportProtocol::Tcp)
    "tls" => Some(RTCIceServerTransportProtocol::Tls)
    _ => None
  }
}

///|
/// RTCRtpTransceiverDirection enum
pub(all) enum RTCRtpTransceiverDirection {
  Sendrecv
  Sendonly
  Recvonly
  Inactive
  Stopped
} derive(Eq, Show)

///|
/// Convert to string value
pub fn RTCRtpTransceiverDirection::to_string(
  self : RTCRtpTransceiverDirection,
) -> String {
  match self {
    RTCRtpTransceiverDirection::Sendrecv => "sendrecv"
    RTCRtpTransceiverDirection::Sendonly => "sendonly"
    RTCRtpTransceiverDirection::Recvonly => "recvonly"
    RTCRtpTransceiverDirection::Inactive => "inactive"
    RTCRtpTransceiverDirection::Stopped => "stopped"
  }
}

///|
/// Parse from string value
pub fn RTCRtpTransceiverDirection::from_string(
  s : String,
) -> RTCRtpTransceiverDirection? {
  match s {
    "sendrecv" => Some(RTCRtpTransceiverDirection::Sendrecv)
    "sendonly" => Some(RTCRtpTransceiverDirection::Sendonly)
    "recvonly" => Some(RTCRtpTransceiverDirection::Recvonly)
    "inactive" => Some(RTCRtpTransceiverDirection::Inactive)
    "stopped" => Some(RTCRtpTransceiverDirection::Stopped)
    _ => None
  }
}

///|
/// RTCDtlsTransportState enum
pub(all) enum RTCDtlsTransportState {
  New
  Connecting
  Connected
  Closed
  Failed
} derive(Eq, Show)

///|
/// Convert to string value
pub fn RTCDtlsTransportState::to_string(self : RTCDtlsTransportState) -> String {
  match self {
    RTCDtlsTransportState::New => "new"
    RTCDtlsTransportState::Connecting => "connecting"
    RTCDtlsTransportState::Connected => "connected"
    RTCDtlsTransportState::Closed => "closed"
    RTCDtlsTransportState::Failed => "failed"
  }
}

///|
/// Parse from string value
pub fn RTCDtlsTransportState::from_string(s : String) -> RTCDtlsTransportState? {
  match s {
    "new" => Some(RTCDtlsTransportState::New)
    "connecting" => Some(RTCDtlsTransportState::Connecting)
    "connected" => Some(RTCDtlsTransportState::Connected)
    "closed" => Some(RTCDtlsTransportState::Closed)
    "failed" => Some(RTCDtlsTransportState::Failed)
    _ => None
  }
}

///|
/// RTCIceGathererState enum
pub(all) enum RTCIceGathererState {
  New
  Gathering
  Complete
} derive(Eq, Show)

///|
/// Convert to string value
pub fn RTCIceGathererState::to_string(self : RTCIceGathererState) -> String {
  match self {
    RTCIceGathererState::New => "new"
    RTCIceGathererState::Gathering => "gathering"
    RTCIceGathererState::Complete => "complete"
  }
}

///|
/// Parse from string value
pub fn RTCIceGathererState::from_string(s : String) -> RTCIceGathererState? {
  match s {
    "new" => Some(RTCIceGathererState::New)
    "gathering" => Some(RTCIceGathererState::Gathering)
    "complete" => Some(RTCIceGathererState::Complete)
    _ => None
  }
}

///|
/// RTCIceTransportState enum
pub(all) enum RTCIceTransportState {
  Closed
  Failed
  Disconnected
  New
  Checking
  Completed
  Connected
} derive(Eq, Show)

///|
/// Convert to string value
pub fn RTCIceTransportState::to_string(self : RTCIceTransportState) -> String {
  match self {
    RTCIceTransportState::Closed => "closed"
    RTCIceTransportState::Failed => "failed"
    RTCIceTransportState::Disconnected => "disconnected"
    RTCIceTransportState::New => "new"
    RTCIceTransportState::Checking => "checking"
    RTCIceTransportState::Completed => "completed"
    RTCIceTransportState::Connected => "connected"
  }
}

///|
/// Parse from string value
pub fn RTCIceTransportState::from_string(s : String) -> RTCIceTransportState? {
  match s {
    "closed" => Some(RTCIceTransportState::Closed)
    "failed" => Some(RTCIceTransportState::Failed)
    "disconnected" => Some(RTCIceTransportState::Disconnected)
    "new" => Some(RTCIceTransportState::New)
    "checking" => Some(RTCIceTransportState::Checking)
    "completed" => Some(RTCIceTransportState::Completed)
    "connected" => Some(RTCIceTransportState::Connected)
    _ => None
  }
}

///|
/// RTCIceRole enum
pub(all) enum RTCIceRole {
  Unknown
  Controlling
  Controlled
} derive(Eq, Show)

///|
/// Convert to string value
pub fn RTCIceRole::to_string(self : RTCIceRole) -> String {
  match self {
    RTCIceRole::Unknown => "unknown"
    RTCIceRole::Controlling => "controlling"
    RTCIceRole::Controlled => "controlled"
  }
}

///|
/// Parse from string value
pub fn RTCIceRole::from_string(s : String) -> RTCIceRole? {
  match s {
    "unknown" => Some(RTCIceRole::Unknown)
    "controlling" => Some(RTCIceRole::Controlling)
    "controlled" => Some(RTCIceRole::Controlled)
    _ => None
  }
}

///|
/// RTCIceComponent enum
pub(all) enum RTCIceComponent {
  Rtp
  Rtcp
} derive(Eq, Show)

///|
/// Convert to string value
pub fn RTCIceComponent::to_string(self : RTCIceComponent) -> String {
  match self {
    RTCIceComponent::Rtp => "rtp"
    RTCIceComponent::Rtcp => "rtcp"
  }
}

///|
/// Parse from string value
pub fn RTCIceComponent::from_string(s : String) -> RTCIceComponent? {
  match s {
    "rtp" => Some(RTCIceComponent::Rtp)
    "rtcp" => Some(RTCIceComponent::Rtcp)
    _ => None
  }
}

///|
/// RTCSctpTransportState enum
pub(all) enum RTCSctpTransportState {
  Connecting
  Connected
  Closed
} derive(Eq, Show)

///|
/// Convert to string value
pub fn RTCSctpTransportState::to_string(self : RTCSctpTransportState) -> String {
  match self {
    RTCSctpTransportState::Connecting => "connecting"
    RTCSctpTransportState::Connected => "connected"
    RTCSctpTransportState::Closed => "closed"
  }
}

///|
/// Parse from string value
pub fn RTCSctpTransportState::from_string(s : String) -> RTCSctpTransportState? {
  match s {
    "connecting" => Some(RTCSctpTransportState::Connecting)
    "connected" => Some(RTCSctpTransportState::Connected)
    "closed" => Some(RTCSctpTransportState::Closed)
    _ => None
  }
}

///|
/// RTCDataChannelState enum
pub(all) enum RTCDataChannelState {
  Connecting
  Open
  Closing
  Closed
} derive(Eq, Show)

///|
/// Convert to string value
pub fn RTCDataChannelState::to_string(self : RTCDataChannelState) -> String {
  match self {
    RTCDataChannelState::Connecting => "connecting"
    RTCDataChannelState::Open => "open"
    RTCDataChannelState::Closing => "closing"
    RTCDataChannelState::Closed => "closed"
  }
}

///|
/// Parse from string value
pub fn RTCDataChannelState::from_string(s : String) -> RTCDataChannelState? {
  match s {
    "connecting" => Some(RTCDataChannelState::Connecting)
    "open" => Some(RTCDataChannelState::Open)
    "closing" => Some(RTCDataChannelState::Closing)
    "closed" => Some(RTCDataChannelState::Closed)
    _ => None
  }
}

///|
/// RTCErrorDetailType enum
pub(all) enum RTCErrorDetailType {
  DataChannelFailure
  DtlsFailure
  FingerprintFailure
  SctpFailure
  SdpSyntaxError
  HardwareEncoderNotAvailable
  HardwareEncoderError
} derive(Eq, Show)

///|
/// Convert to string value
pub fn RTCErrorDetailType::to_string(self : RTCErrorDetailType) -> String {
  match self {
    RTCErrorDetailType::DataChannelFailure => "data-channel-failure"
    RTCErrorDetailType::DtlsFailure => "dtls-failure"
    RTCErrorDetailType::FingerprintFailure => "fingerprint-failure"
    RTCErrorDetailType::SctpFailure => "sctp-failure"
    RTCErrorDetailType::SdpSyntaxError => "sdp-syntax-error"
    RTCErrorDetailType::HardwareEncoderNotAvailable =>
      "hardware-encoder-not-available"
    RTCErrorDetailType::HardwareEncoderError => "hardware-encoder-error"
  }
}

///|
/// Parse from string value
pub fn RTCErrorDetailType::from_string(s : String) -> RTCErrorDetailType? {
  match s {
    "data-channel-failure" => Some(RTCErrorDetailType::DataChannelFailure)
    "dtls-failure" => Some(RTCErrorDetailType::DtlsFailure)
    "fingerprint-failure" => Some(RTCErrorDetailType::FingerprintFailure)
    "sctp-failure" => Some(RTCErrorDetailType::SctpFailure)
    "sdp-syntax-error" => Some(RTCErrorDetailType::SdpSyntaxError)
    "hardware-encoder-not-available" =>
      Some(RTCErrorDetailType::HardwareEncoderNotAvailable)
    "hardware-encoder-error" => Some(RTCErrorDetailType::HardwareEncoderError)
    _ => None
  }
}

///|
/// RTCPeerConnectionErrorCallback callback interface
pub type RTCPeerConnectionErrorCallback

///|
/// Create RTCPeerConnectionErrorCallback from a MoonBit function
pub extern "js" fn RTCPeerConnectionErrorCallback::from_fn(
  handler : (DOMException) -> Unit,
) -> RTCPeerConnectionErrorCallback =
  #| (handler) => (a0) => handler(a0)

///|
/// RTCSessionDescriptionCallback callback interface
pub type RTCSessionDescriptionCallback

///|
/// Create RTCSessionDescriptionCallback from a MoonBit function
pub extern "js" fn RTCSessionDescriptionCallback::from_fn(
  handler : (RTCSessionDescriptionInit) -> Unit,
) -> RTCSessionDescriptionCallback =
  #| (handler) => (a0) => handler(a0)

///|
/// RTCIceServer dictionary
pub(all) struct RTCIceServer {
  urls : StringOrArrayOfString
  username : String?
  credential : String?
}

///|
/// Create a new RTCIceServer
pub fn RTCIceServer::new(urls~ : StringOrArrayOfString) -> RTCIceServer {
  RTCIceServer::{ urls, username: None, credential: None }
}

///|
extern "js" fn RTCIceServer::to_js_ffi(self : RTCIceServer) -> JsValue =
  #| (self) => ({
  #|   urls: self.urls,
  #|   username: self.username,
  #|   credential: self.credential
  #| })

///|
/// Convert to JsValue
pub fn RTCIceServer::to_js(self : RTCIceServer) -> JsValue {
  RTCIceServer::to_js_ffi(self)
}

///|
extern "js" fn RTCIceServer::from_js_ffi(value : JsValue) -> RTCIceServer =
  #| (v) => ({
  #|   urls: v.urls,
  #|   username: v.username,
  #|   credential: v.credential
  #| })

///|
/// Convert from JsValue
pub fn RTCIceServer::from_js(value : JsValue) -> RTCIceServer {
  RTCIceServer::from_js_ffi(value)
}

///|
/// RTCOfferAnswerOptions dictionary
pub(all) struct RTCOfferAnswerOptions {}

///|
/// Create a new RTCOfferAnswerOptions with default values
pub fn RTCOfferAnswerOptions::default() -> RTCOfferAnswerOptions {
  RTCOfferAnswerOptions::{  }
}

///|
extern "js" fn RTCOfferAnswerOptions::to_js_ffi(
  self : RTCOfferAnswerOptions,
) -> JsValue =
  #| (self) => ({
  #| })

///|
/// Convert to JsValue
pub fn RTCOfferAnswerOptions::to_js(self : RTCOfferAnswerOptions) -> JsValue {
  RTCOfferAnswerOptions::to_js_ffi(self)
}

///|
extern "js" fn RTCOfferAnswerOptions::from_js_ffi(
  value : JsValue,
) -> RTCOfferAnswerOptions =
  #| (v) => ({
  #| })

///|
/// Convert from JsValue
pub fn RTCOfferAnswerOptions::from_js(value : JsValue) -> RTCOfferAnswerOptions {
  RTCOfferAnswerOptions::from_js_ffi(value)
}

///|
/// RTCOfferOptions dictionary
pub(all) struct RTCOfferOptions {
  iceRestart : Bool?
  offerToReceiveAudio : Bool?
  offerToReceiveVideo : Bool?
}

///|
/// Create a new RTCOfferOptions with default values
pub fn RTCOfferOptions::default() -> RTCOfferOptions {
  RTCOfferOptions::{
    iceRestart: None,
    offerToReceiveAudio: None,
    offerToReceiveVideo: None,
  }
}

///|
extern "js" fn RTCOfferOptions::to_js_ffi(self : RTCOfferOptions) -> JsValue =
  #| (self) => ({
  #|   iceRestart: (self.iceRestart === -1 ? undefined : self.iceRestart),
  #|   offerToReceiveAudio: (self.offerToReceiveAudio === -1 ? undefined : self.offerToReceiveAudio),
  #|   offerToReceiveVideo: (self.offerToReceiveVideo === -1 ? undefined : self.offerToReceiveVideo)
  #| })

///|
/// Convert to JsValue
pub fn RTCOfferOptions::to_js(self : RTCOfferOptions) -> JsValue {
  RTCOfferOptions::to_js_ffi(self)
}

///|
extern "js" fn RTCOfferOptions::from_js_ffi(value : JsValue) -> RTCOfferOptions =
  #| (v) => ({
  #|   iceRestart: (v.iceRestart === undefined ? -1 : v.iceRestart),
  #|   offerToReceiveAudio: (v.offerToReceiveAudio === undefined ? -1 : v.offerToReceiveAudio),
  #|   offerToReceiveVideo: (v.offerToReceiveVideo === undefined ? -1 : v.offerToReceiveVideo)
  #| })

///|
/// Convert from JsValue
pub fn RTCOfferOptions::from_js(value : JsValue) -> RTCOfferOptions {
  RTCOfferOptions::from_js_ffi(value)
}

///|
/// RTCAnswerOptions dictionary
pub(all) struct RTCAnswerOptions {}

///|
/// Create a new RTCAnswerOptions with default values
pub fn RTCAnswerOptions::default() -> RTCAnswerOptions {
  RTCAnswerOptions::{  }
}

///|
extern "js" fn RTCAnswerOptions::to_js_ffi(self : RTCAnswerOptions) -> JsValue =
  #| (self) => ({
  #| })

///|
/// Convert to JsValue
pub fn RTCAnswerOptions::to_js(self : RTCAnswerOptions) -> JsValue {
  RTCAnswerOptions::to_js_ffi(self)
}

///|
extern "js" fn RTCAnswerOptions::from_js_ffi(
  value : JsValue,
) -> RTCAnswerOptions =
  #| (v) => ({
  #| })

///|
/// Convert from JsValue
pub fn RTCAnswerOptions::from_js(value : JsValue) -> RTCAnswerOptions {
  RTCAnswerOptions::from_js_ffi(value)
}

///|
/// RTCSessionDescriptionInit dictionary
pub(all) struct RTCSessionDescriptionInit {
  type_ : RTCSdpType
  sdp : String?
}

///|
/// Create a new RTCSessionDescriptionInit
pub fn RTCSessionDescriptionInit::new(
  type_~ : RTCSdpType,
) -> RTCSessionDescriptionInit {
  RTCSessionDescriptionInit::{ type_, sdp: None }
}

///|
extern "js" fn RTCSessionDescriptionInit::to_js_ffi(
  self : RTCSessionDescriptionInit,
) -> JsValue =
  #| (self) => ({
  #|   type: ['offer', 'pranswer', 'answer', 'rollback'][self.type_],
  #|   sdp: self.sdp
  #| })

///|
/// Convert to JsValue
pub fn RTCSessionDescriptionInit::to_js(
  self : RTCSessionDescriptionInit,
) -> JsValue {
  RTCSessionDescriptionInit::to_js_ffi(self)
}

///|
extern "js" fn RTCSessionDescriptionInit::from_js_ffi(
  value : JsValue,
) -> RTCSessionDescriptionInit =
  #| (v) => ({
  #|   type_: ['offer', 'pranswer', 'answer', 'rollback'].indexOf(v.type),
  #|   sdp: v.sdp
  #| })

///|
/// Convert from JsValue
pub fn RTCSessionDescriptionInit::from_js(
  value : JsValue,
) -> RTCSessionDescriptionInit {
  RTCSessionDescriptionInit::from_js_ffi(value)
}

///|
/// RTCLocalSessionDescriptionInit dictionary
pub(all) struct RTCLocalSessionDescriptionInit {
  type_ : RTCSdpType?
  sdp : String?
}

///|
/// Create a new RTCLocalSessionDescriptionInit with default values
pub fn RTCLocalSessionDescriptionInit::default() -> RTCLocalSessionDescriptionInit {
  RTCLocalSessionDescriptionInit::{ type_: None, sdp: None }
}

///|
extern "js" fn RTCLocalSessionDescriptionInit::to_js_ffi(
  self : RTCLocalSessionDescriptionInit,
) -> JsValue =
  #| (self) => ({
  #|   type: ((() => { const v = self.type_; if (v === undefined) return undefined; return ['offer', 'pranswer', 'answer', 'rollback'][v]; })()),
  #|   sdp: self.sdp
  #| })

///|
/// Convert to JsValue
pub fn RTCLocalSessionDescriptionInit::to_js(
  self : RTCLocalSessionDescriptionInit,
) -> JsValue {
  RTCLocalSessionDescriptionInit::to_js_ffi(self)
}

///|
extern "js" fn RTCLocalSessionDescriptionInit::from_js_ffi(
  value : JsValue,
) -> RTCLocalSessionDescriptionInit =
  #| (v) => ({
  #|   type_: (v.type === undefined ? undefined : ['offer', 'pranswer', 'answer', 'rollback'].indexOf(v.type)),
  #|   sdp: v.sdp
  #| })

///|
/// Convert from JsValue
pub fn RTCLocalSessionDescriptionInit::from_js(
  value : JsValue,
) -> RTCLocalSessionDescriptionInit {
  RTCLocalSessionDescriptionInit::from_js_ffi(value)
}

///|
/// RTCIceCandidateInit dictionary
pub(all) struct RTCIceCandidateInit {
  candidate : String?
  sdpMid : Nullable[String]
  sdpMLineIndex : Nullable[Int]
  usernameFragment : Nullable[String]
}

///|
/// Create a new RTCIceCandidateInit with default values
pub fn RTCIceCandidateInit::default() -> RTCIceCandidateInit {
  RTCIceCandidateInit::{
    candidate: None,
    sdpMid: Nullable::Undefined,
    sdpMLineIndex: Nullable::Undefined,
    usernameFragment: Nullable::Undefined,
  }
}

///|
extern "js" fn RTCIceCandidateInit::to_js_ffi(
  self : RTCIceCandidateInit,
) -> JsValue =
  #| (self) => ({
  #|   candidate: self.candidate,
  #|   sdpMid: ((() => { const v = self.sdpMid; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   sdpMLineIndex: ((() => { const v = self.sdpMLineIndex; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   usernameFragment: ((() => { const v = self.usernameFragment; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn RTCIceCandidateInit::to_js(self : RTCIceCandidateInit) -> JsValue {
  RTCIceCandidateInit::to_js_ffi(self)
}

///|
extern "js" fn RTCIceCandidateInit::from_js_ffi(
  value : JsValue,
) -> RTCIceCandidateInit =
  #| (v) => ({
  #|   candidate: v.candidate,
  #|   sdpMid: (v.sdpMid === undefined ? { $tag: 0 } : v.sdpMid === null ? { $tag: 1 } : { $tag: 2, _0: v.sdpMid }),
  #|   sdpMLineIndex: (v.sdpMLineIndex === undefined ? { $tag: 0 } : v.sdpMLineIndex === null ? { $tag: 1 } : { $tag: 2, _0: v.sdpMLineIndex }),
  #|   usernameFragment: (v.usernameFragment === undefined ? { $tag: 0 } : v.usernameFragment === null ? { $tag: 1 } : { $tag: 2, _0: v.usernameFragment })
  #| })

///|
/// Convert from JsValue
pub fn RTCIceCandidateInit::from_js(value : JsValue) -> RTCIceCandidateInit {
  RTCIceCandidateInit::from_js_ffi(value)
}

///|
/// RTCLocalIceCandidateInit dictionary
pub(all) struct RTCLocalIceCandidateInit {
  candidate : String?
  sdpMid : Nullable[String]
  sdpMLineIndex : Nullable[Int]
  usernameFragment : Nullable[String]
  relayProtocol : Nullable[RTCIceServerTransportProtocol]
  url : Nullable[String]
}

///|
/// Create a new RTCLocalIceCandidateInit with default values
pub fn RTCLocalIceCandidateInit::default() -> RTCLocalIceCandidateInit {
  RTCLocalIceCandidateInit::{
    candidate: None,
    sdpMid: Nullable::Undefined,
    sdpMLineIndex: Nullable::Undefined,
    usernameFragment: Nullable::Undefined,
    relayProtocol: Nullable::Undefined,
    url: Nullable::Undefined,
  }
}

///|
extern "js" fn RTCLocalIceCandidateInit::to_js_ffi(
  self : RTCLocalIceCandidateInit,
) -> JsValue =
  #| (self) => ({
  #|   candidate: self.candidate,
  #|   sdpMid: ((() => { const v = self.sdpMid; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   sdpMLineIndex: ((() => { const v = self.sdpMLineIndex; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   usernameFragment: ((() => { const v = self.usernameFragment; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   relayProtocol: ((() => { const v = self.relayProtocol; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return ['udp', 'tcp', 'tls'][v._0]; })()),
  #|   url: ((() => { const v = self.url; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn RTCLocalIceCandidateInit::to_js(
  self : RTCLocalIceCandidateInit,
) -> JsValue {
  RTCLocalIceCandidateInit::to_js_ffi(self)
}

///|
extern "js" fn RTCLocalIceCandidateInit::from_js_ffi(
  value : JsValue,
) -> RTCLocalIceCandidateInit =
  #| (v) => ({
  #|   candidate: v.candidate,
  #|   sdpMid: (v.sdpMid === undefined ? { $tag: 0 } : v.sdpMid === null ? { $tag: 1 } : { $tag: 2, _0: v.sdpMid }),
  #|   sdpMLineIndex: (v.sdpMLineIndex === undefined ? { $tag: 0 } : v.sdpMLineIndex === null ? { $tag: 1 } : { $tag: 2, _0: v.sdpMLineIndex }),
  #|   usernameFragment: (v.usernameFragment === undefined ? { $tag: 0 } : v.usernameFragment === null ? { $tag: 1 } : { $tag: 2, _0: v.usernameFragment }),
  #|   relayProtocol: (v.relayProtocol === undefined ? { $tag: 0 } : v.relayProtocol === null ? { $tag: 1 } : { $tag: 2, _0: ['udp', 'tcp', 'tls'].indexOf(v.relayProtocol) }),
  #|   url: (v.url === undefined ? { $tag: 0 } : v.url === null ? { $tag: 1 } : { $tag: 2, _0: v.url })
  #| })

///|
/// Convert from JsValue
pub fn RTCLocalIceCandidateInit::from_js(
  value : JsValue,
) -> RTCLocalIceCandidateInit {
  RTCLocalIceCandidateInit::from_js_ffi(value)
}

///|
/// RTCPeerConnectionIceEventInit dictionary
pub(all) struct RTCPeerConnectionIceEventInit {
  candidate : Nullable[RTCIceCandidate]
  url : Nullable[String]
}

///|
/// Create a new RTCPeerConnectionIceEventInit with default values
pub fn RTCPeerConnectionIceEventInit::default() -> RTCPeerConnectionIceEventInit {
  RTCPeerConnectionIceEventInit::{
    candidate: Nullable::Undefined,
    url: Nullable::Undefined,
  }
}

///|
extern "js" fn RTCPeerConnectionIceEventInit::to_js_ffi(
  self : RTCPeerConnectionIceEventInit,
) -> JsValue =
  #| (self) => ({
  #|   candidate: ((() => { const v = self.candidate; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   url: ((() => { const v = self.url; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn RTCPeerConnectionIceEventInit::to_js(
  self : RTCPeerConnectionIceEventInit,
) -> JsValue {
  RTCPeerConnectionIceEventInit::to_js_ffi(self)
}

///|
extern "js" fn RTCPeerConnectionIceEventInit::from_js_ffi(
  value : JsValue,
) -> RTCPeerConnectionIceEventInit =
  #| (v) => ({
  #|   candidate: (v.candidate === undefined ? { $tag: 0 } : v.candidate === null ? { $tag: 1 } : { $tag: 2, _0: v.candidate }),
  #|   url: (v.url === undefined ? { $tag: 0 } : v.url === null ? { $tag: 1 } : { $tag: 2, _0: v.url })
  #| })

///|
/// Convert from JsValue
pub fn RTCPeerConnectionIceEventInit::from_js(
  value : JsValue,
) -> RTCPeerConnectionIceEventInit {
  RTCPeerConnectionIceEventInit::from_js_ffi(value)
}

///|
/// RTCPeerConnectionIceErrorEventInit dictionary
pub(all) struct RTCPeerConnectionIceErrorEventInit {
  address : Nullable[String]
  port : Nullable[Int]
  url : String?
  errorCode : Int
  errorText : String?
}

///|
/// Create a new RTCPeerConnectionIceErrorEventInit with default values
pub fn RTCPeerConnectionIceErrorEventInit::default() -> RTCPeerConnectionIceErrorEventInit {
  RTCPeerConnectionIceErrorEventInit::{
    address: Nullable::Undefined,
    port: Nullable::Undefined,
    url: None,
    errorCode: 0,
    errorText: None,
  }
}

///|
extern "js" fn RTCPeerConnectionIceErrorEventInit::to_js_ffi(
  self : RTCPeerConnectionIceErrorEventInit,
) -> JsValue =
  #| (self) => ({
  #|   address: ((() => { const v = self.address; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   port: ((() => { const v = self.port; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   url: self.url,
  #|   errorCode: self.errorCode,
  #|   errorText: self.errorText
  #| })

///|
/// Convert to JsValue
pub fn RTCPeerConnectionIceErrorEventInit::to_js(
  self : RTCPeerConnectionIceErrorEventInit,
) -> JsValue {
  RTCPeerConnectionIceErrorEventInit::to_js_ffi(self)
}

///|
extern "js" fn RTCPeerConnectionIceErrorEventInit::from_js_ffi(
  value : JsValue,
) -> RTCPeerConnectionIceErrorEventInit =
  #| (v) => ({
  #|   address: (v.address === undefined ? { $tag: 0 } : v.address === null ? { $tag: 1 } : { $tag: 2, _0: v.address }),
  #|   port: (v.port === undefined ? { $tag: 0 } : v.port === null ? { $tag: 1 } : { $tag: 2, _0: v.port }),
  #|   url: v.url,
  #|   errorCode: v.errorCode,
  #|   errorText: v.errorText
  #| })

///|
/// Convert from JsValue
pub fn RTCPeerConnectionIceErrorEventInit::from_js(
  value : JsValue,
) -> RTCPeerConnectionIceErrorEventInit {
  RTCPeerConnectionIceErrorEventInit::from_js_ffi(value)
}

///|
/// RTCCertificateExpiration dictionary
pub(all) struct RTCCertificateExpiration {
  expires : Int64?
}

///|
/// Create a new RTCCertificateExpiration with default values
pub fn RTCCertificateExpiration::default() -> RTCCertificateExpiration {
  RTCCertificateExpiration::{ expires: None }
}

///|
extern "js" fn RTCCertificateExpiration::to_js_ffi(
  self : RTCCertificateExpiration,
) -> JsValue =
  #| (self) => ({
  #|   expires: self.expires
  #| })

///|
/// Convert to JsValue
pub fn RTCCertificateExpiration::to_js(
  self : RTCCertificateExpiration,
) -> JsValue {
  RTCCertificateExpiration::to_js_ffi(self)
}

///|
extern "js" fn RTCCertificateExpiration::from_js_ffi(
  value : JsValue,
) -> RTCCertificateExpiration =
  #| (v) => ({
  #|   expires: v.expires
  #| })

///|
/// Convert from JsValue
pub fn RTCCertificateExpiration::from_js(
  value : JsValue,
) -> RTCCertificateExpiration {
  RTCCertificateExpiration::from_js_ffi(value)
}

///|
/// RTCRtpTransceiverInit dictionary
pub(all) struct RTCRtpTransceiverInit {
  direction : RTCRtpTransceiverDirection?
  streams : Array[MediaStream]?
  sendEncodings : Array[RTCRtpEncodingParameters]?
}

///|
/// Create a new RTCRtpTransceiverInit with default values
pub fn RTCRtpTransceiverInit::default() -> RTCRtpTransceiverInit {
  RTCRtpTransceiverInit::{ direction: None, streams: None, sendEncodings: None }
}

///|
extern "js" fn RTCRtpTransceiverInit::to_js_ffi(
  self : RTCRtpTransceiverInit,
) -> JsValue =
  #| (self) => ({
  #|   direction: ((() => { const v = self.direction; if (v === undefined) return undefined; return ['sendrecv', 'sendonly', 'recvonly', 'inactive', 'stopped'][v]; })()),
  #|   streams: ((() => { const v = self.streams; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   sendEncodings: ((() => { const v = self.sendEncodings; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn RTCRtpTransceiverInit::to_js(self : RTCRtpTransceiverInit) -> JsValue {
  RTCRtpTransceiverInit::to_js_ffi(self)
}

///|
extern "js" fn RTCRtpTransceiverInit::from_js_ffi(
  value : JsValue,
) -> RTCRtpTransceiverInit =
  #| (v) => ({
  #|   direction: (v.direction === undefined ? undefined : ['sendrecv', 'sendonly', 'recvonly', 'inactive', 'stopped'].indexOf(v.direction)),
  #|   streams: (v.streams === undefined ? { $tag: 0 } : { $tag: 1, _0: v.streams }),
  #|   sendEncodings: (v.sendEncodings === undefined ? { $tag: 0 } : { $tag: 1, _0: v.sendEncodings })
  #| })

///|
/// Convert from JsValue
pub fn RTCRtpTransceiverInit::from_js(value : JsValue) -> RTCRtpTransceiverInit {
  RTCRtpTransceiverInit::from_js_ffi(value)
}

///|
/// RTCRtpParameters dictionary
pub(all) struct RTCRtpParameters {
  headerExtensions : Array[RTCRtpHeaderExtensionParameters]
  rtcp : RTCRtcpParameters
  codecs : Array[RTCRtpCodecParameters]
}

///|
/// Create a new RTCRtpParameters
pub fn RTCRtpParameters::new(rtcp~ : RTCRtcpParameters) -> RTCRtpParameters {
  RTCRtpParameters::{ headerExtensions: [], rtcp, codecs: [] }
}

///|
extern "js" fn RTCRtpParameters::to_js_ffi(self : RTCRtpParameters) -> JsValue =
  #| (self) => ({
  #|   headerExtensions: self.headerExtensions,
  #|   rtcp: self.rtcp,
  #|   codecs: self.codecs
  #| })

///|
/// Convert to JsValue
pub fn RTCRtpParameters::to_js(self : RTCRtpParameters) -> JsValue {
  RTCRtpParameters::to_js_ffi(self)
}

///|
extern "js" fn RTCRtpParameters::from_js_ffi(
  value : JsValue,
) -> RTCRtpParameters =
  #| (v) => ({
  #|   headerExtensions: v.headerExtensions,
  #|   rtcp: v.rtcp,
  #|   codecs: v.codecs
  #| })

///|
/// Convert from JsValue
pub fn RTCRtpParameters::from_js(value : JsValue) -> RTCRtpParameters {
  RTCRtpParameters::from_js_ffi(value)
}

///|
/// RTCRtpSendParameters dictionary
pub(all) struct RTCRtpSendParameters {
  headerExtensions : Array[RTCRtpHeaderExtensionParameters]
  rtcp : RTCRtcpParameters
  codecs : Array[RTCRtpCodecParameters]
  transactionId : String
  encodings : Array[RTCRtpEncodingParameters]
  degradationPreference : RTCDegradationPreference?
}

///|
/// Create a new RTCRtpSendParameters
pub fn RTCRtpSendParameters::new(
  rtcp~ : RTCRtcpParameters,
) -> RTCRtpSendParameters {
  RTCRtpSendParameters::{
    headerExtensions: [],
    rtcp,
    codecs: [],
    transactionId: "",
    encodings: [],
    degradationPreference: None,
  }
}

///|
extern "js" fn RTCRtpSendParameters::to_js_ffi(
  self : RTCRtpSendParameters,
) -> JsValue =
  #| (self) => ({
  #|   headerExtensions: self.headerExtensions,
  #|   rtcp: self.rtcp,
  #|   codecs: self.codecs,
  #|   transactionId: self.transactionId,
  #|   encodings: self.encodings,
  #|   degradationPreference: ((() => { const v = self.degradationPreference; if (v === undefined) return undefined; return ['maintain-framerate', 'maintain-resolution', 'balanced', 'maintain-framerate-and-resolution'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn RTCRtpSendParameters::to_js(self : RTCRtpSendParameters) -> JsValue {
  RTCRtpSendParameters::to_js_ffi(self)
}

///|
extern "js" fn RTCRtpSendParameters::from_js_ffi(
  value : JsValue,
) -> RTCRtpSendParameters =
  #| (v) => ({
  #|   headerExtensions: v.headerExtensions,
  #|   rtcp: v.rtcp,
  #|   codecs: v.codecs,
  #|   transactionId: v.transactionId,
  #|   encodings: v.encodings,
  #|   degradationPreference: (v.degradationPreference === undefined ? undefined : ['maintain-framerate', 'maintain-resolution', 'balanced', 'maintain-framerate-and-resolution'].indexOf(v.degradationPreference))
  #| })

///|
/// Convert from JsValue
pub fn RTCRtpSendParameters::from_js(value : JsValue) -> RTCRtpSendParameters {
  RTCRtpSendParameters::from_js_ffi(value)
}

///|
/// RTCRtpReceiveParameters dictionary
pub(all) struct RTCRtpReceiveParameters {
  headerExtensions : Array[RTCRtpHeaderExtensionParameters]
  rtcp : RTCRtcpParameters
  codecs : Array[RTCRtpCodecParameters]
}

///|
/// Create a new RTCRtpReceiveParameters
pub fn RTCRtpReceiveParameters::new(
  rtcp~ : RTCRtcpParameters,
) -> RTCRtpReceiveParameters {
  RTCRtpReceiveParameters::{ headerExtensions: [], rtcp, codecs: [] }
}

///|
extern "js" fn RTCRtpReceiveParameters::to_js_ffi(
  self : RTCRtpReceiveParameters,
) -> JsValue =
  #| (self) => ({
  #|   headerExtensions: self.headerExtensions,
  #|   rtcp: self.rtcp,
  #|   codecs: self.codecs
  #| })

///|
/// Convert to JsValue
pub fn RTCRtpReceiveParameters::to_js(
  self : RTCRtpReceiveParameters,
) -> JsValue {
  RTCRtpReceiveParameters::to_js_ffi(self)
}

///|
extern "js" fn RTCRtpReceiveParameters::from_js_ffi(
  value : JsValue,
) -> RTCRtpReceiveParameters =
  #| (v) => ({
  #|   headerExtensions: v.headerExtensions,
  #|   rtcp: v.rtcp,
  #|   codecs: v.codecs
  #| })

///|
/// Convert from JsValue
pub fn RTCRtpReceiveParameters::from_js(
  value : JsValue,
) -> RTCRtpReceiveParameters {
  RTCRtpReceiveParameters::from_js_ffi(value)
}

///|
/// RTCRtpCodingParameters dictionary
pub(all) struct RTCRtpCodingParameters {
  rid : String?
}

///|
/// Create a new RTCRtpCodingParameters with default values
pub fn RTCRtpCodingParameters::default() -> RTCRtpCodingParameters {
  RTCRtpCodingParameters::{ rid: None }
}

///|
extern "js" fn RTCRtpCodingParameters::to_js_ffi(
  self : RTCRtpCodingParameters,
) -> JsValue =
  #| (self) => ({
  #|   rid: self.rid
  #| })

///|
/// Convert to JsValue
pub fn RTCRtpCodingParameters::to_js(self : RTCRtpCodingParameters) -> JsValue {
  RTCRtpCodingParameters::to_js_ffi(self)
}

///|
extern "js" fn RTCRtpCodingParameters::from_js_ffi(
  value : JsValue,
) -> RTCRtpCodingParameters =
  #| (v) => ({
  #|   rid: v.rid
  #| })

///|
/// Convert from JsValue
pub fn RTCRtpCodingParameters::from_js(
  value : JsValue,
) -> RTCRtpCodingParameters {
  RTCRtpCodingParameters::from_js_ffi(value)
}

///|
/// RTCRtcpParameters dictionary
pub(all) struct RTCRtcpParameters {
  cname : String?
  reducedSize : Bool?
}

///|
/// Create a new RTCRtcpParameters with default values
pub fn RTCRtcpParameters::default() -> RTCRtcpParameters {
  RTCRtcpParameters::{ cname: None, reducedSize: None }
}

///|
extern "js" fn RTCRtcpParameters::to_js_ffi(
  self : RTCRtcpParameters,
) -> JsValue =
  #| (self) => ({
  #|   cname: self.cname,
  #|   reducedSize: (self.reducedSize === -1 ? undefined : self.reducedSize)
  #| })

///|
/// Convert to JsValue
pub fn RTCRtcpParameters::to_js(self : RTCRtcpParameters) -> JsValue {
  RTCRtcpParameters::to_js_ffi(self)
}

///|
extern "js" fn RTCRtcpParameters::from_js_ffi(
  value : JsValue,
) -> RTCRtcpParameters =
  #| (v) => ({
  #|   cname: v.cname,
  #|   reducedSize: (v.reducedSize === undefined ? -1 : v.reducedSize)
  #| })

///|
/// Convert from JsValue
pub fn RTCRtcpParameters::from_js(value : JsValue) -> RTCRtcpParameters {
  RTCRtcpParameters::from_js_ffi(value)
}

///|
/// RTCRtpHeaderExtensionParameters dictionary
pub(all) struct RTCRtpHeaderExtensionParameters {
  uri : String
  id : Int
  encrypted : Bool?
}

///|
/// Create a new RTCRtpHeaderExtensionParameters with default values
pub fn RTCRtpHeaderExtensionParameters::default() -> RTCRtpHeaderExtensionParameters {
  RTCRtpHeaderExtensionParameters::{ uri: "", id: 0, encrypted: None }
}

///|
extern "js" fn RTCRtpHeaderExtensionParameters::to_js_ffi(
  self : RTCRtpHeaderExtensionParameters,
) -> JsValue =
  #| (self) => ({
  #|   uri: self.uri,
  #|   id: self.id,
  #|   encrypted: (self.encrypted === -1 ? undefined : self.encrypted)
  #| })

///|
/// Convert to JsValue
pub fn RTCRtpHeaderExtensionParameters::to_js(
  self : RTCRtpHeaderExtensionParameters,
) -> JsValue {
  RTCRtpHeaderExtensionParameters::to_js_ffi(self)
}

///|
extern "js" fn RTCRtpHeaderExtensionParameters::from_js_ffi(
  value : JsValue,
) -> RTCRtpHeaderExtensionParameters =
  #| (v) => ({
  #|   uri: v.uri,
  #|   id: v.id,
  #|   encrypted: (v.encrypted === undefined ? -1 : v.encrypted)
  #| })

///|
/// Convert from JsValue
pub fn RTCRtpHeaderExtensionParameters::from_js(
  value : JsValue,
) -> RTCRtpHeaderExtensionParameters {
  RTCRtpHeaderExtensionParameters::from_js_ffi(value)
}

///|
/// RTCRtpCodec dictionary
pub(all) struct RTCRtpCodec {
  mimeType : String
  clockRate : Int
  channels : Int?
  sdpFmtpLine : String?
}

///|
/// Create a new RTCRtpCodec with default values
pub fn RTCRtpCodec::default() -> RTCRtpCodec {
  RTCRtpCodec::{ mimeType: "", clockRate: 0, channels: None, sdpFmtpLine: None }
}

///|
extern "js" fn RTCRtpCodec::to_js_ffi(self : RTCRtpCodec) -> JsValue =
  #| (self) => ({
  #|   mimeType: self.mimeType,
  #|   clockRate: self.clockRate,
  #|   channels: self.channels,
  #|   sdpFmtpLine: self.sdpFmtpLine
  #| })

///|
/// Convert to JsValue
pub fn RTCRtpCodec::to_js(self : RTCRtpCodec) -> JsValue {
  RTCRtpCodec::to_js_ffi(self)
}

///|
extern "js" fn RTCRtpCodec::from_js_ffi(value : JsValue) -> RTCRtpCodec =
  #| (v) => ({
  #|   mimeType: v.mimeType,
  #|   clockRate: v.clockRate,
  #|   channels: v.channels,
  #|   sdpFmtpLine: v.sdpFmtpLine
  #| })

///|
/// Convert from JsValue
pub fn RTCRtpCodec::from_js(value : JsValue) -> RTCRtpCodec {
  RTCRtpCodec::from_js_ffi(value)
}

///|
/// RTCRtpCodecParameters dictionary
pub(all) struct RTCRtpCodecParameters {
  mimeType : String
  clockRate : Int
  channels : Int?
  sdpFmtpLine : String?
  payloadType : Int
}

///|
/// Create a new RTCRtpCodecParameters with default values
pub fn RTCRtpCodecParameters::default() -> RTCRtpCodecParameters {
  RTCRtpCodecParameters::{
    mimeType: "",
    clockRate: 0,
    channels: None,
    sdpFmtpLine: None,
    payloadType: 0,
  }
}

///|
extern "js" fn RTCRtpCodecParameters::to_js_ffi(
  self : RTCRtpCodecParameters,
) -> JsValue =
  #| (self) => ({
  #|   mimeType: self.mimeType,
  #|   clockRate: self.clockRate,
  #|   channels: self.channels,
  #|   sdpFmtpLine: self.sdpFmtpLine,
  #|   payloadType: self.payloadType
  #| })

///|
/// Convert to JsValue
pub fn RTCRtpCodecParameters::to_js(self : RTCRtpCodecParameters) -> JsValue {
  RTCRtpCodecParameters::to_js_ffi(self)
}

///|
extern "js" fn RTCRtpCodecParameters::from_js_ffi(
  value : JsValue,
) -> RTCRtpCodecParameters =
  #| (v) => ({
  #|   mimeType: v.mimeType,
  #|   clockRate: v.clockRate,
  #|   channels: v.channels,
  #|   sdpFmtpLine: v.sdpFmtpLine,
  #|   payloadType: v.payloadType
  #| })

///|
/// Convert from JsValue
pub fn RTCRtpCodecParameters::from_js(value : JsValue) -> RTCRtpCodecParameters {
  RTCRtpCodecParameters::from_js_ffi(value)
}

///|
/// RTCRtpCapabilities dictionary
pub(all) struct RTCRtpCapabilities {
  codecs : Array[RTCRtpCodec]
  headerExtensions : Array[RTCRtpHeaderExtensionCapability]
}

///|
/// Create a new RTCRtpCapabilities with default values
pub fn RTCRtpCapabilities::default() -> RTCRtpCapabilities {
  RTCRtpCapabilities::{ codecs: [], headerExtensions: [] }
}

///|
extern "js" fn RTCRtpCapabilities::to_js_ffi(
  self : RTCRtpCapabilities,
) -> JsValue =
  #| (self) => ({
  #|   codecs: self.codecs,
  #|   headerExtensions: self.headerExtensions
  #| })

///|
/// Convert to JsValue
pub fn RTCRtpCapabilities::to_js(self : RTCRtpCapabilities) -> JsValue {
  RTCRtpCapabilities::to_js_ffi(self)
}

///|
extern "js" fn RTCRtpCapabilities::from_js_ffi(
  value : JsValue,
) -> RTCRtpCapabilities =
  #| (v) => ({
  #|   codecs: v.codecs,
  #|   headerExtensions: v.headerExtensions
  #| })

///|
/// Convert from JsValue
pub fn RTCRtpCapabilities::from_js(value : JsValue) -> RTCRtpCapabilities {
  RTCRtpCapabilities::from_js_ffi(value)
}

///|
/// RTCRtpHeaderExtensionCapability dictionary
pub(all) struct RTCRtpHeaderExtensionCapability {
  uri : String
}

///|
/// Create a new RTCRtpHeaderExtensionCapability with default values
pub fn RTCRtpHeaderExtensionCapability::default() -> RTCRtpHeaderExtensionCapability {
  RTCRtpHeaderExtensionCapability::{ uri: "" }
}

///|
extern "js" fn RTCRtpHeaderExtensionCapability::to_js_ffi(
  self : RTCRtpHeaderExtensionCapability,
) -> JsValue =
  #| (self) => ({
  #|   uri: self.uri
  #| })

///|
/// Convert to JsValue
pub fn RTCRtpHeaderExtensionCapability::to_js(
  self : RTCRtpHeaderExtensionCapability,
) -> JsValue {
  RTCRtpHeaderExtensionCapability::to_js_ffi(self)
}

///|
extern "js" fn RTCRtpHeaderExtensionCapability::from_js_ffi(
  value : JsValue,
) -> RTCRtpHeaderExtensionCapability =
  #| (v) => ({
  #|   uri: v.uri
  #| })

///|
/// Convert from JsValue
pub fn RTCRtpHeaderExtensionCapability::from_js(
  value : JsValue,
) -> RTCRtpHeaderExtensionCapability {
  RTCRtpHeaderExtensionCapability::from_js_ffi(value)
}

///|
/// RTCSetParameterOptions dictionary
pub(all) struct RTCSetParameterOptions {}

///|
/// Create a new RTCSetParameterOptions with default values
pub fn RTCSetParameterOptions::default() -> RTCSetParameterOptions {
  RTCSetParameterOptions::{  }
}

///|
extern "js" fn RTCSetParameterOptions::to_js_ffi(
  self : RTCSetParameterOptions,
) -> JsValue =
  #| (self) => ({
  #| })

///|
/// Convert to JsValue
pub fn RTCSetParameterOptions::to_js(self : RTCSetParameterOptions) -> JsValue {
  RTCSetParameterOptions::to_js_ffi(self)
}

///|
extern "js" fn RTCSetParameterOptions::from_js_ffi(
  value : JsValue,
) -> RTCSetParameterOptions =
  #| (v) => ({
  #| })

///|
/// Convert from JsValue
pub fn RTCSetParameterOptions::from_js(
  value : JsValue,
) -> RTCSetParameterOptions {
  RTCSetParameterOptions::from_js_ffi(value)
}

///|
/// RTCRtpContributingSource dictionary
pub(all) struct RTCRtpContributingSource {
  timestamp : DOMHighResTimeStamp
  source : Int
  audioLevel : Double?
  rtpTimestamp : Int
}

///|
/// Create a new RTCRtpContributingSource
pub fn RTCRtpContributingSource::new(
  timestamp~ : DOMHighResTimeStamp,
) -> RTCRtpContributingSource {
  RTCRtpContributingSource::{
    timestamp,
    source: 0,
    audioLevel: None,
    rtpTimestamp: 0,
  }
}

///|
extern "js" fn RTCRtpContributingSource::to_js_ffi(
  self : RTCRtpContributingSource,
) -> JsValue =
  #| (self) => ({
  #|   timestamp: self.timestamp,
  #|   source: self.source,
  #|   audioLevel: self.audioLevel,
  #|   rtpTimestamp: self.rtpTimestamp
  #| })

///|
/// Convert to JsValue
pub fn RTCRtpContributingSource::to_js(
  self : RTCRtpContributingSource,
) -> JsValue {
  RTCRtpContributingSource::to_js_ffi(self)
}

///|
extern "js" fn RTCRtpContributingSource::from_js_ffi(
  value : JsValue,
) -> RTCRtpContributingSource =
  #| (v) => ({
  #|   timestamp: v.timestamp,
  #|   source: v.source,
  #|   audioLevel: v.audioLevel,
  #|   rtpTimestamp: v.rtpTimestamp
  #| })

///|
/// Convert from JsValue
pub fn RTCRtpContributingSource::from_js(
  value : JsValue,
) -> RTCRtpContributingSource {
  RTCRtpContributingSource::from_js_ffi(value)
}

///|
/// RTCRtpSynchronizationSource dictionary
pub(all) struct RTCRtpSynchronizationSource {
  timestamp : DOMHighResTimeStamp
  source : Int
  audioLevel : Double?
  rtpTimestamp : Int
}

///|
/// Create a new RTCRtpSynchronizationSource
pub fn RTCRtpSynchronizationSource::new(
  timestamp~ : DOMHighResTimeStamp,
) -> RTCRtpSynchronizationSource {
  RTCRtpSynchronizationSource::{
    timestamp,
    source: 0,
    audioLevel: None,
    rtpTimestamp: 0,
  }
}

///|
extern "js" fn RTCRtpSynchronizationSource::to_js_ffi(
  self : RTCRtpSynchronizationSource,
) -> JsValue =
  #| (self) => ({
  #|   timestamp: self.timestamp,
  #|   source: self.source,
  #|   audioLevel: self.audioLevel,
  #|   rtpTimestamp: self.rtpTimestamp
  #| })

///|
/// Convert to JsValue
pub fn RTCRtpSynchronizationSource::to_js(
  self : RTCRtpSynchronizationSource,
) -> JsValue {
  RTCRtpSynchronizationSource::to_js_ffi(self)
}

///|
extern "js" fn RTCRtpSynchronizationSource::from_js_ffi(
  value : JsValue,
) -> RTCRtpSynchronizationSource =
  #| (v) => ({
  #|   timestamp: v.timestamp,
  #|   source: v.source,
  #|   audioLevel: v.audioLevel,
  #|   rtpTimestamp: v.rtpTimestamp
  #| })

///|
/// Convert from JsValue
pub fn RTCRtpSynchronizationSource::from_js(
  value : JsValue,
) -> RTCRtpSynchronizationSource {
  RTCRtpSynchronizationSource::from_js_ffi(value)
}

///|
/// RTCDtlsFingerprint dictionary
pub(all) struct RTCDtlsFingerprint {
  algorithm : String?
  value : String?
}

///|
/// Create a new RTCDtlsFingerprint with default values
pub fn RTCDtlsFingerprint::default() -> RTCDtlsFingerprint {
  RTCDtlsFingerprint::{ algorithm: None, value: None }
}

///|
extern "js" fn RTCDtlsFingerprint::to_js_ffi(
  self : RTCDtlsFingerprint,
) -> JsValue =
  #| (self) => ({
  #|   algorithm: self.algorithm,
  #|   value: self.value
  #| })

///|
/// Convert to JsValue
pub fn RTCDtlsFingerprint::to_js(self : RTCDtlsFingerprint) -> JsValue {
  RTCDtlsFingerprint::to_js_ffi(self)
}

///|
extern "js" fn RTCDtlsFingerprint::from_js_ffi(
  value : JsValue,
) -> RTCDtlsFingerprint =
  #| (v) => ({
  #|   algorithm: v.algorithm,
  #|   value: v.value
  #| })

///|
/// Convert from JsValue
pub fn RTCDtlsFingerprint::from_js(value : JsValue) -> RTCDtlsFingerprint {
  RTCDtlsFingerprint::from_js_ffi(value)
}

///|
/// RTCIceParameters dictionary
pub(all) struct RTCIceParameters {
  usernameFragment : String?
  password : String?
  iceLite : Bool?
}

///|
/// Create a new RTCIceParameters with default values
pub fn RTCIceParameters::default() -> RTCIceParameters {
  RTCIceParameters::{ usernameFragment: None, password: None, iceLite: None }
}

///|
extern "js" fn RTCIceParameters::to_js_ffi(self : RTCIceParameters) -> JsValue =
  #| (self) => ({
  #|   usernameFragment: self.usernameFragment,
  #|   password: self.password,
  #|   iceLite: (self.iceLite === -1 ? undefined : self.iceLite)
  #| })

///|
/// Convert to JsValue
pub fn RTCIceParameters::to_js(self : RTCIceParameters) -> JsValue {
  RTCIceParameters::to_js_ffi(self)
}

///|
extern "js" fn RTCIceParameters::from_js_ffi(
  value : JsValue,
) -> RTCIceParameters =
  #| (v) => ({
  #|   usernameFragment: v.usernameFragment,
  #|   password: v.password,
  #|   iceLite: (v.iceLite === undefined ? -1 : v.iceLite)
  #| })

///|
/// Convert from JsValue
pub fn RTCIceParameters::from_js(value : JsValue) -> RTCIceParameters {
  RTCIceParameters::from_js_ffi(value)
}

///|
/// RTCTrackEventInit dictionary
pub(all) struct RTCTrackEventInit {
  receiver : RTCRtpReceiver
  track : MediaStreamTrack
  streams : Array[MediaStream]?
  transceiver : RTCRtpTransceiver
}

///|
/// Create a new RTCTrackEventInit
pub fn RTCTrackEventInit::new(
  receiver~ : RTCRtpReceiver,
  track~ : MediaStreamTrack,
  transceiver~ : RTCRtpTransceiver,
) -> RTCTrackEventInit {
  RTCTrackEventInit::{ receiver, track, streams: None, transceiver }
}

///|
extern "js" fn RTCTrackEventInit::to_js_ffi(
  self : RTCTrackEventInit,
) -> JsValue =
  #| (self) => ({
  #|   receiver: self.receiver,
  #|   track: self.track,
  #|   streams: ((() => { const v = self.streams; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   transceiver: self.transceiver
  #| })

///|
/// Convert to JsValue
pub fn RTCTrackEventInit::to_js(self : RTCTrackEventInit) -> JsValue {
  RTCTrackEventInit::to_js_ffi(self)
}

///|
extern "js" fn RTCTrackEventInit::from_js_ffi(
  value : JsValue,
) -> RTCTrackEventInit =
  #| (v) => ({
  #|   receiver: v.receiver,
  #|   track: v.track,
  #|   streams: (v.streams === undefined ? { $tag: 0 } : { $tag: 1, _0: v.streams }),
  #|   transceiver: v.transceiver
  #| })

///|
/// Convert from JsValue
pub fn RTCTrackEventInit::from_js(value : JsValue) -> RTCTrackEventInit {
  RTCTrackEventInit::from_js_ffi(value)
}

///|
/// RTCDataChannelEventInit dictionary
pub(all) struct RTCDataChannelEventInit {
  channel : RTCDataChannel
}

///|
/// Create a new RTCDataChannelEventInit
pub fn RTCDataChannelEventInit::new(
  channel~ : RTCDataChannel,
) -> RTCDataChannelEventInit {
  RTCDataChannelEventInit::{ channel, }
}

///|
extern "js" fn RTCDataChannelEventInit::to_js_ffi(
  self : RTCDataChannelEventInit,
) -> JsValue =
  #| (self) => ({
  #|   channel: self.channel
  #| })

///|
/// Convert to JsValue
pub fn RTCDataChannelEventInit::to_js(
  self : RTCDataChannelEventInit,
) -> JsValue {
  RTCDataChannelEventInit::to_js_ffi(self)
}

///|
extern "js" fn RTCDataChannelEventInit::from_js_ffi(
  value : JsValue,
) -> RTCDataChannelEventInit =
  #| (v) => ({
  #|   channel: v.channel
  #| })

///|
/// Convert from JsValue
pub fn RTCDataChannelEventInit::from_js(
  value : JsValue,
) -> RTCDataChannelEventInit {
  RTCDataChannelEventInit::from_js_ffi(value)
}

///|
/// RTCDTMFToneChangeEventInit dictionary
pub(all) struct RTCDTMFToneChangeEventInit {
  tone : String?
}

///|
/// Create a new RTCDTMFToneChangeEventInit with default values
pub fn RTCDTMFToneChangeEventInit::default() -> RTCDTMFToneChangeEventInit {
  RTCDTMFToneChangeEventInit::{ tone: None }
}

///|
extern "js" fn RTCDTMFToneChangeEventInit::to_js_ffi(
  self : RTCDTMFToneChangeEventInit,
) -> JsValue =
  #| (self) => ({
  #|   tone: self.tone
  #| })

///|
/// Convert to JsValue
pub fn RTCDTMFToneChangeEventInit::to_js(
  self : RTCDTMFToneChangeEventInit,
) -> JsValue {
  RTCDTMFToneChangeEventInit::to_js_ffi(self)
}

///|
extern "js" fn RTCDTMFToneChangeEventInit::from_js_ffi(
  value : JsValue,
) -> RTCDTMFToneChangeEventInit =
  #| (v) => ({
  #|   tone: v.tone
  #| })

///|
/// Convert from JsValue
pub fn RTCDTMFToneChangeEventInit::from_js(
  value : JsValue,
) -> RTCDTMFToneChangeEventInit {
  RTCDTMFToneChangeEventInit::from_js_ffi(value)
}

///|
/// RTCStats dictionary
pub(all) struct RTCStats {
  timestamp : DOMHighResTimeStamp
  type_ : RTCStatsType
  id : String
}

///|
/// Create a new RTCStats
pub fn RTCStats::new(
  timestamp~ : DOMHighResTimeStamp,
  type_~ : RTCStatsType,
) -> RTCStats {
  RTCStats::{ timestamp, type_, id: "" }
}

///|
extern "js" fn RTCStats::to_js_ffi(self : RTCStats) -> JsValue =
  #| (self) => ({
  #|   timestamp: self.timestamp,
  #|   type: ['codec', 'inbound-rtp', 'outbound-rtp', 'remote-inbound-rtp', 'remote-outbound-rtp', 'media-source', 'media-playout', 'peer-connection', 'data-channel', 'transport', 'candidate-pair', 'local-candidate', 'remote-candidate', 'certificate'][self.type_],
  #|   id: self.id
  #| })

///|
/// Convert to JsValue
pub fn RTCStats::to_js(self : RTCStats) -> JsValue {
  RTCStats::to_js_ffi(self)
}

///|
extern "js" fn RTCStats::from_js_ffi(value : JsValue) -> RTCStats =
  #| (v) => ({
  #|   timestamp: v.timestamp,
  #|   type_: ['codec', 'inbound-rtp', 'outbound-rtp', 'remote-inbound-rtp', 'remote-outbound-rtp', 'media-source', 'media-playout', 'peer-connection', 'data-channel', 'transport', 'candidate-pair', 'local-candidate', 'remote-candidate', 'certificate'].indexOf(v.type),
  #|   id: v.id
  #| })

///|
/// Convert from JsValue
pub fn RTCStats::from_js(value : JsValue) -> RTCStats {
  RTCStats::from_js_ffi(value)
}

///|
/// RTCErrorEventInit dictionary
pub(all) struct RTCErrorEventInit {
  error : RTCError
}

///|
/// Create a new RTCErrorEventInit
pub fn RTCErrorEventInit::new(error~ : RTCError) -> RTCErrorEventInit {
  RTCErrorEventInit::{ error, }
}

///|
extern "js" fn RTCErrorEventInit::to_js_ffi(
  self : RTCErrorEventInit,
) -> JsValue =
  #| (self) => ({
  #|   error: self.error
  #| })

///|
/// Convert to JsValue
pub fn RTCErrorEventInit::to_js(self : RTCErrorEventInit) -> JsValue {
  RTCErrorEventInit::to_js_ffi(self)
}

///|
extern "js" fn RTCErrorEventInit::from_js_ffi(
  value : JsValue,
) -> RTCErrorEventInit =
  #| (v) => ({
  #|   error: v.error
  #| })

///|
/// Convert from JsValue
pub fn RTCErrorEventInit::from_js(value : JsValue) -> RTCErrorEventInit {
  RTCErrorEventInit::from_js_ffi(value)
}

///|
/// RTCPeerConnection interface
pub type RTCPeerConnection

///|
pub extern "js" fn RTCPeerConnection::to_js_value(
  self : RTCPeerConnection,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to RTCPeerConnection (unchecked)
pub extern "js" fn RTCPeerConnection::from_js_value(
  v : JsValue,
) -> RTCPeerConnection =
  #| (v) => v

///|
/// Safely cast JsValue to RTCPeerConnection (checked with instanceof)
pub extern "js" fn RTCPeerConnection::from_js_value_opt(
  v : JsValue,
) -> RTCPeerConnection? =
  #| (v) => (v instanceof RTCPeerConnection) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to RTCPeerConnection (checked with instanceof)
pub extern "js" fn JsValue::as_rtc_peer_connection(
  self : JsValue,
) -> RTCPeerConnection? =
  #| (self) => (self instanceof RTCPeerConnection) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to RTCPeerConnection (unchecked)
pub extern "js" fn JsValue::to_rtc_peer_connection(
  self : JsValue,
) -> RTCPeerConnection =
  #| (self) => self

///|
pub extern "js" fn RTCPeerConnection::to_event_target(
  self : RTCPeerConnection,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn RTCPeerConnection::new() -> RTCPeerConnection =
  #| () => new RTCPeerConnection()

///|
extern "js" fn RTCPeerConnection::new_with_configuration_ffi(
  configuration : JsValue,
) -> RTCPeerConnection =
  #| (configuration) => new RTCPeerConnection(configuration)

///|
pub fn RTCPeerConnection::new_with_configuration(
  configuration : RTCConfiguration,
) -> RTCPeerConnection {
  RTCPeerConnection::new_with_configuration_ffi(configuration.to_js())
}

///|
pub extern "js" fn RTCPeerConnection::create_offer(
  self : RTCPeerConnection,
) -> Promise[RTCSessionDescriptionInit] =
  #| (self) => self.createOffer().then(v => ({
  #|   type_: ['offer', 'pranswer', 'answer', 'rollback'].indexOf(v.type),
  #|   sdp: v.sdp
  #| }))

///|
extern "js" fn RTCPeerConnection::create_offer_with_options_ffi(
  self : RTCPeerConnection,
  options : JsValue,
) -> Promise[RTCSessionDescriptionInit] =
  #| (self, options) => self.createOffer(options).then(v => ({
  #|   type_: ['offer', 'pranswer', 'answer', 'rollback'].indexOf(v.type),
  #|   sdp: v.sdp
  #| }))

///|
pub fn RTCPeerConnection::create_offer_with_options(
  self : RTCPeerConnection,
  options : RTCOfferOptions,
) -> Promise[RTCSessionDescriptionInit] {
  RTCPeerConnection::create_offer_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn RTCPeerConnection::create_offer_with_success_callback_rtc_session_description_callback_and_failure_callback_rtc_peer_connection_error_callback(
  self : RTCPeerConnection,
  success_callback : RTCSessionDescriptionCallback,
  failure_callback : RTCPeerConnectionErrorCallback,
) -> Promise[Unit] =
  #| (self, success_callback, failure_callback) => self.createOffer(success_callback, failure_callback)

///|
extern "js" fn RTCPeerConnection::create_offer_with_success_callback_rtc_session_description_callback_and_failure_callback_rtc_peer_connection_error_callback_and_options_rtc_offer_options_ffi(
  self : RTCPeerConnection,
  success_callback : RTCSessionDescriptionCallback,
  failure_callback : RTCPeerConnectionErrorCallback,
  options : JsValue,
) -> Promise[Unit] =
  #| (self, success_callback, failure_callback, options) => self.createOffer(success_callback, failure_callback, options)

///|
pub fn RTCPeerConnection::create_offer_with_success_callback_rtc_session_description_callback_and_failure_callback_rtc_peer_connection_error_callback_and_options_rtc_offer_options(
  self : RTCPeerConnection,
  success_callback : RTCSessionDescriptionCallback,
  failure_callback : RTCPeerConnectionErrorCallback,
  options : RTCOfferOptions,
) -> Promise[Unit] {
  RTCPeerConnection::create_offer_with_success_callback_rtc_session_description_callback_and_failure_callback_rtc_peer_connection_error_callback_and_options_rtc_offer_options_ffi(
    self,
    success_callback,
    failure_callback,
    options.to_js(),
  )
}

///|
pub extern "js" fn RTCPeerConnection::create_answer(
  self : RTCPeerConnection,
) -> Promise[RTCSessionDescriptionInit] =
  #| (self) => self.createAnswer().then(v => ({
  #|   type_: ['offer', 'pranswer', 'answer', 'rollback'].indexOf(v.type),
  #|   sdp: v.sdp
  #| }))

///|
extern "js" fn RTCPeerConnection::create_answer_with_options_ffi(
  self : RTCPeerConnection,
  options : JsValue,
) -> Promise[RTCSessionDescriptionInit] =
  #| (self, options) => self.createAnswer(options).then(v => ({
  #|   type_: ['offer', 'pranswer', 'answer', 'rollback'].indexOf(v.type),
  #|   sdp: v.sdp
  #| }))

///|
pub fn RTCPeerConnection::create_answer_with_options(
  self : RTCPeerConnection,
  options : RTCAnswerOptions,
) -> Promise[RTCSessionDescriptionInit] {
  RTCPeerConnection::create_answer_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn RTCPeerConnection::create_answer_with_success_callback_rtc_session_description_callback_and_failure_callback_rtc_peer_connection_error_callback(
  self : RTCPeerConnection,
  success_callback : RTCSessionDescriptionCallback,
  failure_callback : RTCPeerConnectionErrorCallback,
) -> Promise[Unit] =
  #| (self, success_callback, failure_callback) => self.createAnswer(success_callback, failure_callback)

///|
pub extern "js" fn RTCPeerConnection::set_local_description(
  self : RTCPeerConnection,
) -> Promise[Unit] =
  #| (self) => self.setLocalDescription()

///|
extern "js" fn RTCPeerConnection::set_local_description_with_description_ffi(
  self : RTCPeerConnection,
  description : JsValue,
) -> Promise[Unit] =
  #| (self, description) => self.setLocalDescription(description)

///|
pub fn RTCPeerConnection::set_local_description_with_description(
  self : RTCPeerConnection,
  description : RTCLocalSessionDescriptionInit,
) -> Promise[Unit] {
  RTCPeerConnection::set_local_description_with_description_ffi(
    self,
    description.to_js(),
  )
}

///|
extern "js" fn RTCPeerConnection::set_local_description_with_description_rtc_local_session_description_init_and_success_callback_void_function_and_failure_callback_rtc_peer_connection_error_callback_ffi(
  self : RTCPeerConnection,
  description : JsValue,
  success_callback : VoidFunction,
  failure_callback : RTCPeerConnectionErrorCallback,
) -> Promise[Unit] =
  #| (self, description, success_callback, failure_callback) => self.setLocalDescription(description, success_callback, failure_callback)

///|
pub fn RTCPeerConnection::set_local_description_with_description_rtc_local_session_description_init_and_success_callback_void_function_and_failure_callback_rtc_peer_connection_error_callback(
  self : RTCPeerConnection,
  description : RTCLocalSessionDescriptionInit,
  success_callback : VoidFunction,
  failure_callback : RTCPeerConnectionErrorCallback,
) -> Promise[Unit] {
  RTCPeerConnection::set_local_description_with_description_rtc_local_session_description_init_and_success_callback_void_function_and_failure_callback_rtc_peer_connection_error_callback_ffi(
    self,
    description.to_js(),
    success_callback,
    failure_callback,
  )
}

///|
pub extern "js" fn RTCPeerConnection::get_local_description(
  self : RTCPeerConnection,
) -> RTCSessionDescription? =
  #| (self) => (() => { const v = self.localDescription; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn RTCPeerConnection::get_current_local_description(
  self : RTCPeerConnection,
) -> RTCSessionDescription? =
  #| (self) => (() => { const v = self.currentLocalDescription; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn RTCPeerConnection::get_pending_local_description(
  self : RTCPeerConnection,
) -> RTCSessionDescription? =
  #| (self) => (() => { const v = self.pendingLocalDescription; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
extern "js" fn RTCPeerConnection::set_remote_description_ffi(
  self : RTCPeerConnection,
  description : JsValue,
) -> Promise[Unit] =
  #| (self, description) => self.setRemoteDescription(description)

///|
pub fn RTCPeerConnection::set_remote_description(
  self : RTCPeerConnection,
  description : RTCSessionDescriptionInit,
) -> Promise[Unit] {
  RTCPeerConnection::set_remote_description_ffi(self, description.to_js())
}

///|
extern "js" fn RTCPeerConnection::set_remote_description_with_description_rtc_session_description_init_and_success_callback_void_function_and_failure_callback_rtc_peer_connection_error_callback_ffi(
  self : RTCPeerConnection,
  description : JsValue,
  success_callback : VoidFunction,
  failure_callback : RTCPeerConnectionErrorCallback,
) -> Promise[Unit] =
  #| (self, description, success_callback, failure_callback) => self.setRemoteDescription(description, success_callback, failure_callback)

///|
pub fn RTCPeerConnection::set_remote_description_with_description_rtc_session_description_init_and_success_callback_void_function_and_failure_callback_rtc_peer_connection_error_callback(
  self : RTCPeerConnection,
  description : RTCSessionDescriptionInit,
  success_callback : VoidFunction,
  failure_callback : RTCPeerConnectionErrorCallback,
) -> Promise[Unit] {
  RTCPeerConnection::set_remote_description_with_description_rtc_session_description_init_and_success_callback_void_function_and_failure_callback_rtc_peer_connection_error_callback_ffi(
    self,
    description.to_js(),
    success_callback,
    failure_callback,
  )
}

///|
pub extern "js" fn RTCPeerConnection::get_remote_description(
  self : RTCPeerConnection,
) -> RTCSessionDescription? =
  #| (self) => (() => { const v = self.remoteDescription; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn RTCPeerConnection::get_current_remote_description(
  self : RTCPeerConnection,
) -> RTCSessionDescription? =
  #| (self) => (() => { const v = self.currentRemoteDescription; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn RTCPeerConnection::get_pending_remote_description(
  self : RTCPeerConnection,
) -> RTCSessionDescription? =
  #| (self) => (() => { const v = self.pendingRemoteDescription; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn RTCPeerConnection::add_ice_candidate(
  self : RTCPeerConnection,
) -> Promise[Unit] =
  #| (self) => self.addIceCandidate()

///|
extern "js" fn RTCPeerConnection::add_ice_candidate_with_candidate_ffi(
  self : RTCPeerConnection,
  candidate : JsValue,
) -> Promise[Unit] =
  #| (self, candidate) => self.addIceCandidate(candidate)

///|
pub fn RTCPeerConnection::add_ice_candidate_with_candidate(
  self : RTCPeerConnection,
  candidate : RTCIceCandidateInit,
) -> Promise[Unit] {
  RTCPeerConnection::add_ice_candidate_with_candidate_ffi(
    self,
    candidate.to_js(),
  )
}

///|
extern "js" fn RTCPeerConnection::add_ice_candidate_with_candidate_rtc_ice_candidate_init_and_success_callback_void_function_and_failure_callback_rtc_peer_connection_error_callback_ffi(
  self : RTCPeerConnection,
  candidate : JsValue,
  success_callback : VoidFunction,
  failure_callback : RTCPeerConnectionErrorCallback,
) -> Promise[Unit] =
  #| (self, candidate, success_callback, failure_callback) => self.addIceCandidate(candidate, success_callback, failure_callback)

///|
pub fn RTCPeerConnection::add_ice_candidate_with_candidate_rtc_ice_candidate_init_and_success_callback_void_function_and_failure_callback_rtc_peer_connection_error_callback(
  self : RTCPeerConnection,
  candidate : RTCIceCandidateInit,
  success_callback : VoidFunction,
  failure_callback : RTCPeerConnectionErrorCallback,
) -> Promise[Unit] {
  RTCPeerConnection::add_ice_candidate_with_candidate_rtc_ice_candidate_init_and_success_callback_void_function_and_failure_callback_rtc_peer_connection_error_callback_ffi(
    self,
    candidate.to_js(),
    success_callback,
    failure_callback,
  )
}

///|
pub extern "js" fn RTCPeerConnection::get_signaling_state(
  self : RTCPeerConnection,
) -> RTCSignalingState =
  #| (self) => ['stable', 'have-local-offer', 'have-remote-offer', 'have-local-pranswer', 'have-remote-pranswer', 'closed'].indexOf(self.signalingState)

///|
pub extern "js" fn RTCPeerConnection::get_ice_gathering_state(
  self : RTCPeerConnection,
) -> RTCIceGatheringState =
  #| (self) => ['new', 'gathering', 'complete'].indexOf(self.iceGatheringState)

///|
pub extern "js" fn RTCPeerConnection::get_ice_connection_state(
  self : RTCPeerConnection,
) -> RTCIceConnectionState =
  #| (self) => ['closed', 'failed', 'disconnected', 'new', 'checking', 'completed', 'connected'].indexOf(self.iceConnectionState)

///|
pub extern "js" fn RTCPeerConnection::get_connection_state(
  self : RTCPeerConnection,
) -> RTCPeerConnectionState =
  #| (self) => ['closed', 'failed', 'disconnected', 'new', 'connecting', 'connected'].indexOf(self.connectionState)

///|
pub extern "js" fn RTCPeerConnection::get_can_trickle_ice_candidates(
  self : RTCPeerConnection,
) -> Bool? =
  #| (self) => (self.canTrickleIceCandidates) ?? undefined

///|
pub extern "js" fn RTCPeerConnection::restart_ice(
  self : RTCPeerConnection,
) -> Unit =
  #| (self) => self.restartIce()

///|
pub extern "js" fn RTCPeerConnection::get_configuration(
  self : RTCPeerConnection,
) -> RTCConfiguration =
  #| (self) => self.getConfiguration()

///|
pub extern "js" fn RTCPeerConnection::set_configuration(
  self : RTCPeerConnection,
) -> Unit =
  #| (self) => self.setConfiguration()

///|
extern "js" fn RTCPeerConnection::set_configuration_with_configuration_ffi(
  self : RTCPeerConnection,
  configuration : JsValue,
) -> Unit =
  #| (self, configuration) => self.setConfiguration(configuration)

///|
pub fn RTCPeerConnection::set_configuration_with_configuration(
  self : RTCPeerConnection,
  configuration : RTCConfiguration,
) -> Unit {
  RTCPeerConnection::set_configuration_with_configuration_ffi(
    self,
    configuration.to_js(),
  )
}

///|
pub extern "js" fn RTCPeerConnection::close(self : RTCPeerConnection) -> Unit =
  #| (self) => self.close()

///|
pub extern "js" fn RTCPeerConnection::get_onnegotiationneeded(
  self : RTCPeerConnection,
) -> EventHandler =
  #| (self) => self.onnegotiationneeded

///|
pub extern "js" fn RTCPeerConnection::set_onnegotiationneeded(
  self : RTCPeerConnection,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onnegotiationneeded = value }

///|
pub extern "js" fn RTCPeerConnection::get_onicecandidate(
  self : RTCPeerConnection,
) -> EventHandler =
  #| (self) => self.onicecandidate

///|
pub extern "js" fn RTCPeerConnection::set_onicecandidate(
  self : RTCPeerConnection,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onicecandidate = value }

///|
pub extern "js" fn RTCPeerConnection::get_onicecandidateerror(
  self : RTCPeerConnection,
) -> EventHandler =
  #| (self) => self.onicecandidateerror

///|
pub extern "js" fn RTCPeerConnection::set_onicecandidateerror(
  self : RTCPeerConnection,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onicecandidateerror = value }

///|
pub extern "js" fn RTCPeerConnection::get_onsignalingstatechange(
  self : RTCPeerConnection,
) -> EventHandler =
  #| (self) => self.onsignalingstatechange

///|
pub extern "js" fn RTCPeerConnection::set_onsignalingstatechange(
  self : RTCPeerConnection,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsignalingstatechange = value }

///|
pub extern "js" fn RTCPeerConnection::get_oniceconnectionstatechange(
  self : RTCPeerConnection,
) -> EventHandler =
  #| (self) => self.oniceconnectionstatechange

///|
pub extern "js" fn RTCPeerConnection::set_oniceconnectionstatechange(
  self : RTCPeerConnection,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oniceconnectionstatechange = value }

///|
pub extern "js" fn RTCPeerConnection::get_onicegatheringstatechange(
  self : RTCPeerConnection,
) -> EventHandler =
  #| (self) => self.onicegatheringstatechange

///|
pub extern "js" fn RTCPeerConnection::set_onicegatheringstatechange(
  self : RTCPeerConnection,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onicegatheringstatechange = value }

///|
pub extern "js" fn RTCPeerConnection::get_onconnectionstatechange(
  self : RTCPeerConnection,
) -> EventHandler =
  #| (self) => self.onconnectionstatechange

///|
pub extern "js" fn RTCPeerConnection::set_onconnectionstatechange(
  self : RTCPeerConnection,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onconnectionstatechange = value }

///|
pub extern "js" fn RTCPeerConnection::set_identity_provider(
  self : RTCPeerConnection,
  provider : String,
) -> Unit =
  #| (self, provider) => self.setIdentityProvider(provider)

///|
extern "js" fn RTCPeerConnection::set_identity_provider_with_options_ffi(
  self : RTCPeerConnection,
  provider : String,
  options : JsValue,
) -> Unit =
  #| (self, provider, options) => self.setIdentityProvider(provider, options)

///|
pub fn RTCPeerConnection::set_identity_provider_with_options(
  self : RTCPeerConnection,
  provider : String,
  options : RTCIdentityProviderOptions,
) -> Unit {
  RTCPeerConnection::set_identity_provider_with_options_ffi(
    self,
    provider,
    options.to_js(),
  )
}

///|
pub extern "js" fn RTCPeerConnection::get_identity_assertion(
  self : RTCPeerConnection,
) -> Promise[String] =
  #| (self) => self.getIdentityAssertion()

///|
pub extern "js" fn RTCPeerConnection::get_peer_identity(
  self : RTCPeerConnection,
) -> Promise[RTCIdentityAssertion] =
  #| (self) => self.peerIdentity

///|
pub extern "js" fn RTCPeerConnection::get_idp_login_url(
  self : RTCPeerConnection,
) -> String? =
  #| (self) => (self.idpLoginUrl) ?? undefined

///|
pub extern "js" fn RTCPeerConnection::get_idp_error_info(
  self : RTCPeerConnection,
) -> String? =
  #| (self) => (self.idpErrorInfo) ?? undefined

///|
pub extern "js" fn RTCPeerConnection::generate_certificate(
  keygen_algorithm : AlgorithmIdentifier,
) -> Promise[RTCCertificate] =
  #| (keygen_algorithm) => RTCPeerConnection.generateCertificate(keygen_algorithm)

///|
pub extern "js" fn RTCPeerConnection::get_senders(
  self : RTCPeerConnection,
) -> Array[RTCRtpSender] =
  #| (self) => self.getSenders()

///|
pub extern "js" fn RTCPeerConnection::get_receivers(
  self : RTCPeerConnection,
) -> Array[RTCRtpReceiver] =
  #| (self) => self.getReceivers()

///|
pub extern "js" fn RTCPeerConnection::get_transceivers(
  self : RTCPeerConnection,
) -> Array[RTCRtpTransceiver] =
  #| (self) => self.getTransceivers()

///|
pub extern "js" fn RTCPeerConnection::add_track(
  self : RTCPeerConnection,
  track : MediaStreamTrack,
  streams : MediaStream,
) -> RTCRtpSender =
  #| (self, track, streams) => self.addTrack(track, streams)

///|
pub extern "js" fn RTCPeerConnection::remove_track(
  self : RTCPeerConnection,
  sender : RTCRtpSender,
) -> Unit =
  #| (self, sender) => self.removeTrack(sender)

///|
pub extern "js" fn RTCPeerConnection::add_transceiver(
  self : RTCPeerConnection,
  track_or_kind : MediaStreamTrackOrString,
) -> RTCRtpTransceiver =
  #| (self, track_or_kind) => self.addTransceiver(track_or_kind)

///|
extern "js" fn RTCPeerConnection::add_transceiver_with_init_ffi(
  self : RTCPeerConnection,
  track_or_kind : MediaStreamTrackOrString,
  init_ : JsValue,
) -> RTCRtpTransceiver =
  #| (self, track_or_kind, init_) => self.addTransceiver(track_or_kind, init_)

///|
pub fn RTCPeerConnection::add_transceiver_with_init(
  self : RTCPeerConnection,
  track_or_kind : MediaStreamTrackOrString,
  init_ : RTCRtpTransceiverInit,
) -> RTCRtpTransceiver {
  RTCPeerConnection::add_transceiver_with_init_ffi(
    self,
    track_or_kind,
    init_.to_js(),
  )
}

///|
pub extern "js" fn RTCPeerConnection::get_ontrack(
  self : RTCPeerConnection,
) -> EventHandler =
  #| (self) => self.ontrack

///|
pub extern "js" fn RTCPeerConnection::set_ontrack(
  self : RTCPeerConnection,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontrack = value }

///|
pub extern "js" fn RTCPeerConnection::get_sctp(
  self : RTCPeerConnection,
) -> RTCSctpTransport? =
  #| (self) => (() => { const v = self.sctp; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn RTCPeerConnection::create_data_channel(
  self : RTCPeerConnection,
  label : String,
) -> RTCDataChannel =
  #| (self, label) => self.createDataChannel(label)

///|
extern "js" fn RTCPeerConnection::create_data_channel_with_data_channel_dict_ffi(
  self : RTCPeerConnection,
  label : String,
  data_channel_dict : JsValue,
) -> RTCDataChannel =
  #| (self, label, data_channel_dict) => self.createDataChannel(label, data_channel_dict)

///|
pub fn RTCPeerConnection::create_data_channel_with_data_channel_dict(
  self : RTCPeerConnection,
  label : String,
  data_channel_dict : RTCDataChannelInit,
) -> RTCDataChannel {
  RTCPeerConnection::create_data_channel_with_data_channel_dict_ffi(
    self,
    label,
    data_channel_dict.to_js(),
  )
}

///|
pub extern "js" fn RTCPeerConnection::get_ondatachannel(
  self : RTCPeerConnection,
) -> EventHandler =
  #| (self) => self.ondatachannel

///|
pub extern "js" fn RTCPeerConnection::set_ondatachannel(
  self : RTCPeerConnection,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondatachannel = value }

///|
pub extern "js" fn RTCPeerConnection::get_stats(
  self : RTCPeerConnection,
) -> Promise[RTCStatsReport] =
  #| (self) => self.getStats()

///|
pub extern "js" fn RTCPeerConnection::get_stats_with_selector(
  self : RTCPeerConnection,
  selector : MediaStreamTrack?,
) -> Promise[RTCStatsReport] =
  #| (self, selector) => self.getStats((selector.$tag === 1 ? selector._0 : null))

///|
pub extern "js" fn RTCPeerConnection::generate_certificate_with_string(
  keygen_algorithm : String,
) -> Promise[RTCCertificate] =
  #| (keygen_algorithm) => RTCPeerConnection.generateCertificate(keygen_algorithm)

///|
/// RTCSessionDescription interface
pub type RTCSessionDescription

///|
pub extern "js" fn RTCSessionDescription::to_js_value(
  self : RTCSessionDescription,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to RTCSessionDescription (unchecked)
pub extern "js" fn RTCSessionDescription::from_js_value(
  v : JsValue,
) -> RTCSessionDescription =
  #| (v) => v

///|
/// Safely cast JsValue to RTCSessionDescription (checked with instanceof)
pub extern "js" fn RTCSessionDescription::from_js_value_opt(
  v : JsValue,
) -> RTCSessionDescription? =
  #| (v) => (v instanceof RTCSessionDescription) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to RTCSessionDescription (checked with instanceof)
pub extern "js" fn JsValue::as_rtc_session_description(
  self : JsValue,
) -> RTCSessionDescription? =
  #| (self) => (self instanceof RTCSessionDescription) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to RTCSessionDescription (unchecked)
pub extern "js" fn JsValue::to_rtc_session_description(
  self : JsValue,
) -> RTCSessionDescription =
  #| (self) => self

///|
extern "js" fn RTCSessionDescription::new_ffi(
  description_init_dict : JsValue,
) -> RTCSessionDescription =
  #| (description_init_dict) => new RTCSessionDescription(description_init_dict)

///|
pub fn RTCSessionDescription::new(
  description_init_dict : RTCSessionDescriptionInit,
) -> RTCSessionDescription {
  RTCSessionDescription::new_ffi(description_init_dict.to_js())
}

///|
pub extern "js" fn RTCSessionDescription::get_type(
  self : RTCSessionDescription,
) -> RTCSdpType =
  #| (self) => ['offer', 'pranswer', 'answer', 'rollback'].indexOf(self.type)

///|
pub extern "js" fn RTCSessionDescription::get_sdp(
  self : RTCSessionDescription,
) -> String =
  #| (self) => self.sdp

///|
pub extern "js" fn RTCSessionDescription::to_json(
  self : RTCSessionDescription,
) -> RTCSessionDescriptionInit =
  #| (self) => self.toJSON()

///|
/// RTCIceCandidate interface
pub type RTCIceCandidate

///|
pub extern "js" fn RTCIceCandidate::to_js_value(
  self : RTCIceCandidate,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to RTCIceCandidate (unchecked)
pub extern "js" fn RTCIceCandidate::from_js_value(
  v : JsValue,
) -> RTCIceCandidate =
  #| (v) => v

///|
/// Safely cast JsValue to RTCIceCandidate (checked with instanceof)
pub extern "js" fn RTCIceCandidate::from_js_value_opt(
  v : JsValue,
) -> RTCIceCandidate? =
  #| (v) => (v instanceof RTCIceCandidate) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to RTCIceCandidate (checked with instanceof)
pub extern "js" fn JsValue::as_rtc_ice_candidate(
  self : JsValue,
) -> RTCIceCandidate? =
  #| (self) => (self instanceof RTCIceCandidate) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to RTCIceCandidate (unchecked)
pub extern "js" fn JsValue::to_rtc_ice_candidate(
  self : JsValue,
) -> RTCIceCandidate =
  #| (self) => self

///|
pub extern "js" fn RTCIceCandidate::new() -> RTCIceCandidate =
  #| () => new RTCIceCandidate()

///|
extern "js" fn RTCIceCandidate::new_with_candidate_init_dict_ffi(
  candidate_init_dict : JsValue,
) -> RTCIceCandidate =
  #| (candidate_init_dict) => new RTCIceCandidate(candidate_init_dict)

///|
pub fn RTCIceCandidate::new_with_candidate_init_dict(
  candidate_init_dict : RTCLocalIceCandidateInit,
) -> RTCIceCandidate {
  RTCIceCandidate::new_with_candidate_init_dict_ffi(candidate_init_dict.to_js())
}

///|
pub extern "js" fn RTCIceCandidate::get_candidate(
  self : RTCIceCandidate,
) -> String =
  #| (self) => self.candidate

///|
pub extern "js" fn RTCIceCandidate::get_sdp_mid(
  self : RTCIceCandidate,
) -> String? =
  #| (self) => (self.sdpMid) ?? undefined

///|
pub extern "js" fn RTCIceCandidate::get_sdp_m_line_index(
  self : RTCIceCandidate,
) -> Int? =
  #| (self) => (self.sdpMLineIndex) ?? undefined

///|
pub extern "js" fn RTCIceCandidate::get_foundation(
  self : RTCIceCandidate,
) -> String? =
  #| (self) => (self.foundation) ?? undefined

///|
pub extern "js" fn RTCIceCandidate::get_component(
  self : RTCIceCandidate,
) -> RTCIceComponent? =
  #| (self) => (() => { const v = self.component; return v == null ? undefined : ['rtp', 'rtcp'].indexOf(v); })()

///|
pub extern "js" fn RTCIceCandidate::get_priority(
  self : RTCIceCandidate,
) -> Int? =
  #| (self) => (self.priority) ?? undefined

///|
pub extern "js" fn RTCIceCandidate::get_address(
  self : RTCIceCandidate,
) -> String? =
  #| (self) => (self.address) ?? undefined

///|
pub extern "js" fn RTCIceCandidate::get_protocol(
  self : RTCIceCandidate,
) -> RTCIceProtocol? =
  #| (self) => (() => { const v = self.protocol; return v == null ? undefined : ['udp', 'tcp'].indexOf(v); })()

///|
pub extern "js" fn RTCIceCandidate::get_port(self : RTCIceCandidate) -> Int? =
  #| (self) => (self.port) ?? undefined

///|
pub extern "js" fn RTCIceCandidate::get_type(
  self : RTCIceCandidate,
) -> RTCIceCandidateType? =
  #| (self) => (() => { const v = self.type; return v == null ? undefined : ['host', 'srflx', 'prflx', 'relay'].indexOf(v); })()

///|
pub extern "js" fn RTCIceCandidate::get_tcp_type(
  self : RTCIceCandidate,
) -> RTCIceTcpCandidateType? =
  #| (self) => (() => { const v = self.tcpType; return v == null ? undefined : ['active', 'passive', 'so'].indexOf(v); })()

///|
pub extern "js" fn RTCIceCandidate::get_related_address(
  self : RTCIceCandidate,
) -> String? =
  #| (self) => (self.relatedAddress) ?? undefined

///|
pub extern "js" fn RTCIceCandidate::get_related_port(
  self : RTCIceCandidate,
) -> Int? =
  #| (self) => (self.relatedPort) ?? undefined

///|
pub extern "js" fn RTCIceCandidate::get_username_fragment(
  self : RTCIceCandidate,
) -> String? =
  #| (self) => (self.usernameFragment) ?? undefined

///|
pub extern "js" fn RTCIceCandidate::get_relay_protocol(
  self : RTCIceCandidate,
) -> RTCIceServerTransportProtocol? =
  #| (self) => (() => { const v = self.relayProtocol; return v == null ? undefined : ['udp', 'tcp', 'tls'].indexOf(v); })()

///|
pub extern "js" fn RTCIceCandidate::get_url(self : RTCIceCandidate) -> String? =
  #| (self) => (self.url) ?? undefined

///|
pub extern "js" fn RTCIceCandidate::to_json(
  self : RTCIceCandidate,
) -> RTCIceCandidateInit =
  #| (self) => self.toJSON()

///|
/// RTCPeerConnectionIceEvent interface
pub type RTCPeerConnectionIceEvent

///|
pub extern "js" fn RTCPeerConnectionIceEvent::to_js_value(
  self : RTCPeerConnectionIceEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to RTCPeerConnectionIceEvent (unchecked)
pub extern "js" fn RTCPeerConnectionIceEvent::from_js_value(
  v : JsValue,
) -> RTCPeerConnectionIceEvent =
  #| (v) => v

///|
/// Safely cast JsValue to RTCPeerConnectionIceEvent (checked with instanceof)
pub extern "js" fn RTCPeerConnectionIceEvent::from_js_value_opt(
  v : JsValue,
) -> RTCPeerConnectionIceEvent? =
  #| (v) => (v instanceof RTCPeerConnectionIceEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to RTCPeerConnectionIceEvent (checked with instanceof)
pub extern "js" fn JsValue::as_rtc_peer_connection_ice_event(
  self : JsValue,
) -> RTCPeerConnectionIceEvent? =
  #| (self) => (self instanceof RTCPeerConnectionIceEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to RTCPeerConnectionIceEvent (unchecked)
pub extern "js" fn JsValue::to_rtc_peer_connection_ice_event(
  self : JsValue,
) -> RTCPeerConnectionIceEvent =
  #| (self) => self

///|
pub extern "js" fn RTCPeerConnectionIceEvent::to_event(
  self : RTCPeerConnectionIceEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn RTCPeerConnectionIceEvent::new(
  type_ : String,
) -> RTCPeerConnectionIceEvent =
  #| (type_) => new RTCPeerConnectionIceEvent(type_)

///|
extern "js" fn RTCPeerConnectionIceEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> RTCPeerConnectionIceEvent =
  #| (type_, event_init_dict) => new RTCPeerConnectionIceEvent(type_, event_init_dict)

///|
pub fn RTCPeerConnectionIceEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : RTCPeerConnectionIceEventInit,
) -> RTCPeerConnectionIceEvent {
  RTCPeerConnectionIceEvent::new_with_event_init_dict_ffi(
    type_,
    event_init_dict.to_js(),
  )
}

///|
pub extern "js" fn RTCPeerConnectionIceEvent::get_candidate(
  self : RTCPeerConnectionIceEvent,
) -> RTCIceCandidate? =
  #| (self) => (() => { const v = self.candidate; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn RTCPeerConnectionIceEvent::get_url(
  self : RTCPeerConnectionIceEvent,
) -> String? =
  #| (self) => (self.url) ?? undefined

///|
/// RTCPeerConnectionIceErrorEvent interface
pub type RTCPeerConnectionIceErrorEvent

///|
pub extern "js" fn RTCPeerConnectionIceErrorEvent::to_js_value(
  self : RTCPeerConnectionIceErrorEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to RTCPeerConnectionIceErrorEvent (unchecked)
pub extern "js" fn RTCPeerConnectionIceErrorEvent::from_js_value(
  v : JsValue,
) -> RTCPeerConnectionIceErrorEvent =
  #| (v) => v

///|
/// Safely cast JsValue to RTCPeerConnectionIceErrorEvent (checked with instanceof)
pub extern "js" fn RTCPeerConnectionIceErrorEvent::from_js_value_opt(
  v : JsValue,
) -> RTCPeerConnectionIceErrorEvent? =
  #| (v) => (v instanceof RTCPeerConnectionIceErrorEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to RTCPeerConnectionIceErrorEvent (checked with instanceof)
pub extern "js" fn JsValue::as_rtc_peer_connection_ice_error_event(
  self : JsValue,
) -> RTCPeerConnectionIceErrorEvent? =
  #| (self) => (self instanceof RTCPeerConnectionIceErrorEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to RTCPeerConnectionIceErrorEvent (unchecked)
pub extern "js" fn JsValue::to_rtc_peer_connection_ice_error_event(
  self : JsValue,
) -> RTCPeerConnectionIceErrorEvent =
  #| (self) => self

///|
pub extern "js" fn RTCPeerConnectionIceErrorEvent::to_event(
  self : RTCPeerConnectionIceErrorEvent,
) -> Event =
  #| (self) => self

///|
extern "js" fn RTCPeerConnectionIceErrorEvent::new_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> RTCPeerConnectionIceErrorEvent =
  #| (type_, event_init_dict) => new RTCPeerConnectionIceErrorEvent(type_, event_init_dict)

///|
pub fn RTCPeerConnectionIceErrorEvent::new(
  type_ : String,
  event_init_dict : RTCPeerConnectionIceErrorEventInit,
) -> RTCPeerConnectionIceErrorEvent {
  RTCPeerConnectionIceErrorEvent::new_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn RTCPeerConnectionIceErrorEvent::get_address(
  self : RTCPeerConnectionIceErrorEvent,
) -> String? =
  #| (self) => (self.address) ?? undefined

///|
pub extern "js" fn RTCPeerConnectionIceErrorEvent::get_port(
  self : RTCPeerConnectionIceErrorEvent,
) -> Int? =
  #| (self) => (self.port) ?? undefined

///|
pub extern "js" fn RTCPeerConnectionIceErrorEvent::get_url(
  self : RTCPeerConnectionIceErrorEvent,
) -> String =
  #| (self) => self.url

///|
pub extern "js" fn RTCPeerConnectionIceErrorEvent::get_error_code(
  self : RTCPeerConnectionIceErrorEvent,
) -> Int =
  #| (self) => self.errorCode

///|
pub extern "js" fn RTCPeerConnectionIceErrorEvent::get_error_text(
  self : RTCPeerConnectionIceErrorEvent,
) -> String =
  #| (self) => self.errorText

///|
/// RTCCertificate interface
pub type RTCCertificate

///|
pub extern "js" fn RTCCertificate::to_js_value(
  self : RTCCertificate,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to RTCCertificate (unchecked)
pub extern "js" fn RTCCertificate::from_js_value(v : JsValue) -> RTCCertificate =
  #| (v) => v

///|
/// Safely cast JsValue to RTCCertificate (checked with instanceof)
pub extern "js" fn RTCCertificate::from_js_value_opt(
  v : JsValue,
) -> RTCCertificate? =
  #| (v) => (v instanceof RTCCertificate) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to RTCCertificate (checked with instanceof)
pub extern "js" fn JsValue::as_rtc_certificate(
  self : JsValue,
) -> RTCCertificate? =
  #| (self) => (self instanceof RTCCertificate) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to RTCCertificate (unchecked)
pub extern "js" fn JsValue::to_rtc_certificate(
  self : JsValue,
) -> RTCCertificate =
  #| (self) => self

///|
pub extern "js" fn RTCCertificate::get_expires(
  self : RTCCertificate,
) -> EpochTimeStamp =
  #| (self) => self.expires

///|
pub extern "js" fn RTCCertificate::get_fingerprints(
  self : RTCCertificate,
) -> Array[RTCDtlsFingerprint] =
  #| (self) => self.getFingerprints()

///|
/// RTCRtpSender interface
pub type RTCRtpSender

///|
pub extern "js" fn RTCRtpSender::to_js_value(self : RTCRtpSender) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to RTCRtpSender (unchecked)
pub extern "js" fn RTCRtpSender::from_js_value(v : JsValue) -> RTCRtpSender =
  #| (v) => v

///|
/// Safely cast JsValue to RTCRtpSender (checked with instanceof)
pub extern "js" fn RTCRtpSender::from_js_value_opt(
  v : JsValue,
) -> RTCRtpSender? =
  #| (v) => (v instanceof RTCRtpSender) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to RTCRtpSender (checked with instanceof)
pub extern "js" fn JsValue::as_rtc_rtp_sender(self : JsValue) -> RTCRtpSender? =
  #| (self) => (self instanceof RTCRtpSender) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to RTCRtpSender (unchecked)
pub extern "js" fn JsValue::to_rtc_rtp_sender(self : JsValue) -> RTCRtpSender =
  #| (self) => self

///|
pub extern "js" fn RTCRtpSender::get_track(
  self : RTCRtpSender,
) -> MediaStreamTrack? =
  #| (self) => (() => { const v = self.track; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn RTCRtpSender::get_transport(
  self : RTCRtpSender,
) -> RTCDtlsTransport? =
  #| (self) => (() => { const v = self.transport; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn RTCRtpSender::get_capabilities(
  kind : String,
) -> RTCRtpCapabilities? =
  #| (kind) => (() => { const v = RTCRtpSender.getCapabilities(kind); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
extern "js" fn RTCRtpSender::set_parameters_ffi(
  self : RTCRtpSender,
  parameters : JsValue,
) -> Promise[Unit] =
  #| (self, parameters) => self.setParameters(parameters)

///|
pub fn RTCRtpSender::set_parameters(
  self : RTCRtpSender,
  parameters : RTCRtpSendParameters,
) -> Promise[Unit] {
  RTCRtpSender::set_parameters_ffi(self, parameters.to_js())
}

///|
extern "js" fn RTCRtpSender::set_parameters_with_set_parameter_options_ffi(
  self : RTCRtpSender,
  parameters : JsValue,
  set_parameter_options : JsValue,
) -> Promise[Unit] =
  #| (self, parameters, set_parameter_options) => self.setParameters(parameters, set_parameter_options)

///|
pub fn RTCRtpSender::set_parameters_with_set_parameter_options(
  self : RTCRtpSender,
  parameters : RTCRtpSendParameters,
  set_parameter_options : RTCSetParameterOptions,
) -> Promise[Unit] {
  RTCRtpSender::set_parameters_with_set_parameter_options_ffi(
    self,
    parameters.to_js(),
    set_parameter_options.to_js(),
  )
}

///|
pub extern "js" fn RTCRtpSender::get_parameters(
  self : RTCRtpSender,
) -> RTCRtpSendParameters =
  #| (self) => self.getParameters()

///|
pub extern "js" fn RTCRtpSender::replace_track(
  self : RTCRtpSender,
  with_track : MediaStreamTrack?,
) -> Promise[Unit] =
  #| (self, with_track) => self.replaceTrack((with_track.$tag === 1 ? with_track._0 : null))

///|
pub extern "js" fn RTCRtpSender::set_streams(
  self : RTCRtpSender,
  streams : MediaStream,
) -> Unit =
  #| (self, streams) => self.setStreams(streams)

///|
pub extern "js" fn RTCRtpSender::get_stats(
  self : RTCRtpSender,
) -> Promise[RTCStatsReport] =
  #| (self) => self.getStats()

///|
pub extern "js" fn RTCRtpSender::get_transform(
  self : RTCRtpSender,
) -> RTCRtpSenderTransform? =
  #| (self) => (() => { const v = self.transform; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn RTCRtpSender::set_transform(
  self : RTCRtpSender,
  value : RTCRtpSenderTransform?,
) -> Unit =
  #| (self, value) => { self.transform = (value.$tag === 1 ? value._0 : null) }

///|
pub extern "js" fn RTCRtpSender::get_dtmf(
  self : RTCRtpSender,
) -> RTCDTMFSender? =
  #| (self) => (() => { const v = self.dtmf; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// RTCRtpReceiver interface
pub type RTCRtpReceiver

///|
pub extern "js" fn RTCRtpReceiver::to_js_value(
  self : RTCRtpReceiver,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to RTCRtpReceiver (unchecked)
pub extern "js" fn RTCRtpReceiver::from_js_value(v : JsValue) -> RTCRtpReceiver =
  #| (v) => v

///|
/// Safely cast JsValue to RTCRtpReceiver (checked with instanceof)
pub extern "js" fn RTCRtpReceiver::from_js_value_opt(
  v : JsValue,
) -> RTCRtpReceiver? =
  #| (v) => (v instanceof RTCRtpReceiver) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to RTCRtpReceiver (checked with instanceof)
pub extern "js" fn JsValue::as_rtc_rtp_receiver(
  self : JsValue,
) -> RTCRtpReceiver? =
  #| (self) => (self instanceof RTCRtpReceiver) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to RTCRtpReceiver (unchecked)
pub extern "js" fn JsValue::to_rtc_rtp_receiver(
  self : JsValue,
) -> RTCRtpReceiver =
  #| (self) => self

///|
pub extern "js" fn RTCRtpReceiver::get_track(
  self : RTCRtpReceiver,
) -> MediaStreamTrack =
  #| (self) => self.track

///|
pub extern "js" fn RTCRtpReceiver::get_transport(
  self : RTCRtpReceiver,
) -> RTCDtlsTransport? =
  #| (self) => (() => { const v = self.transport; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn RTCRtpReceiver::get_capabilities(
  kind : String,
) -> RTCRtpCapabilities? =
  #| (kind) => (() => { const v = RTCRtpReceiver.getCapabilities(kind); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn RTCRtpReceiver::get_parameters(
  self : RTCRtpReceiver,
) -> RTCRtpReceiveParameters =
  #| (self) => self.getParameters()

///|
pub extern "js" fn RTCRtpReceiver::get_contributing_sources(
  self : RTCRtpReceiver,
) -> Array[RTCRtpContributingSource] =
  #| (self) => self.getContributingSources()

///|
pub extern "js" fn RTCRtpReceiver::get_synchronization_sources(
  self : RTCRtpReceiver,
) -> Array[RTCRtpSynchronizationSource] =
  #| (self) => self.getSynchronizationSources()

///|
pub extern "js" fn RTCRtpReceiver::get_stats(
  self : RTCRtpReceiver,
) -> Promise[RTCStatsReport] =
  #| (self) => self.getStats()

///|
pub extern "js" fn RTCRtpReceiver::get_jitter_buffer_target(
  self : RTCRtpReceiver,
) -> DOMHighResTimeStamp? =
  #| (self) => (() => { const v = self.jitterBufferTarget; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn RTCRtpReceiver::set_jitter_buffer_target(
  self : RTCRtpReceiver,
  value : DOMHighResTimeStamp?,
) -> Unit =
  #| (self, value) => { self.jitterBufferTarget = (value.$tag === 1 ? value._0 : null) }

///|
pub extern "js" fn RTCRtpReceiver::get_transform(
  self : RTCRtpReceiver,
) -> RTCRtpReceiverTransform? =
  #| (self) => (() => { const v = self.transform; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn RTCRtpReceiver::set_transform(
  self : RTCRtpReceiver,
  value : RTCRtpReceiverTransform?,
) -> Unit =
  #| (self, value) => { self.transform = (value.$tag === 1 ? value._0 : null) }

///|
/// RTCRtpTransceiver interface
pub type RTCRtpTransceiver

///|
pub extern "js" fn RTCRtpTransceiver::to_js_value(
  self : RTCRtpTransceiver,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to RTCRtpTransceiver (unchecked)
pub extern "js" fn RTCRtpTransceiver::from_js_value(
  v : JsValue,
) -> RTCRtpTransceiver =
  #| (v) => v

///|
/// Safely cast JsValue to RTCRtpTransceiver (checked with instanceof)
pub extern "js" fn RTCRtpTransceiver::from_js_value_opt(
  v : JsValue,
) -> RTCRtpTransceiver? =
  #| (v) => (v instanceof RTCRtpTransceiver) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to RTCRtpTransceiver (checked with instanceof)
pub extern "js" fn JsValue::as_rtc_rtp_transceiver(
  self : JsValue,
) -> RTCRtpTransceiver? =
  #| (self) => (self instanceof RTCRtpTransceiver) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to RTCRtpTransceiver (unchecked)
pub extern "js" fn JsValue::to_rtc_rtp_transceiver(
  self : JsValue,
) -> RTCRtpTransceiver =
  #| (self) => self

///|
pub extern "js" fn RTCRtpTransceiver::get_mid(
  self : RTCRtpTransceiver,
) -> String? =
  #| (self) => (self.mid) ?? undefined

///|
pub extern "js" fn RTCRtpTransceiver::get_sender(
  self : RTCRtpTransceiver,
) -> RTCRtpSender =
  #| (self) => self.sender

///|
pub extern "js" fn RTCRtpTransceiver::get_receiver(
  self : RTCRtpTransceiver,
) -> RTCRtpReceiver =
  #| (self) => self.receiver

///|
pub extern "js" fn RTCRtpTransceiver::get_direction(
  self : RTCRtpTransceiver,
) -> RTCRtpTransceiverDirection =
  #| (self) => ['sendrecv', 'sendonly', 'recvonly', 'inactive', 'stopped'].indexOf(self.direction)

///|
pub extern "js" fn RTCRtpTransceiver::set_direction(
  self : RTCRtpTransceiver,
  value : RTCRtpTransceiverDirection,
) -> Unit =
  #| (self, value) => { self.direction = ['sendrecv', 'sendonly', 'recvonly', 'inactive', 'stopped'][value] }

///|
pub extern "js" fn RTCRtpTransceiver::get_current_direction(
  self : RTCRtpTransceiver,
) -> RTCRtpTransceiverDirection? =
  #| (self) => (() => { const v = self.currentDirection; return v == null ? undefined : ['sendrecv', 'sendonly', 'recvonly', 'inactive', 'stopped'].indexOf(v); })()

///|
pub extern "js" fn RTCRtpTransceiver::stop(self : RTCRtpTransceiver) -> Unit =
  #| (self) => self.stop()

///|
pub extern "js" fn RTCRtpTransceiver::set_codec_preferences(
  self : RTCRtpTransceiver,
  codecs : Array[RTCRtpCodec],
) -> Unit =
  #| (self, codecs) => self.setCodecPreferences(codecs)

///|
/// RTCDtlsTransport interface
pub type RTCDtlsTransport

///|
pub extern "js" fn RTCDtlsTransport::to_js_value(
  self : RTCDtlsTransport,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to RTCDtlsTransport (unchecked)
pub extern "js" fn RTCDtlsTransport::from_js_value(
  v : JsValue,
) -> RTCDtlsTransport =
  #| (v) => v

///|
/// Safely cast JsValue to RTCDtlsTransport (checked with instanceof)
pub extern "js" fn RTCDtlsTransport::from_js_value_opt(
  v : JsValue,
) -> RTCDtlsTransport? =
  #| (v) => (v instanceof RTCDtlsTransport) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to RTCDtlsTransport (checked with instanceof)
pub extern "js" fn JsValue::as_rtc_dtls_transport(
  self : JsValue,
) -> RTCDtlsTransport? =
  #| (self) => (self instanceof RTCDtlsTransport) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to RTCDtlsTransport (unchecked)
pub extern "js" fn JsValue::to_rtc_dtls_transport(
  self : JsValue,
) -> RTCDtlsTransport =
  #| (self) => self

///|
pub extern "js" fn RTCDtlsTransport::to_event_target(
  self : RTCDtlsTransport,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn RTCDtlsTransport::get_ice_transport(
  self : RTCDtlsTransport,
) -> RTCIceTransport =
  #| (self) => self.iceTransport

///|
pub extern "js" fn RTCDtlsTransport::get_state(
  self : RTCDtlsTransport,
) -> RTCDtlsTransportState =
  #| (self) => ['new', 'connecting', 'connected', 'closed', 'failed'].indexOf(self.state)

///|
pub extern "js" fn RTCDtlsTransport::get_remote_certificates(
  self : RTCDtlsTransport,
) -> Array[ArrayBuffer] =
  #| (self) => self.getRemoteCertificates()

///|
pub extern "js" fn RTCDtlsTransport::get_onstatechange(
  self : RTCDtlsTransport,
) -> EventHandler =
  #| (self) => self.onstatechange

///|
pub extern "js" fn RTCDtlsTransport::set_onstatechange(
  self : RTCDtlsTransport,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onstatechange = value }

///|
pub extern "js" fn RTCDtlsTransport::get_onerror(
  self : RTCDtlsTransport,
) -> EventHandler =
  #| (self) => self.onerror

///|
pub extern "js" fn RTCDtlsTransport::set_onerror(
  self : RTCDtlsTransport,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onerror = value }

///|
/// RTCIceTransport interface
pub type RTCIceTransport

///|
pub extern "js" fn RTCIceTransport::to_js_value(
  self : RTCIceTransport,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to RTCIceTransport (unchecked)
pub extern "js" fn RTCIceTransport::from_js_value(
  v : JsValue,
) -> RTCIceTransport =
  #| (v) => v

///|
/// Safely cast JsValue to RTCIceTransport (checked with instanceof)
pub extern "js" fn RTCIceTransport::from_js_value_opt(
  v : JsValue,
) -> RTCIceTransport? =
  #| (v) => (v instanceof RTCIceTransport) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to RTCIceTransport (checked with instanceof)
pub extern "js" fn JsValue::as_rtc_ice_transport(
  self : JsValue,
) -> RTCIceTransport? =
  #| (self) => (self instanceof RTCIceTransport) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to RTCIceTransport (unchecked)
pub extern "js" fn JsValue::to_rtc_ice_transport(
  self : JsValue,
) -> RTCIceTransport =
  #| (self) => self

///|
pub extern "js" fn RTCIceTransport::to_event_target(
  self : RTCIceTransport,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn RTCIceTransport::get_role(
  self : RTCIceTransport,
) -> RTCIceRole =
  #| (self) => ['unknown', 'controlling', 'controlled'].indexOf(self.role)

///|
pub extern "js" fn RTCIceTransport::get_component(
  self : RTCIceTransport,
) -> RTCIceComponent =
  #| (self) => ['rtp', 'rtcp'].indexOf(self.component)

///|
pub extern "js" fn RTCIceTransport::get_state(
  self : RTCIceTransport,
) -> RTCIceTransportState =
  #| (self) => ['closed', 'failed', 'disconnected', 'new', 'checking', 'completed', 'connected'].indexOf(self.state)

///|
pub extern "js" fn RTCIceTransport::get_gathering_state(
  self : RTCIceTransport,
) -> RTCIceGathererState =
  #| (self) => ['new', 'gathering', 'complete'].indexOf(self.gatheringState)

///|
pub extern "js" fn RTCIceTransport::get_local_candidates(
  self : RTCIceTransport,
) -> Array[RTCIceCandidate] =
  #| (self) => self.getLocalCandidates()

///|
pub extern "js" fn RTCIceTransport::get_remote_candidates(
  self : RTCIceTransport,
) -> Array[RTCIceCandidate] =
  #| (self) => self.getRemoteCandidates()

///|
pub extern "js" fn RTCIceTransport::get_selected_candidate_pair(
  self : RTCIceTransport,
) -> RTCIceCandidatePair? =
  #| (self) => (() => { const v = self.getSelectedCandidatePair(); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn RTCIceTransport::get_local_parameters(
  self : RTCIceTransport,
) -> RTCIceParameters? =
  #| (self) => (() => { const v = self.getLocalParameters(); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn RTCIceTransport::get_remote_parameters(
  self : RTCIceTransport,
) -> RTCIceParameters? =
  #| (self) => (() => { const v = self.getRemoteParameters(); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn RTCIceTransport::get_onstatechange(
  self : RTCIceTransport,
) -> EventHandler =
  #| (self) => self.onstatechange

///|
pub extern "js" fn RTCIceTransport::set_onstatechange(
  self : RTCIceTransport,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onstatechange = value }

///|
pub extern "js" fn RTCIceTransport::get_ongatheringstatechange(
  self : RTCIceTransport,
) -> EventHandler =
  #| (self) => self.ongatheringstatechange

///|
pub extern "js" fn RTCIceTransport::set_ongatheringstatechange(
  self : RTCIceTransport,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ongatheringstatechange = value }

///|
pub extern "js" fn RTCIceTransport::get_onselectedcandidatepairchange(
  self : RTCIceTransport,
) -> EventHandler =
  #| (self) => self.onselectedcandidatepairchange

///|
pub extern "js" fn RTCIceTransport::set_onselectedcandidatepairchange(
  self : RTCIceTransport,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onselectedcandidatepairchange = value }

///|
pub extern "js" fn RTCIceTransport::new() -> RTCIceTransport =
  #| () => new RTCIceTransport()

///|
pub extern "js" fn RTCIceTransport::gather(self : RTCIceTransport) -> Unit =
  #| (self) => self.gather()

///|
extern "js" fn RTCIceTransport::gather_with_options_ffi(
  self : RTCIceTransport,
  options : JsValue,
) -> Unit =
  #| (self, options) => self.gather(options)

///|
pub fn RTCIceTransport::gather_with_options(
  self : RTCIceTransport,
  options : RTCIceGatherOptions,
) -> Unit {
  RTCIceTransport::gather_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn RTCIceTransport::start(self : RTCIceTransport) -> Unit =
  #| (self) => self.start()

///|
extern "js" fn RTCIceTransport::start_with_role_ffi(
  self : RTCIceTransport,
  remote_parameters : JsValue,
  role : RTCIceRole,
) -> Unit =
  #| (self, remote_parameters, role) => self.start(remote_parameters, ['unknown', 'controlling', 'controlled'][role])

///|
pub fn RTCIceTransport::start_with_role(
  self : RTCIceTransport,
  remote_parameters : RTCIceParameters,
  role : RTCIceRole,
) -> Unit {
  RTCIceTransport::start_with_role_ffi(self, remote_parameters.to_js(), role)
}

///|
pub extern "js" fn RTCIceTransport::stop(self : RTCIceTransport) -> Unit =
  #| (self) => self.stop()

///|
pub extern "js" fn RTCIceTransport::add_remote_candidate(
  self : RTCIceTransport,
) -> Unit =
  #| (self) => self.addRemoteCandidate()

///|
extern "js" fn RTCIceTransport::add_remote_candidate_with_remote_candidate_ffi(
  self : RTCIceTransport,
  remote_candidate : JsValue,
) -> Unit =
  #| (self, remote_candidate) => self.addRemoteCandidate(remote_candidate)

///|
pub fn RTCIceTransport::add_remote_candidate_with_remote_candidate(
  self : RTCIceTransport,
  remote_candidate : RTCIceCandidateInit,
) -> Unit {
  RTCIceTransport::add_remote_candidate_with_remote_candidate_ffi(
    self,
    remote_candidate.to_js(),
  )
}

///|
pub extern "js" fn RTCIceTransport::get_onerror(
  self : RTCIceTransport,
) -> EventHandler =
  #| (self) => self.onerror

///|
pub extern "js" fn RTCIceTransport::set_onerror(
  self : RTCIceTransport,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onerror = value }

///|
pub extern "js" fn RTCIceTransport::get_onicecandidate(
  self : RTCIceTransport,
) -> EventHandler =
  #| (self) => self.onicecandidate

///|
pub extern "js" fn RTCIceTransport::set_onicecandidate(
  self : RTCIceTransport,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onicecandidate = value }

///|
/// RTCIceCandidatePair interface
pub type RTCIceCandidatePair

///|
pub extern "js" fn RTCIceCandidatePair::to_js_value(
  self : RTCIceCandidatePair,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to RTCIceCandidatePair (unchecked)
pub extern "js" fn RTCIceCandidatePair::from_js_value(
  v : JsValue,
) -> RTCIceCandidatePair =
  #| (v) => v

///|
/// Safely cast JsValue to RTCIceCandidatePair (checked with instanceof)
pub extern "js" fn RTCIceCandidatePair::from_js_value_opt(
  v : JsValue,
) -> RTCIceCandidatePair? =
  #| (v) => (v instanceof RTCIceCandidatePair) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to RTCIceCandidatePair (checked with instanceof)
pub extern "js" fn JsValue::as_rtc_ice_candidate_pair(
  self : JsValue,
) -> RTCIceCandidatePair? =
  #| (self) => (self instanceof RTCIceCandidatePair) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to RTCIceCandidatePair (unchecked)
pub extern "js" fn JsValue::to_rtc_ice_candidate_pair(
  self : JsValue,
) -> RTCIceCandidatePair =
  #| (self) => self

///|
pub extern "js" fn RTCIceCandidatePair::get_local(
  self : RTCIceCandidatePair,
) -> RTCIceCandidate =
  #| (self) => self.local

///|
pub extern "js" fn RTCIceCandidatePair::get_remote(
  self : RTCIceCandidatePair,
) -> RTCIceCandidate =
  #| (self) => self.remote

///|
/// RTCTrackEvent interface
pub type RTCTrackEvent

///|
pub extern "js" fn RTCTrackEvent::to_js_value(self : RTCTrackEvent) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to RTCTrackEvent (unchecked)
pub extern "js" fn RTCTrackEvent::from_js_value(v : JsValue) -> RTCTrackEvent =
  #| (v) => v

///|
/// Safely cast JsValue to RTCTrackEvent (checked with instanceof)
pub extern "js" fn RTCTrackEvent::from_js_value_opt(
  v : JsValue,
) -> RTCTrackEvent? =
  #| (v) => (v instanceof RTCTrackEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to RTCTrackEvent (checked with instanceof)
pub extern "js" fn JsValue::as_rtc_track_event(
  self : JsValue,
) -> RTCTrackEvent? =
  #| (self) => (self instanceof RTCTrackEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to RTCTrackEvent (unchecked)
pub extern "js" fn JsValue::to_rtc_track_event(self : JsValue) -> RTCTrackEvent =
  #| (self) => self

///|
pub extern "js" fn RTCTrackEvent::to_event(self : RTCTrackEvent) -> Event =
  #| (self) => self

///|
extern "js" fn RTCTrackEvent::new_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> RTCTrackEvent =
  #| (type_, event_init_dict) => new RTCTrackEvent(type_, event_init_dict)

///|
pub fn RTCTrackEvent::new(
  type_ : String,
  event_init_dict : RTCTrackEventInit,
) -> RTCTrackEvent {
  RTCTrackEvent::new_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn RTCTrackEvent::get_receiver(
  self : RTCTrackEvent,
) -> RTCRtpReceiver =
  #| (self) => self.receiver

///|
pub extern "js" fn RTCTrackEvent::get_track(
  self : RTCTrackEvent,
) -> MediaStreamTrack =
  #| (self) => self.track

///|
pub extern "js" fn RTCTrackEvent::get_streams(self : RTCTrackEvent) -> JsValue =
  #| (self) => self.streams

///|
pub extern "js" fn RTCTrackEvent::get_transceiver(
  self : RTCTrackEvent,
) -> RTCRtpTransceiver =
  #| (self) => self.transceiver

///|
/// RTCSctpTransport interface
pub type RTCSctpTransport

///|
pub extern "js" fn RTCSctpTransport::to_js_value(
  self : RTCSctpTransport,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to RTCSctpTransport (unchecked)
pub extern "js" fn RTCSctpTransport::from_js_value(
  v : JsValue,
) -> RTCSctpTransport =
  #| (v) => v

///|
/// Safely cast JsValue to RTCSctpTransport (checked with instanceof)
pub extern "js" fn RTCSctpTransport::from_js_value_opt(
  v : JsValue,
) -> RTCSctpTransport? =
  #| (v) => (v instanceof RTCSctpTransport) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to RTCSctpTransport (checked with instanceof)
pub extern "js" fn JsValue::as_rtc_sctp_transport(
  self : JsValue,
) -> RTCSctpTransport? =
  #| (self) => (self instanceof RTCSctpTransport) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to RTCSctpTransport (unchecked)
pub extern "js" fn JsValue::to_rtc_sctp_transport(
  self : JsValue,
) -> RTCSctpTransport =
  #| (self) => self

///|
pub extern "js" fn RTCSctpTransport::to_event_target(
  self : RTCSctpTransport,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn RTCSctpTransport::get_transport(
  self : RTCSctpTransport,
) -> RTCDtlsTransport =
  #| (self) => self.transport

///|
pub extern "js" fn RTCSctpTransport::get_state(
  self : RTCSctpTransport,
) -> RTCSctpTransportState =
  #| (self) => ['connecting', 'connected', 'closed'].indexOf(self.state)

///|
pub extern "js" fn RTCSctpTransport::get_max_message_size(
  self : RTCSctpTransport,
) -> Double =
  #| (self) => self.maxMessageSize

///|
pub extern "js" fn RTCSctpTransport::get_max_channels(
  self : RTCSctpTransport,
) -> Int? =
  #| (self) => (self.maxChannels) ?? undefined

///|
pub extern "js" fn RTCSctpTransport::get_onstatechange(
  self : RTCSctpTransport,
) -> EventHandler =
  #| (self) => self.onstatechange

///|
pub extern "js" fn RTCSctpTransport::set_onstatechange(
  self : RTCSctpTransport,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onstatechange = value }

///|
/// RTCDataChannel interface
pub type RTCDataChannel

///|
pub extern "js" fn RTCDataChannel::to_js_value(
  self : RTCDataChannel,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to RTCDataChannel (unchecked)
pub extern "js" fn RTCDataChannel::from_js_value(v : JsValue) -> RTCDataChannel =
  #| (v) => v

///|
/// Safely cast JsValue to RTCDataChannel (checked with instanceof)
pub extern "js" fn RTCDataChannel::from_js_value_opt(
  v : JsValue,
) -> RTCDataChannel? =
  #| (v) => (v instanceof RTCDataChannel) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to RTCDataChannel (checked with instanceof)
pub extern "js" fn JsValue::as_rtc_data_channel(
  self : JsValue,
) -> RTCDataChannel? =
  #| (self) => (self instanceof RTCDataChannel) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to RTCDataChannel (unchecked)
pub extern "js" fn JsValue::to_rtc_data_channel(
  self : JsValue,
) -> RTCDataChannel =
  #| (self) => self

///|
pub extern "js" fn RTCDataChannel::to_event_target(
  self : RTCDataChannel,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn RTCDataChannel::get_label(self : RTCDataChannel) -> String =
  #| (self) => self.label

///|
pub extern "js" fn RTCDataChannel::get_ordered(self : RTCDataChannel) -> Bool =
  #| (self) => self.ordered

///|
pub extern "js" fn RTCDataChannel::get_max_packet_life_time(
  self : RTCDataChannel,
) -> Int? =
  #| (self) => (self.maxPacketLifeTime) ?? undefined

///|
pub extern "js" fn RTCDataChannel::get_max_retransmits(
  self : RTCDataChannel,
) -> Int? =
  #| (self) => (self.maxRetransmits) ?? undefined

///|
pub extern "js" fn RTCDataChannel::get_protocol(
  self : RTCDataChannel,
) -> String =
  #| (self) => self.protocol

///|
pub extern "js" fn RTCDataChannel::get_negotiated(
  self : RTCDataChannel,
) -> Bool =
  #| (self) => self.negotiated

///|
pub extern "js" fn RTCDataChannel::get_id(self : RTCDataChannel) -> Int? =
  #| (self) => (self.id) ?? undefined

///|
pub extern "js" fn RTCDataChannel::get_ready_state(
  self : RTCDataChannel,
) -> RTCDataChannelState =
  #| (self) => ['connecting', 'open', 'closing', 'closed'].indexOf(self.readyState)

///|
pub extern "js" fn RTCDataChannel::get_buffered_amount(
  self : RTCDataChannel,
) -> Int =
  #| (self) => self.bufferedAmount

///|
pub extern "js" fn RTCDataChannel::get_buffered_amount_low_threshold(
  self : RTCDataChannel,
) -> Int =
  #| (self) => self.bufferedAmountLowThreshold

///|
pub extern "js" fn RTCDataChannel::set_buffered_amount_low_threshold(
  self : RTCDataChannel,
  value : Int,
) -> Unit =
  #| (self, value) => { self.bufferedAmountLowThreshold = value }

///|
pub extern "js" fn RTCDataChannel::get_onopen(
  self : RTCDataChannel,
) -> EventHandler =
  #| (self) => self.onopen

///|
pub extern "js" fn RTCDataChannel::set_onopen(
  self : RTCDataChannel,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onopen = value }

///|
pub extern "js" fn RTCDataChannel::get_onbufferedamountlow(
  self : RTCDataChannel,
) -> EventHandler =
  #| (self) => self.onbufferedamountlow

///|
pub extern "js" fn RTCDataChannel::set_onbufferedamountlow(
  self : RTCDataChannel,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbufferedamountlow = value }

///|
pub extern "js" fn RTCDataChannel::get_onerror(
  self : RTCDataChannel,
) -> EventHandler =
  #| (self) => self.onerror

///|
pub extern "js" fn RTCDataChannel::set_onerror(
  self : RTCDataChannel,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onerror = value }

///|
pub extern "js" fn RTCDataChannel::get_onclosing(
  self : RTCDataChannel,
) -> EventHandler =
  #| (self) => self.onclosing

///|
pub extern "js" fn RTCDataChannel::set_onclosing(
  self : RTCDataChannel,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onclosing = value }

///|
pub extern "js" fn RTCDataChannel::get_onclose(
  self : RTCDataChannel,
) -> EventHandler =
  #| (self) => self.onclose

///|
pub extern "js" fn RTCDataChannel::set_onclose(
  self : RTCDataChannel,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onclose = value }

///|
pub extern "js" fn RTCDataChannel::close(self : RTCDataChannel) -> Unit =
  #| (self) => self.close()

///|
pub extern "js" fn RTCDataChannel::get_onmessage(
  self : RTCDataChannel,
) -> EventHandler =
  #| (self) => self.onmessage

///|
pub extern "js" fn RTCDataChannel::set_onmessage(
  self : RTCDataChannel,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmessage = value }

///|
pub extern "js" fn RTCDataChannel::get_binary_type(
  self : RTCDataChannel,
) -> BinaryType =
  #| (self) => ['blob', 'arraybuffer'].indexOf(self.binaryType)

///|
pub extern "js" fn RTCDataChannel::set_binary_type(
  self : RTCDataChannel,
  value : BinaryType,
) -> Unit =
  #| (self, value) => { self.binaryType = ['blob', 'arraybuffer'][value] }

///|
pub extern "js" fn RTCDataChannel::send(
  self : RTCDataChannel,
  data : String,
) -> Unit =
  #| (self, data) => self.send(data)

///|
pub extern "js" fn RTCDataChannel::send_with_data_blob(
  self : RTCDataChannel,
  data : Blob,
) -> Unit =
  #| (self, data) => self.send(data)

///|
pub extern "js" fn RTCDataChannel::send_with_data_array_buffer(
  self : RTCDataChannel,
  data : ArrayBuffer,
) -> Unit =
  #| (self, data) => self.send(data)

///|
pub extern "js" fn RTCDataChannel::send_with_data_array_buffer_view(
  self : RTCDataChannel,
  data : ArrayBufferView,
) -> Unit =
  #| (self, data) => self.send(data)

///|
pub extern "js" fn RTCDataChannel::get_priority(
  self : RTCDataChannel,
) -> RTCPriorityType =
  #| (self) => ['very-low', 'low', 'medium', 'high'].indexOf(self.priority)

///|
pub extern "js" fn RTCDataChannel::send_with_int8_array(
  self : RTCDataChannel,
  data : Int8Array,
) -> Unit =
  #| (self, data) => self.send(data)

///|
pub extern "js" fn RTCDataChannel::send_with_int16_array(
  self : RTCDataChannel,
  data : Int16Array,
) -> Unit =
  #| (self, data) => self.send(data)

///|
pub extern "js" fn RTCDataChannel::send_with_int32_array(
  self : RTCDataChannel,
  data : Int32Array,
) -> Unit =
  #| (self, data) => self.send(data)

///|
pub extern "js" fn RTCDataChannel::send_with_uint8_array(
  self : RTCDataChannel,
  data : Uint8Array,
) -> Unit =
  #| (self, data) => self.send(data)

///|
pub extern "js" fn RTCDataChannel::send_with_uint16_array(
  self : RTCDataChannel,
  data : Uint16Array,
) -> Unit =
  #| (self, data) => self.send(data)

///|
pub extern "js" fn RTCDataChannel::send_with_uint32_array(
  self : RTCDataChannel,
  data : Uint32Array,
) -> Unit =
  #| (self, data) => self.send(data)

///|
pub extern "js" fn RTCDataChannel::send_with_uint8_clamped_array(
  self : RTCDataChannel,
  data : Uint8ClampedArray,
) -> Unit =
  #| (self, data) => self.send(data)

///|
pub extern "js" fn RTCDataChannel::send_with_big_int64_array(
  self : RTCDataChannel,
  data : BigInt64Array,
) -> Unit =
  #| (self, data) => self.send(data)

///|
pub extern "js" fn RTCDataChannel::send_with_big_uint64_array(
  self : RTCDataChannel,
  data : BigUint64Array,
) -> Unit =
  #| (self, data) => self.send(data)

///|
pub extern "js" fn RTCDataChannel::send_with_float16_array(
  self : RTCDataChannel,
  data : Float16Array,
) -> Unit =
  #| (self, data) => self.send(data)

///|
pub extern "js" fn RTCDataChannel::send_with_float32_array(
  self : RTCDataChannel,
  data : Float32Array,
) -> Unit =
  #| (self, data) => self.send(data)

///|
pub extern "js" fn RTCDataChannel::send_with_float64_array(
  self : RTCDataChannel,
  data : Float64Array,
) -> Unit =
  #| (self, data) => self.send(data)

///|
pub extern "js" fn RTCDataChannel::send_with_data_view(
  self : RTCDataChannel,
  data : DataView,
) -> Unit =
  #| (self, data) => self.send(data)

///|
/// RTCDataChannelEvent interface
pub type RTCDataChannelEvent

///|
pub extern "js" fn RTCDataChannelEvent::to_js_value(
  self : RTCDataChannelEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to RTCDataChannelEvent (unchecked)
pub extern "js" fn RTCDataChannelEvent::from_js_value(
  v : JsValue,
) -> RTCDataChannelEvent =
  #| (v) => v

///|
/// Safely cast JsValue to RTCDataChannelEvent (checked with instanceof)
pub extern "js" fn RTCDataChannelEvent::from_js_value_opt(
  v : JsValue,
) -> RTCDataChannelEvent? =
  #| (v) => (v instanceof RTCDataChannelEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to RTCDataChannelEvent (checked with instanceof)
pub extern "js" fn JsValue::as_rtc_data_channel_event(
  self : JsValue,
) -> RTCDataChannelEvent? =
  #| (self) => (self instanceof RTCDataChannelEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to RTCDataChannelEvent (unchecked)
pub extern "js" fn JsValue::to_rtc_data_channel_event(
  self : JsValue,
) -> RTCDataChannelEvent =
  #| (self) => self

///|
pub extern "js" fn RTCDataChannelEvent::to_event(
  self : RTCDataChannelEvent,
) -> Event =
  #| (self) => self

///|
extern "js" fn RTCDataChannelEvent::new_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> RTCDataChannelEvent =
  #| (type_, event_init_dict) => new RTCDataChannelEvent(type_, event_init_dict)

///|
pub fn RTCDataChannelEvent::new(
  type_ : String,
  event_init_dict : RTCDataChannelEventInit,
) -> RTCDataChannelEvent {
  RTCDataChannelEvent::new_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn RTCDataChannelEvent::get_channel(
  self : RTCDataChannelEvent,
) -> RTCDataChannel =
  #| (self) => self.channel

///|
/// RTCDTMFSender interface
pub type RTCDTMFSender

///|
pub extern "js" fn RTCDTMFSender::to_js_value(self : RTCDTMFSender) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to RTCDTMFSender (unchecked)
pub extern "js" fn RTCDTMFSender::from_js_value(v : JsValue) -> RTCDTMFSender =
  #| (v) => v

///|
/// Safely cast JsValue to RTCDTMFSender (checked with instanceof)
pub extern "js" fn RTCDTMFSender::from_js_value_opt(
  v : JsValue,
) -> RTCDTMFSender? =
  #| (v) => (v instanceof RTCDTMFSender) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to RTCDTMFSender (checked with instanceof)
pub extern "js" fn JsValue::as_rtcdtmf_sender(self : JsValue) -> RTCDTMFSender? =
  #| (self) => (self instanceof RTCDTMFSender) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to RTCDTMFSender (unchecked)
pub extern "js" fn JsValue::to_rtcdtmf_sender(self : JsValue) -> RTCDTMFSender =
  #| (self) => self

///|
pub extern "js" fn RTCDTMFSender::to_event_target(
  self : RTCDTMFSender,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn RTCDTMFSender::insert_dtmf(
  self : RTCDTMFSender,
  tones : String,
) -> Unit =
  #| (self, tones) => self.insertDTMF(tones)

///|
pub extern "js" fn RTCDTMFSender::insert_dtmf_with_inter_tone_gap(
  self : RTCDTMFSender,
  tones : String,
  duration : Int,
  inter_tone_gap : Int,
) -> Unit =
  #| (self, tones, duration, inter_tone_gap) => self.insertDTMF(tones, duration, inter_tone_gap)

///|
pub extern "js" fn RTCDTMFSender::get_ontonechange(
  self : RTCDTMFSender,
) -> EventHandler =
  #| (self) => self.ontonechange

///|
pub extern "js" fn RTCDTMFSender::set_ontonechange(
  self : RTCDTMFSender,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontonechange = value }

///|
pub extern "js" fn RTCDTMFSender::get_can_insert_dtmf(
  self : RTCDTMFSender,
) -> Bool =
  #| (self) => self.canInsertDTMF

///|
pub extern "js" fn RTCDTMFSender::get_tone_buffer(
  self : RTCDTMFSender,
) -> String =
  #| (self) => self.toneBuffer

///|
/// RTCDTMFToneChangeEvent interface
pub type RTCDTMFToneChangeEvent

///|
pub extern "js" fn RTCDTMFToneChangeEvent::to_js_value(
  self : RTCDTMFToneChangeEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to RTCDTMFToneChangeEvent (unchecked)
pub extern "js" fn RTCDTMFToneChangeEvent::from_js_value(
  v : JsValue,
) -> RTCDTMFToneChangeEvent =
  #| (v) => v

///|
/// Safely cast JsValue to RTCDTMFToneChangeEvent (checked with instanceof)
pub extern "js" fn RTCDTMFToneChangeEvent::from_js_value_opt(
  v : JsValue,
) -> RTCDTMFToneChangeEvent? =
  #| (v) => (v instanceof RTCDTMFToneChangeEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to RTCDTMFToneChangeEvent (checked with instanceof)
pub extern "js" fn JsValue::as_rtcdtmf_tone_change_event(
  self : JsValue,
) -> RTCDTMFToneChangeEvent? =
  #| (self) => (self instanceof RTCDTMFToneChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to RTCDTMFToneChangeEvent (unchecked)
pub extern "js" fn JsValue::to_rtcdtmf_tone_change_event(
  self : JsValue,
) -> RTCDTMFToneChangeEvent =
  #| (self) => self

///|
pub extern "js" fn RTCDTMFToneChangeEvent::to_event(
  self : RTCDTMFToneChangeEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn RTCDTMFToneChangeEvent::new(
  type_ : String,
) -> RTCDTMFToneChangeEvent =
  #| (type_) => new RTCDTMFToneChangeEvent(type_)

///|
extern "js" fn RTCDTMFToneChangeEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> RTCDTMFToneChangeEvent =
  #| (type_, event_init_dict) => new RTCDTMFToneChangeEvent(type_, event_init_dict)

///|
pub fn RTCDTMFToneChangeEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : RTCDTMFToneChangeEventInit,
) -> RTCDTMFToneChangeEvent {
  RTCDTMFToneChangeEvent::new_with_event_init_dict_ffi(
    type_,
    event_init_dict.to_js(),
  )
}

///|
pub extern "js" fn RTCDTMFToneChangeEvent::get_tone(
  self : RTCDTMFToneChangeEvent,
) -> String =
  #| (self) => self.tone

///|
/// RTCStatsReport interface
pub type RTCStatsReport

///|
pub extern "js" fn RTCStatsReport::to_js_value(
  self : RTCStatsReport,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to RTCStatsReport (unchecked)
pub extern "js" fn RTCStatsReport::from_js_value(v : JsValue) -> RTCStatsReport =
  #| (v) => v

///|
/// Safely cast JsValue to RTCStatsReport (checked with instanceof)
pub extern "js" fn RTCStatsReport::from_js_value_opt(
  v : JsValue,
) -> RTCStatsReport? =
  #| (v) => (v instanceof RTCStatsReport) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to RTCStatsReport (checked with instanceof)
pub extern "js" fn JsValue::as_rtc_stats_report(
  self : JsValue,
) -> RTCStatsReport? =
  #| (self) => (self instanceof RTCStatsReport) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to RTCStatsReport (unchecked)
pub extern "js" fn JsValue::to_rtc_stats_report(
  self : JsValue,
) -> RTCStatsReport =
  #| (self) => self

///|
pub extern "js" fn RTCStatsReport::get(
  self : RTCStatsReport,
  key : String,
) -> JsValue? =
  #| (self, key) => self.get(key)

///|
pub extern "js" fn RTCStatsReport::has(
  self : RTCStatsReport,
  key : String,
) -> Bool =
  #| (self, key) => self.has(key)

///|
/// RTCError interface
pub type RTCError

///|
pub extern "js" fn RTCError::to_js_value(self : RTCError) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to RTCError (unchecked)
pub extern "js" fn RTCError::from_js_value(v : JsValue) -> RTCError =
  #| (v) => v

///|
/// Safely cast JsValue to RTCError (checked with instanceof)
pub extern "js" fn RTCError::from_js_value_opt(v : JsValue) -> RTCError? =
  #| (v) => (v instanceof RTCError) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to RTCError (checked with instanceof)
pub extern "js" fn JsValue::as_rtc_error(self : JsValue) -> RTCError? =
  #| (self) => (self instanceof RTCError) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to RTCError (unchecked)
pub extern "js" fn JsValue::to_rtc_error(self : JsValue) -> RTCError =
  #| (self) => self

///|
pub extern "js" fn RTCError::to_dom_exception(self : RTCError) -> DOMException =
  #| (self) => self

///|
extern "js" fn RTCError::new_ffi(init_ : JsValue) -> RTCError =
  #| (init_) => new RTCError(init_)

///|
pub fn RTCError::new(init_ : RTCErrorInit) -> RTCError {
  RTCError::new_ffi(init_.to_js())
}

///|
extern "js" fn RTCError::new_with_message_ffi(
  init_ : JsValue,
  message : String,
) -> RTCError =
  #| (init_, message) => new RTCError(init_, message)

///|
pub fn RTCError::new_with_message(
  init_ : RTCErrorInit,
  message : String,
) -> RTCError {
  RTCError::new_with_message_ffi(init_.to_js(), message)
}

///|
pub extern "js" fn RTCError::get_error_detail(
  self : RTCError,
) -> RTCErrorDetailType =
  #| (self) => ['data-channel-failure', 'dtls-failure', 'fingerprint-failure', 'sctp-failure', 'sdp-syntax-error', 'hardware-encoder-not-available', 'hardware-encoder-error'].indexOf(self.errorDetail)

///|
pub extern "js" fn RTCError::get_sdp_line_number(self : RTCError) -> Int? =
  #| (self) => (self.sdpLineNumber) ?? undefined

///|
pub extern "js" fn RTCError::get_sctp_cause_code(self : RTCError) -> Int? =
  #| (self) => (self.sctpCauseCode) ?? undefined

///|
pub extern "js" fn RTCError::get_received_alert(self : RTCError) -> Int? =
  #| (self) => (self.receivedAlert) ?? undefined

///|
pub extern "js" fn RTCError::get_sent_alert(self : RTCError) -> Int? =
  #| (self) => (self.sentAlert) ?? undefined

///|
pub extern "js" fn RTCError::get_http_request_status_code(
  self : RTCError,
) -> Int? =
  #| (self) => (self.httpRequestStatusCode) ?? undefined

///|
/// RTCErrorEvent interface
pub type RTCErrorEvent

///|
pub extern "js" fn RTCErrorEvent::to_js_value(self : RTCErrorEvent) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to RTCErrorEvent (unchecked)
pub extern "js" fn RTCErrorEvent::from_js_value(v : JsValue) -> RTCErrorEvent =
  #| (v) => v

///|
/// Safely cast JsValue to RTCErrorEvent (checked with instanceof)
pub extern "js" fn RTCErrorEvent::from_js_value_opt(
  v : JsValue,
) -> RTCErrorEvent? =
  #| (v) => (v instanceof RTCErrorEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to RTCErrorEvent (checked with instanceof)
pub extern "js" fn JsValue::as_rtc_error_event(
  self : JsValue,
) -> RTCErrorEvent? =
  #| (self) => (self instanceof RTCErrorEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to RTCErrorEvent (unchecked)
pub extern "js" fn JsValue::to_rtc_error_event(self : JsValue) -> RTCErrorEvent =
  #| (self) => self

///|
pub extern "js" fn RTCErrorEvent::to_event(self : RTCErrorEvent) -> Event =
  #| (self) => self

///|
extern "js" fn RTCErrorEvent::new_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> RTCErrorEvent =
  #| (type_, event_init_dict) => new RTCErrorEvent(type_, event_init_dict)

///|
pub fn RTCErrorEvent::new(
  type_ : String,
  event_init_dict : RTCErrorEventInit,
) -> RTCErrorEvent {
  RTCErrorEvent::new_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn RTCErrorEvent::get_error(self : RTCErrorEvent) -> RTCError =
  #| (self) => self.error
