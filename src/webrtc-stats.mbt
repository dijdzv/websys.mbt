// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webrtc-stats

///|
/// RTCStatsType enum
pub(all) enum RTCStatsType {
  Codec
  InboundRtp
  OutboundRtp
  RemoteInboundRtp
  RemoteOutboundRtp
  MediaSource
  MediaPlayout
  PeerConnection
  DataChannel
  Transport
  CandidatePair
  LocalCandidate
  RemoteCandidate
  Certificate
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn RTCStatsType::to_string(self : RTCStatsType) -> String {
  match self {
    RTCStatsType::Codec => "codec"
    RTCStatsType::InboundRtp => "inbound-rtp"
    RTCStatsType::OutboundRtp => "outbound-rtp"
    RTCStatsType::RemoteInboundRtp => "remote-inbound-rtp"
    RTCStatsType::RemoteOutboundRtp => "remote-outbound-rtp"
    RTCStatsType::MediaSource => "media-source"
    RTCStatsType::MediaPlayout => "media-playout"
    RTCStatsType::PeerConnection => "peer-connection"
    RTCStatsType::DataChannel => "data-channel"
    RTCStatsType::Transport => "transport"
    RTCStatsType::CandidatePair => "candidate-pair"
    RTCStatsType::LocalCandidate => "local-candidate"
    RTCStatsType::RemoteCandidate => "remote-candidate"
    RTCStatsType::Certificate => "certificate"
  }
}

///|
/// Parse from string value
pub fn RTCStatsType::from_string(s : String) -> RTCStatsType? {
  match s {
    "codec" => Some(RTCStatsType::Codec)
    "inbound-rtp" => Some(RTCStatsType::InboundRtp)
    "outbound-rtp" => Some(RTCStatsType::OutboundRtp)
    "remote-inbound-rtp" => Some(RTCStatsType::RemoteInboundRtp)
    "remote-outbound-rtp" => Some(RTCStatsType::RemoteOutboundRtp)
    "media-source" => Some(RTCStatsType::MediaSource)
    "media-playout" => Some(RTCStatsType::MediaPlayout)
    "peer-connection" => Some(RTCStatsType::PeerConnection)
    "data-channel" => Some(RTCStatsType::DataChannel)
    "transport" => Some(RTCStatsType::Transport)
    "candidate-pair" => Some(RTCStatsType::CandidatePair)
    "local-candidate" => Some(RTCStatsType::LocalCandidate)
    "remote-candidate" => Some(RTCStatsType::RemoteCandidate)
    "certificate" => Some(RTCStatsType::Certificate)
    _ => None
  }
}

///|
/// RTCQualityLimitationReason enum
pub(all) enum RTCQualityLimitationReason {
  None
  Cpu
  Bandwidth
  Other
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn RTCQualityLimitationReason::to_string(
  self : RTCQualityLimitationReason,
) -> String {
  match self {
    RTCQualityLimitationReason::None => "none"
    RTCQualityLimitationReason::Cpu => "cpu"
    RTCQualityLimitationReason::Bandwidth => "bandwidth"
    RTCQualityLimitationReason::Other => "other"
  }
}

///|
/// Parse from string value
pub fn RTCQualityLimitationReason::from_string(
  s : String,
) -> RTCQualityLimitationReason? {
  match s {
    "none" => Some(RTCQualityLimitationReason::None)
    "cpu" => Some(RTCQualityLimitationReason::Cpu)
    "bandwidth" => Some(RTCQualityLimitationReason::Bandwidth)
    "other" => Some(RTCQualityLimitationReason::Other)
    _ => None
  }
}

///|
/// RTCDtlsRole enum
pub(all) enum RTCDtlsRole {
  Client
  Server
  Unknown
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn RTCDtlsRole::to_string(self : RTCDtlsRole) -> String {
  match self {
    RTCDtlsRole::Client => "client"
    RTCDtlsRole::Server => "server"
    RTCDtlsRole::Unknown => "unknown"
  }
}

///|
/// Parse from string value
pub fn RTCDtlsRole::from_string(s : String) -> RTCDtlsRole? {
  match s {
    "client" => Some(RTCDtlsRole::Client)
    "server" => Some(RTCDtlsRole::Server)
    "unknown" => Some(RTCDtlsRole::Unknown)
    _ => None
  }
}

///|
/// RTCStatsIceCandidatePairState enum
pub(all) enum RTCStatsIceCandidatePairState {
  Frozen
  Waiting
  InProgress
  Failed
  Succeeded
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn RTCStatsIceCandidatePairState::to_string(
  self : RTCStatsIceCandidatePairState,
) -> String {
  match self {
    RTCStatsIceCandidatePairState::Frozen => "frozen"
    RTCStatsIceCandidatePairState::Waiting => "waiting"
    RTCStatsIceCandidatePairState::InProgress => "in-progress"
    RTCStatsIceCandidatePairState::Failed => "failed"
    RTCStatsIceCandidatePairState::Succeeded => "succeeded"
  }
}

///|
/// Parse from string value
pub fn RTCStatsIceCandidatePairState::from_string(
  s : String,
) -> RTCStatsIceCandidatePairState? {
  match s {
    "frozen" => Some(RTCStatsIceCandidatePairState::Frozen)
    "waiting" => Some(RTCStatsIceCandidatePairState::Waiting)
    "in-progress" => Some(RTCStatsIceCandidatePairState::InProgress)
    "failed" => Some(RTCStatsIceCandidatePairState::Failed)
    "succeeded" => Some(RTCStatsIceCandidatePairState::Succeeded)
    _ => None
  }
}

///|
/// RTCRtpStreamStats dictionary
pub(all) struct RTCRtpStreamStats {
  ssrc : Int
  kind : String
  transportId : String?
  codecId : String?
}

///|
/// Create a new RTCRtpStreamStats with default values
pub fn RTCRtpStreamStats::default() -> RTCRtpStreamStats {
  RTCRtpStreamStats::{ ssrc: 0, kind: "", transportId: None, codecId: None, }
}

///|
extern "js" fn RTCRtpStreamStats::to_js_ffi(
  self : RTCRtpStreamStats,
) -> JsValue =
  #| (self) => ({
  #|   ssrc: self.ssrc,
  #|   kind: self.kind,
  #|   transportId: self.transportId,
  #|   codecId: self.codecId
  #| })

///|
/// Convert to JsValue
pub fn RTCRtpStreamStats::to_js(self : RTCRtpStreamStats) -> JsValue {
  RTCRtpStreamStats::to_js_ffi(self)
}

///|
extern "js" fn RTCRtpStreamStats::from_js_ffi(
  value : JsValue,
) -> RTCRtpStreamStats =
  #| (v) => ({
  #|   ssrc: v.ssrc,
  #|   kind: v.kind,
  #|   transportId: v.transportId,
  #|   codecId: v.codecId
  #| })

///|
/// Convert from JsValue
pub fn RTCRtpStreamStats::from_js(value : JsValue) -> RTCRtpStreamStats {
  RTCRtpStreamStats::from_js_ffi(value)
}

///|
/// RTCCodecStats dictionary
pub(all) struct RTCCodecStats {
  payloadType : Int
  transportId : String
  mimeType : String
  clockRate : Int?
  channels : Int?
  sdpFmtpLine : String?
}

///|
/// Create a new RTCCodecStats with default values
pub fn RTCCodecStats::default() -> RTCCodecStats {
  RTCCodecStats::{
    payloadType: 0,
    transportId: "",
    mimeType: "",
    clockRate: None,
    channels: None,
    sdpFmtpLine: None,
  }
}

///|
extern "js" fn RTCCodecStats::to_js_ffi(self : RTCCodecStats) -> JsValue =
  #| (self) => ({
  #|   payloadType: self.payloadType,
  #|   transportId: self.transportId,
  #|   mimeType: self.mimeType,
  #|   clockRate: self.clockRate,
  #|   channels: self.channels,
  #|   sdpFmtpLine: self.sdpFmtpLine
  #| })

///|
/// Convert to JsValue
pub fn RTCCodecStats::to_js(self : RTCCodecStats) -> JsValue {
  RTCCodecStats::to_js_ffi(self)
}

///|
extern "js" fn RTCCodecStats::from_js_ffi(value : JsValue) -> RTCCodecStats =
  #| (v) => ({
  #|   payloadType: v.payloadType,
  #|   transportId: v.transportId,
  #|   mimeType: v.mimeType,
  #|   clockRate: v.clockRate,
  #|   channels: v.channels,
  #|   sdpFmtpLine: v.sdpFmtpLine
  #| })

///|
/// Convert from JsValue
pub fn RTCCodecStats::from_js(value : JsValue) -> RTCCodecStats {
  RTCCodecStats::from_js_ffi(value)
}

///|
/// RTCReceivedRtpStreamStats dictionary
pub(all) struct RTCReceivedRtpStreamStats {
  ssrc : Int
  kind : String
  transportId : String?
  codecId : String?
  packetsReceived : Int64?
  packetsReceivedWithEct1 : Int64?
  packetsReceivedWithCe : Int64?
  packetsReportedAsLost : Int64?
  packetsReportedAsLostButRecovered : Int64?
  packetsLost : Int64?
  jitter : Double?
}

///|
/// Create a new RTCReceivedRtpStreamStats with default values
pub fn RTCReceivedRtpStreamStats::default() -> RTCReceivedRtpStreamStats {
  RTCReceivedRtpStreamStats::{
    ssrc: 0,
    kind: "",
    transportId: None,
    codecId: None,
    packetsReceived: None,
    packetsReceivedWithEct1: None,
    packetsReceivedWithCe: None,
    packetsReportedAsLost: None,
    packetsReportedAsLostButRecovered: None,
    packetsLost: None,
    jitter: None,
  }
}

///|
extern "js" fn RTCReceivedRtpStreamStats::to_js_ffi(
  self : RTCReceivedRtpStreamStats,
) -> JsValue =
  #| (self) => ({
  #|   ssrc: self.ssrc,
  #|   kind: self.kind,
  #|   transportId: self.transportId,
  #|   codecId: self.codecId,
  #|   packetsReceived: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.packetsReceived),
  #|   packetsReceivedWithEct1: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.packetsReceivedWithEct1),
  #|   packetsReceivedWithCe: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.packetsReceivedWithCe),
  #|   packetsReportedAsLost: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.packetsReportedAsLost),
  #|   packetsReportedAsLostButRecovered: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.packetsReportedAsLostButRecovered),
  #|   packetsLost: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asIntN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.packetsLost),
  #|   jitter: ((() => { const v = self.jitter; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn RTCReceivedRtpStreamStats::to_js(
  self : RTCReceivedRtpStreamStats,
) -> JsValue {
  RTCReceivedRtpStreamStats::to_js_ffi(self)
}

///|
extern "js" fn RTCReceivedRtpStreamStats::from_js_ffi(
  value : JsValue,
) -> RTCReceivedRtpStreamStats =
  #| (v) => ({
  #|   ssrc: v.ssrc,
  #|   kind: v.kind,
  #|   transportId: v.transportId,
  #|   codecId: v.codecId,
  #|   packetsReceived: (v.packetsReceived === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.packetsReceived)),
  #|   packetsReceivedWithEct1: (v.packetsReceivedWithEct1 === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.packetsReceivedWithEct1)),
  #|   packetsReceivedWithCe: (v.packetsReceivedWithCe === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.packetsReceivedWithCe)),
  #|   packetsReportedAsLost: (v.packetsReportedAsLost === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.packetsReportedAsLost)),
  #|   packetsReportedAsLostButRecovered: (v.packetsReportedAsLostButRecovered === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.packetsReportedAsLostButRecovered)),
  #|   packetsLost: (v.packetsLost === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.packetsLost)),
  #|   jitter: (v.jitter === undefined ? { $tag: 0 } : { $tag: 1, _0: v.jitter })
  #| })

///|
/// Convert from JsValue
pub fn RTCReceivedRtpStreamStats::from_js(
  value : JsValue,
) -> RTCReceivedRtpStreamStats {
  RTCReceivedRtpStreamStats::from_js_ffi(value)
}

///|
/// Catch dictionary conversion errors, including unsafe integer ranges.
pub fn RTCReceivedRtpStreamStats::to_js_checked(
  self : RTCReceivedRtpStreamStats,
) -> Result[JsValue, JsError] {
  try_dictionary_conversion(() => self.to_js())
}

///|
extern "js" fn try_dictionary_RTCReceivedRtpStreamStats(
  convert : () -> RTCReceivedRtpStreamStats,
) -> Result[RTCReceivedRtpStreamStats, JsError] =
  #| convert => { try { return { $tag: 1, _0: convert() }; } catch (error) { return { $tag: 0, _0: error }; } }

///|
/// Catch invalid host fields, including unsafe integer ranges.
pub fn RTCReceivedRtpStreamStats::from_js_checked(
  value : JsValue,
) -> Result[RTCReceivedRtpStreamStats, JsError] {
  try_dictionary_RTCReceivedRtpStreamStats(() => {
    RTCReceivedRtpStreamStats::from_js(value)
  })
}

///|
/// RTCInboundRtpStreamStats dictionary
pub(all) struct RTCInboundRtpStreamStats {
  ssrc : Int
  kind : String
  transportId : String?
  codecId : String?
  packetsReceived : Int64?
  packetsReceivedWithEct1 : Int64?
  packetsReceivedWithCe : Int64?
  packetsReportedAsLost : Int64?
  packetsReportedAsLostButRecovered : Int64?
  packetsLost : Int64?
  jitter : Double?
  trackIdentifier : String
  mid : String?
  remoteId : String?
  framesDecoded : Int?
  keyFramesDecoded : Int?
  framesRendered : Int?
  framesDropped : Int?
  frameWidth : Int?
  frameHeight : Int?
  framesPerSecond : Double?
  qpSum : Int64?
  totalDecodeTime : Double?
  totalInterFrameDelay : Double?
  totalSquaredInterFrameDelay : Double?
  pauseCount : Int?
  totalPausesDuration : Double?
  freezeCount : Int?
  totalFreezesDuration : Double?
  lastPacketReceivedTimestamp : DOMHighResTimeStamp?
  headerBytesReceived : Int64?
  packetsDiscarded : Int64?
  fecBytesReceived : Int64?
  fecPacketsReceived : Int64?
  fecPacketsDiscarded : Int64?
  bytesReceived : Int64?
  nackCount : Int?
  firCount : Int?
  pliCount : Int?
  totalProcessingDelay : Double?
  estimatedPlayoutTimestamp : DOMHighResTimeStamp?
  jitterBufferDelay : Double?
  jitterBufferTargetDelay : Double?
  jitterBufferEmittedCount : Int64?
  jitterBufferMinimumDelay : Double?
  totalSamplesReceived : Int64?
  concealedSamples : Int64?
  silentConcealedSamples : Int64?
  concealmentEvents : Int64?
  insertedSamplesForDeceleration : Int64?
  removedSamplesForAcceleration : Int64?
  audioLevel : Double?
  totalAudioEnergy : Double?
  totalSamplesDuration : Double?
  framesReceived : Int?
  decoderImplementation : String?
  playoutId : String?
  powerEfficientDecoder : Bool?
  framesAssembledFromMultiplePackets : Int?
  totalAssemblyTime : Double?
  retransmittedPacketsReceived : Int64?
  retransmittedBytesReceived : Int64?
  rtxSsrc : Int?
  fecSsrc : Int?
  totalCorruptionProbability : Double?
  totalSquaredCorruptionProbability : Double?
  corruptionMeasurements : Int64?
}

///|
/// Create a new RTCInboundRtpStreamStats with default values
pub fn RTCInboundRtpStreamStats::default() -> RTCInboundRtpStreamStats {
  RTCInboundRtpStreamStats::{
    ssrc: 0,
    kind: "",
    transportId: None,
    codecId: None,
    packetsReceived: None,
    packetsReceivedWithEct1: None,
    packetsReceivedWithCe: None,
    packetsReportedAsLost: None,
    packetsReportedAsLostButRecovered: None,
    packetsLost: None,
    jitter: None,
    trackIdentifier: "",
    mid: None,
    remoteId: None,
    framesDecoded: None,
    keyFramesDecoded: None,
    framesRendered: None,
    framesDropped: None,
    frameWidth: None,
    frameHeight: None,
    framesPerSecond: None,
    qpSum: None,
    totalDecodeTime: None,
    totalInterFrameDelay: None,
    totalSquaredInterFrameDelay: None,
    pauseCount: None,
    totalPausesDuration: None,
    freezeCount: None,
    totalFreezesDuration: None,
    lastPacketReceivedTimestamp: None,
    headerBytesReceived: None,
    packetsDiscarded: None,
    fecBytesReceived: None,
    fecPacketsReceived: None,
    fecPacketsDiscarded: None,
    bytesReceived: None,
    nackCount: None,
    firCount: None,
    pliCount: None,
    totalProcessingDelay: None,
    estimatedPlayoutTimestamp: None,
    jitterBufferDelay: None,
    jitterBufferTargetDelay: None,
    jitterBufferEmittedCount: None,
    jitterBufferMinimumDelay: None,
    totalSamplesReceived: None,
    concealedSamples: None,
    silentConcealedSamples: None,
    concealmentEvents: None,
    insertedSamplesForDeceleration: None,
    removedSamplesForAcceleration: None,
    audioLevel: None,
    totalAudioEnergy: None,
    totalSamplesDuration: None,
    framesReceived: None,
    decoderImplementation: None,
    playoutId: None,
    powerEfficientDecoder: None,
    framesAssembledFromMultiplePackets: None,
    totalAssemblyTime: None,
    retransmittedPacketsReceived: None,
    retransmittedBytesReceived: None,
    rtxSsrc: None,
    fecSsrc: None,
    totalCorruptionProbability: None,
    totalSquaredCorruptionProbability: None,
    corruptionMeasurements: None,
  }
}

///|
extern "js" fn RTCInboundRtpStreamStats::to_js_ffi(
  self : RTCInboundRtpStreamStats,
) -> JsValue =
  #| (self) => ({
  #|   ssrc: self.ssrc,
  #|   kind: self.kind,
  #|   transportId: self.transportId,
  #|   codecId: self.codecId,
  #|   packetsReceived: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.packetsReceived),
  #|   packetsReceivedWithEct1: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.packetsReceivedWithEct1),
  #|   packetsReceivedWithCe: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.packetsReceivedWithCe),
  #|   packetsReportedAsLost: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.packetsReportedAsLost),
  #|   packetsReportedAsLostButRecovered: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.packetsReportedAsLostButRecovered),
  #|   packetsLost: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asIntN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.packetsLost),
  #|   jitter: ((() => { const v = self.jitter; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   trackIdentifier: self.trackIdentifier,
  #|   mid: self.mid,
  #|   remoteId: self.remoteId,
  #|   framesDecoded: self.framesDecoded,
  #|   keyFramesDecoded: self.keyFramesDecoded,
  #|   framesRendered: self.framesRendered,
  #|   framesDropped: self.framesDropped,
  #|   frameWidth: self.frameWidth,
  #|   frameHeight: self.frameHeight,
  #|   framesPerSecond: ((() => { const v = self.framesPerSecond; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   qpSum: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.qpSum),
  #|   totalDecodeTime: ((() => { const v = self.totalDecodeTime; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   totalInterFrameDelay: ((() => { const v = self.totalInterFrameDelay; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   totalSquaredInterFrameDelay: ((() => { const v = self.totalSquaredInterFrameDelay; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   pauseCount: self.pauseCount,
  #|   totalPausesDuration: ((() => { const v = self.totalPausesDuration; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   freezeCount: self.freezeCount,
  #|   totalFreezesDuration: ((() => { const v = self.totalFreezesDuration; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   lastPacketReceivedTimestamp: ((() => { const v = self.lastPacketReceivedTimestamp; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   headerBytesReceived: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.headerBytesReceived),
  #|   packetsDiscarded: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.packetsDiscarded),
  #|   fecBytesReceived: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.fecBytesReceived),
  #|   fecPacketsReceived: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.fecPacketsReceived),
  #|   fecPacketsDiscarded: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.fecPacketsDiscarded),
  #|   bytesReceived: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.bytesReceived),
  #|   nackCount: self.nackCount,
  #|   firCount: self.firCount,
  #|   pliCount: self.pliCount,
  #|   totalProcessingDelay: ((() => { const v = self.totalProcessingDelay; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   estimatedPlayoutTimestamp: ((() => { const v = self.estimatedPlayoutTimestamp; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   jitterBufferDelay: ((() => { const v = self.jitterBufferDelay; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   jitterBufferTargetDelay: ((() => { const v = self.jitterBufferTargetDelay; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   jitterBufferEmittedCount: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.jitterBufferEmittedCount),
  #|   jitterBufferMinimumDelay: ((() => { const v = self.jitterBufferMinimumDelay; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   totalSamplesReceived: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.totalSamplesReceived),
  #|   concealedSamples: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.concealedSamples),
  #|   silentConcealedSamples: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.silentConcealedSamples),
  #|   concealmentEvents: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.concealmentEvents),
  #|   insertedSamplesForDeceleration: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.insertedSamplesForDeceleration),
  #|   removedSamplesForAcceleration: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.removedSamplesForAcceleration),
  #|   audioLevel: ((() => { const v = self.audioLevel; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   totalAudioEnergy: ((() => { const v = self.totalAudioEnergy; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   totalSamplesDuration: ((() => { const v = self.totalSamplesDuration; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   framesReceived: self.framesReceived,
  #|   decoderImplementation: self.decoderImplementation,
  #|   playoutId: self.playoutId,
  #|   powerEfficientDecoder: (self.powerEfficientDecoder === -1 ? undefined : self.powerEfficientDecoder),
  #|   framesAssembledFromMultiplePackets: self.framesAssembledFromMultiplePackets,
  #|   totalAssemblyTime: ((() => { const v = self.totalAssemblyTime; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   retransmittedPacketsReceived: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.retransmittedPacketsReceived),
  #|   retransmittedBytesReceived: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.retransmittedBytesReceived),
  #|   rtxSsrc: self.rtxSsrc,
  #|   fecSsrc: self.fecSsrc,
  #|   totalCorruptionProbability: ((() => { const v = self.totalCorruptionProbability; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   totalSquaredCorruptionProbability: ((() => { const v = self.totalSquaredCorruptionProbability; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   corruptionMeasurements: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.corruptionMeasurements)
  #| })

///|
/// Convert to JsValue
pub fn RTCInboundRtpStreamStats::to_js(
  self : RTCInboundRtpStreamStats,
) -> JsValue {
  RTCInboundRtpStreamStats::to_js_ffi(self)
}

///|
extern "js" fn RTCInboundRtpStreamStats::from_js_ffi(
  value : JsValue,
) -> RTCInboundRtpStreamStats =
  #| (v) => ({
  #|   ssrc: v.ssrc,
  #|   kind: v.kind,
  #|   transportId: v.transportId,
  #|   codecId: v.codecId,
  #|   packetsReceived: (v.packetsReceived === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.packetsReceived)),
  #|   packetsReceivedWithEct1: (v.packetsReceivedWithEct1 === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.packetsReceivedWithEct1)),
  #|   packetsReceivedWithCe: (v.packetsReceivedWithCe === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.packetsReceivedWithCe)),
  #|   packetsReportedAsLost: (v.packetsReportedAsLost === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.packetsReportedAsLost)),
  #|   packetsReportedAsLostButRecovered: (v.packetsReportedAsLostButRecovered === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.packetsReportedAsLostButRecovered)),
  #|   packetsLost: (v.packetsLost === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.packetsLost)),
  #|   jitter: (v.jitter === undefined ? { $tag: 0 } : { $tag: 1, _0: v.jitter }),
  #|   trackIdentifier: v.trackIdentifier,
  #|   mid: v.mid,
  #|   remoteId: v.remoteId,
  #|   framesDecoded: v.framesDecoded,
  #|   keyFramesDecoded: v.keyFramesDecoded,
  #|   framesRendered: v.framesRendered,
  #|   framesDropped: v.framesDropped,
  #|   frameWidth: v.frameWidth,
  #|   frameHeight: v.frameHeight,
  #|   framesPerSecond: (v.framesPerSecond === undefined ? { $tag: 0 } : { $tag: 1, _0: v.framesPerSecond }),
  #|   qpSum: (v.qpSum === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.qpSum)),
  #|   totalDecodeTime: (v.totalDecodeTime === undefined ? { $tag: 0 } : { $tag: 1, _0: v.totalDecodeTime }),
  #|   totalInterFrameDelay: (v.totalInterFrameDelay === undefined ? { $tag: 0 } : { $tag: 1, _0: v.totalInterFrameDelay }),
  #|   totalSquaredInterFrameDelay: (v.totalSquaredInterFrameDelay === undefined ? { $tag: 0 } : { $tag: 1, _0: v.totalSquaredInterFrameDelay }),
  #|   pauseCount: v.pauseCount,
  #|   totalPausesDuration: (v.totalPausesDuration === undefined ? { $tag: 0 } : { $tag: 1, _0: v.totalPausesDuration }),
  #|   freezeCount: v.freezeCount,
  #|   totalFreezesDuration: (v.totalFreezesDuration === undefined ? { $tag: 0 } : { $tag: 1, _0: v.totalFreezesDuration }),
  #|   lastPacketReceivedTimestamp: (v.lastPacketReceivedTimestamp === undefined ? { $tag: 0 } : { $tag: 1, _0: v.lastPacketReceivedTimestamp }),
  #|   headerBytesReceived: (v.headerBytesReceived === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.headerBytesReceived)),
  #|   packetsDiscarded: (v.packetsDiscarded === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.packetsDiscarded)),
  #|   fecBytesReceived: (v.fecBytesReceived === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.fecBytesReceived)),
  #|   fecPacketsReceived: (v.fecPacketsReceived === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.fecPacketsReceived)),
  #|   fecPacketsDiscarded: (v.fecPacketsDiscarded === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.fecPacketsDiscarded)),
  #|   bytesReceived: (v.bytesReceived === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.bytesReceived)),
  #|   nackCount: v.nackCount,
  #|   firCount: v.firCount,
  #|   pliCount: v.pliCount,
  #|   totalProcessingDelay: (v.totalProcessingDelay === undefined ? { $tag: 0 } : { $tag: 1, _0: v.totalProcessingDelay }),
  #|   estimatedPlayoutTimestamp: (v.estimatedPlayoutTimestamp === undefined ? { $tag: 0 } : { $tag: 1, _0: v.estimatedPlayoutTimestamp }),
  #|   jitterBufferDelay: (v.jitterBufferDelay === undefined ? { $tag: 0 } : { $tag: 1, _0: v.jitterBufferDelay }),
  #|   jitterBufferTargetDelay: (v.jitterBufferTargetDelay === undefined ? { $tag: 0 } : { $tag: 1, _0: v.jitterBufferTargetDelay }),
  #|   jitterBufferEmittedCount: (v.jitterBufferEmittedCount === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.jitterBufferEmittedCount)),
  #|   jitterBufferMinimumDelay: (v.jitterBufferMinimumDelay === undefined ? { $tag: 0 } : { $tag: 1, _0: v.jitterBufferMinimumDelay }),
  #|   totalSamplesReceived: (v.totalSamplesReceived === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.totalSamplesReceived)),
  #|   concealedSamples: (v.concealedSamples === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.concealedSamples)),
  #|   silentConcealedSamples: (v.silentConcealedSamples === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.silentConcealedSamples)),
  #|   concealmentEvents: (v.concealmentEvents === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.concealmentEvents)),
  #|   insertedSamplesForDeceleration: (v.insertedSamplesForDeceleration === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.insertedSamplesForDeceleration)),
  #|   removedSamplesForAcceleration: (v.removedSamplesForAcceleration === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.removedSamplesForAcceleration)),
  #|   audioLevel: (v.audioLevel === undefined ? { $tag: 0 } : { $tag: 1, _0: v.audioLevel }),
  #|   totalAudioEnergy: (v.totalAudioEnergy === undefined ? { $tag: 0 } : { $tag: 1, _0: v.totalAudioEnergy }),
  #|   totalSamplesDuration: (v.totalSamplesDuration === undefined ? { $tag: 0 } : { $tag: 1, _0: v.totalSamplesDuration }),
  #|   framesReceived: v.framesReceived,
  #|   decoderImplementation: v.decoderImplementation,
  #|   playoutId: v.playoutId,
  #|   powerEfficientDecoder: (v.powerEfficientDecoder === undefined ? -1 : v.powerEfficientDecoder),
  #|   framesAssembledFromMultiplePackets: v.framesAssembledFromMultiplePackets,
  #|   totalAssemblyTime: (v.totalAssemblyTime === undefined ? { $tag: 0 } : { $tag: 1, _0: v.totalAssemblyTime }),
  #|   retransmittedPacketsReceived: (v.retransmittedPacketsReceived === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.retransmittedPacketsReceived)),
  #|   retransmittedBytesReceived: (v.retransmittedBytesReceived === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.retransmittedBytesReceived)),
  #|   rtxSsrc: v.rtxSsrc,
  #|   fecSsrc: v.fecSsrc,
  #|   totalCorruptionProbability: (v.totalCorruptionProbability === undefined ? { $tag: 0 } : { $tag: 1, _0: v.totalCorruptionProbability }),
  #|   totalSquaredCorruptionProbability: (v.totalSquaredCorruptionProbability === undefined ? { $tag: 0 } : { $tag: 1, _0: v.totalSquaredCorruptionProbability }),
  #|   corruptionMeasurements: (v.corruptionMeasurements === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.corruptionMeasurements))
  #| })

///|
/// Convert from JsValue
pub fn RTCInboundRtpStreamStats::from_js(
  value : JsValue,
) -> RTCInboundRtpStreamStats {
  RTCInboundRtpStreamStats::from_js_ffi(value)
}

///|
/// Catch dictionary conversion errors, including unsafe integer ranges.
pub fn RTCInboundRtpStreamStats::to_js_checked(
  self : RTCInboundRtpStreamStats,
) -> Result[JsValue, JsError] {
  try_dictionary_conversion(() => self.to_js())
}

///|
extern "js" fn try_dictionary_RTCInboundRtpStreamStats(
  convert : () -> RTCInboundRtpStreamStats,
) -> Result[RTCInboundRtpStreamStats, JsError] =
  #| convert => { try { return { $tag: 1, _0: convert() }; } catch (error) { return { $tag: 0, _0: error }; } }

///|
/// Catch invalid host fields, including unsafe integer ranges.
pub fn RTCInboundRtpStreamStats::from_js_checked(
  value : JsValue,
) -> Result[RTCInboundRtpStreamStats, JsError] {
  try_dictionary_RTCInboundRtpStreamStats(() => {
    RTCInboundRtpStreamStats::from_js(value)
  })
}

///|
/// RTCRemoteInboundRtpStreamStats dictionary
pub(all) struct RTCRemoteInboundRtpStreamStats {
  ssrc : Int
  kind : String
  transportId : String?
  codecId : String?
  packetsReceived : Int64?
  packetsReceivedWithEct1 : Int64?
  packetsReceivedWithCe : Int64?
  packetsReportedAsLost : Int64?
  packetsReportedAsLostButRecovered : Int64?
  packetsLost : Int64?
  jitter : Double?
  localId : String?
  roundTripTime : Double?
  totalRoundTripTime : Double?
  fractionLost : Double?
  roundTripTimeMeasurements : Int64?
  packetsWithBleachedEct1Marking : Int64?
}

///|
/// Create a new RTCRemoteInboundRtpStreamStats with default values
pub fn RTCRemoteInboundRtpStreamStats::default() -> RTCRemoteInboundRtpStreamStats {
  RTCRemoteInboundRtpStreamStats::{
    ssrc: 0,
    kind: "",
    transportId: None,
    codecId: None,
    packetsReceived: None,
    packetsReceivedWithEct1: None,
    packetsReceivedWithCe: None,
    packetsReportedAsLost: None,
    packetsReportedAsLostButRecovered: None,
    packetsLost: None,
    jitter: None,
    localId: None,
    roundTripTime: None,
    totalRoundTripTime: None,
    fractionLost: None,
    roundTripTimeMeasurements: None,
    packetsWithBleachedEct1Marking: None,
  }
}

///|
extern "js" fn RTCRemoteInboundRtpStreamStats::to_js_ffi(
  self : RTCRemoteInboundRtpStreamStats,
) -> JsValue =
  #| (self) => ({
  #|   ssrc: self.ssrc,
  #|   kind: self.kind,
  #|   transportId: self.transportId,
  #|   codecId: self.codecId,
  #|   packetsReceived: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.packetsReceived),
  #|   packetsReceivedWithEct1: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.packetsReceivedWithEct1),
  #|   packetsReceivedWithCe: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.packetsReceivedWithCe),
  #|   packetsReportedAsLost: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.packetsReportedAsLost),
  #|   packetsReportedAsLostButRecovered: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.packetsReportedAsLostButRecovered),
  #|   packetsLost: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asIntN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.packetsLost),
  #|   jitter: ((() => { const v = self.jitter; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   localId: self.localId,
  #|   roundTripTime: ((() => { const v = self.roundTripTime; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   totalRoundTripTime: ((() => { const v = self.totalRoundTripTime; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   fractionLost: ((() => { const v = self.fractionLost; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   roundTripTimeMeasurements: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.roundTripTimeMeasurements),
  #|   packetsWithBleachedEct1Marking: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.packetsWithBleachedEct1Marking)
  #| })

///|
/// Convert to JsValue
pub fn RTCRemoteInboundRtpStreamStats::to_js(
  self : RTCRemoteInboundRtpStreamStats,
) -> JsValue {
  RTCRemoteInboundRtpStreamStats::to_js_ffi(self)
}

///|
extern "js" fn RTCRemoteInboundRtpStreamStats::from_js_ffi(
  value : JsValue,
) -> RTCRemoteInboundRtpStreamStats =
  #| (v) => ({
  #|   ssrc: v.ssrc,
  #|   kind: v.kind,
  #|   transportId: v.transportId,
  #|   codecId: v.codecId,
  #|   packetsReceived: (v.packetsReceived === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.packetsReceived)),
  #|   packetsReceivedWithEct1: (v.packetsReceivedWithEct1 === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.packetsReceivedWithEct1)),
  #|   packetsReceivedWithCe: (v.packetsReceivedWithCe === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.packetsReceivedWithCe)),
  #|   packetsReportedAsLost: (v.packetsReportedAsLost === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.packetsReportedAsLost)),
  #|   packetsReportedAsLostButRecovered: (v.packetsReportedAsLostButRecovered === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.packetsReportedAsLostButRecovered)),
  #|   packetsLost: (v.packetsLost === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.packetsLost)),
  #|   jitter: (v.jitter === undefined ? { $tag: 0 } : { $tag: 1, _0: v.jitter }),
  #|   localId: v.localId,
  #|   roundTripTime: (v.roundTripTime === undefined ? { $tag: 0 } : { $tag: 1, _0: v.roundTripTime }),
  #|   totalRoundTripTime: (v.totalRoundTripTime === undefined ? { $tag: 0 } : { $tag: 1, _0: v.totalRoundTripTime }),
  #|   fractionLost: (v.fractionLost === undefined ? { $tag: 0 } : { $tag: 1, _0: v.fractionLost }),
  #|   roundTripTimeMeasurements: (v.roundTripTimeMeasurements === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.roundTripTimeMeasurements)),
  #|   packetsWithBleachedEct1Marking: (v.packetsWithBleachedEct1Marking === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.packetsWithBleachedEct1Marking))
  #| })

///|
/// Convert from JsValue
pub fn RTCRemoteInboundRtpStreamStats::from_js(
  value : JsValue,
) -> RTCRemoteInboundRtpStreamStats {
  RTCRemoteInboundRtpStreamStats::from_js_ffi(value)
}

///|
/// Catch dictionary conversion errors, including unsafe integer ranges.
pub fn RTCRemoteInboundRtpStreamStats::to_js_checked(
  self : RTCRemoteInboundRtpStreamStats,
) -> Result[JsValue, JsError] {
  try_dictionary_conversion(() => self.to_js())
}

///|
extern "js" fn try_dictionary_RTCRemoteInboundRtpStreamStats(
  convert : () -> RTCRemoteInboundRtpStreamStats,
) -> Result[RTCRemoteInboundRtpStreamStats, JsError] =
  #| convert => { try { return { $tag: 1, _0: convert() }; } catch (error) { return { $tag: 0, _0: error }; } }

///|
/// Catch invalid host fields, including unsafe integer ranges.
pub fn RTCRemoteInboundRtpStreamStats::from_js_checked(
  value : JsValue,
) -> Result[RTCRemoteInboundRtpStreamStats, JsError] {
  try_dictionary_RTCRemoteInboundRtpStreamStats(() => {
    RTCRemoteInboundRtpStreamStats::from_js(value)
  })
}

///|
/// RTCSentRtpStreamStats dictionary
pub(all) struct RTCSentRtpStreamStats {
  ssrc : Int
  kind : String
  transportId : String?
  codecId : String?
  packetsSent : Int64?
  bytesSent : Int64?
}

///|
/// Create a new RTCSentRtpStreamStats with default values
pub fn RTCSentRtpStreamStats::default() -> RTCSentRtpStreamStats {
  RTCSentRtpStreamStats::{
    ssrc: 0,
    kind: "",
    transportId: None,
    codecId: None,
    packetsSent: None,
    bytesSent: None,
  }
}

///|
extern "js" fn RTCSentRtpStreamStats::to_js_ffi(
  self : RTCSentRtpStreamStats,
) -> JsValue =
  #| (self) => ({
  #|   ssrc: self.ssrc,
  #|   kind: self.kind,
  #|   transportId: self.transportId,
  #|   codecId: self.codecId,
  #|   packetsSent: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.packetsSent),
  #|   bytesSent: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.bytesSent)
  #| })

///|
/// Convert to JsValue
pub fn RTCSentRtpStreamStats::to_js(self : RTCSentRtpStreamStats) -> JsValue {
  RTCSentRtpStreamStats::to_js_ffi(self)
}

///|
extern "js" fn RTCSentRtpStreamStats::from_js_ffi(
  value : JsValue,
) -> RTCSentRtpStreamStats =
  #| (v) => ({
  #|   ssrc: v.ssrc,
  #|   kind: v.kind,
  #|   transportId: v.transportId,
  #|   codecId: v.codecId,
  #|   packetsSent: (v.packetsSent === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.packetsSent)),
  #|   bytesSent: (v.bytesSent === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.bytesSent))
  #| })

///|
/// Convert from JsValue
pub fn RTCSentRtpStreamStats::from_js(value : JsValue) -> RTCSentRtpStreamStats {
  RTCSentRtpStreamStats::from_js_ffi(value)
}

///|
/// Catch dictionary conversion errors, including unsafe integer ranges.
pub fn RTCSentRtpStreamStats::to_js_checked(
  self : RTCSentRtpStreamStats,
) -> Result[JsValue, JsError] {
  try_dictionary_conversion(() => self.to_js())
}

///|
extern "js" fn try_dictionary_RTCSentRtpStreamStats(
  convert : () -> RTCSentRtpStreamStats,
) -> Result[RTCSentRtpStreamStats, JsError] =
  #| convert => { try { return { $tag: 1, _0: convert() }; } catch (error) { return { $tag: 0, _0: error }; } }

///|
/// Catch invalid host fields, including unsafe integer ranges.
pub fn RTCSentRtpStreamStats::from_js_checked(
  value : JsValue,
) -> Result[RTCSentRtpStreamStats, JsError] {
  try_dictionary_RTCSentRtpStreamStats(() => {
    RTCSentRtpStreamStats::from_js(value)
  })
}

///|
/// RTCOutboundRtpStreamStats dictionary
pub(all) struct RTCOutboundRtpStreamStats {
  ssrc : Int
  kind : String
  transportId : String?
  codecId : String?
  packetsSent : Int64?
  bytesSent : Int64?
  mid : String?
  mediaSourceId : String?
  remoteId : String?
  rid : String?
  encodingIndex : Int?
  headerBytesSent : Int64?
  retransmittedPacketsSent : Int64?
  retransmittedBytesSent : Int64?
  rtxSsrc : Int?
  targetBitrate : Double?
  totalEncodedBytesTarget : Int64?
  frameWidth : Int?
  frameHeight : Int?
  framesPerSecond : Double?
  framesSent : Int?
  hugeFramesSent : Int?
  framesEncoded : Int?
  keyFramesEncoded : Int?
  qpSum : Int64?
  psnrSum : JsValue?
  psnrMeasurements : Int64?
  totalEncodeTime : Double?
  totalPacketSendDelay : Double?
  qualityLimitationReason : RTCQualityLimitationReason?
  qualityLimitationDurations : JsValue?
  qualityLimitationResolutionChanges : Int?
  nackCount : Int?
  firCount : Int?
  pliCount : Int?
  encoderImplementation : String?
  powerEfficientEncoder : Bool?
  active : Bool?
  scalabilityMode : String?
  packetsSentWithEct1 : Int64?
}

///|
/// Create a new RTCOutboundRtpStreamStats with default values
pub fn RTCOutboundRtpStreamStats::default() -> RTCOutboundRtpStreamStats {
  RTCOutboundRtpStreamStats::{
    ssrc: 0,
    kind: "",
    transportId: None,
    codecId: None,
    packetsSent: None,
    bytesSent: None,
    mid: None,
    mediaSourceId: None,
    remoteId: None,
    rid: None,
    encodingIndex: None,
    headerBytesSent: None,
    retransmittedPacketsSent: None,
    retransmittedBytesSent: None,
    rtxSsrc: None,
    targetBitrate: None,
    totalEncodedBytesTarget: None,
    frameWidth: None,
    frameHeight: None,
    framesPerSecond: None,
    framesSent: None,
    hugeFramesSent: None,
    framesEncoded: None,
    keyFramesEncoded: None,
    qpSum: None,
    psnrSum: None,
    psnrMeasurements: None,
    totalEncodeTime: None,
    totalPacketSendDelay: None,
    qualityLimitationReason: None,
    qualityLimitationDurations: None,
    qualityLimitationResolutionChanges: None,
    nackCount: None,
    firCount: None,
    pliCount: None,
    encoderImplementation: None,
    powerEfficientEncoder: None,
    active: None,
    scalabilityMode: None,
    packetsSentWithEct1: None,
  }
}

///|
extern "js" fn RTCOutboundRtpStreamStats::to_js_ffi(
  self : RTCOutboundRtpStreamStats,
) -> JsValue =
  #| (self) => ({
  #|   ssrc: self.ssrc,
  #|   kind: self.kind,
  #|   transportId: self.transportId,
  #|   codecId: self.codecId,
  #|   packetsSent: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.packetsSent),
  #|   bytesSent: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.bytesSent),
  #|   mid: self.mid,
  #|   mediaSourceId: self.mediaSourceId,
  #|   remoteId: self.remoteId,
  #|   rid: self.rid,
  #|   encodingIndex: self.encodingIndex,
  #|   headerBytesSent: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.headerBytesSent),
  #|   retransmittedPacketsSent: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.retransmittedPacketsSent),
  #|   retransmittedBytesSent: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.retransmittedBytesSent),
  #|   rtxSsrc: self.rtxSsrc,
  #|   targetBitrate: ((() => { const v = self.targetBitrate; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   totalEncodedBytesTarget: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.totalEncodedBytesTarget),
  #|   frameWidth: self.frameWidth,
  #|   frameHeight: self.frameHeight,
  #|   framesPerSecond: ((() => { const v = self.framesPerSecond; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   framesSent: self.framesSent,
  #|   hugeFramesSent: self.hugeFramesSent,
  #|   framesEncoded: self.framesEncoded,
  #|   keyFramesEncoded: self.keyFramesEncoded,
  #|   qpSum: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.qpSum),
  #|   psnrSum: ((() => { const v = self.psnrSum; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   psnrMeasurements: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.psnrMeasurements),
  #|   totalEncodeTime: ((() => { const v = self.totalEncodeTime; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   totalPacketSendDelay: ((() => { const v = self.totalPacketSendDelay; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   qualityLimitationReason: ((() => { const v = self.qualityLimitationReason; if (v === undefined) return undefined; return ['none', 'cpu', 'bandwidth', 'other'][v]; })()),
  #|   qualityLimitationDurations: ((() => { const v = self.qualityLimitationDurations; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   qualityLimitationResolutionChanges: self.qualityLimitationResolutionChanges,
  #|   nackCount: self.nackCount,
  #|   firCount: self.firCount,
  #|   pliCount: self.pliCount,
  #|   encoderImplementation: self.encoderImplementation,
  #|   powerEfficientEncoder: (self.powerEfficientEncoder === -1 ? undefined : self.powerEfficientEncoder),
  #|   active: (self.active === -1 ? undefined : self.active),
  #|   scalabilityMode: self.scalabilityMode,
  #|   packetsSentWithEct1: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.packetsSentWithEct1)
  #| })

///|
/// Convert to JsValue
pub fn RTCOutboundRtpStreamStats::to_js(
  self : RTCOutboundRtpStreamStats,
) -> JsValue {
  RTCOutboundRtpStreamStats::to_js_ffi(self)
}

///|
extern "js" fn RTCOutboundRtpStreamStats::from_js_ffi(
  value : JsValue,
) -> RTCOutboundRtpStreamStats =
  #| (v) => ({
  #|   ssrc: v.ssrc,
  #|   kind: v.kind,
  #|   transportId: v.transportId,
  #|   codecId: v.codecId,
  #|   packetsSent: (v.packetsSent === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.packetsSent)),
  #|   bytesSent: (v.bytesSent === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.bytesSent)),
  #|   mid: v.mid,
  #|   mediaSourceId: v.mediaSourceId,
  #|   remoteId: v.remoteId,
  #|   rid: v.rid,
  #|   encodingIndex: v.encodingIndex,
  #|   headerBytesSent: (v.headerBytesSent === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.headerBytesSent)),
  #|   retransmittedPacketsSent: (v.retransmittedPacketsSent === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.retransmittedPacketsSent)),
  #|   retransmittedBytesSent: (v.retransmittedBytesSent === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.retransmittedBytesSent)),
  #|   rtxSsrc: v.rtxSsrc,
  #|   targetBitrate: (v.targetBitrate === undefined ? { $tag: 0 } : { $tag: 1, _0: v.targetBitrate }),
  #|   totalEncodedBytesTarget: (v.totalEncodedBytesTarget === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.totalEncodedBytesTarget)),
  #|   frameWidth: v.frameWidth,
  #|   frameHeight: v.frameHeight,
  #|   framesPerSecond: (v.framesPerSecond === undefined ? { $tag: 0 } : { $tag: 1, _0: v.framesPerSecond }),
  #|   framesSent: v.framesSent,
  #|   hugeFramesSent: v.hugeFramesSent,
  #|   framesEncoded: v.framesEncoded,
  #|   keyFramesEncoded: v.keyFramesEncoded,
  #|   qpSum: (v.qpSum === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.qpSum)),
  #|   psnrSum: (v.psnrSum === undefined ? { $tag: 0 } : { $tag: 1, _0: v.psnrSum }),
  #|   psnrMeasurements: (v.psnrMeasurements === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.psnrMeasurements)),
  #|   totalEncodeTime: (v.totalEncodeTime === undefined ? { $tag: 0 } : { $tag: 1, _0: v.totalEncodeTime }),
  #|   totalPacketSendDelay: (v.totalPacketSendDelay === undefined ? { $tag: 0 } : { $tag: 1, _0: v.totalPacketSendDelay }),
  #|   qualityLimitationReason: (v.qualityLimitationReason === undefined ? undefined : ['none', 'cpu', 'bandwidth', 'other'].indexOf(v.qualityLimitationReason)),
  #|   qualityLimitationDurations: (v.qualityLimitationDurations === undefined ? { $tag: 0 } : { $tag: 1, _0: v.qualityLimitationDurations }),
  #|   qualityLimitationResolutionChanges: v.qualityLimitationResolutionChanges,
  #|   nackCount: v.nackCount,
  #|   firCount: v.firCount,
  #|   pliCount: v.pliCount,
  #|   encoderImplementation: v.encoderImplementation,
  #|   powerEfficientEncoder: (v.powerEfficientEncoder === undefined ? -1 : v.powerEfficientEncoder),
  #|   active: (v.active === undefined ? -1 : v.active),
  #|   scalabilityMode: v.scalabilityMode,
  #|   packetsSentWithEct1: (v.packetsSentWithEct1 === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.packetsSentWithEct1))
  #| })

///|
/// Convert from JsValue
pub fn RTCOutboundRtpStreamStats::from_js(
  value : JsValue,
) -> RTCOutboundRtpStreamStats {
  RTCOutboundRtpStreamStats::from_js_ffi(value)
}

///|
/// Catch dictionary conversion errors, including unsafe integer ranges.
pub fn RTCOutboundRtpStreamStats::to_js_checked(
  self : RTCOutboundRtpStreamStats,
) -> Result[JsValue, JsError] {
  try_dictionary_conversion(() => self.to_js())
}

///|
extern "js" fn try_dictionary_RTCOutboundRtpStreamStats(
  convert : () -> RTCOutboundRtpStreamStats,
) -> Result[RTCOutboundRtpStreamStats, JsError] =
  #| convert => { try { return { $tag: 1, _0: convert() }; } catch (error) { return { $tag: 0, _0: error }; } }

///|
/// Catch invalid host fields, including unsafe integer ranges.
pub fn RTCOutboundRtpStreamStats::from_js_checked(
  value : JsValue,
) -> Result[RTCOutboundRtpStreamStats, JsError] {
  try_dictionary_RTCOutboundRtpStreamStats(() => {
    RTCOutboundRtpStreamStats::from_js(value)
  })
}

///|
/// RTCRemoteOutboundRtpStreamStats dictionary
pub(all) struct RTCRemoteOutboundRtpStreamStats {
  ssrc : Int
  kind : String
  transportId : String?
  codecId : String?
  packetsSent : Int64?
  bytesSent : Int64?
  localId : String?
  remoteTimestamp : DOMHighResTimeStamp?
  reportsSent : Int64?
  roundTripTime : Double?
  totalRoundTripTime : Double?
  roundTripTimeMeasurements : Int64?
}

///|
/// Create a new RTCRemoteOutboundRtpStreamStats with default values
pub fn RTCRemoteOutboundRtpStreamStats::default() -> RTCRemoteOutboundRtpStreamStats {
  RTCRemoteOutboundRtpStreamStats::{
    ssrc: 0,
    kind: "",
    transportId: None,
    codecId: None,
    packetsSent: None,
    bytesSent: None,
    localId: None,
    remoteTimestamp: None,
    reportsSent: None,
    roundTripTime: None,
    totalRoundTripTime: None,
    roundTripTimeMeasurements: None,
  }
}

///|
extern "js" fn RTCRemoteOutboundRtpStreamStats::to_js_ffi(
  self : RTCRemoteOutboundRtpStreamStats,
) -> JsValue =
  #| (self) => ({
  #|   ssrc: self.ssrc,
  #|   kind: self.kind,
  #|   transportId: self.transportId,
  #|   codecId: self.codecId,
  #|   packetsSent: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.packetsSent),
  #|   bytesSent: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.bytesSent),
  #|   localId: self.localId,
  #|   remoteTimestamp: ((() => { const v = self.remoteTimestamp; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   reportsSent: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.reportsSent),
  #|   roundTripTime: ((() => { const v = self.roundTripTime; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   totalRoundTripTime: ((() => { const v = self.totalRoundTripTime; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   roundTripTimeMeasurements: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.roundTripTimeMeasurements)
  #| })

///|
/// Convert to JsValue
pub fn RTCRemoteOutboundRtpStreamStats::to_js(
  self : RTCRemoteOutboundRtpStreamStats,
) -> JsValue {
  RTCRemoteOutboundRtpStreamStats::to_js_ffi(self)
}

///|
extern "js" fn RTCRemoteOutboundRtpStreamStats::from_js_ffi(
  value : JsValue,
) -> RTCRemoteOutboundRtpStreamStats =
  #| (v) => ({
  #|   ssrc: v.ssrc,
  #|   kind: v.kind,
  #|   transportId: v.transportId,
  #|   codecId: v.codecId,
  #|   packetsSent: (v.packetsSent === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.packetsSent)),
  #|   bytesSent: (v.bytesSent === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.bytesSent)),
  #|   localId: v.localId,
  #|   remoteTimestamp: (v.remoteTimestamp === undefined ? { $tag: 0 } : { $tag: 1, _0: v.remoteTimestamp }),
  #|   reportsSent: (v.reportsSent === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.reportsSent)),
  #|   roundTripTime: (v.roundTripTime === undefined ? { $tag: 0 } : { $tag: 1, _0: v.roundTripTime }),
  #|   totalRoundTripTime: (v.totalRoundTripTime === undefined ? { $tag: 0 } : { $tag: 1, _0: v.totalRoundTripTime }),
  #|   roundTripTimeMeasurements: (v.roundTripTimeMeasurements === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.roundTripTimeMeasurements))
  #| })

///|
/// Convert from JsValue
pub fn RTCRemoteOutboundRtpStreamStats::from_js(
  value : JsValue,
) -> RTCRemoteOutboundRtpStreamStats {
  RTCRemoteOutboundRtpStreamStats::from_js_ffi(value)
}

///|
/// Catch dictionary conversion errors, including unsafe integer ranges.
pub fn RTCRemoteOutboundRtpStreamStats::to_js_checked(
  self : RTCRemoteOutboundRtpStreamStats,
) -> Result[JsValue, JsError] {
  try_dictionary_conversion(() => self.to_js())
}

///|
extern "js" fn try_dictionary_RTCRemoteOutboundRtpStreamStats(
  convert : () -> RTCRemoteOutboundRtpStreamStats,
) -> Result[RTCRemoteOutboundRtpStreamStats, JsError] =
  #| convert => { try { return { $tag: 1, _0: convert() }; } catch (error) { return { $tag: 0, _0: error }; } }

///|
/// Catch invalid host fields, including unsafe integer ranges.
pub fn RTCRemoteOutboundRtpStreamStats::from_js_checked(
  value : JsValue,
) -> Result[RTCRemoteOutboundRtpStreamStats, JsError] {
  try_dictionary_RTCRemoteOutboundRtpStreamStats(() => {
    RTCRemoteOutboundRtpStreamStats::from_js(value)
  })
}

///|
/// RTCMediaSourceStats dictionary
pub(all) struct RTCMediaSourceStats {
  trackIdentifier : String
  kind : String
}

///|
/// Create a new RTCMediaSourceStats with default values
pub fn RTCMediaSourceStats::default() -> RTCMediaSourceStats {
  RTCMediaSourceStats::{ trackIdentifier: "", kind: "", }
}

///|
extern "js" fn RTCMediaSourceStats::to_js_ffi(
  self : RTCMediaSourceStats,
) -> JsValue =
  #| (self) => ({
  #|   trackIdentifier: self.trackIdentifier,
  #|   kind: self.kind
  #| })

///|
/// Convert to JsValue
pub fn RTCMediaSourceStats::to_js(self : RTCMediaSourceStats) -> JsValue {
  RTCMediaSourceStats::to_js_ffi(self)
}

///|
extern "js" fn RTCMediaSourceStats::from_js_ffi(
  value : JsValue,
) -> RTCMediaSourceStats =
  #| (v) => ({
  #|   trackIdentifier: v.trackIdentifier,
  #|   kind: v.kind
  #| })

///|
/// Convert from JsValue
pub fn RTCMediaSourceStats::from_js(value : JsValue) -> RTCMediaSourceStats {
  RTCMediaSourceStats::from_js_ffi(value)
}

///|
/// RTCAudioSourceStats dictionary
pub(all) struct RTCAudioSourceStats {
  trackIdentifier : String
  kind : String
  audioLevel : Double?
  totalAudioEnergy : Double?
  totalSamplesDuration : Double?
  echoReturnLoss : Double?
  echoReturnLossEnhancement : Double?
}

///|
/// Create a new RTCAudioSourceStats with default values
pub fn RTCAudioSourceStats::default() -> RTCAudioSourceStats {
  RTCAudioSourceStats::{
    trackIdentifier: "",
    kind: "",
    audioLevel: None,
    totalAudioEnergy: None,
    totalSamplesDuration: None,
    echoReturnLoss: None,
    echoReturnLossEnhancement: None,
  }
}

///|
extern "js" fn RTCAudioSourceStats::to_js_ffi(
  self : RTCAudioSourceStats,
) -> JsValue =
  #| (self) => ({
  #|   trackIdentifier: self.trackIdentifier,
  #|   kind: self.kind,
  #|   audioLevel: ((() => { const v = self.audioLevel; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   totalAudioEnergy: ((() => { const v = self.totalAudioEnergy; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   totalSamplesDuration: ((() => { const v = self.totalSamplesDuration; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   echoReturnLoss: ((() => { const v = self.echoReturnLoss; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   echoReturnLossEnhancement: ((() => { const v = self.echoReturnLossEnhancement; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn RTCAudioSourceStats::to_js(self : RTCAudioSourceStats) -> JsValue {
  RTCAudioSourceStats::to_js_ffi(self)
}

///|
extern "js" fn RTCAudioSourceStats::from_js_ffi(
  value : JsValue,
) -> RTCAudioSourceStats =
  #| (v) => ({
  #|   trackIdentifier: v.trackIdentifier,
  #|   kind: v.kind,
  #|   audioLevel: (v.audioLevel === undefined ? { $tag: 0 } : { $tag: 1, _0: v.audioLevel }),
  #|   totalAudioEnergy: (v.totalAudioEnergy === undefined ? { $tag: 0 } : { $tag: 1, _0: v.totalAudioEnergy }),
  #|   totalSamplesDuration: (v.totalSamplesDuration === undefined ? { $tag: 0 } : { $tag: 1, _0: v.totalSamplesDuration }),
  #|   echoReturnLoss: (v.echoReturnLoss === undefined ? { $tag: 0 } : { $tag: 1, _0: v.echoReturnLoss }),
  #|   echoReturnLossEnhancement: (v.echoReturnLossEnhancement === undefined ? { $tag: 0 } : { $tag: 1, _0: v.echoReturnLossEnhancement })
  #| })

///|
/// Convert from JsValue
pub fn RTCAudioSourceStats::from_js(value : JsValue) -> RTCAudioSourceStats {
  RTCAudioSourceStats::from_js_ffi(value)
}

///|
/// RTCVideoSourceStats dictionary
pub(all) struct RTCVideoSourceStats {
  trackIdentifier : String
  kind : String
  width : Int?
  height : Int?
  frames : Int?
  framesPerSecond : Double?
}

///|
/// Create a new RTCVideoSourceStats with default values
pub fn RTCVideoSourceStats::default() -> RTCVideoSourceStats {
  RTCVideoSourceStats::{
    trackIdentifier: "",
    kind: "",
    width: None,
    height: None,
    frames: None,
    framesPerSecond: None,
  }
}

///|
extern "js" fn RTCVideoSourceStats::to_js_ffi(
  self : RTCVideoSourceStats,
) -> JsValue =
  #| (self) => ({
  #|   trackIdentifier: self.trackIdentifier,
  #|   kind: self.kind,
  #|   width: self.width,
  #|   height: self.height,
  #|   frames: self.frames,
  #|   framesPerSecond: ((() => { const v = self.framesPerSecond; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn RTCVideoSourceStats::to_js(self : RTCVideoSourceStats) -> JsValue {
  RTCVideoSourceStats::to_js_ffi(self)
}

///|
extern "js" fn RTCVideoSourceStats::from_js_ffi(
  value : JsValue,
) -> RTCVideoSourceStats =
  #| (v) => ({
  #|   trackIdentifier: v.trackIdentifier,
  #|   kind: v.kind,
  #|   width: v.width,
  #|   height: v.height,
  #|   frames: v.frames,
  #|   framesPerSecond: (v.framesPerSecond === undefined ? { $tag: 0 } : { $tag: 1, _0: v.framesPerSecond })
  #| })

///|
/// Convert from JsValue
pub fn RTCVideoSourceStats::from_js(value : JsValue) -> RTCVideoSourceStats {
  RTCVideoSourceStats::from_js_ffi(value)
}

///|
/// RTCAudioPlayoutStats dictionary
pub(all) struct RTCAudioPlayoutStats {
  kind : String
  synthesizedSamplesDuration : Double?
  synthesizedSamplesEvents : Int?
  totalSamplesDuration : Double?
  totalPlayoutDelay : Double?
  totalSamplesCount : Int64?
}

///|
/// Create a new RTCAudioPlayoutStats with default values
pub fn RTCAudioPlayoutStats::default() -> RTCAudioPlayoutStats {
  RTCAudioPlayoutStats::{
    kind: "",
    synthesizedSamplesDuration: None,
    synthesizedSamplesEvents: None,
    totalSamplesDuration: None,
    totalPlayoutDelay: None,
    totalSamplesCount: None,
  }
}

///|
extern "js" fn RTCAudioPlayoutStats::to_js_ffi(
  self : RTCAudioPlayoutStats,
) -> JsValue =
  #| (self) => ({
  #|   kind: self.kind,
  #|   synthesizedSamplesDuration: ((() => { const v = self.synthesizedSamplesDuration; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   synthesizedSamplesEvents: self.synthesizedSamplesEvents,
  #|   totalSamplesDuration: ((() => { const v = self.totalSamplesDuration; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   totalPlayoutDelay: ((() => { const v = self.totalPlayoutDelay; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   totalSamplesCount: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.totalSamplesCount)
  #| })

///|
/// Convert to JsValue
pub fn RTCAudioPlayoutStats::to_js(self : RTCAudioPlayoutStats) -> JsValue {
  RTCAudioPlayoutStats::to_js_ffi(self)
}

///|
extern "js" fn RTCAudioPlayoutStats::from_js_ffi(
  value : JsValue,
) -> RTCAudioPlayoutStats =
  #| (v) => ({
  #|   kind: v.kind,
  #|   synthesizedSamplesDuration: (v.synthesizedSamplesDuration === undefined ? { $tag: 0 } : { $tag: 1, _0: v.synthesizedSamplesDuration }),
  #|   synthesizedSamplesEvents: v.synthesizedSamplesEvents,
  #|   totalSamplesDuration: (v.totalSamplesDuration === undefined ? { $tag: 0 } : { $tag: 1, _0: v.totalSamplesDuration }),
  #|   totalPlayoutDelay: (v.totalPlayoutDelay === undefined ? { $tag: 0 } : { $tag: 1, _0: v.totalPlayoutDelay }),
  #|   totalSamplesCount: (v.totalSamplesCount === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.totalSamplesCount))
  #| })

///|
/// Convert from JsValue
pub fn RTCAudioPlayoutStats::from_js(value : JsValue) -> RTCAudioPlayoutStats {
  RTCAudioPlayoutStats::from_js_ffi(value)
}

///|
/// Catch dictionary conversion errors, including unsafe integer ranges.
pub fn RTCAudioPlayoutStats::to_js_checked(
  self : RTCAudioPlayoutStats,
) -> Result[JsValue, JsError] {
  try_dictionary_conversion(() => self.to_js())
}

///|
extern "js" fn try_dictionary_RTCAudioPlayoutStats(
  convert : () -> RTCAudioPlayoutStats,
) -> Result[RTCAudioPlayoutStats, JsError] =
  #| convert => { try { return { $tag: 1, _0: convert() }; } catch (error) { return { $tag: 0, _0: error }; } }

///|
/// Catch invalid host fields, including unsafe integer ranges.
pub fn RTCAudioPlayoutStats::from_js_checked(
  value : JsValue,
) -> Result[RTCAudioPlayoutStats, JsError] {
  try_dictionary_RTCAudioPlayoutStats(() => RTCAudioPlayoutStats::from_js(value))
}

///|
/// RTCPeerConnectionStats dictionary
pub(all) struct RTCPeerConnectionStats {
  dataChannelsOpened : Int?
  dataChannelsClosed : Int?
}

///|
/// Create a new RTCPeerConnectionStats with default values
pub fn RTCPeerConnectionStats::default() -> RTCPeerConnectionStats {
  RTCPeerConnectionStats::{
    dataChannelsOpened: None,
    dataChannelsClosed: None,
  }
}

///|
extern "js" fn RTCPeerConnectionStats::to_js_ffi(
  self : RTCPeerConnectionStats,
) -> JsValue =
  #| (self) => ({
  #|   dataChannelsOpened: self.dataChannelsOpened,
  #|   dataChannelsClosed: self.dataChannelsClosed
  #| })

///|
/// Convert to JsValue
pub fn RTCPeerConnectionStats::to_js(self : RTCPeerConnectionStats) -> JsValue {
  RTCPeerConnectionStats::to_js_ffi(self)
}

///|
extern "js" fn RTCPeerConnectionStats::from_js_ffi(
  value : JsValue,
) -> RTCPeerConnectionStats =
  #| (v) => ({
  #|   dataChannelsOpened: v.dataChannelsOpened,
  #|   dataChannelsClosed: v.dataChannelsClosed
  #| })

///|
/// Convert from JsValue
pub fn RTCPeerConnectionStats::from_js(
  value : JsValue,
) -> RTCPeerConnectionStats {
  RTCPeerConnectionStats::from_js_ffi(value)
}

///|
/// RTCDataChannelStats dictionary
pub(all) struct RTCDataChannelStats {
  label : String?
  protocol : String?
  dataChannelIdentifier : Int?
  state : RTCDataChannelState
  messagesSent : Int?
  bytesSent : Int64?
  messagesReceived : Int?
  bytesReceived : Int64?
}

///|
/// Create a new RTCDataChannelStats
pub fn RTCDataChannelStats::new(
  state~ : RTCDataChannelState,
) -> RTCDataChannelStats {
  RTCDataChannelStats::{
    label: None,
    protocol: None,
    dataChannelIdentifier: None,
    state,
    messagesSent: None,
    bytesSent: None,
    messagesReceived: None,
    bytesReceived: None,
  }
}

///|
extern "js" fn RTCDataChannelStats::to_js_ffi(
  self : RTCDataChannelStats,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   protocol: self.protocol,
  #|   dataChannelIdentifier: self.dataChannelIdentifier,
  #|   state: ['connecting', 'open', 'closing', 'closed'][self.state],
  #|   messagesSent: self.messagesSent,
  #|   bytesSent: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.bytesSent),
  #|   messagesReceived: self.messagesReceived,
  #|   bytesReceived: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.bytesReceived)
  #| })

///|
/// Convert to JsValue
pub fn RTCDataChannelStats::to_js(self : RTCDataChannelStats) -> JsValue {
  RTCDataChannelStats::to_js_ffi(self)
}

///|
extern "js" fn RTCDataChannelStats::from_js_ffi(
  value : JsValue,
) -> RTCDataChannelStats =
  #| (v) => ({
  #|   label: v.label,
  #|   protocol: v.protocol,
  #|   dataChannelIdentifier: v.dataChannelIdentifier,
  #|   state: ['connecting', 'open', 'closing', 'closed'].indexOf(v.state),
  #|   messagesSent: v.messagesSent,
  #|   bytesSent: (v.bytesSent === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.bytesSent)),
  #|   messagesReceived: v.messagesReceived,
  #|   bytesReceived: (v.bytesReceived === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.bytesReceived))
  #| })

///|
/// Convert from JsValue
pub fn RTCDataChannelStats::from_js(value : JsValue) -> RTCDataChannelStats {
  RTCDataChannelStats::from_js_ffi(value)
}

///|
/// Catch dictionary conversion errors, including unsafe integer ranges.
pub fn RTCDataChannelStats::to_js_checked(
  self : RTCDataChannelStats,
) -> Result[JsValue, JsError] {
  try_dictionary_conversion(() => self.to_js())
}

///|
extern "js" fn try_dictionary_RTCDataChannelStats(
  convert : () -> RTCDataChannelStats,
) -> Result[RTCDataChannelStats, JsError] =
  #| convert => { try { return { $tag: 1, _0: convert() }; } catch (error) { return { $tag: 0, _0: error }; } }

///|
/// Catch invalid host fields, including unsafe integer ranges.
pub fn RTCDataChannelStats::from_js_checked(
  value : JsValue,
) -> Result[RTCDataChannelStats, JsError] {
  try_dictionary_RTCDataChannelStats(() => RTCDataChannelStats::from_js(value))
}

///|
/// RTCTransportStats dictionary
pub(all) struct RTCTransportStats {
  packetsSent : Int64?
  packetsReceived : Int64?
  bytesSent : Int64?
  bytesReceived : Int64?
  iceRole : RTCIceRole?
  iceLocalUsernameFragment : String?
  dtlsState : RTCDtlsTransportState
  iceState : RTCIceTransportState?
  selectedCandidatePairId : String?
  localCertificateId : String?
  remoteCertificateId : String?
  tlsVersion : String?
  dtlsCipher : String?
  dtlsRole : RTCDtlsRole?
  srtpCipher : String?
  selectedCandidatePairChanges : Int?
  ccfbMessagesSent : Int?
  ccfbMessagesReceived : Int?
}

///|
/// Create a new RTCTransportStats
pub fn RTCTransportStats::new(
  dtlsState~ : RTCDtlsTransportState,
) -> RTCTransportStats {
  RTCTransportStats::{
    packetsSent: None,
    packetsReceived: None,
    bytesSent: None,
    bytesReceived: None,
    iceRole: None,
    iceLocalUsernameFragment: None,
    dtlsState,
    iceState: None,
    selectedCandidatePairId: None,
    localCertificateId: None,
    remoteCertificateId: None,
    tlsVersion: None,
    dtlsCipher: None,
    dtlsRole: None,
    srtpCipher: None,
    selectedCandidatePairChanges: None,
    ccfbMessagesSent: None,
    ccfbMessagesReceived: None,
  }
}

///|
extern "js" fn RTCTransportStats::to_js_ffi(
  self : RTCTransportStats,
) -> JsValue =
  #| (self) => ({
  #|   packetsSent: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.packetsSent),
  #|   packetsReceived: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.packetsReceived),
  #|   bytesSent: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.bytesSent),
  #|   bytesReceived: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.bytesReceived),
  #|   iceRole: ((() => { const v = self.iceRole; if (v === undefined) return undefined; return ['unknown', 'controlling', 'controlled'][v]; })()),
  #|   iceLocalUsernameFragment: self.iceLocalUsernameFragment,
  #|   dtlsState: ['new', 'connecting', 'connected', 'closed', 'failed'][self.dtlsState],
  #|   iceState: ((() => { const v = self.iceState; if (v === undefined) return undefined; return ['closed', 'failed', 'disconnected', 'new', 'checking', 'completed', 'connected'][v]; })()),
  #|   selectedCandidatePairId: self.selectedCandidatePairId,
  #|   localCertificateId: self.localCertificateId,
  #|   remoteCertificateId: self.remoteCertificateId,
  #|   tlsVersion: self.tlsVersion,
  #|   dtlsCipher: self.dtlsCipher,
  #|   dtlsRole: ((() => { const v = self.dtlsRole; if (v === undefined) return undefined; return ['client', 'server', 'unknown'][v]; })()),
  #|   srtpCipher: self.srtpCipher,
  #|   selectedCandidatePairChanges: self.selectedCandidatePairChanges,
  #|   ccfbMessagesSent: self.ccfbMessagesSent,
  #|   ccfbMessagesReceived: self.ccfbMessagesReceived
  #| })

///|
/// Convert to JsValue
pub fn RTCTransportStats::to_js(self : RTCTransportStats) -> JsValue {
  RTCTransportStats::to_js_ffi(self)
}

///|
extern "js" fn RTCTransportStats::from_js_ffi(
  value : JsValue,
) -> RTCTransportStats =
  #| (v) => ({
  #|   packetsSent: (v.packetsSent === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.packetsSent)),
  #|   packetsReceived: (v.packetsReceived === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.packetsReceived)),
  #|   bytesSent: (v.bytesSent === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.bytesSent)),
  #|   bytesReceived: (v.bytesReceived === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.bytesReceived)),
  #|   iceRole: (v.iceRole === undefined ? undefined : ['unknown', 'controlling', 'controlled'].indexOf(v.iceRole)),
  #|   iceLocalUsernameFragment: v.iceLocalUsernameFragment,
  #|   dtlsState: ['new', 'connecting', 'connected', 'closed', 'failed'].indexOf(v.dtlsState),
  #|   iceState: (v.iceState === undefined ? undefined : ['closed', 'failed', 'disconnected', 'new', 'checking', 'completed', 'connected'].indexOf(v.iceState)),
  #|   selectedCandidatePairId: v.selectedCandidatePairId,
  #|   localCertificateId: v.localCertificateId,
  #|   remoteCertificateId: v.remoteCertificateId,
  #|   tlsVersion: v.tlsVersion,
  #|   dtlsCipher: v.dtlsCipher,
  #|   dtlsRole: (v.dtlsRole === undefined ? undefined : ['client', 'server', 'unknown'].indexOf(v.dtlsRole)),
  #|   srtpCipher: v.srtpCipher,
  #|   selectedCandidatePairChanges: v.selectedCandidatePairChanges,
  #|   ccfbMessagesSent: v.ccfbMessagesSent,
  #|   ccfbMessagesReceived: v.ccfbMessagesReceived
  #| })

///|
/// Convert from JsValue
pub fn RTCTransportStats::from_js(value : JsValue) -> RTCTransportStats {
  RTCTransportStats::from_js_ffi(value)
}

///|
/// Catch dictionary conversion errors, including unsafe integer ranges.
pub fn RTCTransportStats::to_js_checked(
  self : RTCTransportStats,
) -> Result[JsValue, JsError] {
  try_dictionary_conversion(() => self.to_js())
}

///|
extern "js" fn try_dictionary_RTCTransportStats(
  convert : () -> RTCTransportStats,
) -> Result[RTCTransportStats, JsError] =
  #| convert => { try { return { $tag: 1, _0: convert() }; } catch (error) { return { $tag: 0, _0: error }; } }

///|
/// Catch invalid host fields, including unsafe integer ranges.
pub fn RTCTransportStats::from_js_checked(
  value : JsValue,
) -> Result[RTCTransportStats, JsError] {
  try_dictionary_RTCTransportStats(() => RTCTransportStats::from_js(value))
}

///|
/// RTCIceCandidateStats dictionary
pub(all) struct RTCIceCandidateStats {
  transportId : String
  address : Nullable[String]
  port : Int?
  protocol : String?
  candidateType : RTCIceCandidateType
  priority : Int?
  url : String?
  relayProtocol : RTCIceServerTransportProtocol?
  foundation : String?
  relatedAddress : String?
  relatedPort : Int?
  usernameFragment : String?
  tcpType : RTCIceTcpCandidateType?
}

///|
/// Create a new RTCIceCandidateStats
pub fn RTCIceCandidateStats::new(
  candidateType~ : RTCIceCandidateType,
) -> RTCIceCandidateStats {
  RTCIceCandidateStats::{
    transportId: "",
    address: Nullable::Undefined,
    port: None,
    protocol: None,
    candidateType,
    priority: None,
    url: None,
    relayProtocol: None,
    foundation: None,
    relatedAddress: None,
    relatedPort: None,
    usernameFragment: None,
    tcpType: None,
  }
}

///|
extern "js" fn RTCIceCandidateStats::to_js_ffi(
  self : RTCIceCandidateStats,
) -> JsValue =
  #| (self) => ({
  #|   transportId: self.transportId,
  #|   address: ((() => { const v = self.address; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   port: self.port,
  #|   protocol: self.protocol,
  #|   candidateType: ['host', 'srflx', 'prflx', 'relay'][self.candidateType],
  #|   priority: self.priority,
  #|   url: self.url,
  #|   relayProtocol: ((() => { const v = self.relayProtocol; if (v === undefined) return undefined; return ['udp', 'tcp', 'tls'][v]; })()),
  #|   foundation: self.foundation,
  #|   relatedAddress: self.relatedAddress,
  #|   relatedPort: self.relatedPort,
  #|   usernameFragment: self.usernameFragment,
  #|   tcpType: ((() => { const v = self.tcpType; if (v === undefined) return undefined; return ['active', 'passive', 'so'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn RTCIceCandidateStats::to_js(self : RTCIceCandidateStats) -> JsValue {
  RTCIceCandidateStats::to_js_ffi(self)
}

///|
extern "js" fn RTCIceCandidateStats::from_js_ffi(
  value : JsValue,
) -> RTCIceCandidateStats =
  #| (v) => ({
  #|   transportId: v.transportId,
  #|   address: (v.address === undefined ? { $tag: 0 } : v.address === null ? { $tag: 1 } : { $tag: 2, _0: v.address }),
  #|   port: v.port,
  #|   protocol: v.protocol,
  #|   candidateType: ['host', 'srflx', 'prflx', 'relay'].indexOf(v.candidateType),
  #|   priority: v.priority,
  #|   url: v.url,
  #|   relayProtocol: (v.relayProtocol === undefined ? undefined : ['udp', 'tcp', 'tls'].indexOf(v.relayProtocol)),
  #|   foundation: v.foundation,
  #|   relatedAddress: v.relatedAddress,
  #|   relatedPort: v.relatedPort,
  #|   usernameFragment: v.usernameFragment,
  #|   tcpType: (v.tcpType === undefined ? undefined : ['active', 'passive', 'so'].indexOf(v.tcpType))
  #| })

///|
/// Convert from JsValue
pub fn RTCIceCandidateStats::from_js(value : JsValue) -> RTCIceCandidateStats {
  RTCIceCandidateStats::from_js_ffi(value)
}

///|
/// RTCIceCandidatePairStats dictionary
pub(all) struct RTCIceCandidatePairStats {
  transportId : String
  localCandidateId : String
  remoteCandidateId : String
  state : RTCStatsIceCandidatePairState
  nominated : Bool?
  packetsSent : Int64?
  packetsReceived : Int64?
  bytesSent : Int64?
  bytesReceived : Int64?
  lastPacketSentTimestamp : DOMHighResTimeStamp?
  lastPacketReceivedTimestamp : DOMHighResTimeStamp?
  totalRoundTripTime : Double?
  currentRoundTripTime : Double?
  availableOutgoingBitrate : Double?
  availableIncomingBitrate : Double?
  requestsReceived : Int64?
  requestsSent : Int64?
  responsesReceived : Int64?
  responsesSent : Int64?
  consentRequestsSent : Int64?
  packetsDiscardedOnSend : Int?
  bytesDiscardedOnSend : Int64?
}

///|
/// Create a new RTCIceCandidatePairStats
pub fn RTCIceCandidatePairStats::new(
  state~ : RTCStatsIceCandidatePairState,
) -> RTCIceCandidatePairStats {
  RTCIceCandidatePairStats::{
    transportId: "",
    localCandidateId: "",
    remoteCandidateId: "",
    state,
    nominated: None,
    packetsSent: None,
    packetsReceived: None,
    bytesSent: None,
    bytesReceived: None,
    lastPacketSentTimestamp: None,
    lastPacketReceivedTimestamp: None,
    totalRoundTripTime: None,
    currentRoundTripTime: None,
    availableOutgoingBitrate: None,
    availableIncomingBitrate: None,
    requestsReceived: None,
    requestsSent: None,
    responsesReceived: None,
    responsesSent: None,
    consentRequestsSent: None,
    packetsDiscardedOnSend: None,
    bytesDiscardedOnSend: None,
  }
}

///|
extern "js" fn RTCIceCandidatePairStats::to_js_ffi(
  self : RTCIceCandidatePairStats,
) -> JsValue =
  #| (self) => ({
  #|   transportId: self.transportId,
  #|   localCandidateId: self.localCandidateId,
  #|   remoteCandidateId: self.remoteCandidateId,
  #|   state: ['frozen', 'waiting', 'in-progress', 'failed', 'succeeded'][self.state],
  #|   nominated: (self.nominated === -1 ? undefined : self.nominated),
  #|   packetsSent: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.packetsSent),
  #|   packetsReceived: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.packetsReceived),
  #|   bytesSent: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.bytesSent),
  #|   bytesReceived: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.bytesReceived),
  #|   lastPacketSentTimestamp: ((() => { const v = self.lastPacketSentTimestamp; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   lastPacketReceivedTimestamp: ((() => { const v = self.lastPacketReceivedTimestamp; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   totalRoundTripTime: ((() => { const v = self.totalRoundTripTime; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   currentRoundTripTime: ((() => { const v = self.currentRoundTripTime; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   availableOutgoingBitrate: ((() => { const v = self.availableOutgoingBitrate; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   availableIncomingBitrate: ((() => { const v = self.availableIncomingBitrate; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   requestsReceived: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.requestsReceived),
  #|   requestsSent: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.requestsSent),
  #|   responsesReceived: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.responsesReceived),
  #|   responsesSent: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.responsesSent),
  #|   consentRequestsSent: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.consentRequestsSent),
  #|   packetsDiscardedOnSend: self.packetsDiscardedOnSend,
  #|   bytesDiscardedOnSend: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.bytesDiscardedOnSend)
  #| })

///|
/// Convert to JsValue
pub fn RTCIceCandidatePairStats::to_js(
  self : RTCIceCandidatePairStats,
) -> JsValue {
  RTCIceCandidatePairStats::to_js_ffi(self)
}

///|
extern "js" fn RTCIceCandidatePairStats::from_js_ffi(
  value : JsValue,
) -> RTCIceCandidatePairStats =
  #| (v) => ({
  #|   transportId: v.transportId,
  #|   localCandidateId: v.localCandidateId,
  #|   remoteCandidateId: v.remoteCandidateId,
  #|   state: ['frozen', 'waiting', 'in-progress', 'failed', 'succeeded'].indexOf(v.state),
  #|   nominated: (v.nominated === undefined ? -1 : v.nominated),
  #|   packetsSent: (v.packetsSent === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.packetsSent)),
  #|   packetsReceived: (v.packetsReceived === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.packetsReceived)),
  #|   bytesSent: (v.bytesSent === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.bytesSent)),
  #|   bytesReceived: (v.bytesReceived === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.bytesReceived)),
  #|   lastPacketSentTimestamp: (v.lastPacketSentTimestamp === undefined ? { $tag: 0 } : { $tag: 1, _0: v.lastPacketSentTimestamp }),
  #|   lastPacketReceivedTimestamp: (v.lastPacketReceivedTimestamp === undefined ? { $tag: 0 } : { $tag: 1, _0: v.lastPacketReceivedTimestamp }),
  #|   totalRoundTripTime: (v.totalRoundTripTime === undefined ? { $tag: 0 } : { $tag: 1, _0: v.totalRoundTripTime }),
  #|   currentRoundTripTime: (v.currentRoundTripTime === undefined ? { $tag: 0 } : { $tag: 1, _0: v.currentRoundTripTime }),
  #|   availableOutgoingBitrate: (v.availableOutgoingBitrate === undefined ? { $tag: 0 } : { $tag: 1, _0: v.availableOutgoingBitrate }),
  #|   availableIncomingBitrate: (v.availableIncomingBitrate === undefined ? { $tag: 0 } : { $tag: 1, _0: v.availableIncomingBitrate }),
  #|   requestsReceived: (v.requestsReceived === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.requestsReceived)),
  #|   requestsSent: (v.requestsSent === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.requestsSent)),
  #|   responsesReceived: (v.responsesReceived === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.responsesReceived)),
  #|   responsesSent: (v.responsesSent === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.responsesSent)),
  #|   consentRequestsSent: (v.consentRequestsSent === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.consentRequestsSent)),
  #|   packetsDiscardedOnSend: v.packetsDiscardedOnSend,
  #|   bytesDiscardedOnSend: (v.bytesDiscardedOnSend === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.bytesDiscardedOnSend))
  #| })

///|
/// Convert from JsValue
pub fn RTCIceCandidatePairStats::from_js(
  value : JsValue,
) -> RTCIceCandidatePairStats {
  RTCIceCandidatePairStats::from_js_ffi(value)
}

///|
/// Catch dictionary conversion errors, including unsafe integer ranges.
pub fn RTCIceCandidatePairStats::to_js_checked(
  self : RTCIceCandidatePairStats,
) -> Result[JsValue, JsError] {
  try_dictionary_conversion(() => self.to_js())
}

///|
extern "js" fn try_dictionary_RTCIceCandidatePairStats(
  convert : () -> RTCIceCandidatePairStats,
) -> Result[RTCIceCandidatePairStats, JsError] =
  #| convert => { try { return { $tag: 1, _0: convert() }; } catch (error) { return { $tag: 0, _0: error }; } }

///|
/// Catch invalid host fields, including unsafe integer ranges.
pub fn RTCIceCandidatePairStats::from_js_checked(
  value : JsValue,
) -> Result[RTCIceCandidatePairStats, JsError] {
  try_dictionary_RTCIceCandidatePairStats(() => {
    RTCIceCandidatePairStats::from_js(value)
  })
}

///|
/// RTCCertificateStats dictionary
pub(all) struct RTCCertificateStats {
  fingerprint : String
  fingerprintAlgorithm : String
  base64Certificate : String
  issuerCertificateId : String?
}

///|
/// Create a new RTCCertificateStats with default values
pub fn RTCCertificateStats::default() -> RTCCertificateStats {
  RTCCertificateStats::{
    fingerprint: "",
    fingerprintAlgorithm: "",
    base64Certificate: "",
    issuerCertificateId: None,
  }
}

///|
extern "js" fn RTCCertificateStats::to_js_ffi(
  self : RTCCertificateStats,
) -> JsValue =
  #| (self) => ({
  #|   fingerprint: self.fingerprint,
  #|   fingerprintAlgorithm: self.fingerprintAlgorithm,
  #|   base64Certificate: self.base64Certificate,
  #|   issuerCertificateId: self.issuerCertificateId
  #| })

///|
/// Convert to JsValue
pub fn RTCCertificateStats::to_js(self : RTCCertificateStats) -> JsValue {
  RTCCertificateStats::to_js_ffi(self)
}

///|
extern "js" fn RTCCertificateStats::from_js_ffi(
  value : JsValue,
) -> RTCCertificateStats =
  #| (v) => ({
  #|   fingerprint: v.fingerprint,
  #|   fingerprintAlgorithm: v.fingerprintAlgorithm,
  #|   base64Certificate: v.base64Certificate,
  #|   issuerCertificateId: v.issuerCertificateId
  #| })

///|
/// Convert from JsValue
pub fn RTCCertificateStats::from_js(value : JsValue) -> RTCCertificateStats {
  RTCCertificateStats::from_js_ffi(value)
}
