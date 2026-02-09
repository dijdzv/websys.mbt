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
  #| (self) => (typeof self === 'number') ? self : undefined

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
pub(all) struct MLContextOptions {
  powerPreference : MLPowerPreference?
  accelerated : Bool?
}

///|
/// Create a new MLContextOptions with default values
pub fn MLContextOptions::default() -> MLContextOptions {
  MLContextOptions::{ powerPreference: None, accelerated: None }
}

///|
extern "js" fn MLContextOptions::to_js_ffi(self : MLContextOptions) -> JsValue =
  #| (self) => ({
  #|   powerPreference: ((() => { const v = self.powerPreference; if (v === undefined) return undefined; return ['default', 'high-performance', 'low-power'][v]; })()),
  #|   accelerated: (self.accelerated === -1 ? undefined : self.accelerated)
  #| })

///|
/// Convert to JsValue
pub fn MLContextOptions::to_js(self : MLContextOptions) -> JsValue {
  MLContextOptions::to_js_ffi(self)
}

///|
/// MLContextLostInfo dictionary
pub(all) struct MLContextLostInfo {
  message : String?
}

///|
/// Create a new MLContextLostInfo with default values
pub fn MLContextLostInfo::default() -> MLContextLostInfo {
  MLContextLostInfo::{ message: None }
}

///|
extern "js" fn MLContextLostInfo::to_js_ffi(
  self : MLContextLostInfo,
) -> JsValue =
  #| (self) => ({
  #|   message: self.message
  #| })

///|
/// Convert to JsValue
pub fn MLContextLostInfo::to_js(self : MLContextLostInfo) -> JsValue {
  MLContextLostInfo::to_js_ffi(self)
}

///|
/// MLOpSupportLimits dictionary
pub(all) struct MLOpSupportLimits {
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
extern "js" fn MLOpSupportLimits::to_js_ffi(
  self : MLOpSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   preferredInputLayout: ((() => { const v = self.preferredInputLayout; if (v === undefined) return undefined; return ['nchw', 'nhwc'][v]; })()),
  #|   maxTensorByteLength: self.maxTensorByteLength,
  #|   input: ((() => { const v = self.input; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   constant: ((() => { const v = self.constant; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   output: ((() => { const v = self.output; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   argMin: ((() => { const v = self.argMin; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   argMax: ((() => { const v = self.argMax; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   batchNormalization: ((() => { const v = self.batchNormalization; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   cast: ((() => { const v = self.cast; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   clamp: ((() => { const v = self.clamp; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   concat: ((() => { const v = self.concat; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   conv2d: ((() => { const v = self.conv2d; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   convTranspose2d: ((() => { const v = self.convTranspose2d; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   cumulativeSum: ((() => { const v = self.cumulativeSum; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   add: ((() => { const v = self.add; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   sub: ((() => { const v = self.sub; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   mul: ((() => { const v = self.mul; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   div: ((() => { const v = self.div; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   max: ((() => { const v = self.max; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   min: ((() => { const v = self.min; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   pow: ((() => { const v = self.pow; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   equal: ((() => { const v = self.equal; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   notEqual: ((() => { const v = self.notEqual; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   greater: ((() => { const v = self.greater; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   greaterOrEqual: ((() => { const v = self.greaterOrEqual; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   lesser: ((() => { const v = self.lesser; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   lesserOrEqual: ((() => { const v = self.lesserOrEqual; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   logicalNot: ((() => { const v = self.logicalNot; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   logicalAnd: ((() => { const v = self.logicalAnd; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   logicalOr: ((() => { const v = self.logicalOr; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   logicalXor: ((() => { const v = self.logicalXor; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   isNaN: ((() => { const v = self.isNaN; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   isInfinite: ((() => { const v = self.isInfinite; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   abs: ((() => { const v = self.abs; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   ceil: ((() => { const v = self.ceil; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   cos: ((() => { const v = self.cos; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   erf: ((() => { const v = self.erf; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   exp: ((() => { const v = self.exp; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   floor: ((() => { const v = self.floor; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   identity: ((() => { const v = self.identity; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   log: ((() => { const v = self.log; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   neg: ((() => { const v = self.neg; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   reciprocal: ((() => { const v = self.reciprocal; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   roundEven: ((() => { const v = self.roundEven; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   sin: ((() => { const v = self.sin; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   sign: ((() => { const v = self.sign; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   sqrt: ((() => { const v = self.sqrt; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   tan: ((() => { const v = self.tan; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   dequantizeLinear: ((() => { const v = self.dequantizeLinear; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   quantizeLinear: ((() => { const v = self.quantizeLinear; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   elu: ((() => { const v = self.elu; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   expand: ((() => { const v = self.expand; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   gather: ((() => { const v = self.gather; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   gatherElements: ((() => { const v = self.gatherElements; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   gatherND: ((() => { const v = self.gatherND; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   gelu: ((() => { const v = self.gelu; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   gemm: ((() => { const v = self.gemm; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   gru: ((() => { const v = self.gru; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   gruCell: ((() => { const v = self.gruCell; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   hardSigmoid: ((() => { const v = self.hardSigmoid; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   hardSwish: ((() => { const v = self.hardSwish; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   instanceNormalization: ((() => { const v = self.instanceNormalization; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   layerNormalization: ((() => { const v = self.layerNormalization; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   leakyRelu: ((() => { const v = self.leakyRelu; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   linear: ((() => { const v = self.linear; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   lstm: ((() => { const v = self.lstm; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   lstmCell: ((() => { const v = self.lstmCell; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   matmul: ((() => { const v = self.matmul; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   pad: ((() => { const v = self.pad; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   averagePool2d: ((() => { const v = self.averagePool2d; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   l2Pool2d: ((() => { const v = self.l2Pool2d; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   maxPool2d: ((() => { const v = self.maxPool2d; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   prelu: ((() => { const v = self.prelu; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   reduceL1: ((() => { const v = self.reduceL1; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   reduceL2: ((() => { const v = self.reduceL2; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   reduceLogSum: ((() => { const v = self.reduceLogSum; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   reduceLogSumExp: ((() => { const v = self.reduceLogSumExp; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   reduceMax: ((() => { const v = self.reduceMax; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   reduceMean: ((() => { const v = self.reduceMean; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   reduceMin: ((() => { const v = self.reduceMin; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   reduceProduct: ((() => { const v = self.reduceProduct; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   reduceSum: ((() => { const v = self.reduceSum; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   reduceSumSquare: ((() => { const v = self.reduceSumSquare; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   relu: ((() => { const v = self.relu; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   resample2d: ((() => { const v = self.resample2d; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   reshape: ((() => { const v = self.reshape; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   reverse: ((() => { const v = self.reverse; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   scatterElements: ((() => { const v = self.scatterElements; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   scatterND: ((() => { const v = self.scatterND; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   sigmoid: ((() => { const v = self.sigmoid; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   slice: ((() => { const v = self.slice; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   softmax: ((() => { const v = self.softmax; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   softplus: ((() => { const v = self.softplus; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   softsign: ((() => { const v = self.softsign; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   split: ((() => { const v = self.split; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   tanh: ((() => { const v = self.tanh; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   tile: ((() => { const v = self.tile; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   transpose: ((() => { const v = self.transpose; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   triangular: ((() => { const v = self.triangular; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   where: ((() => { const v = self.where_; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MLOpSupportLimits::to_js(self : MLOpSupportLimits) -> JsValue {
  MLOpSupportLimits::to_js_ffi(self)
}

///|
/// MLRankRange dictionary
pub(all) struct MLRankRange {
  min : Int?
  max : Int?
}

///|
/// Create a new MLRankRange with default values
pub fn MLRankRange::default() -> MLRankRange {
  MLRankRange::{ min: None, max: None }
}

///|
extern "js" fn MLRankRange::to_js_ffi(self : MLRankRange) -> JsValue =
  #| (self) => ({
  #|   min: self.min,
  #|   max: self.max
  #| })

///|
/// Convert to JsValue
pub fn MLRankRange::to_js(self : MLRankRange) -> JsValue {
  MLRankRange::to_js_ffi(self)
}

///|
/// MLTensorLimits dictionary
pub(all) struct MLTensorLimits {
  dataTypes : MLDataTypeList?
  rankRange : MLRankRange?
}

///|
/// Create a new MLTensorLimits with default values
pub fn MLTensorLimits::default() -> MLTensorLimits {
  MLTensorLimits::{ dataTypes: None, rankRange: None }
}

///|
extern "js" fn MLTensorLimits::to_js_ffi(self : MLTensorLimits) -> JsValue =
  #| (self) => ({
  #|   dataTypes: ((() => { const v = self.dataTypes; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   rankRange: ((() => { const v = self.rankRange; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MLTensorLimits::to_js(self : MLTensorLimits) -> JsValue {
  MLTensorLimits::to_js_ffi(self)
}

