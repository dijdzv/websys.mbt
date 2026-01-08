// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webgpu

///|
/// GPUBufferUsageFlags typedef
pub type GPUBufferUsageFlags = Int

///|
/// GPUMapModeFlags typedef
pub type GPUMapModeFlags = Int

///|
/// GPUTextureUsageFlags typedef
pub type GPUTextureUsageFlags = Int

///|
/// GPUShaderStageFlags typedef
pub type GPUShaderStageFlags = Int

///|
/// GPUBindingResource typedef
pub type GPUBindingResource

///|
pub extern "js" fn GPUBindingResource::to_js_value(
  self : GPUBindingResource,
) -> JsValue =
  #| (self) => self

///|
/// Create GPUBindingResource from GPUSampler
pub extern "js" fn GPUBindingResource::from_g_p_u_sampler(
  v : GPUSampler,
) -> GPUBindingResource =
  #| (v) => v

///|
/// Create GPUBindingResource from GPUTexture
pub extern "js" fn GPUBindingResource::from_g_p_u_texture(
  v : GPUTexture,
) -> GPUBindingResource =
  #| (v) => v

///|
/// Create GPUBindingResource from GPUTextureView
pub extern "js" fn GPUBindingResource::from_g_p_u_texture_view(
  v : GPUTextureView,
) -> GPUBindingResource =
  #| (v) => v

///|
/// Create GPUBindingResource from GPUBuffer
pub extern "js" fn GPUBindingResource::from_g_p_u_buffer(
  v : GPUBuffer,
) -> GPUBindingResource =
  #| (v) => v

///|
/// Create GPUBindingResource from GPUBufferBinding
pub extern "js" fn GPUBindingResource::from_g_p_u_buffer_binding(
  v : GPUBufferBinding,
) -> GPUBindingResource =
  #| (v) => v

///|
/// Create GPUBindingResource from GPUExternalTexture
pub extern "js" fn GPUBindingResource::from_g_p_u_external_texture(
  v : GPUExternalTexture,
) -> GPUBindingResource =
  #| (v) => v

///|
/// GPUPipelineConstantValue typedef
pub type GPUPipelineConstantValue = Double

///|
/// GPUColorWriteFlags typedef
pub type GPUColorWriteFlags = Int

///|
/// GPUCopyExternalImageSource typedef
pub type GPUCopyExternalImageSource

///|
pub extern "js" fn GPUCopyExternalImageSource::to_js_value(
  self : GPUCopyExternalImageSource,
) -> JsValue =
  #| (self) => self

///|
/// Create GPUCopyExternalImageSource from ImageBitmap
pub extern "js" fn GPUCopyExternalImageSource::from_image_bitmap(
  v : ImageBitmap,
) -> GPUCopyExternalImageSource =
  #| (v) => v

///|
/// Create GPUCopyExternalImageSource from ImageData
pub extern "js" fn GPUCopyExternalImageSource::from_image_data(
  v : ImageData,
) -> GPUCopyExternalImageSource =
  #| (v) => v

///|
/// Create GPUCopyExternalImageSource from HTMLImageElement
pub extern "js" fn GPUCopyExternalImageSource::from_h_t_m_l_image_element(
  v : HTMLImageElement,
) -> GPUCopyExternalImageSource =
  #| (v) => v

///|
/// Create GPUCopyExternalImageSource from HTMLVideoElement
pub extern "js" fn GPUCopyExternalImageSource::from_h_t_m_l_video_element(
  v : HTMLVideoElement,
) -> GPUCopyExternalImageSource =
  #| (v) => v

///|
/// Create GPUCopyExternalImageSource from VideoFrame
pub extern "js" fn GPUCopyExternalImageSource::from_video_frame(
  v : VideoFrame,
) -> GPUCopyExternalImageSource =
  #| (v) => v

///|
/// Create GPUCopyExternalImageSource from HTMLCanvasElement
pub extern "js" fn GPUCopyExternalImageSource::from_h_t_m_l_canvas_element(
  v : HTMLCanvasElement,
) -> GPUCopyExternalImageSource =
  #| (v) => v

///|
/// Create GPUCopyExternalImageSource from OffscreenCanvas
pub extern "js" fn GPUCopyExternalImageSource::from_offscreen_canvas(
  v : OffscreenCanvas,
) -> GPUCopyExternalImageSource =
  #| (v) => v

///|
/// GPUBufferDynamicOffset typedef
pub type GPUBufferDynamicOffset = Int

///|
/// GPUStencilValue typedef
pub type GPUStencilValue = Int

///|
/// GPUSampleMask typedef
pub type GPUSampleMask = Int

///|
/// GPUDepthBias typedef
pub type GPUDepthBias = Int

///|
/// GPUSize64 typedef
pub type GPUSize64 = Int64

///|
/// GPUIntegerCoordinate typedef
pub type GPUIntegerCoordinate = Int

///|
/// GPUIndex32 typedef
pub type GPUIndex32 = Int

///|
/// GPUSize32 typedef
pub type GPUSize32 = Int

///|
/// GPUSignedOffset32 typedef
pub type GPUSignedOffset32 = Int

///|
/// GPUSize64Out typedef
pub type GPUSize64Out = Int64

///|
/// GPUIntegerCoordinateOut typedef
pub type GPUIntegerCoordinateOut = Int

///|
/// GPUSize32Out typedef
pub type GPUSize32Out = Int

///|
/// GPUFlagsConstant typedef
pub type GPUFlagsConstant = Int

///|
/// GPUColor typedef
pub type GPUColor

///|
pub extern "js" fn GPUColor::to_js_value(self : GPUColor) -> JsValue =
  #| (self) => self

///|
/// Create GPUColor from Array[Double]
pub extern "js" fn GPUColor::from_array_of_double(
  v : Array[Double],
) -> GPUColor =
  #| (v) => v

///|
/// Create GPUColor from GPUColorDict
pub extern "js" fn GPUColor::from_g_p_u_color_dict(
  v : GPUColorDict,
) -> GPUColor =
  #| (v) => v

///|
/// GPUOrigin2D typedef
pub type GPUOrigin2D

///|
pub extern "js" fn GPUOrigin2D::to_js_value(self : GPUOrigin2D) -> JsValue =
  #| (self) => self

///|
/// Create GPUOrigin2D from Array[GPUIntegerCoordinate]
pub extern "js" fn GPUOrigin2D::from_array_of_g_p_u_integer_coordinate(
  v : Array[GPUIntegerCoordinate],
) -> GPUOrigin2D =
  #| (v) => v

///|
/// Create GPUOrigin2D from GPUOrigin2DDict
pub extern "js" fn GPUOrigin2D::from_g_p_u_origin2_d_dict(
  v : GPUOrigin2DDict,
) -> GPUOrigin2D =
  #| (v) => v

///|
/// GPUOrigin3D typedef
pub type GPUOrigin3D

///|
pub extern "js" fn GPUOrigin3D::to_js_value(self : GPUOrigin3D) -> JsValue =
  #| (self) => self

///|
/// Create GPUOrigin3D from Array[GPUIntegerCoordinate]
pub extern "js" fn GPUOrigin3D::from_array_of_g_p_u_integer_coordinate(
  v : Array[GPUIntegerCoordinate],
) -> GPUOrigin3D =
  #| (v) => v

///|
/// Create GPUOrigin3D from GPUOrigin3DDict
pub extern "js" fn GPUOrigin3D::from_g_p_u_origin3_d_dict(
  v : GPUOrigin3DDict,
) -> GPUOrigin3D =
  #| (v) => v

///|
/// GPUExtent3D typedef
pub type GPUExtent3D

///|
pub extern "js" fn GPUExtent3D::to_js_value(self : GPUExtent3D) -> JsValue =
  #| (self) => self

///|
/// Create GPUExtent3D from Array[GPUIntegerCoordinate]
pub extern "js" fn GPUExtent3D::from_array_of_g_p_u_integer_coordinate(
  v : Array[GPUIntegerCoordinate],
) -> GPUExtent3D =
  #| (v) => v

///|
/// Create GPUExtent3D from GPUExtent3DDict
pub extern "js" fn GPUExtent3D::from_g_p_u_extent3_d_dict(
  v : GPUExtent3DDict,
) -> GPUExtent3D =
  #| (v) => v

///|
/// GPUPowerPreference enum
pub(all) enum GPUPowerPreference {
  LowPower
  HighPerformance
}

///|
/// Convert to string value
pub fn GPUPowerPreference::to_string(self : GPUPowerPreference) -> String {
  match self {
    LowPower => "low-power"
    HighPerformance => "high-performance"
  }
}

///|
/// Parse from string value
pub fn GPUPowerPreference::from_string(s : String) -> GPUPowerPreference? {
  match s {
    "low-power" => Some(LowPower)
    "high-performance" => Some(HighPerformance)
    _ => None
  }
}

///|
/// GPUFeatureName enum
pub(all) enum GPUFeatureName {
  CoreFeaturesAndLimits
  DepthClipControl
  Depth32floatStencil8
  TextureCompressionBc
  TextureCompressionBcSliced3d
  TextureCompressionEtc2
  TextureCompressionAstc
  TextureCompressionAstcSliced3d
  TimestampQuery
  IndirectFirstInstance
  ShaderF16
  Rg11b10ufloatRenderable
  Bgra8unormStorage
  Float32Filterable
  Float32Blendable
  ClipDistances
  DualSourceBlending
  Subgroups
  TextureFormatsTier1
  TextureFormatsTier2
  PrimitiveIndex
  TextureComponentSwizzle
}

///|
/// Convert to string value
pub fn GPUFeatureName::to_string(self : GPUFeatureName) -> String {
  match self {
    CoreFeaturesAndLimits => "core-features-and-limits"
    DepthClipControl => "depth-clip-control"
    Depth32floatStencil8 => "depth32float-stencil8"
    TextureCompressionBc => "texture-compression-bc"
    TextureCompressionBcSliced3d => "texture-compression-bc-sliced-3d"
    TextureCompressionEtc2 => "texture-compression-etc2"
    TextureCompressionAstc => "texture-compression-astc"
    TextureCompressionAstcSliced3d => "texture-compression-astc-sliced-3d"
    TimestampQuery => "timestamp-query"
    IndirectFirstInstance => "indirect-first-instance"
    ShaderF16 => "shader-f16"
    Rg11b10ufloatRenderable => "rg11b10ufloat-renderable"
    Bgra8unormStorage => "bgra8unorm-storage"
    Float32Filterable => "float32-filterable"
    Float32Blendable => "float32-blendable"
    ClipDistances => "clip-distances"
    DualSourceBlending => "dual-source-blending"
    Subgroups => "subgroups"
    TextureFormatsTier1 => "texture-formats-tier1"
    TextureFormatsTier2 => "texture-formats-tier2"
    PrimitiveIndex => "primitive-index"
    TextureComponentSwizzle => "texture-component-swizzle"
  }
}

///|
/// Parse from string value
pub fn GPUFeatureName::from_string(s : String) -> GPUFeatureName? {
  match s {
    "core-features-and-limits" => Some(CoreFeaturesAndLimits)
    "depth-clip-control" => Some(DepthClipControl)
    "depth32float-stencil8" => Some(Depth32floatStencil8)
    "texture-compression-bc" => Some(TextureCompressionBc)
    "texture-compression-bc-sliced-3d" => Some(TextureCompressionBcSliced3d)
    "texture-compression-etc2" => Some(TextureCompressionEtc2)
    "texture-compression-astc" => Some(TextureCompressionAstc)
    "texture-compression-astc-sliced-3d" => Some(TextureCompressionAstcSliced3d)
    "timestamp-query" => Some(TimestampQuery)
    "indirect-first-instance" => Some(IndirectFirstInstance)
    "shader-f16" => Some(ShaderF16)
    "rg11b10ufloat-renderable" => Some(Rg11b10ufloatRenderable)
    "bgra8unorm-storage" => Some(Bgra8unormStorage)
    "float32-filterable" => Some(Float32Filterable)
    "float32-blendable" => Some(Float32Blendable)
    "clip-distances" => Some(ClipDistances)
    "dual-source-blending" => Some(DualSourceBlending)
    "subgroups" => Some(Subgroups)
    "texture-formats-tier1" => Some(TextureFormatsTier1)
    "texture-formats-tier2" => Some(TextureFormatsTier2)
    "primitive-index" => Some(PrimitiveIndex)
    "texture-component-swizzle" => Some(TextureComponentSwizzle)
    _ => None
  }
}

///|
/// GPUBufferMapState enum
pub(all) enum GPUBufferMapState {
  Unmapped
  Pending
  Mapped
}

///|
/// Convert to string value
pub fn GPUBufferMapState::to_string(self : GPUBufferMapState) -> String {
  match self {
    Unmapped => "unmapped"
    Pending => "pending"
    Mapped => "mapped"
  }
}

///|
/// Parse from string value
pub fn GPUBufferMapState::from_string(s : String) -> GPUBufferMapState? {
  match s {
    "unmapped" => Some(Unmapped)
    "pending" => Some(Pending)
    "mapped" => Some(Mapped)
    _ => None
  }
}

///|
/// GPUTextureDimension enum
pub(all) enum GPUTextureDimension {
  N1d
  N2d
  N3d
}

///|
/// Convert to string value
pub fn GPUTextureDimension::to_string(self : GPUTextureDimension) -> String {
  match self {
    N1d => "1d"
    N2d => "2d"
    N3d => "3d"
  }
}

///|
/// Parse from string value
pub fn GPUTextureDimension::from_string(s : String) -> GPUTextureDimension? {
  match s {
    "1d" => Some(N1d)
    "2d" => Some(N2d)
    "3d" => Some(N3d)
    _ => None
  }
}

///|
/// GPUTextureViewDimension enum
pub(all) enum GPUTextureViewDimension {
  N1d
  N2d
  N2dArray
  Cube
  CubeArray
  N3d
}

///|
/// Convert to string value
pub fn GPUTextureViewDimension::to_string(
  self : GPUTextureViewDimension,
) -> String {
  match self {
    N1d => "1d"
    N2d => "2d"
    N2dArray => "2d-array"
    Cube => "cube"
    CubeArray => "cube-array"
    N3d => "3d"
  }
}

///|
/// Parse from string value
pub fn GPUTextureViewDimension::from_string(
  s : String,
) -> GPUTextureViewDimension? {
  match s {
    "1d" => Some(N1d)
    "2d" => Some(N2d)
    "2d-array" => Some(N2dArray)
    "cube" => Some(Cube)
    "cube-array" => Some(CubeArray)
    "3d" => Some(N3d)
    _ => None
  }
}

///|
/// GPUTextureAspect enum
pub(all) enum GPUTextureAspect {
  All
  StencilOnly
  DepthOnly
}

///|
/// Convert to string value
pub fn GPUTextureAspect::to_string(self : GPUTextureAspect) -> String {
  match self {
    All => "all"
    StencilOnly => "stencil-only"
    DepthOnly => "depth-only"
  }
}

///|
/// Parse from string value
pub fn GPUTextureAspect::from_string(s : String) -> GPUTextureAspect? {
  match s {
    "all" => Some(All)
    "stencil-only" => Some(StencilOnly)
    "depth-only" => Some(DepthOnly)
    _ => None
  }
}

///|
/// GPUTextureFormat enum
pub(all) enum GPUTextureFormat {
  R8unorm
  R8snorm
  R8uint
  R8sint
  R16unorm
  R16snorm
  R16uint
  R16sint
  R16float
  Rg8unorm
  Rg8snorm
  Rg8uint
  Rg8sint
  R32uint
  R32sint
  R32float
  Rg16unorm
  Rg16snorm
  Rg16uint
  Rg16sint
  Rg16float
  Rgba8unorm
  Rgba8unormSrgb
  Rgba8snorm
  Rgba8uint
  Rgba8sint
  Bgra8unorm
  Bgra8unormSrgb
  Rgb9e5ufloat
  Rgb10a2uint
  Rgb10a2unorm
  Rg11b10ufloat
  Rg32uint
  Rg32sint
  Rg32float
  Rgba16unorm
  Rgba16snorm
  Rgba16uint
  Rgba16sint
  Rgba16float
  Rgba32uint
  Rgba32sint
  Rgba32float
  Stencil8
  Depth16unorm
  Depth24plus
  Depth24plusStencil8
  Depth32float
  Depth32floatStencil8
  Bc1RgbaUnorm
  Bc1RgbaUnormSrgb
  Bc2RgbaUnorm
  Bc2RgbaUnormSrgb
  Bc3RgbaUnorm
  Bc3RgbaUnormSrgb
  Bc4RUnorm
  Bc4RSnorm
  Bc5RgUnorm
  Bc5RgSnorm
  Bc6hRgbUfloat
  Bc6hRgbFloat
  Bc7RgbaUnorm
  Bc7RgbaUnormSrgb
  Etc2Rgb8unorm
  Etc2Rgb8unormSrgb
  Etc2Rgb8a1unorm
  Etc2Rgb8a1unormSrgb
  Etc2Rgba8unorm
  Etc2Rgba8unormSrgb
  EacR11unorm
  EacR11snorm
  EacRg11unorm
  EacRg11snorm
  Astc4x4Unorm
  Astc4x4UnormSrgb
  Astc5x4Unorm
  Astc5x4UnormSrgb
  Astc5x5Unorm
  Astc5x5UnormSrgb
  Astc6x5Unorm
  Astc6x5UnormSrgb
  Astc6x6Unorm
  Astc6x6UnormSrgb
  Astc8x5Unorm
  Astc8x5UnormSrgb
  Astc8x6Unorm
  Astc8x6UnormSrgb
  Astc8x8Unorm
  Astc8x8UnormSrgb
  Astc10x5Unorm
  Astc10x5UnormSrgb
  Astc10x6Unorm
  Astc10x6UnormSrgb
  Astc10x8Unorm
  Astc10x8UnormSrgb
  Astc10x10Unorm
  Astc10x10UnormSrgb
  Astc12x10Unorm
  Astc12x10UnormSrgb
  Astc12x12Unorm
  Astc12x12UnormSrgb
}

///|
/// Convert to string value
pub fn GPUTextureFormat::to_string(self : GPUTextureFormat) -> String {
  match self {
    R8unorm => "r8unorm"
    R8snorm => "r8snorm"
    R8uint => "r8uint"
    R8sint => "r8sint"
    R16unorm => "r16unorm"
    R16snorm => "r16snorm"
    R16uint => "r16uint"
    R16sint => "r16sint"
    R16float => "r16float"
    Rg8unorm => "rg8unorm"
    Rg8snorm => "rg8snorm"
    Rg8uint => "rg8uint"
    Rg8sint => "rg8sint"
    R32uint => "r32uint"
    R32sint => "r32sint"
    R32float => "r32float"
    Rg16unorm => "rg16unorm"
    Rg16snorm => "rg16snorm"
    Rg16uint => "rg16uint"
    Rg16sint => "rg16sint"
    Rg16float => "rg16float"
    Rgba8unorm => "rgba8unorm"
    Rgba8unormSrgb => "rgba8unorm-srgb"
    Rgba8snorm => "rgba8snorm"
    Rgba8uint => "rgba8uint"
    Rgba8sint => "rgba8sint"
    Bgra8unorm => "bgra8unorm"
    Bgra8unormSrgb => "bgra8unorm-srgb"
    Rgb9e5ufloat => "rgb9e5ufloat"
    Rgb10a2uint => "rgb10a2uint"
    Rgb10a2unorm => "rgb10a2unorm"
    Rg11b10ufloat => "rg11b10ufloat"
    Rg32uint => "rg32uint"
    Rg32sint => "rg32sint"
    Rg32float => "rg32float"
    Rgba16unorm => "rgba16unorm"
    Rgba16snorm => "rgba16snorm"
    Rgba16uint => "rgba16uint"
    Rgba16sint => "rgba16sint"
    Rgba16float => "rgba16float"
    Rgba32uint => "rgba32uint"
    Rgba32sint => "rgba32sint"
    Rgba32float => "rgba32float"
    Stencil8 => "stencil8"
    Depth16unorm => "depth16unorm"
    Depth24plus => "depth24plus"
    Depth24plusStencil8 => "depth24plus-stencil8"
    Depth32float => "depth32float"
    Depth32floatStencil8 => "depth32float-stencil8"
    Bc1RgbaUnorm => "bc1-rgba-unorm"
    Bc1RgbaUnormSrgb => "bc1-rgba-unorm-srgb"
    Bc2RgbaUnorm => "bc2-rgba-unorm"
    Bc2RgbaUnormSrgb => "bc2-rgba-unorm-srgb"
    Bc3RgbaUnorm => "bc3-rgba-unorm"
    Bc3RgbaUnormSrgb => "bc3-rgba-unorm-srgb"
    Bc4RUnorm => "bc4-r-unorm"
    Bc4RSnorm => "bc4-r-snorm"
    Bc5RgUnorm => "bc5-rg-unorm"
    Bc5RgSnorm => "bc5-rg-snorm"
    Bc6hRgbUfloat => "bc6h-rgb-ufloat"
    Bc6hRgbFloat => "bc6h-rgb-float"
    Bc7RgbaUnorm => "bc7-rgba-unorm"
    Bc7RgbaUnormSrgb => "bc7-rgba-unorm-srgb"
    Etc2Rgb8unorm => "etc2-rgb8unorm"
    Etc2Rgb8unormSrgb => "etc2-rgb8unorm-srgb"
    Etc2Rgb8a1unorm => "etc2-rgb8a1unorm"
    Etc2Rgb8a1unormSrgb => "etc2-rgb8a1unorm-srgb"
    Etc2Rgba8unorm => "etc2-rgba8unorm"
    Etc2Rgba8unormSrgb => "etc2-rgba8unorm-srgb"
    EacR11unorm => "eac-r11unorm"
    EacR11snorm => "eac-r11snorm"
    EacRg11unorm => "eac-rg11unorm"
    EacRg11snorm => "eac-rg11snorm"
    Astc4x4Unorm => "astc-4x4-unorm"
    Astc4x4UnormSrgb => "astc-4x4-unorm-srgb"
    Astc5x4Unorm => "astc-5x4-unorm"
    Astc5x4UnormSrgb => "astc-5x4-unorm-srgb"
    Astc5x5Unorm => "astc-5x5-unorm"
    Astc5x5UnormSrgb => "astc-5x5-unorm-srgb"
    Astc6x5Unorm => "astc-6x5-unorm"
    Astc6x5UnormSrgb => "astc-6x5-unorm-srgb"
    Astc6x6Unorm => "astc-6x6-unorm"
    Astc6x6UnormSrgb => "astc-6x6-unorm-srgb"
    Astc8x5Unorm => "astc-8x5-unorm"
    Astc8x5UnormSrgb => "astc-8x5-unorm-srgb"
    Astc8x6Unorm => "astc-8x6-unorm"
    Astc8x6UnormSrgb => "astc-8x6-unorm-srgb"
    Astc8x8Unorm => "astc-8x8-unorm"
    Astc8x8UnormSrgb => "astc-8x8-unorm-srgb"
    Astc10x5Unorm => "astc-10x5-unorm"
    Astc10x5UnormSrgb => "astc-10x5-unorm-srgb"
    Astc10x6Unorm => "astc-10x6-unorm"
    Astc10x6UnormSrgb => "astc-10x6-unorm-srgb"
    Astc10x8Unorm => "astc-10x8-unorm"
    Astc10x8UnormSrgb => "astc-10x8-unorm-srgb"
    Astc10x10Unorm => "astc-10x10-unorm"
    Astc10x10UnormSrgb => "astc-10x10-unorm-srgb"
    Astc12x10Unorm => "astc-12x10-unorm"
    Astc12x10UnormSrgb => "astc-12x10-unorm-srgb"
    Astc12x12Unorm => "astc-12x12-unorm"
    Astc12x12UnormSrgb => "astc-12x12-unorm-srgb"
  }
}

