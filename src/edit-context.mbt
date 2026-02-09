// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/edit-context

///|
/// UnderlineStyle enum
pub(all) enum UnderlineStyle {
  None
  Solid
  Dotted
  Dashed
  Wavy
}

///|
/// Convert to string value
pub fn UnderlineStyle::to_string(self : UnderlineStyle) -> String {
  match self {
    UnderlineStyle::None => "none"
    UnderlineStyle::Solid => "solid"
    UnderlineStyle::Dotted => "dotted"
    UnderlineStyle::Dashed => "dashed"
    UnderlineStyle::Wavy => "wavy"
  }
}

///|
/// Parse from string value
pub fn UnderlineStyle::from_string(s : String) -> UnderlineStyle? {
  match s {
    "none" => Some(UnderlineStyle::None)
    "solid" => Some(UnderlineStyle::Solid)
    "dotted" => Some(UnderlineStyle::Dotted)
    "dashed" => Some(UnderlineStyle::Dashed)
    "wavy" => Some(UnderlineStyle::Wavy)
    _ => None
  }
}

///|
/// UnderlineThickness enum
pub(all) enum UnderlineThickness {
  None
  Thin
  Thick
}

///|
/// Convert to string value
pub fn UnderlineThickness::to_string(self : UnderlineThickness) -> String {
  match self {
    UnderlineThickness::None => "none"
    UnderlineThickness::Thin => "thin"
    UnderlineThickness::Thick => "thick"
  }
}

///|
/// Parse from string value
pub fn UnderlineThickness::from_string(s : String) -> UnderlineThickness? {
  match s {
    "none" => Some(UnderlineThickness::None)
    "thin" => Some(UnderlineThickness::Thin)
    "thick" => Some(UnderlineThickness::Thick)
    _ => None
  }
}

///|
/// EditContextInit dictionary
pub(all) struct EditContextInit {
  text : String?
  selectionStart : Int?
  selectionEnd : Int?
}

///|
/// Create a new EditContextInit with default values
pub fn EditContextInit::default() -> EditContextInit {
  EditContextInit::{ text: None, selectionStart: None, selectionEnd: None }
}

///|
extern "js" fn EditContextInit::to_js_ffi(self : EditContextInit) -> JsValue =
  #| (self) => ({
  #|   text: self.text,
  #|   selectionStart: self.selectionStart,
  #|   selectionEnd: self.selectionEnd
  #| })

///|
/// Convert to JsValue
pub fn EditContextInit::to_js(self : EditContextInit) -> JsValue {
  EditContextInit::to_js_ffi(self)
}

///|
/// TextUpdateEventInit dictionary
pub(all) struct TextUpdateEventInit {
  updateRangeStart : Int?
  updateRangeEnd : Int?
  text : String?
  selectionStart : Int?
  selectionEnd : Int?
  compositionStart : Int?
  compositionEnd : Int?
}

///|
/// Create a new TextUpdateEventInit with default values
pub fn TextUpdateEventInit::default() -> TextUpdateEventInit {
  TextUpdateEventInit::{
    updateRangeStart: None,
    updateRangeEnd: None,
    text: None,
    selectionStart: None,
    selectionEnd: None,
    compositionStart: None,
    compositionEnd: None,
  }
}

///|
extern "js" fn TextUpdateEventInit::to_js_ffi(
  self : TextUpdateEventInit,
) -> JsValue =
  #| (self) => ({
  #|   updateRangeStart: self.updateRangeStart,
  #|   updateRangeEnd: self.updateRangeEnd,
  #|   text: self.text,
  #|   selectionStart: self.selectionStart,
  #|   selectionEnd: self.selectionEnd,
  #|   compositionStart: self.compositionStart,
  #|   compositionEnd: self.compositionEnd
  #| })

///|
/// Convert to JsValue
pub fn TextUpdateEventInit::to_js(self : TextUpdateEventInit) -> JsValue {
  TextUpdateEventInit::to_js_ffi(self)
}

///|
/// TextFormatInit dictionary
pub(all) struct TextFormatInit {
  rangeStart : Int?
  rangeEnd : Int?
  underlineStyle : UnderlineStyle?
  underlineThickness : UnderlineThickness?
}

