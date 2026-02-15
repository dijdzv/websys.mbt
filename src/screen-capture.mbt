// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/screen-capture

///|
/// CaptureStartFocusBehavior enum
pub(all) enum CaptureStartFocusBehavior {
  FocusCapturingApplication
  FocusCapturedSurface
  NoFocusChange
} derive(Eq, Show)

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
} derive(Eq, Show)

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
} derive(Eq, Show)

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
} derive(Eq, Show)

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
} derive(Eq, Show)

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
} derive(Eq, Show)

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
} derive(Eq, Show)

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
} derive(Eq, Show)

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
pub(all) struct DisplayMediaStreamOptions {
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
extern "js" fn DisplayMediaStreamOptions::to_js_ffi(
  self : DisplayMediaStreamOptions,
) -> JsValue =
  #| (self) => ({
  #|   video: ((() => { const v = self.video; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   audio: ((() => { const v = self.audio; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   controller: ((() => { const v = self.controller; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   selfBrowserSurface: ((() => { const v = self.selfBrowserSurface; if (v === undefined) return undefined; return ['include', 'exclude'][v]; })()),
  #|   systemAudio: ((() => { const v = self.systemAudio; if (v === undefined) return undefined; return ['include', 'exclude'][v]; })()),
  #|   windowAudio: ((() => { const v = self.windowAudio; if (v === undefined) return undefined; return ['system', 'window', 'exclude'][v]; })()),
  #|   surfaceSwitching: ((() => { const v = self.surfaceSwitching; if (v === undefined) return undefined; return ['include', 'exclude'][v]; })()),
  #|   monitorTypeSurfaces: ((() => { const v = self.monitorTypeSurfaces; if (v === undefined) return undefined; return ['include', 'exclude'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn DisplayMediaStreamOptions::to_js(
  self : DisplayMediaStreamOptions,
) -> JsValue {
  DisplayMediaStreamOptions::to_js_ffi(self)
}

///|
extern "js" fn DisplayMediaStreamOptions::from_js_ffi(
  value : JsValue,
) -> DisplayMediaStreamOptions =
  #| (v) => ({
  #|   video: (v.video === undefined ? { $tag: 0 } : { $tag: 1, _0: v.video }),
  #|   audio: (v.audio === undefined ? { $tag: 0 } : { $tag: 1, _0: v.audio }),
  #|   controller: (v.controller === undefined ? { $tag: 0 } : { $tag: 1, _0: v.controller }),
  #|   selfBrowserSurface: (v.selfBrowserSurface === undefined ? undefined : ['include', 'exclude'].indexOf(v.selfBrowserSurface)),
  #|   systemAudio: (v.systemAudio === undefined ? undefined : ['include', 'exclude'].indexOf(v.systemAudio)),
  #|   windowAudio: (v.windowAudio === undefined ? undefined : ['system', 'window', 'exclude'].indexOf(v.windowAudio)),
  #|   surfaceSwitching: (v.surfaceSwitching === undefined ? undefined : ['include', 'exclude'].indexOf(v.surfaceSwitching)),
  #|   monitorTypeSurfaces: (v.monitorTypeSurfaces === undefined ? undefined : ['include', 'exclude'].indexOf(v.monitorTypeSurfaces))
  #| })

///|
/// Convert from JsValue
pub fn DisplayMediaStreamOptions::from_js(
  value : JsValue,
) -> DisplayMediaStreamOptions {
  DisplayMediaStreamOptions::from_js_ffi(value)
}

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
/// Error type for throwing methods
pub(all) enum CaptureControllerSetFocusBehaviorError {
  InvalidStateError(JsError)
  OtherError(JsError)
}

///|
extern "js" fn classify_capture_controller_set_focus_behavior_error(
  e : JsError,
) -> CaptureControllerSetFocusBehaviorError =
  #| (e) => {
  #|   const n = (e && e.name) || '';
  #|   if (n === 'InvalidStateError') return { $tag: 0, _0: e };
  #|   return { $tag: 1, _0: e };
  #| }

///|
/// Error type for throwing methods
pub(all) enum CaptureControllerGetSupportedZoomLevelsError {
  InvalidStateError(JsError)
  NotSupportedError(JsError)
  OtherError(JsError)
}

///|
extern "js" fn classify_capture_controller_get_supported_zoom_levels_error(
  e : JsError,
) -> CaptureControllerGetSupportedZoomLevelsError =
  #| (e) => {
  #|   const n = (e && e.name) || '';
  #|   if (n === 'InvalidStateError') return { $tag: 0, _0: e };
  #|   if (n === 'NotSupportedError') return { $tag: 1, _0: e };
  #|   return { $tag: 2, _0: e };
  #| }

///|
/// Error type for throwing methods
pub(all) enum CaptureControllerIncreaseZoomLevelError {
  NotAllowedError(JsError)
  InvalidStateError(JsError)
  OtherError(JsError)
}

///|
extern "js" fn classify_capture_controller_increase_zoom_level_error(
  e : JsError,
) -> CaptureControllerIncreaseZoomLevelError =
  #| (e) => {
  #|   const n = (e && e.name) || '';
  #|   if (n === 'NotAllowedError') return { $tag: 0, _0: e };
  #|   if (n === 'InvalidStateError') return { $tag: 1, _0: e };
  #|   return { $tag: 2, _0: e };
  #| }

///|
/// Error type for throwing methods
pub(all) enum CaptureControllerDecreaseZoomLevelError {
  NotAllowedError(JsError)
  InvalidStateError(JsError)
  OtherError(JsError)
}

