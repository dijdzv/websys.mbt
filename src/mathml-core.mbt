// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/mathml-core

///|
/// MathMLElement interface
pub type MathMLElement

///|
pub extern "js" fn MathMLElement::to_js_value(self : MathMLElement) -> JsValue =
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
pub extern "js" fn MathMLElement::get_onanimationstart(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onanimationstart

///|
pub extern "js" fn MathMLElement::set_onanimationstart(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onanimationstart = value }

///|
pub extern "js" fn MathMLElement::get_onanimationiteration(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onanimationiteration

///|
pub extern "js" fn MathMLElement::set_onanimationiteration(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onanimationiteration = value }

///|
pub extern "js" fn MathMLElement::get_onanimationend(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onanimationend

///|
pub extern "js" fn MathMLElement::set_onanimationend(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onanimationend = value }

///|
pub extern "js" fn MathMLElement::get_onanimationcancel(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onanimationcancel

///|
pub extern "js" fn MathMLElement::set_onanimationcancel(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onanimationcancel = value }

///|
pub extern "js" fn MathMLElement::get_onsnapchanged(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onsnapchanged

///|
pub extern "js" fn MathMLElement::set_onsnapchanged(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsnapchanged = value }

///|
pub extern "js" fn MathMLElement::get_onsnapchanging(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onsnapchanging

///|
pub extern "js" fn MathMLElement::set_onsnapchanging(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsnapchanging = value }

///|
pub extern "js" fn MathMLElement::get_ontransitionrun(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.ontransitionrun

///|
pub extern "js" fn MathMLElement::set_ontransitionrun(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontransitionrun = value }

///|
pub extern "js" fn MathMLElement::get_ontransitionstart(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.ontransitionstart

///|
pub extern "js" fn MathMLElement::set_ontransitionstart(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontransitionstart = value }

///|
pub extern "js" fn MathMLElement::get_ontransitionend(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.ontransitionend

///|
pub extern "js" fn MathMLElement::set_ontransitionend(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontransitionend = value }

///|
pub extern "js" fn MathMLElement::get_ontransitioncancel(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.ontransitioncancel

///|
pub extern "js" fn MathMLElement::set_ontransitioncancel(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontransitioncancel = value }

///|
pub extern "js" fn MathMLElement::get_onfencedtreeclick(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onfencedtreeclick

///|
pub extern "js" fn MathMLElement::set_onfencedtreeclick(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onfencedtreeclick = value }

///|
pub extern "js" fn MathMLElement::get_onabort(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onabort

///|
pub extern "js" fn MathMLElement::set_onabort(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onabort = value }

///|
pub extern "js" fn MathMLElement::get_onauxclick(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onauxclick

///|
pub extern "js" fn MathMLElement::set_onauxclick(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onauxclick = value }

///|
pub extern "js" fn MathMLElement::get_onbeforeinput(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onbeforeinput

///|
pub extern "js" fn MathMLElement::set_onbeforeinput(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbeforeinput = value }

///|
pub extern "js" fn MathMLElement::get_onbeforematch(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onbeforematch

///|
pub extern "js" fn MathMLElement::set_onbeforematch(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbeforematch = value }

///|
pub extern "js" fn MathMLElement::get_onbeforetoggle(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onbeforetoggle

///|
pub extern "js" fn MathMLElement::set_onbeforetoggle(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbeforetoggle = value }

///|
pub extern "js" fn MathMLElement::get_onblur(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onblur

///|
pub extern "js" fn MathMLElement::set_onblur(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onblur = value }

///|
pub extern "js" fn MathMLElement::get_oncancel(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.oncancel

///|
pub extern "js" fn MathMLElement::set_oncancel(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncancel = value }

///|
pub extern "js" fn MathMLElement::get_oncanplay(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.oncanplay

///|
pub extern "js" fn MathMLElement::set_oncanplay(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncanplay = value }

///|
pub extern "js" fn MathMLElement::get_oncanplaythrough(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.oncanplaythrough

///|
pub extern "js" fn MathMLElement::set_oncanplaythrough(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncanplaythrough = value }

///|
pub extern "js" fn MathMLElement::get_onchange(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onchange

///|
pub extern "js" fn MathMLElement::set_onchange(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onchange = value }

///|
pub extern "js" fn MathMLElement::get_onclick(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onclick

///|
pub extern "js" fn MathMLElement::set_onclick(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onclick = value }

///|
pub extern "js" fn MathMLElement::get_onclose(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onclose

///|
pub extern "js" fn MathMLElement::set_onclose(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onclose = value }

///|
pub extern "js" fn MathMLElement::get_oncommand(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.oncommand

///|
pub extern "js" fn MathMLElement::set_oncommand(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncommand = value }

///|
pub extern "js" fn MathMLElement::get_oncontextlost(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.oncontextlost

///|
pub extern "js" fn MathMLElement::set_oncontextlost(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncontextlost = value }

///|
pub extern "js" fn MathMLElement::get_oncontextmenu(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.oncontextmenu

///|
pub extern "js" fn MathMLElement::set_oncontextmenu(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncontextmenu = value }

///|
pub extern "js" fn MathMLElement::get_oncontextrestored(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.oncontextrestored

///|
pub extern "js" fn MathMLElement::set_oncontextrestored(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncontextrestored = value }

///|
pub extern "js" fn MathMLElement::get_oncopy(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.oncopy

///|
pub extern "js" fn MathMLElement::set_oncopy(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncopy = value }

///|
pub extern "js" fn MathMLElement::get_oncuechange(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.oncuechange

///|
pub extern "js" fn MathMLElement::set_oncuechange(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncuechange = value }

///|
pub extern "js" fn MathMLElement::get_oncut(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.oncut

///|
pub extern "js" fn MathMLElement::set_oncut(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncut = value }

///|
pub extern "js" fn MathMLElement::get_ondblclick(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.ondblclick

///|
pub extern "js" fn MathMLElement::set_ondblclick(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondblclick = value }

///|
pub extern "js" fn MathMLElement::get_ondrag(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.ondrag

///|
pub extern "js" fn MathMLElement::set_ondrag(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondrag = value }

///|
pub extern "js" fn MathMLElement::get_ondragend(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.ondragend

///|
pub extern "js" fn MathMLElement::set_ondragend(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondragend = value }

///|
pub extern "js" fn MathMLElement::get_ondragenter(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.ondragenter

///|
pub extern "js" fn MathMLElement::set_ondragenter(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondragenter = value }

///|
pub extern "js" fn MathMLElement::get_ondragleave(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.ondragleave

///|
pub extern "js" fn MathMLElement::set_ondragleave(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondragleave = value }

///|
pub extern "js" fn MathMLElement::get_ondragover(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.ondragover

///|
pub extern "js" fn MathMLElement::set_ondragover(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondragover = value }

///|
pub extern "js" fn MathMLElement::get_ondragstart(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.ondragstart

///|
pub extern "js" fn MathMLElement::set_ondragstart(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondragstart = value }

///|
pub extern "js" fn MathMLElement::get_ondrop(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.ondrop

///|
pub extern "js" fn MathMLElement::set_ondrop(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondrop = value }

///|
pub extern "js" fn MathMLElement::get_ondurationchange(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.ondurationchange

///|
pub extern "js" fn MathMLElement::set_ondurationchange(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondurationchange = value }

///|
pub extern "js" fn MathMLElement::get_onemptied(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onemptied

///|
pub extern "js" fn MathMLElement::set_onemptied(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onemptied = value }

///|
pub extern "js" fn MathMLElement::get_onended(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onended

///|
pub extern "js" fn MathMLElement::set_onended(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onended = value }

///|
pub extern "js" fn MathMLElement::get_onerror(
  self : MathMLElement,
) -> OnErrorEventHandler =
  #| (self) => self.onerror

///|
pub extern "js" fn MathMLElement::set_onerror(
  self : MathMLElement,
  value : OnErrorEventHandler,
) -> Unit =
  #| (self, value) => { self.onerror = value }

///|
pub extern "js" fn MathMLElement::get_onfocus(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onfocus

///|
pub extern "js" fn MathMLElement::set_onfocus(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onfocus = value }

///|
pub extern "js" fn MathMLElement::get_onformdata(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onformdata

///|
pub extern "js" fn MathMLElement::set_onformdata(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onformdata = value }

///|
pub extern "js" fn MathMLElement::get_oninput(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.oninput

///|
pub extern "js" fn MathMLElement::set_oninput(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oninput = value }

///|
pub extern "js" fn MathMLElement::get_oninvalid(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.oninvalid

///|
pub extern "js" fn MathMLElement::set_oninvalid(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oninvalid = value }

///|
pub extern "js" fn MathMLElement::get_onkeydown(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onkeydown

///|
pub extern "js" fn MathMLElement::set_onkeydown(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onkeydown = value }

///|
pub extern "js" fn MathMLElement::get_onkeypress(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onkeypress

///|
pub extern "js" fn MathMLElement::set_onkeypress(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onkeypress = value }

///|
pub extern "js" fn MathMLElement::get_onkeyup(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onkeyup

///|
pub extern "js" fn MathMLElement::set_onkeyup(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onkeyup = value }

///|
pub extern "js" fn MathMLElement::get_onload(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onload

///|
pub extern "js" fn MathMLElement::set_onload(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onload = value }

///|
pub extern "js" fn MathMLElement::get_onloadeddata(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onloadeddata

///|
pub extern "js" fn MathMLElement::set_onloadeddata(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onloadeddata = value }

///|
pub extern "js" fn MathMLElement::get_onloadedmetadata(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onloadedmetadata

///|
pub extern "js" fn MathMLElement::set_onloadedmetadata(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onloadedmetadata = value }

///|
pub extern "js" fn MathMLElement::get_onloadstart(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onloadstart

///|
pub extern "js" fn MathMLElement::set_onloadstart(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onloadstart = value }

///|
pub extern "js" fn MathMLElement::get_onmousedown(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onmousedown

///|
pub extern "js" fn MathMLElement::set_onmousedown(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmousedown = value }

///|
pub extern "js" fn MathMLElement::get_onmouseenter(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onmouseenter

///|
pub extern "js" fn MathMLElement::set_onmouseenter(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmouseenter = value }

///|
pub extern "js" fn MathMLElement::get_onmouseleave(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onmouseleave

///|
pub extern "js" fn MathMLElement::set_onmouseleave(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmouseleave = value }

///|
pub extern "js" fn MathMLElement::get_onmousemove(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onmousemove

///|
pub extern "js" fn MathMLElement::set_onmousemove(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmousemove = value }

///|
pub extern "js" fn MathMLElement::get_onmouseout(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onmouseout

///|
pub extern "js" fn MathMLElement::set_onmouseout(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmouseout = value }

///|
pub extern "js" fn MathMLElement::get_onmouseover(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onmouseover

///|
pub extern "js" fn MathMLElement::set_onmouseover(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmouseover = value }

///|
pub extern "js" fn MathMLElement::get_onmouseup(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onmouseup

///|
pub extern "js" fn MathMLElement::set_onmouseup(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmouseup = value }

///|
pub extern "js" fn MathMLElement::get_onpaste(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onpaste

///|
pub extern "js" fn MathMLElement::set_onpaste(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpaste = value }

///|
pub extern "js" fn MathMLElement::get_onpause(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onpause

///|
pub extern "js" fn MathMLElement::set_onpause(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpause = value }

///|
pub extern "js" fn MathMLElement::get_onplay(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onplay

///|
pub extern "js" fn MathMLElement::set_onplay(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onplay = value }

///|
pub extern "js" fn MathMLElement::get_onplaying(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onplaying

///|
pub extern "js" fn MathMLElement::set_onplaying(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onplaying = value }

///|
pub extern "js" fn MathMLElement::get_onprogress(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onprogress

///|
pub extern "js" fn MathMLElement::set_onprogress(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onprogress = value }

///|
pub extern "js" fn MathMLElement::get_onratechange(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onratechange

///|
pub extern "js" fn MathMLElement::set_onratechange(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onratechange = value }

///|
pub extern "js" fn MathMLElement::get_onreset(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onreset

///|
pub extern "js" fn MathMLElement::set_onreset(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onreset = value }

///|
pub extern "js" fn MathMLElement::get_onresize(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onresize

///|
pub extern "js" fn MathMLElement::set_onresize(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onresize = value }

///|
pub extern "js" fn MathMLElement::get_onscroll(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onscroll

///|
pub extern "js" fn MathMLElement::set_onscroll(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onscroll = value }

///|
pub extern "js" fn MathMLElement::get_onscrollend(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onscrollend

///|
pub extern "js" fn MathMLElement::set_onscrollend(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onscrollend = value }

///|
pub extern "js" fn MathMLElement::get_onsecuritypolicyviolation(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onsecuritypolicyviolation

///|
pub extern "js" fn MathMLElement::set_onsecuritypolicyviolation(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsecuritypolicyviolation = value }

///|
pub extern "js" fn MathMLElement::get_onseeked(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onseeked

///|
pub extern "js" fn MathMLElement::set_onseeked(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onseeked = value }

///|
pub extern "js" fn MathMLElement::get_onseeking(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onseeking

///|
pub extern "js" fn MathMLElement::set_onseeking(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onseeking = value }

///|
pub extern "js" fn MathMLElement::get_onselect(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onselect

///|
pub extern "js" fn MathMLElement::set_onselect(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onselect = value }

///|
pub extern "js" fn MathMLElement::get_onslotchange(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onslotchange

///|
pub extern "js" fn MathMLElement::set_onslotchange(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onslotchange = value }

///|
pub extern "js" fn MathMLElement::get_onstalled(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onstalled

///|
pub extern "js" fn MathMLElement::set_onstalled(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onstalled = value }

///|
pub extern "js" fn MathMLElement::get_onsubmit(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onsubmit

///|
pub extern "js" fn MathMLElement::set_onsubmit(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsubmit = value }

///|
pub extern "js" fn MathMLElement::get_onsuspend(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onsuspend

///|
pub extern "js" fn MathMLElement::set_onsuspend(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsuspend = value }

///|
pub extern "js" fn MathMLElement::get_ontimeupdate(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.ontimeupdate

///|
pub extern "js" fn MathMLElement::set_ontimeupdate(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontimeupdate = value }

///|
pub extern "js" fn MathMLElement::get_ontoggle(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.ontoggle

///|
pub extern "js" fn MathMLElement::set_ontoggle(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontoggle = value }

///|
pub extern "js" fn MathMLElement::get_onvolumechange(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onvolumechange

///|
pub extern "js" fn MathMLElement::set_onvolumechange(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onvolumechange = value }

///|
pub extern "js" fn MathMLElement::get_onwaiting(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onwaiting

///|
pub extern "js" fn MathMLElement::set_onwaiting(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onwaiting = value }

///|
pub extern "js" fn MathMLElement::get_onwebkitanimationend(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onwebkitanimationend

///|
pub extern "js" fn MathMLElement::set_onwebkitanimationend(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onwebkitanimationend = value }

///|
pub extern "js" fn MathMLElement::get_onwebkitanimationiteration(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onwebkitanimationiteration

///|
pub extern "js" fn MathMLElement::set_onwebkitanimationiteration(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onwebkitanimationiteration = value }

///|
pub extern "js" fn MathMLElement::get_onwebkitanimationstart(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onwebkitanimationstart

///|
pub extern "js" fn MathMLElement::set_onwebkitanimationstart(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onwebkitanimationstart = value }

///|
pub extern "js" fn MathMLElement::get_onwebkittransitionend(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onwebkittransitionend

///|
pub extern "js" fn MathMLElement::set_onwebkittransitionend(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onwebkittransitionend = value }

///|
pub extern "js" fn MathMLElement::get_onwheel(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onwheel

///|
pub extern "js" fn MathMLElement::set_onwheel(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onwheel = value }

///|
pub extern "js" fn MathMLElement::get_onpointerover(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onpointerover

///|
pub extern "js" fn MathMLElement::set_onpointerover(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerover = value }

///|
pub extern "js" fn MathMLElement::get_onpointerenter(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onpointerenter

///|
pub extern "js" fn MathMLElement::set_onpointerenter(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerenter = value }

///|
pub extern "js" fn MathMLElement::get_onpointerdown(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onpointerdown

///|
pub extern "js" fn MathMLElement::set_onpointerdown(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerdown = value }

///|
pub extern "js" fn MathMLElement::get_onpointermove(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onpointermove

///|
pub extern "js" fn MathMLElement::set_onpointermove(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointermove = value }

///|
pub extern "js" fn MathMLElement::get_onpointerrawupdate(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onpointerrawupdate

///|
pub extern "js" fn MathMLElement::set_onpointerrawupdate(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerrawupdate = value }

///|
pub extern "js" fn MathMLElement::get_onpointerup(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onpointerup

///|
pub extern "js" fn MathMLElement::set_onpointerup(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerup = value }

///|
pub extern "js" fn MathMLElement::get_onpointercancel(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onpointercancel

///|
pub extern "js" fn MathMLElement::set_onpointercancel(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointercancel = value }

///|
pub extern "js" fn MathMLElement::get_onpointerout(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onpointerout

///|
pub extern "js" fn MathMLElement::set_onpointerout(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerout = value }

///|
pub extern "js" fn MathMLElement::get_onpointerleave(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onpointerleave

///|
pub extern "js" fn MathMLElement::set_onpointerleave(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerleave = value }

///|
pub extern "js" fn MathMLElement::get_ongotpointercapture(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.ongotpointercapture

///|
pub extern "js" fn MathMLElement::set_ongotpointercapture(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ongotpointercapture = value }

///|
pub extern "js" fn MathMLElement::get_onlostpointercapture(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onlostpointercapture

///|
pub extern "js" fn MathMLElement::set_onlostpointercapture(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onlostpointercapture = value }

///|
pub extern "js" fn MathMLElement::get_onselectstart(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onselectstart

///|
pub extern "js" fn MathMLElement::set_onselectstart(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onselectstart = value }

///|
pub extern "js" fn MathMLElement::get_onselectionchange(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onselectionchange

///|
pub extern "js" fn MathMLElement::set_onselectionchange(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onselectionchange = value }

///|
pub extern "js" fn MathMLElement::get_ontouchstart(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.ontouchstart

///|
pub extern "js" fn MathMLElement::set_ontouchstart(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontouchstart = value }

///|
pub extern "js" fn MathMLElement::get_ontouchend(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.ontouchend

///|
pub extern "js" fn MathMLElement::set_ontouchend(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontouchend = value }

///|
pub extern "js" fn MathMLElement::get_ontouchmove(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.ontouchmove

///|
pub extern "js" fn MathMLElement::set_ontouchmove(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontouchmove = value }

///|
pub extern "js" fn MathMLElement::get_ontouchcancel(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.ontouchcancel

///|
pub extern "js" fn MathMLElement::set_ontouchcancel(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontouchcancel = value }

///|
pub extern "js" fn MathMLElement::get_onbeforexrselect(
  self : MathMLElement,
) -> EventHandler =
  #| (self) => self.onbeforexrselect

///|
pub extern "js" fn MathMLElement::set_onbeforexrselect(
  self : MathMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbeforexrselect = value }

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
pub extern "js" fn MathMLElement::focus_with_options(
  self : MathMLElement,
  options : FocusOptions,
) -> Unit =
  #| (self, options) => self.focus(options)

///|
pub extern "js" fn MathMLElement::blur(self : MathMLElement) -> Unit =
  #| (self) => self.blur()
