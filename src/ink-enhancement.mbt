// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/ink-enhancement

///|
/// InkPresenterParam dictionary
pub(all) struct InkPresenterParam {
  presentationArea : Nullable[Element]
}

///|
/// Create a new InkPresenterParam with default values
pub fn InkPresenterParam::default() -> InkPresenterParam {
  InkPresenterParam::{ presentationArea: Nullable::Undefined }
}

///|
extern "js" fn InkPresenterParam::to_js_ffi(
  self : InkPresenterParam,
) -> JsValue =
  #| (self) => ({
  #|   presentationArea: ((() => { const v = self.presentationArea; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn InkPresenterParam::to_js(self : InkPresenterParam) -> JsValue {
  InkPresenterParam::to_js_ffi(self)
}

///|
extern "js" fn InkPresenterParam::from_js_ffi(
  value : JsValue,
) -> InkPresenterParam =
  #| (v) => ({
  #|   presentationArea: (v.presentationArea === undefined ? { $tag: 0 } : v.presentationArea === null ? { $tag: 1 } : { $tag: 2, _0: v.presentationArea })
  #| })

///|
/// Convert from JsValue
pub fn InkPresenterParam::from_js(value : JsValue) -> InkPresenterParam {
  InkPresenterParam::from_js_ffi(value)
}

///|
/// InkTrailStyle dictionary
pub(all) struct InkTrailStyle {
  color : String
  diameter : Double
}

///|
/// Create a new InkTrailStyle with default values
pub fn InkTrailStyle::default() -> InkTrailStyle {
  InkTrailStyle::{ color: "", diameter: 0 }
}

///|
extern "js" fn InkTrailStyle::to_js_ffi(self : InkTrailStyle) -> JsValue =
  #| (self) => ({
  #|   color: self.color,
  #|   diameter: self.diameter
  #| })

///|
/// Convert to JsValue
pub fn InkTrailStyle::to_js(self : InkTrailStyle) -> JsValue {
  InkTrailStyle::to_js_ffi(self)
}

///|
extern "js" fn InkTrailStyle::from_js_ffi(value : JsValue) -> InkTrailStyle =
  #| (v) => ({
  #|   color: v.color,
  #|   diameter: v.diameter
  #| })

///|
/// Convert from JsValue
pub fn InkTrailStyle::from_js(value : JsValue) -> InkTrailStyle {
  InkTrailStyle::from_js_ffi(value)
}

///|
/// Ink interface
pub type Ink

///|
pub extern "js" fn Ink::to_js_value(self : Ink) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Ink (unchecked)
pub extern "js" fn Ink::from_js_value(v : JsValue) -> Ink =
  #| (v) => v

///|
/// Safely cast JsValue to Ink (checked with instanceof)
pub extern "js" fn Ink::from_js_value_opt(v : JsValue) -> Ink? =
  #| (v) => (v instanceof Ink) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Ink (checked with instanceof)
pub extern "js" fn JsValue::as_ink(self : JsValue) -> Ink? =
  #| (self) => (self instanceof Ink) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Ink (unchecked)
pub extern "js" fn JsValue::to_ink(self : JsValue) -> Ink =
  #| (self) => self

///|
pub extern "js" fn Ink::request_presenter(
  self : Ink,
) -> Promise[DelegatedInkTrailPresenter] =
  #| (self) => self.requestPresenter()

///|
extern "js" fn Ink::request_presenter_with_param_ffi(
  self : Ink,
  param : JsValue,
) -> Promise[DelegatedInkTrailPresenter] =
  #| (self, param) => self.requestPresenter(param)

///|
pub fn Ink::request_presenter_with_param(
  self : Ink,
  param : InkPresenterParam,
) -> Promise[DelegatedInkTrailPresenter] {
  Ink::request_presenter_with_param_ffi(self, param.to_js())
}

///|
/// DelegatedInkTrailPresenter interface
pub type DelegatedInkTrailPresenter

///|
pub extern "js" fn DelegatedInkTrailPresenter::to_js_value(
  self : DelegatedInkTrailPresenter,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to DelegatedInkTrailPresenter (unchecked)
pub extern "js" fn DelegatedInkTrailPresenter::from_js_value(
  v : JsValue,
) -> DelegatedInkTrailPresenter =
  #| (v) => v

///|
/// Safely cast JsValue to DelegatedInkTrailPresenter (checked with instanceof)
pub extern "js" fn DelegatedInkTrailPresenter::from_js_value_opt(
  v : JsValue,
) -> DelegatedInkTrailPresenter? =
  #| (v) => (v instanceof DelegatedInkTrailPresenter) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to DelegatedInkTrailPresenter (checked with instanceof)
pub extern "js" fn JsValue::as_delegated_ink_trail_presenter(
  self : JsValue,
) -> DelegatedInkTrailPresenter? =
  #| (self) => (self instanceof DelegatedInkTrailPresenter) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to DelegatedInkTrailPresenter (unchecked)
pub extern "js" fn JsValue::to_delegated_ink_trail_presenter(
  self : JsValue,
) -> DelegatedInkTrailPresenter =
  #| (self) => self

///|
pub extern "js" fn DelegatedInkTrailPresenter::get_presentation_area(
  self : DelegatedInkTrailPresenter,
) -> Element? =
  #| (self) => (() => { const v = self.presentationArea; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
extern "js" fn DelegatedInkTrailPresenter::update_ink_trail_start_point_ffi(
  self : DelegatedInkTrailPresenter,
  event : PointerEvent,
  style : JsValue,
) -> Unit =
  #| (self, event, style) => self.updateInkTrailStartPoint(event, style)

///|
pub fn DelegatedInkTrailPresenter::update_ink_trail_start_point(
  self : DelegatedInkTrailPresenter,
  event : PointerEvent,
  style : InkTrailStyle,
) -> Unit {
  DelegatedInkTrailPresenter::update_ink_trail_start_point_ffi(
    self,
    event,
    style.to_js(),
  )
}
