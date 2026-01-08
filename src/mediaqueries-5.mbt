// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/mediaqueries-5

///|
/// CustomMediaQuery typedef
pub type CustomMediaQuery

///|
pub extern "js" fn CustomMediaQuery::to_js_value(
  self : CustomMediaQuery,
) -> JsValue =
  #| (self) => self

///|
/// Create CustomMediaQuery from MediaList
pub extern "js" fn CustomMediaQuery::from_media_list(
  v : MediaList,
) -> CustomMediaQuery =
  #| (v) => v

///|
/// Create CustomMediaQuery from Bool
pub extern "js" fn CustomMediaQuery::from_bool(v : Bool) -> CustomMediaQuery =
  #| (v) => v

///|
/// CSSCustomMediaRule interface
pub type CSSCustomMediaRule

///|
pub extern "js" fn CSSCustomMediaRule::to_js_value(
  self : CSSCustomMediaRule,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSCustomMediaRule::get_name(
  self : CSSCustomMediaRule,
) -> CSSOMString =
  #| (self) => self.name

///|
pub extern "js" fn CSSCustomMediaRule::get_query(
  self : CSSCustomMediaRule,
) -> CustomMediaQuery =
  #| (self) => self.query

///|
/// PreferenceManager interface
pub type PreferenceManager

///|
pub extern "js" fn PreferenceManager::to_js_value(
  self : PreferenceManager,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn PreferenceManager::get_color_scheme(
  self : PreferenceManager,
) -> PreferenceObject =
  #| (self) => self.colorScheme

///|
pub extern "js" fn PreferenceManager::get_contrast(
  self : PreferenceManager,
) -> PreferenceObject =
  #| (self) => self.contrast

///|
pub extern "js" fn PreferenceManager::get_reduced_motion(
  self : PreferenceManager,
) -> PreferenceObject =
  #| (self) => self.reducedMotion

///|
pub extern "js" fn PreferenceManager::get_reduced_transparency(
  self : PreferenceManager,
) -> PreferenceObject =
  #| (self) => self.reducedTransparency

///|
pub extern "js" fn PreferenceManager::get_reduced_data(
  self : PreferenceManager,
) -> PreferenceObject =
  #| (self) => self.reducedData

///|
/// PreferenceObject interface
pub type PreferenceObject

///|
pub extern "js" fn PreferenceObject::to_js_value(
  self : PreferenceObject,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn PreferenceObject::get_override(
  self : PreferenceObject,
) -> String? =
  #| (self) => self.override

///|
pub extern "js" fn PreferenceObject::get_value(
  self : PreferenceObject,
) -> String =
  #| (self) => self.value

///|
pub extern "js" fn PreferenceObject::get_valid_values(
  self : PreferenceObject,
) -> JsValue =
  #| (self) => self.validValues

///|
pub extern "js" fn PreferenceObject::clear_override(
  self : PreferenceObject,
) -> Unit =
  #| (self) => self.clearOverride()

///|
pub extern "js" fn PreferenceObject::request_override(
  self : PreferenceObject,
  value : String?,
) -> Promise[Unit] =
  #| (self, value) => self.requestOverride(value)

///|
pub extern "js" fn PreferenceObject::get_onchange(
  self : PreferenceObject,
) -> EventHandler =
  #| (self) => self.onchange

///|
pub extern "js" fn PreferenceObject::set_onchange(
  self : PreferenceObject,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onchange = value }
