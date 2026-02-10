// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/ua-client-hints

///|
/// NavigatorUABrandVersion dictionary
pub(all) struct NavigatorUABrandVersion {
  brand : String?
  version : String?
}

///|
/// Create a new NavigatorUABrandVersion with default values
pub fn NavigatorUABrandVersion::default() -> NavigatorUABrandVersion {
  NavigatorUABrandVersion::{ brand: None, version: None }
}

///|
extern "js" fn NavigatorUABrandVersion::to_js_ffi(
  self : NavigatorUABrandVersion,
) -> JsValue =
  #| (self) => ({
  #|   brand: self.brand,
  #|   version: self.version
  #| })

///|
/// Convert to JsValue
pub fn NavigatorUABrandVersion::to_js(
  self : NavigatorUABrandVersion,
) -> JsValue {
  NavigatorUABrandVersion::to_js_ffi(self)
}

///|
extern "js" fn NavigatorUABrandVersion::from_js_ffi(
  value : JsValue,
) -> NavigatorUABrandVersion =
  #| (v) => ({
  #|   brand: v.brand,
  #|   version: v.version
  #| })

///|
/// Convert from JsValue
pub fn NavigatorUABrandVersion::from_js(
  value : JsValue,
) -> NavigatorUABrandVersion {
  NavigatorUABrandVersion::from_js_ffi(value)
}

///|
/// UADataValues dictionary
pub(all) struct UADataValues {
  architecture : String?
  bitness : String?
  brands : Array[NavigatorUABrandVersion]?
  formFactors : Array[String]?
  fullVersionList : Array[NavigatorUABrandVersion]?
  model : String?
  mobile : Bool?
  platform : String?
  platformVersion : String?
  uaFullVersion : String?
  wow64 : Bool?
}

///|
/// Create a new UADataValues with default values
pub fn UADataValues::default() -> UADataValues {
  UADataValues::{
    architecture: None,
    bitness: None,
    brands: None,
    formFactors: None,
    fullVersionList: None,
    model: None,
    mobile: None,
    platform: None,
    platformVersion: None,
    uaFullVersion: None,
    wow64: None,
  }
}

///|
extern "js" fn UADataValues::to_js_ffi(self : UADataValues) -> JsValue =
  #| (self) => ({
  #|   architecture: self.architecture,
  #|   bitness: self.bitness,
  #|   brands: ((() => { const v = self.brands; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   formFactors: ((() => { const v = self.formFactors; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   fullVersionList: ((() => { const v = self.fullVersionList; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   model: self.model,
  #|   mobile: (self.mobile === -1 ? undefined : self.mobile),
  #|   platform: self.platform,
  #|   platformVersion: self.platformVersion,
  #|   uaFullVersion: self.uaFullVersion,
  #|   wow64: (self.wow64 === -1 ? undefined : self.wow64)
  #| })

///|
/// Convert to JsValue
pub fn UADataValues::to_js(self : UADataValues) -> JsValue {
  UADataValues::to_js_ffi(self)
}

///|
extern "js" fn UADataValues::from_js_ffi(value : JsValue) -> UADataValues =
  #| (v) => ({
  #|   architecture: v.architecture,
  #|   bitness: v.bitness,
  #|   brands: (v.brands === undefined ? { $tag: 0 } : { $tag: 1, _0: v.brands }),
  #|   formFactors: (v.formFactors === undefined ? { $tag: 0 } : { $tag: 1, _0: v.formFactors }),
  #|   fullVersionList: (v.fullVersionList === undefined ? { $tag: 0 } : { $tag: 1, _0: v.fullVersionList }),
  #|   model: v.model,
  #|   mobile: (v.mobile === undefined ? -1 : v.mobile),
  #|   platform: v.platform,
  #|   platformVersion: v.platformVersion,
  #|   uaFullVersion: v.uaFullVersion,
  #|   wow64: (v.wow64 === undefined ? -1 : v.wow64)
  #| })

///|
/// Convert from JsValue
pub fn UADataValues::from_js(value : JsValue) -> UADataValues {
  UADataValues::from_js_ffi(value)
}

