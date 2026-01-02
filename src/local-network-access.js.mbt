// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/local-network-access

///|
/// IPAddressSpace enum
pub(all) enum IPAddressSpace {
  Public
  Local
  Loopback
}

/// Convert to string value
pub fn IPAddressSpace::to_string(self : IPAddressSpace) -> String {
  match self {
    Public => "public"
    Local => "local"
    Loopback => "loopback"
  }
}

/// Parse from string value
pub fn IPAddressSpace::from_string(s : String) -> IPAddressSpace? {
  match s {
    "public" => Some(Public)
    "local" => Some(Local)
    "loopback" => Some(Loopback)
    _ => None
  }
}

