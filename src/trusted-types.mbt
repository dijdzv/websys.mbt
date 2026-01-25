// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/trusted-types

///|
/// TrustedType typedef
pub type TrustedType

///|
pub extern "js" fn TrustedType::to_js_value(self : TrustedType) -> JsValue =
  #| (self) => self

///|
/// Create TrustedType from TrustedHTML
pub extern "js" fn TrustedType::from_trusted_h_t_m_l(
  v : TrustedHTML,
) -> TrustedType =
  #| (v) => v

///|
/// Create TrustedType from TrustedScript
pub extern "js" fn TrustedType::from_trusted_script(
  v : TrustedScript,
) -> TrustedType =
  #| (v) => v

///|
/// Create TrustedType from TrustedScriptURL
pub extern "js" fn TrustedType::from_trusted_script_u_r_l(
  v : TrustedScriptURL,
) -> TrustedType =
  #| (v) => v

///|
/// Check if this TrustedType is TrustedHTML
pub extern "js" fn TrustedType::is_trusted_h_t_m_l(self : TrustedType) -> Bool =
  #| (self) => self instanceof TrustedHTML

///|
/// Check if this TrustedType is TrustedScript
pub extern "js" fn TrustedType::is_trusted_script(self : TrustedType) -> Bool =
  #| (self) => self instanceof TrustedScript

///|
/// Check if this TrustedType is TrustedScriptURL
pub extern "js" fn TrustedType::is_trusted_script_u_r_l(
  self : TrustedType,
) -> Bool =
  #| (self) => self instanceof TrustedScriptURL

///|
/// Try to get TrustedType as TrustedHTML
pub extern "js" fn TrustedType::as_trusted_h_t_m_l(
  self : TrustedType,
) -> TrustedHTML? =
  #| (self) => (self instanceof TrustedHTML) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get TrustedType as TrustedScript
pub extern "js" fn TrustedType::as_trusted_script(
  self : TrustedType,
) -> TrustedScript? =
  #| (self) => (self instanceof TrustedScript) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get TrustedType as TrustedScriptURL
pub extern "js" fn TrustedType::as_trusted_script_u_r_l(
  self : TrustedType,
) -> TrustedScriptURL? =
  #| (self) => (self instanceof TrustedScriptURL) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// CreateHTMLCallback callback interface
pub type CreateHTMLCallback

///|
/// Create CreateHTMLCallback from a MoonBit function
pub extern "js" fn CreateHTMLCallback::from_fn(
  handler : (String, JsValue) -> String?,
) -> CreateHTMLCallback =
  #| (handler) => handler

///|
/// CreateScriptCallback callback interface
pub type CreateScriptCallback

///|
/// Create CreateScriptCallback from a MoonBit function
pub extern "js" fn CreateScriptCallback::from_fn(
  handler : (String, JsValue) -> String?,
) -> CreateScriptCallback =
  #| (handler) => handler

///|
/// CreateScriptURLCallback callback interface
pub type CreateScriptURLCallback

///|
/// Create CreateScriptURLCallback from a MoonBit function
pub extern "js" fn CreateScriptURLCallback::from_fn(
  handler : (String, JsValue) -> String?,
) -> CreateScriptURLCallback =
  #| (handler) => handler

///|
/// TrustedTypePolicyOptions dictionary
pub struct TrustedTypePolicyOptions {
  createHTML : CreateHTMLCallback?
  createScript : CreateScriptCallback?
  createScriptURL : CreateScriptURLCallback?
}

