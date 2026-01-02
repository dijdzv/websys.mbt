// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/screen-capture

///|
/// CaptureStartFocusBehavior enum
pub(all) enum CaptureStartFocusBehavior {
  FocusCapturingApplication
  FocusCapturedSurface
  NoFocusChange
}

/// Convert to string value
pub fn CaptureStartFocusBehavior::to_string(self : CaptureStartFocusBehavior) -> String {
  match self {
    FocusCapturingApplication => "focus-capturing-application"
    FocusCapturedSurface => "focus-captured-surface"
    NoFocusChange => "no-focus-change"
  }
}

/// Parse from string value
pub fn CaptureStartFocusBehavior::from_string(s : String) -> CaptureStartFocusBehavior? {
  match s {
    "focus-capturing-application" => Some(FocusCapturingApplication)
    "focus-captured-surface" => Some(FocusCapturedSurface)
    "no-focus-change" => Some(NoFocusChange)
    _ => None
  }
}

///|
/// SelfCapturePreferenceEnum enum
pub(all) enum SelfCapturePreferenceEnum {
  Include
  Exclude
}

/// Convert to string value
pub fn SelfCapturePreferenceEnum::to_string(self : SelfCapturePreferenceEnum) -> String {
  match self {
    Include => "include"
    Exclude => "exclude"
  }
}

/// Parse from string value
pub fn SelfCapturePreferenceEnum::from_string(s : String) -> SelfCapturePreferenceEnum? {
  match s {
    "include" => Some(Include)
    "exclude" => Some(Exclude)
    _ => None
  }
}

///|
/// SystemAudioPreferenceEnum enum
pub(all) enum SystemAudioPreferenceEnum {
  Include
  Exclude
}

/// Convert to string value
pub fn SystemAudioPreferenceEnum::to_string(self : SystemAudioPreferenceEnum) -> String {
  match self {
    Include => "include"
    Exclude => "exclude"
  }
}

/// Parse from string value
pub fn SystemAudioPreferenceEnum::from_string(s : String) -> SystemAudioPreferenceEnum? {
  match s {
    "include" => Some(Include)
    "exclude" => Some(Exclude)
    _ => None
  }
}

///|
/// WindowAudioPreferenceEnum enum
pub(all) enum WindowAudioPreferenceEnum {
  System
  Window
  Exclude
}

/// Convert to string value
pub fn WindowAudioPreferenceEnum::to_string(self : WindowAudioPreferenceEnum) -> String {
  match self {
    System => "system"
    Window => "window"
    Exclude => "exclude"
  }
}

/// Parse from string value
pub fn WindowAudioPreferenceEnum::from_string(s : String) -> WindowAudioPreferenceEnum? {
  match s {
    "system" => Some(System)
    "window" => Some(Window)
    "exclude" => Some(Exclude)
    _ => None
  }
}

///|
/// SurfaceSwitchingPreferenceEnum enum
pub(all) enum SurfaceSwitchingPreferenceEnum {
  Include
  Exclude
}

/// Convert to string value
pub fn SurfaceSwitchingPreferenceEnum::to_string(self : SurfaceSwitchingPreferenceEnum) -> String {
  match self {
    Include => "include"
    Exclude => "exclude"
  }
}

/// Parse from string value
pub fn SurfaceSwitchingPreferenceEnum::from_string(s : String) -> SurfaceSwitchingPreferenceEnum? {
  match s {
    "include" => Some(Include)
    "exclude" => Some(Exclude)
    _ => None
  }
}

///|
/// MonitorTypeSurfacesEnum enum
pub(all) enum MonitorTypeSurfacesEnum {
  Include
  Exclude
}

/// Convert to string value
pub fn MonitorTypeSurfacesEnum::to_string(self : MonitorTypeSurfacesEnum) -> String {
  match self {
    Include => "include"
    Exclude => "exclude"
  }
}

/// Parse from string value
pub fn MonitorTypeSurfacesEnum::from_string(s : String) -> MonitorTypeSurfacesEnum? {
  match s {
    "include" => Some(Include)
    "exclude" => Some(Exclude)
    _ => None
  }
}

///|
/// DisplayCaptureSurfaceType enum
pub(all) enum DisplayCaptureSurfaceType {
  Monitor
  Window
  Browser
}

/// Convert to string value
pub fn DisplayCaptureSurfaceType::to_string(self : DisplayCaptureSurfaceType) -> String {
  match self {
    Monitor => "monitor"
    Window => "window"
    Browser => "browser"
  }
}

