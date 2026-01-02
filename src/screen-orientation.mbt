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
}

/// Convert to string value
pub fn OrientationLockType::to_string(self : OrientationLockType) -> String {
  match self {
    Any => "any"
    Natural => "natural"
    Landscape => "landscape"
    Portrait => "portrait"
    PortraitPrimary => "portrait-primary"
    PortraitSecondary => "portrait-secondary"
    LandscapePrimary => "landscape-primary"
    LandscapeSecondary => "landscape-secondary"
  }
}

/// Parse from string value
pub fn OrientationLockType::from_string(s : String) -> OrientationLockType? {
  match s {
    "any" => Some(Any)
    "natural" => Some(Natural)
    "landscape" => Some(Landscape)
    "portrait" => Some(Portrait)
    "portrait-primary" => Some(PortraitPrimary)
    "portrait-secondary" => Some(PortraitSecondary)
    "landscape-primary" => Some(LandscapePrimary)
    "landscape-secondary" => Some(LandscapeSecondary)
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
}

/// Convert to string value
pub fn OrientationType::to_string(self : OrientationType) -> String {
  match self {
    PortraitPrimary => "portrait-primary"
    PortraitSecondary => "portrait-secondary"
    LandscapePrimary => "landscape-primary"
    LandscapeSecondary => "landscape-secondary"
  }
}

/// Parse from string value
pub fn OrientationType::from_string(s : String) -> OrientationType? {
  match s {
    "portrait-primary" => Some(PortraitPrimary)
    "portrait-secondary" => Some(PortraitSecondary)
    "landscape-primary" => Some(LandscapePrimary)
    "landscape-secondary" => Some(LandscapeSecondary)
    _ => None
  }
}

///|
/// ScreenOrientation interface
pub type ScreenOrientation

pub extern "js" fn ScreenOrientation::to_js_value(self : ScreenOrientation) -> JsValue =
  #| (self) => self

pub extern "js" fn ScreenOrientation::lock(self : ScreenOrientation, orientation : OrientationLockType) -> Promise[Unit] =
  #| (self, orientation) => self.lock(['any', 'natural', 'landscape', 'portrait', 'portrait-primary', 'portrait-secondary', 'landscape-primary', 'landscape-secondary'][orientation])

pub extern "js" fn ScreenOrientation::unlock(self : ScreenOrientation) -> Unit =
  #| (self) => self.unlock()

pub extern "js" fn ScreenOrientation::get_type(self : ScreenOrientation) -> OrientationType =
  #| (self) => self.type

pub extern "js" fn ScreenOrientation::get_angle(self : ScreenOrientation) -> Int =
  #| (self) => self.angle

pub extern "js" fn ScreenOrientation::get_onchange(self : ScreenOrientation) -> EventHandler =
  #| (self) => self.onchange

pub extern "js" fn ScreenOrientation::set_onchange(self : ScreenOrientation, value : EventHandler) -> Unit =
  #| (self, value) => { self.onchange = value }

