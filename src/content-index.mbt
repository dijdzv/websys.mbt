// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/content-index

///|
/// ContentCategory enum
pub(all) enum ContentCategory {
  Empty
  Homepage
  Article
  Video
  Audio
}

///|
/// Convert to string value
pub fn ContentCategory::to_string(self : ContentCategory) -> String {
  match self {
    ContentCategory::Empty => ""
    ContentCategory::Homepage => "homepage"
    ContentCategory::Article => "article"
    ContentCategory::Video => "video"
    ContentCategory::Audio => "audio"
  }
}

///|
/// Parse from string value
pub fn ContentCategory::from_string(s : String) -> ContentCategory? {
  match s {
    "" => Some(ContentCategory::Empty)
    "homepage" => Some(ContentCategory::Homepage)
    "article" => Some(ContentCategory::Article)
    "video" => Some(ContentCategory::Video)
    "audio" => Some(ContentCategory::Audio)
    _ => None
  }
}

///|
/// ContentDescription dictionary
pub struct ContentDescription {
  id : String
  title : String
  description : String
  category : ContentCategory?
  icons : Array[ImageResource]?
  url : String
}

///|
/// Create a new ContentDescription with default values
pub fn ContentDescription::default() -> ContentDescription {
  ContentDescription::{
    id: "",
    title: "",
    description: "",
    category: None,
    icons: None,
    url: "",
  }
}

///|
/// Convert to JsValue
pub extern "js" fn ContentDescription::to_js(
  self : ContentDescription,
) -> JsValue =
  #| (self) => ({
  #|   id: self.id,
  #|   title: self.title,
  #|   description: self.description,
  #|   category: ['', 'homepage', 'article', 'video', 'audio'][self.category],
  #|   icons: self.icons,
  #|   url: self.url
  #| })

///|
/// ContentIndexEventInit dictionary
pub struct ContentIndexEventInit {
  id : String
}

///|
/// Create a new ContentIndexEventInit with default values
pub fn ContentIndexEventInit::default() -> ContentIndexEventInit {
  ContentIndexEventInit::{ id: "" }
}

///|
/// Convert to JsValue
pub extern "js" fn ContentIndexEventInit::to_js(
  self : ContentIndexEventInit,
) -> JsValue =
  #| (self) => ({
  #|   id: self.id
  #| })

///|
/// ContentIndex interface
pub type ContentIndex

///|
pub extern "js" fn ContentIndex::to_js_value(self : ContentIndex) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ContentIndex (unchecked)
pub extern "js" fn ContentIndex::from_js_value(v : JsValue) -> ContentIndex =
  #| (v) => v

///|
/// Safely cast JsValue to ContentIndex (checked with instanceof)
pub extern "js" fn ContentIndex::from_js_value_opt(
  v : JsValue,
) -> ContentIndex? =
  #| (v) => (v instanceof ContentIndex) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ContentIndex (checked with instanceof)
pub extern "js" fn JsValue::as_content_index(self : JsValue) -> ContentIndex? =
  #| (self) => (self instanceof ContentIndex) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ContentIndex (unchecked)
pub extern "js" fn JsValue::to_content_index(self : JsValue) -> ContentIndex =
  #| (self) => self

///|
pub extern "js" fn ContentIndex::add(
  self : ContentIndex,
  description : ContentDescription,
) -> Promise[Unit] =
  #| (self, description) => self.add(description)

///|
pub extern "js" fn ContentIndex::delete(
  self : ContentIndex,
  id : String,
) -> Promise[Unit] =
  #| (self, id) => self.delete(id)

///|
pub extern "js" fn ContentIndex::get_all(
  self : ContentIndex,
) -> Promise[Array[ContentDescription]] =
  #| (self) => self.getAll()

///|
/// ContentIndexEvent interface
pub type ContentIndexEvent

///|
pub extern "js" fn ContentIndexEvent::to_js_value(
  self : ContentIndexEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ContentIndexEvent (unchecked)
pub extern "js" fn ContentIndexEvent::from_js_value(
  v : JsValue,
) -> ContentIndexEvent =
  #| (v) => v

///|
/// Safely cast JsValue to ContentIndexEvent (checked with instanceof)
pub extern "js" fn ContentIndexEvent::from_js_value_opt(
  v : JsValue,
) -> ContentIndexEvent? =
  #| (v) => (v instanceof ContentIndexEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ContentIndexEvent (checked with instanceof)
pub extern "js" fn JsValue::as_content_index_event(
  self : JsValue,
) -> ContentIndexEvent? =
  #| (self) => (self instanceof ContentIndexEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ContentIndexEvent (unchecked)
pub extern "js" fn JsValue::to_content_index_event(
  self : JsValue,
) -> ContentIndexEvent =
  #| (self) => self

///|
pub extern "js" fn ContentIndexEvent::to_extendable_event(
  self : ContentIndexEvent,
) -> ExtendableEvent =
  #| (self) => self

///|
pub extern "js" fn ContentIndexEvent::to_event(
  self : ContentIndexEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn ContentIndexEvent::new(
  type_ : String,
  init_ : ContentIndexEventInit,
) -> ContentIndexEvent =
  #| (type_, init_) => new ContentIndexEvent(type_, init_)

///|
pub extern "js" fn ContentIndexEvent::get_id(
  self : ContentIndexEvent,
) -> String =
  #| (self) => self.id
