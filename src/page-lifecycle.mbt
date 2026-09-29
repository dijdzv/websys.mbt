// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/page-lifecycle

///|
/// ClientLifecycleState enum
pub(all) enum ClientLifecycleState {
  Active
  Frozen
} derive(Eq, Debug)

pub extend ClientLifecycleState with Eq::{equal, not_equal}
pub extend ClientLifecycleState with @debug.Debug::{to_repr}

/// Convert to string value
pub fn ClientLifecycleState::to_string(self : ClientLifecycleState) -> String {
  match self {
    ClientLifecycleState::Active => "active"
    ClientLifecycleState::Frozen => "frozen"
  }
}

/// Parse from string value
pub fn ClientLifecycleState::from_string(s : String) -> ClientLifecycleState? {
  match s {
    "active" => Some(ClientLifecycleState::Active)
    "frozen" => Some(ClientLifecycleState::Frozen)
    _ => None
  }
}
