// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-scroll-snap-2

///|
/// SnapEventInit dictionary
pub struct SnapEventInit {
  snapTargetBlock : Node??
  snapTargetInline : Node??
}

/// Create a new SnapEventInit with default values
pub fn SnapEventInit::default() -> SnapEventInit {
  SnapEventInit::{
    snapTargetBlock: None,
    snapTargetInline: None,
  }
}

/// Convert to JsValue
pub extern "js" fn SnapEventInit::to_js(self : SnapEventInit) -> JsValue =
  #| (self) => ({
  #|   snapTargetBlock: self.snapTargetBlock,
  #|   snapTargetInline: self.snapTargetInline
  #| })

///|
/// SnapEvent interface
pub type SnapEvent

pub extern "js" fn SnapEvent::to_js_value(self : SnapEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn SnapEvent::new(type_ : String, event_init_dict : SnapEventInit) -> SnapEvent =
  #| (type_, event_init_dict) => new SnapEvent(type_, event_init_dict)

pub extern "js" fn SnapEvent::get_snap_target_block(self : SnapEvent) -> Node? =
  #| (self) => self.snapTargetBlock

pub extern "js" fn SnapEvent::get_snap_target_inline(self : SnapEvent) -> Node? =
  #| (self) => self.snapTargetInline

