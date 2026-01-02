// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/window-controls-overlay

///|
/// WindowControlsOverlayGeometryChangeEventInit dictionary
pub struct WindowControlsOverlayGeometryChangeEventInit {
  titlebarAreaRect : DOMRect
  visible : Bool?
}

/// Create a new WindowControlsOverlayGeometryChangeEventInit with default values
pub fn WindowControlsOverlayGeometryChangeEventInit::default() -> WindowControlsOverlayGeometryChangeEventInit {
  WindowControlsOverlayGeometryChangeEventInit::{
    titlebarAreaRect: panic(),
    visible: None,
  }
}

/// Convert to JsValue
pub extern "js" fn WindowControlsOverlayGeometryChangeEventInit::to_js(self : WindowControlsOverlayGeometryChangeEventInit) -> JsValue =
  #| (self) => ({
  #|   titlebarAreaRect: self.titlebarAreaRect,
  #|   visible: self.visible
  #| })

///|
/// WindowControlsOverlay interface
pub type WindowControlsOverlay

pub extern "js" fn WindowControlsOverlay::to_js_value(self : WindowControlsOverlay) -> JsValue =
  #| (self) => self

pub extern "js" fn WindowControlsOverlay::get_visible(self : WindowControlsOverlay) -> Bool =
  #| (self) => self.visible

pub extern "js" fn WindowControlsOverlay::get_titlebar_area_rect(self : WindowControlsOverlay) -> DOMRect =
  #| (self) => self.getTitlebarAreaRect()

pub extern "js" fn WindowControlsOverlay::get_ongeometrychange(self : WindowControlsOverlay) -> EventHandler =
  #| (self) => self.ongeometrychange

pub extern "js" fn WindowControlsOverlay::set_ongeometrychange(self : WindowControlsOverlay, value : EventHandler) -> Unit =
  #| (self, value) => { self.ongeometrychange = value }

///|
/// WindowControlsOverlayGeometryChangeEvent interface
pub type WindowControlsOverlayGeometryChangeEvent

pub extern "js" fn WindowControlsOverlayGeometryChangeEvent::to_js_value(self : WindowControlsOverlayGeometryChangeEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn WindowControlsOverlayGeometryChangeEvent::new(type_ : String, event_init_dict : WindowControlsOverlayGeometryChangeEventInit) -> WindowControlsOverlayGeometryChangeEvent =
  #| (type_, event_init_dict) => new WindowControlsOverlayGeometryChangeEvent(type_, event_init_dict)

pub extern "js" fn WindowControlsOverlayGeometryChangeEvent::get_titlebar_area_rect(self : WindowControlsOverlayGeometryChangeEvent) -> DOMRect =
  #| (self) => self.titlebarAreaRect

pub extern "js" fn WindowControlsOverlayGeometryChangeEvent::get_visible(self : WindowControlsOverlayGeometryChangeEvent) -> Bool =
  #| (self) => self.visible

