// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/autofill-event

///|
/// AutofillValueEntry typedef
pub type AutofillValueEntry = FixedArray[JsValue]

///|
/// RefillCallback callback interface
pub type RefillCallback

///|
/// AutofillEventInit dictionary
pub(all) struct AutofillEventInit {
  autofillValues : FixedArray[AutofillValueEntry]?
  allowRefill : Bool?
}

///|
/// Create a new AutofillEventInit with default values
pub fn AutofillEventInit::default() -> AutofillEventInit {
  AutofillEventInit::{ autofillValues: None, allowRefill: None, }
}

///|
extern "js" fn AutofillEventInit::to_js_ffi(
  self : AutofillEventInit,
) -> JsValue =
  #| (self) => ({
  #|   autofillValues: self.autofillValues,
  #|   allowRefill: (self.allowRefill === -1 ? undefined : self.allowRefill)
  #| })

///|
/// Convert to JsValue
pub fn AutofillEventInit::to_js(self : AutofillEventInit) -> JsValue {
  AutofillEventInit::to_js_ffi(self)
}

///|
extern "js" fn AutofillEventInit::from_js_ffi(
  value : JsValue,
) -> AutofillEventInit =
  #| (v) => ({
  #|   autofillValues: v.autofillValues,
  #|   allowRefill: (v.allowRefill === undefined ? -1 : v.allowRefill)
  #| })

///|
/// Convert from JsValue
pub fn AutofillEventInit::from_js(value : JsValue) -> AutofillEventInit {
  AutofillEventInit::from_js_ffi(value)
}

///|
/// AutofillEvent interface
pub type AutofillEvent

///|
pub extern "js" fn AutofillEvent::to_js_value(self : AutofillEvent) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AutofillEvent (unchecked)
pub extern "js" fn AutofillEvent::from_js_value(v : JsValue) -> AutofillEvent =
  #| (v) => v

///|
/// Safely cast JsValue to AutofillEvent (checked with instanceof)
pub extern "js" fn AutofillEvent::from_js_value_opt(
  v : JsValue,
) -> AutofillEvent? =
  #| (v) => (v instanceof AutofillEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AutofillEvent (checked with instanceof)
pub extern "js" fn JsValue::as_autofill_event(self : JsValue) -> AutofillEvent? =
  #| (self) => (self instanceof AutofillEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AutofillEvent (unchecked)
pub extern "js" fn JsValue::to_autofill_event(self : JsValue) -> AutofillEvent =
  #| (self) => self

///|
pub extern "js" fn AutofillEvent::to_event(self : AutofillEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn AutofillEvent::new(type_ : String) -> AutofillEvent =
  #| (type_) => new AutofillEvent(type_)

///|
extern "js" fn AutofillEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> AutofillEvent =
  #| (type_, event_init_dict) => new AutofillEvent(type_, event_init_dict)

///|
pub fn AutofillEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : AutofillEventInit,
) -> AutofillEvent {
  AutofillEvent::new_with_event_init_dict_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn AutofillEvent::get_autofill_values(
  self : AutofillEvent,
) -> FixedArray[AutofillValueEntry] =
  #| (self) => self.autofillValues

///|
pub extern "js" fn AutofillEvent::get_refill(
  self : AutofillEvent,
) -> RefillCallback? =
  #| (self) => (() => { const v = self.refill; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()
