// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/datacue

///|
/// DataCue interface
pub type DataCue

pub extern "js" fn DataCue::to_js_value(self : DataCue) -> JsValue =
  #| (self) => self

pub extern "js" fn DataCue::new(start_time : Double, end_time : Double, value : JsValue, type_ : String) -> DataCue =
  #| (start_time, end_time, value, type_) => new DataCue(start_time, end_time, value, type_)

pub extern "js" fn DataCue::get_value(self : DataCue) -> JsValue =
  #| (self) => self.value

pub extern "js" fn DataCue::set_value(self : DataCue, value : JsValue) -> Unit =
  #| (self, value) => { self.value = value }

pub extern "js" fn DataCue::get_type(self : DataCue) -> String =
  #| (self) => self.type

