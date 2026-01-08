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