/// Parse from string value
pub fn DisplayCaptureSurfaceType::from_string(s : String) -> DisplayCaptureSurfaceType? {
  match s {
    "monitor" => Some(Monitor)
    "window" => Some(Window)
    "browser" => Some(Browser)
    _ => None
  }
}

///|
/// CursorCaptureConstraint enum
pub(all) enum CursorCaptureConstraint {
  Never
  Always
  Motion
}

/// Convert to string value
pub fn CursorCaptureConstraint::to_string(self : CursorCaptureConstraint) -> String {
  match self {
    Never => "never"
    Always => "always"
    Motion => "motion"
  }
}

/// Parse from string value
pub fn CursorCaptureConstraint::from_string(s : String) -> CursorCaptureConstraint? {
  match s {
    "never" => Some(Never)
    "always" => Some(Always)
    "motion" => Some(Motion)
    _ => None
  }
}

///|
/// DisplayMediaStreamOptions dictionary
pub struct DisplayMediaStreamOptions {
  video : JsValue?
  audio : JsValue?
  controller : CaptureController?
  selfBrowserSurface : SelfCapturePreferenceEnum?
  systemAudio : SystemAudioPreferenceEnum?
  windowAudio : WindowAudioPreferenceEnum?
  surfaceSwitching : SurfaceSwitchingPreferenceEnum?
  monitorTypeSurfaces : MonitorTypeSurfacesEnum?
}

/// Create a new DisplayMediaStreamOptions with default values
pub fn DisplayMediaStreamOptions::default() -> DisplayMediaStreamOptions {
  DisplayMediaStreamOptions::{
    video: None,
    audio: None,
    controller: None,
    selfBrowserSurface: None,
    systemAudio: None,
    windowAudio: None,
    surfaceSwitching: None,
    monitorTypeSurfaces: None,
  }
}

/// Convert to JsValue
pub extern "js" fn DisplayMediaStreamOptions::to_js(self : DisplayMediaStreamOptions) -> JsValue =
  #| (self) => ({
  #|   video: self.video,
  #|   audio: self.audio,
  #|   controller: self.controller,
  #|   selfBrowserSurface: self.selfBrowserSurface,
  #|   systemAudio: self.systemAudio,
  #|   windowAudio: self.windowAudio,
  #|   surfaceSwitching: self.surfaceSwitching,
  #|   monitorTypeSurfaces: self.monitorTypeSurfaces
  #| })

///|
/// CaptureController interface
pub type CaptureController

pub extern "js" fn CaptureController::to_js_value(self : CaptureController) -> JsValue =
  #| (self) => self

pub extern "js" fn CaptureController::new() -> CaptureController =
  #| () => new CaptureController()

pub extern "js" fn CaptureController::set_focus_behavior(self : CaptureController, focus_behavior : CaptureStartFocusBehavior) -> Unit =
  #| (self, focus_behavior) => self.setFocusBehavior(['focus-capturing-application', 'focus-captured-surface', 'no-focus-change'][focus_behavior])

pub extern "js" fn CaptureController::get_oncapturedmousechange(self : CaptureController) -> EventHandler =
  #| (self) => self.oncapturedmousechange

pub extern "js" fn CaptureController::set_oncapturedmousechange(self : CaptureController, value : EventHandler) -> Unit =
  #| (self, value) => { self.oncapturedmousechange = value }

pub extern "js" fn CaptureController::get_supported_zoom_levels(self : CaptureController) -> JsValue =
  #| (self) => self.getSupportedZoomLevels()

pub extern "js" fn CaptureController::get_zoom_level(self : CaptureController) -> Int? =
  #| (self) => self.zoomLevel

pub extern "js" fn CaptureController::increase_zoom_level(self : CaptureController) -> JsValue =
  #| (self) => self.increaseZoomLevel()

pub extern "js" fn CaptureController::decrease_zoom_level(self : CaptureController) -> JsValue =
  #| (self) => self.decreaseZoomLevel()

pub extern "js" fn CaptureController::reset_zoom_level(self : CaptureController) -> JsValue =
  #| (self) => self.resetZoomLevel()

pub extern "js" fn CaptureController::get_onzoomlevelchange(self : CaptureController) -> EventHandler =
  #| (self) => self.onzoomlevelchange

pub extern "js" fn CaptureController::set_onzoomlevelchange(self : CaptureController, value : EventHandler) -> Unit =
  #| (self, value) => { self.onzoomlevelchange = value }

pub extern "js" fn CaptureController::forward_wheel(self : CaptureController, element : HTMLElement?) -> JsValue =
  #| (self, element) => self.forwardWheel(element)

