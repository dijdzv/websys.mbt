// RTC RTP Transceiver Direction test
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpTransceiver
// Equivalent Rust web-sys test: rtc_rtp_transceiver_direction.rs

///|
extern "js" fn js_is_unified_avail() -> Bool =
  #| () => Object.keys(RTCRtpTransceiver.prototype).indexOf('currentDirection') > -1

// --- Sync test: transceiver creation and direction ---

///|
fn test_rtc_rtp_transceiver_direction() -> Unit {
  if not(js_is_unified_avail()) {
    return
  }
  let pc1 = @websys.RTCPeerConnection::new()
  let init = @websys.RTCRtpTransceiverInit::{
    direction: Some(@websys.RTCRtpTransceiverDirection::Sendonly),
    streams: None,
    sendEncodings: None,
  }
  let tr1 = pc1.add_transceiver_with_init(
    @websys.MediaStreamTrackOrString::from_string("audio"),
    init,
  )
  let dir = tr1.get_direction()
  assert_eq(
    dir,
    @websys.RTCRtpTransceiverDirection::Sendonly,
    label="transceiver direction should be sendonly",
  )
  let cur = tr1.get_current_direction()
  assert_true(
    cur is None,
    label="current_direction should be None before negotiation",
  )
}

// --- Async test: full SDP exchange ---

///|
async fn test_rtc_sdp_exchange() -> Unit {
  if not(js_is_unified_avail()) {
    return
  }
  let pc1 = @websys.RTCPeerConnection::new()
  let init = @websys.RTCRtpTransceiverInit::{
    direction: Some(@websys.RTCRtpTransceiverDirection::Sendonly),
    streams: None,
    sendEncodings: None,
  }
  let tr1 = pc1.add_transceiver_with_init(
    @websys.MediaStreamTrackOrString::from_string("audio"),
    init,
  )

  // Before SDP exchange
  assert_eq(
    tr1.get_direction(),
    @websys.RTCRtpTransceiverDirection::Sendonly,
    label="tr1 direction before SDP",
  )
  assert_true(
    tr1.get_current_direction() is None,
    label="tr1 current_direction before SDP",
  )
  let pc2 = @websys.RTCPeerConnection::new()

  // Exchange SDPs — pure MoonBit (no JS helper needed)
  let offer = pc1.create_offer().wait()
  pc1.set_local_description_with_description(
    @websys.RTCLocalSessionDescriptionInit::{
      type_: Some(offer.type_),
      sdp: offer.sdp,
    },
  ).wait()
  pc2.set_remote_description(offer).wait()
  let answer = pc2.create_answer().wait()
  pc2.set_local_description_with_description(
    @websys.RTCLocalSessionDescriptionInit::{
      type_: Some(answer.type_),
      sdp: answer.sdp,
    },
  ).wait()
  pc1.set_remote_description(answer).wait()

  // After SDP exchange: verify pc1's transceiver
  assert_eq(
    tr1.get_direction(),
    @websys.RTCRtpTransceiverDirection::Sendonly,
    label="tr1 direction after SDP",
  )
  let tr1_cur = match tr1.get_current_direction() {
    Some(d) => d
    None =>
      abort("FAIL: tr1 current_direction should not be None after SDP exchange")
  }
  assert_eq(
    tr1_cur,
    @websys.RTCRtpTransceiverDirection::Sendonly,
    label="tr1 current_direction after SDP should be sendonly",
  )

  // Verify pc2's transceiver (equivalent to Rust's tr2 assertions)
  let transceivers = pc2.get_transceivers()
  assert_true(transceivers.length() > 0, label="pc2 should have transceivers")
  let tr2 = transceivers[0]
  assert_eq(
    tr2.get_direction(),
    @websys.RTCRtpTransceiverDirection::Recvonly,
    label="tr2 direction should be recvonly",
  )
  let tr2_cur = match tr2.get_current_direction() {
    Some(d) => d
    None =>
      abort("FAIL: tr2 current_direction should not be None after SDP exchange")
  }
  assert_eq(
    tr2_cur,
    @websys.RTCRtpTransceiverDirection::Recvonly,
    label="tr2 current_direction should be recvonly",
  )
}
