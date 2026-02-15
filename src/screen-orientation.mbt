// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/screen-orientation

///|
/// OrientationLockType enum
pub(all) enum OrientationLockType {
  Any
  Natural
  Landscape
  Portrait
  PortraitPrimary
  PortraitSecondary
  LandscapePrimary
  LandscapeSecondary
} derive(Eq, Show)

///|
/// Convert to string value
pub fn OrientationLockType::to_string(self : OrientationLockType) -> String {
  match self {
    OrientationLockType::Any => "any"
    OrientationLockType::Natural => "natural"
    OrientationLockType::Landscape => "landscape"
    OrientationLockType::Portrait => "portrait"
    OrientationLockType::PortraitPrimary => "portrait-primary"
    OrientationLockType::PortraitSecondary => "portrait-secondary"
    OrientationLockType::LandscapePrimary => "landscape-primary"
    OrientationLockType::LandscapeSecondary => "landscape-secondary"
  }
}

///|
/// Parse from string value
pub fn OrientationLockType::from_string(s : String) -> OrientationLockType? {
  match s {
    "any" => Some(OrientationLockType::Any)
    "natural" => Some(OrientationLockType::Natural)
    "landscape" => Some(OrientationLockType::Landscape)
    "portrait" => Some(OrientationLockType::Portrait)
    "portrait-primary" => Some(OrientationLockType::PortraitPrimary)
    "portrait-secondary" => Some(OrientationLockType::PortraitSecondary)
    "landscape-primary" => Some(OrientationLockType::LandscapePrimary)
    "landscape-secondary" => Some(OrientationLockType::LandscapeSecondary)
    _ => None
  }
}

///|
/// OrientationType enum
pub(all) enum OrientationType {
  PortraitPrimary
  PortraitSecondary
  LandscapePrimary
  LandscapeSecondary
} derive(Eq, Show)

///|
/// Convert to string value
pub fn OrientationType::to_string(self : OrientationType) -> String {
  match self {
    OrientationType::PortraitPrimary => "portrait-primary"
    OrientationType::PortraitSecondary => "portrait-secondary"
    OrientationType::LandscapePrimary => "landscape-primary"
    OrientationType::LandscapeSecondary => "landscape-secondary"
  }
}

///|
/// Parse from string value
pub fn OrientationType::from_string(s : String) -> OrientationType? {
  match s {
    "portrait-primary" => Some(OrientationType::PortraitPrimary)
    "portrait-secondary" => Some(OrientationType::PortraitSecondary)
    "landscape-primary" => Some(OrientationType::LandscapePrimary)
    "landscape-secondary" => Some(OrientationType::LandscapeSecondary)
    _ => None
  }
}

///|
/// ScreenOrientation interface
pub type ScreenOrientation

///|
pub extern "js" fn ScreenOrientation::to_js_value(
  self : ScreenOrientation,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ScreenOrientation (unchecked)
pub extern "js" fn ScreenOrientation::from_js_value(
  v : JsValue,
) -> ScreenOrientation =
  #| (v) => v

///|
/// Safely cast JsValue to ScreenOrientation (checked with instanceof)
pub extern "js" fn ScreenOrientation::from_js_value_opt(
  v : JsValue,
) -> ScreenOrientation? =
  #| (v) => (v instanceof ScreenOrientation) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ScreenOrientation (checked with instanceof)
pub extern "js" fn JsValue::as_screen_orientation(
  self : JsValue,
) -> ScreenOrientation? =
  #| (self) => (self instanceof ScreenOrientation) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ScreenOrientation (unchecked)
pub extern "js" fn JsValue::to_screen_orientation(
  self : JsValue,
) -> ScreenOrientation =
  #| (self) => self

///|
pub extern "js" fn ScreenOrientation::to_event_target(
  self : ScreenOrientation,
) -> EventTarget =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum ScreenOrientationLockError {
  AbortError(JsError)
  SecurityError(JsError)
  InvalidStateError(JsError)
  NotSupportedError(JsError)
  OtherError(JsError)
}

///|
/// Error type for throwing methods
pub(all) enum ScreenOrientationUnlockError {
  SecurityError(JsError)
  InvalidStateError(JsError)
  OtherError(JsError)
}

///|
pub extern "js" fn ScreenOrientation::lock(
  self : ScreenOrientation,
  orientation : OrientationLockType,
) -> Promise[Result[Unit, ScreenOrientationLockError]] =
  #| (self, orientation) => self.lock(['any', 'natural', 'landscape', 'portrait', 'portrait-primary', 'portrait-secondary', 'landscape-primary', 'landscape-secondary'][orientation]).then(v => ({ $tag: 1, _0: undefined })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'AbortError') return { $tag: 0, _0: e }; if (n === 'SecurityError') return { $tag: 1, _0: e }; if (n === 'InvalidStateError') return { $tag: 2, _0: e }; if (n === 'NotSupportedError') return { $tag: 3, _0: e }; return { $tag: 4, _0: e }; })() }))

///|
pub extern "js" fn ScreenOrientation::unlock(
  self : ScreenOrientation,
) -> Result[Unit, ScreenOrientationUnlockError] =
  #| (self) => (() => { try { self.unlock(); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'SecurityError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }; } })()

///|
pub extern "js" fn ScreenOrientation::get_type(
  self : ScreenOrientation,
) -> OrientationType =
  #| (self) => ['portrait-primary', 'portrait-secondary', 'landscape-primary', 'landscape-secondary'].indexOf(self.type)

///|
pub extern "js" fn ScreenOrientation::get_angle(
  self : ScreenOrientation,
) -> Int =
  #| (self) => self.angle

///|
pub extern "js" fn ScreenOrientation::set_onchange(
  self : ScreenOrientation,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onchange = (e) => handler(e) }

///|
pub extern "js" fn ScreenOrientation::clear_onchange(
  self : ScreenOrientation,
) -> Unit =
  #| (self) => { self.onchange = null }
