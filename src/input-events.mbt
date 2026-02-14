// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/input-events

///|
/// InputEventInit dictionary
pub(all) struct InputEventInit {
  dataTransfer : Nullable[DataTransfer]
  targetRanges : Array[StaticRange]?
  data : Nullable[String]
  isComposing : Bool?
  inputType : String?
}

///|
/// Create a new InputEventInit with default values
pub fn InputEventInit::default() -> InputEventInit {
  InputEventInit::{
    dataTransfer: Nullable::Undefined,
    targetRanges: None,
    data: Nullable::Undefined,
    isComposing: None,
    inputType: None,
  }
}

///|
extern "js" fn InputEventInit::to_js_ffi(self : InputEventInit) -> JsValue =
  #| (self) => ({
  #|   dataTransfer: ((() => { const v = self.dataTransfer; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   targetRanges: ((() => { const v = self.targetRanges; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   data: ((() => { const v = self.data; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   isComposing: (self.isComposing === -1 ? undefined : self.isComposing),
  #|   inputType: self.inputType
  #| })

///|
/// Convert to JsValue
pub fn InputEventInit::to_js(self : InputEventInit) -> JsValue {
  InputEventInit::to_js_ffi(self)
}

///|
extern "js" fn InputEventInit::from_js_ffi(value : JsValue) -> InputEventInit =
  #| (v) => ({
  #|   dataTransfer: (v.dataTransfer === undefined ? { $tag: 0 } : v.dataTransfer === null ? { $tag: 1 } : { $tag: 2, _0: v.dataTransfer }),
  #|   targetRanges: (v.targetRanges === undefined ? { $tag: 0 } : { $tag: 1, _0: v.targetRanges }),
  #|   data: (v.data === undefined ? { $tag: 0 } : v.data === null ? { $tag: 1 } : { $tag: 2, _0: v.data }),
  #|   isComposing: (v.isComposing === undefined ? -1 : v.isComposing),
  #|   inputType: v.inputType
  #| })

///|
/// Convert from JsValue
pub fn InputEventInit::from_js(value : JsValue) -> InputEventInit {
  InputEventInit::from_js_ffi(value)
}
