// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-nav

///|
/// SpatialNavigationDirection enum
pub(all) enum SpatialNavigationDirection {
  Up
  Down
  Left
  Right
} derive(Eq, Show)

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
} derive(Eq, Show)

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
pub(all) struct FocusableAreasOption {
  mode : FocusableAreaSearchMode?
}

///|
/// Create a new FocusableAreasOption with default values
pub fn FocusableAreasOption::default() -> FocusableAreasOption {
  FocusableAreasOption::{ mode: None }
}

///|
extern "js" fn FocusableAreasOption::to_js_ffi(
  self : FocusableAreasOption,
) -> JsValue =
  #| (self) => ({
  #|   mode: ((() => { const v = self.mode; if (v === undefined) return undefined; return ['visible', 'all'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn FocusableAreasOption::to_js(self : FocusableAreasOption) -> JsValue {
  FocusableAreasOption::to_js_ffi(self)
}

///|
extern "js" fn FocusableAreasOption::from_js_ffi(
  value : JsValue,
) -> FocusableAreasOption =
  #| (v) => ({
  #|   mode: (v.mode === undefined ? undefined : ['visible', 'all'].indexOf(v.mode))
  #| })

///|
/// Convert from JsValue
pub fn FocusableAreasOption::from_js(value : JsValue) -> FocusableAreasOption {
  FocusableAreasOption::from_js_ffi(value)
}

///|
/// SpatialNavigationSearchOptions dictionary
pub(all) struct SpatialNavigationSearchOptions {
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
extern "js" fn SpatialNavigationSearchOptions::to_js_ffi(
  self : SpatialNavigationSearchOptions,
) -> JsValue =
  #| (self) => ({
  #|   candidates: ((() => { const v = self.candidates; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   container: ((() => { const v = self.container; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn SpatialNavigationSearchOptions::to_js(
  self : SpatialNavigationSearchOptions,
) -> JsValue {
  SpatialNavigationSearchOptions::to_js_ffi(self)
}

///|
extern "js" fn SpatialNavigationSearchOptions::from_js_ffi(
  value : JsValue,
) -> SpatialNavigationSearchOptions =
  #| (v) => ({
  #|   candidates: (v.candidates === undefined ? { $tag: 0 } : { $tag: 1, _0: v.candidates }),
  #|   container: (v.container === undefined ? { $tag: 0 } : v.container === null ? { $tag: 1 } : { $tag: 2, _0: v.container })
  #| })

///|
/// Convert from JsValue
pub fn SpatialNavigationSearchOptions::from_js(
  value : JsValue,
) -> SpatialNavigationSearchOptions {
  SpatialNavigationSearchOptions::from_js_ffi(value)
}

///|
/// NavigationEventInit dictionary
pub(all) struct NavigationEventInit {
  dir : SpatialNavigationDirection?
  relatedTarget : Nullable[EventTarget]
}

///|
/// Create a new NavigationEventInit with default values
pub fn NavigationEventInit::default() -> NavigationEventInit {
  NavigationEventInit::{ dir: None, relatedTarget: Nullable::Undefined }
}

///|
extern "js" fn NavigationEventInit::to_js_ffi(
  self : NavigationEventInit,
) -> JsValue =
  #| (self) => ({
  #|   dir: ((() => { const v = self.dir; if (v === undefined) return undefined; return ['up', 'down', 'left', 'right'][v]; })()),
  #|   relatedTarget: ((() => { const v = self.relatedTarget; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn NavigationEventInit::to_js(self : NavigationEventInit) -> JsValue {
  NavigationEventInit::to_js_ffi(self)
}

///|
extern "js" fn NavigationEventInit::from_js_ffi(
  value : JsValue,
) -> NavigationEventInit =
  #| (v) => ({
  #|   dir: (v.dir === undefined ? undefined : ['up', 'down', 'left', 'right'].indexOf(v.dir)),
  #|   relatedTarget: (v.relatedTarget === undefined ? { $tag: 0 } : v.relatedTarget === null ? { $tag: 1 } : { $tag: 2, _0: v.relatedTarget })
  #| })

///|
/// Convert from JsValue
pub fn NavigationEventInit::from_js(value : JsValue) -> NavigationEventInit {
  NavigationEventInit::from_js_ffi(value)
}

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
pub extern "js" fn NavigationEvent::new(type_ : String) -> NavigationEvent =
  #| (type_) => new NavigationEvent(type_)

///|
extern "js" fn NavigationEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> NavigationEvent =
  #| (type_, event_init_dict) => new NavigationEvent(type_, event_init_dict)

///|
pub fn NavigationEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : NavigationEventInit,
) -> NavigationEvent {
  NavigationEvent::new_with_event_init_dict_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn NavigationEvent::get_dir(
  self : NavigationEvent,
) -> SpatialNavigationDirection =
  #| (self) => ['up', 'down', 'left', 'right'].indexOf(self.dir)

///|
pub extern "js" fn NavigationEvent::get_related_target(
  self : NavigationEvent,
) -> EventTarget? =
  #| (self) => (() => { const v = self.relatedTarget; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()