///|
/// MLBinarySupportLimits dictionary
pub(all) struct MLBinarySupportLimits {
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
extern "js" fn MLBinarySupportLimits::to_js_ffi(
  self : MLBinarySupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   a: ((() => { const v = self.a; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   b: ((() => { const v = self.b; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   output: ((() => { const v = self.output; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MLBinarySupportLimits::to_js(self : MLBinarySupportLimits) -> JsValue {
  MLBinarySupportLimits::to_js_ffi(self)
}

///|
/// MLSingleInputSupportLimits dictionary
pub(all) struct MLSingleInputSupportLimits {
  input : MLTensorLimits?
  output : MLTensorLimits?
}

///|
/// Create a new MLSingleInputSupportLimits with default values
pub fn MLSingleInputSupportLimits::default() -> MLSingleInputSupportLimits {
  MLSingleInputSupportLimits::{ input: None, output: None }
}

///|
extern "js" fn MLSingleInputSupportLimits::to_js_ffi(
  self : MLSingleInputSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   input: ((() => { const v = self.input; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   output: ((() => { const v = self.output; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MLSingleInputSupportLimits::to_js(
  self : MLSingleInputSupportLimits,
) -> JsValue {
  MLSingleInputSupportLimits::to_js_ffi(self)
}

///|
/// MLOperandDescriptor dictionary
pub(all) struct MLOperandDescriptor {
  dataType : MLOperandDataType
  shape : Array[Int]
}

///|
/// Create a new MLOperandDescriptor
pub fn MLOperandDescriptor::new(
  dataType~ : MLOperandDataType,
) -> MLOperandDescriptor {
  MLOperandDescriptor::{ dataType, shape: [] }
}

///|
extern "js" fn MLOperandDescriptor::to_js_ffi(
  self : MLOperandDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   dataType: ['float32', 'float16', 'int32', 'uint32', 'int64', 'uint64', 'int8', 'uint8'][self.dataType],
  #|   shape: self.shape
  #| })

///|
/// Convert to JsValue
pub fn MLOperandDescriptor::to_js(self : MLOperandDescriptor) -> JsValue {
  MLOperandDescriptor::to_js_ffi(self)
}

///|
/// MLOperatorOptions dictionary
pub(all) struct MLOperatorOptions {
  label : String?
}

///|
/// Create a new MLOperatorOptions with default values
pub fn MLOperatorOptions::default() -> MLOperatorOptions {
  MLOperatorOptions::{ label: None }
}

///|
extern "js" fn MLOperatorOptions::to_js_ffi(
  self : MLOperatorOptions,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label
  #| })

///|
/// Convert to JsValue
pub fn MLOperatorOptions::to_js(self : MLOperatorOptions) -> JsValue {
  MLOperatorOptions::to_js_ffi(self)
}

///|
/// MLTensorDescriptor dictionary
pub(all) struct MLTensorDescriptor {
  dataType : MLOperandDataType
  shape : Array[Int]
  readable : Bool?
  writable : Bool?
}

///|
/// Create a new MLTensorDescriptor
pub fn MLTensorDescriptor::new(
  dataType~ : MLOperandDataType,
) -> MLTensorDescriptor {
  MLTensorDescriptor::{ dataType, shape: [], readable: None, writable: None }
}

///|
extern "js" fn MLTensorDescriptor::to_js_ffi(
  self : MLTensorDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   dataType: ['float32', 'float16', 'int32', 'uint32', 'int64', 'uint64', 'int8', 'uint8'][self.dataType],
  #|   shape: self.shape,
  #|   readable: (self.readable === -1 ? undefined : self.readable),
  #|   writable: (self.writable === -1 ? undefined : self.writable)
  #| })

///|
/// Convert to JsValue
pub fn MLTensorDescriptor::to_js(self : MLTensorDescriptor) -> JsValue {
  MLTensorDescriptor::to_js_ffi(self)
}

///|
/// MLArgMinMaxOptions dictionary
pub(all) struct MLArgMinMaxOptions {
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
extern "js" fn MLArgMinMaxOptions::to_js_ffi(
  self : MLArgMinMaxOptions,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   keepDimensions: (self.keepDimensions === -1 ? undefined : self.keepDimensions),
  #|   outputDataType: ((() => { const v = self.outputDataType; if (v === undefined) return undefined; return ['float32', 'float16', 'int32', 'uint32', 'int64', 'uint64', 'int8', 'uint8'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn MLArgMinMaxOptions::to_js(self : MLArgMinMaxOptions) -> JsValue {
  MLArgMinMaxOptions::to_js_ffi(self)
}

///|
/// MLBatchNormalizationOptions dictionary
pub(all) struct MLBatchNormalizationOptions {
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
extern "js" fn MLBatchNormalizationOptions::to_js_ffi(
  self : MLBatchNormalizationOptions,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   scale: ((() => { const v = self.scale; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   bias: ((() => { const v = self.bias; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   axis: self.axis,
  #|   epsilon: self.epsilon
  #| })

///|
/// Convert to JsValue
pub fn MLBatchNormalizationOptions::to_js(
  self : MLBatchNormalizationOptions,
) -> JsValue {
  MLBatchNormalizationOptions::to_js_ffi(self)
}

///|
/// MLBatchNormalizationSupportLimits dictionary
pub(all) struct MLBatchNormalizationSupportLimits {
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
extern "js" fn MLBatchNormalizationSupportLimits::to_js_ffi(
  self : MLBatchNormalizationSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   input: ((() => { const v = self.input; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   mean: ((() => { const v = self.mean; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   variance: ((() => { const v = self.variance; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   scale: ((() => { const v = self.scale; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   bias: ((() => { const v = self.bias; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   output: ((() => { const v = self.output; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MLBatchNormalizationSupportLimits::to_js(
  self : MLBatchNormalizationSupportLimits,
) -> JsValue {
  MLBatchNormalizationSupportLimits::to_js_ffi(self)
}

///|
/// MLClampOptions dictionary
pub(all) struct MLClampOptions {
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
extern "js" fn MLClampOptions::to_js_ffi(self : MLClampOptions) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   minValue: ((() => { const v = self.minValue; if (v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   maxValue: ((() => { const v = self.maxValue; if (v.$tag !== 1) return undefined; return v._0.to_js_value(); })())
  #| })

///|
/// Convert to JsValue
pub fn MLClampOptions::to_js(self : MLClampOptions) -> JsValue {
  MLClampOptions::to_js_ffi(self)
}

///|
/// MLConcatSupportLimits dictionary
pub(all) struct MLConcatSupportLimits {
  inputs : MLTensorLimits?
  output : MLTensorLimits?
}

///|
/// Create a new MLConcatSupportLimits with default values
pub fn MLConcatSupportLimits::default() -> MLConcatSupportLimits {
  MLConcatSupportLimits::{ inputs: None, output: None }
}

///|
extern "js" fn MLConcatSupportLimits::to_js_ffi(
  self : MLConcatSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   inputs: ((() => { const v = self.inputs; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   output: ((() => { const v = self.output; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MLConcatSupportLimits::to_js(self : MLConcatSupportLimits) -> JsValue {
  MLConcatSupportLimits::to_js_ffi(self)
}

///|
/// MLConv2dOptions dictionary
pub(all) struct MLConv2dOptions {
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
extern "js" fn MLConv2dOptions::to_js_ffi(self : MLConv2dOptions) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   padding: ((() => { const v = self.padding; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   strides: ((() => { const v = self.strides; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   dilations: ((() => { const v = self.dilations; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   groups: self.groups,
  #|   inputLayout: ((() => { const v = self.inputLayout; if (v === undefined) return undefined; return ['nchw', 'nhwc'][v]; })()),
  #|   filterLayout: ((() => { const v = self.filterLayout; if (v === undefined) return undefined; return ['oihw', 'hwio', 'ohwi', 'ihwo'][v]; })()),
  #|   bias: ((() => { const v = self.bias; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MLConv2dOptions::to_js(self : MLConv2dOptions) -> JsValue {
  MLConv2dOptions::to_js_ffi(self)
}

///|
/// MLConv2dSupportLimits dictionary
pub(all) struct MLConv2dSupportLimits {
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
extern "js" fn MLConv2dSupportLimits::to_js_ffi(
  self : MLConv2dSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   input: ((() => { const v = self.input; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   filter: ((() => { const v = self.filter; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   bias: ((() => { const v = self.bias; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   output: ((() => { const v = self.output; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MLConv2dSupportLimits::to_js(self : MLConv2dSupportLimits) -> JsValue {
  MLConv2dSupportLimits::to_js_ffi(self)
}

///|
/// MLConvTranspose2dOptions dictionary
pub(all) struct MLConvTranspose2dOptions {
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
extern "js" fn MLConvTranspose2dOptions::to_js_ffi(
  self : MLConvTranspose2dOptions,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   padding: ((() => { const v = self.padding; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   strides: ((() => { const v = self.strides; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   dilations: ((() => { const v = self.dilations; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   outputPadding: ((() => { const v = self.outputPadding; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   outputSizes: ((() => { const v = self.outputSizes; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   groups: self.groups,
  #|   inputLayout: ((() => { const v = self.inputLayout; if (v === undefined) return undefined; return ['nchw', 'nhwc'][v]; })()),
  #|   filterLayout: ((() => { const v = self.filterLayout; if (v === undefined) return undefined; return ['iohw', 'hwoi', 'ohwi'][v]; })()),
  #|   bias: ((() => { const v = self.bias; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MLConvTranspose2dOptions::to_js(
  self : MLConvTranspose2dOptions,
) -> JsValue {
  MLConvTranspose2dOptions::to_js_ffi(self)
}

///|
/// MLCumulativeSumOptions dictionary
pub(all) struct MLCumulativeSumOptions {
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
extern "js" fn MLCumulativeSumOptions::to_js_ffi(
  self : MLCumulativeSumOptions,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   exclusive: (self.exclusive === -1 ? undefined : self.exclusive),
  #|   reversed: (self.reversed === -1 ? undefined : self.reversed)
  #| })

///|
/// Convert to JsValue
pub fn MLCumulativeSumOptions::to_js(self : MLCumulativeSumOptions) -> JsValue {
  MLCumulativeSumOptions::to_js_ffi(self)
}

///|
/// MLLogicalNotSupportLimits dictionary
pub(all) struct MLLogicalNotSupportLimits {
  a : MLTensorLimits?
  output : MLTensorLimits?
}

///|
/// Create a new MLLogicalNotSupportLimits with default values
pub fn MLLogicalNotSupportLimits::default() -> MLLogicalNotSupportLimits {
  MLLogicalNotSupportLimits::{ a: None, output: None }
}

///|
extern "js" fn MLLogicalNotSupportLimits::to_js_ffi(
  self : MLLogicalNotSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   a: ((() => { const v = self.a; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   output: ((() => { const v = self.output; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MLLogicalNotSupportLimits::to_js(
  self : MLLogicalNotSupportLimits,
) -> JsValue {
  MLLogicalNotSupportLimits::to_js_ffi(self)
}

///|
/// MLQuantizeDequantizeLinearSupportLimits dictionary
pub(all) struct MLQuantizeDequantizeLinearSupportLimits {
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
extern "js" fn MLQuantizeDequantizeLinearSupportLimits::to_js_ffi(
  self : MLQuantizeDequantizeLinearSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   input: ((() => { const v = self.input; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   scale: ((() => { const v = self.scale; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   zeroPoint: ((() => { const v = self.zeroPoint; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   output: ((() => { const v = self.output; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MLQuantizeDequantizeLinearSupportLimits::to_js(
  self : MLQuantizeDequantizeLinearSupportLimits,
) -> JsValue {
  MLQuantizeDequantizeLinearSupportLimits::to_js_ffi(self)
}

///|
/// MLEluOptions dictionary
pub(all) struct MLEluOptions {
  label : String?
  alpha : Double?
}

///|
/// Create a new MLEluOptions with default values
pub fn MLEluOptions::default() -> MLEluOptions {
  MLEluOptions::{ label: None, alpha: None }
}

///|
extern "js" fn MLEluOptions::to_js_ffi(self : MLEluOptions) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   alpha: self.alpha
  #| })

///|
/// Convert to JsValue
pub fn MLEluOptions::to_js(self : MLEluOptions) -> JsValue {
  MLEluOptions::to_js_ffi(self)
}

///|
/// MLGatherOptions dictionary
pub(all) struct MLGatherOptions {
  label : String?
  axis : Int?
}

///|
/// Create a new MLGatherOptions with default values
pub fn MLGatherOptions::default() -> MLGatherOptions {
  MLGatherOptions::{ label: None, axis: None }
}

///|
extern "js" fn MLGatherOptions::to_js_ffi(self : MLGatherOptions) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   axis: self.axis
  #| })

///|
/// Convert to JsValue
pub fn MLGatherOptions::to_js(self : MLGatherOptions) -> JsValue {
  MLGatherOptions::to_js_ffi(self)
}

///|
/// MLGatherSupportLimits dictionary
pub(all) struct MLGatherSupportLimits {
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
extern "js" fn MLGatherSupportLimits::to_js_ffi(
  self : MLGatherSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   input: ((() => { const v = self.input; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   indices: ((() => { const v = self.indices; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   output: ((() => { const v = self.output; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MLGatherSupportLimits::to_js(self : MLGatherSupportLimits) -> JsValue {
  MLGatherSupportLimits::to_js_ffi(self)
}

///|
/// MLGemmOptions dictionary
pub(all) struct MLGemmOptions {
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
extern "js" fn MLGemmOptions::to_js_ffi(self : MLGemmOptions) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   c: ((() => { const v = self.c; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   alpha: self.alpha,
  #|   beta: self.beta,
  #|   aTranspose: (self.aTranspose === -1 ? undefined : self.aTranspose),
  #|   bTranspose: (self.bTranspose === -1 ? undefined : self.bTranspose)
  #| })

///|
/// Convert to JsValue
pub fn MLGemmOptions::to_js(self : MLGemmOptions) -> JsValue {
  MLGemmOptions::to_js_ffi(self)
}

///|
/// MLGemmSupportLimits dictionary
pub(all) struct MLGemmSupportLimits {
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
extern "js" fn MLGemmSupportLimits::to_js_ffi(
  self : MLGemmSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   a: ((() => { const v = self.a; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   b: ((() => { const v = self.b; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   c: ((() => { const v = self.c; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   output: ((() => { const v = self.output; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MLGemmSupportLimits::to_js(self : MLGemmSupportLimits) -> JsValue {
  MLGemmSupportLimits::to_js_ffi(self)
}

///|
/// MLGruOptions dictionary
pub(all) struct MLGruOptions {
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
extern "js" fn MLGruOptions::to_js_ffi(self : MLGruOptions) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   bias: ((() => { const v = self.bias; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   recurrentBias: ((() => { const v = self.recurrentBias; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   initialHiddenState: ((() => { const v = self.initialHiddenState; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   resetAfter: (self.resetAfter === -1 ? undefined : self.resetAfter),
  #|   returnSequence: (self.returnSequence === -1 ? undefined : self.returnSequence),
  #|   direction: ((() => { const v = self.direction; if (v === undefined) return undefined; return ['forward', 'backward', 'both'][v]; })()),
  #|   layout: ((() => { const v = self.layout; if (v === undefined) return undefined; return ['zrn', 'rzn'][v]; })()),
  #|   activations: ((() => { const v = self.activations; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MLGruOptions::to_js(self : MLGruOptions) -> JsValue {
  MLGruOptions::to_js_ffi(self)
}

///|
/// MLGruSupportLimits dictionary
pub(all) struct MLGruSupportLimits {
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
extern "js" fn MLGruSupportLimits::to_js_ffi(
  self : MLGruSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   input: ((() => { const v = self.input; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   weight: ((() => { const v = self.weight; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   recurrentWeight: ((() => { const v = self.recurrentWeight; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   bias: ((() => { const v = self.bias; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   recurrentBias: ((() => { const v = self.recurrentBias; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   initialHiddenState: ((() => { const v = self.initialHiddenState; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   output0: ((() => { const v = self.output0; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   output1: ((() => { const v = self.output1; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MLGruSupportLimits::to_js(self : MLGruSupportLimits) -> JsValue {
  MLGruSupportLimits::to_js_ffi(self)
}

///|
/// MLGruCellOptions dictionary
pub(all) struct MLGruCellOptions {
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
extern "js" fn MLGruCellOptions::to_js_ffi(self : MLGruCellOptions) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   bias: ((() => { const v = self.bias; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   recurrentBias: ((() => { const v = self.recurrentBias; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   resetAfter: (self.resetAfter === -1 ? undefined : self.resetAfter),
  #|   layout: ((() => { const v = self.layout; if (v === undefined) return undefined; return ['zrn', 'rzn'][v]; })()),
  #|   activations: ((() => { const v = self.activations; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MLGruCellOptions::to_js(self : MLGruCellOptions) -> JsValue {
  MLGruCellOptions::to_js_ffi(self)
}

///|
/// MLGruCellSupportLimits dictionary
pub(all) struct MLGruCellSupportLimits {
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
extern "js" fn MLGruCellSupportLimits::to_js_ffi(
  self : MLGruCellSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   input: ((() => { const v = self.input; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   weight: ((() => { const v = self.weight; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   recurrentWeight: ((() => { const v = self.recurrentWeight; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   hiddenState: ((() => { const v = self.hiddenState; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   bias: ((() => { const v = self.bias; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   recurrentBias: ((() => { const v = self.recurrentBias; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   output: ((() => { const v = self.output; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MLGruCellSupportLimits::to_js(self : MLGruCellSupportLimits) -> JsValue {
  MLGruCellSupportLimits::to_js_ffi(self)
}

///|
/// MLHardSigmoidOptions dictionary
pub(all) struct MLHardSigmoidOptions {
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
extern "js" fn MLHardSigmoidOptions::to_js_ffi(
  self : MLHardSigmoidOptions,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   alpha: self.alpha,
  #|   beta: self.beta
  #| })

///|
/// Convert to JsValue
pub fn MLHardSigmoidOptions::to_js(self : MLHardSigmoidOptions) -> JsValue {
  MLHardSigmoidOptions::to_js_ffi(self)
}

///|
/// MLInstanceNormalizationOptions dictionary
pub(all) struct MLInstanceNormalizationOptions {
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
extern "js" fn MLInstanceNormalizationOptions::to_js_ffi(
  self : MLInstanceNormalizationOptions,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   scale: ((() => { const v = self.scale; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   bias: ((() => { const v = self.bias; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   epsilon: self.epsilon,
  #|   layout: ((() => { const v = self.layout; if (v === undefined) return undefined; return ['nchw', 'nhwc'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn MLInstanceNormalizationOptions::to_js(
  self : MLInstanceNormalizationOptions,
) -> JsValue {
  MLInstanceNormalizationOptions::to_js_ffi(self)
}

///|
/// MLNormalizationSupportLimits dictionary
pub(all) struct MLNormalizationSupportLimits {
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
extern "js" fn MLNormalizationSupportLimits::to_js_ffi(
  self : MLNormalizationSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   input: ((() => { const v = self.input; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   scale: ((() => { const v = self.scale; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   bias: ((() => { const v = self.bias; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   output: ((() => { const v = self.output; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MLNormalizationSupportLimits::to_js(
  self : MLNormalizationSupportLimits,
) -> JsValue {
  MLNormalizationSupportLimits::to_js_ffi(self)
}

///|
/// MLLayerNormalizationOptions dictionary
pub(all) struct MLLayerNormalizationOptions {
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
extern "js" fn MLLayerNormalizationOptions::to_js_ffi(
  self : MLLayerNormalizationOptions,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   scale: ((() => { const v = self.scale; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   bias: ((() => { const v = self.bias; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   axes: ((() => { const v = self.axes; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   epsilon: self.epsilon
  #| })

///|
/// Convert to JsValue
pub fn MLLayerNormalizationOptions::to_js(
  self : MLLayerNormalizationOptions,
) -> JsValue {
  MLLayerNormalizationOptions::to_js_ffi(self)
}

///|
/// MLLeakyReluOptions dictionary
pub(all) struct MLLeakyReluOptions {
  label : String?
  alpha : Double?
}

///|
/// Create a new MLLeakyReluOptions with default values
pub fn MLLeakyReluOptions::default() -> MLLeakyReluOptions {
  MLLeakyReluOptions::{ label: None, alpha: None }
}

///|
extern "js" fn MLLeakyReluOptions::to_js_ffi(
  self : MLLeakyReluOptions,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   alpha: self.alpha
  #| })

///|
/// Convert to JsValue
pub fn MLLeakyReluOptions::to_js(self : MLLeakyReluOptions) -> JsValue {
  MLLeakyReluOptions::to_js_ffi(self)
}

///|
/// MLLinearOptions dictionary
pub(all) struct MLLinearOptions {
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
extern "js" fn MLLinearOptions::to_js_ffi(self : MLLinearOptions) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   alpha: self.alpha,
  #|   beta: self.beta
  #| })

///|
/// Convert to JsValue
pub fn MLLinearOptions::to_js(self : MLLinearOptions) -> JsValue {
  MLLinearOptions::to_js_ffi(self)
}

///|
/// MLLstmOptions dictionary
pub(all) struct MLLstmOptions {
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
extern "js" fn MLLstmOptions::to_js_ffi(self : MLLstmOptions) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   bias: ((() => { const v = self.bias; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   recurrentBias: ((() => { const v = self.recurrentBias; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   peepholeWeight: ((() => { const v = self.peepholeWeight; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   initialHiddenState: ((() => { const v = self.initialHiddenState; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   initialCellState: ((() => { const v = self.initialCellState; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   returnSequence: (self.returnSequence === -1 ? undefined : self.returnSequence),
  #|   direction: ((() => { const v = self.direction; if (v === undefined) return undefined; return ['forward', 'backward', 'both'][v]; })()),
  #|   layout: ((() => { const v = self.layout; if (v === undefined) return undefined; return ['iofg', 'ifgo'][v]; })()),
  #|   activations: ((() => { const v = self.activations; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MLLstmOptions::to_js(self : MLLstmOptions) -> JsValue {
  MLLstmOptions::to_js_ffi(self)
}

///|
/// MLLstmSupportLimits dictionary
pub(all) struct MLLstmSupportLimits {
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
extern "js" fn MLLstmSupportLimits::to_js_ffi(
  self : MLLstmSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   input: ((() => { const v = self.input; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   weight: ((() => { const v = self.weight; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   recurrentWeight: ((() => { const v = self.recurrentWeight; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   bias: ((() => { const v = self.bias; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   recurrentBias: ((() => { const v = self.recurrentBias; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   peepholeWeight: ((() => { const v = self.peepholeWeight; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   initialHiddenState: ((() => { const v = self.initialHiddenState; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   initialCellState: ((() => { const v = self.initialCellState; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   output0: ((() => { const v = self.output0; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   output1: ((() => { const v = self.output1; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   output2: ((() => { const v = self.output2; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MLLstmSupportLimits::to_js(self : MLLstmSupportLimits) -> JsValue {
  MLLstmSupportLimits::to_js_ffi(self)
}

///|
/// MLLstmCellOptions dictionary
pub(all) struct MLLstmCellOptions {
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
extern "js" fn MLLstmCellOptions::to_js_ffi(
  self : MLLstmCellOptions,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   bias: ((() => { const v = self.bias; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   recurrentBias: ((() => { const v = self.recurrentBias; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   peepholeWeight: ((() => { const v = self.peepholeWeight; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   layout: ((() => { const v = self.layout; if (v === undefined) return undefined; return ['iofg', 'ifgo'][v]; })()),
  #|   activations: ((() => { const v = self.activations; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MLLstmCellOptions::to_js(self : MLLstmCellOptions) -> JsValue {
  MLLstmCellOptions::to_js_ffi(self)
}

///|
/// MLLstmCellSupportLimits dictionary
pub(all) struct MLLstmCellSupportLimits {
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
extern "js" fn MLLstmCellSupportLimits::to_js_ffi(
  self : MLLstmCellSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   input: ((() => { const v = self.input; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   weight: ((() => { const v = self.weight; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   recurrentWeight: ((() => { const v = self.recurrentWeight; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   hiddenState: ((() => { const v = self.hiddenState; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   cellState: ((() => { const v = self.cellState; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   bias: ((() => { const v = self.bias; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   recurrentBias: ((() => { const v = self.recurrentBias; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   peepholeWeight: ((() => { const v = self.peepholeWeight; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   output0: ((() => { const v = self.output0; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   output1: ((() => { const v = self.output1; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MLLstmCellSupportLimits::to_js(
  self : MLLstmCellSupportLimits,
) -> JsValue {
  MLLstmCellSupportLimits::to_js_ffi(self)
}

///|
/// MLPadOptions dictionary
pub(all) struct MLPadOptions {
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
extern "js" fn MLPadOptions::to_js_ffi(self : MLPadOptions) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   mode: ((() => { const v = self.mode; if (v === undefined) return undefined; return ['constant', 'edge', 'reflection'][v]; })()),
  #|   value: ((() => { const v = self.value; if (v.$tag !== 1) return undefined; return v._0.to_js_value(); })())
  #| })

///|
/// Convert to JsValue
pub fn MLPadOptions::to_js(self : MLPadOptions) -> JsValue {
  MLPadOptions::to_js_ffi(self)
}

///|
/// MLPool2dOptions dictionary
pub(all) struct MLPool2dOptions {
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
extern "js" fn MLPool2dOptions::to_js_ffi(self : MLPool2dOptions) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   windowDimensions: ((() => { const v = self.windowDimensions; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   padding: ((() => { const v = self.padding; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   strides: ((() => { const v = self.strides; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   dilations: ((() => { const v = self.dilations; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   layout: ((() => { const v = self.layout; if (v === undefined) return undefined; return ['nchw', 'nhwc'][v]; })()),
  #|   outputShapeRounding: ((() => { const v = self.outputShapeRounding; if (v === undefined) return undefined; return ['floor', 'ceil'][v]; })()),
  #|   outputSizes: ((() => { const v = self.outputSizes; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MLPool2dOptions::to_js(self : MLPool2dOptions) -> JsValue {
  MLPool2dOptions::to_js_ffi(self)
}

///|
/// MLPreluSupportLimits dictionary
pub(all) struct MLPreluSupportLimits {
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
extern "js" fn MLPreluSupportLimits::to_js_ffi(
  self : MLPreluSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   input: ((() => { const v = self.input; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   slope: ((() => { const v = self.slope; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   output: ((() => { const v = self.output; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MLPreluSupportLimits::to_js(self : MLPreluSupportLimits) -> JsValue {
  MLPreluSupportLimits::to_js_ffi(self)
}

///|
/// MLReduceOptions dictionary
pub(all) struct MLReduceOptions {
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
extern "js" fn MLReduceOptions::to_js_ffi(self : MLReduceOptions) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   axes: ((() => { const v = self.axes; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   keepDimensions: (self.keepDimensions === -1 ? undefined : self.keepDimensions)
  #| })

///|
/// Convert to JsValue
pub fn MLReduceOptions::to_js(self : MLReduceOptions) -> JsValue {
  MLReduceOptions::to_js_ffi(self)
}

///|
/// MLResample2dOptions dictionary
pub(all) struct MLResample2dOptions {
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
extern "js" fn MLResample2dOptions::to_js_ffi(
  self : MLResample2dOptions,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   mode: ((() => { const v = self.mode; if (v === undefined) return undefined; return ['nearest-neighbor', 'linear'][v]; })()),
  #|   scales: ((() => { const v = self.scales; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   sizes: ((() => { const v = self.sizes; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   axes: ((() => { const v = self.axes; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MLResample2dOptions::to_js(self : MLResample2dOptions) -> JsValue {
  MLResample2dOptions::to_js_ffi(self)
}

///|
/// MLReverseOptions dictionary
pub(all) struct MLReverseOptions {
  label : String?
  axes : Array[Int]?
}

///|
/// Create a new MLReverseOptions with default values
pub fn MLReverseOptions::default() -> MLReverseOptions {
  MLReverseOptions::{ label: None, axes: None }
}

///|
extern "js" fn MLReverseOptions::to_js_ffi(self : MLReverseOptions) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   axes: ((() => { const v = self.axes; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MLReverseOptions::to_js(self : MLReverseOptions) -> JsValue {
  MLReverseOptions::to_js_ffi(self)
}

///|
/// MLScatterOptions dictionary
pub(all) struct MLScatterOptions {
  label : String?
  axis : Int?
}

///|
/// Create a new MLScatterOptions with default values
pub fn MLScatterOptions::default() -> MLScatterOptions {
  MLScatterOptions::{ label: None, axis: None }
}

///|
extern "js" fn MLScatterOptions::to_js_ffi(self : MLScatterOptions) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   axis: self.axis
  #| })

///|
/// Convert to JsValue
pub fn MLScatterOptions::to_js(self : MLScatterOptions) -> JsValue {
  MLScatterOptions::to_js_ffi(self)
}

///|
/// MLScatterSupportLimits dictionary
pub(all) struct MLScatterSupportLimits {
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
extern "js" fn MLScatterSupportLimits::to_js_ffi(
  self : MLScatterSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   input: ((() => { const v = self.input; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   indices: ((() => { const v = self.indices; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   updates: ((() => { const v = self.updates; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   output: ((() => { const v = self.output; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MLScatterSupportLimits::to_js(self : MLScatterSupportLimits) -> JsValue {
  MLScatterSupportLimits::to_js_ffi(self)
}

///|
/// MLSliceOptions dictionary
pub(all) struct MLSliceOptions {
  label : String?
  strides : Array[Int]?
}

///|
/// Create a new MLSliceOptions with default values
pub fn MLSliceOptions::default() -> MLSliceOptions {
  MLSliceOptions::{ label: None, strides: None }
}

///|
extern "js" fn MLSliceOptions::to_js_ffi(self : MLSliceOptions) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   strides: ((() => { const v = self.strides; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MLSliceOptions::to_js(self : MLSliceOptions) -> JsValue {
  MLSliceOptions::to_js_ffi(self)
}

///|
/// MLSplitOptions dictionary
pub(all) struct MLSplitOptions {
  label : String?
  axis : Int?
}

///|
/// Create a new MLSplitOptions with default values
pub fn MLSplitOptions::default() -> MLSplitOptions {
  MLSplitOptions::{ label: None, axis: None }
}

///|
extern "js" fn MLSplitOptions::to_js_ffi(self : MLSplitOptions) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   axis: self.axis
  #| })

///|
/// Convert to JsValue
pub fn MLSplitOptions::to_js(self : MLSplitOptions) -> JsValue {
  MLSplitOptions::to_js_ffi(self)
}

///|
/// MLSplitSupportLimits dictionary
pub(all) struct MLSplitSupportLimits {
  input : MLTensorLimits?
  outputs : MLTensorLimits?
}

///|
/// Create a new MLSplitSupportLimits with default values
pub fn MLSplitSupportLimits::default() -> MLSplitSupportLimits {
  MLSplitSupportLimits::{ input: None, outputs: None }
}

///|
extern "js" fn MLSplitSupportLimits::to_js_ffi(
  self : MLSplitSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   input: ((() => { const v = self.input; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   outputs: ((() => { const v = self.outputs; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MLSplitSupportLimits::to_js(self : MLSplitSupportLimits) -> JsValue {
  MLSplitSupportLimits::to_js_ffi(self)
}

///|
/// MLTransposeOptions dictionary
pub(all) struct MLTransposeOptions {
  label : String?
  permutation : Array[Int]?
}

///|
/// Create a new MLTransposeOptions with default values
pub fn MLTransposeOptions::default() -> MLTransposeOptions {
  MLTransposeOptions::{ label: None, permutation: None }
}

///|
extern "js" fn MLTransposeOptions::to_js_ffi(
  self : MLTransposeOptions,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   permutation: ((() => { const v = self.permutation; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MLTransposeOptions::to_js(self : MLTransposeOptions) -> JsValue {
  MLTransposeOptions::to_js_ffi(self)
}

///|
/// MLTriangularOptions dictionary
pub(all) struct MLTriangularOptions {
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
extern "js" fn MLTriangularOptions::to_js_ffi(
  self : MLTriangularOptions,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   upper: (self.upper === -1 ? undefined : self.upper),
  #|   diagonal: self.diagonal
  #| })

///|
/// Convert to JsValue
pub fn MLTriangularOptions::to_js(self : MLTriangularOptions) -> JsValue {
  MLTriangularOptions::to_js_ffi(self)
}

///|
/// MLWhereSupportLimits dictionary
pub(all) struct MLWhereSupportLimits {
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
extern "js" fn MLWhereSupportLimits::to_js_ffi(
  self : MLWhereSupportLimits,
) -> JsValue =
  #| (self) => ({
  #|   condition: ((() => { const v = self.condition; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   trueValue: ((() => { const v = self.trueValue; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   falseValue: ((() => { const v = self.falseValue; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   output: ((() => { const v = self.output; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MLWhereSupportLimits::to_js(self : MLWhereSupportLimits) -> JsValue {
  MLWhereSupportLimits::to_js_ffi(self)
}

///|
/// ML interface
pub type ML

///|
pub extern "js" fn ML::to_js_value(self : ML) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ML (unchecked)
pub extern "js" fn ML::from_js_value(v : JsValue) -> ML =
  #| (v) => v

///|
/// Safely cast JsValue to ML (checked with instanceof)
pub extern "js" fn ML::from_js_value_opt(v : JsValue) -> ML? =
  #| (v) => (v instanceof ML) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ML (checked with instanceof)
pub extern "js" fn JsValue::as_ml(self : JsValue) -> ML? =
  #| (self) => (self instanceof ML) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ML (unchecked)
pub extern "js" fn JsValue::to_ml(self : JsValue) -> ML =
  #| (self) => self

///|
pub extern "js" fn ML::create_context(self : ML) -> Promise[MLContext] =
  #| (self) => self.createContext()

///|
extern "js" fn ML::create_context_with_options_ffi(
  self : ML,
  options : JsValue,
) -> Promise[MLContext] =
  #| (self, options) => self.createContext(options)

///|
pub fn ML::create_context_with_options(
  self : ML,
  options : MLContextOptions,
) -> Promise[MLContext] {
  ML::create_context_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn ML::create_context_with_gpu_device_gpu_device(
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
/// Cast JsValue to MLContext (unchecked)
pub extern "js" fn MLContext::from_js_value(v : JsValue) -> MLContext =
  #| (v) => v

///|
/// Safely cast JsValue to MLContext (checked with instanceof)
pub extern "js" fn MLContext::from_js_value_opt(v : JsValue) -> MLContext? =
  #| (v) => (v instanceof MLContext) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MLContext (checked with instanceof)
pub extern "js" fn JsValue::as_ml_context(self : JsValue) -> MLContext? =
  #| (self) => (self instanceof MLContext) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MLContext (unchecked)
pub extern "js" fn JsValue::to_ml_context(self : JsValue) -> MLContext =
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
extern "js" fn MLContext::create_tensor_ffi(
  self : MLContext,
  descriptor : JsValue,
) -> Promise[MLTensor] =
  #| (self, descriptor) => self.createTensor(descriptor)

///|
pub fn MLContext::create_tensor(
  self : MLContext,
  descriptor : MLTensorDescriptor,
) -> Promise[MLTensor] {
  MLContext::create_tensor_ffi(self, descriptor.to_js())
}

///|
extern "js" fn MLContext::create_constant_tensor_ffi(
  self : MLContext,
  descriptor : JsValue,
  input_data : AllowSharedBufferSource,
) -> Promise[MLTensor] =
  #| (self, descriptor, input_data) => self.createConstantTensor(descriptor, input_data)

///|
pub fn MLContext::create_constant_tensor(
  self : MLContext,
  descriptor : MLOperandDescriptor,
  input_data : AllowSharedBufferSource,
) -> Promise[MLTensor] {
  MLContext::create_constant_tensor_ffi(self, descriptor.to_js(), input_data)
}

///|
pub extern "js" fn MLContext::read_tensor(
  self : MLContext,
  tensor : MLTensor,
) -> Promise[ArrayBuffer] =
  #| (self, tensor) => self.readTensor(tensor)

///|
pub extern "js" fn MLContext::read_tensor_with_tensor_ml_tensor_and_output_data_allow_shared_buffer_source(
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
pub extern "js" fn MLContext::create_constant_tensor_with_array_buffer(
  self : MLContext,
  descriptor : MLOperandDescriptor,
  input_data : ArrayBuffer,
) -> Promise[MLTensor] =
  #| (self, descriptor, input_data) => self.createConstantTensor(descriptor, input_data)

///|
pub extern "js" fn MLContext::create_constant_tensor_with_shared_array_buffer(
  self : MLContext,
  descriptor : MLOperandDescriptor,
  input_data : SharedArrayBuffer,
) -> Promise[MLTensor] =
  #| (self, descriptor, input_data) => self.createConstantTensor(descriptor, input_data)

///|
pub extern "js" fn MLContext::create_constant_tensor_with_array_buffer_view(
  self : MLContext,
  descriptor : MLOperandDescriptor,
  input_data : ArrayBufferView,
) -> Promise[MLTensor] =
  #| (self, descriptor, input_data) => self.createConstantTensor(descriptor, input_data)

///|
pub extern "js" fn MLContext::read_tensor_with_array_buffer(
  self : MLContext,
  tensor : MLTensor,
  output_data : ArrayBuffer,
) -> Promise[Unit] =
  #| (self, tensor, output_data) => self.readTensor(tensor, output_data)

///|
pub extern "js" fn MLContext::read_tensor_with_shared_array_buffer(
  self : MLContext,
  tensor : MLTensor,
  output_data : SharedArrayBuffer,
) -> Promise[Unit] =
  #| (self, tensor, output_data) => self.readTensor(tensor, output_data)

///|
pub extern "js" fn MLContext::read_tensor_with_array_buffer_view(
  self : MLContext,
  tensor : MLTensor,
  output_data : ArrayBufferView,
) -> Promise[Unit] =
  #| (self, tensor, output_data) => self.readTensor(tensor, output_data)

///|
pub extern "js" fn MLContext::write_tensor_with_array_buffer(
  self : MLContext,
  tensor : MLTensor,
  input_data : ArrayBuffer,
) -> Unit =
  #| (self, tensor, input_data) => self.writeTensor(tensor, input_data)

///|
pub extern "js" fn MLContext::write_tensor_with_shared_array_buffer(
  self : MLContext,
  tensor : MLTensor,
  input_data : SharedArrayBuffer,
) -> Unit =
  #| (self, tensor, input_data) => self.writeTensor(tensor, input_data)

///|
pub extern "js" fn MLContext::write_tensor_with_array_buffer_view(
  self : MLContext,
  tensor : MLTensor,
  input_data : ArrayBufferView,
) -> Unit =
  #| (self, tensor, input_data) => self.writeTensor(tensor, input_data)

///|
/// MLGraph interface
pub type MLGraph

///|
pub extern "js" fn MLGraph::to_js_value(self : MLGraph) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to MLGraph (unchecked)
pub extern "js" fn MLGraph::from_js_value(v : JsValue) -> MLGraph =
  #| (v) => v

///|
/// Safely cast JsValue to MLGraph (checked with instanceof)
pub extern "js" fn MLGraph::from_js_value_opt(v : JsValue) -> MLGraph? =
  #| (v) => (v instanceof MLGraph) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MLGraph (checked with instanceof)
pub extern "js" fn JsValue::as_ml_graph(self : JsValue) -> MLGraph? =
  #| (self) => (self instanceof MLGraph) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MLGraph (unchecked)
pub extern "js" fn JsValue::to_ml_graph(self : JsValue) -> MLGraph =
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
/// Cast JsValue to MLOperand (unchecked)
pub extern "js" fn MLOperand::from_js_value(v : JsValue) -> MLOperand =
  #| (v) => v

///|
/// Safely cast JsValue to MLOperand (checked with instanceof)
pub extern "js" fn MLOperand::from_js_value_opt(v : JsValue) -> MLOperand? =
  #| (v) => (v instanceof MLOperand) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MLOperand (checked with instanceof)
pub extern "js" fn JsValue::as_ml_operand(self : JsValue) -> MLOperand? =
  #| (self) => (self instanceof MLOperand) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MLOperand (unchecked)
pub extern "js" fn JsValue::to_ml_operand(self : JsValue) -> MLOperand =
  #| (self) => self

///|
pub extern "js" fn MLOperand::get_data_type(
  self : MLOperand,
) -> MLOperandDataType =
  #| (self) => ['float32', 'float16', 'int32', 'uint32', 'int64', 'uint64', 'int8', 'uint8'].indexOf(self.dataType)

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
/// Cast JsValue to MLTensor (unchecked)
pub extern "js" fn MLTensor::from_js_value(v : JsValue) -> MLTensor =
  #| (v) => v

///|
/// Safely cast JsValue to MLTensor (checked with instanceof)
pub extern "js" fn MLTensor::from_js_value_opt(v : JsValue) -> MLTensor? =
  #| (v) => (v instanceof MLTensor) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MLTensor (checked with instanceof)
pub extern "js" fn JsValue::as_ml_tensor(self : JsValue) -> MLTensor? =
  #| (self) => (self instanceof MLTensor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MLTensor (unchecked)
pub extern "js" fn JsValue::to_ml_tensor(self : JsValue) -> MLTensor =
  #| (self) => self

///|
pub extern "js" fn MLTensor::get_data_type(
  self : MLTensor,
) -> MLOperandDataType =
  #| (self) => ['float32', 'float16', 'int32', 'uint32', 'int64', 'uint64', 'int8', 'uint8'].indexOf(self.dataType)

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
/// Cast JsValue to MLGraphBuilder (unchecked)
pub extern "js" fn MLGraphBuilder::from_js_value(v : JsValue) -> MLGraphBuilder =
  #| (v) => v

///|
/// Safely cast JsValue to MLGraphBuilder (checked with instanceof)
pub extern "js" fn MLGraphBuilder::from_js_value_opt(
  v : JsValue,
) -> MLGraphBuilder? =
  #| (v) => (v instanceof MLGraphBuilder) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MLGraphBuilder (checked with instanceof)
pub extern "js" fn JsValue::as_ml_graph_builder(
  self : JsValue,
) -> MLGraphBuilder? =
  #| (self) => (self instanceof MLGraphBuilder) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MLGraphBuilder (unchecked)
pub extern "js" fn JsValue::to_ml_graph_builder(
  self : JsValue,
) -> MLGraphBuilder =
  #| (self) => self

///|
pub extern "js" fn MLGraphBuilder::new(context : MLContext) -> MLGraphBuilder =
  #| (context) => new MLGraphBuilder(context)

///|
extern "js" fn MLGraphBuilder::input_ffi(
  self : MLGraphBuilder,
  name : String,
  descriptor : JsValue,
) -> MLOperand =
  #| (self, name, descriptor) => self.input(name, descriptor)

///|
pub fn MLGraphBuilder::input(
  self : MLGraphBuilder,
  name : String,
  descriptor : MLOperandDescriptor,
) -> MLOperand {
  MLGraphBuilder::input_ffi(self, name, descriptor.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::constant(
  self : MLGraphBuilder,
  tensor : MLTensor,
) -> MLOperand =
  #| (self, tensor) => self.constant(tensor)

///|
pub extern "js" fn MLGraphBuilder::constant_with_data_type_ml_operand_data_type_and_value_ml_number(
  self : MLGraphBuilder,
  data_type : MLOperandDataType,
  value : MLNumber,
) -> MLOperand =
  #| (self, data_type, value) => self.constant(['float32', 'float16', 'int32', 'uint32', 'int64', 'uint64', 'int8', 'uint8'][data_type], value)

///|
extern "js" fn MLGraphBuilder::constant_with_descriptor_ml_operand_descriptor_and_buffer_allow_shared_buffer_source_ffi(
  self : MLGraphBuilder,
  descriptor : JsValue,
  buffer : AllowSharedBufferSource,
) -> MLOperand =
  #| (self, descriptor, buffer) => self.constant(descriptor, buffer)

///|
pub fn MLGraphBuilder::constant_with_descriptor_ml_operand_descriptor_and_buffer_allow_shared_buffer_source(
  self : MLGraphBuilder,
  descriptor : MLOperandDescriptor,
  buffer : AllowSharedBufferSource,
) -> MLOperand {
  MLGraphBuilder::constant_with_descriptor_ml_operand_descriptor_and_buffer_allow_shared_buffer_source_ffi(
    self,
    descriptor.to_js(),
    buffer,
  )
}

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
extern "js" fn MLGraphBuilder::arg_min_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  axis : Int,
  options : JsValue,
) -> MLOperand =
  #| (self, input, axis, options) => self.argMin(input, axis, options)

///|
pub fn MLGraphBuilder::arg_min_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  axis : Int,
  options : MLArgMinMaxOptions,
) -> MLOperand {
  MLGraphBuilder::arg_min_with_options_ffi(self, input, axis, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::arg_max(
  self : MLGraphBuilder,
  input : MLOperand,
  axis : Int,
) -> MLOperand =
  #| (self, input, axis) => self.argMax(input, axis)

///|
extern "js" fn MLGraphBuilder::arg_max_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  axis : Int,
  options : JsValue,
) -> MLOperand =
  #| (self, input, axis, options) => self.argMax(input, axis, options)

///|
pub fn MLGraphBuilder::arg_max_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  axis : Int,
  options : MLArgMinMaxOptions,
) -> MLOperand {
  MLGraphBuilder::arg_max_with_options_ffi(self, input, axis, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::batch_normalization(
  self : MLGraphBuilder,
  input : MLOperand,
  mean : MLOperand,
  variance : MLOperand,
) -> MLOperand =
  #| (self, input, mean, variance) => self.batchNormalization(input, mean, variance)

///|
extern "js" fn MLGraphBuilder::batch_normalization_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  mean : MLOperand,
  variance : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, mean, variance, options) => self.batchNormalization(input, mean, variance, options)

///|
pub fn MLGraphBuilder::batch_normalization_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  mean : MLOperand,
  variance : MLOperand,
  options : MLBatchNormalizationOptions,
) -> MLOperand {
  MLGraphBuilder::batch_normalization_with_options_ffi(
    self,
    input,
    mean,
    variance,
    options.to_js(),
  )
}

///|
pub extern "js" fn MLGraphBuilder::cast(
  self : MLGraphBuilder,
  input : MLOperand,
  data_type : MLOperandDataType,
) -> MLOperand =
  #| (self, input, data_type) => self.cast(input, ['float32', 'float16', 'int32', 'uint32', 'int64', 'uint64', 'int8', 'uint8'][data_type])

///|
extern "js" fn MLGraphBuilder::cast_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  data_type : MLOperandDataType,
  options : JsValue,
) -> MLOperand =
  #| (self, input, data_type, options) => self.cast(input, ['float32', 'float16', 'int32', 'uint32', 'int64', 'uint64', 'int8', 'uint8'][data_type], options)

///|
pub fn MLGraphBuilder::cast_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  data_type : MLOperandDataType,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::cast_with_options_ffi(self, input, data_type, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::clamp(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.clamp(input)

///|
extern "js" fn MLGraphBuilder::clamp_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.clamp(input, options)

///|
pub fn MLGraphBuilder::clamp_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLClampOptions,
) -> MLOperand {
  MLGraphBuilder::clamp_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::concat(
  self : MLGraphBuilder,
  inputs : Array[MLOperand],
  axis : Int,
) -> MLOperand =
  #| (self, inputs, axis) => self.concat(inputs, axis)

///|
extern "js" fn MLGraphBuilder::concat_with_options_ffi(
  self : MLGraphBuilder,
  inputs : Array[MLOperand],
  axis : Int,
  options : JsValue,
) -> MLOperand =
  #| (self, inputs, axis, options) => self.concat(inputs, axis, options)

///|
pub fn MLGraphBuilder::concat_with_options(
  self : MLGraphBuilder,
  inputs : Array[MLOperand],
  axis : Int,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::concat_with_options_ffi(self, inputs, axis, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::conv2d(
  self : MLGraphBuilder,
  input : MLOperand,
  filter : MLOperand,
) -> MLOperand =
  #| (self, input, filter) => self.conv2d(input, filter)

///|
extern "js" fn MLGraphBuilder::conv2d_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  filter : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, filter, options) => self.conv2d(input, filter, options)

///|
pub fn MLGraphBuilder::conv2d_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  filter : MLOperand,
  options : MLConv2dOptions,
) -> MLOperand {
  MLGraphBuilder::conv2d_with_options_ffi(self, input, filter, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::conv_transpose2d(
  self : MLGraphBuilder,
  input : MLOperand,
  filter : MLOperand,
) -> MLOperand =
  #| (self, input, filter) => self.convTranspose2d(input, filter)

///|
extern "js" fn MLGraphBuilder::conv_transpose2d_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  filter : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, filter, options) => self.convTranspose2d(input, filter, options)

///|
pub fn MLGraphBuilder::conv_transpose2d_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  filter : MLOperand,
  options : MLConvTranspose2dOptions,
) -> MLOperand {
  MLGraphBuilder::conv_transpose2d_with_options_ffi(
    self,
    input,
    filter,
    options.to_js(),
  )
}

///|
pub extern "js" fn MLGraphBuilder::cumulative_sum(
  self : MLGraphBuilder,
  input : MLOperand,
  axis : Int,
) -> MLOperand =
  #| (self, input, axis) => self.cumulativeSum(input, axis)

///|
extern "js" fn MLGraphBuilder::cumulative_sum_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  axis : Int,
  options : JsValue,
) -> MLOperand =
  #| (self, input, axis, options) => self.cumulativeSum(input, axis, options)

///|
pub fn MLGraphBuilder::cumulative_sum_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  axis : Int,
  options : MLCumulativeSumOptions,
) -> MLOperand {
  MLGraphBuilder::cumulative_sum_with_options_ffi(
    self,
    input,
    axis,
    options.to_js(),
  )
}

///|
pub extern "js" fn MLGraphBuilder::add(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.add(a, b)

///|
extern "js" fn MLGraphBuilder::add_with_options_ffi(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, a, b, options) => self.add(a, b, options)

///|
pub fn MLGraphBuilder::add_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::add_with_options_ffi(self, a, b, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::sub(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.sub(a, b)

///|
extern "js" fn MLGraphBuilder::sub_with_options_ffi(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, a, b, options) => self.sub(a, b, options)

///|
pub fn MLGraphBuilder::sub_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::sub_with_options_ffi(self, a, b, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::mul(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.mul(a, b)

///|
extern "js" fn MLGraphBuilder::mul_with_options_ffi(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, a, b, options) => self.mul(a, b, options)

///|
pub fn MLGraphBuilder::mul_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::mul_with_options_ffi(self, a, b, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::div(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.div(a, b)

///|
extern "js" fn MLGraphBuilder::div_with_options_ffi(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, a, b, options) => self.div(a, b, options)

///|
pub fn MLGraphBuilder::div_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::div_with_options_ffi(self, a, b, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::max(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.max(a, b)

///|
extern "js" fn MLGraphBuilder::max_with_options_ffi(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, a, b, options) => self.max(a, b, options)

///|
pub fn MLGraphBuilder::max_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::max_with_options_ffi(self, a, b, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::min(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.min(a, b)

///|
extern "js" fn MLGraphBuilder::min_with_options_ffi(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, a, b, options) => self.min(a, b, options)

///|
pub fn MLGraphBuilder::min_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::min_with_options_ffi(self, a, b, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::pow(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.pow(a, b)

///|
extern "js" fn MLGraphBuilder::pow_with_options_ffi(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, a, b, options) => self.pow(a, b, options)

///|
pub fn MLGraphBuilder::pow_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::pow_with_options_ffi(self, a, b, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::equal(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.equal(a, b)

///|
extern "js" fn MLGraphBuilder::equal_with_options_ffi(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, a, b, options) => self.equal(a, b, options)

///|
pub fn MLGraphBuilder::equal_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::equal_with_options_ffi(self, a, b, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::not_equal(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.notEqual(a, b)

///|
extern "js" fn MLGraphBuilder::not_equal_with_options_ffi(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, a, b, options) => self.notEqual(a, b, options)

///|
pub fn MLGraphBuilder::not_equal_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::not_equal_with_options_ffi(self, a, b, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::greater(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.greater(a, b)

///|
extern "js" fn MLGraphBuilder::greater_with_options_ffi(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, a, b, options) => self.greater(a, b, options)

///|
pub fn MLGraphBuilder::greater_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::greater_with_options_ffi(self, a, b, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::greater_or_equal(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.greaterOrEqual(a, b)

///|
extern "js" fn MLGraphBuilder::greater_or_equal_with_options_ffi(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, a, b, options) => self.greaterOrEqual(a, b, options)

///|
pub fn MLGraphBuilder::greater_or_equal_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::greater_or_equal_with_options_ffi(self, a, b, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::lesser(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.lesser(a, b)

///|
extern "js" fn MLGraphBuilder::lesser_with_options_ffi(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, a, b, options) => self.lesser(a, b, options)

///|
pub fn MLGraphBuilder::lesser_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::lesser_with_options_ffi(self, a, b, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::lesser_or_equal(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.lesserOrEqual(a, b)

///|
extern "js" fn MLGraphBuilder::lesser_or_equal_with_options_ffi(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, a, b, options) => self.lesserOrEqual(a, b, options)

///|
pub fn MLGraphBuilder::lesser_or_equal_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::lesser_or_equal_with_options_ffi(self, a, b, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::logical_not(
  self : MLGraphBuilder,
  a : MLOperand,
) -> MLOperand =
  #| (self, a) => self.logicalNot(a)

///|
extern "js" fn MLGraphBuilder::logical_not_with_options_ffi(
  self : MLGraphBuilder,
  a : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, a, options) => self.logicalNot(a, options)

///|
pub fn MLGraphBuilder::logical_not_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::logical_not_with_options_ffi(self, a, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::logical_and(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.logicalAnd(a, b)

///|
extern "js" fn MLGraphBuilder::logical_and_with_options_ffi(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, a, b, options) => self.logicalAnd(a, b, options)

///|
pub fn MLGraphBuilder::logical_and_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::logical_and_with_options_ffi(self, a, b, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::logical_or(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.logicalOr(a, b)

///|
extern "js" fn MLGraphBuilder::logical_or_with_options_ffi(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, a, b, options) => self.logicalOr(a, b, options)

///|
pub fn MLGraphBuilder::logical_or_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::logical_or_with_options_ffi(self, a, b, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::logical_xor(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.logicalXor(a, b)

///|
extern "js" fn MLGraphBuilder::logical_xor_with_options_ffi(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, a, b, options) => self.logicalXor(a, b, options)

///|
pub fn MLGraphBuilder::logical_xor_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::logical_xor_with_options_ffi(self, a, b, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::is_na_n(
  self : MLGraphBuilder,
  a : MLOperand,
) -> MLOperand =
  #| (self, a) => self.isNaN(a)

///|
extern "js" fn MLGraphBuilder::is_na_n_with_options_ffi(
  self : MLGraphBuilder,
  a : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, a, options) => self.isNaN(a, options)

///|
pub fn MLGraphBuilder::is_na_n_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::is_na_n_with_options_ffi(self, a, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::is_infinite(
  self : MLGraphBuilder,
  a : MLOperand,
) -> MLOperand =
  #| (self, a) => self.isInfinite(a)

///|
extern "js" fn MLGraphBuilder::is_infinite_with_options_ffi(
  self : MLGraphBuilder,
  a : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, a, options) => self.isInfinite(a, options)

///|
pub fn MLGraphBuilder::is_infinite_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::is_infinite_with_options_ffi(self, a, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::abs(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.abs(input)

///|
extern "js" fn MLGraphBuilder::abs_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.abs(input, options)

///|
pub fn MLGraphBuilder::abs_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::abs_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::ceil(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.ceil(input)

///|
extern "js" fn MLGraphBuilder::ceil_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.ceil(input, options)

///|
pub fn MLGraphBuilder::ceil_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::ceil_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::cos(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.cos(input)

///|
extern "js" fn MLGraphBuilder::cos_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.cos(input, options)

///|
pub fn MLGraphBuilder::cos_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::cos_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::erf(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.erf(input)

///|
extern "js" fn MLGraphBuilder::erf_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.erf(input, options)

///|
pub fn MLGraphBuilder::erf_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::erf_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::exp(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.exp(input)

///|
extern "js" fn MLGraphBuilder::exp_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.exp(input, options)

///|
pub fn MLGraphBuilder::exp_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::exp_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::floor(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.floor(input)

///|
extern "js" fn MLGraphBuilder::floor_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.floor(input, options)

///|
pub fn MLGraphBuilder::floor_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::floor_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::identity(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.identity(input)

///|
extern "js" fn MLGraphBuilder::identity_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.identity(input, options)

///|
pub fn MLGraphBuilder::identity_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::identity_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::log(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.log(input)

///|
extern "js" fn MLGraphBuilder::log_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.log(input, options)

///|
pub fn MLGraphBuilder::log_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::log_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::neg(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.neg(input)

///|
extern "js" fn MLGraphBuilder::neg_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.neg(input, options)

///|
pub fn MLGraphBuilder::neg_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::neg_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::reciprocal(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.reciprocal(input)

///|
extern "js" fn MLGraphBuilder::reciprocal_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.reciprocal(input, options)

///|
pub fn MLGraphBuilder::reciprocal_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::reciprocal_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::round_even(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.roundEven(input)

///|
extern "js" fn MLGraphBuilder::round_even_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.roundEven(input, options)

///|
pub fn MLGraphBuilder::round_even_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::round_even_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::sin(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.sin(input)

///|
extern "js" fn MLGraphBuilder::sin_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.sin(input, options)

///|
pub fn MLGraphBuilder::sin_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::sin_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::sign(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.sign(input)

///|
extern "js" fn MLGraphBuilder::sign_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.sign(input, options)

///|
pub fn MLGraphBuilder::sign_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::sign_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::sqrt(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.sqrt(input)

///|
extern "js" fn MLGraphBuilder::sqrt_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.sqrt(input, options)

///|
pub fn MLGraphBuilder::sqrt_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::sqrt_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::tan(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.tan(input)

///|
extern "js" fn MLGraphBuilder::tan_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.tan(input, options)

///|
pub fn MLGraphBuilder::tan_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::tan_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::dequantize_linear(
  self : MLGraphBuilder,
  input : MLOperand,
  scale : MLOperand,
  zero_point : MLOperand,
) -> MLOperand =
  #| (self, input, scale, zero_point) => self.dequantizeLinear(input, scale, zero_point)

///|
extern "js" fn MLGraphBuilder::dequantize_linear_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  scale : MLOperand,
  zero_point : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, scale, zero_point, options) => self.dequantizeLinear(input, scale, zero_point, options)

///|
pub fn MLGraphBuilder::dequantize_linear_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  scale : MLOperand,
  zero_point : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::dequantize_linear_with_options_ffi(
    self,
    input,
    scale,
    zero_point,
    options.to_js(),
  )
}

///|
pub extern "js" fn MLGraphBuilder::quantize_linear(
  self : MLGraphBuilder,
  input : MLOperand,
  scale : MLOperand,
  zero_point : MLOperand,
) -> MLOperand =
  #| (self, input, scale, zero_point) => self.quantizeLinear(input, scale, zero_point)

///|
extern "js" fn MLGraphBuilder::quantize_linear_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  scale : MLOperand,
  zero_point : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, scale, zero_point, options) => self.quantizeLinear(input, scale, zero_point, options)

///|
pub fn MLGraphBuilder::quantize_linear_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  scale : MLOperand,
  zero_point : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::quantize_linear_with_options_ffi(
    self,
    input,
    scale,
    zero_point,
    options.to_js(),
  )
}

///|
pub extern "js" fn MLGraphBuilder::elu(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.elu(input)

///|
extern "js" fn MLGraphBuilder::elu_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.elu(input, options)

///|
pub fn MLGraphBuilder::elu_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLEluOptions,
) -> MLOperand {
  MLGraphBuilder::elu_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::expand(
  self : MLGraphBuilder,
  input : MLOperand,
  new_shape : Array[Int],
) -> MLOperand =
  #| (self, input, new_shape) => self.expand(input, new_shape)

///|
extern "js" fn MLGraphBuilder::expand_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  new_shape : Array[Int],
  options : JsValue,
) -> MLOperand =
  #| (self, input, new_shape, options) => self.expand(input, new_shape, options)

///|
pub fn MLGraphBuilder::expand_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  new_shape : Array[Int],
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::expand_with_options_ffi(
    self,
    input,
    new_shape,
    options.to_js(),
  )
}

///|
pub extern "js" fn MLGraphBuilder::gather(
  self : MLGraphBuilder,
  input : MLOperand,
  indices : MLOperand,
) -> MLOperand =
  #| (self, input, indices) => self.gather(input, indices)

///|
extern "js" fn MLGraphBuilder::gather_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  indices : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, indices, options) => self.gather(input, indices, options)

///|
pub fn MLGraphBuilder::gather_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  indices : MLOperand,
  options : MLGatherOptions,
) -> MLOperand {
  MLGraphBuilder::gather_with_options_ffi(self, input, indices, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::gather_elements(
  self : MLGraphBuilder,
  input : MLOperand,
  indices : MLOperand,
) -> MLOperand =
  #| (self, input, indices) => self.gatherElements(input, indices)

///|
extern "js" fn MLGraphBuilder::gather_elements_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  indices : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, indices, options) => self.gatherElements(input, indices, options)

///|
pub fn MLGraphBuilder::gather_elements_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  indices : MLOperand,
  options : MLGatherOptions,
) -> MLOperand {
  MLGraphBuilder::gather_elements_with_options_ffi(
    self,
    input,
    indices,
    options.to_js(),
  )
}

///|
pub extern "js" fn MLGraphBuilder::gather_nd(
  self : MLGraphBuilder,
  input : MLOperand,
  indices : MLOperand,
) -> MLOperand =
  #| (self, input, indices) => self.gatherND(input, indices)

///|
extern "js" fn MLGraphBuilder::gather_nd_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  indices : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, indices, options) => self.gatherND(input, indices, options)

///|
pub fn MLGraphBuilder::gather_nd_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  indices : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::gather_nd_with_options_ffi(
    self,
    input,
    indices,
    options.to_js(),
  )
}

///|
pub extern "js" fn MLGraphBuilder::gelu(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.gelu(input)

///|
extern "js" fn MLGraphBuilder::gelu_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.gelu(input, options)

///|
pub fn MLGraphBuilder::gelu_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::gelu_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::gemm(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.gemm(a, b)

///|
extern "js" fn MLGraphBuilder::gemm_with_options_ffi(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, a, b, options) => self.gemm(a, b, options)

///|
pub fn MLGraphBuilder::gemm_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLGemmOptions,
) -> MLOperand {
  MLGraphBuilder::gemm_with_options_ffi(self, a, b, options.to_js())
}

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
extern "js" fn MLGraphBuilder::gru_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  weight : MLOperand,
  recurrent_weight : MLOperand,
  steps : Int,
  hidden_size : Int,
  options : JsValue,
) -> Array[MLOperand] =
  #| (self, input, weight, recurrent_weight, steps, hidden_size, options) => self.gru(input, weight, recurrent_weight, steps, hidden_size, options)

///|
pub fn MLGraphBuilder::gru_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  weight : MLOperand,
  recurrent_weight : MLOperand,
  steps : Int,
  hidden_size : Int,
  options : MLGruOptions,
) -> Array[MLOperand] {
  MLGraphBuilder::gru_with_options_ffi(
    self,
    input,
    weight,
    recurrent_weight,
    steps,
    hidden_size,
    options.to_js(),
  )
}

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
extern "js" fn MLGraphBuilder::gru_cell_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  weight : MLOperand,
  recurrent_weight : MLOperand,
  hidden_state : MLOperand,
  hidden_size : Int,
  options : JsValue,
) -> MLOperand =
  #| (self, input, weight, recurrent_weight, hidden_state, hidden_size, options) => self.gruCell(input, weight, recurrent_weight, hidden_state, hidden_size, options)

///|
pub fn MLGraphBuilder::gru_cell_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  weight : MLOperand,
  recurrent_weight : MLOperand,
  hidden_state : MLOperand,
  hidden_size : Int,
  options : MLGruCellOptions,
) -> MLOperand {
  MLGraphBuilder::gru_cell_with_options_ffi(
    self,
    input,
    weight,
    recurrent_weight,
    hidden_state,
    hidden_size,
    options.to_js(),
  )
}

///|
pub extern "js" fn MLGraphBuilder::hard_sigmoid(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.hardSigmoid(input)

///|
extern "js" fn MLGraphBuilder::hard_sigmoid_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.hardSigmoid(input, options)

///|
pub fn MLGraphBuilder::hard_sigmoid_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLHardSigmoidOptions,
) -> MLOperand {
  MLGraphBuilder::hard_sigmoid_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::hard_swish(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.hardSwish(input)

///|
extern "js" fn MLGraphBuilder::hard_swish_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.hardSwish(input, options)

///|
pub fn MLGraphBuilder::hard_swish_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::hard_swish_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::instance_normalization(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.instanceNormalization(input)

///|
extern "js" fn MLGraphBuilder::instance_normalization_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.instanceNormalization(input, options)

///|
pub fn MLGraphBuilder::instance_normalization_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLInstanceNormalizationOptions,
) -> MLOperand {
  MLGraphBuilder::instance_normalization_with_options_ffi(
    self,
    input,
    options.to_js(),
  )
}

///|
pub extern "js" fn MLGraphBuilder::layer_normalization(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.layerNormalization(input)

///|
extern "js" fn MLGraphBuilder::layer_normalization_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.layerNormalization(input, options)

///|
pub fn MLGraphBuilder::layer_normalization_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLLayerNormalizationOptions,
) -> MLOperand {
  MLGraphBuilder::layer_normalization_with_options_ffi(
    self,
    input,
    options.to_js(),
  )
}

///|
pub extern "js" fn MLGraphBuilder::leaky_relu(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.leakyRelu(input)

///|
extern "js" fn MLGraphBuilder::leaky_relu_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.leakyRelu(input, options)

///|
pub fn MLGraphBuilder::leaky_relu_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLLeakyReluOptions,
) -> MLOperand {
  MLGraphBuilder::leaky_relu_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::linear(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.linear(input)

///|
extern "js" fn MLGraphBuilder::linear_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.linear(input, options)

///|
pub fn MLGraphBuilder::linear_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLLinearOptions,
) -> MLOperand {
  MLGraphBuilder::linear_with_options_ffi(self, input, options.to_js())
}

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
extern "js" fn MLGraphBuilder::lstm_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  weight : MLOperand,
  recurrent_weight : MLOperand,
  steps : Int,
  hidden_size : Int,
  options : JsValue,
) -> Array[MLOperand] =
  #| (self, input, weight, recurrent_weight, steps, hidden_size, options) => self.lstm(input, weight, recurrent_weight, steps, hidden_size, options)

///|
pub fn MLGraphBuilder::lstm_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  weight : MLOperand,
  recurrent_weight : MLOperand,
  steps : Int,
  hidden_size : Int,
  options : MLLstmOptions,
) -> Array[MLOperand] {
  MLGraphBuilder::lstm_with_options_ffi(
    self,
    input,
    weight,
    recurrent_weight,
    steps,
    hidden_size,
    options.to_js(),
  )
}

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
extern "js" fn MLGraphBuilder::lstm_cell_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  weight : MLOperand,
  recurrent_weight : MLOperand,
  hidden_state : MLOperand,
  cell_state : MLOperand,
  hidden_size : Int,
  options : JsValue,
) -> Array[MLOperand] =
  #| (self, input, weight, recurrent_weight, hidden_state, cell_state, hidden_size, options) => self.lstmCell(input, weight, recurrent_weight, hidden_state, cell_state, hidden_size, options)

///|
pub fn MLGraphBuilder::lstm_cell_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  weight : MLOperand,
  recurrent_weight : MLOperand,
  hidden_state : MLOperand,
  cell_state : MLOperand,
  hidden_size : Int,
  options : MLLstmCellOptions,
) -> Array[MLOperand] {
  MLGraphBuilder::lstm_cell_with_options_ffi(
    self,
    input,
    weight,
    recurrent_weight,
    hidden_state,
    cell_state,
    hidden_size,
    options.to_js(),
  )
}

///|
pub extern "js" fn MLGraphBuilder::matmul(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
) -> MLOperand =
  #| (self, a, b) => self.matmul(a, b)

///|
extern "js" fn MLGraphBuilder::matmul_with_options_ffi(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, a, b, options) => self.matmul(a, b, options)

///|
pub fn MLGraphBuilder::matmul_with_options(
  self : MLGraphBuilder,
  a : MLOperand,
  b : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::matmul_with_options_ffi(self, a, b, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::pad(
  self : MLGraphBuilder,
  input : MLOperand,
  beginning_padding : Array[Int],
  ending_padding : Array[Int],
) -> MLOperand =
  #| (self, input, beginning_padding, ending_padding) => self.pad(input, beginning_padding, ending_padding)

///|
extern "js" fn MLGraphBuilder::pad_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  beginning_padding : Array[Int],
  ending_padding : Array[Int],
  options : JsValue,
) -> MLOperand =
  #| (self, input, beginning_padding, ending_padding, options) => self.pad(input, beginning_padding, ending_padding, options)

///|
pub fn MLGraphBuilder::pad_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  beginning_padding : Array[Int],
  ending_padding : Array[Int],
  options : MLPadOptions,
) -> MLOperand {
  MLGraphBuilder::pad_with_options_ffi(
    self,
    input,
    beginning_padding,
    ending_padding,
    options.to_js(),
  )
}

///|
pub extern "js" fn MLGraphBuilder::average_pool2d(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.averagePool2d(input)

///|
extern "js" fn MLGraphBuilder::average_pool2d_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.averagePool2d(input, options)

///|
pub fn MLGraphBuilder::average_pool2d_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLPool2dOptions,
) -> MLOperand {
  MLGraphBuilder::average_pool2d_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::l2_pool2d(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.l2Pool2d(input)

///|
extern "js" fn MLGraphBuilder::l2_pool2d_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.l2Pool2d(input, options)

///|
pub fn MLGraphBuilder::l2_pool2d_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLPool2dOptions,
) -> MLOperand {
  MLGraphBuilder::l2_pool2d_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::max_pool2d(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.maxPool2d(input)

///|
extern "js" fn MLGraphBuilder::max_pool2d_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.maxPool2d(input, options)

///|
pub fn MLGraphBuilder::max_pool2d_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLPool2dOptions,
) -> MLOperand {
  MLGraphBuilder::max_pool2d_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::prelu(
  self : MLGraphBuilder,
  input : MLOperand,
  slope : MLOperand,
) -> MLOperand =
  #| (self, input, slope) => self.prelu(input, slope)

///|
extern "js" fn MLGraphBuilder::prelu_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  slope : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, slope, options) => self.prelu(input, slope, options)

///|
pub fn MLGraphBuilder::prelu_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  slope : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::prelu_with_options_ffi(self, input, slope, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::reduce_l1(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.reduceL1(input)

///|
extern "js" fn MLGraphBuilder::reduce_l1_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.reduceL1(input, options)

///|
pub fn MLGraphBuilder::reduce_l1_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLReduceOptions,
) -> MLOperand {
  MLGraphBuilder::reduce_l1_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::reduce_l2(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.reduceL2(input)

///|
extern "js" fn MLGraphBuilder::reduce_l2_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.reduceL2(input, options)

///|
pub fn MLGraphBuilder::reduce_l2_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLReduceOptions,
) -> MLOperand {
  MLGraphBuilder::reduce_l2_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::reduce_log_sum(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.reduceLogSum(input)

///|
extern "js" fn MLGraphBuilder::reduce_log_sum_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.reduceLogSum(input, options)

///|
pub fn MLGraphBuilder::reduce_log_sum_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLReduceOptions,
) -> MLOperand {
  MLGraphBuilder::reduce_log_sum_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::reduce_log_sum_exp(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.reduceLogSumExp(input)

///|
extern "js" fn MLGraphBuilder::reduce_log_sum_exp_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.reduceLogSumExp(input, options)

///|
pub fn MLGraphBuilder::reduce_log_sum_exp_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLReduceOptions,
) -> MLOperand {
  MLGraphBuilder::reduce_log_sum_exp_with_options_ffi(
    self,
    input,
    options.to_js(),
  )
}

///|
pub extern "js" fn MLGraphBuilder::reduce_max(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.reduceMax(input)

///|
extern "js" fn MLGraphBuilder::reduce_max_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.reduceMax(input, options)

///|
pub fn MLGraphBuilder::reduce_max_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLReduceOptions,
) -> MLOperand {
  MLGraphBuilder::reduce_max_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::reduce_mean(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.reduceMean(input)

///|
extern "js" fn MLGraphBuilder::reduce_mean_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.reduceMean(input, options)

///|
pub fn MLGraphBuilder::reduce_mean_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLReduceOptions,
) -> MLOperand {
  MLGraphBuilder::reduce_mean_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::reduce_min(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.reduceMin(input)

///|
extern "js" fn MLGraphBuilder::reduce_min_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.reduceMin(input, options)

///|
pub fn MLGraphBuilder::reduce_min_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLReduceOptions,
) -> MLOperand {
  MLGraphBuilder::reduce_min_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::reduce_product(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.reduceProduct(input)

///|
extern "js" fn MLGraphBuilder::reduce_product_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.reduceProduct(input, options)

///|
pub fn MLGraphBuilder::reduce_product_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLReduceOptions,
) -> MLOperand {
  MLGraphBuilder::reduce_product_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::reduce_sum(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.reduceSum(input)

///|
extern "js" fn MLGraphBuilder::reduce_sum_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.reduceSum(input, options)

///|
pub fn MLGraphBuilder::reduce_sum_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLReduceOptions,
) -> MLOperand {
  MLGraphBuilder::reduce_sum_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::reduce_sum_square(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.reduceSumSquare(input)

///|
extern "js" fn MLGraphBuilder::reduce_sum_square_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.reduceSumSquare(input, options)

///|
pub fn MLGraphBuilder::reduce_sum_square_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLReduceOptions,
) -> MLOperand {
  MLGraphBuilder::reduce_sum_square_with_options_ffi(
    self,
    input,
    options.to_js(),
  )
}

///|
pub extern "js" fn MLGraphBuilder::relu(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.relu(input)

///|
extern "js" fn MLGraphBuilder::relu_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.relu(input, options)

///|
pub fn MLGraphBuilder::relu_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::relu_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::resample2d(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.resample2d(input)

///|
extern "js" fn MLGraphBuilder::resample2d_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.resample2d(input, options)

///|
pub fn MLGraphBuilder::resample2d_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLResample2dOptions,
) -> MLOperand {
  MLGraphBuilder::resample2d_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::reshape(
  self : MLGraphBuilder,
  input : MLOperand,
  new_shape : Array[Int],
) -> MLOperand =
  #| (self, input, new_shape) => self.reshape(input, new_shape)

///|
extern "js" fn MLGraphBuilder::reshape_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  new_shape : Array[Int],
  options : JsValue,
) -> MLOperand =
  #| (self, input, new_shape, options) => self.reshape(input, new_shape, options)

///|
pub fn MLGraphBuilder::reshape_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  new_shape : Array[Int],
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::reshape_with_options_ffi(
    self,
    input,
    new_shape,
    options.to_js(),
  )
}

///|
pub extern "js" fn MLGraphBuilder::reverse(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.reverse(input)

///|
extern "js" fn MLGraphBuilder::reverse_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.reverse(input, options)

///|
pub fn MLGraphBuilder::reverse_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLReverseOptions,
) -> MLOperand {
  MLGraphBuilder::reverse_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::scatter_elements(
  self : MLGraphBuilder,
  input : MLOperand,
  indices : MLOperand,
  updates : MLOperand,
) -> MLOperand =
  #| (self, input, indices, updates) => self.scatterElements(input, indices, updates)

///|
extern "js" fn MLGraphBuilder::scatter_elements_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  indices : MLOperand,
  updates : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, indices, updates, options) => self.scatterElements(input, indices, updates, options)

///|
pub fn MLGraphBuilder::scatter_elements_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  indices : MLOperand,
  updates : MLOperand,
  options : MLScatterOptions,
) -> MLOperand {
  MLGraphBuilder::scatter_elements_with_options_ffi(
    self,
    input,
    indices,
    updates,
    options.to_js(),
  )
}

///|
pub extern "js" fn MLGraphBuilder::scatter_nd(
  self : MLGraphBuilder,
  input : MLOperand,
  indices : MLOperand,
  updates : MLOperand,
) -> MLOperand =
  #| (self, input, indices, updates) => self.scatterND(input, indices, updates)

///|
extern "js" fn MLGraphBuilder::scatter_nd_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  indices : MLOperand,
  updates : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, indices, updates, options) => self.scatterND(input, indices, updates, options)

///|
pub fn MLGraphBuilder::scatter_nd_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  indices : MLOperand,
  updates : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::scatter_nd_with_options_ffi(
    self,
    input,
    indices,
    updates,
    options.to_js(),
  )
}

///|
pub extern "js" fn MLGraphBuilder::sigmoid(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.sigmoid(input)

///|
extern "js" fn MLGraphBuilder::sigmoid_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.sigmoid(input, options)

///|
pub fn MLGraphBuilder::sigmoid_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::sigmoid_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::slice(
  self : MLGraphBuilder,
  input : MLOperand,
  starts : Array[Int],
  sizes : Array[Int],
) -> MLOperand =
  #| (self, input, starts, sizes) => self.slice(input, starts, sizes)

///|
extern "js" fn MLGraphBuilder::slice_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  starts : Array[Int],
  sizes : Array[Int],
  options : JsValue,
) -> MLOperand =
  #| (self, input, starts, sizes, options) => self.slice(input, starts, sizes, options)

///|
pub fn MLGraphBuilder::slice_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  starts : Array[Int],
  sizes : Array[Int],
  options : MLSliceOptions,
) -> MLOperand {
  MLGraphBuilder::slice_with_options_ffi(
    self,
    input,
    starts,
    sizes,
    options.to_js(),
  )
}

///|
pub extern "js" fn MLGraphBuilder::softmax(
  self : MLGraphBuilder,
  input : MLOperand,
  axis : Int,
) -> MLOperand =
  #| (self, input, axis) => self.softmax(input, axis)

///|
extern "js" fn MLGraphBuilder::softmax_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  axis : Int,
  options : JsValue,
) -> MLOperand =
  #| (self, input, axis, options) => self.softmax(input, axis, options)

///|
pub fn MLGraphBuilder::softmax_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  axis : Int,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::softmax_with_options_ffi(self, input, axis, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::softplus(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.softplus(input)

///|
extern "js" fn MLGraphBuilder::softplus_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.softplus(input, options)

///|
pub fn MLGraphBuilder::softplus_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::softplus_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::softsign(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.softsign(input)

///|
extern "js" fn MLGraphBuilder::softsign_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.softsign(input, options)

///|
pub fn MLGraphBuilder::softsign_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::softsign_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::split(
  self : MLGraphBuilder,
  input : MLOperand,
  splits : IntOrArrayOfInt,
) -> Array[MLOperand] =
  #| (self, input, splits) => self.split(input, splits)

///|
extern "js" fn MLGraphBuilder::split_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  splits : IntOrArrayOfInt,
  options : JsValue,
) -> Array[MLOperand] =
  #| (self, input, splits, options) => self.split(input, splits, options)

///|
pub fn MLGraphBuilder::split_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  splits : IntOrArrayOfInt,
  options : MLSplitOptions,
) -> Array[MLOperand] {
  MLGraphBuilder::split_with_options_ffi(self, input, splits, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::tanh(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.tanh(input)

///|
extern "js" fn MLGraphBuilder::tanh_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.tanh(input, options)

///|
pub fn MLGraphBuilder::tanh_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::tanh_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::tile(
  self : MLGraphBuilder,
  input : MLOperand,
  repetitions : Array[Int],
) -> MLOperand =
  #| (self, input, repetitions) => self.tile(input, repetitions)

///|
extern "js" fn MLGraphBuilder::tile_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  repetitions : Array[Int],
  options : JsValue,
) -> MLOperand =
  #| (self, input, repetitions, options) => self.tile(input, repetitions, options)

///|
pub fn MLGraphBuilder::tile_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  repetitions : Array[Int],
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::tile_with_options_ffi(
    self,
    input,
    repetitions,
    options.to_js(),
  )
}

///|
pub extern "js" fn MLGraphBuilder::transpose(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.transpose(input)

///|
extern "js" fn MLGraphBuilder::transpose_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.transpose(input, options)

///|
pub fn MLGraphBuilder::transpose_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLTransposeOptions,
) -> MLOperand {
  MLGraphBuilder::transpose_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::triangular(
  self : MLGraphBuilder,
  input : MLOperand,
) -> MLOperand =
  #| (self, input) => self.triangular(input)

///|
extern "js" fn MLGraphBuilder::triangular_with_options_ffi(
  self : MLGraphBuilder,
  input : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, input, options) => self.triangular(input, options)

///|
pub fn MLGraphBuilder::triangular_with_options(
  self : MLGraphBuilder,
  input : MLOperand,
  options : MLTriangularOptions,
) -> MLOperand {
  MLGraphBuilder::triangular_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn MLGraphBuilder::where_(
  self : MLGraphBuilder,
  condition : MLOperand,
  true_value : MLOperand,
  false_value : MLOperand,
) -> MLOperand =
  #| (self, condition, true_value, false_value) => self.where(condition, true_value, false_value)

///|
extern "js" fn MLGraphBuilder::where__with_options_ffi(
  self : MLGraphBuilder,
  condition : MLOperand,
  true_value : MLOperand,
  false_value : MLOperand,
  options : JsValue,
) -> MLOperand =
  #| (self, condition, true_value, false_value, options) => self.where(condition, true_value, false_value, options)

///|
pub fn MLGraphBuilder::where__with_options(
  self : MLGraphBuilder,
  condition : MLOperand,
  true_value : MLOperand,
  false_value : MLOperand,
  options : MLOperatorOptions,
) -> MLOperand {
  MLGraphBuilder::where__with_options_ffi(
    self,
    condition,
    true_value,
    false_value,
    options.to_js(),
  )
}

///|
pub extern "js" fn MLGraphBuilder::constant_with_array_buffer(
  self : MLGraphBuilder,
  descriptor : MLOperandDescriptor,
  buffer : ArrayBuffer,
) -> MLOperand =
  #| (self, descriptor, buffer) => self.constant(descriptor, buffer)

///|
pub extern "js" fn MLGraphBuilder::constant_with_shared_array_buffer(
  self : MLGraphBuilder,
  descriptor : MLOperandDescriptor,
  buffer : SharedArrayBuffer,
) -> MLOperand =
  #| (self, descriptor, buffer) => self.constant(descriptor, buffer)

///|
pub extern "js" fn MLGraphBuilder::constant_with_array_buffer_view(
  self : MLGraphBuilder,
  descriptor : MLOperandDescriptor,
  buffer : ArrayBufferView,
) -> MLOperand =
  #| (self, descriptor, buffer) => self.constant(descriptor, buffer)

///|
pub extern "js" fn MLGraphBuilder::constant_with_double(
  self : MLGraphBuilder,
  data_type : MLOperandDataType,
  value : Double,
) -> MLOperand =
  #| (self, data_type, value) => self.constant(['float32', 'float16', 'int32', 'uint32', 'int64', 'uint64', 'int8', 'uint8'][data_type], value)
