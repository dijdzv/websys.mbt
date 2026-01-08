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
pub extern "js" fn CanvasCaptureMediaStreamTrack::get_canvas(
  self : CanvasCaptureMediaStreamTrack,
) -> HTMLCanvasElement =
  #| (self) => self.canvas

///|
pub extern "js" fn CanvasCaptureMediaStreamTrack::request_frame(
  self : CanvasCaptureMediaStreamTrack,
) -> Unit =
  #| (self) => self.requestFrame()