///|
/// UALowEntropyJSON dictionary
pub(all) struct UALowEntropyJSON {
  brands : Array[NavigatorUABrandVersion]?
  mobile : Bool?
  platform : String?
}

///|
/// Create a new UALowEntropyJSON with default values
pub fn UALowEntropyJSON::default() -> UALowEntropyJSON {
  UALowEntropyJSON::{ brands: None, mobile: None, platform: None }
}

///|
extern "js" fn UALowEntropyJSON::to_js_ffi(self : UALowEntropyJSON) -> JsValue =
  #| (self) => ({
  #|   brands: ((() => { const v = self.brands; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   mobile: (self.mobile === -1 ? undefined : self.mobile),
  #|   platform: self.platform
  #| })

///|
/// Convert to JsValue
pub fn UALowEntropyJSON::to_js(self : UALowEntropyJSON) -> JsValue {
  UALowEntropyJSON::to_js_ffi(self)
}

///|
extern "js" fn UALowEntropyJSON::from_js_ffi(
  value : JsValue,
) -> UALowEntropyJSON =
  #| (v) => ({
  #|   brands: (v.brands === undefined ? { $tag: 0 } : { $tag: 1, _0: v.brands }),
  #|   mobile: (v.mobile === undefined ? -1 : v.mobile),
  #|   platform: v.platform
  #| })

///|
/// Convert from JsValue
pub fn UALowEntropyJSON::from_js(value : JsValue) -> UALowEntropyJSON {
  UALowEntropyJSON::from_js_ffi(value)
}

///|
/// NavigatorUAData interface
pub type NavigatorUAData

///|
pub extern "js" fn NavigatorUAData::to_js_value(
  self : NavigatorUAData,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to NavigatorUAData (unchecked)
pub extern "js" fn NavigatorUAData::from_js_value(
  v : JsValue,
) -> NavigatorUAData =
  #| (v) => v

///|
/// Safely cast JsValue to NavigatorUAData (checked with instanceof)
pub extern "js" fn NavigatorUAData::from_js_value_opt(
  v : JsValue,
) -> NavigatorUAData? =
  #| (v) => (v instanceof NavigatorUAData) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to NavigatorUAData (checked with instanceof)
pub extern "js" fn JsValue::as_navigator_ua_data(
  self : JsValue,
) -> NavigatorUAData? =
  #| (self) => (self instanceof NavigatorUAData) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to NavigatorUAData (unchecked)
pub extern "js" fn JsValue::to_navigator_ua_data(
  self : JsValue,
) -> NavigatorUAData =
  #| (self) => self

///|
pub extern "js" fn NavigatorUAData::get_brands(
  self : NavigatorUAData,
) -> JsValue =
  #| (self) => self.brands

///|
pub extern "js" fn NavigatorUAData::get_mobile(self : NavigatorUAData) -> Bool =
  #| (self) => self.mobile

///|
pub extern "js" fn NavigatorUAData::get_platform(
  self : NavigatorUAData,
) -> String =
  #| (self) => self.platform

///|
pub extern "js" fn NavigatorUAData::get_high_entropy_values(
  self : NavigatorUAData,
  hints : Array[String],
) -> Promise[UADataValues] =
  #| (self, hints) => self.getHighEntropyValues(hints).then(v => ({
  #|   architecture: v.architecture,
  #|   bitness: v.bitness,
  #|   brands: (v.brands === undefined ? { $tag: 0 } : { $tag: 1, _0: v.brands }),
  #|   formFactors: (v.formFactors === undefined ? { $tag: 0 } : { $tag: 1, _0: v.formFactors }),
  #|   fullVersionList: (v.fullVersionList === undefined ? { $tag: 0 } : { $tag: 1, _0: v.fullVersionList }),
  #|   model: v.model,
  #|   mobile: (v.mobile === undefined ? -1 : v.mobile),
  #|   platform: v.platform,
  #|   platformVersion: v.platformVersion,
  #|   uaFullVersion: v.uaFullVersion,
  #|   wow64: (v.wow64 === undefined ? -1 : v.wow64)
  #| }))

///|
pub extern "js" fn NavigatorUAData::to_json(
  self : NavigatorUAData,
) -> UALowEntropyJSON =
  #| (self) => self.toJSON()
