// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-mixins

///|
/// FunctionParameter dictionary
pub(all) struct FunctionParameter {
  name : String
  type_ : String
  defaultValue : Nullable[String]
}

///|
/// Create a new FunctionParameter with default values
pub fn FunctionParameter::default() -> FunctionParameter {
  FunctionParameter::{ name: "", type_: "", defaultValue: Nullable::Undefined }
}

///|
extern "js" fn FunctionParameter::to_js_ffi(
  self : FunctionParameter,
) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   type: self.type_,
  #|   defaultValue: ((() => { const v = self.defaultValue; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn FunctionParameter::to_js(self : FunctionParameter) -> JsValue {
  FunctionParameter::to_js_ffi(self)
}

///|
extern "js" fn FunctionParameter::from_js_ffi(
  value : JsValue,
) -> FunctionParameter =
  #| (v) => ({
  #|   name: v.name,
  #|   type_: v.type,
  #|   defaultValue: (v.defaultValue === undefined ? { $tag: 0 } : v.defaultValue === null ? { $tag: 1 } : { $tag: 2, _0: v.defaultValue })
  #| })

///|
/// Convert from JsValue
pub fn FunctionParameter::from_js(value : JsValue) -> FunctionParameter {
  FunctionParameter::from_js_ffi(value)
}

///|
/// CSSFunctionRule interface
pub type CSSFunctionRule

///|
pub extern "js" fn CSSFunctionRule::to_js_value(
  self : CSSFunctionRule,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSFunctionRule (unchecked)
pub extern "js" fn CSSFunctionRule::from_js_value(
  v : JsValue,
) -> CSSFunctionRule =
  #| (v) => v

///|
/// Safely cast JsValue to CSSFunctionRule (checked with instanceof)
pub extern "js" fn CSSFunctionRule::from_js_value_opt(
  v : JsValue,
) -> CSSFunctionRule? =
  #| (v) => (v instanceof CSSFunctionRule) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSFunctionRule (checked with instanceof)
pub extern "js" fn JsValue::as_css_function_rule(
  self : JsValue,
) -> CSSFunctionRule? =
  #| (self) => (self instanceof CSSFunctionRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSFunctionRule (unchecked)
pub extern "js" fn JsValue::to_css_function_rule(
  self : JsValue,
) -> CSSFunctionRule =
  #| (self) => self

///|
pub extern "js" fn CSSFunctionRule::to_css_grouping_rule(
  self : CSSFunctionRule,
) -> CSSGroupingRule =
  #| (self) => self

///|
pub extern "js" fn CSSFunctionRule::to_css_rule(
  self : CSSFunctionRule,
) -> CSSRule =
  #| (self) => self

///|
pub extern "js" fn CSSFunctionRule::get_name(self : CSSFunctionRule) -> String =
  #| (self) => self.name

///|
pub extern "js" fn CSSFunctionRule::get_parameters(
  self : CSSFunctionRule,
) -> Array[FunctionParameter] =
  #| (self) => self.getParameters()

///|
pub extern "js" fn CSSFunctionRule::get_return_type(
  self : CSSFunctionRule,
) -> String =
  #| (self) => self.returnType

///|
/// CSSFunctionDescriptors interface
pub type CSSFunctionDescriptors

///|
pub extern "js" fn CSSFunctionDescriptors::to_js_value(
  self : CSSFunctionDescriptors,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSFunctionDescriptors (unchecked)
pub extern "js" fn CSSFunctionDescriptors::from_js_value(
  v : JsValue,
) -> CSSFunctionDescriptors =
  #| (v) => v

///|
/// Safely cast JsValue to CSSFunctionDescriptors (checked with instanceof)
pub extern "js" fn CSSFunctionDescriptors::from_js_value_opt(
  v : JsValue,
) -> CSSFunctionDescriptors? =
  #| (v) => (v instanceof CSSFunctionDescriptors) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSFunctionDescriptors (checked with instanceof)
pub extern "js" fn JsValue::as_css_function_descriptors(
  self : JsValue,
) -> CSSFunctionDescriptors? =
  #| (self) => (self instanceof CSSFunctionDescriptors) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSFunctionDescriptors (unchecked)
pub extern "js" fn JsValue::to_css_function_descriptors(
  self : JsValue,
) -> CSSFunctionDescriptors =
  #| (self) => self

///|
pub extern "js" fn CSSFunctionDescriptors::to_css_style_declaration(
  self : CSSFunctionDescriptors,
) -> CSSStyleDeclaration =
  #| (self) => self

///|
pub extern "js" fn CSSFunctionDescriptors::get_result(
  self : CSSFunctionDescriptors,
) -> String =
  #| (self) => self.result

///|
pub extern "js" fn CSSFunctionDescriptors::set_result(
  self : CSSFunctionDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.result = value }

///|
/// CSSFunctionDeclarations interface
pub type CSSFunctionDeclarations

///|
pub extern "js" fn CSSFunctionDeclarations::to_js_value(
  self : CSSFunctionDeclarations,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSFunctionDeclarations (unchecked)
pub extern "js" fn CSSFunctionDeclarations::from_js_value(
  v : JsValue,
) -> CSSFunctionDeclarations =
  #| (v) => v

///|
/// Safely cast JsValue to CSSFunctionDeclarations (checked with instanceof)
pub extern "js" fn CSSFunctionDeclarations::from_js_value_opt(
  v : JsValue,
) -> CSSFunctionDeclarations? =
  #| (v) => (v instanceof CSSFunctionDeclarations) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSFunctionDeclarations (checked with instanceof)
pub extern "js" fn JsValue::as_css_function_declarations(
  self : JsValue,
) -> CSSFunctionDeclarations? =
  #| (self) => (self instanceof CSSFunctionDeclarations) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSFunctionDeclarations (unchecked)
pub extern "js" fn JsValue::to_css_function_declarations(
  self : JsValue,
) -> CSSFunctionDeclarations =
  #| (self) => self

///|
pub extern "js" fn CSSFunctionDeclarations::to_css_rule(
  self : CSSFunctionDeclarations,
) -> CSSRule =
  #| (self) => self

///|
pub extern "js" fn CSSFunctionDeclarations::get_style(
  self : CSSFunctionDeclarations,
) -> CSSFunctionDescriptors =
  #| (self) => self.style
