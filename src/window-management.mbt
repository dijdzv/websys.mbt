// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/window-management

///|
/// ScreenDetails interface
pub type ScreenDetails

///|
pub extern "js" fn ScreenDetails::to_js_value(self : ScreenDetails) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ScreenDetails (unchecked)
pub extern "js" fn ScreenDetails::from_js_value(v : JsValue) -> ScreenDetails =
  #| (v) => v

///|
/// Safely cast JsValue to ScreenDetails (checked with instanceof)
pub extern "js" fn ScreenDetails::from_js_value_opt(
  v : JsValue,
) -> ScreenDetails? =
  #| (v) => (v instanceof ScreenDetails) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ScreenDetails (checked with instanceof)
pub extern "js" fn JsValue::as_screen_details(self : JsValue) -> ScreenDetails? =
  #| (self) => (self instanceof ScreenDetails) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ScreenDetails (unchecked)
pub extern "js" fn JsValue::to_screen_details(self : JsValue) -> ScreenDetails =
  #| (self) => self

///|
pub extern "js" fn ScreenDetails::to_event_target(
  self : ScreenDetails,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn ScreenDetails::get_screens(
  self : ScreenDetails,
) -> Array[ScreenDetailed] =
  #| (self) => self.screens

///|
pub extern "js" fn ScreenDetails::get_current_screen(
  self : ScreenDetails,
) -> ScreenDetailed =
  #| (self) => self.currentScreen

///|
pub extern "js" fn ScreenDetails::get_onscreenschange(
  self : ScreenDetails,
) -> EventHandler =
  #| (self) => self.onscreenschange

///|
pub extern "js" fn ScreenDetails::set_onscreenschange(
  self : ScreenDetails,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onscreenschange = value }

///|
pub extern "js" fn ScreenDetails::get_oncurrentscreenchange(
  self : ScreenDetails,
) -> EventHandler =
  #| (self) => self.oncurrentscreenchange

///|
pub extern "js" fn ScreenDetails::set_oncurrentscreenchange(
  self : ScreenDetails,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncurrentscreenchange = value }

///|
/// ScreenDetailed interface
pub type ScreenDetailed

///|
pub extern "js" fn ScreenDetailed::to_js_value(
  self : ScreenDetailed,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ScreenDetailed (unchecked)
pub extern "js" fn ScreenDetailed::from_js_value(v : JsValue) -> ScreenDetailed =
  #| (v) => v

///|
/// Safely cast JsValue to ScreenDetailed (checked with instanceof)
pub extern "js" fn ScreenDetailed::from_js_value_opt(
  v : JsValue,
) -> ScreenDetailed? =
  #| (v) => (v instanceof ScreenDetailed) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ScreenDetailed (checked with instanceof)
pub extern "js" fn JsValue::as_screen_detailed(
  self : JsValue,
) -> ScreenDetailed? =
  #| (self) => (self instanceof ScreenDetailed) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ScreenDetailed (unchecked)
pub extern "js" fn JsValue::to_screen_detailed(
  self : JsValue,
) -> ScreenDetailed =
  #| (self) => self

///|
pub extern "js" fn ScreenDetailed::to_screen(self : ScreenDetailed) -> Screen =
  #| (self) => self

///|
pub extern "js" fn ScreenDetailed::get_avail_left(self : ScreenDetailed) -> Int =
  #| (self) => self.availLeft

///|
pub extern "js" fn ScreenDetailed::get_avail_top(self : ScreenDetailed) -> Int =
  #| (self) => self.availTop

///|
pub extern "js" fn ScreenDetailed::get_left(self : ScreenDetailed) -> Int =
  #| (self) => self.left

///|
pub extern "js" fn ScreenDetailed::get_top(self : ScreenDetailed) -> Int =
  #| (self) => self.top

///|
pub extern "js" fn ScreenDetailed::get_is_primary(
  self : ScreenDetailed,
) -> Bool =
  #| (self) => self.isPrimary

///|
pub extern "js" fn ScreenDetailed::get_is_internal(
  self : ScreenDetailed,
) -> Bool =
  #| (self) => self.isInternal

///|
pub extern "js" fn ScreenDetailed::get_device_pixel_ratio(
  self : ScreenDetailed,
) -> Double =
  #| (self) => self.devicePixelRatio

///|
pub extern "js" fn ScreenDetailed::get_label(self : ScreenDetailed) -> String =
  #| (self) => self.label
