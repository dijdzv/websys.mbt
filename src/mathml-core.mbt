// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/mathml-core

///|
/// MathMLElement interface
pub type MathMLElement

///|
pub extern "js" fn MathMLElement::to_js_value(self : MathMLElement) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to MathMLElement (unchecked)
pub extern "js" fn MathMLElement::from_js_value(v : JsValue) -> MathMLElement =
  #| (v) => v

///|
/// Safely cast JsValue to MathMLElement (checked with instanceof)
pub extern "js" fn MathMLElement::from_js_value_opt(
  v : JsValue,
) -> MathMLElement? =
  #| (v) => (v instanceof MathMLElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MathMLElement (checked with instanceof)
pub extern "js" fn JsValue::as_math_ml_element(
  self : JsValue,
) -> MathMLElement? =
  #| (self) => (self instanceof MathMLElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MathMLElement (unchecked)
pub extern "js" fn JsValue::to_math_ml_element(self : JsValue) -> MathMLElement =
  #| (self) => self

///|
pub extern "js" fn MathMLElement::to_element(self : MathMLElement) -> Element =
  #| (self) => self

///|
pub extern "js" fn MathMLElement::to_node(self : MathMLElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn MathMLElement::to_event_target(
  self : MathMLElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn MathMLElement::get_attribute_style_map(
  self : MathMLElement,
) -> StylePropertyMap =
  #| (self) => self.attributeStyleMap

///|
pub extern "js" fn MathMLElement::get_style(
  self : MathMLElement,
) -> CSSStyleProperties =
  #| (self) => self.style

///|
pub extern "js" fn MathMLElement::set_onanimationstart(
  self : MathMLElement,
  handler : (AnimationEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onanimationstart = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onanimationstart(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onanimationstart = null }

///|
pub extern "js" fn MathMLElement::set_onanimationiteration(
  self : MathMLElement,
  handler : (AnimationEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onanimationiteration = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onanimationiteration(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onanimationiteration = null }

///|
pub extern "js" fn MathMLElement::set_onanimationend(
  self : MathMLElement,
  handler : (AnimationEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onanimationend = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onanimationend(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onanimationend = null }

///|
pub extern "js" fn MathMLElement::set_onanimationcancel(
  self : MathMLElement,
  handler : (AnimationEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onanimationcancel = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onanimationcancel(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onanimationcancel = null }

///|
pub extern "js" fn MathMLElement::set_onsnapchanged(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onsnapchanged = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onsnapchanged(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onsnapchanged = null }

///|
pub extern "js" fn MathMLElement::set_onsnapchanging(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onsnapchanging = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onsnapchanging(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onsnapchanging = null }

///|
pub extern "js" fn MathMLElement::set_ontransitionrun(
  self : MathMLElement,
  handler : (TransitionEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ontransitionrun = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_ontransitionrun(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.ontransitionrun = null }

///|
pub extern "js" fn MathMLElement::set_ontransitionstart(
  self : MathMLElement,
  handler : (TransitionEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ontransitionstart = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_ontransitionstart(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.ontransitionstart = null }

///|
pub extern "js" fn MathMLElement::set_ontransitionend(
  self : MathMLElement,
  handler : (TransitionEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ontransitionend = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_ontransitionend(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.ontransitionend = null }

///|
pub extern "js" fn MathMLElement::set_ontransitioncancel(
  self : MathMLElement,
  handler : (TransitionEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ontransitioncancel = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_ontransitioncancel(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.ontransitioncancel = null }

///|
pub extern "js" fn MathMLElement::set_onfencedtreeclick(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onfencedtreeclick = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onfencedtreeclick(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onfencedtreeclick = null }

///|
pub extern "js" fn MathMLElement::set_onabort(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onabort = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onabort(self : MathMLElement) -> Unit =
  #| (self) => { self.onabort = null }

///|
pub extern "js" fn MathMLElement::set_onauxclick(
  self : MathMLElement,
  handler : (PointerEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onauxclick = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onauxclick(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onauxclick = null }

///|
pub extern "js" fn MathMLElement::set_onbeforeinput(
  self : MathMLElement,
  handler : (InputEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onbeforeinput = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onbeforeinput(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onbeforeinput = null }

///|
pub extern "js" fn MathMLElement::set_onbeforematch(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onbeforematch = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onbeforematch(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onbeforematch = null }

///|
pub extern "js" fn MathMLElement::set_onbeforetoggle(
  self : MathMLElement,
  handler : (ToggleEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onbeforetoggle = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onbeforetoggle(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onbeforetoggle = null }

///|
pub extern "js" fn MathMLElement::set_onblur(
  self : MathMLElement,
  handler : (FocusEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onblur = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onblur(self : MathMLElement) -> Unit =
  #| (self) => { self.onblur = null }

///|
pub extern "js" fn MathMLElement::set_oncancel(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.oncancel = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_oncancel(self : MathMLElement) -> Unit =
  #| (self) => { self.oncancel = null }

///|
pub extern "js" fn MathMLElement::set_oncanplay(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.oncanplay = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_oncanplay(self : MathMLElement) -> Unit =
  #| (self) => { self.oncanplay = null }

///|
pub extern "js" fn MathMLElement::set_oncanplaythrough(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.oncanplaythrough = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_oncanplaythrough(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.oncanplaythrough = null }

///|
pub extern "js" fn MathMLElement::set_onchange(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onchange = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onchange(self : MathMLElement) -> Unit =
  #| (self) => { self.onchange = null }

///|
pub extern "js" fn MathMLElement::set_onclick(
  self : MathMLElement,
  handler : (PointerEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onclick = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onclick(self : MathMLElement) -> Unit =
  #| (self) => { self.onclick = null }

///|
pub extern "js" fn MathMLElement::set_onclose(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onclose = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onclose(self : MathMLElement) -> Unit =
  #| (self) => { self.onclose = null }

///|
pub extern "js" fn MathMLElement::set_oncommand(
  self : MathMLElement,
  handler : (CommandEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.oncommand = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_oncommand(self : MathMLElement) -> Unit =
  #| (self) => { self.oncommand = null }

///|
pub extern "js" fn MathMLElement::set_oncontextlost(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.oncontextlost = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_oncontextlost(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.oncontextlost = null }

///|
pub extern "js" fn MathMLElement::set_oncontextmenu(
  self : MathMLElement,
  handler : (PointerEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.oncontextmenu = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_oncontextmenu(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.oncontextmenu = null }

///|
pub extern "js" fn MathMLElement::set_oncontextrestored(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.oncontextrestored = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_oncontextrestored(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.oncontextrestored = null }

///|
pub extern "js" fn MathMLElement::set_oncopy(
  self : MathMLElement,
  handler : (ClipboardEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.oncopy = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_oncopy(self : MathMLElement) -> Unit =
  #| (self) => { self.oncopy = null }

///|
pub extern "js" fn MathMLElement::set_oncuechange(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.oncuechange = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_oncuechange(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.oncuechange = null }

///|
pub extern "js" fn MathMLElement::set_oncut(
  self : MathMLElement,
  handler : (ClipboardEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.oncut = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_oncut(self : MathMLElement) -> Unit =
  #| (self) => { self.oncut = null }

///|
pub extern "js" fn MathMLElement::set_ondblclick(
  self : MathMLElement,
  handler : (MouseEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ondblclick = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_ondblclick(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.ondblclick = null }

///|
pub extern "js" fn MathMLElement::set_ondrag(
  self : MathMLElement,
  handler : (DragEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ondrag = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_ondrag(self : MathMLElement) -> Unit =
  #| (self) => { self.ondrag = null }

///|
pub extern "js" fn MathMLElement::set_ondragend(
  self : MathMLElement,
  handler : (DragEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ondragend = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_ondragend(self : MathMLElement) -> Unit =
  #| (self) => { self.ondragend = null }

///|
pub extern "js" fn MathMLElement::set_ondragenter(
  self : MathMLElement,
  handler : (DragEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ondragenter = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_ondragenter(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.ondragenter = null }

///|
pub extern "js" fn MathMLElement::set_ondragleave(
  self : MathMLElement,
  handler : (DragEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ondragleave = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_ondragleave(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.ondragleave = null }

///|
pub extern "js" fn MathMLElement::set_ondragover(
  self : MathMLElement,
  handler : (DragEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ondragover = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_ondragover(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.ondragover = null }

///|
pub extern "js" fn MathMLElement::set_ondragstart(
  self : MathMLElement,
  handler : (DragEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ondragstart = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_ondragstart(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.ondragstart = null }

///|
pub extern "js" fn MathMLElement::set_ondrop(
  self : MathMLElement,
  handler : (DragEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ondrop = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_ondrop(self : MathMLElement) -> Unit =
  #| (self) => { self.ondrop = null }

///|
pub extern "js" fn MathMLElement::set_ondurationchange(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ondurationchange = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_ondurationchange(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.ondurationchange = null }

///|
pub extern "js" fn MathMLElement::set_onemptied(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onemptied = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onemptied(self : MathMLElement) -> Unit =
  #| (self) => { self.onemptied = null }

///|
pub extern "js" fn MathMLElement::set_onended(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onended = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onended(self : MathMLElement) -> Unit =
  #| (self) => { self.onended = null }

///|
pub extern "js" fn MathMLElement::set_onerror(
  self : MathMLElement,
  value : OnErrorEventHandler,
) -> Unit =
  #| (self, value) => { self.onerror = value }

///|
pub extern "js" fn MathMLElement::clear_onerror(self : MathMLElement) -> Unit =
  #| (self) => { self.onerror = null }

///|
pub extern "js" fn MathMLElement::set_onfocus(
  self : MathMLElement,
  handler : (FocusEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onfocus = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onfocus(self : MathMLElement) -> Unit =
  #| (self) => { self.onfocus = null }

///|
pub extern "js" fn MathMLElement::set_onformdata(
  self : MathMLElement,
  handler : (FormDataEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onformdata = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onformdata(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onformdata = null }

///|
pub extern "js" fn MathMLElement::set_oninput(
  self : MathMLElement,
  handler : (InputEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.oninput = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_oninput(self : MathMLElement) -> Unit =
  #| (self) => { self.oninput = null }

///|
pub extern "js" fn MathMLElement::set_oninvalid(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.oninvalid = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_oninvalid(self : MathMLElement) -> Unit =
  #| (self) => { self.oninvalid = null }

///|
pub extern "js" fn MathMLElement::set_onkeydown(
  self : MathMLElement,
  handler : (KeyboardEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onkeydown = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onkeydown(self : MathMLElement) -> Unit =
  #| (self) => { self.onkeydown = null }

///|
pub extern "js" fn MathMLElement::set_onkeypress(
  self : MathMLElement,
  handler : (KeyboardEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onkeypress = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onkeypress(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onkeypress = null }

///|
pub extern "js" fn MathMLElement::set_onkeyup(
  self : MathMLElement,
  handler : (KeyboardEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onkeyup = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onkeyup(self : MathMLElement) -> Unit =
  #| (self) => { self.onkeyup = null }

///|
pub extern "js" fn MathMLElement::set_onload(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onload = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onload(self : MathMLElement) -> Unit =
  #| (self) => { self.onload = null }

///|
pub extern "js" fn MathMLElement::set_onloadeddata(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onloadeddata = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onloadeddata(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onloadeddata = null }

///|
pub extern "js" fn MathMLElement::set_onloadedmetadata(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onloadedmetadata = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onloadedmetadata(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onloadedmetadata = null }

///|
pub extern "js" fn MathMLElement::set_onloadstart(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onloadstart = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onloadstart(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onloadstart = null }

///|
pub extern "js" fn MathMLElement::set_onmousedown(
  self : MathMLElement,
  handler : (MouseEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onmousedown = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onmousedown(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onmousedown = null }

///|
pub extern "js" fn MathMLElement::set_onmouseenter(
  self : MathMLElement,
  handler : (MouseEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onmouseenter = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onmouseenter(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onmouseenter = null }

///|
pub extern "js" fn MathMLElement::set_onmouseleave(
  self : MathMLElement,
  handler : (MouseEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onmouseleave = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onmouseleave(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onmouseleave = null }

///|
pub extern "js" fn MathMLElement::set_onmousemove(
  self : MathMLElement,
  handler : (MouseEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onmousemove = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onmousemove(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onmousemove = null }

///|
pub extern "js" fn MathMLElement::set_onmouseout(
  self : MathMLElement,
  handler : (MouseEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onmouseout = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onmouseout(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onmouseout = null }

///|
pub extern "js" fn MathMLElement::set_onmouseover(
  self : MathMLElement,
  handler : (MouseEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onmouseover = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onmouseover(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onmouseover = null }

///|
pub extern "js" fn MathMLElement::set_onmouseup(
  self : MathMLElement,
  handler : (MouseEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onmouseup = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onmouseup(self : MathMLElement) -> Unit =
  #| (self) => { self.onmouseup = null }

///|
pub extern "js" fn MathMLElement::set_onpaste(
  self : MathMLElement,
  handler : (ClipboardEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpaste = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onpaste(self : MathMLElement) -> Unit =
  #| (self) => { self.onpaste = null }

///|
pub extern "js" fn MathMLElement::set_onpause(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpause = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onpause(self : MathMLElement) -> Unit =
  #| (self) => { self.onpause = null }

///|
pub extern "js" fn MathMLElement::set_onplay(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onplay = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onplay(self : MathMLElement) -> Unit =
  #| (self) => { self.onplay = null }

///|
pub extern "js" fn MathMLElement::set_onplaying(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onplaying = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onplaying(self : MathMLElement) -> Unit =
  #| (self) => { self.onplaying = null }

///|
pub extern "js" fn MathMLElement::set_onprogress(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onprogress = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onprogress(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onprogress = null }

///|
pub extern "js" fn MathMLElement::set_onratechange(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onratechange = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onratechange(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onratechange = null }

///|
pub extern "js" fn MathMLElement::set_onreset(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onreset = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onreset(self : MathMLElement) -> Unit =
  #| (self) => { self.onreset = null }

///|
pub extern "js" fn MathMLElement::set_onresize(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onresize = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onresize(self : MathMLElement) -> Unit =
  #| (self) => { self.onresize = null }

///|
pub extern "js" fn MathMLElement::set_onscroll(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onscroll = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onscroll(self : MathMLElement) -> Unit =
  #| (self) => { self.onscroll = null }

///|
pub extern "js" fn MathMLElement::set_onscrollend(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onscrollend = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onscrollend(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onscrollend = null }

///|
pub extern "js" fn MathMLElement::set_onsecuritypolicyviolation(
  self : MathMLElement,
  handler : (SecurityPolicyViolationEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onsecuritypolicyviolation = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onsecuritypolicyviolation(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onsecuritypolicyviolation = null }

///|
pub extern "js" fn MathMLElement::set_onseeked(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onseeked = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onseeked(self : MathMLElement) -> Unit =
  #| (self) => { self.onseeked = null }

///|
pub extern "js" fn MathMLElement::set_onseeking(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onseeking = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onseeking(self : MathMLElement) -> Unit =
  #| (self) => { self.onseeking = null }

///|
pub extern "js" fn MathMLElement::set_onselect(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onselect = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onselect(self : MathMLElement) -> Unit =
  #| (self) => { self.onselect = null }

///|
pub extern "js" fn MathMLElement::set_onslotchange(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onslotchange = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onslotchange(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onslotchange = null }

///|
pub extern "js" fn MathMLElement::set_onstalled(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onstalled = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onstalled(self : MathMLElement) -> Unit =
  #| (self) => { self.onstalled = null }

///|
pub extern "js" fn MathMLElement::set_onsubmit(
  self : MathMLElement,
  handler : (SubmitEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onsubmit = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onsubmit(self : MathMLElement) -> Unit =
  #| (self) => { self.onsubmit = null }

///|
pub extern "js" fn MathMLElement::set_onsuspend(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onsuspend = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onsuspend(self : MathMLElement) -> Unit =
  #| (self) => { self.onsuspend = null }

///|
pub extern "js" fn MathMLElement::set_ontimeupdate(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ontimeupdate = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_ontimeupdate(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.ontimeupdate = null }

///|
pub extern "js" fn MathMLElement::set_ontoggle(
  self : MathMLElement,
  handler : (ToggleEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ontoggle = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_ontoggle(self : MathMLElement) -> Unit =
  #| (self) => { self.ontoggle = null }

///|
pub extern "js" fn MathMLElement::set_onvolumechange(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onvolumechange = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onvolumechange(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onvolumechange = null }

///|
pub extern "js" fn MathMLElement::set_onwaiting(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onwaiting = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onwaiting(self : MathMLElement) -> Unit =
  #| (self) => { self.onwaiting = null }

///|
pub extern "js" fn MathMLElement::set_onwebkitanimationend(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onwebkitanimationend = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onwebkitanimationend(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onwebkitanimationend = null }

///|
pub extern "js" fn MathMLElement::set_onwebkitanimationiteration(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onwebkitanimationiteration = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onwebkitanimationiteration(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onwebkitanimationiteration = null }

///|
pub extern "js" fn MathMLElement::set_onwebkitanimationstart(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onwebkitanimationstart = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onwebkitanimationstart(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onwebkitanimationstart = null }

///|
pub extern "js" fn MathMLElement::set_onwebkittransitionend(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onwebkittransitionend = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onwebkittransitionend(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onwebkittransitionend = null }

///|
pub extern "js" fn MathMLElement::set_onwheel(
  self : MathMLElement,
  handler : (WheelEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onwheel = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onwheel(self : MathMLElement) -> Unit =
  #| (self) => { self.onwheel = null }

///|
pub extern "js" fn MathMLElement::set_onpointerover(
  self : MathMLElement,
  handler : (PointerEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpointerover = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onpointerover(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onpointerover = null }

///|
pub extern "js" fn MathMLElement::set_onpointerenter(
  self : MathMLElement,
  handler : (PointerEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpointerenter = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onpointerenter(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onpointerenter = null }

///|
pub extern "js" fn MathMLElement::set_onpointerdown(
  self : MathMLElement,
  handler : (PointerEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpointerdown = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onpointerdown(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onpointerdown = null }

///|
pub extern "js" fn MathMLElement::set_onpointermove(
  self : MathMLElement,
  handler : (PointerEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpointermove = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onpointermove(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onpointermove = null }

///|
pub extern "js" fn MathMLElement::set_onpointerrawupdate(
  self : MathMLElement,
  handler : (PointerEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpointerrawupdate = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onpointerrawupdate(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onpointerrawupdate = null }

///|
pub extern "js" fn MathMLElement::set_onpointerup(
  self : MathMLElement,
  handler : (PointerEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpointerup = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onpointerup(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onpointerup = null }

///|
pub extern "js" fn MathMLElement::set_onpointercancel(
  self : MathMLElement,
  handler : (PointerEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpointercancel = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onpointercancel(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onpointercancel = null }

///|
pub extern "js" fn MathMLElement::set_onpointerout(
  self : MathMLElement,
  handler : (PointerEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpointerout = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onpointerout(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onpointerout = null }

///|
pub extern "js" fn MathMLElement::set_onpointerleave(
  self : MathMLElement,
  handler : (PointerEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpointerleave = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onpointerleave(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onpointerleave = null }

///|
pub extern "js" fn MathMLElement::set_ongotpointercapture(
  self : MathMLElement,
  handler : (PointerEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ongotpointercapture = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_ongotpointercapture(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.ongotpointercapture = null }

///|
pub extern "js" fn MathMLElement::set_onlostpointercapture(
  self : MathMLElement,
  handler : (PointerEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onlostpointercapture = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onlostpointercapture(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onlostpointercapture = null }

///|
pub extern "js" fn MathMLElement::set_onselectstart(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onselectstart = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onselectstart(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onselectstart = null }

///|
pub extern "js" fn MathMLElement::set_onselectionchange(
  self : MathMLElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onselectionchange = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onselectionchange(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onselectionchange = null }

///|
pub extern "js" fn MathMLElement::set_ontouchstart(
  self : MathMLElement,
  handler : (TouchEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ontouchstart = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_ontouchstart(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.ontouchstart = null }

///|
pub extern "js" fn MathMLElement::set_ontouchend(
  self : MathMLElement,
  handler : (TouchEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ontouchend = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_ontouchend(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.ontouchend = null }

///|
pub extern "js" fn MathMLElement::set_ontouchmove(
  self : MathMLElement,
  handler : (TouchEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ontouchmove = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_ontouchmove(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.ontouchmove = null }

///|
pub extern "js" fn MathMLElement::set_ontouchcancel(
  self : MathMLElement,
  handler : (TouchEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ontouchcancel = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_ontouchcancel(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.ontouchcancel = null }

///|
pub extern "js" fn MathMLElement::set_onbeforexrselect(
  self : MathMLElement,
  handler : (XRSessionEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onbeforexrselect = (e) => handler(e) }

///|
pub extern "js" fn MathMLElement::clear_onbeforexrselect(
  self : MathMLElement,
) -> Unit =
  #| (self) => { self.onbeforexrselect = null }

///|
pub extern "js" fn MathMLElement::get_dataset(
  self : MathMLElement,
) -> DOMStringMap =
  #| (self) => self.dataset

///|
pub extern "js" fn MathMLElement::get_nonce(self : MathMLElement) -> String =
  #| (self) => self.nonce

///|
pub extern "js" fn MathMLElement::set_nonce(
  self : MathMLElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.nonce = value }

///|
pub extern "js" fn MathMLElement::get_autofocus(self : MathMLElement) -> Bool =
  #| (self) => self.autofocus

///|
pub extern "js" fn MathMLElement::set_autofocus(
  self : MathMLElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.autofocus = value }

///|
pub extern "js" fn MathMLElement::get_tab_index(self : MathMLElement) -> Int =
  #| (self) => self.tabIndex

///|
pub extern "js" fn MathMLElement::set_tab_index(
  self : MathMLElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.tabIndex = value }

///|
pub extern "js" fn MathMLElement::focus(self : MathMLElement) -> Unit =
  #| (self) => self.focus()

///|
extern "js" fn MathMLElement::focus_with_options_ffi(
  self : MathMLElement,
  options : JsValue,
) -> Unit =
  #| (self, options) => self.focus(options)

///|
pub fn MathMLElement::focus_with_options(
  self : MathMLElement,
  options : FocusOptions,
) -> Unit {
  MathMLElement::focus_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn MathMLElement::blur(self : MathMLElement) -> Unit =
  #| (self) => self.blur()
