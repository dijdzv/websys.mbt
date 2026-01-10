// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-typed-om

///|
/// CSSUnparsedSegment typedef
pub type CSSUnparsedSegment

///|
pub extern "js" fn CSSUnparsedSegment::to_js_value(
  self : CSSUnparsedSegment,
) -> JsValue =
  #| (self) => self

///|
/// Create CSSUnparsedSegment from String
pub extern "js" fn CSSUnparsedSegment::from_string(
  v : String,
) -> CSSUnparsedSegment =
  #| (v) => v

///|
/// Create CSSUnparsedSegment from CSSVariableReferenceValue
pub extern "js" fn CSSUnparsedSegment::from_c_s_s_variable_reference_value(
  v : CSSVariableReferenceValue,
) -> CSSUnparsedSegment =
  #| (v) => v

///|
/// Check if this CSSUnparsedSegment is String
pub extern "js" fn CSSUnparsedSegment::is_string(
  self : CSSUnparsedSegment,
) -> Bool =
  #| (self) => typeof self === 'string'

///|
/// Check if this CSSUnparsedSegment is CSSVariableReferenceValue
pub extern "js" fn CSSUnparsedSegment::is_c_s_s_variable_reference_value(
  self : CSSUnparsedSegment,
) -> Bool =
  #| (self) => self instanceof CSSVariableReferenceValue

///|
/// Try to get CSSUnparsedSegment as String
pub extern "js" fn CSSUnparsedSegment::as_string(
  self : CSSUnparsedSegment,
) -> String? =
  #| (self) => (typeof self === 'string') ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get CSSUnparsedSegment as CSSVariableReferenceValue
pub extern "js" fn CSSUnparsedSegment::as_c_s_s_variable_reference_value(
  self : CSSUnparsedSegment,
) -> CSSVariableReferenceValue? =
  #| (self) => (self instanceof CSSVariableReferenceValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// CSSKeywordish typedef
pub type CSSKeywordish

///|
pub extern "js" fn CSSKeywordish::to_js_value(self : CSSKeywordish) -> JsValue =
  #| (self) => self

///|
/// Create CSSKeywordish from String
pub extern "js" fn CSSKeywordish::from_string(v : String) -> CSSKeywordish =
  #| (v) => v

///|
/// Create CSSKeywordish from CSSKeywordValue
pub extern "js" fn CSSKeywordish::from_c_s_s_keyword_value(
  v : CSSKeywordValue,
) -> CSSKeywordish =
  #| (v) => v

///|
/// Check if this CSSKeywordish is String
pub extern "js" fn CSSKeywordish::is_string(self : CSSKeywordish) -> Bool =
  #| (self) => typeof self === 'string'

///|
/// Check if this CSSKeywordish is CSSKeywordValue
pub extern "js" fn CSSKeywordish::is_c_s_s_keyword_value(
  self : CSSKeywordish,
) -> Bool =
  #| (self) => self instanceof CSSKeywordValue

///|
/// Try to get CSSKeywordish as String
pub extern "js" fn CSSKeywordish::as_string(self : CSSKeywordish) -> String? =
  #| (self) => (typeof self === 'string') ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get CSSKeywordish as CSSKeywordValue
pub extern "js" fn CSSKeywordish::as_c_s_s_keyword_value(
  self : CSSKeywordish,
) -> CSSKeywordValue? =
  #| (self) => (self instanceof CSSKeywordValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// CSSNumberish typedef
pub type CSSNumberish

///|
pub extern "js" fn CSSNumberish::to_js_value(self : CSSNumberish) -> JsValue =
  #| (self) => self

///|
/// Create CSSNumberish from Double
pub extern "js" fn CSSNumberish::from_double(v : Double) -> CSSNumberish =
  #| (v) => v

///|
/// Create CSSNumberish from CSSNumericValue
pub extern "js" fn CSSNumberish::from_c_s_s_numeric_value(
  v : CSSNumericValue,
) -> CSSNumberish =
  #| (v) => v

///|
/// Check if this CSSNumberish is Double
pub extern "js" fn CSSNumberish::is_double(self : CSSNumberish) -> Bool =
  #| (self) => typeof self === 'number'

///|
/// Check if this CSSNumberish is CSSNumericValue
pub extern "js" fn CSSNumberish::is_c_s_s_numeric_value(
  self : CSSNumberish,
) -> Bool =
  #| (self) => self instanceof CSSNumericValue

///|
/// Try to get CSSNumberish as Double
pub extern "js" fn CSSNumberish::as_double(self : CSSNumberish) -> Double? =
  #| (self) => (typeof self === 'number') ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get CSSNumberish as CSSNumericValue
pub extern "js" fn CSSNumberish::as_c_s_s_numeric_value(
  self : CSSNumberish,
) -> CSSNumericValue? =
  #| (self) => (self instanceof CSSNumericValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// CSSPerspectiveValue typedef
pub type CSSPerspectiveValue

///|
pub extern "js" fn CSSPerspectiveValue::to_js_value(
  self : CSSPerspectiveValue,
) -> JsValue =
  #| (self) => self

///|
/// Create CSSPerspectiveValue from CSSNumericValue
pub extern "js" fn CSSPerspectiveValue::from_c_s_s_numeric_value(
  v : CSSNumericValue,
) -> CSSPerspectiveValue =
  #| (v) => v

///|
/// Create CSSPerspectiveValue from CSSKeywordish
pub extern "js" fn CSSPerspectiveValue::from_c_s_s_keywordish(
  v : CSSKeywordish,
) -> CSSPerspectiveValue =
  #| (v) => v

///|
/// Check if this CSSPerspectiveValue is CSSNumericValue
pub extern "js" fn CSSPerspectiveValue::is_c_s_s_numeric_value(
  self : CSSPerspectiveValue,
) -> Bool =
  #| (self) => self instanceof CSSNumericValue

///|
/// Check if this CSSPerspectiveValue is CSSKeywordish
pub extern "js" fn CSSPerspectiveValue::is_c_s_s_keywordish(
  self : CSSPerspectiveValue,
) -> Bool =
  #| (self) => typeof self === 'string' || self instanceof CSSKeywordValue

///|
/// Try to get CSSPerspectiveValue as CSSNumericValue
pub extern "js" fn CSSPerspectiveValue::as_c_s_s_numeric_value(
  self : CSSPerspectiveValue,
) -> CSSNumericValue? =
  #| (self) => (self instanceof CSSNumericValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get CSSPerspectiveValue as CSSKeywordish
pub extern "js" fn CSSPerspectiveValue::as_c_s_s_keywordish(
  self : CSSPerspectiveValue,
) -> CSSKeywordish? =
  #| (self) => (typeof self === 'string' || self instanceof CSSKeywordValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// CSSColorRGBComp typedef
pub type CSSColorRGBComp

///|
pub extern "js" fn CSSColorRGBComp::to_js_value(
  self : CSSColorRGBComp,
) -> JsValue =
  #| (self) => self

///|
/// Create CSSColorRGBComp from CSSNumberish
pub extern "js" fn CSSColorRGBComp::from_c_s_s_numberish(
  v : CSSNumberish,
) -> CSSColorRGBComp =
  #| (v) => v

///|
/// Create CSSColorRGBComp from CSSKeywordish
pub extern "js" fn CSSColorRGBComp::from_c_s_s_keywordish(
  v : CSSKeywordish,
) -> CSSColorRGBComp =
  #| (v) => v

///|
/// Check if this CSSColorRGBComp is CSSNumberish
pub extern "js" fn CSSColorRGBComp::is_c_s_s_numberish(
  self : CSSColorRGBComp,
) -> Bool =
  #| (self) => typeof self === 'number' || self instanceof CSSNumericValue

///|
/// Check if this CSSColorRGBComp is CSSKeywordish
pub extern "js" fn CSSColorRGBComp::is_c_s_s_keywordish(
  self : CSSColorRGBComp,
) -> Bool =
  #| (self) => typeof self === 'string' || self instanceof CSSKeywordValue

///|
/// Try to get CSSColorRGBComp as CSSNumberish
pub extern "js" fn CSSColorRGBComp::as_c_s_s_numberish(
  self : CSSColorRGBComp,
) -> CSSNumberish? =
  #| (self) => (typeof self === 'number' || self instanceof CSSNumericValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get CSSColorRGBComp as CSSKeywordish
pub extern "js" fn CSSColorRGBComp::as_c_s_s_keywordish(
  self : CSSColorRGBComp,
) -> CSSKeywordish? =
  #| (self) => (typeof self === 'string' || self instanceof CSSKeywordValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// CSSColorPercent typedef
pub type CSSColorPercent

///|
pub extern "js" fn CSSColorPercent::to_js_value(
  self : CSSColorPercent,
) -> JsValue =
  #| (self) => self

///|
/// Create CSSColorPercent from CSSNumberish
pub extern "js" fn CSSColorPercent::from_c_s_s_numberish(
  v : CSSNumberish,
) -> CSSColorPercent =
  #| (v) => v

///|
/// Create CSSColorPercent from CSSKeywordish
pub extern "js" fn CSSColorPercent::from_c_s_s_keywordish(
  v : CSSKeywordish,
) -> CSSColorPercent =
  #| (v) => v

///|
/// Check if this CSSColorPercent is CSSNumberish
pub extern "js" fn CSSColorPercent::is_c_s_s_numberish(
  self : CSSColorPercent,
) -> Bool =
  #| (self) => typeof self === 'number' || self instanceof CSSNumericValue

///|
/// Check if this CSSColorPercent is CSSKeywordish
pub extern "js" fn CSSColorPercent::is_c_s_s_keywordish(
  self : CSSColorPercent,
) -> Bool =
  #| (self) => typeof self === 'string' || self instanceof CSSKeywordValue

///|
/// Try to get CSSColorPercent as CSSNumberish
pub extern "js" fn CSSColorPercent::as_c_s_s_numberish(
  self : CSSColorPercent,
) -> CSSNumberish? =
  #| (self) => (typeof self === 'number' || self instanceof CSSNumericValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get CSSColorPercent as CSSKeywordish
