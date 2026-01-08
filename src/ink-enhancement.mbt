// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/ink-enhancement

///|
/// InkPresenterParam dictionary
pub struct InkPresenterParam {
  presentationArea : Nullable[Element]
}

///|
/// Create a new InkPresenterParam with default values
pub fn InkPresenterParam::default() -> InkPresenterParam {
  InkPresenterParam::{ presentationArea: Nullable::Undefined }
}

///|
/// Convert to JsValue
pub extern "js" fn InkPresenterParam::to_js(
  self : InkPresenterParam,
) -> JsValue =
  #| (self) => ({
  #|   presentationArea: ((() => { const v = self.presentationArea; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// InkTrailStyle dictionary
pub struct InkTrailStyle {
  color : String
  diameter : Double
}

///|
/// Create a new InkTrailStyle with default values
pub fn InkTrailStyle::default() -> InkTrailStyle {
  InkTrailStyle::{ color: "", diameter: 0 }
}

///|
/// Convert to JsValue
pub extern "js" fn InkTrailStyle::to_js(self : InkTrailStyle) -> JsValue =
  #| (self) => ({
  #|   color: self.color,
  #|   diameter: self.diameter
  #| })

///|
/// Ink interface
pub type Ink

///|
pub extern "js" fn Ink::to_js_value(self : Ink) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn Ink::request_presenter(
  self : Ink,
) -> Promise[DelegatedInkTrailPresenter] =
  #| (self) => self.requestPresenter()

///|
pub extern "js" fn Ink::request_presenter_with_param(
  self : Ink,
  param : InkPresenterParam,
) -> Promise[DelegatedInkTrailPresenter] =
  #| (self, param) => self.requestPresenter(param)

///|
/// DelegatedInkTrailPresenter interface
pub type DelegatedInkTrailPresenter

///|
pub extern "js" fn DelegatedInkTrailPresenter::to_js_value(
  self : DelegatedInkTrailPresenter,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn DelegatedInkTrailPresenter::get_presentation_area(
  self : DelegatedInkTrailPresenter,
) -> Element? =
  #| (self) => self.presentationArea

///|
pub extern "js" fn DelegatedInkTrailPresenter::update_ink_trail_start_point(
  self : DelegatedInkTrailPresenter,
  event : PointerEvent,
  style : InkTrailStyle,
) -> Unit =
  #| (self, event, style) => self.updateInkTrailStartPoint(event, style)
