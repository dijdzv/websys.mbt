// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/clipboard-apis

///|
/// ClipboardItemData typedef
pub type ClipboardItemData = Promise[JsValue]

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

/// Convert to string value
pub fn PresentationStyle::to_string(self : PresentationStyle) -> String {
  match self {
    Unspecified => "unspecified"
    Inline => "inline"
    Attachment => "attachment"
  }
}

/// Parse from string value
pub fn PresentationStyle::from_string(s : String) -> PresentationStyle? {
  match s {
    "unspecified" => Some(Unspecified)
    "inline" => Some(Inline)
    "attachment" => Some(Attachment)
    _ => None
  }
}

///|
/// ClipboardEventInit dictionary
pub struct ClipboardEventInit {
  clipboardData : DataTransfer??
}

/// Create a new ClipboardEventInit with default values
pub fn ClipboardEventInit::default() -> ClipboardEventInit {
  ClipboardEventInit::{
    clipboardData: None,
  }
}

/// Convert to JsValue
pub extern "js" fn ClipboardEventInit::to_js(self : ClipboardEventInit) -> JsValue =
  #| (self) => ({
  #|   clipboardData: self.clipboardData
  #| })

///|
/// ClipboardChangeEventInit dictionary
pub struct ClipboardChangeEventInit {
  types : Array[String]?
  changeId : JsValue?
}

/// Create a new ClipboardChangeEventInit with default values
pub fn ClipboardChangeEventInit::default() -> ClipboardChangeEventInit {
  ClipboardChangeEventInit::{
    types: None,
    changeId: None,
  }
}

/// Convert to JsValue
pub extern "js" fn ClipboardChangeEventInit::to_js(self : ClipboardChangeEventInit) -> JsValue =
  #| (self) => ({
  #|   types: self.types,
  #|   changeId: self.changeId
  #| })

///|
/// ClipboardItemOptions dictionary
pub struct ClipboardItemOptions {
  presentationStyle : PresentationStyle?
}

/// Create a new ClipboardItemOptions with default values
pub fn ClipboardItemOptions::default() -> ClipboardItemOptions {
  ClipboardItemOptions::{
    presentationStyle: None,
  }
}

/// Convert to JsValue
pub extern "js" fn ClipboardItemOptions::to_js(self : ClipboardItemOptions) -> JsValue =
  #| (self) => ({
  #|   presentationStyle: self.presentationStyle
  #| })

///|
/// ClipboardUnsanitizedFormats dictionary
pub struct ClipboardUnsanitizedFormats {
  unsanitized : Array[String]?
}

/// Create a new ClipboardUnsanitizedFormats with default values
pub fn ClipboardUnsanitizedFormats::default() -> ClipboardUnsanitizedFormats {
  ClipboardUnsanitizedFormats::{
    unsanitized: None,
  }
}

/// Convert to JsValue
pub extern "js" fn ClipboardUnsanitizedFormats::to_js(self : ClipboardUnsanitizedFormats) -> JsValue =
  #| (self) => ({
  #|   unsanitized: self.unsanitized
  #| })

///|
/// ClipboardPermissionDescriptor dictionary
pub struct ClipboardPermissionDescriptor {
  allowWithoutGesture : Bool?
}

/// Create a new ClipboardPermissionDescriptor with default values
pub fn ClipboardPermissionDescriptor::default() -> ClipboardPermissionDescriptor {
  ClipboardPermissionDescriptor::{
    allowWithoutGesture: None,
  }
}

/// Convert to JsValue
pub extern "js" fn ClipboardPermissionDescriptor::to_js(self : ClipboardPermissionDescriptor) -> JsValue =
  #| (self) => ({
  #|   allowWithoutGesture: self.allowWithoutGesture
  #| })

///|
/// ClipboardEvent interface
pub type ClipboardEvent

pub extern "js" fn ClipboardEvent::to_js_value(self : ClipboardEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn ClipboardEvent::new(type_ : String, event_init_dict : ClipboardEventInit) -> ClipboardEvent =
  #| (type_, event_init_dict) => new ClipboardEvent(type_, event_init_dict)

pub extern "js" fn ClipboardEvent::get_clipboard_data(self : ClipboardEvent) -> DataTransfer? =
  #| (self) => self.clipboardData

///|
/// ClipboardChangeEvent interface
pub type ClipboardChangeEvent

pub extern "js" fn ClipboardChangeEvent::to_js_value(self : ClipboardChangeEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn ClipboardChangeEvent::new(type_ : String, event_init_dict : ClipboardChangeEventInit) -> ClipboardChangeEvent =
  #| (type_, event_init_dict) => new ClipboardChangeEvent(type_, event_init_dict)

pub extern "js" fn ClipboardChangeEvent::get_types(self : ClipboardChangeEvent) -> JsValue =
  #| (self) => self.types

pub extern "js" fn ClipboardChangeEvent::get_change_id(self : ClipboardChangeEvent) -> JsValue =
  #| (self) => self.changeId

///|
/// ClipboardItem interface
pub type ClipboardItem

pub extern "js" fn ClipboardItem::to_js_value(self : ClipboardItem) -> JsValue =
  #| (self) => self

pub extern "js" fn ClipboardItem::new(items : JsValue, options : ClipboardItemOptions) -> ClipboardItem =
  #| (items, options) => new ClipboardItem(items, options)

pub extern "js" fn ClipboardItem::get_presentation_style(self : ClipboardItem) -> PresentationStyle =
  #| (self) => self.presentationStyle

pub extern "js" fn ClipboardItem::get_types(self : ClipboardItem) -> JsValue =
  #| (self) => self.types

pub extern "js" fn ClipboardItem::get_type(self : ClipboardItem, type_ : String) -> Promise[Blob] =
  #| (self, type_) => self.getType(type_)

pub extern "js" fn ClipboardItem::supports(type_ : String) -> Bool =
  #| (type_) => ClipboardItem.supports(type_)

///|
/// Clipboard interface
pub type Clipboard

pub extern "js" fn Clipboard::to_js_value(self : Clipboard) -> JsValue =
  #| (self) => self

pub extern "js" fn Clipboard::read(self : Clipboard) -> Promise[ClipboardItems] =
  #| (self) => self.read()

pub extern "js" fn Clipboard::read_with_formats(self : Clipboard, formats : ClipboardUnsanitizedFormats) -> Promise[ClipboardItems] =
  #| (self, formats) => self.read(formats)

pub extern "js" fn Clipboard::read_text(self : Clipboard) -> Promise[String] =
  #| (self) => self.readText()

pub extern "js" fn Clipboard::write(self : Clipboard, data : ClipboardItems) -> Promise[Unit] =
  #| (self, data) => self.write(data)

pub extern "js" fn Clipboard::write_text(self : Clipboard, data : String) -> Promise[Unit] =
  #| (self, data) => self.writeText(data)

