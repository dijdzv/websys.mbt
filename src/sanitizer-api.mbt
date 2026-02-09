// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/sanitizer-api

///|
/// SanitizerElement typedef
pub type SanitizerElement

///|
pub extern "js" fn SanitizerElement::to_js_value(
  self : SanitizerElement,
) -> JsValue =
  #| (self) => self

///|
/// Create SanitizerElement from String
pub extern "js" fn SanitizerElement::from_string(
  v : String,
) -> SanitizerElement =
  #| (v) => v

///|
/// Create SanitizerElement from SanitizerElementNamespace
pub extern "js" fn SanitizerElement::from_sanitizer_element_namespace(
  v : SanitizerElementNamespace,
) -> SanitizerElement =
  #| (v) => v

///|
/// Check if this SanitizerElement is String
pub extern "js" fn SanitizerElement::is_string(self : SanitizerElement) -> Bool =
  #| (self) => typeof self === 'string'

///|
/// Check if this SanitizerElement is SanitizerElementNamespace
pub extern "js" fn SanitizerElement::is_sanitizer_element_namespace(
  self : SanitizerElement,
) -> Bool =
  #| (self) => typeof self === 'object' && self !== null

///|
/// Try to get SanitizerElement as String
pub extern "js" fn SanitizerElement::as_string(
  self : SanitizerElement,
) -> String? =
  #| (self) => (typeof self === 'string') ? self : undefined

///|
/// Try to get SanitizerElement as SanitizerElementNamespace
pub extern "js" fn SanitizerElement::as_sanitizer_element_namespace(
  self : SanitizerElement,
) -> SanitizerElementNamespace? =
  #| (self) => (typeof self === 'object' && self !== null) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// SanitizerElementWithAttributes typedef
pub type SanitizerElementWithAttributes

///|
pub extern "js" fn SanitizerElementWithAttributes::to_js_value(
  self : SanitizerElementWithAttributes,
) -> JsValue =
  #| (self) => self

///|
/// Create SanitizerElementWithAttributes from String
pub extern "js" fn SanitizerElementWithAttributes::from_string(
  v : String,
) -> SanitizerElementWithAttributes =
  #| (v) => v

///|
/// Create SanitizerElementWithAttributes from SanitizerElementNamespaceWithAttributes
pub extern "js" fn SanitizerElementWithAttributes::from_sanitizer_element_namespace_with_attributes(
  v : SanitizerElementNamespaceWithAttributes,
) -> SanitizerElementWithAttributes =
  #| (v) => v

///|
/// Check if this SanitizerElementWithAttributes is String
pub extern "js" fn SanitizerElementWithAttributes::is_string(
  self : SanitizerElementWithAttributes,
) -> Bool =
  #| (self) => typeof self === 'string'

///|
/// Check if this SanitizerElementWithAttributes is SanitizerElementNamespaceWithAttributes
pub extern "js" fn SanitizerElementWithAttributes::is_sanitizer_element_namespace_with_attributes(
  self : SanitizerElementWithAttributes,
) -> Bool =
  #| (self) => typeof self === 'object' && self !== null

///|
/// Try to get SanitizerElementWithAttributes as String
pub extern "js" fn SanitizerElementWithAttributes::as_string(
  self : SanitizerElementWithAttributes,
) -> String? =
  #| (self) => (typeof self === 'string') ? self : undefined

///|
/// Try to get SanitizerElementWithAttributes as SanitizerElementNamespaceWithAttributes
pub extern "js" fn SanitizerElementWithAttributes::as_sanitizer_element_namespace_with_attributes(
  self : SanitizerElementWithAttributes,
) -> SanitizerElementNamespaceWithAttributes? =
  #| (self) => (typeof self === 'object' && self !== null) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// SanitizerAttribute typedef
pub type SanitizerAttribute

///|
pub extern "js" fn SanitizerAttribute::to_js_value(
  self : SanitizerAttribute,
) -> JsValue =
  #| (self) => self

///|
/// Create SanitizerAttribute from String
pub extern "js" fn SanitizerAttribute::from_string(
  v : String,
) -> SanitizerAttribute =
  #| (v) => v

