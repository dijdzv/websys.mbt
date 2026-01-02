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

/// Convert to string value
pub fn ReferrerPolicy::to_string(self : ReferrerPolicy) -> String {
  match self {
    Empty => ""
    NoReferrer => "no-referrer"
    NoReferrerWhenDowngrade => "no-referrer-when-downgrade"
    SameOrigin => "same-origin"
    Origin => "origin"
    StrictOrigin => "strict-origin"
    OriginWhenCrossOrigin => "origin-when-cross-origin"
    StrictOriginWhenCrossOrigin => "strict-origin-when-cross-origin"
    UnsafeUrl => "unsafe-url"
  }
}

/// Parse from string value
pub fn ReferrerPolicy::from_string(s : String) -> ReferrerPolicy? {
  match s {
    "" => Some(Empty)
    "no-referrer" => Some(NoReferrer)
    "no-referrer-when-downgrade" => Some(NoReferrerWhenDowngrade)
    "same-origin" => Some(SameOrigin)
    "origin" => Some(Origin)
    "strict-origin" => Some(StrictOrigin)
    "origin-when-cross-origin" => Some(OriginWhenCrossOrigin)
    "strict-origin-when-cross-origin" => Some(StrictOriginWhenCrossOrigin)
    "unsafe-url" => Some(UnsafeUrl)
    _ => None
  }
}

