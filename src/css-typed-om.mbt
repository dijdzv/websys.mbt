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
pub extern "js" fn CSSUnparsedSegment::from_css_variable_reference_value(
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
pub extern "js" fn CSSUnparsedSegment::is_css_variable_reference_value(
  self : CSSUnparsedSegment,
) -> Bool =
  #| (self) => self instanceof CSSVariableReferenceValue

///|
/// Try to get CSSUnparsedSegment as String
pub extern "js" fn CSSUnparsedSegment::as_string(
  self : CSSUnparsedSegment,
) -> String? =
  #| (self) => (typeof self === 'string') ? self : undefined

///|
/// Try to get CSSUnparsedSegment as CSSVariableReferenceValue
pub extern "js" fn CSSUnparsedSegment::as_css_variable_reference_value(
  self : CSSUnparsedSegment,
) -> CSSVariableReferenceValue? =
  #| (self) => (self instanceof CSSVariableReferenceValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[CSSUnparsedSegment] to String?
pub fn CSSUnparsedSegment::bind_as_string(
  value : CSSUnparsedSegment?,
) -> String? {
  match value {
    Some(v) => v.as_string()
    None => None
  }
}

///|
/// Flatten Option[CSSUnparsedSegment] to CSSVariableReferenceValue?
pub fn CSSUnparsedSegment::bind_as_css_variable_reference_value(
  value : CSSUnparsedSegment?,
) -> CSSVariableReferenceValue? {
  match value {
    Some(v) => v.as_css_variable_reference_value()
    None => None
  }
}

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
pub extern "js" fn CSSKeywordish::from_css_keyword_value(
  v : CSSKeywordValue,
) -> CSSKeywordish =
  #| (v) => v

///|
/// Check if this CSSKeywordish is String
pub extern "js" fn CSSKeywordish::is_string(self : CSSKeywordish) -> Bool =
  #| (self) => typeof self === 'string'

///|
/// Check if this CSSKeywordish is CSSKeywordValue
pub extern "js" fn CSSKeywordish::is_css_keyword_value(
  self : CSSKeywordish,
) -> Bool =
  #| (self) => self instanceof CSSKeywordValue

///|
/// Try to get CSSKeywordish as String
pub extern "js" fn CSSKeywordish::as_string(self : CSSKeywordish) -> String? =
  #| (self) => (typeof self === 'string') ? self : undefined

///|
/// Try to get CSSKeywordish as CSSKeywordValue
pub extern "js" fn CSSKeywordish::as_css_keyword_value(
  self : CSSKeywordish,
) -> CSSKeywordValue? =
  #| (self) => (self instanceof CSSKeywordValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[CSSKeywordish] to String?
pub fn CSSKeywordish::bind_as_string(value : CSSKeywordish?) -> String? {
  match value {
    Some(v) => v.as_string()
    None => None
  }
}

///|
/// Flatten Option[CSSKeywordish] to CSSKeywordValue?
pub fn CSSKeywordish::bind_as_css_keyword_value(
  value : CSSKeywordish?,
) -> CSSKeywordValue? {
  match value {
    Some(v) => v.as_css_keyword_value()
    None => None
  }
}

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
pub extern "js" fn CSSNumberish::from_css_numeric_value(
  v : CSSNumericValue,
) -> CSSNumberish =
  #| (v) => v

///|
/// Check if this CSSNumberish is Double
pub extern "js" fn CSSNumberish::is_double(self : CSSNumberish) -> Bool =
  #| (self) => typeof self === 'number'

///|
/// Check if this CSSNumberish is CSSNumericValue
pub extern "js" fn CSSNumberish::is_css_numeric_value(
  self : CSSNumberish,
) -> Bool =
  #| (self) => self instanceof CSSNumericValue

///|
/// Try to get CSSNumberish as Double
pub extern "js" fn CSSNumberish::as_double(self : CSSNumberish) -> Double? =
  #| (self) => (typeof self === 'number') ? self : undefined

///|
/// Try to get CSSNumberish as CSSNumericValue
pub extern "js" fn CSSNumberish::as_css_numeric_value(
  self : CSSNumberish,
) -> CSSNumericValue? =
  #| (self) => (self instanceof CSSNumericValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[CSSNumberish] to Double?
pub fn CSSNumberish::bind_as_double(value : CSSNumberish?) -> Double? {
  match value {
    Some(v) => v.as_double()
    None => None
  }
}

///|
/// Flatten Option[CSSNumberish] to CSSNumericValue?
pub fn CSSNumberish::bind_as_css_numeric_value(
  value : CSSNumberish?,
) -> CSSNumericValue? {
  match value {
    Some(v) => v.as_css_numeric_value()
    None => None
  }
}

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
pub extern "js" fn CSSPerspectiveValue::from_css_numeric_value(
  v : CSSNumericValue,
) -> CSSPerspectiveValue =
  #| (v) => v

///|
/// Create CSSPerspectiveValue from CSSKeywordish
pub extern "js" fn CSSPerspectiveValue::from_css_keywordish(
  v : CSSKeywordish,
) -> CSSPerspectiveValue =
  #| (v) => v

///|
/// Check if this CSSPerspectiveValue is CSSNumericValue
pub extern "js" fn CSSPerspectiveValue::is_css_numeric_value(
  self : CSSPerspectiveValue,
) -> Bool =
  #| (self) => self instanceof CSSNumericValue

///|
/// Check if this CSSPerspectiveValue is CSSKeywordish
pub extern "js" fn CSSPerspectiveValue::is_css_keywordish(
  self : CSSPerspectiveValue,
) -> Bool =
  #| (self) => typeof self === 'string' || self instanceof CSSKeywordValue

///|
/// Try to get CSSPerspectiveValue as CSSNumericValue
pub extern "js" fn CSSPerspectiveValue::as_css_numeric_value(
  self : CSSPerspectiveValue,
) -> CSSNumericValue? =
  #| (self) => (self instanceof CSSNumericValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get CSSPerspectiveValue as CSSKeywordish
pub extern "js" fn CSSPerspectiveValue::as_css_keywordish(
  self : CSSPerspectiveValue,
) -> CSSKeywordish? =
  #| (self) => (typeof self === 'string' || self instanceof CSSKeywordValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[CSSPerspectiveValue] to CSSNumericValue?
pub fn CSSPerspectiveValue::bind_as_css_numeric_value(
  value : CSSPerspectiveValue?,
) -> CSSNumericValue? {
  match value {
    Some(v) => v.as_css_numeric_value()
    None => None
  }
}

///|
/// Flatten Option[CSSPerspectiveValue] to CSSKeywordish?
pub fn CSSPerspectiveValue::bind_as_css_keywordish(
  value : CSSPerspectiveValue?,
) -> CSSKeywordish? {
  match value {
    Some(v) => v.as_css_keywordish()
    None => None
  }
}

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
pub extern "js" fn CSSColorRGBComp::from_css_numberish(
  v : CSSNumberish,
) -> CSSColorRGBComp =
  #| (v) => v

///|
/// Create CSSColorRGBComp from CSSKeywordish
pub extern "js" fn CSSColorRGBComp::from_css_keywordish(
  v : CSSKeywordish,
) -> CSSColorRGBComp =
  #| (v) => v

///|
/// Check if this CSSColorRGBComp is CSSNumberish
pub extern "js" fn CSSColorRGBComp::is_css_numberish(
  self : CSSColorRGBComp,
) -> Bool =
  #| (self) => typeof self === 'number' || self instanceof CSSNumericValue

///|
/// Check if this CSSColorRGBComp is CSSKeywordish
pub extern "js" fn CSSColorRGBComp::is_css_keywordish(
  self : CSSColorRGBComp,
) -> Bool =
  #| (self) => typeof self === 'string' || self instanceof CSSKeywordValue

///|
/// Try to get CSSColorRGBComp as CSSNumberish
pub extern "js" fn CSSColorRGBComp::as_css_numberish(
  self : CSSColorRGBComp,
) -> CSSNumberish? =
  #| (self) => (typeof self === 'number' || self instanceof CSSNumericValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get CSSColorRGBComp as CSSKeywordish
pub extern "js" fn CSSColorRGBComp::as_css_keywordish(
  self : CSSColorRGBComp,
) -> CSSKeywordish? =
  #| (self) => (typeof self === 'string' || self instanceof CSSKeywordValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[CSSColorRGBComp] to CSSNumberish?
pub fn CSSColorRGBComp::bind_as_css_numberish(
  value : CSSColorRGBComp?,
) -> CSSNumberish? {
  match value {
    Some(v) => v.as_css_numberish()
    None => None
  }
}

///|
/// Flatten Option[CSSColorRGBComp] to CSSKeywordish?
pub fn CSSColorRGBComp::bind_as_css_keywordish(
  value : CSSColorRGBComp?,
) -> CSSKeywordish? {
  match value {
    Some(v) => v.as_css_keywordish()
    None => None
  }
}

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
pub extern "js" fn CSSColorPercent::from_css_numberish(
  v : CSSNumberish,
) -> CSSColorPercent =
  #| (v) => v

///|
/// Create CSSColorPercent from CSSKeywordish
pub extern "js" fn CSSColorPercent::from_css_keywordish(
  v : CSSKeywordish,
) -> CSSColorPercent =
  #| (v) => v

///|
/// Check if this CSSColorPercent is CSSNumberish
pub extern "js" fn CSSColorPercent::is_css_numberish(
  self : CSSColorPercent,
) -> Bool =
  #| (self) => typeof self === 'number' || self instanceof CSSNumericValue

///|
/// Check if this CSSColorPercent is CSSKeywordish
pub extern "js" fn CSSColorPercent::is_css_keywordish(
  self : CSSColorPercent,
) -> Bool =
  #| (self) => typeof self === 'string' || self instanceof CSSKeywordValue

///|
/// Try to get CSSColorPercent as CSSNumberish
pub extern "js" fn CSSColorPercent::as_css_numberish(
  self : CSSColorPercent,
) -> CSSNumberish? =
  #| (self) => (typeof self === 'number' || self instanceof CSSNumericValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get CSSColorPercent as CSSKeywordish
pub extern "js" fn CSSColorPercent::as_css_keywordish(
  self : CSSColorPercent,
) -> CSSKeywordish? =
  #| (self) => (typeof self === 'string' || self instanceof CSSKeywordValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[CSSColorPercent] to CSSNumberish?
pub fn CSSColorPercent::bind_as_css_numberish(
  value : CSSColorPercent?,
) -> CSSNumberish? {
  match value {
    Some(v) => v.as_css_numberish()
    None => None
  }
}

///|
/// Flatten Option[CSSColorPercent] to CSSKeywordish?
pub fn CSSColorPercent::bind_as_css_keywordish(
  value : CSSColorPercent?,
) -> CSSKeywordish? {
  match value {
    Some(v) => v.as_css_keywordish()
    None => None
  }
}

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
pub extern "js" fn CSSColorNumber::from_css_numberish(
  v : CSSNumberish,
) -> CSSColorNumber =
  #| (v) => v

///|
/// Create CSSColorNumber from CSSKeywordish
pub extern "js" fn CSSColorNumber::from_css_keywordish(
  v : CSSKeywordish,
) -> CSSColorNumber =
  #| (v) => v

///|
/// Check if this CSSColorNumber is CSSNumberish
pub extern "js" fn CSSColorNumber::is_css_numberish(
  self : CSSColorNumber,
) -> Bool =
  #| (self) => typeof self === 'number' || self instanceof CSSNumericValue

///|
/// Check if this CSSColorNumber is CSSKeywordish
pub extern "js" fn CSSColorNumber::is_css_keywordish(
  self : CSSColorNumber,
) -> Bool =
  #| (self) => typeof self === 'string' || self instanceof CSSKeywordValue

///|
/// Try to get CSSColorNumber as CSSNumberish
pub extern "js" fn CSSColorNumber::as_css_numberish(
  self : CSSColorNumber,
) -> CSSNumberish? =
  #| (self) => (typeof self === 'number' || self instanceof CSSNumericValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get CSSColorNumber as CSSKeywordish
pub extern "js" fn CSSColorNumber::as_css_keywordish(
  self : CSSColorNumber,
) -> CSSKeywordish? =
  #| (self) => (typeof self === 'string' || self instanceof CSSKeywordValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[CSSColorNumber] to CSSNumberish?
pub fn CSSColorNumber::bind_as_css_numberish(
  value : CSSColorNumber?,
) -> CSSNumberish? {
  match value {
    Some(v) => v.as_css_numberish()
    None => None
  }
}

///|
/// Flatten Option[CSSColorNumber] to CSSKeywordish?
pub fn CSSColorNumber::bind_as_css_keywordish(
  value : CSSColorNumber?,
) -> CSSKeywordish? {
  match value {
    Some(v) => v.as_css_keywordish()
    None => None
  }
}

///|
/// CSSColorAngle typedef
pub type CSSColorAngle

///|
pub extern "js" fn CSSColorAngle::to_js_value(self : CSSColorAngle) -> JsValue =
  #| (self) => self

///|
/// Create CSSColorAngle from CSSNumberish
pub extern "js" fn CSSColorAngle::from_css_numberish(
  v : CSSNumberish,
) -> CSSColorAngle =
  #| (v) => v

///|
/// Create CSSColorAngle from CSSKeywordish
pub extern "js" fn CSSColorAngle::from_css_keywordish(
  v : CSSKeywordish,
) -> CSSColorAngle =
  #| (v) => v

///|
/// Check if this CSSColorAngle is CSSNumberish
pub extern "js" fn CSSColorAngle::is_css_numberish(
  self : CSSColorAngle,
) -> Bool =
  #| (self) => typeof self === 'number' || self instanceof CSSNumericValue

///|
/// Check if this CSSColorAngle is CSSKeywordish
pub extern "js" fn CSSColorAngle::is_css_keywordish(
  self : CSSColorAngle,
) -> Bool =
  #| (self) => typeof self === 'string' || self instanceof CSSKeywordValue

///|
/// Try to get CSSColorAngle as CSSNumberish
pub extern "js" fn CSSColorAngle::as_css_numberish(
  self : CSSColorAngle,
) -> CSSNumberish? =
  #| (self) => (typeof self === 'number' || self instanceof CSSNumericValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get CSSColorAngle as CSSKeywordish
pub extern "js" fn CSSColorAngle::as_css_keywordish(
  self : CSSColorAngle,
) -> CSSKeywordish? =
  #| (self) => (typeof self === 'string' || self instanceof CSSKeywordValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[CSSColorAngle] to CSSNumberish?
pub fn CSSColorAngle::bind_as_css_numberish(
  value : CSSColorAngle?,
) -> CSSNumberish? {
  match value {
    Some(v) => v.as_css_numberish()
    None => None
  }
}

///|
/// Flatten Option[CSSColorAngle] to CSSKeywordish?
pub fn CSSColorAngle::bind_as_css_keywordish(
  value : CSSColorAngle?,
) -> CSSKeywordish? {
  match value {
    Some(v) => v.as_css_keywordish()
    None => None
  }
}

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
} derive(Eq, Show)

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
} derive(Eq, Show)

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
pub(all) struct CSSNumericType {
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
extern "js" fn CSSNumericType::to_js_ffi(self : CSSNumericType) -> JsValue =
  #| (self) => ({
  #|   length: self.length,
  #|   angle: self.angle,
  #|   time: self.time,
  #|   frequency: self.frequency,
  #|   resolution: self.resolution,
  #|   flex: self.flex,
  #|   percent: self.percent,
  #|   percentHint: ((() => { const v = self.percentHint; if (v === undefined) return undefined; return ['length', 'angle', 'time', 'frequency', 'resolution', 'flex', 'percent'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn CSSNumericType::to_js(self : CSSNumericType) -> JsValue {
  CSSNumericType::to_js_ffi(self)
}