///|
/// Create SanitizerAttribute from SanitizerAttributeNamespace
pub extern "js" fn SanitizerAttribute::from_sanitizer_attribute_namespace(
  v : SanitizerAttributeNamespace,
) -> SanitizerAttribute =
  #| (v) => v

///|
/// Check if this SanitizerAttribute is String
pub extern "js" fn SanitizerAttribute::is_string(
  self : SanitizerAttribute,
) -> Bool =
  #| (self) => typeof self === 'string'

///|
/// Check if this SanitizerAttribute is SanitizerAttributeNamespace
pub extern "js" fn SanitizerAttribute::is_sanitizer_attribute_namespace(
  self : SanitizerAttribute,
) -> Bool =
  #| (self) => typeof self === 'object' && self !== null

///|
/// Try to get SanitizerAttribute as String
pub extern "js" fn SanitizerAttribute::as_string(
  self : SanitizerAttribute,
) -> String? =
  #| (self) => (typeof self === 'string') ? self : undefined

///|
/// Try to get SanitizerAttribute as SanitizerAttributeNamespace
pub extern "js" fn SanitizerAttribute::as_sanitizer_attribute_namespace(
  self : SanitizerAttribute,
) -> SanitizerAttributeNamespace? =
  #| (self) => (typeof self === 'object' && self !== null) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// SanitizerPresets enum
pub(all) enum SanitizerPresets {
  Default
}

///|
/// Convert to string value
pub fn SanitizerPresets::to_string(self : SanitizerPresets) -> String {
  match self {
    SanitizerPresets::Default => "default"
  }
}

///|
/// Parse from string value
pub fn SanitizerPresets::from_string(s : String) -> SanitizerPresets? {
  match s {
    "default" => Some(SanitizerPresets::Default)
    _ => None
  }
}

///|
/// SetHTMLOptions dictionary
pub(all) struct SetHTMLOptions {
  sanitizer : SanitizerOrSanitizerConfigOrSanitizerPresets?
}

///|
/// Create a new SetHTMLOptions with default values
pub fn SetHTMLOptions::default() -> SetHTMLOptions {
  SetHTMLOptions::{ sanitizer: None }
}

///|
extern "js" fn SetHTMLOptions::to_js_ffi(self : SetHTMLOptions) -> JsValue =
  #| (self) => ({
  #|   sanitizer: ((() => { const v = self.sanitizer; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn SetHTMLOptions::to_js(self : SetHTMLOptions) -> JsValue {
  SetHTMLOptions::to_js_ffi(self)
}

///|
/// SetHTMLUnsafeOptions dictionary
pub(all) struct SetHTMLUnsafeOptions {
  sanitizer : SanitizerOrSanitizerConfigOrSanitizerPresets?
}

///|
/// Create a new SetHTMLUnsafeOptions with default values
pub fn SetHTMLUnsafeOptions::default() -> SetHTMLUnsafeOptions {
  SetHTMLUnsafeOptions::{ sanitizer: None }
}

///|
extern "js" fn SetHTMLUnsafeOptions::to_js_ffi(
  self : SetHTMLUnsafeOptions,
) -> JsValue =
  #| (self) => ({
  #|   sanitizer: ((() => { const v = self.sanitizer; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn SetHTMLUnsafeOptions::to_js(self : SetHTMLUnsafeOptions) -> JsValue {
  SetHTMLUnsafeOptions::to_js_ffi(self)
}

///|
/// SanitizerElementNamespace dictionary
pub(all) struct SanitizerElementNamespace {
  name : String
  namespace_ : Nullable[String]
}

///|
/// Create a new SanitizerElementNamespace with default values
pub fn SanitizerElementNamespace::default() -> SanitizerElementNamespace {
  SanitizerElementNamespace::{ name: "", namespace_: Nullable::Undefined }
}

