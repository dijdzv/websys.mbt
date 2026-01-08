// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/ua-client-hints

///|
/// NavigatorUABrandVersion dictionary
pub struct NavigatorUABrandVersion {
  brand : String?
  version : String?
}

///|
/// Create a new NavigatorUABrandVersion with default values
pub fn NavigatorUABrandVersion::default() -> NavigatorUABrandVersion {
  NavigatorUABrandVersion::{ brand: None, version: None }
}

///|
/// Convert to JsValue
pub extern "js" fn NavigatorUABrandVersion::to_js(
  self : NavigatorUABrandVersion,
) -> JsValue =
  #| (self) => ({
  #|   brand: self.brand,
  #|   version: self.version
  #| })

///|
/// UADataValues dictionary
pub struct UADataValues {
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
/// Convert to JsValue
pub extern "js" fn UADataValues::to_js(self : UADataValues) -> JsValue =
  #| (self) => ({
  #|   architecture: self.architecture,
  #|   bitness: self.bitness,
  #|   brands: self.brands,
  #|   formFactors: self.formFactors,
  #|   fullVersionList: self.fullVersionList,
  #|   model: self.model,
  #|   mobile: self.mobile,
  #|   platform: self.platform,
  #|   platformVersion: self.platformVersion,
  #|   uaFullVersion: self.uaFullVersion,
  #|   wow64: self.wow64
  #| })

///|
/// UALowEntropyJSON dictionary
pub struct UALowEntropyJSON {
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
/// Convert to JsValue
pub extern "js" fn UALowEntropyJSON::to_js(self : UALowEntropyJSON) -> JsValue =
  #| (self) => ({
  #|   brands: self.brands,
  #|   mobile: self.mobile,
  #|   platform: self.platform
  #| })

///|
/// NavigatorUAData interface
pub type NavigatorUAData

///|
pub extern "js" fn NavigatorUAData::to_js_value(
  self : NavigatorUAData,
) -> JsValue =
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
  #| (self, hints) => self.getHighEntropyValues(hints)

///|
pub extern "js" fn NavigatorUAData::to_j_s_o_n(
  self : NavigatorUAData,
) -> UALowEntropyJSON =
  #| (self) => self.toJSON()
