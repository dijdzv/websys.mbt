// WebRTC extended tests — DataChannel, ICECandidate, SessionDescription, Senders/Receivers
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API
// Tests codegen patterns: dictionary construction, enum getters, nullable returns

///|
/// Test RTCDataChannel — create via RTCPeerConnection, check properties.
pub fn test_rtc_data_channel() -> Unit {
  let pc = @websys.RTCPeerConnection::new()

  // createDataChannel — returns RTCDataChannel
  let dc = pc.create_data_channel("test-channel")

  // label
  assert_eq(dc.get_label(), "test-channel", label="label")

  // protocol — empty by default
  assert_eq(dc.get_protocol(), "", label="protocol default")

  // readyState — enum getter (no Eq/Show, just verify no throw)
  let _state = dc.get_ready_state()

  // binaryType — enum getter
  let _bt = dc.get_binary_type()

  // id — nullable
  let _id = dc.get_id()

  // bufferedAmount — 0 by default
  assert_eq(dc.get_buffered_amount(), 0, label="bufferedAmount default")

  // close — should not throw
  dc.close()

  pc.close()
  println("  rtc_data_channel: ok")
}

///|
/// Test RTCDataChannel with RTCDataChannelInit dictionary.
pub fn test_rtc_data_channel_with_init() -> Unit {
  let pc = @websys.RTCPeerConnection::new()

  let init = @websys.RTCDataChannelInit::{
    ..@websys.RTCDataChannelInit::default(),
    ordered: Some(false),
    maxRetransmits: Some(3),
    protocol: Some("test-protocol"),
  }
  let dc = pc.create_data_channel_with_data_channel_dict("ordered-ch", init)

  assert_eq(dc.get_label(), "ordered-ch", label="label with init")
  assert_eq(dc.get_protocol(), "test-protocol", label="protocol with init")

  dc.close()
  pc.close()
  println("  rtc_data_channel_with_init: ok")
}

///|
/// Test RTCIceCandidate — constructor with Nullable::Value fields.
pub fn test_rtc_ice_candidate() -> Unit {
  let init = @websys.RTCLocalIceCandidateInit::{
    ..@websys.RTCLocalIceCandidateInit::default(),
    candidate: Some(""),
    sdpMid: @websys.Nullable::Value("0"),
    sdpMLineIndex: @websys.Nullable::Value(0),
  }
  let candidate = @websys.RTCIceCandidate::new_with_candidate_init_dict(init)

  // candidate
  assert_eq(candidate.get_candidate(), "", label="candidate")

  // sdpMid — nullable
  assert_eq(candidate.get_sdp_mid(), Some("0"), label="sdpMid")

  // sdpMLineIndex — nullable
  assert_eq(candidate.get_sdp_m_line_index(), Some(0), label="sdpMLineIndex")
  println("  rtc_ice_candidate: ok")
}

///|
/// Test RTCPeerConnection — getSenders, getReceivers.
pub fn test_rtc_senders_receivers() -> Unit {
  let pc = @websys.RTCPeerConnection::new()

  // getSenders — initially empty
  let senders = pc.get_senders()
  assert_eq(senders.length(), 0, label="senders empty")

  // getReceivers — initially empty
  let receivers = pc.get_receivers()
  assert_eq(receivers.length(), 0, label="receivers empty")

  pc.close()
  println("  rtc_senders_receivers: ok")
}
