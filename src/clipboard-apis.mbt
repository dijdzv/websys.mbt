// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/clipboard-apis

///|
/// StringOrBlob typedef
pub type StringOrBlob

///|
pub extern "js" fn StringOrBlob::to_js_value(self : StringOrBlob) -> JsValue =
  #| (self) => self

///|
/// Create StringOrBlob from String
pub extern "js" fn StringOrBlob::from_string(v : String) -> StringOrBlob =
  #| (v) => v

///|
/// Create StringOrBlob from Blob
pub extern "js" fn StringOrBlob::from_blob(v : Blob) -> StringOrBlob =
  #| (v) => v

///|
/// Check if this StringOrBlob is String
pub extern "js" fn StringOrBlob::is_string(self : StringOrBlob) -> Bool =
  #| (self) => typeof self === 'string'

///|
/// Check if this StringOrBlob is Blob
pub extern "js" fn StringOrBlob::is_blob(self : StringOrBlob) -> Bool =
  #| (self) => self instanceof Blob

///|
/// Try to get StringOrBlob as String
pub extern "js" fn StringOrBlob::as_string(self : StringOrBlob) -> String? =
  #| (self) => (typeof self === 'string') ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get StringOrBlob as Blob
pub extern "js" fn StringOrBlob::as_blob(self : StringOrBlob) -> Blob? =
  #| (self) => (self instanceof Blob) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// ClipboardItemData typedef
pub type ClipboardItemData = Promise[StringOrBlob]

///|
/// ClipboardItems typedef
pub type ClipboardItems = Array[ClipboardItem]

///|
/// PresentationStyle enum
pub(all) enum PresentationStyle {
  Unspecified
  Inline
  Attachment
}

///|
/// Convert to string value
pub fn PresentationStyle::to_string(self : PresentationStyle) -> String {
  match self {
    PresentationStyle::Unspecified => "unspecified"
    PresentationStyle::Inline => "inline"
    PresentationStyle::Attachment => "attachment"
  }
}

///|
/// Parse from string value
pub fn PresentationStyle::from_string(s : String) -> PresentationStyle? {
  match s {
    "unspecified" => Some(PresentationStyle::Unspecified)
    "inline" => Some(PresentationStyle::Inline)
    "attachment" => Some(PresentationStyle::Attachment)
    _ => None
  }
}

///|
/// ClipboardEventInit dictionary
pub struct ClipboardEventInit {
  clipboardData : Nullable[DataTransfer]
}

///|
/// Create a new ClipboardEventInit with default values
pub fn ClipboardEventInit::default() -> ClipboardEventInit {
  ClipboardEventInit::{ clipboardData: Nullable::Undefined }
}

///|
/// Convert to JsValue
pub extern "js" fn ClipboardEventInit::to_js(
  self : ClipboardEventInit,
) -> JsValue =
  #| (self) => ({
  #|   clipboardData: ((() => { const v = self.clipboardData; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// ClipboardChangeEventInit dictionary
pub struct ClipboardChangeEventInit {
  types : Array[String]?
  changeId : JsValue?
}

///|
/// Create a new ClipboardChangeEventInit with default values
pub fn ClipboardChangeEventInit::default() -> ClipboardChangeEventInit {
  ClipboardChangeEventInit::{ types: None, changeId: None }
}

///|
/// Convert to JsValue
pub extern "js" fn ClipboardChangeEventInit::to_js(
  self : ClipboardChangeEventInit,
) -> JsValue =
  #| (self) => ({
  #|   types: self.types,
  #|   changeId: self.changeId
  #| })

///|
/// ClipboardItemOptions dictionary
pub struct ClipboardItemOptions {
  presentationStyle : PresentationStyle?
}

///|
/// Create a new ClipboardItemOptions with default values
pub fn ClipboardItemOptions::default() -> ClipboardItemOptions {
  ClipboardItemOptions::{ presentationStyle: None }
}

///|
/// Convert to JsValue
pub extern "js" fn ClipboardItemOptions::to_js(
  self : ClipboardItemOptions,
) -> JsValue =
  #| (self) => ({
  #|   presentationStyle: ['unspecified', 'inline', 'attachment'][self.presentationStyle]
  #| })