///|
extern "js" fn CSSNumericType::from_js_ffi(value : JsValue) -> CSSNumericType =
  #| (v) => ({
  #|   length: v.length,
  #|   angle: v.angle,
  #|   time: v.time,
  #|   frequency: v.frequency,
  #|   resolution: v.resolution,
  #|   flex: v.flex,
  #|   percent: v.percent,
  #|   percentHint: (v.percentHint === undefined ? undefined : ['length', 'angle', 'time', 'frequency', 'resolution', 'flex', 'percent'].indexOf(v.percentHint))
  #| })

///|
/// Convert from JsValue
pub fn CSSNumericType::from_js(value : JsValue) -> CSSNumericType {
  CSSNumericType::from_js_ffi(value)
}

///|
/// CSSMatrixComponentOptions dictionary
pub(all) struct CSSMatrixComponentOptions {
  is2D : Bool?
}

///|
/// Create a new CSSMatrixComponentOptions with default values
pub fn CSSMatrixComponentOptions::default() -> CSSMatrixComponentOptions {
  CSSMatrixComponentOptions::{ is2D: None }
}

///|
extern "js" fn CSSMatrixComponentOptions::to_js_ffi(
  self : CSSMatrixComponentOptions,
) -> JsValue =
  #| (self) => ({
  #|   is2D: (self.is2D === -1 ? undefined : self.is2D)
  #| })

///|
/// Convert to JsValue
pub fn CSSMatrixComponentOptions::to_js(
  self : CSSMatrixComponentOptions,
) -> JsValue {
  CSSMatrixComponentOptions::to_js_ffi(self)
}

///|
extern "js" fn CSSMatrixComponentOptions::from_js_ffi(
  value : JsValue,
) -> CSSMatrixComponentOptions =
  #| (v) => ({
  #|   is2D: (v.is2D === undefined ? -1 : v.is2D)
  #| })

///|
/// Convert from JsValue
pub fn CSSMatrixComponentOptions::from_js(
  value : JsValue,
) -> CSSMatrixComponentOptions {
  CSSMatrixComponentOptions::from_js_ffi(value)
}

///|
/// CSSStyleValue interface
pub type CSSStyleValue

///|
pub extern "js" fn CSSStyleValue::to_js_value(self : CSSStyleValue) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSStyleValue (unchecked)
pub extern "js" fn CSSStyleValue::from_js_value(v : JsValue) -> CSSStyleValue =
  #| (v) => v

///|
/// Safely cast JsValue to CSSStyleValue (checked with instanceof)
pub extern "js" fn CSSStyleValue::from_js_value_opt(
  v : JsValue,
) -> CSSStyleValue? =
  #| (v) => (v instanceof CSSStyleValue) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSStyleValue (checked with instanceof)
pub extern "js" fn JsValue::as_css_style_value(
  self : JsValue,
) -> CSSStyleValue? =
  #| (self) => (self instanceof CSSStyleValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSStyleValue (unchecked)
pub extern "js" fn JsValue::to_css_style_value(self : JsValue) -> CSSStyleValue =
  #| (self) => self

///|
pub extern "js" fn CSSStyleValue::as_css_unparsed_value(
  self : CSSStyleValue,
) -> CSSUnparsedValue? =
  #| (self) => (self instanceof CSSUnparsedValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSStyleValue::as_css_keyword_value(
  self : CSSStyleValue,
) -> CSSKeywordValue? =
  #| (self) => (self instanceof CSSKeywordValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSStyleValue::as_css_numeric_value(
  self : CSSStyleValue,
) -> CSSNumericValue? =
  #| (self) => (self instanceof CSSNumericValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSStyleValue::as_css_unit_value(
  self : CSSStyleValue,
) -> CSSUnitValue? =
  #| (self) => (self instanceof CSSUnitValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSStyleValue::as_css_math_value(
  self : CSSStyleValue,
) -> CSSMathValue? =
  #| (self) => (self instanceof CSSMathValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSStyleValue::as_css_math_sum(
  self : CSSStyleValue,
) -> CSSMathSum? =
  #| (self) => (self instanceof CSSMathSum) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSStyleValue::as_css_math_product(
  self : CSSStyleValue,
) -> CSSMathProduct? =
  #| (self) => (self instanceof CSSMathProduct) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSStyleValue::as_css_math_negate(
  self : CSSStyleValue,
) -> CSSMathNegate? =
  #| (self) => (self instanceof CSSMathNegate) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSStyleValue::as_css_math_invert(
  self : CSSStyleValue,
) -> CSSMathInvert? =
  #| (self) => (self instanceof CSSMathInvert) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSStyleValue::as_css_math_min(
  self : CSSStyleValue,
) -> CSSMathMin? =
  #| (self) => (self instanceof CSSMathMin) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSStyleValue::as_css_math_max(
  self : CSSStyleValue,
) -> CSSMathMax? =
  #| (self) => (self instanceof CSSMathMax) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSStyleValue::as_css_math_clamp(
  self : CSSStyleValue,
) -> CSSMathClamp? =
  #| (self) => (self instanceof CSSMathClamp) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSStyleValue::as_css_transform_value(
  self : CSSStyleValue,
) -> CSSTransformValue? =
  #| (self) => (self instanceof CSSTransformValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSStyleValue::as_css_image_value(
  self : CSSStyleValue,
) -> CSSImageValue? =
  #| (self) => (self instanceof CSSImageValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSStyleValue::as_css_color_value(
  self : CSSStyleValue,
) -> CSSColorValue? =
  #| (self) => (self instanceof CSSColorValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSStyleValue::as_cssrgb(self : CSSStyleValue) -> CSSRGB? =
  #| (self) => (self instanceof CSSRGB) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSStyleValue::as_csshsl(self : CSSStyleValue) -> CSSHSL? =
  #| (self) => (self instanceof CSSHSL) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSStyleValue::as_csshwb(self : CSSStyleValue) -> CSSHWB? =
  #| (self) => (self instanceof CSSHWB) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSStyleValue::as_css_lab(self : CSSStyleValue) -> CSSLab? =
  #| (self) => (self instanceof CSSLab) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSStyleValue::as_csslch(self : CSSStyleValue) -> CSSLCH? =
  #| (self) => (self instanceof CSSLCH) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSStyleValue::as_cssok_lab(
  self : CSSStyleValue,
) -> CSSOKLab? =
  #| (self) => (self instanceof CSSOKLab) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSStyleValue::as_cssoklch(
  self : CSSStyleValue,
) -> CSSOKLCH? =
  #| (self) => (self instanceof CSSOKLCH) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSStyleValue::as_css_color(
  self : CSSStyleValue,
) -> CSSColor? =
  #| (self) => (self instanceof CSSColor) ? { $tag: 1, _0: self } : { $tag: 0 }

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
/// Cast JsValue to StylePropertyMapReadOnly (unchecked)
pub extern "js" fn StylePropertyMapReadOnly::from_js_value(
  v : JsValue,
) -> StylePropertyMapReadOnly =
  #| (v) => v

