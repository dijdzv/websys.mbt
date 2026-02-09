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
    dir.to_string(),
    "sendonly",
    label="transceiver direction should be sendonly",
  )
  let cur = tr1.get_current_direction()
  assert_true(
    cur is None,
    label="current_direction should be None before negotiation",
  )
}

// --- Async test: full SDP exchange ---
// Equivalent to Rust's rtc_rtp_transceiver_direction test with exchange_sdps.
//
// The SDP exchange helper is implemented as an extern "js" function,
// analogous to Rust's exchange_sdps() test helper.
// This is necessary because create_offer()/create_answer() return
// RTCSessionDescriptionInit as a JS object whose property names ("type", "sdp")
// differ from MoonBit struct field names ("type_", "sdp"), making direct
// round-tripping through MoonBit structs lossy.
// In Rust, this is handled by wasm-bindgen's unchecked_into().

///|
extern "js" fn js_exchange_sdps(
  pc1 : @websys.RTCPeerConnection,
  pc2 : @websys.RTCPeerConnection,
) -> @js_async.Promise[Unit] =
  #| async (pc1, pc2) => {
  #|   const offer = await pc1.createOffer();
  #|   await pc1.setLocalDescription(offer);
  #|   await pc2.setRemoteDescription(offer);
  #|   const answer = await pc2.createAnswer();
  #|   await pc2.setLocalDescription(answer);
  #|   await pc1.setRemoteDescription(answer);
  #| }

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
    tr1.get_direction().to_string(),
    "sendonly",
    label="tr1 direction before SDP",
  )
  assert_true(
    tr1.get_current_direction() is None,
    label="tr1 current_direction before SDP",
  )
  let pc2 = @websys.RTCPeerConnection::new()

  // Exchange SDPs — equivalent to Rust's exchange_sdps(pc1, pc2).await
  js_exchange_sdps(pc1, pc2).wait()

  // After SDP exchange: verify pc1's transceiver
  assert_eq(
    tr1.get_direction().to_string(),
    "sendonly",
    label="tr1 direction after SDP",
  )
  let tr1_cur = match tr1.get_current_direction() {
    Some(d) => d
    None =>
      abort("FAIL: tr1 current_direction should not be None after SDP exchange")
  }
  assert_eq(
    tr1_cur.to_string(),
    "sendonly",
    label="tr1 current_direction after SDP should be sendonly",
  )

  // Verify pc2's transceiver (equivalent to Rust's tr2 assertions)
  let transceivers = pc2.get_transceivers()
  assert_true(transceivers.length() > 0, label="pc2 should have transceivers")
  let tr2 = transceivers[0]
  assert_eq(
    tr2.get_direction().to_string(),
    "recvonly",
    label="tr2 direction should be recvonly",
  )
  let tr2_cur = match tr2.get_current_direction() {
    Some(d) => d
    None =>
      abort("FAIL: tr2 current_direction should not be None after SDP exchange")
  }
  assert_eq(
    tr2_cur.to_string(),
    "recvonly",
    label="tr2 current_direction should be recvonly",
  )
}
