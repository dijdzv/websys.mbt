// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/sanitizer-api

///|
/// SanitizerElement typedef
pub type SanitizerElement = JsValue

///|
/// SanitizerElementWithAttributes typedef
pub type SanitizerElementWithAttributes = JsValue

///|
/// SanitizerAttribute typedef
pub type SanitizerAttribute = JsValue

///|
/// SanitizerPresets enum
pub(all) enum SanitizerPresets {
  Default
}

/// Convert to string value
pub fn SanitizerPresets::to_string(self : SanitizerPresets) -> String {
  match self {
    Default => "default"
  }
}

/// Parse from string value
pub fn SanitizerPresets::from_string(s : String) -> SanitizerPresets? {
  match s {
    "default" => Some(Default)
    _ => None
  }
}

///|
/// SetHTMLOptions dictionary
pub struct SetHTMLOptions {
  sanitizer : JsValue?
}

/// Create a new SetHTMLOptions with default values
pub fn SetHTMLOptions::default() -> SetHTMLOptions {
  SetHTMLOptions::{
    sanitizer: None,
  }
}

/// Convert to JsValue
pub extern "js" fn SetHTMLOptions::to_js(self : SetHTMLOptions) -> JsValue =
  #| (self) => ({
  #|   sanitizer: self.sanitizer
  #| })

///|
/// SetHTMLUnsafeOptions dictionary
pub struct SetHTMLUnsafeOptions {
  sanitizer : JsValue?
}

/// Create a new SetHTMLUnsafeOptions with default values
pub fn SetHTMLUnsafeOptions::default() -> SetHTMLUnsafeOptions {
  SetHTMLUnsafeOptions::{
    sanitizer: None,
  }
}

/// Convert to JsValue
pub extern "js" fn SetHTMLUnsafeOptions::to_js(self : SetHTMLUnsafeOptions) -> JsValue =
  #| (self) => ({
  #|   sanitizer: self.sanitizer
  #| })

///|
/// SanitizerElementNamespace dictionary
pub struct SanitizerElementNamespace {
  name : String
  namespace_ : String??
}

/// Create a new SanitizerElementNamespace with default values
pub fn SanitizerElementNamespace::default() -> SanitizerElementNamespace {
  SanitizerElementNamespace::{
    name: "",
    namespace_: None,
  }
}

/// Convert to JsValue
pub extern "js" fn SanitizerElementNamespace::to_js(self : SanitizerElementNamespace) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   namespace: self.namespace_
  #| })

///|
/// SanitizerElementNamespaceWithAttributes dictionary
pub struct SanitizerElementNamespaceWithAttributes {
  name : String
  namespace_ : String??
  attributes : JsValue?
  removeAttributes : JsValue?
}

/// Create a new SanitizerElementNamespaceWithAttributes with default values
pub fn SanitizerElementNamespaceWithAttributes::default() -> SanitizerElementNamespaceWithAttributes {
  SanitizerElementNamespaceWithAttributes::{
    name: "",
    namespace_: None,
    attributes: None,
    removeAttributes: None,
  }
}

/// Convert to JsValue
pub extern "js" fn SanitizerElementNamespaceWithAttributes::to_js(self : SanitizerElementNamespaceWithAttributes) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   namespace: self.namespace_,
  #|   attributes: self.attributes,
  #|   removeAttributes: self.removeAttributes
  #| })

///|
/// SanitizerAttributeNamespace dictionary
pub struct SanitizerAttributeNamespace {
  name : String
  namespace_ : String??
}

/// Create a new SanitizerAttributeNamespace with default values
pub fn SanitizerAttributeNamespace::default() -> SanitizerAttributeNamespace {
  SanitizerAttributeNamespace::{
    name: "",
    namespace_: None,
  }
}

/// Convert to JsValue
pub extern "js" fn SanitizerAttributeNamespace::to_js(self : SanitizerAttributeNamespace) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   namespace: self.namespace_
  #| })

///|
/// SanitizerConfig dictionary
pub struct SanitizerConfig {
  elements : JsValue?
  removeElements : JsValue?
  replaceWithChildrenElements : JsValue?
  attributes : JsValue?
  removeAttributes : JsValue?
  comments : Bool?
  dataAttributes : Bool?
}

/// Create a new SanitizerConfig with default values
pub fn SanitizerConfig::default() -> SanitizerConfig {
  SanitizerConfig::{
    elements: None,
    removeElements: None,
    replaceWithChildrenElements: None,
    attributes: None,
    removeAttributes: None,
    comments: None,
    dataAttributes: None,
  }
}

/// Convert to JsValue
pub extern "js" fn SanitizerConfig::to_js(self : SanitizerConfig) -> JsValue =
  #| (self) => ({
  #|   elements: self.elements,
  #|   removeElements: self.removeElements,
  #|   replaceWithChildrenElements: self.replaceWithChildrenElements,
  #|   attributes: self.attributes,
  #|   removeAttributes: self.removeAttributes,
  #|   comments: self.comments,
  #|   dataAttributes: self.dataAttributes
  #| })

///|
/// Sanitizer interface
pub type Sanitizer

pub extern "js" fn Sanitizer::to_js_value(self : Sanitizer) -> JsValue =
  #| (self) => self

pub extern "js" fn Sanitizer::new(configuration : JsValue) -> Sanitizer =
  #| (configuration) => new Sanitizer(configuration)

pub extern "js" fn Sanitizer::get(self : Sanitizer) -> SanitizerConfig =
  #| (self) => self.get()

pub extern "js" fn Sanitizer::allow_element(self : Sanitizer, element : SanitizerElementWithAttributes) -> Bool =
  #| (self, element) => self.allowElement(element)

pub extern "js" fn Sanitizer::remove_element(self : Sanitizer, element : SanitizerElement) -> Bool =
  #| (self, element) => self.removeElement(element)

pub extern "js" fn Sanitizer::replace_element_with_children(self : Sanitizer, element : SanitizerElement) -> Bool =
  #| (self, element) => self.replaceElementWithChildren(element)

pub extern "js" fn Sanitizer::allow_attribute(self : Sanitizer, attribute : SanitizerAttribute) -> Bool =
  #| (self, attribute) => self.allowAttribute(attribute)

pub extern "js" fn Sanitizer::remove_attribute(self : Sanitizer, attribute : SanitizerAttribute) -> Bool =
  #| (self, attribute) => self.removeAttribute(attribute)

pub extern "js" fn Sanitizer::set_comments(self : Sanitizer, allow : Bool) -> Bool =
  #| (self, allow) => self.setComments(allow)

pub extern "js" fn Sanitizer::set_data_attributes(self : Sanitizer, allow : Bool) -> Bool =
  #| (self, allow) => self.setDataAttributes(allow)

pub extern "js" fn Sanitizer::remove_unsafe(self : Sanitizer) -> Bool =
  #| (self) => self.removeUnsafe()