///|
/// Safely cast JsValue to StylePropertyMapReadOnly (checked with instanceof)
pub extern "js" fn StylePropertyMapReadOnly::from_js_value_opt(
  v : JsValue,
) -> StylePropertyMapReadOnly? =
  #| (v) => (v instanceof StylePropertyMapReadOnly) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to StylePropertyMapReadOnly (checked with instanceof)
pub extern "js" fn JsValue::as_style_property_map_read_only(
  self : JsValue,
) -> StylePropertyMapReadOnly? =
  #| (self) => (self instanceof StylePropertyMapReadOnly) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to StylePropertyMapReadOnly (unchecked)
pub extern "js" fn JsValue::to_style_property_map_read_only(
  self : JsValue,
) -> StylePropertyMapReadOnly =
  #| (self) => self

///|
pub extern "js" fn StylePropertyMapReadOnly::as_style_property_map(
  self : StylePropertyMapReadOnly,
) -> StylePropertyMap? =
  #| (self) => (self instanceof StylePropertyMap) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn StylePropertyMapReadOnly::keys(
  self : StylePropertyMapReadOnly,
) -> JsValue =
  #| (self) => self.keys()

///|
pub extern "js" fn StylePropertyMapReadOnly::values(
  self : StylePropertyMapReadOnly,
) -> JsValue =
  #| (self) => self.values()

///|
pub extern "js" fn StylePropertyMapReadOnly::entries(
  self : StylePropertyMapReadOnly,
) -> JsValue =
  #| (self) => self.entries()

///|
pub extern "js" fn StylePropertyMapReadOnly::for_each(
  self : StylePropertyMapReadOnly,
  callback : JsValue,
) -> Unit =
  #| (self, callback) => { self.forEach(callback) }

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
/// Cast JsValue to StylePropertyMap (unchecked)
pub extern "js" fn StylePropertyMap::from_js_value(
  v : JsValue,
) -> StylePropertyMap =
  #| (v) => v

///|
/// Safely cast JsValue to StylePropertyMap (checked with instanceof)
pub extern "js" fn StylePropertyMap::from_js_value_opt(
  v : JsValue,
) -> StylePropertyMap? =
  #| (v) => (v instanceof StylePropertyMap) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to StylePropertyMap (checked with instanceof)
pub extern "js" fn JsValue::as_style_property_map(
  self : JsValue,
) -> StylePropertyMap? =
  #| (self) => (self instanceof StylePropertyMap) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to StylePropertyMap (unchecked)
pub extern "js" fn JsValue::to_style_property_map(
  self : JsValue,
) -> StylePropertyMap =
  #| (self) => self

///|
pub extern "js" fn StylePropertyMap::to_style_property_map_read_only(
  self : StylePropertyMap,
) -> StylePropertyMapReadOnly =
  #| (self) => self

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
/// Cast JsValue to CSSUnparsedValue (unchecked)
pub extern "js" fn CSSUnparsedValue::from_js_value(
  v : JsValue,
) -> CSSUnparsedValue =
  #| (v) => v

///|
/// Safely cast JsValue to CSSUnparsedValue (checked with instanceof)
pub extern "js" fn CSSUnparsedValue::from_js_value_opt(
  v : JsValue,
) -> CSSUnparsedValue? =
  #| (v) => (v instanceof CSSUnparsedValue) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSUnparsedValue (checked with instanceof)
pub extern "js" fn JsValue::as_css_unparsed_value(
  self : JsValue,
) -> CSSUnparsedValue? =
  #| (self) => (self instanceof CSSUnparsedValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSUnparsedValue (unchecked)
pub extern "js" fn JsValue::to_css_unparsed_value(
  self : JsValue,
) -> CSSUnparsedValue =
  #| (self) => self

///|
pub extern "js" fn CSSUnparsedValue::to_css_style_value(
  self : CSSUnparsedValue,
) -> CSSStyleValue =
  #| (self) => self

///|
pub extern "js" fn CSSUnparsedValue::new(
  members : Array[CSSUnparsedSegment],
) -> CSSUnparsedValue =
  #| (members) => new CSSUnparsedValue(members)

///|
pub extern "js" fn CSSUnparsedValue::keys(self : CSSUnparsedValue) -> JsValue =
  #| (self) => self.keys()

///|
pub extern "js" fn CSSUnparsedValue::values(self : CSSUnparsedValue) -> JsValue =
  #| (self) => self.values()

///|
pub extern "js" fn CSSUnparsedValue::entries(
  self : CSSUnparsedValue,
) -> JsValue =
  #| (self) => self.entries()

///|
pub extern "js" fn CSSUnparsedValue::for_each(
  self : CSSUnparsedValue,
  callback : JsValue,
) -> Unit =
  #| (self, callback) => { self.forEach(callback) }

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
/// Cast JsValue to CSSVariableReferenceValue (unchecked)
pub extern "js" fn CSSVariableReferenceValue::from_js_value(
  v : JsValue,
) -> CSSVariableReferenceValue =
  #| (v) => v

///|
/// Safely cast JsValue to CSSVariableReferenceValue (checked with instanceof)
pub extern "js" fn CSSVariableReferenceValue::from_js_value_opt(
  v : JsValue,
) -> CSSVariableReferenceValue? =
  #| (v) => (v instanceof CSSVariableReferenceValue) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSVariableReferenceValue (checked with instanceof)
pub extern "js" fn JsValue::as_css_variable_reference_value(
  self : JsValue,
) -> CSSVariableReferenceValue? =
  #| (self) => (self instanceof CSSVariableReferenceValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSVariableReferenceValue (unchecked)
pub extern "js" fn JsValue::to_css_variable_reference_value(
  self : JsValue,
) -> CSSVariableReferenceValue =
  #| (self) => self

///|
pub extern "js" fn CSSVariableReferenceValue::new(
  variable : String,
) -> CSSVariableReferenceValue =
  #| (variable) => new CSSVariableReferenceValue(variable)

///|
pub extern "js" fn CSSVariableReferenceValue::new_with_fallback(
  variable : String,
  fallback : CSSUnparsedValue?,
) -> CSSVariableReferenceValue =
  #| (variable, fallback) => new CSSVariableReferenceValue(variable, (fallback.$tag === 1 ? fallback._0 : null))

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
  #| (self) => (() => { const v = self.fallback; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// CSSKeywordValue interface
pub type CSSKeywordValue

///|
pub extern "js" fn CSSKeywordValue::to_js_value(
  self : CSSKeywordValue,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSKeywordValue (unchecked)
pub extern "js" fn CSSKeywordValue::from_js_value(
  v : JsValue,
) -> CSSKeywordValue =
  #| (v) => v

///|
/// Safely cast JsValue to CSSKeywordValue (checked with instanceof)
pub extern "js" fn CSSKeywordValue::from_js_value_opt(
  v : JsValue,
) -> CSSKeywordValue? =
  #| (v) => (v instanceof CSSKeywordValue) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSKeywordValue (checked with instanceof)
pub extern "js" fn JsValue::as_css_keyword_value(
  self : JsValue,
) -> CSSKeywordValue? =
  #| (self) => (self instanceof CSSKeywordValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSKeywordValue (unchecked)
pub extern "js" fn JsValue::to_css_keyword_value(
  self : JsValue,
) -> CSSKeywordValue =
  #| (self) => self

///|
pub extern "js" fn CSSKeywordValue::to_css_style_value(
  self : CSSKeywordValue,
) -> CSSStyleValue =
  #| (self) => self

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
/// Cast JsValue to CSSNumericValue (unchecked)
pub extern "js" fn CSSNumericValue::from_js_value(
  v : JsValue,
) -> CSSNumericValue =
  #| (v) => v

///|
/// Safely cast JsValue to CSSNumericValue (checked with instanceof)
pub extern "js" fn CSSNumericValue::from_js_value_opt(
  v : JsValue,
) -> CSSNumericValue? =
  #| (v) => (v instanceof CSSNumericValue) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSNumericValue (checked with instanceof)
pub extern "js" fn JsValue::as_css_numeric_value(
  self : JsValue,
) -> CSSNumericValue? =
  #| (self) => (self instanceof CSSNumericValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSNumericValue (unchecked)
pub extern "js" fn JsValue::to_css_numeric_value(
  self : JsValue,
) -> CSSNumericValue =
  #| (self) => self

///|
pub extern "js" fn CSSNumericValue::to_css_style_value(
  self : CSSNumericValue,
) -> CSSStyleValue =
  #| (self) => self

///|
pub extern "js" fn CSSNumericValue::as_css_unit_value(
  self : CSSNumericValue,
) -> CSSUnitValue? =
  #| (self) => (self instanceof CSSUnitValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSNumericValue::as_css_math_value(
  self : CSSNumericValue,
) -> CSSMathValue? =
  #| (self) => (self instanceof CSSMathValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSNumericValue::as_css_math_sum(
  self : CSSNumericValue,
) -> CSSMathSum? =
  #| (self) => (self instanceof CSSMathSum) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSNumericValue::as_css_math_product(
  self : CSSNumericValue,
) -> CSSMathProduct? =
  #| (self) => (self instanceof CSSMathProduct) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSNumericValue::as_css_math_negate(
  self : CSSNumericValue,
) -> CSSMathNegate? =
  #| (self) => (self instanceof CSSMathNegate) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSNumericValue::as_css_math_invert(
  self : CSSNumericValue,
) -> CSSMathInvert? =
  #| (self) => (self instanceof CSSMathInvert) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSNumericValue::as_css_math_min(
  self : CSSNumericValue,
) -> CSSMathMin? =
  #| (self) => (self instanceof CSSMathMin) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSNumericValue::as_css_math_max(
  self : CSSNumericValue,
) -> CSSMathMax? =
  #| (self) => (self instanceof CSSMathMax) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSNumericValue::as_css_math_clamp(
  self : CSSNumericValue,
) -> CSSMathClamp? =
  #| (self) => (self instanceof CSSMathClamp) ? { $tag: 1, _0: self } : { $tag: 0 }

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
pub extern "js" fn CSSNumericValue::parse(css_text : String) -> CSSNumericValue =
  #| (css_text) => CSSNumericValue.parse(css_text)

///|
pub extern "js" fn CSSNumericValue::add_with_double(
  self : CSSNumericValue,
  values : Double,
) -> CSSNumericValue =
  #| (self, values) => self.add(values)

///|
pub extern "js" fn CSSNumericValue::add_with_css_numeric_value(
  self : CSSNumericValue,
  values : CSSNumericValue,
) -> CSSNumericValue =
  #| (self, values) => self.add(values)

///|
pub extern "js" fn CSSNumericValue::sub_with_double(
  self : CSSNumericValue,
  values : Double,
) -> CSSNumericValue =
  #| (self, values) => self.sub(values)

///|
pub extern "js" fn CSSNumericValue::sub_with_css_numeric_value(
  self : CSSNumericValue,
  values : CSSNumericValue,
) -> CSSNumericValue =
  #| (self, values) => self.sub(values)

///|
pub extern "js" fn CSSNumericValue::mul_with_double(
  self : CSSNumericValue,
  values : Double,
) -> CSSNumericValue =
  #| (self, values) => self.mul(values)