///|
/// Parse from string value
pub fn GPUTextureFormat::from_string(s : String) -> GPUTextureFormat? {
  match s {
    "r8unorm" => Some(R8unorm)
    "r8snorm" => Some(R8snorm)
    "r8uint" => Some(R8uint)
    "r8sint" => Some(R8sint)
    "r16unorm" => Some(R16unorm)
    "r16snorm" => Some(R16snorm)
    "r16uint" => Some(R16uint)
    "r16sint" => Some(R16sint)
    "r16float" => Some(R16float)
    "rg8unorm" => Some(Rg8unorm)
    "rg8snorm" => Some(Rg8snorm)
    "rg8uint" => Some(Rg8uint)
    "rg8sint" => Some(Rg8sint)
    "r32uint" => Some(R32uint)
    "r32sint" => Some(R32sint)
    "r32float" => Some(R32float)
    "rg16unorm" => Some(Rg16unorm)
    "rg16snorm" => Some(Rg16snorm)
    "rg16uint" => Some(Rg16uint)
    "rg16sint" => Some(Rg16sint)
    "rg16float" => Some(Rg16float)
    "rgba8unorm" => Some(Rgba8unorm)
    "rgba8unorm-srgb" => Some(Rgba8unormSrgb)
    "rgba8snorm" => Some(Rgba8snorm)
    "rgba8uint" => Some(Rgba8uint)
    "rgba8sint" => Some(Rgba8sint)
    "bgra8unorm" => Some(Bgra8unorm)
    "bgra8unorm-srgb" => Some(Bgra8unormSrgb)
    "rgb9e5ufloat" => Some(Rgb9e5ufloat)
    "rgb10a2uint" => Some(Rgb10a2uint)
    "rgb10a2unorm" => Some(Rgb10a2unorm)
    "rg11b10ufloat" => Some(Rg11b10ufloat)
    "rg32uint" => Some(Rg32uint)
    "rg32sint" => Some(Rg32sint)
    "rg32float" => Some(Rg32float)
    "rgba16unorm" => Some(Rgba16unorm)
    "rgba16snorm" => Some(Rgba16snorm)
    "rgba16uint" => Some(Rgba16uint)
    "rgba16sint" => Some(Rgba16sint)
    "rgba16float" => Some(Rgba16float)
    "rgba32uint" => Some(Rgba32uint)
    "rgba32sint" => Some(Rgba32sint)
    "rgba32float" => Some(Rgba32float)
    "stencil8" => Some(Stencil8)
    "depth16unorm" => Some(Depth16unorm)
    "depth24plus" => Some(Depth24plus)
    "depth24plus-stencil8" => Some(Depth24plusStencil8)
    "depth32float" => Some(Depth32float)
    "depth32float-stencil8" => Some(Depth32floatStencil8)
    "bc1-rgba-unorm" => Some(Bc1RgbaUnorm)
    "bc1-rgba-unorm-srgb" => Some(Bc1RgbaUnormSrgb)
    "bc2-rgba-unorm" => Some(Bc2RgbaUnorm)
    "bc2-rgba-unorm-srgb" => Some(Bc2RgbaUnormSrgb)
    "bc3-rgba-unorm" => Some(Bc3RgbaUnorm)
    "bc3-rgba-unorm-srgb" => Some(Bc3RgbaUnormSrgb)
    "bc4-r-unorm" => Some(Bc4RUnorm)
    "bc4-r-snorm" => Some(Bc4RSnorm)
    "bc5-rg-unorm" => Some(Bc5RgUnorm)
    "bc5-rg-snorm" => Some(Bc5RgSnorm)
    "bc6h-rgb-ufloat" => Some(Bc6hRgbUfloat)
    "bc6h-rgb-float" => Some(Bc6hRgbFloat)
    "bc7-rgba-unorm" => Some(Bc7RgbaUnorm)
    "bc7-rgba-unorm-srgb" => Some(Bc7RgbaUnormSrgb)
    "etc2-rgb8unorm" => Some(Etc2Rgb8unorm)
    "etc2-rgb8unorm-srgb" => Some(Etc2Rgb8unormSrgb)
    "etc2-rgb8a1unorm" => Some(Etc2Rgb8a1unorm)
    "etc2-rgb8a1unorm-srgb" => Some(Etc2Rgb8a1unormSrgb)
    "etc2-rgba8unorm" => Some(Etc2Rgba8unorm)
    "etc2-rgba8unorm-srgb" => Some(Etc2Rgba8unormSrgb)
    "eac-r11unorm" => Some(EacR11unorm)
    "eac-r11snorm" => Some(EacR11snorm)
    "eac-rg11unorm" => Some(EacRg11unorm)
    "eac-rg11snorm" => Some(EacRg11snorm)
    "astc-4x4-unorm" => Some(Astc4x4Unorm)
    "astc-4x4-unorm-srgb" => Some(Astc4x4UnormSrgb)
    "astc-5x4-unorm" => Some(Astc5x4Unorm)
    "astc-5x4-unorm-srgb" => Some(Astc5x4UnormSrgb)
    "astc-5x5-unorm" => Some(Astc5x5Unorm)
    "astc-5x5-unorm-srgb" => Some(Astc5x5UnormSrgb)
    "astc-6x5-unorm" => Some(Astc6x5Unorm)
    "astc-6x5-unorm-srgb" => Some(Astc6x5UnormSrgb)
    "astc-6x6-unorm" => Some(Astc6x6Unorm)
    "astc-6x6-unorm-srgb" => Some(Astc6x6UnormSrgb)
    "astc-8x5-unorm" => Some(Astc8x5Unorm)
    "astc-8x5-unorm-srgb" => Some(Astc8x5UnormSrgb)
    "astc-8x6-unorm" => Some(Astc8x6Unorm)
    "astc-8x6-unorm-srgb" => Some(Astc8x6UnormSrgb)
    "astc-8x8-unorm" => Some(Astc8x8Unorm)
    "astc-8x8-unorm-srgb" => Some(Astc8x8UnormSrgb)
    "astc-10x5-unorm" => Some(Astc10x5Unorm)
    "astc-10x5-unorm-srgb" => Some(Astc10x5UnormSrgb)
    "astc-10x6-unorm" => Some(Astc10x6Unorm)
    "astc-10x6-unorm-srgb" => Some(Astc10x6UnormSrgb)
    "astc-10x8-unorm" => Some(Astc10x8Unorm)
    "astc-10x8-unorm-srgb" => Some(Astc10x8UnormSrgb)
    "astc-10x10-unorm" => Some(Astc10x10Unorm)
    "astc-10x10-unorm-srgb" => Some(Astc10x10UnormSrgb)
    "astc-12x10-unorm" => Some(Astc12x10Unorm)
    "astc-12x10-unorm-srgb" => Some(Astc12x10UnormSrgb)
    "astc-12x12-unorm" => Some(Astc12x12Unorm)
    "astc-12x12-unorm-srgb" => Some(Astc12x12UnormSrgb)
    _ => None
  }
}

///|
/// GPUAddressMode enum
pub(all) enum GPUAddressMode {
  ClampToEdge
  Repeat
  MirrorRepeat
}

///|
/// Convert to string value
pub fn GPUAddressMode::to_string(self : GPUAddressMode) -> String {
  match self {
    ClampToEdge => "clamp-to-edge"
    Repeat => "repeat"
    MirrorRepeat => "mirror-repeat"
  }
}

///|
/// Parse from string value
pub fn GPUAddressMode::from_string(s : String) -> GPUAddressMode? {
  match s {
    "clamp-to-edge" => Some(ClampToEdge)
    "repeat" => Some(Repeat)
    "mirror-repeat" => Some(MirrorRepeat)
    _ => None
  }
}

///|
/// GPUFilterMode enum
pub(all) enum GPUFilterMode {
  Nearest
  Linear
}

///|
/// Convert to string value
pub fn GPUFilterMode::to_string(self : GPUFilterMode) -> String {
  match self {
    Nearest => "nearest"
    Linear => "linear"
  }
}

///|
/// Parse from string value
pub fn GPUFilterMode::from_string(s : String) -> GPUFilterMode? {
  match s {
    "nearest" => Some(Nearest)
    "linear" => Some(Linear)
    _ => None
  }
}

///|
/// GPUMipmapFilterMode enum
pub(all) enum GPUMipmapFilterMode {
  Nearest
  Linear
}

///|
/// Convert to string value
pub fn GPUMipmapFilterMode::to_string(self : GPUMipmapFilterMode) -> String {
  match self {
    Nearest => "nearest"
    Linear => "linear"
  }
}

///|
/// Parse from string value
pub fn GPUMipmapFilterMode::from_string(s : String) -> GPUMipmapFilterMode? {
  match s {
    "nearest" => Some(Nearest)
    "linear" => Some(Linear)
    _ => None
  }
}

///|
/// GPUCompareFunction enum
pub(all) enum GPUCompareFunction {
  Never
  Less
  Equal
  LessEqual
  Greater
  NotEqual
  GreaterEqual
  Always
}

///|
/// Convert to string value
pub fn GPUCompareFunction::to_string(self : GPUCompareFunction) -> String {
  match self {
    Never => "never"
    Less => "less"
    Equal => "equal"
    LessEqual => "less-equal"
    Greater => "greater"
    NotEqual => "not-equal"
    GreaterEqual => "greater-equal"
    Always => "always"
  }
}

///|
/// Parse from string value
pub fn GPUCompareFunction::from_string(s : String) -> GPUCompareFunction? {
  match s {
    "never" => Some(Never)
    "less" => Some(Less)
    "equal" => Some(Equal)
    "less-equal" => Some(LessEqual)
    "greater" => Some(Greater)
    "not-equal" => Some(NotEqual)
    "greater-equal" => Some(GreaterEqual)
    "always" => Some(Always)
    _ => None
  }
}

///|
/// GPUBufferBindingType enum
pub(all) enum GPUBufferBindingType {
  Uniform
  Storage
  ReadOnlyStorage
}

///|
/// Convert to string value
pub fn GPUBufferBindingType::to_string(self : GPUBufferBindingType) -> String {
  match self {
    Uniform => "uniform"
    Storage => "storage"
    ReadOnlyStorage => "read-only-storage"
  }
}

///|
/// Parse from string value
pub fn GPUBufferBindingType::from_string(s : String) -> GPUBufferBindingType? {
  match s {
    "uniform" => Some(Uniform)
    "storage" => Some(Storage)
    "read-only-storage" => Some(ReadOnlyStorage)
    _ => None
  }
}

///|
/// GPUSamplerBindingType enum
pub(all) enum GPUSamplerBindingType {
  Filtering
  NonFiltering
  Comparison
}

///|
/// Convert to string value
pub fn GPUSamplerBindingType::to_string(self : GPUSamplerBindingType) -> String {
  match self {
    Filtering => "filtering"
    NonFiltering => "non-filtering"
    Comparison => "comparison"
  }
}

///|
/// Parse from string value
pub fn GPUSamplerBindingType::from_string(s : String) -> GPUSamplerBindingType? {
  match s {
    "filtering" => Some(Filtering)
    "non-filtering" => Some(NonFiltering)
    "comparison" => Some(Comparison)
    _ => None
  }
}

///|
/// GPUTextureSampleType enum
pub(all) enum GPUTextureSampleType {
  Float
  UnfilterableFloat
  Depth
  Sint
  Uint
}

///|
/// Convert to string value
pub fn GPUTextureSampleType::to_string(self : GPUTextureSampleType) -> String {
  match self {
    Float => "float"
    UnfilterableFloat => "unfilterable-float"
    Depth => "depth"
    Sint => "sint"
    Uint => "uint"
  }
}

///|
/// Parse from string value
pub fn GPUTextureSampleType::from_string(s : String) -> GPUTextureSampleType? {
  match s {
    "float" => Some(Float)
    "unfilterable-float" => Some(UnfilterableFloat)
    "depth" => Some(Depth)
    "sint" => Some(Sint)
    "uint" => Some(Uint)
    _ => None
  }
}

///|
/// GPUStorageTextureAccess enum
pub(all) enum GPUStorageTextureAccess {
  WriteOnly
  ReadOnly
  ReadWrite
}

///|
/// Convert to string value
pub fn GPUStorageTextureAccess::to_string(
  self : GPUStorageTextureAccess,
) -> String {
  match self {
    WriteOnly => "write-only"
    ReadOnly => "read-only"
    ReadWrite => "read-write"
  }
}

///|
/// Parse from string value
pub fn GPUStorageTextureAccess::from_string(
  s : String,
) -> GPUStorageTextureAccess? {
  match s {
    "write-only" => Some(WriteOnly)
    "read-only" => Some(ReadOnly)
    "read-write" => Some(ReadWrite)
    _ => None
  }
}

///|
/// GPUCompilationMessageType enum
pub(all) enum GPUCompilationMessageType {
  Error
  Warning
  Info
}

///|
/// Convert to string value
pub fn GPUCompilationMessageType::to_string(
  self : GPUCompilationMessageType,
) -> String {
  match self {
    Error => "error"
    Warning => "warning"
    Info => "info"
  }
}

///|
/// Parse from string value
pub fn GPUCompilationMessageType::from_string(
  s : String,
) -> GPUCompilationMessageType? {
  match s {
    "error" => Some(Error)
    "warning" => Some(Warning)
    "info" => Some(Info)
    _ => None
  }
}

///|
/// GPUPipelineErrorReason enum
pub(all) enum GPUPipelineErrorReason {
  Validation
  Internal
}

///|
/// Convert to string value
pub fn GPUPipelineErrorReason::to_string(
  self : GPUPipelineErrorReason,
) -> String {
  match self {
    Validation => "validation"
    Internal => "internal"
  }
}

///|
/// Parse from string value
pub fn GPUPipelineErrorReason::from_string(
  s : String,
) -> GPUPipelineErrorReason? {
  match s {
    "validation" => Some(Validation)
    "internal" => Some(Internal)
    _ => None
  }
}

///|
/// GPUAutoLayoutMode enum
pub(all) enum GPUAutoLayoutMode {
  Auto
}

///|
/// Convert to string value
pub fn GPUAutoLayoutMode::to_string(self : GPUAutoLayoutMode) -> String {
  match self {
    Auto => "auto"
  }
}

///|
/// Parse from string value
pub fn GPUAutoLayoutMode::from_string(s : String) -> GPUAutoLayoutMode? {
  match s {
    "auto" => Some(Auto)
    _ => None
  }
}

///|
/// GPUPrimitiveTopology enum
pub(all) enum GPUPrimitiveTopology {
  PointList
  LineList
  LineStrip
  TriangleList
  TriangleStrip
}

///|
/// Convert to string value
pub fn GPUPrimitiveTopology::to_string(self : GPUPrimitiveTopology) -> String {
  match self {
    PointList => "point-list"
    LineList => "line-list"
    LineStrip => "line-strip"
    TriangleList => "triangle-list"
    TriangleStrip => "triangle-strip"
  }
}

///|
/// Parse from string value
pub fn GPUPrimitiveTopology::from_string(s : String) -> GPUPrimitiveTopology? {
  match s {
    "point-list" => Some(PointList)
    "line-list" => Some(LineList)
    "line-strip" => Some(LineStrip)
    "triangle-list" => Some(TriangleList)
    "triangle-strip" => Some(TriangleStrip)
    _ => None
  }
}

///|
/// GPUFrontFace enum
pub(all) enum GPUFrontFace {
  Ccw
  Cw
}

///|
/// Convert to string value
pub fn GPUFrontFace::to_string(self : GPUFrontFace) -> String {
  match self {
    Ccw => "ccw"
    Cw => "cw"
  }
}

///|
/// Parse from string value
pub fn GPUFrontFace::from_string(s : String) -> GPUFrontFace? {
  match s {
    "ccw" => Some(Ccw)
    "cw" => Some(Cw)
    _ => None
  }
}

///|
/// GPUCullMode enum
pub(all) enum GPUCullMode {
  None
  Front
  Back
}

///|
/// Convert to string value
pub fn GPUCullMode::to_string(self : GPUCullMode) -> String {
  match self {
    None => "none"
    Front => "front"
    Back => "back"
  }
}

///|
/// Parse from string value
pub fn GPUCullMode::from_string(s : String) -> GPUCullMode? {
  match s {
    "none" => Some(None)
    "front" => Some(Front)
    "back" => Some(Back)
    _ => None
  }
}

///|
/// GPUBlendFactor enum
pub(all) enum GPUBlendFactor {
  Zero
  One
  Src
  OneMinusSrc
  SrcAlpha
  OneMinusSrcAlpha
  Dst
  OneMinusDst
  DstAlpha
  OneMinusDstAlpha
  SrcAlphaSaturated
  Constant
  OneMinusConstant
  Src1
  OneMinusSrc1
  Src1Alpha
  OneMinusSrc1Alpha
}

///|
/// Convert to string value
pub fn GPUBlendFactor::to_string(self : GPUBlendFactor) -> String {
  match self {
    Zero => "zero"
    One => "one"
    Src => "src"
    OneMinusSrc => "one-minus-src"
    SrcAlpha => "src-alpha"
    OneMinusSrcAlpha => "one-minus-src-alpha"
    Dst => "dst"
    OneMinusDst => "one-minus-dst"
    DstAlpha => "dst-alpha"
    OneMinusDstAlpha => "one-minus-dst-alpha"
    SrcAlphaSaturated => "src-alpha-saturated"
    Constant => "constant"
    OneMinusConstant => "one-minus-constant"
    Src1 => "src1"
    OneMinusSrc1 => "one-minus-src1"
    Src1Alpha => "src1-alpha"
    OneMinusSrc1Alpha => "one-minus-src1-alpha"
  }
}

///|
/// Parse from string value
pub fn GPUBlendFactor::from_string(s : String) -> GPUBlendFactor? {
  match s {
    "zero" => Some(Zero)
    "one" => Some(One)
    "src" => Some(Src)
    "one-minus-src" => Some(OneMinusSrc)
    "src-alpha" => Some(SrcAlpha)
    "one-minus-src-alpha" => Some(OneMinusSrcAlpha)
    "dst" => Some(Dst)
    "one-minus-dst" => Some(OneMinusDst)
    "dst-alpha" => Some(DstAlpha)
    "one-minus-dst-alpha" => Some(OneMinusDstAlpha)
    "src-alpha-saturated" => Some(SrcAlphaSaturated)
    "constant" => Some(Constant)
    "one-minus-constant" => Some(OneMinusConstant)
    "src1" => Some(Src1)
    "one-minus-src1" => Some(OneMinusSrc1)
    "src1-alpha" => Some(Src1Alpha)
    "one-minus-src1-alpha" => Some(OneMinusSrc1Alpha)
    _ => None
  }
}

///|
/// GPUBlendOperation enum
pub(all) enum GPUBlendOperation {
  Add
  Subtract
  ReverseSubtract
  Min
  Max
}

///|
/// Convert to string value
pub fn GPUBlendOperation::to_string(self : GPUBlendOperation) -> String {
  match self {
    Add => "add"
    Subtract => "subtract"
    ReverseSubtract => "reverse-subtract"
    Min => "min"
    Max => "max"
  }
}

///|
/// Parse from string value
pub fn GPUBlendOperation::from_string(s : String) -> GPUBlendOperation? {
  match s {
    "add" => Some(Add)
    "subtract" => Some(Subtract)
    "reverse-subtract" => Some(ReverseSubtract)
    "min" => Some(Min)
    "max" => Some(Max)
    _ => None
  }
}

///|
/// GPUStencilOperation enum
pub(all) enum GPUStencilOperation {
  Keep
  Zero
  Replace
  Invert
  IncrementClamp
  DecrementClamp
  IncrementWrap
  DecrementWrap
}

///|
/// Convert to string value
pub fn GPUStencilOperation::to_string(self : GPUStencilOperation) -> String {
  match self {
    Keep => "keep"
    Zero => "zero"
    Replace => "replace"
    Invert => "invert"
    IncrementClamp => "increment-clamp"
    DecrementClamp => "decrement-clamp"
    IncrementWrap => "increment-wrap"
    DecrementWrap => "decrement-wrap"
  }
}

///|
/// Parse from string value
pub fn GPUStencilOperation::from_string(s : String) -> GPUStencilOperation? {
  match s {
    "keep" => Some(Keep)
    "zero" => Some(Zero)
    "replace" => Some(Replace)
    "invert" => Some(Invert)
    "increment-clamp" => Some(IncrementClamp)
    "decrement-clamp" => Some(DecrementClamp)
    "increment-wrap" => Some(IncrementWrap)
    "decrement-wrap" => Some(DecrementWrap)
    _ => None
  }
}

///|
/// GPUIndexFormat enum
pub(all) enum GPUIndexFormat {
  Uint16
  Uint32
}

///|
/// Convert to string value
pub fn GPUIndexFormat::to_string(self : GPUIndexFormat) -> String {
  match self {
    Uint16 => "uint16"
    Uint32 => "uint32"
  }
}

///|
/// Parse from string value
pub fn GPUIndexFormat::from_string(s : String) -> GPUIndexFormat? {
  match s {
    "uint16" => Some(Uint16)
    "uint32" => Some(Uint32)
    _ => None
  }
}

///|
/// GPUVertexFormat enum
pub(all) enum GPUVertexFormat {
  Uint8
  Uint8x2
  Uint8x4
  Sint8
  Sint8x2
  Sint8x4
  Unorm8
  Unorm8x2
  Unorm8x4
  Snorm8
  Snorm8x2
  Snorm8x4
  Uint16
  Uint16x2
  Uint16x4
  Sint16
  Sint16x2
  Sint16x4
  Unorm16
  Unorm16x2
  Unorm16x4
  Snorm16
  Snorm16x2
  Snorm16x4
  Float16
  Float16x2
  Float16x4
  Float32
  Float32x2
  Float32x3
  Float32x4
  Uint32
  Uint32x2
  Uint32x3
  Uint32x4
  Sint32
  Sint32x2
  Sint32x3
  Sint32x4
  Unorm1010102
  Unorm8x4Bgra
}

///|
/// Convert to string value
pub fn GPUVertexFormat::to_string(self : GPUVertexFormat) -> String {
  match self {
    Uint8 => "uint8"
    Uint8x2 => "uint8x2"
    Uint8x4 => "uint8x4"
    Sint8 => "sint8"
    Sint8x2 => "sint8x2"
    Sint8x4 => "sint8x4"
    Unorm8 => "unorm8"
    Unorm8x2 => "unorm8x2"
    Unorm8x4 => "unorm8x4"
    Snorm8 => "snorm8"
    Snorm8x2 => "snorm8x2"
    Snorm8x4 => "snorm8x4"
    Uint16 => "uint16"
    Uint16x2 => "uint16x2"
    Uint16x4 => "uint16x4"
    Sint16 => "sint16"
    Sint16x2 => "sint16x2"
    Sint16x4 => "sint16x4"
    Unorm16 => "unorm16"
    Unorm16x2 => "unorm16x2"
    Unorm16x4 => "unorm16x4"
    Snorm16 => "snorm16"
    Snorm16x2 => "snorm16x2"
    Snorm16x4 => "snorm16x4"
    Float16 => "float16"
    Float16x2 => "float16x2"
    Float16x4 => "float16x4"
    Float32 => "float32"
    Float32x2 => "float32x2"
    Float32x3 => "float32x3"
    Float32x4 => "float32x4"
    Uint32 => "uint32"
    Uint32x2 => "uint32x2"
    Uint32x3 => "uint32x3"
    Uint32x4 => "uint32x4"
    Sint32 => "sint32"
    Sint32x2 => "sint32x2"
    Sint32x3 => "sint32x3"
    Sint32x4 => "sint32x4"
    Unorm1010102 => "unorm10-10-10-2"
    Unorm8x4Bgra => "unorm8x4-bgra"
  }
}

///|
/// Parse from string value
pub fn GPUVertexFormat::from_string(s : String) -> GPUVertexFormat? {
  match s {
    "uint8" => Some(Uint8)
    "uint8x2" => Some(Uint8x2)
    "uint8x4" => Some(Uint8x4)
    "sint8" => Some(Sint8)
    "sint8x2" => Some(Sint8x2)
    "sint8x4" => Some(Sint8x4)
    "unorm8" => Some(Unorm8)
    "unorm8x2" => Some(Unorm8x2)
    "unorm8x4" => Some(Unorm8x4)
    "snorm8" => Some(Snorm8)
    "snorm8x2" => Some(Snorm8x2)
    "snorm8x4" => Some(Snorm8x4)
    "uint16" => Some(Uint16)
    "uint16x2" => Some(Uint16x2)
    "uint16x4" => Some(Uint16x4)
    "sint16" => Some(Sint16)
    "sint16x2" => Some(Sint16x2)
    "sint16x4" => Some(Sint16x4)
    "unorm16" => Some(Unorm16)
    "unorm16x2" => Some(Unorm16x2)
    "unorm16x4" => Some(Unorm16x4)
    "snorm16" => Some(Snorm16)
    "snorm16x2" => Some(Snorm16x2)
    "snorm16x4" => Some(Snorm16x4)
    "float16" => Some(Float16)
    "float16x2" => Some(Float16x2)
    "float16x4" => Some(Float16x4)
    "float32" => Some(Float32)
    "float32x2" => Some(Float32x2)
    "float32x3" => Some(Float32x3)
    "float32x4" => Some(Float32x4)
    "uint32" => Some(Uint32)
    "uint32x2" => Some(Uint32x2)
    "uint32x3" => Some(Uint32x3)
    "uint32x4" => Some(Uint32x4)
    "sint32" => Some(Sint32)
    "sint32x2" => Some(Sint32x2)
    "sint32x3" => Some(Sint32x3)
    "sint32x4" => Some(Sint32x4)
    "unorm10-10-10-2" => Some(Unorm1010102)
    "unorm8x4-bgra" => Some(Unorm8x4Bgra)
    _ => None
  }
}

///|
/// GPUVertexStepMode enum
pub(all) enum GPUVertexStepMode {
  Vertex
  Instance
}

///|
/// Convert to string value
pub fn GPUVertexStepMode::to_string(self : GPUVertexStepMode) -> String {
  match self {
    Vertex => "vertex"
    Instance => "instance"
  }
}

///|
/// Parse from string value
pub fn GPUVertexStepMode::from_string(s : String) -> GPUVertexStepMode? {
  match s {
    "vertex" => Some(Vertex)
    "instance" => Some(Instance)
    _ => None
  }
}

///|
/// GPULoadOp enum
pub(all) enum GPULoadOp {
  Load
  Clear
}

///|
/// Convert to string value
pub fn GPULoadOp::to_string(self : GPULoadOp) -> String {
  match self {
    Load => "load"
    Clear => "clear"
  }
}

///|
/// Parse from string value
pub fn GPULoadOp::from_string(s : String) -> GPULoadOp? {
  match s {
    "load" => Some(Load)
    "clear" => Some(Clear)
    _ => None
  }
}

///|
/// GPUStoreOp enum
pub(all) enum GPUStoreOp {
  Store
  Discard
}

///|
/// Convert to string value
pub fn GPUStoreOp::to_string(self : GPUStoreOp) -> String {
  match self {
    Store => "store"
    Discard => "discard"
  }
}

///|
/// Parse from string value
pub fn GPUStoreOp::from_string(s : String) -> GPUStoreOp? {
  match s {
    "store" => Some(Store)
    "discard" => Some(Discard)
    _ => None
  }
}

///|
/// GPUQueryType enum
pub(all) enum GPUQueryType {
  Occlusion
  Timestamp
}

///|
/// Convert to string value
pub fn GPUQueryType::to_string(self : GPUQueryType) -> String {
  match self {
    Occlusion => "occlusion"
    Timestamp => "timestamp"
  }
}

///|
/// Parse from string value
pub fn GPUQueryType::from_string(s : String) -> GPUQueryType? {
  match s {
    "occlusion" => Some(Occlusion)
    "timestamp" => Some(Timestamp)
    _ => None
  }
}

///|
/// GPUCanvasAlphaMode enum
pub(all) enum GPUCanvasAlphaMode {
  Opaque
  Premultiplied
}

///|
/// Convert to string value
pub fn GPUCanvasAlphaMode::to_string(self : GPUCanvasAlphaMode) -> String {
  match self {
    Opaque => "opaque"
    Premultiplied => "premultiplied"
  }
}

///|
/// Parse from string value
pub fn GPUCanvasAlphaMode::from_string(s : String) -> GPUCanvasAlphaMode? {
  match s {
    "opaque" => Some(Opaque)
    "premultiplied" => Some(Premultiplied)
    _ => None
  }
}

///|
/// GPUCanvasToneMappingMode enum
pub(all) enum GPUCanvasToneMappingMode {
  Standard
  Extended
}

///|
/// Convert to string value
pub fn GPUCanvasToneMappingMode::to_string(
  self : GPUCanvasToneMappingMode,
) -> String {
  match self {
    Standard => "standard"
    Extended => "extended"
  }
}

///|
/// Parse from string value
pub fn GPUCanvasToneMappingMode::from_string(
  s : String,
) -> GPUCanvasToneMappingMode? {
  match s {
    "standard" => Some(Standard)
    "extended" => Some(Extended)
    _ => None
  }
}

///|
/// GPUDeviceLostReason enum
pub(all) enum GPUDeviceLostReason {
  Unknown
  Destroyed
}

///|
/// Convert to string value
pub fn GPUDeviceLostReason::to_string(self : GPUDeviceLostReason) -> String {
  match self {
    Unknown => "unknown"
    Destroyed => "destroyed"
  }
}

///|
/// Parse from string value
pub fn GPUDeviceLostReason::from_string(s : String) -> GPUDeviceLostReason? {
  match s {
    "unknown" => Some(Unknown)
    "destroyed" => Some(Destroyed)
    _ => None
  }
}

///|
/// GPUErrorFilter enum
pub(all) enum GPUErrorFilter {
  Validation
  OutOfMemory
  Internal
}

///|
/// Convert to string value
pub fn GPUErrorFilter::to_string(self : GPUErrorFilter) -> String {
  match self {
    Validation => "validation"
    OutOfMemory => "out-of-memory"
    Internal => "internal"
  }
}

///|
/// Parse from string value
pub fn GPUErrorFilter::from_string(s : String) -> GPUErrorFilter? {
  match s {
    "validation" => Some(Validation)
    "out-of-memory" => Some(OutOfMemory)
    "internal" => Some(Internal)
    _ => None
  }
}

///|
/// GPUObjectDescriptorBase dictionary
pub struct GPUObjectDescriptorBase {
  label : String?
}

