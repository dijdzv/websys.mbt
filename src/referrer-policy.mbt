// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/referrer-policy

///|
/// ReferrerPolicy enum
pub(all) enum ReferrerPolicy {
  Empty
  NoReferrer
  NoReferrerWhenDowngrade
  SameOrigin
  Origin
  StrictOrigin
  OriginWhenCrossOrigin
  StrictOriginWhenCrossOrigin
  UnsafeUrl
}

///|
/// Convert to string value
pub fn ReferrerPolicy::to_string(self : ReferrerPolicy) -> String {
  match self {
    ReferrerPolicy::Empty => ""
    ReferrerPolicy::NoReferrer => "no-referrer"
    ReferrerPolicy::NoReferrerWhenDowngrade => "no-referrer-when-downgrade"
    ReferrerPolicy::SameOrigin => "same-origin"
    ReferrerPolicy::Origin => "origin"
    ReferrerPolicy::StrictOrigin => "strict-origin"
    ReferrerPolicy::OriginWhenCrossOrigin => "origin-when-cross-origin"
    ReferrerPolicy::StrictOriginWhenCrossOrigin =>
      "strict-origin-when-cross-origin"
    ReferrerPolicy::UnsafeUrl => "unsafe-url"
  }
}

///|
/// Parse from string value
pub fn ReferrerPolicy::from_string(s : String) -> ReferrerPolicy? {
  match s {
    "" => Some(ReferrerPolicy::Empty)
    "no-referrer" => Some(ReferrerPolicy::NoReferrer)
    "no-referrer-when-downgrade" =>
      Some(ReferrerPolicy::NoReferrerWhenDowngrade)
    "same-origin" => Some(ReferrerPolicy::SameOrigin)
    "origin" => Some(ReferrerPolicy::Origin)
    "strict-origin" => Some(ReferrerPolicy::StrictOrigin)
    "origin-when-cross-origin" => Some(ReferrerPolicy::OriginWhenCrossOrigin)
    "strict-origin-when-cross-origin" =>
      Some(ReferrerPolicy::StrictOriginWhenCrossOrigin)
    "unsafe-url" => Some(ReferrerPolicy::UnsafeUrl)
    _ => None
  }
}
