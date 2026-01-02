// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/trusted-types

///|
/// TrustedType typedef
pub type TrustedType = JsValue

/// CreateHTMLCallback callback interface
pub type CreateHTMLCallback

/// Create CreateHTMLCallback from a MoonBit function
pub extern "js" fn CreateHTMLCallback::from_fn(handler : (String, JsValue) -> String?) -> CreateHTMLCallback =
  #| (handler) => handler

/// CreateScriptCallback callback interface
pub type CreateScriptCallback

/// Create CreateScriptCallback from a MoonBit function
pub extern "js" fn CreateScriptCallback::from_fn(handler : (String, JsValue) -> String?) -> CreateScriptCallback =
  #| (handler) => handler

/// CreateScriptURLCallback callback interface
pub type CreateScriptURLCallback

/// Create CreateScriptURLCallback from a MoonBit function
pub extern "js" fn CreateScriptURLCallback::from_fn(handler : (String, JsValue) -> String?) -> CreateScriptURLCallback =
  #| (handler) => handler

///|
/// TrustedTypePolicyOptions dictionary
pub struct TrustedTypePolicyOptions {
  createHTML : CreateHTMLCallback?
  createScript : CreateScriptCallback?
  createScriptURL : CreateScriptURLCallback?
}

/// Create a new TrustedTypePolicyOptions with default values
pub fn TrustedTypePolicyOptions::default() -> TrustedTypePolicyOptions {
  TrustedTypePolicyOptions::{
    createHTML: None,
    createScript: None,
    createScriptURL: None,
  }
}

/// Convert to JsValue
pub extern "js" fn TrustedTypePolicyOptions::to_js(self : TrustedTypePolicyOptions) -> JsValue =
  #| (self) => ({
  #|   createHTML: self.createHTML,
  #|   createScript: self.createScript,
  #|   createScriptURL: self.createScriptURL
  #| })

///|
/// TrustedHTML interface
pub type TrustedHTML

pub extern "js" fn TrustedHTML::to_js_value(self : TrustedHTML) -> JsValue =
  #| (self) => self

pub extern "js" fn TrustedHTML::to_j_s_o_n(self : TrustedHTML) -> String =
  #| (self) => self.toJSON()

///|
/// TrustedScript interface
pub type TrustedScript

pub extern "js" fn TrustedScript::to_js_value(self : TrustedScript) -> JsValue =
  #| (self) => self

pub extern "js" fn TrustedScript::to_j_s_o_n(self : TrustedScript) -> String =
  #| (self) => self.toJSON()

///|
/// TrustedScriptURL interface
pub type TrustedScriptURL

pub extern "js" fn TrustedScriptURL::to_js_value(self : TrustedScriptURL) -> JsValue =
  #| (self) => self

pub extern "js" fn TrustedScriptURL::to_j_s_o_n(self : TrustedScriptURL) -> String =
  #| (self) => self.toJSON()

///|
/// TrustedTypePolicyFactory interface
pub type TrustedTypePolicyFactory

pub extern "js" fn TrustedTypePolicyFactory::to_js_value(self : TrustedTypePolicyFactory) -> JsValue =
  #| (self) => self

pub extern "js" fn TrustedTypePolicyFactory::create_policy(self : TrustedTypePolicyFactory, policy_name : String) -> TrustedTypePolicy =
  #| (self, policy_name) => self.createPolicy(policy_name)

pub extern "js" fn TrustedTypePolicyFactory::create_policy_with_policy_options(self : TrustedTypePolicyFactory, policy_name : String, policy_options : TrustedTypePolicyOptions) -> TrustedTypePolicy =
  #| (self, policy_name, policy_options) => self.createPolicy(policy_name, policy_options)

pub extern "js" fn TrustedTypePolicyFactory::is_h_t_m_l(self : TrustedTypePolicyFactory, value : JsValue) -> Bool =
  #| (self, value) => self.isHTML(value)

pub extern "js" fn TrustedTypePolicyFactory::is_script(self : TrustedTypePolicyFactory, value : JsValue) -> Bool =
  #| (self, value) => self.isScript(value)

pub extern "js" fn TrustedTypePolicyFactory::is_script_u_r_l(self : TrustedTypePolicyFactory, value : JsValue) -> Bool =
  #| (self, value) => self.isScriptURL(value)

pub extern "js" fn TrustedTypePolicyFactory::get_empty_h_t_m_l(self : TrustedTypePolicyFactory) -> TrustedHTML =
  #| (self) => self.emptyHTML

pub extern "js" fn TrustedTypePolicyFactory::get_empty_script(self : TrustedTypePolicyFactory) -> TrustedScript =
  #| (self) => self.emptyScript

pub extern "js" fn TrustedTypePolicyFactory::get_attribute_type(self : TrustedTypePolicyFactory, tag_name : String, attribute : String) -> String? =
  #| (self, tag_name, attribute) => self.getAttributeType(tag_name, attribute)

pub extern "js" fn TrustedTypePolicyFactory::get_attribute_type_with_attr_ns(self : TrustedTypePolicyFactory, tag_name : String, attribute : String, element_ns : String?, attr_ns : String?) -> String? =
  #| (self, tag_name, attribute, element_ns, attr_ns) => self.getAttributeType(tag_name, attribute, element_ns, attr_ns)

pub extern "js" fn TrustedTypePolicyFactory::get_property_type(self : TrustedTypePolicyFactory, tag_name : String, property : String) -> String? =
  #| (self, tag_name, property) => self.getPropertyType(tag_name, property)

pub extern "js" fn TrustedTypePolicyFactory::get_property_type_with_element_ns(self : TrustedTypePolicyFactory, tag_name : String, property : String, element_ns : String?) -> String? =
  #| (self, tag_name, property, element_ns) => self.getPropertyType(tag_name, property, element_ns)

pub extern "js" fn TrustedTypePolicyFactory::get_default_policy(self : TrustedTypePolicyFactory) -> TrustedTypePolicy? =
  #| (self) => self.defaultPolicy

///|
/// TrustedTypePolicy interface
pub type TrustedTypePolicy

pub extern "js" fn TrustedTypePolicy::to_js_value(self : TrustedTypePolicy) -> JsValue =
  #| (self) => self

pub extern "js" fn TrustedTypePolicy::get_name(self : TrustedTypePolicy) -> String =
  #| (self) => self.name

pub extern "js" fn TrustedTypePolicy::create_h_t_m_l(self : TrustedTypePolicy, input : String, arguments : JsValue) -> TrustedHTML =
  #| (self, input, arguments) => self.createHTML(input, arguments)

pub extern "js" fn TrustedTypePolicy::create_script(self : TrustedTypePolicy, input : String, arguments : JsValue) -> TrustedScript =
  #| (self, input, arguments) => self.createScript(input, arguments)

pub extern "js" fn TrustedTypePolicy::create_script_u_r_l(self : TrustedTypePolicy, input : String, arguments : JsValue) -> TrustedScriptURL =
  #| (self, input, arguments) => self.createScriptURL(input, arguments)

