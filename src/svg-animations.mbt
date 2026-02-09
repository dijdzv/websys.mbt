// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/svg-animations

///|
/// TimeEvent interface
pub type TimeEvent

///|
pub extern "js" fn TimeEvent::to_js_value(self : TimeEvent) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to TimeEvent (unchecked)
pub extern "js" fn TimeEvent::from_js_value(v : JsValue) -> TimeEvent =
  #| (v) => v

///|
/// Safely cast JsValue to TimeEvent (checked with instanceof)
pub extern "js" fn TimeEvent::from_js_value_opt(v : JsValue) -> TimeEvent? =
  #| (v) => (v instanceof TimeEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to TimeEvent (checked with instanceof)
pub extern "js" fn JsValue::as_time_event(self : JsValue) -> TimeEvent? =
  #| (self) => (self instanceof TimeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to TimeEvent (unchecked)
pub extern "js" fn JsValue::to_time_event(self : JsValue) -> TimeEvent =
  #| (self) => self

///|
pub extern "js" fn TimeEvent::to_event(self : TimeEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn TimeEvent::get_view(self : TimeEvent) -> WindowProxy? =
  #| (self) => (() => { const v = self.view; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn TimeEvent::get_detail(self : TimeEvent) -> Int =
  #| (self) => self.detail

///|
pub extern "js" fn TimeEvent::init_time_event(
  self : TimeEvent,
  type_arg : String,
) -> Unit =
  #| (self, type_arg) => self.initTimeEvent(type_arg)

///|
pub extern "js" fn TimeEvent::init_time_event_with_detail_arg(
  self : TimeEvent,
  type_arg : String,
  view_arg : Window?,
  detail_arg : Int,
) -> Unit =
  #| (self, type_arg, view_arg, detail_arg) => self.initTimeEvent(type_arg, (view_arg.$tag === 1 ? view_arg._0 : null), detail_arg)

///|
/// SVGAnimationElement interface
pub type SVGAnimationElement

///|
pub extern "js" fn SVGAnimationElement::to_js_value(
  self : SVGAnimationElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGAnimationElement (unchecked)
pub extern "js" fn SVGAnimationElement::from_js_value(
  v : JsValue,
) -> SVGAnimationElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGAnimationElement (checked with instanceof)
pub extern "js" fn SVGAnimationElement::from_js_value_opt(
  v : JsValue,
) -> SVGAnimationElement? =
  #| (v) => (v instanceof SVGAnimationElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGAnimationElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_animation_element(
  self : JsValue,
) -> SVGAnimationElement? =
  #| (self) => (self instanceof SVGAnimationElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGAnimationElement (unchecked)
pub extern "js" fn JsValue::to_svg_animation_element(
  self : JsValue,
) -> SVGAnimationElement =
  #| (self) => self

///|
pub extern "js" fn SVGAnimationElement::to_svg_element(
  self : SVGAnimationElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGAnimationElement::to_element(
  self : SVGAnimationElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGAnimationElement::to_node(
  self : SVGAnimationElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGAnimationElement::to_event_target(
  self : SVGAnimationElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGAnimationElement::as_svg_animate_element(
  self : SVGAnimationElement,
) -> SVGAnimateElement? =
  #| (self) => (self instanceof SVGAnimateElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGAnimationElement::as_svg_set_element(
  self : SVGAnimationElement,
) -> SVGSetElement? =
  #| (self) => (self instanceof SVGSetElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGAnimationElement::as_svg_animate_motion_element(
  self : SVGAnimationElement,
) -> SVGAnimateMotionElement? =
  #| (self) => (self instanceof SVGAnimateMotionElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGAnimationElement::as_svg_animate_transform_element(
  self : SVGAnimationElement,
) -> SVGAnimateTransformElement? =
  #| (self) => (self instanceof SVGAnimateTransformElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGAnimationElement::get_target_element(
  self : SVGAnimationElement,
) -> SVGElement? =
  #| (self) => (() => { const v = self.targetElement; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn SVGAnimationElement::get_onbegin(
  self : SVGAnimationElement,
) -> EventHandler =
  #| (self) => self.onbegin

///|
pub extern "js" fn SVGAnimationElement::set_onbegin(
  self : SVGAnimationElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbegin = value }

///|
pub extern "js" fn SVGAnimationElement::get_onend(
  self : SVGAnimationElement,
) -> EventHandler =
  #| (self) => self.onend

///|
pub extern "js" fn SVGAnimationElement::set_onend(
  self : SVGAnimationElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onend = value }

