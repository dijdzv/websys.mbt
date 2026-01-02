// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/input-events

///|
/// InputEventInit dictionary
pub struct InputEventInit {
  dataTransfer : DataTransfer??
  targetRanges : Array[StaticRange]?
  data : String??
  isComposing : Bool?
  inputType : String?
}

/// Create a new InputEventInit with default values
pub fn InputEventInit::default() -> InputEventInit {
  InputEventInit::{
    dataTransfer: None,
    targetRanges: None,
    data: None,
    isComposing: None,
    inputType: None,
  }
}

/// Convert to JsValue
pub extern "js" fn InputEventInit::to_js(self : InputEventInit) -> JsValue =
  #| (self) => ({
  #|   dataTransfer: self.dataTransfer,
  #|   targetRanges: self.targetRanges,
  #|   data: self.data,
  #|   isComposing: self.isComposing,
  #|   inputType: self.inputType
  #| })

