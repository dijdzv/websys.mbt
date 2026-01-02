// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-conditional

///|
/// CSSConditionRule interface
pub type CSSConditionRule

pub extern "js" fn CSSConditionRule::to_js_value(self : CSSConditionRule) -> JsValue =
  #| (self) => self

pub extern "js" fn CSSConditionRule::get_condition_text(self : CSSConditionRule) -> CSSOMString =
  #| (self) => self.conditionText

///|
/// CSSMediaRule interface
pub type CSSMediaRule

pub extern "js" fn CSSMediaRule::to_js_value(self : CSSMediaRule) -> JsValue =
  #| (self) => self

pub extern "js" fn CSSMediaRule::get_condition_text(self : CSSMediaRule) -> CSSOMString =
  #| (self) => self.conditionText

pub extern "js" fn CSSMediaRule::get_media(self : CSSMediaRule) -> MediaList =
  #| (self) => self.media

pub extern "js" fn CSSMediaRule::get_matches(self : CSSMediaRule) -> Bool =
  #| (self) => self.matches

///|
/// CSSSupportsRule interface
pub type CSSSupportsRule

pub extern "js" fn CSSSupportsRule::to_js_value(self : CSSSupportsRule) -> JsValue =
  #| (self) => self

pub extern "js" fn CSSSupportsRule::get_condition_text(self : CSSSupportsRule) -> CSSOMString =
  #| (self) => self.conditionText

pub extern "js" fn CSSSupportsRule::get_matches(self : CSSSupportsRule) -> Bool =
  #| (self) => self.matches