///|
pub extern "js" fn CSSNumericValue::mul_with_css_numeric_value(
  self : CSSNumericValue,
  values : CSSNumericValue,
) -> CSSNumericValue =
  #| (self, values) => self.mul(values)

///|
pub extern "js" fn CSSNumericValue::div_with_double(
  self : CSSNumericValue,
  values : Double,
) -> CSSNumericValue =
  #| (self, values) => self.div(values)

///|
pub extern "js" fn CSSNumericValue::div_with_css_numeric_value(
  self : CSSNumericValue,
  values : CSSNumericValue,
) -> CSSNumericValue =
  #| (self, values) => self.div(values)

///|
pub extern "js" fn CSSNumericValue::min_with_double(
  self : CSSNumericValue,
  values : Double,
) -> CSSNumericValue =
  #| (self, values) => self.min(values)

///|
pub extern "js" fn CSSNumericValue::min_with_css_numeric_value(
  self : CSSNumericValue,
  values : CSSNumericValue,
) -> CSSNumericValue =
  #| (self, values) => self.min(values)

///|
pub extern "js" fn CSSNumericValue::max_with_double(
  self : CSSNumericValue,
  values : Double,
) -> CSSNumericValue =
  #| (self, values) => self.max(values)

///|
pub extern "js" fn CSSNumericValue::max_with_css_numeric_value(
  self : CSSNumericValue,
  values : CSSNumericValue,
) -> CSSNumericValue =
  #| (self, values) => self.max(values)

///|
pub extern "js" fn CSSNumericValue::equals_with_double(
  self : CSSNumericValue,
  value : Double,
) -> Bool =
  #| (self, value) => self.equals(value)

///|
pub extern "js" fn CSSNumericValue::equals_with_css_numeric_value(
  self : CSSNumericValue,
  value : CSSNumericValue,
) -> Bool =
  #| (self, value) => self.equals(value)

///|
/// CSSUnitValue interface
pub type CSSUnitValue

///|
pub extern "js" fn CSSUnitValue::to_js_value(self : CSSUnitValue) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSUnitValue (unchecked)
pub extern "js" fn CSSUnitValue::from_js_value(v : JsValue) -> CSSUnitValue =
  #| (v) => v

///|
/// Safely cast JsValue to CSSUnitValue (checked with instanceof)
pub extern "js" fn CSSUnitValue::from_js_value_opt(
  v : JsValue,
) -> CSSUnitValue? =
  #| (v) => (v instanceof CSSUnitValue) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSUnitValue (checked with instanceof)
pub extern "js" fn JsValue::as_css_unit_value(self : JsValue) -> CSSUnitValue? =
  #| (self) => (self instanceof CSSUnitValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSUnitValue (unchecked)
pub extern "js" fn JsValue::to_css_unit_value(self : JsValue) -> CSSUnitValue =
  #| (self) => self

///|
pub extern "js" fn CSSUnitValue::to_css_numeric_value(
  self : CSSUnitValue,
) -> CSSNumericValue =
  #| (self) => self

///|
pub extern "js" fn CSSUnitValue::to_css_style_value(
  self : CSSUnitValue,
) -> CSSStyleValue =
  #| (self) => self

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
/// Cast JsValue to CSSMathValue (unchecked)
pub extern "js" fn CSSMathValue::from_js_value(v : JsValue) -> CSSMathValue =
  #| (v) => v

///|
/// Safely cast JsValue to CSSMathValue (checked with instanceof)
pub extern "js" fn CSSMathValue::from_js_value_opt(
  v : JsValue,
) -> CSSMathValue? =
  #| (v) => (v instanceof CSSMathValue) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSMathValue (checked with instanceof)
pub extern "js" fn JsValue::as_css_math_value(self : JsValue) -> CSSMathValue? =
  #| (self) => (self instanceof CSSMathValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSMathValue (unchecked)
pub extern "js" fn JsValue::to_css_math_value(self : JsValue) -> CSSMathValue =
  #| (self) => self

///|
pub extern "js" fn CSSMathValue::to_css_numeric_value(
  self : CSSMathValue,
) -> CSSNumericValue =
  #| (self) => self

///|
pub extern "js" fn CSSMathValue::to_css_style_value(
  self : CSSMathValue,
) -> CSSStyleValue =
  #| (self) => self

///|
pub extern "js" fn CSSMathValue::as_css_math_sum(
  self : CSSMathValue,
) -> CSSMathSum? =
  #| (self) => (self instanceof CSSMathSum) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSMathValue::as_css_math_product(
  self : CSSMathValue,
) -> CSSMathProduct? =
  #| (self) => (self instanceof CSSMathProduct) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSMathValue::as_css_math_negate(
  self : CSSMathValue,
) -> CSSMathNegate? =
  #| (self) => (self instanceof CSSMathNegate) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSMathValue::as_css_math_invert(
  self : CSSMathValue,
) -> CSSMathInvert? =
  #| (self) => (self instanceof CSSMathInvert) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSMathValue::as_css_math_min(
  self : CSSMathValue,
) -> CSSMathMin? =
  #| (self) => (self instanceof CSSMathMin) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSMathValue::as_css_math_max(
  self : CSSMathValue,
) -> CSSMathMax? =
  #| (self) => (self instanceof CSSMathMax) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSMathValue::as_css_math_clamp(
  self : CSSMathValue,
) -> CSSMathClamp? =
  #| (self) => (self instanceof CSSMathClamp) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSMathValue::get_operator(
  self : CSSMathValue,
) -> CSSMathOperator =
  #| (self) => ['sum', 'product', 'negate', 'invert', 'min', 'max', 'clamp'].indexOf(self.operator)

///|
/// CSSMathSum interface
pub type CSSMathSum

///|
pub extern "js" fn CSSMathSum::to_js_value(self : CSSMathSum) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSMathSum (unchecked)
pub extern "js" fn CSSMathSum::from_js_value(v : JsValue) -> CSSMathSum =
  #| (v) => v

///|
/// Safely cast JsValue to CSSMathSum (checked with instanceof)
pub extern "js" fn CSSMathSum::from_js_value_opt(v : JsValue) -> CSSMathSum? =
  #| (v) => (v instanceof CSSMathSum) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSMathSum (checked with instanceof)
pub extern "js" fn JsValue::as_css_math_sum(self : JsValue) -> CSSMathSum? =
  #| (self) => (self instanceof CSSMathSum) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSMathSum (unchecked)
pub extern "js" fn JsValue::to_css_math_sum(self : JsValue) -> CSSMathSum =
  #| (self) => self

///|
pub extern "js" fn CSSMathSum::to_css_math_value(
  self : CSSMathSum,
) -> CSSMathValue =
  #| (self) => self

///|
pub extern "js" fn CSSMathSum::to_css_numeric_value(
  self : CSSMathSum,
) -> CSSNumericValue =
  #| (self) => self

///|
pub extern "js" fn CSSMathSum::to_css_style_value(
  self : CSSMathSum,
) -> CSSStyleValue =
  #| (self) => self

///|
pub extern "js" fn CSSMathSum::new(args : CSSNumberish) -> CSSMathSum =
  #| (args) => new CSSMathSum(args)

///|
pub extern "js" fn CSSMathSum::get_values(self : CSSMathSum) -> CSSNumericArray =
  #| (self) => self.values

///|
pub extern "js" fn CSSMathSum::new_with_double(args : Double) -> CSSMathSum =
  #| (args) => new CSSMathSum(args)

///|
pub extern "js" fn CSSMathSum::new_with_css_numeric_value(
  args : CSSNumericValue,
) -> CSSMathSum =
  #| (args) => new CSSMathSum(args)

///|
/// CSSMathProduct interface
pub type CSSMathProduct

