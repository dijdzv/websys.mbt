// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/screen-capture

///|
/// CaptureStartFocusBehavior enum
pub(all) enum CaptureStartFocusBehavior {
  FocusCapturingApplication
  FocusCapturedSurface
  NoFocusChange
}

///|
/// Convert to string value
pub fn CaptureStartFocusBehavior::to_string(
  self : CaptureStartFocusBehavior,
) -> String {
  match self {
    CaptureStartFocusBehavior::FocusCapturingApplication =>
      "focus-capturing-application"
    CaptureStartFocusBehavior::FocusCapturedSurface => "focus-captured-surface"
    CaptureStartFocusBehavior::NoFocusChange => "no-focus-change"
  }
}

///|
/// Parse from string value
pub fn CaptureStartFocusBehavior::from_string(
  s : String,
) -> CaptureStartFocusBehavior? {
  match s {
    "focus-capturing-application" =>
      Some(CaptureStartFocusBehavior::FocusCapturingApplication)
    "focus-captured-surface" =>
      Some(CaptureStartFocusBehavior::FocusCapturedSurface)
    "no-focus-change" => Some(CaptureStartFocusBehavior::NoFocusChange)
    _ => None
  }
}

///|
/// SelfCapturePreferenceEnum enum
pub(all) enum SelfCapturePreferenceEnum {
  Include
  Exclude
}

///|
/// Convert to string value
pub fn SelfCapturePreferenceEnum::to_string(
  self : SelfCapturePreferenceEnum,
) -> String {
  match self {
    SelfCapturePreferenceEnum::Include => "include"
    SelfCapturePreferenceEnum::Exclude => "exclude"
  }
}

///|
/// Parse from string value
pub fn SelfCapturePreferenceEnum::from_string(
  s : String,
) -> SelfCapturePreferenceEnum? {
  match s {
    "include" => Some(SelfCapturePreferenceEnum::Include)
    "exclude" => Some(SelfCapturePreferenceEnum::Exclude)
    _ => None
  }
}

///|
/// SystemAudioPreferenceEnum enum
pub(all) enum SystemAudioPreferenceEnum {
  Include
  Exclude
}

///|
/// Convert to string value
pub fn SystemAudioPreferenceEnum::to_string(
  self : SystemAudioPreferenceEnum,
) -> String {
  match self {
    SystemAudioPreferenceEnum::Include => "include"
    SystemAudioPreferenceEnum::Exclude => "exclude"
  }
}

