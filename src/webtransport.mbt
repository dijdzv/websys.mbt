// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webtransport

///|
/// WebTransportReliabilityMode enum
pub(all) enum WebTransportReliabilityMode {
  Pending
  ReliableOnly
  SupportsUnreliable
}

///|
/// Convert to string value
pub fn WebTransportReliabilityMode::to_string(
  self : WebTransportReliabilityMode,
) -> String {
  match self {
    WebTransportReliabilityMode::Pending => "pending"
    WebTransportReliabilityMode::ReliableOnly => "reliable-only"
    WebTransportReliabilityMode::SupportsUnreliable => "supports-unreliable"
  }
}

///|
/// Parse from string value
pub fn WebTransportReliabilityMode::from_string(
  s : String,
) -> WebTransportReliabilityMode? {
  match s {
    "pending" => Some(WebTransportReliabilityMode::Pending)
    "reliable-only" => Some(WebTransportReliabilityMode::ReliableOnly)
    "supports-unreliable" =>
      Some(WebTransportReliabilityMode::SupportsUnreliable)
    _ => None
  }
}

///|
/// WebTransportCongestionControl enum
pub(all) enum WebTransportCongestionControl {
  Default
  Throughput
  LowLatency
}

///|
/// Convert to string value
pub fn WebTransportCongestionControl::to_string(
  self : WebTransportCongestionControl,
) -> String {
  match self {
    WebTransportCongestionControl::Default => "default"
    WebTransportCongestionControl::Throughput => "throughput"
    WebTransportCongestionControl::LowLatency => "low-latency"
  }
}

///|
/// Parse from string value
pub fn WebTransportCongestionControl::from_string(
  s : String,
) -> WebTransportCongestionControl? {
  match s {
    "default" => Some(WebTransportCongestionControl::Default)
    "throughput" => Some(WebTransportCongestionControl::Throughput)
    "low-latency" => Some(WebTransportCongestionControl::LowLatency)
    _ => None
  }
}

///|
/// WebTransportErrorSource enum
pub(all) enum WebTransportErrorSource {
  Stream
  Session
}

///|
/// Convert to string value
pub fn WebTransportErrorSource::to_string(
  self : WebTransportErrorSource,
) -> String {
  match self {
    WebTransportErrorSource::Stream => "stream"
    WebTransportErrorSource::Session => "session"
  }
}

///|
/// Parse from string value
pub fn WebTransportErrorSource::from_string(
  s : String,
) -> WebTransportErrorSource? {
  match s {
    "stream" => Some(WebTransportErrorSource::Stream)
    "session" => Some(WebTransportErrorSource::Session)
    _ => None
  }
}

///|
/// WebTransportHash dictionary
pub struct WebTransportHash {
  algorithm : String
  value : BufferSource
}