///|
pub extern "js" fn CSSMathProduct::to_js_value(
  self : CSSMathProduct,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSMathProduct (unchecked)
pub extern "js" fn CSSMathProduct::from_js_value(v : JsValue) -> CSSMathProduct =
  #| (v) => v

///|
/// Safely cast JsValue to CSSMathProduct (checked with instanceof)
pub extern "js" fn CSSMathProduct::from_js_value_opt(
  v : JsValue,
) -> CSSMathProduct? =
  #| (v) => (v instanceof CSSMathProduct) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSMathProduct (checked with instanceof)
pub extern "js" fn JsValue::as_css_math_product(
  self : JsValue,
) -> CSSMathProduct? =
  #| (self) => (self instanceof CSSMathProduct) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSMathProduct (unchecked)
pub extern "js" fn JsValue::to_css_math_product(
  self : JsValue,
) -> CSSMathProduct =
  #| (self) => self

///|
pub extern "js" fn CSSMathProduct::to_css_math_value(
  self : CSSMathProduct,
) -> CSSMathValue =
  #| (self) => self

///|
pub extern "js" fn CSSMathProduct::to_css_numeric_value(
  self : CSSMathProduct,
) -> CSSNumericValue =
  #| (self) => self

///|
pub extern "js" fn CSSMathProduct::to_css_style_value(
  self : CSSMathProduct,
) -> CSSStyleValue =
  #| (self) => self

///|
pub extern "js" fn CSSMathProduct::new(args : CSSNumberish) -> CSSMathProduct =
  #| (args) => new CSSMathProduct(args)

///|
pub extern "js" fn CSSMathProduct::get_values(
  self : CSSMathProduct,
) -> CSSNumericArray =
  #| (self) => self.values

///|
pub extern "js" fn CSSMathProduct::new_with_double(
  args : Double,
) -> CSSMathProduct =
  #| (args) => new CSSMathProduct(args)

///|
pub extern "js" fn CSSMathProduct::new_with_css_numeric_value(
  args : CSSNumericValue,
) -> CSSMathProduct =
  #| (args) => new CSSMathProduct(args)

///|
/// CSSMathNegate interface
pub type CSSMathNegate

///|
pub extern "js" fn CSSMathNegate::to_js_value(self : CSSMathNegate) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSMathNegate (unchecked)
pub extern "js" fn CSSMathNegate::from_js_value(v : JsValue) -> CSSMathNegate =
  #| (v) => v

///|
/// Safely cast JsValue to CSSMathNegate (checked with instanceof)
pub extern "js" fn CSSMathNegate::from_js_value_opt(
  v : JsValue,
) -> CSSMathNegate? =
  #| (v) => (v instanceof CSSMathNegate) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSMathNegate (checked with instanceof)
pub extern "js" fn JsValue::as_css_math_negate(
  self : JsValue,
) -> CSSMathNegate? =
  #| (self) => (self instanceof CSSMathNegate) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSMathNegate (unchecked)
pub extern "js" fn JsValue::to_css_math_negate(self : JsValue) -> CSSMathNegate =
  #| (self) => self

///|
pub extern "js" fn CSSMathNegate::to_css_math_value(
  self : CSSMathNegate,
) -> CSSMathValue =
  #| (self) => self

///|
pub extern "js" fn CSSMathNegate::to_css_numeric_value(
  self : CSSMathNegate,
) -> CSSNumericValue =
  #| (self) => self

///|
pub extern "js" fn CSSMathNegate::to_css_style_value(
  self : CSSMathNegate,
) -> CSSStyleValue =
  #| (self) => self

///|
pub extern "js" fn CSSMathNegate::new(arg : CSSNumberish) -> CSSMathNegate =
  #| (arg) => new CSSMathNegate(arg)

///|
pub extern "js" fn CSSMathNegate::get_value(
  self : CSSMathNegate,
) -> CSSNumericValue =
  #| (self) => self.value

///|
pub extern "js" fn CSSMathNegate::new_with_double(
  arg : Double,
) -> CSSMathNegate =
  #| (arg) => new CSSMathNegate(arg)

///|
pub extern "js" fn CSSMathNegate::new_with_css_numeric_value(
  arg : CSSNumericValue,
) -> CSSMathNegate =
  #| (arg) => new CSSMathNegate(arg)

///|
/// CSSMathInvert interface
pub type CSSMathInvert

///|
pub extern "js" fn CSSMathInvert::to_js_value(self : CSSMathInvert) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSMathInvert (unchecked)
pub extern "js" fn CSSMathInvert::from_js_value(v : JsValue) -> CSSMathInvert =
  #| (v) => v

///|
/// Safely cast JsValue to CSSMathInvert (checked with instanceof)
pub extern "js" fn CSSMathInvert::from_js_value_opt(
  v : JsValue,
) -> CSSMathInvert? =
  #| (v) => (v instanceof CSSMathInvert) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSMathInvert (checked with instanceof)
pub extern "js" fn JsValue::as_css_math_invert(
  self : JsValue,
) -> CSSMathInvert? =
  #| (self) => (self instanceof CSSMathInvert) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSMathInvert (unchecked)
pub extern "js" fn JsValue::to_css_math_invert(self : JsValue) -> CSSMathInvert =
  #| (self) => self

///|
pub extern "js" fn CSSMathInvert::to_css_math_value(
  self : CSSMathInvert,
) -> CSSMathValue =
  #| (self) => self

///|
pub extern "js" fn CSSMathInvert::to_css_numeric_value(
  self : CSSMathInvert,
) -> CSSNumericValue =
  #| (self) => self

///|
pub extern "js" fn CSSMathInvert::to_css_style_value(
  self : CSSMathInvert,
) -> CSSStyleValue =
  #| (self) => self

///|
pub extern "js" fn CSSMathInvert::new(arg : CSSNumberish) -> CSSMathInvert =
  #| (arg) => new CSSMathInvert(arg)

///|
pub extern "js" fn CSSMathInvert::get_value(
  self : CSSMathInvert,
) -> CSSNumericValue =
  #| (self) => self.value

///|
pub extern "js" fn CSSMathInvert::new_with_double(
  arg : Double,
) -> CSSMathInvert =
  #| (arg) => new CSSMathInvert(arg)

///|
pub extern "js" fn CSSMathInvert::new_with_css_numeric_value(
  arg : CSSNumericValue,
) -> CSSMathInvert =
  #| (arg) => new CSSMathInvert(arg)

///|
/// CSSMathMin interface
pub type CSSMathMin

///|
pub extern "js" fn CSSMathMin::to_js_value(self : CSSMathMin) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSMathMin (unchecked)
pub extern "js" fn CSSMathMin::from_js_value(v : JsValue) -> CSSMathMin =
  #| (v) => v

///|
/// Safely cast JsValue to CSSMathMin (checked with instanceof)
pub extern "js" fn CSSMathMin::from_js_value_opt(v : JsValue) -> CSSMathMin? =
  #| (v) => (v instanceof CSSMathMin) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSMathMin (checked with instanceof)
pub extern "js" fn JsValue::as_css_math_min(self : JsValue) -> CSSMathMin? =
  #| (self) => (self instanceof CSSMathMin) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSMathMin (unchecked)
pub extern "js" fn JsValue::to_css_math_min(self : JsValue) -> CSSMathMin =
  #| (self) => self

///|
pub extern "js" fn CSSMathMin::to_css_math_value(
  self : CSSMathMin,
) -> CSSMathValue =
  #| (self) => self

///|
pub extern "js" fn CSSMathMin::to_css_numeric_value(
  self : CSSMathMin,
) -> CSSNumericValue =
  #| (self) => self

///|
pub extern "js" fn CSSMathMin::to_css_style_value(
  self : CSSMathMin,
) -> CSSStyleValue =
  #| (self) => self

///|
pub extern "js" fn CSSMathMin::new(args : CSSNumberish) -> CSSMathMin =
  #| (args) => new CSSMathMin(args)

///|
pub extern "js" fn CSSMathMin::get_values(self : CSSMathMin) -> CSSNumericArray =
  #| (self) => self.values

///|
pub extern "js" fn CSSMathMin::new_with_double(args : Double) -> CSSMathMin =
  #| (args) => new CSSMathMin(args)

///|
pub extern "js" fn CSSMathMin::new_with_css_numeric_value(
  args : CSSNumericValue,
) -> CSSMathMin =
  #| (args) => new CSSMathMin(args)

///|
/// CSSMathMax interface
pub type CSSMathMax

///|
pub extern "js" fn CSSMathMax::to_js_value(self : CSSMathMax) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSMathMax (unchecked)
pub extern "js" fn CSSMathMax::from_js_value(v : JsValue) -> CSSMathMax =
  #| (v) => v

///|
/// Safely cast JsValue to CSSMathMax (checked with instanceof)
pub extern "js" fn CSSMathMax::from_js_value_opt(v : JsValue) -> CSSMathMax? =
  #| (v) => (v instanceof CSSMathMax) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSMathMax (checked with instanceof)
pub extern "js" fn JsValue::as_css_math_max(self : JsValue) -> CSSMathMax? =
  #| (self) => (self instanceof CSSMathMax) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSMathMax (unchecked)
pub extern "js" fn JsValue::to_css_math_max(self : JsValue) -> CSSMathMax =
  #| (self) => self

///|
pub extern "js" fn CSSMathMax::to_css_math_value(
  self : CSSMathMax,
) -> CSSMathValue =
  #| (self) => self

///|
pub extern "js" fn CSSMathMax::to_css_numeric_value(
  self : CSSMathMax,
) -> CSSNumericValue =
  #| (self) => self

///|
pub extern "js" fn CSSMathMax::to_css_style_value(
  self : CSSMathMax,
) -> CSSStyleValue =
  #| (self) => self

///|
pub extern "js" fn CSSMathMax::new(args : CSSNumberish) -> CSSMathMax =
  #| (args) => new CSSMathMax(args)

///|
pub extern "js" fn CSSMathMax::get_values(self : CSSMathMax) -> CSSNumericArray =
  #| (self) => self.values

///|
pub extern "js" fn CSSMathMax::new_with_double(args : Double) -> CSSMathMax =
  #| (args) => new CSSMathMax(args)

///|
pub extern "js" fn CSSMathMax::new_with_css_numeric_value(
  args : CSSNumericValue,
) -> CSSMathMax =
  #| (args) => new CSSMathMax(args)

///|
/// CSSMathClamp interface
pub type CSSMathClamp

///|
pub extern "js" fn CSSMathClamp::to_js_value(self : CSSMathClamp) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSMathClamp (unchecked)
pub extern "js" fn CSSMathClamp::from_js_value(v : JsValue) -> CSSMathClamp =
  #| (v) => v

///|
/// Safely cast JsValue to CSSMathClamp (checked with instanceof)
pub extern "js" fn CSSMathClamp::from_js_value_opt(
  v : JsValue,
) -> CSSMathClamp? =
  #| (v) => (v instanceof CSSMathClamp) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSMathClamp (checked with instanceof)
pub extern "js" fn JsValue::as_css_math_clamp(self : JsValue) -> CSSMathClamp? =
  #| (self) => (self instanceof CSSMathClamp) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSMathClamp (unchecked)
pub extern "js" fn JsValue::to_css_math_clamp(self : JsValue) -> CSSMathClamp =
  #| (self) => self

///|
pub extern "js" fn CSSMathClamp::to_css_math_value(
  self : CSSMathClamp,
) -> CSSMathValue =
  #| (self) => self

///|
pub extern "js" fn CSSMathClamp::to_css_numeric_value(
  self : CSSMathClamp,
) -> CSSNumericValue =
  #| (self) => self

///|
pub extern "js" fn CSSMathClamp::to_css_style_value(
  self : CSSMathClamp,
) -> CSSStyleValue =
  #| (self) => self

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
pub extern "js" fn CSSMathClamp::new_with_double(
  lower : Double,
  value : CSSNumberish,
  upper : CSSNumberish,
) -> CSSMathClamp =
  #| (lower, value, upper) => new CSSMathClamp(lower, value, upper)

///|
pub extern "js" fn CSSMathClamp::new_with_css_numeric_value(
  lower : CSSNumericValue,
  value : CSSNumberish,
  upper : CSSNumberish,
) -> CSSMathClamp =
  #| (lower, value, upper) => new CSSMathClamp(lower, value, upper)

///|
/// CSSNumericArray interface
pub type CSSNumericArray

///|
pub extern "js" fn CSSNumericArray::to_js_value(
  self : CSSNumericArray,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSNumericArray (unchecked)
pub extern "js" fn CSSNumericArray::from_js_value(
  v : JsValue,
) -> CSSNumericArray =
  #| (v) => v

///|
/// Safely cast JsValue to CSSNumericArray (checked with instanceof)
pub extern "js" fn CSSNumericArray::from_js_value_opt(
  v : JsValue,
) -> CSSNumericArray? =
  #| (v) => (v instanceof CSSNumericArray) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSNumericArray (checked with instanceof)
pub extern "js" fn JsValue::as_css_numeric_array(
  self : JsValue,
) -> CSSNumericArray? =
  #| (self) => (self instanceof CSSNumericArray) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSNumericArray (unchecked)
pub extern "js" fn JsValue::to_css_numeric_array(
  self : JsValue,
) -> CSSNumericArray =
  #| (self) => self

///|
pub extern "js" fn CSSNumericArray::keys(self : CSSNumericArray) -> JsValue =
  #| (self) => self.keys()

///|
pub extern "js" fn CSSNumericArray::values(self : CSSNumericArray) -> JsValue =
  #| (self) => self.values()

///|
pub extern "js" fn CSSNumericArray::entries(self : CSSNumericArray) -> JsValue =
  #| (self) => self.entries()

///|
pub extern "js" fn CSSNumericArray::for_each(
  self : CSSNumericArray,
  callback : JsValue,
) -> Unit =
  #| (self, callback) => { self.forEach(callback) }

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
/// Cast JsValue to CSSTransformValue (unchecked)
pub extern "js" fn CSSTransformValue::from_js_value(
  v : JsValue,
) -> CSSTransformValue =
  #| (v) => v

///|
/// Safely cast JsValue to CSSTransformValue (checked with instanceof)
pub extern "js" fn CSSTransformValue::from_js_value_opt(
  v : JsValue,
) -> CSSTransformValue? =
  #| (v) => (v instanceof CSSTransformValue) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSTransformValue (checked with instanceof)
pub extern "js" fn JsValue::as_css_transform_value(
  self : JsValue,
) -> CSSTransformValue? =
  #| (self) => (self instanceof CSSTransformValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSTransformValue (unchecked)
pub extern "js" fn JsValue::to_css_transform_value(
  self : JsValue,
) -> CSSTransformValue =
  #| (self) => self

///|
pub extern "js" fn CSSTransformValue::to_css_style_value(
  self : CSSTransformValue,
) -> CSSStyleValue =
  #| (self) => self

///|
pub extern "js" fn CSSTransformValue::new(
  transforms : Array[CSSTransformComponent],
) -> CSSTransformValue =
  #| (transforms) => new CSSTransformValue(transforms)

///|
pub extern "js" fn CSSTransformValue::keys(self : CSSTransformValue) -> JsValue =
  #| (self) => self.keys()

///|
pub extern "js" fn CSSTransformValue::values(
  self : CSSTransformValue,
) -> JsValue =
  #| (self) => self.values()

///|
pub extern "js" fn CSSTransformValue::entries(
  self : CSSTransformValue,
) -> JsValue =
  #| (self) => self.entries()

///|
pub extern "js" fn CSSTransformValue::for_each(
  self : CSSTransformValue,
  callback : JsValue,
) -> Unit =
  #| (self, callback) => { self.forEach(callback) }

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
pub extern "js" fn CSSTransformValue::get_is_2d(
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
/// Cast JsValue to CSSTransformComponent (unchecked)
pub extern "js" fn CSSTransformComponent::from_js_value(
  v : JsValue,
) -> CSSTransformComponent =
  #| (v) => v

///|
/// Safely cast JsValue to CSSTransformComponent (checked with instanceof)
pub extern "js" fn CSSTransformComponent::from_js_value_opt(
  v : JsValue,
) -> CSSTransformComponent? =
  #| (v) => (v instanceof CSSTransformComponent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSTransformComponent (checked with instanceof)
pub extern "js" fn JsValue::as_css_transform_component(
  self : JsValue,
) -> CSSTransformComponent? =
  #| (self) => (self instanceof CSSTransformComponent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSTransformComponent (unchecked)
pub extern "js" fn JsValue::to_css_transform_component(
  self : JsValue,
) -> CSSTransformComponent =
  #| (self) => self

///|
pub extern "js" fn CSSTransformComponent::as_css_translate(
  self : CSSTransformComponent,
) -> CSSTranslate? =
  #| (self) => (self instanceof CSSTranslate) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSTransformComponent::as_css_rotate(
  self : CSSTransformComponent,
) -> CSSRotate? =
  #| (self) => (self instanceof CSSRotate) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSTransformComponent::as_css_scale(
  self : CSSTransformComponent,
) -> CSSScale? =
  #| (self) => (self instanceof CSSScale) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSTransformComponent::as_css_skew(
  self : CSSTransformComponent,
) -> CSSSkew? =
  #| (self) => (self instanceof CSSSkew) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSTransformComponent::as_css_skew_x(
  self : CSSTransformComponent,
) -> CSSSkewX? =
  #| (self) => (self instanceof CSSSkewX) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSTransformComponent::as_css_skew_y(
  self : CSSTransformComponent,
) -> CSSSkewY? =
  #| (self) => (self instanceof CSSSkewY) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSTransformComponent::as_css_perspective(
  self : CSSTransformComponent,
) -> CSSPerspective? =
  #| (self) => (self instanceof CSSPerspective) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSTransformComponent::as_css_matrix_component(
  self : CSSTransformComponent,
) -> CSSMatrixComponent? =
  #| (self) => (self instanceof CSSMatrixComponent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSTransformComponent::get_is_2d(
  self : CSSTransformComponent,
) -> Bool =
  #| (self) => self.is2D

///|
pub extern "js" fn CSSTransformComponent::set_is_2d(
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
/// Cast JsValue to CSSTranslate (unchecked)
pub extern "js" fn CSSTranslate::from_js_value(v : JsValue) -> CSSTranslate =
  #| (v) => v

///|
/// Safely cast JsValue to CSSTranslate (checked with instanceof)
pub extern "js" fn CSSTranslate::from_js_value_opt(
  v : JsValue,
) -> CSSTranslate? =
  #| (v) => (v instanceof CSSTranslate) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSTranslate (checked with instanceof)
pub extern "js" fn JsValue::as_css_translate(self : JsValue) -> CSSTranslate? =
  #| (self) => (self instanceof CSSTranslate) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSTranslate (unchecked)
pub extern "js" fn JsValue::to_css_translate(self : JsValue) -> CSSTranslate =
  #| (self) => self

///|
pub extern "js" fn CSSTranslate::to_css_transform_component(
  self : CSSTranslate,
) -> CSSTransformComponent =
  #| (self) => self

///|
pub extern "js" fn CSSTranslate::new(
  x : CSSNumericValue,
  y : CSSNumericValue,
) -> CSSTranslate =
  #| (x, y) => new CSSTranslate(x, y)

///|
pub extern "js" fn CSSTranslate::new_with_z(
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
/// Cast JsValue to CSSRotate (unchecked)
pub extern "js" fn CSSRotate::from_js_value(v : JsValue) -> CSSRotate =
  #| (v) => v

///|
/// Safely cast JsValue to CSSRotate (checked with instanceof)
pub extern "js" fn CSSRotate::from_js_value_opt(v : JsValue) -> CSSRotate? =
  #| (v) => (v instanceof CSSRotate) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSRotate (checked with instanceof)
pub extern "js" fn JsValue::as_css_rotate(self : JsValue) -> CSSRotate? =
  #| (self) => (self instanceof CSSRotate) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSRotate (unchecked)
pub extern "js" fn JsValue::to_css_rotate(self : JsValue) -> CSSRotate =
  #| (self) => self

///|
pub extern "js" fn CSSRotate::to_css_transform_component(
  self : CSSRotate,
) -> CSSTransformComponent =
  #| (self) => self

///|
pub extern "js" fn CSSRotate::new(angle : CSSNumericValue) -> CSSRotate =
  #| (angle) => new CSSRotate(angle)

///|
pub extern "js" fn CSSRotate::new_with_y_and_z_and_angle(
  x : CSSNumberish,
  y : CSSNumberish,
  z : CSSNumberish,
  angle : CSSNumericValue,
) -> CSSRotate =
  #| (x, y, z, angle) => new CSSRotate(x, y, z, angle)

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
pub extern "js" fn CSSRotate::new_with_double(
  x : Double,
  y : CSSNumberish,
  z : CSSNumberish,
  angle : CSSNumericValue,
) -> CSSRotate =
  #| (x, y, z, angle) => new CSSRotate(x, y, z, angle)

///|
pub extern "js" fn CSSRotate::new_with_css_numeric_value(
  x : CSSNumericValue,
  y : CSSNumberish,
  z : CSSNumberish,
  angle : CSSNumericValue,
) -> CSSRotate =
  #| (x, y, z, angle) => new CSSRotate(x, y, z, angle)

///|
/// CSSScale interface
pub type CSSScale

///|
pub extern "js" fn CSSScale::to_js_value(self : CSSScale) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSScale (unchecked)
pub extern "js" fn CSSScale::from_js_value(v : JsValue) -> CSSScale =
  #| (v) => v

///|
/// Safely cast JsValue to CSSScale (checked with instanceof)
pub extern "js" fn CSSScale::from_js_value_opt(v : JsValue) -> CSSScale? =
  #| (v) => (v instanceof CSSScale) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSScale (checked with instanceof)
pub extern "js" fn JsValue::as_css_scale(self : JsValue) -> CSSScale? =
  #| (self) => (self instanceof CSSScale) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSScale (unchecked)
pub extern "js" fn JsValue::to_css_scale(self : JsValue) -> CSSScale =
  #| (self) => self

///|
pub extern "js" fn CSSScale::to_css_transform_component(
  self : CSSScale,
) -> CSSTransformComponent =
  #| (self) => self

///|
pub extern "js" fn CSSScale::new(
  x : CSSNumberish,
  y : CSSNumberish,
) -> CSSScale =
  #| (x, y) => new CSSScale(x, y)

///|
pub extern "js" fn CSSScale::new_with_z(
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
pub extern "js" fn CSSScale::new_with_double(
  x : Double,
  y : CSSNumberish,
  z : CSSNumberish,
) -> CSSScale =
  #| (x, y, z) => new CSSScale(x, y, z)

///|
pub extern "js" fn CSSScale::new_with_css_numeric_value(
  x : CSSNumericValue,
  y : CSSNumberish,
  z : CSSNumberish,
) -> CSSScale =
  #| (x, y, z) => new CSSScale(x, y, z)

///|
/// CSSSkew interface
pub type CSSSkew

///|
pub extern "js" fn CSSSkew::to_js_value(self : CSSSkew) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSSkew (unchecked)
pub extern "js" fn CSSSkew::from_js_value(v : JsValue) -> CSSSkew =
  #| (v) => v

///|
/// Safely cast JsValue to CSSSkew (checked with instanceof)
pub extern "js" fn CSSSkew::from_js_value_opt(v : JsValue) -> CSSSkew? =
  #| (v) => (v instanceof CSSSkew) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSSkew (checked with instanceof)
pub extern "js" fn JsValue::as_css_skew(self : JsValue) -> CSSSkew? =
  #| (self) => (self instanceof CSSSkew) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSSkew (unchecked)
pub extern "js" fn JsValue::to_css_skew(self : JsValue) -> CSSSkew =
  #| (self) => self

///|
pub extern "js" fn CSSSkew::to_css_transform_component(
  self : CSSSkew,
) -> CSSTransformComponent =
  #| (self) => self

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
/// Cast JsValue to CSSSkewX (unchecked)
pub extern "js" fn CSSSkewX::from_js_value(v : JsValue) -> CSSSkewX =
  #| (v) => v

///|
/// Safely cast JsValue to CSSSkewX (checked with instanceof)
pub extern "js" fn CSSSkewX::from_js_value_opt(v : JsValue) -> CSSSkewX? =
  #| (v) => (v instanceof CSSSkewX) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSSkewX (checked with instanceof)
pub extern "js" fn JsValue::as_css_skew_x(self : JsValue) -> CSSSkewX? =
  #| (self) => (self instanceof CSSSkewX) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSSkewX (unchecked)
pub extern "js" fn JsValue::to_css_skew_x(self : JsValue) -> CSSSkewX =
  #| (self) => self

///|
pub extern "js" fn CSSSkewX::to_css_transform_component(
  self : CSSSkewX,
) -> CSSTransformComponent =
  #| (self) => self

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
/// Cast JsValue to CSSSkewY (unchecked)
pub extern "js" fn CSSSkewY::from_js_value(v : JsValue) -> CSSSkewY =
  #| (v) => v

///|
/// Safely cast JsValue to CSSSkewY (checked with instanceof)
pub extern "js" fn CSSSkewY::from_js_value_opt(v : JsValue) -> CSSSkewY? =
  #| (v) => (v instanceof CSSSkewY) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSSkewY (checked with instanceof)
pub extern "js" fn JsValue::as_css_skew_y(self : JsValue) -> CSSSkewY? =
  #| (self) => (self instanceof CSSSkewY) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSSkewY (unchecked)
pub extern "js" fn JsValue::to_css_skew_y(self : JsValue) -> CSSSkewY =
  #| (self) => self

///|
pub extern "js" fn CSSSkewY::to_css_transform_component(
  self : CSSSkewY,
) -> CSSTransformComponent =
  #| (self) => self

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
/// Cast JsValue to CSSPerspective (unchecked)
pub extern "js" fn CSSPerspective::from_js_value(v : JsValue) -> CSSPerspective =
  #| (v) => v

///|
/// Safely cast JsValue to CSSPerspective (checked with instanceof)
pub extern "js" fn CSSPerspective::from_js_value_opt(
  v : JsValue,
) -> CSSPerspective? =
  #| (v) => (v instanceof CSSPerspective) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSPerspective (checked with instanceof)
pub extern "js" fn JsValue::as_css_perspective(
  self : JsValue,
) -> CSSPerspective? =
  #| (self) => (self instanceof CSSPerspective) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSPerspective (unchecked)
pub extern "js" fn JsValue::to_css_perspective(
  self : JsValue,
) -> CSSPerspective =
  #| (self) => self

///|
pub extern "js" fn CSSPerspective::to_css_transform_component(
  self : CSSPerspective,
) -> CSSTransformComponent =
  #| (self) => self

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
pub extern "js" fn CSSPerspective::new_with_css_numeric_value(
  length : CSSNumericValue,
) -> CSSPerspective =
  #| (length) => new CSSPerspective(length)

///|
pub extern "js" fn CSSPerspective::new_with_css_keywordish(
  length : CSSKeywordish,
) -> CSSPerspective =
  #| (length) => new CSSPerspective(length)

///|
/// CSSMatrixComponent interface
pub type CSSMatrixComponent

///|
pub extern "js" fn CSSMatrixComponent::to_js_value(
  self : CSSMatrixComponent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSMatrixComponent (unchecked)
pub extern "js" fn CSSMatrixComponent::from_js_value(
  v : JsValue,
) -> CSSMatrixComponent =
  #| (v) => v

///|
/// Safely cast JsValue to CSSMatrixComponent (checked with instanceof)
pub extern "js" fn CSSMatrixComponent::from_js_value_opt(
  v : JsValue,
) -> CSSMatrixComponent? =
  #| (v) => (v instanceof CSSMatrixComponent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSMatrixComponent (checked with instanceof)
pub extern "js" fn JsValue::as_css_matrix_component(
  self : JsValue,
) -> CSSMatrixComponent? =
  #| (self) => (self instanceof CSSMatrixComponent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSMatrixComponent (unchecked)
pub extern "js" fn JsValue::to_css_matrix_component(
  self : JsValue,
) -> CSSMatrixComponent =
  #| (self) => self

///|
pub extern "js" fn CSSMatrixComponent::to_css_transform_component(
  self : CSSMatrixComponent,
) -> CSSTransformComponent =
  #| (self) => self

///|
pub extern "js" fn CSSMatrixComponent::new(
  matrix : DOMMatrixReadOnly,
) -> CSSMatrixComponent =
  #| (matrix) => new CSSMatrixComponent(matrix)

///|
extern "js" fn CSSMatrixComponent::new_with_options_ffi(
  matrix : DOMMatrixReadOnly,
  options : JsValue,
) -> CSSMatrixComponent =
  #| (matrix, options) => new CSSMatrixComponent(matrix, options)

///|
pub fn CSSMatrixComponent::new_with_options(
  matrix : DOMMatrixReadOnly,
  options : CSSMatrixComponentOptions,
) -> CSSMatrixComponent {
  CSSMatrixComponent::new_with_options_ffi(matrix, options.to_js())
}

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
/// Cast JsValue to CSSImageValue (unchecked)
pub extern "js" fn CSSImageValue::from_js_value(v : JsValue) -> CSSImageValue =
  #| (v) => v

///|
/// Safely cast JsValue to CSSImageValue (checked with instanceof)
pub extern "js" fn CSSImageValue::from_js_value_opt(
  v : JsValue,
) -> CSSImageValue? =
  #| (v) => (v instanceof CSSImageValue) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSImageValue (checked with instanceof)
pub extern "js" fn JsValue::as_css_image_value(
  self : JsValue,
) -> CSSImageValue? =
  #| (self) => (self instanceof CSSImageValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSImageValue (unchecked)
pub extern "js" fn JsValue::to_css_image_value(self : JsValue) -> CSSImageValue =
  #| (self) => self

///|
pub extern "js" fn CSSImageValue::to_css_style_value(
  self : CSSImageValue,
) -> CSSStyleValue =
  #| (self) => self

///|
/// CSSColorValue interface
pub type CSSColorValue

///|
pub extern "js" fn CSSColorValue::to_js_value(self : CSSColorValue) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSColorValue (unchecked)
pub extern "js" fn CSSColorValue::from_js_value(v : JsValue) -> CSSColorValue =
  #| (v) => v

///|
/// Safely cast JsValue to CSSColorValue (checked with instanceof)
pub extern "js" fn CSSColorValue::from_js_value_opt(
  v : JsValue,
) -> CSSColorValue? =
  #| (v) => (v instanceof CSSColorValue) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSColorValue (checked with instanceof)
pub extern "js" fn JsValue::as_css_color_value(
  self : JsValue,
) -> CSSColorValue? =
  #| (self) => (self instanceof CSSColorValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSColorValue (unchecked)
pub extern "js" fn JsValue::to_css_color_value(self : JsValue) -> CSSColorValue =
  #| (self) => self

///|
pub extern "js" fn CSSColorValue::to_css_style_value(
  self : CSSColorValue,
) -> CSSStyleValue =
  #| (self) => self

///|
pub extern "js" fn CSSColorValue::as_cssrgb(self : CSSColorValue) -> CSSRGB? =
  #| (self) => (self instanceof CSSRGB) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSColorValue::as_csshsl(self : CSSColorValue) -> CSSHSL? =
  #| (self) => (self instanceof CSSHSL) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSColorValue::as_csshwb(self : CSSColorValue) -> CSSHWB? =
  #| (self) => (self instanceof CSSHWB) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSColorValue::as_css_lab(self : CSSColorValue) -> CSSLab? =
  #| (self) => (self instanceof CSSLab) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSColorValue::as_csslch(self : CSSColorValue) -> CSSLCH? =
  #| (self) => (self instanceof CSSLCH) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSColorValue::as_cssok_lab(
  self : CSSColorValue,
) -> CSSOKLab? =
  #| (self) => (self instanceof CSSOKLab) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSColorValue::as_cssoklch(
  self : CSSColorValue,
) -> CSSOKLCH? =
  #| (self) => (self instanceof CSSOKLCH) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSColorValue::as_css_color(
  self : CSSColorValue,
) -> CSSColor? =
  #| (self) => (self instanceof CSSColor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSColorValue::parse(
  css_text : String,
) -> CSSColorValueOrCSSStyleValue =
  #| (css_text) => CSSColorValue.parse(css_text)

