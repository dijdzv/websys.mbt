// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/local-network-access

///|
/// IPAddressSpace enum
pub(all) enum IPAddressSpace {
  Public
  Local
  Loopback
} derive(Eq, Show)

///|
/// Convert to string value
pub fn IPAddressSpace::to_string(self : IPAddressSpace) -> String {
  match self {
    IPAddressSpace::Public => "public"
    IPAddressSpace::Local => "local"
    IPAddressSpace::Loopback => "loopback"
  }
}

///|
/// Parse from string value
pub fn IPAddressSpace::from_string(s : String) -> IPAddressSpace? {
  match s {
    "public" => Some(IPAddressSpace::Public)
    "local" => Some(IPAddressSpace::Local)
    "loopback" => Some(IPAddressSpace::Loopback)
    _ => None
  }
}