///|
/// Create a new TrustedTypePolicyOptions with default values
pub fn TrustedTypePolicyOptions::default() -> TrustedTypePolicyOptions {
  TrustedTypePolicyOptions::{
    createHTML: None,
    createScript: None,
    createScriptURL: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn TrustedTypePolicyOptions::to_js(
  self : TrustedTypePolicyOptions,
) -> JsValue =
  #| (self) => ({
  #|   createHTML: self.createHTML,
  #|   createScript: self.createScript,
  #|   createScriptURL: self.createScriptURL
  #| })

///|
/// TrustedHTML interface
pub type TrustedHTML

///|
pub extern "js" fn TrustedHTML::to_js_value(self : TrustedHTML) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to TrustedHTML (unchecked)
pub extern "js" fn TrustedHTML::from_js_value(v : JsValue) -> TrustedHTML =
  #| (v) => v

///|
/// Safely cast JsValue to TrustedHTML (checked with instanceof)
pub extern "js" fn TrustedHTML::from_js_value_opt(v : JsValue) -> TrustedHTML? =
  #| (v) => (v instanceof TrustedHTML) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to TrustedHTML (checked with instanceof)
pub extern "js" fn JsValue::as_trusted_html(self : JsValue) -> TrustedHTML? =
  #| (self) => (self instanceof TrustedHTML) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to TrustedHTML (unchecked)
pub extern "js" fn JsValue::to_trusted_html(self : JsValue) -> TrustedHTML =
  #| (self) => self

///|
pub extern "js" fn TrustedHTML::to_json(self : TrustedHTML) -> String =
  #| (self) => self.toJSON()

///|
/// TrustedScript interface
pub type TrustedScript

///|
pub extern "js" fn TrustedScript::to_js_value(self : TrustedScript) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to TrustedScript (unchecked)
pub extern "js" fn TrustedScript::from_js_value(v : JsValue) -> TrustedScript =
  #| (v) => v

///|
/// Safely cast JsValue to TrustedScript (checked with instanceof)
pub extern "js" fn TrustedScript::from_js_value_opt(
  v : JsValue,
) -> TrustedScript? =
  #| (v) => (v instanceof TrustedScript) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to TrustedScript (checked with instanceof)
pub extern "js" fn JsValue::as_trusted_script(self : JsValue) -> TrustedScript? =
  #| (self) => (self instanceof TrustedScript) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to TrustedScript (unchecked)
pub extern "js" fn JsValue::to_trusted_script(self : JsValue) -> TrustedScript =
  #| (self) => self

///|
pub extern "js" fn TrustedScript::to_json(self : TrustedScript) -> String =
  #| (self) => self.toJSON()

///|
/// TrustedScriptURL interface
pub type TrustedScriptURL

///|
pub extern "js" fn TrustedScriptURL::to_js_value(
  self : TrustedScriptURL,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to TrustedScriptURL (unchecked)
pub extern "js" fn TrustedScriptURL::from_js_value(
  v : JsValue,
) -> TrustedScriptURL =
  #| (v) => v

///|
/// Safely cast JsValue to TrustedScriptURL (checked with instanceof)
pub extern "js" fn TrustedScriptURL::from_js_value_opt(
  v : JsValue,
) -> TrustedScriptURL? =
  #| (v) => (v instanceof TrustedScriptURL) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to TrustedScriptURL (checked with instanceof)
pub extern "js" fn JsValue::as_trusted_script_url(
  self : JsValue,
) -> TrustedScriptURL? =
  #| (self) => (self instanceof TrustedScriptURL) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to TrustedScriptURL (unchecked)
pub extern "js" fn JsValue::to_trusted_script_url(
  self : JsValue,
) -> TrustedScriptURL =
  #| (self) => self

///|
pub extern "js" fn TrustedScriptURL::to_json(self : TrustedScriptURL) -> String =
  #| (self) => self.toJSON()

///|
/// TrustedTypePolicyFactory interface
pub type TrustedTypePolicyFactory

///|
pub extern "js" fn TrustedTypePolicyFactory::to_js_value(
  self : TrustedTypePolicyFactory,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to TrustedTypePolicyFactory (unchecked)
pub extern "js" fn TrustedTypePolicyFactory::from_js_value(
  v : JsValue,
) -> TrustedTypePolicyFactory =
  #| (v) => v

///|
/// Safely cast JsValue to TrustedTypePolicyFactory (checked with instanceof)
pub extern "js" fn TrustedTypePolicyFactory::from_js_value_opt(
  v : JsValue,
) -> TrustedTypePolicyFactory? =
  #| (v) => (v instanceof TrustedTypePolicyFactory) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to TrustedTypePolicyFactory (checked with instanceof)
pub extern "js" fn JsValue::as_trusted_type_policy_factory(
  self : JsValue,
) -> TrustedTypePolicyFactory? =
  #| (self) => (self instanceof TrustedTypePolicyFactory) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to TrustedTypePolicyFactory (unchecked)
pub extern "js" fn JsValue::to_trusted_type_policy_factory(
  self : JsValue,
) -> TrustedTypePolicyFactory =
  #| (self) => self

///|
pub extern "js" fn TrustedTypePolicyFactory::create_policy(
  self : TrustedTypePolicyFactory,
  policy_name : String,
) -> TrustedTypePolicy =
  #| (self, policy_name) => self.createPolicy(policy_name)

///|
pub extern "js" fn TrustedTypePolicyFactory::create_policy_with_policy_options(
  self : TrustedTypePolicyFactory,
  policy_name : String,
  policy_options : TrustedTypePolicyOptions,
) -> TrustedTypePolicy =
  #| (self, policy_name, policy_options) => self.createPolicy(policy_name, policy_options)

///|
pub extern "js" fn TrustedTypePolicyFactory::is_html(
  self : TrustedTypePolicyFactory,
  value : JsValue,
) -> Bool =
  #| (self, value) => self.isHTML(value)

///|
pub extern "js" fn TrustedTypePolicyFactory::is_script(
  self : TrustedTypePolicyFactory,
  value : JsValue,
) -> Bool =
  #| (self, value) => self.isScript(value)

///|
pub extern "js" fn TrustedTypePolicyFactory::is_script_url(
  self : TrustedTypePolicyFactory,
  value : JsValue,
) -> Bool =
  #| (self, value) => self.isScriptURL(value)

///|
pub extern "js" fn TrustedTypePolicyFactory::get_empty_html(
  self : TrustedTypePolicyFactory,
) -> TrustedHTML =
  #| (self) => self.emptyHTML

///|
pub extern "js" fn TrustedTypePolicyFactory::get_empty_script(
  self : TrustedTypePolicyFactory,
) -> TrustedScript =
  #| (self) => self.emptyScript

///|
pub extern "js" fn TrustedTypePolicyFactory::get_attribute_type(
  self : TrustedTypePolicyFactory,
  tag_name : String,
  attribute : String,
) -> String? =
  #| (self, tag_name, attribute) => { const v = self.getAttributeType(tag_name, attribute); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn TrustedTypePolicyFactory::get_attribute_type_with_attr_ns(
  self : TrustedTypePolicyFactory,
  tag_name : String,
  attribute : String,
  element_ns : String?,
  attr_ns : String?,
) -> String? =
  #| (self, tag_name, attribute, element_ns, attr_ns) => { const v = self.getAttributeType(tag_name, attribute, element_ns, attr_ns); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn TrustedTypePolicyFactory::get_property_type(
  self : TrustedTypePolicyFactory,
  tag_name : String,
  property : String,
) -> String? =
  #| (self, tag_name, property) => { const v = self.getPropertyType(tag_name, property); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn TrustedTypePolicyFactory::get_property_type_with_element_ns(
  self : TrustedTypePolicyFactory,
  tag_name : String,
  property : String,
  element_ns : String?,
) -> String? =
  #| (self, tag_name, property, element_ns) => { const v = self.getPropertyType(tag_name, property, element_ns); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn TrustedTypePolicyFactory::get_default_policy(
  self : TrustedTypePolicyFactory,
) -> TrustedTypePolicy? =
  #| (self) => { const v = self.defaultPolicy; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