///|
/// CSSRGB interface
pub type CSSRGB

///|
pub extern "js" fn CSSRGB::to_js_value(self : CSSRGB) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSRGB (unchecked)
pub extern "js" fn CSSRGB::from_js_value(v : JsValue) -> CSSRGB =
  #| (v) => v

///|
/// Safely cast JsValue to CSSRGB (checked with instanceof)
pub extern "js" fn CSSRGB::from_js_value_opt(v : JsValue) -> CSSRGB? =
  #| (v) => (v instanceof CSSRGB) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSRGB (checked with instanceof)
pub extern "js" fn JsValue::as_cssrgb(self : JsValue) -> CSSRGB? =
  #| (self) => (self instanceof CSSRGB) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSRGB (unchecked)
pub extern "js" fn JsValue::to_cssrgb(self : JsValue) -> CSSRGB =
  #| (self) => self

///|
pub extern "js" fn CSSRGB::to_css_color_value(self : CSSRGB) -> CSSColorValue =
  #| (self) => self

///|
pub extern "js" fn CSSRGB::to_css_style_value(self : CSSRGB) -> CSSStyleValue =
  #| (self) => self

///|
pub extern "js" fn CSSRGB::new(
  r : CSSColorRGBComp,
  g : CSSColorRGBComp,
  b : CSSColorRGBComp,
) -> CSSRGB =
  #| (r, g, b) => new CSSRGB(r, g, b)

