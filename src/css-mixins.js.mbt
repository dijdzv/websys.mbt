// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-mixins

///|
/// FunctionParameter dictionary
pub struct FunctionParameter {
  name : CSSOMString
  type_ : CSSOMString
  defaultValue : CSSOMString??
}

/// Create a new FunctionParameter with default values
pub fn FunctionParameter::default() -> FunctionParameter {
  FunctionParameter::{
    name: panic(),
    type_: panic(),
    defaultValue: None,
  }
}

/// Convert to JsValue
pub extern "js" fn FunctionParameter::to_js(self : FunctionParameter) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   type: self.type_,
  #|   defaultValue: self.defaultValue
  #| })

///|
/// CSSFunctionRule interface
pub type CSSFunctionRule

pub extern "js" fn CSSFunctionRule::to_js_value(self : CSSFunctionRule) -> JsValue =
  #| (self) => self

pub extern "js" fn CSSFunctionRule::get_name(self : CSSFunctionRule) -> CSSOMString =
  #| (self) => self.name

pub extern "js" fn CSSFunctionRule::get_parameters(self : CSSFunctionRule) -> JsValue =
  #| (self) => self.getParameters()

pub extern "js" fn CSSFunctionRule::get_return_type(self : CSSFunctionRule) -> CSSOMString =
  #| (self) => self.returnType

///|
/// CSSFunctionDescriptors interface
pub type CSSFunctionDescriptors

pub extern "js" fn CSSFunctionDescriptors::to_js_value(self : CSSFunctionDescriptors) -> JsValue =
  #| (self) => self

pub extern "js" fn CSSFunctionDescriptors::get_result(self : CSSFunctionDescriptors) -> CSSOMString =
  #| (self) => self.result

pub extern "js" fn CSSFunctionDescriptors::set_result(self : CSSFunctionDescriptors, value : CSSOMString) -> Unit =
  #| (self, value) => { self.result = value }

///|
/// CSSFunctionDeclarations interface
pub type CSSFunctionDeclarations

pub extern "js" fn CSSFunctionDeclarations::to_js_value(self : CSSFunctionDeclarations) -> JsValue =
  #| (self) => self

pub extern "js" fn CSSFunctionDeclarations::get_style(self : CSSFunctionDeclarations) -> CSSFunctionDescriptors =
  #| (self) => self.style

