// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webextensions

///|
/// RunAt enum
pub(all) enum RunAt {
  DocumentStart
  DocumentEnd
  DocumentIdle
}

/// Convert to string value
pub fn RunAt::to_string(self : RunAt) -> String {
  match self {
    DocumentStart => "document_start"
    DocumentEnd => "document_end"
    DocumentIdle => "document_idle"
  }
}

/// Parse from string value
pub fn RunAt::from_string(s : String) -> RunAt? {
  match s {
    "document_start" => Some(DocumentStart)
    "document_end" => Some(DocumentEnd)
    "document_idle" => Some(DocumentIdle)
    _ => None
  }
}

///|
/// ExecutionWorld enum
pub(all) enum ExecutionWorld {
  ISOLATED
  MAIN
}

/// Convert to string value
pub fn ExecutionWorld::to_string(self : ExecutionWorld) -> String {
  match self {
    ISOLATED => "ISOLATED"
    MAIN => "MAIN"
  }
}

/// Parse from string value
pub fn ExecutionWorld::from_string(s : String) -> ExecutionWorld? {
  match s {
    "ISOLATED" => Some(ISOLATED)
    "MAIN" => Some(MAIN)
    _ => None
  }
}