///|
pub extern "js" fn CSSRGB::new_with_alpha(
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
pub extern "js" fn CSSRGB::new_with_css_numberish(
  r : CSSNumberish,
  g : CSSColorRGBComp,
  b : CSSColorRGBComp,
  alpha : CSSColorPercent,
) -> CSSRGB =
  #| (r, g, b, alpha) => new CSSRGB(r, g, b, alpha)

///|
pub extern "js" fn CSSRGB::new_with_css_keywordish(
  r : CSSKeywordish,
  g : CSSColorRGBComp,
  b : CSSColorRGBComp,
  alpha : CSSColorPercent,
) -> CSSRGB =
  #| (r, g, b, alpha) => new CSSRGB(r, g, b, alpha)

///|
/// CSSHSL interface
pub type CSSHSL

///|
pub extern "js" fn CSSHSL::to_js_value(self : CSSHSL) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSHSL (unchecked)
pub extern "js" fn CSSHSL::from_js_value(v : JsValue) -> CSSHSL =
  #| (v) => v

///|
/// Safely cast JsValue to CSSHSL (checked with instanceof)
pub extern "js" fn CSSHSL::from_js_value_opt(v : JsValue) -> CSSHSL? =
  #| (v) => (v instanceof CSSHSL) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSHSL (checked with instanceof)
pub extern "js" fn JsValue::as_csshsl(self : JsValue) -> CSSHSL? =
  #| (self) => (self instanceof CSSHSL) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSHSL (unchecked)
pub extern "js" fn JsValue::to_csshsl(self : JsValue) -> CSSHSL =
  #| (self) => self

///|
pub extern "js" fn CSSHSL::to_css_color_value(self : CSSHSL) -> CSSColorValue =
  #| (self) => self

///|
pub extern "js" fn CSSHSL::to_css_style_value(self : CSSHSL) -> CSSStyleValue =
  #| (self) => self

///|
pub extern "js" fn CSSHSL::new(
  h : CSSColorAngle,
  s : CSSColorPercent,
  l : CSSColorPercent,
) -> CSSHSL =
  #| (h, s, l) => new CSSHSL(h, s, l)

///|
pub extern "js" fn CSSHSL::new_with_alpha(
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
pub extern "js" fn CSSHSL::new_with_css_numberish(
  h : CSSNumberish,
  s : CSSColorPercent,
  l : CSSColorPercent,
  alpha : CSSColorPercent,
) -> CSSHSL =
  #| (h, s, l, alpha) => new CSSHSL(h, s, l, alpha)

///|
pub extern "js" fn CSSHSL::new_with_css_keywordish(
  h : CSSKeywordish,
  s : CSSColorPercent,
  l : CSSColorPercent,
  alpha : CSSColorPercent,
) -> CSSHSL =
  #| (h, s, l, alpha) => new CSSHSL(h, s, l, alpha)

///|
/// CSSHWB interface
pub type CSSHWB

///|
pub extern "js" fn CSSHWB::to_js_value(self : CSSHWB) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSHWB (unchecked)
pub extern "js" fn CSSHWB::from_js_value(v : JsValue) -> CSSHWB =
  #| (v) => v

///|
/// Safely cast JsValue to CSSHWB (checked with instanceof)
pub extern "js" fn CSSHWB::from_js_value_opt(v : JsValue) -> CSSHWB? =
  #| (v) => (v instanceof CSSHWB) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSHWB (checked with instanceof)
pub extern "js" fn JsValue::as_csshwb(self : JsValue) -> CSSHWB? =
  #| (self) => (self instanceof CSSHWB) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSHWB (unchecked)
pub extern "js" fn JsValue::to_csshwb(self : JsValue) -> CSSHWB =
  #| (self) => self

///|
pub extern "js" fn CSSHWB::to_css_color_value(self : CSSHWB) -> CSSColorValue =
  #| (self) => self

///|
pub extern "js" fn CSSHWB::to_css_style_value(self : CSSHWB) -> CSSStyleValue =
  #| (self) => self

///|
pub extern "js" fn CSSHWB::new(
  h : CSSNumericValue,
  w : CSSNumberish,
  b : CSSNumberish,
) -> CSSHWB =
  #| (h, w, b) => new CSSHWB(h, w, b)

///|
pub extern "js" fn CSSHWB::new_with_alpha(
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
pub extern "js" fn CSSHWB::new_with_double(
  h : CSSNumericValue,
  w : Double,
  b : CSSNumberish,
  alpha : CSSNumberish,
) -> CSSHWB =
  #| (h, w, b, alpha) => new CSSHWB(h, w, b, alpha)

///|
pub extern "js" fn CSSHWB::new_with_css_numeric_value(
  h : CSSNumericValue,
  w : CSSNumericValue,
  b : CSSNumberish,
  alpha : CSSNumberish,
) -> CSSHWB =
  #| (h, w, b, alpha) => new CSSHWB(h, w, b, alpha)

///|
/// CSSLab interface
pub type CSSLab

///|
pub extern "js" fn CSSLab::to_js_value(self : CSSLab) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSLab (unchecked)
pub extern "js" fn CSSLab::from_js_value(v : JsValue) -> CSSLab =
  #| (v) => v

///|
/// Safely cast JsValue to CSSLab (checked with instanceof)
pub extern "js" fn CSSLab::from_js_value_opt(v : JsValue) -> CSSLab? =
  #| (v) => (v instanceof CSSLab) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSLab (checked with instanceof)
pub extern "js" fn JsValue::as_css_lab(self : JsValue) -> CSSLab? =
  #| (self) => (self instanceof CSSLab) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSLab (unchecked)
pub extern "js" fn JsValue::to_css_lab(self : JsValue) -> CSSLab =
  #| (self) => self

///|
pub extern "js" fn CSSLab::to_css_color_value(self : CSSLab) -> CSSColorValue =
  #| (self) => self

///|
pub extern "js" fn CSSLab::to_css_style_value(self : CSSLab) -> CSSStyleValue =
  #| (self) => self

///|
pub extern "js" fn CSSLab::new(
  l : CSSColorPercent,
  a : CSSColorNumber,
  b : CSSColorNumber,
) -> CSSLab =
  #| (l, a, b) => new CSSLab(l, a, b)

///|
pub extern "js" fn CSSLab::new_with_alpha(
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
pub extern "js" fn CSSLab::new_with_css_numberish(
  l : CSSNumberish,
  a : CSSColorNumber,
  b : CSSColorNumber,
  alpha : CSSColorPercent,
) -> CSSLab =
  #| (l, a, b, alpha) => new CSSLab(l, a, b, alpha)

///|
pub extern "js" fn CSSLab::new_with_css_keywordish(
  l : CSSKeywordish,
  a : CSSColorNumber,
  b : CSSColorNumber,
  alpha : CSSColorPercent,
) -> CSSLab =
  #| (l, a, b, alpha) => new CSSLab(l, a, b, alpha)

///|
/// CSSLCH interface
pub type CSSLCH

///|
pub extern "js" fn CSSLCH::to_js_value(self : CSSLCH) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSLCH (unchecked)
pub extern "js" fn CSSLCH::from_js_value(v : JsValue) -> CSSLCH =
  #| (v) => v

///|
/// Safely cast JsValue to CSSLCH (checked with instanceof)
pub extern "js" fn CSSLCH::from_js_value_opt(v : JsValue) -> CSSLCH? =
  #| (v) => (v instanceof CSSLCH) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSLCH (checked with instanceof)
pub extern "js" fn JsValue::as_csslch(self : JsValue) -> CSSLCH? =
  #| (self) => (self instanceof CSSLCH) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSLCH (unchecked)
pub extern "js" fn JsValue::to_csslch(self : JsValue) -> CSSLCH =
  #| (self) => self

///|
pub extern "js" fn CSSLCH::to_css_color_value(self : CSSLCH) -> CSSColorValue =
  #| (self) => self

///|
pub extern "js" fn CSSLCH::to_css_style_value(self : CSSLCH) -> CSSStyleValue =
  #| (self) => self

///|
pub extern "js" fn CSSLCH::new(
  l : CSSColorPercent,
  c : CSSColorPercent,
  h : CSSColorAngle,
) -> CSSLCH =
  #| (l, c, h) => new CSSLCH(l, c, h)

///|
pub extern "js" fn CSSLCH::new_with_alpha(
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
pub extern "js" fn CSSLCH::new_with_css_numberish(
  l : CSSNumberish,
  c : CSSColorPercent,
  h : CSSColorAngle,
  alpha : CSSColorPercent,
) -> CSSLCH =
  #| (l, c, h, alpha) => new CSSLCH(l, c, h, alpha)

///|
pub extern "js" fn CSSLCH::new_with_css_keywordish(
  l : CSSKeywordish,
  c : CSSColorPercent,
  h : CSSColorAngle,
  alpha : CSSColorPercent,
) -> CSSLCH =
  #| (l, c, h, alpha) => new CSSLCH(l, c, h, alpha)

///|
/// CSSOKLab interface
pub type CSSOKLab

///|
pub extern "js" fn CSSOKLab::to_js_value(self : CSSOKLab) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSOKLab (unchecked)
pub extern "js" fn CSSOKLab::from_js_value(v : JsValue) -> CSSOKLab =
  #| (v) => v

///|
/// Safely cast JsValue to CSSOKLab (checked with instanceof)
pub extern "js" fn CSSOKLab::from_js_value_opt(v : JsValue) -> CSSOKLab? =
  #| (v) => (v instanceof CSSOKLab) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSOKLab (checked with instanceof)
pub extern "js" fn JsValue::as_cssok_lab(self : JsValue) -> CSSOKLab? =
  #| (self) => (self instanceof CSSOKLab) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSOKLab (unchecked)
pub extern "js" fn JsValue::to_cssok_lab(self : JsValue) -> CSSOKLab =
  #| (self) => self

///|
pub extern "js" fn CSSOKLab::to_css_color_value(
  self : CSSOKLab,
) -> CSSColorValue =
  #| (self) => self

///|
pub extern "js" fn CSSOKLab::to_css_style_value(
  self : CSSOKLab,
) -> CSSStyleValue =
  #| (self) => self

///|
pub extern "js" fn CSSOKLab::new(
  l : CSSColorPercent,
  a : CSSColorNumber,
  b : CSSColorNumber,
) -> CSSOKLab =
  #| (l, a, b) => new CSSOKLab(l, a, b)

///|
pub extern "js" fn CSSOKLab::new_with_alpha(
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
pub extern "js" fn CSSOKLab::new_with_css_numberish(
  l : CSSNumberish,
  a : CSSColorNumber,
  b : CSSColorNumber,
  alpha : CSSColorPercent,
) -> CSSOKLab =
  #| (l, a, b, alpha) => new CSSOKLab(l, a, b, alpha)

///|
pub extern "js" fn CSSOKLab::new_with_css_keywordish(
  l : CSSKeywordish,
  a : CSSColorNumber,
  b : CSSColorNumber,
  alpha : CSSColorPercent,
) -> CSSOKLab =
  #| (l, a, b, alpha) => new CSSOKLab(l, a, b, alpha)

///|
/// CSSOKLCH interface
pub type CSSOKLCH

///|
pub extern "js" fn CSSOKLCH::to_js_value(self : CSSOKLCH) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSOKLCH (unchecked)
pub extern "js" fn CSSOKLCH::from_js_value(v : JsValue) -> CSSOKLCH =
  #| (v) => v

///|
/// Safely cast JsValue to CSSOKLCH (checked with instanceof)
pub extern "js" fn CSSOKLCH::from_js_value_opt(v : JsValue) -> CSSOKLCH? =
  #| (v) => (v instanceof CSSOKLCH) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSOKLCH (checked with instanceof)
pub extern "js" fn JsValue::as_cssoklch(self : JsValue) -> CSSOKLCH? =
  #| (self) => (self instanceof CSSOKLCH) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSOKLCH (unchecked)
pub extern "js" fn JsValue::to_cssoklch(self : JsValue) -> CSSOKLCH =
  #| (self) => self

///|
pub extern "js" fn CSSOKLCH::to_css_color_value(
  self : CSSOKLCH,
) -> CSSColorValue =
  #| (self) => self

///|
pub extern "js" fn CSSOKLCH::to_css_style_value(
  self : CSSOKLCH,
) -> CSSStyleValue =
  #| (self) => self

///|
pub extern "js" fn CSSOKLCH::new(
  l : CSSColorPercent,
  c : CSSColorPercent,
  h : CSSColorAngle,
) -> CSSOKLCH =
  #| (l, c, h) => new CSSOKLCH(l, c, h)

///|
pub extern "js" fn CSSOKLCH::new_with_alpha(
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
pub extern "js" fn CSSOKLCH::new_with_css_numberish(
  l : CSSNumberish,
  c : CSSColorPercent,
  h : CSSColorAngle,
  alpha : CSSColorPercent,
) -> CSSOKLCH =
  #| (l, c, h, alpha) => new CSSOKLCH(l, c, h, alpha)

///|
pub extern "js" fn CSSOKLCH::new_with_css_keywordish(
  l : CSSKeywordish,
  c : CSSColorPercent,
  h : CSSColorAngle,
  alpha : CSSColorPercent,
) -> CSSOKLCH =
  #| (l, c, h, alpha) => new CSSOKLCH(l, c, h, alpha)

///|
/// CSSColor interface
pub type CSSColor

///|
pub extern "js" fn CSSColor::to_js_value(self : CSSColor) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSColor (unchecked)
pub extern "js" fn CSSColor::from_js_value(v : JsValue) -> CSSColor =
  #| (v) => v

///|
/// Safely cast JsValue to CSSColor (checked with instanceof)
pub extern "js" fn CSSColor::from_js_value_opt(v : JsValue) -> CSSColor? =
  #| (v) => (v instanceof CSSColor) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSColor (checked with instanceof)
pub extern "js" fn JsValue::as_css_color(self : JsValue) -> CSSColor? =
  #| (self) => (self instanceof CSSColor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSColor (unchecked)
pub extern "js" fn JsValue::to_css_color(self : JsValue) -> CSSColor =
  #| (self) => self

///|
pub extern "js" fn CSSColor::to_css_color_value(
  self : CSSColor,
) -> CSSColorValue =
  #| (self) => self

///|
pub extern "js" fn CSSColor::to_css_style_value(
  self : CSSColor,
) -> CSSStyleValue =
  #| (self) => self

///|
pub extern "js" fn CSSColor::new(
  color_space : CSSKeywordish,
  channels : Array[CSSColorPercent],
) -> CSSColor =
  #| (color_space, channels) => new CSSColor(color_space, channels)

///|
pub extern "js" fn CSSColor::new_with_alpha(
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

///|
pub extern "js" fn CSSColor::new_with_string(
  color_space : String,
  channels : Array[CSSColorPercent],
  alpha : CSSNumberish,
) -> CSSColor =
  #| (color_space, channels, alpha) => new CSSColor(color_space, channels, alpha)

///|
pub extern "js" fn CSSColor::new_with_css_keyword_value(
  color_space : CSSKeywordValue,
  channels : Array[CSSColorPercent],
  alpha : CSSNumberish,
) -> CSSColor =
  #| (color_space, channels, alpha) => new CSSColor(color_space, channels, alpha)
