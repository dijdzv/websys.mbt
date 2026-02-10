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
/// Check if this CustomMediaQuery is MediaList
pub extern "js" fn CustomMediaQuery::is_media_list(
  self : CustomMediaQuery,
) -> Bool =
  #| (self) => self instanceof MediaList

///|
/// Check if this CustomMediaQuery is Bool
pub extern "js" fn CustomMediaQuery::is_bool(self : CustomMediaQuery) -> Bool =
  #| (self) => typeof self === 'boolean'

///|
/// Try to get CustomMediaQuery as MediaList
pub extern "js" fn CustomMediaQuery::as_media_list(
  self : CustomMediaQuery,
) -> MediaList? =
  #| (self) => (self instanceof MediaList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get CustomMediaQuery as Bool
pub extern "js" fn CustomMediaQuery::as_bool(self : CustomMediaQuery) -> Bool? =
  #| (self) => (typeof self === 'boolean') ? self : undefined

///|
/// Flatten Option[CustomMediaQuery] to MediaList?
pub fn CustomMediaQuery::bind_as_media_list(
  value : CustomMediaQuery?,
) -> MediaList? {
  match value {
    Some(v) => v.as_media_list()
    None => None
  }
}

///|
/// Flatten Option[CustomMediaQuery] to Bool?
pub fn CustomMediaQuery::bind_as_bool(value : CustomMediaQuery?) -> Bool? {
  match value {
    Some(v) => v.as_bool()
    None => None
  }
}

///|
/// CSSCustomMediaRule interface
pub type CSSCustomMediaRule

///|
pub extern "js" fn CSSCustomMediaRule::to_js_value(
  self : CSSCustomMediaRule,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSCustomMediaRule (unchecked)
pub extern "js" fn CSSCustomMediaRule::from_js_value(
  v : JsValue,
) -> CSSCustomMediaRule =
  #| (v) => v

///|
/// Safely cast JsValue to CSSCustomMediaRule (checked with instanceof)
pub extern "js" fn CSSCustomMediaRule::from_js_value_opt(
  v : JsValue,
) -> CSSCustomMediaRule? =
  #| (v) => (v instanceof CSSCustomMediaRule) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSCustomMediaRule (checked with instanceof)
pub extern "js" fn JsValue::as_css_custom_media_rule(
  self : JsValue,
) -> CSSCustomMediaRule? =
  #| (self) => (self instanceof CSSCustomMediaRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSCustomMediaRule (unchecked)
pub extern "js" fn JsValue::to_css_custom_media_rule(
  self : JsValue,
) -> CSSCustomMediaRule =
  #| (self) => self

///|
pub extern "js" fn CSSCustomMediaRule::to_css_rule(
  self : CSSCustomMediaRule,
) -> CSSRule =
  #| (self) => self

///|
pub extern "js" fn CSSCustomMediaRule::get_name(
  self : CSSCustomMediaRule,
) -> String =
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
/// Cast JsValue to PreferenceManager (unchecked)
pub extern "js" fn PreferenceManager::from_js_value(
  v : JsValue,
) -> PreferenceManager =
  #| (v) => v

///|
/// Safely cast JsValue to PreferenceManager (checked with instanceof)
pub extern "js" fn PreferenceManager::from_js_value_opt(
  v : JsValue,
) -> PreferenceManager? =
  #| (v) => (v instanceof PreferenceManager) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PreferenceManager (checked with instanceof)
pub extern "js" fn JsValue::as_preference_manager(
  self : JsValue,
) -> PreferenceManager? =
  #| (self) => (self instanceof PreferenceManager) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PreferenceManager (unchecked)
pub extern "js" fn JsValue::to_preference_manager(
  self : JsValue,
) -> PreferenceManager =
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
/// Cast JsValue to PreferenceObject (unchecked)
pub extern "js" fn PreferenceObject::from_js_value(
  v : JsValue,
) -> PreferenceObject =
  #| (v) => v

///|
/// Safely cast JsValue to PreferenceObject (checked with instanceof)
pub extern "js" fn PreferenceObject::from_js_value_opt(
  v : JsValue,
) -> PreferenceObject? =
  #| (v) => (v instanceof PreferenceObject) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PreferenceObject (checked with instanceof)
pub extern "js" fn JsValue::as_preference_object(
  self : JsValue,
) -> PreferenceObject? =
  #| (self) => (self instanceof PreferenceObject) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PreferenceObject (unchecked)
pub extern "js" fn JsValue::to_preference_object(
  self : JsValue,
) -> PreferenceObject =
  #| (self) => self

///|
pub extern "js" fn PreferenceObject::to_event_target(
  self : PreferenceObject,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn PreferenceObject::get_override(
  self : PreferenceObject,
) -> String? =
  #| (self) => (self.override) ?? undefined

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
