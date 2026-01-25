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
/// Cast JsValue to SnapEvent (unchecked)
pub extern "js" fn SnapEvent::from_js_value(v : JsValue) -> SnapEvent =
  #| (v) => v

///|
/// Safely cast JsValue to SnapEvent (checked with instanceof)
pub extern "js" fn SnapEvent::from_js_value_opt(v : JsValue) -> SnapEvent? =
  #| (v) => (v instanceof SnapEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SnapEvent (checked with instanceof)
pub extern "js" fn JsValue::as_snap_event(self : JsValue) -> SnapEvent? =
  #| (self) => (self instanceof SnapEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SnapEvent (unchecked)
pub extern "js" fn JsValue::to_snap_event(self : JsValue) -> SnapEvent =
  #| (self) => self

///|
pub extern "js" fn SnapEvent::to_event(self : SnapEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn SnapEvent::new(
  type_ : String,
  event_init_dict : SnapEventInit,
) -> SnapEvent =
  #| (type_, event_init_dict) => new SnapEvent(type_, event_init_dict)

///|
pub extern "js" fn SnapEvent::get_snap_target_block(self : SnapEvent) -> Node? =
  #| (self) => { const v = self.snapTargetBlock; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn SnapEvent::get_snap_target_inline(self : SnapEvent) -> Node? =
  #| (self) => { const v = self.snapTargetInline; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }
