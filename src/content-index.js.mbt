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

/// Convert to string value
pub fn ContentCategory::to_string(self : ContentCategory) -> String {
  match self {
    Empty => ""
    Homepage => "homepage"
    Article => "article"
    Video => "video"
    Audio => "audio"
  }
}

/// Parse from string value
pub fn ContentCategory::from_string(s : String) -> ContentCategory? {
  match s {
    "" => Some(Empty)
    "homepage" => Some(Homepage)
    "article" => Some(Article)
    "video" => Some(Video)
    "audio" => Some(Audio)
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
  icons : JsValue?
  url : String
}

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

/// Convert to JsValue
pub extern "js" fn ContentDescription::to_js(self : ContentDescription) -> JsValue =
  #| (self) => ({
  #|   id: self.id,
  #|   title: self.title,
  #|   description: self.description,
  #|   category: self.category,
  #|   icons: self.icons,
  #|   url: self.url
  #| })

///|
/// ContentIndexEventInit dictionary
pub struct ContentIndexEventInit {
  id : String
}

/// Create a new ContentIndexEventInit with default values
pub fn ContentIndexEventInit::default() -> ContentIndexEventInit {
  ContentIndexEventInit::{
    id: "",
  }
}

/// Convert to JsValue
pub extern "js" fn ContentIndexEventInit::to_js(self : ContentIndexEventInit) -> JsValue =
  #| (self) => ({
  #|   id: self.id
  #| })

///|
/// ContentIndex interface
pub type ContentIndex

pub extern "js" fn ContentIndex::to_js_value(self : ContentIndex) -> JsValue =
  #| (self) => self

pub extern "js" fn ContentIndex::add(self : ContentIndex, description : ContentDescription) -> JsValue =
  #| (self, description) => self.add(description)

pub extern "js" fn ContentIndex::delete(self : ContentIndex, id : String) -> JsValue =
  #| (self, id) => self.delete(id)

pub extern "js" fn ContentIndex::get_all(self : ContentIndex) -> JsValue =
  #| (self) => self.getAll()

///|
/// ContentIndexEvent interface
pub type ContentIndexEvent

pub extern "js" fn ContentIndexEvent::to_js_value(self : ContentIndexEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn ContentIndexEvent::new(type_ : String, init_ : ContentIndexEventInit) -> ContentIndexEvent =
  #| (type_, init_) => new ContentIndexEvent(type_, init_)

pub extern "js" fn ContentIndexEvent::get_id(self : ContentIndexEvent) -> String =
  #| (self) => self.id

