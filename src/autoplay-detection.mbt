// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/autoplay-detection

///|
/// AutoplayPolicy enum
pub(all) enum AutoplayPolicy {
  Allowed
  AllowedMuted
  Disallowed
}

///|
/// Convert to string value
pub fn AutoplayPolicy::to_string(self : AutoplayPolicy) -> String {
  match self {
    AutoplayPolicy::Allowed => "allowed"
    AutoplayPolicy::AllowedMuted => "allowed-muted"
    AutoplayPolicy::Disallowed => "disallowed"
  }
}

///|
/// Parse from string value
pub fn AutoplayPolicy::from_string(s : String) -> AutoplayPolicy? {
  match s {
    "allowed" => Some(AutoplayPolicy::Allowed)
    "allowed-muted" => Some(AutoplayPolicy::AllowedMuted)
    "disallowed" => Some(AutoplayPolicy::Disallowed)
    _ => None
  }
}

///|
/// AutoplayPolicyMediaType enum
pub(all) enum AutoplayPolicyMediaType {
  Mediaelement
  Audiocontext
}

///|
/// Convert to string value
pub fn AutoplayPolicyMediaType::to_string(
  self : AutoplayPolicyMediaType,
) -> String {
  match self {
    AutoplayPolicyMediaType::Mediaelement => "mediaelement"
    AutoplayPolicyMediaType::Audiocontext => "audiocontext"
  }
}

///|
/// Parse from string value
pub fn AutoplayPolicyMediaType::from_string(
  s : String,
) -> AutoplayPolicyMediaType? {
  match s {
    "mediaelement" => Some(AutoplayPolicyMediaType::Mediaelement)
    "audiocontext" => Some(AutoplayPolicyMediaType::Audiocontext)
    _ => None
  }
}
