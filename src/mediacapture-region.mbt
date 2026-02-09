// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/mediacapture-region

///|
/// CropTarget interface
pub type CropTarget

///|
pub extern "js" fn CropTarget::to_js_value(self : CropTarget) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CropTarget (unchecked)
pub extern "js" fn CropTarget::from_js_value(v : JsValue) -> CropTarget =
  #| (v) => v

///|
/// Safely cast JsValue to CropTarget (checked with instanceof)
pub extern "js" fn CropTarget::from_js_value_opt(v : JsValue) -> CropTarget? =
  #| (v) => (v instanceof CropTarget) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CropTarget (checked with instanceof)
pub extern "js" fn JsValue::as_crop_target(self : JsValue) -> CropTarget? =
  #| (self) => (self instanceof CropTarget) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CropTarget (unchecked)
pub extern "js" fn JsValue::to_crop_target(self : JsValue) -> CropTarget =
  #| (self) => self

///|
pub extern "js" fn CropTarget::from_element(
  element : Element,
) -> Promise[CropTarget] =
  #| (element) => CropTarget.fromElement(element)

///|
/// BrowserCaptureMediaStreamTrack interface
pub type BrowserCaptureMediaStreamTrack

///|
pub extern "js" fn BrowserCaptureMediaStreamTrack::to_js_value(
  self : BrowserCaptureMediaStreamTrack,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to BrowserCaptureMediaStreamTrack (unchecked)
pub extern "js" fn BrowserCaptureMediaStreamTrack::from_js_value(
  v : JsValue,
) -> BrowserCaptureMediaStreamTrack =
  #| (v) => v

///|
/// Safely cast JsValue to BrowserCaptureMediaStreamTrack (checked with instanceof)
pub extern "js" fn BrowserCaptureMediaStreamTrack::from_js_value_opt(
  v : JsValue,
) -> BrowserCaptureMediaStreamTrack? =
  #| (v) => (v instanceof BrowserCaptureMediaStreamTrack) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to BrowserCaptureMediaStreamTrack (checked with instanceof)
pub extern "js" fn JsValue::as_browser_capture_media_stream_track(
  self : JsValue,
) -> BrowserCaptureMediaStreamTrack? =
  #| (self) => (self instanceof BrowserCaptureMediaStreamTrack) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to BrowserCaptureMediaStreamTrack (unchecked)
pub extern "js" fn JsValue::to_browser_capture_media_stream_track(
  self : JsValue,
) -> BrowserCaptureMediaStreamTrack =
  #| (self) => self

///|
pub extern "js" fn BrowserCaptureMediaStreamTrack::to_media_stream_track(
  self : BrowserCaptureMediaStreamTrack,
) -> MediaStreamTrack =
  #| (self) => self

///|
pub extern "js" fn BrowserCaptureMediaStreamTrack::to_event_target(
  self : BrowserCaptureMediaStreamTrack,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn BrowserCaptureMediaStreamTrack::crop_to(
  self : BrowserCaptureMediaStreamTrack,
  crop_target : CropTarget?,
) -> Promise[Unit] =
  #| (self, crop_target) => self.cropTo((crop_target.$tag === 1 ? crop_target._0 : null))

///|
pub extern "js" fn BrowserCaptureMediaStreamTrack::clone(
  self : BrowserCaptureMediaStreamTrack,
) -> BrowserCaptureMediaStreamTrack =
  #| (self) => self.clone()

///|
pub extern "js" fn BrowserCaptureMediaStreamTrack::restrict_to(
  self : BrowserCaptureMediaStreamTrack,
  restriction_target : RestrictionTarget?,
) -> Promise[Unit] =
  #| (self, restriction_target) => self.restrictTo((restriction_target.$tag === 1 ? restriction_target._0 : null))
