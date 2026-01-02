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

/// Convert to string value
pub fn SpatialNavigationDirection::to_string(self : SpatialNavigationDirection) -> String {
  match self {
    Up => "up"
    Down => "down"
    Left => "left"
    Right => "right"
  }
}

/// Parse from string value
pub fn SpatialNavigationDirection::from_string(s : String) -> SpatialNavigationDirection? {
  match s {
    "up" => Some(Up)
    "down" => Some(Down)
    "left" => Some(Left)
    "right" => Some(Right)
    _ => None
  }
}

///|
/// FocusableAreaSearchMode enum
pub(all) enum FocusableAreaSearchMode {
  Visible
  All
}

/// Convert to string value
pub fn FocusableAreaSearchMode::to_string(self : FocusableAreaSearchMode) -> String {
  match self {
    Visible => "visible"
    All => "all"
  }
}

/// Parse from string value
pub fn FocusableAreaSearchMode::from_string(s : String) -> FocusableAreaSearchMode? {
  match s {
    "visible" => Some(Visible)
    "all" => Some(All)
    _ => None
  }
}

///|
/// FocusableAreasOption dictionary
pub struct FocusableAreasOption {
  mode : FocusableAreaSearchMode?
}

/// Create a new FocusableAreasOption with default values
pub fn FocusableAreasOption::default() -> FocusableAreasOption {
  FocusableAreasOption::{
    mode: None,
  }
}

/// Convert to JsValue
pub extern "js" fn FocusableAreasOption::to_js(self : FocusableAreasOption) -> JsValue =
  #| (self) => ({
  #|   mode: self.mode
  #| })

///|
/// SpatialNavigationSearchOptions dictionary
pub struct SpatialNavigationSearchOptions {
  candidates : Array[Node]?
  container : Node??
}

/// Create a new SpatialNavigationSearchOptions with default values
pub fn SpatialNavigationSearchOptions::default() -> SpatialNavigationSearchOptions {
  SpatialNavigationSearchOptions::{
    candidates: None,
    container: None,
  }
}

/// Convert to JsValue
pub extern "js" fn SpatialNavigationSearchOptions::to_js(self : SpatialNavigationSearchOptions) -> JsValue =
  #| (self) => ({
  #|   candidates: self.candidates,
  #|   container: self.container
  #| })

///|
/// NavigationEventInit dictionary
pub struct NavigationEventInit {
  dir : SpatialNavigationDirection?
  relatedTarget : EventTarget??
}

/// Create a new NavigationEventInit with default values
pub fn NavigationEventInit::default() -> NavigationEventInit {
  NavigationEventInit::{
    dir: None,
    relatedTarget: None,
  }
}

/// Convert to JsValue
pub extern "js" fn NavigationEventInit::to_js(self : NavigationEventInit) -> JsValue =
  #| (self) => ({
  #|   dir: self.dir,
  #|   relatedTarget: self.relatedTarget
  #| })

///|
/// NavigationEvent interface
pub type NavigationEvent

pub extern "js" fn NavigationEvent::to_js_value(self : NavigationEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn NavigationEvent::new(type_ : String, event_init_dict : NavigationEventInit) -> NavigationEvent =
  #| (type_, event_init_dict) => new NavigationEvent(type_, event_init_dict)

pub extern "js" fn NavigationEvent::get_dir(self : NavigationEvent) -> SpatialNavigationDirection =
  #| (self) => self.dir

pub extern "js" fn NavigationEvent::get_related_target(self : NavigationEvent) -> EventTarget? =
  #| (self) => self.relatedTarget

