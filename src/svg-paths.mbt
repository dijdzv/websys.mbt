// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/svg-paths

///|
/// SVGPathDataSettings dictionary
pub struct SVGPathDataSettings {
  normalize : Bool?
}

/// Create a new SVGPathDataSettings with default values
pub fn SVGPathDataSettings::default() -> SVGPathDataSettings {
  SVGPathDataSettings::{
    normalize: None,
  }
}

/// Convert to JsValue
pub extern "js" fn SVGPathDataSettings::to_js(self : SVGPathDataSettings) -> JsValue =
  #| (self) => ({
  #|   normalize: self.normalize
  #| })

///|
/// SVGPathSegment interface
pub type SVGPathSegment

pub extern "js" fn SVGPathSegment::to_js_value(self : SVGPathSegment) -> JsValue =
  #| (self) => self

pub extern "js" fn SVGPathSegment::get_type(self : SVGPathSegment) -> String =
  #| (self) => self.type

pub extern "js" fn SVGPathSegment::set_type(self : SVGPathSegment, value : String) -> Unit =
  #| (self, value) => { self.type = value }

pub extern "js" fn SVGPathSegment::get_values(self : SVGPathSegment) -> JsValue =
  #| (self) => self.values

pub extern "js" fn SVGPathSegment::set_values(self : SVGPathSegment, value : JsValue) -> Unit =
  #| (self, value) => { self.values = value }

///|
/// SVGPathElement interface
pub type SVGPathElement

pub extern "js" fn SVGPathElement::to_js_value(self : SVGPathElement) -> JsValue =
  #| (self) => self

pub extern "js" fn SVGPathElement::get_path_length(self : SVGPathElement) -> SVGAnimatedNumber =
  #| (self) => self.pathLength

pub extern "js" fn SVGPathElement::get_total_length(self : SVGPathElement) -> Double =
  #| (self) => self.getTotalLength()

pub extern "js" fn SVGPathElement::get_point_at_length(self : SVGPathElement, distance : Double) -> DOMPoint =
  #| (self, distance) => self.getPointAtLength(distance)

pub extern "js" fn SVGPathElement::get_path_segment_at_length(self : SVGPathElement, distance : Double) -> SVGPathSegment? =
  #| (self, distance) => self.getPathSegmentAtLength(distance)

pub extern "js" fn SVGPathElement::get_path_data(self : SVGPathElement) -> Array[SVGPathSegment] =
  #| (self) => self.getPathData()

pub extern "js" fn SVGPathElement::get_path_data_with_settings(self : SVGPathElement, settings : SVGPathDataSettings) -> Array[SVGPathSegment] =
  #| (self, settings) => self.getPathData(settings)

pub extern "js" fn SVGPathElement::set_path_data(self : SVGPathElement, path_data : Array[SVGPathSegment]) -> Unit =
  #| (self, path_data) => self.setPathData(path_data)