///|
extern "js" fn classify_capture_controller_decrease_zoom_level_error(
  e : JsError,
) -> CaptureControllerDecreaseZoomLevelError =
  #| (e) => {
  #|   const n = (e && e.name) || '';
  #|   if (n === 'NotAllowedError') return { $tag: 0, _0: e };
  #|   if (n === 'InvalidStateError') return { $tag: 1, _0: e };
  #|   return { $tag: 2, _0: e };
  #| }

///|
/// Error type for throwing methods
pub(all) enum CaptureControllerResetZoomLevelError {
  NotAllowedError(JsError)
  InvalidStateError(JsError)
  OtherError(JsError)
}

///|
extern "js" fn classify_capture_controller_reset_zoom_level_error(
  e : JsError,
) -> CaptureControllerResetZoomLevelError =
  #| (e) => {
  #|   const n = (e && e.name) || '';
  #|   if (n === 'NotAllowedError') return { $tag: 0, _0: e };
  #|   if (n === 'InvalidStateError') return { $tag: 1, _0: e };
  #|   return { $tag: 2, _0: e };
  #| }

///|
/// Error type for throwing methods
pub(all) enum CaptureControllerForwardWheelError {
  NotAllowedError(JsError)
  InvalidStateError(JsError)
  NotSupportedError(JsError)
  OtherError(JsError)
}

///|
extern "js" fn classify_capture_controller_forward_wheel_error(
  e : JsError,
) -> CaptureControllerForwardWheelError =
  #| (e) => {
  #|   const n = (e && e.name) || '';
  #|   if (n === 'NotAllowedError') return { $tag: 0, _0: e };
  #|   if (n === 'InvalidStateError') return { $tag: 1, _0: e };
  #|   if (n === 'NotSupportedError') return { $tag: 2, _0: e };
  #|   return { $tag: 3, _0: e };
  #| }

///|
pub extern "js" fn CaptureController::new() -> CaptureController =
  #| () => new CaptureController()

///|
pub extern "js" fn CaptureController::set_focus_behavior(
  self : CaptureController,
  focus_behavior : CaptureStartFocusBehavior,
) -> Result[Unit, CaptureControllerSetFocusBehaviorError] =
  #| (self, focus_behavior) => (() => { try { self.setFocusBehavior(['focus-capturing-application', 'focus-captured-surface', 'no-focus-change'][focus_behavior]); return { $tag: 0, _0: undefined }; } catch(e) { return { $tag: 1, _0: classify_capture_controller_set_focus_behavior_error(e) }; } })()

///|
pub extern "js" fn CaptureController::get_supported_zoom_levels(
  self : CaptureController,
) -> Result[Array[Int], CaptureControllerGetSupportedZoomLevelsError] =
  #| (self) => (() => { try { return { $tag: 0, _0: self.getSupportedZoomLevels() }; } catch(e) { return { $tag: 1, _0: classify_capture_controller_get_supported_zoom_levels_error(e) }; } })()

///|
pub extern "js" fn CaptureController::get_zoom_level(
  self : CaptureController,
) -> Int? =
  #| (self) => (self.zoomLevel) ?? undefined

///|
pub extern "js" fn CaptureController::increase_zoom_level(
  self : CaptureController,
) -> Promise[Result[Unit, CaptureControllerIncreaseZoomLevelError]] =
  #| (self) => self.increaseZoomLevel().then(v => { $tag: 0, _0: undefined }).catch(e => ({ $tag: 1, _0: classify_capture_controller_increase_zoom_level_error(e) }))

///|
pub extern "js" fn CaptureController::decrease_zoom_level(
  self : CaptureController,
) -> Promise[Result[Unit, CaptureControllerDecreaseZoomLevelError]] =
  #| (self) => self.decreaseZoomLevel().then(v => { $tag: 0, _0: undefined }).catch(e => ({ $tag: 1, _0: classify_capture_controller_decrease_zoom_level_error(e) }))

///|
pub extern "js" fn CaptureController::reset_zoom_level(
  self : CaptureController,
) -> Promise[Result[Unit, CaptureControllerResetZoomLevelError]] =
  #| (self) => self.resetZoomLevel().then(v => { $tag: 0, _0: undefined }).catch(e => ({ $tag: 1, _0: classify_capture_controller_reset_zoom_level_error(e) }))

///|
pub extern "js" fn CaptureController::set_onzoomlevelchange(
  self : CaptureController,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onzoomlevelchange = (e) => handler(e) }

///|
pub extern "js" fn CaptureController::clear_onzoomlevelchange(
  self : CaptureController,
) -> Unit =
  #| (self) => { self.onzoomlevelchange = null }

///|
pub extern "js" fn CaptureController::forward_wheel(
  self : CaptureController,
  element : HTMLElement?,
) -> Promise[Result[Unit, CaptureControllerForwardWheelError]] =
  #| (self, element) => self.forwardWheel((element.$tag === 1 ? element._0 : null)).then(v => { $tag: 0, _0: undefined }).catch(e => ({ $tag: 1, _0: classify_capture_controller_forward_wheel_error(e) }))

///|
pub extern "js" fn CaptureController::set_oncapturedmousechange(
  self : CaptureController,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.oncapturedmousechange = (e) => handler(e) }

///|
pub extern "js" fn CaptureController::clear_oncapturedmousechange(
  self : CaptureController,
) -> Unit =
  #| (self) => { self.oncapturedmousechange = null }