///|
/// Create a new TextFormatInit with default values
pub fn TextFormatInit::default() -> TextFormatInit {
  TextFormatInit::{
    rangeStart: None,
    rangeEnd: None,
    underlineStyle: None,
    underlineThickness: None,
  }
}

///|
extern "js" fn TextFormatInit::to_js_ffi(self : TextFormatInit) -> JsValue =
  #| (self) => ({
  #|   rangeStart: self.rangeStart,
  #|   rangeEnd: self.rangeEnd,
  #|   underlineStyle: ((() => { const v = self.underlineStyle; if (v === undefined) return undefined; return ['none', 'solid', 'dotted', 'dashed', 'wavy'][v]; })()),
  #|   underlineThickness: ((() => { const v = self.underlineThickness; if (v === undefined) return undefined; return ['none', 'thin', 'thick'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn TextFormatInit::to_js(self : TextFormatInit) -> JsValue {
  TextFormatInit::to_js_ffi(self)
}

///|
/// TextFormatUpdateEventInit dictionary
pub(all) struct TextFormatUpdateEventInit {
  textFormats : Array[TextFormat]?
}

///|
/// Create a new TextFormatUpdateEventInit with default values
pub fn TextFormatUpdateEventInit::default() -> TextFormatUpdateEventInit {
  TextFormatUpdateEventInit::{ textFormats: None }
}

///|
extern "js" fn TextFormatUpdateEventInit::to_js_ffi(
  self : TextFormatUpdateEventInit,
) -> JsValue =
  #| (self) => ({
  #|   textFormats: ((() => { const v = self.textFormats; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn TextFormatUpdateEventInit::to_js(
  self : TextFormatUpdateEventInit,
) -> JsValue {
  TextFormatUpdateEventInit::to_js_ffi(self)
}

///|
/// CharacterBoundsUpdateEventInit dictionary
pub(all) struct CharacterBoundsUpdateEventInit {
  rangeStart : Int?
  rangeEnd : Int?
}

///|
/// Create a new CharacterBoundsUpdateEventInit with default values
pub fn CharacterBoundsUpdateEventInit::default() -> CharacterBoundsUpdateEventInit {
  CharacterBoundsUpdateEventInit::{ rangeStart: None, rangeEnd: None }
}

///|
extern "js" fn CharacterBoundsUpdateEventInit::to_js_ffi(
  self : CharacterBoundsUpdateEventInit,
) -> JsValue =
  #| (self) => ({
  #|   rangeStart: self.rangeStart,
  #|   rangeEnd: self.rangeEnd
  #| })

///|
/// Convert to JsValue
pub fn CharacterBoundsUpdateEventInit::to_js(
  self : CharacterBoundsUpdateEventInit,
) -> JsValue {
  CharacterBoundsUpdateEventInit::to_js_ffi(self)
}

///|
/// EditContext interface
pub type EditContext

///|
pub extern "js" fn EditContext::to_js_value(self : EditContext) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to EditContext (unchecked)
pub extern "js" fn EditContext::from_js_value(v : JsValue) -> EditContext =
  #| (v) => v

///|
/// Safely cast JsValue to EditContext (checked with instanceof)
pub extern "js" fn EditContext::from_js_value_opt(v : JsValue) -> EditContext? =
  #| (v) => (v instanceof EditContext) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to EditContext (checked with instanceof)
pub extern "js" fn JsValue::as_edit_context(self : JsValue) -> EditContext? =
  #| (self) => (self instanceof EditContext) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to EditContext (unchecked)
pub extern "js" fn JsValue::to_edit_context(self : JsValue) -> EditContext =
  #| (self) => self