///|
/// Create a new GPUObjectDescriptorBase with default values
pub fn GPUObjectDescriptorBase::default() -> GPUObjectDescriptorBase {
  GPUObjectDescriptorBase::{ label: None }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUObjectDescriptorBase::to_js(
  self : GPUObjectDescriptorBase,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label
  #| })

///|
/// GPURequestAdapterOptions dictionary
pub struct GPURequestAdapterOptions {
  featureLevel : String?
  powerPreference : GPUPowerPreference?
  forceFallbackAdapter : Bool?
  xrCompatible : Bool?
}

///|
/// Create a new GPURequestAdapterOptions with default values
pub fn GPURequestAdapterOptions::default() -> GPURequestAdapterOptions {
  GPURequestAdapterOptions::{
    featureLevel: None,
    powerPreference: None,
    forceFallbackAdapter: None,
    xrCompatible: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn GPURequestAdapterOptions::to_js(
  self : GPURequestAdapterOptions,
) -> JsValue =
  #| (self) => ({
  #|   featureLevel: self.featureLevel,
  #|   powerPreference: ['low-power', 'high-performance'][self.powerPreference],
  #|   forceFallbackAdapter: self.forceFallbackAdapter,
  #|   xrCompatible: self.xrCompatible
  #| })

///|
/// GPUDeviceDescriptor dictionary
pub struct GPUDeviceDescriptor {
  label : String?
  requiredFeatures : Array[GPUFeatureName]?
  requiredLimits : JsValue?
  defaultQueue : GPUQueueDescriptor?
}

///|
/// Create a new GPUDeviceDescriptor with default values
pub fn GPUDeviceDescriptor::default() -> GPUDeviceDescriptor {
  GPUDeviceDescriptor::{
    label: None,
    requiredFeatures: None,
    requiredLimits: None,
    defaultQueue: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUDeviceDescriptor::to_js(
  self : GPUDeviceDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   requiredFeatures: self.requiredFeatures,
  #|   requiredLimits: self.requiredLimits,
  #|   defaultQueue: self.defaultQueue
  #| })

///|
/// GPUBufferDescriptor dictionary
pub struct GPUBufferDescriptor {
  label : String?
  size : GPUSize64
  usage : GPUBufferUsageFlags
  mappedAtCreation : Bool?
}

///|
/// Create a new GPUBufferDescriptor with default values
pub fn GPUBufferDescriptor::default() -> GPUBufferDescriptor {
  GPUBufferDescriptor::{
    label: None,
    size: panic(),
    usage: panic(),
    mappedAtCreation: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUBufferDescriptor::to_js(
  self : GPUBufferDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   size: self.size,
  #|   usage: self.usage,
  #|   mappedAtCreation: self.mappedAtCreation
  #| })

///|
/// GPUTextureDescriptor dictionary
pub struct GPUTextureDescriptor {
  label : String?
  size : GPUExtent3D
  mipLevelCount : GPUIntegerCoordinate?
  sampleCount : GPUSize32?
  dimension : GPUTextureDimension?
  format : GPUTextureFormat
  usage : GPUTextureUsageFlags
  viewFormats : Array[GPUTextureFormat]?
  textureBindingViewDimension : GPUTextureViewDimension?
}

///|
/// Create a new GPUTextureDescriptor with default values
pub fn GPUTextureDescriptor::default() -> GPUTextureDescriptor {
  GPUTextureDescriptor::{
    label: None,
    size: panic(),
    mipLevelCount: None,
    sampleCount: None,
    dimension: None,
    format: panic(),
    usage: panic(),
    viewFormats: None,
    textureBindingViewDimension: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUTextureDescriptor::to_js(
  self : GPUTextureDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   size: self.size.to_js_value(),
  #|   mipLevelCount: self.mipLevelCount,
  #|   sampleCount: self.sampleCount,
  #|   dimension: ['1d', '2d', '3d'][self.dimension],
  #|   format: ['r8unorm', 'r8snorm', 'r8uint', 'r8sint', 'r16unorm', 'r16snorm', 'r16uint', 'r16sint', 'r16float', 'rg8unorm', 'rg8snorm', 'rg8uint', 'rg8sint', 'r32uint', 'r32sint', 'r32float', 'rg16unorm', 'rg16snorm', 'rg16uint', 'rg16sint', 'rg16float', 'rgba8unorm', 'rgba8unorm-srgb', 'rgba8snorm', 'rgba8uint', 'rgba8sint', 'bgra8unorm', 'bgra8unorm-srgb', 'rgb9e5ufloat', 'rgb10a2uint', 'rgb10a2unorm', 'rg11b10ufloat', 'rg32uint', 'rg32sint', 'rg32float', 'rgba16unorm', 'rgba16snorm', 'rgba16uint', 'rgba16sint', 'rgba16float', 'rgba32uint', 'rgba32sint', 'rgba32float', 'stencil8', 'depth16unorm', 'depth24plus', 'depth24plus-stencil8', 'depth32float', 'depth32float-stencil8', 'bc1-rgba-unorm', 'bc1-rgba-unorm-srgb', 'bc2-rgba-unorm', 'bc2-rgba-unorm-srgb', 'bc3-rgba-unorm', 'bc3-rgba-unorm-srgb', 'bc4-r-unorm', 'bc4-r-snorm', 'bc5-rg-unorm', 'bc5-rg-snorm', 'bc6h-rgb-ufloat', 'bc6h-rgb-float', 'bc7-rgba-unorm', 'bc7-rgba-unorm-srgb', 'etc2-rgb8unorm', 'etc2-rgb8unorm-srgb', 'etc2-rgb8a1unorm', 'etc2-rgb8a1unorm-srgb', 'etc2-rgba8unorm', 'etc2-rgba8unorm-srgb', 'eac-r11unorm', 'eac-r11snorm', 'eac-rg11unorm', 'eac-rg11snorm', 'astc-4x4-unorm', 'astc-4x4-unorm-srgb', 'astc-5x4-unorm', 'astc-5x4-unorm-srgb', 'astc-5x5-unorm', 'astc-5x5-unorm-srgb', 'astc-6x5-unorm', 'astc-6x5-unorm-srgb', 'astc-6x6-unorm', 'astc-6x6-unorm-srgb', 'astc-8x5-unorm', 'astc-8x5-unorm-srgb', 'astc-8x6-unorm', 'astc-8x6-unorm-srgb', 'astc-8x8-unorm', 'astc-8x8-unorm-srgb', 'astc-10x5-unorm', 'astc-10x5-unorm-srgb', 'astc-10x6-unorm', 'astc-10x6-unorm-srgb', 'astc-10x8-unorm', 'astc-10x8-unorm-srgb', 'astc-10x10-unorm', 'astc-10x10-unorm-srgb', 'astc-12x10-unorm', 'astc-12x10-unorm-srgb', 'astc-12x12-unorm', 'astc-12x12-unorm-srgb'][self.format],
  #|   usage: self.usage,
  #|   viewFormats: self.viewFormats,
  #|   textureBindingViewDimension: ['1d', '2d', '2d-array', 'cube', 'cube-array', '3d'][self.textureBindingViewDimension]
  #| })

///|
/// GPUTextureViewDescriptor dictionary
pub struct GPUTextureViewDescriptor {
  label : String?
  format : GPUTextureFormat?
  dimension : GPUTextureViewDimension?
  usage : GPUTextureUsageFlags?
  aspect : GPUTextureAspect?
  baseMipLevel : GPUIntegerCoordinate?
  mipLevelCount : GPUIntegerCoordinate?
  baseArrayLayer : GPUIntegerCoordinate?
  arrayLayerCount : GPUIntegerCoordinate?
  swizzle : String?
}

///|
/// Create a new GPUTextureViewDescriptor with default values
pub fn GPUTextureViewDescriptor::default() -> GPUTextureViewDescriptor {
  GPUTextureViewDescriptor::{
    label: None,
    format: None,
    dimension: None,
    usage: None,
    aspect: None,
    baseMipLevel: None,
    mipLevelCount: None,
    baseArrayLayer: None,
    arrayLayerCount: None,
    swizzle: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUTextureViewDescriptor::to_js(
  self : GPUTextureViewDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   format: ['r8unorm', 'r8snorm', 'r8uint', 'r8sint', 'r16unorm', 'r16snorm', 'r16uint', 'r16sint', 'r16float', 'rg8unorm', 'rg8snorm', 'rg8uint', 'rg8sint', 'r32uint', 'r32sint', 'r32float', 'rg16unorm', 'rg16snorm', 'rg16uint', 'rg16sint', 'rg16float', 'rgba8unorm', 'rgba8unorm-srgb', 'rgba8snorm', 'rgba8uint', 'rgba8sint', 'bgra8unorm', 'bgra8unorm-srgb', 'rgb9e5ufloat', 'rgb10a2uint', 'rgb10a2unorm', 'rg11b10ufloat', 'rg32uint', 'rg32sint', 'rg32float', 'rgba16unorm', 'rgba16snorm', 'rgba16uint', 'rgba16sint', 'rgba16float', 'rgba32uint', 'rgba32sint', 'rgba32float', 'stencil8', 'depth16unorm', 'depth24plus', 'depth24plus-stencil8', 'depth32float', 'depth32float-stencil8', 'bc1-rgba-unorm', 'bc1-rgba-unorm-srgb', 'bc2-rgba-unorm', 'bc2-rgba-unorm-srgb', 'bc3-rgba-unorm', 'bc3-rgba-unorm-srgb', 'bc4-r-unorm', 'bc4-r-snorm', 'bc5-rg-unorm', 'bc5-rg-snorm', 'bc6h-rgb-ufloat', 'bc6h-rgb-float', 'bc7-rgba-unorm', 'bc7-rgba-unorm-srgb', 'etc2-rgb8unorm', 'etc2-rgb8unorm-srgb', 'etc2-rgb8a1unorm', 'etc2-rgb8a1unorm-srgb', 'etc2-rgba8unorm', 'etc2-rgba8unorm-srgb', 'eac-r11unorm', 'eac-r11snorm', 'eac-rg11unorm', 'eac-rg11snorm', 'astc-4x4-unorm', 'astc-4x4-unorm-srgb', 'astc-5x4-unorm', 'astc-5x4-unorm-srgb', 'astc-5x5-unorm', 'astc-5x5-unorm-srgb', 'astc-6x5-unorm', 'astc-6x5-unorm-srgb', 'astc-6x6-unorm', 'astc-6x6-unorm-srgb', 'astc-8x5-unorm', 'astc-8x5-unorm-srgb', 'astc-8x6-unorm', 'astc-8x6-unorm-srgb', 'astc-8x8-unorm', 'astc-8x8-unorm-srgb', 'astc-10x5-unorm', 'astc-10x5-unorm-srgb', 'astc-10x6-unorm', 'astc-10x6-unorm-srgb', 'astc-10x8-unorm', 'astc-10x8-unorm-srgb', 'astc-10x10-unorm', 'astc-10x10-unorm-srgb', 'astc-12x10-unorm', 'astc-12x10-unorm-srgb', 'astc-12x12-unorm', 'astc-12x12-unorm-srgb'][self.format],
  #|   dimension: ['1d', '2d', '2d-array', 'cube', 'cube-array', '3d'][self.dimension],
  #|   usage: self.usage,
  #|   aspect: ['all', 'stencil-only', 'depth-only'][self.aspect],
  #|   baseMipLevel: self.baseMipLevel,
  #|   mipLevelCount: self.mipLevelCount,
  #|   baseArrayLayer: self.baseArrayLayer,
  #|   arrayLayerCount: self.arrayLayerCount,
  #|   swizzle: self.swizzle
  #| })

///|
/// GPUExternalTextureDescriptor dictionary
pub struct GPUExternalTextureDescriptor {
  label : String?
  source : JsValue
  colorSpace : PredefinedColorSpace?
}

///|
/// Create a new GPUExternalTextureDescriptor with default values
pub fn GPUExternalTextureDescriptor::default() -> GPUExternalTextureDescriptor {
  GPUExternalTextureDescriptor::{
    label: None,
    source: panic(),
    colorSpace: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUExternalTextureDescriptor::to_js(
  self : GPUExternalTextureDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   source: self.source,
  #|   colorSpace: ['srgb', 'srgb-linear', 'display-p3', 'display-p3-linear'][self.colorSpace]
  #| })

///|
/// GPUSamplerDescriptor dictionary
pub struct GPUSamplerDescriptor {
  label : String?
  addressModeU : GPUAddressMode?
  addressModeV : GPUAddressMode?
  addressModeW : GPUAddressMode?
  magFilter : GPUFilterMode?
  minFilter : GPUFilterMode?
  mipmapFilter : GPUMipmapFilterMode?
  lodMinClamp : Double?
  lodMaxClamp : Double?
  compare : GPUCompareFunction?
  maxAnisotropy : Int?
}

///|
/// Create a new GPUSamplerDescriptor with default values
pub fn GPUSamplerDescriptor::default() -> GPUSamplerDescriptor {
  GPUSamplerDescriptor::{
    label: None,
    addressModeU: None,
    addressModeV: None,
    addressModeW: None,
    magFilter: None,
    minFilter: None,
    mipmapFilter: None,
    lodMinClamp: None,
    lodMaxClamp: None,
    compare: None,
    maxAnisotropy: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUSamplerDescriptor::to_js(
  self : GPUSamplerDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   addressModeU: ['clamp-to-edge', 'repeat', 'mirror-repeat'][self.addressModeU],
  #|   addressModeV: ['clamp-to-edge', 'repeat', 'mirror-repeat'][self.addressModeV],
  #|   addressModeW: ['clamp-to-edge', 'repeat', 'mirror-repeat'][self.addressModeW],
  #|   magFilter: ['nearest', 'linear'][self.magFilter],
  #|   minFilter: ['nearest', 'linear'][self.minFilter],
  #|   mipmapFilter: ['nearest', 'linear'][self.mipmapFilter],
  #|   lodMinClamp: self.lodMinClamp,
  #|   lodMaxClamp: self.lodMaxClamp,
  #|   compare: ['never', 'less', 'equal', 'less-equal', 'greater', 'not-equal', 'greater-equal', 'always'][self.compare],
  #|   maxAnisotropy: self.maxAnisotropy
  #| })

///|
/// GPUBindGroupLayoutDescriptor dictionary
pub struct GPUBindGroupLayoutDescriptor {
  label : String?
  entries : Array[GPUBindGroupLayoutEntry]
}

///|
/// Create a new GPUBindGroupLayoutDescriptor with default values
pub fn GPUBindGroupLayoutDescriptor::default() -> GPUBindGroupLayoutDescriptor {
  GPUBindGroupLayoutDescriptor::{ label: None, entries: [] }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUBindGroupLayoutDescriptor::to_js(
  self : GPUBindGroupLayoutDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   entries: self.entries
  #| })

///|
/// GPUBindGroupLayoutEntry dictionary
pub struct GPUBindGroupLayoutEntry {
  binding : GPUIndex32
  visibility : GPUShaderStageFlags
  buffer : GPUBufferBindingLayout?
  sampler : GPUSamplerBindingLayout?
  texture : GPUTextureBindingLayout?
  storageTexture : GPUStorageTextureBindingLayout?
  externalTexture : GPUExternalTextureBindingLayout?
}

///|
/// Create a new GPUBindGroupLayoutEntry with default values
pub fn GPUBindGroupLayoutEntry::default() -> GPUBindGroupLayoutEntry {
  GPUBindGroupLayoutEntry::{
    binding: panic(),
    visibility: panic(),
    buffer: None,
    sampler: None,
    texture: None,
    storageTexture: None,
    externalTexture: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUBindGroupLayoutEntry::to_js(
  self : GPUBindGroupLayoutEntry,
) -> JsValue =
  #| (self) => ({
  #|   binding: self.binding,
  #|   visibility: self.visibility,
  #|   buffer: self.buffer,
  #|   sampler: self.sampler,
  #|   texture: self.texture,
  #|   storageTexture: self.storageTexture,
  #|   externalTexture: self.externalTexture
  #| })

///|
/// GPUBufferBindingLayout dictionary
pub struct GPUBufferBindingLayout {
  type_ : GPUBufferBindingType?
  hasDynamicOffset : Bool?
  minBindingSize : GPUSize64?
}

///|
/// Create a new GPUBufferBindingLayout with default values
pub fn GPUBufferBindingLayout::default() -> GPUBufferBindingLayout {
  GPUBufferBindingLayout::{
    type_: None,
    hasDynamicOffset: None,
    minBindingSize: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUBufferBindingLayout::to_js(
  self : GPUBufferBindingLayout,
) -> JsValue =
  #| (self) => ({
  #|   type: ['uniform', 'storage', 'read-only-storage'][self.type_],
  #|   hasDynamicOffset: self.hasDynamicOffset,
  #|   minBindingSize: self.minBindingSize
  #| })

///|
/// GPUSamplerBindingLayout dictionary
pub struct GPUSamplerBindingLayout {
  type_ : GPUSamplerBindingType?
}

///|
/// Create a new GPUSamplerBindingLayout with default values
pub fn GPUSamplerBindingLayout::default() -> GPUSamplerBindingLayout {
  GPUSamplerBindingLayout::{ type_: None }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUSamplerBindingLayout::to_js(
  self : GPUSamplerBindingLayout,
) -> JsValue =
  #| (self) => ({
  #|   type: ['filtering', 'non-filtering', 'comparison'][self.type_]
  #| })

///|
/// GPUTextureBindingLayout dictionary
pub struct GPUTextureBindingLayout {
  sampleType : GPUTextureSampleType?
  viewDimension : GPUTextureViewDimension?
  multisampled : Bool?
}

///|
/// Create a new GPUTextureBindingLayout with default values
pub fn GPUTextureBindingLayout::default() -> GPUTextureBindingLayout {
  GPUTextureBindingLayout::{
    sampleType: None,
    viewDimension: None,
    multisampled: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUTextureBindingLayout::to_js(
  self : GPUTextureBindingLayout,
) -> JsValue =
  #| (self) => ({
  #|   sampleType: ['float', 'unfilterable-float', 'depth', 'sint', 'uint'][self.sampleType],
  #|   viewDimension: ['1d', '2d', '2d-array', 'cube', 'cube-array', '3d'][self.viewDimension],
  #|   multisampled: self.multisampled
  #| })

///|
/// GPUStorageTextureBindingLayout dictionary
pub struct GPUStorageTextureBindingLayout {
  access : GPUStorageTextureAccess?
  format : GPUTextureFormat
  viewDimension : GPUTextureViewDimension?
}

///|
/// Create a new GPUStorageTextureBindingLayout with default values
pub fn GPUStorageTextureBindingLayout::default() -> GPUStorageTextureBindingLayout {
  GPUStorageTextureBindingLayout::{
    access: None,
    format: panic(),
    viewDimension: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUStorageTextureBindingLayout::to_js(
  self : GPUStorageTextureBindingLayout,
) -> JsValue =
  #| (self) => ({
  #|   access: ['write-only', 'read-only', 'read-write'][self.access],
  #|   format: ['r8unorm', 'r8snorm', 'r8uint', 'r8sint', 'r16unorm', 'r16snorm', 'r16uint', 'r16sint', 'r16float', 'rg8unorm', 'rg8snorm', 'rg8uint', 'rg8sint', 'r32uint', 'r32sint', 'r32float', 'rg16unorm', 'rg16snorm', 'rg16uint', 'rg16sint', 'rg16float', 'rgba8unorm', 'rgba8unorm-srgb', 'rgba8snorm', 'rgba8uint', 'rgba8sint', 'bgra8unorm', 'bgra8unorm-srgb', 'rgb9e5ufloat', 'rgb10a2uint', 'rgb10a2unorm', 'rg11b10ufloat', 'rg32uint', 'rg32sint', 'rg32float', 'rgba16unorm', 'rgba16snorm', 'rgba16uint', 'rgba16sint', 'rgba16float', 'rgba32uint', 'rgba32sint', 'rgba32float', 'stencil8', 'depth16unorm', 'depth24plus', 'depth24plus-stencil8', 'depth32float', 'depth32float-stencil8', 'bc1-rgba-unorm', 'bc1-rgba-unorm-srgb', 'bc2-rgba-unorm', 'bc2-rgba-unorm-srgb', 'bc3-rgba-unorm', 'bc3-rgba-unorm-srgb', 'bc4-r-unorm', 'bc4-r-snorm', 'bc5-rg-unorm', 'bc5-rg-snorm', 'bc6h-rgb-ufloat', 'bc6h-rgb-float', 'bc7-rgba-unorm', 'bc7-rgba-unorm-srgb', 'etc2-rgb8unorm', 'etc2-rgb8unorm-srgb', 'etc2-rgb8a1unorm', 'etc2-rgb8a1unorm-srgb', 'etc2-rgba8unorm', 'etc2-rgba8unorm-srgb', 'eac-r11unorm', 'eac-r11snorm', 'eac-rg11unorm', 'eac-rg11snorm', 'astc-4x4-unorm', 'astc-4x4-unorm-srgb', 'astc-5x4-unorm', 'astc-5x4-unorm-srgb', 'astc-5x5-unorm', 'astc-5x5-unorm-srgb', 'astc-6x5-unorm', 'astc-6x5-unorm-srgb', 'astc-6x6-unorm', 'astc-6x6-unorm-srgb', 'astc-8x5-unorm', 'astc-8x5-unorm-srgb', 'astc-8x6-unorm', 'astc-8x6-unorm-srgb', 'astc-8x8-unorm', 'astc-8x8-unorm-srgb', 'astc-10x5-unorm', 'astc-10x5-unorm-srgb', 'astc-10x6-unorm', 'astc-10x6-unorm-srgb', 'astc-10x8-unorm', 'astc-10x8-unorm-srgb', 'astc-10x10-unorm', 'astc-10x10-unorm-srgb', 'astc-12x10-unorm', 'astc-12x10-unorm-srgb', 'astc-12x12-unorm', 'astc-12x12-unorm-srgb'][self.format],
  #|   viewDimension: ['1d', '2d', '2d-array', 'cube', 'cube-array', '3d'][self.viewDimension]
  #| })

///|
/// GPUExternalTextureBindingLayout dictionary
pub struct GPUExternalTextureBindingLayout {}

///|
/// Create a new GPUExternalTextureBindingLayout with default values
pub fn GPUExternalTextureBindingLayout::default() -> GPUExternalTextureBindingLayout {
  GPUExternalTextureBindingLayout::{  }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUExternalTextureBindingLayout::to_js(
  self : GPUExternalTextureBindingLayout,
) -> JsValue =
  #| (self) => ({
  #| })

///|
/// GPUBindGroupDescriptor dictionary
pub struct GPUBindGroupDescriptor {
  label : String?
  layout : GPUBindGroupLayout
  entries : Array[GPUBindGroupEntry]
}

///|
/// Create a new GPUBindGroupDescriptor with default values
pub fn GPUBindGroupDescriptor::default() -> GPUBindGroupDescriptor {
  GPUBindGroupDescriptor::{ label: None, layout: panic(), entries: [] }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUBindGroupDescriptor::to_js(
  self : GPUBindGroupDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   layout: self.layout,
  #|   entries: self.entries
  #| })

///|
/// GPUBindGroupEntry dictionary
pub struct GPUBindGroupEntry {
  binding : GPUIndex32
  resource : GPUBindingResource
}

///|
/// Create a new GPUBindGroupEntry with default values
pub fn GPUBindGroupEntry::default() -> GPUBindGroupEntry {
  GPUBindGroupEntry::{ binding: panic(), resource: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUBindGroupEntry::to_js(
  self : GPUBindGroupEntry,
) -> JsValue =
  #| (self) => ({
  #|   binding: self.binding,
  #|   resource: self.resource.to_js_value()
  #| })

///|
/// GPUBufferBinding dictionary
pub struct GPUBufferBinding {
  buffer : GPUBuffer
  offset : GPUSize64?
  size : GPUSize64?
}

///|
/// Create a new GPUBufferBinding with default values
pub fn GPUBufferBinding::default() -> GPUBufferBinding {
  GPUBufferBinding::{ buffer: panic(), offset: None, size: None }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUBufferBinding::to_js(self : GPUBufferBinding) -> JsValue =
  #| (self) => ({
  #|   buffer: self.buffer,
  #|   offset: self.offset,
  #|   size: self.size
  #| })

///|
/// GPUPipelineLayoutDescriptor dictionary
pub struct GPUPipelineLayoutDescriptor {
  label : String?
  bindGroupLayouts : Array[GPUBindGroupLayout?]
}

///|
/// Create a new GPUPipelineLayoutDescriptor with default values
pub fn GPUPipelineLayoutDescriptor::default() -> GPUPipelineLayoutDescriptor {
  GPUPipelineLayoutDescriptor::{ label: None, bindGroupLayouts: [] }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUPipelineLayoutDescriptor::to_js(
  self : GPUPipelineLayoutDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   bindGroupLayouts: self.bindGroupLayouts
  #| })

///|
/// GPUShaderModuleDescriptor dictionary
pub struct GPUShaderModuleDescriptor {
  label : String?
  code : String
  compilationHints : Array[GPUShaderModuleCompilationHint]?
}

///|
/// Create a new GPUShaderModuleDescriptor with default values
pub fn GPUShaderModuleDescriptor::default() -> GPUShaderModuleDescriptor {
  GPUShaderModuleDescriptor::{ label: None, code: "", compilationHints: None }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUShaderModuleDescriptor::to_js(
  self : GPUShaderModuleDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   code: self.code,
  #|   compilationHints: self.compilationHints
  #| })

///|
/// GPUShaderModuleCompilationHint dictionary
pub struct GPUShaderModuleCompilationHint {
  entryPoint : String
  layout : JsValue?
}

///|
/// Create a new GPUShaderModuleCompilationHint with default values
pub fn GPUShaderModuleCompilationHint::default() -> GPUShaderModuleCompilationHint {
  GPUShaderModuleCompilationHint::{ entryPoint: "", layout: None }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUShaderModuleCompilationHint::to_js(
  self : GPUShaderModuleCompilationHint,
) -> JsValue =
  #| (self) => ({
  #|   entryPoint: self.entryPoint,
  #|   layout: self.layout
  #| })

///|
/// GPUPipelineErrorInit dictionary
pub struct GPUPipelineErrorInit {
  reason : GPUPipelineErrorReason
}

///|
/// Create a new GPUPipelineErrorInit with default values
pub fn GPUPipelineErrorInit::default() -> GPUPipelineErrorInit {
  GPUPipelineErrorInit::{ reason: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUPipelineErrorInit::to_js(
  self : GPUPipelineErrorInit,
) -> JsValue =
  #| (self) => ({
  #|   reason: ['validation', 'internal'][self.reason]
  #| })

///|
/// GPUPipelineDescriptorBase dictionary
pub struct GPUPipelineDescriptorBase {
  label : String?
  layout : JsValue
}

///|
/// Create a new GPUPipelineDescriptorBase with default values
pub fn GPUPipelineDescriptorBase::default() -> GPUPipelineDescriptorBase {
  GPUPipelineDescriptorBase::{ label: None, layout: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUPipelineDescriptorBase::to_js(
  self : GPUPipelineDescriptorBase,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   layout: self.layout
  #| })

///|
/// GPUProgrammableStage dictionary
pub struct GPUProgrammableStage {
  module_ : GPUShaderModule
  entryPoint : String?
  constants : JsValue?
}

///|
/// Create a new GPUProgrammableStage with default values
pub fn GPUProgrammableStage::default() -> GPUProgrammableStage {
  GPUProgrammableStage::{ module_: panic(), entryPoint: None, constants: None }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUProgrammableStage::to_js(
  self : GPUProgrammableStage,
) -> JsValue =
  #| (self) => ({
  #|   module: self.module_,
  #|   entryPoint: self.entryPoint,
  #|   constants: self.constants
  #| })

///|
/// GPUComputePipelineDescriptor dictionary
pub struct GPUComputePipelineDescriptor {
  label : String?
  layout : JsValue
  compute : GPUProgrammableStage
}

///|
/// Create a new GPUComputePipelineDescriptor with default values
pub fn GPUComputePipelineDescriptor::default() -> GPUComputePipelineDescriptor {
  GPUComputePipelineDescriptor::{
    label: None,
    layout: panic(),
    compute: panic(),
  }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUComputePipelineDescriptor::to_js(
  self : GPUComputePipelineDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   layout: self.layout,
  #|   compute: self.compute
  #| })

///|
/// GPURenderPipelineDescriptor dictionary
pub struct GPURenderPipelineDescriptor {
  label : String?
  layout : JsValue
  vertex : GPUVertexState
  primitive : GPUPrimitiveState?
  depthStencil : GPUDepthStencilState?
  multisample : GPUMultisampleState?
  fragment : GPUFragmentState?
}

///|
/// Create a new GPURenderPipelineDescriptor with default values
pub fn GPURenderPipelineDescriptor::default() -> GPURenderPipelineDescriptor {
  GPURenderPipelineDescriptor::{
    label: None,
    layout: panic(),
    vertex: panic(),
    primitive: None,
    depthStencil: None,
    multisample: None,
    fragment: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn GPURenderPipelineDescriptor::to_js(
  self : GPURenderPipelineDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   layout: self.layout,
  #|   vertex: self.vertex,
  #|   primitive: self.primitive,
  #|   depthStencil: self.depthStencil,
  #|   multisample: self.multisample,
  #|   fragment: self.fragment
  #| })

///|
/// GPUPrimitiveState dictionary
pub struct GPUPrimitiveState {
  topology : GPUPrimitiveTopology?
  stripIndexFormat : GPUIndexFormat?
  frontFace : GPUFrontFace?
  cullMode : GPUCullMode?
  unclippedDepth : Bool?
}

///|
/// Create a new GPUPrimitiveState with default values
pub fn GPUPrimitiveState::default() -> GPUPrimitiveState {
  GPUPrimitiveState::{
    topology: None,
    stripIndexFormat: None,
    frontFace: None,
    cullMode: None,
    unclippedDepth: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUPrimitiveState::to_js(
  self : GPUPrimitiveState,
) -> JsValue =
  #| (self) => ({
  #|   topology: ['point-list', 'line-list', 'line-strip', 'triangle-list', 'triangle-strip'][self.topology],
  #|   stripIndexFormat: ['uint16', 'uint32'][self.stripIndexFormat],
  #|   frontFace: ['ccw', 'cw'][self.frontFace],
  #|   cullMode: ['none', 'front', 'back'][self.cullMode],
  #|   unclippedDepth: self.unclippedDepth
  #| })

///|
/// GPUMultisampleState dictionary
pub struct GPUMultisampleState {
  count : GPUSize32?
  mask : GPUSampleMask?
  alphaToCoverageEnabled : Bool?
}

///|
/// Create a new GPUMultisampleState with default values
pub fn GPUMultisampleState::default() -> GPUMultisampleState {
  GPUMultisampleState::{ count: None, mask: None, alphaToCoverageEnabled: None }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUMultisampleState::to_js(
  self : GPUMultisampleState,
) -> JsValue =
  #| (self) => ({
  #|   count: self.count,
  #|   mask: self.mask,
  #|   alphaToCoverageEnabled: self.alphaToCoverageEnabled
  #| })

///|
/// GPUFragmentState dictionary
pub struct GPUFragmentState {
  module_ : GPUShaderModule
  entryPoint : String?
  constants : JsValue?
  targets : Array[GPUColorTargetState?]
}

///|
/// Create a new GPUFragmentState with default values
pub fn GPUFragmentState::default() -> GPUFragmentState {
  GPUFragmentState::{
    module_: panic(),
    entryPoint: None,
    constants: None,
    targets: [],
  }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUFragmentState::to_js(self : GPUFragmentState) -> JsValue =
  #| (self) => ({
  #|   module: self.module_,
  #|   entryPoint: self.entryPoint,
  #|   constants: self.constants,
  #|   targets: self.targets
  #| })

///|
/// GPUColorTargetState dictionary
pub struct GPUColorTargetState {
  format : GPUTextureFormat
  blend : GPUBlendState?
  writeMask : GPUColorWriteFlags?
}

///|
/// Create a new GPUColorTargetState with default values
pub fn GPUColorTargetState::default() -> GPUColorTargetState {
  GPUColorTargetState::{ format: panic(), blend: None, writeMask: None }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUColorTargetState::to_js(
  self : GPUColorTargetState,
) -> JsValue =
  #| (self) => ({
  #|   format: ['r8unorm', 'r8snorm', 'r8uint', 'r8sint', 'r16unorm', 'r16snorm', 'r16uint', 'r16sint', 'r16float', 'rg8unorm', 'rg8snorm', 'rg8uint', 'rg8sint', 'r32uint', 'r32sint', 'r32float', 'rg16unorm', 'rg16snorm', 'rg16uint', 'rg16sint', 'rg16float', 'rgba8unorm', 'rgba8unorm-srgb', 'rgba8snorm', 'rgba8uint', 'rgba8sint', 'bgra8unorm', 'bgra8unorm-srgb', 'rgb9e5ufloat', 'rgb10a2uint', 'rgb10a2unorm', 'rg11b10ufloat', 'rg32uint', 'rg32sint', 'rg32float', 'rgba16unorm', 'rgba16snorm', 'rgba16uint', 'rgba16sint', 'rgba16float', 'rgba32uint', 'rgba32sint', 'rgba32float', 'stencil8', 'depth16unorm', 'depth24plus', 'depth24plus-stencil8', 'depth32float', 'depth32float-stencil8', 'bc1-rgba-unorm', 'bc1-rgba-unorm-srgb', 'bc2-rgba-unorm', 'bc2-rgba-unorm-srgb', 'bc3-rgba-unorm', 'bc3-rgba-unorm-srgb', 'bc4-r-unorm', 'bc4-r-snorm', 'bc5-rg-unorm', 'bc5-rg-snorm', 'bc6h-rgb-ufloat', 'bc6h-rgb-float', 'bc7-rgba-unorm', 'bc7-rgba-unorm-srgb', 'etc2-rgb8unorm', 'etc2-rgb8unorm-srgb', 'etc2-rgb8a1unorm', 'etc2-rgb8a1unorm-srgb', 'etc2-rgba8unorm', 'etc2-rgba8unorm-srgb', 'eac-r11unorm', 'eac-r11snorm', 'eac-rg11unorm', 'eac-rg11snorm', 'astc-4x4-unorm', 'astc-4x4-unorm-srgb', 'astc-5x4-unorm', 'astc-5x4-unorm-srgb', 'astc-5x5-unorm', 'astc-5x5-unorm-srgb', 'astc-6x5-unorm', 'astc-6x5-unorm-srgb', 'astc-6x6-unorm', 'astc-6x6-unorm-srgb', 'astc-8x5-unorm', 'astc-8x5-unorm-srgb', 'astc-8x6-unorm', 'astc-8x6-unorm-srgb', 'astc-8x8-unorm', 'astc-8x8-unorm-srgb', 'astc-10x5-unorm', 'astc-10x5-unorm-srgb', 'astc-10x6-unorm', 'astc-10x6-unorm-srgb', 'astc-10x8-unorm', 'astc-10x8-unorm-srgb', 'astc-10x10-unorm', 'astc-10x10-unorm-srgb', 'astc-12x10-unorm', 'astc-12x10-unorm-srgb', 'astc-12x12-unorm', 'astc-12x12-unorm-srgb'][self.format],
  #|   blend: self.blend,
  #|   writeMask: self.writeMask
  #| })

///|
/// GPUBlendState dictionary
pub struct GPUBlendState {
  color : GPUBlendComponent
  alpha : GPUBlendComponent
}

///|
/// Create a new GPUBlendState with default values
pub fn GPUBlendState::default() -> GPUBlendState {
  GPUBlendState::{ color: panic(), alpha: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUBlendState::to_js(self : GPUBlendState) -> JsValue =
  #| (self) => ({
  #|   color: self.color,
  #|   alpha: self.alpha
  #| })

///|
/// GPUBlendComponent dictionary
pub struct GPUBlendComponent {
  operation : GPUBlendOperation?
  srcFactor : GPUBlendFactor?
  dstFactor : GPUBlendFactor?
}

///|
/// Create a new GPUBlendComponent with default values
pub fn GPUBlendComponent::default() -> GPUBlendComponent {
  GPUBlendComponent::{ operation: None, srcFactor: None, dstFactor: None }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUBlendComponent::to_js(
  self : GPUBlendComponent,
) -> JsValue =
  #| (self) => ({
  #|   operation: ['add', 'subtract', 'reverse-subtract', 'min', 'max'][self.operation],
  #|   srcFactor: ['zero', 'one', 'src', 'one-minus-src', 'src-alpha', 'one-minus-src-alpha', 'dst', 'one-minus-dst', 'dst-alpha', 'one-minus-dst-alpha', 'src-alpha-saturated', 'constant', 'one-minus-constant', 'src1', 'one-minus-src1', 'src1-alpha', 'one-minus-src1-alpha'][self.srcFactor],
  #|   dstFactor: ['zero', 'one', 'src', 'one-minus-src', 'src-alpha', 'one-minus-src-alpha', 'dst', 'one-minus-dst', 'dst-alpha', 'one-minus-dst-alpha', 'src-alpha-saturated', 'constant', 'one-minus-constant', 'src1', 'one-minus-src1', 'src1-alpha', 'one-minus-src1-alpha'][self.dstFactor]
  #| })

///|
/// GPUDepthStencilState dictionary
pub struct GPUDepthStencilState {
  format : GPUTextureFormat
  depthWriteEnabled : Bool?
  depthCompare : GPUCompareFunction?
  stencilFront : GPUStencilFaceState?
  stencilBack : GPUStencilFaceState?
  stencilReadMask : GPUStencilValue?
  stencilWriteMask : GPUStencilValue?
  depthBias : GPUDepthBias?
  depthBiasSlopeScale : Double?
  depthBiasClamp : Double?
}

///|
/// Create a new GPUDepthStencilState with default values
pub fn GPUDepthStencilState::default() -> GPUDepthStencilState {
  GPUDepthStencilState::{
    format: panic(),
    depthWriteEnabled: None,
    depthCompare: None,
    stencilFront: None,
    stencilBack: None,
    stencilReadMask: None,
    stencilWriteMask: None,
    depthBias: None,
    depthBiasSlopeScale: None,
    depthBiasClamp: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUDepthStencilState::to_js(
  self : GPUDepthStencilState,
) -> JsValue =
  #| (self) => ({
  #|   format: ['r8unorm', 'r8snorm', 'r8uint', 'r8sint', 'r16unorm', 'r16snorm', 'r16uint', 'r16sint', 'r16float', 'rg8unorm', 'rg8snorm', 'rg8uint', 'rg8sint', 'r32uint', 'r32sint', 'r32float', 'rg16unorm', 'rg16snorm', 'rg16uint', 'rg16sint', 'rg16float', 'rgba8unorm', 'rgba8unorm-srgb', 'rgba8snorm', 'rgba8uint', 'rgba8sint', 'bgra8unorm', 'bgra8unorm-srgb', 'rgb9e5ufloat', 'rgb10a2uint', 'rgb10a2unorm', 'rg11b10ufloat', 'rg32uint', 'rg32sint', 'rg32float', 'rgba16unorm', 'rgba16snorm', 'rgba16uint', 'rgba16sint', 'rgba16float', 'rgba32uint', 'rgba32sint', 'rgba32float', 'stencil8', 'depth16unorm', 'depth24plus', 'depth24plus-stencil8', 'depth32float', 'depth32float-stencil8', 'bc1-rgba-unorm', 'bc1-rgba-unorm-srgb', 'bc2-rgba-unorm', 'bc2-rgba-unorm-srgb', 'bc3-rgba-unorm', 'bc3-rgba-unorm-srgb', 'bc4-r-unorm', 'bc4-r-snorm', 'bc5-rg-unorm', 'bc5-rg-snorm', 'bc6h-rgb-ufloat', 'bc6h-rgb-float', 'bc7-rgba-unorm', 'bc7-rgba-unorm-srgb', 'etc2-rgb8unorm', 'etc2-rgb8unorm-srgb', 'etc2-rgb8a1unorm', 'etc2-rgb8a1unorm-srgb', 'etc2-rgba8unorm', 'etc2-rgba8unorm-srgb', 'eac-r11unorm', 'eac-r11snorm', 'eac-rg11unorm', 'eac-rg11snorm', 'astc-4x4-unorm', 'astc-4x4-unorm-srgb', 'astc-5x4-unorm', 'astc-5x4-unorm-srgb', 'astc-5x5-unorm', 'astc-5x5-unorm-srgb', 'astc-6x5-unorm', 'astc-6x5-unorm-srgb', 'astc-6x6-unorm', 'astc-6x6-unorm-srgb', 'astc-8x5-unorm', 'astc-8x5-unorm-srgb', 'astc-8x6-unorm', 'astc-8x6-unorm-srgb', 'astc-8x8-unorm', 'astc-8x8-unorm-srgb', 'astc-10x5-unorm', 'astc-10x5-unorm-srgb', 'astc-10x6-unorm', 'astc-10x6-unorm-srgb', 'astc-10x8-unorm', 'astc-10x8-unorm-srgb', 'astc-10x10-unorm', 'astc-10x10-unorm-srgb', 'astc-12x10-unorm', 'astc-12x10-unorm-srgb', 'astc-12x12-unorm', 'astc-12x12-unorm-srgb'][self.format],
  #|   depthWriteEnabled: self.depthWriteEnabled,
  #|   depthCompare: ['never', 'less', 'equal', 'less-equal', 'greater', 'not-equal', 'greater-equal', 'always'][self.depthCompare],
  #|   stencilFront: self.stencilFront,
  #|   stencilBack: self.stencilBack,
  #|   stencilReadMask: self.stencilReadMask,
  #|   stencilWriteMask: self.stencilWriteMask,
  #|   depthBias: self.depthBias,
  #|   depthBiasSlopeScale: self.depthBiasSlopeScale,
  #|   depthBiasClamp: self.depthBiasClamp
  #| })

///|
/// GPUStencilFaceState dictionary
pub struct GPUStencilFaceState {
  compare : GPUCompareFunction?
  failOp : GPUStencilOperation?
  depthFailOp : GPUStencilOperation?
  passOp : GPUStencilOperation?
}

///|
/// Create a new GPUStencilFaceState with default values
pub fn GPUStencilFaceState::default() -> GPUStencilFaceState {
  GPUStencilFaceState::{
    compare: None,
    failOp: None,
    depthFailOp: None,
    passOp: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUStencilFaceState::to_js(
  self : GPUStencilFaceState,
) -> JsValue =
  #| (self) => ({
  #|   compare: ['never', 'less', 'equal', 'less-equal', 'greater', 'not-equal', 'greater-equal', 'always'][self.compare],
  #|   failOp: ['keep', 'zero', 'replace', 'invert', 'increment-clamp', 'decrement-clamp', 'increment-wrap', 'decrement-wrap'][self.failOp],
  #|   depthFailOp: ['keep', 'zero', 'replace', 'invert', 'increment-clamp', 'decrement-clamp', 'increment-wrap', 'decrement-wrap'][self.depthFailOp],
  #|   passOp: ['keep', 'zero', 'replace', 'invert', 'increment-clamp', 'decrement-clamp', 'increment-wrap', 'decrement-wrap'][self.passOp]
  #| })

///|
/// GPUVertexState dictionary
pub struct GPUVertexState {
  module_ : GPUShaderModule
  entryPoint : String?
  constants : JsValue?
  buffers : Array[GPUVertexBufferLayout?]?
}

///|
/// Create a new GPUVertexState with default values
pub fn GPUVertexState::default() -> GPUVertexState {
  GPUVertexState::{
    module_: panic(),
    entryPoint: None,
    constants: None,
    buffers: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUVertexState::to_js(self : GPUVertexState) -> JsValue =
  #| (self) => ({
  #|   module: self.module_,
  #|   entryPoint: self.entryPoint,
  #|   constants: self.constants,
  #|   buffers: self.buffers
  #| })

///|
/// GPUVertexBufferLayout dictionary
pub struct GPUVertexBufferLayout {
  arrayStride : GPUSize64
  stepMode : GPUVertexStepMode?
  attributes : Array[GPUVertexAttribute]
}

///|
/// Create a new GPUVertexBufferLayout with default values
pub fn GPUVertexBufferLayout::default() -> GPUVertexBufferLayout {
  GPUVertexBufferLayout::{
    arrayStride: panic(),
    stepMode: None,
    attributes: [],
  }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUVertexBufferLayout::to_js(
  self : GPUVertexBufferLayout,
) -> JsValue =
  #| (self) => ({
  #|   arrayStride: self.arrayStride,
  #|   stepMode: ['vertex', 'instance'][self.stepMode],
  #|   attributes: self.attributes
  #| })

///|
/// GPUVertexAttribute dictionary
pub struct GPUVertexAttribute {
  format : GPUVertexFormat
  offset : GPUSize64
  shaderLocation : GPUIndex32
}

///|
/// Create a new GPUVertexAttribute with default values
pub fn GPUVertexAttribute::default() -> GPUVertexAttribute {
  GPUVertexAttribute::{
    format: panic(),
    offset: panic(),
    shaderLocation: panic(),
  }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUVertexAttribute::to_js(
  self : GPUVertexAttribute,
) -> JsValue =
  #| (self) => ({
  #|   format: ['uint8', 'uint8x2', 'uint8x4', 'sint8', 'sint8x2', 'sint8x4', 'unorm8', 'unorm8x2', 'unorm8x4', 'snorm8', 'snorm8x2', 'snorm8x4', 'uint16', 'uint16x2', 'uint16x4', 'sint16', 'sint16x2', 'sint16x4', 'unorm16', 'unorm16x2', 'unorm16x4', 'snorm16', 'snorm16x2', 'snorm16x4', 'float16', 'float16x2', 'float16x4', 'float32', 'float32x2', 'float32x3', 'float32x4', 'uint32', 'uint32x2', 'uint32x3', 'uint32x4', 'sint32', 'sint32x2', 'sint32x3', 'sint32x4', 'unorm10-10-10-2', 'unorm8x4-bgra'][self.format],
  #|   offset: self.offset,
  #|   shaderLocation: self.shaderLocation
  #| })

///|
/// GPUTexelCopyBufferLayout dictionary
pub struct GPUTexelCopyBufferLayout {
  offset : GPUSize64?
  bytesPerRow : GPUSize32?
  rowsPerImage : GPUSize32?
}

///|
/// Create a new GPUTexelCopyBufferLayout with default values
pub fn GPUTexelCopyBufferLayout::default() -> GPUTexelCopyBufferLayout {
  GPUTexelCopyBufferLayout::{
    offset: None,
    bytesPerRow: None,
    rowsPerImage: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUTexelCopyBufferLayout::to_js(
  self : GPUTexelCopyBufferLayout,
) -> JsValue =
  #| (self) => ({
  #|   offset: self.offset,
  #|   bytesPerRow: self.bytesPerRow,
  #|   rowsPerImage: self.rowsPerImage
  #| })

///|
/// GPUTexelCopyBufferInfo dictionary
pub struct GPUTexelCopyBufferInfo {
  offset : GPUSize64?
  bytesPerRow : GPUSize32?
  rowsPerImage : GPUSize32?
  buffer : GPUBuffer
}

///|
/// Create a new GPUTexelCopyBufferInfo with default values
pub fn GPUTexelCopyBufferInfo::default() -> GPUTexelCopyBufferInfo {
  GPUTexelCopyBufferInfo::{
    offset: None,
    bytesPerRow: None,
    rowsPerImage: None,
    buffer: panic(),
  }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUTexelCopyBufferInfo::to_js(
  self : GPUTexelCopyBufferInfo,
) -> JsValue =
  #| (self) => ({
  #|   offset: self.offset,
  #|   bytesPerRow: self.bytesPerRow,
  #|   rowsPerImage: self.rowsPerImage,
  #|   buffer: self.buffer
  #| })

///|
/// GPUTexelCopyTextureInfo dictionary
pub struct GPUTexelCopyTextureInfo {
  texture : GPUTexture
  mipLevel : GPUIntegerCoordinate?
  origin : GPUOrigin3D?
  aspect : GPUTextureAspect?
}

///|
/// Create a new GPUTexelCopyTextureInfo with default values
pub fn GPUTexelCopyTextureInfo::default() -> GPUTexelCopyTextureInfo {
  GPUTexelCopyTextureInfo::{
    texture: panic(),
    mipLevel: None,
    origin: None,
    aspect: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUTexelCopyTextureInfo::to_js(
  self : GPUTexelCopyTextureInfo,
) -> JsValue =
  #| (self) => ({
  #|   texture: self.texture,
  #|   mipLevel: self.mipLevel,
  #|   origin: self.origin.to_js_value(),
  #|   aspect: ['all', 'stencil-only', 'depth-only'][self.aspect]
  #| })

///|
/// GPUCopyExternalImageDestInfo dictionary
pub struct GPUCopyExternalImageDestInfo {
  texture : GPUTexture
  mipLevel : GPUIntegerCoordinate?
  origin : GPUOrigin3D?
  aspect : GPUTextureAspect?
  colorSpace : PredefinedColorSpace?
  premultipliedAlpha : Bool?
}

///|
/// Create a new GPUCopyExternalImageDestInfo with default values
pub fn GPUCopyExternalImageDestInfo::default() -> GPUCopyExternalImageDestInfo {
  GPUCopyExternalImageDestInfo::{
    texture: panic(),
    mipLevel: None,
    origin: None,
    aspect: None,
    colorSpace: None,
    premultipliedAlpha: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUCopyExternalImageDestInfo::to_js(
  self : GPUCopyExternalImageDestInfo,
) -> JsValue =
  #| (self) => ({
  #|   texture: self.texture,
  #|   mipLevel: self.mipLevel,
  #|   origin: self.origin.to_js_value(),
  #|   aspect: ['all', 'stencil-only', 'depth-only'][self.aspect],
  #|   colorSpace: ['srgb', 'srgb-linear', 'display-p3', 'display-p3-linear'][self.colorSpace],
  #|   premultipliedAlpha: self.premultipliedAlpha
  #| })

///|
/// GPUCopyExternalImageSourceInfo dictionary
pub struct GPUCopyExternalImageSourceInfo {
  source : GPUCopyExternalImageSource
  origin : GPUOrigin2D?
  flipY : Bool?
}

///|
/// Create a new GPUCopyExternalImageSourceInfo with default values
pub fn GPUCopyExternalImageSourceInfo::default() -> GPUCopyExternalImageSourceInfo {
  GPUCopyExternalImageSourceInfo::{ source: panic(), origin: None, flipY: None }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUCopyExternalImageSourceInfo::to_js(
  self : GPUCopyExternalImageSourceInfo,
) -> JsValue =
  #| (self) => ({
  #|   source: self.source.to_js_value(),
  #|   origin: self.origin.to_js_value(),
  #|   flipY: self.flipY
  #| })

///|
/// GPUCommandBufferDescriptor dictionary
pub struct GPUCommandBufferDescriptor {
  label : String?
}

///|
/// Create a new GPUCommandBufferDescriptor with default values
pub fn GPUCommandBufferDescriptor::default() -> GPUCommandBufferDescriptor {
  GPUCommandBufferDescriptor::{ label: None }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUCommandBufferDescriptor::to_js(
  self : GPUCommandBufferDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label
  #| })

///|
/// GPUCommandEncoderDescriptor dictionary
pub struct GPUCommandEncoderDescriptor {
  label : String?
}

///|
/// Create a new GPUCommandEncoderDescriptor with default values
pub fn GPUCommandEncoderDescriptor::default() -> GPUCommandEncoderDescriptor {
  GPUCommandEncoderDescriptor::{ label: None }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUCommandEncoderDescriptor::to_js(
  self : GPUCommandEncoderDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label
  #| })

///|
/// GPUComputePassTimestampWrites dictionary
pub struct GPUComputePassTimestampWrites {
  querySet : GPUQuerySet
  beginningOfPassWriteIndex : GPUSize32?
  endOfPassWriteIndex : GPUSize32?
}

///|
/// Create a new GPUComputePassTimestampWrites with default values
pub fn GPUComputePassTimestampWrites::default() -> GPUComputePassTimestampWrites {
  GPUComputePassTimestampWrites::{
    querySet: panic(),
    beginningOfPassWriteIndex: None,
    endOfPassWriteIndex: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUComputePassTimestampWrites::to_js(
  self : GPUComputePassTimestampWrites,
) -> JsValue =
  #| (self) => ({
  #|   querySet: self.querySet,
  #|   beginningOfPassWriteIndex: self.beginningOfPassWriteIndex,
  #|   endOfPassWriteIndex: self.endOfPassWriteIndex
  #| })

///|
/// GPUComputePassDescriptor dictionary
pub struct GPUComputePassDescriptor {
  label : String?
  timestampWrites : GPUComputePassTimestampWrites?
}

///|
/// Create a new GPUComputePassDescriptor with default values
pub fn GPUComputePassDescriptor::default() -> GPUComputePassDescriptor {
  GPUComputePassDescriptor::{ label: None, timestampWrites: None }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUComputePassDescriptor::to_js(
  self : GPUComputePassDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   timestampWrites: self.timestampWrites
  #| })

///|
/// GPURenderPassTimestampWrites dictionary
pub struct GPURenderPassTimestampWrites {
  querySet : GPUQuerySet
  beginningOfPassWriteIndex : GPUSize32?
  endOfPassWriteIndex : GPUSize32?
}

///|
/// Create a new GPURenderPassTimestampWrites with default values
pub fn GPURenderPassTimestampWrites::default() -> GPURenderPassTimestampWrites {
  GPURenderPassTimestampWrites::{
    querySet: panic(),
    beginningOfPassWriteIndex: None,
    endOfPassWriteIndex: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn GPURenderPassTimestampWrites::to_js(
  self : GPURenderPassTimestampWrites,
) -> JsValue =
  #| (self) => ({
  #|   querySet: self.querySet,
  #|   beginningOfPassWriteIndex: self.beginningOfPassWriteIndex,
  #|   endOfPassWriteIndex: self.endOfPassWriteIndex
  #| })

///|
/// GPURenderPassDescriptor dictionary
pub struct GPURenderPassDescriptor {
  label : String?
  colorAttachments : Array[GPURenderPassColorAttachment?]
  depthStencilAttachment : GPURenderPassDepthStencilAttachment?
  occlusionQuerySet : GPUQuerySet?
  timestampWrites : GPURenderPassTimestampWrites?
  maxDrawCount : GPUSize64?
}

///|
/// Create a new GPURenderPassDescriptor with default values
pub fn GPURenderPassDescriptor::default() -> GPURenderPassDescriptor {
  GPURenderPassDescriptor::{
    label: None,
    colorAttachments: [],
    depthStencilAttachment: None,
    occlusionQuerySet: None,
    timestampWrites: None,
    maxDrawCount: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn GPURenderPassDescriptor::to_js(
  self : GPURenderPassDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   colorAttachments: self.colorAttachments,
  #|   depthStencilAttachment: self.depthStencilAttachment,
  #|   occlusionQuerySet: self.occlusionQuerySet,
  #|   timestampWrites: self.timestampWrites,
  #|   maxDrawCount: self.maxDrawCount
  #| })

///|
/// GPURenderPassColorAttachment dictionary
pub struct GPURenderPassColorAttachment {
  view : JsValue
  depthSlice : GPUIntegerCoordinate?
  resolveTarget : JsValue?
  clearValue : GPUColor?
  loadOp : GPULoadOp
  storeOp : GPUStoreOp
}

///|
/// Create a new GPURenderPassColorAttachment with default values
pub fn GPURenderPassColorAttachment::default() -> GPURenderPassColorAttachment {
  GPURenderPassColorAttachment::{
    view: panic(),
    depthSlice: None,
    resolveTarget: None,
    clearValue: None,
    loadOp: panic(),
    storeOp: panic(),
  }
}

///|
/// Convert to JsValue
pub extern "js" fn GPURenderPassColorAttachment::to_js(
  self : GPURenderPassColorAttachment,
) -> JsValue =
  #| (self) => ({
  #|   view: self.view,
  #|   depthSlice: self.depthSlice,
  #|   resolveTarget: self.resolveTarget,
  #|   clearValue: self.clearValue.to_js_value(),
  #|   loadOp: ['load', 'clear'][self.loadOp],
  #|   storeOp: ['store', 'discard'][self.storeOp]
  #| })

///|
/// GPURenderPassDepthStencilAttachment dictionary
pub struct GPURenderPassDepthStencilAttachment {
  view : JsValue
  depthClearValue : Double?
  depthLoadOp : GPULoadOp?
  depthStoreOp : GPUStoreOp?
  depthReadOnly : Bool?
  stencilClearValue : GPUStencilValue?
  stencilLoadOp : GPULoadOp?
  stencilStoreOp : GPUStoreOp?
  stencilReadOnly : Bool?
}

///|
/// Create a new GPURenderPassDepthStencilAttachment with default values
pub fn GPURenderPassDepthStencilAttachment::default() -> GPURenderPassDepthStencilAttachment {
  GPURenderPassDepthStencilAttachment::{
    view: panic(),
    depthClearValue: None,
    depthLoadOp: None,
    depthStoreOp: None,
    depthReadOnly: None,
    stencilClearValue: None,
    stencilLoadOp: None,
    stencilStoreOp: None,
    stencilReadOnly: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn GPURenderPassDepthStencilAttachment::to_js(
  self : GPURenderPassDepthStencilAttachment,
) -> JsValue =
  #| (self) => ({
  #|   view: self.view,
  #|   depthClearValue: self.depthClearValue,
  #|   depthLoadOp: ['load', 'clear'][self.depthLoadOp],
  #|   depthStoreOp: ['store', 'discard'][self.depthStoreOp],
  #|   depthReadOnly: self.depthReadOnly,
  #|   stencilClearValue: self.stencilClearValue,
  #|   stencilLoadOp: ['load', 'clear'][self.stencilLoadOp],
  #|   stencilStoreOp: ['store', 'discard'][self.stencilStoreOp],
  #|   stencilReadOnly: self.stencilReadOnly
  #| })

///|
/// GPURenderPassLayout dictionary
pub struct GPURenderPassLayout {
  label : String?
  colorFormats : Array[GPUTextureFormat?]
  depthStencilFormat : GPUTextureFormat?
  sampleCount : GPUSize32?
}

///|
/// Create a new GPURenderPassLayout with default values
pub fn GPURenderPassLayout::default() -> GPURenderPassLayout {
  GPURenderPassLayout::{
    label: None,
    colorFormats: [],
    depthStencilFormat: None,
    sampleCount: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn GPURenderPassLayout::to_js(
  self : GPURenderPassLayout,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   colorFormats: self.colorFormats,
  #|   depthStencilFormat: ['r8unorm', 'r8snorm', 'r8uint', 'r8sint', 'r16unorm', 'r16snorm', 'r16uint', 'r16sint', 'r16float', 'rg8unorm', 'rg8snorm', 'rg8uint', 'rg8sint', 'r32uint', 'r32sint', 'r32float', 'rg16unorm', 'rg16snorm', 'rg16uint', 'rg16sint', 'rg16float', 'rgba8unorm', 'rgba8unorm-srgb', 'rgba8snorm', 'rgba8uint', 'rgba8sint', 'bgra8unorm', 'bgra8unorm-srgb', 'rgb9e5ufloat', 'rgb10a2uint', 'rgb10a2unorm', 'rg11b10ufloat', 'rg32uint', 'rg32sint', 'rg32float', 'rgba16unorm', 'rgba16snorm', 'rgba16uint', 'rgba16sint', 'rgba16float', 'rgba32uint', 'rgba32sint', 'rgba32float', 'stencil8', 'depth16unorm', 'depth24plus', 'depth24plus-stencil8', 'depth32float', 'depth32float-stencil8', 'bc1-rgba-unorm', 'bc1-rgba-unorm-srgb', 'bc2-rgba-unorm', 'bc2-rgba-unorm-srgb', 'bc3-rgba-unorm', 'bc3-rgba-unorm-srgb', 'bc4-r-unorm', 'bc4-r-snorm', 'bc5-rg-unorm', 'bc5-rg-snorm', 'bc6h-rgb-ufloat', 'bc6h-rgb-float', 'bc7-rgba-unorm', 'bc7-rgba-unorm-srgb', 'etc2-rgb8unorm', 'etc2-rgb8unorm-srgb', 'etc2-rgb8a1unorm', 'etc2-rgb8a1unorm-srgb', 'etc2-rgba8unorm', 'etc2-rgba8unorm-srgb', 'eac-r11unorm', 'eac-r11snorm', 'eac-rg11unorm', 'eac-rg11snorm', 'astc-4x4-unorm', 'astc-4x4-unorm-srgb', 'astc-5x4-unorm', 'astc-5x4-unorm-srgb', 'astc-5x5-unorm', 'astc-5x5-unorm-srgb', 'astc-6x5-unorm', 'astc-6x5-unorm-srgb', 'astc-6x6-unorm', 'astc-6x6-unorm-srgb', 'astc-8x5-unorm', 'astc-8x5-unorm-srgb', 'astc-8x6-unorm', 'astc-8x6-unorm-srgb', 'astc-8x8-unorm', 'astc-8x8-unorm-srgb', 'astc-10x5-unorm', 'astc-10x5-unorm-srgb', 'astc-10x6-unorm', 'astc-10x6-unorm-srgb', 'astc-10x8-unorm', 'astc-10x8-unorm-srgb', 'astc-10x10-unorm', 'astc-10x10-unorm-srgb', 'astc-12x10-unorm', 'astc-12x10-unorm-srgb', 'astc-12x12-unorm', 'astc-12x12-unorm-srgb'][self.depthStencilFormat],
  #|   sampleCount: self.sampleCount
  #| })

///|
/// GPURenderBundleDescriptor dictionary
pub struct GPURenderBundleDescriptor {
  label : String?
}

///|
/// Create a new GPURenderBundleDescriptor with default values
pub fn GPURenderBundleDescriptor::default() -> GPURenderBundleDescriptor {
  GPURenderBundleDescriptor::{ label: None }
}

///|
/// Convert to JsValue
pub extern "js" fn GPURenderBundleDescriptor::to_js(
  self : GPURenderBundleDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label
  #| })

///|
/// GPURenderBundleEncoderDescriptor dictionary
pub struct GPURenderBundleEncoderDescriptor {
  label : String?
  colorFormats : Array[GPUTextureFormat?]
  depthStencilFormat : GPUTextureFormat?
  sampleCount : GPUSize32?
  depthReadOnly : Bool?
  stencilReadOnly : Bool?
}

///|
/// Create a new GPURenderBundleEncoderDescriptor with default values
pub fn GPURenderBundleEncoderDescriptor::default() -> GPURenderBundleEncoderDescriptor {
  GPURenderBundleEncoderDescriptor::{
    label: None,
    colorFormats: [],
    depthStencilFormat: None,
    sampleCount: None,
    depthReadOnly: None,
    stencilReadOnly: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn GPURenderBundleEncoderDescriptor::to_js(
  self : GPURenderBundleEncoderDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   colorFormats: self.colorFormats,
  #|   depthStencilFormat: ['r8unorm', 'r8snorm', 'r8uint', 'r8sint', 'r16unorm', 'r16snorm', 'r16uint', 'r16sint', 'r16float', 'rg8unorm', 'rg8snorm', 'rg8uint', 'rg8sint', 'r32uint', 'r32sint', 'r32float', 'rg16unorm', 'rg16snorm', 'rg16uint', 'rg16sint', 'rg16float', 'rgba8unorm', 'rgba8unorm-srgb', 'rgba8snorm', 'rgba8uint', 'rgba8sint', 'bgra8unorm', 'bgra8unorm-srgb', 'rgb9e5ufloat', 'rgb10a2uint', 'rgb10a2unorm', 'rg11b10ufloat', 'rg32uint', 'rg32sint', 'rg32float', 'rgba16unorm', 'rgba16snorm', 'rgba16uint', 'rgba16sint', 'rgba16float', 'rgba32uint', 'rgba32sint', 'rgba32float', 'stencil8', 'depth16unorm', 'depth24plus', 'depth24plus-stencil8', 'depth32float', 'depth32float-stencil8', 'bc1-rgba-unorm', 'bc1-rgba-unorm-srgb', 'bc2-rgba-unorm', 'bc2-rgba-unorm-srgb', 'bc3-rgba-unorm', 'bc3-rgba-unorm-srgb', 'bc4-r-unorm', 'bc4-r-snorm', 'bc5-rg-unorm', 'bc5-rg-snorm', 'bc6h-rgb-ufloat', 'bc6h-rgb-float', 'bc7-rgba-unorm', 'bc7-rgba-unorm-srgb', 'etc2-rgb8unorm', 'etc2-rgb8unorm-srgb', 'etc2-rgb8a1unorm', 'etc2-rgb8a1unorm-srgb', 'etc2-rgba8unorm', 'etc2-rgba8unorm-srgb', 'eac-r11unorm', 'eac-r11snorm', 'eac-rg11unorm', 'eac-rg11snorm', 'astc-4x4-unorm', 'astc-4x4-unorm-srgb', 'astc-5x4-unorm', 'astc-5x4-unorm-srgb', 'astc-5x5-unorm', 'astc-5x5-unorm-srgb', 'astc-6x5-unorm', 'astc-6x5-unorm-srgb', 'astc-6x6-unorm', 'astc-6x6-unorm-srgb', 'astc-8x5-unorm', 'astc-8x5-unorm-srgb', 'astc-8x6-unorm', 'astc-8x6-unorm-srgb', 'astc-8x8-unorm', 'astc-8x8-unorm-srgb', 'astc-10x5-unorm', 'astc-10x5-unorm-srgb', 'astc-10x6-unorm', 'astc-10x6-unorm-srgb', 'astc-10x8-unorm', 'astc-10x8-unorm-srgb', 'astc-10x10-unorm', 'astc-10x10-unorm-srgb', 'astc-12x10-unorm', 'astc-12x10-unorm-srgb', 'astc-12x12-unorm', 'astc-12x12-unorm-srgb'][self.depthStencilFormat],
  #|   sampleCount: self.sampleCount,
  #|   depthReadOnly: self.depthReadOnly,
  #|   stencilReadOnly: self.stencilReadOnly
  #| })

///|
/// GPUQueueDescriptor dictionary
pub struct GPUQueueDescriptor {
  label : String?
}

///|
/// Create a new GPUQueueDescriptor with default values
pub fn GPUQueueDescriptor::default() -> GPUQueueDescriptor {
  GPUQueueDescriptor::{ label: None }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUQueueDescriptor::to_js(
  self : GPUQueueDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label
  #| })

///|
/// GPUQuerySetDescriptor dictionary
pub struct GPUQuerySetDescriptor {
  label : String?
  type_ : GPUQueryType
  count : GPUSize32
}

///|
/// Create a new GPUQuerySetDescriptor with default values
pub fn GPUQuerySetDescriptor::default() -> GPUQuerySetDescriptor {
  GPUQuerySetDescriptor::{ label: None, type_: panic(), count: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUQuerySetDescriptor::to_js(
  self : GPUQuerySetDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   type: ['occlusion', 'timestamp'][self.type_],
  #|   count: self.count
  #| })

///|
/// GPUCanvasToneMapping dictionary
pub struct GPUCanvasToneMapping {
  mode : GPUCanvasToneMappingMode?
}

///|
/// Create a new GPUCanvasToneMapping with default values
pub fn GPUCanvasToneMapping::default() -> GPUCanvasToneMapping {
  GPUCanvasToneMapping::{ mode: None }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUCanvasToneMapping::to_js(
  self : GPUCanvasToneMapping,
) -> JsValue =
  #| (self) => ({
  #|   mode: ['standard', 'extended'][self.mode]
  #| })

///|
/// GPUCanvasConfiguration dictionary
pub struct GPUCanvasConfiguration {
  device : GPUDevice
  format : GPUTextureFormat
  usage : GPUTextureUsageFlags?
  viewFormats : Array[GPUTextureFormat]?
  colorSpace : PredefinedColorSpace?
  toneMapping : GPUCanvasToneMapping?
  alphaMode : GPUCanvasAlphaMode?
}

///|
/// Create a new GPUCanvasConfiguration with default values
pub fn GPUCanvasConfiguration::default() -> GPUCanvasConfiguration {
  GPUCanvasConfiguration::{
    device: panic(),
    format: panic(),
    usage: None,
    viewFormats: None,
    colorSpace: None,
    toneMapping: None,
    alphaMode: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUCanvasConfiguration::to_js(
  self : GPUCanvasConfiguration,
) -> JsValue =
  #| (self) => ({
  #|   device: self.device,
  #|   format: ['r8unorm', 'r8snorm', 'r8uint', 'r8sint', 'r16unorm', 'r16snorm', 'r16uint', 'r16sint', 'r16float', 'rg8unorm', 'rg8snorm', 'rg8uint', 'rg8sint', 'r32uint', 'r32sint', 'r32float', 'rg16unorm', 'rg16snorm', 'rg16uint', 'rg16sint', 'rg16float', 'rgba8unorm', 'rgba8unorm-srgb', 'rgba8snorm', 'rgba8uint', 'rgba8sint', 'bgra8unorm', 'bgra8unorm-srgb', 'rgb9e5ufloat', 'rgb10a2uint', 'rgb10a2unorm', 'rg11b10ufloat', 'rg32uint', 'rg32sint', 'rg32float', 'rgba16unorm', 'rgba16snorm', 'rgba16uint', 'rgba16sint', 'rgba16float', 'rgba32uint', 'rgba32sint', 'rgba32float', 'stencil8', 'depth16unorm', 'depth24plus', 'depth24plus-stencil8', 'depth32float', 'depth32float-stencil8', 'bc1-rgba-unorm', 'bc1-rgba-unorm-srgb', 'bc2-rgba-unorm', 'bc2-rgba-unorm-srgb', 'bc3-rgba-unorm', 'bc3-rgba-unorm-srgb', 'bc4-r-unorm', 'bc4-r-snorm', 'bc5-rg-unorm', 'bc5-rg-snorm', 'bc6h-rgb-ufloat', 'bc6h-rgb-float', 'bc7-rgba-unorm', 'bc7-rgba-unorm-srgb', 'etc2-rgb8unorm', 'etc2-rgb8unorm-srgb', 'etc2-rgb8a1unorm', 'etc2-rgb8a1unorm-srgb', 'etc2-rgba8unorm', 'etc2-rgba8unorm-srgb', 'eac-r11unorm', 'eac-r11snorm', 'eac-rg11unorm', 'eac-rg11snorm', 'astc-4x4-unorm', 'astc-4x4-unorm-srgb', 'astc-5x4-unorm', 'astc-5x4-unorm-srgb', 'astc-5x5-unorm', 'astc-5x5-unorm-srgb', 'astc-6x5-unorm', 'astc-6x5-unorm-srgb', 'astc-6x6-unorm', 'astc-6x6-unorm-srgb', 'astc-8x5-unorm', 'astc-8x5-unorm-srgb', 'astc-8x6-unorm', 'astc-8x6-unorm-srgb', 'astc-8x8-unorm', 'astc-8x8-unorm-srgb', 'astc-10x5-unorm', 'astc-10x5-unorm-srgb', 'astc-10x6-unorm', 'astc-10x6-unorm-srgb', 'astc-10x8-unorm', 'astc-10x8-unorm-srgb', 'astc-10x10-unorm', 'astc-10x10-unorm-srgb', 'astc-12x10-unorm', 'astc-12x10-unorm-srgb', 'astc-12x12-unorm', 'astc-12x12-unorm-srgb'][self.format],
  #|   usage: self.usage,
  #|   viewFormats: self.viewFormats,
  #|   colorSpace: ['srgb', 'srgb-linear', 'display-p3', 'display-p3-linear'][self.colorSpace],
  #|   toneMapping: self.toneMapping,
  #|   alphaMode: ['opaque', 'premultiplied'][self.alphaMode]
  #| })

///|
/// GPUUncapturedErrorEventInit dictionary
pub struct GPUUncapturedErrorEventInit {
  error : GPUError
}

///|
/// Create a new GPUUncapturedErrorEventInit with default values
pub fn GPUUncapturedErrorEventInit::default() -> GPUUncapturedErrorEventInit {
  GPUUncapturedErrorEventInit::{ error: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUUncapturedErrorEventInit::to_js(
  self : GPUUncapturedErrorEventInit,
) -> JsValue =
  #| (self) => ({
  #|   error: self.error
  #| })

///|
/// GPUColorDict dictionary
pub struct GPUColorDict {
  r : Double
  g : Double
  b : Double
  a : Double
}

///|
/// Create a new GPUColorDict with default values
pub fn GPUColorDict::default() -> GPUColorDict {
  GPUColorDict::{ r: 0, g: 0, b: 0, a: 0 }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUColorDict::to_js(self : GPUColorDict) -> JsValue =
  #| (self) => ({
  #|   r: self.r,
  #|   g: self.g,
  #|   b: self.b,
  #|   a: self.a
  #| })

///|
/// GPUOrigin2DDict dictionary
pub struct GPUOrigin2DDict {
  x : GPUIntegerCoordinate?
  y : GPUIntegerCoordinate?
}

///|
/// Create a new GPUOrigin2DDict with default values
pub fn GPUOrigin2DDict::default() -> GPUOrigin2DDict {
  GPUOrigin2DDict::{ x: None, y: None }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUOrigin2DDict::to_js(self : GPUOrigin2DDict) -> JsValue =
  #| (self) => ({
  #|   x: self.x,
  #|   y: self.y
  #| })

///|
/// GPUOrigin3DDict dictionary
pub struct GPUOrigin3DDict {
  x : GPUIntegerCoordinate?
  y : GPUIntegerCoordinate?
  z : GPUIntegerCoordinate?
}

///|
/// Create a new GPUOrigin3DDict with default values
pub fn GPUOrigin3DDict::default() -> GPUOrigin3DDict {
  GPUOrigin3DDict::{ x: None, y: None, z: None }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUOrigin3DDict::to_js(self : GPUOrigin3DDict) -> JsValue =
  #| (self) => ({
  #|   x: self.x,
  #|   y: self.y,
  #|   z: self.z
  #| })

///|
/// GPUExtent3DDict dictionary
pub struct GPUExtent3DDict {
  width : GPUIntegerCoordinate
  height : GPUIntegerCoordinate?
  depthOrArrayLayers : GPUIntegerCoordinate?
}

///|
/// Create a new GPUExtent3DDict with default values
pub fn GPUExtent3DDict::default() -> GPUExtent3DDict {
  GPUExtent3DDict::{ width: panic(), height: None, depthOrArrayLayers: None }
}

///|
/// Convert to JsValue
pub extern "js" fn GPUExtent3DDict::to_js(self : GPUExtent3DDict) -> JsValue =
  #| (self) => ({
  #|   width: self.width,
  #|   height: self.height,
  #|   depthOrArrayLayers: self.depthOrArrayLayers
  #| })

///|
/// GPUSupportedLimits interface
pub type GPUSupportedLimits

///|
pub extern "js" fn GPUSupportedLimits::to_js_value(
  self : GPUSupportedLimits,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPUSupportedLimits::get_max_texture_dimension1_d(
  self : GPUSupportedLimits,
) -> Int =
  #| (self) => self.maxTextureDimension1D

///|
pub extern "js" fn GPUSupportedLimits::get_max_texture_dimension2_d(
  self : GPUSupportedLimits,
) -> Int =
  #| (self) => self.maxTextureDimension2D

///|
pub extern "js" fn GPUSupportedLimits::get_max_texture_dimension3_d(
  self : GPUSupportedLimits,
) -> Int =
  #| (self) => self.maxTextureDimension3D

///|
pub extern "js" fn GPUSupportedLimits::get_max_texture_array_layers(
  self : GPUSupportedLimits,
) -> Int =
  #| (self) => self.maxTextureArrayLayers

///|
pub extern "js" fn GPUSupportedLimits::get_max_bind_groups(
  self : GPUSupportedLimits,
) -> Int =
  #| (self) => self.maxBindGroups

///|
pub extern "js" fn GPUSupportedLimits::get_max_bind_groups_plus_vertex_buffers(
  self : GPUSupportedLimits,
) -> Int =
  #| (self) => self.maxBindGroupsPlusVertexBuffers

///|
pub extern "js" fn GPUSupportedLimits::get_max_bindings_per_bind_group(
  self : GPUSupportedLimits,
) -> Int =
  #| (self) => self.maxBindingsPerBindGroup

///|
pub extern "js" fn GPUSupportedLimits::get_max_dynamic_uniform_buffers_per_pipeline_layout(
  self : GPUSupportedLimits,
) -> Int =
  #| (self) => self.maxDynamicUniformBuffersPerPipelineLayout

///|
pub extern "js" fn GPUSupportedLimits::get_max_dynamic_storage_buffers_per_pipeline_layout(
  self : GPUSupportedLimits,
) -> Int =
  #| (self) => self.maxDynamicStorageBuffersPerPipelineLayout

///|
pub extern "js" fn GPUSupportedLimits::get_max_sampled_textures_per_shader_stage(
  self : GPUSupportedLimits,
) -> Int =
  #| (self) => self.maxSampledTexturesPerShaderStage

///|
pub extern "js" fn GPUSupportedLimits::get_max_samplers_per_shader_stage(
  self : GPUSupportedLimits,
) -> Int =
  #| (self) => self.maxSamplersPerShaderStage

///|
pub extern "js" fn GPUSupportedLimits::get_max_storage_buffers_per_shader_stage(
  self : GPUSupportedLimits,
) -> Int =
  #| (self) => self.maxStorageBuffersPerShaderStage

///|
pub extern "js" fn GPUSupportedLimits::get_max_storage_buffers_in_vertex_stage(
  self : GPUSupportedLimits,
) -> Int =
  #| (self) => self.maxStorageBuffersInVertexStage

///|
pub extern "js" fn GPUSupportedLimits::get_max_storage_buffers_in_fragment_stage(
  self : GPUSupportedLimits,
) -> Int =
  #| (self) => self.maxStorageBuffersInFragmentStage

///|
pub extern "js" fn GPUSupportedLimits::get_max_storage_textures_per_shader_stage(
  self : GPUSupportedLimits,
) -> Int =
  #| (self) => self.maxStorageTexturesPerShaderStage

///|
pub extern "js" fn GPUSupportedLimits::get_max_storage_textures_in_vertex_stage(
  self : GPUSupportedLimits,
) -> Int =
  #| (self) => self.maxStorageTexturesInVertexStage

///|
pub extern "js" fn GPUSupportedLimits::get_max_storage_textures_in_fragment_stage(
  self : GPUSupportedLimits,
) -> Int =
  #| (self) => self.maxStorageTexturesInFragmentStage

///|
pub extern "js" fn GPUSupportedLimits::get_max_uniform_buffers_per_shader_stage(
  self : GPUSupportedLimits,
) -> Int =
  #| (self) => self.maxUniformBuffersPerShaderStage

///|
pub extern "js" fn GPUSupportedLimits::get_max_uniform_buffer_binding_size(
  self : GPUSupportedLimits,
) -> Int64 =
  #| (self) => self.maxUniformBufferBindingSize

///|
pub extern "js" fn GPUSupportedLimits::get_max_storage_buffer_binding_size(
  self : GPUSupportedLimits,
) -> Int64 =
  #| (self) => self.maxStorageBufferBindingSize

///|
pub extern "js" fn GPUSupportedLimits::get_min_uniform_buffer_offset_alignment(
  self : GPUSupportedLimits,
) -> Int =
  #| (self) => self.minUniformBufferOffsetAlignment

///|
pub extern "js" fn GPUSupportedLimits::get_min_storage_buffer_offset_alignment(
  self : GPUSupportedLimits,
) -> Int =
  #| (self) => self.minStorageBufferOffsetAlignment

///|
pub extern "js" fn GPUSupportedLimits::get_max_vertex_buffers(
  self : GPUSupportedLimits,
) -> Int =
  #| (self) => self.maxVertexBuffers

///|
pub extern "js" fn GPUSupportedLimits::get_max_buffer_size(
  self : GPUSupportedLimits,
) -> Int64 =
  #| (self) => self.maxBufferSize

///|
pub extern "js" fn GPUSupportedLimits::get_max_vertex_attributes(
  self : GPUSupportedLimits,
) -> Int =
  #| (self) => self.maxVertexAttributes

///|
pub extern "js" fn GPUSupportedLimits::get_max_vertex_buffer_array_stride(
  self : GPUSupportedLimits,
) -> Int =
  #| (self) => self.maxVertexBufferArrayStride

///|
pub extern "js" fn GPUSupportedLimits::get_max_inter_stage_shader_variables(
  self : GPUSupportedLimits,
) -> Int =
  #| (self) => self.maxInterStageShaderVariables

///|
pub extern "js" fn GPUSupportedLimits::get_max_color_attachments(
  self : GPUSupportedLimits,
) -> Int =
  #| (self) => self.maxColorAttachments

///|
pub extern "js" fn GPUSupportedLimits::get_max_color_attachment_bytes_per_sample(
  self : GPUSupportedLimits,
) -> Int =
  #| (self) => self.maxColorAttachmentBytesPerSample

///|
pub extern "js" fn GPUSupportedLimits::get_max_compute_workgroup_storage_size(
  self : GPUSupportedLimits,
) -> Int =
  #| (self) => self.maxComputeWorkgroupStorageSize

///|
pub extern "js" fn GPUSupportedLimits::get_max_compute_invocations_per_workgroup(
  self : GPUSupportedLimits,
) -> Int =
  #| (self) => self.maxComputeInvocationsPerWorkgroup

///|
pub extern "js" fn GPUSupportedLimits::get_max_compute_workgroup_size_x(
  self : GPUSupportedLimits,
) -> Int =
  #| (self) => self.maxComputeWorkgroupSizeX

///|
pub extern "js" fn GPUSupportedLimits::get_max_compute_workgroup_size_y(
  self : GPUSupportedLimits,
) -> Int =
  #| (self) => self.maxComputeWorkgroupSizeY

///|
pub extern "js" fn GPUSupportedLimits::get_max_compute_workgroup_size_z(
  self : GPUSupportedLimits,
) -> Int =
  #| (self) => self.maxComputeWorkgroupSizeZ

///|
pub extern "js" fn GPUSupportedLimits::get_max_compute_workgroups_per_dimension(
  self : GPUSupportedLimits,
) -> Int =
  #| (self) => self.maxComputeWorkgroupsPerDimension

///|
/// GPUSupportedFeatures interface
pub type GPUSupportedFeatures

///|
pub extern "js" fn GPUSupportedFeatures::to_js_value(
  self : GPUSupportedFeatures,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPUSupportedFeatures::has(
  self : GPUSupportedFeatures,
  value : String,
) -> Bool =
  #| (self, value) => self.has(value)

///|
/// WGSLLanguageFeatures interface
pub type WGSLLanguageFeatures

///|
pub extern "js" fn WGSLLanguageFeatures::to_js_value(
  self : WGSLLanguageFeatures,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn WGSLLanguageFeatures::has(
  self : WGSLLanguageFeatures,
  value : String,
) -> Bool =
  #| (self, value) => self.has(value)

///|
/// GPUAdapterInfo interface
pub type GPUAdapterInfo

///|
pub extern "js" fn GPUAdapterInfo::to_js_value(
  self : GPUAdapterInfo,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPUAdapterInfo::get_vendor(self : GPUAdapterInfo) -> String =
  #| (self) => self.vendor

///|
pub extern "js" fn GPUAdapterInfo::get_architecture(
  self : GPUAdapterInfo,
) -> String =
  #| (self) => self.architecture

///|
pub extern "js" fn GPUAdapterInfo::get_device(self : GPUAdapterInfo) -> String =
  #| (self) => self.device

///|
pub extern "js" fn GPUAdapterInfo::get_description(
  self : GPUAdapterInfo,
) -> String =
  #| (self) => self.description

///|
pub extern "js" fn GPUAdapterInfo::get_subgroup_min_size(
  self : GPUAdapterInfo,
) -> Int =
  #| (self) => self.subgroupMinSize

///|
pub extern "js" fn GPUAdapterInfo::get_subgroup_max_size(
  self : GPUAdapterInfo,
) -> Int =
  #| (self) => self.subgroupMaxSize

///|
pub extern "js" fn GPUAdapterInfo::get_is_fallback_adapter(
  self : GPUAdapterInfo,
) -> Bool =
  #| (self) => self.isFallbackAdapter

///|
/// GPU interface
pub type GPU

///|
pub extern "js" fn GPU::to_js_value(self : GPU) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPU::request_adapter(self : GPU) -> Promise[GPUAdapter?] =
  #| (self) => self.requestAdapter()

///|
pub extern "js" fn GPU::request_adapter_with_options(
  self : GPU,
  options : GPURequestAdapterOptions,
) -> Promise[GPUAdapter?] =
  #| (self, options) => self.requestAdapter(options)

///|
pub extern "js" fn GPU::get_preferred_canvas_format(
  self : GPU,
) -> GPUTextureFormat =
  #| (self) => self.getPreferredCanvasFormat()

///|
pub extern "js" fn GPU::get_wgsl_language_features(
  self : GPU,
) -> WGSLLanguageFeatures =
  #| (self) => self.wgslLanguageFeatures

///|
/// GPUAdapter interface
pub type GPUAdapter

///|
pub extern "js" fn GPUAdapter::to_js_value(self : GPUAdapter) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPUAdapter::get_features(
  self : GPUAdapter,
) -> GPUSupportedFeatures =
  #| (self) => self.features

///|
pub extern "js" fn GPUAdapter::get_limits(
  self : GPUAdapter,
) -> GPUSupportedLimits =
  #| (self) => self.limits

///|
pub extern "js" fn GPUAdapter::get_info(self : GPUAdapter) -> GPUAdapterInfo =
  #| (self) => self.info

///|
pub extern "js" fn GPUAdapter::request_device(
  self : GPUAdapter,
) -> Promise[GPUDevice] =
  #| (self) => self.requestDevice()

///|
pub extern "js" fn GPUAdapter::request_device_with_descriptor(
  self : GPUAdapter,
  descriptor : GPUDeviceDescriptor,
) -> Promise[GPUDevice] =
  #| (self, descriptor) => self.requestDevice(descriptor)

///|
/// GPUDevice interface
pub type GPUDevice

///|
pub extern "js" fn GPUDevice::to_js_value(self : GPUDevice) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPUDevice::get_features(
  self : GPUDevice,
) -> GPUSupportedFeatures =
  #| (self) => self.features

///|
pub extern "js" fn GPUDevice::get_limits(
  self : GPUDevice,
) -> GPUSupportedLimits =
  #| (self) => self.limits

///|
pub extern "js" fn GPUDevice::get_adapter_info(
  self : GPUDevice,
) -> GPUAdapterInfo =
  #| (self) => self.adapterInfo

///|
pub extern "js" fn GPUDevice::get_queue(self : GPUDevice) -> GPUQueue =
  #| (self) => self.queue

///|
pub extern "js" fn GPUDevice::destroy(self : GPUDevice) -> Unit =
  #| (self) => self.destroy()

///|
pub extern "js" fn GPUDevice::create_buffer(
  self : GPUDevice,
  descriptor : GPUBufferDescriptor,
) -> GPUBuffer =
  #| (self, descriptor) => self.createBuffer(descriptor)

///|
pub extern "js" fn GPUDevice::create_texture(
  self : GPUDevice,
  descriptor : GPUTextureDescriptor,
) -> GPUTexture =
  #| (self, descriptor) => self.createTexture(descriptor)

///|
pub extern "js" fn GPUDevice::create_sampler(self : GPUDevice) -> GPUSampler =
  #| (self) => self.createSampler()

///|
pub extern "js" fn GPUDevice::create_sampler_with_descriptor(
  self : GPUDevice,
  descriptor : GPUSamplerDescriptor,
) -> GPUSampler =
  #| (self, descriptor) => self.createSampler(descriptor)

///|
pub extern "js" fn GPUDevice::import_external_texture(
  self : GPUDevice,
  descriptor : GPUExternalTextureDescriptor,
) -> GPUExternalTexture =
  #| (self, descriptor) => self.importExternalTexture(descriptor)

///|
pub extern "js" fn GPUDevice::create_bind_group_layout(
  self : GPUDevice,
  descriptor : GPUBindGroupLayoutDescriptor,
) -> GPUBindGroupLayout =
  #| (self, descriptor) => self.createBindGroupLayout(descriptor)

///|
pub extern "js" fn GPUDevice::create_pipeline_layout(
  self : GPUDevice,
  descriptor : GPUPipelineLayoutDescriptor,
) -> GPUPipelineLayout =
  #| (self, descriptor) => self.createPipelineLayout(descriptor)

///|
pub extern "js" fn GPUDevice::create_bind_group(
  self : GPUDevice,
  descriptor : GPUBindGroupDescriptor,
) -> GPUBindGroup =
  #| (self, descriptor) => self.createBindGroup(descriptor)

///|
pub extern "js" fn GPUDevice::create_shader_module(
  self : GPUDevice,
  descriptor : GPUShaderModuleDescriptor,
) -> GPUShaderModule =
  #| (self, descriptor) => self.createShaderModule(descriptor)

///|
pub extern "js" fn GPUDevice::create_compute_pipeline(
  self : GPUDevice,
  descriptor : GPUComputePipelineDescriptor,
) -> GPUComputePipeline =
  #| (self, descriptor) => self.createComputePipeline(descriptor)

///|
pub extern "js" fn GPUDevice::create_render_pipeline(
  self : GPUDevice,
  descriptor : GPURenderPipelineDescriptor,
) -> GPURenderPipeline =
  #| (self, descriptor) => self.createRenderPipeline(descriptor)

///|
pub extern "js" fn GPUDevice::create_compute_pipeline_async(
  self : GPUDevice,
  descriptor : GPUComputePipelineDescriptor,
) -> Promise[GPUComputePipeline] =
  #| (self, descriptor) => self.createComputePipelineAsync(descriptor)

///|
pub extern "js" fn GPUDevice::create_render_pipeline_async(
  self : GPUDevice,
  descriptor : GPURenderPipelineDescriptor,
) -> Promise[GPURenderPipeline] =
  #| (self, descriptor) => self.createRenderPipelineAsync(descriptor)

///|
pub extern "js" fn GPUDevice::create_command_encoder(
  self : GPUDevice,
) -> GPUCommandEncoder =
  #| (self) => self.createCommandEncoder()

///|
pub extern "js" fn GPUDevice::create_command_encoder_with_descriptor(
  self : GPUDevice,
  descriptor : GPUCommandEncoderDescriptor,
) -> GPUCommandEncoder =
  #| (self, descriptor) => self.createCommandEncoder(descriptor)

///|
pub extern "js" fn GPUDevice::create_render_bundle_encoder(
  self : GPUDevice,
  descriptor : GPURenderBundleEncoderDescriptor,
) -> GPURenderBundleEncoder =
  #| (self, descriptor) => self.createRenderBundleEncoder(descriptor)

///|
pub extern "js" fn GPUDevice::create_query_set(
  self : GPUDevice,
  descriptor : GPUQuerySetDescriptor,
) -> GPUQuerySet =
  #| (self, descriptor) => self.createQuerySet(descriptor)

///|
pub extern "js" fn GPUDevice::get_lost(
  self : GPUDevice,
) -> Promise[GPUDeviceLostInfo] =
  #| (self) => self.lost

///|
pub extern "js" fn GPUDevice::push_error_scope(
  self : GPUDevice,
  filter : GPUErrorFilter,
) -> Unit =
  #| (self, filter) => self.pushErrorScope(['validation', 'out-of-memory', 'internal'][filter])

///|
pub extern "js" fn GPUDevice::pop_error_scope(
  self : GPUDevice,
) -> Promise[GPUError?] =
  #| (self) => self.popErrorScope()

///|
pub extern "js" fn GPUDevice::get_onuncapturederror(
  self : GPUDevice,
) -> EventHandler =
  #| (self) => self.onuncapturederror

///|
pub extern "js" fn GPUDevice::set_onuncapturederror(
  self : GPUDevice,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onuncapturederror = value }

///|
pub extern "js" fn GPUDevice::get_label(self : GPUDevice) -> String =
  #| (self) => self.label

///|
pub extern "js" fn GPUDevice::set_label(
  self : GPUDevice,
  value : String,
) -> Unit =
  #| (self, value) => { self.label = value }

///|
/// GPUBuffer interface
pub type GPUBuffer

///|
pub extern "js" fn GPUBuffer::to_js_value(self : GPUBuffer) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPUBuffer::get_size(self : GPUBuffer) -> GPUSize64Out =
  #| (self) => self.size

///|
pub extern "js" fn GPUBuffer::get_usage(self : GPUBuffer) -> GPUFlagsConstant =
  #| (self) => self.usage

///|
pub extern "js" fn GPUBuffer::get_map_state(
  self : GPUBuffer,
) -> GPUBufferMapState =
  #| (self) => self.mapState

///|
pub extern "js" fn GPUBuffer::map_async(
  self : GPUBuffer,
  mode : GPUMapModeFlags,
) -> Promise[Unit] =
  #| (self, mode) => self.mapAsync(mode)

///|
pub extern "js" fn GPUBuffer::map_async_with_size(
  self : GPUBuffer,
  mode : GPUMapModeFlags,
  offset : GPUSize64,
  size : GPUSize64,
) -> Promise[Unit] =
  #| (self, mode, offset, size) => self.mapAsync(mode, offset, size)

///|
pub extern "js" fn GPUBuffer::get_mapped_range(self : GPUBuffer) -> ArrayBuffer =
  #| (self) => self.getMappedRange()

///|
pub extern "js" fn GPUBuffer::get_mapped_range_with_size(
  self : GPUBuffer,
  offset : GPUSize64,
  size : GPUSize64,
) -> ArrayBuffer =
  #| (self, offset, size) => self.getMappedRange(offset, size)

///|
pub extern "js" fn GPUBuffer::unmap(self : GPUBuffer) -> Unit =
  #| (self) => self.unmap()

///|
pub extern "js" fn GPUBuffer::destroy(self : GPUBuffer) -> Unit =
  #| (self) => self.destroy()

///|
pub extern "js" fn GPUBuffer::get_label(self : GPUBuffer) -> String =
  #| (self) => self.label

///|
pub extern "js" fn GPUBuffer::set_label(
  self : GPUBuffer,
  value : String,
) -> Unit =
  #| (self, value) => { self.label = value }

///|
/// GPUTexture interface
pub type GPUTexture

///|
pub extern "js" fn GPUTexture::to_js_value(self : GPUTexture) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPUTexture::create_view(self : GPUTexture) -> GPUTextureView =
  #| (self) => self.createView()

///|
pub extern "js" fn GPUTexture::create_view_with_descriptor(
  self : GPUTexture,
  descriptor : GPUTextureViewDescriptor,
) -> GPUTextureView =
  #| (self, descriptor) => self.createView(descriptor)

///|
pub extern "js" fn GPUTexture::destroy(self : GPUTexture) -> Unit =
  #| (self) => self.destroy()

///|
pub extern "js" fn GPUTexture::get_width(
  self : GPUTexture,
) -> GPUIntegerCoordinateOut =
  #| (self) => self.width

///|
pub extern "js" fn GPUTexture::get_height(
  self : GPUTexture,
) -> GPUIntegerCoordinateOut =
  #| (self) => self.height

///|
pub extern "js" fn GPUTexture::get_depth_or_array_layers(
  self : GPUTexture,
) -> GPUIntegerCoordinateOut =
  #| (self) => self.depthOrArrayLayers

///|
pub extern "js" fn GPUTexture::get_mip_level_count(
  self : GPUTexture,
) -> GPUIntegerCoordinateOut =
  #| (self) => self.mipLevelCount

///|
pub extern "js" fn GPUTexture::get_sample_count(
  self : GPUTexture,
) -> GPUSize32Out =
  #| (self) => self.sampleCount

///|
pub extern "js" fn GPUTexture::get_dimension(
  self : GPUTexture,
) -> GPUTextureDimension =
  #| (self) => self.dimension

///|
pub extern "js" fn GPUTexture::get_format(
  self : GPUTexture,
) -> GPUTextureFormat =
  #| (self) => self.format

///|
pub extern "js" fn GPUTexture::get_usage(self : GPUTexture) -> GPUFlagsConstant =
  #| (self) => self.usage

///|
pub extern "js" fn GPUTexture::get_texture_binding_view_dimension(
  self : GPUTexture,
) -> JsValue =
  #| (self) => self.textureBindingViewDimension

///|
pub extern "js" fn GPUTexture::get_label(self : GPUTexture) -> String =
  #| (self) => self.label

///|
pub extern "js" fn GPUTexture::set_label(
  self : GPUTexture,
  value : String,
) -> Unit =
  #| (self, value) => { self.label = value }

///|
/// GPUTextureView interface
pub type GPUTextureView

///|
pub extern "js" fn GPUTextureView::to_js_value(
  self : GPUTextureView,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPUTextureView::get_label(self : GPUTextureView) -> String =
  #| (self) => self.label

///|
pub extern "js" fn GPUTextureView::set_label(
  self : GPUTextureView,
  value : String,
) -> Unit =
  #| (self, value) => { self.label = value }

///|
/// GPUExternalTexture interface
pub type GPUExternalTexture

///|
pub extern "js" fn GPUExternalTexture::to_js_value(
  self : GPUExternalTexture,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPUExternalTexture::get_label(
  self : GPUExternalTexture,
) -> String =
  #| (self) => self.label

///|
pub extern "js" fn GPUExternalTexture::set_label(
  self : GPUExternalTexture,
  value : String,
) -> Unit =
  #| (self, value) => { self.label = value }

///|
/// GPUSampler interface
pub type GPUSampler

///|
pub extern "js" fn GPUSampler::to_js_value(self : GPUSampler) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPUSampler::get_label(self : GPUSampler) -> String =
  #| (self) => self.label

///|
pub extern "js" fn GPUSampler::set_label(
  self : GPUSampler,
  value : String,
) -> Unit =
  #| (self, value) => { self.label = value }

///|
/// GPUBindGroupLayout interface
pub type GPUBindGroupLayout

///|
pub extern "js" fn GPUBindGroupLayout::to_js_value(
  self : GPUBindGroupLayout,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPUBindGroupLayout::get_label(
  self : GPUBindGroupLayout,
) -> String =
  #| (self) => self.label

///|
pub extern "js" fn GPUBindGroupLayout::set_label(
  self : GPUBindGroupLayout,
  value : String,
) -> Unit =
  #| (self, value) => { self.label = value }

///|
/// GPUBindGroup interface
pub type GPUBindGroup

///|
pub extern "js" fn GPUBindGroup::to_js_value(self : GPUBindGroup) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPUBindGroup::get_label(self : GPUBindGroup) -> String =
  #| (self) => self.label

///|
pub extern "js" fn GPUBindGroup::set_label(
  self : GPUBindGroup,
  value : String,
) -> Unit =
  #| (self, value) => { self.label = value }

///|
/// GPUPipelineLayout interface
pub type GPUPipelineLayout

///|
pub extern "js" fn GPUPipelineLayout::to_js_value(
  self : GPUPipelineLayout,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPUPipelineLayout::get_label(
  self : GPUPipelineLayout,
) -> String =
  #| (self) => self.label

///|
pub extern "js" fn GPUPipelineLayout::set_label(
  self : GPUPipelineLayout,
  value : String,
) -> Unit =
  #| (self, value) => { self.label = value }

///|
/// GPUShaderModule interface
pub type GPUShaderModule

///|
pub extern "js" fn GPUShaderModule::to_js_value(
  self : GPUShaderModule,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPUShaderModule::get_compilation_info(
  self : GPUShaderModule,
) -> Promise[GPUCompilationInfo] =
  #| (self) => self.getCompilationInfo()

///|
pub extern "js" fn GPUShaderModule::get_label(self : GPUShaderModule) -> String =
  #| (self) => self.label

///|
pub extern "js" fn GPUShaderModule::set_label(
  self : GPUShaderModule,
  value : String,
) -> Unit =
  #| (self, value) => { self.label = value }

///|
/// GPUCompilationMessage interface
pub type GPUCompilationMessage

///|
pub extern "js" fn GPUCompilationMessage::to_js_value(
  self : GPUCompilationMessage,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPUCompilationMessage::get_message(
  self : GPUCompilationMessage,
) -> String =
  #| (self) => self.message

///|
pub extern "js" fn GPUCompilationMessage::get_type(
  self : GPUCompilationMessage,
) -> GPUCompilationMessageType =
  #| (self) => self.type

///|
pub extern "js" fn GPUCompilationMessage::get_line_num(
  self : GPUCompilationMessage,
) -> Int64 =
  #| (self) => self.lineNum

///|
pub extern "js" fn GPUCompilationMessage::get_line_pos(
  self : GPUCompilationMessage,
) -> Int64 =
  #| (self) => self.linePos

///|
pub extern "js" fn GPUCompilationMessage::get_offset(
  self : GPUCompilationMessage,
) -> Int64 =
  #| (self) => self.offset

///|
pub extern "js" fn GPUCompilationMessage::get_length(
  self : GPUCompilationMessage,
) -> Int64 =
  #| (self) => self.length

///|
/// GPUCompilationInfo interface
pub type GPUCompilationInfo

///|
pub extern "js" fn GPUCompilationInfo::to_js_value(
  self : GPUCompilationInfo,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPUCompilationInfo::get_messages(
  self : GPUCompilationInfo,
) -> JsValue =
  #| (self) => self.messages

///|
/// GPUPipelineError interface
pub type GPUPipelineError

///|
pub extern "js" fn GPUPipelineError::to_js_value(
  self : GPUPipelineError,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPUPipelineError::new(
  message : String,
  options : GPUPipelineErrorInit,
) -> GPUPipelineError =
  #| (message, options) => new GPUPipelineError(message, options)

///|
pub extern "js" fn GPUPipelineError::get_reason(
  self : GPUPipelineError,
) -> GPUPipelineErrorReason =
  #| (self) => self.reason

///|
/// GPUComputePipeline interface
pub type GPUComputePipeline

///|
pub extern "js" fn GPUComputePipeline::to_js_value(
  self : GPUComputePipeline,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPUComputePipeline::get_label(
  self : GPUComputePipeline,
) -> String =
  #| (self) => self.label

///|
pub extern "js" fn GPUComputePipeline::set_label(
  self : GPUComputePipeline,
  value : String,
) -> Unit =
  #| (self, value) => { self.label = value }

///|
pub extern "js" fn GPUComputePipeline::get_bind_group_layout(
  self : GPUComputePipeline,
  index : Int,
) -> GPUBindGroupLayout =
  #| (self, index) => self.getBindGroupLayout(index)

///|
/// GPURenderPipeline interface
pub type GPURenderPipeline

///|
pub extern "js" fn GPURenderPipeline::to_js_value(
  self : GPURenderPipeline,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPURenderPipeline::get_label(
  self : GPURenderPipeline,
) -> String =
  #| (self) => self.label

///|
pub extern "js" fn GPURenderPipeline::set_label(
  self : GPURenderPipeline,
  value : String,
) -> Unit =
  #| (self, value) => { self.label = value }

///|
pub extern "js" fn GPURenderPipeline::get_bind_group_layout(
  self : GPURenderPipeline,
  index : Int,
) -> GPUBindGroupLayout =
  #| (self, index) => self.getBindGroupLayout(index)

///|
/// GPUCommandBuffer interface
pub type GPUCommandBuffer

///|
pub extern "js" fn GPUCommandBuffer::to_js_value(
  self : GPUCommandBuffer,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPUCommandBuffer::get_label(
  self : GPUCommandBuffer,
) -> String =
  #| (self) => self.label

///|
pub extern "js" fn GPUCommandBuffer::set_label(
  self : GPUCommandBuffer,
  value : String,
) -> Unit =
  #| (self, value) => { self.label = value }

///|
/// GPUCommandEncoder interface
pub type GPUCommandEncoder

///|
pub extern "js" fn GPUCommandEncoder::to_js_value(
  self : GPUCommandEncoder,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPUCommandEncoder::begin_render_pass(
  self : GPUCommandEncoder,
  descriptor : GPURenderPassDescriptor,
) -> GPURenderPassEncoder =
  #| (self, descriptor) => self.beginRenderPass(descriptor)

///|
pub extern "js" fn GPUCommandEncoder::begin_compute_pass(
  self : GPUCommandEncoder,
) -> GPUComputePassEncoder =
  #| (self) => self.beginComputePass()

///|
pub extern "js" fn GPUCommandEncoder::begin_compute_pass_with_descriptor(
  self : GPUCommandEncoder,
  descriptor : GPUComputePassDescriptor,
) -> GPUComputePassEncoder =
  #| (self, descriptor) => self.beginComputePass(descriptor)

///|
pub extern "js" fn GPUCommandEncoder::copy_buffer_to_buffer(
  self : GPUCommandEncoder,
  source : GPUBuffer,
  destination : GPUBuffer,
) -> Unit =
  #| (self, source, destination) => self.copyBufferToBuffer(source, destination)

///|
pub extern "js" fn GPUCommandEncoder::copy_buffer_to_buffer_with_size(
  self : GPUCommandEncoder,
  source : GPUBuffer,
  destination : GPUBuffer,
  size : GPUSize64,
) -> Unit =
  #| (self, source, destination, size) => self.copyBufferToBuffer(source, destination, size)

///|
pub extern "js" fn GPUCommandEncoder::copy_buffer_to_buffer_with_source_g_p_u_buffer_and_source_offset_g_p_u_size64_and_destination_g_p_u_buffer_and_destination_offset_g_p_u_size64(
  self : GPUCommandEncoder,
  source : GPUBuffer,
  source_offset : GPUSize64,
  destination : GPUBuffer,
  destination_offset : GPUSize64,
) -> Unit =
  #| (self, source, source_offset, destination, destination_offset) => self.copyBufferToBuffer(source, source_offset, destination, destination_offset)

///|
pub extern "js" fn GPUCommandEncoder::copy_buffer_to_buffer_with_source_g_p_u_buffer_and_source_offset_g_p_u_size64_and_destination_g_p_u_buffer_and_destination_offset_g_p_u_size64_and_size_g_p_u_size64(
  self : GPUCommandEncoder,
  source : GPUBuffer,
  source_offset : GPUSize64,
  destination : GPUBuffer,
  destination_offset : GPUSize64,
  size : GPUSize64,
) -> Unit =
  #| (self, source, source_offset, destination, destination_offset, size) => self.copyBufferToBuffer(source, source_offset, destination, destination_offset, size)

///|
pub extern "js" fn GPUCommandEncoder::copy_buffer_to_texture(
  self : GPUCommandEncoder,
  source : GPUTexelCopyBufferInfo,
  destination : GPUTexelCopyTextureInfo,
  copy_size : GPUExtent3D,
) -> Unit =
  #| (self, source, destination, copy_size) => self.copyBufferToTexture(source, destination, copy_size)

///|
pub extern "js" fn GPUCommandEncoder::copy_texture_to_buffer(
  self : GPUCommandEncoder,
  source : GPUTexelCopyTextureInfo,
  destination : GPUTexelCopyBufferInfo,
  copy_size : GPUExtent3D,
) -> Unit =
  #| (self, source, destination, copy_size) => self.copyTextureToBuffer(source, destination, copy_size)

///|
pub extern "js" fn GPUCommandEncoder::copy_texture_to_texture(
  self : GPUCommandEncoder,
  source : GPUTexelCopyTextureInfo,
  destination : GPUTexelCopyTextureInfo,
  copy_size : GPUExtent3D,
) -> Unit =
  #| (self, source, destination, copy_size) => self.copyTextureToTexture(source, destination, copy_size)

///|
pub extern "js" fn GPUCommandEncoder::clear_buffer(
  self : GPUCommandEncoder,
  buffer : GPUBuffer,
) -> Unit =
  #| (self, buffer) => self.clearBuffer(buffer)

///|
pub extern "js" fn GPUCommandEncoder::clear_buffer_with_size(
  self : GPUCommandEncoder,
  buffer : GPUBuffer,
  offset : GPUSize64,
  size : GPUSize64,
) -> Unit =
  #| (self, buffer, offset, size) => self.clearBuffer(buffer, offset, size)

///|
pub extern "js" fn GPUCommandEncoder::resolve_query_set(
  self : GPUCommandEncoder,
  query_set : GPUQuerySet,
  first_query : GPUSize32,
  query_count : GPUSize32,
  destination : GPUBuffer,
  destination_offset : GPUSize64,
) -> Unit =
  #| (self, query_set, first_query, query_count, destination, destination_offset) => self.resolveQuerySet(query_set, first_query, query_count, destination, destination_offset)

///|
pub extern "js" fn GPUCommandEncoder::finish(
  self : GPUCommandEncoder,
) -> GPUCommandBuffer =
  #| (self) => self.finish()

///|
pub extern "js" fn GPUCommandEncoder::finish_with_descriptor(
  self : GPUCommandEncoder,
  descriptor : GPUCommandBufferDescriptor,
) -> GPUCommandBuffer =
  #| (self, descriptor) => self.finish(descriptor)

///|
pub extern "js" fn GPUCommandEncoder::get_label(
  self : GPUCommandEncoder,
) -> String =
  #| (self) => self.label

///|
pub extern "js" fn GPUCommandEncoder::set_label(
  self : GPUCommandEncoder,
  value : String,
) -> Unit =
  #| (self, value) => { self.label = value }

///|
pub extern "js" fn GPUCommandEncoder::push_debug_group(
  self : GPUCommandEncoder,
  group_label : String,
) -> Unit =
  #| (self, group_label) => self.pushDebugGroup(group_label)

///|
pub extern "js" fn GPUCommandEncoder::pop_debug_group(
  self : GPUCommandEncoder,
) -> Unit =
  #| (self) => self.popDebugGroup()

///|
pub extern "js" fn GPUCommandEncoder::insert_debug_marker(
  self : GPUCommandEncoder,
  marker_label : String,
) -> Unit =
  #| (self, marker_label) => self.insertDebugMarker(marker_label)

///|
/// GPUComputePassEncoder interface
pub type GPUComputePassEncoder

///|
pub extern "js" fn GPUComputePassEncoder::to_js_value(
  self : GPUComputePassEncoder,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPUComputePassEncoder::set_pipeline(
  self : GPUComputePassEncoder,
  pipeline : GPUComputePipeline,
) -> Unit =
  #| (self, pipeline) => self.setPipeline(pipeline)

///|
pub extern "js" fn GPUComputePassEncoder::dispatch_workgroups(
  self : GPUComputePassEncoder,
  workgroup_count_x : GPUSize32,
) -> Unit =
  #| (self, workgroup_count_x) => self.dispatchWorkgroups(workgroup_count_x)

///|
pub extern "js" fn GPUComputePassEncoder::dispatch_workgroups_with_workgroup_count_z(
  self : GPUComputePassEncoder,
  workgroup_count_x : GPUSize32,
  workgroup_count_y : GPUSize32,
  workgroup_count_z : GPUSize32,
) -> Unit =
  #| (self, workgroup_count_x, workgroup_count_y, workgroup_count_z) => self.dispatchWorkgroups(workgroup_count_x, workgroup_count_y, workgroup_count_z)

///|
pub extern "js" fn GPUComputePassEncoder::dispatch_workgroups_indirect(
  self : GPUComputePassEncoder,
  indirect_buffer : GPUBuffer,
  indirect_offset : GPUSize64,
) -> Unit =
  #| (self, indirect_buffer, indirect_offset) => self.dispatchWorkgroupsIndirect(indirect_buffer, indirect_offset)

///|
pub extern "js" fn GPUComputePassEncoder::end(
  self : GPUComputePassEncoder,
) -> Unit =
  #| (self) => self.end()

///|
pub extern "js" fn GPUComputePassEncoder::get_label(
  self : GPUComputePassEncoder,
) -> String =
  #| (self) => self.label

///|
pub extern "js" fn GPUComputePassEncoder::set_label(
  self : GPUComputePassEncoder,
  value : String,
) -> Unit =
  #| (self, value) => { self.label = value }

///|
pub extern "js" fn GPUComputePassEncoder::push_debug_group(
  self : GPUComputePassEncoder,
  group_label : String,
) -> Unit =
  #| (self, group_label) => self.pushDebugGroup(group_label)

///|
pub extern "js" fn GPUComputePassEncoder::pop_debug_group(
  self : GPUComputePassEncoder,
) -> Unit =
  #| (self) => self.popDebugGroup()

///|
pub extern "js" fn GPUComputePassEncoder::insert_debug_marker(
  self : GPUComputePassEncoder,
  marker_label : String,
) -> Unit =
  #| (self, marker_label) => self.insertDebugMarker(marker_label)

///|
pub extern "js" fn GPUComputePassEncoder::set_bind_group(
  self : GPUComputePassEncoder,
  index : GPUIndex32,
  bind_group : GPUBindGroup?,
) -> Unit =
  #| (self, index, bind_group) => self.setBindGroup(index, bind_group)

///|
pub extern "js" fn GPUComputePassEncoder::set_bind_group_with_dynamic_offsets(
  self : GPUComputePassEncoder,
  index : GPUIndex32,
  bind_group : GPUBindGroup?,
  dynamic_offsets : Array[GPUBufferDynamicOffset],
) -> Unit =
  #| (self, index, bind_group, dynamic_offsets) => self.setBindGroup(index, bind_group, dynamic_offsets)

///|
pub extern "js" fn GPUComputePassEncoder::set_bind_group_with_index_g_p_u_index32_and_bind_group_and_dynamic_offsets_data_uint32_array_and_dynamic_offsets_data_start_g_p_u_size64_and_dynamic_offsets_data_length_g_p_u_size32(
  self : GPUComputePassEncoder,
  index : GPUIndex32,
  bind_group : GPUBindGroup?,
  dynamic_offsets_data : Uint32Array,
  dynamic_offsets_data_start : GPUSize64,
  dynamic_offsets_data_length : GPUSize32,
) -> Unit =
  #| (self, index, bind_group, dynamic_offsets_data, dynamic_offsets_data_start, dynamic_offsets_data_length) => self.setBindGroup(index, bind_group, dynamic_offsets_data, dynamic_offsets_data_start, dynamic_offsets_data_length)

///|
/// GPURenderPassEncoder interface
pub type GPURenderPassEncoder

///|
pub extern "js" fn GPURenderPassEncoder::to_js_value(
  self : GPURenderPassEncoder,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPURenderPassEncoder::set_viewport(
  self : GPURenderPassEncoder,
  x : Double,
  y : Double,
  width : Double,
  height : Double,
  min_depth : Double,
  max_depth : Double,
) -> Unit =
  #| (self, x, y, width, height, min_depth, max_depth) => self.setViewport(x, y, width, height, min_depth, max_depth)

///|
pub extern "js" fn GPURenderPassEncoder::set_scissor_rect(
  self : GPURenderPassEncoder,
  x : GPUIntegerCoordinate,
  y : GPUIntegerCoordinate,
  width : GPUIntegerCoordinate,
  height : GPUIntegerCoordinate,
) -> Unit =
  #| (self, x, y, width, height) => self.setScissorRect(x, y, width, height)

///|
pub extern "js" fn GPURenderPassEncoder::set_blend_constant(
  self : GPURenderPassEncoder,
  color : GPUColor,
) -> Unit =
  #| (self, color) => self.setBlendConstant(color)

///|
pub extern "js" fn GPURenderPassEncoder::set_stencil_reference(
  self : GPURenderPassEncoder,
  reference : GPUStencilValue,
) -> Unit =
  #| (self, reference) => self.setStencilReference(reference)

///|
pub extern "js" fn GPURenderPassEncoder::begin_occlusion_query(
  self : GPURenderPassEncoder,
  query_index : GPUSize32,
) -> Unit =
  #| (self, query_index) => self.beginOcclusionQuery(query_index)

///|
pub extern "js" fn GPURenderPassEncoder::end_occlusion_query(
  self : GPURenderPassEncoder,
) -> Unit =
  #| (self) => self.endOcclusionQuery()

///|
pub extern "js" fn GPURenderPassEncoder::execute_bundles(
  self : GPURenderPassEncoder,
  bundles : Array[GPURenderBundle],
) -> Unit =
  #| (self, bundles) => self.executeBundles(bundles)

///|
pub extern "js" fn GPURenderPassEncoder::end(
  self : GPURenderPassEncoder,
) -> Unit =
  #| (self) => self.end()

///|
pub extern "js" fn GPURenderPassEncoder::get_label(
  self : GPURenderPassEncoder,
) -> String =
  #| (self) => self.label

///|
pub extern "js" fn GPURenderPassEncoder::set_label(
  self : GPURenderPassEncoder,
  value : String,
) -> Unit =
  #| (self, value) => { self.label = value }

///|
pub extern "js" fn GPURenderPassEncoder::push_debug_group(
  self : GPURenderPassEncoder,
  group_label : String,
) -> Unit =
  #| (self, group_label) => self.pushDebugGroup(group_label)

///|
pub extern "js" fn GPURenderPassEncoder::pop_debug_group(
  self : GPURenderPassEncoder,
) -> Unit =
  #| (self) => self.popDebugGroup()

///|
pub extern "js" fn GPURenderPassEncoder::insert_debug_marker(
  self : GPURenderPassEncoder,
  marker_label : String,
) -> Unit =
  #| (self, marker_label) => self.insertDebugMarker(marker_label)

///|
pub extern "js" fn GPURenderPassEncoder::set_bind_group(
  self : GPURenderPassEncoder,
  index : GPUIndex32,
  bind_group : GPUBindGroup?,
) -> Unit =
  #| (self, index, bind_group) => self.setBindGroup(index, bind_group)

///|
pub extern "js" fn GPURenderPassEncoder::set_bind_group_with_dynamic_offsets(
  self : GPURenderPassEncoder,
  index : GPUIndex32,
  bind_group : GPUBindGroup?,
  dynamic_offsets : Array[GPUBufferDynamicOffset],
) -> Unit =
  #| (self, index, bind_group, dynamic_offsets) => self.setBindGroup(index, bind_group, dynamic_offsets)

///|
pub extern "js" fn GPURenderPassEncoder::set_bind_group_with_index_g_p_u_index32_and_bind_group_and_dynamic_offsets_data_uint32_array_and_dynamic_offsets_data_start_g_p_u_size64_and_dynamic_offsets_data_length_g_p_u_size32(
  self : GPURenderPassEncoder,
  index : GPUIndex32,
  bind_group : GPUBindGroup?,
  dynamic_offsets_data : Uint32Array,
  dynamic_offsets_data_start : GPUSize64,
  dynamic_offsets_data_length : GPUSize32,
) -> Unit =
  #| (self, index, bind_group, dynamic_offsets_data, dynamic_offsets_data_start, dynamic_offsets_data_length) => self.setBindGroup(index, bind_group, dynamic_offsets_data, dynamic_offsets_data_start, dynamic_offsets_data_length)

///|
pub extern "js" fn GPURenderPassEncoder::set_pipeline(
  self : GPURenderPassEncoder,
  pipeline : GPURenderPipeline,
) -> Unit =
  #| (self, pipeline) => self.setPipeline(pipeline)

///|
pub extern "js" fn GPURenderPassEncoder::set_index_buffer(
  self : GPURenderPassEncoder,
  buffer : GPUBuffer,
  index_format : GPUIndexFormat,
) -> Unit =
  #| (self, buffer, index_format) => self.setIndexBuffer(buffer, ['uint16', 'uint32'][index_format])

///|
pub extern "js" fn GPURenderPassEncoder::set_index_buffer_with_size(
  self : GPURenderPassEncoder,
  buffer : GPUBuffer,
  index_format : GPUIndexFormat,
  offset : GPUSize64,
  size : GPUSize64,
) -> Unit =
  #| (self, buffer, index_format, offset, size) => self.setIndexBuffer(buffer, ['uint16', 'uint32'][index_format], offset, size)

///|
pub extern "js" fn GPURenderPassEncoder::set_vertex_buffer(
  self : GPURenderPassEncoder,
  slot : GPUIndex32,
  buffer : GPUBuffer?,
) -> Unit =
  #| (self, slot, buffer) => self.setVertexBuffer(slot, buffer)

///|
pub extern "js" fn GPURenderPassEncoder::set_vertex_buffer_with_size(
  self : GPURenderPassEncoder,
  slot : GPUIndex32,
  buffer : GPUBuffer?,
  offset : GPUSize64,
  size : GPUSize64,
) -> Unit =
  #| (self, slot, buffer, offset, size) => self.setVertexBuffer(slot, buffer, offset, size)

///|
pub extern "js" fn GPURenderPassEncoder::draw(
  self : GPURenderPassEncoder,
  vertex_count : GPUSize32,
) -> Unit =
  #| (self, vertex_count) => self.draw(vertex_count)

///|
pub extern "js" fn GPURenderPassEncoder::draw_with_first_instance(
  self : GPURenderPassEncoder,
  vertex_count : GPUSize32,
  instance_count : GPUSize32,
  first_vertex : GPUSize32,
  first_instance : GPUSize32,
) -> Unit =
  #| (self, vertex_count, instance_count, first_vertex, first_instance) => self.draw(vertex_count, instance_count, first_vertex, first_instance)

///|
pub extern "js" fn GPURenderPassEncoder::draw_indexed(
  self : GPURenderPassEncoder,
  index_count : GPUSize32,
) -> Unit =
  #| (self, index_count) => self.drawIndexed(index_count)

///|
pub extern "js" fn GPURenderPassEncoder::draw_indexed_with_first_instance(
  self : GPURenderPassEncoder,
  index_count : GPUSize32,
  instance_count : GPUSize32,
  first_index : GPUSize32,
  base_vertex : GPUSignedOffset32,
  first_instance : GPUSize32,
) -> Unit =
  #| (self, index_count, instance_count, first_index, base_vertex, first_instance) => self.drawIndexed(index_count, instance_count, first_index, base_vertex, first_instance)

///|
pub extern "js" fn GPURenderPassEncoder::draw_indirect(
  self : GPURenderPassEncoder,
  indirect_buffer : GPUBuffer,
  indirect_offset : GPUSize64,
) -> Unit =
  #| (self, indirect_buffer, indirect_offset) => self.drawIndirect(indirect_buffer, indirect_offset)

///|
pub extern "js" fn GPURenderPassEncoder::draw_indexed_indirect(
  self : GPURenderPassEncoder,
  indirect_buffer : GPUBuffer,
  indirect_offset : GPUSize64,
) -> Unit =
  #| (self, indirect_buffer, indirect_offset) => self.drawIndexedIndirect(indirect_buffer, indirect_offset)

///|
/// GPURenderBundle interface
pub type GPURenderBundle

///|
pub extern "js" fn GPURenderBundle::to_js_value(
  self : GPURenderBundle,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPURenderBundle::get_label(self : GPURenderBundle) -> String =
  #| (self) => self.label

///|
pub extern "js" fn GPURenderBundle::set_label(
  self : GPURenderBundle,
  value : String,
) -> Unit =
  #| (self, value) => { self.label = value }

///|
/// GPURenderBundleEncoder interface
pub type GPURenderBundleEncoder

///|
pub extern "js" fn GPURenderBundleEncoder::to_js_value(
  self : GPURenderBundleEncoder,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPURenderBundleEncoder::finish(
  self : GPURenderBundleEncoder,
) -> GPURenderBundle =
  #| (self) => self.finish()

///|
pub extern "js" fn GPURenderBundleEncoder::finish_with_descriptor(
  self : GPURenderBundleEncoder,
  descriptor : GPURenderBundleDescriptor,
) -> GPURenderBundle =
  #| (self, descriptor) => self.finish(descriptor)

///|
pub extern "js" fn GPURenderBundleEncoder::get_label(
  self : GPURenderBundleEncoder,
) -> String =
  #| (self) => self.label

///|
pub extern "js" fn GPURenderBundleEncoder::set_label(
  self : GPURenderBundleEncoder,
  value : String,
) -> Unit =
  #| (self, value) => { self.label = value }

///|
pub extern "js" fn GPURenderBundleEncoder::push_debug_group(
  self : GPURenderBundleEncoder,
  group_label : String,
) -> Unit =
  #| (self, group_label) => self.pushDebugGroup(group_label)

///|
pub extern "js" fn GPURenderBundleEncoder::pop_debug_group(
  self : GPURenderBundleEncoder,
) -> Unit =
  #| (self) => self.popDebugGroup()

///|
pub extern "js" fn GPURenderBundleEncoder::insert_debug_marker(
  self : GPURenderBundleEncoder,
  marker_label : String,
) -> Unit =
  #| (self, marker_label) => self.insertDebugMarker(marker_label)

///|
pub extern "js" fn GPURenderBundleEncoder::set_bind_group(
  self : GPURenderBundleEncoder,
  index : GPUIndex32,
  bind_group : GPUBindGroup?,
) -> Unit =
  #| (self, index, bind_group) => self.setBindGroup(index, bind_group)

///|
pub extern "js" fn GPURenderBundleEncoder::set_bind_group_with_dynamic_offsets(
  self : GPURenderBundleEncoder,
  index : GPUIndex32,
  bind_group : GPUBindGroup?,
  dynamic_offsets : Array[GPUBufferDynamicOffset],
) -> Unit =
  #| (self, index, bind_group, dynamic_offsets) => self.setBindGroup(index, bind_group, dynamic_offsets)

///|
pub extern "js" fn GPURenderBundleEncoder::set_bind_group_with_index_g_p_u_index32_and_bind_group_and_dynamic_offsets_data_uint32_array_and_dynamic_offsets_data_start_g_p_u_size64_and_dynamic_offsets_data_length_g_p_u_size32(
  self : GPURenderBundleEncoder,
  index : GPUIndex32,
  bind_group : GPUBindGroup?,
  dynamic_offsets_data : Uint32Array,
  dynamic_offsets_data_start : GPUSize64,
  dynamic_offsets_data_length : GPUSize32,
) -> Unit =
  #| (self, index, bind_group, dynamic_offsets_data, dynamic_offsets_data_start, dynamic_offsets_data_length) => self.setBindGroup(index, bind_group, dynamic_offsets_data, dynamic_offsets_data_start, dynamic_offsets_data_length)

///|
pub extern "js" fn GPURenderBundleEncoder::set_pipeline(
  self : GPURenderBundleEncoder,
  pipeline : GPURenderPipeline,
) -> Unit =
  #| (self, pipeline) => self.setPipeline(pipeline)

///|
pub extern "js" fn GPURenderBundleEncoder::set_index_buffer(
  self : GPURenderBundleEncoder,
  buffer : GPUBuffer,
  index_format : GPUIndexFormat,
) -> Unit =
  #| (self, buffer, index_format) => self.setIndexBuffer(buffer, ['uint16', 'uint32'][index_format])

///|
pub extern "js" fn GPURenderBundleEncoder::set_index_buffer_with_size(
  self : GPURenderBundleEncoder,
  buffer : GPUBuffer,
  index_format : GPUIndexFormat,
  offset : GPUSize64,
  size : GPUSize64,
) -> Unit =
  #| (self, buffer, index_format, offset, size) => self.setIndexBuffer(buffer, ['uint16', 'uint32'][index_format], offset, size)

///|
pub extern "js" fn GPURenderBundleEncoder::set_vertex_buffer(
  self : GPURenderBundleEncoder,
  slot : GPUIndex32,
  buffer : GPUBuffer?,
) -> Unit =
  #| (self, slot, buffer) => self.setVertexBuffer(slot, buffer)

///|
pub extern "js" fn GPURenderBundleEncoder::set_vertex_buffer_with_size(
  self : GPURenderBundleEncoder,
  slot : GPUIndex32,
  buffer : GPUBuffer?,
  offset : GPUSize64,
  size : GPUSize64,
) -> Unit =
  #| (self, slot, buffer, offset, size) => self.setVertexBuffer(slot, buffer, offset, size)

///|
pub extern "js" fn GPURenderBundleEncoder::draw(
  self : GPURenderBundleEncoder,
  vertex_count : GPUSize32,
) -> Unit =
  #| (self, vertex_count) => self.draw(vertex_count)

///|
pub extern "js" fn GPURenderBundleEncoder::draw_with_first_instance(
  self : GPURenderBundleEncoder,
  vertex_count : GPUSize32,
  instance_count : GPUSize32,
  first_vertex : GPUSize32,
  first_instance : GPUSize32,
) -> Unit =
  #| (self, vertex_count, instance_count, first_vertex, first_instance) => self.draw(vertex_count, instance_count, first_vertex, first_instance)

///|
pub extern "js" fn GPURenderBundleEncoder::draw_indexed(
  self : GPURenderBundleEncoder,
  index_count : GPUSize32,
) -> Unit =
  #| (self, index_count) => self.drawIndexed(index_count)

///|
pub extern "js" fn GPURenderBundleEncoder::draw_indexed_with_first_instance(
  self : GPURenderBundleEncoder,
  index_count : GPUSize32,
  instance_count : GPUSize32,
  first_index : GPUSize32,
  base_vertex : GPUSignedOffset32,
  first_instance : GPUSize32,
) -> Unit =
  #| (self, index_count, instance_count, first_index, base_vertex, first_instance) => self.drawIndexed(index_count, instance_count, first_index, base_vertex, first_instance)

///|
pub extern "js" fn GPURenderBundleEncoder::draw_indirect(
  self : GPURenderBundleEncoder,
  indirect_buffer : GPUBuffer,
  indirect_offset : GPUSize64,
) -> Unit =
  #| (self, indirect_buffer, indirect_offset) => self.drawIndirect(indirect_buffer, indirect_offset)

///|
pub extern "js" fn GPURenderBundleEncoder::draw_indexed_indirect(
  self : GPURenderBundleEncoder,
  indirect_buffer : GPUBuffer,
  indirect_offset : GPUSize64,
) -> Unit =
  #| (self, indirect_buffer, indirect_offset) => self.drawIndexedIndirect(indirect_buffer, indirect_offset)

///|
/// GPUQueue interface
pub type GPUQueue

///|
pub extern "js" fn GPUQueue::to_js_value(self : GPUQueue) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPUQueue::submit(
  self : GPUQueue,
  command_buffers : Array[GPUCommandBuffer],
) -> Unit =
  #| (self, command_buffers) => self.submit(command_buffers)

///|
pub extern "js" fn GPUQueue::on_submitted_work_done(
  self : GPUQueue,
) -> Promise[Unit] =
  #| (self) => self.onSubmittedWorkDone()

///|
pub extern "js" fn GPUQueue::write_buffer(
  self : GPUQueue,
  buffer : GPUBuffer,
  buffer_offset : GPUSize64,
  data : AllowSharedBufferSource,
) -> Unit =
  #| (self, buffer, buffer_offset, data) => self.writeBuffer(buffer, buffer_offset, data)

///|
pub extern "js" fn GPUQueue::write_buffer_with_size(
  self : GPUQueue,
  buffer : GPUBuffer,
  buffer_offset : GPUSize64,
  data : AllowSharedBufferSource,
  data_offset : GPUSize64,
  size : GPUSize64,
) -> Unit =
  #| (self, buffer, buffer_offset, data, data_offset, size) => self.writeBuffer(buffer, buffer_offset, data, data_offset, size)

///|
pub extern "js" fn GPUQueue::write_texture(
  self : GPUQueue,
  destination : GPUTexelCopyTextureInfo,
  data : AllowSharedBufferSource,
  data_layout : GPUTexelCopyBufferLayout,
  size : GPUExtent3D,
) -> Unit =
  #| (self, destination, data, data_layout, size) => self.writeTexture(destination, data, data_layout, size)

///|
pub extern "js" fn GPUQueue::copy_external_image_to_texture(
  self : GPUQueue,
  source : GPUCopyExternalImageSourceInfo,
  destination : GPUCopyExternalImageDestInfo,
  copy_size : GPUExtent3D,
) -> Unit =
  #| (self, source, destination, copy_size) => self.copyExternalImageToTexture(source, destination, copy_size)

///|
pub extern "js" fn GPUQueue::get_label(self : GPUQueue) -> String =
  #| (self) => self.label

///|
pub extern "js" fn GPUQueue::set_label(self : GPUQueue, value : String) -> Unit =
  #| (self, value) => { self.label = value }

///|
/// GPUQuerySet interface
pub type GPUQuerySet

///|
pub extern "js" fn GPUQuerySet::to_js_value(self : GPUQuerySet) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPUQuerySet::destroy(self : GPUQuerySet) -> Unit =
  #| (self) => self.destroy()

///|
pub extern "js" fn GPUQuerySet::get_type(self : GPUQuerySet) -> GPUQueryType =
  #| (self) => self.type

///|
pub extern "js" fn GPUQuerySet::get_count(self : GPUQuerySet) -> GPUSize32Out =
  #| (self) => self.count

///|
pub extern "js" fn GPUQuerySet::get_label(self : GPUQuerySet) -> String =
  #| (self) => self.label

///|
pub extern "js" fn GPUQuerySet::set_label(
  self : GPUQuerySet,
  value : String,
) -> Unit =
  #| (self, value) => { self.label = value }

///|
/// GPUCanvasContext interface
pub type GPUCanvasContext

///|
pub extern "js" fn GPUCanvasContext::to_js_value(
  self : GPUCanvasContext,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPUCanvasContext::get_canvas(
  self : GPUCanvasContext,
) -> JsValue =
  #| (self) => self.canvas

///|
pub extern "js" fn GPUCanvasContext::configure(
  self : GPUCanvasContext,
  configuration : GPUCanvasConfiguration,
) -> Unit =
  #| (self, configuration) => self.configure(configuration)

///|
pub extern "js" fn GPUCanvasContext::unconfigure(
  self : GPUCanvasContext,
) -> Unit =
  #| (self) => self.unconfigure()

///|
pub extern "js" fn GPUCanvasContext::get_configuration(
  self : GPUCanvasContext,
) -> GPUCanvasConfiguration? =
  #| (self) => self.getConfiguration()

///|
pub extern "js" fn GPUCanvasContext::get_current_texture(
  self : GPUCanvasContext,
) -> GPUTexture =
  #| (self) => self.getCurrentTexture()

///|
/// GPUDeviceLostInfo interface
pub type GPUDeviceLostInfo

///|
pub extern "js" fn GPUDeviceLostInfo::to_js_value(
  self : GPUDeviceLostInfo,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPUDeviceLostInfo::get_reason(
  self : GPUDeviceLostInfo,
) -> GPUDeviceLostReason =
  #| (self) => self.reason

///|
pub extern "js" fn GPUDeviceLostInfo::get_message(
  self : GPUDeviceLostInfo,
) -> String =
  #| (self) => self.message

///|
/// GPUError interface
pub type GPUError

///|
pub extern "js" fn GPUError::to_js_value(self : GPUError) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPUError::get_message(self : GPUError) -> String =
  #| (self) => self.message

///|
/// GPUValidationError interface
pub type GPUValidationError

///|
pub extern "js" fn GPUValidationError::to_js_value(
  self : GPUValidationError,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPUValidationError::get_message(
  self : GPUValidationError,
) -> String =
  #| (self) => self.message

///|
pub extern "js" fn GPUValidationError::new(
  message : String,
) -> GPUValidationError =
  #| (message) => new GPUValidationError(message)

///|
/// GPUOutOfMemoryError interface
pub type GPUOutOfMemoryError

///|
pub extern "js" fn GPUOutOfMemoryError::to_js_value(
  self : GPUOutOfMemoryError,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPUOutOfMemoryError::get_message(
  self : GPUOutOfMemoryError,
) -> String =
  #| (self) => self.message

///|
pub extern "js" fn GPUOutOfMemoryError::new(
  message : String,
) -> GPUOutOfMemoryError =
  #| (message) => new GPUOutOfMemoryError(message)

///|
/// GPUInternalError interface
pub type GPUInternalError

///|
pub extern "js" fn GPUInternalError::to_js_value(
  self : GPUInternalError,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPUInternalError::get_message(
  self : GPUInternalError,
) -> String =
  #| (self) => self.message

///|
pub extern "js" fn GPUInternalError::new(message : String) -> GPUInternalError =
  #| (message) => new GPUInternalError(message)

///|
/// GPUUncapturedErrorEvent interface
pub type GPUUncapturedErrorEvent

///|
pub extern "js" fn GPUUncapturedErrorEvent::to_js_value(
  self : GPUUncapturedErrorEvent,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GPUUncapturedErrorEvent::new(
  type_ : String,
  gpu_uncaptured_error_event_init_dict : GPUUncapturedErrorEventInit,
) -> GPUUncapturedErrorEvent =
  #| (type_, gpu_uncaptured_error_event_init_dict) => new GPUUncapturedErrorEvent(type_, gpu_uncaptured_error_event_init_dict)

///|
pub extern "js" fn GPUUncapturedErrorEvent::get_error(
  self : GPUUncapturedErrorEvent,
) -> GPUError =
  #| (self) => self.error
