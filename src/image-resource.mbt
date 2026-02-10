// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/image-resource

///|
/// ImageResource dictionary
pub(all) struct ImageResource {
  src : String
  sizes : String?
  type_ : String?
  label : String?
}

///|
/// Create a new ImageResource with default values
pub fn ImageResource::default() -> ImageResource {
  ImageResource::{ src: "", sizes: None, type_: None, label: None }
}

///|
extern "js" fn ImageResource::to_js_ffi(self : ImageResource) -> JsValue =
  #| (self) => ({
  #|   src: self.src,
  #|   sizes: self.sizes,
  #|   type: self.type_,
  #|   label: self.label
  #| })

///|
/// Convert to JsValue
pub fn ImageResource::to_js(self : ImageResource) -> JsValue {
  ImageResource::to_js_ffi(self)
}

///|
extern "js" fn ImageResource::from_js_ffi(value : JsValue) -> ImageResource =
  #| (v) => ({
  #|   src: v.src,
  #|   sizes: v.sizes,
  #|   type_: v.type,
  #|   label: v.label
  #| })

///|
/// Convert from JsValue
pub fn ImageResource::from_js(value : JsValue) -> ImageResource {
  ImageResource::from_js_ffi(value)
}
