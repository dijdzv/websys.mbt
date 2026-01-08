// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/page-lifecycle

///|
/// ClientLifecycleState enum
pub(all) enum ClientLifecycleState {
  Active
  Frozen
}

///|
/// Convert to string value
pub fn ClientLifecycleState::to_string(self : ClientLifecycleState) -> String {
  match self {
    Active => "active"
    Frozen => "frozen"
  }
}

///|
/// Parse from string value
pub fn ClientLifecycleState::from_string(s : String) -> ClientLifecycleState? {
  match s {
    "active" => Some(Active)
    "frozen" => Some(Frozen)
    _ => None
  }
}
