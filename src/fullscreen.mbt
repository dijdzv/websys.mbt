// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/fullscreen

///|
/// FullscreenNavigationUI enum
pub(all) enum FullscreenNavigationUI {
  Auto
  Show
  Hide
} derive(Eq, Show)

///|
/// Convert to string value
pub fn FullscreenNavigationUI::to_string(
  self : FullscreenNavigationUI,
) -> String {
  match self {
    FullscreenNavigationUI::Auto => "auto"
    FullscreenNavigationUI::Show => "show"
    FullscreenNavigationUI::Hide => "hide"
  }
}

///|
/// Parse from string value
pub fn FullscreenNavigationUI::from_string(
  s : String,
) -> FullscreenNavigationUI? {
  match s {
    "auto" => Some(FullscreenNavigationUI::Auto)
    "show" => Some(FullscreenNavigationUI::Show)
    "hide" => Some(FullscreenNavigationUI::Hide)
    _ => None
  }
}

///|
/// FullscreenOptions dictionary
pub(all) struct FullscreenOptions {
  navigationUI : FullscreenNavigationUI?
  screen : ScreenDetailed?
}

///|
/// Create a new FullscreenOptions with default values
pub fn FullscreenOptions::default() -> FullscreenOptions {
  FullscreenOptions::{ navigationUI: None, screen: None }
}

///|
extern "js" fn FullscreenOptions::to_js_ffi(
  self : FullscreenOptions,
) -> JsValue =
  #| (self) => ({
  #|   navigationUI: ((() => { const v = self.navigationUI; if (v === undefined) return undefined; return ['auto', 'show', 'hide'][v]; })()),
  #|   screen: ((() => { const v = self.screen; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn FullscreenOptions::to_js(self : FullscreenOptions) -> JsValue {
  FullscreenOptions::to_js_ffi(self)
}

///|
extern "js" fn FullscreenOptions::from_js_ffi(
  value : JsValue,
) -> FullscreenOptions =
  #| (v) => ({
  #|   navigationUI: (v.navigationUI === undefined ? undefined : ['auto', 'show', 'hide'].indexOf(v.navigationUI)),
  #|   screen: (v.screen === undefined ? { $tag: 0 } : { $tag: 1, _0: v.screen })
  #| })

///|
/// Convert from JsValue
pub fn FullscreenOptions::from_js(value : JsValue) -> FullscreenOptions {
  FullscreenOptions::from_js_ffi(value)
}
