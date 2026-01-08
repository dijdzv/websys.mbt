// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webrtc

///|
/// RTCIceTransportPolicy enum
pub(all) enum RTCIceTransportPolicy {
  Relay
  All
}

///|
/// Convert to string value
pub fn RTCIceTransportPolicy::to_string(self : RTCIceTransportPolicy) -> String {
  match self {
    Relay => "relay"
    All => "all"
  }
}

///|
/// Parse from string value
pub fn RTCIceTransportPolicy::from_string(s : String) -> RTCIceTransportPolicy? {
  match s {
    "relay" => Some(Relay)
    "all" => Some(All)
    _ => None
  }
}

///|
/// RTCBundlePolicy enum
pub(all) enum RTCBundlePolicy {
  Balanced
  MaxCompat
  MaxBundle
}

///|
/// Convert to string value
pub fn RTCBundlePolicy::to_string(self : RTCBundlePolicy) -> String {
  match self {
    Balanced => "balanced"
    MaxCompat => "max-compat"
    MaxBundle => "max-bundle"
  }
}

///|
/// Parse from string value
pub fn RTCBundlePolicy::from_string(s : String) -> RTCBundlePolicy? {
  match s {
    "balanced" => Some(Balanced)
    "max-compat" => Some(MaxCompat)
    "max-bundle" => Some(MaxBundle)
    _ => None
  }
}

///|
/// RTCRtcpMuxPolicy enum
pub(all) enum RTCRtcpMuxPolicy {
  Require
}

///|
/// Convert to string value
pub fn RTCRtcpMuxPolicy::to_string(self : RTCRtcpMuxPolicy) -> String {
  match self {
    Require => "require"
  }
}

