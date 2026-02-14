// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webxr-ar-module

///|
/// XREnvironmentBlendMode enum
pub(all) enum XREnvironmentBlendMode {
  Opaque
  AlphaBlend
  Additive
} derive(Eq, Show)

///|
/// Convert to string value
pub fn XREnvironmentBlendMode::to_string(
  self : XREnvironmentBlendMode,
) -> String {
  match self {
    XREnvironmentBlendMode::Opaque => "opaque"
    XREnvironmentBlendMode::AlphaBlend => "alpha-blend"
    XREnvironmentBlendMode::Additive => "additive"
  }
}

///|
/// Parse from string value
pub fn XREnvironmentBlendMode::from_string(
  s : String,
) -> XREnvironmentBlendMode? {
  match s {
    "opaque" => Some(XREnvironmentBlendMode::Opaque)
    "alpha-blend" => Some(XREnvironmentBlendMode::AlphaBlend)
    "additive" => Some(XREnvironmentBlendMode::Additive)
    _ => None
  }
}

///|
/// XRInteractionMode enum
pub(all) enum XRInteractionMode {
  ScreenSpace
  WorldSpace
} derive(Eq, Show)

///|
/// Convert to string value
pub fn XRInteractionMode::to_string(self : XRInteractionMode) -> String {
  match self {
    XRInteractionMode::ScreenSpace => "screen-space"
    XRInteractionMode::WorldSpace => "world-space"
  }
}

///|
/// Parse from string value
pub fn XRInteractionMode::from_string(s : String) -> XRInteractionMode? {
  match s {
    "screen-space" => Some(XRInteractionMode::ScreenSpace)
    "world-space" => Some(XRInteractionMode::WorldSpace)
    _ => None
  }
}
