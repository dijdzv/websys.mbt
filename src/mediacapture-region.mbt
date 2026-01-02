// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/mediacapture-region

///|
/// CropTarget interface
pub type CropTarget

pub extern "js" fn CropTarget::to_js_value(self : CropTarget) -> JsValue =
  #| (self) => self

pub extern "js" fn CropTarget::from_element(element : Element) -> Promise[CropTarget] =
  #| (element) => CropTarget.fromElement(element)

///|
/// BrowserCaptureMediaStreamTrack interface
pub type BrowserCaptureMediaStreamTrack

pub extern "js" fn BrowserCaptureMediaStreamTrack::to_js_value(self : BrowserCaptureMediaStreamTrack) -> JsValue =
  #| (self) => self

pub extern "js" fn BrowserCaptureMediaStreamTrack::crop_to(self : BrowserCaptureMediaStreamTrack, crop_target : CropTarget?) -> Promise[Unit] =
  #| (self, crop_target) => self.cropTo(crop_target)

pub extern "js" fn BrowserCaptureMediaStreamTrack::clone(self : BrowserCaptureMediaStreamTrack) -> BrowserCaptureMediaStreamTrack =
  #| (self) => self.clone()

pub extern "js" fn BrowserCaptureMediaStreamTrack::restrict_to(self : BrowserCaptureMediaStreamTrack, restriction_target : RestrictionTarget?) -> Promise[Unit] =
  #| (self, restriction_target) => self.restrictTo(restriction_target)

