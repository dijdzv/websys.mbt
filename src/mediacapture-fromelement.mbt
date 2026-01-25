// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/mediacapture-fromelement

///|
/// CanvasCaptureMediaStreamTrack interface
pub type CanvasCaptureMediaStreamTrack

///|
pub extern "js" fn CanvasCaptureMediaStreamTrack::to_js_value(
  self : CanvasCaptureMediaStreamTrack,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CanvasCaptureMediaStreamTrack (unchecked)
pub extern "js" fn CanvasCaptureMediaStreamTrack::from_js_value(
  v : JsValue,
) -> CanvasCaptureMediaStreamTrack =
  #| (v) => v

///|
/// Safely cast JsValue to CanvasCaptureMediaStreamTrack (checked with instanceof)
pub extern "js" fn CanvasCaptureMediaStreamTrack::from_js_value_opt(
  v : JsValue,
) -> CanvasCaptureMediaStreamTrack? =
  #| (v) => (v instanceof CanvasCaptureMediaStreamTrack) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CanvasCaptureMediaStreamTrack (checked with instanceof)
pub extern "js" fn JsValue::as_canvas_capture_media_stream_track(
  self : JsValue,
) -> CanvasCaptureMediaStreamTrack? =
  #| (self) => (self instanceof CanvasCaptureMediaStreamTrack) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CanvasCaptureMediaStreamTrack (unchecked)
pub extern "js" fn JsValue::to_canvas_capture_media_stream_track(
  self : JsValue,
) -> CanvasCaptureMediaStreamTrack =
  #| (self) => self

///|
pub extern "js" fn CanvasCaptureMediaStreamTrack::to_media_stream_track(
  self : CanvasCaptureMediaStreamTrack,
) -> MediaStreamTrack =
  #| (self) => self

///|
pub extern "js" fn CanvasCaptureMediaStreamTrack::to_event_target(
  self : CanvasCaptureMediaStreamTrack,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn CanvasCaptureMediaStreamTrack::get_canvas(
  self : CanvasCaptureMediaStreamTrack,
) -> HTMLCanvasElement =
  #| (self) => self.canvas

///|
pub extern "js" fn CanvasCaptureMediaStreamTrack::request_frame(
  self : CanvasCaptureMediaStreamTrack,
) -> Unit =
  #| (self) => self.requestFrame()