/// TrustedTypePolicy interface
pub type TrustedTypePolicy

///|
pub extern "js" fn TrustedTypePolicy::to_js_value(
  self : TrustedTypePolicy,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to TrustedTypePolicy (unchecked)
pub extern "js" fn TrustedTypePolicy::from_js_value(
  v : JsValue,
) -> TrustedTypePolicy =
  #| (v) => v

///|
/// Safely cast JsValue to TrustedTypePolicy (checked with instanceof)
pub extern "js" fn TrustedTypePolicy::from_js_value_opt(
  v : JsValue,
) -> TrustedTypePolicy? =
  #| (v) => (v instanceof TrustedTypePolicy) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to TrustedTypePolicy (checked with instanceof)
pub extern "js" fn JsValue::as_trusted_type_policy(
  self : JsValue,
) -> TrustedTypePolicy? =
  #| (self) => (self instanceof TrustedTypePolicy) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to TrustedTypePolicy (unchecked)
pub extern "js" fn JsValue::to_trusted_type_policy(
  self : JsValue,
) -> TrustedTypePolicy =
  #| (self) => self

///|
pub extern "js" fn TrustedTypePolicy::get_name(
  self : TrustedTypePolicy,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn TrustedTypePolicy::create_html(
  self : TrustedTypePolicy,
  input : String,
  arguments : JsValue,
) -> TrustedHTML =
  #| (self, input, arguments) => self.createHTML(input, arguments)

///|
pub extern "js" fn TrustedTypePolicy::create_script(
  self : TrustedTypePolicy,
  input : String,
  arguments : JsValue,
) -> TrustedScript =
  #| (self, input, arguments) => self.createScript(input, arguments)

///|
pub extern "js" fn TrustedTypePolicy::create_script_url(
  self : TrustedTypePolicy,
  input : String,
  arguments : JsValue,
) -> TrustedScriptURL =
  #| (self, input, arguments) => self.createScriptURL(input, arguments)
