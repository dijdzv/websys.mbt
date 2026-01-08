// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webxr-ar-module

///|
/// XREnvironmentBlendMode enum
pub(all) enum XREnvironmentBlendMode {
  Opaque
  AlphaBlend
  Additive
}

///|
/// Convert to string value
pub fn XREnvironmentBlendMode::to_string(
  self : XREnvironmentBlendMode,
) -> String {
  match self {
    Opaque => "opaque"
    AlphaBlend => "alpha-blend"
    Additive => "additive"
  }
}

///|
/// Parse from string value
pub fn XREnvironmentBlendMode::from_string(
  s : String,
) -> XREnvironmentBlendMode? {
  match s {
    "opaque" => Some(Opaque)
    "alpha-blend" => Some(AlphaBlend)
    "additive" => Some(Additive)
    _ => None
  }
}

///|
/// XRInteractionMode enum
pub(all) enum XRInteractionMode {
  ScreenSpace
  WorldSpace
}

///|
/// Convert to string value
pub fn XRInteractionMode::to_string(self : XRInteractionMode) -> String {
  match self {
    ScreenSpace => "screen-space"
    WorldSpace => "world-space"
  }
}

///|
/// Parse from string value
pub fn XRInteractionMode::from_string(s : String) -> XRInteractionMode? {
  match s {
    "screen-space" => Some(ScreenSpace)
    "world-space" => Some(WorldSpace)
    _ => None
  }
}
