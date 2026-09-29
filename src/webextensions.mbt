// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webextensions

///|
/// RunAt enum
pub(all) enum RunAt {
  DocumentStart
  DocumentEnd
  DocumentIdle
} derive(Eq, Debug)

pub extend RunAt with Eq::{equal, not_equal}
pub extend RunAt with @debug.Debug::{to_repr}

/// Convert to string value
pub fn RunAt::to_string(self : RunAt) -> String {
  match self {
    RunAt::DocumentStart => "document_start"
    RunAt::DocumentEnd => "document_end"
    RunAt::DocumentIdle => "document_idle"
  }
}

/// Parse from string value
pub fn RunAt::from_string(s : String) -> RunAt? {
  match s {
    "document_start" => Some(RunAt::DocumentStart)
    "document_end" => Some(RunAt::DocumentEnd)
    "document_idle" => Some(RunAt::DocumentIdle)
    _ => None
  }
}

///|
/// ExecutionWorld enum
pub(all) enum ExecutionWorld {
  ISOLATED
  MAIN
} derive(Eq, Debug)

pub extend ExecutionWorld with Eq::{equal, not_equal}
pub extend ExecutionWorld with @debug.Debug::{to_repr}

/// Convert to string value
pub fn ExecutionWorld::to_string(self : ExecutionWorld) -> String {
  match self {
    ExecutionWorld::ISOLATED => "ISOLATED"
    ExecutionWorld::MAIN => "MAIN"
  }
}

/// Parse from string value
pub fn ExecutionWorld::from_string(s : String) -> ExecutionWorld? {
  match s {
    "ISOLATED" => Some(ExecutionWorld::ISOLATED)
    "MAIN" => Some(ExecutionWorld::MAIN)
    _ => None
  }
}