pub extern "js" fn CSSColorPercent::as_c_s_s_keywordish(
  self : CSSColorPercent,
) -> CSSKeywordish? =
  #| (self) => (typeof self === 'string' || self instanceof CSSKeywordValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// CSSColorNumber typedef
pub type CSSColorNumber

///|
pub extern "js" fn CSSColorNumber::to_js_value(
  self : CSSColorNumber,
) -> JsValue =
  #| (self) => self

///|
/// Create CSSColorNumber from CSSNumberish
pub extern "js" fn CSSColorNumber::from_c_s_s_numberish(
  v : CSSNumberish,
) -> CSSColorNumber =
  #| (v) => v

///|
/// Create CSSColorNumber from CSSKeywordish
pub extern "js" fn CSSColorNumber::from_c_s_s_keywordish(
  v : CSSKeywordish,
) -> CSSColorNumber =
  #| (v) => v

///|
/// Check if this CSSColorNumber is CSSNumberish
pub extern "js" fn CSSColorNumber::is_c_s_s_numberish(
  self : CSSColorNumber,
) -> Bool =
  #| (self) => typeof self === 'number' || self instanceof CSSNumericValue

///|
/// Check if this CSSColorNumber is CSSKeywordish
pub extern "js" fn CSSColorNumber::is_c_s_s_keywordish(
  self : CSSColorNumber,
) -> Bool =
  #| (self) => typeof self === 'string' || self instanceof CSSKeywordValue

///|
/// Try to get CSSColorNumber as CSSNumberish
pub extern "js" fn CSSColorNumber::as_c_s_s_numberish(
  self : CSSColorNumber,
) -> CSSNumberish? =
  #| (self) => (typeof self === 'number' || self instanceof CSSNumericValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get CSSColorNumber as CSSKeywordish
pub extern "js" fn CSSColorNumber::as_c_s_s_keywordish(
  self : CSSColorNumber,
) -> CSSKeywordish? =
  #| (self) => (typeof self === 'string' || self instanceof CSSKeywordValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// CSSColorAngle typedef
pub type CSSColorAngle

///|
pub extern "js" fn CSSColorAngle::to_js_value(self : CSSColorAngle) -> JsValue =
  #| (self) => self

///|
/// Create CSSColorAngle from CSSNumberish
pub extern "js" fn CSSColorAngle::from_c_s_s_numberish(
  v : CSSNumberish,
) -> CSSColorAngle =
  #| (v) => v

///|
/// Create CSSColorAngle from CSSKeywordish
pub extern "js" fn CSSColorAngle::from_c_s_s_keywordish(
  v : CSSKeywordish,
) -> CSSColorAngle =
  #| (v) => v

///|
/// Check if this CSSColorAngle is CSSNumberish
pub extern "js" fn CSSColorAngle::is_c_s_s_numberish(
  self : CSSColorAngle,
) -> Bool =
  #| (self) => typeof self === 'number' || self instanceof CSSNumericValue

///|
/// Check if this CSSColorAngle is CSSKeywordish
pub extern "js" fn CSSColorAngle::is_c_s_s_keywordish(
  self : CSSColorAngle,
) -> Bool =
  #| (self) => typeof self === 'string' || self instanceof CSSKeywordValue

///|
/// Try to get CSSColorAngle as CSSNumberish
pub extern "js" fn CSSColorAngle::as_c_s_s_numberish(
  self : CSSColorAngle,
) -> CSSNumberish? =
  #| (self) => (typeof self === 'number' || self instanceof CSSNumericValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get CSSColorAngle as CSSKeywordish
pub extern "js" fn CSSColorAngle::as_c_s_s_keywordish(
  self : CSSColorAngle,
) -> CSSKeywordish? =
  #| (self) => (typeof self === 'string' || self instanceof CSSKeywordValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// CSSNumericBaseType enum
pub(all) enum CSSNumericBaseType {
  Length
  Angle
  Time
  Frequency
  Resolution
  Flex
  Percent
}

///|
/// Convert to string value
pub fn CSSNumericBaseType::to_string(self : CSSNumericBaseType) -> String {
  match self {
    CSSNumericBaseType::Length => "length"
    CSSNumericBaseType::Angle => "angle"
    CSSNumericBaseType::Time => "time"
    CSSNumericBaseType::Frequency => "frequency"
    CSSNumericBaseType::Resolution => "resolution"
    CSSNumericBaseType::Flex => "flex"
    CSSNumericBaseType::Percent => "percent"
  }
}

///|
/// Parse from string value
pub fn CSSNumericBaseType::from_string(s : String) -> CSSNumericBaseType? {
  match s {
    "length" => Some(CSSNumericBaseType::Length)
    "angle" => Some(CSSNumericBaseType::Angle)
    "time" => Some(CSSNumericBaseType::Time)
    "frequency" => Some(CSSNumericBaseType::Frequency)
    "resolution" => Some(CSSNumericBaseType::Resolution)
    "flex" => Some(CSSNumericBaseType::Flex)
    "percent" => Some(CSSNumericBaseType::Percent)
    _ => None
  }
}

///|
/// CSSMathOperator enum
pub(all) enum CSSMathOperator {
  Sum
  Product
  Negate
  Invert
  Min
  Max
  Clamp
}

///|
/// Convert to string value
pub fn CSSMathOperator::to_string(self : CSSMathOperator) -> String {
  match self {
    CSSMathOperator::Sum => "sum"
    CSSMathOperator::Product => "product"
    CSSMathOperator::Negate => "negate"
    CSSMathOperator::Invert => "invert"
    CSSMathOperator::Min => "min"
    CSSMathOperator::Max => "max"
    CSSMathOperator::Clamp => "clamp"
  }
}

///|
/// Parse from string value
pub fn CSSMathOperator::from_string(s : String) -> CSSMathOperator? {
  match s {
    "sum" => Some(CSSMathOperator::Sum)
    "product" => Some(CSSMathOperator::Product)
    "negate" => Some(CSSMathOperator::Negate)
    "invert" => Some(CSSMathOperator::Invert)
    "min" => Some(CSSMathOperator::Min)
    "max" => Some(CSSMathOperator::Max)
    "clamp" => Some(CSSMathOperator::Clamp)
    _ => None
  }
}

///|
/// CSSNumericType dictionary
pub struct CSSNumericType {
  length : Int?
  angle : Int?
  time : Int?
  frequency : Int?
  resolution : Int?
  flex : Int?
  percent : Int?
  percentHint : CSSNumericBaseType?
}