///|
pub extern "js" fn SVGAnimationElement::get_onrepeat(
  self : SVGAnimationElement,
) -> EventHandler =
  #| (self) => self.onrepeat

///|
pub extern "js" fn SVGAnimationElement::set_onrepeat(
  self : SVGAnimationElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onrepeat = value }

///|
pub extern "js" fn SVGAnimationElement::get_start_time(
  self : SVGAnimationElement,
) -> Double =
  #| (self) => self.getStartTime()

///|
pub extern "js" fn SVGAnimationElement::get_current_time(
  self : SVGAnimationElement,
) -> Double =
  #| (self) => self.getCurrentTime()

///|
pub extern "js" fn SVGAnimationElement::get_simple_duration(
  self : SVGAnimationElement,
) -> Double =
  #| (self) => self.getSimpleDuration()

///|
pub extern "js" fn SVGAnimationElement::begin_element(
  self : SVGAnimationElement,
) -> Unit =
  #| (self) => self.beginElement()

///|
pub extern "js" fn SVGAnimationElement::begin_element_at(
  self : SVGAnimationElement,
  offset : Double,
) -> Unit =
  #| (self, offset) => self.beginElementAt(offset)

///|
pub extern "js" fn SVGAnimationElement::end_element(
  self : SVGAnimationElement,
) -> Unit =
  #| (self) => self.endElement()

///|
pub extern "js" fn SVGAnimationElement::end_element_at(
  self : SVGAnimationElement,
  offset : Double,
) -> Unit =
  #| (self, offset) => self.endElementAt(offset)

///|
pub extern "js" fn SVGAnimationElement::get_required_extensions(
  self : SVGAnimationElement,
) -> SVGStringList =
  #| (self) => self.requiredExtensions

///|
pub extern "js" fn SVGAnimationElement::get_system_language(
  self : SVGAnimationElement,
) -> SVGStringList =
  #| (self) => self.systemLanguage

///|
/// SVGAnimateElement interface
pub type SVGAnimateElement

///|
pub extern "js" fn SVGAnimateElement::to_js_value(
  self : SVGAnimateElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGAnimateElement (unchecked)
pub extern "js" fn SVGAnimateElement::from_js_value(
  v : JsValue,
) -> SVGAnimateElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGAnimateElement (checked with instanceof)
pub extern "js" fn SVGAnimateElement::from_js_value_opt(
  v : JsValue,
) -> SVGAnimateElement? =
  #| (v) => (v instanceof SVGAnimateElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGAnimateElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_animate_element(
  self : JsValue,
) -> SVGAnimateElement? =
  #| (self) => (self instanceof SVGAnimateElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGAnimateElement (unchecked)
pub extern "js" fn JsValue::to_svg_animate_element(
  self : JsValue,
) -> SVGAnimateElement =
  #| (self) => self

///|
pub extern "js" fn SVGAnimateElement::to_svg_animation_element(
  self : SVGAnimateElement,
) -> SVGAnimationElement =
  #| (self) => self

