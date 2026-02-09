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
}

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
}

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
}

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
}

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
  RTCRtpStreamStats::{ ssrc: 0, kind: "", transportId: None, codecId: None }
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
  #|   packetsReceived: self.packetsReceived,
  #|   packetsReceivedWithEct1: self.packetsReceivedWithEct1,
  #|   packetsReceivedWithCe: self.packetsReceivedWithCe,
  #|   packetsReportedAsLost: self.packetsReportedAsLost,
  #|   packetsReportedAsLostButRecovered: self.packetsReportedAsLostButRecovered,
  #|   packetsLost: self.packetsLost,
  #|   jitter: self.jitter
  #| })

///|
/// Convert to JsValue
pub fn RTCReceivedRtpStreamStats::to_js(
  self : RTCReceivedRtpStreamStats,
) -> JsValue {
  RTCReceivedRtpStreamStats::to_js_ffi(self)
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
  #|   packetsReceived: self.packetsReceived,
  #|   packetsReceivedWithEct1: self.packetsReceivedWithEct1,
  #|   packetsReceivedWithCe: self.packetsReceivedWithCe,
  #|   packetsReportedAsLost: self.packetsReportedAsLost,
  #|   packetsReportedAsLostButRecovered: self.packetsReportedAsLostButRecovered,
  #|   packetsLost: self.packetsLost,
  #|   jitter: self.jitter,
  #|   trackIdentifier: self.trackIdentifier,
  #|   mid: self.mid,
  #|   remoteId: self.remoteId,
  #|   framesDecoded: self.framesDecoded,
  #|   keyFramesDecoded: self.keyFramesDecoded,
  #|   framesRendered: self.framesRendered,
  #|   framesDropped: self.framesDropped,
  #|   frameWidth: self.frameWidth,
  #|   frameHeight: self.frameHeight,
  #|   framesPerSecond: self.framesPerSecond,
  #|   qpSum: self.qpSum,
  #|   totalDecodeTime: self.totalDecodeTime,
  #|   totalInterFrameDelay: self.totalInterFrameDelay,
  #|   totalSquaredInterFrameDelay: self.totalSquaredInterFrameDelay,
  #|   pauseCount: self.pauseCount,
  #|   totalPausesDuration: self.totalPausesDuration,
  #|   freezeCount: self.freezeCount,
  #|   totalFreezesDuration: self.totalFreezesDuration,
  #|   lastPacketReceivedTimestamp: ((() => { const v = self.lastPacketReceivedTimestamp; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   headerBytesReceived: self.headerBytesReceived,
  #|   packetsDiscarded: self.packetsDiscarded,
  #|   fecBytesReceived: self.fecBytesReceived,
  #|   fecPacketsReceived: self.fecPacketsReceived,
  #|   fecPacketsDiscarded: self.fecPacketsDiscarded,
  #|   bytesReceived: self.bytesReceived,
  #|   nackCount: self.nackCount,
  #|   firCount: self.firCount,
  #|   pliCount: self.pliCount,
  #|   totalProcessingDelay: self.totalProcessingDelay,
  #|   estimatedPlayoutTimestamp: ((() => { const v = self.estimatedPlayoutTimestamp; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   jitterBufferDelay: self.jitterBufferDelay,
  #|   jitterBufferTargetDelay: self.jitterBufferTargetDelay,
  #|   jitterBufferEmittedCount: self.jitterBufferEmittedCount,
  #|   jitterBufferMinimumDelay: self.jitterBufferMinimumDelay,
  #|   totalSamplesReceived: self.totalSamplesReceived,
  #|   concealedSamples: self.concealedSamples,
  #|   silentConcealedSamples: self.silentConcealedSamples,
  #|   concealmentEvents: self.concealmentEvents,
  #|   insertedSamplesForDeceleration: self.insertedSamplesForDeceleration,
  #|   removedSamplesForAcceleration: self.removedSamplesForAcceleration,
  #|   audioLevel: self.audioLevel,
  #|   totalAudioEnergy: self.totalAudioEnergy,
  #|   totalSamplesDuration: self.totalSamplesDuration,
  #|   framesReceived: self.framesReceived,
  #|   decoderImplementation: self.decoderImplementation,
  #|   playoutId: self.playoutId,
  #|   powerEfficientDecoder: (self.powerEfficientDecoder === -1 ? undefined : self.powerEfficientDecoder),
  #|   framesAssembledFromMultiplePackets: self.framesAssembledFromMultiplePackets,
  #|   totalAssemblyTime: self.totalAssemblyTime,
  #|   retransmittedPacketsReceived: self.retransmittedPacketsReceived,
  #|   retransmittedBytesReceived: self.retransmittedBytesReceived,
  #|   rtxSsrc: self.rtxSsrc,
  #|   fecSsrc: self.fecSsrc,
  #|   totalCorruptionProbability: self.totalCorruptionProbability,
  #|   totalSquaredCorruptionProbability: self.totalSquaredCorruptionProbability,
  #|   corruptionMeasurements: self.corruptionMeasurements
  #| })

///|
/// Convert to JsValue
pub fn RTCInboundRtpStreamStats::to_js(
  self : RTCInboundRtpStreamStats,
) -> JsValue {
  RTCInboundRtpStreamStats::to_js_ffi(self)
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
  #|   packetsReceived: self.packetsReceived,
  #|   packetsReceivedWithEct1: self.packetsReceivedWithEct1,
  #|   packetsReceivedWithCe: self.packetsReceivedWithCe,
  #|   packetsReportedAsLost: self.packetsReportedAsLost,
  #|   packetsReportedAsLostButRecovered: self.packetsReportedAsLostButRecovered,
  #|   packetsLost: self.packetsLost,
  #|   jitter: self.jitter,
  #|   localId: self.localId,
  #|   roundTripTime: self.roundTripTime,
  #|   totalRoundTripTime: self.totalRoundTripTime,
  #|   fractionLost: self.fractionLost,
  #|   roundTripTimeMeasurements: self.roundTripTimeMeasurements,
  #|   packetsWithBleachedEct1Marking: self.packetsWithBleachedEct1Marking
  #| })

///|
/// Convert to JsValue
pub fn RTCRemoteInboundRtpStreamStats::to_js(
  self : RTCRemoteInboundRtpStreamStats,
) -> JsValue {
  RTCRemoteInboundRtpStreamStats::to_js_ffi(self)
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
  #|   packetsSent: self.packetsSent,
  #|   bytesSent: self.bytesSent
  #| })

///|
/// Convert to JsValue
pub fn RTCSentRtpStreamStats::to_js(self : RTCSentRtpStreamStats) -> JsValue {
  RTCSentRtpStreamStats::to_js_ffi(self)
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
  #|   packetsSent: self.packetsSent,
  #|   bytesSent: self.bytesSent,
  #|   mid: self.mid,
  #|   mediaSourceId: self.mediaSourceId,
  #|   remoteId: self.remoteId,
  #|   rid: self.rid,
  #|   encodingIndex: self.encodingIndex,
  #|   headerBytesSent: self.headerBytesSent,
  #|   retransmittedPacketsSent: self.retransmittedPacketsSent,
  #|   retransmittedBytesSent: self.retransmittedBytesSent,
  #|   rtxSsrc: self.rtxSsrc,
  #|   targetBitrate: self.targetBitrate,
  #|   totalEncodedBytesTarget: self.totalEncodedBytesTarget,
  #|   frameWidth: self.frameWidth,
  #|   frameHeight: self.frameHeight,
  #|   framesPerSecond: self.framesPerSecond,
  #|   framesSent: self.framesSent,
  #|   hugeFramesSent: self.hugeFramesSent,
  #|   framesEncoded: self.framesEncoded,
  #|   keyFramesEncoded: self.keyFramesEncoded,
  #|   qpSum: self.qpSum,
  #|   psnrSum: ((() => { const v = self.psnrSum; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   psnrMeasurements: self.psnrMeasurements,
  #|   totalEncodeTime: self.totalEncodeTime,
  #|   totalPacketSendDelay: self.totalPacketSendDelay,
  #|   qualityLimitationReason: ((() => { const v = self.qualityLimitationReason; if (v === undefined) return undefined; return ['none', 'cpu', 'bandwidth', 'other'][v]; })()),
  #|   qualityLimitationDurations: ((() => { const v = self.qualityLimitationDurations; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   qualityLimitationResolutionChanges: self.qualityLimitationResolutionChanges,
  #|   nackCount: self.nackCount,
  #|   firCount: self.firCount,
  #|   pliCount: self.pliCount,
  #|   encoderImplementation: self.encoderImplementation,
  #|   powerEfficientEncoder: (self.powerEfficientEncoder === -1 ? undefined : self.powerEfficientEncoder),
  #|   active: (self.active === -1 ? undefined : self.active),
  #|   scalabilityMode: self.scalabilityMode,
  #|   packetsSentWithEct1: self.packetsSentWithEct1
  #| })

///|
/// Convert to JsValue
pub fn RTCOutboundRtpStreamStats::to_js(
  self : RTCOutboundRtpStreamStats,
) -> JsValue {
  RTCOutboundRtpStreamStats::to_js_ffi(self)
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
  #|   packetsSent: self.packetsSent,
  #|   bytesSent: self.bytesSent,
  #|   localId: self.localId,
  #|   remoteTimestamp: ((() => { const v = self.remoteTimestamp; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   reportsSent: self.reportsSent,
  #|   roundTripTime: self.roundTripTime,
  #|   totalRoundTripTime: self.totalRoundTripTime,
  #|   roundTripTimeMeasurements: self.roundTripTimeMeasurements
  #| })

///|
/// Convert to JsValue
pub fn RTCRemoteOutboundRtpStreamStats::to_js(
  self : RTCRemoteOutboundRtpStreamStats,
) -> JsValue {
  RTCRemoteOutboundRtpStreamStats::to_js_ffi(self)
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
  RTCMediaSourceStats::{ trackIdentifier: "", kind: "" }
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
  #|   audioLevel: self.audioLevel,
  #|   totalAudioEnergy: self.totalAudioEnergy,
  #|   totalSamplesDuration: self.totalSamplesDuration,
  #|   echoReturnLoss: self.echoReturnLoss,
  #|   echoReturnLossEnhancement: self.echoReturnLossEnhancement
  #| })

///|
/// Convert to JsValue
pub fn RTCAudioSourceStats::to_js(self : RTCAudioSourceStats) -> JsValue {
  RTCAudioSourceStats::to_js_ffi(self)
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
  #|   framesPerSecond: self.framesPerSecond
  #| })

///|
/// Convert to JsValue
pub fn RTCVideoSourceStats::to_js(self : RTCVideoSourceStats) -> JsValue {
  RTCVideoSourceStats::to_js_ffi(self)
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
  #|   synthesizedSamplesDuration: self.synthesizedSamplesDuration,
  #|   synthesizedSamplesEvents: self.synthesizedSamplesEvents,
  #|   totalSamplesDuration: self.totalSamplesDuration,
  #|   totalPlayoutDelay: self.totalPlayoutDelay,
  #|   totalSamplesCount: self.totalSamplesCount
  #| })

///|
/// Convert to JsValue
pub fn RTCAudioPlayoutStats::to_js(self : RTCAudioPlayoutStats) -> JsValue {
  RTCAudioPlayoutStats::to_js_ffi(self)
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
  RTCPeerConnectionStats::{ dataChannelsOpened: None, dataChannelsClosed: None }
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
  #|   bytesSent: self.bytesSent,
  #|   messagesReceived: self.messagesReceived,
  #|   bytesReceived: self.bytesReceived
  #| })

///|
/// Convert to JsValue
pub fn RTCDataChannelStats::to_js(self : RTCDataChannelStats) -> JsValue {
  RTCDataChannelStats::to_js_ffi(self)
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
  #|   packetsSent: self.packetsSent,
  #|   packetsReceived: self.packetsReceived,
  #|   bytesSent: self.bytesSent,
  #|   bytesReceived: self.bytesReceived,
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
  #|   address: ((() => { const v = self.address; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
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
  #|   packetsSent: self.packetsSent,
  #|   packetsReceived: self.packetsReceived,
  #|   bytesSent: self.bytesSent,
  #|   bytesReceived: self.bytesReceived,
  #|   lastPacketSentTimestamp: ((() => { const v = self.lastPacketSentTimestamp; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   lastPacketReceivedTimestamp: ((() => { const v = self.lastPacketReceivedTimestamp; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   totalRoundTripTime: self.totalRoundTripTime,
  #|   currentRoundTripTime: self.currentRoundTripTime,
  #|   availableOutgoingBitrate: self.availableOutgoingBitrate,
  #|   availableIncomingBitrate: self.availableIncomingBitrate,
  #|   requestsReceived: self.requestsReceived,
  #|   requestsSent: self.requestsSent,
  #|   responsesReceived: self.responsesReceived,
  #|   responsesSent: self.responsesSent,
  #|   consentRequestsSent: self.consentRequestsSent,
  #|   packetsDiscardedOnSend: self.packetsDiscardedOnSend,
  #|   bytesDiscardedOnSend: self.bytesDiscardedOnSend
  #| })

///|
/// Convert to JsValue
pub fn RTCIceCandidatePairStats::to_js(
  self : RTCIceCandidatePairStats,
) -> JsValue {
  RTCIceCandidatePairStats::to_js_ffi(self)
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
