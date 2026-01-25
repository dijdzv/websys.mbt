// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-counter-styles

///|
/// CSSCounterStyleRule interface
pub type CSSCounterStyleRule

///|
pub extern "js" fn CSSCounterStyleRule::to_js_value(
  self : CSSCounterStyleRule,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSCounterStyleRule (unchecked)
pub extern "js" fn CSSCounterStyleRule::from_js_value(
  v : JsValue,
) -> CSSCounterStyleRule =
  #| (v) => v

///|
/// Safely cast JsValue to CSSCounterStyleRule (checked with instanceof)
pub extern "js" fn CSSCounterStyleRule::from_js_value_opt(
  v : JsValue,
) -> CSSCounterStyleRule? =
  #| (v) => (v instanceof CSSCounterStyleRule) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSCounterStyleRule (checked with instanceof)
pub extern "js" fn JsValue::as_css_counter_style_rule(
  self : JsValue,
) -> CSSCounterStyleRule? =
  #| (self) => (self instanceof CSSCounterStyleRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSCounterStyleRule (unchecked)
pub extern "js" fn JsValue::to_css_counter_style_rule(
  self : JsValue,
) -> CSSCounterStyleRule =
  #| (self) => self

///|
pub extern "js" fn CSSCounterStyleRule::to_css_rule(
  self : CSSCounterStyleRule,
) -> CSSRule =
  #| (self) => self

///|
pub extern "js" fn CSSCounterStyleRule::get_name(
  self : CSSCounterStyleRule,
) -> CSSOMString =
  #| (self) => self.name

///|
pub extern "js" fn CSSCounterStyleRule::set_name(
  self : CSSCounterStyleRule,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.name = value }

///|
pub extern "js" fn CSSCounterStyleRule::get_system(
  self : CSSCounterStyleRule,
) -> CSSOMString =
  #| (self) => self.system

///|
pub extern "js" fn CSSCounterStyleRule::set_system(
  self : CSSCounterStyleRule,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.system = value }

///|
pub extern "js" fn CSSCounterStyleRule::get_symbols(
  self : CSSCounterStyleRule,
) -> CSSOMString =
  #| (self) => self.symbols

///|
pub extern "js" fn CSSCounterStyleRule::set_symbols(
  self : CSSCounterStyleRule,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.symbols = value }

///|
pub extern "js" fn CSSCounterStyleRule::get_additive_symbols(
  self : CSSCounterStyleRule,
) -> CSSOMString =
  #| (self) => self.additiveSymbols

///|
pub extern "js" fn CSSCounterStyleRule::set_additive_symbols(
  self : CSSCounterStyleRule,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.additiveSymbols = value }

///|
pub extern "js" fn CSSCounterStyleRule::get_negative(
  self : CSSCounterStyleRule,
) -> CSSOMString =
  #| (self) => self.negative

///|
pub extern "js" fn CSSCounterStyleRule::set_negative(
  self : CSSCounterStyleRule,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.negative = value }

///|
pub extern "js" fn CSSCounterStyleRule::get_prefix(
  self : CSSCounterStyleRule,
) -> CSSOMString =
  #| (self) => self.prefix

///|
pub extern "js" fn CSSCounterStyleRule::set_prefix(
  self : CSSCounterStyleRule,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.prefix = value }

///|
pub extern "js" fn CSSCounterStyleRule::get_suffix(
  self : CSSCounterStyleRule,
) -> CSSOMString =
  #| (self) => self.suffix

///|
pub extern "js" fn CSSCounterStyleRule::set_suffix(
  self : CSSCounterStyleRule,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.suffix = value }

///|
pub extern "js" fn CSSCounterStyleRule::get_range(
  self : CSSCounterStyleRule,
) -> CSSOMString =
  #| (self) => self.range

///|
pub extern "js" fn CSSCounterStyleRule::set_range(
  self : CSSCounterStyleRule,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.range = value }

///|
pub extern "js" fn CSSCounterStyleRule::get_pad(
  self : CSSCounterStyleRule,
) -> CSSOMString =
  #| (self) => self.pad

///|
pub extern "js" fn CSSCounterStyleRule::set_pad(
  self : CSSCounterStyleRule,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.pad = value }

///|
pub extern "js" fn CSSCounterStyleRule::get_speak_as(
  self : CSSCounterStyleRule,
) -> CSSOMString =
  #| (self) => self.speakAs

///|
pub extern "js" fn CSSCounterStyleRule::set_speak_as(
  self : CSSCounterStyleRule,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.speakAs = value }

///|
pub extern "js" fn CSSCounterStyleRule::get_fallback(
  self : CSSCounterStyleRule,
) -> CSSOMString =
  #| (self) => self.fallback

///|
pub extern "js" fn CSSCounterStyleRule::set_fallback(
  self : CSSCounterStyleRule,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.fallback = value }
