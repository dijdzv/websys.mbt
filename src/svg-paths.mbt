// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/svg-paths

///|
/// SVGPathDataSettings dictionary
pub(all) struct SVGPathDataSettings {
  normalize : Bool?
}

///|
/// Create a new SVGPathDataSettings with default values
pub fn SVGPathDataSettings::default() -> SVGPathDataSettings {
  SVGPathDataSettings::{ normalize: None }
}

///|
extern "js" fn SVGPathDataSettings::to_js_ffi(
  self : SVGPathDataSettings,
) -> JsValue =
  #| (self) => ({
  #|   normalize: (self.normalize === -1 ? undefined : self.normalize)
  #| })

///|
/// Convert to JsValue
pub fn SVGPathDataSettings::to_js(self : SVGPathDataSettings) -> JsValue {
  SVGPathDataSettings::to_js_ffi(self)
}

///|
extern "js" fn SVGPathDataSettings::from_js_ffi(
  value : JsValue,
) -> SVGPathDataSettings =
  #| (v) => ({
  #|   normalize: (v.normalize === undefined ? -1 : v.normalize)
  #| })

///|
/// Convert from JsValue
pub fn SVGPathDataSettings::from_js(value : JsValue) -> SVGPathDataSettings {
  SVGPathDataSettings::from_js_ffi(value)
}

///|
/// SVGPathSegment interface
pub type SVGPathSegment

///|
pub extern "js" fn SVGPathSegment::to_js_value(
  self : SVGPathSegment,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGPathSegment (unchecked)
pub extern "js" fn SVGPathSegment::from_js_value(v : JsValue) -> SVGPathSegment =
  #| (v) => v

///|
/// Safely cast JsValue to SVGPathSegment (checked with instanceof)
pub extern "js" fn SVGPathSegment::from_js_value_opt(
  v : JsValue,
) -> SVGPathSegment? =
  #| (v) => (v instanceof SVGPathSegment) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGPathSegment (checked with instanceof)
pub extern "js" fn JsValue::as_svg_path_segment(
  self : JsValue,
) -> SVGPathSegment? =
  #| (self) => (self instanceof SVGPathSegment) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGPathSegment (unchecked)
pub extern "js" fn JsValue::to_svg_path_segment(
  self : JsValue,
) -> SVGPathSegment =
  #| (self) => self

///|
pub extern "js" fn SVGPathSegment::get_type(self : SVGPathSegment) -> String =
  #| (self) => self.type

///|
pub extern "js" fn SVGPathSegment::set_type(
  self : SVGPathSegment,
  value : String,
) -> Unit =
  #| (self, value) => { self.type = value }

///|
pub extern "js" fn SVGPathSegment::get_values(
  self : SVGPathSegment,
) -> Array[Double] =
  #| (self) => self.values

///|
pub extern "js" fn SVGPathSegment::set_values(
  self : SVGPathSegment,
  value : Array[Double],
) -> Unit =
  #| (self, value) => { self.values = value }

///|
/// SVGPathElement interface
pub type SVGPathElement

///|
pub extern "js" fn SVGPathElement::to_js_value(
  self : SVGPathElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGPathElement (unchecked)
pub extern "js" fn SVGPathElement::from_js_value(v : JsValue) -> SVGPathElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGPathElement (checked with instanceof)
pub extern "js" fn SVGPathElement::from_js_value_opt(
  v : JsValue,
) -> SVGPathElement? =
  #| (v) => (v instanceof SVGPathElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGPathElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_path_element(
  self : JsValue,
) -> SVGPathElement? =
  #| (self) => (self instanceof SVGPathElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGPathElement (unchecked)
pub extern "js" fn JsValue::to_svg_path_element(
  self : JsValue,
) -> SVGPathElement =
  #| (self) => self

///|
pub extern "js" fn SVGPathElement::to_svg_geometry_element(
  self : SVGPathElement,
) -> SVGGeometryElement =
  #| (self) => self

///|
pub extern "js" fn SVGPathElement::to_svg_graphics_element(
  self : SVGPathElement,
) -> SVGGraphicsElement =
  #| (self) => self

///|
pub extern "js" fn SVGPathElement::to_svg_element(
  self : SVGPathElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGPathElement::to_element(self : SVGPathElement) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGPathElement::to_node(self : SVGPathElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGPathElement::to_event_target(
  self : SVGPathElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGPathElement::get_path_length(
  self : SVGPathElement,
) -> SVGAnimatedNumber =
  #| (self) => self.pathLength

///|
pub extern "js" fn SVGPathElement::get_total_length(
  self : SVGPathElement,
) -> Double =
  #| (self) => self.getTotalLength()

///|
pub extern "js" fn SVGPathElement::get_point_at_length(
  self : SVGPathElement,
  distance : Double,
) -> DOMPoint =
  #| (self, distance) => self.getPointAtLength(distance)

///|
pub extern "js" fn SVGPathElement::get_path_segment_at_length(
  self : SVGPathElement,
  distance : Double,
) -> SVGPathSegment? =
  #| (self, distance) => (() => { const v = self.getPathSegmentAtLength(distance); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn SVGPathElement::get_path_data(
  self : SVGPathElement,
) -> Array[SVGPathSegment] =
  #| (self) => self.getPathData()

///|
extern "js" fn SVGPathElement::get_path_data_with_settings_ffi(
  self : SVGPathElement,
  settings : JsValue,
) -> Array[SVGPathSegment] =
  #| (self, settings) => self.getPathData(settings)

///|
pub fn SVGPathElement::get_path_data_with_settings(
  self : SVGPathElement,
  settings : SVGPathDataSettings,
) -> Array[SVGPathSegment] {
  SVGPathElement::get_path_data_with_settings_ffi(self, settings.to_js())
}

///|
pub extern "js" fn SVGPathElement::set_path_data(
  self : SVGPathElement,
  path_data : Array[SVGPathSegment],
) -> Unit =
  #| (self, path_data) => self.setPathData(path_data)
