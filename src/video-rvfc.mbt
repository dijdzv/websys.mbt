// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/video-rvfc

/// VideoFrameRequestCallback callback interface
pub type VideoFrameRequestCallback

/// Create VideoFrameRequestCallback from a MoonBit function
pub extern "js" fn VideoFrameRequestCallback::from_fn(handler : (DOMHighResTimeStamp, VideoFrameCallbackMetadata) -> Unit) -> VideoFrameRequestCallback =
  #| (handler) => handler

///|
/// VideoFrameCallbackMetadata dictionary
pub struct VideoFrameCallbackMetadata {
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

/// Create a new VideoFrameCallbackMetadata with default values
pub fn VideoFrameCallbackMetadata::default() -> VideoFrameCallbackMetadata {
  VideoFrameCallbackMetadata::{
    presentationTime: panic(),
    expectedDisplayTime: panic(),
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

/// Convert to JsValue
pub extern "js" fn VideoFrameCallbackMetadata::to_js(self : VideoFrameCallbackMetadata) -> JsValue =
  #| (self) => ({
  #|   presentationTime: self.presentationTime,
  #|   expectedDisplayTime: self.expectedDisplayTime,
  #|   width: self.width,
  #|   height: self.height,
  #|   mediaTime: self.mediaTime,
  #|   presentedFrames: self.presentedFrames,
  #|   processingDuration: self.processingDuration,
  #|   captureTime: self.captureTime,
  #|   receiveTime: self.receiveTime,
  #|   rtpTimestamp: self.rtpTimestamp
  #| })