///|
/// Create a new CSSNumericType with default values
pub fn CSSNumericType::default() -> CSSNumericType {
  CSSNumericType::{
    length: None,
    angle: None,
    time: None,
    frequency: None,
    resolution: None,
    flex: None,
    percent: None,
    percentHint: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn CSSNumericType::to_js(self : CSSNumericType) -> JsValue =
  #| (self) => ({
  #|   length: self.length,
  #|   angle: self.angle,
  #|   time: self.time,
  #|   frequency: self.frequency,
  #|   resolution: self.resolution,
  #|   flex: self.flex,
  #|   percent: self.percent,
  #|   percentHint: ['length', 'angle', 'time', 'frequency', 'resolution', 'flex', 'percent'][self.percentHint]
  #| })

///|
/// CSSMatrixComponentOptions dictionary
pub struct CSSMatrixComponentOptions {
  is2D : Bool?
}

///|
/// Create a new CSSMatrixComponentOptions with default values
pub fn CSSMatrixComponentOptions::default() -> CSSMatrixComponentOptions {
  CSSMatrixComponentOptions::{ is2D: None }
}

///|
/// Convert to JsValue
pub extern "js" fn CSSMatrixComponentOptions::to_js(
  self : CSSMatrixComponentOptions,
) -> JsValue =
  #| (self) => ({
  #|   is2D: self.is2D
  #| })

///|
/// CSSStyleValue interface
pub type CSSStyleValue

///|
pub extern "js" fn CSSStyleValue::to_js_value(self : CSSStyleValue) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSStyleValue::parse(
  property : String,
  css_text : String,
) -> CSSStyleValue =
  #| (property, css_text) => CSSStyleValue.parse(property, css_text)

///|
pub extern "js" fn CSSStyleValue::parse_all(
  property : String,
  css_text : String,
) -> Array[CSSStyleValue] =
  #| (property, css_text) => CSSStyleValue.parseAll(property, css_text)

///|
/// StylePropertyMapReadOnly interface
pub type StylePropertyMapReadOnly

///|
pub extern "js" fn StylePropertyMapReadOnly::to_js_value(
  self : StylePropertyMapReadOnly,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn StylePropertyMapReadOnly::_unknown_(
  self : StylePropertyMapReadOnly,
) -> Unit =
  #| (self) => self._unknown_()

///|
pub extern "js" fn StylePropertyMapReadOnly::get(
  self : StylePropertyMapReadOnly,
  property : String,
) -> VoidOrCSSStyleValue =
  #| (self, property) => self.get(property)

///|
pub extern "js" fn StylePropertyMapReadOnly::get_all(
  self : StylePropertyMapReadOnly,
  property : String,
) -> Array[CSSStyleValue] =
  #| (self, property) => self.getAll(property)

///|
pub extern "js" fn StylePropertyMapReadOnly::has(
  self : StylePropertyMapReadOnly,
  property : String,
) -> Bool =
  #| (self, property) => self.has(property)

///|
pub extern "js" fn StylePropertyMapReadOnly::get_size(
  self : StylePropertyMapReadOnly,
) -> Int =
  #| (self) => self.size

///|
/// StylePropertyMap interface
pub type StylePropertyMap

///|
pub extern "js" fn StylePropertyMap::to_js_value(
  self : StylePropertyMap,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn StylePropertyMap::_unknown_(self : StylePropertyMap) -> Unit =
  #| (self) => self._unknown_()

///|
pub extern "js" fn StylePropertyMap::get(
  self : StylePropertyMap,
  property : String,
) -> VoidOrCSSStyleValue =
  #| (self, property) => self.get(property)

///|
pub extern "js" fn StylePropertyMap::get_all(
  self : StylePropertyMap,
  property : String,
) -> Array[CSSStyleValue] =
  #| (self, property) => self.getAll(property)

///|
pub extern "js" fn StylePropertyMap::has(
  self : StylePropertyMap,
  property : String,
) -> Bool =
  #| (self, property) => self.has(property)

///|
pub extern "js" fn StylePropertyMap::get_size(self : StylePropertyMap) -> Int =
  #| (self) => self.size

///|
pub extern "js" fn StylePropertyMap::set(
  self : StylePropertyMap,
  property : String,
  values : CSSStyleValueOrString,
) -> Unit =
  #| (self, property, values) => self.set(property, values)

///|
pub extern "js" fn StylePropertyMap::append(
  self : StylePropertyMap,
  property : String,
  values : CSSStyleValueOrString,
) -> Unit =
  #| (self, property, values) => self.append(property, values)

///|
pub extern "js" fn StylePropertyMap::delete(
  self : StylePropertyMap,
  property : String,
) -> Unit =
  #| (self, property) => self.delete(property)

///|
pub extern "js" fn StylePropertyMap::clear(self : StylePropertyMap) -> Unit =
  #| (self) => self.clear()

///|
/// CSSUnparsedValue interface
pub type CSSUnparsedValue

///|
pub extern "js" fn CSSUnparsedValue::to_js_value(
  self : CSSUnparsedValue,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSUnparsedValue::parse(
  property : String,
  css_text : String,
) -> CSSStyleValue =
  #| (property, css_text) => CSSUnparsedValue.parse(property, css_text)

///|
pub extern "js" fn CSSUnparsedValue::parse_all(
  property : String,
  css_text : String,
) -> Array[CSSStyleValue] =
  #| (property, css_text) => CSSUnparsedValue.parseAll(property, css_text)

///|
pub extern "js" fn CSSUnparsedValue::new(
  members : Array[CSSUnparsedSegment],
) -> CSSUnparsedValue =
  #| (members) => new CSSUnparsedValue(members)

///|
pub extern "js" fn CSSUnparsedValue::_unknown_(self : CSSUnparsedValue) -> Unit =
  #| (self) => self._unknown_()

///|
pub extern "js" fn CSSUnparsedValue::get_length(self : CSSUnparsedValue) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn CSSUnparsedValue::get(
  self : CSSUnparsedValue,
  index : Int,
) -> CSSUnparsedSegment =
  #| (self, index) => self[index]

///|
pub extern "js" fn CSSUnparsedValue::set(
  self : CSSUnparsedValue,
  index : Int,
  val : CSSUnparsedSegment,
) -> Unit =
  #| (self, index, val) => { self[index] = val }

///|
/// CSSVariableReferenceValue interface
pub type CSSVariableReferenceValue

///|
pub extern "js" fn CSSVariableReferenceValue::to_js_value(
  self : CSSVariableReferenceValue,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSVariableReferenceValue::new(
  variable : String,
  fallback : CSSUnparsedValue?,
) -> CSSVariableReferenceValue =
  #| (variable, fallback) => new CSSVariableReferenceValue(variable, fallback)

///|
pub extern "js" fn CSSVariableReferenceValue::get_variable(
  self : CSSVariableReferenceValue,
) -> String =
  #| (self) => self.variable

///|
pub extern "js" fn CSSVariableReferenceValue::set_variable(
  self : CSSVariableReferenceValue,
  value : String,
) -> Unit =
  #| (self, value) => { self.variable = value }

///|
pub extern "js" fn CSSVariableReferenceValue::get_fallback(
  self : CSSVariableReferenceValue,
) -> CSSUnparsedValue? =
  #| (self) => self.fallback

///|
/// CSSKeywordValue interface
pub type CSSKeywordValue

///|
pub extern "js" fn CSSKeywordValue::to_js_value(
  self : CSSKeywordValue,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSKeywordValue::parse(
  property : String,
  css_text : String,
) -> CSSStyleValue =
  #| (property, css_text) => CSSKeywordValue.parse(property, css_text)

///|
pub extern "js" fn CSSKeywordValue::parse_all(
  property : String,
  css_text : String,
) -> Array[CSSStyleValue] =
  #| (property, css_text) => CSSKeywordValue.parseAll(property, css_text)

///|
pub extern "js" fn CSSKeywordValue::new(value : String) -> CSSKeywordValue =
  #| (value) => new CSSKeywordValue(value)

///|
pub extern "js" fn CSSKeywordValue::get_value(self : CSSKeywordValue) -> String =
  #| (self) => self.value

///|
pub extern "js" fn CSSKeywordValue::set_value(
  self : CSSKeywordValue,
  value : String,
) -> Unit =
  #| (self, value) => { self.value = value }

///|
/// CSSNumericValue interface
pub type CSSNumericValue

///|
pub extern "js" fn CSSNumericValue::to_js_value(
  self : CSSNumericValue,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSNumericValue::parse(
  property : String,
  css_text : String,
) -> CSSStyleValue =
  #| (property, css_text) => CSSNumericValue.parse(property, css_text)

///|
pub extern "js" fn CSSNumericValue::parse_all(
  property : String,
  css_text : String,
) -> Array[CSSStyleValue] =
  #| (property, css_text) => CSSNumericValue.parseAll(property, css_text)

///|
pub extern "js" fn CSSNumericValue::add(
  self : CSSNumericValue,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.add(values)

///|
pub extern "js" fn CSSNumericValue::sub(
  self : CSSNumericValue,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.sub(values)

///|
pub extern "js" fn CSSNumericValue::mul(
  self : CSSNumericValue,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.mul(values)

///|
pub extern "js" fn CSSNumericValue::div(
  self : CSSNumericValue,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.div(values)

///|
pub extern "js" fn CSSNumericValue::min(
  self : CSSNumericValue,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.min(values)

///|
pub extern "js" fn CSSNumericValue::max(
  self : CSSNumericValue,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.max(values)

///|
pub extern "js" fn CSSNumericValue::equals(
  self : CSSNumericValue,
  value : CSSNumberish,
) -> Bool =
  #| (self, value) => self.equals(value)

///|
pub extern "js" fn CSSNumericValue::to(
  self : CSSNumericValue,
  unit : String,
) -> CSSUnitValue =
  #| (self, unit) => self.to(unit)

///|
pub extern "js" fn CSSNumericValue::to_sum(
  self : CSSNumericValue,
  units : String,
) -> CSSMathSum =
  #| (self, units) => self.toSum(units)

///|
pub extern "js" fn CSSNumericValue::type_(
  self : CSSNumericValue,
) -> CSSNumericType =
  #| (self) => self.type()

///|
/// CSSUnitValue interface
pub type CSSUnitValue

///|
pub extern "js" fn CSSUnitValue::to_js_value(self : CSSUnitValue) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSUnitValue::parse(
  property : String,
  css_text : String,
) -> CSSStyleValue =
  #| (property, css_text) => CSSUnitValue.parse(property, css_text)

///|
pub extern "js" fn CSSUnitValue::parse_all(
  property : String,
  css_text : String,
) -> Array[CSSStyleValue] =
  #| (property, css_text) => CSSUnitValue.parseAll(property, css_text)

///|
pub extern "js" fn CSSUnitValue::add(
  self : CSSUnitValue,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.add(values)

///|
pub extern "js" fn CSSUnitValue::sub(
  self : CSSUnitValue,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.sub(values)

///|
pub extern "js" fn CSSUnitValue::mul(
  self : CSSUnitValue,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.mul(values)

///|
pub extern "js" fn CSSUnitValue::div(
  self : CSSUnitValue,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.div(values)

///|
pub extern "js" fn CSSUnitValue::min(
  self : CSSUnitValue,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.min(values)

///|
pub extern "js" fn CSSUnitValue::max(
  self : CSSUnitValue,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.max(values)

///|
pub extern "js" fn CSSUnitValue::equals(
  self : CSSUnitValue,
  value : CSSNumberish,
) -> Bool =
  #| (self, value) => self.equals(value)

///|
pub extern "js" fn CSSUnitValue::to(
  self : CSSUnitValue,
  unit : String,
) -> CSSUnitValue =
  #| (self, unit) => self.to(unit)

///|
pub extern "js" fn CSSUnitValue::to_sum(
  self : CSSUnitValue,
  units : String,
) -> CSSMathSum =
  #| (self, units) => self.toSum(units)

///|
pub extern "js" fn CSSUnitValue::type_(self : CSSUnitValue) -> CSSNumericType =
  #| (self) => self.type()

///|
pub extern "js" fn CSSUnitValue::new(
  value : Double,
  unit : String,
) -> CSSUnitValue =
  #| (value, unit) => new CSSUnitValue(value, unit)

///|
pub extern "js" fn CSSUnitValue::get_value(self : CSSUnitValue) -> Double =
  #| (self) => self.value

///|
pub extern "js" fn CSSUnitValue::set_value(
  self : CSSUnitValue,
  value : Double,
) -> Unit =
  #| (self, value) => { self.value = value }

///|
pub extern "js" fn CSSUnitValue::get_unit(self : CSSUnitValue) -> String =
  #| (self) => self.unit

///|
/// CSSMathValue interface
pub type CSSMathValue

///|
pub extern "js" fn CSSMathValue::to_js_value(self : CSSMathValue) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSMathValue::parse(
  property : String,
  css_text : String,
) -> CSSStyleValue =
  #| (property, css_text) => CSSMathValue.parse(property, css_text)

///|
pub extern "js" fn CSSMathValue::parse_all(
  property : String,
  css_text : String,
) -> Array[CSSStyleValue] =
  #| (property, css_text) => CSSMathValue.parseAll(property, css_text)

///|
pub extern "js" fn CSSMathValue::add(
  self : CSSMathValue,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.add(values)

///|
pub extern "js" fn CSSMathValue::sub(
  self : CSSMathValue,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.sub(values)

///|
pub extern "js" fn CSSMathValue::mul(
  self : CSSMathValue,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.mul(values)

///|
pub extern "js" fn CSSMathValue::div(
  self : CSSMathValue,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.div(values)

///|
pub extern "js" fn CSSMathValue::min(
  self : CSSMathValue,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.min(values)

///|
pub extern "js" fn CSSMathValue::max(
  self : CSSMathValue,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.max(values)

///|
pub extern "js" fn CSSMathValue::equals(
  self : CSSMathValue,
  value : CSSNumberish,
) -> Bool =
  #| (self, value) => self.equals(value)

///|
pub extern "js" fn CSSMathValue::to(
  self : CSSMathValue,
  unit : String,
) -> CSSUnitValue =
  #| (self, unit) => self.to(unit)

///|
pub extern "js" fn CSSMathValue::to_sum(
  self : CSSMathValue,
  units : String,
) -> CSSMathSum =
  #| (self, units) => self.toSum(units)

///|
pub extern "js" fn CSSMathValue::type_(self : CSSMathValue) -> CSSNumericType =
  #| (self) => self.type()

///|
pub extern "js" fn CSSMathValue::get_operator(
  self : CSSMathValue,
) -> CSSMathOperator =
  #| (self) => self.operator

///|
/// CSSMathSum interface
pub type CSSMathSum

///|
pub extern "js" fn CSSMathSum::to_js_value(self : CSSMathSum) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSMathSum::parse(
  property : String,
  css_text : String,
) -> CSSStyleValue =
  #| (property, css_text) => CSSMathSum.parse(property, css_text)

///|
pub extern "js" fn CSSMathSum::parse_all(
  property : String,
  css_text : String,
) -> Array[CSSStyleValue] =
  #| (property, css_text) => CSSMathSum.parseAll(property, css_text)

///|
pub extern "js" fn CSSMathSum::add(
  self : CSSMathSum,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.add(values)

///|
pub extern "js" fn CSSMathSum::sub(
  self : CSSMathSum,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.sub(values)

///|
pub extern "js" fn CSSMathSum::mul(
  self : CSSMathSum,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.mul(values)

///|
pub extern "js" fn CSSMathSum::div(
  self : CSSMathSum,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.div(values)

///|
pub extern "js" fn CSSMathSum::min(
  self : CSSMathSum,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.min(values)

///|
pub extern "js" fn CSSMathSum::max(
  self : CSSMathSum,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.max(values)

///|
pub extern "js" fn CSSMathSum::equals(
  self : CSSMathSum,
  value : CSSNumberish,
) -> Bool =
  #| (self, value) => self.equals(value)

///|
pub extern "js" fn CSSMathSum::to(
  self : CSSMathSum,
  unit : String,
) -> CSSUnitValue =
  #| (self, unit) => self.to(unit)

///|
pub extern "js" fn CSSMathSum::to_sum(
  self : CSSMathSum,
  units : String,
) -> CSSMathSum =
  #| (self, units) => self.toSum(units)

///|
pub extern "js" fn CSSMathSum::type_(self : CSSMathSum) -> CSSNumericType =
  #| (self) => self.type()

///|
pub extern "js" fn CSSMathSum::get_operator(
  self : CSSMathSum,
) -> CSSMathOperator =
  #| (self) => self.operator

///|
pub extern "js" fn CSSMathSum::new(args : CSSNumberish) -> CSSMathSum =
  #| (args) => new CSSMathSum(args)

///|
pub extern "js" fn CSSMathSum::get_values(self : CSSMathSum) -> CSSNumericArray =
  #| (self) => self.values

///|
/// CSSMathProduct interface
pub type CSSMathProduct

///|
pub extern "js" fn CSSMathProduct::to_js_value(
  self : CSSMathProduct,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSMathProduct::parse(
  property : String,
  css_text : String,
) -> CSSStyleValue =
  #| (property, css_text) => CSSMathProduct.parse(property, css_text)

///|
pub extern "js" fn CSSMathProduct::parse_all(
  property : String,
  css_text : String,
) -> Array[CSSStyleValue] =
  #| (property, css_text) => CSSMathProduct.parseAll(property, css_text)

///|
pub extern "js" fn CSSMathProduct::add(
  self : CSSMathProduct,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.add(values)

///|
pub extern "js" fn CSSMathProduct::sub(
  self : CSSMathProduct,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.sub(values)

///|
pub extern "js" fn CSSMathProduct::mul(
  self : CSSMathProduct,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.mul(values)

///|
pub extern "js" fn CSSMathProduct::div(
  self : CSSMathProduct,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.div(values)

///|
pub extern "js" fn CSSMathProduct::min(
  self : CSSMathProduct,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.min(values)

///|
pub extern "js" fn CSSMathProduct::max(
  self : CSSMathProduct,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.max(values)

///|
pub extern "js" fn CSSMathProduct::equals(
  self : CSSMathProduct,
  value : CSSNumberish,
) -> Bool =
  #| (self, value) => self.equals(value)

///|
pub extern "js" fn CSSMathProduct::to(
  self : CSSMathProduct,
  unit : String,
) -> CSSUnitValue =
  #| (self, unit) => self.to(unit)

///|
pub extern "js" fn CSSMathProduct::to_sum(
  self : CSSMathProduct,
  units : String,
) -> CSSMathSum =
  #| (self, units) => self.toSum(units)

///|
pub extern "js" fn CSSMathProduct::type_(
  self : CSSMathProduct,
) -> CSSNumericType =
  #| (self) => self.type()

///|
pub extern "js" fn CSSMathProduct::get_operator(
  self : CSSMathProduct,
) -> CSSMathOperator =
  #| (self) => self.operator

///|
pub extern "js" fn CSSMathProduct::new(args : CSSNumberish) -> CSSMathProduct =
  #| (args) => new CSSMathProduct(args)

///|
pub extern "js" fn CSSMathProduct::get_values(
  self : CSSMathProduct,
) -> CSSNumericArray =
  #| (self) => self.values

///|
/// CSSMathNegate interface
pub type CSSMathNegate

///|
pub extern "js" fn CSSMathNegate::to_js_value(self : CSSMathNegate) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSMathNegate::parse(
  property : String,
  css_text : String,
) -> CSSStyleValue =
  #| (property, css_text) => CSSMathNegate.parse(property, css_text)

///|
pub extern "js" fn CSSMathNegate::parse_all(
  property : String,
  css_text : String,
) -> Array[CSSStyleValue] =
  #| (property, css_text) => CSSMathNegate.parseAll(property, css_text)

///|
pub extern "js" fn CSSMathNegate::add(
  self : CSSMathNegate,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.add(values)

///|
pub extern "js" fn CSSMathNegate::sub(
  self : CSSMathNegate,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.sub(values)

///|
pub extern "js" fn CSSMathNegate::mul(
  self : CSSMathNegate,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.mul(values)

///|
pub extern "js" fn CSSMathNegate::div(
  self : CSSMathNegate,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.div(values)

///|
pub extern "js" fn CSSMathNegate::min(
  self : CSSMathNegate,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.min(values)

///|
pub extern "js" fn CSSMathNegate::max(
  self : CSSMathNegate,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.max(values)

///|
pub extern "js" fn CSSMathNegate::equals(
  self : CSSMathNegate,
  value : CSSNumberish,
) -> Bool =
  #| (self, value) => self.equals(value)

///|
pub extern "js" fn CSSMathNegate::to(
  self : CSSMathNegate,
  unit : String,
) -> CSSUnitValue =
  #| (self, unit) => self.to(unit)

///|
pub extern "js" fn CSSMathNegate::to_sum(
  self : CSSMathNegate,
  units : String,
) -> CSSMathSum =
  #| (self, units) => self.toSum(units)

///|
pub extern "js" fn CSSMathNegate::type_(self : CSSMathNegate) -> CSSNumericType =
  #| (self) => self.type()

///|
pub extern "js" fn CSSMathNegate::get_operator(
  self : CSSMathNegate,
) -> CSSMathOperator =
  #| (self) => self.operator

///|
pub extern "js" fn CSSMathNegate::new(arg : CSSNumberish) -> CSSMathNegate =
  #| (arg) => new CSSMathNegate(arg)

///|
pub extern "js" fn CSSMathNegate::get_value(
  self : CSSMathNegate,
) -> CSSNumericValue =
  #| (self) => self.value

///|
/// CSSMathInvert interface
pub type CSSMathInvert

///|
pub extern "js" fn CSSMathInvert::to_js_value(self : CSSMathInvert) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSMathInvert::parse(
  property : String,
  css_text : String,
) -> CSSStyleValue =
  #| (property, css_text) => CSSMathInvert.parse(property, css_text)

///|
pub extern "js" fn CSSMathInvert::parse_all(
  property : String,
  css_text : String,
) -> Array[CSSStyleValue] =
  #| (property, css_text) => CSSMathInvert.parseAll(property, css_text)

///|
pub extern "js" fn CSSMathInvert::add(
  self : CSSMathInvert,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.add(values)

///|
pub extern "js" fn CSSMathInvert::sub(
  self : CSSMathInvert,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.sub(values)

///|
pub extern "js" fn CSSMathInvert::mul(
  self : CSSMathInvert,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.mul(values)

///|
pub extern "js" fn CSSMathInvert::div(
  self : CSSMathInvert,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.div(values)

///|
pub extern "js" fn CSSMathInvert::min(
  self : CSSMathInvert,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.min(values)

///|
pub extern "js" fn CSSMathInvert::max(
  self : CSSMathInvert,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.max(values)

///|
pub extern "js" fn CSSMathInvert::equals(
  self : CSSMathInvert,
  value : CSSNumberish,
) -> Bool =
  #| (self, value) => self.equals(value)

///|
pub extern "js" fn CSSMathInvert::to(
  self : CSSMathInvert,
  unit : String,
) -> CSSUnitValue =
  #| (self, unit) => self.to(unit)

///|
pub extern "js" fn CSSMathInvert::to_sum(
  self : CSSMathInvert,
  units : String,
) -> CSSMathSum =
  #| (self, units) => self.toSum(units)

///|
pub extern "js" fn CSSMathInvert::type_(self : CSSMathInvert) -> CSSNumericType =
  #| (self) => self.type()

///|
pub extern "js" fn CSSMathInvert::get_operator(
  self : CSSMathInvert,
) -> CSSMathOperator =
  #| (self) => self.operator

///|
pub extern "js" fn CSSMathInvert::new(arg : CSSNumberish) -> CSSMathInvert =
  #| (arg) => new CSSMathInvert(arg)

///|
pub extern "js" fn CSSMathInvert::get_value(
  self : CSSMathInvert,
) -> CSSNumericValue =
  #| (self) => self.value

///|
/// CSSMathMin interface
pub type CSSMathMin

///|
pub extern "js" fn CSSMathMin::to_js_value(self : CSSMathMin) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSMathMin::parse(
  property : String,
  css_text : String,
) -> CSSStyleValue =
  #| (property, css_text) => CSSMathMin.parse(property, css_text)

///|
pub extern "js" fn CSSMathMin::parse_all(
  property : String,
  css_text : String,
) -> Array[CSSStyleValue] =
  #| (property, css_text) => CSSMathMin.parseAll(property, css_text)

///|
pub extern "js" fn CSSMathMin::add(
  self : CSSMathMin,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.add(values)

///|
pub extern "js" fn CSSMathMin::sub(
  self : CSSMathMin,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.sub(values)

///|
pub extern "js" fn CSSMathMin::mul(
  self : CSSMathMin,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.mul(values)

///|
pub extern "js" fn CSSMathMin::div(
  self : CSSMathMin,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.div(values)

///|
pub extern "js" fn CSSMathMin::min(
  self : CSSMathMin,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.min(values)

///|
pub extern "js" fn CSSMathMin::max(
  self : CSSMathMin,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.max(values)

///|
pub extern "js" fn CSSMathMin::equals(
  self : CSSMathMin,
  value : CSSNumberish,
) -> Bool =
  #| (self, value) => self.equals(value)

///|
pub extern "js" fn CSSMathMin::to(
  self : CSSMathMin,
  unit : String,
) -> CSSUnitValue =
  #| (self, unit) => self.to(unit)

///|
pub extern "js" fn CSSMathMin::to_sum(
  self : CSSMathMin,
  units : String,
) -> CSSMathSum =
  #| (self, units) => self.toSum(units)

///|
pub extern "js" fn CSSMathMin::type_(self : CSSMathMin) -> CSSNumericType =
  #| (self) => self.type()

///|
pub extern "js" fn CSSMathMin::get_operator(
  self : CSSMathMin,
) -> CSSMathOperator =
  #| (self) => self.operator

///|
pub extern "js" fn CSSMathMin::new(args : CSSNumberish) -> CSSMathMin =
  #| (args) => new CSSMathMin(args)

///|
pub extern "js" fn CSSMathMin::get_values(self : CSSMathMin) -> CSSNumericArray =
  #| (self) => self.values

///|
/// CSSMathMax interface
pub type CSSMathMax

///|
pub extern "js" fn CSSMathMax::to_js_value(self : CSSMathMax) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSMathMax::parse(
  property : String,
  css_text : String,
) -> CSSStyleValue =
  #| (property, css_text) => CSSMathMax.parse(property, css_text)

///|
pub extern "js" fn CSSMathMax::parse_all(
  property : String,
  css_text : String,
) -> Array[CSSStyleValue] =
  #| (property, css_text) => CSSMathMax.parseAll(property, css_text)

///|
pub extern "js" fn CSSMathMax::add(
  self : CSSMathMax,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.add(values)

///|
pub extern "js" fn CSSMathMax::sub(
  self : CSSMathMax,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.sub(values)

///|
pub extern "js" fn CSSMathMax::mul(
  self : CSSMathMax,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.mul(values)

///|
pub extern "js" fn CSSMathMax::div(
  self : CSSMathMax,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.div(values)

///|
pub extern "js" fn CSSMathMax::min(
  self : CSSMathMax,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.min(values)

///|
pub extern "js" fn CSSMathMax::max(
  self : CSSMathMax,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.max(values)

///|
pub extern "js" fn CSSMathMax::equals(
  self : CSSMathMax,
  value : CSSNumberish,
) -> Bool =
  #| (self, value) => self.equals(value)

///|
pub extern "js" fn CSSMathMax::to(
  self : CSSMathMax,
  unit : String,
) -> CSSUnitValue =
  #| (self, unit) => self.to(unit)

///|
pub extern "js" fn CSSMathMax::to_sum(
  self : CSSMathMax,
  units : String,
) -> CSSMathSum =
  #| (self, units) => self.toSum(units)

///|
pub extern "js" fn CSSMathMax::type_(self : CSSMathMax) -> CSSNumericType =
  #| (self) => self.type()

///|
pub extern "js" fn CSSMathMax::get_operator(
  self : CSSMathMax,
) -> CSSMathOperator =
  #| (self) => self.operator

///|
pub extern "js" fn CSSMathMax::new(args : CSSNumberish) -> CSSMathMax =
  #| (args) => new CSSMathMax(args)

///|
pub extern "js" fn CSSMathMax::get_values(self : CSSMathMax) -> CSSNumericArray =
  #| (self) => self.values

///|
/// CSSMathClamp interface
pub type CSSMathClamp

///|
pub extern "js" fn CSSMathClamp::to_js_value(self : CSSMathClamp) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSMathClamp::parse(
  property : String,
  css_text : String,
) -> CSSStyleValue =
  #| (property, css_text) => CSSMathClamp.parse(property, css_text)

///|
pub extern "js" fn CSSMathClamp::parse_all(
  property : String,
  css_text : String,
) -> Array[CSSStyleValue] =
  #| (property, css_text) => CSSMathClamp.parseAll(property, css_text)

///|
pub extern "js" fn CSSMathClamp::add(
  self : CSSMathClamp,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.add(values)

///|
pub extern "js" fn CSSMathClamp::sub(
  self : CSSMathClamp,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.sub(values)

///|
pub extern "js" fn CSSMathClamp::mul(
  self : CSSMathClamp,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.mul(values)

///|
pub extern "js" fn CSSMathClamp::div(
  self : CSSMathClamp,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.div(values)

///|
pub extern "js" fn CSSMathClamp::min(
  self : CSSMathClamp,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.min(values)

///|
pub extern "js" fn CSSMathClamp::max(
  self : CSSMathClamp,
  values : CSSNumberish,
) -> CSSNumericValue =
  #| (self, values) => self.max(values)

///|
pub extern "js" fn CSSMathClamp::equals(
  self : CSSMathClamp,
  value : CSSNumberish,
) -> Bool =
  #| (self, value) => self.equals(value)

///|
pub extern "js" fn CSSMathClamp::to(
  self : CSSMathClamp,
  unit : String,
) -> CSSUnitValue =
  #| (self, unit) => self.to(unit)

///|
pub extern "js" fn CSSMathClamp::to_sum(
  self : CSSMathClamp,
  units : String,
) -> CSSMathSum =
  #| (self, units) => self.toSum(units)

///|
pub extern "js" fn CSSMathClamp::type_(self : CSSMathClamp) -> CSSNumericType =
  #| (self) => self.type()

///|
pub extern "js" fn CSSMathClamp::get_operator(
  self : CSSMathClamp,
) -> CSSMathOperator =
  #| (self) => self.operator

///|
pub extern "js" fn CSSMathClamp::new(
  lower : CSSNumberish,
  value : CSSNumberish,
  upper : CSSNumberish,
) -> CSSMathClamp =
  #| (lower, value, upper) => new CSSMathClamp(lower, value, upper)

///|
pub extern "js" fn CSSMathClamp::get_lower(
  self : CSSMathClamp,
) -> CSSNumericValue =
  #| (self) => self.lower

///|
pub extern "js" fn CSSMathClamp::get_value(
  self : CSSMathClamp,
) -> CSSNumericValue =
  #| (self) => self.value

///|
pub extern "js" fn CSSMathClamp::get_upper(
  self : CSSMathClamp,
) -> CSSNumericValue =
  #| (self) => self.upper

///|
/// CSSNumericArray interface
pub type CSSNumericArray

///|
pub extern "js" fn CSSNumericArray::to_js_value(
  self : CSSNumericArray,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSNumericArray::_unknown_(self : CSSNumericArray) -> Unit =
  #| (self) => self._unknown_()

///|
pub extern "js" fn CSSNumericArray::get_length(self : CSSNumericArray) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn CSSNumericArray::get(
  self : CSSNumericArray,
  index : Int,
) -> CSSNumericValue =
  #| (self, index) => self[index]

///|
/// CSSTransformValue interface
pub type CSSTransformValue

///|
pub extern "js" fn CSSTransformValue::to_js_value(
  self : CSSTransformValue,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSTransformValue::parse(
  property : String,
  css_text : String,
) -> CSSStyleValue =
  #| (property, css_text) => CSSTransformValue.parse(property, css_text)

///|
pub extern "js" fn CSSTransformValue::parse_all(
  property : String,
  css_text : String,
) -> Array[CSSStyleValue] =
  #| (property, css_text) => CSSTransformValue.parseAll(property, css_text)

///|
pub extern "js" fn CSSTransformValue::new(
  transforms : Array[CSSTransformComponent],
) -> CSSTransformValue =
  #| (transforms) => new CSSTransformValue(transforms)

///|
pub extern "js" fn CSSTransformValue::_unknown_(
  self : CSSTransformValue,
) -> Unit =
  #| (self) => self._unknown_()

///|
pub extern "js" fn CSSTransformValue::get_length(
  self : CSSTransformValue,
) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn CSSTransformValue::get(
  self : CSSTransformValue,
  index : Int,
) -> CSSTransformComponent =
  #| (self, index) => self[index]

///|
pub extern "js" fn CSSTransformValue::set(
  self : CSSTransformValue,
  index : Int,
  val : CSSTransformComponent,
) -> Unit =
  #| (self, index, val) => { self[index] = val }

///|
pub extern "js" fn CSSTransformValue::get_is2_d(
  self : CSSTransformValue,
) -> Bool =
  #| (self) => self.is2D

///|
pub extern "js" fn CSSTransformValue::to_matrix(
  self : CSSTransformValue,
) -> DOMMatrix =
  #| (self) => self.toMatrix()

///|
/// CSSTransformComponent interface
pub type CSSTransformComponent

///|
pub extern "js" fn CSSTransformComponent::to_js_value(
  self : CSSTransformComponent,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSTransformComponent::get_is2_d(
  self : CSSTransformComponent,
) -> Bool =
  #| (self) => self.is2D

///|
pub extern "js" fn CSSTransformComponent::set_is2_d(
  self : CSSTransformComponent,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.is2D = value }

///|
pub extern "js" fn CSSTransformComponent::to_matrix(
  self : CSSTransformComponent,
) -> DOMMatrix =
  #| (self) => self.toMatrix()

///|
/// CSSTranslate interface
pub type CSSTranslate

///|
pub extern "js" fn CSSTranslate::to_js_value(self : CSSTranslate) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSTranslate::get_is2_d(self : CSSTranslate) -> Bool =
  #| (self) => self.is2D

///|
pub extern "js" fn CSSTranslate::set_is2_d(
  self : CSSTranslate,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.is2D = value }

///|
pub extern "js" fn CSSTranslate::to_matrix(self : CSSTranslate) -> DOMMatrix =
  #| (self) => self.toMatrix()

///|
pub extern "js" fn CSSTranslate::new(
  x : CSSNumericValue,
  y : CSSNumericValue,
  z : CSSNumericValue,
) -> CSSTranslate =
  #| (x, y, z) => new CSSTranslate(x, y, z)

///|
pub extern "js" fn CSSTranslate::get_x(self : CSSTranslate) -> CSSNumericValue =
  #| (self) => self.x

///|
pub extern "js" fn CSSTranslate::set_x(
  self : CSSTranslate,
  value : CSSNumericValue,
) -> Unit =
  #| (self, value) => { self.x = value }

///|
pub extern "js" fn CSSTranslate::get_y(self : CSSTranslate) -> CSSNumericValue =
  #| (self) => self.y

///|
pub extern "js" fn CSSTranslate::set_y(
  self : CSSTranslate,
  value : CSSNumericValue,
) -> Unit =
  #| (self, value) => { self.y = value }

///|
pub extern "js" fn CSSTranslate::get_z(self : CSSTranslate) -> CSSNumericValue =
  #| (self) => self.z

///|
pub extern "js" fn CSSTranslate::set_z(
  self : CSSTranslate,
  value : CSSNumericValue,
) -> Unit =
  #| (self, value) => { self.z = value }

///|
/// CSSRotate interface
pub type CSSRotate

///|
pub extern "js" fn CSSRotate::to_js_value(self : CSSRotate) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSRotate::get_is2_d(self : CSSRotate) -> Bool =
  #| (self) => self.is2D

///|
pub extern "js" fn CSSRotate::set_is2_d(self : CSSRotate, value : Bool) -> Unit =
  #| (self, value) => { self.is2D = value }

///|
pub extern "js" fn CSSRotate::to_matrix(self : CSSRotate) -> DOMMatrix =
  #| (self) => self.toMatrix()

///|
pub extern "js" fn CSSRotate::new(angle : CSSNumericValue) -> CSSRotate =
  #| (angle) => new CSSRotate(angle)

///|
pub extern "js" fn CSSRotate::get_x(self : CSSRotate) -> CSSNumberish =
  #| (self) => self.x

///|
pub extern "js" fn CSSRotate::set_x(
  self : CSSRotate,
  value : CSSNumberish,
) -> Unit =
  #| (self, value) => { self.x = value }

///|
pub extern "js" fn CSSRotate::get_y(self : CSSRotate) -> CSSNumberish =
  #| (self) => self.y

///|
pub extern "js" fn CSSRotate::set_y(
  self : CSSRotate,
  value : CSSNumberish,
) -> Unit =
  #| (self, value) => { self.y = value }

///|
pub extern "js" fn CSSRotate::get_z(self : CSSRotate) -> CSSNumberish =
  #| (self) => self.z

///|
pub extern "js" fn CSSRotate::set_z(
  self : CSSRotate,
  value : CSSNumberish,
) -> Unit =
  #| (self, value) => { self.z = value }

///|
pub extern "js" fn CSSRotate::get_angle(self : CSSRotate) -> CSSNumericValue =
  #| (self) => self.angle

///|
pub extern "js" fn CSSRotate::set_angle(
  self : CSSRotate,
  value : CSSNumericValue,
) -> Unit =
  #| (self, value) => { self.angle = value }

///|
/// CSSScale interface
pub type CSSScale

///|
pub extern "js" fn CSSScale::to_js_value(self : CSSScale) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSScale::get_is2_d(self : CSSScale) -> Bool =
  #| (self) => self.is2D

///|
pub extern "js" fn CSSScale::set_is2_d(self : CSSScale, value : Bool) -> Unit =
  #| (self, value) => { self.is2D = value }

///|
pub extern "js" fn CSSScale::to_matrix(self : CSSScale) -> DOMMatrix =
  #| (self) => self.toMatrix()

///|
pub extern "js" fn CSSScale::new(
  x : CSSNumberish,
  y : CSSNumberish,
  z : CSSNumberish,
) -> CSSScale =
  #| (x, y, z) => new CSSScale(x, y, z)

///|
pub extern "js" fn CSSScale::get_x(self : CSSScale) -> CSSNumberish =
  #| (self) => self.x

///|
pub extern "js" fn CSSScale::set_x(
  self : CSSScale,
  value : CSSNumberish,
) -> Unit =
  #| (self, value) => { self.x = value }

///|
pub extern "js" fn CSSScale::get_y(self : CSSScale) -> CSSNumberish =
  #| (self) => self.y

///|
pub extern "js" fn CSSScale::set_y(
  self : CSSScale,
  value : CSSNumberish,
) -> Unit =
  #| (self, value) => { self.y = value }

///|
pub extern "js" fn CSSScale::get_z(self : CSSScale) -> CSSNumberish =
  #| (self) => self.z

///|
pub extern "js" fn CSSScale::set_z(
  self : CSSScale,
  value : CSSNumberish,
) -> Unit =
  #| (self, value) => { self.z = value }

///|
/// CSSSkew interface
pub type CSSSkew

///|
pub extern "js" fn CSSSkew::to_js_value(self : CSSSkew) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSSkew::get_is2_d(self : CSSSkew) -> Bool =
  #| (self) => self.is2D

///|
pub extern "js" fn CSSSkew::set_is2_d(self : CSSSkew, value : Bool) -> Unit =
  #| (self, value) => { self.is2D = value }

///|
pub extern "js" fn CSSSkew::to_matrix(self : CSSSkew) -> DOMMatrix =
  #| (self) => self.toMatrix()

///|
pub extern "js" fn CSSSkew::new(
  ax : CSSNumericValue,
  ay : CSSNumericValue,
) -> CSSSkew =
  #| (ax, ay) => new CSSSkew(ax, ay)

///|
pub extern "js" fn CSSSkew::get_ax(self : CSSSkew) -> CSSNumericValue =
  #| (self) => self.ax

///|
pub extern "js" fn CSSSkew::set_ax(
  self : CSSSkew,
  value : CSSNumericValue,
) -> Unit =
  #| (self, value) => { self.ax = value }

///|
pub extern "js" fn CSSSkew::get_ay(self : CSSSkew) -> CSSNumericValue =
  #| (self) => self.ay

///|
pub extern "js" fn CSSSkew::set_ay(
  self : CSSSkew,
  value : CSSNumericValue,
) -> Unit =
  #| (self, value) => { self.ay = value }

///|
/// CSSSkewX interface
pub type CSSSkewX

///|
pub extern "js" fn CSSSkewX::to_js_value(self : CSSSkewX) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSSkewX::get_is2_d(self : CSSSkewX) -> Bool =
  #| (self) => self.is2D

///|
pub extern "js" fn CSSSkewX::set_is2_d(self : CSSSkewX, value : Bool) -> Unit =
  #| (self, value) => { self.is2D = value }

///|
pub extern "js" fn CSSSkewX::to_matrix(self : CSSSkewX) -> DOMMatrix =
  #| (self) => self.toMatrix()

///|
pub extern "js" fn CSSSkewX::new(ax : CSSNumericValue) -> CSSSkewX =
  #| (ax) => new CSSSkewX(ax)

///|
pub extern "js" fn CSSSkewX::get_ax(self : CSSSkewX) -> CSSNumericValue =
  #| (self) => self.ax

///|
pub extern "js" fn CSSSkewX::set_ax(
  self : CSSSkewX,
  value : CSSNumericValue,
) -> Unit =
  #| (self, value) => { self.ax = value }

///|
/// CSSSkewY interface
pub type CSSSkewY

///|
pub extern "js" fn CSSSkewY::to_js_value(self : CSSSkewY) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSSkewY::get_is2_d(self : CSSSkewY) -> Bool =
  #| (self) => self.is2D

///|
pub extern "js" fn CSSSkewY::set_is2_d(self : CSSSkewY, value : Bool) -> Unit =
  #| (self, value) => { self.is2D = value }

///|
pub extern "js" fn CSSSkewY::to_matrix(self : CSSSkewY) -> DOMMatrix =
  #| (self) => self.toMatrix()

///|
pub extern "js" fn CSSSkewY::new(ay : CSSNumericValue) -> CSSSkewY =
  #| (ay) => new CSSSkewY(ay)

///|
pub extern "js" fn CSSSkewY::get_ay(self : CSSSkewY) -> CSSNumericValue =
  #| (self) => self.ay

///|
pub extern "js" fn CSSSkewY::set_ay(
  self : CSSSkewY,
  value : CSSNumericValue,
) -> Unit =
  #| (self, value) => { self.ay = value }

///|
/// CSSPerspective interface
pub type CSSPerspective

///|
pub extern "js" fn CSSPerspective::to_js_value(
  self : CSSPerspective,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSPerspective::get_is2_d(self : CSSPerspective) -> Bool =
  #| (self) => self.is2D

///|
pub extern "js" fn CSSPerspective::set_is2_d(
  self : CSSPerspective,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.is2D = value }

///|
pub extern "js" fn CSSPerspective::to_matrix(
  self : CSSPerspective,
) -> DOMMatrix =
  #| (self) => self.toMatrix()

///|
pub extern "js" fn CSSPerspective::new(
  length : CSSPerspectiveValue,
) -> CSSPerspective =
  #| (length) => new CSSPerspective(length)

///|
pub extern "js" fn CSSPerspective::get_length(
  self : CSSPerspective,
) -> CSSPerspectiveValue =
  #| (self) => self.length

///|
pub extern "js" fn CSSPerspective::set_length(
  self : CSSPerspective,
  value : CSSPerspectiveValue,
) -> Unit =
  #| (self, value) => { self.length = value }

///|
/// CSSMatrixComponent interface
pub type CSSMatrixComponent

///|
pub extern "js" fn CSSMatrixComponent::to_js_value(
  self : CSSMatrixComponent,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSMatrixComponent::get_is2_d(
  self : CSSMatrixComponent,
) -> Bool =
  #| (self) => self.is2D

///|
pub extern "js" fn CSSMatrixComponent::set_is2_d(
  self : CSSMatrixComponent,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.is2D = value }

///|
pub extern "js" fn CSSMatrixComponent::to_matrix(
  self : CSSMatrixComponent,
) -> DOMMatrix =
  #| (self) => self.toMatrix()

///|
pub extern "js" fn CSSMatrixComponent::new(
  matrix : DOMMatrixReadOnly,
  options : CSSMatrixComponentOptions,
) -> CSSMatrixComponent =
  #| (matrix, options) => new CSSMatrixComponent(matrix, options)

///|
pub extern "js" fn CSSMatrixComponent::get_matrix(
  self : CSSMatrixComponent,
) -> DOMMatrix =
  #| (self) => self.matrix

///|
pub extern "js" fn CSSMatrixComponent::set_matrix(
  self : CSSMatrixComponent,
  value : DOMMatrix,
) -> Unit =
  #| (self, value) => { self.matrix = value }

///|
/// CSSImageValue interface
pub type CSSImageValue

///|
pub extern "js" fn CSSImageValue::to_js_value(self : CSSImageValue) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSImageValue::parse(
  property : String,
  css_text : String,
) -> CSSStyleValue =
  #| (property, css_text) => CSSImageValue.parse(property, css_text)

///|
pub extern "js" fn CSSImageValue::parse_all(
  property : String,
  css_text : String,
) -> Array[CSSStyleValue] =
  #| (property, css_text) => CSSImageValue.parseAll(property, css_text)

///|
/// CSSColorValue interface
pub type CSSColorValue

///|
pub extern "js" fn CSSColorValue::to_js_value(self : CSSColorValue) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSColorValue::parse(
  property : String,
  css_text : String,
) -> CSSStyleValue =
  #| (property, css_text) => CSSColorValue.parse(property, css_text)

///|
pub extern "js" fn CSSColorValue::parse_all(
  property : String,
  css_text : String,
) -> Array[CSSStyleValue] =
  #| (property, css_text) => CSSColorValue.parseAll(property, css_text)

///|
/// CSSRGB interface
pub type CSSRGB

///|
pub extern "js" fn CSSRGB::to_js_value(self : CSSRGB) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSRGB::parse(
  property : String,
  css_text : String,
) -> CSSStyleValue =
  #| (property, css_text) => CSSRGB.parse(property, css_text)

///|
pub extern "js" fn CSSRGB::parse_all(
  property : String,
  css_text : String,
) -> Array[CSSStyleValue] =
  #| (property, css_text) => CSSRGB.parseAll(property, css_text)

///|
pub extern "js" fn CSSRGB::new(
  r : CSSColorRGBComp,
  g : CSSColorRGBComp,
  b : CSSColorRGBComp,
  alpha : CSSColorPercent,
) -> CSSRGB =
  #| (r, g, b, alpha) => new CSSRGB(r, g, b, alpha)

///|
pub extern "js" fn CSSRGB::get_r(self : CSSRGB) -> CSSColorRGBComp =
  #| (self) => self.r

///|
pub extern "js" fn CSSRGB::set_r(
  self : CSSRGB,
  value : CSSColorRGBComp,
) -> Unit =
  #| (self, value) => { self.r = value }

///|
pub extern "js" fn CSSRGB::get_g(self : CSSRGB) -> CSSColorRGBComp =
  #| (self) => self.g

///|
pub extern "js" fn CSSRGB::set_g(
  self : CSSRGB,
  value : CSSColorRGBComp,
) -> Unit =
  #| (self, value) => { self.g = value }

///|
pub extern "js" fn CSSRGB::get_b(self : CSSRGB) -> CSSColorRGBComp =
  #| (self) => self.b

///|
pub extern "js" fn CSSRGB::set_b(
  self : CSSRGB,
  value : CSSColorRGBComp,
) -> Unit =
  #| (self, value) => { self.b = value }

///|
pub extern "js" fn CSSRGB::get_alpha(self : CSSRGB) -> CSSColorPercent =
  #| (self) => self.alpha

///|
pub extern "js" fn CSSRGB::set_alpha(
  self : CSSRGB,
  value : CSSColorPercent,
) -> Unit =
  #| (self, value) => { self.alpha = value }

///|
/// CSSHSL interface
pub type CSSHSL

///|
pub extern "js" fn CSSHSL::to_js_value(self : CSSHSL) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSHSL::parse(
  property : String,
  css_text : String,
) -> CSSStyleValue =
  #| (property, css_text) => CSSHSL.parse(property, css_text)

///|
pub extern "js" fn CSSHSL::parse_all(
  property : String,
  css_text : String,
) -> Array[CSSStyleValue] =
  #| (property, css_text) => CSSHSL.parseAll(property, css_text)

///|
pub extern "js" fn CSSHSL::new(
  h : CSSColorAngle,
  s : CSSColorPercent,
  l : CSSColorPercent,
  alpha : CSSColorPercent,
) -> CSSHSL =
  #| (h, s, l, alpha) => new CSSHSL(h, s, l, alpha)

///|
pub extern "js" fn CSSHSL::get_h(self : CSSHSL) -> CSSColorAngle =
  #| (self) => self.h

///|
pub extern "js" fn CSSHSL::set_h(self : CSSHSL, value : CSSColorAngle) -> Unit =
  #| (self, value) => { self.h = value }

///|
pub extern "js" fn CSSHSL::get_s(self : CSSHSL) -> CSSColorPercent =
  #| (self) => self.s

///|
pub extern "js" fn CSSHSL::set_s(
  self : CSSHSL,
  value : CSSColorPercent,
) -> Unit =
  #| (self, value) => { self.s = value }

///|
pub extern "js" fn CSSHSL::get_l(self : CSSHSL) -> CSSColorPercent =
  #| (self) => self.l

///|
pub extern "js" fn CSSHSL::set_l(
  self : CSSHSL,
  value : CSSColorPercent,
) -> Unit =
  #| (self, value) => { self.l = value }

///|
pub extern "js" fn CSSHSL::get_alpha(self : CSSHSL) -> CSSColorPercent =
  #| (self) => self.alpha

///|
pub extern "js" fn CSSHSL::set_alpha(
  self : CSSHSL,
  value : CSSColorPercent,
) -> Unit =
  #| (self, value) => { self.alpha = value }

///|
/// CSSHWB interface
pub type CSSHWB

///|
pub extern "js" fn CSSHWB::to_js_value(self : CSSHWB) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSHWB::parse(
  property : String,
  css_text : String,
) -> CSSStyleValue =
  #| (property, css_text) => CSSHWB.parse(property, css_text)

///|
pub extern "js" fn CSSHWB::parse_all(
  property : String,
  css_text : String,
) -> Array[CSSStyleValue] =
  #| (property, css_text) => CSSHWB.parseAll(property, css_text)

///|
pub extern "js" fn CSSHWB::new(
  h : CSSNumericValue,
  w : CSSNumberish,
  b : CSSNumberish,
  alpha : CSSNumberish,
) -> CSSHWB =
  #| (h, w, b, alpha) => new CSSHWB(h, w, b, alpha)

///|
pub extern "js" fn CSSHWB::get_h(self : CSSHWB) -> CSSNumericValue =
  #| (self) => self.h

///|
pub extern "js" fn CSSHWB::set_h(
  self : CSSHWB,
  value : CSSNumericValue,
) -> Unit =
  #| (self, value) => { self.h = value }

///|
pub extern "js" fn CSSHWB::get_w(self : CSSHWB) -> CSSNumberish =
  #| (self) => self.w

///|
pub extern "js" fn CSSHWB::set_w(self : CSSHWB, value : CSSNumberish) -> Unit =
  #| (self, value) => { self.w = value }

///|
pub extern "js" fn CSSHWB::get_b(self : CSSHWB) -> CSSNumberish =
  #| (self) => self.b

///|
pub extern "js" fn CSSHWB::set_b(self : CSSHWB, value : CSSNumberish) -> Unit =
  #| (self, value) => { self.b = value }

///|
pub extern "js" fn CSSHWB::get_alpha(self : CSSHWB) -> CSSNumberish =
  #| (self) => self.alpha

///|
pub extern "js" fn CSSHWB::set_alpha(
  self : CSSHWB,
  value : CSSNumberish,
) -> Unit =
  #| (self, value) => { self.alpha = value }

///|
/// CSSLab interface
pub type CSSLab

///|
pub extern "js" fn CSSLab::to_js_value(self : CSSLab) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSLab::parse(
  property : String,
  css_text : String,
) -> CSSStyleValue =
  #| (property, css_text) => CSSLab.parse(property, css_text)

///|
pub extern "js" fn CSSLab::parse_all(
  property : String,
  css_text : String,
) -> Array[CSSStyleValue] =
  #| (property, css_text) => CSSLab.parseAll(property, css_text)

///|
pub extern "js" fn CSSLab::new(
  l : CSSColorPercent,
  a : CSSColorNumber,
  b : CSSColorNumber,
  alpha : CSSColorPercent,
) -> CSSLab =
  #| (l, a, b, alpha) => new CSSLab(l, a, b, alpha)

///|
pub extern "js" fn CSSLab::get_l(self : CSSLab) -> CSSColorPercent =
  #| (self) => self.l

///|
pub extern "js" fn CSSLab::set_l(
  self : CSSLab,
  value : CSSColorPercent,
) -> Unit =
  #| (self, value) => { self.l = value }

///|
pub extern "js" fn CSSLab::get_a(self : CSSLab) -> CSSColorNumber =
  #| (self) => self.a

///|
pub extern "js" fn CSSLab::set_a(self : CSSLab, value : CSSColorNumber) -> Unit =
  #| (self, value) => { self.a = value }

///|
pub extern "js" fn CSSLab::get_b(self : CSSLab) -> CSSColorNumber =
  #| (self) => self.b

///|
pub extern "js" fn CSSLab::set_b(self : CSSLab, value : CSSColorNumber) -> Unit =
  #| (self, value) => { self.b = value }

///|
pub extern "js" fn CSSLab::get_alpha(self : CSSLab) -> CSSColorPercent =
  #| (self) => self.alpha

///|
pub extern "js" fn CSSLab::set_alpha(
  self : CSSLab,
  value : CSSColorPercent,
) -> Unit =
  #| (self, value) => { self.alpha = value }

///|
/// CSSLCH interface
pub type CSSLCH

///|
pub extern "js" fn CSSLCH::to_js_value(self : CSSLCH) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSLCH::parse(
  property : String,
  css_text : String,
) -> CSSStyleValue =
  #| (property, css_text) => CSSLCH.parse(property, css_text)

///|
pub extern "js" fn CSSLCH::parse_all(
  property : String,
  css_text : String,
) -> Array[CSSStyleValue] =
  #| (property, css_text) => CSSLCH.parseAll(property, css_text)

///|
pub extern "js" fn CSSLCH::new(
  l : CSSColorPercent,
  c : CSSColorPercent,
  h : CSSColorAngle,
  alpha : CSSColorPercent,
) -> CSSLCH =
  #| (l, c, h, alpha) => new CSSLCH(l, c, h, alpha)

///|
pub extern "js" fn CSSLCH::get_l(self : CSSLCH) -> CSSColorPercent =
  #| (self) => self.l

///|
pub extern "js" fn CSSLCH::set_l(
  self : CSSLCH,
  value : CSSColorPercent,
) -> Unit =
  #| (self, value) => { self.l = value }

///|
pub extern "js" fn CSSLCH::get_c(self : CSSLCH) -> CSSColorPercent =
  #| (self) => self.c

///|
pub extern "js" fn CSSLCH::set_c(
  self : CSSLCH,
  value : CSSColorPercent,
) -> Unit =
  #| (self, value) => { self.c = value }

///|
pub extern "js" fn CSSLCH::get_h(self : CSSLCH) -> CSSColorAngle =
  #| (self) => self.h

///|
pub extern "js" fn CSSLCH::set_h(self : CSSLCH, value : CSSColorAngle) -> Unit =
  #| (self, value) => { self.h = value }

///|
pub extern "js" fn CSSLCH::get_alpha(self : CSSLCH) -> CSSColorPercent =
  #| (self) => self.alpha

///|
pub extern "js" fn CSSLCH::set_alpha(
  self : CSSLCH,
  value : CSSColorPercent,
) -> Unit =
  #| (self, value) => { self.alpha = value }

///|
/// CSSOKLab interface
pub type CSSOKLab

///|
pub extern "js" fn CSSOKLab::to_js_value(self : CSSOKLab) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSOKLab::parse(
  property : String,
  css_text : String,
) -> CSSStyleValue =
  #| (property, css_text) => CSSOKLab.parse(property, css_text)

///|
pub extern "js" fn CSSOKLab::parse_all(
  property : String,
  css_text : String,
) -> Array[CSSStyleValue] =
  #| (property, css_text) => CSSOKLab.parseAll(property, css_text)

///|
pub extern "js" fn CSSOKLab::new(
  l : CSSColorPercent,
  a : CSSColorNumber,
  b : CSSColorNumber,
  alpha : CSSColorPercent,
) -> CSSOKLab =
  #| (l, a, b, alpha) => new CSSOKLab(l, a, b, alpha)

///|
pub extern "js" fn CSSOKLab::get_l(self : CSSOKLab) -> CSSColorPercent =
  #| (self) => self.l

///|
pub extern "js" fn CSSOKLab::set_l(
  self : CSSOKLab,
  value : CSSColorPercent,
) -> Unit =
  #| (self, value) => { self.l = value }

///|
pub extern "js" fn CSSOKLab::get_a(self : CSSOKLab) -> CSSColorNumber =
  #| (self) => self.a

///|
pub extern "js" fn CSSOKLab::set_a(
  self : CSSOKLab,
  value : CSSColorNumber,
) -> Unit =
  #| (self, value) => { self.a = value }

///|
pub extern "js" fn CSSOKLab::get_b(self : CSSOKLab) -> CSSColorNumber =
  #| (self) => self.b

///|
pub extern "js" fn CSSOKLab::set_b(
  self : CSSOKLab,
  value : CSSColorNumber,
) -> Unit =
  #| (self, value) => { self.b = value }

///|
pub extern "js" fn CSSOKLab::get_alpha(self : CSSOKLab) -> CSSColorPercent =
  #| (self) => self.alpha

///|
pub extern "js" fn CSSOKLab::set_alpha(
  self : CSSOKLab,
  value : CSSColorPercent,
) -> Unit =
  #| (self, value) => { self.alpha = value }

///|
/// CSSOKLCH interface
pub type CSSOKLCH

///|
pub extern "js" fn CSSOKLCH::to_js_value(self : CSSOKLCH) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSOKLCH::parse(
  property : String,
  css_text : String,
) -> CSSStyleValue =
  #| (property, css_text) => CSSOKLCH.parse(property, css_text)

///|
pub extern "js" fn CSSOKLCH::parse_all(
  property : String,
  css_text : String,
) -> Array[CSSStyleValue] =
  #| (property, css_text) => CSSOKLCH.parseAll(property, css_text)

///|
pub extern "js" fn CSSOKLCH::new(
  l : CSSColorPercent,
  c : CSSColorPercent,
  h : CSSColorAngle,
  alpha : CSSColorPercent,
) -> CSSOKLCH =
  #| (l, c, h, alpha) => new CSSOKLCH(l, c, h, alpha)

///|
pub extern "js" fn CSSOKLCH::get_l(self : CSSOKLCH) -> CSSColorPercent =
  #| (self) => self.l

///|
pub extern "js" fn CSSOKLCH::set_l(
  self : CSSOKLCH,
  value : CSSColorPercent,
) -> Unit =
  #| (self, value) => { self.l = value }

///|
pub extern "js" fn CSSOKLCH::get_c(self : CSSOKLCH) -> CSSColorPercent =
  #| (self) => self.c

///|
pub extern "js" fn CSSOKLCH::set_c(
  self : CSSOKLCH,
  value : CSSColorPercent,
) -> Unit =
  #| (self, value) => { self.c = value }

///|
pub extern "js" fn CSSOKLCH::get_h(self : CSSOKLCH) -> CSSColorAngle =
  #| (self) => self.h

///|
pub extern "js" fn CSSOKLCH::set_h(
  self : CSSOKLCH,
  value : CSSColorAngle,
) -> Unit =
  #| (self, value) => { self.h = value }

///|
pub extern "js" fn CSSOKLCH::get_alpha(self : CSSOKLCH) -> CSSColorPercent =
  #| (self) => self.alpha

///|
pub extern "js" fn CSSOKLCH::set_alpha(
  self : CSSOKLCH,
  value : CSSColorPercent,
) -> Unit =
  #| (self, value) => { self.alpha = value }

///|
/// CSSColor interface
pub type CSSColor

///|
pub extern "js" fn CSSColor::to_js_value(self : CSSColor) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSColor::parse(
  property : String,
  css_text : String,
) -> CSSStyleValue =
  #| (property, css_text) => CSSColor.parse(property, css_text)

///|
pub extern "js" fn CSSColor::parse_all(
  property : String,
  css_text : String,
) -> Array[CSSStyleValue] =
  #| (property, css_text) => CSSColor.parseAll(property, css_text)

///|
pub extern "js" fn CSSColor::new(
  color_space : CSSKeywordish,
  channels : Array[CSSColorPercent],
  alpha : CSSNumberish,
) -> CSSColor =
  #| (color_space, channels, alpha) => new CSSColor(color_space, channels, alpha)

///|
pub extern "js" fn CSSColor::get_color_space(self : CSSColor) -> CSSKeywordish =
  #| (self) => self.colorSpace

///|
pub extern "js" fn CSSColor::set_color_space(
  self : CSSColor,
  value : CSSKeywordish,
) -> Unit =
  #| (self, value) => { self.colorSpace = value }

///|
pub extern "js" fn CSSColor::get_channels(self : CSSColor) -> JsValue =
  #| (self) => self.channels

///|
pub extern "js" fn CSSColor::set_channels(
  self : CSSColor,
  value : JsValue,
) -> Unit =
  #| (self, value) => { self.channels = value }

///|
pub extern "js" fn CSSColor::get_alpha(self : CSSColor) -> CSSNumberish =
  #| (self) => self.alpha

///|
pub extern "js" fn CSSColor::set_alpha(
  self : CSSColor,
  value : CSSNumberish,
) -> Unit =
  #| (self, value) => { self.alpha = value }