///|
/// Parse from string value
pub fn RTCRtcpMuxPolicy::from_string(s : String) -> RTCRtcpMuxPolicy? {
  match s {
    "require" => Some(Require)
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
}

///|
/// Convert to string value
pub fn RTCSignalingState::to_string(self : RTCSignalingState) -> String {
  match self {
    Stable => "stable"
    HaveLocalOffer => "have-local-offer"
    HaveRemoteOffer => "have-remote-offer"
    HaveLocalPranswer => "have-local-pranswer"
    HaveRemotePranswer => "have-remote-pranswer"
    Closed => "closed"
  }
}

///|
/// Parse from string value
pub fn RTCSignalingState::from_string(s : String) -> RTCSignalingState? {
  match s {
    "stable" => Some(Stable)
    "have-local-offer" => Some(HaveLocalOffer)
    "have-remote-offer" => Some(HaveRemoteOffer)
    "have-local-pranswer" => Some(HaveLocalPranswer)
    "have-remote-pranswer" => Some(HaveRemotePranswer)
    "closed" => Some(Closed)
    _ => None
  }
}

///|
/// RTCIceGatheringState enum
pub(all) enum RTCIceGatheringState {
  New
  Gathering
  Complete
}

///|
/// Convert to string value
pub fn RTCIceGatheringState::to_string(self : RTCIceGatheringState) -> String {
  match self {
    New => "new"
    Gathering => "gathering"
    Complete => "complete"
  }
}

///|
/// Parse from string value
pub fn RTCIceGatheringState::from_string(s : String) -> RTCIceGatheringState? {
  match s {
    "new" => Some(New)
    "gathering" => Some(Gathering)
    "complete" => Some(Complete)
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
}

///|
/// Convert to string value
pub fn RTCPeerConnectionState::to_string(
  self : RTCPeerConnectionState,
) -> String {
  match self {
    Closed => "closed"
    Failed => "failed"
    Disconnected => "disconnected"
    New => "new"
    Connecting => "connecting"
    Connected => "connected"
  }
}

///|
/// Parse from string value
pub fn RTCPeerConnectionState::from_string(
  s : String,
) -> RTCPeerConnectionState? {
  match s {
    "closed" => Some(Closed)
    "failed" => Some(Failed)
    "disconnected" => Some(Disconnected)
    "new" => Some(New)
    "connecting" => Some(Connecting)
    "connected" => Some(Connected)
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
}

///|
/// Convert to string value
pub fn RTCIceConnectionState::to_string(self : RTCIceConnectionState) -> String {
  match self {
    Closed => "closed"
    Failed => "failed"
    Disconnected => "disconnected"
    New => "new"
    Checking => "checking"
    Completed => "completed"
    Connected => "connected"
  }
}

///|
/// Parse from string value
pub fn RTCIceConnectionState::from_string(s : String) -> RTCIceConnectionState? {
  match s {
    "closed" => Some(Closed)
    "failed" => Some(Failed)
    "disconnected" => Some(Disconnected)
    "new" => Some(New)
    "checking" => Some(Checking)
    "completed" => Some(Completed)
    "connected" => Some(Connected)
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
}

///|
/// Convert to string value
pub fn RTCSdpType::to_string(self : RTCSdpType) -> String {
  match self {
    Offer => "offer"
    Pranswer => "pranswer"
    Answer => "answer"
    Rollback => "rollback"
  }
}

///|
/// Parse from string value
pub fn RTCSdpType::from_string(s : String) -> RTCSdpType? {
  match s {
    "offer" => Some(Offer)
    "pranswer" => Some(Pranswer)
    "answer" => Some(Answer)
    "rollback" => Some(Rollback)
    _ => None
  }
}

///|
/// RTCIceProtocol enum
pub(all) enum RTCIceProtocol {
  Udp
  Tcp
}

///|
/// Convert to string value
pub fn RTCIceProtocol::to_string(self : RTCIceProtocol) -> String {
  match self {
    Udp => "udp"
    Tcp => "tcp"
  }
}

///|
/// Parse from string value
pub fn RTCIceProtocol::from_string(s : String) -> RTCIceProtocol? {
  match s {
    "udp" => Some(Udp)
    "tcp" => Some(Tcp)
    _ => None
  }
}

///|
/// RTCIceTcpCandidateType enum
pub(all) enum RTCIceTcpCandidateType {
  Active
  Passive
  So
}

///|
/// Convert to string value
pub fn RTCIceTcpCandidateType::to_string(
  self : RTCIceTcpCandidateType,
) -> String {
  match self {
    Active => "active"
    Passive => "passive"
    So => "so"
  }
}

///|
/// Parse from string value
pub fn RTCIceTcpCandidateType::from_string(
  s : String,
) -> RTCIceTcpCandidateType? {
  match s {
    "active" => Some(Active)
    "passive" => Some(Passive)
    "so" => Some(So)
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
}

///|
/// Convert to string value
pub fn RTCIceCandidateType::to_string(self : RTCIceCandidateType) -> String {
  match self {
    Host => "host"
    Srflx => "srflx"
    Prflx => "prflx"
    Relay => "relay"
  }
}

///|
/// Parse from string value
pub fn RTCIceCandidateType::from_string(s : String) -> RTCIceCandidateType? {
  match s {
    "host" => Some(Host)
    "srflx" => Some(Srflx)
    "prflx" => Some(Prflx)
    "relay" => Some(Relay)
    _ => None
  }
}

///|
/// RTCIceServerTransportProtocol enum
pub(all) enum RTCIceServerTransportProtocol {
  Udp
  Tcp
  Tls
}

///|
/// Convert to string value
pub fn RTCIceServerTransportProtocol::to_string(
  self : RTCIceServerTransportProtocol,
) -> String {
  match self {
    Udp => "udp"
    Tcp => "tcp"
    Tls => "tls"
  }
}

///|
/// Parse from string value
pub fn RTCIceServerTransportProtocol::from_string(
  s : String,
) -> RTCIceServerTransportProtocol? {
  match s {
    "udp" => Some(Udp)
    "tcp" => Some(Tcp)
    "tls" => Some(Tls)
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
}

///|
/// Convert to string value
pub fn RTCRtpTransceiverDirection::to_string(
  self : RTCRtpTransceiverDirection,
) -> String {
  match self {
    Sendrecv => "sendrecv"
    Sendonly => "sendonly"
    Recvonly => "recvonly"
    Inactive => "inactive"
    Stopped => "stopped"
  }
}

///|
/// Parse from string value
pub fn RTCRtpTransceiverDirection::from_string(
  s : String,
) -> RTCRtpTransceiverDirection? {
  match s {
    "sendrecv" => Some(Sendrecv)
    "sendonly" => Some(Sendonly)
    "recvonly" => Some(Recvonly)
    "inactive" => Some(Inactive)
    "stopped" => Some(Stopped)
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
}

///|
/// Convert to string value
pub fn RTCDtlsTransportState::to_string(self : RTCDtlsTransportState) -> String {
  match self {
    New => "new"
    Connecting => "connecting"
    Connected => "connected"
    Closed => "closed"
    Failed => "failed"
  }
}

///|
/// Parse from string value
pub fn RTCDtlsTransportState::from_string(s : String) -> RTCDtlsTransportState? {
  match s {
    "new" => Some(New)
    "connecting" => Some(Connecting)
    "connected" => Some(Connected)
    "closed" => Some(Closed)
    "failed" => Some(Failed)
    _ => None
  }
}

///|
/// RTCIceGathererState enum
pub(all) enum RTCIceGathererState {
  New
  Gathering
  Complete
}

///|
/// Convert to string value
pub fn RTCIceGathererState::to_string(self : RTCIceGathererState) -> String {
  match self {
    New => "new"
    Gathering => "gathering"
    Complete => "complete"
  }
}

///|
/// Parse from string value
pub fn RTCIceGathererState::from_string(s : String) -> RTCIceGathererState? {
  match s {
    "new" => Some(New)
    "gathering" => Some(Gathering)
    "complete" => Some(Complete)
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
}

///|
/// Convert to string value
pub fn RTCIceTransportState::to_string(self : RTCIceTransportState) -> String {
  match self {
    Closed => "closed"
    Failed => "failed"
    Disconnected => "disconnected"
    New => "new"
    Checking => "checking"
    Completed => "completed"
    Connected => "connected"
  }
}

///|
/// Parse from string value
pub fn RTCIceTransportState::from_string(s : String) -> RTCIceTransportState? {
  match s {
    "closed" => Some(Closed)
    "failed" => Some(Failed)
    "disconnected" => Some(Disconnected)
    "new" => Some(New)
    "checking" => Some(Checking)
    "completed" => Some(Completed)
    "connected" => Some(Connected)
    _ => None
  }
}

///|
/// RTCIceRole enum
pub(all) enum RTCIceRole {
  Unknown
  Controlling
  Controlled
}

///|
/// Convert to string value
pub fn RTCIceRole::to_string(self : RTCIceRole) -> String {
  match self {
    Unknown => "unknown"
    Controlling => "controlling"
    Controlled => "controlled"
  }
}

///|
/// Parse from string value
pub fn RTCIceRole::from_string(s : String) -> RTCIceRole? {
  match s {
    "unknown" => Some(Unknown)
    "controlling" => Some(Controlling)
    "controlled" => Some(Controlled)
    _ => None
  }
}

///|
/// RTCIceComponent enum
pub(all) enum RTCIceComponent {
  Rtp
  Rtcp
}

///|
/// Convert to string value
pub fn RTCIceComponent::to_string(self : RTCIceComponent) -> String {
  match self {
    Rtp => "rtp"
    Rtcp => "rtcp"
  }
}

///|
/// Parse from string value
pub fn RTCIceComponent::from_string(s : String) -> RTCIceComponent? {
  match s {
    "rtp" => Some(Rtp)
    "rtcp" => Some(Rtcp)
    _ => None
  }
}

///|
/// RTCSctpTransportState enum
pub(all) enum RTCSctpTransportState {
  Connecting
  Connected
  Closed
}

///|
/// Convert to string value
pub fn RTCSctpTransportState::to_string(self : RTCSctpTransportState) -> String {
  match self {
    Connecting => "connecting"
    Connected => "connected"
    Closed => "closed"
  }
}

///|
/// Parse from string value
pub fn RTCSctpTransportState::from_string(s : String) -> RTCSctpTransportState? {
  match s {
    "connecting" => Some(Connecting)
    "connected" => Some(Connected)
    "closed" => Some(Closed)
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
}

///|
/// Convert to string value
pub fn RTCDataChannelState::to_string(self : RTCDataChannelState) -> String {
  match self {
    Connecting => "connecting"
    Open => "open"
    Closing => "closing"
    Closed => "closed"
  }
}

///|
/// Parse from string value
pub fn RTCDataChannelState::from_string(s : String) -> RTCDataChannelState? {
  match s {
    "connecting" => Some(Connecting)
    "open" => Some(Open)
    "closing" => Some(Closing)
    "closed" => Some(Closed)
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
}

///|
/// Convert to string value
pub fn RTCErrorDetailType::to_string(self : RTCErrorDetailType) -> String {
  match self {
    DataChannelFailure => "data-channel-failure"
    DtlsFailure => "dtls-failure"
    FingerprintFailure => "fingerprint-failure"
    SctpFailure => "sctp-failure"
    SdpSyntaxError => "sdp-syntax-error"
    HardwareEncoderNotAvailable => "hardware-encoder-not-available"
    HardwareEncoderError => "hardware-encoder-error"
  }
}

///|
/// Parse from string value
pub fn RTCErrorDetailType::from_string(s : String) -> RTCErrorDetailType? {
  match s {
    "data-channel-failure" => Some(DataChannelFailure)
    "dtls-failure" => Some(DtlsFailure)
    "fingerprint-failure" => Some(FingerprintFailure)
    "sctp-failure" => Some(SctpFailure)
    "sdp-syntax-error" => Some(SdpSyntaxError)
    "hardware-encoder-not-available" => Some(HardwareEncoderNotAvailable)
    "hardware-encoder-error" => Some(HardwareEncoderError)
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
  #| (handler) => handler

///|
/// RTCSessionDescriptionCallback callback interface
pub type RTCSessionDescriptionCallback

///|
/// Create RTCSessionDescriptionCallback from a MoonBit function
pub extern "js" fn RTCSessionDescriptionCallback::from_fn(
  handler : (RTCSessionDescriptionInit) -> Unit,
) -> RTCSessionDescriptionCallback =
  #| (handler) => handler

///|
/// RTCIceServer dictionary
pub struct RTCIceServer {
  urls : JsValue
  username : String?
  credential : String?
}

///|
/// Create a new RTCIceServer with default values
pub fn RTCIceServer::default() -> RTCIceServer {
  RTCIceServer::{ urls: panic(), username: None, credential: None }
}

///|
/// Convert to JsValue
pub extern "js" fn RTCIceServer::to_js(self : RTCIceServer) -> JsValue =
  #| (self) => ({
  #|   urls: self.urls,
  #|   username: self.username,
  #|   credential: self.credential
  #| })

///|
/// RTCOfferAnswerOptions dictionary
pub struct RTCOfferAnswerOptions {}

///|
/// Create a new RTCOfferAnswerOptions with default values
pub fn RTCOfferAnswerOptions::default() -> RTCOfferAnswerOptions {
  RTCOfferAnswerOptions::{  }
}

///|
/// Convert to JsValue
pub extern "js" fn RTCOfferAnswerOptions::to_js(
  self : RTCOfferAnswerOptions,
) -> JsValue =
  #| (self) => ({
  #| })

///|
/// RTCOfferOptions dictionary
pub struct RTCOfferOptions {
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
/// Convert to JsValue
pub extern "js" fn RTCOfferOptions::to_js(self : RTCOfferOptions) -> JsValue =
  #| (self) => ({
  #|   iceRestart: self.iceRestart,
  #|   offerToReceiveAudio: self.offerToReceiveAudio,
  #|   offerToReceiveVideo: self.offerToReceiveVideo
  #| })

///|
/// RTCAnswerOptions dictionary
pub struct RTCAnswerOptions {}

///|
/// Create a new RTCAnswerOptions with default values
pub fn RTCAnswerOptions::default() -> RTCAnswerOptions {
  RTCAnswerOptions::{  }
}

///|
/// Convert to JsValue
pub extern "js" fn RTCAnswerOptions::to_js(self : RTCAnswerOptions) -> JsValue =
  #| (self) => ({
  #| })

///|
/// RTCSessionDescriptionInit dictionary
pub struct RTCSessionDescriptionInit {
  type_ : RTCSdpType
  sdp : String?
}

///|
/// Create a new RTCSessionDescriptionInit with default values
pub fn RTCSessionDescriptionInit::default() -> RTCSessionDescriptionInit {
  RTCSessionDescriptionInit::{ type_: panic(), sdp: None }
}

///|
/// Convert to JsValue
pub extern "js" fn RTCSessionDescriptionInit::to_js(
  self : RTCSessionDescriptionInit,
) -> JsValue =
  #| (self) => ({
  #|   type: ['offer', 'pranswer', 'answer', 'rollback'][self.type_],
  #|   sdp: self.sdp
  #| })

///|
/// RTCLocalSessionDescriptionInit dictionary
pub struct RTCLocalSessionDescriptionInit {
  type_ : RTCSdpType?
  sdp : String?
}

///|
/// Create a new RTCLocalSessionDescriptionInit with default values
pub fn RTCLocalSessionDescriptionInit::default() -> RTCLocalSessionDescriptionInit {
  RTCLocalSessionDescriptionInit::{ type_: None, sdp: None }
}

///|
/// Convert to JsValue
pub extern "js" fn RTCLocalSessionDescriptionInit::to_js(
  self : RTCLocalSessionDescriptionInit,
) -> JsValue =
  #| (self) => ({
  #|   type: ['offer', 'pranswer', 'answer', 'rollback'][self.type_],
  #|   sdp: self.sdp
  #| })

///|
/// RTCIceCandidateInit dictionary
pub struct RTCIceCandidateInit {
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
/// Convert to JsValue
pub extern "js" fn RTCIceCandidateInit::to_js(
  self : RTCIceCandidateInit,
) -> JsValue =
  #| (self) => ({
  #|   candidate: self.candidate,
  #|   sdpMid: ((() => { const v = self.sdpMid; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   sdpMLineIndex: ((() => { const v = self.sdpMLineIndex; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   usernameFragment: ((() => { const v = self.usernameFragment; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// RTCLocalIceCandidateInit dictionary
pub struct RTCLocalIceCandidateInit {
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
/// Convert to JsValue
pub extern "js" fn RTCLocalIceCandidateInit::to_js(
  self : RTCLocalIceCandidateInit,
) -> JsValue =
  #| (self) => ({
  #|   candidate: self.candidate,
  #|   sdpMid: ((() => { const v = self.sdpMid; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   sdpMLineIndex: ((() => { const v = self.sdpMLineIndex; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   usernameFragment: ((() => { const v = self.usernameFragment; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   relayProtocol: ((() => { const v = self.relayProtocol; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return ['udp', 'tcp', 'tls'][v.$0]; })()),
  #|   url: ((() => { const v = self.url; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// RTCPeerConnectionIceEventInit dictionary
pub struct RTCPeerConnectionIceEventInit {
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
/// Convert to JsValue
pub extern "js" fn RTCPeerConnectionIceEventInit::to_js(
  self : RTCPeerConnectionIceEventInit,
) -> JsValue =
  #| (self) => ({
  #|   candidate: ((() => { const v = self.candidate; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   url: ((() => { const v = self.url; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// RTCPeerConnectionIceErrorEventInit dictionary
pub struct RTCPeerConnectionIceErrorEventInit {
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
/// Convert to JsValue
pub extern "js" fn RTCPeerConnectionIceErrorEventInit::to_js(
  self : RTCPeerConnectionIceErrorEventInit,
) -> JsValue =
  #| (self) => ({
  #|   address: ((() => { const v = self.address; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   port: ((() => { const v = self.port; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   url: self.url,
  #|   errorCode: self.errorCode,
  #|   errorText: self.errorText
  #| })

///|
/// RTCCertificateExpiration dictionary
pub struct RTCCertificateExpiration {
  expires : Int64?
}

///|
/// Create a new RTCCertificateExpiration with default values
pub fn RTCCertificateExpiration::default() -> RTCCertificateExpiration {
  RTCCertificateExpiration::{ expires: None }
}

///|
/// Convert to JsValue
pub extern "js" fn RTCCertificateExpiration::to_js(
  self : RTCCertificateExpiration,
) -> JsValue =
  #| (self) => ({
  #|   expires: self.expires
  #| })

///|
/// RTCRtpTransceiverInit dictionary
pub struct RTCRtpTransceiverInit {
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
/// Convert to JsValue
pub extern "js" fn RTCRtpTransceiverInit::to_js(
  self : RTCRtpTransceiverInit,
) -> JsValue =
  #| (self) => ({
  #|   direction: ['sendrecv', 'sendonly', 'recvonly', 'inactive', 'stopped'][self.direction],
  #|   streams: self.streams,
  #|   sendEncodings: self.sendEncodings
  #| })

///|
/// RTCRtpParameters dictionary
pub struct RTCRtpParameters {
  headerExtensions : Array[RTCRtpHeaderExtensionParameters]
  rtcp : RTCRtcpParameters
  codecs : Array[RTCRtpCodecParameters]
}

///|
/// Create a new RTCRtpParameters with default values
pub fn RTCRtpParameters::default() -> RTCRtpParameters {
  RTCRtpParameters::{ headerExtensions: [], rtcp: panic(), codecs: [] }
}

///|
/// Convert to JsValue
pub extern "js" fn RTCRtpParameters::to_js(self : RTCRtpParameters) -> JsValue =
  #| (self) => ({
  #|   headerExtensions: self.headerExtensions,
  #|   rtcp: self.rtcp,
  #|   codecs: self.codecs
  #| })

///|
/// RTCRtpReceiveParameters dictionary
pub struct RTCRtpReceiveParameters {
  headerExtensions : Array[RTCRtpHeaderExtensionParameters]
  rtcp : RTCRtcpParameters
  codecs : Array[RTCRtpCodecParameters]
}

///|
/// Create a new RTCRtpReceiveParameters with default values
pub fn RTCRtpReceiveParameters::default() -> RTCRtpReceiveParameters {
  RTCRtpReceiveParameters::{ headerExtensions: [], rtcp: panic(), codecs: [] }
}

///|
/// Convert to JsValue
pub extern "js" fn RTCRtpReceiveParameters::to_js(
  self : RTCRtpReceiveParameters,
) -> JsValue =
  #| (self) => ({
  #|   headerExtensions: self.headerExtensions,
  #|   rtcp: self.rtcp,
  #|   codecs: self.codecs
  #| })

///|
/// RTCRtpCodingParameters dictionary
pub struct RTCRtpCodingParameters {
  rid : String?
}

///|
/// Create a new RTCRtpCodingParameters with default values
pub fn RTCRtpCodingParameters::default() -> RTCRtpCodingParameters {
  RTCRtpCodingParameters::{ rid: None }
}

///|
/// Convert to JsValue
pub extern "js" fn RTCRtpCodingParameters::to_js(
  self : RTCRtpCodingParameters,
) -> JsValue =
  #| (self) => ({
  #|   rid: self.rid
  #| })

///|
/// RTCRtcpParameters dictionary
pub struct RTCRtcpParameters {
  cname : String?
  reducedSize : Bool?
}

///|
/// Create a new RTCRtcpParameters with default values
pub fn RTCRtcpParameters::default() -> RTCRtcpParameters {
  RTCRtcpParameters::{ cname: None, reducedSize: None }
}

///|
/// Convert to JsValue
pub extern "js" fn RTCRtcpParameters::to_js(
  self : RTCRtcpParameters,
) -> JsValue =
  #| (self) => ({
  #|   cname: self.cname,
  #|   reducedSize: self.reducedSize
  #| })

///|
/// RTCRtpHeaderExtensionParameters dictionary
pub struct RTCRtpHeaderExtensionParameters {
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
/// Convert to JsValue
pub extern "js" fn RTCRtpHeaderExtensionParameters::to_js(
  self : RTCRtpHeaderExtensionParameters,
) -> JsValue =
  #| (self) => ({
  #|   uri: self.uri,
  #|   id: self.id,
  #|   encrypted: self.encrypted
  #| })

///|
/// RTCRtpCodec dictionary
pub struct RTCRtpCodec {
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
/// Convert to JsValue
pub extern "js" fn RTCRtpCodec::to_js(self : RTCRtpCodec) -> JsValue =
  #| (self) => ({
  #|   mimeType: self.mimeType,
  #|   clockRate: self.clockRate,
  #|   channels: self.channels,
  #|   sdpFmtpLine: self.sdpFmtpLine
  #| })

///|
/// RTCRtpCodecParameters dictionary
pub struct RTCRtpCodecParameters {
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
/// Convert to JsValue
pub extern "js" fn RTCRtpCodecParameters::to_js(
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
/// RTCRtpCapabilities dictionary
pub struct RTCRtpCapabilities {
  codecs : Array[RTCRtpCodec]
  headerExtensions : Array[RTCRtpHeaderExtensionCapability]
}

///|
/// Create a new RTCRtpCapabilities with default values
pub fn RTCRtpCapabilities::default() -> RTCRtpCapabilities {
  RTCRtpCapabilities::{ codecs: [], headerExtensions: [] }
}

///|
/// Convert to JsValue
pub extern "js" fn RTCRtpCapabilities::to_js(
  self : RTCRtpCapabilities,
) -> JsValue =
  #| (self) => ({
  #|   codecs: self.codecs,
  #|   headerExtensions: self.headerExtensions
  #| })

///|
/// RTCRtpHeaderExtensionCapability dictionary
pub struct RTCRtpHeaderExtensionCapability {
  uri : String
}

///|
/// Create a new RTCRtpHeaderExtensionCapability with default values
pub fn RTCRtpHeaderExtensionCapability::default() -> RTCRtpHeaderExtensionCapability {
  RTCRtpHeaderExtensionCapability::{ uri: "" }
}

///|
/// Convert to JsValue
pub extern "js" fn RTCRtpHeaderExtensionCapability::to_js(
  self : RTCRtpHeaderExtensionCapability,
) -> JsValue =
  #| (self) => ({
  #|   uri: self.uri
  #| })

///|
/// RTCSetParameterOptions dictionary
pub struct RTCSetParameterOptions {}

///|
/// Create a new RTCSetParameterOptions with default values
pub fn RTCSetParameterOptions::default() -> RTCSetParameterOptions {
  RTCSetParameterOptions::{  }
}

///|
/// Convert to JsValue
pub extern "js" fn RTCSetParameterOptions::to_js(
  self : RTCSetParameterOptions,
) -> JsValue =
  #| (self) => ({
  #| })

///|
/// RTCRtpContributingSource dictionary
pub struct RTCRtpContributingSource {
  timestamp : DOMHighResTimeStamp
  source : Int
  audioLevel : Double?
  rtpTimestamp : Int
}

///|
/// Create a new RTCRtpContributingSource with default values
pub fn RTCRtpContributingSource::default() -> RTCRtpContributingSource {
  RTCRtpContributingSource::{
    timestamp: panic(),
    source: 0,
    audioLevel: None,
    rtpTimestamp: 0,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn RTCRtpContributingSource::to_js(
  self : RTCRtpContributingSource,
) -> JsValue =
  #| (self) => ({
  #|   timestamp: self.timestamp,
  #|   source: self.source,
  #|   audioLevel: self.audioLevel,
  #|   rtpTimestamp: self.rtpTimestamp
  #| })

///|
/// RTCRtpSynchronizationSource dictionary
pub struct RTCRtpSynchronizationSource {
  timestamp : DOMHighResTimeStamp
  source : Int
  audioLevel : Double?
  rtpTimestamp : Int
}

///|
/// Create a new RTCRtpSynchronizationSource with default values
pub fn RTCRtpSynchronizationSource::default() -> RTCRtpSynchronizationSource {
  RTCRtpSynchronizationSource::{
    timestamp: panic(),
    source: 0,
    audioLevel: None,
    rtpTimestamp: 0,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn RTCRtpSynchronizationSource::to_js(
  self : RTCRtpSynchronizationSource,
) -> JsValue =
  #| (self) => ({
  #|   timestamp: self.timestamp,
  #|   source: self.source,
  #|   audioLevel: self.audioLevel,
  #|   rtpTimestamp: self.rtpTimestamp
  #| })

///|
/// RTCDtlsFingerprint dictionary
pub struct RTCDtlsFingerprint {
  algorithm : String?
  value : String?
}

///|
/// Create a new RTCDtlsFingerprint with default values
pub fn RTCDtlsFingerprint::default() -> RTCDtlsFingerprint {
  RTCDtlsFingerprint::{ algorithm: None, value: None }
}

///|
/// Convert to JsValue
pub extern "js" fn RTCDtlsFingerprint::to_js(
  self : RTCDtlsFingerprint,
) -> JsValue =
  #| (self) => ({
  #|   algorithm: self.algorithm,
  #|   value: self.value
  #| })

///|
/// RTCTrackEventInit dictionary
pub struct RTCTrackEventInit {
  receiver : RTCRtpReceiver
  track : MediaStreamTrack
  streams : Array[MediaStream]?
  transceiver : RTCRtpTransceiver
}

///|
/// Create a new RTCTrackEventInit with default values
pub fn RTCTrackEventInit::default() -> RTCTrackEventInit {
  RTCTrackEventInit::{
    receiver: panic(),
    track: panic(),
    streams: None,
    transceiver: panic(),
  }
}

///|
/// Convert to JsValue
pub extern "js" fn RTCTrackEventInit::to_js(
  self : RTCTrackEventInit,
) -> JsValue =
  #| (self) => ({
  #|   receiver: self.receiver,
  #|   track: self.track,
  #|   streams: self.streams,
  #|   transceiver: self.transceiver
  #| })

///|
/// RTCDataChannelEventInit dictionary
pub struct RTCDataChannelEventInit {
  channel : RTCDataChannel
}

///|
/// Create a new RTCDataChannelEventInit with default values
pub fn RTCDataChannelEventInit::default() -> RTCDataChannelEventInit {
  RTCDataChannelEventInit::{ channel: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn RTCDataChannelEventInit::to_js(
  self : RTCDataChannelEventInit,
) -> JsValue =
  #| (self) => ({
  #|   channel: self.channel
  #| })

///|
/// RTCDTMFToneChangeEventInit dictionary
pub struct RTCDTMFToneChangeEventInit {
  tone : String?
}

///|
/// Create a new RTCDTMFToneChangeEventInit with default values
pub fn RTCDTMFToneChangeEventInit::default() -> RTCDTMFToneChangeEventInit {
  RTCDTMFToneChangeEventInit::{ tone: None }
}

///|
/// Convert to JsValue
pub extern "js" fn RTCDTMFToneChangeEventInit::to_js(
  self : RTCDTMFToneChangeEventInit,
) -> JsValue =
  #| (self) => ({
  #|   tone: self.tone
  #| })

///|
/// RTCStats dictionary
pub struct RTCStats {
  timestamp : DOMHighResTimeStamp
  type_ : RTCStatsType
  id : String
}

///|
/// Create a new RTCStats with default values
pub fn RTCStats::default() -> RTCStats {
  RTCStats::{ timestamp: panic(), type_: panic(), id: "" }
}

///|
/// Convert to JsValue
pub extern "js" fn RTCStats::to_js(self : RTCStats) -> JsValue =
  #| (self) => ({
  #|   timestamp: self.timestamp,
  #|   type: ['codec', 'inbound-rtp', 'outbound-rtp', 'remote-inbound-rtp', 'remote-outbound-rtp', 'media-source', 'media-playout', 'peer-connection', 'data-channel', 'transport', 'candidate-pair', 'local-candidate', 'remote-candidate', 'certificate'][self.type_],
  #|   id: self.id
  #| })

///|
/// RTCErrorEventInit dictionary
pub struct RTCErrorEventInit {
  error : RTCError
}

///|
/// Create a new RTCErrorEventInit with default values
pub fn RTCErrorEventInit::default() -> RTCErrorEventInit {
  RTCErrorEventInit::{ error: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn RTCErrorEventInit::to_js(
  self : RTCErrorEventInit,
) -> JsValue =
  #| (self) => ({
  #|   error: self.error
  #| })

///|
/// RTCPeerConnection interface
pub type RTCPeerConnection

///|
pub extern "js" fn RTCPeerConnection::to_js_value(
  self : RTCPeerConnection,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn RTCPeerConnection::new(
  configuration : RTCConfiguration,
) -> RTCPeerConnection =
  #| (configuration) => new RTCPeerConnection(configuration)

///|
pub extern "js" fn RTCPeerConnection::create_offer(
  self : RTCPeerConnection,
) -> Promise[RTCSessionDescriptionInit] =
  #| (self) => self.createOffer()

///|
pub extern "js" fn RTCPeerConnection::create_offer_with_options(
  self : RTCPeerConnection,
  options : RTCOfferOptions,
) -> Promise[RTCSessionDescriptionInit] =
  #| (self, options) => self.createOffer(options)

///|
pub extern "js" fn RTCPeerConnection::create_offer_with_success_callback_r_t_c_session_description_callback_and_failure_callback_r_t_c_peer_connection_error_callback(
  self : RTCPeerConnection,
  success_callback : RTCSessionDescriptionCallback,
  failure_callback : RTCPeerConnectionErrorCallback,
) -> Promise[Unit] =
  #| (self, success_callback, failure_callback) => self.createOffer(success_callback, failure_callback)

///|
pub extern "js" fn RTCPeerConnection::create_offer_with_success_callback_r_t_c_session_description_callback_and_failure_callback_r_t_c_peer_connection_error_callback_and_options_r_t_c_offer_options(
  self : RTCPeerConnection,
  success_callback : RTCSessionDescriptionCallback,
  failure_callback : RTCPeerConnectionErrorCallback,
  options : RTCOfferOptions,
) -> Promise[Unit] =
  #| (self, success_callback, failure_callback, options) => self.createOffer(success_callback, failure_callback, options)

///|
pub extern "js" fn RTCPeerConnection::create_answer(
  self : RTCPeerConnection,
) -> Promise[RTCSessionDescriptionInit] =
  #| (self) => self.createAnswer()

///|
pub extern "js" fn RTCPeerConnection::create_answer_with_options(
  self : RTCPeerConnection,
  options : RTCAnswerOptions,
) -> Promise[RTCSessionDescriptionInit] =
  #| (self, options) => self.createAnswer(options)

///|
pub extern "js" fn RTCPeerConnection::create_answer_with_success_callback_r_t_c_session_description_callback_and_failure_callback_r_t_c_peer_connection_error_callback(
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
pub extern "js" fn RTCPeerConnection::set_local_description_with_description(
  self : RTCPeerConnection,
  description : RTCLocalSessionDescriptionInit,
) -> Promise[Unit] =
  #| (self, description) => self.setLocalDescription(description)

///|
pub extern "js" fn RTCPeerConnection::set_local_description_with_description_r_t_c_local_session_description_init_and_success_callback_void_function_and_failure_callback_r_t_c_peer_connection_error_callback(
  self : RTCPeerConnection,
  description : RTCLocalSessionDescriptionInit,
  success_callback : VoidFunction,
  failure_callback : RTCPeerConnectionErrorCallback,
) -> Promise[Unit] =
  #| (self, description, success_callback, failure_callback) => self.setLocalDescription(description, success_callback, failure_callback)

///|
pub extern "js" fn RTCPeerConnection::get_local_description(
  self : RTCPeerConnection,
) -> RTCSessionDescription? =
  #| (self) => self.localDescription

///|
pub extern "js" fn RTCPeerConnection::get_current_local_description(
  self : RTCPeerConnection,
) -> RTCSessionDescription? =
  #| (self) => self.currentLocalDescription

///|
pub extern "js" fn RTCPeerConnection::get_pending_local_description(
  self : RTCPeerConnection,
) -> RTCSessionDescription? =
  #| (self) => self.pendingLocalDescription

///|
pub extern "js" fn RTCPeerConnection::set_remote_description(
  self : RTCPeerConnection,
  description : RTCSessionDescriptionInit,
) -> Promise[Unit] =
  #| (self, description) => self.setRemoteDescription(description)

///|
pub extern "js" fn RTCPeerConnection::set_remote_description_with_description_r_t_c_session_description_init_and_success_callback_void_function_and_failure_callback_r_t_c_peer_connection_error_callback(
  self : RTCPeerConnection,
  description : RTCSessionDescriptionInit,
  success_callback : VoidFunction,
  failure_callback : RTCPeerConnectionErrorCallback,
) -> Promise[Unit] =
  #| (self, description, success_callback, failure_callback) => self.setRemoteDescription(description, success_callback, failure_callback)

///|
pub extern "js" fn RTCPeerConnection::get_remote_description(
  self : RTCPeerConnection,
) -> RTCSessionDescription? =
  #| (self) => self.remoteDescription

///|
pub extern "js" fn RTCPeerConnection::get_current_remote_description(
  self : RTCPeerConnection,
) -> RTCSessionDescription? =
  #| (self) => self.currentRemoteDescription

///|
pub extern "js" fn RTCPeerConnection::get_pending_remote_description(
  self : RTCPeerConnection,
) -> RTCSessionDescription? =
  #| (self) => self.pendingRemoteDescription

///|
pub extern "js" fn RTCPeerConnection::add_ice_candidate(
  self : RTCPeerConnection,
) -> Promise[Unit] =
  #| (self) => self.addIceCandidate()

///|
pub extern "js" fn RTCPeerConnection::add_ice_candidate_with_candidate(
  self : RTCPeerConnection,
  candidate : RTCIceCandidateInit,
) -> Promise[Unit] =
  #| (self, candidate) => self.addIceCandidate(candidate)

///|
pub extern "js" fn RTCPeerConnection::add_ice_candidate_with_candidate_r_t_c_ice_candidate_init_and_success_callback_void_function_and_failure_callback_r_t_c_peer_connection_error_callback(
  self : RTCPeerConnection,
  candidate : RTCIceCandidateInit,
  success_callback : VoidFunction,
  failure_callback : RTCPeerConnectionErrorCallback,
) -> Promise[Unit] =
  #| (self, candidate, success_callback, failure_callback) => self.addIceCandidate(candidate, success_callback, failure_callback)

///|
pub extern "js" fn RTCPeerConnection::get_signaling_state(
  self : RTCPeerConnection,
) -> RTCSignalingState =
  #| (self) => self.signalingState

///|
pub extern "js" fn RTCPeerConnection::get_ice_gathering_state(
  self : RTCPeerConnection,
) -> RTCIceGatheringState =
  #| (self) => self.iceGatheringState

///|
pub extern "js" fn RTCPeerConnection::get_ice_connection_state(
  self : RTCPeerConnection,
) -> RTCIceConnectionState =
  #| (self) => self.iceConnectionState

///|
pub extern "js" fn RTCPeerConnection::get_connection_state(
  self : RTCPeerConnection,
) -> RTCPeerConnectionState =
  #| (self) => self.connectionState

///|
pub extern "js" fn RTCPeerConnection::get_can_trickle_ice_candidates(
  self : RTCPeerConnection,
) -> Bool? =
  #| (self) => self.canTrickleIceCandidates

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
pub extern "js" fn RTCPeerConnection::set_configuration_with_configuration(
  self : RTCPeerConnection,
  configuration : RTCConfiguration,
) -> Unit =
  #| (self, configuration) => self.setConfiguration(configuration)

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
pub extern "js" fn RTCPeerConnection::set_identity_provider_with_options(
  self : RTCPeerConnection,
  provider : String,
  options : RTCIdentityProviderOptions,
) -> Unit =
  #| (self, provider, options) => self.setIdentityProvider(provider, options)

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
  #| (self) => self.idpLoginUrl

///|
pub extern "js" fn RTCPeerConnection::get_idp_error_info(
  self : RTCPeerConnection,
) -> String? =
  #| (self) => self.idpErrorInfo

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
  track_or_kind : JsValue,
) -> RTCRtpTransceiver =
  #| (self, track_or_kind) => self.addTransceiver(track_or_kind)

///|
pub extern "js" fn RTCPeerConnection::add_transceiver_with_init(
  self : RTCPeerConnection,
  track_or_kind : JsValue,
  init_ : RTCRtpTransceiverInit,
) -> RTCRtpTransceiver =
  #| (self, track_or_kind, init_) => self.addTransceiver(track_or_kind, init_)

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
  #| (self) => self.sctp

///|
pub extern "js" fn RTCPeerConnection::create_data_channel(
  self : RTCPeerConnection,
  label : String,
) -> RTCDataChannel =
  #| (self, label) => self.createDataChannel(label)

///|
pub extern "js" fn RTCPeerConnection::create_data_channel_with_data_channel_dict(
  self : RTCPeerConnection,
  label : String,
  data_channel_dict : RTCDataChannelInit,
) -> RTCDataChannel =
  #| (self, label, data_channel_dict) => self.createDataChannel(label, data_channel_dict)

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
  #| (self, selector) => self.getStats(selector)

///|
/// RTCSessionDescription interface
pub type RTCSessionDescription

///|
pub extern "js" fn RTCSessionDescription::to_js_value(
  self : RTCSessionDescription,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn RTCSessionDescription::new(
  description_init_dict : RTCSessionDescriptionInit,
) -> RTCSessionDescription =
  #| (description_init_dict) => new RTCSessionDescription(description_init_dict)

///|
pub extern "js" fn RTCSessionDescription::get_type(
  self : RTCSessionDescription,
) -> RTCSdpType =
  #| (self) => self.type

///|
pub extern "js" fn RTCSessionDescription::get_sdp(
  self : RTCSessionDescription,
) -> String =
  #| (self) => self.sdp

///|
pub extern "js" fn RTCSessionDescription::to_j_s_o_n(
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
pub extern "js" fn RTCIceCandidate::new(
  candidate_init_dict : RTCLocalIceCandidateInit,
) -> RTCIceCandidate =
  #| (candidate_init_dict) => new RTCIceCandidate(candidate_init_dict)

///|
pub extern "js" fn RTCIceCandidate::get_candidate(
  self : RTCIceCandidate,
) -> String =
  #| (self) => self.candidate

///|
pub extern "js" fn RTCIceCandidate::get_sdp_mid(
  self : RTCIceCandidate,
) -> String? =
  #| (self) => self.sdpMid

///|
pub extern "js" fn RTCIceCandidate::get_sdp_m_line_index(
  self : RTCIceCandidate,
) -> Int? =
  #| (self) => self.sdpMLineIndex

///|
pub extern "js" fn RTCIceCandidate::get_foundation(
  self : RTCIceCandidate,
) -> String? =
  #| (self) => self.foundation

///|
pub extern "js" fn RTCIceCandidate::get_component(
  self : RTCIceCandidate,
) -> RTCIceComponent? =
  #| (self) => self.component

///|
pub extern "js" fn RTCIceCandidate::get_priority(
  self : RTCIceCandidate,
) -> Int? =
  #| (self) => self.priority

///|
pub extern "js" fn RTCIceCandidate::get_address(
  self : RTCIceCandidate,
) -> String? =
  #| (self) => self.address

///|
pub extern "js" fn RTCIceCandidate::get_protocol(
  self : RTCIceCandidate,
) -> RTCIceProtocol? =
  #| (self) => self.protocol

///|
pub extern "js" fn RTCIceCandidate::get_port(self : RTCIceCandidate) -> Int? =
  #| (self) => self.port

///|
pub extern "js" fn RTCIceCandidate::get_type(
  self : RTCIceCandidate,
) -> RTCIceCandidateType? =
  #| (self) => self.type

///|
pub extern "js" fn RTCIceCandidate::get_tcp_type(
  self : RTCIceCandidate,
) -> RTCIceTcpCandidateType? =
  #| (self) => self.tcpType

///|
pub extern "js" fn RTCIceCandidate::get_related_address(
  self : RTCIceCandidate,
) -> String? =
  #| (self) => self.relatedAddress

///|
pub extern "js" fn RTCIceCandidate::get_related_port(
  self : RTCIceCandidate,
) -> Int? =
  #| (self) => self.relatedPort

///|
pub extern "js" fn RTCIceCandidate::get_username_fragment(
  self : RTCIceCandidate,
) -> String? =
  #| (self) => self.usernameFragment

///|
pub extern "js" fn RTCIceCandidate::get_relay_protocol(
  self : RTCIceCandidate,
) -> RTCIceServerTransportProtocol? =
  #| (self) => self.relayProtocol

///|
pub extern "js" fn RTCIceCandidate::get_url(self : RTCIceCandidate) -> String? =
  #| (self) => self.url

///|
pub extern "js" fn RTCIceCandidate::to_j_s_o_n(
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
pub extern "js" fn RTCPeerConnectionIceEvent::new(
  type_ : String,
  event_init_dict : RTCPeerConnectionIceEventInit,
) -> RTCPeerConnectionIceEvent =
  #| (type_, event_init_dict) => new RTCPeerConnectionIceEvent(type_, event_init_dict)

///|
pub extern "js" fn RTCPeerConnectionIceEvent::get_candidate(
  self : RTCPeerConnectionIceEvent,
) -> RTCIceCandidate? =
  #| (self) => self.candidate

///|
pub extern "js" fn RTCPeerConnectionIceEvent::get_url(
  self : RTCPeerConnectionIceEvent,
) -> String? =
  #| (self) => self.url

///|
/// RTCPeerConnectionIceErrorEvent interface
pub type RTCPeerConnectionIceErrorEvent

///|
pub extern "js" fn RTCPeerConnectionIceErrorEvent::to_js_value(
  self : RTCPeerConnectionIceErrorEvent,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn RTCPeerConnectionIceErrorEvent::new(
  type_ : String,
  event_init_dict : RTCPeerConnectionIceErrorEventInit,
) -> RTCPeerConnectionIceErrorEvent =
  #| (type_, event_init_dict) => new RTCPeerConnectionIceErrorEvent(type_, event_init_dict)

///|
pub extern "js" fn RTCPeerConnectionIceErrorEvent::get_address(
  self : RTCPeerConnectionIceErrorEvent,
) -> String? =
  #| (self) => self.address

///|
pub extern "js" fn RTCPeerConnectionIceErrorEvent::get_port(
  self : RTCPeerConnectionIceErrorEvent,
) -> Int? =
  #| (self) => self.port

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
pub extern "js" fn RTCRtpSender::get_track(
  self : RTCRtpSender,
) -> MediaStreamTrack? =
  #| (self) => self.track

///|
pub extern "js" fn RTCRtpSender::get_transport(
  self : RTCRtpSender,
) -> RTCDtlsTransport? =
  #| (self) => self.transport

///|
pub extern "js" fn RTCRtpSender::get_capabilities(
  kind : String,
) -> RTCRtpCapabilities? =
  #| (kind) => RTCRtpSender.getCapabilities(kind)

///|
pub extern "js" fn RTCRtpSender::set_parameters(
  self : RTCRtpSender,
  parameters : RTCRtpSendParameters,
) -> Promise[Unit] =
  #| (self, parameters) => self.setParameters(parameters)

///|
pub extern "js" fn RTCRtpSender::set_parameters_with_set_parameter_options(
  self : RTCRtpSender,
  parameters : RTCRtpSendParameters,
  set_parameter_options : RTCSetParameterOptions,
) -> Promise[Unit] =
  #| (self, parameters, set_parameter_options) => self.setParameters(parameters, set_parameter_options)

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
  #| (self, with_track) => self.replaceTrack(with_track)

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
) -> RTCRtpTransform? =
  #| (self) => self.transform

///|
pub extern "js" fn RTCRtpSender::set_transform(
  self : RTCRtpSender,
  value : RTCRtpTransform?,
) -> Unit =
  #| (self, value) => { self.transform = value }

///|
pub extern "js" fn RTCRtpSender::get_dtmf(
  self : RTCRtpSender,
) -> RTCDTMFSender? =
  #| (self) => self.dtmf

///|
/// RTCRtpReceiver interface
pub type RTCRtpReceiver

///|
pub extern "js" fn RTCRtpReceiver::to_js_value(
  self : RTCRtpReceiver,
) -> JsValue =
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
  #| (self) => self.transport

///|
pub extern "js" fn RTCRtpReceiver::get_capabilities(
  kind : String,
) -> RTCRtpCapabilities? =
  #| (kind) => RTCRtpReceiver.getCapabilities(kind)

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
  #| (self) => self.jitterBufferTarget

///|
pub extern "js" fn RTCRtpReceiver::set_jitter_buffer_target(
  self : RTCRtpReceiver,
  value : DOMHighResTimeStamp?,
) -> Unit =
  #| (self, value) => { self.jitterBufferTarget = value }

///|
pub extern "js" fn RTCRtpReceiver::get_transform(
  self : RTCRtpReceiver,
) -> RTCRtpTransform? =
  #| (self) => self.transform

///|
pub extern "js" fn RTCRtpReceiver::set_transform(
  self : RTCRtpReceiver,
  value : RTCRtpTransform?,
) -> Unit =
  #| (self, value) => { self.transform = value }

///|
/// RTCRtpTransceiver interface
pub type RTCRtpTransceiver

///|
pub extern "js" fn RTCRtpTransceiver::to_js_value(
  self : RTCRtpTransceiver,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn RTCRtpTransceiver::get_mid(
  self : RTCRtpTransceiver,
) -> String? =
  #| (self) => self.mid

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
  #| (self) => self.direction

///|
pub extern "js" fn RTCRtpTransceiver::set_direction(
  self : RTCRtpTransceiver,
  value : RTCRtpTransceiverDirection,
) -> Unit =
  #| (self, value) => { self.direction = value }

///|
pub extern "js" fn RTCRtpTransceiver::get_current_direction(
  self : RTCRtpTransceiver,
) -> RTCRtpTransceiverDirection? =
  #| (self) => self.currentDirection

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
pub extern "js" fn RTCDtlsTransport::get_ice_transport(
  self : RTCDtlsTransport,
) -> RTCIceTransport =
  #| (self) => self.iceTransport

///|
pub extern "js" fn RTCDtlsTransport::get_state(
  self : RTCDtlsTransport,
) -> RTCDtlsTransportState =
  #| (self) => self.state

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
pub extern "js" fn RTCIceTransport::get_role(
  self : RTCIceTransport,
) -> RTCIceRole =
  #| (self) => self.role

///|
pub extern "js" fn RTCIceTransport::get_component(
  self : RTCIceTransport,
) -> RTCIceComponent =
  #| (self) => self.component

///|
pub extern "js" fn RTCIceTransport::get_state(
  self : RTCIceTransport,
) -> RTCIceTransportState =
  #| (self) => self.state

///|
pub extern "js" fn RTCIceTransport::get_gathering_state(
  self : RTCIceTransport,
) -> RTCIceGathererState =
  #| (self) => self.gatheringState

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
  #| (self) => self.getSelectedCandidatePair()

///|
pub extern "js" fn RTCIceTransport::get_local_parameters(
  self : RTCIceTransport,
) -> RTCIceParameters? =
  #| (self) => self.getLocalParameters()

///|
pub extern "js" fn RTCIceTransport::get_remote_parameters(
  self : RTCIceTransport,
) -> RTCIceParameters? =
  #| (self) => self.getRemoteParameters()

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
pub extern "js" fn RTCIceTransport::gather_with_options(
  self : RTCIceTransport,
  options : RTCIceGatherOptions,
) -> Unit =
  #| (self, options) => self.gather(options)

///|
pub extern "js" fn RTCIceTransport::start(self : RTCIceTransport) -> Unit =
  #| (self) => self.start()

///|
pub extern "js" fn RTCIceTransport::start_with_role(
  self : RTCIceTransport,
  remote_parameters : RTCIceParameters,
  role : RTCIceRole,
) -> Unit =
  #| (self, remote_parameters, role) => self.start(remote_parameters, ['unknown', 'controlling', 'controlled'][role])

///|
pub extern "js" fn RTCIceTransport::stop(self : RTCIceTransport) -> Unit =
  #| (self) => self.stop()

///|
pub extern "js" fn RTCIceTransport::add_remote_candidate(
  self : RTCIceTransport,
) -> Unit =
  #| (self) => self.addRemoteCandidate()

///|
pub extern "js" fn RTCIceTransport::add_remote_candidate_with_remote_candidate(
  self : RTCIceTransport,
  remote_candidate : RTCIceCandidateInit,
) -> Unit =
  #| (self, remote_candidate) => self.addRemoteCandidate(remote_candidate)

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
pub extern "js" fn RTCTrackEvent::new(
  type_ : String,
  event_init_dict : RTCTrackEventInit,
) -> RTCTrackEvent =
  #| (type_, event_init_dict) => new RTCTrackEvent(type_, event_init_dict)

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
pub extern "js" fn RTCSctpTransport::get_transport(
  self : RTCSctpTransport,
) -> RTCDtlsTransport =
  #| (self) => self.transport

///|
pub extern "js" fn RTCSctpTransport::get_state(
  self : RTCSctpTransport,
) -> RTCSctpTransportState =
  #| (self) => self.state

///|
pub extern "js" fn RTCSctpTransport::get_max_message_size(
  self : RTCSctpTransport,
) -> Double =
  #| (self) => self.maxMessageSize

///|
pub extern "js" fn RTCSctpTransport::get_max_channels(
  self : RTCSctpTransport,
) -> Int? =
  #| (self) => self.maxChannels

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
pub extern "js" fn RTCDataChannel::get_label(self : RTCDataChannel) -> String =
  #| (self) => self.label

///|
pub extern "js" fn RTCDataChannel::get_ordered(self : RTCDataChannel) -> Bool =
  #| (self) => self.ordered

///|
pub extern "js" fn RTCDataChannel::get_max_packet_life_time(
  self : RTCDataChannel,
) -> Int? =
  #| (self) => self.maxPacketLifeTime

///|
pub extern "js" fn RTCDataChannel::get_max_retransmits(
  self : RTCDataChannel,
) -> Int? =
  #| (self) => self.maxRetransmits

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
  #| (self) => self.id

///|
pub extern "js" fn RTCDataChannel::get_ready_state(
  self : RTCDataChannel,
) -> RTCDataChannelState =
  #| (self) => self.readyState

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
  #| (self) => self.binaryType

///|
pub extern "js" fn RTCDataChannel::set_binary_type(
  self : RTCDataChannel,
  value : BinaryType,
) -> Unit =
  #| (self, value) => { self.binaryType = value }

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
  #| (self) => self.priority

///|
/// RTCDataChannelEvent interface
pub type RTCDataChannelEvent

///|
pub extern "js" fn RTCDataChannelEvent::to_js_value(
  self : RTCDataChannelEvent,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn RTCDataChannelEvent::new(
  type_ : String,
  event_init_dict : RTCDataChannelEventInit,
) -> RTCDataChannelEvent =
  #| (type_, event_init_dict) => new RTCDataChannelEvent(type_, event_init_dict)

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
pub extern "js" fn RTCDTMFSender::insert_d_t_m_f(
  self : RTCDTMFSender,
  tones : String,
) -> Unit =
  #| (self, tones) => self.insertDTMF(tones)

///|
pub extern "js" fn RTCDTMFSender::insert_d_t_m_f_with_inter_tone_gap(
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
pub extern "js" fn RTCDTMFSender::get_can_insert_d_t_m_f(
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
pub extern "js" fn RTCDTMFToneChangeEvent::new(
  type_ : String,
  event_init_dict : RTCDTMFToneChangeEventInit,
) -> RTCDTMFToneChangeEvent =
  #| (type_, event_init_dict) => new RTCDTMFToneChangeEvent(type_, event_init_dict)

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
pub extern "js" fn RTCError::new(
  init_ : RTCErrorInit,
  message : String,
) -> RTCError =
  #| (init_, message) => new RTCError(init_, message)

///|
pub extern "js" fn RTCError::get_error_detail(
  self : RTCError,
) -> RTCErrorDetailType =
  #| (self) => self.errorDetail

///|
pub extern "js" fn RTCError::get_sdp_line_number(self : RTCError) -> Int? =
  #| (self) => self.sdpLineNumber

///|
pub extern "js" fn RTCError::get_sctp_cause_code(self : RTCError) -> Int? =
  #| (self) => self.sctpCauseCode

///|
pub extern "js" fn RTCError::get_received_alert(self : RTCError) -> Int? =
  #| (self) => self.receivedAlert

///|
pub extern "js" fn RTCError::get_sent_alert(self : RTCError) -> Int? =
  #| (self) => self.sentAlert

///|
pub extern "js" fn RTCError::get_http_request_status_code(
  self : RTCError,
) -> Int? =
  #| (self) => self.httpRequestStatusCode

///|
/// RTCErrorEvent interface
pub type RTCErrorEvent

///|
pub extern "js" fn RTCErrorEvent::to_js_value(self : RTCErrorEvent) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn RTCErrorEvent::new(
  type_ : String,
  event_init_dict : RTCErrorEventInit,
) -> RTCErrorEvent =
  #| (type_, event_init_dict) => new RTCErrorEvent(type_, event_init_dict)

///|
pub extern "js" fn RTCErrorEvent::get_error(self : RTCErrorEvent) -> RTCError =
  #| (self) => self.error
