// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/fullscreen

///|
/// FullscreenNavigationUI enum
pub(all) enum FullscreenNavigationUI {
  Auto
  Show
  Hide
}

///|
/// Convert to string value
pub fn FullscreenNavigationUI::to_string(
  self : FullscreenNavigationUI,
) -> String {
  match self {
    Auto => "auto"
    Show => "show"
    Hide => "hide"
  }
}

///|
/// Parse from string value
pub fn FullscreenNavigationUI::from_string(
  s : String,
) -> FullscreenNavigationUI? {
  match s {
    "auto" => Some(Auto)
    "show" => Some(Show)
    "hide" => Some(Hide)
    _ => None
  }
}

///|
/// FullscreenOptions dictionary
pub struct FullscreenOptions {
  navigationUI : FullscreenNavigationUI?
  screen : ScreenDetailed?
}

///|
/// Create a new FullscreenOptions with default values
pub fn FullscreenOptions::default() -> FullscreenOptions {
  FullscreenOptions::{ navigationUI: None, screen: None }
}

///|
/// Convert to JsValue
pub extern "js" fn FullscreenOptions::to_js(
  self : FullscreenOptions,
) -> JsValue =
  #| (self) => ({
  #|   navigationUI: ['auto', 'show', 'hide'][self.navigationUI],
  #|   screen: self.screen
  #| })
