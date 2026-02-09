// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/datacue

///|
/// DataCue interface
pub type DataCue

///|
pub extern "js" fn DataCue::to_js_value(self : DataCue) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to DataCue (unchecked)
pub extern "js" fn DataCue::from_js_value(v : JsValue) -> DataCue =
  #| (v) => v

///|
/// Safely cast JsValue to DataCue (checked with instanceof)
pub extern "js" fn DataCue::from_js_value_opt(v : JsValue) -> DataCue? =
  #| (v) => (v instanceof DataCue) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to DataCue (checked with instanceof)
pub extern "js" fn JsValue::as_data_cue(self : JsValue) -> DataCue? =
  #| (self) => (self instanceof DataCue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to DataCue (unchecked)
pub extern "js" fn JsValue::to_data_cue(self : JsValue) -> DataCue =
  #| (self) => self

///|
pub extern "js" fn DataCue::to_text_track_cue(self : DataCue) -> TextTrackCue =
  #| (self) => self

///|
pub extern "js" fn DataCue::to_event_target(self : DataCue) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn DataCue::new(
  start_time : Double,
  end_time : Double,
  value : JsValue,
) -> DataCue =
  #| (start_time, end_time, value) => new DataCue(start_time, end_time, value)

///|
pub extern "js" fn DataCue::new_with_type(
  start_time : Double,
  end_time : Double,
  value : JsValue,
  type_ : String,
) -> DataCue =
  #| (start_time, end_time, value, type_) => new DataCue(start_time, end_time, value, type_)

///|
pub extern "js" fn DataCue::get_value(self : DataCue) -> JsValue =
  #| (self) => self.value

///|
pub extern "js" fn DataCue::set_value(self : DataCue, value : JsValue) -> Unit =
  #| (self, value) => { self.value = value }

///|
pub extern "js" fn DataCue::get_type(self : DataCue) -> String =
  #| (self) => self.type