///|
/// ClipboardUnsanitizedFormats dictionary
pub struct ClipboardUnsanitizedFormats {
  unsanitized : Array[String]?
}

///|
/// Create a new ClipboardUnsanitizedFormats with default values
pub fn ClipboardUnsanitizedFormats::default() -> ClipboardUnsanitizedFormats {
  ClipboardUnsanitizedFormats::{ unsanitized: None }
}

///|
/// Convert to JsValue
pub extern "js" fn ClipboardUnsanitizedFormats::to_js(
  self : ClipboardUnsanitizedFormats,
) -> JsValue =
  #| (self) => ({
  #|   unsanitized: self.unsanitized
  #| })

///|
/// ClipboardPermissionDescriptor dictionary
pub struct ClipboardPermissionDescriptor {
  allowWithoutGesture : Bool?
}

///|
/// Create a new ClipboardPermissionDescriptor with default values
pub fn ClipboardPermissionDescriptor::default() -> ClipboardPermissionDescriptor {
  ClipboardPermissionDescriptor::{ allowWithoutGesture: None }
}

///|
/// Convert to JsValue
pub extern "js" fn ClipboardPermissionDescriptor::to_js(
  self : ClipboardPermissionDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   allowWithoutGesture: self.allowWithoutGesture
  #| })

///|
/// ClipboardEvent interface
pub type ClipboardEvent

///|
pub extern "js" fn ClipboardEvent::to_js_value(
  self : ClipboardEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ClipboardEvent (unchecked)
pub extern "js" fn ClipboardEvent::from_js_value(v : JsValue) -> ClipboardEvent =
  #| (v) => v

///|
/// Safely cast JsValue to ClipboardEvent (checked with instanceof)
pub extern "js" fn ClipboardEvent::from_js_value_opt(
  v : JsValue,
) -> ClipboardEvent? =
  #| (v) => (v instanceof ClipboardEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ClipboardEvent (checked with instanceof)
pub extern "js" fn JsValue::as_clipboard_event(
  self : JsValue,
) -> ClipboardEvent? =
  #| (self) => (self instanceof ClipboardEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ClipboardEvent (unchecked)
pub extern "js" fn JsValue::to_clipboard_event(
  self : JsValue,
) -> ClipboardEvent =
  #| (self) => self

///|
pub extern "js" fn ClipboardEvent::to_event(self : ClipboardEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn ClipboardEvent::new(
  type_ : String,
  event_init_dict : ClipboardEventInit,
) -> ClipboardEvent =
  #| (type_, event_init_dict) => new ClipboardEvent(type_, event_init_dict)

///|
pub extern "js" fn ClipboardEvent::get_clipboard_data(
  self : ClipboardEvent,
) -> DataTransfer? =
  #| (self) => { const v = self.clipboardData; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
/// ClipboardChangeEvent interface
pub type ClipboardChangeEvent

///|
pub extern "js" fn ClipboardChangeEvent::to_js_value(
  self : ClipboardChangeEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ClipboardChangeEvent (unchecked)
pub extern "js" fn ClipboardChangeEvent::from_js_value(
  v : JsValue,
) -> ClipboardChangeEvent =
  #| (v) => v

///|
/// Safely cast JsValue to ClipboardChangeEvent (checked with instanceof)
pub extern "js" fn ClipboardChangeEvent::from_js_value_opt(
  v : JsValue,
) -> ClipboardChangeEvent? =
  #| (v) => (v instanceof ClipboardChangeEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ClipboardChangeEvent (checked with instanceof)
pub extern "js" fn JsValue::as_clipboard_change_event(
  self : JsValue,
) -> ClipboardChangeEvent? =
  #| (self) => (self instanceof ClipboardChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ClipboardChangeEvent (unchecked)
pub extern "js" fn JsValue::to_clipboard_change_event(
  self : JsValue,
) -> ClipboardChangeEvent =
  #| (self) => self

///|
pub extern "js" fn ClipboardChangeEvent::to_event(
  self : ClipboardChangeEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn ClipboardChangeEvent::new(
  type_ : String,
  event_init_dict : ClipboardChangeEventInit,
) -> ClipboardChangeEvent =
  #| (type_, event_init_dict) => new ClipboardChangeEvent(type_, event_init_dict)

///|
pub extern "js" fn ClipboardChangeEvent::get_types(
  self : ClipboardChangeEvent,
) -> JsValue =
  #| (self) => self.types

///|
pub extern "js" fn ClipboardChangeEvent::get_change_id(
  self : ClipboardChangeEvent,
) -> JsValue =
  #| (self) => self.changeId

///|
/// ClipboardItem interface
pub type ClipboardItem

///|
pub extern "js" fn ClipboardItem::to_js_value(self : ClipboardItem) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ClipboardItem (unchecked)
pub extern "js" fn ClipboardItem::from_js_value(v : JsValue) -> ClipboardItem =
  #| (v) => v

///|
/// Safely cast JsValue to ClipboardItem (checked with instanceof)
pub extern "js" fn ClipboardItem::from_js_value_opt(
  v : JsValue,
) -> ClipboardItem? =
  #| (v) => (v instanceof ClipboardItem) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ClipboardItem (checked with instanceof)
pub extern "js" fn JsValue::as_clipboard_item(self : JsValue) -> ClipboardItem? =
  #| (self) => (self instanceof ClipboardItem) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ClipboardItem (unchecked)
pub extern "js" fn JsValue::to_clipboard_item(self : JsValue) -> ClipboardItem =
  #| (self) => self

///|
pub extern "js" fn ClipboardItem::new(
  items : JsValue,
  options : ClipboardItemOptions,
) -> ClipboardItem =
  #| (items, options) => new ClipboardItem(items, options)

///|
pub extern "js" fn ClipboardItem::get_presentation_style(
  self : ClipboardItem,
) -> PresentationStyle =
  #| (self) => self.presentationStyle

///|
pub extern "js" fn ClipboardItem::get_types(self : ClipboardItem) -> JsValue =
  #| (self) => self.types

///|
pub extern "js" fn ClipboardItem::get_type(
  self : ClipboardItem,
  type_ : String,
) -> Promise[Blob] =
  #| (self, type_) => self.getType(type_)

///|
pub extern "js" fn ClipboardItem::supports(type_ : String) -> Bool =
  #| (type_) => ClipboardItem.supports(type_)

///|
/// Clipboard interface
pub type Clipboard

///|
pub extern "js" fn Clipboard::to_js_value(self : Clipboard) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Clipboard (unchecked)
pub extern "js" fn Clipboard::from_js_value(v : JsValue) -> Clipboard =
  #| (v) => v

///|
/// Safely cast JsValue to Clipboard (checked with instanceof)
pub extern "js" fn Clipboard::from_js_value_opt(v : JsValue) -> Clipboard? =
  #| (v) => (v instanceof Clipboard) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Clipboard (checked with instanceof)
pub extern "js" fn JsValue::as_clipboard(self : JsValue) -> Clipboard? =
  #| (self) => (self instanceof Clipboard) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Clipboard (unchecked)
pub extern "js" fn JsValue::to_clipboard(self : JsValue) -> Clipboard =
  #| (self) => self

///|
pub extern "js" fn Clipboard::to_event_target(self : Clipboard) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn Clipboard::read(self : Clipboard) -> Promise[ClipboardItems] =
  #| (self) => self.read()

///|
pub extern "js" fn Clipboard::read_with_formats(
  self : Clipboard,
  formats : ClipboardUnsanitizedFormats,
) -> Promise[ClipboardItems] =
  #| (self, formats) => self.read(formats)

///|
pub extern "js" fn Clipboard::read_text(self : Clipboard) -> Promise[String] =
  #| (self) => self.readText()

///|
pub extern "js" fn Clipboard::write(
  self : Clipboard,
  data : ClipboardItems,
) -> Promise[Unit] =
  #| (self, data) => self.write(data)

///|
pub extern "js" fn Clipboard::write_text(
  self : Clipboard,
  data : String,
) -> Promise[Unit] =
  #| (self, data) => self.writeText(data)