///|
pub extern "js" fn EditContext::to_event_target(
  self : EditContext,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn EditContext::new() -> EditContext =
  #| () => new EditContext()

///|
extern "js" fn EditContext::new_with_options_ffi(
  options : JsValue,
) -> EditContext =
  #| (options) => new EditContext(options)

///|
pub fn EditContext::new_with_options(options : EditContextInit) -> EditContext {
  EditContext::new_with_options_ffi(options.to_js())
}

///|
pub extern "js" fn EditContext::update_text(
  self : EditContext,
  range_start : Int,
  range_end : Int,
  text : String,
) -> Unit =
  #| (self, range_start, range_end, text) => self.updateText(range_start, range_end, text)

///|
pub extern "js" fn EditContext::update_selection(
  self : EditContext,
  start : Int,
  end : Int,
) -> Unit =
  #| (self, start, end) => self.updateSelection(start, end)

///|
pub extern "js" fn EditContext::update_control_bounds(
  self : EditContext,
  control_bounds : DOMRect,
) -> Unit =
  #| (self, control_bounds) => self.updateControlBounds(control_bounds)

///|
pub extern "js" fn EditContext::update_selection_bounds(
  self : EditContext,
  selection_bounds : DOMRect,
) -> Unit =
  #| (self, selection_bounds) => self.updateSelectionBounds(selection_bounds)

///|
pub extern "js" fn EditContext::update_character_bounds(
  self : EditContext,
  range_start : Int,
  character_bounds : Array[DOMRect],
) -> Unit =
  #| (self, range_start, character_bounds) => self.updateCharacterBounds(range_start, character_bounds)

///|
pub extern "js" fn EditContext::attached_elements(
  self : EditContext,
) -> Array[HTMLElement] =
  #| (self) => self.attachedElements()

///|
pub extern "js" fn EditContext::get_text(self : EditContext) -> String =
  #| (self) => self.text

///|
pub extern "js" fn EditContext::get_selection_start(self : EditContext) -> Int =
  #| (self) => self.selectionStart

///|
pub extern "js" fn EditContext::get_selection_end(self : EditContext) -> Int =
  #| (self) => self.selectionEnd

///|
pub extern "js" fn EditContext::get_character_bounds_range_start(
  self : EditContext,
) -> Int =
  #| (self) => self.characterBoundsRangeStart

///|
pub extern "js" fn EditContext::character_bounds(
  self : EditContext,
) -> Array[DOMRect] =
  #| (self) => self.characterBounds()

///|
pub extern "js" fn EditContext::get_ontextupdate(
  self : EditContext,
) -> EventHandler =
  #| (self) => self.ontextupdate

///|
pub extern "js" fn EditContext::set_ontextupdate(
  self : EditContext,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontextupdate = value }

///|
pub extern "js" fn EditContext::get_ontextformatupdate(
  self : EditContext,
) -> EventHandler =
  #| (self) => self.ontextformatupdate

///|
pub extern "js" fn EditContext::set_ontextformatupdate(
  self : EditContext,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontextformatupdate = value }

///|
pub extern "js" fn EditContext::get_oncharacterboundsupdate(
  self : EditContext,
) -> EventHandler =
  #| (self) => self.oncharacterboundsupdate

///|
pub extern "js" fn EditContext::set_oncharacterboundsupdate(
  self : EditContext,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncharacterboundsupdate = value }

///|
pub extern "js" fn EditContext::get_oncompositionstart(
  self : EditContext,
) -> EventHandler =
  #| (self) => self.oncompositionstart

///|
pub extern "js" fn EditContext::set_oncompositionstart(
  self : EditContext,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncompositionstart = value }

///|
pub extern "js" fn EditContext::get_oncompositionend(
  self : EditContext,
) -> EventHandler =
  #| (self) => self.oncompositionend

///|
pub extern "js" fn EditContext::set_oncompositionend(
  self : EditContext,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncompositionend = value }

///|
/// TextUpdateEvent interface
pub type TextUpdateEvent

///|
pub extern "js" fn TextUpdateEvent::to_js_value(
  self : TextUpdateEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to TextUpdateEvent (unchecked)
pub extern "js" fn TextUpdateEvent::from_js_value(
  v : JsValue,
) -> TextUpdateEvent =
  #| (v) => v

///|
/// Safely cast JsValue to TextUpdateEvent (checked with instanceof)
pub extern "js" fn TextUpdateEvent::from_js_value_opt(
  v : JsValue,
) -> TextUpdateEvent? =
  #| (v) => (v instanceof TextUpdateEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to TextUpdateEvent (checked with instanceof)
pub extern "js" fn JsValue::as_text_update_event(
  self : JsValue,
) -> TextUpdateEvent? =
  #| (self) => (self instanceof TextUpdateEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to TextUpdateEvent (unchecked)
pub extern "js" fn JsValue::to_text_update_event(
  self : JsValue,
) -> TextUpdateEvent =
  #| (self) => self

///|
pub extern "js" fn TextUpdateEvent::to_event(self : TextUpdateEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn TextUpdateEvent::new(type_ : String) -> TextUpdateEvent =
  #| (type_) => new TextUpdateEvent(type_)

///|
extern "js" fn TextUpdateEvent::new_with_options_ffi(
  type_ : String,
  options : JsValue,
) -> TextUpdateEvent =
  #| (type_, options) => new TextUpdateEvent(type_, options)

///|
pub fn TextUpdateEvent::new_with_options(
  type_ : String,
  options : TextUpdateEventInit,
) -> TextUpdateEvent {
  TextUpdateEvent::new_with_options_ffi(type_, options.to_js())
}

///|
pub extern "js" fn TextUpdateEvent::get_update_range_start(
  self : TextUpdateEvent,
) -> Int =
  #| (self) => self.updateRangeStart

///|
pub extern "js" fn TextUpdateEvent::get_update_range_end(
  self : TextUpdateEvent,
) -> Int =
  #| (self) => self.updateRangeEnd

///|
pub extern "js" fn TextUpdateEvent::get_text(self : TextUpdateEvent) -> String =
  #| (self) => self.text

///|
pub extern "js" fn TextUpdateEvent::get_selection_start(
  self : TextUpdateEvent,
) -> Int =
  #| (self) => self.selectionStart

///|
pub extern "js" fn TextUpdateEvent::get_selection_end(
  self : TextUpdateEvent,
) -> Int =
  #| (self) => self.selectionEnd

///|
/// TextFormat interface
pub type TextFormat

///|
pub extern "js" fn TextFormat::to_js_value(self : TextFormat) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to TextFormat (unchecked)
pub extern "js" fn TextFormat::from_js_value(v : JsValue) -> TextFormat =
  #| (v) => v

///|
/// Safely cast JsValue to TextFormat (checked with instanceof)
pub extern "js" fn TextFormat::from_js_value_opt(v : JsValue) -> TextFormat? =
  #| (v) => (v instanceof TextFormat) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to TextFormat (checked with instanceof)
pub extern "js" fn JsValue::as_text_format(self : JsValue) -> TextFormat? =
  #| (self) => (self instanceof TextFormat) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to TextFormat (unchecked)
pub extern "js" fn JsValue::to_text_format(self : JsValue) -> TextFormat =
  #| (self) => self

///|
pub extern "js" fn TextFormat::new() -> TextFormat =
  #| () => new TextFormat()

///|
extern "js" fn TextFormat::new_with_options_ffi(
  options : JsValue,
) -> TextFormat =
  #| (options) => new TextFormat(options)

///|
pub fn TextFormat::new_with_options(options : TextFormatInit) -> TextFormat {
  TextFormat::new_with_options_ffi(options.to_js())
}

///|
pub extern "js" fn TextFormat::get_range_start(self : TextFormat) -> Int =
  #| (self) => self.rangeStart

///|
pub extern "js" fn TextFormat::get_range_end(self : TextFormat) -> Int =
  #| (self) => self.rangeEnd

///|
pub extern "js" fn TextFormat::get_underline_style(
  self : TextFormat,
) -> UnderlineStyle =
  #| (self) => ['none', 'solid', 'dotted', 'dashed', 'wavy'].indexOf(self.underlineStyle)

///|
pub extern "js" fn TextFormat::get_underline_thickness(
  self : TextFormat,
) -> UnderlineThickness =
  #| (self) => ['none', 'thin', 'thick'].indexOf(self.underlineThickness)

///|
/// TextFormatUpdateEvent interface
pub type TextFormatUpdateEvent

///|
pub extern "js" fn TextFormatUpdateEvent::to_js_value(
  self : TextFormatUpdateEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to TextFormatUpdateEvent (unchecked)
pub extern "js" fn TextFormatUpdateEvent::from_js_value(
  v : JsValue,
) -> TextFormatUpdateEvent =
  #| (v) => v

///|
/// Safely cast JsValue to TextFormatUpdateEvent (checked with instanceof)
pub extern "js" fn TextFormatUpdateEvent::from_js_value_opt(
  v : JsValue,
) -> TextFormatUpdateEvent? =
  #| (v) => (v instanceof TextFormatUpdateEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to TextFormatUpdateEvent (checked with instanceof)
pub extern "js" fn JsValue::as_text_format_update_event(
  self : JsValue,
) -> TextFormatUpdateEvent? =
  #| (self) => (self instanceof TextFormatUpdateEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to TextFormatUpdateEvent (unchecked)
pub extern "js" fn JsValue::to_text_format_update_event(
  self : JsValue,
) -> TextFormatUpdateEvent =
  #| (self) => self

///|
pub extern "js" fn TextFormatUpdateEvent::to_event(
  self : TextFormatUpdateEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn TextFormatUpdateEvent::new(
  type_ : String,
) -> TextFormatUpdateEvent =
  #| (type_) => new TextFormatUpdateEvent(type_)

///|
extern "js" fn TextFormatUpdateEvent::new_with_options_ffi(
  type_ : String,
  options : JsValue,
) -> TextFormatUpdateEvent =
  #| (type_, options) => new TextFormatUpdateEvent(type_, options)

///|
pub fn TextFormatUpdateEvent::new_with_options(
  type_ : String,
  options : TextFormatUpdateEventInit,
) -> TextFormatUpdateEvent {
  TextFormatUpdateEvent::new_with_options_ffi(type_, options.to_js())
}

///|
pub extern "js" fn TextFormatUpdateEvent::get_text_formats(
  self : TextFormatUpdateEvent,
) -> Array[TextFormat] =
  #| (self) => self.getTextFormats()

///|
/// CharacterBoundsUpdateEvent interface
pub type CharacterBoundsUpdateEvent

///|
pub extern "js" fn CharacterBoundsUpdateEvent::to_js_value(
  self : CharacterBoundsUpdateEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CharacterBoundsUpdateEvent (unchecked)
pub extern "js" fn CharacterBoundsUpdateEvent::from_js_value(
  v : JsValue,
) -> CharacterBoundsUpdateEvent =
  #| (v) => v

///|
/// Safely cast JsValue to CharacterBoundsUpdateEvent (checked with instanceof)
pub extern "js" fn CharacterBoundsUpdateEvent::from_js_value_opt(
  v : JsValue,
) -> CharacterBoundsUpdateEvent? =
  #| (v) => (v instanceof CharacterBoundsUpdateEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CharacterBoundsUpdateEvent (checked with instanceof)
pub extern "js" fn JsValue::as_character_bounds_update_event(
  self : JsValue,
) -> CharacterBoundsUpdateEvent? =
  #| (self) => (self instanceof CharacterBoundsUpdateEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CharacterBoundsUpdateEvent (unchecked)
pub extern "js" fn JsValue::to_character_bounds_update_event(
  self : JsValue,
) -> CharacterBoundsUpdateEvent =
  #| (self) => self

///|
pub extern "js" fn CharacterBoundsUpdateEvent::to_event(
  self : CharacterBoundsUpdateEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn CharacterBoundsUpdateEvent::new(
  type_ : String,
) -> CharacterBoundsUpdateEvent =
  #| (type_) => new CharacterBoundsUpdateEvent(type_)

///|
extern "js" fn CharacterBoundsUpdateEvent::new_with_options_ffi(
  type_ : String,
  options : JsValue,
) -> CharacterBoundsUpdateEvent =
  #| (type_, options) => new CharacterBoundsUpdateEvent(type_, options)

///|
pub fn CharacterBoundsUpdateEvent::new_with_options(
  type_ : String,
  options : CharacterBoundsUpdateEventInit,
) -> CharacterBoundsUpdateEvent {
  CharacterBoundsUpdateEvent::new_with_options_ffi(type_, options.to_js())
}

///|
pub extern "js" fn CharacterBoundsUpdateEvent::get_range_start(
  self : CharacterBoundsUpdateEvent,
) -> Int =
  #| (self) => self.rangeStart

///|
pub extern "js" fn CharacterBoundsUpdateEvent::get_range_end(
  self : CharacterBoundsUpdateEvent,
) -> Int =
  #| (self) => self.rangeEnd
