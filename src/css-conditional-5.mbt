// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-conditional-5

///|
/// CSSContainerRule interface
pub type CSSContainerRule

pub extern "js" fn CSSContainerRule::to_js_value(self : CSSContainerRule) -> JsValue =
  #| (self) => self

pub extern "js" fn CSSContainerRule::get_container_name(self : CSSContainerRule) -> CSSOMString =
  #| (self) => self.containerName

pub extern "js" fn CSSContainerRule::get_container_query(self : CSSContainerRule) -> CSSOMString =
  #| (self) => self.containerQuery

///|
/// CSSSupportsConditionRule interface
pub type CSSSupportsConditionRule

pub extern "js" fn CSSSupportsConditionRule::to_js_value(self : CSSSupportsConditionRule) -> JsValue =
  #| (self) => self

pub extern "js" fn CSSSupportsConditionRule::get_name(self : CSSSupportsConditionRule) -> CSSOMString =
  #| (self) => self.name