///|
/// Parse from string value
pub fn SystemAudioPreferenceEnum::from_string(
  s : String,
) -> SystemAudioPreferenceEnum? {
  match s {
    "include" => Some(SystemAudioPreferenceEnum::Include)
    "exclude" => Some(SystemAudioPreferenceEnum::Exclude)
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

///|
/// Convert to string value
pub fn WindowAudioPreferenceEnum::to_string(
  self : WindowAudioPreferenceEnum,
) -> String {
  match self {
    WindowAudioPreferenceEnum::System => "system"
    WindowAudioPreferenceEnum::Window => "window"
    WindowAudioPreferenceEnum::Exclude => "exclude"
  }
}

///|
/// Parse from string value
pub fn WindowAudioPreferenceEnum::from_string(
  s : String,
) -> WindowAudioPreferenceEnum? {
  match s {
    "system" => Some(WindowAudioPreferenceEnum::System)
    "window" => Some(WindowAudioPreferenceEnum::Window)
    "exclude" => Some(WindowAudioPreferenceEnum::Exclude)
    _ => None
  }
}

///|
/// SurfaceSwitchingPreferenceEnum enum
pub(all) enum SurfaceSwitchingPreferenceEnum {
  Include
  Exclude
}

///|
/// Convert to string value
pub fn SurfaceSwitchingPreferenceEnum::to_string(
  self : SurfaceSwitchingPreferenceEnum,
) -> String {
  match self {
    SurfaceSwitchingPreferenceEnum::Include => "include"
    SurfaceSwitchingPreferenceEnum::Exclude => "exclude"
  }
}

///|
/// Parse from string value
pub fn SurfaceSwitchingPreferenceEnum::from_string(
  s : String,
) -> SurfaceSwitchingPreferenceEnum? {
  match s {
    "include" => Some(SurfaceSwitchingPreferenceEnum::Include)
    "exclude" => Some(SurfaceSwitchingPreferenceEnum::Exclude)
    _ => None
  }
}

///|
/// MonitorTypeSurfacesEnum enum
pub(all) enum MonitorTypeSurfacesEnum {
  Include
  Exclude
}

///|
/// Convert to string value
pub fn MonitorTypeSurfacesEnum::to_string(
  self : MonitorTypeSurfacesEnum,
) -> String {
  match self {
    MonitorTypeSurfacesEnum::Include => "include"
    MonitorTypeSurfacesEnum::Exclude => "exclude"
  }
}

///|
/// Parse from string value
pub fn MonitorTypeSurfacesEnum::from_string(
  s : String,
) -> MonitorTypeSurfacesEnum? {
  match s {
    "include" => Some(MonitorTypeSurfacesEnum::Include)
    "exclude" => Some(MonitorTypeSurfacesEnum::Exclude)
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

///|
/// Convert to string value
pub fn DisplayCaptureSurfaceType::to_string(
  self : DisplayCaptureSurfaceType,
) -> String {
  match self {
    DisplayCaptureSurfaceType::Monitor => "monitor"
    DisplayCaptureSurfaceType::Window => "window"
    DisplayCaptureSurfaceType::Browser => "browser"
  }
}

///|
/// Parse from string value
pub fn DisplayCaptureSurfaceType::from_string(
  s : String,
) -> DisplayCaptureSurfaceType? {
  match s {
    "monitor" => Some(DisplayCaptureSurfaceType::Monitor)
    "window" => Some(DisplayCaptureSurfaceType::Window)
    "browser" => Some(DisplayCaptureSurfaceType::Browser)
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

///|
/// Convert to string value
pub fn CursorCaptureConstraint::to_string(
  self : CursorCaptureConstraint,
) -> String {
  match self {
    CursorCaptureConstraint::Never => "never"
    CursorCaptureConstraint::Always => "always"
    CursorCaptureConstraint::Motion => "motion"
  }
}

///|
/// Parse from string value
pub fn CursorCaptureConstraint::from_string(
  s : String,
) -> CursorCaptureConstraint? {
  match s {
    "never" => Some(CursorCaptureConstraint::Never)
    "always" => Some(CursorCaptureConstraint::Always)
    "motion" => Some(CursorCaptureConstraint::Motion)
    _ => None
  }
}

///|
/// DisplayMediaStreamOptions dictionary
pub struct DisplayMediaStreamOptions {
  video : BoolOrMediaTrackConstraints?
  audio : BoolOrMediaTrackConstraints?
  controller : CaptureController?
  selfBrowserSurface : SelfCapturePreferenceEnum?
  systemAudio : SystemAudioPreferenceEnum?
  windowAudio : WindowAudioPreferenceEnum?
  surfaceSwitching : SurfaceSwitchingPreferenceEnum?
  monitorTypeSurfaces : MonitorTypeSurfacesEnum?
}

///|
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

///|
/// Convert to JsValue
pub extern "js" fn DisplayMediaStreamOptions::to_js(
  self : DisplayMediaStreamOptions,
) -> JsValue =
  #| (self) => ({
  #|   video: self.video,
  #|   audio: self.audio,
  #|   controller: self.controller,
  #|   selfBrowserSurface: ['include', 'exclude'][self.selfBrowserSurface],
  #|   systemAudio: ['include', 'exclude'][self.systemAudio],
  #|   windowAudio: ['system', 'window', 'exclude'][self.windowAudio],
  #|   surfaceSwitching: ['include', 'exclude'][self.surfaceSwitching],
  #|   monitorTypeSurfaces: ['include', 'exclude'][self.monitorTypeSurfaces]
  #| })

///|
/// CaptureController interface
pub type CaptureController

///|
pub extern "js" fn CaptureController::to_js_value(
  self : CaptureController,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CaptureController (unchecked)
pub extern "js" fn CaptureController::from_js_value(
  v : JsValue,
) -> CaptureController =
  #| (v) => v

///|
/// Safely cast JsValue to CaptureController (checked with instanceof)
pub extern "js" fn CaptureController::from_js_value_opt(
  v : JsValue,
) -> CaptureController? =
  #| (v) => (v instanceof CaptureController) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CaptureController (checked with instanceof)
pub extern "js" fn JsValue::as_capture_controller(
  self : JsValue,
) -> CaptureController? =
  #| (self) => (self instanceof CaptureController) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CaptureController (unchecked)
pub extern "js" fn JsValue::to_capture_controller(
  self : JsValue,
) -> CaptureController =
  #| (self) => self

///|
pub extern "js" fn CaptureController::to_event_target(
  self : CaptureController,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn CaptureController::new() -> CaptureController =
  #| () => new CaptureController()

///|
pub extern "js" fn CaptureController::set_focus_behavior(
  self : CaptureController,
  focus_behavior : CaptureStartFocusBehavior,
) -> Unit =
  #| (self, focus_behavior) => self.setFocusBehavior(['focus-capturing-application', 'focus-captured-surface', 'no-focus-change'][focus_behavior])

///|
pub extern "js" fn CaptureController::get_supported_zoom_levels(
  self : CaptureController,
) -> Array[Int] =
  #| (self) => self.getSupportedZoomLevels()

///|
pub extern "js" fn CaptureController::get_zoom_level(
  self : CaptureController,
) -> Int? =
  #| (self) => { const v = self.zoomLevel; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn CaptureController::increase_zoom_level(
  self : CaptureController,
) -> Promise[Unit] =
  #| (self) => self.increaseZoomLevel()

///|
pub extern "js" fn CaptureController::decrease_zoom_level(
  self : CaptureController,
) -> Promise[Unit] =
  #| (self) => self.decreaseZoomLevel()

///|
pub extern "js" fn CaptureController::reset_zoom_level(
  self : CaptureController,
) -> Promise[Unit] =
  #| (self) => self.resetZoomLevel()

///|
pub extern "js" fn CaptureController::get_onzoomlevelchange(
  self : CaptureController,
) -> EventHandler =
  #| (self) => self.onzoomlevelchange

///|
pub extern "js" fn CaptureController::set_onzoomlevelchange(
  self : CaptureController,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onzoomlevelchange = value }

///|
pub extern "js" fn CaptureController::forward_wheel(
  self : CaptureController,
  element : HTMLElement?,
) -> Promise[Unit] =
  #| (self, element) => self.forwardWheel(element)

///|
pub extern "js" fn CaptureController::get_oncapturedmousechange(
  self : CaptureController,
) -> EventHandler =
  #| (self) => self.oncapturedmousechange

///|
pub extern "js" fn CaptureController::set_oncapturedmousechange(
  self : CaptureController,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncapturedmousechange = value }
