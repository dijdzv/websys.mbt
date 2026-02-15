// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/video-rvfc

///|
/// VideoFrameRequestCallback callback interface
pub type VideoFrameRequestCallback

///|
/// Create VideoFrameRequestCallback from a MoonBit function
pub extern "js" fn VideoFrameRequestCallback::from_fn(
  handler : (DOMHighResTimeStamp, VideoFrameCallbackMetadata) -> Unit,
) -> VideoFrameRequestCallback =
  #| (handler) => (a0, a1) => handler(a0, a1)

///|
/// VideoFrameCallbackMetadata dictionary
pub(all) struct VideoFrameCallbackMetadata {
  presentationTime : DOMHighResTimeStamp
  expectedDisplayTime : DOMHighResTimeStamp
  width : Int
  height : Int
  mediaTime : Double
  presentedFrames : Int
  processingDuration : Double?
  captureTime : DOMHighResTimeStamp?
  receiveTime : DOMHighResTimeStamp?
  rtpTimestamp : Int?
}

///|
/// Create a new VideoFrameCallbackMetadata
pub fn VideoFrameCallbackMetadata::new(
  presentationTime~ : DOMHighResTimeStamp,
  expectedDisplayTime~ : DOMHighResTimeStamp,
) -> VideoFrameCallbackMetadata {
  VideoFrameCallbackMetadata::{
    presentationTime,
    expectedDisplayTime,
    width: 0,
    height: 0,
    mediaTime: 0,
    presentedFrames: 0,
    processingDuration: None,
    captureTime: None,
    receiveTime: None,
    rtpTimestamp: None,
  }
}

///|
extern "js" fn VideoFrameCallbackMetadata::to_js_ffi(
  self : VideoFrameCallbackMetadata,
) -> JsValue =
  #| (self) => ({
  #|   presentationTime: self.presentationTime,
  #|   expectedDisplayTime: self.expectedDisplayTime,
  #|   width: self.width,
  #|   height: self.height,
  #|   mediaTime: self.mediaTime,
  #|   presentedFrames: self.presentedFrames,
  #|   processingDuration: self.processingDuration,
  #|   captureTime: ((() => { const v = self.captureTime; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   receiveTime: ((() => { const v = self.receiveTime; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   rtpTimestamp: self.rtpTimestamp
  #| })

///|
/// Convert to JsValue
pub fn VideoFrameCallbackMetadata::to_js(
  self : VideoFrameCallbackMetadata,
) -> JsValue {
  VideoFrameCallbackMetadata::to_js_ffi(self)
}

///|
extern "js" fn VideoFrameCallbackMetadata::from_js_ffi(
  value : JsValue,
) -> VideoFrameCallbackMetadata =
  #| (v) => ({
  #|   presentationTime: v.presentationTime,
  #|   expectedDisplayTime: v.expectedDisplayTime,
  #|   width: v.width,
  #|   height: v.height,
  #|   mediaTime: v.mediaTime,
  #|   presentedFrames: v.presentedFrames,
  #|   processingDuration: v.processingDuration,
  #|   captureTime: (v.captureTime === undefined ? { $tag: 0 } : { $tag: 1, _0: v.captureTime }),
  #|   receiveTime: (v.receiveTime === undefined ? { $tag: 0 } : { $tag: 1, _0: v.receiveTime }),
  #|   rtpTimestamp: v.rtpTimestamp
  #| })

///|
/// Convert from JsValue
pub fn VideoFrameCallbackMetadata::from_js(
  value : JsValue,
) -> VideoFrameCallbackMetadata {
  VideoFrameCallbackMetadata::from_js_ffi(value)
}
