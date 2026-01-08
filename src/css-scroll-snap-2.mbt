// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-scroll-snap-2

///|
/// SnapEventInit dictionary
pub struct SnapEventInit {
  snapTargetBlock : Nullable[Node]
  snapTargetInline : Nullable[Node]
}

///|
/// Create a new SnapEventInit with default values
pub fn SnapEventInit::default() -> SnapEventInit {
  SnapEventInit::{
    snapTargetBlock: Nullable::Undefined,
    snapTargetInline: Nullable::Undefined,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn SnapEventInit::to_js(self : SnapEventInit) -> JsValue =
  #| (self) => ({
  #|   snapTargetBlock: ((() => { const v = self.snapTargetBlock; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   snapTargetInline: ((() => { const v = self.snapTargetInline; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// SnapEvent interface
pub type SnapEvent

///|
pub extern "js" fn SnapEvent::to_js_value(self : SnapEvent) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn SnapEvent::new(
  type_ : String,
  event_init_dict : SnapEventInit,
) -> SnapEvent =
  #| (type_, event_init_dict) => new SnapEvent(type_, event_init_dict)

///|
pub extern "js" fn SnapEvent::get_snap_target_block(self : SnapEvent) -> Node? =
  #| (self) => self.snapTargetBlock

///|
pub extern "js" fn SnapEvent::get_snap_target_inline(self : SnapEvent) -> Node? =
  #| (self) => self.snapTargetInline