///|
pub extern "js" fn SVGAnimateElement::to_svg_element(
  self : SVGAnimateElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGAnimateElement::to_element(
  self : SVGAnimateElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGAnimateElement::to_node(self : SVGAnimateElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGAnimateElement::to_event_target(
  self : SVGAnimateElement,
) -> EventTarget =
  #| (self) => self

///|
/// SVGSetElement interface
pub type SVGSetElement

///|
pub extern "js" fn SVGSetElement::to_js_value(self : SVGSetElement) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGSetElement (unchecked)
pub extern "js" fn SVGSetElement::from_js_value(v : JsValue) -> SVGSetElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGSetElement (checked with instanceof)
pub extern "js" fn SVGSetElement::from_js_value_opt(
  v : JsValue,
) -> SVGSetElement? =
  #| (v) => (v instanceof SVGSetElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGSetElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_set_element(
  self : JsValue,
) -> SVGSetElement? =
  #| (self) => (self instanceof SVGSetElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGSetElement (unchecked)
pub extern "js" fn JsValue::to_svg_set_element(self : JsValue) -> SVGSetElement =
  #| (self) => self

///|
pub extern "js" fn SVGSetElement::to_svg_animation_element(
  self : SVGSetElement,
) -> SVGAnimationElement =
  #| (self) => self

///|
pub extern "js" fn SVGSetElement::to_svg_element(
  self : SVGSetElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGSetElement::to_element(self : SVGSetElement) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGSetElement::to_node(self : SVGSetElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGSetElement::to_event_target(
  self : SVGSetElement,
) -> EventTarget =
  #| (self) => self

///|
/// SVGAnimateMotionElement interface
pub type SVGAnimateMotionElement

///|
pub extern "js" fn SVGAnimateMotionElement::to_js_value(
  self : SVGAnimateMotionElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGAnimateMotionElement (unchecked)
pub extern "js" fn SVGAnimateMotionElement::from_js_value(
  v : JsValue,
) -> SVGAnimateMotionElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGAnimateMotionElement (checked with instanceof)
pub extern "js" fn SVGAnimateMotionElement::from_js_value_opt(
  v : JsValue,
) -> SVGAnimateMotionElement? =
  #| (v) => (v instanceof SVGAnimateMotionElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGAnimateMotionElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_animate_motion_element(
  self : JsValue,
) -> SVGAnimateMotionElement? =
  #| (self) => (self instanceof SVGAnimateMotionElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGAnimateMotionElement (unchecked)
pub extern "js" fn JsValue::to_svg_animate_motion_element(
  self : JsValue,
) -> SVGAnimateMotionElement =
  #| (self) => self

///|
pub extern "js" fn SVGAnimateMotionElement::to_svg_animation_element(
  self : SVGAnimateMotionElement,
) -> SVGAnimationElement =
  #| (self) => self

///|
pub extern "js" fn SVGAnimateMotionElement::to_svg_element(
  self : SVGAnimateMotionElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGAnimateMotionElement::to_element(
  self : SVGAnimateMotionElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGAnimateMotionElement::to_node(
  self : SVGAnimateMotionElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGAnimateMotionElement::to_event_target(
  self : SVGAnimateMotionElement,
) -> EventTarget =
  #| (self) => self

///|
/// SVGMPathElement interface
pub type SVGMPathElement

///|
pub extern "js" fn SVGMPathElement::to_js_value(
  self : SVGMPathElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGMPathElement (unchecked)
pub extern "js" fn SVGMPathElement::from_js_value(
  v : JsValue,
) -> SVGMPathElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGMPathElement (checked with instanceof)
pub extern "js" fn SVGMPathElement::from_js_value_opt(
  v : JsValue,
) -> SVGMPathElement? =
  #| (v) => (v instanceof SVGMPathElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGMPathElement (checked with instanceof)
pub extern "js" fn JsValue::as_svgm_path_element(
  self : JsValue,
) -> SVGMPathElement? =
  #| (self) => (self instanceof SVGMPathElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGMPathElement (unchecked)
pub extern "js" fn JsValue::to_svgm_path_element(
  self : JsValue,
) -> SVGMPathElement =
  #| (self) => self

///|
pub extern "js" fn SVGMPathElement::to_svg_element(
  self : SVGMPathElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGMPathElement::to_element(
  self : SVGMPathElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGMPathElement::to_node(self : SVGMPathElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGMPathElement::to_event_target(
  self : SVGMPathElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGMPathElement::get_href(
  self : SVGMPathElement,
) -> SVGAnimatedString =
  #| (self) => self.href

///|
/// SVGAnimateTransformElement interface
pub type SVGAnimateTransformElement

///|
pub extern "js" fn SVGAnimateTransformElement::to_js_value(
  self : SVGAnimateTransformElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGAnimateTransformElement (unchecked)
pub extern "js" fn SVGAnimateTransformElement::from_js_value(
  v : JsValue,
) -> SVGAnimateTransformElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGAnimateTransformElement (checked with instanceof)
pub extern "js" fn SVGAnimateTransformElement::from_js_value_opt(
  v : JsValue,
) -> SVGAnimateTransformElement? =
  #| (v) => (v instanceof SVGAnimateTransformElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGAnimateTransformElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_animate_transform_element(
  self : JsValue,
) -> SVGAnimateTransformElement? =
  #| (self) => (self instanceof SVGAnimateTransformElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGAnimateTransformElement (unchecked)
pub extern "js" fn JsValue::to_svg_animate_transform_element(
  self : JsValue,
) -> SVGAnimateTransformElement =
  #| (self) => self

///|
pub extern "js" fn SVGAnimateTransformElement::to_svg_animation_element(
  self : SVGAnimateTransformElement,
) -> SVGAnimationElement =
  #| (self) => self

///|
pub extern "js" fn SVGAnimateTransformElement::to_svg_element(
  self : SVGAnimateTransformElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGAnimateTransformElement::to_element(
  self : SVGAnimateTransformElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGAnimateTransformElement::to_node(
  self : SVGAnimateTransformElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGAnimateTransformElement::to_event_target(
  self : SVGAnimateTransformElement,
) -> EventTarget =
  #| (self) => self