///|
/// Create a new WebTransportHash with default values
pub fn WebTransportHash::default() -> WebTransportHash {
  WebTransportHash::{ algorithm: "", value: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn WebTransportHash::to_js(self : WebTransportHash) -> JsValue =
  #| (self) => ({
  #|   algorithm: self.algorithm,
  #|   value: self.value.to_js_value()
  #| })

///|
/// WebTransportOptions dictionary
pub struct WebTransportOptions {
  allowPooling : Bool?
  requireUnreliable : Bool?
  serverCertificateHashes : Array[WebTransportHash]?
  congestionControl : WebTransportCongestionControl?
  anticipatedConcurrentIncomingUnidirectionalStreams : Nullable[Int]
  anticipatedConcurrentIncomingBidirectionalStreams : Nullable[Int]
  protocols : Array[String]?
  datagramsReadableType : ReadableStreamType?
}

///|
/// Create a new WebTransportOptions with default values
pub fn WebTransportOptions::default() -> WebTransportOptions {
  WebTransportOptions::{
    allowPooling: None,
    requireUnreliable: None,
    serverCertificateHashes: None,
    congestionControl: None,
    anticipatedConcurrentIncomingUnidirectionalStreams: Nullable::Undefined,
    anticipatedConcurrentIncomingBidirectionalStreams: Nullable::Undefined,
    protocols: None,
    datagramsReadableType: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn WebTransportOptions::to_js(
  self : WebTransportOptions,
) -> JsValue =
  #| (self) => ({
  #|   allowPooling: self.allowPooling,
  #|   requireUnreliable: self.requireUnreliable,
  #|   serverCertificateHashes: self.serverCertificateHashes,
  #|   congestionControl: ['default', 'throughput', 'low-latency'][self.congestionControl],
  #|   anticipatedConcurrentIncomingUnidirectionalStreams: ((() => { const v = self.anticipatedConcurrentIncomingUnidirectionalStreams; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   anticipatedConcurrentIncomingBidirectionalStreams: ((() => { const v = self.anticipatedConcurrentIncomingBidirectionalStreams; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   protocols: self.protocols,
  #|   datagramsReadableType: ['bytes'][self.datagramsReadableType]
  #| })

///|
/// WebTransportCloseInfo dictionary
pub struct WebTransportCloseInfo {
  closeCode : Int?
  reason : String?
}

///|
/// Create a new WebTransportCloseInfo with default values
pub fn WebTransportCloseInfo::default() -> WebTransportCloseInfo {
  WebTransportCloseInfo::{ closeCode: None, reason: None }
}

///|
/// Convert to JsValue
pub extern "js" fn WebTransportCloseInfo::to_js(
  self : WebTransportCloseInfo,
) -> JsValue =
  #| (self) => ({
  #|   closeCode: self.closeCode,
  #|   reason: self.reason
  #| })

///|
/// WebTransportSendOptions dictionary
pub struct WebTransportSendOptions {
  sendGroup : Nullable[WebTransportSendGroup]
  sendOrder : Int64?
}

///|
/// Create a new WebTransportSendOptions with default values
pub fn WebTransportSendOptions::default() -> WebTransportSendOptions {
  WebTransportSendOptions::{ sendGroup: Nullable::Undefined, sendOrder: None }
}

///|
/// Convert to JsValue
pub extern "js" fn WebTransportSendOptions::to_js(
  self : WebTransportSendOptions,
) -> JsValue =
  #| (self) => ({
  #|   sendGroup: ((() => { const v = self.sendGroup; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   sendOrder: self.sendOrder
  #| })

///|
/// WebTransportSendStreamOptions dictionary
pub struct WebTransportSendStreamOptions {
  sendGroup : Nullable[WebTransportSendGroup]
  sendOrder : Int64?
  waitUntilAvailable : Bool?
}

///|
/// Create a new WebTransportSendStreamOptions with default values
pub fn WebTransportSendStreamOptions::default() -> WebTransportSendStreamOptions {
  WebTransportSendStreamOptions::{
    sendGroup: Nullable::Undefined,
    sendOrder: None,
    waitUntilAvailable: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn WebTransportSendStreamOptions::to_js(
  self : WebTransportSendStreamOptions,
) -> JsValue =
  #| (self) => ({
  #|   sendGroup: ((() => { const v = self.sendGroup; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   sendOrder: self.sendOrder,
  #|   waitUntilAvailable: self.waitUntilAvailable
  #| })

///|
/// WebTransportConnectionStats dictionary
pub struct WebTransportConnectionStats {
  bytesSent : Int64?
  bytesSentOverhead : Int64?
  bytesAcknowledged : Int64?
  packetsSent : Int64?
  bytesLost : Int64?
  packetsLost : Int64?
  bytesReceived : Int64?
  packetsReceived : Int64?
  smoothedRtt : DOMHighResTimeStamp?
  rttVariation : DOMHighResTimeStamp?
  minRtt : DOMHighResTimeStamp?
  datagrams : WebTransportDatagramStats
  estimatedSendRate : Nullable[Int64]
  atSendCapacity : Bool?
}

///|
/// Create a new WebTransportConnectionStats with default values
pub fn WebTransportConnectionStats::default() -> WebTransportConnectionStats {
  WebTransportConnectionStats::{
    bytesSent: None,
    bytesSentOverhead: None,
    bytesAcknowledged: None,
    packetsSent: None,
    bytesLost: None,
    packetsLost: None,
    bytesReceived: None,
    packetsReceived: None,
    smoothedRtt: None,
    rttVariation: None,
    minRtt: None,
    datagrams: panic(),
    estimatedSendRate: Nullable::Undefined,
    atSendCapacity: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn WebTransportConnectionStats::to_js(
  self : WebTransportConnectionStats,
) -> JsValue =
  #| (self) => ({
  #|   bytesSent: self.bytesSent,
  #|   bytesSentOverhead: self.bytesSentOverhead,
  #|   bytesAcknowledged: self.bytesAcknowledged,
  #|   packetsSent: self.packetsSent,
  #|   bytesLost: self.bytesLost,
  #|   packetsLost: self.packetsLost,
  #|   bytesReceived: self.bytesReceived,
  #|   packetsReceived: self.packetsReceived,
  #|   smoothedRtt: self.smoothedRtt,
  #|   rttVariation: self.rttVariation,
  #|   minRtt: self.minRtt,
  #|   datagrams: self.datagrams,
  #|   estimatedSendRate: ((() => { const v = self.estimatedSendRate; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   atSendCapacity: self.atSendCapacity
  #| })

///|
/// WebTransportDatagramStats dictionary
pub struct WebTransportDatagramStats {
  droppedIncoming : Int64?
  expiredIncoming : Int64?
  expiredOutgoing : Int64?
  lostOutgoing : Int64?
}

///|
/// Create a new WebTransportDatagramStats with default values
pub fn WebTransportDatagramStats::default() -> WebTransportDatagramStats {
  WebTransportDatagramStats::{
    droppedIncoming: None,
    expiredIncoming: None,
    expiredOutgoing: None,
    lostOutgoing: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn WebTransportDatagramStats::to_js(
  self : WebTransportDatagramStats,
) -> JsValue =
  #| (self) => ({
  #|   droppedIncoming: self.droppedIncoming,
  #|   expiredIncoming: self.expiredIncoming,
  #|   expiredOutgoing: self.expiredOutgoing,
  #|   lostOutgoing: self.lostOutgoing
  #| })

///|
/// WebTransportSendStreamStats dictionary
pub struct WebTransportSendStreamStats {
  bytesWritten : Int64?
  bytesSent : Int64?
  bytesAcknowledged : Int64?
}

///|
/// Create a new WebTransportSendStreamStats with default values
pub fn WebTransportSendStreamStats::default() -> WebTransportSendStreamStats {
  WebTransportSendStreamStats::{
    bytesWritten: None,
    bytesSent: None,
    bytesAcknowledged: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn WebTransportSendStreamStats::to_js(
  self : WebTransportSendStreamStats,
) -> JsValue =
  #| (self) => ({
  #|   bytesWritten: self.bytesWritten,
  #|   bytesSent: self.bytesSent,
  #|   bytesAcknowledged: self.bytesAcknowledged
  #| })

///|
/// WebTransportReceiveStreamStats dictionary
pub struct WebTransportReceiveStreamStats {
  bytesReceived : Int64?
  bytesRead : Int64?
}

///|
/// Create a new WebTransportReceiveStreamStats with default values
pub fn WebTransportReceiveStreamStats::default() -> WebTransportReceiveStreamStats {
  WebTransportReceiveStreamStats::{ bytesReceived: None, bytesRead: None }
}

///|
/// Convert to JsValue
pub extern "js" fn WebTransportReceiveStreamStats::to_js(
  self : WebTransportReceiveStreamStats,
) -> JsValue =
  #| (self) => ({
  #|   bytesReceived: self.bytesReceived,
  #|   bytesRead: self.bytesRead
  #| })

///|
/// WebTransportErrorOptions dictionary
pub struct WebTransportErrorOptions {
  source : WebTransportErrorSource?
  streamErrorCode : Nullable[Int]
}

///|
/// Create a new WebTransportErrorOptions with default values
pub fn WebTransportErrorOptions::default() -> WebTransportErrorOptions {
  WebTransportErrorOptions::{
    source: None,
    streamErrorCode: Nullable::Undefined,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn WebTransportErrorOptions::to_js(
  self : WebTransportErrorOptions,
) -> JsValue =
  #| (self) => ({
  #|   source: ['stream', 'session'][self.source],
  #|   streamErrorCode: ((() => { const v = self.streamErrorCode; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// WebTransportDatagramsWritable interface
pub type WebTransportDatagramsWritable

///|
pub extern "js" fn WebTransportDatagramsWritable::to_js_value(
  self : WebTransportDatagramsWritable,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WebTransportDatagramsWritable (unchecked)
pub extern "js" fn WebTransportDatagramsWritable::from_js_value(
  v : JsValue,
) -> WebTransportDatagramsWritable =
  #| (v) => v

///|
/// Safely cast JsValue to WebTransportDatagramsWritable (checked with instanceof)
pub extern "js" fn WebTransportDatagramsWritable::from_js_value_opt(
  v : JsValue,
) -> WebTransportDatagramsWritable? =
  #| (v) => (v instanceof WebTransportDatagramsWritable) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WebTransportDatagramsWritable (checked with instanceof)
pub extern "js" fn JsValue::as_web_transport_datagrams_writable(
  self : JsValue,
) -> WebTransportDatagramsWritable? =
  #| (self) => (self instanceof WebTransportDatagramsWritable) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WebTransportDatagramsWritable (unchecked)
pub extern "js" fn JsValue::to_web_transport_datagrams_writable(
  self : JsValue,
) -> WebTransportDatagramsWritable =
  #| (self) => self

///|
pub extern "js" fn WebTransportDatagramsWritable::to_writable_stream(
  self : WebTransportDatagramsWritable,
) -> WritableStream =
  #| (self) => self

///|
pub extern "js" fn WebTransportDatagramsWritable::get_send_group(
  self : WebTransportDatagramsWritable,
) -> WebTransportSendGroup? =
  #| (self) => { const v = self.sendGroup; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn WebTransportDatagramsWritable::set_send_group(
  self : WebTransportDatagramsWritable,
  value : WebTransportSendGroup?,
) -> Unit =
  #| (self, value) => { self.sendGroup = value }

///|
pub extern "js" fn WebTransportDatagramsWritable::get_send_order(
  self : WebTransportDatagramsWritable,
) -> Int64 =
  #| (self) => self.sendOrder

///|
pub extern "js" fn WebTransportDatagramsWritable::set_send_order(
  self : WebTransportDatagramsWritable,
  value : Int64,
) -> Unit =
  #| (self, value) => { self.sendOrder = value }

///|
/// WebTransportDatagramDuplexStream interface
pub type WebTransportDatagramDuplexStream

///|
pub extern "js" fn WebTransportDatagramDuplexStream::to_js_value(
  self : WebTransportDatagramDuplexStream,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WebTransportDatagramDuplexStream (unchecked)
pub extern "js" fn WebTransportDatagramDuplexStream::from_js_value(
  v : JsValue,
) -> WebTransportDatagramDuplexStream =
  #| (v) => v

///|
/// Safely cast JsValue to WebTransportDatagramDuplexStream (checked with instanceof)
pub extern "js" fn WebTransportDatagramDuplexStream::from_js_value_opt(
  v : JsValue,
) -> WebTransportDatagramDuplexStream? =
  #| (v) => (v instanceof WebTransportDatagramDuplexStream) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WebTransportDatagramDuplexStream (checked with instanceof)
pub extern "js" fn JsValue::as_web_transport_datagram_duplex_stream(
  self : JsValue,
) -> WebTransportDatagramDuplexStream? =
  #| (self) => (self instanceof WebTransportDatagramDuplexStream) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WebTransportDatagramDuplexStream (unchecked)
pub extern "js" fn JsValue::to_web_transport_datagram_duplex_stream(
  self : JsValue,
) -> WebTransportDatagramDuplexStream =
  #| (self) => self

///|
pub extern "js" fn WebTransportDatagramDuplexStream::create_writable(
  self : WebTransportDatagramDuplexStream,
) -> WebTransportDatagramsWritable =
  #| (self) => self.createWritable()

///|
pub extern "js" fn WebTransportDatagramDuplexStream::create_writable_with_options(
  self : WebTransportDatagramDuplexStream,
  options : WebTransportSendOptions,
) -> WebTransportDatagramsWritable =
  #| (self, options) => self.createWritable(options)

///|
pub extern "js" fn WebTransportDatagramDuplexStream::get_readable(
  self : WebTransportDatagramDuplexStream,
) -> ReadableStream =
  #| (self) => self.readable

///|
pub extern "js" fn WebTransportDatagramDuplexStream::get_max_datagram_size(
  self : WebTransportDatagramDuplexStream,
) -> Int =
  #| (self) => self.maxDatagramSize

///|
pub extern "js" fn WebTransportDatagramDuplexStream::get_incoming_max_age(
  self : WebTransportDatagramDuplexStream,
) -> Double? =
  #| (self) => { const v = self.incomingMaxAge; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn WebTransportDatagramDuplexStream::set_incoming_max_age(
  self : WebTransportDatagramDuplexStream,
  value : Double?,
) -> Unit =
  #| (self, value) => { self.incomingMaxAge = value }

///|
pub extern "js" fn WebTransportDatagramDuplexStream::get_outgoing_max_age(
  self : WebTransportDatagramDuplexStream,
) -> Double? =
  #| (self) => { const v = self.outgoingMaxAge; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn WebTransportDatagramDuplexStream::set_outgoing_max_age(
  self : WebTransportDatagramDuplexStream,
  value : Double?,
) -> Unit =
  #| (self, value) => { self.outgoingMaxAge = value }

///|
pub extern "js" fn WebTransportDatagramDuplexStream::get_incoming_high_water_mark(
  self : WebTransportDatagramDuplexStream,
) -> Double =
  #| (self) => self.incomingHighWaterMark

///|
pub extern "js" fn WebTransportDatagramDuplexStream::set_incoming_high_water_mark(
  self : WebTransportDatagramDuplexStream,
  value : Double,
) -> Unit =
  #| (self, value) => { self.incomingHighWaterMark = value }

///|
pub extern "js" fn WebTransportDatagramDuplexStream::get_outgoing_high_water_mark(
  self : WebTransportDatagramDuplexStream,
) -> Double =
  #| (self) => self.outgoingHighWaterMark

///|
pub extern "js" fn WebTransportDatagramDuplexStream::set_outgoing_high_water_mark(
  self : WebTransportDatagramDuplexStream,
  value : Double,
) -> Unit =
  #| (self, value) => { self.outgoingHighWaterMark = value }

///|
/// WebTransport interface
pub type WebTransport

///|
pub extern "js" fn WebTransport::to_js_value(self : WebTransport) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WebTransport (unchecked)
pub extern "js" fn WebTransport::from_js_value(v : JsValue) -> WebTransport =
  #| (v) => v

///|
/// Safely cast JsValue to WebTransport (checked with instanceof)
pub extern "js" fn WebTransport::from_js_value_opt(
  v : JsValue,
) -> WebTransport? =
  #| (v) => (v instanceof WebTransport) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WebTransport (checked with instanceof)
pub extern "js" fn JsValue::as_web_transport(self : JsValue) -> WebTransport? =
  #| (self) => (self instanceof WebTransport) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WebTransport (unchecked)
pub extern "js" fn JsValue::to_web_transport(self : JsValue) -> WebTransport =
  #| (self) => self

///|
pub extern "js" fn WebTransport::new(
  url : String,
  options : WebTransportOptions,
) -> WebTransport =
  #| (url, options) => new WebTransport(url, options)

///|
pub extern "js" fn WebTransport::get_stats(
  self : WebTransport,
) -> Promise[WebTransportConnectionStats] =
  #| (self) => self.getStats()

///|
pub extern "js" fn WebTransport::export_keying_material(
  self : WebTransport,
  label : BufferSource,
) -> Promise[ArrayBuffer] =
  #| (self, label) => self.exportKeyingMaterial(label)

///|
pub extern "js" fn WebTransport::export_keying_material_with_context(
  self : WebTransport,
  label : BufferSource,
  context : BufferSource,
) -> Promise[ArrayBuffer] =
  #| (self, label, context) => self.exportKeyingMaterial(label, context)

///|
pub extern "js" fn WebTransport::get_ready(
  self : WebTransport,
) -> Promise[Unit] =
  #| (self) => self.ready

///|
pub extern "js" fn WebTransport::get_reliability(
  self : WebTransport,
) -> WebTransportReliabilityMode =
  #| (self) => self.reliability

///|
pub extern "js" fn WebTransport::get_congestion_control(
  self : WebTransport,
) -> WebTransportCongestionControl =
  #| (self) => self.congestionControl

///|
pub extern "js" fn WebTransport::get_anticipated_concurrent_incoming_unidirectional_streams(
  self : WebTransport,
) -> Int? =
  #| (self) => { const v = self.anticipatedConcurrentIncomingUnidirectionalStreams; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn WebTransport::set_anticipated_concurrent_incoming_unidirectional_streams(
  self : WebTransport,
  value : Int?,
) -> Unit =
  #| (self, value) => { self.anticipatedConcurrentIncomingUnidirectionalStreams = value }

///|
pub extern "js" fn WebTransport::get_anticipated_concurrent_incoming_bidirectional_streams(
  self : WebTransport,
) -> Int? =
  #| (self) => { const v = self.anticipatedConcurrentIncomingBidirectionalStreams; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn WebTransport::set_anticipated_concurrent_incoming_bidirectional_streams(
  self : WebTransport,
  value : Int?,
) -> Unit =
  #| (self, value) => { self.anticipatedConcurrentIncomingBidirectionalStreams = value }

///|
pub extern "js" fn WebTransport::get_protocol(self : WebTransport) -> String =
  #| (self) => self.protocol

///|
pub extern "js" fn WebTransport::get_closed(
  self : WebTransport,
) -> Promise[WebTransportCloseInfo] =
  #| (self) => self.closed

///|
pub extern "js" fn WebTransport::get_draining(
  self : WebTransport,
) -> Promise[Unit] =
  #| (self) => self.draining

///|
pub extern "js" fn WebTransport::close(self : WebTransport) -> Unit =
  #| (self) => self.close()

///|
pub extern "js" fn WebTransport::close_with_close_info(
  self : WebTransport,
  close_info : WebTransportCloseInfo,
) -> Unit =
  #| (self, close_info) => self.close(close_info)

///|
pub extern "js" fn WebTransport::get_datagrams(
  self : WebTransport,
) -> WebTransportDatagramDuplexStream =
  #| (self) => self.datagrams

///|
pub extern "js" fn WebTransport::create_bidirectional_stream(
  self : WebTransport,
) -> Promise[WebTransportBidirectionalStream] =
  #| (self) => self.createBidirectionalStream()

///|
pub extern "js" fn WebTransport::create_bidirectional_stream_with_options(
  self : WebTransport,
  options : WebTransportSendStreamOptions,
) -> Promise[WebTransportBidirectionalStream] =
  #| (self, options) => self.createBidirectionalStream(options)

///|
pub extern "js" fn WebTransport::get_incoming_bidirectional_streams(
  self : WebTransport,
) -> ReadableStream =
  #| (self) => self.incomingBidirectionalStreams

///|
pub extern "js" fn WebTransport::create_unidirectional_stream(
  self : WebTransport,
) -> Promise[WebTransportSendStream] =
  #| (self) => self.createUnidirectionalStream()

///|
pub extern "js" fn WebTransport::create_unidirectional_stream_with_options(
  self : WebTransport,
  options : WebTransportSendStreamOptions,
) -> Promise[WebTransportSendStream] =
  #| (self, options) => self.createUnidirectionalStream(options)

///|
pub extern "js" fn WebTransport::get_incoming_unidirectional_streams(
  self : WebTransport,
) -> ReadableStream =
  #| (self) => self.incomingUnidirectionalStreams

///|
pub extern "js" fn WebTransport::create_send_group(
  self : WebTransport,
) -> WebTransportSendGroup =
  #| (self) => self.createSendGroup()

///|
pub extern "js" fn WebTransport::get_supports_reliable_only(
  self : WebTransport,
) -> Bool =
  #| (self) => self.supportsReliableOnly

///|
/// WebTransportSendStream interface
pub type WebTransportSendStream

///|
pub extern "js" fn WebTransportSendStream::to_js_value(
  self : WebTransportSendStream,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WebTransportSendStream (unchecked)
pub extern "js" fn WebTransportSendStream::from_js_value(
  v : JsValue,
) -> WebTransportSendStream =
  #| (v) => v

///|
/// Safely cast JsValue to WebTransportSendStream (checked with instanceof)
pub extern "js" fn WebTransportSendStream::from_js_value_opt(
  v : JsValue,
) -> WebTransportSendStream? =
  #| (v) => (v instanceof WebTransportSendStream) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WebTransportSendStream (checked with instanceof)
pub extern "js" fn JsValue::as_web_transport_send_stream(
  self : JsValue,
) -> WebTransportSendStream? =
  #| (self) => (self instanceof WebTransportSendStream) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WebTransportSendStream (unchecked)
pub extern "js" fn JsValue::to_web_transport_send_stream(
  self : JsValue,
) -> WebTransportSendStream =
  #| (self) => self

///|
pub extern "js" fn WebTransportSendStream::to_writable_stream(
  self : WebTransportSendStream,
) -> WritableStream =
  #| (self) => self

///|
pub extern "js" fn WebTransportSendStream::get_send_group(
  self : WebTransportSendStream,
) -> WebTransportSendGroup? =
  #| (self) => { const v = self.sendGroup; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn WebTransportSendStream::set_send_group(
  self : WebTransportSendStream,
  value : WebTransportSendGroup?,
) -> Unit =
  #| (self, value) => { self.sendGroup = value }

///|
pub extern "js" fn WebTransportSendStream::get_send_order(
  self : WebTransportSendStream,
) -> Int64 =
  #| (self) => self.sendOrder

///|
pub extern "js" fn WebTransportSendStream::set_send_order(
  self : WebTransportSendStream,
  value : Int64,
) -> Unit =
  #| (self, value) => { self.sendOrder = value }

///|
pub extern "js" fn WebTransportSendStream::get_stats(
  self : WebTransportSendStream,
) -> Promise[WebTransportSendStreamStats] =
  #| (self) => self.getStats()

///|
pub extern "js" fn WebTransportSendStream::get_writer(
  self : WebTransportSendStream,
) -> WebTransportWriter =
  #| (self) => self.getWriter()

///|
/// WebTransportSendGroup interface
pub type WebTransportSendGroup

///|
pub extern "js" fn WebTransportSendGroup::to_js_value(
  self : WebTransportSendGroup,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WebTransportSendGroup (unchecked)
pub extern "js" fn WebTransportSendGroup::from_js_value(
  v : JsValue,
) -> WebTransportSendGroup =
  #| (v) => v

///|
/// Safely cast JsValue to WebTransportSendGroup (checked with instanceof)
pub extern "js" fn WebTransportSendGroup::from_js_value_opt(
  v : JsValue,
) -> WebTransportSendGroup? =
  #| (v) => (v instanceof WebTransportSendGroup) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WebTransportSendGroup (checked with instanceof)
pub extern "js" fn JsValue::as_web_transport_send_group(
  self : JsValue,
) -> WebTransportSendGroup? =
  #| (self) => (self instanceof WebTransportSendGroup) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WebTransportSendGroup (unchecked)
pub extern "js" fn JsValue::to_web_transport_send_group(
  self : JsValue,
) -> WebTransportSendGroup =
  #| (self) => self

///|
pub extern "js" fn WebTransportSendGroup::get_stats(
  self : WebTransportSendGroup,
) -> Promise[WebTransportSendStreamStats] =
  #| (self) => self.getStats()

///|
/// WebTransportReceiveStream interface
pub type WebTransportReceiveStream

///|
pub extern "js" fn WebTransportReceiveStream::to_js_value(
  self : WebTransportReceiveStream,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WebTransportReceiveStream (unchecked)
pub extern "js" fn WebTransportReceiveStream::from_js_value(
  v : JsValue,
) -> WebTransportReceiveStream =
  #| (v) => v

///|
/// Safely cast JsValue to WebTransportReceiveStream (checked with instanceof)
pub extern "js" fn WebTransportReceiveStream::from_js_value_opt(
  v : JsValue,
) -> WebTransportReceiveStream? =
  #| (v) => (v instanceof WebTransportReceiveStream) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WebTransportReceiveStream (checked with instanceof)
pub extern "js" fn JsValue::as_web_transport_receive_stream(
  self : JsValue,
) -> WebTransportReceiveStream? =
  #| (self) => (self instanceof WebTransportReceiveStream) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WebTransportReceiveStream (unchecked)
pub extern "js" fn JsValue::to_web_transport_receive_stream(
  self : JsValue,
) -> WebTransportReceiveStream =
  #| (self) => self

///|
pub extern "js" fn WebTransportReceiveStream::to_readable_stream(
  self : WebTransportReceiveStream,
) -> ReadableStream =
  #| (self) => self

///|
pub extern "js" fn WebTransportReceiveStream::get_stats(
  self : WebTransportReceiveStream,
) -> Promise[WebTransportReceiveStreamStats] =
  #| (self) => self.getStats()

///|
/// WebTransportBidirectionalStream interface
pub type WebTransportBidirectionalStream

///|
pub extern "js" fn WebTransportBidirectionalStream::to_js_value(
  self : WebTransportBidirectionalStream,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WebTransportBidirectionalStream (unchecked)
pub extern "js" fn WebTransportBidirectionalStream::from_js_value(
  v : JsValue,
) -> WebTransportBidirectionalStream =
  #| (v) => v

///|
/// Safely cast JsValue to WebTransportBidirectionalStream (checked with instanceof)
pub extern "js" fn WebTransportBidirectionalStream::from_js_value_opt(
  v : JsValue,
) -> WebTransportBidirectionalStream? =
  #| (v) => (v instanceof WebTransportBidirectionalStream) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WebTransportBidirectionalStream (checked with instanceof)
pub extern "js" fn JsValue::as_web_transport_bidirectional_stream(
  self : JsValue,
) -> WebTransportBidirectionalStream? =
  #| (self) => (self instanceof WebTransportBidirectionalStream) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WebTransportBidirectionalStream (unchecked)
pub extern "js" fn JsValue::to_web_transport_bidirectional_stream(
  self : JsValue,
) -> WebTransportBidirectionalStream =
  #| (self) => self

///|
pub extern "js" fn WebTransportBidirectionalStream::get_readable(
  self : WebTransportBidirectionalStream,
) -> WebTransportReceiveStream =
  #| (self) => self.readable

///|
pub extern "js" fn WebTransportBidirectionalStream::get_writable(
  self : WebTransportBidirectionalStream,
) -> WebTransportSendStream =
  #| (self) => self.writable

///|
/// WebTransportWriter interface
pub type WebTransportWriter

///|
pub extern "js" fn WebTransportWriter::to_js_value(
  self : WebTransportWriter,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WebTransportWriter (unchecked)
pub extern "js" fn WebTransportWriter::from_js_value(
  v : JsValue,
) -> WebTransportWriter =
  #| (v) => v

///|
/// Safely cast JsValue to WebTransportWriter (checked with instanceof)
pub extern "js" fn WebTransportWriter::from_js_value_opt(
  v : JsValue,
) -> WebTransportWriter? =
  #| (v) => (v instanceof WebTransportWriter) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WebTransportWriter (checked with instanceof)
pub extern "js" fn JsValue::as_web_transport_writer(
  self : JsValue,
) -> WebTransportWriter? =
  #| (self) => (self instanceof WebTransportWriter) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WebTransportWriter (unchecked)
pub extern "js" fn JsValue::to_web_transport_writer(
  self : JsValue,
) -> WebTransportWriter =
  #| (self) => self

///|
pub extern "js" fn WebTransportWriter::to_writable_stream_default_writer(
  self : WebTransportWriter,
) -> WritableStreamDefaultWriter =
  #| (self) => self

///|
pub extern "js" fn WebTransportWriter::atomic_write(
  self : WebTransportWriter,
) -> Promise[Unit] =
  #| (self) => self.atomicWrite()

///|
pub extern "js" fn WebTransportWriter::atomic_write_with_chunk(
  self : WebTransportWriter,
  chunk : JsValue,
) -> Promise[Unit] =
  #| (self, chunk) => self.atomicWrite(chunk)

///|
pub extern "js" fn WebTransportWriter::commit(
  self : WebTransportWriter,
) -> Unit =
  #| (self) => self.commit()

///|
/// WebTransportError interface
pub type WebTransportError

///|
pub extern "js" fn WebTransportError::to_js_value(
  self : WebTransportError,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WebTransportError (unchecked)
pub extern "js" fn WebTransportError::from_js_value(
  v : JsValue,
) -> WebTransportError =
  #| (v) => v

///|
/// Safely cast JsValue to WebTransportError (checked with instanceof)
pub extern "js" fn WebTransportError::from_js_value_opt(
  v : JsValue,
) -> WebTransportError? =
  #| (v) => (v instanceof WebTransportError) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WebTransportError (checked with instanceof)
pub extern "js" fn JsValue::as_web_transport_error(
  self : JsValue,
) -> WebTransportError? =
  #| (self) => (self instanceof WebTransportError) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WebTransportError (unchecked)
pub extern "js" fn JsValue::to_web_transport_error(
  self : JsValue,
) -> WebTransportError =
  #| (self) => self

///|
pub extern "js" fn WebTransportError::to_dom_exception(
  self : WebTransportError,
) -> DOMException =
  #| (self) => self

///|
pub extern "js" fn WebTransportError::new(
  message : String,
  options : WebTransportErrorOptions,
) -> WebTransportError =
  #| (message, options) => new WebTransportError(message, options)

///|
pub extern "js" fn WebTransportError::get_source(
  self : WebTransportError,
) -> WebTransportErrorSource =
  #| (self) => self.source

///|
pub extern "js" fn WebTransportError::get_stream_error_code(
  self : WebTransportError,
) -> Int? =
  #| (self) => { const v = self.streamErrorCode; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }
