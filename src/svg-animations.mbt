// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/svg-animations

///|
/// TimeEvent interface
pub type TimeEvent

///|
pub extern "js" fn TimeEvent::to_js_value(self : TimeEvent) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn TimeEvent::get_view(self : TimeEvent) -> WindowProxy? =
  #| (self) => self.view

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
  #| (self, type_arg, view_arg, detail_arg) => self.initTimeEvent(type_arg, view_arg, detail_arg)

///|
/// SVGAnimationElement interface
pub type SVGAnimationElement

///|
pub extern "js" fn SVGAnimationElement::to_js_value(
  self : SVGAnimationElement,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn SVGAnimationElement::get_target_element(
  self : SVGAnimationElement,
) -> SVGElement? =
  #| (self) => self.targetElement

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
pub extern "js" fn SVGAnimateElement::get_target_element(
  self : SVGAnimateElement,
) -> SVGElement? =
  #| (self) => self.targetElement

///|
pub extern "js" fn SVGAnimateElement::get_onbegin(
  self : SVGAnimateElement,
) -> EventHandler =
  #| (self) => self.onbegin

///|
pub extern "js" fn SVGAnimateElement::set_onbegin(
  self : SVGAnimateElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbegin = value }

///|
pub extern "js" fn SVGAnimateElement::get_onend(
  self : SVGAnimateElement,
) -> EventHandler =
  #| (self) => self.onend

///|
pub extern "js" fn SVGAnimateElement::set_onend(
  self : SVGAnimateElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onend = value }

///|
pub extern "js" fn SVGAnimateElement::get_onrepeat(
  self : SVGAnimateElement,
) -> EventHandler =
  #| (self) => self.onrepeat

///|
pub extern "js" fn SVGAnimateElement::set_onrepeat(
  self : SVGAnimateElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onrepeat = value }

///|
pub extern "js" fn SVGAnimateElement::get_start_time(
  self : SVGAnimateElement,
) -> Double =
  #| (self) => self.getStartTime()

///|
pub extern "js" fn SVGAnimateElement::get_current_time(
  self : SVGAnimateElement,
) -> Double =
  #| (self) => self.getCurrentTime()

///|
pub extern "js" fn SVGAnimateElement::get_simple_duration(
  self : SVGAnimateElement,
) -> Double =
  #| (self) => self.getSimpleDuration()

///|
pub extern "js" fn SVGAnimateElement::begin_element(
  self : SVGAnimateElement,
) -> Unit =
  #| (self) => self.beginElement()

///|
pub extern "js" fn SVGAnimateElement::begin_element_at(
  self : SVGAnimateElement,
  offset : Double,
) -> Unit =
  #| (self, offset) => self.beginElementAt(offset)

///|
pub extern "js" fn SVGAnimateElement::end_element(
  self : SVGAnimateElement,
) -> Unit =
  #| (self) => self.endElement()

///|
pub extern "js" fn SVGAnimateElement::end_element_at(
  self : SVGAnimateElement,
  offset : Double,
) -> Unit =
  #| (self, offset) => self.endElementAt(offset)

///|
pub extern "js" fn SVGAnimateElement::get_required_extensions(
  self : SVGAnimateElement,
) -> SVGStringList =
  #| (self) => self.requiredExtensions

///|
pub extern "js" fn SVGAnimateElement::get_system_language(
  self : SVGAnimateElement,
) -> SVGStringList =
  #| (self) => self.systemLanguage

///|
/// SVGSetElement interface
pub type SVGSetElement

///|
pub extern "js" fn SVGSetElement::to_js_value(self : SVGSetElement) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn SVGSetElement::get_target_element(
  self : SVGSetElement,
) -> SVGElement? =
  #| (self) => self.targetElement

///|
pub extern "js" fn SVGSetElement::get_onbegin(
  self : SVGSetElement,
) -> EventHandler =
  #| (self) => self.onbegin

///|
pub extern "js" fn SVGSetElement::set_onbegin(
  self : SVGSetElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbegin = value }

///|
pub extern "js" fn SVGSetElement::get_onend(
  self : SVGSetElement,
) -> EventHandler =
  #| (self) => self.onend

///|
pub extern "js" fn SVGSetElement::set_onend(
  self : SVGSetElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onend = value }

///|
pub extern "js" fn SVGSetElement::get_onrepeat(
  self : SVGSetElement,
) -> EventHandler =
  #| (self) => self.onrepeat

///|
pub extern "js" fn SVGSetElement::set_onrepeat(
  self : SVGSetElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onrepeat = value }

///|
pub extern "js" fn SVGSetElement::get_start_time(
  self : SVGSetElement,
) -> Double =
  #| (self) => self.getStartTime()

///|
pub extern "js" fn SVGSetElement::get_current_time(
  self : SVGSetElement,
) -> Double =
  #| (self) => self.getCurrentTime()

///|
pub extern "js" fn SVGSetElement::get_simple_duration(
  self : SVGSetElement,
) -> Double =
  #| (self) => self.getSimpleDuration()

///|
pub extern "js" fn SVGSetElement::begin_element(self : SVGSetElement) -> Unit =
  #| (self) => self.beginElement()

///|
pub extern "js" fn SVGSetElement::begin_element_at(
  self : SVGSetElement,
  offset : Double,
) -> Unit =
  #| (self, offset) => self.beginElementAt(offset)

///|
pub extern "js" fn SVGSetElement::end_element(self : SVGSetElement) -> Unit =
  #| (self) => self.endElement()

///|
pub extern "js" fn SVGSetElement::end_element_at(
  self : SVGSetElement,
  offset : Double,
) -> Unit =
  #| (self, offset) => self.endElementAt(offset)

///|
pub extern "js" fn SVGSetElement::get_required_extensions(
  self : SVGSetElement,
) -> SVGStringList =
  #| (self) => self.requiredExtensions

///|
pub extern "js" fn SVGSetElement::get_system_language(
  self : SVGSetElement,
) -> SVGStringList =
  #| (self) => self.systemLanguage

///|
/// SVGAnimateMotionElement interface
pub type SVGAnimateMotionElement

///|
pub extern "js" fn SVGAnimateMotionElement::to_js_value(
  self : SVGAnimateMotionElement,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn SVGAnimateMotionElement::get_target_element(
  self : SVGAnimateMotionElement,
) -> SVGElement? =
  #| (self) => self.targetElement

///|
pub extern "js" fn SVGAnimateMotionElement::get_onbegin(
  self : SVGAnimateMotionElement,
) -> EventHandler =
  #| (self) => self.onbegin

///|
pub extern "js" fn SVGAnimateMotionElement::set_onbegin(
  self : SVGAnimateMotionElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbegin = value }

///|
pub extern "js" fn SVGAnimateMotionElement::get_onend(
  self : SVGAnimateMotionElement,
) -> EventHandler =
  #| (self) => self.onend

///|
pub extern "js" fn SVGAnimateMotionElement::set_onend(
  self : SVGAnimateMotionElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onend = value }

///|
pub extern "js" fn SVGAnimateMotionElement::get_onrepeat(
  self : SVGAnimateMotionElement,
) -> EventHandler =
  #| (self) => self.onrepeat

///|
pub extern "js" fn SVGAnimateMotionElement::set_onrepeat(
  self : SVGAnimateMotionElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onrepeat = value }

///|
pub extern "js" fn SVGAnimateMotionElement::get_start_time(
  self : SVGAnimateMotionElement,
) -> Double =
  #| (self) => self.getStartTime()

///|
pub extern "js" fn SVGAnimateMotionElement::get_current_time(
  self : SVGAnimateMotionElement,
) -> Double =
  #| (self) => self.getCurrentTime()

///|
pub extern "js" fn SVGAnimateMotionElement::get_simple_duration(
  self : SVGAnimateMotionElement,
) -> Double =
  #| (self) => self.getSimpleDuration()

///|
pub extern "js" fn SVGAnimateMotionElement::begin_element(
  self : SVGAnimateMotionElement,
) -> Unit =
  #| (self) => self.beginElement()

///|
pub extern "js" fn SVGAnimateMotionElement::begin_element_at(
  self : SVGAnimateMotionElement,
  offset : Double,
) -> Unit =
  #| (self, offset) => self.beginElementAt(offset)

///|
pub extern "js" fn SVGAnimateMotionElement::end_element(
  self : SVGAnimateMotionElement,
) -> Unit =
  #| (self) => self.endElement()

///|
pub extern "js" fn SVGAnimateMotionElement::end_element_at(
  self : SVGAnimateMotionElement,
  offset : Double,
) -> Unit =
  #| (self, offset) => self.endElementAt(offset)

///|
pub extern "js" fn SVGAnimateMotionElement::get_required_extensions(
  self : SVGAnimateMotionElement,
) -> SVGStringList =
  #| (self) => self.requiredExtensions

///|
pub extern "js" fn SVGAnimateMotionElement::get_system_language(
  self : SVGAnimateMotionElement,
) -> SVGStringList =
  #| (self) => self.systemLanguage

///|
/// SVGMPathElement interface
pub type SVGMPathElement

///|
pub extern "js" fn SVGMPathElement::to_js_value(
  self : SVGMPathElement,
) -> JsValue =
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
pub extern "js" fn SVGAnimateTransformElement::get_target_element(
  self : SVGAnimateTransformElement,
) -> SVGElement? =
  #| (self) => self.targetElement

///|
pub extern "js" fn SVGAnimateTransformElement::get_onbegin(
  self : SVGAnimateTransformElement,
) -> EventHandler =
  #| (self) => self.onbegin

///|
pub extern "js" fn SVGAnimateTransformElement::set_onbegin(
  self : SVGAnimateTransformElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbegin = value }

///|
pub extern "js" fn SVGAnimateTransformElement::get_onend(
  self : SVGAnimateTransformElement,
) -> EventHandler =
  #| (self) => self.onend

///|
pub extern "js" fn SVGAnimateTransformElement::set_onend(
  self : SVGAnimateTransformElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onend = value }

///|
pub extern "js" fn SVGAnimateTransformElement::get_onrepeat(
  self : SVGAnimateTransformElement,
) -> EventHandler =
  #| (self) => self.onrepeat

///|
pub extern "js" fn SVGAnimateTransformElement::set_onrepeat(
  self : SVGAnimateTransformElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onrepeat = value }

///|
pub extern "js" fn SVGAnimateTransformElement::get_start_time(
  self : SVGAnimateTransformElement,
) -> Double =
  #| (self) => self.getStartTime()

///|
pub extern "js" fn SVGAnimateTransformElement::get_current_time(
  self : SVGAnimateTransformElement,
) -> Double =
  #| (self) => self.getCurrentTime()

///|
pub extern "js" fn SVGAnimateTransformElement::get_simple_duration(
  self : SVGAnimateTransformElement,
) -> Double =
  #| (self) => self.getSimpleDuration()

///|
pub extern "js" fn SVGAnimateTransformElement::begin_element(
  self : SVGAnimateTransformElement,
) -> Unit =
  #| (self) => self.beginElement()

///|
pub extern "js" fn SVGAnimateTransformElement::begin_element_at(
  self : SVGAnimateTransformElement,
  offset : Double,
) -> Unit =
  #| (self, offset) => self.beginElementAt(offset)

///|
pub extern "js" fn SVGAnimateTransformElement::end_element(
  self : SVGAnimateTransformElement,
) -> Unit =
  #| (self) => self.endElement()

///|
pub extern "js" fn SVGAnimateTransformElement::end_element_at(
  self : SVGAnimateTransformElement,
  offset : Double,
) -> Unit =
  #| (self, offset) => self.endElementAt(offset)

///|
pub extern "js" fn SVGAnimateTransformElement::get_required_extensions(
  self : SVGAnimateTransformElement,
) -> SVGStringList =
  #| (self) => self.requiredExtensions

///|
pub extern "js" fn SVGAnimateTransformElement::get_system_language(
  self : SVGAnimateTransformElement,
) -> SVGStringList =
  #| (self) => self.systemLanguage
