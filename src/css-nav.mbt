// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-nav

///|
/// SpatialNavigationDirection enum
pub(all) enum SpatialNavigationDirection {
  Up
  Down
  Left
  Right
}

///|
/// Convert to string value
pub fn SpatialNavigationDirection::to_string(
  self : SpatialNavigationDirection,
) -> String {
  match self {
    SpatialNavigationDirection::Up => "up"
    SpatialNavigationDirection::Down => "down"
    SpatialNavigationDirection::Left => "left"
    SpatialNavigationDirection::Right => "right"
  }
}

///|
/// Parse from string value
pub fn SpatialNavigationDirection::from_string(
  s : String,
) -> SpatialNavigationDirection? {
  match s {
    "up" => Some(SpatialNavigationDirection::Up)
    "down" => Some(SpatialNavigationDirection::Down)
    "left" => Some(SpatialNavigationDirection::Left)
    "right" => Some(SpatialNavigationDirection::Right)
    _ => None
  }
}

///|
/// FocusableAreaSearchMode enum
pub(all) enum FocusableAreaSearchMode {
  Visible
  All
}

///|
/// Convert to string value
pub fn FocusableAreaSearchMode::to_string(
  self : FocusableAreaSearchMode,
) -> String {
  match self {
    FocusableAreaSearchMode::Visible => "visible"
    FocusableAreaSearchMode::All => "all"
  }
}

///|
/// Parse from string value
pub fn FocusableAreaSearchMode::from_string(
  s : String,
) -> FocusableAreaSearchMode? {
  match s {
    "visible" => Some(FocusableAreaSearchMode::Visible)
    "all" => Some(FocusableAreaSearchMode::All)
    _ => None
  }
}

///|
/// FocusableAreasOption dictionary
pub struct FocusableAreasOption {
  mode : FocusableAreaSearchMode?
}

///|
/// Create a new FocusableAreasOption with default values
pub fn FocusableAreasOption::default() -> FocusableAreasOption {
  FocusableAreasOption::{ mode: None }
}

///|
/// Convert to JsValue
pub extern "js" fn FocusableAreasOption::to_js(
  self : FocusableAreasOption,
) -> JsValue =
  #| (self) => ({
  #|   mode: ['visible', 'all'][self.mode]
  #| })

///|
/// SpatialNavigationSearchOptions dictionary
pub struct SpatialNavigationSearchOptions {
  candidates : Array[Node]?
  container : Nullable[Node]
}

///|
/// Create a new SpatialNavigationSearchOptions with default values
pub fn SpatialNavigationSearchOptions::default() -> SpatialNavigationSearchOptions {
  SpatialNavigationSearchOptions::{
    candidates: None,
    container: Nullable::Undefined,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn SpatialNavigationSearchOptions::to_js(
  self : SpatialNavigationSearchOptions,
) -> JsValue =
  #| (self) => ({
  #|   candidates: self.candidates,
  #|   container: ((() => { const v = self.container; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// NavigationEventInit dictionary
pub struct NavigationEventInit {
  dir : SpatialNavigationDirection?
  relatedTarget : Nullable[EventTarget]
}

///|
/// Create a new NavigationEventInit with default values
pub fn NavigationEventInit::default() -> NavigationEventInit {
  NavigationEventInit::{ dir: None, relatedTarget: Nullable::Undefined }
}

///|
/// Convert to JsValue
pub extern "js" fn NavigationEventInit::to_js(
  self : NavigationEventInit,
) -> JsValue =
  #| (self) => ({
  #|   dir: ['up', 'down', 'left', 'right'][self.dir],
  #|   relatedTarget: ((() => { const v = self.relatedTarget; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// NavigationEvent interface
pub type NavigationEvent

///|
pub extern "js" fn NavigationEvent::to_js_value(
  self : NavigationEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to NavigationEvent (unchecked)
pub extern "js" fn NavigationEvent::from_js_value(
  v : JsValue,
) -> NavigationEvent =
  #| (v) => v

///|
/// Safely cast JsValue to NavigationEvent (checked with instanceof)
pub extern "js" fn NavigationEvent::from_js_value_opt(
  v : JsValue,
) -> NavigationEvent? =
  #| (v) => (v instanceof NavigationEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to NavigationEvent (checked with instanceof)
pub extern "js" fn JsValue::as_navigation_event(
  self : JsValue,
) -> NavigationEvent? =
  #| (self) => (self instanceof NavigationEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to NavigationEvent (unchecked)
pub extern "js" fn JsValue::to_navigation_event(
  self : JsValue,
) -> NavigationEvent =
  #| (self) => self

///|
pub extern "js" fn NavigationEvent::to_ui_event(
  self : NavigationEvent,
) -> UIEvent =
  #| (self) => self

///|
pub extern "js" fn NavigationEvent::to_event(self : NavigationEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn NavigationEvent::new(
  type_ : String,
  event_init_dict : NavigationEventInit,
) -> NavigationEvent =
  #| (type_, event_init_dict) => new NavigationEvent(type_, event_init_dict)

///|
pub extern "js" fn NavigationEvent::get_dir(
  self : NavigationEvent,
) -> SpatialNavigationDirection =
  #| (self) => self.dir

///|
pub extern "js" fn NavigationEvent::get_related_target(
  self : NavigationEvent,
) -> EventTarget? =
  #| (self) => { const v = self.relatedTarget; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }
