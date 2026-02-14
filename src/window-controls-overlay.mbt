// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/window-controls-overlay

///|
/// WindowControlsOverlayGeometryChangeEventInit dictionary
pub(all) struct WindowControlsOverlayGeometryChangeEventInit {
  titlebarAreaRect : DOMRect
  visible : Bool?
}

///|
/// Create a new WindowControlsOverlayGeometryChangeEventInit
pub fn WindowControlsOverlayGeometryChangeEventInit::new(
  titlebarAreaRect~ : DOMRect,
) -> WindowControlsOverlayGeometryChangeEventInit {
  WindowControlsOverlayGeometryChangeEventInit::{
    titlebarAreaRect,
    visible: None,
  }
}

///|
extern "js" fn WindowControlsOverlayGeometryChangeEventInit::to_js_ffi(
  self : WindowControlsOverlayGeometryChangeEventInit,
) -> JsValue =
  #| (self) => ({
  #|   titlebarAreaRect: self.titlebarAreaRect,
  #|   visible: (self.visible === -1 ? undefined : self.visible)
  #| })

///|
/// Convert to JsValue
pub fn WindowControlsOverlayGeometryChangeEventInit::to_js(
  self : WindowControlsOverlayGeometryChangeEventInit,
) -> JsValue {
  WindowControlsOverlayGeometryChangeEventInit::to_js_ffi(self)
}

///|
extern "js" fn WindowControlsOverlayGeometryChangeEventInit::from_js_ffi(
  value : JsValue,
) -> WindowControlsOverlayGeometryChangeEventInit =
  #| (v) => ({
  #|   titlebarAreaRect: v.titlebarAreaRect,
  #|   visible: (v.visible === undefined ? -1 : v.visible)
  #| })

///|
/// Convert from JsValue
pub fn WindowControlsOverlayGeometryChangeEventInit::from_js(
  value : JsValue,
) -> WindowControlsOverlayGeometryChangeEventInit {
  WindowControlsOverlayGeometryChangeEventInit::from_js_ffi(value)
}

///|
/// WindowControlsOverlay interface
pub type WindowControlsOverlay

///|
pub extern "js" fn WindowControlsOverlay::to_js_value(
  self : WindowControlsOverlay,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WindowControlsOverlay (unchecked)
pub extern "js" fn WindowControlsOverlay::from_js_value(
  v : JsValue,
) -> WindowControlsOverlay =
  #| (v) => v

///|
/// Safely cast JsValue to WindowControlsOverlay (checked with instanceof)
pub extern "js" fn WindowControlsOverlay::from_js_value_opt(
  v : JsValue,
) -> WindowControlsOverlay? =
  #| (v) => (v instanceof WindowControlsOverlay) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WindowControlsOverlay (checked with instanceof)
pub extern "js" fn JsValue::as_window_controls_overlay(
  self : JsValue,
) -> WindowControlsOverlay? =
  #| (self) => (self instanceof WindowControlsOverlay) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WindowControlsOverlay (unchecked)
pub extern "js" fn JsValue::to_window_controls_overlay(
  self : JsValue,
) -> WindowControlsOverlay =
  #| (self) => self

///|
pub extern "js" fn WindowControlsOverlay::to_event_target(
  self : WindowControlsOverlay,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn WindowControlsOverlay::get_visible(
  self : WindowControlsOverlay,
) -> Bool =
  #| (self) => self.visible

///|
pub extern "js" fn WindowControlsOverlay::get_titlebar_area_rect(
  self : WindowControlsOverlay,
) -> DOMRect =
  #| (self) => self.getTitlebarAreaRect()

///|
pub extern "js" fn WindowControlsOverlay::get_ongeometrychange(
  self : WindowControlsOverlay,
) -> EventHandler =
  #| (self) => self.ongeometrychange

///|
pub extern "js" fn WindowControlsOverlay::set_ongeometrychange(
  self : WindowControlsOverlay,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ongeometrychange = value }

///|
/// WindowControlsOverlayGeometryChangeEvent interface
pub type WindowControlsOverlayGeometryChangeEvent

///|
pub extern "js" fn WindowControlsOverlayGeometryChangeEvent::to_js_value(
  self : WindowControlsOverlayGeometryChangeEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WindowControlsOverlayGeometryChangeEvent (unchecked)
pub extern "js" fn WindowControlsOverlayGeometryChangeEvent::from_js_value(
  v : JsValue,
) -> WindowControlsOverlayGeometryChangeEvent =
  #| (v) => v

///|
/// Safely cast JsValue to WindowControlsOverlayGeometryChangeEvent (checked with instanceof)
pub extern "js" fn WindowControlsOverlayGeometryChangeEvent::from_js_value_opt(
  v : JsValue,
) -> WindowControlsOverlayGeometryChangeEvent? =
  #| (v) => (v instanceof WindowControlsOverlayGeometryChangeEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WindowControlsOverlayGeometryChangeEvent (checked with instanceof)
pub extern "js" fn JsValue::as_window_controls_overlay_geometry_change_event(
  self : JsValue,
) -> WindowControlsOverlayGeometryChangeEvent? =
  #| (self) => (self instanceof WindowControlsOverlayGeometryChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WindowControlsOverlayGeometryChangeEvent (unchecked)
pub extern "js" fn JsValue::to_window_controls_overlay_geometry_change_event(
  self : JsValue,
) -> WindowControlsOverlayGeometryChangeEvent =
  #| (self) => self

///|
pub extern "js" fn WindowControlsOverlayGeometryChangeEvent::to_event(
  self : WindowControlsOverlayGeometryChangeEvent,
) -> Event =
  #| (self) => self

///|
extern "js" fn WindowControlsOverlayGeometryChangeEvent::new_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> WindowControlsOverlayGeometryChangeEvent =
  #| (type_, event_init_dict) => new WindowControlsOverlayGeometryChangeEvent(type_, event_init_dict)

///|
pub fn WindowControlsOverlayGeometryChangeEvent::new(
  type_ : String,
  event_init_dict : WindowControlsOverlayGeometryChangeEventInit,
) -> WindowControlsOverlayGeometryChangeEvent {
  WindowControlsOverlayGeometryChangeEvent::new_ffi(
    type_,
    event_init_dict.to_js(),
  )
}

///|
pub extern "js" fn WindowControlsOverlayGeometryChangeEvent::get_titlebar_area_rect(
  self : WindowControlsOverlayGeometryChangeEvent,
) -> DOMRect =
  #| (self) => self.titlebarAreaRect

///|
pub extern "js" fn WindowControlsOverlayGeometryChangeEvent::get_visible(
  self : WindowControlsOverlayGeometryChangeEvent,
) -> Bool =
  #| (self) => self.visible
