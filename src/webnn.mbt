// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webnn

///|
/// MLNamedTensors typedef
pub type MLNamedTensors = JsValue

///|
/// MLDataTypeList typedef
pub type MLDataTypeList = Array[MLOperandDataType]

///|
/// MLNumber typedef
pub type MLNumber

///|
pub extern "js" fn MLNumber::to_js_value(self : MLNumber) -> JsValue =
  #| (self) => self

///|
/// Create MLNumber from Double
pub extern "js" fn MLNumber::from_double(v : Double) -> MLNumber =
  #| (v) => v

///|
/// Check if this MLNumber is Double
pub extern "js" fn MLNumber::is_double(self : MLNumber) -> Bool =
  #| (self) => typeof self === 'number'

///|
/// Try to get MLNumber as Double
pub extern "js" fn MLNumber::as_double(self : MLNumber) -> Double? =
  #| (self) => (typeof self === 'number') ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// MLNamedOperands typedef
pub type MLNamedOperands = JsValue

///|
/// MLPowerPreference enum
pub(all) enum MLPowerPreference {
  Default
  HighPerformance
  LowPower
}

///|
/// Convert to string value
pub fn MLPowerPreference::to_string(self : MLPowerPreference) -> String {
  match self {
    MLPowerPreference::Default => "default"
    MLPowerPreference::HighPerformance => "high-performance"
    MLPowerPreference::LowPower => "low-power"
  }
}

///|
/// Parse from string value
pub fn MLPowerPreference::from_string(s : String) -> MLPowerPreference? {
  match s {
    "default" => Some(MLPowerPreference::Default)
    "high-performance" => Some(MLPowerPreference::HighPerformance)
    "low-power" => Some(MLPowerPreference::LowPower)
    _ => None
  }
}

///|
/// MLInputOperandLayout enum
pub(all) enum MLInputOperandLayout {
  Nchw
  Nhwc
}

///|
/// Convert to string value
pub fn MLInputOperandLayout::to_string(self : MLInputOperandLayout) -> String {
  match self {
    MLInputOperandLayout::Nchw => "nchw"
    MLInputOperandLayout::Nhwc => "nhwc"
  }
}

///|
/// Parse from string value
pub fn MLInputOperandLayout::from_string(s : String) -> MLInputOperandLayout? {
  match s {
    "nchw" => Some(MLInputOperandLayout::Nchw)
    "nhwc" => Some(MLInputOperandLayout::Nhwc)
    _ => None
  }
}

///|
/// MLOperandDataType enum
pub(all) enum MLOperandDataType {
  Float32
  Float16
  Int32
  Uint32
  Int64
  Uint64
  Int8
  Uint8
}

///|
/// Convert to string value
pub fn MLOperandDataType::to_string(self : MLOperandDataType) -> String {
  match self {
    MLOperandDataType::Float32 => "float32"
    MLOperandDataType::Float16 => "float16"
    MLOperandDataType::Int32 => "int32"
    MLOperandDataType::Uint32 => "uint32"
    MLOperandDataType::Int64 => "int64"
    MLOperandDataType::Uint64 => "uint64"
    MLOperandDataType::Int8 => "int8"
    MLOperandDataType::Uint8 => "uint8"
  }
}

///|
/// Parse from string value
pub fn MLOperandDataType::from_string(s : String) -> MLOperandDataType? {
  match s {
    "float32" => Some(MLOperandDataType::Float32)
    "float16" => Some(MLOperandDataType::Float16)
    "int32" => Some(MLOperandDataType::Int32)
    "uint32" => Some(MLOperandDataType::Uint32)
    "int64" => Some(MLOperandDataType::Int64)
    "uint64" => Some(MLOperandDataType::Uint64)
    "int8" => Some(MLOperandDataType::Int8)
    "uint8" => Some(MLOperandDataType::Uint8)
    _ => None
  }
}

///|
/// MLConv2dFilterOperandLayout enum
pub(all) enum MLConv2dFilterOperandLayout {
  Oihw
  Hwio
  Ohwi
  Ihwo
}

///|
/// Convert to string value
pub fn MLConv2dFilterOperandLayout::to_string(
  self : MLConv2dFilterOperandLayout,
) -> String {
  match self {
    MLConv2dFilterOperandLayout::Oihw => "oihw"
    MLConv2dFilterOperandLayout::Hwio => "hwio"
    MLConv2dFilterOperandLayout::Ohwi => "ohwi"
    MLConv2dFilterOperandLayout::Ihwo => "ihwo"
  }
}

///|
/// Parse from string value
pub fn MLConv2dFilterOperandLayout::from_string(
  s : String,
) -> MLConv2dFilterOperandLayout? {
  match s {
    "oihw" => Some(MLConv2dFilterOperandLayout::Oihw)
    "hwio" => Some(MLConv2dFilterOperandLayout::Hwio)
    "ohwi" => Some(MLConv2dFilterOperandLayout::Ohwi)
    "ihwo" => Some(MLConv2dFilterOperandLayout::Ihwo)
    _ => None
  }
}

///|
/// MLConvTranspose2dFilterOperandLayout enum
pub(all) enum MLConvTranspose2dFilterOperandLayout {
  Iohw
  Hwoi
  Ohwi
}

///|
/// Convert to string value
pub fn MLConvTranspose2dFilterOperandLayout::to_string(
  self : MLConvTranspose2dFilterOperandLayout,
) -> String {
  match self {
    MLConvTranspose2dFilterOperandLayout::Iohw => "iohw"
    MLConvTranspose2dFilterOperandLayout::Hwoi => "hwoi"
    MLConvTranspose2dFilterOperandLayout::Ohwi => "ohwi"
  }
}

///|
/// Parse from string value
pub fn MLConvTranspose2dFilterOperandLayout::from_string(
  s : String,
) -> MLConvTranspose2dFilterOperandLayout? {
  match s {
    "iohw" => Some(MLConvTranspose2dFilterOperandLayout::Iohw)
    "hwoi" => Some(MLConvTranspose2dFilterOperandLayout::Hwoi)
    "ohwi" => Some(MLConvTranspose2dFilterOperandLayout::Ohwi)
    _ => None
  }
}

///|
/// MLGruWeightLayout enum
pub(all) enum MLGruWeightLayout {
  Zrn
  Rzn
}

///|
/// Convert to string value
pub fn MLGruWeightLayout::to_string(self : MLGruWeightLayout) -> String {
  match self {
    MLGruWeightLayout::Zrn => "zrn"
    MLGruWeightLayout::Rzn => "rzn"
  }
}

///|
/// Parse from string value
pub fn MLGruWeightLayout::from_string(s : String) -> MLGruWeightLayout? {
  match s {
    "zrn" => Some(MLGruWeightLayout::Zrn)
    "rzn" => Some(MLGruWeightLayout::Rzn)
    _ => None
  }
}

///|
/// MLRecurrentNetworkActivation enum
pub(all) enum MLRecurrentNetworkActivation {
  Relu
  Sigmoid
  Tanh
}

///|
/// Convert to string value
pub fn MLRecurrentNetworkActivation::to_string(
  self : MLRecurrentNetworkActivation,
) -> String {
  match self {
    MLRecurrentNetworkActivation::Relu => "relu"
    MLRecurrentNetworkActivation::Sigmoid => "sigmoid"
    MLRecurrentNetworkActivation::Tanh => "tanh"
  }
}

///|
/// Parse from string value
pub fn MLRecurrentNetworkActivation::from_string(
  s : String,
) -> MLRecurrentNetworkActivation? {
  match s {
    "relu" => Some(MLRecurrentNetworkActivation::Relu)
    "sigmoid" => Some(MLRecurrentNetworkActivation::Sigmoid)
    "tanh" => Some(MLRecurrentNetworkActivation::Tanh)
    _ => None
  }
}

///|
/// MLRecurrentNetworkDirection enum
pub(all) enum MLRecurrentNetworkDirection {
  Forward
  Backward
  Both
}

///|
/// Convert to string value
pub fn MLRecurrentNetworkDirection::to_string(
  self : MLRecurrentNetworkDirection,
) -> String {
  match self {
    MLRecurrentNetworkDirection::Forward => "forward"
    MLRecurrentNetworkDirection::Backward => "backward"
    MLRecurrentNetworkDirection::Both => "both"
  }
}

///|
/// Parse from string value
pub fn MLRecurrentNetworkDirection::from_string(
  s : String,
) -> MLRecurrentNetworkDirection? {
  match s {
    "forward" => Some(MLRecurrentNetworkDirection::Forward)
    "backward" => Some(MLRecurrentNetworkDirection::Backward)
    "both" => Some(MLRecurrentNetworkDirection::Both)
    _ => None
  }
}

///|
/// MLLstmWeightLayout enum
pub(all) enum MLLstmWeightLayout {
  Iofg
  Ifgo
}

///|
/// Convert to string value
pub fn MLLstmWeightLayout::to_string(self : MLLstmWeightLayout) -> String {
  match self {
    MLLstmWeightLayout::Iofg => "iofg"
    MLLstmWeightLayout::Ifgo => "ifgo"
  }
}

///|
/// Parse from string value
pub fn MLLstmWeightLayout::from_string(s : String) -> MLLstmWeightLayout? {
  match s {
    "iofg" => Some(MLLstmWeightLayout::Iofg)
    "ifgo" => Some(MLLstmWeightLayout::Ifgo)
    _ => None
  }
}

///|
/// MLPaddingMode enum
pub(all) enum MLPaddingMode {
  Constant
  Edge
  Reflection
}

///|
/// Convert to string value
pub fn MLPaddingMode::to_string(self : MLPaddingMode) -> String {
  match self {
    MLPaddingMode::Constant => "constant"
    MLPaddingMode::Edge => "edge"
    MLPaddingMode::Reflection => "reflection"
  }
}

///|
/// Parse from string value
pub fn MLPaddingMode::from_string(s : String) -> MLPaddingMode? {
  match s {
    "constant" => Some(MLPaddingMode::Constant)
    "edge" => Some(MLPaddingMode::Edge)
    "reflection" => Some(MLPaddingMode::Reflection)
    _ => None
  }
}

///|
/// MLRoundingType enum
pub(all) enum MLRoundingType {
  Floor
  Ceil
}

///|
/// Convert to string value
pub fn MLRoundingType::to_string(self : MLRoundingType) -> String {
  match self {
    MLRoundingType::Floor => "floor"
    MLRoundingType::Ceil => "ceil"
  }
}

///|
/// Parse from string value
pub fn MLRoundingType::from_string(s : String) -> MLRoundingType? {
  match s {
    "floor" => Some(MLRoundingType::Floor)
    "ceil" => Some(MLRoundingType::Ceil)
    _ => None
  }
}

///|
/// MLInterpolationMode enum
pub(all) enum MLInterpolationMode {
  NearestNeighbor
  Linear
}

///|
/// Convert to string value
pub fn MLInterpolationMode::to_string(self : MLInterpolationMode) -> String {
  match self {
    MLInterpolationMode::NearestNeighbor => "nearest-neighbor"
    MLInterpolationMode::Linear => "linear"
  }
}

///|
/// Parse from string value
pub fn MLInterpolationMode::from_string(s : String) -> MLInterpolationMode? {
  match s {
    "nearest-neighbor" => Some(MLInterpolationMode::NearestNeighbor)
    "linear" => Some(MLInterpolationMode::Linear)
    _ => None
  }
}

///|
/// MLContextOptions dictionary
pub struct MLContextOptions {
  powerPreference : MLPowerPreference?
  accelerated : Bool?
}

///|
/// Create a new MLContextOptions with default values
pub fn MLContextOptions::default() -> MLContextOptions {
  MLContextOptions::{ powerPreference: None, accelerated: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MLContextOptions::to_js(self : MLContextOptions) -> JsValue =
  #| (self) => ({
  #|   powerPreference: ['default', 'high-performance', 'low-power'][self.powerPreference],
  #|   accelerated: self.accelerated
  #| })

///|
/// MLContextLostInfo dictionary
pub struct MLContextLostInfo {
  message : String?
}

///|
/// Create a new MLContextLostInfo with default values
pub fn MLContextLostInfo::default() -> MLContextLostInfo {
  MLContextLostInfo::{ message: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MLContextLostInfo::to_js(
  self : MLContextLostInfo,
) -> JsValue =
  #| (self) => ({
  #|   message: self.message
  #| })

///|
/// MLOpSupportLimits dictionary
pub struct MLOpSupportLimits {
  preferredInputLayout : MLInputOperandLayout?
  maxTensorByteLength : Int64?
  input : MLTensorLimits?
  constant : MLTensorLimits?
  output : MLTensorLimits?
  argMin : MLSingleInputSupportLimits?
  argMax : MLSingleInputSupportLimits?
  batchNormalization : MLBatchNormalizationSupportLimits?
  cast : MLSingleInputSupportLimits?
  clamp : MLSingleInputSupportLimits?
  concat : MLConcatSupportLimits?
  conv2d : MLConv2dSupportLimits?
  convTranspose2d : MLConv2dSupportLimits?
  cumulativeSum : MLSingleInputSupportLimits?
  add : MLBinarySupportLimits?
  sub : MLBinarySupportLimits?
  mul : MLBinarySupportLimits?
  div : MLBinarySupportLimits?
  max : MLBinarySupportLimits?
  min : MLBinarySupportLimits?
  pow : MLBinarySupportLimits?
  equal : MLBinarySupportLimits?
  notEqual : MLBinarySupportLimits?
  greater : MLBinarySupportLimits?
  greaterOrEqual : MLBinarySupportLimits?
  lesser : MLBinarySupportLimits?
  lesserOrEqual : MLBinarySupportLimits?
  logicalNot : MLLogicalNotSupportLimits?
  logicalAnd : MLBinarySupportLimits?
  logicalOr : MLBinarySupportLimits?
  logicalXor : MLBinarySupportLimits?
  isNaN : MLLogicalNotSupportLimits?
  isInfinite : MLLogicalNotSupportLimits?
  abs : MLSingleInputSupportLimits?
  ceil : MLSingleInputSupportLimits?
  cos : MLSingleInputSupportLimits?
  erf : MLSingleInputSupportLimits?
  exp : MLSingleInputSupportLimits?
  floor : MLSingleInputSupportLimits?
  identity : MLSingleInputSupportLimits?
  log : MLSingleInputSupportLimits?
  neg : MLSingleInputSupportLimits?
  reciprocal : MLSingleInputSupportLimits?
  roundEven : MLSingleInputSupportLimits?
  sin : MLSingleInputSupportLimits?
  sign : MLSingleInputSupportLimits?
  sqrt : MLSingleInputSupportLimits?
  tan : MLSingleInputSupportLimits?
  dequantizeLinear : MLQuantizeDequantizeLinearSupportLimits?
  quantizeLinear : MLQuantizeDequantizeLinearSupportLimits?
  elu : MLSingleInputSupportLimits?
  expand : MLSingleInputSupportLimits?
  gather : MLGatherSupportLimits?
  gatherElements : MLGatherSupportLimits?
  gatherND : MLGatherSupportLimits?
  gelu : MLSingleInputSupportLimits?
  gemm : MLGemmSupportLimits?
  gru : MLGruSupportLimits?
  gruCell : MLGruCellSupportLimits?
  hardSigmoid : MLSingleInputSupportLimits?
  hardSwish : MLSingleInputSupportLimits?
  instanceNormalization : MLNormalizationSupportLimits?
  layerNormalization : MLNormalizationSupportLimits?
  leakyRelu : MLSingleInputSupportLimits?
  linear : MLSingleInputSupportLimits?
  lstm : MLLstmSupportLimits?
  lstmCell : MLLstmCellSupportLimits?
  matmul : MLBinarySupportLimits?
  pad : MLSingleInputSupportLimits?
  averagePool2d : MLSingleInputSupportLimits?
  l2Pool2d : MLSingleInputSupportLimits?
  maxPool2d : MLSingleInputSupportLimits?
  prelu : MLPreluSupportLimits?
  reduceL1 : MLSingleInputSupportLimits?
  reduceL2 : MLSingleInputSupportLimits?
  reduceLogSum : MLSingleInputSupportLimits?
  reduceLogSumExp : MLSingleInputSupportLimits?
  reduceMax : MLSingleInputSupportLimits?
  reduceMean : MLSingleInputSupportLimits?
  reduceMin : MLSingleInputSupportLimits?
  reduceProduct : MLSingleInputSupportLimits?
  reduceSum : MLSingleInputSupportLimits?
  reduceSumSquare : MLSingleInputSupportLimits?
  relu : MLSingleInputSupportLimits?
  resample2d : MLSingleInputSupportLimits?
  reshape : MLSingleInputSupportLimits?
  reverse : MLSingleInputSupportLimits?
  scatterElements : MLScatterSupportLimits?
  scatterND : MLScatterSupportLimits?
  sigmoid : MLSingleInputSupportLimits?
  slice : MLSingleInputSupportLimits?
  softmax : MLSingleInputSupportLimits?
  softplus : MLSingleInputSupportLimits?
  softsign : MLSingleInputSupportLimits?
  split : MLSplitSupportLimits?
  tanh : MLSingleInputSupportLimits?
  tile : MLSingleInputSupportLimits?
  transpose : MLSingleInputSupportLimits?
  triangular : MLSingleInputSupportLimits?
  where_ : MLWhereSupportLimits?
}

///|
/// Create a new MLOpSupportLimits with default values
pub fn MLOpSupportLimits::default() -> MLOpSupportLimits {
  MLOpSupportLimits::{
    preferredInputLayout: None,
    maxTensorByteLength: None,
    input: None,
    constant: None,
    output: None,
    argMin: None,
    argMax: None,
    batchNormalization: None,
    cast: None,
    clamp: None,
    concat: None,
    conv2d: None,
    convTranspose2d: None,
    cumulativeSum: None,
    add: None,
    sub: None,
    mul: None,
    div: None,
    max: None,
    min: None,
    pow: None,
    equal: None,
    notEqual: None,
    greater: None,
    greaterOrEqual: None,
    lesser: None,
    lesserOrEqual: None,
    logicalNot: None,
    logicalAnd: None,
    logicalOr: None,
    logicalXor: None,
    isNaN: None,
    isInfinite: None,
    abs: None,
    ceil: None,
    cos: None,
    erf: None,
    exp: None,
    floor: None,
    identity: None,
    log: None,
    neg: None,
    reciprocal: None,
    roundEven: None,
    sin: None,
    sign: None,
    sqrt: None,
    tan: None,
    dequantizeLinear: None,
    quantizeLinear: None,
    elu: None,
    expand: None,
    gather: None,
    gatherElements: None,
    gatherND: None,
    gelu: None,
    gemm: None,
    gru: None,
    gruCell: None,
    hardSigmoid: None,
    hardSwish: None,
    instanceNormalization: None,
    layerNormalization: None,
    leakyRelu: None,
    linear: None,
    lstm: None,
    lstmCell: None,
    matmul: None,
    pad: None,
    averagePool2d: None,
    l2Pool2d: None,
    maxPool2d: None,
    prelu: None,
    reduceL1: None,
    reduceL2: None,
    reduceLogSum: None,
    reduceLogSumExp: None,
    reduceMax: None,
    reduceMean: None,
    reduceMin: None,
    reduceProduct: None,
    reduceSum: None,
    reduceSumSquare: None,
    relu: None,
    resample2d: None,
    reshape: None,
    reverse: None,
    scatterElements: None,
    scatterND: None,
    sigmoid: None,
    slice: None,
    softmax: None,
    softplus: None,
    softsign: None,
    split: None,
    tanh: None,
    tile: None,
    transpose: None,
    triangular: None,
    where_: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MLOpSupportLimits::to_js(
  self : MLOpSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   preferredInputLayout: ['nchw', 'nhwc'][self.preferredInputLayout],
  #|   maxTensorByteLength: self.maxTensorByteLength,
  #|   input: self.input,
  #|   constant: self.constant,
  #|   output: self.output,
  #|   argMin: self.argMin,
  #|   argMax: self.argMax,
  #|   batchNormalization: self.batchNormalization,
  #|   cast: self.cast,
  #|   clamp: self.clamp,
  #|   concat: self.concat,
  #|   conv2d: self.conv2d,
  #|   convTranspose2d: self.convTranspose2d,
  #|   cumulativeSum: self.cumulativeSum,
  #|   add: self.add,
  #|   sub: self.sub,
  #|   mul: self.mul,
  #|   div: self.div,
  #|   max: self.max,
  #|   min: self.min,
  #|   pow: self.pow,
  #|   equal: self.equal,
  #|   notEqual: self.notEqual,
  #|   greater: self.greater,
  #|   greaterOrEqual: self.greaterOrEqual,
  #|   lesser: self.lesser,
  #|   lesserOrEqual: self.lesserOrEqual,
  #|   logicalNot: self.logicalNot,
  #|   logicalAnd: self.logicalAnd,
  #|   logicalOr: self.logicalOr,
  #|   logicalXor: self.logicalXor,
  #|   isNaN: self.isNaN,
  #|   isInfinite: self.isInfinite,
  #|   abs: self.abs,
  #|   ceil: self.ceil,
  #|   cos: self.cos,
  #|   erf: self.erf,
  #|   exp: self.exp,
  #|   floor: self.floor,
  #|   identity: self.identity,
  #|   log: self.log,
  #|   neg: self.neg,
  #|   reciprocal: self.reciprocal,
  #|   roundEven: self.roundEven,
  #|   sin: self.sin,
  #|   sign: self.sign,
  #|   sqrt: self.sqrt,
  #|   tan: self.tan,
  #|   dequantizeLinear: self.dequantizeLinear,
  #|   quantizeLinear: self.quantizeLinear,
  #|   elu: self.elu,
  #|   expand: self.expand,
  #|   gather: self.gather,
  #|   gatherElements: self.gatherElements,
  #|   gatherND: self.gatherND,
  #|   gelu: self.gelu,
  #|   gemm: self.gemm,
  #|   gru: self.gru,
  #|   gruCell: self.gruCell,
  #|   hardSigmoid: self.hardSigmoid,
  #|   hardSwish: self.hardSwish,
  #|   instanceNormalization: self.instanceNormalization,
  #|   layerNormalization: self.layerNormalization,
  #|   leakyRelu: self.leakyRelu,
  #|   linear: self.linear,
  #|   lstm: self.lstm,
  #|   lstmCell: self.lstmCell,
  #|   matmul: self.matmul,
  #|   pad: self.pad,
  #|   averagePool2d: self.averagePool2d,
  #|   l2Pool2d: self.l2Pool2d,
  #|   maxPool2d: self.maxPool2d,
  #|   prelu: self.prelu,
  #|   reduceL1: self.reduceL1,
  #|   reduceL2: self.reduceL2,
  #|   reduceLogSum: self.reduceLogSum,
  #|   reduceLogSumExp: self.reduceLogSumExp,
  #|   reduceMax: self.reduceMax,
  #|   reduceMean: self.reduceMean,
  #|   reduceMin: self.reduceMin,
  #|   reduceProduct: self.reduceProduct,
  #|   reduceSum: self.reduceSum,
  #|   reduceSumSquare: self.reduceSumSquare,
  #|   relu: self.relu,
  #|   resample2d: self.resample2d,
  #|   reshape: self.reshape,
  #|   reverse: self.reverse,
  #|   scatterElements: self.scatterElements,
  #|   scatterND: self.scatterND,
  #|   sigmoid: self.sigmoid,
  #|   slice: self.slice,
  #|   softmax: self.softmax,
  #|   softplus: self.softplus,
  #|   softsign: self.softsign,
  #|   split: self.split,
  #|   tanh: self.tanh,
  #|   tile: self.tile,
  #|   transpose: self.transpose,
  #|   triangular: self.triangular,
  #|   where: self.where_
  #| })

///|
/// MLRankRange dictionary
pub struct MLRankRange {
  min : Int?
  max : Int?
}

///|
/// Create a new MLRankRange with default values
pub fn MLRankRange::default() -> MLRankRange {
  MLRankRange::{ min: None, max: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MLRankRange::to_js(self : MLRankRange) -> JsValue =
  #| (self) => ({
  #|   min: self.min,
  #|   max: self.max
  #| })

///|
/// MLTensorLimits dictionary
pub struct MLTensorLimits {
  dataTypes : MLDataTypeList?
  rankRange : MLRankRange?
}

///|
/// Create a new MLTensorLimits with default values
pub fn MLTensorLimits::default() -> MLTensorLimits {
  MLTensorLimits::{ dataTypes: None, rankRange: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MLTensorLimits::to_js(self : MLTensorLimits) -> JsValue =
  #| (self) => ({
  #|   dataTypes: self.dataTypes,
  #|   rankRange: self.rankRange
  #| })

///|
/// MLBinarySupportLimits dictionary
pub struct MLBinarySupportLimits {
  a : MLTensorLimits?
  b : MLTensorLimits?
  output : MLTensorLimits?
}

///|
/// Create a new MLBinarySupportLimits with default values
pub fn MLBinarySupportLimits::default() -> MLBinarySupportLimits {
  MLBinarySupportLimits::{ a: None, b: None, output: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MLBinarySupportLimits::to_js(
  self : MLBinarySupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   a: self.a,
  #|   b: self.b,
  #|   output: self.output
  #| })

///|
/// MLSingleInputSupportLimits dictionary
pub struct MLSingleInputSupportLimits {
  input : MLTensorLimits?
  output : MLTensorLimits?
}

///|
/// Create a new MLSingleInputSupportLimits with default values
pub fn MLSingleInputSupportLimits::default() -> MLSingleInputSupportLimits {
  MLSingleInputSupportLimits::{ input: None, output: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MLSingleInputSupportLimits::to_js(
  self : MLSingleInputSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   input: self.input,
  #|   output: self.output
  #| })

///|
/// MLOperandDescriptor dictionary
pub struct MLOperandDescriptor {
  dataType : MLOperandDataType
  shape : Array[Int]
}

///|
/// Create a new MLOperandDescriptor with default values
pub fn MLOperandDescriptor::default() -> MLOperandDescriptor {
  MLOperandDescriptor::{ dataType: panic(), shape: [] }
}

///|
/// Convert to JsValue
pub extern "js" fn MLOperandDescriptor::to_js(
  self : MLOperandDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   dataType: ['float32', 'float16', 'int32', 'uint32', 'int64', 'uint64', 'int8', 'uint8'][self.dataType],
  #|   shape: self.shape
  #| })

///|
/// MLOperatorOptions dictionary
pub struct MLOperatorOptions {
  label : String?
}

///|
/// Create a new MLOperatorOptions with default values
pub fn MLOperatorOptions::default() -> MLOperatorOptions {
  MLOperatorOptions::{ label: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MLOperatorOptions::to_js(
  self : MLOperatorOptions,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label
  #| })

///|
/// MLTensorDescriptor dictionary
pub struct MLTensorDescriptor {
  dataType : MLOperandDataType
  shape : Array[Int]
  readable : Bool?
  writable : Bool?
}

///|
/// Create a new MLTensorDescriptor with default values
pub fn MLTensorDescriptor::default() -> MLTensorDescriptor {
  MLTensorDescriptor::{
    dataType: panic(),
    shape: [],
    readable: None,
    writable: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MLTensorDescriptor::to_js(
  self : MLTensorDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   dataType: ['float32', 'float16', 'int32', 'uint32', 'int64', 'uint64', 'int8', 'uint8'][self.dataType],
  #|   shape: self.shape,
  #|   readable: self.readable,
  #|   writable: self.writable
  #| })

///|
/// MLArgMinMaxOptions dictionary
pub struct MLArgMinMaxOptions {
  label : String?
  keepDimensions : Bool?
  outputDataType : MLOperandDataType?
}

///|
/// Create a new MLArgMinMaxOptions with default values
pub fn MLArgMinMaxOptions::default() -> MLArgMinMaxOptions {
  MLArgMinMaxOptions::{
    label: None,
    keepDimensions: None,
    outputDataType: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MLArgMinMaxOptions::to_js(
  self : MLArgMinMaxOptions,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   keepDimensions: self.keepDimensions,
  #|   outputDataType: ['float32', 'float16', 'int32', 'uint32', 'int64', 'uint64', 'int8', 'uint8'][self.outputDataType]
  #| })

///|
/// MLBatchNormalizationOptions dictionary
pub struct MLBatchNormalizationOptions {
  label : String?
  scale : MLOperand?
  bias : MLOperand?
  axis : Int?
  epsilon : Double?
}

///|
/// Create a new MLBatchNormalizationOptions with default values
pub fn MLBatchNormalizationOptions::default() -> MLBatchNormalizationOptions {
  MLBatchNormalizationOptions::{
    label: None,
    scale: None,
    bias: None,
    axis: None,
    epsilon: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MLBatchNormalizationOptions::to_js(
  self : MLBatchNormalizationOptions,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   scale: self.scale,
  #|   bias: self.bias,
  #|   axis: self.axis,
  #|   epsilon: self.epsilon
  #| })

///|
/// MLBatchNormalizationSupportLimits dictionary
pub struct MLBatchNormalizationSupportLimits {
  input : MLTensorLimits?
  mean : MLTensorLimits?
  variance : MLTensorLimits?
  scale : MLTensorLimits?
  bias : MLTensorLimits?
  output : MLTensorLimits?
}

///|
/// Create a new MLBatchNormalizationSupportLimits with default values
pub fn MLBatchNormalizationSupportLimits::default() -> MLBatchNormalizationSupportLimits {
  MLBatchNormalizationSupportLimits::{
    input: None,
    mean: None,
    variance: None,
    scale: None,
    bias: None,
    output: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MLBatchNormalizationSupportLimits::to_js(
  self : MLBatchNormalizationSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   input: self.input,
  #|   mean: self.mean,
  #|   variance: self.variance,
  #|   scale: self.scale,
  #|   bias: self.bias,
  #|   output: self.output
  #| })

///|
/// MLClampOptions dictionary
pub struct MLClampOptions {
  label : String?
  minValue : MLNumber?
  maxValue : MLNumber?
}

///|
/// Create a new MLClampOptions with default values
pub fn MLClampOptions::default() -> MLClampOptions {
  MLClampOptions::{ label: None, minValue: None, maxValue: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MLClampOptions::to_js(self : MLClampOptions) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   minValue: self.minValue.to_js_value(),
  #|   maxValue: self.maxValue.to_js_value()
  #| })

///|
/// MLConcatSupportLimits dictionary
pub struct MLConcatSupportLimits {
  inputs : MLTensorLimits?
  output : MLTensorLimits?
}

///|
/// Create a new MLConcatSupportLimits with default values
pub fn MLConcatSupportLimits::default() -> MLConcatSupportLimits {
  MLConcatSupportLimits::{ inputs: None, output: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MLConcatSupportLimits::to_js(
  self : MLConcatSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   inputs: self.inputs,
  #|   output: self.output
  #| })

///|
/// MLConv2dOptions dictionary
pub struct MLConv2dOptions {
  label : String?
  padding : Array[Int]?
  strides : Array[Int]?
  dilations : Array[Int]?
  groups : Int?
  inputLayout : MLInputOperandLayout?
  filterLayout : MLConv2dFilterOperandLayout?
  bias : MLOperand?
}

///|
/// Create a new MLConv2dOptions with default values
pub fn MLConv2dOptions::default() -> MLConv2dOptions {
  MLConv2dOptions::{
    label: None,
    padding: None,
    strides: None,
    dilations: None,
    groups: None,
    inputLayout: None,
    filterLayout: None,
    bias: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MLConv2dOptions::to_js(self : MLConv2dOptions) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   padding: self.padding,
  #|   strides: self.strides,
  #|   dilations: self.dilations,
  #|   groups: self.groups,
  #|   inputLayout: ['nchw', 'nhwc'][self.inputLayout],
  #|   filterLayout: ['oihw', 'hwio', 'ohwi', 'ihwo'][self.filterLayout],
  #|   bias: self.bias
  #| })

///|
/// MLConv2dSupportLimits dictionary
pub struct MLConv2dSupportLimits {
  input : MLTensorLimits?
  filter : MLTensorLimits?
  bias : MLTensorLimits?
  output : MLTensorLimits?
}

///|
/// Create a new MLConv2dSupportLimits with default values
pub fn MLConv2dSupportLimits::default() -> MLConv2dSupportLimits {
  MLConv2dSupportLimits::{ input: None, filter: None, bias: None, output: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MLConv2dSupportLimits::to_js(
  self : MLConv2dSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   input: self.input,
  #|   filter: self.filter,
  #|   bias: self.bias,
  #|   output: self.output
  #| })

///|
/// MLConvTranspose2dOptions dictionary
pub struct MLConvTranspose2dOptions {
  label : String?
  padding : Array[Int]?
  strides : Array[Int]?
  dilations : Array[Int]?
  outputPadding : Array[Int]?
  outputSizes : Array[Int]?
  groups : Int?
  inputLayout : MLInputOperandLayout?
  filterLayout : MLConvTranspose2dFilterOperandLayout?
  bias : MLOperand?
}

///|
/// Create a new MLConvTranspose2dOptions with default values
pub fn MLConvTranspose2dOptions::default() -> MLConvTranspose2dOptions {
  MLConvTranspose2dOptions::{
    label: None,
    padding: None,
    strides: None,
    dilations: None,
    outputPadding: None,
    outputSizes: None,
    groups: None,
    inputLayout: None,
    filterLayout: None,
    bias: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MLConvTranspose2dOptions::to_js(
  self : MLConvTranspose2dOptions,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   padding: self.padding,
  #|   strides: self.strides,
  #|   dilations: self.dilations,
  #|   outputPadding: self.outputPadding,
  #|   outputSizes: self.outputSizes,
  #|   groups: self.groups,
  #|   inputLayout: ['nchw', 'nhwc'][self.inputLayout],
  #|   filterLayout: ['iohw', 'hwoi', 'ohwi'][self.filterLayout],
  #|   bias: self.bias
  #| })

///|
/// MLCumulativeSumOptions dictionary
pub struct MLCumulativeSumOptions {
  label : String?
  exclusive : Bool?
  reversed : Bool?
}

///|
/// Create a new MLCumulativeSumOptions with default values
pub fn MLCumulativeSumOptions::default() -> MLCumulativeSumOptions {
  MLCumulativeSumOptions::{ label: None, exclusive: None, reversed: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MLCumulativeSumOptions::to_js(
  self : MLCumulativeSumOptions,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   exclusive: self.exclusive,
  #|   reversed: self.reversed
  #| })

///|
/// MLLogicalNotSupportLimits dictionary
pub struct MLLogicalNotSupportLimits {
  a : MLTensorLimits?
  output : MLTensorLimits?
}

///|
/// Create a new MLLogicalNotSupportLimits with default values
pub fn MLLogicalNotSupportLimits::default() -> MLLogicalNotSupportLimits {
  MLLogicalNotSupportLimits::{ a: None, output: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MLLogicalNotSupportLimits::to_js(
  self : MLLogicalNotSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   a: self.a,
  #|   output: self.output
  #| })

///|
/// MLQuantizeDequantizeLinearSupportLimits dictionary
pub struct MLQuantizeDequantizeLinearSupportLimits {
  input : MLTensorLimits?
  scale : MLTensorLimits?
  zeroPoint : MLTensorLimits?
  output : MLTensorLimits?
}

///|
/// Create a new MLQuantizeDequantizeLinearSupportLimits with default values
pub fn MLQuantizeDequantizeLinearSupportLimits::default() -> MLQuantizeDequantizeLinearSupportLimits {
  MLQuantizeDequantizeLinearSupportLimits::{
    input: None,
    scale: None,
    zeroPoint: None,
    output: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MLQuantizeDequantizeLinearSupportLimits::to_js(
  self : MLQuantizeDequantizeLinearSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   input: self.input,
  #|   scale: self.scale,
  #|   zeroPoint: self.zeroPoint,
  #|   output: self.output
  #| })

///|
/// MLEluOptions dictionary
pub struct MLEluOptions {
  label : String?
  alpha : Double?
}

///|
/// Create a new MLEluOptions with default values
pub fn MLEluOptions::default() -> MLEluOptions {
  MLEluOptions::{ label: None, alpha: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MLEluOptions::to_js(self : MLEluOptions) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   alpha: self.alpha
  #| })

///|
/// MLGatherOptions dictionary
pub struct MLGatherOptions {
  label : String?
  axis : Int?
}

///|
/// Create a new MLGatherOptions with default values
pub fn MLGatherOptions::default() -> MLGatherOptions {
  MLGatherOptions::{ label: None, axis: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MLGatherOptions::to_js(self : MLGatherOptions) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   axis: self.axis
  #| })

///|
/// MLGatherSupportLimits dictionary
pub struct MLGatherSupportLimits {
  input : MLTensorLimits?
  indices : MLTensorLimits?
  output : MLTensorLimits?
}

///|
/// Create a new MLGatherSupportLimits with default values
pub fn MLGatherSupportLimits::default() -> MLGatherSupportLimits {
  MLGatherSupportLimits::{ input: None, indices: None, output: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MLGatherSupportLimits::to_js(
  self : MLGatherSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   input: self.input,
  #|   indices: self.indices,
  #|   output: self.output
  #| })

///|
/// MLGemmOptions dictionary
pub struct MLGemmOptions {
  label : String?
  c : MLOperand?
  alpha : Double?
  beta : Double?
  aTranspose : Bool?
  bTranspose : Bool?
}

///|
/// Create a new MLGemmOptions with default values
pub fn MLGemmOptions::default() -> MLGemmOptions {
  MLGemmOptions::{
    label: None,
    c: None,
    alpha: None,
    beta: None,
    aTranspose: None,
    bTranspose: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MLGemmOptions::to_js(self : MLGemmOptions) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   c: self.c,
  #|   alpha: self.alpha,
  #|   beta: self.beta,
  #|   aTranspose: self.aTranspose,
  #|   bTranspose: self.bTranspose
  #| })

///|
/// MLGemmSupportLimits dictionary
pub struct MLGemmSupportLimits {
  a : MLTensorLimits?
  b : MLTensorLimits?
  c : MLTensorLimits?
  output : MLTensorLimits?
}

///|
/// Create a new MLGemmSupportLimits with default values
pub fn MLGemmSupportLimits::default() -> MLGemmSupportLimits {
  MLGemmSupportLimits::{ a: None, b: None, c: None, output: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MLGemmSupportLimits::to_js(
  self : MLGemmSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   a: self.a,
  #|   b: self.b,
  #|   c: self.c,
  #|   output: self.output
  #| })

///|
/// MLGruOptions dictionary
pub struct MLGruOptions {
  label : String?
  bias : MLOperand?
  recurrentBias : MLOperand?
  initialHiddenState : MLOperand?
  resetAfter : Bool?
  returnSequence : Bool?
  direction : MLRecurrentNetworkDirection?
  layout : MLGruWeightLayout?
  activations : Array[MLRecurrentNetworkActivation]?
}

///|
/// Create a new MLGruOptions with default values
pub fn MLGruOptions::default() -> MLGruOptions {
  MLGruOptions::{
    label: None,
    bias: None,
    recurrentBias: None,
    initialHiddenState: None,
    resetAfter: None,
    returnSequence: None,
    direction: None,
    layout: None,
    activations: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MLGruOptions::to_js(self : MLGruOptions) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   bias: self.bias,
  #|   recurrentBias: self.recurrentBias,
  #|   initialHiddenState: self.initialHiddenState,
  #|   resetAfter: self.resetAfter,
  #|   returnSequence: self.returnSequence,
  #|   direction: ['forward', 'backward', 'both'][self.direction],
  #|   layout: ['zrn', 'rzn'][self.layout],
  #|   activations: self.activations
  #| })

///|
/// MLGruSupportLimits dictionary
pub struct MLGruSupportLimits {
  input : MLTensorLimits?
  weight : MLTensorLimits?
  recurrentWeight : MLTensorLimits?
  bias : MLTensorLimits?
  recurrentBias : MLTensorLimits?
  initialHiddenState : MLTensorLimits?
  output0 : MLTensorLimits?
  output1 : MLTensorLimits?
}

///|
/// Create a new MLGruSupportLimits with default values
pub fn MLGruSupportLimits::default() -> MLGruSupportLimits {
  MLGruSupportLimits::{
    input: None,
    weight: None,
    recurrentWeight: None,
    bias: None,
    recurrentBias: None,
    initialHiddenState: None,
    output0: None,
    output1: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MLGruSupportLimits::to_js(
  self : MLGruSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   input: self.input,
  #|   weight: self.weight,
  #|   recurrentWeight: self.recurrentWeight,
  #|   bias: self.bias,
  #|   recurrentBias: self.recurrentBias,
  #|   initialHiddenState: self.initialHiddenState,
  #|   output0: self.output0,
  #|   output1: self.output1
  #| })

///|
/// MLGruCellOptions dictionary
pub struct MLGruCellOptions {
  label : String?
  bias : MLOperand?
  recurrentBias : MLOperand?
  resetAfter : Bool?
  layout : MLGruWeightLayout?
  activations : Array[MLRecurrentNetworkActivation]?
}

///|
/// Create a new MLGruCellOptions with default values
pub fn MLGruCellOptions::default() -> MLGruCellOptions {
  MLGruCellOptions::{
    label: None,
    bias: None,
    recurrentBias: None,
    resetAfter: None,
    layout: None,
    activations: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MLGruCellOptions::to_js(self : MLGruCellOptions) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   bias: self.bias,
  #|   recurrentBias: self.recurrentBias,
  #|   resetAfter: self.resetAfter,
  #|   layout: ['zrn', 'rzn'][self.layout],
  #|   activations: self.activations
  #| })

///|
/// MLGruCellSupportLimits dictionary
pub struct MLGruCellSupportLimits {
  input : MLTensorLimits?
  weight : MLTensorLimits?
  recurrentWeight : MLTensorLimits?
  hiddenState : MLTensorLimits?
  bias : MLTensorLimits?
  recurrentBias : MLTensorLimits?
  output : MLTensorLimits?
}

///|
/// Create a new MLGruCellSupportLimits with default values
pub fn MLGruCellSupportLimits::default() -> MLGruCellSupportLimits {
  MLGruCellSupportLimits::{
    input: None,
    weight: None,
    recurrentWeight: None,
    hiddenState: None,
    bias: None,
    recurrentBias: None,
    output: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MLGruCellSupportLimits::to_js(
  self : MLGruCellSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   input: self.input,
  #|   weight: self.weight,
  #|   recurrentWeight: self.recurrentWeight,
  #|   hiddenState: self.hiddenState,
  #|   bias: self.bias,
  #|   recurrentBias: self.recurrentBias,
  #|   output: self.output
  #| })

///|
/// MLHardSigmoidOptions dictionary
pub struct MLHardSigmoidOptions {
  label : String?
  alpha : Double?
  beta : Double?
}

///|
/// Create a new MLHardSigmoidOptions with default values
pub fn MLHardSigmoidOptions::default() -> MLHardSigmoidOptions {
  MLHardSigmoidOptions::{ label: None, alpha: None, beta: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MLHardSigmoidOptions::to_js(
  self : MLHardSigmoidOptions,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   alpha: self.alpha,
  #|   beta: self.beta
  #| })

///|
/// MLInstanceNormalizationOptions dictionary
pub struct MLInstanceNormalizationOptions {
  label : String?
  scale : MLOperand?
  bias : MLOperand?
  epsilon : Double?
  layout : MLInputOperandLayout?
}

///|
/// Create a new MLInstanceNormalizationOptions with default values
pub fn MLInstanceNormalizationOptions::default() -> MLInstanceNormalizationOptions {
  MLInstanceNormalizationOptions::{
    label: None,
    scale: None,
    bias: None,
    epsilon: None,
    layout: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MLInstanceNormalizationOptions::to_js(
  self : MLInstanceNormalizationOptions,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   scale: self.scale,
  #|   bias: self.bias,
  #|   epsilon: self.epsilon,
  #|   layout: ['nchw', 'nhwc'][self.layout]
  #| })

///|
/// MLNormalizationSupportLimits dictionary
pub struct MLNormalizationSupportLimits {
  input : MLTensorLimits?
  scale : MLTensorLimits?
  bias : MLTensorLimits?
  output : MLTensorLimits?
}

///|
/// Create a new MLNormalizationSupportLimits with default values
pub fn MLNormalizationSupportLimits::default() -> MLNormalizationSupportLimits {
  MLNormalizationSupportLimits::{
    input: None,
    scale: None,
    bias: None,
    output: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MLNormalizationSupportLimits::to_js(
  self : MLNormalizationSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   input: self.input,
  #|   scale: self.scale,
  #|   bias: self.bias,
  #|   output: self.output
  #| })

///|
/// MLLayerNormalizationOptions dictionary
pub struct MLLayerNormalizationOptions {
  label : String?
  scale : MLOperand?
  bias : MLOperand?
  axes : Array[Int]?
  epsilon : Double?
}

///|
/// Create a new MLLayerNormalizationOptions with default values
pub fn MLLayerNormalizationOptions::default() -> MLLayerNormalizationOptions {
  MLLayerNormalizationOptions::{
    label: None,
    scale: None,
    bias: None,
    axes: None,
    epsilon: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MLLayerNormalizationOptions::to_js(
  self : MLLayerNormalizationOptions,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   scale: self.scale,
  #|   bias: self.bias,
  #|   axes: self.axes,
  #|   epsilon: self.epsilon
  #| })

///|
/// MLLeakyReluOptions dictionary
pub struct MLLeakyReluOptions {
  label : String?
  alpha : Double?
}

///|
/// Create a new MLLeakyReluOptions with default values
pub fn MLLeakyReluOptions::default() -> MLLeakyReluOptions {
  MLLeakyReluOptions::{ label: None, alpha: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MLLeakyReluOptions::to_js(
  self : MLLeakyReluOptions,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   alpha: self.alpha
  #| })

///|
/// MLLinearOptions dictionary
pub struct MLLinearOptions {
  label : String?
  alpha : Double?
  beta : Double?
}

///|
/// Create a new MLLinearOptions with default values
pub fn MLLinearOptions::default() -> MLLinearOptions {
  MLLinearOptions::{ label: None, alpha: None, beta: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MLLinearOptions::to_js(self : MLLinearOptions) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   alpha: self.alpha,
  #|   beta: self.beta
  #| })

///|
/// MLLstmOptions dictionary
pub struct MLLstmOptions {
  label : String?
  bias : MLOperand?
  recurrentBias : MLOperand?
  peepholeWeight : MLOperand?
  initialHiddenState : MLOperand?
  initialCellState : MLOperand?
  returnSequence : Bool?
  direction : MLRecurrentNetworkDirection?
  layout : MLLstmWeightLayout?
  activations : Array[MLRecurrentNetworkActivation]?
}

///|
/// Create a new MLLstmOptions with default values
pub fn MLLstmOptions::default() -> MLLstmOptions {
  MLLstmOptions::{
    label: None,
    bias: None,
    recurrentBias: None,
    peepholeWeight: None,
    initialHiddenState: None,
    initialCellState: None,
    returnSequence: None,
    direction: None,
    layout: None,
    activations: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MLLstmOptions::to_js(self : MLLstmOptions) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   bias: self.bias,
  #|   recurrentBias: self.recurrentBias,
  #|   peepholeWeight: self.peepholeWeight,
  #|   initialHiddenState: self.initialHiddenState,
  #|   initialCellState: self.initialCellState,
  #|   returnSequence: self.returnSequence,
  #|   direction: ['forward', 'backward', 'both'][self.direction],
  #|   layout: ['iofg', 'ifgo'][self.layout],
  #|   activations: self.activations
  #| })

///|
/// MLLstmSupportLimits dictionary
pub struct MLLstmSupportLimits {
  input : MLTensorLimits?
  weight : MLTensorLimits?
  recurrentWeight : MLTensorLimits?
  bias : MLTensorLimits?
  recurrentBias : MLTensorLimits?
  peepholeWeight : MLTensorLimits?
  initialHiddenState : MLTensorLimits?
  initialCellState : MLTensorLimits?
  output0 : MLTensorLimits?
  output1 : MLTensorLimits?
  output2 : MLTensorLimits?
}

///|
/// Create a new MLLstmSupportLimits with default values
pub fn MLLstmSupportLimits::default() -> MLLstmSupportLimits {
  MLLstmSupportLimits::{
    input: None,
    weight: None,
    recurrentWeight: None,
    bias: None,
    recurrentBias: None,
    peepholeWeight: None,
    initialHiddenState: None,
    initialCellState: None,
    output0: None,
    output1: None,
    output2: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MLLstmSupportLimits::to_js(
  self : MLLstmSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   input: self.input,
  #|   weight: self.weight,
  #|   recurrentWeight: self.recurrentWeight,
  #|   bias: self.bias,
  #|   recurrentBias: self.recurrentBias,
  #|   peepholeWeight: self.peepholeWeight,
  #|   initialHiddenState: self.initialHiddenState,
  #|   initialCellState: self.initialCellState,
  #|   output0: self.output0,
  #|   output1: self.output1,
  #|   output2: self.output2
  #| })

///|
/// MLLstmCellOptions dictionary
pub struct MLLstmCellOptions {
  label : String?
  bias : MLOperand?
  recurrentBias : MLOperand?
  peepholeWeight : MLOperand?
  layout : MLLstmWeightLayout?
  activations : Array[MLRecurrentNetworkActivation]?
}

///|
/// Create a new MLLstmCellOptions with default values
pub fn MLLstmCellOptions::default() -> MLLstmCellOptions {
  MLLstmCellOptions::{
    label: None,
    bias: None,
    recurrentBias: None,
    peepholeWeight: None,
    layout: None,
    activations: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MLLstmCellOptions::to_js(
  self : MLLstmCellOptions,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   bias: self.bias,
  #|   recurrentBias: self.recurrentBias,
  #|   peepholeWeight: self.peepholeWeight,
  #|   layout: ['iofg', 'ifgo'][self.layout],
  #|   activations: self.activations
  #| })

///|
/// MLLstmCellSupportLimits dictionary
pub struct MLLstmCellSupportLimits {
  input : MLTensorLimits?
  weight : MLTensorLimits?
  recurrentWeight : MLTensorLimits?
  hiddenState : MLTensorLimits?
  cellState : MLTensorLimits?
  bias : MLTensorLimits?
  recurrentBias : MLTensorLimits?
  peepholeWeight : MLTensorLimits?
  output0 : MLTensorLimits?
  output1 : MLTensorLimits?
}

///|
/// Create a new MLLstmCellSupportLimits with default values
pub fn MLLstmCellSupportLimits::default() -> MLLstmCellSupportLimits {
  MLLstmCellSupportLimits::{
    input: None,
    weight: None,
    recurrentWeight: None,
    hiddenState: None,
    cellState: None,
    bias: None,
    recurrentBias: None,
    peepholeWeight: None,
    output0: None,
    output1: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MLLstmCellSupportLimits::to_js(
  self : MLLstmCellSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   input: self.input,
  #|   weight: self.weight,
  #|   recurrentWeight: self.recurrentWeight,
  #|   hiddenState: self.hiddenState,
  #|   cellState: self.cellState,
  #|   bias: self.bias,
  #|   recurrentBias: self.recurrentBias,
  #|   peepholeWeight: self.peepholeWeight,
  #|   output0: self.output0,
  #|   output1: self.output1
  #| })

///|
/// MLPadOptions dictionary
pub struct MLPadOptions {
  label : String?
  mode : MLPaddingMode?
  value : MLNumber?
}

///|
/// Create a new MLPadOptions with default values
pub fn MLPadOptions::default() -> MLPadOptions {
  MLPadOptions::{ label: None, mode: None, value: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MLPadOptions::to_js(self : MLPadOptions) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   mode: ['constant', 'edge', 'reflection'][self.mode],
  #|   value: self.value.to_js_value()
  #| })

///|
/// MLPool2dOptions dictionary
pub struct MLPool2dOptions {
  label : String?
  windowDimensions : Array[Int]?
  padding : Array[Int]?
  strides : Array[Int]?
  dilations : Array[Int]?
  layout : MLInputOperandLayout?
  outputShapeRounding : MLRoundingType?
  outputSizes : Array[Int]?
}

///|
/// Create a new MLPool2dOptions with default values
pub fn MLPool2dOptions::default() -> MLPool2dOptions {
  MLPool2dOptions::{
    label: None,
    windowDimensions: None,
    padding: None,
    strides: None,
    dilations: None,
    layout: None,
    outputShapeRounding: None,
    outputSizes: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MLPool2dOptions::to_js(self : MLPool2dOptions) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   windowDimensions: self.windowDimensions,
  #|   padding: self.padding,
  #|   strides: self.strides,
  #|   dilations: self.dilations,
  #|   layout: ['nchw', 'nhwc'][self.layout],
  #|   outputShapeRounding: ['floor', 'ceil'][self.outputShapeRounding],
  #|   outputSizes: self.outputSizes
  #| })

///|
/// MLPreluSupportLimits dictionary
pub struct MLPreluSupportLimits {
  input : MLTensorLimits?
  slope : MLTensorLimits?
  output : MLTensorLimits?
}

///|
/// Create a new MLPreluSupportLimits with default values
pub fn MLPreluSupportLimits::default() -> MLPreluSupportLimits {
  MLPreluSupportLimits::{ input: None, slope: None, output: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MLPreluSupportLimits::to_js(
  self : MLPreluSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   input: self.input,
  #|   slope: self.slope,
  #|   output: self.output
  #| })

///|
/// MLReduceOptions dictionary
pub struct MLReduceOptions {
  label : String?
  axes : Array[Int]?
  keepDimensions : Bool?
}

///|
/// Create a new MLReduceOptions with default values
pub fn MLReduceOptions::default() -> MLReduceOptions {
  MLReduceOptions::{ label: None, axes: None, keepDimensions: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MLReduceOptions::to_js(self : MLReduceOptions) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   axes: self.axes,
  #|   keepDimensions: self.keepDimensions
  #| })

///|
/// MLResample2dOptions dictionary
pub struct MLResample2dOptions {
  label : String?
  mode : MLInterpolationMode?
  scales : Array[Double]?
  sizes : Array[Int]?
  axes : Array[Int]?
}

///|
/// Create a new MLResample2dOptions with default values
pub fn MLResample2dOptions::default() -> MLResample2dOptions {
  MLResample2dOptions::{
    label: None,
    mode: None,
    scales: None,
    sizes: None,
    axes: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MLResample2dOptions::to_js(
  self : MLResample2dOptions,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   mode: ['nearest-neighbor', 'linear'][self.mode],
  #|   scales: self.scales,
  #|   sizes: self.sizes,
  #|   axes: self.axes
  #| })

///|
/// MLReverseOptions dictionary
pub struct MLReverseOptions {
  label : String?
  axes : Array[Int]?
}

///|
/// Create a new MLReverseOptions with default values
pub fn MLReverseOptions::default() -> MLReverseOptions {
  MLReverseOptions::{ label: None, axes: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MLReverseOptions::to_js(self : MLReverseOptions) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   axes: self.axes
  #| })

///|
/// MLScatterOptions dictionary
pub struct MLScatterOptions {
  label : String?
  axis : Int?
}

///|
/// Create a new MLScatterOptions with default values
pub fn MLScatterOptions::default() -> MLScatterOptions {
  MLScatterOptions::{ label: None, axis: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MLScatterOptions::to_js(self : MLScatterOptions) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   axis: self.axis
  #| })

///|
/// MLScatterSupportLimits dictionary
pub struct MLScatterSupportLimits {
  input : MLTensorLimits?
  indices : MLTensorLimits?
  updates : MLTensorLimits?
  output : MLTensorLimits?
}

///|
/// Create a new MLScatterSupportLimits with default values
pub fn MLScatterSupportLimits::default() -> MLScatterSupportLimits {
  MLScatterSupportLimits::{
    input: None,
    indices: None,
    updates: None,
    output: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MLScatterSupportLimits::to_js(
  self : MLScatterSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   input: self.input,
  #|   indices: self.indices,
  #|   updates: self.updates,
  #|   output: self.output
  #| })

///|
/// MLSliceOptions dictionary
pub struct MLSliceOptions {
  label : String?
  strides : Array[Int]?
}

///|
/// Create a new MLSliceOptions with default values
pub fn MLSliceOptions::default() -> MLSliceOptions {
  MLSliceOptions::{ label: None, strides: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MLSliceOptions::to_js(self : MLSliceOptions) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   strides: self.strides
  #| })

///|
/// MLSplitOptions dictionary
pub struct MLSplitOptions {
  label : String?
  axis : Int?
}

///|
/// Create a new MLSplitOptions with default values
pub fn MLSplitOptions::default() -> MLSplitOptions {
  MLSplitOptions::{ label: None, axis: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MLSplitOptions::to_js(self : MLSplitOptions) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   axis: self.axis
  #| })

///|
/// MLSplitSupportLimits dictionary
pub struct MLSplitSupportLimits {
  input : MLTensorLimits?
  outputs : MLTensorLimits?
}

///|
/// Create a new MLSplitSupportLimits with default values
pub fn MLSplitSupportLimits::default() -> MLSplitSupportLimits {
  MLSplitSupportLimits::{ input: None, outputs: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MLSplitSupportLimits::to_js(
  self : MLSplitSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   input: self.input,
  #|   outputs: self.outputs
  #| })

///|
/// MLTransposeOptions dictionary
pub struct MLTransposeOptions {
  label : String?
  permutation : Array[Int]?
}

///|
/// Create a new MLTransposeOptions with default values
pub fn MLTransposeOptions::default() -> MLTransposeOptions {
  MLTransposeOptions::{ label: None, permutation: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MLTransposeOptions::to_js(
  self : MLTransposeOptions,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   permutation: self.permutation
  #| })

///|
/// MLTriangularOptions dictionary
pub struct MLTriangularOptions {
  label : String?
  upper : Bool?
  diagonal : Int?
}

///|
/// Create a new MLTriangularOptions with default values
pub fn MLTriangularOptions::default() -> MLTriangularOptions {
  MLTriangularOptions::{ label: None, upper: None, diagonal: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MLTriangularOptions::to_js(
  self : MLTriangularOptions,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   upper: self.upper,
  #|   diagonal: self.diagonal
  #| })

///|
/// MLWhereSupportLimits dictionary
pub struct MLWhereSupportLimits {
  condition : MLTensorLimits?
  trueValue : MLTensorLimits?
  falseValue : MLTensorLimits?
  output : MLTensorLimits?
}

///|
/// Create a new MLWhereSupportLimits with default values
pub fn MLWhereSupportLimits::default() -> MLWhereSupportLimits {
  MLWhereSupportLimits::{
    condition: None,
    trueValue: None,
    falseValue: None,
    output: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MLWhereSupportLimits::to_js(
  self : MLWhereSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   condition: self.condition,
  #|   trueValue: self.trueValue,
  #|   falseValue: self.falseValue,
  #|   output: self.output
  #| })

///|
/// ML interface
pub type ML

///|
pub extern "js" fn ML::to_js_value(self : ML) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn ML::create_context(self : ML) -> Promise[MLContext] =
  #| (self) => self.createContext()

///|
pub extern "js" fn ML::create_context_with_options(
  self : ML,
  options : MLContextOptions,
) -> Promise[MLContext] =
  #| (self, options) => self.createContext(options)

///|
pub extern "js" fn ML::create_context_with_gpu_device_g_p_u_device(
  self : ML,
  gpu_device : GPUDevice,
) -> Promise[MLContext] =
  #| (self, gpu_device) => self.createContext(gpu_device)

///|
/// MLContext interface
pub type MLContext

///|
pub extern "js" fn MLContext::to_js_value(self : MLContext) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn MLContext::dispatch(
  self : MLContext,
  graph : MLGraph,
  inputs : MLNamedTensors,
  outputs : MLNamedTensors,
) -> Unit =
  #| (self, graph, inputs, outputs) => self.dispatch(graph, inputs, outputs)

///|
pub extern "js" fn MLContext::create_tensor(
  self : MLContext,
  descriptor : MLTensorDescriptor,
) -> Promise[MLTensor] =
  #| (self, descriptor) => self.createTensor(descriptor)

///|
pub extern "js" fn MLContext::create_constant_tensor(
  self : MLContext,
  descriptor : MLOperandDescriptor,
  input_data : AllowSharedBufferSource,
) -> Promise[MLTensor] =
  #| (self, descriptor, input_data) => self.createConstantTensor(descriptor, input_data)

///|
pub extern "js" fn MLContext::read_tensor(
  self : MLContext,
  tensor : MLTensor,
) -> Promise[ArrayBuffer] =
  #| (self, tensor) => self.readTensor(tensor)

///|
pub extern "js" fn MLContext::read_tensor_with_tensor_m_l_tensor_and_output_data_allow_shared_buffer_source(
  self : MLContext,
  tensor : MLTensor,
  output_data : AllowSharedBufferSource,
) -> Promise[Unit] =
  #| (self, tensor, output_data) => self.readTensor(tensor, output_data)

///|
pub extern "js" fn MLContext::write_tensor(
  self : MLContext,
  tensor : MLTensor,
  input_data : AllowSharedBufferSource,
) -> Unit =
  #| (self, tensor, input_data) => self.writeTensor(tensor, input_data)

///|
pub extern "js" fn MLContext::op_support_limits(
  self : MLContext,
) -> MLOpSupportLimits =
  #| (self) => self.opSupportLimits()

///|
pub extern "js" fn MLContext::destroy(self : MLContext) -> Unit =
  #| (self) => self.destroy()

///|
pub extern "js" fn MLContext::get_accelerated(self : MLContext) -> Bool =
  #| (self) => self.accelerated

///|
pub extern "js" fn MLContext::get_lost(
  self : MLContext,
) -> Promise[MLContextLostInfo] =
  #| (self) => self.lost

///|
/// MLGraph interface
pub type MLGraph

///|
pub extern "js" fn MLGraph::to_js_value(self : MLGraph) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn MLGraph::destroy(self : MLGraph) -> Unit =
  #| (self) => self.destroy()

///|
/// MLOperand interface
pub type MLOperand

///|
pub extern "js" fn MLOperand::to_js_value(self : MLOperand) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn MLOperand::get_data_type(
  self : MLOperand,
) -> MLOperandDataType =
  #| (self) => self.dataType

///|
pub extern "js" fn MLOperand::get_shape(self : MLOperand) -> JsValue =
  #| (self) => self.shape

///|
/// MLTensor interface
pub type MLTensor

///|
pub extern "js" fn MLTensor::to_js_value(self : MLTensor) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn MLTensor::get_data_type(
  self : MLTensor,
) -> MLOperandDataType =
  #| (self) => self.dataType

///|
pub extern "js" fn MLTensor::get_shape(self : MLTensor) -> JsValue =
  #| (self) => self.shape

///|
pub extern "js" fn MLTensor::get_readable(self : MLTensor) -> Bool =
  #| (self) => self.readable

///|
pub extern "js" fn MLTensor::get_writable(self : MLTensor) -> Bool =
  #| (self) => self.writable

///|
pub extern "js" fn MLTensor::get_constant(self : MLTensor) -> Bool =
  #| (self) => self.constant

///|
pub extern "js" fn MLTensor::destroy(self : MLTensor) -> Unit =
  #| (self) => self.destroy()

///|
/// MLGraphBuilder interface
pub type MLGraphBuilder

///|
pub extern "js" fn MLGraphBuilder::to_js_value(
  self : MLGraphBuilder,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn MLGraphBuilder::new(context : MLContext) -> MLGraphBuilder =
  #| (context) => new MLGraphBuilder(context)

///|
pub extern "js" fn MLGraphBuilder::input(
  self : MLGraphBuilder,
  name : String,
  descriptor : MLOperandDescriptor,
) -> MLOperand =
  #| (self, name, descriptor) => self.input(name, descriptor)

///|
pub extern "js" fn MLGraphBuilder::constant(
  self : MLGraphBuilder,
  tensor : MLTensor,
) -> MLOperand =
  #| (self, tensor) => self.constant(tensor)

///|
pub extern "js" fn MLGraphBuilder::constant_with_data_type_m_l_operand_data_type_and_value_m_l_number(
  self : MLGraphBuilder,
  data_type : MLOperandDataType,
  value : MLNumber,
) -> MLOperand =
  #| (self, data_type, value) => self.constant(['float32', 'float16', 'int32', 'uint32', 'int64', 'uint64', 'int8', 'uint8'][data_type], value)

///|
pub extern "js" fn MLGraphBuilder::constant_with_descriptor_m_l_operand_descriptor_and_buffer_allow_shared_buffer_source(
  self : MLGraphBuilder,
  descriptor : MLOperandDescriptor,
  buffer : AllowSharedBufferSource,
) -> MLOperand =
  #| (self, descriptor, buffer) => self.constant(descriptor, buffer)

///|
pub extern "js" fn MLGraphBuilder::build(
  self : MLGraphBuilder,
  outputs : MLNamedOperands,
) -> Promise[MLGraph] =
  #| (self, outputs) => self.build(outputs)

///|
pub extern "js" fn MLGraphBuilder::arg_min(
  self : MLGraphBuilder,
  input : MLOperand,
  axis : Int,
) -> MLOperand =
  #| (self, input, axis) => self.argMin(input, axis)

///|
pub extern "js" fn MLGraphBuilder::arg_min_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  axis : Int,
  options : MLArgMinMaxOptions,
) -> MLOperand =
  #| (self, input, axis, options) => self.argMin(input, axis, options)

///|
pub extern "js" fn MLGraphBuilder::arg_max(
  self : MLGraphBuilder,
  input : MLOperand,
  axis : Int,
) -> MLOperand =
  #| (self, input, axis) => self.argMax(input, axis)

///|
pub extern "js" fn MLGraphBuilder::arg_max_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  axis : Int,
  options : MLArgMinMaxOptions,
) -> MLOperand =
  #| (self, input, axis, options) => self.argMax(input, axis, options)

///|
pub extern "js" fn MLGraphBuilder::batch_normalization(
  self : MLGraphBuilder,
  input : MLOperand,
  mean : MLOperand,
  variance : MLOperand,
) -> MLOperand =
  #| (self, input, mean, variance) => self.batchNormalization(input, mean, variance)

///|
pub extern "js" fn MLGraphBuilder::batch_normalization_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  mean : MLOperand,
  variance : MLOperand,
  options : MLBatchNormalizationOptions,
) -> MLOperand =
  #| (self, input, mean, variance, options) => self.batchNormalization(input, mean, variance, options)

///|
pub extern "js" fn MLGraphBuilder::cast(
  self : MLGraphBuilder,
  input : MLOperand,
  data_type : MLOperandDataType,
) -> MLOperand =
  #| (self, input, data_type) => self.cast(input, ['float32', 'float16', 'int32', 'uint32', 'int64', 'uint64', 'int8', 'uint8'][data_type])

///|
pub extern "js" fn MLGraphBuilder::cast_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  data_type : MLOperandDataType,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, input, data_type, options) => self.cast(input, ['float32', 'float16', 'int32', 'uint32', 'int64', 'uint64', 'int8', 'uint8'][data_type], options)

///|
pub extern "js" fn MLGraphBuilder::clamp(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.clamp(input)

///|
pub extern "js" fn MLGraphBuilder::clamp_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLClampOptions,
) -> MLOperand =
  #| (self, input, options) => self.clamp(input, options)

///|
pub extern "js" fn MLGraphBuilder::concat(
  self : MLGraphBuilder,
  inputs : Array[MLOperand],
  axis : Int,
) -> MLOperand =
  #| (self, inputs, axis) => self.concat(inputs, axis)

///|
pub extern "js" fn MLGraphBuilder::concat_with_options(
  self : MLGraphBuilder,
  inputs : Array[MLOperand],
  axis : Int,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, inputs, axis, options) => self.concat(inputs, axis, options)

///|
pub extern "js" fn MLGraphBuilder::conv2d(
  self : MLGraphBuilder,
  input : MLOperand,
  filter : MLOperand,
) -> MLOperand =
  #| (self, input, filter) => self.conv2d(input, filter)

///|
pub extern "js" fn MLGraphBuilder::conv2d_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  filter : MLOperand,
  options : MLConv2dOptions,
) -> MLOperand =
  #| (self, input, filter, options) => self.conv2d(input, filter, options)

///|
pub extern "js" fn MLGraphBuilder::conv_transpose2d(
  self : MLGraphBuilder,
  input : MLOperand,
  filter : MLOperand,
) -> MLOperand =
  #| (self, input, filter) => self.convTranspose2d(input, filter)

///|
pub extern "js" fn MLGraphBuilder::conv_transpose2d_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  filter : MLOperand,
  options : MLConvTranspose2dOptions,
) -> MLOperand =
  #| (self, input, filter, options) => self.convTranspose2d(input, filter, options)

///|
pub extern "js" fn MLGraphBuilder::cumulative_sum(
  self : MLGraphBuilder,
  input : MLOperand,
  axis : Int,
) -> MLOperand =
  #| (self, input, axis) => self.cumulativeSum(input, axis)

///|
pub extern "js" fn MLGraphBuilder::cumulative_sum_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  axis : Int,
  options : MLCumulativeSumOptions,
) -> MLOperand =
  #| (self, input, axis, options) => self.cumulativeSum(input, axis, options)

///|
pub extern "js" fn MLGraphBuilder::add(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.add(a, b)

///|
pub extern "js" fn MLGraphBuilder::add_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, a, b, options) => self.add(a, b, options)

///|
pub extern "js" fn MLGraphBuilder::sub(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.sub(a, b)

///|
pub extern "js" fn MLGraphBuilder::sub_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, a, b, options) => self.sub(a, b, options)

///|
pub extern "js" fn MLGraphBuilder::mul(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.mul(a, b)

///|
pub extern "js" fn MLGraphBuilder::mul_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, a, b, options) => self.mul(a, b, options)

///|
pub extern "js" fn MLGraphBuilder::div(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.div(a, b)

///|
pub extern "js" fn MLGraphBuilder::div_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, a, b, options) => self.div(a, b, options)

///|
pub extern "js" fn MLGraphBuilder::max(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.max(a, b)

///|
pub extern "js" fn MLGraphBuilder::max_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, a, b, options) => self.max(a, b, options)

///|
pub extern "js" fn MLGraphBuilder::min(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.min(a, b)

///|
pub extern "js" fn MLGraphBuilder::min_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, a, b, options) => self.min(a, b, options)

///|
pub extern "js" fn MLGraphBuilder::pow(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.pow(a, b)

///|
pub extern "js" fn MLGraphBuilder::pow_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, a, b, options) => self.pow(a, b, options)

///|
pub extern "js" fn MLGraphBuilder::equal(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.equal(a, b)

///|
pub extern "js" fn MLGraphBuilder::equal_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, a, b, options) => self.equal(a, b, options)

///|
pub extern "js" fn MLGraphBuilder::not_equal(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.notEqual(a, b)

///|
pub extern "js" fn MLGraphBuilder::not_equal_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, a, b, options) => self.notEqual(a, b, options)

///|
pub extern "js" fn MLGraphBuilder::greater(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.greater(a, b)

///|
pub extern "js" fn MLGraphBuilder::greater_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, a, b, options) => self.greater(a, b, options)

///|
pub extern "js" fn MLGraphBuilder::greater_or_equal(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.greaterOrEqual(a, b)

///|
pub extern "js" fn MLGraphBuilder::greater_or_equal_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, a, b, options) => self.greaterOrEqual(a, b, options)

///|
pub extern "js" fn MLGraphBuilder::lesser(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.lesser(a, b)

///|
pub extern "js" fn MLGraphBuilder::lesser_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, a, b, options) => self.lesser(a, b, options)

///|
pub extern "js" fn MLGraphBuilder::lesser_or_equal(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.lesserOrEqual(a, b)

///|
pub extern "js" fn MLGraphBuilder::lesser_or_equal_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, a, b, options) => self.lesserOrEqual(a, b, options)

///|
pub extern "js" fn MLGraphBuilder::logical_not(
  self : MLGraphBuilder,
  a : MLOperand,
) -> MLOperand =
  #| (self, a) => self.logicalNot(a)

///|
pub extern "js" fn MLGraphBuilder::logical_not_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, a, options) => self.logicalNot(a, options)

///|
pub extern "js" fn MLGraphBuilder::logical_and(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.logicalAnd(a, b)

///|
pub extern "js" fn MLGraphBuilder::logical_and_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, a, b, options) => self.logicalAnd(a, b, options)

///|
pub extern "js" fn MLGraphBuilder::logical_or(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.logicalOr(a, b)

///|
pub extern "js" fn MLGraphBuilder::logical_or_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, a, b, options) => self.logicalOr(a, b, options)

///|
pub extern "js" fn MLGraphBuilder::logical_xor(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.logicalXor(a, b)

///|
pub extern "js" fn MLGraphBuilder::logical_xor_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, a, b, options) => self.logicalXor(a, b, options)

///|
pub extern "js" fn MLGraphBuilder::is_na_n(
  self : MLGraphBuilder,
  a : MLOperand,
) -> MLOperand =
  #| (self, a) => self.isNaN(a)

///|
pub extern "js" fn MLGraphBuilder::is_na_n_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, a, options) => self.isNaN(a, options)

///|
pub extern "js" fn MLGraphBuilder::is_infinite(
  self : MLGraphBuilder,
  a : MLOperand,
) -> MLOperand =
  #| (self, a) => self.isInfinite(a)

///|
pub extern "js" fn MLGraphBuilder::is_infinite_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, a, options) => self.isInfinite(a, options)

///|
pub extern "js" fn MLGraphBuilder::abs(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.abs(input)

///|
pub extern "js" fn MLGraphBuilder::abs_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, input, options) => self.abs(input, options)

///|
pub extern "js" fn MLGraphBuilder::ceil(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.ceil(input)

///|
pub extern "js" fn MLGraphBuilder::ceil_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, input, options) => self.ceil(input, options)

///|
pub extern "js" fn MLGraphBuilder::cos(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.cos(input)

///|
pub extern "js" fn MLGraphBuilder::cos_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, input, options) => self.cos(input, options)

///|
pub extern "js" fn MLGraphBuilder::erf(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.erf(input)

///|
pub extern "js" fn MLGraphBuilder::erf_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, input, options) => self.erf(input, options)

///|
pub extern "js" fn MLGraphBuilder::exp(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.exp(input)

///|
pub extern "js" fn MLGraphBuilder::exp_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, input, options) => self.exp(input, options)

///|
pub extern "js" fn MLGraphBuilder::floor(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.floor(input)

///|
pub extern "js" fn MLGraphBuilder::floor_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, input, options) => self.floor(input, options)

///|
pub extern "js" fn MLGraphBuilder::identity(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.identity(input)

///|
pub extern "js" fn MLGraphBuilder::identity_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, input, options) => self.identity(input, options)

///|
pub extern "js" fn MLGraphBuilder::log(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.log(input)

///|
pub extern "js" fn MLGraphBuilder::log_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, input, options) => self.log(input, options)

///|
pub extern "js" fn MLGraphBuilder::neg(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.neg(input)

///|
pub extern "js" fn MLGraphBuilder::neg_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, input, options) => self.neg(input, options)

///|
pub extern "js" fn MLGraphBuilder::reciprocal(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.reciprocal(input)

///|
pub extern "js" fn MLGraphBuilder::reciprocal_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, input, options) => self.reciprocal(input, options)

///|
pub extern "js" fn MLGraphBuilder::round_even(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.roundEven(input)

///|
pub extern "js" fn MLGraphBuilder::round_even_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, input, options) => self.roundEven(input, options)

///|
pub extern "js" fn MLGraphBuilder::sin(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.sin(input)

///|
pub extern "js" fn MLGraphBuilder::sin_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, input, options) => self.sin(input, options)

///|
pub extern "js" fn MLGraphBuilder::sign(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.sign(input)

///|
pub extern "js" fn MLGraphBuilder::sign_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, input, options) => self.sign(input, options)

///|
pub extern "js" fn MLGraphBuilder::sqrt(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.sqrt(input)

///|
pub extern "js" fn MLGraphBuilder::sqrt_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, input, options) => self.sqrt(input, options)

///|
pub extern "js" fn MLGraphBuilder::tan(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.tan(input)

///|
pub extern "js" fn MLGraphBuilder::tan_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, input, options) => self.tan(input, options)

///|
pub extern "js" fn MLGraphBuilder::dequantize_linear(
  self : MLGraphBuilder,
  input : MLOperand,
  scale : MLOperand,
  zero_point : MLOperand,
) -> MLOperand =
  #| (self, input, scale, zero_point) => self.dequantizeLinear(input, scale, zero_point)

///|
pub extern "js" fn MLGraphBuilder::dequantize_linear_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  scale : MLOperand,
  zero_point : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, input, scale, zero_point, options) => self.dequantizeLinear(input, scale, zero_point, options)

///|
pub extern "js" fn MLGraphBuilder::quantize_linear(
  self : MLGraphBuilder,
  input : MLOperand,
  scale : MLOperand,
  zero_point : MLOperand,
) -> MLOperand =
  #| (self, input, scale, zero_point) => self.quantizeLinear(input, scale, zero_point)

///|
pub extern "js" fn MLGraphBuilder::quantize_linear_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  scale : MLOperand,
  zero_point : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, input, scale, zero_point, options) => self.quantizeLinear(input, scale, zero_point, options)

///|
pub extern "js" fn MLGraphBuilder::elu(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.elu(input)

///|
pub extern "js" fn MLGraphBuilder::elu_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLEluOptions,
) -> MLOperand =
  #| (self, input, options) => self.elu(input, options)

///|
pub extern "js" fn MLGraphBuilder::expand(
  self : MLGraphBuilder,
  input : MLOperand,
  new_shape : Array[Int],
) -> MLOperand =
  #| (self, input, new_shape) => self.expand(input, new_shape)

///|
pub extern "js" fn MLGraphBuilder::expand_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  new_shape : Array[Int],
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, input, new_shape, options) => self.expand(input, new_shape, options)

///|
pub extern "js" fn MLGraphBuilder::gather(
  self : MLGraphBuilder,
  input : MLOperand,
  indices : MLOperand,
) -> MLOperand =
  #| (self, input, indices) => self.gather(input, indices)

///|
pub extern "js" fn MLGraphBuilder::gather_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  indices : MLOperand,
  options : MLGatherOptions,
) -> MLOperand =
  #| (self, input, indices, options) => self.gather(input, indices, options)

///|
pub extern "js" fn MLGraphBuilder::gather_elements(
  self : MLGraphBuilder,
  input : MLOperand,
  indices : MLOperand,
) -> MLOperand =
  #| (self, input, indices) => self.gatherElements(input, indices)

///|
pub extern "js" fn MLGraphBuilder::gather_elements_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  indices : MLOperand,
  options : MLGatherOptions,
) -> MLOperand =
  #| (self, input, indices, options) => self.gatherElements(input, indices, options)

///|
pub extern "js" fn MLGraphBuilder::gather_n_d(
  self : MLGraphBuilder,
  input : MLOperand,
  indices : MLOperand,
) -> MLOperand =
  #| (self, input, indices) => self.gatherND(input, indices)

///|
pub extern "js" fn MLGraphBuilder::gather_n_d_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  indices : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, input, indices, options) => self.gatherND(input, indices, options)

///|
pub extern "js" fn MLGraphBuilder::gelu(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.gelu(input)

///|
pub extern "js" fn MLGraphBuilder::gelu_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, input, options) => self.gelu(input, options)

///|
pub extern "js" fn MLGraphBuilder::gemm(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.gemm(a, b)

///|
pub extern "js" fn MLGraphBuilder::gemm_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLGemmOptions,
) -> MLOperand =
  #| (self, a, b, options) => self.gemm(a, b, options)

///|
pub extern "js" fn MLGraphBuilder::gru(
  self : MLGraphBuilder,
  input : MLOperand,
  weight : MLOperand,
  recurrent_weight : MLOperand,
  steps : Int,
  hidden_size : Int,
) -> Array[MLOperand] =
  #| (self, input, weight, recurrent_weight, steps, hidden_size) => self.gru(input, weight, recurrent_weight, steps, hidden_size)

///|
pub extern "js" fn MLGraphBuilder::gru_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  weight : MLOperand,
  recurrent_weight : MLOperand,
  steps : Int,
  hidden_size : Int,
  options : MLGruOptions,
) -> Array[MLOperand] =
  #| (self, input, weight, recurrent_weight, steps, hidden_size, options) => self.gru(input, weight, recurrent_weight, steps, hidden_size, options)

///|
pub extern "js" fn MLGraphBuilder::gru_cell(
  self : MLGraphBuilder,
  input : MLOperand,
  weight : MLOperand,
  recurrent_weight : MLOperand,
  hidden_state : MLOperand,
  hidden_size : Int,
) -> MLOperand =
  #| (self, input, weight, recurrent_weight, hidden_state, hidden_size) => self.gruCell(input, weight, recurrent_weight, hidden_state, hidden_size)

///|
pub extern "js" fn MLGraphBuilder::gru_cell_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  weight : MLOperand,
  recurrent_weight : MLOperand,
  hidden_state : MLOperand,
  hidden_size : Int,
  options : MLGruCellOptions,
) -> MLOperand =
  #| (self, input, weight, recurrent_weight, hidden_state, hidden_size, options) => self.gruCell(input, weight, recurrent_weight, hidden_state, hidden_size, options)

///|
pub extern "js" fn MLGraphBuilder::hard_sigmoid(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.hardSigmoid(input)

///|
pub extern "js" fn MLGraphBuilder::hard_sigmoid_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLHardSigmoidOptions,
) -> MLOperand =
  #| (self, input, options) => self.hardSigmoid(input, options)

///|
pub extern "js" fn MLGraphBuilder::hard_swish(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.hardSwish(input)

///|
pub extern "js" fn MLGraphBuilder::hard_swish_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, input, options) => self.hardSwish(input, options)

///|
pub extern "js" fn MLGraphBuilder::instance_normalization(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.instanceNormalization(input)

///|
pub extern "js" fn MLGraphBuilder::instance_normalization_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLInstanceNormalizationOptions,
) -> MLOperand =
  #| (self, input, options) => self.instanceNormalization(input, options)

///|
pub extern "js" fn MLGraphBuilder::layer_normalization(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.layerNormalization(input)

///|
pub extern "js" fn MLGraphBuilder::layer_normalization_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLLayerNormalizationOptions,
) -> MLOperand =
  #| (self, input, options) => self.layerNormalization(input, options)

///|
pub extern "js" fn MLGraphBuilder::leaky_relu(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.leakyRelu(input)

///|
pub extern "js" fn MLGraphBuilder::leaky_relu_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLLeakyReluOptions,
) -> MLOperand =
  #| (self, input, options) => self.leakyRelu(input, options)

///|
pub extern "js" fn MLGraphBuilder::linear(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.linear(input)

///|
pub extern "js" fn MLGraphBuilder::linear_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLLinearOptions,
) -> MLOperand =
  #| (self, input, options) => self.linear(input, options)

///|
pub extern "js" fn MLGraphBuilder::lstm(
  self : MLGraphBuilder,
  input : MLOperand,
  weight : MLOperand,
  recurrent_weight : MLOperand,
  steps : Int,
  hidden_size : Int,
) -> Array[MLOperand] =
  #| (self, input, weight, recurrent_weight, steps, hidden_size) => self.lstm(input, weight, recurrent_weight, steps, hidden_size)

///|
pub extern "js" fn MLGraphBuilder::lstm_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  weight : MLOperand,
  recurrent_weight : MLOperand,
  steps : Int,
  hidden_size : Int,
  options : MLLstmOptions,
) -> Array[MLOperand] =
  #| (self, input, weight, recurrent_weight, steps, hidden_size, options) => self.lstm(input, weight, recurrent_weight, steps, hidden_size, options)

///|
pub extern "js" fn MLGraphBuilder::lstm_cell(
  self : MLGraphBuilder,
  input : MLOperand,
  weight : MLOperand,
  recurrent_weight : MLOperand,
  hidden_state : MLOperand,
  cell_state : MLOperand,
  hidden_size : Int,
) -> Array[MLOperand] =
  #| (self, input, weight, recurrent_weight, hidden_state, cell_state, hidden_size) => self.lstmCell(input, weight, recurrent_weight, hidden_state, cell_state, hidden_size)

///|
pub extern "js" fn MLGraphBuilder::lstm_cell_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  weight : MLOperand,
  recurrent_weight : MLOperand,
  hidden_state : MLOperand,
  cell_state : MLOperand,
  hidden_size : Int,
  options : MLLstmCellOptions,
) -> Array[MLOperand] =
  #| (self, input, weight, recurrent_weight, hidden_state, cell_state, hidden_size, options) => self.lstmCell(input, weight, recurrent_weight, hidden_state, cell_state, hidden_size, options)

///|
pub extern "js" fn MLGraphBuilder::matmul(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.matmul(a, b)

///|
pub extern "js" fn MLGraphBuilder::matmul_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, a, b, options) => self.matmul(a, b, options)

///|
pub extern "js" fn MLGraphBuilder::pad(
  self : MLGraphBuilder,
  input : MLOperand,
  beginning_padding : Array[Int],
  ending_padding : Array[Int],
) -> MLOperand =
  #| (self, input, beginning_padding, ending_padding) => self.pad(input, beginning_padding, ending_padding)

///|
pub extern "js" fn MLGraphBuilder::pad_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  beginning_padding : Array[Int],
  ending_padding : Array[Int],
  options : MLPadOptions,
) -> MLOperand =
  #| (self, input, beginning_padding, ending_padding, options) => self.pad(input, beginning_padding, ending_padding, options)

///|
pub extern "js" fn MLGraphBuilder::average_pool2d(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.averagePool2d(input)

///|
pub extern "js" fn MLGraphBuilder::average_pool2d_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLPool2dOptions,
) -> MLOperand =
  #| (self, input, options) => self.averagePool2d(input, options)

///|
pub extern "js" fn MLGraphBuilder::l2_pool2d(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.l2Pool2d(input)

///|
pub extern "js" fn MLGraphBuilder::l2_pool2d_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLPool2dOptions,
) -> MLOperand =
  #| (self, input, options) => self.l2Pool2d(input, options)

///|
pub extern "js" fn MLGraphBuilder::max_pool2d(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.maxPool2d(input)

///|
pub extern "js" fn MLGraphBuilder::max_pool2d_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLPool2dOptions,
) -> MLOperand =
  #| (self, input, options) => self.maxPool2d(input, options)

///|
pub extern "js" fn MLGraphBuilder::prelu(
  self : MLGraphBuilder,
  input : MLOperand,
  slope : MLOperand,
) -> MLOperand =
  #| (self, input, slope) => self.prelu(input, slope)

///|
pub extern "js" fn MLGraphBuilder::prelu_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  slope : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, input, slope, options) => self.prelu(input, slope, options)

///|
pub extern "js" fn MLGraphBuilder::reduce_l1(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.reduceL1(input)

///|
pub extern "js" fn MLGraphBuilder::reduce_l1_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLReduceOptions,
) -> MLOperand =
  #| (self, input, options) => self.reduceL1(input, options)

///|
pub extern "js" fn MLGraphBuilder::reduce_l2(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.reduceL2(input)

///|
pub extern "js" fn MLGraphBuilder::reduce_l2_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLReduceOptions,
) -> MLOperand =
  #| (self, input, options) => self.reduceL2(input, options)

///|
pub extern "js" fn MLGraphBuilder::reduce_log_sum(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.reduceLogSum(input)

///|
pub extern "js" fn MLGraphBuilder::reduce_log_sum_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLReduceOptions,
) -> MLOperand =
  #| (self, input, options) => self.reduceLogSum(input, options)

///|
pub extern "js" fn MLGraphBuilder::reduce_log_sum_exp(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.reduceLogSumExp(input)

///|
pub extern "js" fn MLGraphBuilder::reduce_log_sum_exp_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLReduceOptions,
) -> MLOperand =
  #| (self, input, options) => self.reduceLogSumExp(input, options)

///|
pub extern "js" fn MLGraphBuilder::reduce_max(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.reduceMax(input)

///|
pub extern "js" fn MLGraphBuilder::reduce_max_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLReduceOptions,
) -> MLOperand =
  #| (self, input, options) => self.reduceMax(input, options)

///|
pub extern "js" fn MLGraphBuilder::reduce_mean(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.reduceMean(input)

///|
pub extern "js" fn MLGraphBuilder::reduce_mean_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLReduceOptions,
) -> MLOperand =
  #| (self, input, options) => self.reduceMean(input, options)

///|
pub extern "js" fn MLGraphBuilder::reduce_min(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.reduceMin(input)

///|
pub extern "js" fn MLGraphBuilder::reduce_min_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLReduceOptions,
) -> MLOperand =
  #| (self, input, options) => self.reduceMin(input, options)

///|
pub extern "js" fn MLGraphBuilder::reduce_product(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.reduceProduct(input)

///|
pub extern "js" fn MLGraphBuilder::reduce_product_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLReduceOptions,
) -> MLOperand =
  #| (self, input, options) => self.reduceProduct(input, options)

///|
pub extern "js" fn MLGraphBuilder::reduce_sum(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.reduceSum(input)

///|
pub extern "js" fn MLGraphBuilder::reduce_sum_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLReduceOptions,
) -> MLOperand =
  #| (self, input, options) => self.reduceSum(input, options)

///|
pub extern "js" fn MLGraphBuilder::reduce_sum_square(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.reduceSumSquare(input)

///|
pub extern "js" fn MLGraphBuilder::reduce_sum_square_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLReduceOptions,
) -> MLOperand =
  #| (self, input, options) => self.reduceSumSquare(input, options)

///|
pub extern "js" fn MLGraphBuilder::relu(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.relu(input)

///|
pub extern "js" fn MLGraphBuilder::relu_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, input, options) => self.relu(input, options)

///|
pub extern "js" fn MLGraphBuilder::resample2d(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.resample2d(input)

///|
pub extern "js" fn MLGraphBuilder::resample2d_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLResample2dOptions,
) -> MLOperand =
  #| (self, input, options) => self.resample2d(input, options)

///|
pub extern "js" fn MLGraphBuilder::reshape(
  self : MLGraphBuilder,
  input : MLOperand,
  new_shape : Array[Int],
) -> MLOperand =
  #| (self, input, new_shape) => self.reshape(input, new_shape)

///|
pub extern "js" fn MLGraphBuilder::reshape_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  new_shape : Array[Int],
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, input, new_shape, options) => self.reshape(input, new_shape, options)

///|
pub extern "js" fn MLGraphBuilder::reverse(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.reverse(input)

///|
pub extern "js" fn MLGraphBuilder::reverse_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLReverseOptions,
) -> MLOperand =
  #| (self, input, options) => self.reverse(input, options)

///|
pub extern "js" fn MLGraphBuilder::scatter_elements(
  self : MLGraphBuilder,
  input : MLOperand,
  indices : MLOperand,
  updates : MLOperand,
) -> MLOperand =
  #| (self, input, indices, updates) => self.scatterElements(input, indices, updates)

///|
pub extern "js" fn MLGraphBuilder::scatter_elements_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  indices : MLOperand,
  updates : MLOperand,
  options : MLScatterOptions,
) -> MLOperand =
  #| (self, input, indices, updates, options) => self.scatterElements(input, indices, updates, options)

///|
pub extern "js" fn MLGraphBuilder::scatter_n_d(
  self : MLGraphBuilder,
  input : MLOperand,
  indices : MLOperand,
  updates : MLOperand,
) -> MLOperand =
  #| (self, input, indices, updates) => self.scatterND(input, indices, updates)

///|
pub extern "js" fn MLGraphBuilder::scatter_n_d_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  indices : MLOperand,
  updates : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, input, indices, updates, options) => self.scatterND(input, indices, updates, options)

///|
pub extern "js" fn MLGraphBuilder::sigmoid(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.sigmoid(input)

///|
pub extern "js" fn MLGraphBuilder::sigmoid_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, input, options) => self.sigmoid(input, options)

///|
pub extern "js" fn MLGraphBuilder::slice(
  self : MLGraphBuilder,
  input : MLOperand,
  starts : Array[Int],
  sizes : Array[Int],
) -> MLOperand =
  #| (self, input, starts, sizes) => self.slice(input, starts, sizes)

///|
pub extern "js" fn MLGraphBuilder::slice_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  starts : Array[Int],
  sizes : Array[Int],
  options : MLSliceOptions,
) -> MLOperand =
  #| (self, input, starts, sizes, options) => self.slice(input, starts, sizes, options)

///|
pub extern "js" fn MLGraphBuilder::softmax(
  self : MLGraphBuilder,
  input : MLOperand,
  axis : Int,
) -> MLOperand =
  #| (self, input, axis) => self.softmax(input, axis)

///|
pub extern "js" fn MLGraphBuilder::softmax_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  axis : Int,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, input, axis, options) => self.softmax(input, axis, options)

///|
pub extern "js" fn MLGraphBuilder::softplus(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.softplus(input)

///|
pub extern "js" fn MLGraphBuilder::softplus_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, input, options) => self.softplus(input, options)

///|
pub extern "js" fn MLGraphBuilder::softsign(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.softsign(input)

///|
pub extern "js" fn MLGraphBuilder::softsign_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, input, options) => self.softsign(input, options)

///|
pub extern "js" fn MLGraphBuilder::split(
  self : MLGraphBuilder,
  input : MLOperand,
  splits : IntOrArrayOfInt,
) -> Array[MLOperand] =
  #| (self, input, splits) => self.split(input, splits)

///|
pub extern "js" fn MLGraphBuilder::split_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  splits : IntOrArrayOfInt,
  options : MLSplitOptions,
) -> Array[MLOperand] =
  #| (self, input, splits, options) => self.split(input, splits, options)

///|
pub extern "js" fn MLGraphBuilder::tanh(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.tanh(input)

///|
pub extern "js" fn MLGraphBuilder::tanh_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, input, options) => self.tanh(input, options)

///|
pub extern "js" fn MLGraphBuilder::tile(
  self : MLGraphBuilder,
  input : MLOperand,
  repetitions : Array[Int],
) -> MLOperand =
  #| (self, input, repetitions) => self.tile(input, repetitions)

///|
pub extern "js" fn MLGraphBuilder::tile_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  repetitions : Array[Int],
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, input, repetitions, options) => self.tile(input, repetitions, options)

///|
pub extern "js" fn MLGraphBuilder::transpose(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.transpose(input)

///|
pub extern "js" fn MLGraphBuilder::transpose_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLTransposeOptions,
) -> MLOperand =
  #| (self, input, options) => self.transpose(input, options)

///|
pub extern "js" fn MLGraphBuilder::triangular(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.triangular(input)

///|
pub extern "js" fn MLGraphBuilder::triangular_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLTriangularOptions,
) -> MLOperand =
  #| (self, input, options) => self.triangular(input, options)

///|
pub extern "js" fn MLGraphBuilder::where_(
  self : MLGraphBuilder,
  condition : MLOperand,
  true_value : MLOperand,
  false_value : MLOperand,
) -> MLOperand =
  #| (self, condition, true_value, false_value) => self.where(condition, true_value, false_value)

///|
pub extern "js" fn MLGraphBuilder::where__with_options(
  self : MLGraphBuilder,
  condition : MLOperand,
  true_value : MLOperand,
  false_value : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand =
  #| (self, condition, true_value, false_value, options) => self.where(condition, true_value, false_value, options)