///|
extern "js" fn SanitizerElementNamespace::to_js_ffi(
  self : SanitizerElementNamespace,
) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   namespace: ((() => { const v = self.namespace_; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// Convert to JsValue
pub fn SanitizerElementNamespace::to_js(
  self : SanitizerElementNamespace,
) -> JsValue {
  SanitizerElementNamespace::to_js_ffi(self)
}

///|
/// SanitizerElementNamespaceWithAttributes dictionary
pub(all) struct SanitizerElementNamespaceWithAttributes {
  name : String
  namespace_ : Nullable[String]
  attributes : Array[SanitizerAttribute]?
  removeAttributes : Array[SanitizerAttribute]?
}

///|
/// Create a new SanitizerElementNamespaceWithAttributes with default values
pub fn SanitizerElementNamespaceWithAttributes::default() -> SanitizerElementNamespaceWithAttributes {
  SanitizerElementNamespaceWithAttributes::{
    name: "",
    namespace_: Nullable::Undefined,
    attributes: None,
    removeAttributes: None,
  }
}

///|
extern "js" fn SanitizerElementNamespaceWithAttributes::to_js_ffi(
  self : SanitizerElementNamespaceWithAttributes,
) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   namespace: ((() => { const v = self.namespace_; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   attributes: ((() => { const v = self.attributes; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   removeAttributes: ((() => { const v = self.removeAttributes; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn SanitizerElementNamespaceWithAttributes::to_js(
  self : SanitizerElementNamespaceWithAttributes,
) -> JsValue {
  SanitizerElementNamespaceWithAttributes::to_js_ffi(self)
}

///|
/// SanitizerAttributeNamespace dictionary
pub(all) struct SanitizerAttributeNamespace {
  name : String
  namespace_ : Nullable[String]
}

///|
/// Create a new SanitizerAttributeNamespace with default values
pub fn SanitizerAttributeNamespace::default() -> SanitizerAttributeNamespace {
  SanitizerAttributeNamespace::{ name: "", namespace_: Nullable::Undefined }
}

///|
extern "js" fn SanitizerAttributeNamespace::to_js_ffi(
  self : SanitizerAttributeNamespace,
) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   namespace: ((() => { const v = self.namespace_; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// Convert to JsValue
pub fn SanitizerAttributeNamespace::to_js(
  self : SanitizerAttributeNamespace,
) -> JsValue {
  SanitizerAttributeNamespace::to_js_ffi(self)
}

///|
/// SanitizerConfig dictionary
pub(all) struct SanitizerConfig {
  elements : Array[SanitizerElementWithAttributes]?
  removeElements : Array[SanitizerElement]?
  replaceWithChildrenElements : Array[SanitizerElement]?
  attributes : Array[SanitizerAttribute]?
  removeAttributes : Array[SanitizerAttribute]?
  comments : Bool?
  dataAttributes : Bool?
}

///|
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

///|
extern "js" fn SanitizerConfig::to_js_ffi(self : SanitizerConfig) -> JsValue =
  #| (self) => ({
  #|   elements: ((() => { const v = self.elements; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   removeElements: ((() => { const v = self.removeElements; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   replaceWithChildrenElements: ((() => { const v = self.replaceWithChildrenElements; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   attributes: ((() => { const v = self.attributes; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   removeAttributes: ((() => { const v = self.removeAttributes; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   comments: (self.comments === -1 ? undefined : self.comments),
  #|   dataAttributes: (self.dataAttributes === -1 ? undefined : self.dataAttributes)
  #| })

///|
/// Convert to JsValue
pub fn SanitizerConfig::to_js(self : SanitizerConfig) -> JsValue {
  SanitizerConfig::to_js_ffi(self)
}

///|
/// Sanitizer interface
pub type Sanitizer

///|
pub extern "js" fn Sanitizer::to_js_value(self : Sanitizer) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Sanitizer (unchecked)
pub extern "js" fn Sanitizer::from_js_value(v : JsValue) -> Sanitizer =
  #| (v) => v

///|
/// Safely cast JsValue to Sanitizer (checked with instanceof)
pub extern "js" fn Sanitizer::from_js_value_opt(v : JsValue) -> Sanitizer? =
  #| (v) => (v instanceof Sanitizer) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Sanitizer (checked with instanceof)
pub extern "js" fn JsValue::as_sanitizer(self : JsValue) -> Sanitizer? =
  #| (self) => (self instanceof Sanitizer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Sanitizer (unchecked)
pub extern "js" fn JsValue::to_sanitizer(self : JsValue) -> Sanitizer =
  #| (self) => self

///|
pub extern "js" fn Sanitizer::new() -> Sanitizer =
  #| () => new Sanitizer()

///|
pub extern "js" fn Sanitizer::new_with_configuration(
  configuration : SanitizerConfigOrSanitizerPresets,
) -> Sanitizer =
  #| (configuration) => new Sanitizer(configuration)

///|
pub extern "js" fn Sanitizer::get(self : Sanitizer) -> SanitizerConfig =
  #| (self) => self.get()

///|
pub extern "js" fn Sanitizer::allow_element(
  self : Sanitizer,
  element : SanitizerElementWithAttributes,
) -> Bool =
  #| (self, element) => self.allowElement(element)

///|
pub extern "js" fn Sanitizer::remove_element(
  self : Sanitizer,
  element : SanitizerElement,
) -> Bool =
  #| (self, element) => self.removeElement(element)

///|
pub extern "js" fn Sanitizer::replace_element_with_children(
  self : Sanitizer,
  element : SanitizerElement,
) -> Bool =
  #| (self, element) => self.replaceElementWithChildren(element)

///|
pub extern "js" fn Sanitizer::allow_attribute(
  self : Sanitizer,
  attribute : SanitizerAttribute,
) -> Bool =
  #| (self, attribute) => self.allowAttribute(attribute)

///|
pub extern "js" fn Sanitizer::remove_attribute(
  self : Sanitizer,
  attribute : SanitizerAttribute,
) -> Bool =
  #| (self, attribute) => self.removeAttribute(attribute)

///|
pub extern "js" fn Sanitizer::set_comments(
  self : Sanitizer,
  allow : Bool,
) -> Bool =
  #| (self, allow) => self.setComments(allow)

///|
pub extern "js" fn Sanitizer::set_data_attributes(
  self : Sanitizer,
  allow : Bool,
) -> Bool =
  #| (self, allow) => self.setDataAttributes(allow)

///|
pub extern "js" fn Sanitizer::remove_unsafe(self : Sanitizer) -> Bool =
  #| (self) => self.removeUnsafe()

///|
pub extern "js" fn Sanitizer::allow_element_with_string(
  self : Sanitizer,
  element : String,
) -> Bool =
  #| (self, element) => self.allowElement(element)

///|
pub extern "js" fn Sanitizer::allow_element_with_sanitizer_element_namespace_with_attributes(
  self : Sanitizer,
  element : SanitizerElementNamespaceWithAttributes,
) -> Bool =
  #| (self, element) => self.allowElement(element)

///|
pub extern "js" fn Sanitizer::remove_element_with_string(
  self : Sanitizer,
  element : String,
) -> Bool =
  #| (self, element) => self.removeElement(element)

///|
pub extern "js" fn Sanitizer::remove_element_with_sanitizer_element_namespace(
  self : Sanitizer,
  element : SanitizerElementNamespace,
) -> Bool =
  #| (self, element) => self.removeElement(element)

///|
pub extern "js" fn Sanitizer::replace_element_with_children_with_string(
  self : Sanitizer,
  element : String,
) -> Bool =
  #| (self, element) => self.replaceElementWithChildren(element)

///|
pub extern "js" fn Sanitizer::replace_element_with_children_with_sanitizer_element_namespace(
  self : Sanitizer,
  element : SanitizerElementNamespace,
) -> Bool =
  #| (self, element) => self.replaceElementWithChildren(element)

///|
pub extern "js" fn Sanitizer::allow_attribute_with_string(
  self : Sanitizer,
  attribute : String,
) -> Bool =
  #| (self, attribute) => self.allowAttribute(attribute)

///|
pub extern "js" fn Sanitizer::allow_attribute_with_sanitizer_attribute_namespace(
  self : Sanitizer,
  attribute : SanitizerAttributeNamespace,
) -> Bool =
  #| (self, attribute) => self.allowAttribute(attribute)

///|
pub extern "js" fn Sanitizer::remove_attribute_with_string(
  self : Sanitizer,
  attribute : String,
) -> Bool =
  #| (self, attribute) => self.removeAttribute(attribute)

///|
pub extern "js" fn Sanitizer::remove_attribute_with_sanitizer_attribute_namespace(
  self : Sanitizer,
  attribute : SanitizerAttributeNamespace,
) -> Bool =
  #| (self, attribute) => self.removeAttribute(attribute)
