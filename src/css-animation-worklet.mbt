// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-animation-worklet

///|
/// AnimatorInstanceConstructor callback interface
pub type AnimatorInstanceConstructor

///|
/// Create AnimatorInstanceConstructor from a MoonBit function
pub extern "js" fn AnimatorInstanceConstructor::from_fn(
  handler : (JsValue, JsValue) -> JsValue,
) -> AnimatorInstanceConstructor =
  #| (handler) => (a0, a1) => handler(a0, a1)

///|
/// AnimationWorkletGlobalScope interface
pub type AnimationWorkletGlobalScope

///|
pub extern "js" fn AnimationWorkletGlobalScope::to_js_value(
  self : AnimationWorkletGlobalScope,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AnimationWorkletGlobalScope (unchecked)
pub extern "js" fn AnimationWorkletGlobalScope::from_js_value(
  v : JsValue,
) -> AnimationWorkletGlobalScope =
  #| (v) => v

///|
/// Safely cast JsValue to AnimationWorkletGlobalScope (checked with instanceof)
pub extern "js" fn AnimationWorkletGlobalScope::from_js_value_opt(
  v : JsValue,
) -> AnimationWorkletGlobalScope? =
  #| (v) => (v instanceof AnimationWorkletGlobalScope) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AnimationWorkletGlobalScope (checked with instanceof)
pub extern "js" fn JsValue::as_animation_worklet_global_scope(
  self : JsValue,
) -> AnimationWorkletGlobalScope? =
  #| (self) => (self instanceof AnimationWorkletGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AnimationWorkletGlobalScope (unchecked)
pub extern "js" fn JsValue::to_animation_worklet_global_scope(
  self : JsValue,
) -> AnimationWorkletGlobalScope =
  #| (self) => self

///|
pub extern "js" fn AnimationWorkletGlobalScope::to_worklet_global_scope(
  self : AnimationWorkletGlobalScope,
) -> WorkletGlobalScope =
  #| (self) => self

///|
pub extern "js" fn AnimationWorkletGlobalScope::register_animator(
  self : AnimationWorkletGlobalScope,
  name : String,
  animator_ctor : AnimatorInstanceConstructor,
) -> Unit =
  #| (self, name, animator_ctor) => self.registerAnimator(name, animator_ctor)

///|
/// WorkletAnimationEffect interface
pub type WorkletAnimationEffect

///|
pub extern "js" fn WorkletAnimationEffect::to_js_value(
  self : WorkletAnimationEffect,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WorkletAnimationEffect (unchecked)
pub extern "js" fn WorkletAnimationEffect::from_js_value(
  v : JsValue,
) -> WorkletAnimationEffect =
  #| (v) => v

///|
/// Safely cast JsValue to WorkletAnimationEffect (checked with instanceof)
pub extern "js" fn WorkletAnimationEffect::from_js_value_opt(
  v : JsValue,
) -> WorkletAnimationEffect? =
  #| (v) => (v instanceof WorkletAnimationEffect) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WorkletAnimationEffect (checked with instanceof)
pub extern "js" fn JsValue::as_worklet_animation_effect(
  self : JsValue,
) -> WorkletAnimationEffect? =
  #| (self) => (self instanceof WorkletAnimationEffect) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WorkletAnimationEffect (unchecked)
pub extern "js" fn JsValue::to_worklet_animation_effect(
  self : JsValue,
) -> WorkletAnimationEffect =
  #| (self) => self

///|
pub extern "js" fn WorkletAnimationEffect::get_timing(
  self : WorkletAnimationEffect,
) -> EffectTiming =
  #| (self) => self.getTiming()

///|
pub extern "js" fn WorkletAnimationEffect::get_computed_timing(
  self : WorkletAnimationEffect,
) -> ComputedEffectTiming =
  #| (self) => self.getComputedTiming()

///|
pub extern "js" fn WorkletAnimationEffect::get_local_time(
  self : WorkletAnimationEffect,
) -> Double? =
  #| (self) => (self.localTime) ?? undefined

///|
pub extern "js" fn WorkletAnimationEffect::set_local_time(
  self : WorkletAnimationEffect,
  value : Double?,
) -> Unit =
  #| (self, value) => { self.localTime = value }

///|
/// WorkletAnimation interface
pub type WorkletAnimation

///|
pub extern "js" fn WorkletAnimation::to_js_value(
  self : WorkletAnimation,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WorkletAnimation (unchecked)
pub extern "js" fn WorkletAnimation::from_js_value(
  v : JsValue,
) -> WorkletAnimation =
  #| (v) => v

///|
/// Safely cast JsValue to WorkletAnimation (checked with instanceof)
pub extern "js" fn WorkletAnimation::from_js_value_opt(
  v : JsValue,
) -> WorkletAnimation? =
  #| (v) => (v instanceof WorkletAnimation) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WorkletAnimation (checked with instanceof)
pub extern "js" fn JsValue::as_worklet_animation(
  self : JsValue,
) -> WorkletAnimation? =
  #| (self) => (self instanceof WorkletAnimation) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WorkletAnimation (unchecked)
pub extern "js" fn JsValue::to_worklet_animation(
  self : JsValue,
) -> WorkletAnimation =
  #| (self) => self

///|
pub extern "js" fn WorkletAnimation::to_animation(
  self : WorkletAnimation,
) -> Animation =
  #| (self) => self

///|
pub extern "js" fn WorkletAnimation::to_event_target(
  self : WorkletAnimation,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn WorkletAnimation::new(
  animator_name : String,
) -> WorkletAnimation =
  #| (animator_name) => new WorkletAnimation(animator_name)

///|
pub extern "js" fn WorkletAnimation::new_with_options(
  animator_name : String,
  effects : AnimationEffectOrArrayOfAnimationEffect,
  timeline : AnimationTimeline?,
  options : JsValue,
) -> WorkletAnimation =
  #| (animator_name, effects, timeline, options) => new WorkletAnimation(animator_name, effects, (timeline.$tag === 1 ? timeline._0 : null), options)

///|
pub extern "js" fn WorkletAnimation::get_animator_name(
  self : WorkletAnimation,
) -> String =
  #| (self) => self.animatorName

///|
/// WorkletGroupEffect interface
pub type WorkletGroupEffect

///|
pub extern "js" fn WorkletGroupEffect::to_js_value(
  self : WorkletGroupEffect,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WorkletGroupEffect (unchecked)
pub extern "js" fn WorkletGroupEffect::from_js_value(
  v : JsValue,
) -> WorkletGroupEffect =
  #| (v) => v

///|
/// Safely cast JsValue to WorkletGroupEffect (checked with instanceof)
pub extern "js" fn WorkletGroupEffect::from_js_value_opt(
  v : JsValue,
) -> WorkletGroupEffect? =
  #| (v) => (v instanceof WorkletGroupEffect) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WorkletGroupEffect (checked with instanceof)
pub extern "js" fn JsValue::as_worklet_group_effect(
  self : JsValue,
) -> WorkletGroupEffect? =
  #| (self) => (self instanceof WorkletGroupEffect) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WorkletGroupEffect (unchecked)
pub extern "js" fn JsValue::to_worklet_group_effect(
  self : JsValue,
) -> WorkletGroupEffect =
  #| (self) => self

///|
pub extern "js" fn WorkletGroupEffect::get_children(
  self : WorkletGroupEffect,
) -> Array[WorkletAnimationEffect] =
  #| (self) => self.getChildren()

///|
/// CSS namespace
pub extern "js" fn css_get_animation_worklet() -> Worklet =
  #| () => CSS.animationWorklet

///|
/// CSS namespace
pub extern "js" fn css_supports(property : String, value : String) -> Bool =
  #| (property, value) => CSS.supports(property, value)

///|
/// CSS namespace
extern "js" fn css_register_property_ffi(definition : JsValue) -> Unit =
  #| (definition) => CSS.registerProperty(definition)

///|
pub fn css_register_property(definition : PropertyDefinition) -> Unit {
  css_register_property_ffi(definition.to_js())
}

///|
/// CSS namespace
pub extern "js" fn css_escape(ident : String) -> String =
  #| (ident) => CSS.escape(ident)

///|
/// CSS namespace
pub extern "js" fn css_get_highlights() -> HighlightRegistry =
  #| () => CSS.highlights

///|
/// CSS namespace
pub extern "js" fn css_get_element_sources() -> JsValue =
  #| () => CSS.elementSources

///|
/// CSS namespace
pub extern "js" fn css_parse_stylesheet(
  css : CSSStringSource,
) -> Promise[Array[CSSParserRule]] =
  #| (css) => CSS.parseStylesheet(css)

///|
extern "js" fn css_parse_stylesheet_with_options_ffi(
  css : CSSStringSource,
  options : JsValue,
) -> Promise[Array[CSSParserRule]] =
  #| (css, options) => CSS.parseStylesheet(css, options)

///|
pub fn css_parse_stylesheet_with_options(
  css : CSSStringSource,
  options : CSSParserOptions,
) -> Promise[Array[CSSParserRule]] {
  css_parse_stylesheet_with_options_ffi(css, options.to_js())
}

///|
pub extern "js" fn css_parse_rule_list(
  css : CSSStringSource,
) -> Promise[Array[CSSParserRule]] =
  #| (css) => CSS.parseRuleList(css)

///|
extern "js" fn css_parse_rule_list_with_options_ffi(
  css : CSSStringSource,
  options : JsValue,
) -> Promise[Array[CSSParserRule]] =
  #| (css, options) => CSS.parseRuleList(css, options)

///|
pub fn css_parse_rule_list_with_options(
  css : CSSStringSource,
  options : CSSParserOptions,
) -> Promise[Array[CSSParserRule]] {
  css_parse_rule_list_with_options_ffi(css, options.to_js())
}

///|
pub extern "js" fn css_parse_rule(
  css : CSSStringSource,
) -> Promise[CSSParserRule] =
  #| (css) => CSS.parseRule(css)

///|
extern "js" fn css_parse_rule_with_options_ffi(
  css : CSSStringSource,
  options : JsValue,
) -> Promise[CSSParserRule] =
  #| (css, options) => CSS.parseRule(css, options)

///|
pub fn css_parse_rule_with_options(
  css : CSSStringSource,
  options : CSSParserOptions,
) -> Promise[CSSParserRule] {
  css_parse_rule_with_options_ffi(css, options.to_js())
}

///|
pub extern "js" fn css_parse_declaration_list(
  css : CSSStringSource,
) -> Promise[Array[CSSParserRule]] =
  #| (css) => CSS.parseDeclarationList(css)

///|
extern "js" fn css_parse_declaration_list_with_options_ffi(
  css : CSSStringSource,
  options : JsValue,
) -> Promise[Array[CSSParserRule]] =
  #| (css, options) => CSS.parseDeclarationList(css, options)

///|
pub fn css_parse_declaration_list_with_options(
  css : CSSStringSource,
  options : CSSParserOptions,
) -> Promise[Array[CSSParserRule]] {
  css_parse_declaration_list_with_options_ffi(css, options.to_js())
}

///|
pub extern "js" fn css_parse_declaration(css : String) -> CSSParserDeclaration =
  #| (css) => CSS.parseDeclaration(css)

///|
extern "js" fn css_parse_declaration_with_options_ffi(
  css : String,
  options : JsValue,
) -> CSSParserDeclaration =
  #| (css, options) => CSS.parseDeclaration(css, options)

///|
pub fn css_parse_declaration_with_options(
  css : String,
  options : CSSParserOptions,
) -> CSSParserDeclaration {
  css_parse_declaration_with_options_ffi(css, options.to_js())
}

///|
pub extern "js" fn css_parse_value(css : String) -> CSSToken =
  #| (css) => CSS.parseValue(css)

///|
pub extern "js" fn css_parse_value_list(css : String) -> Array[CSSToken] =
  #| (css) => CSS.parseValueList(css)

///|
pub extern "js" fn css_parse_comma_value_list(
  css : String,
) -> Array[Array[CSSToken]] =
  #| (css) => CSS.parseCommaValueList(css)

///|
/// CSS namespace
pub extern "js" fn css_get_layout_worklet() -> Worklet =
  #| () => CSS.layoutWorklet

///|
/// CSS namespace
pub extern "js" fn css_number(value : Double) -> CSSUnitValue =
  #| (value) => CSS.number(value)

///|
pub extern "js" fn css_percent(value : Double) -> CSSUnitValue =
  #| (value) => CSS.percent(value)

///|
pub extern "js" fn css_cap(value : Double) -> CSSUnitValue =
  #| (value) => CSS.cap(value)

///|
pub extern "js" fn css_ch(value : Double) -> CSSUnitValue =
  #| (value) => CSS.ch(value)

///|
pub extern "js" fn css_em(value : Double) -> CSSUnitValue =
  #| (value) => CSS.em(value)

///|
pub extern "js" fn css_ex(value : Double) -> CSSUnitValue =
  #| (value) => CSS.ex(value)

///|
pub extern "js" fn css_ic(value : Double) -> CSSUnitValue =
  #| (value) => CSS.ic(value)

///|
pub extern "js" fn css_lh(value : Double) -> CSSUnitValue =
  #| (value) => CSS.lh(value)

///|
pub extern "js" fn css_rcap(value : Double) -> CSSUnitValue =
  #| (value) => CSS.rcap(value)

///|
pub extern "js" fn css_rch(value : Double) -> CSSUnitValue =
  #| (value) => CSS.rch(value)

///|
pub extern "js" fn css_rem(value : Double) -> CSSUnitValue =
  #| (value) => CSS.rem(value)

///|
pub extern "js" fn css_rex(value : Double) -> CSSUnitValue =
  #| (value) => CSS.rex(value)

///|
pub extern "js" fn css_ric(value : Double) -> CSSUnitValue =
  #| (value) => CSS.ric(value)

///|
pub extern "js" fn css_rlh(value : Double) -> CSSUnitValue =
  #| (value) => CSS.rlh(value)

///|
pub extern "js" fn css_vw(value : Double) -> CSSUnitValue =
  #| (value) => CSS.vw(value)

///|
pub extern "js" fn css_vh(value : Double) -> CSSUnitValue =
  #| (value) => CSS.vh(value)

///|
pub extern "js" fn css_vi(value : Double) -> CSSUnitValue =
  #| (value) => CSS.vi(value)

///|
pub extern "js" fn css_vb(value : Double) -> CSSUnitValue =
  #| (value) => CSS.vb(value)

///|
pub extern "js" fn css_vmin(value : Double) -> CSSUnitValue =
  #| (value) => CSS.vmin(value)

///|
pub extern "js" fn css_vmax(value : Double) -> CSSUnitValue =
  #| (value) => CSS.vmax(value)

///|
pub extern "js" fn css_svw(value : Double) -> CSSUnitValue =
  #| (value) => CSS.svw(value)

///|
pub extern "js" fn css_svh(value : Double) -> CSSUnitValue =
  #| (value) => CSS.svh(value)

///|
pub extern "js" fn css_svi(value : Double) -> CSSUnitValue =
  #| (value) => CSS.svi(value)

///|
pub extern "js" fn css_svb(value : Double) -> CSSUnitValue =
  #| (value) => CSS.svb(value)

///|
pub extern "js" fn css_svmin(value : Double) -> CSSUnitValue =
  #| (value) => CSS.svmin(value)

///|
pub extern "js" fn css_svmax(value : Double) -> CSSUnitValue =
  #| (value) => CSS.svmax(value)

///|
pub extern "js" fn css_lvw(value : Double) -> CSSUnitValue =
  #| (value) => CSS.lvw(value)

///|
pub extern "js" fn css_lvh(value : Double) -> CSSUnitValue =
  #| (value) => CSS.lvh(value)

///|
pub extern "js" fn css_lvi(value : Double) -> CSSUnitValue =
  #| (value) => CSS.lvi(value)

///|
pub extern "js" fn css_lvb(value : Double) -> CSSUnitValue =
  #| (value) => CSS.lvb(value)

///|
pub extern "js" fn css_lvmin(value : Double) -> CSSUnitValue =
  #| (value) => CSS.lvmin(value)

///|
pub extern "js" fn css_lvmax(value : Double) -> CSSUnitValue =
  #| (value) => CSS.lvmax(value)

///|
pub extern "js" fn css_dvw(value : Double) -> CSSUnitValue =
  #| (value) => CSS.dvw(value)

///|
pub extern "js" fn css_dvh(value : Double) -> CSSUnitValue =
  #| (value) => CSS.dvh(value)

///|
pub extern "js" fn css_dvi(value : Double) -> CSSUnitValue =
  #| (value) => CSS.dvi(value)

///|
pub extern "js" fn css_dvb(value : Double) -> CSSUnitValue =
  #| (value) => CSS.dvb(value)

///|
pub extern "js" fn css_dvmin(value : Double) -> CSSUnitValue =
  #| (value) => CSS.dvmin(value)

///|
pub extern "js" fn css_dvmax(value : Double) -> CSSUnitValue =
  #| (value) => CSS.dvmax(value)

///|
pub extern "js" fn css_cqw(value : Double) -> CSSUnitValue =
  #| (value) => CSS.cqw(value)

///|
pub extern "js" fn css_cqh(value : Double) -> CSSUnitValue =
  #| (value) => CSS.cqh(value)

///|
pub extern "js" fn css_cqi(value : Double) -> CSSUnitValue =
  #| (value) => CSS.cqi(value)

///|
pub extern "js" fn css_cqb(value : Double) -> CSSUnitValue =
  #| (value) => CSS.cqb(value)

///|
pub extern "js" fn css_cqmin(value : Double) -> CSSUnitValue =
  #| (value) => CSS.cqmin(value)

///|
pub extern "js" fn css_cqmax(value : Double) -> CSSUnitValue =
  #| (value) => CSS.cqmax(value)

///|
pub extern "js" fn css_cm(value : Double) -> CSSUnitValue =
  #| (value) => CSS.cm(value)

///|
pub extern "js" fn css_mm(value : Double) -> CSSUnitValue =
  #| (value) => CSS.mm(value)

///|
pub extern "js" fn css_q(value : Double) -> CSSUnitValue =
  #| (value) => CSS.Q(value)

///|
pub extern "js" fn css_in_(value : Double) -> CSSUnitValue =
  #| (value) => CSS.in(value)

///|
pub extern "js" fn css_pt(value : Double) -> CSSUnitValue =
  #| (value) => CSS.pt(value)

///|
pub extern "js" fn css_pc(value : Double) -> CSSUnitValue =
  #| (value) => CSS.pc(value)

///|
pub extern "js" fn css_px(value : Double) -> CSSUnitValue =
  #| (value) => CSS.px(value)

///|
pub extern "js" fn css_deg(value : Double) -> CSSUnitValue =
  #| (value) => CSS.deg(value)

///|
pub extern "js" fn css_grad(value : Double) -> CSSUnitValue =
  #| (value) => CSS.grad(value)

///|
pub extern "js" fn css_rad(value : Double) -> CSSUnitValue =
  #| (value) => CSS.rad(value)

///|
pub extern "js" fn css_turn(value : Double) -> CSSUnitValue =
  #| (value) => CSS.turn(value)

///|
pub extern "js" fn css_s(value : Double) -> CSSUnitValue =
  #| (value) => CSS.s(value)

///|
pub extern "js" fn css_ms(value : Double) -> CSSUnitValue =
  #| (value) => CSS.ms(value)

///|
pub extern "js" fn css_hz(value : Double) -> CSSUnitValue =
  #| (value) => CSS.Hz(value)

///|
pub extern "js" fn css_k_hz(value : Double) -> CSSUnitValue =
  #| (value) => CSS.kHz(value)

///|
pub extern "js" fn css_dpi(value : Double) -> CSSUnitValue =
  #| (value) => CSS.dpi(value)

///|
pub extern "js" fn css_dpcm(value : Double) -> CSSUnitValue =
  #| (value) => CSS.dpcm(value)

///|
pub extern "js" fn css_dppx(value : Double) -> CSSUnitValue =
  #| (value) => CSS.dppx(value)

///|
pub extern "js" fn css_fr(value : Double) -> CSSUnitValue =
  #| (value) => CSS.fr(value)

///|
/// CSS namespace
pub extern "js" fn css_get_paint_worklet() -> Worklet =
  #| () => CSS.paintWorklet
