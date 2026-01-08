// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/input-events

///|
/// InputEventInit dictionary
pub struct InputEventInit {
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
/// Convert to JsValue
pub extern "js" fn InputEventInit::to_js(self : InputEventInit) -> JsValue =
  #| (self) => ({
  #|   dataTransfer: ((() => { const v = self.dataTransfer; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   targetRanges: self.targetRanges,
  #|   data: ((() => { const v = self.data; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   isComposing: self.isComposing,
  #|   inputType: self.inputType
  #| })
