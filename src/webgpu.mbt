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
pub extern "js" fn GPUBindingResource::from_gpu_sampler(
  v : GPUSampler,
) -> GPUBindingResource =
  #| (v) => v

///|
/// Create GPUBindingResource from GPUTexture
pub extern "js" fn GPUBindingResource::from_gpu_texture(
  v : GPUTexture,
) -> GPUBindingResource =
  #| (v) => v

///|
/// Create GPUBindingResource from GPUTextureView
pub extern "js" fn GPUBindingResource::from_gpu_texture_view(
  v : GPUTextureView,
) -> GPUBindingResource =
  #| (v) => v

///|
/// Create GPUBindingResource from GPUBuffer
pub extern "js" fn GPUBindingResource::from_gpu_buffer(
  v : GPUBuffer,
) -> GPUBindingResource =
  #| (v) => v

///|
extern "js" fn GPUBindingResource::from_gpu_buffer_binding_ffi(
  v : JsValue,
) -> GPUBindingResource =
  #| v => v

///|
pub fn GPUBindingResource::from_gpu_buffer_binding(
  v : GPUBufferBinding,
) -> GPUBindingResource {
  GPUBindingResource::from_gpu_buffer_binding_ffi(v.to_js())
}

///|
/// Create GPUBindingResource from GPUExternalTexture
pub extern "js" fn GPUBindingResource::from_gpu_external_texture(
  v : GPUExternalTexture,
) -> GPUBindingResource =
  #| (v) => v

///|
/// Check if this GPUBindingResource is GPUSampler
pub extern "js" fn GPUBindingResource::is_gpu_sampler(
  self : GPUBindingResource,
) -> Bool =
  #| (self) => self instanceof GPUSampler

///|
/// Check if this GPUBindingResource is GPUTexture
pub extern "js" fn GPUBindingResource::is_gpu_texture(
  self : GPUBindingResource,
) -> Bool =
  #| (self) => self instanceof GPUTexture

///|
/// Check if this GPUBindingResource is GPUTextureView
pub extern "js" fn GPUBindingResource::is_gpu_texture_view(
  self : GPUBindingResource,
) -> Bool =
  #| (self) => self instanceof GPUTextureView

///|
/// Check if this GPUBindingResource is GPUBuffer
pub extern "js" fn GPUBindingResource::is_gpu_buffer(
  self : GPUBindingResource,
) -> Bool =
  #| (self) => self instanceof GPUBuffer

///|
/// Check if this GPUBindingResource is GPUBufferBinding
pub extern "js" fn GPUBindingResource::is_gpu_buffer_binding(
  self : GPUBindingResource,
) -> Bool =
  #| (self) => typeof self === 'object' && self !== null

///|
/// Check if this GPUBindingResource is GPUExternalTexture
pub extern "js" fn GPUBindingResource::is_gpu_external_texture(
  self : GPUBindingResource,
) -> Bool =
  #| (self) => self instanceof GPUExternalTexture

///|
/// Try to get GPUBindingResource as GPUSampler
pub extern "js" fn GPUBindingResource::as_gpu_sampler(
  self : GPUBindingResource,
) -> GPUSampler? =
  #| (self) => (self instanceof GPUSampler) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get GPUBindingResource as GPUTexture
pub extern "js" fn GPUBindingResource::as_gpu_texture(
  self : GPUBindingResource,
) -> GPUTexture? =
  #| (self) => (self instanceof GPUTexture) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get GPUBindingResource as GPUTextureView
pub extern "js" fn GPUBindingResource::as_gpu_texture_view(
  self : GPUBindingResource,
) -> GPUTextureView? =
  #| (self) => (self instanceof GPUTextureView) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get GPUBindingResource as GPUBuffer
pub extern "js" fn GPUBindingResource::as_gpu_buffer(
  self : GPUBindingResource,
) -> GPUBuffer? =
  #| (self) => (self instanceof GPUBuffer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub fn GPUBindingResource::as_gpu_buffer_binding(
  self : GPUBindingResource,
) -> GPUBufferBinding? {
  if self.is_gpu_buffer_binding() {
    Some(GPUBufferBinding::from_js(self.to_js_value()))
  } else {
    None
  }
}

///|
/// Try to get GPUBindingResource as GPUExternalTexture
pub extern "js" fn GPUBindingResource::as_gpu_external_texture(
  self : GPUBindingResource,
) -> GPUExternalTexture? =
  #| (self) => (self instanceof GPUExternalTexture) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[GPUBindingResource] to GPUSampler?
pub fn GPUBindingResource::bind_as_gpu_sampler(
  value : GPUBindingResource?,
) -> GPUSampler? {
  match value {
    Some(v) => v.as_gpu_sampler()
    None => None
  }
}

///|
/// Flatten Option[GPUBindingResource] to GPUTexture?
pub fn GPUBindingResource::bind_as_gpu_texture(
  value : GPUBindingResource?,
) -> GPUTexture? {
  match value {
    Some(v) => v.as_gpu_texture()
    None => None
  }
}

///|
/// Flatten Option[GPUBindingResource] to GPUTextureView?
pub fn GPUBindingResource::bind_as_gpu_texture_view(
  value : GPUBindingResource?,
) -> GPUTextureView? {
  match value {
    Some(v) => v.as_gpu_texture_view()
    None => None
  }
}

///|
/// Flatten Option[GPUBindingResource] to GPUBuffer?
pub fn GPUBindingResource::bind_as_gpu_buffer(
  value : GPUBindingResource?,
) -> GPUBuffer? {
  match value {
    Some(v) => v.as_gpu_buffer()
    None => None
  }
}

///|
/// Flatten Option[GPUBindingResource] to GPUBufferBinding?
pub fn GPUBindingResource::bind_as_gpu_buffer_binding(
  value : GPUBindingResource?,
) -> GPUBufferBinding? {
  match value {
    Some(v) => v.as_gpu_buffer_binding()
    None => None
  }
}

///|
/// Flatten Option[GPUBindingResource] to GPUExternalTexture?
pub fn GPUBindingResource::bind_as_gpu_external_texture(
  value : GPUBindingResource?,
) -> GPUExternalTexture? {
  match value {
    Some(v) => v.as_gpu_external_texture()
    None => None
  }
}

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
pub extern "js" fn GPUCopyExternalImageSource::from_html_image_element(
  v : HTMLImageElement,
) -> GPUCopyExternalImageSource =
  #| (v) => v

///|
/// Create GPUCopyExternalImageSource from HTMLVideoElement
pub extern "js" fn GPUCopyExternalImageSource::from_html_video_element(
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
pub extern "js" fn GPUCopyExternalImageSource::from_html_canvas_element(
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
/// Check if this GPUCopyExternalImageSource is ImageBitmap
pub extern "js" fn GPUCopyExternalImageSource::is_image_bitmap(
  self : GPUCopyExternalImageSource,
) -> Bool =
  #| (self) => self instanceof ImageBitmap

///|
/// Check if this GPUCopyExternalImageSource is ImageData
pub extern "js" fn GPUCopyExternalImageSource::is_image_data(
  self : GPUCopyExternalImageSource,
) -> Bool =
  #| (self) => self instanceof ImageData

///|
/// Check if this GPUCopyExternalImageSource is HTMLImageElement
pub extern "js" fn GPUCopyExternalImageSource::is_html_image_element(
  self : GPUCopyExternalImageSource,
) -> Bool =
  #| (self) => self instanceof HTMLImageElement

///|
/// Check if this GPUCopyExternalImageSource is HTMLVideoElement
pub extern "js" fn GPUCopyExternalImageSource::is_html_video_element(
  self : GPUCopyExternalImageSource,
) -> Bool =
  #| (self) => self instanceof HTMLVideoElement

///|
/// Check if this GPUCopyExternalImageSource is VideoFrame
pub extern "js" fn GPUCopyExternalImageSource::is_video_frame(
  self : GPUCopyExternalImageSource,
) -> Bool =
  #| (self) => self instanceof VideoFrame

///|
/// Check if this GPUCopyExternalImageSource is HTMLCanvasElement
pub extern "js" fn GPUCopyExternalImageSource::is_html_canvas_element(
  self : GPUCopyExternalImageSource,
) -> Bool =
  #| (self) => self instanceof HTMLCanvasElement

///|
/// Check if this GPUCopyExternalImageSource is OffscreenCanvas
pub extern "js" fn GPUCopyExternalImageSource::is_offscreen_canvas(
  self : GPUCopyExternalImageSource,
) -> Bool =
  #| (self) => self instanceof OffscreenCanvas

///|
/// Try to get GPUCopyExternalImageSource as ImageBitmap
pub extern "js" fn GPUCopyExternalImageSource::as_image_bitmap(
  self : GPUCopyExternalImageSource,
) -> ImageBitmap? =
  #| (self) => (self instanceof ImageBitmap) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get GPUCopyExternalImageSource as ImageData
pub extern "js" fn GPUCopyExternalImageSource::as_image_data(
  self : GPUCopyExternalImageSource,
) -> ImageData? =
  #| (self) => (self instanceof ImageData) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get GPUCopyExternalImageSource as HTMLImageElement
pub extern "js" fn GPUCopyExternalImageSource::as_html_image_element(
  self : GPUCopyExternalImageSource,
) -> HTMLImageElement? =
  #| (self) => (self instanceof HTMLImageElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get GPUCopyExternalImageSource as HTMLVideoElement
pub extern "js" fn GPUCopyExternalImageSource::as_html_video_element(
  self : GPUCopyExternalImageSource,
) -> HTMLVideoElement? =
  #| (self) => (self instanceof HTMLVideoElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get GPUCopyExternalImageSource as VideoFrame
pub extern "js" fn GPUCopyExternalImageSource::as_video_frame(
  self : GPUCopyExternalImageSource,
) -> VideoFrame? =
  #| (self) => (self instanceof VideoFrame) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get GPUCopyExternalImageSource as HTMLCanvasElement
pub extern "js" fn GPUCopyExternalImageSource::as_html_canvas_element(
  self : GPUCopyExternalImageSource,
) -> HTMLCanvasElement? =
  #| (self) => (self instanceof HTMLCanvasElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get GPUCopyExternalImageSource as OffscreenCanvas
pub extern "js" fn GPUCopyExternalImageSource::as_offscreen_canvas(
  self : GPUCopyExternalImageSource,
) -> OffscreenCanvas? =
  #| (self) => (self instanceof OffscreenCanvas) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[GPUCopyExternalImageSource] to ImageBitmap?
pub fn GPUCopyExternalImageSource::bind_as_image_bitmap(
  value : GPUCopyExternalImageSource?,
) -> ImageBitmap? {
  match value {
    Some(v) => v.as_image_bitmap()
    None => None
  }
}

///|
/// Flatten Option[GPUCopyExternalImageSource] to ImageData?
pub fn GPUCopyExternalImageSource::bind_as_image_data(
  value : GPUCopyExternalImageSource?,
) -> ImageData? {
  match value {
    Some(v) => v.as_image_data()
    None => None
  }
}

///|
/// Flatten Option[GPUCopyExternalImageSource] to HTMLImageElement?
pub fn GPUCopyExternalImageSource::bind_as_html_image_element(
  value : GPUCopyExternalImageSource?,
) -> HTMLImageElement? {
  match value {
    Some(v) => v.as_html_image_element()
    None => None
  }
}

///|
/// Flatten Option[GPUCopyExternalImageSource] to HTMLVideoElement?
pub fn GPUCopyExternalImageSource::bind_as_html_video_element(
  value : GPUCopyExternalImageSource?,
) -> HTMLVideoElement? {
  match value {
    Some(v) => v.as_html_video_element()
    None => None
  }
}

///|
/// Flatten Option[GPUCopyExternalImageSource] to VideoFrame?
pub fn GPUCopyExternalImageSource::bind_as_video_frame(
  value : GPUCopyExternalImageSource?,
) -> VideoFrame? {
  match value {
    Some(v) => v.as_video_frame()
    None => None
  }
}

///|
/// Flatten Option[GPUCopyExternalImageSource] to HTMLCanvasElement?
pub fn GPUCopyExternalImageSource::bind_as_html_canvas_element(
  value : GPUCopyExternalImageSource?,
) -> HTMLCanvasElement? {
  match value {
    Some(v) => v.as_html_canvas_element()
    None => None
  }
}

///|
/// Flatten Option[GPUCopyExternalImageSource] to OffscreenCanvas?
pub fn GPUCopyExternalImageSource::bind_as_offscreen_canvas(
  value : GPUCopyExternalImageSource?,
) -> OffscreenCanvas? {
  match value {
    Some(v) => v.as_offscreen_canvas()
    None => None
  }
}

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
/// Create GPUColor from FixedArray[Double]
pub extern "js" fn GPUColor::from_array_of_double(
  v : FixedArray[Double],
) -> GPUColor =
  #| (v) => v

///|
extern "js" fn GPUColor::from_gpu_color_dict_ffi(v : JsValue) -> GPUColor =
  #| v => v

///|
pub fn GPUColor::from_gpu_color_dict(v : GPUColorDict) -> GPUColor {
  GPUColor::from_gpu_color_dict_ffi(v.to_js())
}

///|
/// Check if this GPUColor is FixedArray[Double]
pub extern "js" fn GPUColor::is_array_of_double(self : GPUColor) -> Bool =
  #| (self) => Array.isArray(self)

///|
/// Check if this GPUColor is GPUColorDict
pub extern "js" fn GPUColor::is_gpu_color_dict(self : GPUColor) -> Bool =
  #| (self) => typeof self === 'object' && self !== null

///|
/// Try to get GPUColor as FixedArray[Double]
pub extern "js" fn GPUColor::as_array_of_double(
  self : GPUColor,
) -> FixedArray[Double]? =
  #| (self) => (Array.isArray(self)) ? self : undefined

///|
pub fn GPUColor::as_gpu_color_dict(self : GPUColor) -> GPUColorDict? {
  if self.is_gpu_color_dict() {
    Some(GPUColorDict::from_js(self.to_js_value()))
  } else {
    None
  }
}

///|
/// Flatten Option[GPUColor] to FixedArray[Double]?
pub fn GPUColor::bind_as_array_of_double(
  value : GPUColor?,
) -> FixedArray[Double]? {
  match value {
    Some(v) => v.as_array_of_double()
    None => None
  }
}

///|
/// Flatten Option[GPUColor] to GPUColorDict?
pub fn GPUColor::bind_as_gpu_color_dict(value : GPUColor?) -> GPUColorDict? {
  match value {
    Some(v) => v.as_gpu_color_dict()
    None => None
  }
}

///|
/// GPUOrigin2D typedef
pub type GPUOrigin2D

///|
pub extern "js" fn GPUOrigin2D::to_js_value(self : GPUOrigin2D) -> JsValue =
  #| (self) => self

///|
/// Create GPUOrigin2D from FixedArray[GPUIntegerCoordinate]
pub extern "js" fn GPUOrigin2D::from_array_of_gpu_integer_coordinate(
  v : FixedArray[GPUIntegerCoordinate],
) -> GPUOrigin2D =
  #| (v) => v

///|
extern "js" fn GPUOrigin2D::from_gpu_origin_2d_dict_ffi(
  v : JsValue,
) -> GPUOrigin2D =
  #| v => v

///|
pub fn GPUOrigin2D::from_gpu_origin_2d_dict(v : GPUOrigin2DDict) -> GPUOrigin2D {
  GPUOrigin2D::from_gpu_origin_2d_dict_ffi(v.to_js())
}

///|
/// Check if this GPUOrigin2D is FixedArray[GPUIntegerCoordinate]
pub extern "js" fn GPUOrigin2D::is_array_of_gpu_integer_coordinate(
  self : GPUOrigin2D,
) -> Bool =
  #| (self) => Array.isArray(self)

///|
/// Check if this GPUOrigin2D is GPUOrigin2DDict
pub extern "js" fn GPUOrigin2D::is_gpu_origin_2d_dict(
  self : GPUOrigin2D,
) -> Bool =
  #| (self) => typeof self === 'object' && self !== null

///|
/// Try to get GPUOrigin2D as FixedArray[GPUIntegerCoordinate]
pub extern "js" fn GPUOrigin2D::as_array_of_gpu_integer_coordinate(
  self : GPUOrigin2D,
) -> FixedArray[GPUIntegerCoordinate]? =
  #| (self) => (Array.isArray(self)) ? self : undefined

///|
pub fn GPUOrigin2D::as_gpu_origin_2d_dict(
  self : GPUOrigin2D,
) -> GPUOrigin2DDict? {
  if self.is_gpu_origin_2d_dict() {
    Some(GPUOrigin2DDict::from_js(self.to_js_value()))
  } else {
    None
  }
}

///|
/// Flatten Option[GPUOrigin2D] to FixedArray[GPUIntegerCoordinate]?
pub fn GPUOrigin2D::bind_as_array_of_gpu_integer_coordinate(
  value : GPUOrigin2D?,
) -> FixedArray[GPUIntegerCoordinate]? {
  match value {
    Some(v) => v.as_array_of_gpu_integer_coordinate()
    None => None
  }
}

///|
/// Flatten Option[GPUOrigin2D] to GPUOrigin2DDict?
pub fn GPUOrigin2D::bind_as_gpu_origin_2d_dict(
  value : GPUOrigin2D?,
) -> GPUOrigin2DDict? {
  match value {
    Some(v) => v.as_gpu_origin_2d_dict()
    None => None
  }
}

///|
/// GPUOrigin3D typedef
pub type GPUOrigin3D

///|
pub extern "js" fn GPUOrigin3D::to_js_value(self : GPUOrigin3D) -> JsValue =
  #| (self) => self

///|
/// Create GPUOrigin3D from FixedArray[GPUIntegerCoordinate]
pub extern "js" fn GPUOrigin3D::from_array_of_gpu_integer_coordinate(
  v : FixedArray[GPUIntegerCoordinate],
) -> GPUOrigin3D =
  #| (v) => v

///|
extern "js" fn GPUOrigin3D::from_gpu_origin_3d_dict_ffi(
  v : JsValue,
) -> GPUOrigin3D =
  #| v => v

///|
pub fn GPUOrigin3D::from_gpu_origin_3d_dict(v : GPUOrigin3DDict) -> GPUOrigin3D {
  GPUOrigin3D::from_gpu_origin_3d_dict_ffi(v.to_js())
}

///|
/// Check if this GPUOrigin3D is FixedArray[GPUIntegerCoordinate]
pub extern "js" fn GPUOrigin3D::is_array_of_gpu_integer_coordinate(
  self : GPUOrigin3D,
) -> Bool =
  #| (self) => Array.isArray(self)

///|
/// Check if this GPUOrigin3D is GPUOrigin3DDict
pub extern "js" fn GPUOrigin3D::is_gpu_origin_3d_dict(
  self : GPUOrigin3D,
) -> Bool =
  #| (self) => typeof self === 'object' && self !== null

///|
/// Try to get GPUOrigin3D as FixedArray[GPUIntegerCoordinate]
pub extern "js" fn GPUOrigin3D::as_array_of_gpu_integer_coordinate(
  self : GPUOrigin3D,
) -> FixedArray[GPUIntegerCoordinate]? =
  #| (self) => (Array.isArray(self)) ? self : undefined

///|
pub fn GPUOrigin3D::as_gpu_origin_3d_dict(
  self : GPUOrigin3D,
) -> GPUOrigin3DDict? {
  if self.is_gpu_origin_3d_dict() {
    Some(GPUOrigin3DDict::from_js(self.to_js_value()))
  } else {
    None
  }
}

///|
/// Flatten Option[GPUOrigin3D] to FixedArray[GPUIntegerCoordinate]?
pub fn GPUOrigin3D::bind_as_array_of_gpu_integer_coordinate(
  value : GPUOrigin3D?,
) -> FixedArray[GPUIntegerCoordinate]? {
  match value {
    Some(v) => v.as_array_of_gpu_integer_coordinate()
    None => None
  }
}

///|
/// Flatten Option[GPUOrigin3D] to GPUOrigin3DDict?
pub fn GPUOrigin3D::bind_as_gpu_origin_3d_dict(
  value : GPUOrigin3D?,
) -> GPUOrigin3DDict? {
  match value {
    Some(v) => v.as_gpu_origin_3d_dict()
    None => None
  }
}

///|
/// GPUExtent3D typedef
pub type GPUExtent3D

///|
pub extern "js" fn GPUExtent3D::to_js_value(self : GPUExtent3D) -> JsValue =
  #| (self) => self

///|
/// Create GPUExtent3D from FixedArray[GPUIntegerCoordinate]
pub extern "js" fn GPUExtent3D::from_array_of_gpu_integer_coordinate(
  v : FixedArray[GPUIntegerCoordinate],
) -> GPUExtent3D =
  #| (v) => v

///|
extern "js" fn GPUExtent3D::from_gpu_extent_3d_dict_ffi(
  v : JsValue,
) -> GPUExtent3D =
  #| v => v

///|
pub fn GPUExtent3D::from_gpu_extent_3d_dict(v : GPUExtent3DDict) -> GPUExtent3D {
  GPUExtent3D::from_gpu_extent_3d_dict_ffi(v.to_js())
}

///|
/// Check if this GPUExtent3D is FixedArray[GPUIntegerCoordinate]
pub extern "js" fn GPUExtent3D::is_array_of_gpu_integer_coordinate(
  self : GPUExtent3D,
) -> Bool =
  #| (self) => Array.isArray(self)

///|
/// Check if this GPUExtent3D is GPUExtent3DDict
pub extern "js" fn GPUExtent3D::is_gpu_extent_3d_dict(
  self : GPUExtent3D,
) -> Bool =
  #| (self) => typeof self === 'object' && self !== null

///|
/// Try to get GPUExtent3D as FixedArray[GPUIntegerCoordinate]
pub extern "js" fn GPUExtent3D::as_array_of_gpu_integer_coordinate(
  self : GPUExtent3D,
) -> FixedArray[GPUIntegerCoordinate]? =
  #| (self) => (Array.isArray(self)) ? self : undefined

///|
pub fn GPUExtent3D::as_gpu_extent_3d_dict(
  self : GPUExtent3D,
) -> GPUExtent3DDict? {
  if self.is_gpu_extent_3d_dict() {
    Some(GPUExtent3DDict::from_js(self.to_js_value()))
  } else {
    None
  }
}

///|
/// Flatten Option[GPUExtent3D] to FixedArray[GPUIntegerCoordinate]?
pub fn GPUExtent3D::bind_as_array_of_gpu_integer_coordinate(
  value : GPUExtent3D?,
) -> FixedArray[GPUIntegerCoordinate]? {
  match value {
    Some(v) => v.as_array_of_gpu_integer_coordinate()
    None => None
  }
}

///|
/// Flatten Option[GPUExtent3D] to GPUExtent3DDict?
pub fn GPUExtent3D::bind_as_gpu_extent_3d_dict(
  value : GPUExtent3D?,
) -> GPUExtent3DDict? {
  match value {
    Some(v) => v.as_gpu_extent_3d_dict()
    None => None
  }
}

///|
/// GPUPowerPreference enum
pub(all) enum GPUPowerPreference {
  LowPower
  HighPerformance
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn GPUPowerPreference::to_string(self : GPUPowerPreference) -> String {
  match self {
    GPUPowerPreference::LowPower => "low-power"
    GPUPowerPreference::HighPerformance => "high-performance"
  }
}

///|
/// Parse from string value
pub fn GPUPowerPreference::from_string(s : String) -> GPUPowerPreference? {
  match s {
    "low-power" => Some(GPUPowerPreference::LowPower)
    "high-performance" => Some(GPUPowerPreference::HighPerformance)
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
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn GPUFeatureName::to_string(self : GPUFeatureName) -> String {
  match self {
    GPUFeatureName::CoreFeaturesAndLimits => "core-features-and-limits"
    GPUFeatureName::DepthClipControl => "depth-clip-control"
    GPUFeatureName::Depth32floatStencil8 => "depth32float-stencil8"
    GPUFeatureName::TextureCompressionBc => "texture-compression-bc"
    GPUFeatureName::TextureCompressionBcSliced3d =>
      "texture-compression-bc-sliced-3d"
    GPUFeatureName::TextureCompressionEtc2 => "texture-compression-etc2"
    GPUFeatureName::TextureCompressionAstc => "texture-compression-astc"
    GPUFeatureName::TextureCompressionAstcSliced3d =>
      "texture-compression-astc-sliced-3d"
    GPUFeatureName::TimestampQuery => "timestamp-query"
    GPUFeatureName::IndirectFirstInstance => "indirect-first-instance"
    GPUFeatureName::ShaderF16 => "shader-f16"
    GPUFeatureName::Rg11b10ufloatRenderable => "rg11b10ufloat-renderable"
    GPUFeatureName::Bgra8unormStorage => "bgra8unorm-storage"
    GPUFeatureName::Float32Filterable => "float32-filterable"
    GPUFeatureName::Float32Blendable => "float32-blendable"
    GPUFeatureName::ClipDistances => "clip-distances"
    GPUFeatureName::DualSourceBlending => "dual-source-blending"
    GPUFeatureName::Subgroups => "subgroups"
    GPUFeatureName::TextureFormatsTier1 => "texture-formats-tier1"
    GPUFeatureName::TextureFormatsTier2 => "texture-formats-tier2"
    GPUFeatureName::PrimitiveIndex => "primitive-index"
    GPUFeatureName::TextureComponentSwizzle => "texture-component-swizzle"
  }
}

///|
/// Parse from string value
pub fn GPUFeatureName::from_string(s : String) -> GPUFeatureName? {
  match s {
    "core-features-and-limits" => Some(GPUFeatureName::CoreFeaturesAndLimits)
    "depth-clip-control" => Some(GPUFeatureName::DepthClipControl)
    "depth32float-stencil8" => Some(GPUFeatureName::Depth32floatStencil8)
    "texture-compression-bc" => Some(GPUFeatureName::TextureCompressionBc)
    "texture-compression-bc-sliced-3d" =>
      Some(GPUFeatureName::TextureCompressionBcSliced3d)
    "texture-compression-etc2" => Some(GPUFeatureName::TextureCompressionEtc2)
    "texture-compression-astc" => Some(GPUFeatureName::TextureCompressionAstc)
    "texture-compression-astc-sliced-3d" =>
      Some(GPUFeatureName::TextureCompressionAstcSliced3d)
    "timestamp-query" => Some(GPUFeatureName::TimestampQuery)
    "indirect-first-instance" => Some(GPUFeatureName::IndirectFirstInstance)
    "shader-f16" => Some(GPUFeatureName::ShaderF16)
    "rg11b10ufloat-renderable" => Some(GPUFeatureName::Rg11b10ufloatRenderable)
    "bgra8unorm-storage" => Some(GPUFeatureName::Bgra8unormStorage)
    "float32-filterable" => Some(GPUFeatureName::Float32Filterable)
    "float32-blendable" => Some(GPUFeatureName::Float32Blendable)
    "clip-distances" => Some(GPUFeatureName::ClipDistances)
    "dual-source-blending" => Some(GPUFeatureName::DualSourceBlending)
    "subgroups" => Some(GPUFeatureName::Subgroups)
    "texture-formats-tier1" => Some(GPUFeatureName::TextureFormatsTier1)
    "texture-formats-tier2" => Some(GPUFeatureName::TextureFormatsTier2)
    "primitive-index" => Some(GPUFeatureName::PrimitiveIndex)
    "texture-component-swizzle" => Some(GPUFeatureName::TextureComponentSwizzle)
    _ => None
  }
}

///|
/// GPUBufferMapState enum
pub(all) enum GPUBufferMapState {
  Unmapped
  Pending
  Mapped
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn GPUBufferMapState::to_string(self : GPUBufferMapState) -> String {
  match self {
    GPUBufferMapState::Unmapped => "unmapped"
    GPUBufferMapState::Pending => "pending"
    GPUBufferMapState::Mapped => "mapped"
  }
}

///|
/// Parse from string value
pub fn GPUBufferMapState::from_string(s : String) -> GPUBufferMapState? {
  match s {
    "unmapped" => Some(GPUBufferMapState::Unmapped)
    "pending" => Some(GPUBufferMapState::Pending)
    "mapped" => Some(GPUBufferMapState::Mapped)
    _ => None
  }
}

///|
/// GPUTextureDimension enum
pub(all) enum GPUTextureDimension {
  N1d
  N2d
  N3d
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn GPUTextureDimension::to_string(self : GPUTextureDimension) -> String {
  match self {
    GPUTextureDimension::N1d => "1d"
    GPUTextureDimension::N2d => "2d"
    GPUTextureDimension::N3d => "3d"
  }
}

///|
/// Parse from string value
pub fn GPUTextureDimension::from_string(s : String) -> GPUTextureDimension? {
  match s {
    "1d" => Some(GPUTextureDimension::N1d)
    "2d" => Some(GPUTextureDimension::N2d)
    "3d" => Some(GPUTextureDimension::N3d)
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
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn GPUTextureViewDimension::to_string(
  self : GPUTextureViewDimension,
) -> String {
  match self {
    GPUTextureViewDimension::N1d => "1d"
    GPUTextureViewDimension::N2d => "2d"
    GPUTextureViewDimension::N2dArray => "2d-array"
    GPUTextureViewDimension::Cube => "cube"
    GPUTextureViewDimension::CubeArray => "cube-array"
    GPUTextureViewDimension::N3d => "3d"
  }
}

///|
/// Parse from string value
pub fn GPUTextureViewDimension::from_string(
  s : String,
) -> GPUTextureViewDimension? {
  match s {
    "1d" => Some(GPUTextureViewDimension::N1d)
    "2d" => Some(GPUTextureViewDimension::N2d)
    "2d-array" => Some(GPUTextureViewDimension::N2dArray)
    "cube" => Some(GPUTextureViewDimension::Cube)
    "cube-array" => Some(GPUTextureViewDimension::CubeArray)
    "3d" => Some(GPUTextureViewDimension::N3d)
    _ => None
  }
}

///|
/// GPUTextureAspect enum
pub(all) enum GPUTextureAspect {
  All
  StencilOnly
  DepthOnly
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn GPUTextureAspect::to_string(self : GPUTextureAspect) -> String {
  match self {
    GPUTextureAspect::All => "all"
    GPUTextureAspect::StencilOnly => "stencil-only"
    GPUTextureAspect::DepthOnly => "depth-only"
  }
}

///|
/// Parse from string value
pub fn GPUTextureAspect::from_string(s : String) -> GPUTextureAspect? {
  match s {
    "all" => Some(GPUTextureAspect::All)
    "stencil-only" => Some(GPUTextureAspect::StencilOnly)
    "depth-only" => Some(GPUTextureAspect::DepthOnly)
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
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn GPUTextureFormat::to_string(self : GPUTextureFormat) -> String {
  match self {
    GPUTextureFormat::R8unorm => "r8unorm"
    GPUTextureFormat::R8snorm => "r8snorm"
    GPUTextureFormat::R8uint => "r8uint"
    GPUTextureFormat::R8sint => "r8sint"
    GPUTextureFormat::R16unorm => "r16unorm"
    GPUTextureFormat::R16snorm => "r16snorm"
    GPUTextureFormat::R16uint => "r16uint"
    GPUTextureFormat::R16sint => "r16sint"
    GPUTextureFormat::R16float => "r16float"
    GPUTextureFormat::Rg8unorm => "rg8unorm"
    GPUTextureFormat::Rg8snorm => "rg8snorm"
    GPUTextureFormat::Rg8uint => "rg8uint"
    GPUTextureFormat::Rg8sint => "rg8sint"
    GPUTextureFormat::R32uint => "r32uint"
    GPUTextureFormat::R32sint => "r32sint"
    GPUTextureFormat::R32float => "r32float"
    GPUTextureFormat::Rg16unorm => "rg16unorm"
    GPUTextureFormat::Rg16snorm => "rg16snorm"
    GPUTextureFormat::Rg16uint => "rg16uint"
    GPUTextureFormat::Rg16sint => "rg16sint"
    GPUTextureFormat::Rg16float => "rg16float"
    GPUTextureFormat::Rgba8unorm => "rgba8unorm"
    GPUTextureFormat::Rgba8unormSrgb => "rgba8unorm-srgb"
    GPUTextureFormat::Rgba8snorm => "rgba8snorm"
    GPUTextureFormat::Rgba8uint => "rgba8uint"
    GPUTextureFormat::Rgba8sint => "rgba8sint"
    GPUTextureFormat::Bgra8unorm => "bgra8unorm"
    GPUTextureFormat::Bgra8unormSrgb => "bgra8unorm-srgb"
    GPUTextureFormat::Rgb9e5ufloat => "rgb9e5ufloat"
    GPUTextureFormat::Rgb10a2uint => "rgb10a2uint"
    GPUTextureFormat::Rgb10a2unorm => "rgb10a2unorm"
    GPUTextureFormat::Rg11b10ufloat => "rg11b10ufloat"
    GPUTextureFormat::Rg32uint => "rg32uint"
    GPUTextureFormat::Rg32sint => "rg32sint"
    GPUTextureFormat::Rg32float => "rg32float"
    GPUTextureFormat::Rgba16unorm => "rgba16unorm"
    GPUTextureFormat::Rgba16snorm => "rgba16snorm"
    GPUTextureFormat::Rgba16uint => "rgba16uint"
    GPUTextureFormat::Rgba16sint => "rgba16sint"
    GPUTextureFormat::Rgba16float => "rgba16float"
    GPUTextureFormat::Rgba32uint => "rgba32uint"
    GPUTextureFormat::Rgba32sint => "rgba32sint"
    GPUTextureFormat::Rgba32float => "rgba32float"
    GPUTextureFormat::Stencil8 => "stencil8"
    GPUTextureFormat::Depth16unorm => "depth16unorm"
    GPUTextureFormat::Depth24plus => "depth24plus"
    GPUTextureFormat::Depth24plusStencil8 => "depth24plus-stencil8"
    GPUTextureFormat::Depth32float => "depth32float"
    GPUTextureFormat::Depth32floatStencil8 => "depth32float-stencil8"
    GPUTextureFormat::Bc1RgbaUnorm => "bc1-rgba-unorm"
    GPUTextureFormat::Bc1RgbaUnormSrgb => "bc1-rgba-unorm-srgb"
    GPUTextureFormat::Bc2RgbaUnorm => "bc2-rgba-unorm"
    GPUTextureFormat::Bc2RgbaUnormSrgb => "bc2-rgba-unorm-srgb"
    GPUTextureFormat::Bc3RgbaUnorm => "bc3-rgba-unorm"
    GPUTextureFormat::Bc3RgbaUnormSrgb => "bc3-rgba-unorm-srgb"
    GPUTextureFormat::Bc4RUnorm => "bc4-r-unorm"
    GPUTextureFormat::Bc4RSnorm => "bc4-r-snorm"
    GPUTextureFormat::Bc5RgUnorm => "bc5-rg-unorm"
    GPUTextureFormat::Bc5RgSnorm => "bc5-rg-snorm"
    GPUTextureFormat::Bc6hRgbUfloat => "bc6h-rgb-ufloat"
    GPUTextureFormat::Bc6hRgbFloat => "bc6h-rgb-float"
    GPUTextureFormat::Bc7RgbaUnorm => "bc7-rgba-unorm"
    GPUTextureFormat::Bc7RgbaUnormSrgb => "bc7-rgba-unorm-srgb"
    GPUTextureFormat::Etc2Rgb8unorm => "etc2-rgb8unorm"
    GPUTextureFormat::Etc2Rgb8unormSrgb => "etc2-rgb8unorm-srgb"
    GPUTextureFormat::Etc2Rgb8a1unorm => "etc2-rgb8a1unorm"
    GPUTextureFormat::Etc2Rgb8a1unormSrgb => "etc2-rgb8a1unorm-srgb"
    GPUTextureFormat::Etc2Rgba8unorm => "etc2-rgba8unorm"
    GPUTextureFormat::Etc2Rgba8unormSrgb => "etc2-rgba8unorm-srgb"
    GPUTextureFormat::EacR11unorm => "eac-r11unorm"
    GPUTextureFormat::EacR11snorm => "eac-r11snorm"
    GPUTextureFormat::EacRg11unorm => "eac-rg11unorm"
    GPUTextureFormat::EacRg11snorm => "eac-rg11snorm"
    GPUTextureFormat::Astc4x4Unorm => "astc-4x4-unorm"
    GPUTextureFormat::Astc4x4UnormSrgb => "astc-4x4-unorm-srgb"
    GPUTextureFormat::Astc5x4Unorm => "astc-5x4-unorm"
    GPUTextureFormat::Astc5x4UnormSrgb => "astc-5x4-unorm-srgb"
    GPUTextureFormat::Astc5x5Unorm => "astc-5x5-unorm"
    GPUTextureFormat::Astc5x5UnormSrgb => "astc-5x5-unorm-srgb"
    GPUTextureFormat::Astc6x5Unorm => "astc-6x5-unorm"
    GPUTextureFormat::Astc6x5UnormSrgb => "astc-6x5-unorm-srgb"
    GPUTextureFormat::Astc6x6Unorm => "astc-6x6-unorm"
    GPUTextureFormat::Astc6x6UnormSrgb => "astc-6x6-unorm-srgb"
    GPUTextureFormat::Astc8x5Unorm => "astc-8x5-unorm"
    GPUTextureFormat::Astc8x5UnormSrgb => "astc-8x5-unorm-srgb"
    GPUTextureFormat::Astc8x6Unorm => "astc-8x6-unorm"
    GPUTextureFormat::Astc8x6UnormSrgb => "astc-8x6-unorm-srgb"
    GPUTextureFormat::Astc8x8Unorm => "astc-8x8-unorm"
    GPUTextureFormat::Astc8x8UnormSrgb => "astc-8x8-unorm-srgb"
    GPUTextureFormat::Astc10x5Unorm => "astc-10x5-unorm"
    GPUTextureFormat::Astc10x5UnormSrgb => "astc-10x5-unorm-srgb"
    GPUTextureFormat::Astc10x6Unorm => "astc-10x6-unorm"
    GPUTextureFormat::Astc10x6UnormSrgb => "astc-10x6-unorm-srgb"
    GPUTextureFormat::Astc10x8Unorm => "astc-10x8-unorm"
    GPUTextureFormat::Astc10x8UnormSrgb => "astc-10x8-unorm-srgb"
    GPUTextureFormat::Astc10x10Unorm => "astc-10x10-unorm"
    GPUTextureFormat::Astc10x10UnormSrgb => "astc-10x10-unorm-srgb"
    GPUTextureFormat::Astc12x10Unorm => "astc-12x10-unorm"
    GPUTextureFormat::Astc12x10UnormSrgb => "astc-12x10-unorm-srgb"
    GPUTextureFormat::Astc12x12Unorm => "astc-12x12-unorm"
    GPUTextureFormat::Astc12x12UnormSrgb => "astc-12x12-unorm-srgb"
  }
}

///|
/// Parse from string value
pub fn GPUTextureFormat::from_string(s : String) -> GPUTextureFormat? {
  match s {
    "r8unorm" => Some(GPUTextureFormat::R8unorm)
    "r8snorm" => Some(GPUTextureFormat::R8snorm)
    "r8uint" => Some(GPUTextureFormat::R8uint)
    "r8sint" => Some(GPUTextureFormat::R8sint)
    "r16unorm" => Some(GPUTextureFormat::R16unorm)
    "r16snorm" => Some(GPUTextureFormat::R16snorm)
    "r16uint" => Some(GPUTextureFormat::R16uint)
    "r16sint" => Some(GPUTextureFormat::R16sint)
    "r16float" => Some(GPUTextureFormat::R16float)
    "rg8unorm" => Some(GPUTextureFormat::Rg8unorm)
    "rg8snorm" => Some(GPUTextureFormat::Rg8snorm)
    "rg8uint" => Some(GPUTextureFormat::Rg8uint)
    "rg8sint" => Some(GPUTextureFormat::Rg8sint)
    "r32uint" => Some(GPUTextureFormat::R32uint)
    "r32sint" => Some(GPUTextureFormat::R32sint)
    "r32float" => Some(GPUTextureFormat::R32float)
    "rg16unorm" => Some(GPUTextureFormat::Rg16unorm)
    "rg16snorm" => Some(GPUTextureFormat::Rg16snorm)
    "rg16uint" => Some(GPUTextureFormat::Rg16uint)
    "rg16sint" => Some(GPUTextureFormat::Rg16sint)
    "rg16float" => Some(GPUTextureFormat::Rg16float)
    "rgba8unorm" => Some(GPUTextureFormat::Rgba8unorm)
    "rgba8unorm-srgb" => Some(GPUTextureFormat::Rgba8unormSrgb)
    "rgba8snorm" => Some(GPUTextureFormat::Rgba8snorm)
    "rgba8uint" => Some(GPUTextureFormat::Rgba8uint)
    "rgba8sint" => Some(GPUTextureFormat::Rgba8sint)
    "bgra8unorm" => Some(GPUTextureFormat::Bgra8unorm)
    "bgra8unorm-srgb" => Some(GPUTextureFormat::Bgra8unormSrgb)
    "rgb9e5ufloat" => Some(GPUTextureFormat::Rgb9e5ufloat)
    "rgb10a2uint" => Some(GPUTextureFormat::Rgb10a2uint)
    "rgb10a2unorm" => Some(GPUTextureFormat::Rgb10a2unorm)
    "rg11b10ufloat" => Some(GPUTextureFormat::Rg11b10ufloat)
    "rg32uint" => Some(GPUTextureFormat::Rg32uint)
    "rg32sint" => Some(GPUTextureFormat::Rg32sint)
    "rg32float" => Some(GPUTextureFormat::Rg32float)
    "rgba16unorm" => Some(GPUTextureFormat::Rgba16unorm)
    "rgba16snorm" => Some(GPUTextureFormat::Rgba16snorm)
    "rgba16uint" => Some(GPUTextureFormat::Rgba16uint)
    "rgba16sint" => Some(GPUTextureFormat::Rgba16sint)
    "rgba16float" => Some(GPUTextureFormat::Rgba16float)
    "rgba32uint" => Some(GPUTextureFormat::Rgba32uint)
    "rgba32sint" => Some(GPUTextureFormat::Rgba32sint)
    "rgba32float" => Some(GPUTextureFormat::Rgba32float)
    "stencil8" => Some(GPUTextureFormat::Stencil8)
    "depth16unorm" => Some(GPUTextureFormat::Depth16unorm)
    "depth24plus" => Some(GPUTextureFormat::Depth24plus)
    "depth24plus-stencil8" => Some(GPUTextureFormat::Depth24plusStencil8)
    "depth32float" => Some(GPUTextureFormat::Depth32float)
    "depth32float-stencil8" => Some(GPUTextureFormat::Depth32floatStencil8)
    "bc1-rgba-unorm" => Some(GPUTextureFormat::Bc1RgbaUnorm)
    "bc1-rgba-unorm-srgb" => Some(GPUTextureFormat::Bc1RgbaUnormSrgb)
    "bc2-rgba-unorm" => Some(GPUTextureFormat::Bc2RgbaUnorm)
    "bc2-rgba-unorm-srgb" => Some(GPUTextureFormat::Bc2RgbaUnormSrgb)
    "bc3-rgba-unorm" => Some(GPUTextureFormat::Bc3RgbaUnorm)
    "bc3-rgba-unorm-srgb" => Some(GPUTextureFormat::Bc3RgbaUnormSrgb)
    "bc4-r-unorm" => Some(GPUTextureFormat::Bc4RUnorm)
    "bc4-r-snorm" => Some(GPUTextureFormat::Bc4RSnorm)
    "bc5-rg-unorm" => Some(GPUTextureFormat::Bc5RgUnorm)
    "bc5-rg-snorm" => Some(GPUTextureFormat::Bc5RgSnorm)
    "bc6h-rgb-ufloat" => Some(GPUTextureFormat::Bc6hRgbUfloat)
    "bc6h-rgb-float" => Some(GPUTextureFormat::Bc6hRgbFloat)
    "bc7-rgba-unorm" => Some(GPUTextureFormat::Bc7RgbaUnorm)
    "bc7-rgba-unorm-srgb" => Some(GPUTextureFormat::Bc7RgbaUnormSrgb)
    "etc2-rgb8unorm" => Some(GPUTextureFormat::Etc2Rgb8unorm)
    "etc2-rgb8unorm-srgb" => Some(GPUTextureFormat::Etc2Rgb8unormSrgb)
    "etc2-rgb8a1unorm" => Some(GPUTextureFormat::Etc2Rgb8a1unorm)
    "etc2-rgb8a1unorm-srgb" => Some(GPUTextureFormat::Etc2Rgb8a1unormSrgb)
    "etc2-rgba8unorm" => Some(GPUTextureFormat::Etc2Rgba8unorm)
    "etc2-rgba8unorm-srgb" => Some(GPUTextureFormat::Etc2Rgba8unormSrgb)
    "eac-r11unorm" => Some(GPUTextureFormat::EacR11unorm)
    "eac-r11snorm" => Some(GPUTextureFormat::EacR11snorm)
    "eac-rg11unorm" => Some(GPUTextureFormat::EacRg11unorm)
    "eac-rg11snorm" => Some(GPUTextureFormat::EacRg11snorm)
    "astc-4x4-unorm" => Some(GPUTextureFormat::Astc4x4Unorm)
    "astc-4x4-unorm-srgb" => Some(GPUTextureFormat::Astc4x4UnormSrgb)
    "astc-5x4-unorm" => Some(GPUTextureFormat::Astc5x4Unorm)
    "astc-5x4-unorm-srgb" => Some(GPUTextureFormat::Astc5x4UnormSrgb)
    "astc-5x5-unorm" => Some(GPUTextureFormat::Astc5x5Unorm)
    "astc-5x5-unorm-srgb" => Some(GPUTextureFormat::Astc5x5UnormSrgb)
    "astc-6x5-unorm" => Some(GPUTextureFormat::Astc6x5Unorm)
    "astc-6x5-unorm-srgb" => Some(GPUTextureFormat::Astc6x5UnormSrgb)
    "astc-6x6-unorm" => Some(GPUTextureFormat::Astc6x6Unorm)
    "astc-6x6-unorm-srgb" => Some(GPUTextureFormat::Astc6x6UnormSrgb)
    "astc-8x5-unorm" => Some(GPUTextureFormat::Astc8x5Unorm)
    "astc-8x5-unorm-srgb" => Some(GPUTextureFormat::Astc8x5UnormSrgb)
    "astc-8x6-unorm" => Some(GPUTextureFormat::Astc8x6Unorm)
    "astc-8x6-unorm-srgb" => Some(GPUTextureFormat::Astc8x6UnormSrgb)
    "astc-8x8-unorm" => Some(GPUTextureFormat::Astc8x8Unorm)
    "astc-8x8-unorm-srgb" => Some(GPUTextureFormat::Astc8x8UnormSrgb)
    "astc-10x5-unorm" => Some(GPUTextureFormat::Astc10x5Unorm)
    "astc-10x5-unorm-srgb" => Some(GPUTextureFormat::Astc10x5UnormSrgb)
    "astc-10x6-unorm" => Some(GPUTextureFormat::Astc10x6Unorm)
    "astc-10x6-unorm-srgb" => Some(GPUTextureFormat::Astc10x6UnormSrgb)
    "astc-10x8-unorm" => Some(GPUTextureFormat::Astc10x8Unorm)
    "astc-10x8-unorm-srgb" => Some(GPUTextureFormat::Astc10x8UnormSrgb)
    "astc-10x10-unorm" => Some(GPUTextureFormat::Astc10x10Unorm)
    "astc-10x10-unorm-srgb" => Some(GPUTextureFormat::Astc10x10UnormSrgb)
    "astc-12x10-unorm" => Some(GPUTextureFormat::Astc12x10Unorm)
    "astc-12x10-unorm-srgb" => Some(GPUTextureFormat::Astc12x10UnormSrgb)
    "astc-12x12-unorm" => Some(GPUTextureFormat::Astc12x12Unorm)
    "astc-12x12-unorm-srgb" => Some(GPUTextureFormat::Astc12x12UnormSrgb)
    _ => None
  }
}

///|
/// GPUAddressMode enum
pub(all) enum GPUAddressMode {
  ClampToEdge
  Repeat
  MirrorRepeat
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn GPUAddressMode::to_string(self : GPUAddressMode) -> String {
  match self {
    GPUAddressMode::ClampToEdge => "clamp-to-edge"
    GPUAddressMode::Repeat => "repeat"
    GPUAddressMode::MirrorRepeat => "mirror-repeat"
  }
}

///|
/// Parse from string value
pub fn GPUAddressMode::from_string(s : String) -> GPUAddressMode? {
  match s {
    "clamp-to-edge" => Some(GPUAddressMode::ClampToEdge)
    "repeat" => Some(GPUAddressMode::Repeat)
    "mirror-repeat" => Some(GPUAddressMode::MirrorRepeat)
    _ => None
  }
}

///|
/// GPUFilterMode enum
pub(all) enum GPUFilterMode {
  Nearest
  Linear
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn GPUFilterMode::to_string(self : GPUFilterMode) -> String {
  match self {
    GPUFilterMode::Nearest => "nearest"
    GPUFilterMode::Linear => "linear"
  }
}

///|
/// Parse from string value
pub fn GPUFilterMode::from_string(s : String) -> GPUFilterMode? {
  match s {
    "nearest" => Some(GPUFilterMode::Nearest)
    "linear" => Some(GPUFilterMode::Linear)
    _ => None
  }
}

///|
/// GPUMipmapFilterMode enum
pub(all) enum GPUMipmapFilterMode {
  Nearest
  Linear
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn GPUMipmapFilterMode::to_string(self : GPUMipmapFilterMode) -> String {
  match self {
    GPUMipmapFilterMode::Nearest => "nearest"
    GPUMipmapFilterMode::Linear => "linear"
  }
}

///|
/// Parse from string value
pub fn GPUMipmapFilterMode::from_string(s : String) -> GPUMipmapFilterMode? {
  match s {
    "nearest" => Some(GPUMipmapFilterMode::Nearest)
    "linear" => Some(GPUMipmapFilterMode::Linear)
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
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn GPUCompareFunction::to_string(self : GPUCompareFunction) -> String {
  match self {
    GPUCompareFunction::Never => "never"
    GPUCompareFunction::Less => "less"
    GPUCompareFunction::Equal => "equal"
    GPUCompareFunction::LessEqual => "less-equal"
    GPUCompareFunction::Greater => "greater"
    GPUCompareFunction::NotEqual => "not-equal"
    GPUCompareFunction::GreaterEqual => "greater-equal"
    GPUCompareFunction::Always => "always"
  }
}

///|
/// Parse from string value
pub fn GPUCompareFunction::from_string(s : String) -> GPUCompareFunction? {
  match s {
    "never" => Some(GPUCompareFunction::Never)
    "less" => Some(GPUCompareFunction::Less)
    "equal" => Some(GPUCompareFunction::Equal)
    "less-equal" => Some(GPUCompareFunction::LessEqual)
    "greater" => Some(GPUCompareFunction::Greater)
    "not-equal" => Some(GPUCompareFunction::NotEqual)
    "greater-equal" => Some(GPUCompareFunction::GreaterEqual)
    "always" => Some(GPUCompareFunction::Always)
    _ => None
  }
}

///|
/// GPUBufferBindingType enum
pub(all) enum GPUBufferBindingType {
  Uniform
  Storage
  ReadOnlyStorage
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn GPUBufferBindingType::to_string(self : GPUBufferBindingType) -> String {
  match self {
    GPUBufferBindingType::Uniform => "uniform"
    GPUBufferBindingType::Storage => "storage"
    GPUBufferBindingType::ReadOnlyStorage => "read-only-storage"
  }
}

///|
/// Parse from string value
pub fn GPUBufferBindingType::from_string(s : String) -> GPUBufferBindingType? {
  match s {
    "uniform" => Some(GPUBufferBindingType::Uniform)
    "storage" => Some(GPUBufferBindingType::Storage)
    "read-only-storage" => Some(GPUBufferBindingType::ReadOnlyStorage)
    _ => None
  }
}

///|
/// GPUSamplerBindingType enum
pub(all) enum GPUSamplerBindingType {
  Filtering
  NonFiltering
  Comparison
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn GPUSamplerBindingType::to_string(self : GPUSamplerBindingType) -> String {
  match self {
    GPUSamplerBindingType::Filtering => "filtering"
    GPUSamplerBindingType::NonFiltering => "non-filtering"
    GPUSamplerBindingType::Comparison => "comparison"
  }
}

///|
/// Parse from string value
pub fn GPUSamplerBindingType::from_string(s : String) -> GPUSamplerBindingType? {
  match s {
    "filtering" => Some(GPUSamplerBindingType::Filtering)
    "non-filtering" => Some(GPUSamplerBindingType::NonFiltering)
    "comparison" => Some(GPUSamplerBindingType::Comparison)
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
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn GPUTextureSampleType::to_string(self : GPUTextureSampleType) -> String {
  match self {
    GPUTextureSampleType::Float => "float"
    GPUTextureSampleType::UnfilterableFloat => "unfilterable-float"
    GPUTextureSampleType::Depth => "depth"
    GPUTextureSampleType::Sint => "sint"
    GPUTextureSampleType::Uint => "uint"
  }
}

///|
/// Parse from string value
pub fn GPUTextureSampleType::from_string(s : String) -> GPUTextureSampleType? {
  match s {
    "float" => Some(GPUTextureSampleType::Float)
    "unfilterable-float" => Some(GPUTextureSampleType::UnfilterableFloat)
    "depth" => Some(GPUTextureSampleType::Depth)
    "sint" => Some(GPUTextureSampleType::Sint)
    "uint" => Some(GPUTextureSampleType::Uint)
    _ => None
  }
}

///|
/// GPUStorageTextureAccess enum
pub(all) enum GPUStorageTextureAccess {
  WriteOnly
  ReadOnly
  ReadWrite
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn GPUStorageTextureAccess::to_string(
  self : GPUStorageTextureAccess,
) -> String {
  match self {
    GPUStorageTextureAccess::WriteOnly => "write-only"
    GPUStorageTextureAccess::ReadOnly => "read-only"
    GPUStorageTextureAccess::ReadWrite => "read-write"
  }
}

///|
/// Parse from string value
pub fn GPUStorageTextureAccess::from_string(
  s : String,
) -> GPUStorageTextureAccess? {
  match s {
    "write-only" => Some(GPUStorageTextureAccess::WriteOnly)
    "read-only" => Some(GPUStorageTextureAccess::ReadOnly)
    "read-write" => Some(GPUStorageTextureAccess::ReadWrite)
    _ => None
  }
}

///|
/// GPUCompilationMessageType enum
pub(all) enum GPUCompilationMessageType {
  Error
  Warning
  Info
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn GPUCompilationMessageType::to_string(
  self : GPUCompilationMessageType,
) -> String {
  match self {
    GPUCompilationMessageType::Error => "error"
    GPUCompilationMessageType::Warning => "warning"
    GPUCompilationMessageType::Info => "info"
  }
}

///|
/// Parse from string value
pub fn GPUCompilationMessageType::from_string(
  s : String,
) -> GPUCompilationMessageType? {
  match s {
    "error" => Some(GPUCompilationMessageType::Error)
    "warning" => Some(GPUCompilationMessageType::Warning)
    "info" => Some(GPUCompilationMessageType::Info)
    _ => None
  }
}

///|
/// GPUPipelineErrorReason enum
pub(all) enum GPUPipelineErrorReason {
  Validation
  Internal
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn GPUPipelineErrorReason::to_string(
  self : GPUPipelineErrorReason,
) -> String {
  match self {
    GPUPipelineErrorReason::Validation => "validation"
    GPUPipelineErrorReason::Internal => "internal"
  }
}

///|
/// Parse from string value
pub fn GPUPipelineErrorReason::from_string(
  s : String,
) -> GPUPipelineErrorReason? {
  match s {
    "validation" => Some(GPUPipelineErrorReason::Validation)
    "internal" => Some(GPUPipelineErrorReason::Internal)
    _ => None
  }
}

///|
/// GPUAutoLayoutMode enum
pub(all) enum GPUAutoLayoutMode {
  Auto
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn GPUAutoLayoutMode::to_string(self : GPUAutoLayoutMode) -> String {
  match self {
    GPUAutoLayoutMode::Auto => "auto"
  }
}

///|
/// Parse from string value
pub fn GPUAutoLayoutMode::from_string(s : String) -> GPUAutoLayoutMode? {
  match s {
    "auto" => Some(GPUAutoLayoutMode::Auto)
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
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn GPUPrimitiveTopology::to_string(self : GPUPrimitiveTopology) -> String {
  match self {
    GPUPrimitiveTopology::PointList => "point-list"
    GPUPrimitiveTopology::LineList => "line-list"
    GPUPrimitiveTopology::LineStrip => "line-strip"
    GPUPrimitiveTopology::TriangleList => "triangle-list"
    GPUPrimitiveTopology::TriangleStrip => "triangle-strip"
  }
}

///|
/// Parse from string value
pub fn GPUPrimitiveTopology::from_string(s : String) -> GPUPrimitiveTopology? {
  match s {
    "point-list" => Some(GPUPrimitiveTopology::PointList)
    "line-list" => Some(GPUPrimitiveTopology::LineList)
    "line-strip" => Some(GPUPrimitiveTopology::LineStrip)
    "triangle-list" => Some(GPUPrimitiveTopology::TriangleList)
    "triangle-strip" => Some(GPUPrimitiveTopology::TriangleStrip)
    _ => None
  }
}

///|
/// GPUFrontFace enum
pub(all) enum GPUFrontFace {
  Ccw
  Cw
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn GPUFrontFace::to_string(self : GPUFrontFace) -> String {
  match self {
    GPUFrontFace::Ccw => "ccw"
    GPUFrontFace::Cw => "cw"
  }
}

///|
/// Parse from string value
pub fn GPUFrontFace::from_string(s : String) -> GPUFrontFace? {
  match s {
    "ccw" => Some(GPUFrontFace::Ccw)
    "cw" => Some(GPUFrontFace::Cw)
    _ => None
  }
}

///|
/// GPUCullMode enum
pub(all) enum GPUCullMode {
  None
  Front
  Back
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn GPUCullMode::to_string(self : GPUCullMode) -> String {
  match self {
    GPUCullMode::None => "none"
    GPUCullMode::Front => "front"
    GPUCullMode::Back => "back"
  }
}

///|
/// Parse from string value
pub fn GPUCullMode::from_string(s : String) -> GPUCullMode? {
  match s {
    "none" => Some(GPUCullMode::None)
    "front" => Some(GPUCullMode::Front)
    "back" => Some(GPUCullMode::Back)
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
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn GPUBlendFactor::to_string(self : GPUBlendFactor) -> String {
  match self {
    GPUBlendFactor::Zero => "zero"
    GPUBlendFactor::One => "one"
    GPUBlendFactor::Src => "src"
    GPUBlendFactor::OneMinusSrc => "one-minus-src"
    GPUBlendFactor::SrcAlpha => "src-alpha"
    GPUBlendFactor::OneMinusSrcAlpha => "one-minus-src-alpha"
    GPUBlendFactor::Dst => "dst"
    GPUBlendFactor::OneMinusDst => "one-minus-dst"
    GPUBlendFactor::DstAlpha => "dst-alpha"
    GPUBlendFactor::OneMinusDstAlpha => "one-minus-dst-alpha"
    GPUBlendFactor::SrcAlphaSaturated => "src-alpha-saturated"
    GPUBlendFactor::Constant => "constant"
    GPUBlendFactor::OneMinusConstant => "one-minus-constant"
    GPUBlendFactor::Src1 => "src1"
    GPUBlendFactor::OneMinusSrc1 => "one-minus-src1"
    GPUBlendFactor::Src1Alpha => "src1-alpha"
    GPUBlendFactor::OneMinusSrc1Alpha => "one-minus-src1-alpha"
  }
}

///|
/// Parse from string value
pub fn GPUBlendFactor::from_string(s : String) -> GPUBlendFactor? {
  match s {
    "zero" => Some(GPUBlendFactor::Zero)
    "one" => Some(GPUBlendFactor::One)
    "src" => Some(GPUBlendFactor::Src)
    "one-minus-src" => Some(GPUBlendFactor::OneMinusSrc)
    "src-alpha" => Some(GPUBlendFactor::SrcAlpha)
    "one-minus-src-alpha" => Some(GPUBlendFactor::OneMinusSrcAlpha)
    "dst" => Some(GPUBlendFactor::Dst)
    "one-minus-dst" => Some(GPUBlendFactor::OneMinusDst)
    "dst-alpha" => Some(GPUBlendFactor::DstAlpha)
    "one-minus-dst-alpha" => Some(GPUBlendFactor::OneMinusDstAlpha)
    "src-alpha-saturated" => Some(GPUBlendFactor::SrcAlphaSaturated)
    "constant" => Some(GPUBlendFactor::Constant)
    "one-minus-constant" => Some(GPUBlendFactor::OneMinusConstant)
    "src1" => Some(GPUBlendFactor::Src1)
    "one-minus-src1" => Some(GPUBlendFactor::OneMinusSrc1)
    "src1-alpha" => Some(GPUBlendFactor::Src1Alpha)
    "one-minus-src1-alpha" => Some(GPUBlendFactor::OneMinusSrc1Alpha)
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
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn GPUBlendOperation::to_string(self : GPUBlendOperation) -> String {
  match self {
    GPUBlendOperation::Add => "add"
    GPUBlendOperation::Subtract => "subtract"
    GPUBlendOperation::ReverseSubtract => "reverse-subtract"
    GPUBlendOperation::Min => "min"
    GPUBlendOperation::Max => "max"
  }
}

///|
/// Parse from string value
pub fn GPUBlendOperation::from_string(s : String) -> GPUBlendOperation? {
  match s {
    "add" => Some(GPUBlendOperation::Add)
    "subtract" => Some(GPUBlendOperation::Subtract)
    "reverse-subtract" => Some(GPUBlendOperation::ReverseSubtract)
    "min" => Some(GPUBlendOperation::Min)
    "max" => Some(GPUBlendOperation::Max)
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
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn GPUStencilOperation::to_string(self : GPUStencilOperation) -> String {
  match self {
    GPUStencilOperation::Keep => "keep"
    GPUStencilOperation::Zero => "zero"
    GPUStencilOperation::Replace => "replace"
    GPUStencilOperation::Invert => "invert"
    GPUStencilOperation::IncrementClamp => "increment-clamp"
    GPUStencilOperation::DecrementClamp => "decrement-clamp"
    GPUStencilOperation::IncrementWrap => "increment-wrap"
    GPUStencilOperation::DecrementWrap => "decrement-wrap"
  }
}

///|
/// Parse from string value
pub fn GPUStencilOperation::from_string(s : String) -> GPUStencilOperation? {
  match s {
    "keep" => Some(GPUStencilOperation::Keep)
    "zero" => Some(GPUStencilOperation::Zero)
    "replace" => Some(GPUStencilOperation::Replace)
    "invert" => Some(GPUStencilOperation::Invert)
    "increment-clamp" => Some(GPUStencilOperation::IncrementClamp)
    "decrement-clamp" => Some(GPUStencilOperation::DecrementClamp)
    "increment-wrap" => Some(GPUStencilOperation::IncrementWrap)
    "decrement-wrap" => Some(GPUStencilOperation::DecrementWrap)
    _ => None
  }
}

///|
/// GPUIndexFormat enum
pub(all) enum GPUIndexFormat {
  Uint16
  Uint32
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn GPUIndexFormat::to_string(self : GPUIndexFormat) -> String {
  match self {
    GPUIndexFormat::Uint16 => "uint16"
    GPUIndexFormat::Uint32 => "uint32"
  }
}

///|
/// Parse from string value
pub fn GPUIndexFormat::from_string(s : String) -> GPUIndexFormat? {
  match s {
    "uint16" => Some(GPUIndexFormat::Uint16)
    "uint32" => Some(GPUIndexFormat::Uint32)
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
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn GPUVertexFormat::to_string(self : GPUVertexFormat) -> String {
  match self {
    GPUVertexFormat::Uint8 => "uint8"
    GPUVertexFormat::Uint8x2 => "uint8x2"
    GPUVertexFormat::Uint8x4 => "uint8x4"
    GPUVertexFormat::Sint8 => "sint8"
    GPUVertexFormat::Sint8x2 => "sint8x2"
    GPUVertexFormat::Sint8x4 => "sint8x4"
    GPUVertexFormat::Unorm8 => "unorm8"
    GPUVertexFormat::Unorm8x2 => "unorm8x2"
    GPUVertexFormat::Unorm8x4 => "unorm8x4"
    GPUVertexFormat::Snorm8 => "snorm8"
    GPUVertexFormat::Snorm8x2 => "snorm8x2"
    GPUVertexFormat::Snorm8x4 => "snorm8x4"
    GPUVertexFormat::Uint16 => "uint16"
    GPUVertexFormat::Uint16x2 => "uint16x2"
    GPUVertexFormat::Uint16x4 => "uint16x4"
    GPUVertexFormat::Sint16 => "sint16"
    GPUVertexFormat::Sint16x2 => "sint16x2"
    GPUVertexFormat::Sint16x4 => "sint16x4"
    GPUVertexFormat::Unorm16 => "unorm16"
    GPUVertexFormat::Unorm16x2 => "unorm16x2"
    GPUVertexFormat::Unorm16x4 => "unorm16x4"
    GPUVertexFormat::Snorm16 => "snorm16"
    GPUVertexFormat::Snorm16x2 => "snorm16x2"
    GPUVertexFormat::Snorm16x4 => "snorm16x4"
    GPUVertexFormat::Float16 => "float16"
    GPUVertexFormat::Float16x2 => "float16x2"
    GPUVertexFormat::Float16x4 => "float16x4"
    GPUVertexFormat::Float32 => "float32"
    GPUVertexFormat::Float32x2 => "float32x2"
    GPUVertexFormat::Float32x3 => "float32x3"
    GPUVertexFormat::Float32x4 => "float32x4"
    GPUVertexFormat::Uint32 => "uint32"
    GPUVertexFormat::Uint32x2 => "uint32x2"
    GPUVertexFormat::Uint32x3 => "uint32x3"
    GPUVertexFormat::Uint32x4 => "uint32x4"
    GPUVertexFormat::Sint32 => "sint32"
    GPUVertexFormat::Sint32x2 => "sint32x2"
    GPUVertexFormat::Sint32x3 => "sint32x3"
    GPUVertexFormat::Sint32x4 => "sint32x4"
    GPUVertexFormat::Unorm1010102 => "unorm10-10-10-2"
    GPUVertexFormat::Unorm8x4Bgra => "unorm8x4-bgra"
  }
}

///|
/// Parse from string value
pub fn GPUVertexFormat::from_string(s : String) -> GPUVertexFormat? {
  match s {
    "uint8" => Some(GPUVertexFormat::Uint8)
    "uint8x2" => Some(GPUVertexFormat::Uint8x2)
    "uint8x4" => Some(GPUVertexFormat::Uint8x4)
    "sint8" => Some(GPUVertexFormat::Sint8)
    "sint8x2" => Some(GPUVertexFormat::Sint8x2)
    "sint8x4" => Some(GPUVertexFormat::Sint8x4)
    "unorm8" => Some(GPUVertexFormat::Unorm8)
    "unorm8x2" => Some(GPUVertexFormat::Unorm8x2)
    "unorm8x4" => Some(GPUVertexFormat::Unorm8x4)
    "snorm8" => Some(GPUVertexFormat::Snorm8)
    "snorm8x2" => Some(GPUVertexFormat::Snorm8x2)
    "snorm8x4" => Some(GPUVertexFormat::Snorm8x4)
    "uint16" => Some(GPUVertexFormat::Uint16)
    "uint16x2" => Some(GPUVertexFormat::Uint16x2)
    "uint16x4" => Some(GPUVertexFormat::Uint16x4)
    "sint16" => Some(GPUVertexFormat::Sint16)
    "sint16x2" => Some(GPUVertexFormat::Sint16x2)
    "sint16x4" => Some(GPUVertexFormat::Sint16x4)
    "unorm16" => Some(GPUVertexFormat::Unorm16)
    "unorm16x2" => Some(GPUVertexFormat::Unorm16x2)
    "unorm16x4" => Some(GPUVertexFormat::Unorm16x4)
    "snorm16" => Some(GPUVertexFormat::Snorm16)
    "snorm16x2" => Some(GPUVertexFormat::Snorm16x2)
    "snorm16x4" => Some(GPUVertexFormat::Snorm16x4)
    "float16" => Some(GPUVertexFormat::Float16)
    "float16x2" => Some(GPUVertexFormat::Float16x2)
    "float16x4" => Some(GPUVertexFormat::Float16x4)
    "float32" => Some(GPUVertexFormat::Float32)
    "float32x2" => Some(GPUVertexFormat::Float32x2)
    "float32x3" => Some(GPUVertexFormat::Float32x3)
    "float32x4" => Some(GPUVertexFormat::Float32x4)
    "uint32" => Some(GPUVertexFormat::Uint32)
    "uint32x2" => Some(GPUVertexFormat::Uint32x2)
    "uint32x3" => Some(GPUVertexFormat::Uint32x3)
    "uint32x4" => Some(GPUVertexFormat::Uint32x4)
    "sint32" => Some(GPUVertexFormat::Sint32)
    "sint32x2" => Some(GPUVertexFormat::Sint32x2)
    "sint32x3" => Some(GPUVertexFormat::Sint32x3)
    "sint32x4" => Some(GPUVertexFormat::Sint32x4)
    "unorm10-10-10-2" => Some(GPUVertexFormat::Unorm1010102)
    "unorm8x4-bgra" => Some(GPUVertexFormat::Unorm8x4Bgra)
    _ => None
  }
}

///|
/// GPUVertexStepMode enum
pub(all) enum GPUVertexStepMode {
  Vertex
  Instance
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn GPUVertexStepMode::to_string(self : GPUVertexStepMode) -> String {
  match self {
    GPUVertexStepMode::Vertex => "vertex"
    GPUVertexStepMode::Instance => "instance"
  }
}

///|
/// Parse from string value
pub fn GPUVertexStepMode::from_string(s : String) -> GPUVertexStepMode? {
  match s {
    "vertex" => Some(GPUVertexStepMode::Vertex)
    "instance" => Some(GPUVertexStepMode::Instance)
    _ => None
  }
}

///|
/// GPULoadOp enum
pub(all) enum GPULoadOp {
  Load
  Clear
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn GPULoadOp::to_string(self : GPULoadOp) -> String {
  match self {
    GPULoadOp::Load => "load"
    GPULoadOp::Clear => "clear"
  }
}

///|
/// Parse from string value
pub fn GPULoadOp::from_string(s : String) -> GPULoadOp? {
  match s {
    "load" => Some(GPULoadOp::Load)
    "clear" => Some(GPULoadOp::Clear)
    _ => None
  }
}

///|
/// GPUStoreOp enum
pub(all) enum GPUStoreOp {
  Store
  Discard
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn GPUStoreOp::to_string(self : GPUStoreOp) -> String {
  match self {
    GPUStoreOp::Store => "store"
    GPUStoreOp::Discard => "discard"
  }
}

///|
/// Parse from string value
pub fn GPUStoreOp::from_string(s : String) -> GPUStoreOp? {
  match s {
    "store" => Some(GPUStoreOp::Store)
    "discard" => Some(GPUStoreOp::Discard)
    _ => None
  }
}

///|
/// GPUQueryType enum
pub(all) enum GPUQueryType {
  Occlusion
  Timestamp
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn GPUQueryType::to_string(self : GPUQueryType) -> String {
  match self {
    GPUQueryType::Occlusion => "occlusion"
    GPUQueryType::Timestamp => "timestamp"
  }
}

///|
/// Parse from string value
pub fn GPUQueryType::from_string(s : String) -> GPUQueryType? {
  match s {
    "occlusion" => Some(GPUQueryType::Occlusion)
    "timestamp" => Some(GPUQueryType::Timestamp)
    _ => None
  }
}

///|
/// GPUCanvasAlphaMode enum
pub(all) enum GPUCanvasAlphaMode {
  Opaque
  Premultiplied
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn GPUCanvasAlphaMode::to_string(self : GPUCanvasAlphaMode) -> String {
  match self {
    GPUCanvasAlphaMode::Opaque => "opaque"
    GPUCanvasAlphaMode::Premultiplied => "premultiplied"
  }
}

///|
/// Parse from string value
pub fn GPUCanvasAlphaMode::from_string(s : String) -> GPUCanvasAlphaMode? {
  match s {
    "opaque" => Some(GPUCanvasAlphaMode::Opaque)
    "premultiplied" => Some(GPUCanvasAlphaMode::Premultiplied)
    _ => None
  }
}

///|
/// GPUCanvasToneMappingMode enum
pub(all) enum GPUCanvasToneMappingMode {
  Standard
  Extended
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn GPUCanvasToneMappingMode::to_string(
  self : GPUCanvasToneMappingMode,
) -> String {
  match self {
    GPUCanvasToneMappingMode::Standard => "standard"
    GPUCanvasToneMappingMode::Extended => "extended"
  }
}

///|
/// Parse from string value
pub fn GPUCanvasToneMappingMode::from_string(
  s : String,
) -> GPUCanvasToneMappingMode? {
  match s {
    "standard" => Some(GPUCanvasToneMappingMode::Standard)
    "extended" => Some(GPUCanvasToneMappingMode::Extended)
    _ => None
  }
}

///|
/// GPUDeviceLostReason enum
pub(all) enum GPUDeviceLostReason {
  Unknown
  Destroyed
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn GPUDeviceLostReason::to_string(self : GPUDeviceLostReason) -> String {
  match self {
    GPUDeviceLostReason::Unknown => "unknown"
    GPUDeviceLostReason::Destroyed => "destroyed"
  }
}

///|
/// Parse from string value
pub fn GPUDeviceLostReason::from_string(s : String) -> GPUDeviceLostReason? {
  match s {
    "unknown" => Some(GPUDeviceLostReason::Unknown)
    "destroyed" => Some(GPUDeviceLostReason::Destroyed)
    _ => None
  }
}

///|
/// GPUErrorFilter enum
pub(all) enum GPUErrorFilter {
  Validation
  OutOfMemory
  Internal
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn GPUErrorFilter::to_string(self : GPUErrorFilter) -> String {
  match self {
    GPUErrorFilter::Validation => "validation"
    GPUErrorFilter::OutOfMemory => "out-of-memory"
    GPUErrorFilter::Internal => "internal"
  }
}

///|
/// Parse from string value
pub fn GPUErrorFilter::from_string(s : String) -> GPUErrorFilter? {
  match s {
    "validation" => Some(GPUErrorFilter::Validation)
    "out-of-memory" => Some(GPUErrorFilter::OutOfMemory)
    "internal" => Some(GPUErrorFilter::Internal)
    _ => None
  }
}

///|
/// GPUObjectDescriptorBase dictionary
pub(all) struct GPUObjectDescriptorBase {
  label : String?
}

///|
/// Create a new GPUObjectDescriptorBase with default values
pub fn GPUObjectDescriptorBase::default() -> GPUObjectDescriptorBase {
  GPUObjectDescriptorBase::{ label: None, }
}

///|
extern "js" fn GPUObjectDescriptorBase::to_js_ffi(
  self : GPUObjectDescriptorBase,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label
  #| })

///|
/// Convert to JsValue
pub fn GPUObjectDescriptorBase::to_js(
  self : GPUObjectDescriptorBase,
) -> JsValue {
  GPUObjectDescriptorBase::to_js_ffi(self)
}

///|
extern "js" fn GPUObjectDescriptorBase::from_js_ffi(
  value : JsValue,
) -> GPUObjectDescriptorBase =
  #| (v) => ({
  #|   label: v.label
  #| })

///|
/// Convert from JsValue
pub fn GPUObjectDescriptorBase::from_js(
  value : JsValue,
) -> GPUObjectDescriptorBase {
  GPUObjectDescriptorBase::from_js_ffi(value)
}

///|
/// GPURequestAdapterOptions dictionary
pub(all) struct GPURequestAdapterOptions {
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
extern "js" fn GPURequestAdapterOptions::to_js_ffi(
  self : GPURequestAdapterOptions,
) -> JsValue =
  #| (self) => ({
  #|   featureLevel: self.featureLevel,
  #|   powerPreference: ((() => { const v = self.powerPreference; if (v === undefined) return undefined; return ['low-power', 'high-performance'][v]; })()),
  #|   forceFallbackAdapter: (self.forceFallbackAdapter === -1 ? undefined : self.forceFallbackAdapter),
  #|   xrCompatible: (self.xrCompatible === -1 ? undefined : self.xrCompatible)
  #| })

///|
/// Convert to JsValue
pub fn GPURequestAdapterOptions::to_js(
  self : GPURequestAdapterOptions,
) -> JsValue {
  GPURequestAdapterOptions::to_js_ffi(self)
}

///|
extern "js" fn GPURequestAdapterOptions::from_js_ffi(
  value : JsValue,
) -> GPURequestAdapterOptions =
  #| (v) => ({
  #|   featureLevel: v.featureLevel,
  #|   powerPreference: (v.powerPreference === undefined ? undefined : ['low-power', 'high-performance'].indexOf(v.powerPreference)),
  #|   forceFallbackAdapter: (v.forceFallbackAdapter === undefined ? -1 : v.forceFallbackAdapter),
  #|   xrCompatible: (v.xrCompatible === undefined ? -1 : v.xrCompatible)
  #| })

///|
/// Convert from JsValue
pub fn GPURequestAdapterOptions::from_js(
  value : JsValue,
) -> GPURequestAdapterOptions {
  GPURequestAdapterOptions::from_js_ffi(value)
}

///|
/// GPUDeviceDescriptor dictionary
pub(all) struct GPUDeviceDescriptor {
  label : String?
  requiredFeatures : FixedArray[GPUFeatureName]?
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
extern "js" fn GPUDeviceDescriptor::to_js_ffi(
  self : GPUDeviceDescriptor,
  convert_defaultQueue : (GPUQueueDescriptor?) -> JsValue,
) -> JsValue =
  #| (self, convert_defaultQueue) => ({
  #|   label: self.label,
  #|   requiredFeatures: self.requiredFeatures,
  #|   requiredLimits: ((() => { const v = self.requiredLimits; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   defaultQueue: convert_defaultQueue(self.defaultQueue)
  #| })

///|
/// Convert to JsValue
pub fn GPUDeviceDescriptor::to_js(self : GPUDeviceDescriptor) -> JsValue {
  GPUDeviceDescriptor::to_js_ffi(self, fn(value) {
    match value {
      Some(value) => value.to_js()
      None => dictionary_undefined()
    }
  })
}

///|
extern "js" fn GPUDeviceDescriptor::from_js_ffi(
  value : JsValue,
  convert_defaultQueue : (JsValue) -> GPUQueueDescriptor?,
) -> GPUDeviceDescriptor =
  #| (v, convert_defaultQueue) => ({
  #|   label: v.label,
  #|   requiredFeatures: v.requiredFeatures,
  #|   requiredLimits: (v.requiredLimits === undefined ? { $tag: 0 } : { $tag: 1, _0: v.requiredLimits }),
  #|   defaultQueue: convert_defaultQueue(v.defaultQueue)
  #| })

///|
/// Convert from JsValue
pub fn GPUDeviceDescriptor::from_js(value : JsValue) -> GPUDeviceDescriptor {
  GPUDeviceDescriptor::from_js_ffi(value, fn(value) {
    if value.is_undefined() {
      None
    } else {
      Some(GPUQueueDescriptor::from_js(value))
    }
  })
}

///|
/// GPUBufferDescriptor dictionary
pub(all) struct GPUBufferDescriptor {
  label : String?
  size : GPUSize64
  usage : GPUBufferUsageFlags
  mappedAtCreation : Bool?
}

///|
/// Create a new GPUBufferDescriptor
pub fn GPUBufferDescriptor::new(
  size~ : GPUSize64,
  usage~ : GPUBufferUsageFlags,
) -> GPUBufferDescriptor {
  GPUBufferDescriptor::{ label: None, size, usage, mappedAtCreation: None, }
}

///|
extern "js" fn GPUBufferDescriptor::to_js_ffi(
  self : GPUBufferDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   size: ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(self.size),
  #|   usage: self.usage,
  #|   mappedAtCreation: (self.mappedAtCreation === -1 ? undefined : self.mappedAtCreation)
  #| })

///|
/// Convert to JsValue
pub fn GPUBufferDescriptor::to_js(self : GPUBufferDescriptor) -> JsValue {
  GPUBufferDescriptor::to_js_ffi(self)
}

///|
extern "js" fn GPUBufferDescriptor::from_js_ffi(
  value : JsValue,
) -> GPUBufferDescriptor =
  #| (v) => ({
  #|   label: v.label,
  #|   size: ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.size),
  #|   usage: v.usage,
  #|   mappedAtCreation: (v.mappedAtCreation === undefined ? -1 : v.mappedAtCreation)
  #| })

///|
/// Convert from JsValue
pub fn GPUBufferDescriptor::from_js(value : JsValue) -> GPUBufferDescriptor {
  GPUBufferDescriptor::from_js_ffi(value)
}

///|
/// Catch dictionary conversion errors, including unsafe integer ranges.
pub fn GPUBufferDescriptor::to_js_checked(
  self : GPUBufferDescriptor,
) -> Result[JsValue, JsError] {
  try_dictionary_conversion(() => self.to_js())
}

///|
extern "js" fn try_dictionary_GPUBufferDescriptor(
  convert : () -> GPUBufferDescriptor,
) -> Result[GPUBufferDescriptor, JsError] =
  #| convert => { try { return { $tag: 1, _0: convert() }; } catch (error) { return { $tag: 0, _0: error }; } }

///|
/// Catch invalid host fields, including unsafe integer ranges.
pub fn GPUBufferDescriptor::from_js_checked(
  value : JsValue,
) -> Result[GPUBufferDescriptor, JsError] {
  try_dictionary_GPUBufferDescriptor(() => GPUBufferDescriptor::from_js(value))
}

///|
/// GPUTextureDescriptor dictionary
pub(all) struct GPUTextureDescriptor {
  label : String?
  size : GPUExtent3D
  mipLevelCount : GPUIntegerCoordinate?
  sampleCount : GPUSize32?
  dimension : GPUTextureDimension?
  format : GPUTextureFormat
  usage : GPUTextureUsageFlags
  viewFormats : FixedArray[GPUTextureFormat]?
  textureBindingViewDimension : GPUTextureViewDimension?
}

///|
/// Create a new GPUTextureDescriptor
pub fn GPUTextureDescriptor::new(
  size~ : GPUExtent3D,
  format~ : GPUTextureFormat,
  usage~ : GPUTextureUsageFlags,
) -> GPUTextureDescriptor {
  GPUTextureDescriptor::{
    label: None,
    size,
    mipLevelCount: None,
    sampleCount: None,
    dimension: None,
    format,
    usage,
    viewFormats: None,
    textureBindingViewDimension: None,
  }
}

///|
extern "js" fn GPUTextureDescriptor::to_js_ffi(
  self : GPUTextureDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   size: self.size,
  #|   mipLevelCount: self.mipLevelCount,
  #|   sampleCount: self.sampleCount,
  #|   dimension: ((() => { const v = self.dimension; if (v === undefined) return undefined; return ['1d', '2d', '3d'][v]; })()),
  #|   format: ['r8unorm', 'r8snorm', 'r8uint', 'r8sint', 'r16unorm', 'r16snorm', 'r16uint', 'r16sint', 'r16float', 'rg8unorm', 'rg8snorm', 'rg8uint', 'rg8sint', 'r32uint', 'r32sint', 'r32float', 'rg16unorm', 'rg16snorm', 'rg16uint', 'rg16sint', 'rg16float', 'rgba8unorm', 'rgba8unorm-srgb', 'rgba8snorm', 'rgba8uint', 'rgba8sint', 'bgra8unorm', 'bgra8unorm-srgb', 'rgb9e5ufloat', 'rgb10a2uint', 'rgb10a2unorm', 'rg11b10ufloat', 'rg32uint', 'rg32sint', 'rg32float', 'rgba16unorm', 'rgba16snorm', 'rgba16uint', 'rgba16sint', 'rgba16float', 'rgba32uint', 'rgba32sint', 'rgba32float', 'stencil8', 'depth16unorm', 'depth24plus', 'depth24plus-stencil8', 'depth32float', 'depth32float-stencil8', 'bc1-rgba-unorm', 'bc1-rgba-unorm-srgb', 'bc2-rgba-unorm', 'bc2-rgba-unorm-srgb', 'bc3-rgba-unorm', 'bc3-rgba-unorm-srgb', 'bc4-r-unorm', 'bc4-r-snorm', 'bc5-rg-unorm', 'bc5-rg-snorm', 'bc6h-rgb-ufloat', 'bc6h-rgb-float', 'bc7-rgba-unorm', 'bc7-rgba-unorm-srgb', 'etc2-rgb8unorm', 'etc2-rgb8unorm-srgb', 'etc2-rgb8a1unorm', 'etc2-rgb8a1unorm-srgb', 'etc2-rgba8unorm', 'etc2-rgba8unorm-srgb', 'eac-r11unorm', 'eac-r11snorm', 'eac-rg11unorm', 'eac-rg11snorm', 'astc-4x4-unorm', 'astc-4x4-unorm-srgb', 'astc-5x4-unorm', 'astc-5x4-unorm-srgb', 'astc-5x5-unorm', 'astc-5x5-unorm-srgb', 'astc-6x5-unorm', 'astc-6x5-unorm-srgb', 'astc-6x6-unorm', 'astc-6x6-unorm-srgb', 'astc-8x5-unorm', 'astc-8x5-unorm-srgb', 'astc-8x6-unorm', 'astc-8x6-unorm-srgb', 'astc-8x8-unorm', 'astc-8x8-unorm-srgb', 'astc-10x5-unorm', 'astc-10x5-unorm-srgb', 'astc-10x6-unorm', 'astc-10x6-unorm-srgb', 'astc-10x8-unorm', 'astc-10x8-unorm-srgb', 'astc-10x10-unorm', 'astc-10x10-unorm-srgb', 'astc-12x10-unorm', 'astc-12x10-unorm-srgb', 'astc-12x12-unorm', 'astc-12x12-unorm-srgb'][self.format],
  #|   usage: self.usage,
  #|   viewFormats: self.viewFormats,
  #|   textureBindingViewDimension: ((() => { const v = self.textureBindingViewDimension; if (v === undefined) return undefined; return ['1d', '2d', '2d-array', 'cube', 'cube-array', '3d'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn GPUTextureDescriptor::to_js(self : GPUTextureDescriptor) -> JsValue {
  GPUTextureDescriptor::to_js_ffi(self)
}

///|
extern "js" fn GPUTextureDescriptor::from_js_ffi(
  value : JsValue,
) -> GPUTextureDescriptor =
  #| (v) => ({
  #|   label: v.label,
  #|   size: v.size,
  #|   mipLevelCount: v.mipLevelCount,
  #|   sampleCount: v.sampleCount,
  #|   dimension: (v.dimension === undefined ? undefined : ['1d', '2d', '3d'].indexOf(v.dimension)),
  #|   format: ['r8unorm', 'r8snorm', 'r8uint', 'r8sint', 'r16unorm', 'r16snorm', 'r16uint', 'r16sint', 'r16float', 'rg8unorm', 'rg8snorm', 'rg8uint', 'rg8sint', 'r32uint', 'r32sint', 'r32float', 'rg16unorm', 'rg16snorm', 'rg16uint', 'rg16sint', 'rg16float', 'rgba8unorm', 'rgba8unorm-srgb', 'rgba8snorm', 'rgba8uint', 'rgba8sint', 'bgra8unorm', 'bgra8unorm-srgb', 'rgb9e5ufloat', 'rgb10a2uint', 'rgb10a2unorm', 'rg11b10ufloat', 'rg32uint', 'rg32sint', 'rg32float', 'rgba16unorm', 'rgba16snorm', 'rgba16uint', 'rgba16sint', 'rgba16float', 'rgba32uint', 'rgba32sint', 'rgba32float', 'stencil8', 'depth16unorm', 'depth24plus', 'depth24plus-stencil8', 'depth32float', 'depth32float-stencil8', 'bc1-rgba-unorm', 'bc1-rgba-unorm-srgb', 'bc2-rgba-unorm', 'bc2-rgba-unorm-srgb', 'bc3-rgba-unorm', 'bc3-rgba-unorm-srgb', 'bc4-r-unorm', 'bc4-r-snorm', 'bc5-rg-unorm', 'bc5-rg-snorm', 'bc6h-rgb-ufloat', 'bc6h-rgb-float', 'bc7-rgba-unorm', 'bc7-rgba-unorm-srgb', 'etc2-rgb8unorm', 'etc2-rgb8unorm-srgb', 'etc2-rgb8a1unorm', 'etc2-rgb8a1unorm-srgb', 'etc2-rgba8unorm', 'etc2-rgba8unorm-srgb', 'eac-r11unorm', 'eac-r11snorm', 'eac-rg11unorm', 'eac-rg11snorm', 'astc-4x4-unorm', 'astc-4x4-unorm-srgb', 'astc-5x4-unorm', 'astc-5x4-unorm-srgb', 'astc-5x5-unorm', 'astc-5x5-unorm-srgb', 'astc-6x5-unorm', 'astc-6x5-unorm-srgb', 'astc-6x6-unorm', 'astc-6x6-unorm-srgb', 'astc-8x5-unorm', 'astc-8x5-unorm-srgb', 'astc-8x6-unorm', 'astc-8x6-unorm-srgb', 'astc-8x8-unorm', 'astc-8x8-unorm-srgb', 'astc-10x5-unorm', 'astc-10x5-unorm-srgb', 'astc-10x6-unorm', 'astc-10x6-unorm-srgb', 'astc-10x8-unorm', 'astc-10x8-unorm-srgb', 'astc-10x10-unorm', 'astc-10x10-unorm-srgb', 'astc-12x10-unorm', 'astc-12x10-unorm-srgb', 'astc-12x12-unorm', 'astc-12x12-unorm-srgb'].indexOf(v.format),
  #|   usage: v.usage,
  #|   viewFormats: v.viewFormats,
  #|   textureBindingViewDimension: (v.textureBindingViewDimension === undefined ? undefined : ['1d', '2d', '2d-array', 'cube', 'cube-array', '3d'].indexOf(v.textureBindingViewDimension))
  #| })

///|
/// Convert from JsValue
pub fn GPUTextureDescriptor::from_js(value : JsValue) -> GPUTextureDescriptor {
  GPUTextureDescriptor::from_js_ffi(value)
}

///|
/// GPUTextureViewDescriptor dictionary
pub(all) struct GPUTextureViewDescriptor {
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
extern "js" fn GPUTextureViewDescriptor::to_js_ffi(
  self : GPUTextureViewDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   format: ((() => { const v = self.format; if (v === undefined) return undefined; return ['r8unorm', 'r8snorm', 'r8uint', 'r8sint', 'r16unorm', 'r16snorm', 'r16uint', 'r16sint', 'r16float', 'rg8unorm', 'rg8snorm', 'rg8uint', 'rg8sint', 'r32uint', 'r32sint', 'r32float', 'rg16unorm', 'rg16snorm', 'rg16uint', 'rg16sint', 'rg16float', 'rgba8unorm', 'rgba8unorm-srgb', 'rgba8snorm', 'rgba8uint', 'rgba8sint', 'bgra8unorm', 'bgra8unorm-srgb', 'rgb9e5ufloat', 'rgb10a2uint', 'rgb10a2unorm', 'rg11b10ufloat', 'rg32uint', 'rg32sint', 'rg32float', 'rgba16unorm', 'rgba16snorm', 'rgba16uint', 'rgba16sint', 'rgba16float', 'rgba32uint', 'rgba32sint', 'rgba32float', 'stencil8', 'depth16unorm', 'depth24plus', 'depth24plus-stencil8', 'depth32float', 'depth32float-stencil8', 'bc1-rgba-unorm', 'bc1-rgba-unorm-srgb', 'bc2-rgba-unorm', 'bc2-rgba-unorm-srgb', 'bc3-rgba-unorm', 'bc3-rgba-unorm-srgb', 'bc4-r-unorm', 'bc4-r-snorm', 'bc5-rg-unorm', 'bc5-rg-snorm', 'bc6h-rgb-ufloat', 'bc6h-rgb-float', 'bc7-rgba-unorm', 'bc7-rgba-unorm-srgb', 'etc2-rgb8unorm', 'etc2-rgb8unorm-srgb', 'etc2-rgb8a1unorm', 'etc2-rgb8a1unorm-srgb', 'etc2-rgba8unorm', 'etc2-rgba8unorm-srgb', 'eac-r11unorm', 'eac-r11snorm', 'eac-rg11unorm', 'eac-rg11snorm', 'astc-4x4-unorm', 'astc-4x4-unorm-srgb', 'astc-5x4-unorm', 'astc-5x4-unorm-srgb', 'astc-5x5-unorm', 'astc-5x5-unorm-srgb', 'astc-6x5-unorm', 'astc-6x5-unorm-srgb', 'astc-6x6-unorm', 'astc-6x6-unorm-srgb', 'astc-8x5-unorm', 'astc-8x5-unorm-srgb', 'astc-8x6-unorm', 'astc-8x6-unorm-srgb', 'astc-8x8-unorm', 'astc-8x8-unorm-srgb', 'astc-10x5-unorm', 'astc-10x5-unorm-srgb', 'astc-10x6-unorm', 'astc-10x6-unorm-srgb', 'astc-10x8-unorm', 'astc-10x8-unorm-srgb', 'astc-10x10-unorm', 'astc-10x10-unorm-srgb', 'astc-12x10-unorm', 'astc-12x10-unorm-srgb', 'astc-12x12-unorm', 'astc-12x12-unorm-srgb'][v]; })()),
  #|   dimension: ((() => { const v = self.dimension; if (v === undefined) return undefined; return ['1d', '2d', '2d-array', 'cube', 'cube-array', '3d'][v]; })()),
  #|   usage: self.usage,
  #|   aspect: ((() => { const v = self.aspect; if (v === undefined) return undefined; return ['all', 'stencil-only', 'depth-only'][v]; })()),
  #|   baseMipLevel: self.baseMipLevel,
  #|   mipLevelCount: self.mipLevelCount,
  #|   baseArrayLayer: self.baseArrayLayer,
  #|   arrayLayerCount: self.arrayLayerCount,
  #|   swizzle: self.swizzle
  #| })

///|
/// Convert to JsValue
pub fn GPUTextureViewDescriptor::to_js(
  self : GPUTextureViewDescriptor,
) -> JsValue {
  GPUTextureViewDescriptor::to_js_ffi(self)
}

///|
extern "js" fn GPUTextureViewDescriptor::from_js_ffi(
  value : JsValue,
) -> GPUTextureViewDescriptor =
  #| (v) => ({
  #|   label: v.label,
  #|   format: (v.format === undefined ? undefined : ['r8unorm', 'r8snorm', 'r8uint', 'r8sint', 'r16unorm', 'r16snorm', 'r16uint', 'r16sint', 'r16float', 'rg8unorm', 'rg8snorm', 'rg8uint', 'rg8sint', 'r32uint', 'r32sint', 'r32float', 'rg16unorm', 'rg16snorm', 'rg16uint', 'rg16sint', 'rg16float', 'rgba8unorm', 'rgba8unorm-srgb', 'rgba8snorm', 'rgba8uint', 'rgba8sint', 'bgra8unorm', 'bgra8unorm-srgb', 'rgb9e5ufloat', 'rgb10a2uint', 'rgb10a2unorm', 'rg11b10ufloat', 'rg32uint', 'rg32sint', 'rg32float', 'rgba16unorm', 'rgba16snorm', 'rgba16uint', 'rgba16sint', 'rgba16float', 'rgba32uint', 'rgba32sint', 'rgba32float', 'stencil8', 'depth16unorm', 'depth24plus', 'depth24plus-stencil8', 'depth32float', 'depth32float-stencil8', 'bc1-rgba-unorm', 'bc1-rgba-unorm-srgb', 'bc2-rgba-unorm', 'bc2-rgba-unorm-srgb', 'bc3-rgba-unorm', 'bc3-rgba-unorm-srgb', 'bc4-r-unorm', 'bc4-r-snorm', 'bc5-rg-unorm', 'bc5-rg-snorm', 'bc6h-rgb-ufloat', 'bc6h-rgb-float', 'bc7-rgba-unorm', 'bc7-rgba-unorm-srgb', 'etc2-rgb8unorm', 'etc2-rgb8unorm-srgb', 'etc2-rgb8a1unorm', 'etc2-rgb8a1unorm-srgb', 'etc2-rgba8unorm', 'etc2-rgba8unorm-srgb', 'eac-r11unorm', 'eac-r11snorm', 'eac-rg11unorm', 'eac-rg11snorm', 'astc-4x4-unorm', 'astc-4x4-unorm-srgb', 'astc-5x4-unorm', 'astc-5x4-unorm-srgb', 'astc-5x5-unorm', 'astc-5x5-unorm-srgb', 'astc-6x5-unorm', 'astc-6x5-unorm-srgb', 'astc-6x6-unorm', 'astc-6x6-unorm-srgb', 'astc-8x5-unorm', 'astc-8x5-unorm-srgb', 'astc-8x6-unorm', 'astc-8x6-unorm-srgb', 'astc-8x8-unorm', 'astc-8x8-unorm-srgb', 'astc-10x5-unorm', 'astc-10x5-unorm-srgb', 'astc-10x6-unorm', 'astc-10x6-unorm-srgb', 'astc-10x8-unorm', 'astc-10x8-unorm-srgb', 'astc-10x10-unorm', 'astc-10x10-unorm-srgb', 'astc-12x10-unorm', 'astc-12x10-unorm-srgb', 'astc-12x12-unorm', 'astc-12x12-unorm-srgb'].indexOf(v.format)),
  #|   dimension: (v.dimension === undefined ? undefined : ['1d', '2d', '2d-array', 'cube', 'cube-array', '3d'].indexOf(v.dimension)),
  #|   usage: v.usage,
  #|   aspect: (v.aspect === undefined ? undefined : ['all', 'stencil-only', 'depth-only'].indexOf(v.aspect)),
  #|   baseMipLevel: v.baseMipLevel,
  #|   mipLevelCount: v.mipLevelCount,
  #|   baseArrayLayer: v.baseArrayLayer,
  #|   arrayLayerCount: v.arrayLayerCount,
  #|   swizzle: v.swizzle
  #| })

///|
/// Convert from JsValue
pub fn GPUTextureViewDescriptor::from_js(
  value : JsValue,
) -> GPUTextureViewDescriptor {
  GPUTextureViewDescriptor::from_js_ffi(value)
}

///|
/// GPUExternalTextureDescriptor dictionary
pub(all) struct GPUExternalTextureDescriptor {
  label : String?
  source : HTMLVideoElementOrVideoFrame
  colorSpace : PredefinedColorSpace?
}

///|
/// Create a new GPUExternalTextureDescriptor
pub fn GPUExternalTextureDescriptor::new(
  source~ : HTMLVideoElementOrVideoFrame,
) -> GPUExternalTextureDescriptor {
  GPUExternalTextureDescriptor::{ label: None, source, colorSpace: None, }
}

///|
extern "js" fn GPUExternalTextureDescriptor::to_js_ffi(
  self : GPUExternalTextureDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   source: self.source,
  #|   colorSpace: ((() => { const v = self.colorSpace; if (v === undefined) return undefined; return ['srgb', 'srgb-linear', 'display-p3', 'display-p3-linear'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn GPUExternalTextureDescriptor::to_js(
  self : GPUExternalTextureDescriptor,
) -> JsValue {
  GPUExternalTextureDescriptor::to_js_ffi(self)
}

///|
extern "js" fn GPUExternalTextureDescriptor::from_js_ffi(
  value : JsValue,
) -> GPUExternalTextureDescriptor =
  #| (v) => ({
  #|   label: v.label,
  #|   source: v.source,
  #|   colorSpace: (v.colorSpace === undefined ? undefined : ['srgb', 'srgb-linear', 'display-p3', 'display-p3-linear'].indexOf(v.colorSpace))
  #| })

///|
/// Convert from JsValue
pub fn GPUExternalTextureDescriptor::from_js(
  value : JsValue,
) -> GPUExternalTextureDescriptor {
  GPUExternalTextureDescriptor::from_js_ffi(value)
}

///|
/// GPUSamplerDescriptor dictionary
pub(all) struct GPUSamplerDescriptor {
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
extern "js" fn GPUSamplerDescriptor::to_js_ffi(
  self : GPUSamplerDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   addressModeU: ((() => { const v = self.addressModeU; if (v === undefined) return undefined; return ['clamp-to-edge', 'repeat', 'mirror-repeat'][v]; })()),
  #|   addressModeV: ((() => { const v = self.addressModeV; if (v === undefined) return undefined; return ['clamp-to-edge', 'repeat', 'mirror-repeat'][v]; })()),
  #|   addressModeW: ((() => { const v = self.addressModeW; if (v === undefined) return undefined; return ['clamp-to-edge', 'repeat', 'mirror-repeat'][v]; })()),
  #|   magFilter: ((() => { const v = self.magFilter; if (v === undefined) return undefined; return ['nearest', 'linear'][v]; })()),
  #|   minFilter: ((() => { const v = self.minFilter; if (v === undefined) return undefined; return ['nearest', 'linear'][v]; })()),
  #|   mipmapFilter: ((() => { const v = self.mipmapFilter; if (v === undefined) return undefined; return ['nearest', 'linear'][v]; })()),
  #|   lodMinClamp: ((() => { const v = self.lodMinClamp; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   lodMaxClamp: ((() => { const v = self.lodMaxClamp; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   compare: ((() => { const v = self.compare; if (v === undefined) return undefined; return ['never', 'less', 'equal', 'less-equal', 'greater', 'not-equal', 'greater-equal', 'always'][v]; })()),
  #|   maxAnisotropy: self.maxAnisotropy
  #| })

///|
/// Convert to JsValue
pub fn GPUSamplerDescriptor::to_js(self : GPUSamplerDescriptor) -> JsValue {
  GPUSamplerDescriptor::to_js_ffi(self)
}

///|
extern "js" fn GPUSamplerDescriptor::from_js_ffi(
  value : JsValue,
) -> GPUSamplerDescriptor =
  #| (v) => ({
  #|   label: v.label,
  #|   addressModeU: (v.addressModeU === undefined ? undefined : ['clamp-to-edge', 'repeat', 'mirror-repeat'].indexOf(v.addressModeU)),
  #|   addressModeV: (v.addressModeV === undefined ? undefined : ['clamp-to-edge', 'repeat', 'mirror-repeat'].indexOf(v.addressModeV)),
  #|   addressModeW: (v.addressModeW === undefined ? undefined : ['clamp-to-edge', 'repeat', 'mirror-repeat'].indexOf(v.addressModeW)),
  #|   magFilter: (v.magFilter === undefined ? undefined : ['nearest', 'linear'].indexOf(v.magFilter)),
  #|   minFilter: (v.minFilter === undefined ? undefined : ['nearest', 'linear'].indexOf(v.minFilter)),
  #|   mipmapFilter: (v.mipmapFilter === undefined ? undefined : ['nearest', 'linear'].indexOf(v.mipmapFilter)),
  #|   lodMinClamp: (v.lodMinClamp === undefined ? { $tag: 0 } : { $tag: 1, _0: v.lodMinClamp }),
  #|   lodMaxClamp: (v.lodMaxClamp === undefined ? { $tag: 0 } : { $tag: 1, _0: v.lodMaxClamp }),
  #|   compare: (v.compare === undefined ? undefined : ['never', 'less', 'equal', 'less-equal', 'greater', 'not-equal', 'greater-equal', 'always'].indexOf(v.compare)),
  #|   maxAnisotropy: v.maxAnisotropy
  #| })

///|
/// Convert from JsValue
pub fn GPUSamplerDescriptor::from_js(value : JsValue) -> GPUSamplerDescriptor {
  GPUSamplerDescriptor::from_js_ffi(value)
}

///|
/// GPUBindGroupLayoutDescriptor dictionary
pub(all) struct GPUBindGroupLayoutDescriptor {
  label : String?
  entries : FixedArray[GPUBindGroupLayoutEntry]
}

///|
/// Create a new GPUBindGroupLayoutDescriptor with default values
pub fn GPUBindGroupLayoutDescriptor::default() -> GPUBindGroupLayoutDescriptor {
  GPUBindGroupLayoutDescriptor::{ label: None, entries: [], }
}

///|
extern "js" fn GPUBindGroupLayoutDescriptor::to_js_ffi(
  self : GPUBindGroupLayoutDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   entries: self.entries
  #| })

///|
/// Convert to JsValue
pub fn GPUBindGroupLayoutDescriptor::to_js(
  self : GPUBindGroupLayoutDescriptor,
) -> JsValue {
  GPUBindGroupLayoutDescriptor::to_js_ffi(self)
}

///|
extern "js" fn GPUBindGroupLayoutDescriptor::from_js_ffi(
  value : JsValue,
) -> GPUBindGroupLayoutDescriptor =
  #| (v) => ({
  #|   label: v.label,
  #|   entries: v.entries
  #| })

///|
/// Convert from JsValue
pub fn GPUBindGroupLayoutDescriptor::from_js(
  value : JsValue,
) -> GPUBindGroupLayoutDescriptor {
  GPUBindGroupLayoutDescriptor::from_js_ffi(value)
}

///|
/// GPUBindGroupLayoutEntry dictionary
pub(all) struct GPUBindGroupLayoutEntry {
  binding : GPUIndex32
  visibility : GPUShaderStageFlags
  buffer : GPUBufferBindingLayout?
  sampler : GPUSamplerBindingLayout?
  texture : GPUTextureBindingLayout?
  storageTexture : GPUStorageTextureBindingLayout?
  externalTexture : GPUExternalTextureBindingLayout?
}

///|
/// Create a new GPUBindGroupLayoutEntry
pub fn GPUBindGroupLayoutEntry::new(
  binding~ : GPUIndex32,
  visibility~ : GPUShaderStageFlags,
) -> GPUBindGroupLayoutEntry {
  GPUBindGroupLayoutEntry::{
    binding,
    visibility,
    buffer: None,
    sampler: None,
    texture: None,
    storageTexture: None,
    externalTexture: None,
  }
}

///|
extern "js" fn GPUBindGroupLayoutEntry::to_js_ffi(
  self : GPUBindGroupLayoutEntry,
  convert_buffer : (GPUBufferBindingLayout?) -> JsValue,
  convert_sampler : (GPUSamplerBindingLayout?) -> JsValue,
  convert_texture : (GPUTextureBindingLayout?) -> JsValue,
  convert_storageTexture : (GPUStorageTextureBindingLayout?) -> JsValue,
  convert_externalTexture : (GPUExternalTextureBindingLayout?) -> JsValue,
) -> JsValue =
  #| (self, convert_buffer, convert_sampler, convert_texture, convert_storageTexture, convert_externalTexture) => ({
  #|   binding: self.binding,
  #|   visibility: self.visibility,
  #|   buffer: convert_buffer(self.buffer),
  #|   sampler: convert_sampler(self.sampler),
  #|   texture: convert_texture(self.texture),
  #|   storageTexture: convert_storageTexture(self.storageTexture),
  #|   externalTexture: convert_externalTexture(self.externalTexture)
  #| })

///|
/// Convert to JsValue
pub fn GPUBindGroupLayoutEntry::to_js(
  self : GPUBindGroupLayoutEntry,
) -> JsValue {
  GPUBindGroupLayoutEntry::to_js_ffi(
    self,
    fn(value) {
      match value {
        Some(value) => value.to_js()
        None => dictionary_undefined()
      }
    },
    fn(value) {
      match value {
        Some(value) => value.to_js()
        None => dictionary_undefined()
      }
    },
    fn(value) {
      match value {
        Some(value) => value.to_js()
        None => dictionary_undefined()
      }
    },
    fn(value) {
      match value {
        Some(value) => value.to_js()
        None => dictionary_undefined()
      }
    },
    fn(value) {
      match value {
        Some(value) => value.to_js()
        None => dictionary_undefined()
      }
    },
  )
}

///|
extern "js" fn GPUBindGroupLayoutEntry::from_js_ffi(
  value : JsValue,
  convert_buffer : (JsValue) -> GPUBufferBindingLayout?,
  convert_sampler : (JsValue) -> GPUSamplerBindingLayout?,
  convert_texture : (JsValue) -> GPUTextureBindingLayout?,
  convert_storageTexture : (JsValue) -> GPUStorageTextureBindingLayout?,
  convert_externalTexture : (JsValue) -> GPUExternalTextureBindingLayout?,
) -> GPUBindGroupLayoutEntry =
  #| (v, convert_buffer, convert_sampler, convert_texture, convert_storageTexture, convert_externalTexture) => ({
  #|   binding: v.binding,
  #|   visibility: v.visibility,
  #|   buffer: convert_buffer(v.buffer),
  #|   sampler: convert_sampler(v.sampler),
  #|   texture: convert_texture(v.texture),
  #|   storageTexture: convert_storageTexture(v.storageTexture),
  #|   externalTexture: convert_externalTexture(v.externalTexture)
  #| })

///|
/// Convert from JsValue
pub fn GPUBindGroupLayoutEntry::from_js(
  value : JsValue,
) -> GPUBindGroupLayoutEntry {
  GPUBindGroupLayoutEntry::from_js_ffi(
    value,
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(GPUBufferBindingLayout::from_js(value))
      }
    },
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(GPUSamplerBindingLayout::from_js(value))
      }
    },
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(GPUTextureBindingLayout::from_js(value))
      }
    },
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(GPUStorageTextureBindingLayout::from_js(value))
      }
    },
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(GPUExternalTextureBindingLayout::from_js(value))
      }
    },
  )
}

///|
/// GPUBufferBindingLayout dictionary
pub(all) struct GPUBufferBindingLayout {
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
extern "js" fn GPUBufferBindingLayout::to_js_ffi(
  self : GPUBufferBindingLayout,
) -> JsValue =
  #| (self) => ({
  #|   type: ((() => { const v = self.type_; if (v === undefined) return undefined; return ['uniform', 'storage', 'read-only-storage'][v]; })()),
  #|   hasDynamicOffset: (self.hasDynamicOffset === -1 ? undefined : self.hasDynamicOffset),
  #|   minBindingSize: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.minBindingSize)
  #| })

///|
/// Convert to JsValue
pub fn GPUBufferBindingLayout::to_js(self : GPUBufferBindingLayout) -> JsValue {
  GPUBufferBindingLayout::to_js_ffi(self)
}

///|
extern "js" fn GPUBufferBindingLayout::from_js_ffi(
  value : JsValue,
) -> GPUBufferBindingLayout =
  #| (v) => ({
  #|   type_: (v.type === undefined ? undefined : ['uniform', 'storage', 'read-only-storage'].indexOf(v.type)),
  #|   hasDynamicOffset: (v.hasDynamicOffset === undefined ? -1 : v.hasDynamicOffset),
  #|   minBindingSize: (v.minBindingSize === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.minBindingSize))
  #| })

///|
/// Convert from JsValue
pub fn GPUBufferBindingLayout::from_js(
  value : JsValue,
) -> GPUBufferBindingLayout {
  GPUBufferBindingLayout::from_js_ffi(value)
}

///|
/// Catch dictionary conversion errors, including unsafe integer ranges.
pub fn GPUBufferBindingLayout::to_js_checked(
  self : GPUBufferBindingLayout,
) -> Result[JsValue, JsError] {
  try_dictionary_conversion(() => self.to_js())
}

///|
extern "js" fn try_dictionary_GPUBufferBindingLayout(
  convert : () -> GPUBufferBindingLayout,
) -> Result[GPUBufferBindingLayout, JsError] =
  #| convert => { try { return { $tag: 1, _0: convert() }; } catch (error) { return { $tag: 0, _0: error }; } }

///|
/// Catch invalid host fields, including unsafe integer ranges.
pub fn GPUBufferBindingLayout::from_js_checked(
  value : JsValue,
) -> Result[GPUBufferBindingLayout, JsError] {
  try_dictionary_GPUBufferBindingLayout(() => {
    GPUBufferBindingLayout::from_js(value)
  })
}

///|
/// GPUSamplerBindingLayout dictionary
pub(all) struct GPUSamplerBindingLayout {
  type_ : GPUSamplerBindingType?
}

///|
/// Create a new GPUSamplerBindingLayout with default values
pub fn GPUSamplerBindingLayout::default() -> GPUSamplerBindingLayout {
  GPUSamplerBindingLayout::{ type_: None, }
}

///|
extern "js" fn GPUSamplerBindingLayout::to_js_ffi(
  self : GPUSamplerBindingLayout,
) -> JsValue =
  #| (self) => ({
  #|   type: ((() => { const v = self.type_; if (v === undefined) return undefined; return ['filtering', 'non-filtering', 'comparison'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn GPUSamplerBindingLayout::to_js(
  self : GPUSamplerBindingLayout,
) -> JsValue {
  GPUSamplerBindingLayout::to_js_ffi(self)
}

///|
extern "js" fn GPUSamplerBindingLayout::from_js_ffi(
  value : JsValue,
) -> GPUSamplerBindingLayout =
  #| (v) => ({
  #|   type_: (v.type === undefined ? undefined : ['filtering', 'non-filtering', 'comparison'].indexOf(v.type))
  #| })

///|
/// Convert from JsValue
pub fn GPUSamplerBindingLayout::from_js(
  value : JsValue,
) -> GPUSamplerBindingLayout {
  GPUSamplerBindingLayout::from_js_ffi(value)
}

///|
/// GPUTextureBindingLayout dictionary
pub(all) struct GPUTextureBindingLayout {
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
extern "js" fn GPUTextureBindingLayout::to_js_ffi(
  self : GPUTextureBindingLayout,
) -> JsValue =
  #| (self) => ({
  #|   sampleType: ((() => { const v = self.sampleType; if (v === undefined) return undefined; return ['float', 'unfilterable-float', 'depth', 'sint', 'uint'][v]; })()),
  #|   viewDimension: ((() => { const v = self.viewDimension; if (v === undefined) return undefined; return ['1d', '2d', '2d-array', 'cube', 'cube-array', '3d'][v]; })()),
  #|   multisampled: (self.multisampled === -1 ? undefined : self.multisampled)
  #| })

///|
/// Convert to JsValue
pub fn GPUTextureBindingLayout::to_js(
  self : GPUTextureBindingLayout,
) -> JsValue {
  GPUTextureBindingLayout::to_js_ffi(self)
}

///|
extern "js" fn GPUTextureBindingLayout::from_js_ffi(
  value : JsValue,
) -> GPUTextureBindingLayout =
  #| (v) => ({
  #|   sampleType: (v.sampleType === undefined ? undefined : ['float', 'unfilterable-float', 'depth', 'sint', 'uint'].indexOf(v.sampleType)),
  #|   viewDimension: (v.viewDimension === undefined ? undefined : ['1d', '2d', '2d-array', 'cube', 'cube-array', '3d'].indexOf(v.viewDimension)),
  #|   multisampled: (v.multisampled === undefined ? -1 : v.multisampled)
  #| })

///|
/// Convert from JsValue
pub fn GPUTextureBindingLayout::from_js(
  value : JsValue,
) -> GPUTextureBindingLayout {
  GPUTextureBindingLayout::from_js_ffi(value)
}

///|
/// GPUStorageTextureBindingLayout dictionary
pub(all) struct GPUStorageTextureBindingLayout {
  access : GPUStorageTextureAccess?
  format : GPUTextureFormat
  viewDimension : GPUTextureViewDimension?
}

///|
/// Create a new GPUStorageTextureBindingLayout
pub fn GPUStorageTextureBindingLayout::new(
  format~ : GPUTextureFormat,
) -> GPUStorageTextureBindingLayout {
  GPUStorageTextureBindingLayout::{ access: None, format, viewDimension: None, }
}

///|
extern "js" fn GPUStorageTextureBindingLayout::to_js_ffi(
  self : GPUStorageTextureBindingLayout,
) -> JsValue =
  #| (self) => ({
  #|   access: ((() => { const v = self.access; if (v === undefined) return undefined; return ['write-only', 'read-only', 'read-write'][v]; })()),
  #|   format: ['r8unorm', 'r8snorm', 'r8uint', 'r8sint', 'r16unorm', 'r16snorm', 'r16uint', 'r16sint', 'r16float', 'rg8unorm', 'rg8snorm', 'rg8uint', 'rg8sint', 'r32uint', 'r32sint', 'r32float', 'rg16unorm', 'rg16snorm', 'rg16uint', 'rg16sint', 'rg16float', 'rgba8unorm', 'rgba8unorm-srgb', 'rgba8snorm', 'rgba8uint', 'rgba8sint', 'bgra8unorm', 'bgra8unorm-srgb', 'rgb9e5ufloat', 'rgb10a2uint', 'rgb10a2unorm', 'rg11b10ufloat', 'rg32uint', 'rg32sint', 'rg32float', 'rgba16unorm', 'rgba16snorm', 'rgba16uint', 'rgba16sint', 'rgba16float', 'rgba32uint', 'rgba32sint', 'rgba32float', 'stencil8', 'depth16unorm', 'depth24plus', 'depth24plus-stencil8', 'depth32float', 'depth32float-stencil8', 'bc1-rgba-unorm', 'bc1-rgba-unorm-srgb', 'bc2-rgba-unorm', 'bc2-rgba-unorm-srgb', 'bc3-rgba-unorm', 'bc3-rgba-unorm-srgb', 'bc4-r-unorm', 'bc4-r-snorm', 'bc5-rg-unorm', 'bc5-rg-snorm', 'bc6h-rgb-ufloat', 'bc6h-rgb-float', 'bc7-rgba-unorm', 'bc7-rgba-unorm-srgb', 'etc2-rgb8unorm', 'etc2-rgb8unorm-srgb', 'etc2-rgb8a1unorm', 'etc2-rgb8a1unorm-srgb', 'etc2-rgba8unorm', 'etc2-rgba8unorm-srgb', 'eac-r11unorm', 'eac-r11snorm', 'eac-rg11unorm', 'eac-rg11snorm', 'astc-4x4-unorm', 'astc-4x4-unorm-srgb', 'astc-5x4-unorm', 'astc-5x4-unorm-srgb', 'astc-5x5-unorm', 'astc-5x5-unorm-srgb', 'astc-6x5-unorm', 'astc-6x5-unorm-srgb', 'astc-6x6-unorm', 'astc-6x6-unorm-srgb', 'astc-8x5-unorm', 'astc-8x5-unorm-srgb', 'astc-8x6-unorm', 'astc-8x6-unorm-srgb', 'astc-8x8-unorm', 'astc-8x8-unorm-srgb', 'astc-10x5-unorm', 'astc-10x5-unorm-srgb', 'astc-10x6-unorm', 'astc-10x6-unorm-srgb', 'astc-10x8-unorm', 'astc-10x8-unorm-srgb', 'astc-10x10-unorm', 'astc-10x10-unorm-srgb', 'astc-12x10-unorm', 'astc-12x10-unorm-srgb', 'astc-12x12-unorm', 'astc-12x12-unorm-srgb'][self.format],
  #|   viewDimension: ((() => { const v = self.viewDimension; if (v === undefined) return undefined; return ['1d', '2d', '2d-array', 'cube', 'cube-array', '3d'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn GPUStorageTextureBindingLayout::to_js(
  self : GPUStorageTextureBindingLayout,
) -> JsValue {
  GPUStorageTextureBindingLayout::to_js_ffi(self)
}

///|
extern "js" fn GPUStorageTextureBindingLayout::from_js_ffi(
  value : JsValue,
) -> GPUStorageTextureBindingLayout =
  #| (v) => ({
  #|   access: (v.access === undefined ? undefined : ['write-only', 'read-only', 'read-write'].indexOf(v.access)),
  #|   format: ['r8unorm', 'r8snorm', 'r8uint', 'r8sint', 'r16unorm', 'r16snorm', 'r16uint', 'r16sint', 'r16float', 'rg8unorm', 'rg8snorm', 'rg8uint', 'rg8sint', 'r32uint', 'r32sint', 'r32float', 'rg16unorm', 'rg16snorm', 'rg16uint', 'rg16sint', 'rg16float', 'rgba8unorm', 'rgba8unorm-srgb', 'rgba8snorm', 'rgba8uint', 'rgba8sint', 'bgra8unorm', 'bgra8unorm-srgb', 'rgb9e5ufloat', 'rgb10a2uint', 'rgb10a2unorm', 'rg11b10ufloat', 'rg32uint', 'rg32sint', 'rg32float', 'rgba16unorm', 'rgba16snorm', 'rgba16uint', 'rgba16sint', 'rgba16float', 'rgba32uint', 'rgba32sint', 'rgba32float', 'stencil8', 'depth16unorm', 'depth24plus', 'depth24plus-stencil8', 'depth32float', 'depth32float-stencil8', 'bc1-rgba-unorm', 'bc1-rgba-unorm-srgb', 'bc2-rgba-unorm', 'bc2-rgba-unorm-srgb', 'bc3-rgba-unorm', 'bc3-rgba-unorm-srgb', 'bc4-r-unorm', 'bc4-r-snorm', 'bc5-rg-unorm', 'bc5-rg-snorm', 'bc6h-rgb-ufloat', 'bc6h-rgb-float', 'bc7-rgba-unorm', 'bc7-rgba-unorm-srgb', 'etc2-rgb8unorm', 'etc2-rgb8unorm-srgb', 'etc2-rgb8a1unorm', 'etc2-rgb8a1unorm-srgb', 'etc2-rgba8unorm', 'etc2-rgba8unorm-srgb', 'eac-r11unorm', 'eac-r11snorm', 'eac-rg11unorm', 'eac-rg11snorm', 'astc-4x4-unorm', 'astc-4x4-unorm-srgb', 'astc-5x4-unorm', 'astc-5x4-unorm-srgb', 'astc-5x5-unorm', 'astc-5x5-unorm-srgb', 'astc-6x5-unorm', 'astc-6x5-unorm-srgb', 'astc-6x6-unorm', 'astc-6x6-unorm-srgb', 'astc-8x5-unorm', 'astc-8x5-unorm-srgb', 'astc-8x6-unorm', 'astc-8x6-unorm-srgb', 'astc-8x8-unorm', 'astc-8x8-unorm-srgb', 'astc-10x5-unorm', 'astc-10x5-unorm-srgb', 'astc-10x6-unorm', 'astc-10x6-unorm-srgb', 'astc-10x8-unorm', 'astc-10x8-unorm-srgb', 'astc-10x10-unorm', 'astc-10x10-unorm-srgb', 'astc-12x10-unorm', 'astc-12x10-unorm-srgb', 'astc-12x12-unorm', 'astc-12x12-unorm-srgb'].indexOf(v.format),
  #|   viewDimension: (v.viewDimension === undefined ? undefined : ['1d', '2d', '2d-array', 'cube', 'cube-array', '3d'].indexOf(v.viewDimension))
  #| })

///|
/// Convert from JsValue
pub fn GPUStorageTextureBindingLayout::from_js(
  value : JsValue,
) -> GPUStorageTextureBindingLayout {
  GPUStorageTextureBindingLayout::from_js_ffi(value)
}

///|
/// GPUExternalTextureBindingLayout dictionary
pub(all) struct GPUExternalTextureBindingLayout {}

///|
/// Create a new GPUExternalTextureBindingLayout with default values
pub fn GPUExternalTextureBindingLayout::default() -> GPUExternalTextureBindingLayout {
  GPUExternalTextureBindingLayout::{ }
}

///|
extern "js" fn GPUExternalTextureBindingLayout::to_js_ffi(
  self : GPUExternalTextureBindingLayout,
) -> JsValue =
  #| (self) => ({
  #| })

///|
/// Convert to JsValue
pub fn GPUExternalTextureBindingLayout::to_js(
  self : GPUExternalTextureBindingLayout,
) -> JsValue {
  GPUExternalTextureBindingLayout::to_js_ffi(self)
}

///|
extern "js" fn GPUExternalTextureBindingLayout::from_js_ffi(
  value : JsValue,
) -> GPUExternalTextureBindingLayout =
  #| (v) => ({
  #| })

///|
/// Convert from JsValue
pub fn GPUExternalTextureBindingLayout::from_js(
  value : JsValue,
) -> GPUExternalTextureBindingLayout {
  GPUExternalTextureBindingLayout::from_js_ffi(value)
}

///|
/// GPUBindGroupDescriptor dictionary
pub(all) struct GPUBindGroupDescriptor {
  label : String?
  layout : GPUBindGroupLayout
  entries : FixedArray[GPUBindGroupEntry]
}

///|
/// Create a new GPUBindGroupDescriptor
pub fn GPUBindGroupDescriptor::new(
  layout~ : GPUBindGroupLayout,
) -> GPUBindGroupDescriptor {
  GPUBindGroupDescriptor::{ label: None, layout, entries: [], }
}

///|
extern "js" fn GPUBindGroupDescriptor::to_js_ffi(
  self : GPUBindGroupDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   layout: self.layout,
  #|   entries: self.entries
  #| })

///|
/// Convert to JsValue
pub fn GPUBindGroupDescriptor::to_js(self : GPUBindGroupDescriptor) -> JsValue {
  GPUBindGroupDescriptor::to_js_ffi(self)
}

///|
extern "js" fn GPUBindGroupDescriptor::from_js_ffi(
  value : JsValue,
) -> GPUBindGroupDescriptor =
  #| (v) => ({
  #|   label: v.label,
  #|   layout: v.layout,
  #|   entries: v.entries
  #| })

///|
/// Convert from JsValue
pub fn GPUBindGroupDescriptor::from_js(
  value : JsValue,
) -> GPUBindGroupDescriptor {
  GPUBindGroupDescriptor::from_js_ffi(value)
}

///|
/// GPUBindGroupEntry dictionary
pub(all) struct GPUBindGroupEntry {
  binding : GPUIndex32
  resource : GPUBindingResource
}

///|
/// Create a new GPUBindGroupEntry
pub fn GPUBindGroupEntry::new(
  binding~ : GPUIndex32,
  resource~ : GPUBindingResource,
) -> GPUBindGroupEntry {
  GPUBindGroupEntry::{ binding, resource, }
}

///|
extern "js" fn GPUBindGroupEntry::to_js_ffi(
  self : GPUBindGroupEntry,
) -> JsValue =
  #| (self) => ({
  #|   binding: self.binding,
  #|   resource: self.resource
  #| })

///|
/// Convert to JsValue
pub fn GPUBindGroupEntry::to_js(self : GPUBindGroupEntry) -> JsValue {
  GPUBindGroupEntry::to_js_ffi(self)
}

///|
extern "js" fn GPUBindGroupEntry::from_js_ffi(
  value : JsValue,
) -> GPUBindGroupEntry =
  #| (v) => ({
  #|   binding: v.binding,
  #|   resource: v.resource
  #| })

///|
/// Convert from JsValue
pub fn GPUBindGroupEntry::from_js(value : JsValue) -> GPUBindGroupEntry {
  GPUBindGroupEntry::from_js_ffi(value)
}

///|
/// GPUBufferBinding dictionary
pub(all) struct GPUBufferBinding {
  buffer : GPUBuffer
  offset : GPUSize64?
  size : GPUSize64?
}

///|
/// Create a new GPUBufferBinding
pub fn GPUBufferBinding::new(buffer~ : GPUBuffer) -> GPUBufferBinding {
  GPUBufferBinding::{ buffer, offset: None, size: None, }
}

///|
extern "js" fn GPUBufferBinding::to_js_ffi(self : GPUBufferBinding) -> JsValue =
  #| (self) => ({
  #|   buffer: self.buffer,
  #|   offset: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.offset),
  #|   size: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.size)
  #| })

///|
/// Convert to JsValue
pub fn GPUBufferBinding::to_js(self : GPUBufferBinding) -> JsValue {
  GPUBufferBinding::to_js_ffi(self)
}

///|
extern "js" fn GPUBufferBinding::from_js_ffi(
  value : JsValue,
) -> GPUBufferBinding =
  #| (v) => ({
  #|   buffer: v.buffer,
  #|   offset: (v.offset === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.offset)),
  #|   size: (v.size === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.size))
  #| })

///|
/// Convert from JsValue
pub fn GPUBufferBinding::from_js(value : JsValue) -> GPUBufferBinding {
  GPUBufferBinding::from_js_ffi(value)
}

///|
/// Catch dictionary conversion errors, including unsafe integer ranges.
pub fn GPUBufferBinding::to_js_checked(
  self : GPUBufferBinding,
) -> Result[JsValue, JsError] {
  try_dictionary_conversion(() => self.to_js())
}

///|
extern "js" fn try_dictionary_GPUBufferBinding(
  convert : () -> GPUBufferBinding,
) -> Result[GPUBufferBinding, JsError] =
  #| convert => { try { return { $tag: 1, _0: convert() }; } catch (error) { return { $tag: 0, _0: error }; } }

///|
/// Catch invalid host fields, including unsafe integer ranges.
pub fn GPUBufferBinding::from_js_checked(
  value : JsValue,
) -> Result[GPUBufferBinding, JsError] {
  try_dictionary_GPUBufferBinding(() => GPUBufferBinding::from_js(value))
}

///|
/// GPUPipelineLayoutDescriptor dictionary
pub(all) struct GPUPipelineLayoutDescriptor {
  label : String?
  bindGroupLayouts : FixedArray[JsValue]
}

///|
/// Create a new GPUPipelineLayoutDescriptor with default values
pub fn GPUPipelineLayoutDescriptor::default() -> GPUPipelineLayoutDescriptor {
  GPUPipelineLayoutDescriptor::{ label: None, bindGroupLayouts: [], }
}

///|
extern "js" fn GPUPipelineLayoutDescriptor::to_js_ffi(
  self : GPUPipelineLayoutDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   bindGroupLayouts: self.bindGroupLayouts
  #| })

///|
/// Convert to JsValue
pub fn GPUPipelineLayoutDescriptor::to_js(
  self : GPUPipelineLayoutDescriptor,
) -> JsValue {
  GPUPipelineLayoutDescriptor::to_js_ffi(self)
}

///|
extern "js" fn GPUPipelineLayoutDescriptor::from_js_ffi(
  value : JsValue,
) -> GPUPipelineLayoutDescriptor =
  #| (v) => ({
  #|   label: v.label,
  #|   bindGroupLayouts: v.bindGroupLayouts
  #| })

///|
/// Convert from JsValue
pub fn GPUPipelineLayoutDescriptor::from_js(
  value : JsValue,
) -> GPUPipelineLayoutDescriptor {
  GPUPipelineLayoutDescriptor::from_js_ffi(value)
}

///|
/// GPUShaderModuleDescriptor dictionary
pub(all) struct GPUShaderModuleDescriptor {
  label : String?
  code : String
  compilationHints : FixedArray[GPUShaderModuleCompilationHint]?
}

///|
/// Create a new GPUShaderModuleDescriptor with default values
pub fn GPUShaderModuleDescriptor::default() -> GPUShaderModuleDescriptor {
  GPUShaderModuleDescriptor::{ label: None, code: "", compilationHints: None, }
}

///|
extern "js" fn GPUShaderModuleDescriptor::to_js_ffi(
  self : GPUShaderModuleDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   code: self.code,
  #|   compilationHints: self.compilationHints
  #| })

///|
/// Convert to JsValue
pub fn GPUShaderModuleDescriptor::to_js(
  self : GPUShaderModuleDescriptor,
) -> JsValue {
  GPUShaderModuleDescriptor::to_js_ffi(self)
}

///|
extern "js" fn GPUShaderModuleDescriptor::from_js_ffi(
  value : JsValue,
) -> GPUShaderModuleDescriptor =
  #| (v) => ({
  #|   label: v.label,
  #|   code: v.code,
  #|   compilationHints: v.compilationHints
  #| })

///|
/// Convert from JsValue
pub fn GPUShaderModuleDescriptor::from_js(
  value : JsValue,
) -> GPUShaderModuleDescriptor {
  GPUShaderModuleDescriptor::from_js_ffi(value)
}

///|
/// GPUShaderModuleCompilationHint dictionary
pub(all) struct GPUShaderModuleCompilationHint {
  entryPoint : String
  layout : GPUPipelineLayoutOrGPUAutoLayoutMode?
}

///|
/// Create a new GPUShaderModuleCompilationHint with default values
pub fn GPUShaderModuleCompilationHint::default() -> GPUShaderModuleCompilationHint {
  GPUShaderModuleCompilationHint::{ entryPoint: "", layout: None, }
}

///|
extern "js" fn GPUShaderModuleCompilationHint::to_js_ffi(
  self : GPUShaderModuleCompilationHint,
) -> JsValue =
  #| (self) => ({
  #|   entryPoint: self.entryPoint,
  #|   layout: ((() => { const v = self.layout; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn GPUShaderModuleCompilationHint::to_js(
  self : GPUShaderModuleCompilationHint,
) -> JsValue {
  GPUShaderModuleCompilationHint::to_js_ffi(self)
}

///|
extern "js" fn GPUShaderModuleCompilationHint::from_js_ffi(
  value : JsValue,
) -> GPUShaderModuleCompilationHint =
  #| (v) => ({
  #|   entryPoint: v.entryPoint,
  #|   layout: (v.layout === undefined ? { $tag: 0 } : { $tag: 1, _0: v.layout })
  #| })

///|
/// Convert from JsValue
pub fn GPUShaderModuleCompilationHint::from_js(
  value : JsValue,
) -> GPUShaderModuleCompilationHint {
  GPUShaderModuleCompilationHint::from_js_ffi(value)
}

///|
/// GPUPipelineErrorInit dictionary
pub(all) struct GPUPipelineErrorInit {
  reason : GPUPipelineErrorReason
}

///|
/// Create a new GPUPipelineErrorInit
pub fn GPUPipelineErrorInit::new(
  reason~ : GPUPipelineErrorReason,
) -> GPUPipelineErrorInit {
  GPUPipelineErrorInit::{ reason, }
}

///|
extern "js" fn GPUPipelineErrorInit::to_js_ffi(
  self : GPUPipelineErrorInit,
) -> JsValue =
  #| (self) => ({
  #|   reason: ['validation', 'internal'][self.reason]
  #| })

///|
/// Convert to JsValue
pub fn GPUPipelineErrorInit::to_js(self : GPUPipelineErrorInit) -> JsValue {
  GPUPipelineErrorInit::to_js_ffi(self)
}

///|
extern "js" fn GPUPipelineErrorInit::from_js_ffi(
  value : JsValue,
) -> GPUPipelineErrorInit =
  #| (v) => ({
  #|   reason: ['validation', 'internal'].indexOf(v.reason)
  #| })

///|
/// Convert from JsValue
pub fn GPUPipelineErrorInit::from_js(value : JsValue) -> GPUPipelineErrorInit {
  GPUPipelineErrorInit::from_js_ffi(value)
}

///|
/// GPUPipelineDescriptorBase dictionary
pub(all) struct GPUPipelineDescriptorBase {
  label : String?
  layout : GPUPipelineLayoutOrGPUAutoLayoutMode
}

///|
/// Create a new GPUPipelineDescriptorBase
pub fn GPUPipelineDescriptorBase::new(
  layout~ : GPUPipelineLayoutOrGPUAutoLayoutMode,
) -> GPUPipelineDescriptorBase {
  GPUPipelineDescriptorBase::{ label: None, layout, }
}

///|
extern "js" fn GPUPipelineDescriptorBase::to_js_ffi(
  self : GPUPipelineDescriptorBase,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   layout: self.layout
  #| })

///|
/// Convert to JsValue
pub fn GPUPipelineDescriptorBase::to_js(
  self : GPUPipelineDescriptorBase,
) -> JsValue {
  GPUPipelineDescriptorBase::to_js_ffi(self)
}

///|
extern "js" fn GPUPipelineDescriptorBase::from_js_ffi(
  value : JsValue,
) -> GPUPipelineDescriptorBase =
  #| (v) => ({
  #|   label: v.label,
  #|   layout: v.layout
  #| })

///|
/// Convert from JsValue
pub fn GPUPipelineDescriptorBase::from_js(
  value : JsValue,
) -> GPUPipelineDescriptorBase {
  GPUPipelineDescriptorBase::from_js_ffi(value)
}

///|
/// GPUProgrammableStage dictionary
pub(all) struct GPUProgrammableStage {
  module_ : GPUShaderModule
  entryPoint : String?
  constants : JsValue?
}

///|
/// Create a new GPUProgrammableStage
pub fn GPUProgrammableStage::new(
  module_~ : GPUShaderModule,
) -> GPUProgrammableStage {
  GPUProgrammableStage::{ module_, entryPoint: None, constants: None, }
}

///|
extern "js" fn GPUProgrammableStage::to_js_ffi(
  self : GPUProgrammableStage,
) -> JsValue =
  #| (self) => ({
  #|   module: self.module_,
  #|   entryPoint: self.entryPoint,
  #|   constants: ((() => { const v = self.constants; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn GPUProgrammableStage::to_js(self : GPUProgrammableStage) -> JsValue {
  GPUProgrammableStage::to_js_ffi(self)
}

///|
extern "js" fn GPUProgrammableStage::from_js_ffi(
  value : JsValue,
) -> GPUProgrammableStage =
  #| (v) => ({
  #|   module_: v.module,
  #|   entryPoint: v.entryPoint,
  #|   constants: (v.constants === undefined ? { $tag: 0 } : { $tag: 1, _0: v.constants })
  #| })

///|
/// Convert from JsValue
pub fn GPUProgrammableStage::from_js(value : JsValue) -> GPUProgrammableStage {
  GPUProgrammableStage::from_js_ffi(value)
}

///|
/// GPUComputePipelineDescriptor dictionary
pub(all) struct GPUComputePipelineDescriptor {
  label : String?
  layout : GPUPipelineLayoutOrGPUAutoLayoutMode
  compute : GPUProgrammableStage
}

///|
/// Create a new GPUComputePipelineDescriptor
pub fn GPUComputePipelineDescriptor::new(
  layout~ : GPUPipelineLayoutOrGPUAutoLayoutMode,
  compute~ : GPUProgrammableStage,
) -> GPUComputePipelineDescriptor {
  GPUComputePipelineDescriptor::{ label: None, layout, compute, }
}

///|
extern "js" fn GPUComputePipelineDescriptor::to_js_ffi(
  self : GPUComputePipelineDescriptor,
  convert_compute : (GPUProgrammableStage) -> JsValue,
) -> JsValue =
  #| (self, convert_compute) => ({
  #|   label: self.label,
  #|   layout: self.layout,
  #|   compute: convert_compute(self.compute)
  #| })

///|
/// Convert to JsValue
pub fn GPUComputePipelineDescriptor::to_js(
  self : GPUComputePipelineDescriptor,
) -> JsValue {
  GPUComputePipelineDescriptor::to_js_ffi(self, GPUProgrammableStage::to_js)
}

///|
extern "js" fn GPUComputePipelineDescriptor::from_js_ffi(
  value : JsValue,
  convert_compute : (JsValue) -> GPUProgrammableStage,
) -> GPUComputePipelineDescriptor =
  #| (v, convert_compute) => ({
  #|   label: v.label,
  #|   layout: v.layout,
  #|   compute: convert_compute(v.compute)
  #| })

///|
/// Convert from JsValue
pub fn GPUComputePipelineDescriptor::from_js(
  value : JsValue,
) -> GPUComputePipelineDescriptor {
  GPUComputePipelineDescriptor::from_js_ffi(
    value,
    GPUProgrammableStage::from_js,
  )
}

///|
/// GPURenderPipelineDescriptor dictionary
pub(all) struct GPURenderPipelineDescriptor {
  label : String?
  layout : GPUPipelineLayoutOrGPUAutoLayoutMode
  vertex : GPUVertexState
  primitive : GPUPrimitiveState?
  depthStencil : GPUDepthStencilState?
  multisample : GPUMultisampleState?
  fragment : GPUFragmentState?
}

///|
/// Create a new GPURenderPipelineDescriptor
pub fn GPURenderPipelineDescriptor::new(
  layout~ : GPUPipelineLayoutOrGPUAutoLayoutMode,
  vertex~ : GPUVertexState,
) -> GPURenderPipelineDescriptor {
  GPURenderPipelineDescriptor::{
    label: None,
    layout,
    vertex,
    primitive: None,
    depthStencil: None,
    multisample: None,
    fragment: None,
  }
}

///|
extern "js" fn GPURenderPipelineDescriptor::to_js_ffi(
  self : GPURenderPipelineDescriptor,
  convert_vertex : (GPUVertexState) -> JsValue,
  convert_primitive : (GPUPrimitiveState?) -> JsValue,
  convert_depthStencil : (GPUDepthStencilState?) -> JsValue,
  convert_multisample : (GPUMultisampleState?) -> JsValue,
  convert_fragment : (GPUFragmentState?) -> JsValue,
) -> JsValue =
  #| (self, convert_vertex, convert_primitive, convert_depthStencil, convert_multisample, convert_fragment) => ({
  #|   label: self.label,
  #|   layout: self.layout,
  #|   vertex: convert_vertex(self.vertex),
  #|   primitive: convert_primitive(self.primitive),
  #|   depthStencil: convert_depthStencil(self.depthStencil),
  #|   multisample: convert_multisample(self.multisample),
  #|   fragment: convert_fragment(self.fragment)
  #| })

///|
/// Convert to JsValue
pub fn GPURenderPipelineDescriptor::to_js(
  self : GPURenderPipelineDescriptor,
) -> JsValue {
  GPURenderPipelineDescriptor::to_js_ffi(
    self,
    GPUVertexState::to_js,
    fn(value) {
      match value {
        Some(value) => value.to_js()
        None => dictionary_undefined()
      }
    },
    fn(value) {
      match value {
        Some(value) => value.to_js()
        None => dictionary_undefined()
      }
    },
    fn(value) {
      match value {
        Some(value) => value.to_js()
        None => dictionary_undefined()
      }
    },
    fn(value) {
      match value {
        Some(value) => value.to_js()
        None => dictionary_undefined()
      }
    },
  )
}

///|
extern "js" fn GPURenderPipelineDescriptor::from_js_ffi(
  value : JsValue,
  convert_vertex : (JsValue) -> GPUVertexState,
  convert_primitive : (JsValue) -> GPUPrimitiveState?,
  convert_depthStencil : (JsValue) -> GPUDepthStencilState?,
  convert_multisample : (JsValue) -> GPUMultisampleState?,
  convert_fragment : (JsValue) -> GPUFragmentState?,
) -> GPURenderPipelineDescriptor =
  #| (v, convert_vertex, convert_primitive, convert_depthStencil, convert_multisample, convert_fragment) => ({
  #|   label: v.label,
  #|   layout: v.layout,
  #|   vertex: convert_vertex(v.vertex),
  #|   primitive: convert_primitive(v.primitive),
  #|   depthStencil: convert_depthStencil(v.depthStencil),
  #|   multisample: convert_multisample(v.multisample),
  #|   fragment: convert_fragment(v.fragment)
  #| })

///|
/// Convert from JsValue
pub fn GPURenderPipelineDescriptor::from_js(
  value : JsValue,
) -> GPURenderPipelineDescriptor {
  GPURenderPipelineDescriptor::from_js_ffi(
    value,
    GPUVertexState::from_js,
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(GPUPrimitiveState::from_js(value))
      }
    },
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(GPUDepthStencilState::from_js(value))
      }
    },
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(GPUMultisampleState::from_js(value))
      }
    },
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(GPUFragmentState::from_js(value))
      }
    },
  )
}

///|
/// GPUPrimitiveState dictionary
pub(all) struct GPUPrimitiveState {
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
extern "js" fn GPUPrimitiveState::to_js_ffi(
  self : GPUPrimitiveState,
) -> JsValue =
  #| (self) => ({
  #|   topology: ((() => { const v = self.topology; if (v === undefined) return undefined; return ['point-list', 'line-list', 'line-strip', 'triangle-list', 'triangle-strip'][v]; })()),
  #|   stripIndexFormat: ((() => { const v = self.stripIndexFormat; if (v === undefined) return undefined; return ['uint16', 'uint32'][v]; })()),
  #|   frontFace: ((() => { const v = self.frontFace; if (v === undefined) return undefined; return ['ccw', 'cw'][v]; })()),
  #|   cullMode: ((() => { const v = self.cullMode; if (v === undefined) return undefined; return ['none', 'front', 'back'][v]; })()),
  #|   unclippedDepth: (self.unclippedDepth === -1 ? undefined : self.unclippedDepth)
  #| })

///|
/// Convert to JsValue
pub fn GPUPrimitiveState::to_js(self : GPUPrimitiveState) -> JsValue {
  GPUPrimitiveState::to_js_ffi(self)
}

///|
extern "js" fn GPUPrimitiveState::from_js_ffi(
  value : JsValue,
) -> GPUPrimitiveState =
  #| (v) => ({
  #|   topology: (v.topology === undefined ? undefined : ['point-list', 'line-list', 'line-strip', 'triangle-list', 'triangle-strip'].indexOf(v.topology)),
  #|   stripIndexFormat: (v.stripIndexFormat === undefined ? undefined : ['uint16', 'uint32'].indexOf(v.stripIndexFormat)),
  #|   frontFace: (v.frontFace === undefined ? undefined : ['ccw', 'cw'].indexOf(v.frontFace)),
  #|   cullMode: (v.cullMode === undefined ? undefined : ['none', 'front', 'back'].indexOf(v.cullMode)),
  #|   unclippedDepth: (v.unclippedDepth === undefined ? -1 : v.unclippedDepth)
  #| })

///|
/// Convert from JsValue
pub fn GPUPrimitiveState::from_js(value : JsValue) -> GPUPrimitiveState {
  GPUPrimitiveState::from_js_ffi(value)
}

///|
/// GPUMultisampleState dictionary
pub(all) struct GPUMultisampleState {
  count : GPUSize32?
  mask : GPUSampleMask?
  alphaToCoverageEnabled : Bool?
}

///|
/// Create a new GPUMultisampleState with default values
pub fn GPUMultisampleState::default() -> GPUMultisampleState {
  GPUMultisampleState::{
    count: None,
    mask: None,
    alphaToCoverageEnabled: None,
  }
}

///|
extern "js" fn GPUMultisampleState::to_js_ffi(
  self : GPUMultisampleState,
) -> JsValue =
  #| (self) => ({
  #|   count: self.count,
  #|   mask: self.mask,
  #|   alphaToCoverageEnabled: (self.alphaToCoverageEnabled === -1 ? undefined : self.alphaToCoverageEnabled)
  #| })

///|
/// Convert to JsValue
pub fn GPUMultisampleState::to_js(self : GPUMultisampleState) -> JsValue {
  GPUMultisampleState::to_js_ffi(self)
}

///|
extern "js" fn GPUMultisampleState::from_js_ffi(
  value : JsValue,
) -> GPUMultisampleState =
  #| (v) => ({
  #|   count: v.count,
  #|   mask: v.mask,
  #|   alphaToCoverageEnabled: (v.alphaToCoverageEnabled === undefined ? -1 : v.alphaToCoverageEnabled)
  #| })

///|
/// Convert from JsValue
pub fn GPUMultisampleState::from_js(value : JsValue) -> GPUMultisampleState {
  GPUMultisampleState::from_js_ffi(value)
}

///|
/// GPUFragmentState dictionary
pub(all) struct GPUFragmentState {
  module_ : GPUShaderModule
  entryPoint : String?
  constants : JsValue?
  targets : FixedArray[JsValue]
}

///|
/// Create a new GPUFragmentState
pub fn GPUFragmentState::new(module_~ : GPUShaderModule) -> GPUFragmentState {
  GPUFragmentState::{ module_, entryPoint: None, constants: None, targets: [], }
}

///|
extern "js" fn GPUFragmentState::to_js_ffi(self : GPUFragmentState) -> JsValue =
  #| (self) => ({
  #|   module: self.module_,
  #|   entryPoint: self.entryPoint,
  #|   constants: ((() => { const v = self.constants; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   targets: self.targets
  #| })

///|
/// Convert to JsValue
pub fn GPUFragmentState::to_js(self : GPUFragmentState) -> JsValue {
  GPUFragmentState::to_js_ffi(self)
}

///|
extern "js" fn GPUFragmentState::from_js_ffi(
  value : JsValue,
) -> GPUFragmentState =
  #| (v) => ({
  #|   module_: v.module,
  #|   entryPoint: v.entryPoint,
  #|   constants: (v.constants === undefined ? { $tag: 0 } : { $tag: 1, _0: v.constants }),
  #|   targets: v.targets
  #| })

///|
/// Convert from JsValue
pub fn GPUFragmentState::from_js(value : JsValue) -> GPUFragmentState {
  GPUFragmentState::from_js_ffi(value)
}

///|
/// GPUColorTargetState dictionary
pub(all) struct GPUColorTargetState {
  format : GPUTextureFormat
  blend : GPUBlendState?
  writeMask : GPUColorWriteFlags?
}

///|
/// Create a new GPUColorTargetState
pub fn GPUColorTargetState::new(
  format~ : GPUTextureFormat,
) -> GPUColorTargetState {
  GPUColorTargetState::{ format, blend: None, writeMask: None, }
}

///|
extern "js" fn GPUColorTargetState::to_js_ffi(
  self : GPUColorTargetState,
  convert_blend : (GPUBlendState?) -> JsValue,
) -> JsValue =
  #| (self, convert_blend) => ({
  #|   format: ['r8unorm', 'r8snorm', 'r8uint', 'r8sint', 'r16unorm', 'r16snorm', 'r16uint', 'r16sint', 'r16float', 'rg8unorm', 'rg8snorm', 'rg8uint', 'rg8sint', 'r32uint', 'r32sint', 'r32float', 'rg16unorm', 'rg16snorm', 'rg16uint', 'rg16sint', 'rg16float', 'rgba8unorm', 'rgba8unorm-srgb', 'rgba8snorm', 'rgba8uint', 'rgba8sint', 'bgra8unorm', 'bgra8unorm-srgb', 'rgb9e5ufloat', 'rgb10a2uint', 'rgb10a2unorm', 'rg11b10ufloat', 'rg32uint', 'rg32sint', 'rg32float', 'rgba16unorm', 'rgba16snorm', 'rgba16uint', 'rgba16sint', 'rgba16float', 'rgba32uint', 'rgba32sint', 'rgba32float', 'stencil8', 'depth16unorm', 'depth24plus', 'depth24plus-stencil8', 'depth32float', 'depth32float-stencil8', 'bc1-rgba-unorm', 'bc1-rgba-unorm-srgb', 'bc2-rgba-unorm', 'bc2-rgba-unorm-srgb', 'bc3-rgba-unorm', 'bc3-rgba-unorm-srgb', 'bc4-r-unorm', 'bc4-r-snorm', 'bc5-rg-unorm', 'bc5-rg-snorm', 'bc6h-rgb-ufloat', 'bc6h-rgb-float', 'bc7-rgba-unorm', 'bc7-rgba-unorm-srgb', 'etc2-rgb8unorm', 'etc2-rgb8unorm-srgb', 'etc2-rgb8a1unorm', 'etc2-rgb8a1unorm-srgb', 'etc2-rgba8unorm', 'etc2-rgba8unorm-srgb', 'eac-r11unorm', 'eac-r11snorm', 'eac-rg11unorm', 'eac-rg11snorm', 'astc-4x4-unorm', 'astc-4x4-unorm-srgb', 'astc-5x4-unorm', 'astc-5x4-unorm-srgb', 'astc-5x5-unorm', 'astc-5x5-unorm-srgb', 'astc-6x5-unorm', 'astc-6x5-unorm-srgb', 'astc-6x6-unorm', 'astc-6x6-unorm-srgb', 'astc-8x5-unorm', 'astc-8x5-unorm-srgb', 'astc-8x6-unorm', 'astc-8x6-unorm-srgb', 'astc-8x8-unorm', 'astc-8x8-unorm-srgb', 'astc-10x5-unorm', 'astc-10x5-unorm-srgb', 'astc-10x6-unorm', 'astc-10x6-unorm-srgb', 'astc-10x8-unorm', 'astc-10x8-unorm-srgb', 'astc-10x10-unorm', 'astc-10x10-unorm-srgb', 'astc-12x10-unorm', 'astc-12x10-unorm-srgb', 'astc-12x12-unorm', 'astc-12x12-unorm-srgb'][self.format],
  #|   blend: convert_blend(self.blend),
  #|   writeMask: self.writeMask
  #| })

///|
/// Convert to JsValue
pub fn GPUColorTargetState::to_js(self : GPUColorTargetState) -> JsValue {
  GPUColorTargetState::to_js_ffi(self, fn(value) {
    match value {
      Some(value) => value.to_js()
      None => dictionary_undefined()
    }
  })
}

///|
extern "js" fn GPUColorTargetState::from_js_ffi(
  value : JsValue,
  convert_blend : (JsValue) -> GPUBlendState?,
) -> GPUColorTargetState =
  #| (v, convert_blend) => ({
  #|   format: ['r8unorm', 'r8snorm', 'r8uint', 'r8sint', 'r16unorm', 'r16snorm', 'r16uint', 'r16sint', 'r16float', 'rg8unorm', 'rg8snorm', 'rg8uint', 'rg8sint', 'r32uint', 'r32sint', 'r32float', 'rg16unorm', 'rg16snorm', 'rg16uint', 'rg16sint', 'rg16float', 'rgba8unorm', 'rgba8unorm-srgb', 'rgba8snorm', 'rgba8uint', 'rgba8sint', 'bgra8unorm', 'bgra8unorm-srgb', 'rgb9e5ufloat', 'rgb10a2uint', 'rgb10a2unorm', 'rg11b10ufloat', 'rg32uint', 'rg32sint', 'rg32float', 'rgba16unorm', 'rgba16snorm', 'rgba16uint', 'rgba16sint', 'rgba16float', 'rgba32uint', 'rgba32sint', 'rgba32float', 'stencil8', 'depth16unorm', 'depth24plus', 'depth24plus-stencil8', 'depth32float', 'depth32float-stencil8', 'bc1-rgba-unorm', 'bc1-rgba-unorm-srgb', 'bc2-rgba-unorm', 'bc2-rgba-unorm-srgb', 'bc3-rgba-unorm', 'bc3-rgba-unorm-srgb', 'bc4-r-unorm', 'bc4-r-snorm', 'bc5-rg-unorm', 'bc5-rg-snorm', 'bc6h-rgb-ufloat', 'bc6h-rgb-float', 'bc7-rgba-unorm', 'bc7-rgba-unorm-srgb', 'etc2-rgb8unorm', 'etc2-rgb8unorm-srgb', 'etc2-rgb8a1unorm', 'etc2-rgb8a1unorm-srgb', 'etc2-rgba8unorm', 'etc2-rgba8unorm-srgb', 'eac-r11unorm', 'eac-r11snorm', 'eac-rg11unorm', 'eac-rg11snorm', 'astc-4x4-unorm', 'astc-4x4-unorm-srgb', 'astc-5x4-unorm', 'astc-5x4-unorm-srgb', 'astc-5x5-unorm', 'astc-5x5-unorm-srgb', 'astc-6x5-unorm', 'astc-6x5-unorm-srgb', 'astc-6x6-unorm', 'astc-6x6-unorm-srgb', 'astc-8x5-unorm', 'astc-8x5-unorm-srgb', 'astc-8x6-unorm', 'astc-8x6-unorm-srgb', 'astc-8x8-unorm', 'astc-8x8-unorm-srgb', 'astc-10x5-unorm', 'astc-10x5-unorm-srgb', 'astc-10x6-unorm', 'astc-10x6-unorm-srgb', 'astc-10x8-unorm', 'astc-10x8-unorm-srgb', 'astc-10x10-unorm', 'astc-10x10-unorm-srgb', 'astc-12x10-unorm', 'astc-12x10-unorm-srgb', 'astc-12x12-unorm', 'astc-12x12-unorm-srgb'].indexOf(v.format),
  #|   blend: convert_blend(v.blend),
  #|   writeMask: v.writeMask
  #| })

///|
/// Convert from JsValue
pub fn GPUColorTargetState::from_js(value : JsValue) -> GPUColorTargetState {
  GPUColorTargetState::from_js_ffi(value, fn(value) {
    if value.is_undefined() {
      None
    } else {
      Some(GPUBlendState::from_js(value))
    }
  })
}

///|
/// GPUBlendState dictionary
pub(all) struct GPUBlendState {
  color : GPUBlendComponent
  alpha : GPUBlendComponent
}

///|
/// Create a new GPUBlendState
pub fn GPUBlendState::new(
  color~ : GPUBlendComponent,
  alpha~ : GPUBlendComponent,
) -> GPUBlendState {
  GPUBlendState::{ color, alpha, }
}

///|
extern "js" fn GPUBlendState::to_js_ffi(
  self : GPUBlendState,
  convert_color : (GPUBlendComponent) -> JsValue,
  convert_alpha : (GPUBlendComponent) -> JsValue,
) -> JsValue =
  #| (self, convert_color, convert_alpha) => ({
  #|   color: convert_color(self.color),
  #|   alpha: convert_alpha(self.alpha)
  #| })

///|
/// Convert to JsValue
pub fn GPUBlendState::to_js(self : GPUBlendState) -> JsValue {
  GPUBlendState::to_js_ffi(
    self,
    GPUBlendComponent::to_js,
    GPUBlendComponent::to_js,
  )
}

///|
extern "js" fn GPUBlendState::from_js_ffi(
  value : JsValue,
  convert_color : (JsValue) -> GPUBlendComponent,
  convert_alpha : (JsValue) -> GPUBlendComponent,
) -> GPUBlendState =
  #| (v, convert_color, convert_alpha) => ({
  #|   color: convert_color(v.color),
  #|   alpha: convert_alpha(v.alpha)
  #| })

///|
/// Convert from JsValue
pub fn GPUBlendState::from_js(value : JsValue) -> GPUBlendState {
  GPUBlendState::from_js_ffi(
    value,
    GPUBlendComponent::from_js,
    GPUBlendComponent::from_js,
  )
}

///|
/// GPUBlendComponent dictionary
pub(all) struct GPUBlendComponent {
  operation : GPUBlendOperation?
  srcFactor : GPUBlendFactor?
  dstFactor : GPUBlendFactor?
}

///|
/// Create a new GPUBlendComponent with default values
pub fn GPUBlendComponent::default() -> GPUBlendComponent {
  GPUBlendComponent::{ operation: None, srcFactor: None, dstFactor: None, }
}

///|
extern "js" fn GPUBlendComponent::to_js_ffi(
  self : GPUBlendComponent,
) -> JsValue =
  #| (self) => ({
  #|   operation: ((() => { const v = self.operation; if (v === undefined) return undefined; return ['add', 'subtract', 'reverse-subtract', 'min', 'max'][v]; })()),
  #|   srcFactor: ((() => { const v = self.srcFactor; if (v === undefined) return undefined; return ['zero', 'one', 'src', 'one-minus-src', 'src-alpha', 'one-minus-src-alpha', 'dst', 'one-minus-dst', 'dst-alpha', 'one-minus-dst-alpha', 'src-alpha-saturated', 'constant', 'one-minus-constant', 'src1', 'one-minus-src1', 'src1-alpha', 'one-minus-src1-alpha'][v]; })()),
  #|   dstFactor: ((() => { const v = self.dstFactor; if (v === undefined) return undefined; return ['zero', 'one', 'src', 'one-minus-src', 'src-alpha', 'one-minus-src-alpha', 'dst', 'one-minus-dst', 'dst-alpha', 'one-minus-dst-alpha', 'src-alpha-saturated', 'constant', 'one-minus-constant', 'src1', 'one-minus-src1', 'src1-alpha', 'one-minus-src1-alpha'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn GPUBlendComponent::to_js(self : GPUBlendComponent) -> JsValue {
  GPUBlendComponent::to_js_ffi(self)
}

///|
extern "js" fn GPUBlendComponent::from_js_ffi(
  value : JsValue,
) -> GPUBlendComponent =
  #| (v) => ({
  #|   operation: (v.operation === undefined ? undefined : ['add', 'subtract', 'reverse-subtract', 'min', 'max'].indexOf(v.operation)),
  #|   srcFactor: (v.srcFactor === undefined ? undefined : ['zero', 'one', 'src', 'one-minus-src', 'src-alpha', 'one-minus-src-alpha', 'dst', 'one-minus-dst', 'dst-alpha', 'one-minus-dst-alpha', 'src-alpha-saturated', 'constant', 'one-minus-constant', 'src1', 'one-minus-src1', 'src1-alpha', 'one-minus-src1-alpha'].indexOf(v.srcFactor)),
  #|   dstFactor: (v.dstFactor === undefined ? undefined : ['zero', 'one', 'src', 'one-minus-src', 'src-alpha', 'one-minus-src-alpha', 'dst', 'one-minus-dst', 'dst-alpha', 'one-minus-dst-alpha', 'src-alpha-saturated', 'constant', 'one-minus-constant', 'src1', 'one-minus-src1', 'src1-alpha', 'one-minus-src1-alpha'].indexOf(v.dstFactor))
  #| })

///|
/// Convert from JsValue
pub fn GPUBlendComponent::from_js(value : JsValue) -> GPUBlendComponent {
  GPUBlendComponent::from_js_ffi(value)
}

///|
/// GPUDepthStencilState dictionary
pub(all) struct GPUDepthStencilState {
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
/// Create a new GPUDepthStencilState
pub fn GPUDepthStencilState::new(
  format~ : GPUTextureFormat,
) -> GPUDepthStencilState {
  GPUDepthStencilState::{
    format,
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
extern "js" fn GPUDepthStencilState::to_js_ffi(
  self : GPUDepthStencilState,
  convert_stencilFront : (GPUStencilFaceState?) -> JsValue,
  convert_stencilBack : (GPUStencilFaceState?) -> JsValue,
) -> JsValue =
  #| (self, convert_stencilFront, convert_stencilBack) => ({
  #|   format: ['r8unorm', 'r8snorm', 'r8uint', 'r8sint', 'r16unorm', 'r16snorm', 'r16uint', 'r16sint', 'r16float', 'rg8unorm', 'rg8snorm', 'rg8uint', 'rg8sint', 'r32uint', 'r32sint', 'r32float', 'rg16unorm', 'rg16snorm', 'rg16uint', 'rg16sint', 'rg16float', 'rgba8unorm', 'rgba8unorm-srgb', 'rgba8snorm', 'rgba8uint', 'rgba8sint', 'bgra8unorm', 'bgra8unorm-srgb', 'rgb9e5ufloat', 'rgb10a2uint', 'rgb10a2unorm', 'rg11b10ufloat', 'rg32uint', 'rg32sint', 'rg32float', 'rgba16unorm', 'rgba16snorm', 'rgba16uint', 'rgba16sint', 'rgba16float', 'rgba32uint', 'rgba32sint', 'rgba32float', 'stencil8', 'depth16unorm', 'depth24plus', 'depth24plus-stencil8', 'depth32float', 'depth32float-stencil8', 'bc1-rgba-unorm', 'bc1-rgba-unorm-srgb', 'bc2-rgba-unorm', 'bc2-rgba-unorm-srgb', 'bc3-rgba-unorm', 'bc3-rgba-unorm-srgb', 'bc4-r-unorm', 'bc4-r-snorm', 'bc5-rg-unorm', 'bc5-rg-snorm', 'bc6h-rgb-ufloat', 'bc6h-rgb-float', 'bc7-rgba-unorm', 'bc7-rgba-unorm-srgb', 'etc2-rgb8unorm', 'etc2-rgb8unorm-srgb', 'etc2-rgb8a1unorm', 'etc2-rgb8a1unorm-srgb', 'etc2-rgba8unorm', 'etc2-rgba8unorm-srgb', 'eac-r11unorm', 'eac-r11snorm', 'eac-rg11unorm', 'eac-rg11snorm', 'astc-4x4-unorm', 'astc-4x4-unorm-srgb', 'astc-5x4-unorm', 'astc-5x4-unorm-srgb', 'astc-5x5-unorm', 'astc-5x5-unorm-srgb', 'astc-6x5-unorm', 'astc-6x5-unorm-srgb', 'astc-6x6-unorm', 'astc-6x6-unorm-srgb', 'astc-8x5-unorm', 'astc-8x5-unorm-srgb', 'astc-8x6-unorm', 'astc-8x6-unorm-srgb', 'astc-8x8-unorm', 'astc-8x8-unorm-srgb', 'astc-10x5-unorm', 'astc-10x5-unorm-srgb', 'astc-10x6-unorm', 'astc-10x6-unorm-srgb', 'astc-10x8-unorm', 'astc-10x8-unorm-srgb', 'astc-10x10-unorm', 'astc-10x10-unorm-srgb', 'astc-12x10-unorm', 'astc-12x10-unorm-srgb', 'astc-12x12-unorm', 'astc-12x12-unorm-srgb'][self.format],
  #|   depthWriteEnabled: (self.depthWriteEnabled === -1 ? undefined : self.depthWriteEnabled),
  #|   depthCompare: ((() => { const v = self.depthCompare; if (v === undefined) return undefined; return ['never', 'less', 'equal', 'less-equal', 'greater', 'not-equal', 'greater-equal', 'always'][v]; })()),
  #|   stencilFront: convert_stencilFront(self.stencilFront),
  #|   stencilBack: convert_stencilBack(self.stencilBack),
  #|   stencilReadMask: self.stencilReadMask,
  #|   stencilWriteMask: self.stencilWriteMask,
  #|   depthBias: self.depthBias,
  #|   depthBiasSlopeScale: ((() => { const v = self.depthBiasSlopeScale; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   depthBiasClamp: ((() => { const v = self.depthBiasClamp; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn GPUDepthStencilState::to_js(self : GPUDepthStencilState) -> JsValue {
  GPUDepthStencilState::to_js_ffi(
    self,
    fn(value) {
      match value {
        Some(value) => value.to_js()
        None => dictionary_undefined()
      }
    },
    fn(value) {
      match value {
        Some(value) => value.to_js()
        None => dictionary_undefined()
      }
    },
  )
}

///|
extern "js" fn GPUDepthStencilState::from_js_ffi(
  value : JsValue,
  convert_stencilFront : (JsValue) -> GPUStencilFaceState?,
  convert_stencilBack : (JsValue) -> GPUStencilFaceState?,
) -> GPUDepthStencilState =
  #| (v, convert_stencilFront, convert_stencilBack) => ({
  #|   format: ['r8unorm', 'r8snorm', 'r8uint', 'r8sint', 'r16unorm', 'r16snorm', 'r16uint', 'r16sint', 'r16float', 'rg8unorm', 'rg8snorm', 'rg8uint', 'rg8sint', 'r32uint', 'r32sint', 'r32float', 'rg16unorm', 'rg16snorm', 'rg16uint', 'rg16sint', 'rg16float', 'rgba8unorm', 'rgba8unorm-srgb', 'rgba8snorm', 'rgba8uint', 'rgba8sint', 'bgra8unorm', 'bgra8unorm-srgb', 'rgb9e5ufloat', 'rgb10a2uint', 'rgb10a2unorm', 'rg11b10ufloat', 'rg32uint', 'rg32sint', 'rg32float', 'rgba16unorm', 'rgba16snorm', 'rgba16uint', 'rgba16sint', 'rgba16float', 'rgba32uint', 'rgba32sint', 'rgba32float', 'stencil8', 'depth16unorm', 'depth24plus', 'depth24plus-stencil8', 'depth32float', 'depth32float-stencil8', 'bc1-rgba-unorm', 'bc1-rgba-unorm-srgb', 'bc2-rgba-unorm', 'bc2-rgba-unorm-srgb', 'bc3-rgba-unorm', 'bc3-rgba-unorm-srgb', 'bc4-r-unorm', 'bc4-r-snorm', 'bc5-rg-unorm', 'bc5-rg-snorm', 'bc6h-rgb-ufloat', 'bc6h-rgb-float', 'bc7-rgba-unorm', 'bc7-rgba-unorm-srgb', 'etc2-rgb8unorm', 'etc2-rgb8unorm-srgb', 'etc2-rgb8a1unorm', 'etc2-rgb8a1unorm-srgb', 'etc2-rgba8unorm', 'etc2-rgba8unorm-srgb', 'eac-r11unorm', 'eac-r11snorm', 'eac-rg11unorm', 'eac-rg11snorm', 'astc-4x4-unorm', 'astc-4x4-unorm-srgb', 'astc-5x4-unorm', 'astc-5x4-unorm-srgb', 'astc-5x5-unorm', 'astc-5x5-unorm-srgb', 'astc-6x5-unorm', 'astc-6x5-unorm-srgb', 'astc-6x6-unorm', 'astc-6x6-unorm-srgb', 'astc-8x5-unorm', 'astc-8x5-unorm-srgb', 'astc-8x6-unorm', 'astc-8x6-unorm-srgb', 'astc-8x8-unorm', 'astc-8x8-unorm-srgb', 'astc-10x5-unorm', 'astc-10x5-unorm-srgb', 'astc-10x6-unorm', 'astc-10x6-unorm-srgb', 'astc-10x8-unorm', 'astc-10x8-unorm-srgb', 'astc-10x10-unorm', 'astc-10x10-unorm-srgb', 'astc-12x10-unorm', 'astc-12x10-unorm-srgb', 'astc-12x12-unorm', 'astc-12x12-unorm-srgb'].indexOf(v.format),
  #|   depthWriteEnabled: (v.depthWriteEnabled === undefined ? -1 : v.depthWriteEnabled),
  #|   depthCompare: (v.depthCompare === undefined ? undefined : ['never', 'less', 'equal', 'less-equal', 'greater', 'not-equal', 'greater-equal', 'always'].indexOf(v.depthCompare)),
  #|   stencilFront: convert_stencilFront(v.stencilFront),
  #|   stencilBack: convert_stencilBack(v.stencilBack),
  #|   stencilReadMask: v.stencilReadMask,
  #|   stencilWriteMask: v.stencilWriteMask,
  #|   depthBias: v.depthBias,
  #|   depthBiasSlopeScale: (v.depthBiasSlopeScale === undefined ? { $tag: 0 } : { $tag: 1, _0: v.depthBiasSlopeScale }),
  #|   depthBiasClamp: (v.depthBiasClamp === undefined ? { $tag: 0 } : { $tag: 1, _0: v.depthBiasClamp })
  #| })

///|
/// Convert from JsValue
pub fn GPUDepthStencilState::from_js(value : JsValue) -> GPUDepthStencilState {
  GPUDepthStencilState::from_js_ffi(
    value,
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(GPUStencilFaceState::from_js(value))
      }
    },
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(GPUStencilFaceState::from_js(value))
      }
    },
  )
}

///|
/// GPUStencilFaceState dictionary
pub(all) struct GPUStencilFaceState {
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
extern "js" fn GPUStencilFaceState::to_js_ffi(
  self : GPUStencilFaceState,
) -> JsValue =
  #| (self) => ({
  #|   compare: ((() => { const v = self.compare; if (v === undefined) return undefined; return ['never', 'less', 'equal', 'less-equal', 'greater', 'not-equal', 'greater-equal', 'always'][v]; })()),
  #|   failOp: ((() => { const v = self.failOp; if (v === undefined) return undefined; return ['keep', 'zero', 'replace', 'invert', 'increment-clamp', 'decrement-clamp', 'increment-wrap', 'decrement-wrap'][v]; })()),
  #|   depthFailOp: ((() => { const v = self.depthFailOp; if (v === undefined) return undefined; return ['keep', 'zero', 'replace', 'invert', 'increment-clamp', 'decrement-clamp', 'increment-wrap', 'decrement-wrap'][v]; })()),
  #|   passOp: ((() => { const v = self.passOp; if (v === undefined) return undefined; return ['keep', 'zero', 'replace', 'invert', 'increment-clamp', 'decrement-clamp', 'increment-wrap', 'decrement-wrap'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn GPUStencilFaceState::to_js(self : GPUStencilFaceState) -> JsValue {
  GPUStencilFaceState::to_js_ffi(self)
}

///|
extern "js" fn GPUStencilFaceState::from_js_ffi(
  value : JsValue,
) -> GPUStencilFaceState =
  #| (v) => ({
  #|   compare: (v.compare === undefined ? undefined : ['never', 'less', 'equal', 'less-equal', 'greater', 'not-equal', 'greater-equal', 'always'].indexOf(v.compare)),
  #|   failOp: (v.failOp === undefined ? undefined : ['keep', 'zero', 'replace', 'invert', 'increment-clamp', 'decrement-clamp', 'increment-wrap', 'decrement-wrap'].indexOf(v.failOp)),
  #|   depthFailOp: (v.depthFailOp === undefined ? undefined : ['keep', 'zero', 'replace', 'invert', 'increment-clamp', 'decrement-clamp', 'increment-wrap', 'decrement-wrap'].indexOf(v.depthFailOp)),
  #|   passOp: (v.passOp === undefined ? undefined : ['keep', 'zero', 'replace', 'invert', 'increment-clamp', 'decrement-clamp', 'increment-wrap', 'decrement-wrap'].indexOf(v.passOp))
  #| })

///|
/// Convert from JsValue
pub fn GPUStencilFaceState::from_js(value : JsValue) -> GPUStencilFaceState {
  GPUStencilFaceState::from_js_ffi(value)
}

///|
/// GPUVertexState dictionary
pub(all) struct GPUVertexState {
  module_ : GPUShaderModule
  entryPoint : String?
  constants : JsValue?
  buffers : FixedArray[JsValue]?
}

///|
/// Create a new GPUVertexState
pub fn GPUVertexState::new(module_~ : GPUShaderModule) -> GPUVertexState {
  GPUVertexState::{ module_, entryPoint: None, constants: None, buffers: None, }
}

///|
extern "js" fn GPUVertexState::to_js_ffi(self : GPUVertexState) -> JsValue =
  #| (self) => ({
  #|   module: self.module_,
  #|   entryPoint: self.entryPoint,
  #|   constants: ((() => { const v = self.constants; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   buffers: self.buffers
  #| })

///|
/// Convert to JsValue
pub fn GPUVertexState::to_js(self : GPUVertexState) -> JsValue {
  GPUVertexState::to_js_ffi(self)
}

///|
extern "js" fn GPUVertexState::from_js_ffi(value : JsValue) -> GPUVertexState =
  #| (v) => ({
  #|   module_: v.module,
  #|   entryPoint: v.entryPoint,
  #|   constants: (v.constants === undefined ? { $tag: 0 } : { $tag: 1, _0: v.constants }),
  #|   buffers: v.buffers
  #| })

///|
/// Convert from JsValue
pub fn GPUVertexState::from_js(value : JsValue) -> GPUVertexState {
  GPUVertexState::from_js_ffi(value)
}

///|
/// GPUVertexBufferLayout dictionary
pub(all) struct GPUVertexBufferLayout {
  arrayStride : GPUSize64
  stepMode : GPUVertexStepMode?
  attributes : FixedArray[GPUVertexAttribute]
}

///|
/// Create a new GPUVertexBufferLayout
pub fn GPUVertexBufferLayout::new(
  arrayStride~ : GPUSize64,
) -> GPUVertexBufferLayout {
  GPUVertexBufferLayout::{ arrayStride, stepMode: None, attributes: [], }
}

///|
extern "js" fn GPUVertexBufferLayout::to_js_ffi(
  self : GPUVertexBufferLayout,
) -> JsValue =
  #| (self) => ({
  #|   arrayStride: ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(self.arrayStride),
  #|   stepMode: ((() => { const v = self.stepMode; if (v === undefined) return undefined; return ['vertex', 'instance'][v]; })()),
  #|   attributes: self.attributes
  #| })

///|
/// Convert to JsValue
pub fn GPUVertexBufferLayout::to_js(self : GPUVertexBufferLayout) -> JsValue {
  GPUVertexBufferLayout::to_js_ffi(self)
}

///|
extern "js" fn GPUVertexBufferLayout::from_js_ffi(
  value : JsValue,
) -> GPUVertexBufferLayout =
  #| (v) => ({
  #|   arrayStride: ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.arrayStride),
  #|   stepMode: (v.stepMode === undefined ? undefined : ['vertex', 'instance'].indexOf(v.stepMode)),
  #|   attributes: v.attributes
  #| })

///|
/// Convert from JsValue
pub fn GPUVertexBufferLayout::from_js(value : JsValue) -> GPUVertexBufferLayout {
  GPUVertexBufferLayout::from_js_ffi(value)
}

///|
/// Catch dictionary conversion errors, including unsafe integer ranges.
pub fn GPUVertexBufferLayout::to_js_checked(
  self : GPUVertexBufferLayout,
) -> Result[JsValue, JsError] {
  try_dictionary_conversion(() => self.to_js())
}

///|
extern "js" fn try_dictionary_GPUVertexBufferLayout(
  convert : () -> GPUVertexBufferLayout,
) -> Result[GPUVertexBufferLayout, JsError] =
  #| convert => { try { return { $tag: 1, _0: convert() }; } catch (error) { return { $tag: 0, _0: error }; } }

///|
/// Catch invalid host fields, including unsafe integer ranges.
pub fn GPUVertexBufferLayout::from_js_checked(
  value : JsValue,
) -> Result[GPUVertexBufferLayout, JsError] {
  try_dictionary_GPUVertexBufferLayout(() => {
    GPUVertexBufferLayout::from_js(value)
  })
}

///|
/// GPUVertexAttribute dictionary
pub(all) struct GPUVertexAttribute {
  format : GPUVertexFormat
  offset : GPUSize64
  shaderLocation : GPUIndex32
}

///|
/// Create a new GPUVertexAttribute
pub fn GPUVertexAttribute::new(
  format~ : GPUVertexFormat,
  offset~ : GPUSize64,
  shaderLocation~ : GPUIndex32,
) -> GPUVertexAttribute {
  GPUVertexAttribute::{ format, offset, shaderLocation, }
}

///|
extern "js" fn GPUVertexAttribute::to_js_ffi(
  self : GPUVertexAttribute,
) -> JsValue =
  #| (self) => ({
  #|   format: ['uint8', 'uint8x2', 'uint8x4', 'sint8', 'sint8x2', 'sint8x4', 'unorm8', 'unorm8x2', 'unorm8x4', 'snorm8', 'snorm8x2', 'snorm8x4', 'uint16', 'uint16x2', 'uint16x4', 'sint16', 'sint16x2', 'sint16x4', 'unorm16', 'unorm16x2', 'unorm16x4', 'snorm16', 'snorm16x2', 'snorm16x4', 'float16', 'float16x2', 'float16x4', 'float32', 'float32x2', 'float32x3', 'float32x4', 'uint32', 'uint32x2', 'uint32x3', 'uint32x4', 'sint32', 'sint32x2', 'sint32x3', 'sint32x4', 'unorm10-10-10-2', 'unorm8x4-bgra'][self.format],
  #|   offset: ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(self.offset),
  #|   shaderLocation: self.shaderLocation
  #| })

///|
/// Convert to JsValue
pub fn GPUVertexAttribute::to_js(self : GPUVertexAttribute) -> JsValue {
  GPUVertexAttribute::to_js_ffi(self)
}

///|
extern "js" fn GPUVertexAttribute::from_js_ffi(
  value : JsValue,
) -> GPUVertexAttribute =
  #| (v) => ({
  #|   format: ['uint8', 'uint8x2', 'uint8x4', 'sint8', 'sint8x2', 'sint8x4', 'unorm8', 'unorm8x2', 'unorm8x4', 'snorm8', 'snorm8x2', 'snorm8x4', 'uint16', 'uint16x2', 'uint16x4', 'sint16', 'sint16x2', 'sint16x4', 'unorm16', 'unorm16x2', 'unorm16x4', 'snorm16', 'snorm16x2', 'snorm16x4', 'float16', 'float16x2', 'float16x4', 'float32', 'float32x2', 'float32x3', 'float32x4', 'uint32', 'uint32x2', 'uint32x3', 'uint32x4', 'sint32', 'sint32x2', 'sint32x3', 'sint32x4', 'unorm10-10-10-2', 'unorm8x4-bgra'].indexOf(v.format),
  #|   offset: ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.offset),
  #|   shaderLocation: v.shaderLocation
  #| })

///|
/// Convert from JsValue
pub fn GPUVertexAttribute::from_js(value : JsValue) -> GPUVertexAttribute {
  GPUVertexAttribute::from_js_ffi(value)
}

///|
/// Catch dictionary conversion errors, including unsafe integer ranges.
pub fn GPUVertexAttribute::to_js_checked(
  self : GPUVertexAttribute,
) -> Result[JsValue, JsError] {
  try_dictionary_conversion(() => self.to_js())
}

///|
extern "js" fn try_dictionary_GPUVertexAttribute(
  convert : () -> GPUVertexAttribute,
) -> Result[GPUVertexAttribute, JsError] =
  #| convert => { try { return { $tag: 1, _0: convert() }; } catch (error) { return { $tag: 0, _0: error }; } }

///|
/// Catch invalid host fields, including unsafe integer ranges.
pub fn GPUVertexAttribute::from_js_checked(
  value : JsValue,
) -> Result[GPUVertexAttribute, JsError] {
  try_dictionary_GPUVertexAttribute(() => GPUVertexAttribute::from_js(value))
}

///|
/// GPUTexelCopyBufferLayout dictionary
pub(all) struct GPUTexelCopyBufferLayout {
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
extern "js" fn GPUTexelCopyBufferLayout::to_js_ffi(
  self : GPUTexelCopyBufferLayout,
) -> JsValue =
  #| (self) => ({
  #|   offset: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.offset),
  #|   bytesPerRow: self.bytesPerRow,
  #|   rowsPerImage: self.rowsPerImage
  #| })

///|
/// Convert to JsValue
pub fn GPUTexelCopyBufferLayout::to_js(
  self : GPUTexelCopyBufferLayout,
) -> JsValue {
  GPUTexelCopyBufferLayout::to_js_ffi(self)
}

///|
extern "js" fn GPUTexelCopyBufferLayout::from_js_ffi(
  value : JsValue,
) -> GPUTexelCopyBufferLayout =
  #| (v) => ({
  #|   offset: (v.offset === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.offset)),
  #|   bytesPerRow: v.bytesPerRow,
  #|   rowsPerImage: v.rowsPerImage
  #| })

///|
/// Convert from JsValue
pub fn GPUTexelCopyBufferLayout::from_js(
  value : JsValue,
) -> GPUTexelCopyBufferLayout {
  GPUTexelCopyBufferLayout::from_js_ffi(value)
}

///|
/// Catch dictionary conversion errors, including unsafe integer ranges.
pub fn GPUTexelCopyBufferLayout::to_js_checked(
  self : GPUTexelCopyBufferLayout,
) -> Result[JsValue, JsError] {
  try_dictionary_conversion(() => self.to_js())
}

///|
extern "js" fn try_dictionary_GPUTexelCopyBufferLayout(
  convert : () -> GPUTexelCopyBufferLayout,
) -> Result[GPUTexelCopyBufferLayout, JsError] =
  #| convert => { try { return { $tag: 1, _0: convert() }; } catch (error) { return { $tag: 0, _0: error }; } }

///|
/// Catch invalid host fields, including unsafe integer ranges.
pub fn GPUTexelCopyBufferLayout::from_js_checked(
  value : JsValue,
) -> Result[GPUTexelCopyBufferLayout, JsError] {
  try_dictionary_GPUTexelCopyBufferLayout(() => {
    GPUTexelCopyBufferLayout::from_js(value)
  })
}

///|
/// GPUTexelCopyBufferInfo dictionary
pub(all) struct GPUTexelCopyBufferInfo {
  offset : GPUSize64?
  bytesPerRow : GPUSize32?
  rowsPerImage : GPUSize32?
  buffer : GPUBuffer
}

///|
/// Create a new GPUTexelCopyBufferInfo
pub fn GPUTexelCopyBufferInfo::new(
  buffer~ : GPUBuffer,
) -> GPUTexelCopyBufferInfo {
  GPUTexelCopyBufferInfo::{
    offset: None,
    bytesPerRow: None,
    rowsPerImage: None,
    buffer,
  }
}

///|
extern "js" fn GPUTexelCopyBufferInfo::to_js_ffi(
  self : GPUTexelCopyBufferInfo,
) -> JsValue =
  #| (self) => ({
  #|   offset: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.offset),
  #|   bytesPerRow: self.bytesPerRow,
  #|   rowsPerImage: self.rowsPerImage,
  #|   buffer: self.buffer
  #| })

///|
/// Convert to JsValue
pub fn GPUTexelCopyBufferInfo::to_js(self : GPUTexelCopyBufferInfo) -> JsValue {
  GPUTexelCopyBufferInfo::to_js_ffi(self)
}

///|
extern "js" fn GPUTexelCopyBufferInfo::from_js_ffi(
  value : JsValue,
) -> GPUTexelCopyBufferInfo =
  #| (v) => ({
  #|   offset: (v.offset === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.offset)),
  #|   bytesPerRow: v.bytesPerRow,
  #|   rowsPerImage: v.rowsPerImage,
  #|   buffer: v.buffer
  #| })

///|
/// Convert from JsValue
pub fn GPUTexelCopyBufferInfo::from_js(
  value : JsValue,
) -> GPUTexelCopyBufferInfo {
  GPUTexelCopyBufferInfo::from_js_ffi(value)
}

///|
/// Catch dictionary conversion errors, including unsafe integer ranges.
pub fn GPUTexelCopyBufferInfo::to_js_checked(
  self : GPUTexelCopyBufferInfo,
) -> Result[JsValue, JsError] {
  try_dictionary_conversion(() => self.to_js())
}

///|
extern "js" fn try_dictionary_GPUTexelCopyBufferInfo(
  convert : () -> GPUTexelCopyBufferInfo,
) -> Result[GPUTexelCopyBufferInfo, JsError] =
  #| convert => { try { return { $tag: 1, _0: convert() }; } catch (error) { return { $tag: 0, _0: error }; } }

///|
/// Catch invalid host fields, including unsafe integer ranges.
pub fn GPUTexelCopyBufferInfo::from_js_checked(
  value : JsValue,
) -> Result[GPUTexelCopyBufferInfo, JsError] {
  try_dictionary_GPUTexelCopyBufferInfo(() => {
    GPUTexelCopyBufferInfo::from_js(value)
  })
}

///|
/// GPUTexelCopyTextureInfo dictionary
pub(all) struct GPUTexelCopyTextureInfo {
  texture : GPUTexture
  mipLevel : GPUIntegerCoordinate?
  origin : GPUOrigin3D?
  aspect : GPUTextureAspect?
}

///|
/// Create a new GPUTexelCopyTextureInfo
pub fn GPUTexelCopyTextureInfo::new(
  texture~ : GPUTexture,
) -> GPUTexelCopyTextureInfo {
  GPUTexelCopyTextureInfo::{
    texture,
    mipLevel: None,
    origin: None,
    aspect: None,
  }
}

///|
extern "js" fn GPUTexelCopyTextureInfo::to_js_ffi(
  self : GPUTexelCopyTextureInfo,
) -> JsValue =
  #| (self) => ({
  #|   texture: self.texture,
  #|   mipLevel: self.mipLevel,
  #|   origin: ((() => { const v = self.origin; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   aspect: ((() => { const v = self.aspect; if (v === undefined) return undefined; return ['all', 'stencil-only', 'depth-only'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn GPUTexelCopyTextureInfo::to_js(
  self : GPUTexelCopyTextureInfo,
) -> JsValue {
  GPUTexelCopyTextureInfo::to_js_ffi(self)
}

///|
extern "js" fn GPUTexelCopyTextureInfo::from_js_ffi(
  value : JsValue,
) -> GPUTexelCopyTextureInfo =
  #| (v) => ({
  #|   texture: v.texture,
  #|   mipLevel: v.mipLevel,
  #|   origin: (v.origin === undefined ? { $tag: 0 } : { $tag: 1, _0: v.origin }),
  #|   aspect: (v.aspect === undefined ? undefined : ['all', 'stencil-only', 'depth-only'].indexOf(v.aspect))
  #| })

///|
/// Convert from JsValue
pub fn GPUTexelCopyTextureInfo::from_js(
  value : JsValue,
) -> GPUTexelCopyTextureInfo {
  GPUTexelCopyTextureInfo::from_js_ffi(value)
}

///|
/// GPUCopyExternalImageDestInfo dictionary
pub(all) struct GPUCopyExternalImageDestInfo {
  texture : GPUTexture
  mipLevel : GPUIntegerCoordinate?
  origin : GPUOrigin3D?
  aspect : GPUTextureAspect?
  colorSpace : PredefinedColorSpace?
  premultipliedAlpha : Bool?
}

///|
/// Create a new GPUCopyExternalImageDestInfo
pub fn GPUCopyExternalImageDestInfo::new(
  texture~ : GPUTexture,
) -> GPUCopyExternalImageDestInfo {
  GPUCopyExternalImageDestInfo::{
    texture,
    mipLevel: None,
    origin: None,
    aspect: None,
    colorSpace: None,
    premultipliedAlpha: None,
  }
}

///|
extern "js" fn GPUCopyExternalImageDestInfo::to_js_ffi(
  self : GPUCopyExternalImageDestInfo,
) -> JsValue =
  #| (self) => ({
  #|   texture: self.texture,
  #|   mipLevel: self.mipLevel,
  #|   origin: ((() => { const v = self.origin; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   aspect: ((() => { const v = self.aspect; if (v === undefined) return undefined; return ['all', 'stencil-only', 'depth-only'][v]; })()),
  #|   colorSpace: ((() => { const v = self.colorSpace; if (v === undefined) return undefined; return ['srgb', 'srgb-linear', 'display-p3', 'display-p3-linear'][v]; })()),
  #|   premultipliedAlpha: (self.premultipliedAlpha === -1 ? undefined : self.premultipliedAlpha)
  #| })

///|
/// Convert to JsValue
pub fn GPUCopyExternalImageDestInfo::to_js(
  self : GPUCopyExternalImageDestInfo,
) -> JsValue {
  GPUCopyExternalImageDestInfo::to_js_ffi(self)
}

///|
extern "js" fn GPUCopyExternalImageDestInfo::from_js_ffi(
  value : JsValue,
) -> GPUCopyExternalImageDestInfo =
  #| (v) => ({
  #|   texture: v.texture,
  #|   mipLevel: v.mipLevel,
  #|   origin: (v.origin === undefined ? { $tag: 0 } : { $tag: 1, _0: v.origin }),
  #|   aspect: (v.aspect === undefined ? undefined : ['all', 'stencil-only', 'depth-only'].indexOf(v.aspect)),
  #|   colorSpace: (v.colorSpace === undefined ? undefined : ['srgb', 'srgb-linear', 'display-p3', 'display-p3-linear'].indexOf(v.colorSpace)),
  #|   premultipliedAlpha: (v.premultipliedAlpha === undefined ? -1 : v.premultipliedAlpha)
  #| })

///|
/// Convert from JsValue
pub fn GPUCopyExternalImageDestInfo::from_js(
  value : JsValue,
) -> GPUCopyExternalImageDestInfo {
  GPUCopyExternalImageDestInfo::from_js_ffi(value)
}

///|
/// GPUCopyExternalImageSourceInfo dictionary
pub(all) struct GPUCopyExternalImageSourceInfo {
  source : GPUCopyExternalImageSource
  origin : GPUOrigin2D?
  flipY : Bool?
}

///|
/// Create a new GPUCopyExternalImageSourceInfo
pub fn GPUCopyExternalImageSourceInfo::new(
  source~ : GPUCopyExternalImageSource,
) -> GPUCopyExternalImageSourceInfo {
  GPUCopyExternalImageSourceInfo::{ source, origin: None, flipY: None, }
}

///|
extern "js" fn GPUCopyExternalImageSourceInfo::to_js_ffi(
  self : GPUCopyExternalImageSourceInfo,
) -> JsValue =
  #| (self) => ({
  #|   source: self.source,
  #|   origin: ((() => { const v = self.origin; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   flipY: (self.flipY === -1 ? undefined : self.flipY)
  #| })

///|
/// Convert to JsValue
pub fn GPUCopyExternalImageSourceInfo::to_js(
  self : GPUCopyExternalImageSourceInfo,
) -> JsValue {
  GPUCopyExternalImageSourceInfo::to_js_ffi(self)
}

///|
extern "js" fn GPUCopyExternalImageSourceInfo::from_js_ffi(
  value : JsValue,
) -> GPUCopyExternalImageSourceInfo =
  #| (v) => ({
  #|   source: v.source,
  #|   origin: (v.origin === undefined ? { $tag: 0 } : { $tag: 1, _0: v.origin }),
  #|   flipY: (v.flipY === undefined ? -1 : v.flipY)
  #| })

///|
/// Convert from JsValue
pub fn GPUCopyExternalImageSourceInfo::from_js(
  value : JsValue,
) -> GPUCopyExternalImageSourceInfo {
  GPUCopyExternalImageSourceInfo::from_js_ffi(value)
}

///|
/// GPUCommandBufferDescriptor dictionary
pub(all) struct GPUCommandBufferDescriptor {
  label : String?
}

///|
/// Create a new GPUCommandBufferDescriptor with default values
pub fn GPUCommandBufferDescriptor::default() -> GPUCommandBufferDescriptor {
  GPUCommandBufferDescriptor::{ label: None, }
}

///|
extern "js" fn GPUCommandBufferDescriptor::to_js_ffi(
  self : GPUCommandBufferDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label
  #| })

///|
/// Convert to JsValue
pub fn GPUCommandBufferDescriptor::to_js(
  self : GPUCommandBufferDescriptor,
) -> JsValue {
  GPUCommandBufferDescriptor::to_js_ffi(self)
}

///|
extern "js" fn GPUCommandBufferDescriptor::from_js_ffi(
  value : JsValue,
) -> GPUCommandBufferDescriptor =
  #| (v) => ({
  #|   label: v.label
  #| })

///|
/// Convert from JsValue
pub fn GPUCommandBufferDescriptor::from_js(
  value : JsValue,
) -> GPUCommandBufferDescriptor {
  GPUCommandBufferDescriptor::from_js_ffi(value)
}

///|
/// GPUCommandEncoderDescriptor dictionary
pub(all) struct GPUCommandEncoderDescriptor {
  label : String?
}

///|
/// Create a new GPUCommandEncoderDescriptor with default values
pub fn GPUCommandEncoderDescriptor::default() -> GPUCommandEncoderDescriptor {
  GPUCommandEncoderDescriptor::{ label: None, }
}

///|
extern "js" fn GPUCommandEncoderDescriptor::to_js_ffi(
  self : GPUCommandEncoderDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label
  #| })

///|
/// Convert to JsValue
pub fn GPUCommandEncoderDescriptor::to_js(
  self : GPUCommandEncoderDescriptor,
) -> JsValue {
  GPUCommandEncoderDescriptor::to_js_ffi(self)
}

///|
extern "js" fn GPUCommandEncoderDescriptor::from_js_ffi(
  value : JsValue,
) -> GPUCommandEncoderDescriptor =
  #| (v) => ({
  #|   label: v.label
  #| })

///|
/// Convert from JsValue
pub fn GPUCommandEncoderDescriptor::from_js(
  value : JsValue,
) -> GPUCommandEncoderDescriptor {
  GPUCommandEncoderDescriptor::from_js_ffi(value)
}

///|
/// GPUComputePassTimestampWrites dictionary
pub(all) struct GPUComputePassTimestampWrites {
  querySet : GPUQuerySet
  beginningOfPassWriteIndex : GPUSize32?
  endOfPassWriteIndex : GPUSize32?
}

///|
/// Create a new GPUComputePassTimestampWrites
pub fn GPUComputePassTimestampWrites::new(
  querySet~ : GPUQuerySet,
) -> GPUComputePassTimestampWrites {
  GPUComputePassTimestampWrites::{
    querySet,
    beginningOfPassWriteIndex: None,
    endOfPassWriteIndex: None,
  }
}

///|
extern "js" fn GPUComputePassTimestampWrites::to_js_ffi(
  self : GPUComputePassTimestampWrites,
) -> JsValue =
  #| (self) => ({
  #|   querySet: self.querySet,
  #|   beginningOfPassWriteIndex: self.beginningOfPassWriteIndex,
  #|   endOfPassWriteIndex: self.endOfPassWriteIndex
  #| })

///|
/// Convert to JsValue
pub fn GPUComputePassTimestampWrites::to_js(
  self : GPUComputePassTimestampWrites,
) -> JsValue {
  GPUComputePassTimestampWrites::to_js_ffi(self)
}

///|
extern "js" fn GPUComputePassTimestampWrites::from_js_ffi(
  value : JsValue,
) -> GPUComputePassTimestampWrites =
  #| (v) => ({
  #|   querySet: v.querySet,
  #|   beginningOfPassWriteIndex: v.beginningOfPassWriteIndex,
  #|   endOfPassWriteIndex: v.endOfPassWriteIndex
  #| })

///|
/// Convert from JsValue
pub fn GPUComputePassTimestampWrites::from_js(
  value : JsValue,
) -> GPUComputePassTimestampWrites {
  GPUComputePassTimestampWrites::from_js_ffi(value)
}

///|
/// GPUComputePassDescriptor dictionary
pub(all) struct GPUComputePassDescriptor {
  label : String?
  timestampWrites : GPUComputePassTimestampWrites?
}

///|
/// Create a new GPUComputePassDescriptor with default values
pub fn GPUComputePassDescriptor::default() -> GPUComputePassDescriptor {
  GPUComputePassDescriptor::{ label: None, timestampWrites: None, }
}

///|
extern "js" fn GPUComputePassDescriptor::to_js_ffi(
  self : GPUComputePassDescriptor,
  convert_timestampWrites : (GPUComputePassTimestampWrites?) -> JsValue,
) -> JsValue =
  #| (self, convert_timestampWrites) => ({
  #|   label: self.label,
  #|   timestampWrites: convert_timestampWrites(self.timestampWrites)
  #| })

///|
/// Convert to JsValue
pub fn GPUComputePassDescriptor::to_js(
  self : GPUComputePassDescriptor,
) -> JsValue {
  GPUComputePassDescriptor::to_js_ffi(self, fn(value) {
    match value {
      Some(value) => value.to_js()
      None => dictionary_undefined()
    }
  })
}

///|
extern "js" fn GPUComputePassDescriptor::from_js_ffi(
  value : JsValue,
  convert_timestampWrites : (JsValue) -> GPUComputePassTimestampWrites?,
) -> GPUComputePassDescriptor =
  #| (v, convert_timestampWrites) => ({
  #|   label: v.label,
  #|   timestampWrites: convert_timestampWrites(v.timestampWrites)
  #| })

///|
/// Convert from JsValue
pub fn GPUComputePassDescriptor::from_js(
  value : JsValue,
) -> GPUComputePassDescriptor {
  GPUComputePassDescriptor::from_js_ffi(value, fn(value) {
    if value.is_undefined() {
      None
    } else {
      Some(GPUComputePassTimestampWrites::from_js(value))
    }
  })
}

///|
/// GPURenderPassTimestampWrites dictionary
pub(all) struct GPURenderPassTimestampWrites {
  querySet : GPUQuerySet
  beginningOfPassWriteIndex : GPUSize32?
  endOfPassWriteIndex : GPUSize32?
}

///|
/// Create a new GPURenderPassTimestampWrites
pub fn GPURenderPassTimestampWrites::new(
  querySet~ : GPUQuerySet,
) -> GPURenderPassTimestampWrites {
  GPURenderPassTimestampWrites::{
    querySet,
    beginningOfPassWriteIndex: None,
    endOfPassWriteIndex: None,
  }
}

///|
extern "js" fn GPURenderPassTimestampWrites::to_js_ffi(
  self : GPURenderPassTimestampWrites,
) -> JsValue =
  #| (self) => ({
  #|   querySet: self.querySet,
  #|   beginningOfPassWriteIndex: self.beginningOfPassWriteIndex,
  #|   endOfPassWriteIndex: self.endOfPassWriteIndex
  #| })

///|
/// Convert to JsValue
pub fn GPURenderPassTimestampWrites::to_js(
  self : GPURenderPassTimestampWrites,
) -> JsValue {
  GPURenderPassTimestampWrites::to_js_ffi(self)
}

///|
extern "js" fn GPURenderPassTimestampWrites::from_js_ffi(
  value : JsValue,
) -> GPURenderPassTimestampWrites =
  #| (v) => ({
  #|   querySet: v.querySet,
  #|   beginningOfPassWriteIndex: v.beginningOfPassWriteIndex,
  #|   endOfPassWriteIndex: v.endOfPassWriteIndex
  #| })

///|
/// Convert from JsValue
pub fn GPURenderPassTimestampWrites::from_js(
  value : JsValue,
) -> GPURenderPassTimestampWrites {
  GPURenderPassTimestampWrites::from_js_ffi(value)
}

///|
/// GPURenderPassDescriptor dictionary
pub(all) struct GPURenderPassDescriptor {
  label : String?
  colorAttachments : FixedArray[JsValue]
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
extern "js" fn GPURenderPassDescriptor::to_js_ffi(
  self : GPURenderPassDescriptor,
  convert_depthStencilAttachment : (GPURenderPassDepthStencilAttachment?) -> JsValue,
  convert_timestampWrites : (GPURenderPassTimestampWrites?) -> JsValue,
) -> JsValue =
  #| (self, convert_depthStencilAttachment, convert_timestampWrites) => ({
  #|   label: self.label,
  #|   colorAttachments: self.colorAttachments,
  #|   depthStencilAttachment: convert_depthStencilAttachment(self.depthStencilAttachment),
  #|   occlusionQuerySet: ((() => { const v = self.occlusionQuerySet; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   timestampWrites: convert_timestampWrites(self.timestampWrites),
  #|   maxDrawCount: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.maxDrawCount)
  #| })

///|
/// Convert to JsValue
pub fn GPURenderPassDescriptor::to_js(
  self : GPURenderPassDescriptor,
) -> JsValue {
  GPURenderPassDescriptor::to_js_ffi(
    self,
    fn(value) {
      match value {
        Some(value) => value.to_js()
        None => dictionary_undefined()
      }
    },
    fn(value) {
      match value {
        Some(value) => value.to_js()
        None => dictionary_undefined()
      }
    },
  )
}

///|
extern "js" fn GPURenderPassDescriptor::from_js_ffi(
  value : JsValue,
  convert_depthStencilAttachment : (JsValue) -> GPURenderPassDepthStencilAttachment?,
  convert_timestampWrites : (JsValue) -> GPURenderPassTimestampWrites?,
) -> GPURenderPassDescriptor =
  #| (v, convert_depthStencilAttachment, convert_timestampWrites) => ({
  #|   label: v.label,
  #|   colorAttachments: v.colorAttachments,
  #|   depthStencilAttachment: convert_depthStencilAttachment(v.depthStencilAttachment),
  #|   occlusionQuerySet: (v.occlusionQuerySet === undefined ? { $tag: 0 } : { $tag: 1, _0: v.occlusionQuerySet }),
  #|   timestampWrites: convert_timestampWrites(v.timestampWrites),
  #|   maxDrawCount: (v.maxDrawCount === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.maxDrawCount))
  #| })

///|
/// Convert from JsValue
pub fn GPURenderPassDescriptor::from_js(
  value : JsValue,
) -> GPURenderPassDescriptor {
  GPURenderPassDescriptor::from_js_ffi(
    value,
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(GPURenderPassDepthStencilAttachment::from_js(value))
      }
    },
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(GPURenderPassTimestampWrites::from_js(value))
      }
    },
  )
}

///|
/// Catch dictionary conversion errors, including unsafe integer ranges.
pub fn GPURenderPassDescriptor::to_js_checked(
  self : GPURenderPassDescriptor,
) -> Result[JsValue, JsError] {
  try_dictionary_conversion(() => self.to_js())
}

///|
extern "js" fn try_dictionary_GPURenderPassDescriptor(
  convert : () -> GPURenderPassDescriptor,
) -> Result[GPURenderPassDescriptor, JsError] =
  #| convert => { try { return { $tag: 1, _0: convert() }; } catch (error) { return { $tag: 0, _0: error }; } }

///|
/// Catch invalid host fields, including unsafe integer ranges.
pub fn GPURenderPassDescriptor::from_js_checked(
  value : JsValue,
) -> Result[GPURenderPassDescriptor, JsError] {
  try_dictionary_GPURenderPassDescriptor(() => {
    GPURenderPassDescriptor::from_js(value)
  })
}

///|
/// GPURenderPassColorAttachment dictionary
pub(all) struct GPURenderPassColorAttachment {
  view : GPUTextureOrGPUTextureView
  depthSlice : GPUIntegerCoordinate?
  resolveTarget : GPUTextureOrGPUTextureView?
  clearValue : GPUColor?
  loadOp : GPULoadOp
  storeOp : GPUStoreOp
}

///|
/// Create a new GPURenderPassColorAttachment
pub fn GPURenderPassColorAttachment::new(
  view~ : GPUTextureOrGPUTextureView,
  loadOp~ : GPULoadOp,
  storeOp~ : GPUStoreOp,
) -> GPURenderPassColorAttachment {
  GPURenderPassColorAttachment::{
    view,
    depthSlice: None,
    resolveTarget: None,
    clearValue: None,
    loadOp,
    storeOp,
  }
}

///|
extern "js" fn GPURenderPassColorAttachment::to_js_ffi(
  self : GPURenderPassColorAttachment,
) -> JsValue =
  #| (self) => ({
  #|   view: self.view,
  #|   depthSlice: self.depthSlice,
  #|   resolveTarget: ((() => { const v = self.resolveTarget; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   clearValue: ((() => { const v = self.clearValue; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   loadOp: ['load', 'clear'][self.loadOp],
  #|   storeOp: ['store', 'discard'][self.storeOp]
  #| })

///|
/// Convert to JsValue
pub fn GPURenderPassColorAttachment::to_js(
  self : GPURenderPassColorAttachment,
) -> JsValue {
  GPURenderPassColorAttachment::to_js_ffi(self)
}

///|
extern "js" fn GPURenderPassColorAttachment::from_js_ffi(
  value : JsValue,
) -> GPURenderPassColorAttachment =
  #| (v) => ({
  #|   view: v.view,
  #|   depthSlice: v.depthSlice,
  #|   resolveTarget: (v.resolveTarget === undefined ? { $tag: 0 } : { $tag: 1, _0: v.resolveTarget }),
  #|   clearValue: (v.clearValue === undefined ? { $tag: 0 } : { $tag: 1, _0: v.clearValue }),
  #|   loadOp: ['load', 'clear'].indexOf(v.loadOp),
  #|   storeOp: ['store', 'discard'].indexOf(v.storeOp)
  #| })

///|
/// Convert from JsValue
pub fn GPURenderPassColorAttachment::from_js(
  value : JsValue,
) -> GPURenderPassColorAttachment {
  GPURenderPassColorAttachment::from_js_ffi(value)
}

///|
/// GPURenderPassDepthStencilAttachment dictionary
pub(all) struct GPURenderPassDepthStencilAttachment {
  view : GPUTextureOrGPUTextureView
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
/// Create a new GPURenderPassDepthStencilAttachment
pub fn GPURenderPassDepthStencilAttachment::new(
  view~ : GPUTextureOrGPUTextureView,
) -> GPURenderPassDepthStencilAttachment {
  GPURenderPassDepthStencilAttachment::{
    view,
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
extern "js" fn GPURenderPassDepthStencilAttachment::to_js_ffi(
  self : GPURenderPassDepthStencilAttachment,
) -> JsValue =
  #| (self) => ({
  #|   view: self.view,
  #|   depthClearValue: ((() => { const v = self.depthClearValue; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   depthLoadOp: ((() => { const v = self.depthLoadOp; if (v === undefined) return undefined; return ['load', 'clear'][v]; })()),
  #|   depthStoreOp: ((() => { const v = self.depthStoreOp; if (v === undefined) return undefined; return ['store', 'discard'][v]; })()),
  #|   depthReadOnly: (self.depthReadOnly === -1 ? undefined : self.depthReadOnly),
  #|   stencilClearValue: self.stencilClearValue,
  #|   stencilLoadOp: ((() => { const v = self.stencilLoadOp; if (v === undefined) return undefined; return ['load', 'clear'][v]; })()),
  #|   stencilStoreOp: ((() => { const v = self.stencilStoreOp; if (v === undefined) return undefined; return ['store', 'discard'][v]; })()),
  #|   stencilReadOnly: (self.stencilReadOnly === -1 ? undefined : self.stencilReadOnly)
  #| })

///|
/// Convert to JsValue
pub fn GPURenderPassDepthStencilAttachment::to_js(
  self : GPURenderPassDepthStencilAttachment,
) -> JsValue {
  GPURenderPassDepthStencilAttachment::to_js_ffi(self)
}

///|
extern "js" fn GPURenderPassDepthStencilAttachment::from_js_ffi(
  value : JsValue,
) -> GPURenderPassDepthStencilAttachment =
  #| (v) => ({
  #|   view: v.view,
  #|   depthClearValue: (v.depthClearValue === undefined ? { $tag: 0 } : { $tag: 1, _0: v.depthClearValue }),
  #|   depthLoadOp: (v.depthLoadOp === undefined ? undefined : ['load', 'clear'].indexOf(v.depthLoadOp)),
  #|   depthStoreOp: (v.depthStoreOp === undefined ? undefined : ['store', 'discard'].indexOf(v.depthStoreOp)),
  #|   depthReadOnly: (v.depthReadOnly === undefined ? -1 : v.depthReadOnly),
  #|   stencilClearValue: v.stencilClearValue,
  #|   stencilLoadOp: (v.stencilLoadOp === undefined ? undefined : ['load', 'clear'].indexOf(v.stencilLoadOp)),
  #|   stencilStoreOp: (v.stencilStoreOp === undefined ? undefined : ['store', 'discard'].indexOf(v.stencilStoreOp)),
  #|   stencilReadOnly: (v.stencilReadOnly === undefined ? -1 : v.stencilReadOnly)
  #| })

///|
/// Convert from JsValue
pub fn GPURenderPassDepthStencilAttachment::from_js(
  value : JsValue,
) -> GPURenderPassDepthStencilAttachment {
  GPURenderPassDepthStencilAttachment::from_js_ffi(value)
}

///|
/// GPURenderPassLayout dictionary
pub(all) struct GPURenderPassLayout {
  label : String?
  colorFormats : FixedArray[JsValue]
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
extern "js" fn GPURenderPassLayout::to_js_ffi(
  self : GPURenderPassLayout,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   colorFormats: self.colorFormats,
  #|   depthStencilFormat: ((() => { const v = self.depthStencilFormat; if (v === undefined) return undefined; return ['r8unorm', 'r8snorm', 'r8uint', 'r8sint', 'r16unorm', 'r16snorm', 'r16uint', 'r16sint', 'r16float', 'rg8unorm', 'rg8snorm', 'rg8uint', 'rg8sint', 'r32uint', 'r32sint', 'r32float', 'rg16unorm', 'rg16snorm', 'rg16uint', 'rg16sint', 'rg16float', 'rgba8unorm', 'rgba8unorm-srgb', 'rgba8snorm', 'rgba8uint', 'rgba8sint', 'bgra8unorm', 'bgra8unorm-srgb', 'rgb9e5ufloat', 'rgb10a2uint', 'rgb10a2unorm', 'rg11b10ufloat', 'rg32uint', 'rg32sint', 'rg32float', 'rgba16unorm', 'rgba16snorm', 'rgba16uint', 'rgba16sint', 'rgba16float', 'rgba32uint', 'rgba32sint', 'rgba32float', 'stencil8', 'depth16unorm', 'depth24plus', 'depth24plus-stencil8', 'depth32float', 'depth32float-stencil8', 'bc1-rgba-unorm', 'bc1-rgba-unorm-srgb', 'bc2-rgba-unorm', 'bc2-rgba-unorm-srgb', 'bc3-rgba-unorm', 'bc3-rgba-unorm-srgb', 'bc4-r-unorm', 'bc4-r-snorm', 'bc5-rg-unorm', 'bc5-rg-snorm', 'bc6h-rgb-ufloat', 'bc6h-rgb-float', 'bc7-rgba-unorm', 'bc7-rgba-unorm-srgb', 'etc2-rgb8unorm', 'etc2-rgb8unorm-srgb', 'etc2-rgb8a1unorm', 'etc2-rgb8a1unorm-srgb', 'etc2-rgba8unorm', 'etc2-rgba8unorm-srgb', 'eac-r11unorm', 'eac-r11snorm', 'eac-rg11unorm', 'eac-rg11snorm', 'astc-4x4-unorm', 'astc-4x4-unorm-srgb', 'astc-5x4-unorm', 'astc-5x4-unorm-srgb', 'astc-5x5-unorm', 'astc-5x5-unorm-srgb', 'astc-6x5-unorm', 'astc-6x5-unorm-srgb', 'astc-6x6-unorm', 'astc-6x6-unorm-srgb', 'astc-8x5-unorm', 'astc-8x5-unorm-srgb', 'astc-8x6-unorm', 'astc-8x6-unorm-srgb', 'astc-8x8-unorm', 'astc-8x8-unorm-srgb', 'astc-10x5-unorm', 'astc-10x5-unorm-srgb', 'astc-10x6-unorm', 'astc-10x6-unorm-srgb', 'astc-10x8-unorm', 'astc-10x8-unorm-srgb', 'astc-10x10-unorm', 'astc-10x10-unorm-srgb', 'astc-12x10-unorm', 'astc-12x10-unorm-srgb', 'astc-12x12-unorm', 'astc-12x12-unorm-srgb'][v]; })()),
  #|   sampleCount: self.sampleCount
  #| })

///|
/// Convert to JsValue
pub fn GPURenderPassLayout::to_js(self : GPURenderPassLayout) -> JsValue {
  GPURenderPassLayout::to_js_ffi(self)
}

///|
extern "js" fn GPURenderPassLayout::from_js_ffi(
  value : JsValue,
) -> GPURenderPassLayout =
  #| (v) => ({
  #|   label: v.label,
  #|   colorFormats: v.colorFormats,
  #|   depthStencilFormat: (v.depthStencilFormat === undefined ? undefined : ['r8unorm', 'r8snorm', 'r8uint', 'r8sint', 'r16unorm', 'r16snorm', 'r16uint', 'r16sint', 'r16float', 'rg8unorm', 'rg8snorm', 'rg8uint', 'rg8sint', 'r32uint', 'r32sint', 'r32float', 'rg16unorm', 'rg16snorm', 'rg16uint', 'rg16sint', 'rg16float', 'rgba8unorm', 'rgba8unorm-srgb', 'rgba8snorm', 'rgba8uint', 'rgba8sint', 'bgra8unorm', 'bgra8unorm-srgb', 'rgb9e5ufloat', 'rgb10a2uint', 'rgb10a2unorm', 'rg11b10ufloat', 'rg32uint', 'rg32sint', 'rg32float', 'rgba16unorm', 'rgba16snorm', 'rgba16uint', 'rgba16sint', 'rgba16float', 'rgba32uint', 'rgba32sint', 'rgba32float', 'stencil8', 'depth16unorm', 'depth24plus', 'depth24plus-stencil8', 'depth32float', 'depth32float-stencil8', 'bc1-rgba-unorm', 'bc1-rgba-unorm-srgb', 'bc2-rgba-unorm', 'bc2-rgba-unorm-srgb', 'bc3-rgba-unorm', 'bc3-rgba-unorm-srgb', 'bc4-r-unorm', 'bc4-r-snorm', 'bc5-rg-unorm', 'bc5-rg-snorm', 'bc6h-rgb-ufloat', 'bc6h-rgb-float', 'bc7-rgba-unorm', 'bc7-rgba-unorm-srgb', 'etc2-rgb8unorm', 'etc2-rgb8unorm-srgb', 'etc2-rgb8a1unorm', 'etc2-rgb8a1unorm-srgb', 'etc2-rgba8unorm', 'etc2-rgba8unorm-srgb', 'eac-r11unorm', 'eac-r11snorm', 'eac-rg11unorm', 'eac-rg11snorm', 'astc-4x4-unorm', 'astc-4x4-unorm-srgb', 'astc-5x4-unorm', 'astc-5x4-unorm-srgb', 'astc-5x5-unorm', 'astc-5x5-unorm-srgb', 'astc-6x5-unorm', 'astc-6x5-unorm-srgb', 'astc-6x6-unorm', 'astc-6x6-unorm-srgb', 'astc-8x5-unorm', 'astc-8x5-unorm-srgb', 'astc-8x6-unorm', 'astc-8x6-unorm-srgb', 'astc-8x8-unorm', 'astc-8x8-unorm-srgb', 'astc-10x5-unorm', 'astc-10x5-unorm-srgb', 'astc-10x6-unorm', 'astc-10x6-unorm-srgb', 'astc-10x8-unorm', 'astc-10x8-unorm-srgb', 'astc-10x10-unorm', 'astc-10x10-unorm-srgb', 'astc-12x10-unorm', 'astc-12x10-unorm-srgb', 'astc-12x12-unorm', 'astc-12x12-unorm-srgb'].indexOf(v.depthStencilFormat)),
  #|   sampleCount: v.sampleCount
  #| })

///|
/// Convert from JsValue
pub fn GPURenderPassLayout::from_js(value : JsValue) -> GPURenderPassLayout {
  GPURenderPassLayout::from_js_ffi(value)
}

///|
/// GPURenderBundleDescriptor dictionary
pub(all) struct GPURenderBundleDescriptor {
  label : String?
}

///|
/// Create a new GPURenderBundleDescriptor with default values
pub fn GPURenderBundleDescriptor::default() -> GPURenderBundleDescriptor {
  GPURenderBundleDescriptor::{ label: None, }
}

///|
extern "js" fn GPURenderBundleDescriptor::to_js_ffi(
  self : GPURenderBundleDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label
  #| })

///|
/// Convert to JsValue
pub fn GPURenderBundleDescriptor::to_js(
  self : GPURenderBundleDescriptor,
) -> JsValue {
  GPURenderBundleDescriptor::to_js_ffi(self)
}

///|
extern "js" fn GPURenderBundleDescriptor::from_js_ffi(
  value : JsValue,
) -> GPURenderBundleDescriptor =
  #| (v) => ({
  #|   label: v.label
  #| })

///|
/// Convert from JsValue
pub fn GPURenderBundleDescriptor::from_js(
  value : JsValue,
) -> GPURenderBundleDescriptor {
  GPURenderBundleDescriptor::from_js_ffi(value)
}

///|
/// GPURenderBundleEncoderDescriptor dictionary
pub(all) struct GPURenderBundleEncoderDescriptor {
  label : String?
  colorFormats : FixedArray[JsValue]
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
extern "js" fn GPURenderBundleEncoderDescriptor::to_js_ffi(
  self : GPURenderBundleEncoderDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   colorFormats: self.colorFormats,
  #|   depthStencilFormat: ((() => { const v = self.depthStencilFormat; if (v === undefined) return undefined; return ['r8unorm', 'r8snorm', 'r8uint', 'r8sint', 'r16unorm', 'r16snorm', 'r16uint', 'r16sint', 'r16float', 'rg8unorm', 'rg8snorm', 'rg8uint', 'rg8sint', 'r32uint', 'r32sint', 'r32float', 'rg16unorm', 'rg16snorm', 'rg16uint', 'rg16sint', 'rg16float', 'rgba8unorm', 'rgba8unorm-srgb', 'rgba8snorm', 'rgba8uint', 'rgba8sint', 'bgra8unorm', 'bgra8unorm-srgb', 'rgb9e5ufloat', 'rgb10a2uint', 'rgb10a2unorm', 'rg11b10ufloat', 'rg32uint', 'rg32sint', 'rg32float', 'rgba16unorm', 'rgba16snorm', 'rgba16uint', 'rgba16sint', 'rgba16float', 'rgba32uint', 'rgba32sint', 'rgba32float', 'stencil8', 'depth16unorm', 'depth24plus', 'depth24plus-stencil8', 'depth32float', 'depth32float-stencil8', 'bc1-rgba-unorm', 'bc1-rgba-unorm-srgb', 'bc2-rgba-unorm', 'bc2-rgba-unorm-srgb', 'bc3-rgba-unorm', 'bc3-rgba-unorm-srgb', 'bc4-r-unorm', 'bc4-r-snorm', 'bc5-rg-unorm', 'bc5-rg-snorm', 'bc6h-rgb-ufloat', 'bc6h-rgb-float', 'bc7-rgba-unorm', 'bc7-rgba-unorm-srgb', 'etc2-rgb8unorm', 'etc2-rgb8unorm-srgb', 'etc2-rgb8a1unorm', 'etc2-rgb8a1unorm-srgb', 'etc2-rgba8unorm', 'etc2-rgba8unorm-srgb', 'eac-r11unorm', 'eac-r11snorm', 'eac-rg11unorm', 'eac-rg11snorm', 'astc-4x4-unorm', 'astc-4x4-unorm-srgb', 'astc-5x4-unorm', 'astc-5x4-unorm-srgb', 'astc-5x5-unorm', 'astc-5x5-unorm-srgb', 'astc-6x5-unorm', 'astc-6x5-unorm-srgb', 'astc-6x6-unorm', 'astc-6x6-unorm-srgb', 'astc-8x5-unorm', 'astc-8x5-unorm-srgb', 'astc-8x6-unorm', 'astc-8x6-unorm-srgb', 'astc-8x8-unorm', 'astc-8x8-unorm-srgb', 'astc-10x5-unorm', 'astc-10x5-unorm-srgb', 'astc-10x6-unorm', 'astc-10x6-unorm-srgb', 'astc-10x8-unorm', 'astc-10x8-unorm-srgb', 'astc-10x10-unorm', 'astc-10x10-unorm-srgb', 'astc-12x10-unorm', 'astc-12x10-unorm-srgb', 'astc-12x12-unorm', 'astc-12x12-unorm-srgb'][v]; })()),
  #|   sampleCount: self.sampleCount,
  #|   depthReadOnly: (self.depthReadOnly === -1 ? undefined : self.depthReadOnly),
  #|   stencilReadOnly: (self.stencilReadOnly === -1 ? undefined : self.stencilReadOnly)
  #| })

///|
/// Convert to JsValue
pub fn GPURenderBundleEncoderDescriptor::to_js(
  self : GPURenderBundleEncoderDescriptor,
) -> JsValue {
  GPURenderBundleEncoderDescriptor::to_js_ffi(self)
}

///|
extern "js" fn GPURenderBundleEncoderDescriptor::from_js_ffi(
  value : JsValue,
) -> GPURenderBundleEncoderDescriptor =
  #| (v) => ({
  #|   label: v.label,
  #|   colorFormats: v.colorFormats,
  #|   depthStencilFormat: (v.depthStencilFormat === undefined ? undefined : ['r8unorm', 'r8snorm', 'r8uint', 'r8sint', 'r16unorm', 'r16snorm', 'r16uint', 'r16sint', 'r16float', 'rg8unorm', 'rg8snorm', 'rg8uint', 'rg8sint', 'r32uint', 'r32sint', 'r32float', 'rg16unorm', 'rg16snorm', 'rg16uint', 'rg16sint', 'rg16float', 'rgba8unorm', 'rgba8unorm-srgb', 'rgba8snorm', 'rgba8uint', 'rgba8sint', 'bgra8unorm', 'bgra8unorm-srgb', 'rgb9e5ufloat', 'rgb10a2uint', 'rgb10a2unorm', 'rg11b10ufloat', 'rg32uint', 'rg32sint', 'rg32float', 'rgba16unorm', 'rgba16snorm', 'rgba16uint', 'rgba16sint', 'rgba16float', 'rgba32uint', 'rgba32sint', 'rgba32float', 'stencil8', 'depth16unorm', 'depth24plus', 'depth24plus-stencil8', 'depth32float', 'depth32float-stencil8', 'bc1-rgba-unorm', 'bc1-rgba-unorm-srgb', 'bc2-rgba-unorm', 'bc2-rgba-unorm-srgb', 'bc3-rgba-unorm', 'bc3-rgba-unorm-srgb', 'bc4-r-unorm', 'bc4-r-snorm', 'bc5-rg-unorm', 'bc5-rg-snorm', 'bc6h-rgb-ufloat', 'bc6h-rgb-float', 'bc7-rgba-unorm', 'bc7-rgba-unorm-srgb', 'etc2-rgb8unorm', 'etc2-rgb8unorm-srgb', 'etc2-rgb8a1unorm', 'etc2-rgb8a1unorm-srgb', 'etc2-rgba8unorm', 'etc2-rgba8unorm-srgb', 'eac-r11unorm', 'eac-r11snorm', 'eac-rg11unorm', 'eac-rg11snorm', 'astc-4x4-unorm', 'astc-4x4-unorm-srgb', 'astc-5x4-unorm', 'astc-5x4-unorm-srgb', 'astc-5x5-unorm', 'astc-5x5-unorm-srgb', 'astc-6x5-unorm', 'astc-6x5-unorm-srgb', 'astc-6x6-unorm', 'astc-6x6-unorm-srgb', 'astc-8x5-unorm', 'astc-8x5-unorm-srgb', 'astc-8x6-unorm', 'astc-8x6-unorm-srgb', 'astc-8x8-unorm', 'astc-8x8-unorm-srgb', 'astc-10x5-unorm', 'astc-10x5-unorm-srgb', 'astc-10x6-unorm', 'astc-10x6-unorm-srgb', 'astc-10x8-unorm', 'astc-10x8-unorm-srgb', 'astc-10x10-unorm', 'astc-10x10-unorm-srgb', 'astc-12x10-unorm', 'astc-12x10-unorm-srgb', 'astc-12x12-unorm', 'astc-12x12-unorm-srgb'].indexOf(v.depthStencilFormat)),
  #|   sampleCount: v.sampleCount,
  #|   depthReadOnly: (v.depthReadOnly === undefined ? -1 : v.depthReadOnly),
  #|   stencilReadOnly: (v.stencilReadOnly === undefined ? -1 : v.stencilReadOnly)
  #| })

///|
/// Convert from JsValue
pub fn GPURenderBundleEncoderDescriptor::from_js(
  value : JsValue,
) -> GPURenderBundleEncoderDescriptor {
  GPURenderBundleEncoderDescriptor::from_js_ffi(value)
}

///|
/// GPUQueueDescriptor dictionary
pub(all) struct GPUQueueDescriptor {
  label : String?
}

///|
/// Create a new GPUQueueDescriptor with default values
pub fn GPUQueueDescriptor::default() -> GPUQueueDescriptor {
  GPUQueueDescriptor::{ label: None, }
}

///|
extern "js" fn GPUQueueDescriptor::to_js_ffi(
  self : GPUQueueDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label
  #| })

///|
/// Convert to JsValue
pub fn GPUQueueDescriptor::to_js(self : GPUQueueDescriptor) -> JsValue {
  GPUQueueDescriptor::to_js_ffi(self)
}

///|
extern "js" fn GPUQueueDescriptor::from_js_ffi(
  value : JsValue,
) -> GPUQueueDescriptor =
  #| (v) => ({
  #|   label: v.label
  #| })

///|
/// Convert from JsValue
pub fn GPUQueueDescriptor::from_js(value : JsValue) -> GPUQueueDescriptor {
  GPUQueueDescriptor::from_js_ffi(value)
}

///|
/// GPUQuerySetDescriptor dictionary
pub(all) struct GPUQuerySetDescriptor {
  label : String?
  type_ : GPUQueryType
  count : GPUSize32
}

///|
/// Create a new GPUQuerySetDescriptor
pub fn GPUQuerySetDescriptor::new(
  type_~ : GPUQueryType,
  count~ : GPUSize32,
) -> GPUQuerySetDescriptor {
  GPUQuerySetDescriptor::{ label: None, type_, count, }
}

///|
extern "js" fn GPUQuerySetDescriptor::to_js_ffi(
  self : GPUQuerySetDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   type: ['occlusion', 'timestamp'][self.type_],
  #|   count: self.count
  #| })

///|
/// Convert to JsValue
pub fn GPUQuerySetDescriptor::to_js(self : GPUQuerySetDescriptor) -> JsValue {
  GPUQuerySetDescriptor::to_js_ffi(self)
}

///|
extern "js" fn GPUQuerySetDescriptor::from_js_ffi(
  value : JsValue,
) -> GPUQuerySetDescriptor =
  #| (v) => ({
  #|   label: v.label,
  #|   type_: ['occlusion', 'timestamp'].indexOf(v.type),
  #|   count: v.count
  #| })

///|
/// Convert from JsValue
pub fn GPUQuerySetDescriptor::from_js(value : JsValue) -> GPUQuerySetDescriptor {
  GPUQuerySetDescriptor::from_js_ffi(value)
}

///|
/// GPUCanvasToneMapping dictionary
pub(all) struct GPUCanvasToneMapping {
  mode : GPUCanvasToneMappingMode?
}

///|
/// Create a new GPUCanvasToneMapping with default values
pub fn GPUCanvasToneMapping::default() -> GPUCanvasToneMapping {
  GPUCanvasToneMapping::{ mode: None, }
}

///|
extern "js" fn GPUCanvasToneMapping::to_js_ffi(
  self : GPUCanvasToneMapping,
) -> JsValue =
  #| (self) => ({
  #|   mode: ((() => { const v = self.mode; if (v === undefined) return undefined; return ['standard', 'extended'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn GPUCanvasToneMapping::to_js(self : GPUCanvasToneMapping) -> JsValue {
  GPUCanvasToneMapping::to_js_ffi(self)
}

///|
extern "js" fn GPUCanvasToneMapping::from_js_ffi(
  value : JsValue,
) -> GPUCanvasToneMapping =
  #| (v) => ({
  #|   mode: (v.mode === undefined ? undefined : ['standard', 'extended'].indexOf(v.mode))
  #| })

///|
/// Convert from JsValue
pub fn GPUCanvasToneMapping::from_js(value : JsValue) -> GPUCanvasToneMapping {
  GPUCanvasToneMapping::from_js_ffi(value)
}

///|
/// GPUCanvasConfiguration dictionary
pub(all) struct GPUCanvasConfiguration {
  device : GPUDevice
  format : GPUTextureFormat
  usage : GPUTextureUsageFlags?
  viewFormats : FixedArray[GPUTextureFormat]?
  colorSpace : PredefinedColorSpace?
  toneMapping : GPUCanvasToneMapping?
  alphaMode : GPUCanvasAlphaMode?
}

///|
/// Create a new GPUCanvasConfiguration
pub fn GPUCanvasConfiguration::new(
  device~ : GPUDevice,
  format~ : GPUTextureFormat,
) -> GPUCanvasConfiguration {
  GPUCanvasConfiguration::{
    device,
    format,
    usage: None,
    viewFormats: None,
    colorSpace: None,
    toneMapping: None,
    alphaMode: None,
  }
}

///|
extern "js" fn GPUCanvasConfiguration::to_js_ffi(
  self : GPUCanvasConfiguration,
  convert_toneMapping : (GPUCanvasToneMapping?) -> JsValue,
) -> JsValue =
  #| (self, convert_toneMapping) => ({
  #|   device: self.device,
  #|   format: ['r8unorm', 'r8snorm', 'r8uint', 'r8sint', 'r16unorm', 'r16snorm', 'r16uint', 'r16sint', 'r16float', 'rg8unorm', 'rg8snorm', 'rg8uint', 'rg8sint', 'r32uint', 'r32sint', 'r32float', 'rg16unorm', 'rg16snorm', 'rg16uint', 'rg16sint', 'rg16float', 'rgba8unorm', 'rgba8unorm-srgb', 'rgba8snorm', 'rgba8uint', 'rgba8sint', 'bgra8unorm', 'bgra8unorm-srgb', 'rgb9e5ufloat', 'rgb10a2uint', 'rgb10a2unorm', 'rg11b10ufloat', 'rg32uint', 'rg32sint', 'rg32float', 'rgba16unorm', 'rgba16snorm', 'rgba16uint', 'rgba16sint', 'rgba16float', 'rgba32uint', 'rgba32sint', 'rgba32float', 'stencil8', 'depth16unorm', 'depth24plus', 'depth24plus-stencil8', 'depth32float', 'depth32float-stencil8', 'bc1-rgba-unorm', 'bc1-rgba-unorm-srgb', 'bc2-rgba-unorm', 'bc2-rgba-unorm-srgb', 'bc3-rgba-unorm', 'bc3-rgba-unorm-srgb', 'bc4-r-unorm', 'bc4-r-snorm', 'bc5-rg-unorm', 'bc5-rg-snorm', 'bc6h-rgb-ufloat', 'bc6h-rgb-float', 'bc7-rgba-unorm', 'bc7-rgba-unorm-srgb', 'etc2-rgb8unorm', 'etc2-rgb8unorm-srgb', 'etc2-rgb8a1unorm', 'etc2-rgb8a1unorm-srgb', 'etc2-rgba8unorm', 'etc2-rgba8unorm-srgb', 'eac-r11unorm', 'eac-r11snorm', 'eac-rg11unorm', 'eac-rg11snorm', 'astc-4x4-unorm', 'astc-4x4-unorm-srgb', 'astc-5x4-unorm', 'astc-5x4-unorm-srgb', 'astc-5x5-unorm', 'astc-5x5-unorm-srgb', 'astc-6x5-unorm', 'astc-6x5-unorm-srgb', 'astc-6x6-unorm', 'astc-6x6-unorm-srgb', 'astc-8x5-unorm', 'astc-8x5-unorm-srgb', 'astc-8x6-unorm', 'astc-8x6-unorm-srgb', 'astc-8x8-unorm', 'astc-8x8-unorm-srgb', 'astc-10x5-unorm', 'astc-10x5-unorm-srgb', 'astc-10x6-unorm', 'astc-10x6-unorm-srgb', 'astc-10x8-unorm', 'astc-10x8-unorm-srgb', 'astc-10x10-unorm', 'astc-10x10-unorm-srgb', 'astc-12x10-unorm', 'astc-12x10-unorm-srgb', 'astc-12x12-unorm', 'astc-12x12-unorm-srgb'][self.format],
  #|   usage: self.usage,
  #|   viewFormats: self.viewFormats,
  #|   colorSpace: ((() => { const v = self.colorSpace; if (v === undefined) return undefined; return ['srgb', 'srgb-linear', 'display-p3', 'display-p3-linear'][v]; })()),
  #|   toneMapping: convert_toneMapping(self.toneMapping),
  #|   alphaMode: ((() => { const v = self.alphaMode; if (v === undefined) return undefined; return ['opaque', 'premultiplied'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn GPUCanvasConfiguration::to_js(self : GPUCanvasConfiguration) -> JsValue {
  GPUCanvasConfiguration::to_js_ffi(self, fn(value) {
    match value {
      Some(value) => value.to_js()
      None => dictionary_undefined()
    }
  })
}

///|
extern "js" fn GPUCanvasConfiguration::from_js_ffi(
  value : JsValue,
  convert_toneMapping : (JsValue) -> GPUCanvasToneMapping?,
) -> GPUCanvasConfiguration =
  #| (v, convert_toneMapping) => ({
  #|   device: v.device,
  #|   format: ['r8unorm', 'r8snorm', 'r8uint', 'r8sint', 'r16unorm', 'r16snorm', 'r16uint', 'r16sint', 'r16float', 'rg8unorm', 'rg8snorm', 'rg8uint', 'rg8sint', 'r32uint', 'r32sint', 'r32float', 'rg16unorm', 'rg16snorm', 'rg16uint', 'rg16sint', 'rg16float', 'rgba8unorm', 'rgba8unorm-srgb', 'rgba8snorm', 'rgba8uint', 'rgba8sint', 'bgra8unorm', 'bgra8unorm-srgb', 'rgb9e5ufloat', 'rgb10a2uint', 'rgb10a2unorm', 'rg11b10ufloat', 'rg32uint', 'rg32sint', 'rg32float', 'rgba16unorm', 'rgba16snorm', 'rgba16uint', 'rgba16sint', 'rgba16float', 'rgba32uint', 'rgba32sint', 'rgba32float', 'stencil8', 'depth16unorm', 'depth24plus', 'depth24plus-stencil8', 'depth32float', 'depth32float-stencil8', 'bc1-rgba-unorm', 'bc1-rgba-unorm-srgb', 'bc2-rgba-unorm', 'bc2-rgba-unorm-srgb', 'bc3-rgba-unorm', 'bc3-rgba-unorm-srgb', 'bc4-r-unorm', 'bc4-r-snorm', 'bc5-rg-unorm', 'bc5-rg-snorm', 'bc6h-rgb-ufloat', 'bc6h-rgb-float', 'bc7-rgba-unorm', 'bc7-rgba-unorm-srgb', 'etc2-rgb8unorm', 'etc2-rgb8unorm-srgb', 'etc2-rgb8a1unorm', 'etc2-rgb8a1unorm-srgb', 'etc2-rgba8unorm', 'etc2-rgba8unorm-srgb', 'eac-r11unorm', 'eac-r11snorm', 'eac-rg11unorm', 'eac-rg11snorm', 'astc-4x4-unorm', 'astc-4x4-unorm-srgb', 'astc-5x4-unorm', 'astc-5x4-unorm-srgb', 'astc-5x5-unorm', 'astc-5x5-unorm-srgb', 'astc-6x5-unorm', 'astc-6x5-unorm-srgb', 'astc-6x6-unorm', 'astc-6x6-unorm-srgb', 'astc-8x5-unorm', 'astc-8x5-unorm-srgb', 'astc-8x6-unorm', 'astc-8x6-unorm-srgb', 'astc-8x8-unorm', 'astc-8x8-unorm-srgb', 'astc-10x5-unorm', 'astc-10x5-unorm-srgb', 'astc-10x6-unorm', 'astc-10x6-unorm-srgb', 'astc-10x8-unorm', 'astc-10x8-unorm-srgb', 'astc-10x10-unorm', 'astc-10x10-unorm-srgb', 'astc-12x10-unorm', 'astc-12x10-unorm-srgb', 'astc-12x12-unorm', 'astc-12x12-unorm-srgb'].indexOf(v.format),
  #|   usage: v.usage,
  #|   viewFormats: v.viewFormats,
  #|   colorSpace: (v.colorSpace === undefined ? undefined : ['srgb', 'srgb-linear', 'display-p3', 'display-p3-linear'].indexOf(v.colorSpace)),
  #|   toneMapping: convert_toneMapping(v.toneMapping),
  #|   alphaMode: (v.alphaMode === undefined ? undefined : ['opaque', 'premultiplied'].indexOf(v.alphaMode))
  #| })

///|
/// Convert from JsValue
pub fn GPUCanvasConfiguration::from_js(
  value : JsValue,
) -> GPUCanvasConfiguration {
  GPUCanvasConfiguration::from_js_ffi(value, fn(value) {
    if value.is_undefined() {
      None
    } else {
      Some(GPUCanvasToneMapping::from_js(value))
    }
  })
}

///|
/// GPUUncapturedErrorEventInit dictionary
pub(all) struct GPUUncapturedErrorEventInit {
  error : GPUError
}

///|
/// Create a new GPUUncapturedErrorEventInit
pub fn GPUUncapturedErrorEventInit::new(
  error~ : GPUError,
) -> GPUUncapturedErrorEventInit {
  GPUUncapturedErrorEventInit::{ error, }
}

///|
extern "js" fn GPUUncapturedErrorEventInit::to_js_ffi(
  self : GPUUncapturedErrorEventInit,
) -> JsValue =
  #| (self) => ({
  #|   error: self.error
  #| })

///|
/// Convert to JsValue
pub fn GPUUncapturedErrorEventInit::to_js(
  self : GPUUncapturedErrorEventInit,
) -> JsValue {
  GPUUncapturedErrorEventInit::to_js_ffi(self)
}

///|
extern "js" fn GPUUncapturedErrorEventInit::from_js_ffi(
  value : JsValue,
) -> GPUUncapturedErrorEventInit =
  #| (v) => ({
  #|   error: v.error
  #| })

///|
/// Convert from JsValue
pub fn GPUUncapturedErrorEventInit::from_js(
  value : JsValue,
) -> GPUUncapturedErrorEventInit {
  GPUUncapturedErrorEventInit::from_js_ffi(value)
}

///|
/// GPUColorDict dictionary
pub(all) struct GPUColorDict {
  r : Double
  g : Double
  b : Double
  a : Double
}

///|
/// Create a new GPUColorDict with default values
pub fn GPUColorDict::default() -> GPUColorDict {
  GPUColorDict::{ r: 0, g: 0, b: 0, a: 0, }
}

///|
extern "js" fn GPUColorDict::to_js_ffi(self : GPUColorDict) -> JsValue =
  #| (self) => ({
  #|   r: self.r,
  #|   g: self.g,
  #|   b: self.b,
  #|   a: self.a
  #| })

///|
/// Convert to JsValue
pub fn GPUColorDict::to_js(self : GPUColorDict) -> JsValue {
  GPUColorDict::to_js_ffi(self)
}

///|
extern "js" fn GPUColorDict::from_js_ffi(value : JsValue) -> GPUColorDict =
  #| (v) => ({
  #|   r: v.r,
  #|   g: v.g,
  #|   b: v.b,
  #|   a: v.a
  #| })

///|
/// Convert from JsValue
pub fn GPUColorDict::from_js(value : JsValue) -> GPUColorDict {
  GPUColorDict::from_js_ffi(value)
}

///|
/// GPUOrigin2DDict dictionary
pub(all) struct GPUOrigin2DDict {
  x : GPUIntegerCoordinate?
  y : GPUIntegerCoordinate?
}

///|
/// Create a new GPUOrigin2DDict with default values
pub fn GPUOrigin2DDict::default() -> GPUOrigin2DDict {
  GPUOrigin2DDict::{ x: None, y: None, }
}

///|
extern "js" fn GPUOrigin2DDict::to_js_ffi(self : GPUOrigin2DDict) -> JsValue =
  #| (self) => ({
  #|   x: self.x,
  #|   y: self.y
  #| })

///|
/// Convert to JsValue
pub fn GPUOrigin2DDict::to_js(self : GPUOrigin2DDict) -> JsValue {
  GPUOrigin2DDict::to_js_ffi(self)
}

///|
extern "js" fn GPUOrigin2DDict::from_js_ffi(value : JsValue) -> GPUOrigin2DDict =
  #| (v) => ({
  #|   x: v.x,
  #|   y: v.y
  #| })

///|
/// Convert from JsValue
pub fn GPUOrigin2DDict::from_js(value : JsValue) -> GPUOrigin2DDict {
  GPUOrigin2DDict::from_js_ffi(value)
}

///|
/// GPUOrigin3DDict dictionary
pub(all) struct GPUOrigin3DDict {
  x : GPUIntegerCoordinate?
  y : GPUIntegerCoordinate?
  z : GPUIntegerCoordinate?
}

///|
/// Create a new GPUOrigin3DDict with default values
pub fn GPUOrigin3DDict::default() -> GPUOrigin3DDict {
  GPUOrigin3DDict::{ x: None, y: None, z: None, }
}

///|
extern "js" fn GPUOrigin3DDict::to_js_ffi(self : GPUOrigin3DDict) -> JsValue =
  #| (self) => ({
  #|   x: self.x,
  #|   y: self.y,
  #|   z: self.z
  #| })

///|
/// Convert to JsValue
pub fn GPUOrigin3DDict::to_js(self : GPUOrigin3DDict) -> JsValue {
  GPUOrigin3DDict::to_js_ffi(self)
}

///|
extern "js" fn GPUOrigin3DDict::from_js_ffi(value : JsValue) -> GPUOrigin3DDict =
  #| (v) => ({
  #|   x: v.x,
  #|   y: v.y,
  #|   z: v.z
  #| })

///|
/// Convert from JsValue
pub fn GPUOrigin3DDict::from_js(value : JsValue) -> GPUOrigin3DDict {
  GPUOrigin3DDict::from_js_ffi(value)
}

///|
/// GPUExtent3DDict dictionary
pub(all) struct GPUExtent3DDict {
  width : GPUIntegerCoordinate
  height : GPUIntegerCoordinate?
  depthOrArrayLayers : GPUIntegerCoordinate?
}

///|
/// Create a new GPUExtent3DDict
pub fn GPUExtent3DDict::new(width~ : GPUIntegerCoordinate) -> GPUExtent3DDict {
  GPUExtent3DDict::{ width, height: None, depthOrArrayLayers: None, }
}

///|
extern "js" fn GPUExtent3DDict::to_js_ffi(self : GPUExtent3DDict) -> JsValue =
  #| (self) => ({
  #|   width: self.width,
  #|   height: self.height,
  #|   depthOrArrayLayers: self.depthOrArrayLayers
  #| })

///|
/// Convert to JsValue
pub fn GPUExtent3DDict::to_js(self : GPUExtent3DDict) -> JsValue {
  GPUExtent3DDict::to_js_ffi(self)
}

///|
extern "js" fn GPUExtent3DDict::from_js_ffi(value : JsValue) -> GPUExtent3DDict =
  #| (v) => ({
  #|   width: v.width,
  #|   height: v.height,
  #|   depthOrArrayLayers: v.depthOrArrayLayers
  #| })

///|
/// Convert from JsValue
pub fn GPUExtent3DDict::from_js(value : JsValue) -> GPUExtent3DDict {
  GPUExtent3DDict::from_js_ffi(value)
}

///|
/// GPUSupportedLimits interface
pub type GPUSupportedLimits

///|
pub extern "js" fn GPUSupportedLimits::to_js_value(
  self : GPUSupportedLimits,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to GPUSupportedLimits (unchecked)
pub extern "js" fn GPUSupportedLimits::from_js_value(
  v : JsValue,
) -> GPUSupportedLimits =
  #| (v) => v

///|
/// Safely cast JsValue to GPUSupportedLimits (checked with instanceof)
pub extern "js" fn GPUSupportedLimits::from_js_value_opt(
  v : JsValue,
) -> GPUSupportedLimits? =
  #| (v) => (v instanceof GPUSupportedLimits) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPUSupportedLimits (checked with instanceof)
pub extern "js" fn JsValue::as_gpu_supported_limits(
  self : JsValue,
) -> GPUSupportedLimits? =
  #| (self) => (self instanceof GPUSupportedLimits) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPUSupportedLimits (unchecked)
pub extern "js" fn JsValue::to_gpu_supported_limits(
  self : JsValue,
) -> GPUSupportedLimits =
  #| (self) => self

///|
pub extern "js" fn GPUSupportedLimits::get_max_texture_dimension_1d(
  self : GPUSupportedLimits,
) -> Int =
  #| (self) => self.maxTextureDimension1D

///|
pub extern "js" fn GPUSupportedLimits::get_max_texture_dimension_2d(
  self : GPUSupportedLimits,
) -> Int =
  #| (self) => self.maxTextureDimension2D

///|
pub extern "js" fn GPUSupportedLimits::get_max_texture_dimension_3d(
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
  #| (self) => BigInt.asUintN(64, BigInt(self.maxUniformBufferBindingSize))

///|
pub extern "js" fn GPUSupportedLimits::get_max_storage_buffer_binding_size(
  self : GPUSupportedLimits,
) -> Int64 =
  #| (self) => BigInt.asUintN(64, BigInt(self.maxStorageBufferBindingSize))

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
  #| (self) => BigInt.asUintN(64, BigInt(self.maxBufferSize))

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
/// Cast JsValue to GPUSupportedFeatures (unchecked)
pub extern "js" fn GPUSupportedFeatures::from_js_value(
  v : JsValue,
) -> GPUSupportedFeatures =
  #| (v) => v

///|
/// Safely cast JsValue to GPUSupportedFeatures (checked with instanceof)
pub extern "js" fn GPUSupportedFeatures::from_js_value_opt(
  v : JsValue,
) -> GPUSupportedFeatures? =
  #| (v) => (v instanceof GPUSupportedFeatures) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPUSupportedFeatures (checked with instanceof)
pub extern "js" fn JsValue::as_gpu_supported_features(
  self : JsValue,
) -> GPUSupportedFeatures? =
  #| (self) => (self instanceof GPUSupportedFeatures) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPUSupportedFeatures (unchecked)
pub extern "js" fn JsValue::to_gpu_supported_features(
  self : JsValue,
) -> GPUSupportedFeatures =
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
/// Cast JsValue to WGSLLanguageFeatures (unchecked)
pub extern "js" fn WGSLLanguageFeatures::from_js_value(
  v : JsValue,
) -> WGSLLanguageFeatures =
  #| (v) => v

///|
/// Safely cast JsValue to WGSLLanguageFeatures (checked with instanceof)
pub extern "js" fn WGSLLanguageFeatures::from_js_value_opt(
  v : JsValue,
) -> WGSLLanguageFeatures? =
  #| (v) => (v instanceof WGSLLanguageFeatures) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WGSLLanguageFeatures (checked with instanceof)
pub extern "js" fn JsValue::as_wgsl_language_features(
  self : JsValue,
) -> WGSLLanguageFeatures? =
  #| (self) => (self instanceof WGSLLanguageFeatures) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WGSLLanguageFeatures (unchecked)
pub extern "js" fn JsValue::to_wgsl_language_features(
  self : JsValue,
) -> WGSLLanguageFeatures =
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
/// Cast JsValue to GPUAdapterInfo (unchecked)
pub extern "js" fn GPUAdapterInfo::from_js_value(v : JsValue) -> GPUAdapterInfo =
  #| (v) => v

///|
/// Safely cast JsValue to GPUAdapterInfo (checked with instanceof)
pub extern "js" fn GPUAdapterInfo::from_js_value_opt(
  v : JsValue,
) -> GPUAdapterInfo? =
  #| (v) => (v instanceof GPUAdapterInfo) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPUAdapterInfo (checked with instanceof)
pub extern "js" fn JsValue::as_gpu_adapter_info(
  self : JsValue,
) -> GPUAdapterInfo? =
  #| (self) => (self instanceof GPUAdapterInfo) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPUAdapterInfo (unchecked)
pub extern "js" fn JsValue::to_gpu_adapter_info(
  self : JsValue,
) -> GPUAdapterInfo =
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
/// Cast JsValue to GPU (unchecked)
pub extern "js" fn GPU::from_js_value(v : JsValue) -> GPU =
  #| (v) => v

///|
/// Safely cast JsValue to GPU (checked with instanceof)
pub extern "js" fn GPU::from_js_value_opt(v : JsValue) -> GPU? =
  #| (v) => (v instanceof GPU) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPU (checked with instanceof)
pub extern "js" fn JsValue::as_gpu(self : JsValue) -> GPU? =
  #| (self) => (self instanceof GPU) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPU (unchecked)
pub extern "js" fn JsValue::to_gpu(self : JsValue) -> GPU =
  #| (self) => self

///|
pub extern "js" fn GPU::request_adapter(self : GPU) -> Promise[GPUAdapter?] =
  #| (self) => self.requestAdapter().then(value => (() => { const v = value; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })())

///|
extern "js" fn GPU::request_adapter_with_options_ffi(
  self : GPU,
  options : JsValue,
) -> Promise[GPUAdapter?] =
  #| (self, options) => self.requestAdapter(options).then(value => (() => { const v = value; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })())

///|
pub fn GPU::request_adapter_with_options(
  self : GPU,
  options : GPURequestAdapterOptions,
) -> Promise[GPUAdapter?] {
  GPU::request_adapter_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn GPU::get_preferred_canvas_format(
  self : GPU,
) -> GPUTextureFormat =
  #| (self) => ['r8unorm', 'r8snorm', 'r8uint', 'r8sint', 'r16unorm', 'r16snorm', 'r16uint', 'r16sint', 'r16float', 'rg8unorm', 'rg8snorm', 'rg8uint', 'rg8sint', 'r32uint', 'r32sint', 'r32float', 'rg16unorm', 'rg16snorm', 'rg16uint', 'rg16sint', 'rg16float', 'rgba8unorm', 'rgba8unorm-srgb', 'rgba8snorm', 'rgba8uint', 'rgba8sint', 'bgra8unorm', 'bgra8unorm-srgb', 'rgb9e5ufloat', 'rgb10a2uint', 'rgb10a2unorm', 'rg11b10ufloat', 'rg32uint', 'rg32sint', 'rg32float', 'rgba16unorm', 'rgba16snorm', 'rgba16uint', 'rgba16sint', 'rgba16float', 'rgba32uint', 'rgba32sint', 'rgba32float', 'stencil8', 'depth16unorm', 'depth24plus', 'depth24plus-stencil8', 'depth32float', 'depth32float-stencil8', 'bc1-rgba-unorm', 'bc1-rgba-unorm-srgb', 'bc2-rgba-unorm', 'bc2-rgba-unorm-srgb', 'bc3-rgba-unorm', 'bc3-rgba-unorm-srgb', 'bc4-r-unorm', 'bc4-r-snorm', 'bc5-rg-unorm', 'bc5-rg-snorm', 'bc6h-rgb-ufloat', 'bc6h-rgb-float', 'bc7-rgba-unorm', 'bc7-rgba-unorm-srgb', 'etc2-rgb8unorm', 'etc2-rgb8unorm-srgb', 'etc2-rgb8a1unorm', 'etc2-rgb8a1unorm-srgb', 'etc2-rgba8unorm', 'etc2-rgba8unorm-srgb', 'eac-r11unorm', 'eac-r11snorm', 'eac-rg11unorm', 'eac-rg11snorm', 'astc-4x4-unorm', 'astc-4x4-unorm-srgb', 'astc-5x4-unorm', 'astc-5x4-unorm-srgb', 'astc-5x5-unorm', 'astc-5x5-unorm-srgb', 'astc-6x5-unorm', 'astc-6x5-unorm-srgb', 'astc-6x6-unorm', 'astc-6x6-unorm-srgb', 'astc-8x5-unorm', 'astc-8x5-unorm-srgb', 'astc-8x6-unorm', 'astc-8x6-unorm-srgb', 'astc-8x8-unorm', 'astc-8x8-unorm-srgb', 'astc-10x5-unorm', 'astc-10x5-unorm-srgb', 'astc-10x6-unorm', 'astc-10x6-unorm-srgb', 'astc-10x8-unorm', 'astc-10x8-unorm-srgb', 'astc-10x10-unorm', 'astc-10x10-unorm-srgb', 'astc-12x10-unorm', 'astc-12x10-unorm-srgb', 'astc-12x12-unorm', 'astc-12x12-unorm-srgb'].indexOf(self.getPreferredCanvasFormat())

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
/// Cast JsValue to GPUAdapter (unchecked)
pub extern "js" fn GPUAdapter::from_js_value(v : JsValue) -> GPUAdapter =
  #| (v) => v

///|
/// Safely cast JsValue to GPUAdapter (checked with instanceof)
pub extern "js" fn GPUAdapter::from_js_value_opt(v : JsValue) -> GPUAdapter? =
  #| (v) => (v instanceof GPUAdapter) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPUAdapter (checked with instanceof)
pub extern "js" fn JsValue::as_gpu_adapter(self : JsValue) -> GPUAdapter? =
  #| (self) => (self instanceof GPUAdapter) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPUAdapter (unchecked)
pub extern "js" fn JsValue::to_gpu_adapter(self : JsValue) -> GPUAdapter =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum GPUAdapterRequestDeviceError {
  TypeError(JsError)
  OperationError(JsError)
  OtherError(JsError)
} derive(Debug)

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
) -> Promise[Result[GPUDevice, GPUAdapterRequestDeviceError]] =
  #| (self) => self.requestDevice().then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'OperationError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }))

///|
extern "js" fn GPUAdapter::request_device_with_descriptor_ffi(
  self : GPUAdapter,
  descriptor : JsValue,
) -> Promise[Result[GPUDevice, GPUAdapterRequestDeviceError]] =
  #| (self, descriptor) => self.requestDevice(descriptor).then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'OperationError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }))

///|
pub fn GPUAdapter::request_device_with_descriptor(
  self : GPUAdapter,
  descriptor : GPUDeviceDescriptor,
) -> Promise[Result[GPUDevice, GPUAdapterRequestDeviceError]] {
  GPUAdapter::request_device_with_descriptor_ffi(self, descriptor.to_js())
}

///|
/// GPUDevice interface
pub type GPUDevice

///|
pub extern "js" fn GPUDevice::to_js_value(self : GPUDevice) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to GPUDevice (unchecked)
pub extern "js" fn GPUDevice::from_js_value(v : JsValue) -> GPUDevice =
  #| (v) => v

///|
/// Safely cast JsValue to GPUDevice (checked with instanceof)
pub extern "js" fn GPUDevice::from_js_value_opt(v : JsValue) -> GPUDevice? =
  #| (v) => (v instanceof GPUDevice) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPUDevice (checked with instanceof)
pub extern "js" fn JsValue::as_gpu_device(self : JsValue) -> GPUDevice? =
  #| (self) => (self instanceof GPUDevice) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPUDevice (unchecked)
pub extern "js" fn JsValue::to_gpu_device(self : JsValue) -> GPUDevice =
  #| (self) => self

///|
pub extern "js" fn GPUDevice::to_event_target(self : GPUDevice) -> EventTarget =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum GPUDeviceCreateBufferError {
  RangeError(JsError)
  OtherError(JsError)
} derive(Debug)

///|
/// Error type for throwing methods
pub(all) enum GPUDeviceImportExternalTextureError {
  SecurityError(JsError)
  OtherError(JsError)
} derive(Debug)

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
extern "js" fn GPUDevice::create_buffer_ffi(
  self : GPUDevice,
  descriptor : JsValue,
) -> Result[GPUBuffer, GPUDeviceCreateBufferError] =
  #| (self, descriptor) => (() => { try { return { $tag: 1, _0: self.createBuffer(descriptor) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'RangeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub fn GPUDevice::create_buffer(
  self : GPUDevice,
  descriptor : GPUBufferDescriptor,
) -> Result[GPUBuffer, GPUDeviceCreateBufferError] {
  GPUDevice::create_buffer_ffi(self, descriptor.to_js())
}

///|
extern "js" fn GPUDevice::create_texture_ffi(
  self : GPUDevice,
  descriptor : JsValue,
) -> GPUTexture =
  #| (self, descriptor) => self.createTexture(descriptor)

///|
pub fn GPUDevice::create_texture(
  self : GPUDevice,
  descriptor : GPUTextureDescriptor,
) -> GPUTexture {
  GPUDevice::create_texture_ffi(self, descriptor.to_js())
}

///|
pub extern "js" fn GPUDevice::create_sampler(self : GPUDevice) -> GPUSampler =
  #| (self) => self.createSampler()

///|
extern "js" fn GPUDevice::create_sampler_with_descriptor_ffi(
  self : GPUDevice,
  descriptor : JsValue,
) -> GPUSampler =
  #| (self, descriptor) => self.createSampler(descriptor)

///|
pub fn GPUDevice::create_sampler_with_descriptor(
  self : GPUDevice,
  descriptor : GPUSamplerDescriptor,
) -> GPUSampler {
  GPUDevice::create_sampler_with_descriptor_ffi(self, descriptor.to_js())
}

///|
extern "js" fn GPUDevice::import_external_texture_ffi(
  self : GPUDevice,
  descriptor : JsValue,
) -> Result[GPUExternalTexture, GPUDeviceImportExternalTextureError] =
  #| (self, descriptor) => (() => { try { return { $tag: 1, _0: self.importExternalTexture(descriptor) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'SecurityError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub fn GPUDevice::import_external_texture(
  self : GPUDevice,
  descriptor : GPUExternalTextureDescriptor,
) -> Result[GPUExternalTexture, GPUDeviceImportExternalTextureError] {
  GPUDevice::import_external_texture_ffi(self, descriptor.to_js())
}

///|
extern "js" fn GPUDevice::create_bind_group_layout_ffi(
  self : GPUDevice,
  descriptor : JsValue,
) -> GPUBindGroupLayout =
  #| (self, descriptor) => self.createBindGroupLayout(descriptor)

///|
pub fn GPUDevice::create_bind_group_layout(
  self : GPUDevice,
  descriptor : GPUBindGroupLayoutDescriptor,
) -> GPUBindGroupLayout {
  GPUDevice::create_bind_group_layout_ffi(self, descriptor.to_js())
}

///|
extern "js" fn GPUDevice::create_pipeline_layout_ffi(
  self : GPUDevice,
  descriptor : JsValue,
) -> GPUPipelineLayout =
  #| (self, descriptor) => self.createPipelineLayout(descriptor)

///|
pub fn GPUDevice::create_pipeline_layout(
  self : GPUDevice,
  descriptor : GPUPipelineLayoutDescriptor,
) -> GPUPipelineLayout {
  GPUDevice::create_pipeline_layout_ffi(self, descriptor.to_js())
}

///|
extern "js" fn GPUDevice::create_bind_group_ffi(
  self : GPUDevice,
  descriptor : JsValue,
) -> GPUBindGroup =
  #| (self, descriptor) => self.createBindGroup(descriptor)

///|
pub fn GPUDevice::create_bind_group(
  self : GPUDevice,
  descriptor : GPUBindGroupDescriptor,
) -> GPUBindGroup {
  GPUDevice::create_bind_group_ffi(self, descriptor.to_js())
}

///|
extern "js" fn GPUDevice::create_shader_module_ffi(
  self : GPUDevice,
  descriptor : JsValue,
) -> GPUShaderModule =
  #| (self, descriptor) => self.createShaderModule(descriptor)

///|
pub fn GPUDevice::create_shader_module(
  self : GPUDevice,
  descriptor : GPUShaderModuleDescriptor,
) -> GPUShaderModule {
  GPUDevice::create_shader_module_ffi(self, descriptor.to_js())
}

///|
extern "js" fn GPUDevice::create_compute_pipeline_ffi(
  self : GPUDevice,
  descriptor : JsValue,
) -> GPUComputePipeline =
  #| (self, descriptor) => self.createComputePipeline(descriptor)

///|
pub fn GPUDevice::create_compute_pipeline(
  self : GPUDevice,
  descriptor : GPUComputePipelineDescriptor,
) -> GPUComputePipeline {
  GPUDevice::create_compute_pipeline_ffi(self, descriptor.to_js())
}

///|
extern "js" fn GPUDevice::create_render_pipeline_ffi(
  self : GPUDevice,
  descriptor : JsValue,
) -> GPURenderPipeline =
  #| (self, descriptor) => self.createRenderPipeline(descriptor)

///|
pub fn GPUDevice::create_render_pipeline(
  self : GPUDevice,
  descriptor : GPURenderPipelineDescriptor,
) -> GPURenderPipeline {
  GPUDevice::create_render_pipeline_ffi(self, descriptor.to_js())
}

///|
extern "js" fn GPUDevice::create_compute_pipeline_async_ffi(
  self : GPUDevice,
  descriptor : JsValue,
) -> Promise[GPUComputePipeline] =
  #| (self, descriptor) => self.createComputePipelineAsync(descriptor)

///|
pub fn GPUDevice::create_compute_pipeline_async(
  self : GPUDevice,
  descriptor : GPUComputePipelineDescriptor,
) -> Promise[GPUComputePipeline] {
  GPUDevice::create_compute_pipeline_async_ffi(self, descriptor.to_js())
}

///|
extern "js" fn GPUDevice::create_render_pipeline_async_ffi(
  self : GPUDevice,
  descriptor : JsValue,
) -> Promise[GPURenderPipeline] =
  #| (self, descriptor) => self.createRenderPipelineAsync(descriptor)

///|
pub fn GPUDevice::create_render_pipeline_async(
  self : GPUDevice,
  descriptor : GPURenderPipelineDescriptor,
) -> Promise[GPURenderPipeline] {
  GPUDevice::create_render_pipeline_async_ffi(self, descriptor.to_js())
}

///|
pub extern "js" fn GPUDevice::create_command_encoder(
  self : GPUDevice,
) -> GPUCommandEncoder =
  #| (self) => self.createCommandEncoder()

///|
extern "js" fn GPUDevice::create_command_encoder_with_descriptor_ffi(
  self : GPUDevice,
  descriptor : JsValue,
) -> GPUCommandEncoder =
  #| (self, descriptor) => self.createCommandEncoder(descriptor)

///|
pub fn GPUDevice::create_command_encoder_with_descriptor(
  self : GPUDevice,
  descriptor : GPUCommandEncoderDescriptor,
) -> GPUCommandEncoder {
  GPUDevice::create_command_encoder_with_descriptor_ffi(
    self,
    descriptor.to_js(),
  )
}

///|
extern "js" fn GPUDevice::create_render_bundle_encoder_ffi(
  self : GPUDevice,
  descriptor : JsValue,
) -> GPURenderBundleEncoder =
  #| (self, descriptor) => self.createRenderBundleEncoder(descriptor)

///|
pub fn GPUDevice::create_render_bundle_encoder(
  self : GPUDevice,
  descriptor : GPURenderBundleEncoderDescriptor,
) -> GPURenderBundleEncoder {
  GPUDevice::create_render_bundle_encoder_ffi(self, descriptor.to_js())
}

///|
extern "js" fn GPUDevice::create_query_set_ffi(
  self : GPUDevice,
  descriptor : JsValue,
) -> GPUQuerySet =
  #| (self, descriptor) => self.createQuerySet(descriptor)

///|
pub fn GPUDevice::create_query_set(
  self : GPUDevice,
  descriptor : GPUQuerySetDescriptor,
) -> GPUQuerySet {
  GPUDevice::create_query_set_ffi(self, descriptor.to_js())
}

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
  #| (self) => self.popErrorScope().then(value => (() => { const v = value; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })())

///|
pub extern "js" fn GPUDevice::set_onuncapturederror(
  self : GPUDevice,
  handler : (GPUUncapturedErrorEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onuncapturederror = (e) => handler(e) }

///|
pub extern "js" fn GPUDevice::clear_onuncapturederror(self : GPUDevice) -> Unit =
  #| (self) => { self.onuncapturederror = null }

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
/// Cast JsValue to GPUBuffer (unchecked)
pub extern "js" fn GPUBuffer::from_js_value(v : JsValue) -> GPUBuffer =
  #| (v) => v

///|
/// Safely cast JsValue to GPUBuffer (checked with instanceof)
pub extern "js" fn GPUBuffer::from_js_value_opt(v : JsValue) -> GPUBuffer? =
  #| (v) => (v instanceof GPUBuffer) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPUBuffer (checked with instanceof)
pub extern "js" fn JsValue::as_gpu_buffer(self : JsValue) -> GPUBuffer? =
  #| (self) => (self instanceof GPUBuffer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPUBuffer (unchecked)
pub extern "js" fn JsValue::to_gpu_buffer(self : JsValue) -> GPUBuffer =
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
  #| (self) => ['unmapped', 'pending', 'mapped'].indexOf(self.mapState)

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
  #| (self, mode, offset, size) => self.mapAsync(mode, Number(offset), Number(size))

///|
pub extern "js" fn GPUBuffer::get_mapped_range(self : GPUBuffer) -> ArrayBuffer =
  #| (self) => self.getMappedRange()

///|
pub extern "js" fn GPUBuffer::get_mapped_range_with_size(
  self : GPUBuffer,
  offset : GPUSize64,
  size : GPUSize64,
) -> ArrayBuffer =
  #| (self, offset, size) => self.getMappedRange(Number(offset), Number(size))

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
/// Cast JsValue to GPUTexture (unchecked)
pub extern "js" fn GPUTexture::from_js_value(v : JsValue) -> GPUTexture =
  #| (v) => v

///|
/// Safely cast JsValue to GPUTexture (checked with instanceof)
pub extern "js" fn GPUTexture::from_js_value_opt(v : JsValue) -> GPUTexture? =
  #| (v) => (v instanceof GPUTexture) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPUTexture (checked with instanceof)
pub extern "js" fn JsValue::as_gpu_texture(self : JsValue) -> GPUTexture? =
  #| (self) => (self instanceof GPUTexture) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPUTexture (unchecked)
pub extern "js" fn JsValue::to_gpu_texture(self : JsValue) -> GPUTexture =
  #| (self) => self

///|
pub extern "js" fn GPUTexture::create_view(self : GPUTexture) -> GPUTextureView =
  #| (self) => self.createView()

///|
extern "js" fn GPUTexture::create_view_with_descriptor_ffi(
  self : GPUTexture,
  descriptor : JsValue,
) -> GPUTextureView =
  #| (self, descriptor) => self.createView(descriptor)

///|
pub fn GPUTexture::create_view_with_descriptor(
  self : GPUTexture,
  descriptor : GPUTextureViewDescriptor,
) -> GPUTextureView {
  GPUTexture::create_view_with_descriptor_ffi(self, descriptor.to_js())
}

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
  #| (self) => ['1d', '2d', '3d'].indexOf(self.dimension)

///|
pub extern "js" fn GPUTexture::get_format(
  self : GPUTexture,
) -> GPUTextureFormat =
  #| (self) => ['r8unorm', 'r8snorm', 'r8uint', 'r8sint', 'r16unorm', 'r16snorm', 'r16uint', 'r16sint', 'r16float', 'rg8unorm', 'rg8snorm', 'rg8uint', 'rg8sint', 'r32uint', 'r32sint', 'r32float', 'rg16unorm', 'rg16snorm', 'rg16uint', 'rg16sint', 'rg16float', 'rgba8unorm', 'rgba8unorm-srgb', 'rgba8snorm', 'rgba8uint', 'rgba8sint', 'bgra8unorm', 'bgra8unorm-srgb', 'rgb9e5ufloat', 'rgb10a2uint', 'rgb10a2unorm', 'rg11b10ufloat', 'rg32uint', 'rg32sint', 'rg32float', 'rgba16unorm', 'rgba16snorm', 'rgba16uint', 'rgba16sint', 'rgba16float', 'rgba32uint', 'rgba32sint', 'rgba32float', 'stencil8', 'depth16unorm', 'depth24plus', 'depth24plus-stencil8', 'depth32float', 'depth32float-stencil8', 'bc1-rgba-unorm', 'bc1-rgba-unorm-srgb', 'bc2-rgba-unorm', 'bc2-rgba-unorm-srgb', 'bc3-rgba-unorm', 'bc3-rgba-unorm-srgb', 'bc4-r-unorm', 'bc4-r-snorm', 'bc5-rg-unorm', 'bc5-rg-snorm', 'bc6h-rgb-ufloat', 'bc6h-rgb-float', 'bc7-rgba-unorm', 'bc7-rgba-unorm-srgb', 'etc2-rgb8unorm', 'etc2-rgb8unorm-srgb', 'etc2-rgb8a1unorm', 'etc2-rgb8a1unorm-srgb', 'etc2-rgba8unorm', 'etc2-rgba8unorm-srgb', 'eac-r11unorm', 'eac-r11snorm', 'eac-rg11unorm', 'eac-rg11snorm', 'astc-4x4-unorm', 'astc-4x4-unorm-srgb', 'astc-5x4-unorm', 'astc-5x4-unorm-srgb', 'astc-5x5-unorm', 'astc-5x5-unorm-srgb', 'astc-6x5-unorm', 'astc-6x5-unorm-srgb', 'astc-6x6-unorm', 'astc-6x6-unorm-srgb', 'astc-8x5-unorm', 'astc-8x5-unorm-srgb', 'astc-8x6-unorm', 'astc-8x6-unorm-srgb', 'astc-8x8-unorm', 'astc-8x8-unorm-srgb', 'astc-10x5-unorm', 'astc-10x5-unorm-srgb', 'astc-10x6-unorm', 'astc-10x6-unorm-srgb', 'astc-10x8-unorm', 'astc-10x8-unorm-srgb', 'astc-10x10-unorm', 'astc-10x10-unorm-srgb', 'astc-12x10-unorm', 'astc-12x10-unorm-srgb', 'astc-12x12-unorm', 'astc-12x12-unorm-srgb'].indexOf(self.format)

///|
pub extern "js" fn GPUTexture::get_usage(self : GPUTexture) -> GPUFlagsConstant =
  #| (self) => self.usage

///|
pub extern "js" fn GPUTexture::get_texture_binding_view_dimension(
  self : GPUTexture,
) -> GPUTextureViewDimensionOrVoid =
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
/// Cast JsValue to GPUTextureView (unchecked)
pub extern "js" fn GPUTextureView::from_js_value(v : JsValue) -> GPUTextureView =
  #| (v) => v

///|
/// Safely cast JsValue to GPUTextureView (checked with instanceof)
pub extern "js" fn GPUTextureView::from_js_value_opt(
  v : JsValue,
) -> GPUTextureView? =
  #| (v) => (v instanceof GPUTextureView) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPUTextureView (checked with instanceof)
pub extern "js" fn JsValue::as_gpu_texture_view(
  self : JsValue,
) -> GPUTextureView? =
  #| (self) => (self instanceof GPUTextureView) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPUTextureView (unchecked)
pub extern "js" fn JsValue::to_gpu_texture_view(
  self : JsValue,
) -> GPUTextureView =
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
/// Cast JsValue to GPUExternalTexture (unchecked)
pub extern "js" fn GPUExternalTexture::from_js_value(
  v : JsValue,
) -> GPUExternalTexture =
  #| (v) => v

///|
/// Safely cast JsValue to GPUExternalTexture (checked with instanceof)
pub extern "js" fn GPUExternalTexture::from_js_value_opt(
  v : JsValue,
) -> GPUExternalTexture? =
  #| (v) => (v instanceof GPUExternalTexture) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPUExternalTexture (checked with instanceof)
pub extern "js" fn JsValue::as_gpu_external_texture(
  self : JsValue,
) -> GPUExternalTexture? =
  #| (self) => (self instanceof GPUExternalTexture) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPUExternalTexture (unchecked)
pub extern "js" fn JsValue::to_gpu_external_texture(
  self : JsValue,
) -> GPUExternalTexture =
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
/// Cast JsValue to GPUSampler (unchecked)
pub extern "js" fn GPUSampler::from_js_value(v : JsValue) -> GPUSampler =
  #| (v) => v

///|
/// Safely cast JsValue to GPUSampler (checked with instanceof)
pub extern "js" fn GPUSampler::from_js_value_opt(v : JsValue) -> GPUSampler? =
  #| (v) => (v instanceof GPUSampler) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPUSampler (checked with instanceof)
pub extern "js" fn JsValue::as_gpu_sampler(self : JsValue) -> GPUSampler? =
  #| (self) => (self instanceof GPUSampler) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPUSampler (unchecked)
pub extern "js" fn JsValue::to_gpu_sampler(self : JsValue) -> GPUSampler =
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
/// Cast JsValue to GPUBindGroupLayout (unchecked)
pub extern "js" fn GPUBindGroupLayout::from_js_value(
  v : JsValue,
) -> GPUBindGroupLayout =
  #| (v) => v

///|
/// Safely cast JsValue to GPUBindGroupLayout (checked with instanceof)
pub extern "js" fn GPUBindGroupLayout::from_js_value_opt(
  v : JsValue,
) -> GPUBindGroupLayout? =
  #| (v) => (v instanceof GPUBindGroupLayout) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPUBindGroupLayout (checked with instanceof)
pub extern "js" fn JsValue::as_gpu_bind_group_layout(
  self : JsValue,
) -> GPUBindGroupLayout? =
  #| (self) => (self instanceof GPUBindGroupLayout) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPUBindGroupLayout (unchecked)
pub extern "js" fn JsValue::to_gpu_bind_group_layout(
  self : JsValue,
) -> GPUBindGroupLayout =
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
/// Cast JsValue to GPUBindGroup (unchecked)
pub extern "js" fn GPUBindGroup::from_js_value(v : JsValue) -> GPUBindGroup =
  #| (v) => v

///|
/// Safely cast JsValue to GPUBindGroup (checked with instanceof)
pub extern "js" fn GPUBindGroup::from_js_value_opt(
  v : JsValue,
) -> GPUBindGroup? =
  #| (v) => (v instanceof GPUBindGroup) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPUBindGroup (checked with instanceof)
pub extern "js" fn JsValue::as_gpu_bind_group(self : JsValue) -> GPUBindGroup? =
  #| (self) => (self instanceof GPUBindGroup) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPUBindGroup (unchecked)
pub extern "js" fn JsValue::to_gpu_bind_group(self : JsValue) -> GPUBindGroup =
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
/// Cast JsValue to GPUPipelineLayout (unchecked)
pub extern "js" fn GPUPipelineLayout::from_js_value(
  v : JsValue,
) -> GPUPipelineLayout =
  #| (v) => v

///|
/// Safely cast JsValue to GPUPipelineLayout (checked with instanceof)
pub extern "js" fn GPUPipelineLayout::from_js_value_opt(
  v : JsValue,
) -> GPUPipelineLayout? =
  #| (v) => (v instanceof GPUPipelineLayout) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPUPipelineLayout (checked with instanceof)
pub extern "js" fn JsValue::as_gpu_pipeline_layout(
  self : JsValue,
) -> GPUPipelineLayout? =
  #| (self) => (self instanceof GPUPipelineLayout) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPUPipelineLayout (unchecked)
pub extern "js" fn JsValue::to_gpu_pipeline_layout(
  self : JsValue,
) -> GPUPipelineLayout =
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
/// Cast JsValue to GPUShaderModule (unchecked)
pub extern "js" fn GPUShaderModule::from_js_value(
  v : JsValue,
) -> GPUShaderModule =
  #| (v) => v

///|
/// Safely cast JsValue to GPUShaderModule (checked with instanceof)
pub extern "js" fn GPUShaderModule::from_js_value_opt(
  v : JsValue,
) -> GPUShaderModule? =
  #| (v) => (v instanceof GPUShaderModule) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPUShaderModule (checked with instanceof)
pub extern "js" fn JsValue::as_gpu_shader_module(
  self : JsValue,
) -> GPUShaderModule? =
  #| (self) => (self instanceof GPUShaderModule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPUShaderModule (unchecked)
pub extern "js" fn JsValue::to_gpu_shader_module(
  self : JsValue,
) -> GPUShaderModule =
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
/// Cast JsValue to GPUCompilationMessage (unchecked)
pub extern "js" fn GPUCompilationMessage::from_js_value(
  v : JsValue,
) -> GPUCompilationMessage =
  #| (v) => v

///|
/// Safely cast JsValue to GPUCompilationMessage (checked with instanceof)
pub extern "js" fn GPUCompilationMessage::from_js_value_opt(
  v : JsValue,
) -> GPUCompilationMessage? =
  #| (v) => (v instanceof GPUCompilationMessage) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPUCompilationMessage (checked with instanceof)
pub extern "js" fn JsValue::as_gpu_compilation_message(
  self : JsValue,
) -> GPUCompilationMessage? =
  #| (self) => (self instanceof GPUCompilationMessage) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPUCompilationMessage (unchecked)
pub extern "js" fn JsValue::to_gpu_compilation_message(
  self : JsValue,
) -> GPUCompilationMessage =
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
  #| (self) => ['error', 'warning', 'info'].indexOf(self.type)

///|
pub extern "js" fn GPUCompilationMessage::get_line_num(
  self : GPUCompilationMessage,
) -> Int64 =
  #| (self) => BigInt.asUintN(64, BigInt(self.lineNum))

///|
pub extern "js" fn GPUCompilationMessage::get_line_pos(
  self : GPUCompilationMessage,
) -> Int64 =
  #| (self) => BigInt.asUintN(64, BigInt(self.linePos))

///|
pub extern "js" fn GPUCompilationMessage::get_offset(
  self : GPUCompilationMessage,
) -> Int64 =
  #| (self) => BigInt.asUintN(64, BigInt(self.offset))

///|
pub extern "js" fn GPUCompilationMessage::get_length(
  self : GPUCompilationMessage,
) -> Int64 =
  #| (self) => BigInt.asUintN(64, BigInt(self.length))

///|
/// GPUCompilationInfo interface
pub type GPUCompilationInfo

///|
pub extern "js" fn GPUCompilationInfo::to_js_value(
  self : GPUCompilationInfo,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to GPUCompilationInfo (unchecked)
pub extern "js" fn GPUCompilationInfo::from_js_value(
  v : JsValue,
) -> GPUCompilationInfo =
  #| (v) => v

///|
/// Safely cast JsValue to GPUCompilationInfo (checked with instanceof)
pub extern "js" fn GPUCompilationInfo::from_js_value_opt(
  v : JsValue,
) -> GPUCompilationInfo? =
  #| (v) => (v instanceof GPUCompilationInfo) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPUCompilationInfo (checked with instanceof)
pub extern "js" fn JsValue::as_gpu_compilation_info(
  self : JsValue,
) -> GPUCompilationInfo? =
  #| (self) => (self instanceof GPUCompilationInfo) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPUCompilationInfo (unchecked)
pub extern "js" fn JsValue::to_gpu_compilation_info(
  self : JsValue,
) -> GPUCompilationInfo =
  #| (self) => self

///|
pub extern "js" fn GPUCompilationInfo::get_messages(
  self : GPUCompilationInfo,
) -> FixedArray[GPUCompilationMessage] =
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
/// Cast JsValue to GPUPipelineError (unchecked)
pub extern "js" fn GPUPipelineError::from_js_value(
  v : JsValue,
) -> GPUPipelineError =
  #| (v) => v

///|
/// Safely cast JsValue to GPUPipelineError (checked with instanceof)
pub extern "js" fn GPUPipelineError::from_js_value_opt(
  v : JsValue,
) -> GPUPipelineError? =
  #| (v) => (v instanceof GPUPipelineError) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPUPipelineError (checked with instanceof)
pub extern "js" fn JsValue::as_gpu_pipeline_error(
  self : JsValue,
) -> GPUPipelineError? =
  #| (self) => (self instanceof GPUPipelineError) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPUPipelineError (unchecked)
pub extern "js" fn JsValue::to_gpu_pipeline_error(
  self : JsValue,
) -> GPUPipelineError =
  #| (self) => self

///|
pub extern "js" fn GPUPipelineError::to_dom_exception(
  self : GPUPipelineError,
) -> DOMException =
  #| (self) => self

///|
pub extern "js" fn GPUPipelineError::new() -> GPUPipelineError =
  #| () => new GPUPipelineError()

///|
extern "js" fn GPUPipelineError::new_with_options_ffi(
  message : String,
  options : JsValue,
) -> GPUPipelineError =
  #| (message, options) => new GPUPipelineError(message, options)

///|
pub fn GPUPipelineError::new_with_options(
  message : String,
  options : GPUPipelineErrorInit,
) -> GPUPipelineError {
  GPUPipelineError::new_with_options_ffi(message, options.to_js())
}

///|
pub extern "js" fn GPUPipelineError::get_reason(
  self : GPUPipelineError,
) -> GPUPipelineErrorReason =
  #| (self) => ['validation', 'internal'].indexOf(self.reason)

///|
/// GPUComputePipeline interface
pub type GPUComputePipeline

///|
pub extern "js" fn GPUComputePipeline::to_js_value(
  self : GPUComputePipeline,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to GPUComputePipeline (unchecked)
pub extern "js" fn GPUComputePipeline::from_js_value(
  v : JsValue,
) -> GPUComputePipeline =
  #| (v) => v

///|
/// Safely cast JsValue to GPUComputePipeline (checked with instanceof)
pub extern "js" fn GPUComputePipeline::from_js_value_opt(
  v : JsValue,
) -> GPUComputePipeline? =
  #| (v) => (v instanceof GPUComputePipeline) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPUComputePipeline (checked with instanceof)
pub extern "js" fn JsValue::as_gpu_compute_pipeline(
  self : JsValue,
) -> GPUComputePipeline? =
  #| (self) => (self instanceof GPUComputePipeline) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPUComputePipeline (unchecked)
pub extern "js" fn JsValue::to_gpu_compute_pipeline(
  self : JsValue,
) -> GPUComputePipeline =
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
/// Cast JsValue to GPURenderPipeline (unchecked)
pub extern "js" fn GPURenderPipeline::from_js_value(
  v : JsValue,
) -> GPURenderPipeline =
  #| (v) => v

///|
/// Safely cast JsValue to GPURenderPipeline (checked with instanceof)
pub extern "js" fn GPURenderPipeline::from_js_value_opt(
  v : JsValue,
) -> GPURenderPipeline? =
  #| (v) => (v instanceof GPURenderPipeline) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPURenderPipeline (checked with instanceof)
pub extern "js" fn JsValue::as_gpu_render_pipeline(
  self : JsValue,
) -> GPURenderPipeline? =
  #| (self) => (self instanceof GPURenderPipeline) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPURenderPipeline (unchecked)
pub extern "js" fn JsValue::to_gpu_render_pipeline(
  self : JsValue,
) -> GPURenderPipeline =
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
/// Cast JsValue to GPUCommandBuffer (unchecked)
pub extern "js" fn GPUCommandBuffer::from_js_value(
  v : JsValue,
) -> GPUCommandBuffer =
  #| (v) => v

///|
/// Safely cast JsValue to GPUCommandBuffer (checked with instanceof)
pub extern "js" fn GPUCommandBuffer::from_js_value_opt(
  v : JsValue,
) -> GPUCommandBuffer? =
  #| (v) => (v instanceof GPUCommandBuffer) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPUCommandBuffer (checked with instanceof)
pub extern "js" fn JsValue::as_gpu_command_buffer(
  self : JsValue,
) -> GPUCommandBuffer? =
  #| (self) => (self instanceof GPUCommandBuffer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPUCommandBuffer (unchecked)
pub extern "js" fn JsValue::to_gpu_command_buffer(
  self : JsValue,
) -> GPUCommandBuffer =
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
/// Cast JsValue to GPUCommandEncoder (unchecked)
pub extern "js" fn GPUCommandEncoder::from_js_value(
  v : JsValue,
) -> GPUCommandEncoder =
  #| (v) => v

///|
/// Safely cast JsValue to GPUCommandEncoder (checked with instanceof)
pub extern "js" fn GPUCommandEncoder::from_js_value_opt(
  v : JsValue,
) -> GPUCommandEncoder? =
  #| (v) => (v instanceof GPUCommandEncoder) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPUCommandEncoder (checked with instanceof)
pub extern "js" fn JsValue::as_gpu_command_encoder(
  self : JsValue,
) -> GPUCommandEncoder? =
  #| (self) => (self instanceof GPUCommandEncoder) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPUCommandEncoder (unchecked)
pub extern "js" fn JsValue::to_gpu_command_encoder(
  self : JsValue,
) -> GPUCommandEncoder =
  #| (self) => self

///|
extern "js" fn GPUCommandEncoder::begin_render_pass_ffi(
  self : GPUCommandEncoder,
  descriptor : JsValue,
) -> GPURenderPassEncoder =
  #| (self, descriptor) => self.beginRenderPass(descriptor)

///|
pub fn GPUCommandEncoder::begin_render_pass(
  self : GPUCommandEncoder,
  descriptor : GPURenderPassDescriptor,
) -> GPURenderPassEncoder {
  GPUCommandEncoder::begin_render_pass_ffi(self, descriptor.to_js())
}

///|
pub extern "js" fn GPUCommandEncoder::begin_compute_pass(
  self : GPUCommandEncoder,
) -> GPUComputePassEncoder =
  #| (self) => self.beginComputePass()

///|
extern "js" fn GPUCommandEncoder::begin_compute_pass_with_descriptor_ffi(
  self : GPUCommandEncoder,
  descriptor : JsValue,
) -> GPUComputePassEncoder =
  #| (self, descriptor) => self.beginComputePass(descriptor)

///|
pub fn GPUCommandEncoder::begin_compute_pass_with_descriptor(
  self : GPUCommandEncoder,
  descriptor : GPUComputePassDescriptor,
) -> GPUComputePassEncoder {
  GPUCommandEncoder::begin_compute_pass_with_descriptor_ffi(
    self,
    descriptor.to_js(),
  )
}

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
  #| (self, source, destination, size) => self.copyBufferToBuffer(source, destination, Number(size))

///|
pub extern "js" fn GPUCommandEncoder::copy_buffer_to_buffer_with_source_gpu_buffer_and_source_offset_gpu_size64_and_destination_gpu_buffer_and_destination_offset_gpu_size64(
  self : GPUCommandEncoder,
  source : GPUBuffer,
  source_offset : GPUSize64,
  destination : GPUBuffer,
  destination_offset : GPUSize64,
) -> Unit =
  #| (self, source, source_offset, destination, destination_offset) => self.copyBufferToBuffer(source, Number(source_offset), destination, Number(destination_offset))

///|
pub extern "js" fn GPUCommandEncoder::copy_buffer_to_buffer_with_source_gpu_buffer_and_source_offset_gpu_size64_and_destination_gpu_buffer_and_destination_offset_gpu_size64_and_size_gpu_size64(
  self : GPUCommandEncoder,
  source : GPUBuffer,
  source_offset : GPUSize64,
  destination : GPUBuffer,
  destination_offset : GPUSize64,
  size : GPUSize64,
) -> Unit =
  #| (self, source, source_offset, destination, destination_offset, size) => self.copyBufferToBuffer(source, Number(source_offset), destination, Number(destination_offset), Number(size))

///|
extern "js" fn GPUCommandEncoder::copy_buffer_to_texture_ffi(
  self : GPUCommandEncoder,
  source : JsValue,
  destination : JsValue,
  copy_size : GPUExtent3D,
) -> Unit =
  #| (self, source, destination, copy_size) => self.copyBufferToTexture(source, destination, copy_size)

///|
pub fn GPUCommandEncoder::copy_buffer_to_texture(
  self : GPUCommandEncoder,
  source : GPUTexelCopyBufferInfo,
  destination : GPUTexelCopyTextureInfo,
  copy_size : GPUExtent3D,
) -> Unit {
  GPUCommandEncoder::copy_buffer_to_texture_ffi(
    self,
    source.to_js(),
    destination.to_js(),
    copy_size,
  )
}

///|
extern "js" fn GPUCommandEncoder::copy_texture_to_buffer_ffi(
  self : GPUCommandEncoder,
  source : JsValue,
  destination : JsValue,
  copy_size : GPUExtent3D,
) -> Unit =
  #| (self, source, destination, copy_size) => self.copyTextureToBuffer(source, destination, copy_size)

///|
pub fn GPUCommandEncoder::copy_texture_to_buffer(
  self : GPUCommandEncoder,
  source : GPUTexelCopyTextureInfo,
  destination : GPUTexelCopyBufferInfo,
  copy_size : GPUExtent3D,
) -> Unit {
  GPUCommandEncoder::copy_texture_to_buffer_ffi(
    self,
    source.to_js(),
    destination.to_js(),
    copy_size,
  )
}

///|
extern "js" fn GPUCommandEncoder::copy_texture_to_texture_ffi(
  self : GPUCommandEncoder,
  source : JsValue,
  destination : JsValue,
  copy_size : GPUExtent3D,
) -> Unit =
  #| (self, source, destination, copy_size) => self.copyTextureToTexture(source, destination, copy_size)

///|
pub fn GPUCommandEncoder::copy_texture_to_texture(
  self : GPUCommandEncoder,
  source : GPUTexelCopyTextureInfo,
  destination : GPUTexelCopyTextureInfo,
  copy_size : GPUExtent3D,
) -> Unit {
  GPUCommandEncoder::copy_texture_to_texture_ffi(
    self,
    source.to_js(),
    destination.to_js(),
    copy_size,
  )
}

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
  #| (self, buffer, offset, size) => self.clearBuffer(buffer, Number(offset), Number(size))

///|
pub extern "js" fn GPUCommandEncoder::resolve_query_set(
  self : GPUCommandEncoder,
  query_set : GPUQuerySet,
  first_query : GPUSize32,
  query_count : GPUSize32,
  destination : GPUBuffer,
  destination_offset : GPUSize64,
) -> Unit =
  #| (self, query_set, first_query, query_count, destination, destination_offset) => self.resolveQuerySet(query_set, first_query, query_count, destination, Number(destination_offset))

///|
pub extern "js" fn GPUCommandEncoder::finish(
  self : GPUCommandEncoder,
) -> GPUCommandBuffer =
  #| (self) => self.finish()

///|
extern "js" fn GPUCommandEncoder::finish_with_descriptor_ffi(
  self : GPUCommandEncoder,
  descriptor : JsValue,
) -> GPUCommandBuffer =
  #| (self, descriptor) => self.finish(descriptor)

///|
pub fn GPUCommandEncoder::finish_with_descriptor(
  self : GPUCommandEncoder,
  descriptor : GPUCommandBufferDescriptor,
) -> GPUCommandBuffer {
  GPUCommandEncoder::finish_with_descriptor_ffi(self, descriptor.to_js())
}

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
pub extern "js" fn GPUCommandEncoder::copy_buffer_to_texture_with_array_of_gpu_integer_coordinate(
  self : GPUCommandEncoder,
  source : GPUTexelCopyBufferInfo,
  destination : GPUTexelCopyTextureInfo,
  copy_size : FixedArray[GPUIntegerCoordinate],
) -> Unit =
  #| (self, source, destination, copy_size) => self.copyBufferToTexture(source, destination, copy_size)

///|
pub extern "js" fn GPUCommandEncoder::copy_buffer_to_texture_with_gpu_extent_3d_dict(
  self : GPUCommandEncoder,
  source : GPUTexelCopyBufferInfo,
  destination : GPUTexelCopyTextureInfo,
  copy_size : GPUExtent3DDict,
) -> Unit =
  #| (self, source, destination, copy_size) => self.copyBufferToTexture(source, destination, copy_size)

///|
pub extern "js" fn GPUCommandEncoder::copy_texture_to_buffer_with_array_of_gpu_integer_coordinate(
  self : GPUCommandEncoder,
  source : GPUTexelCopyTextureInfo,
  destination : GPUTexelCopyBufferInfo,
  copy_size : FixedArray[GPUIntegerCoordinate],
) -> Unit =
  #| (self, source, destination, copy_size) => self.copyTextureToBuffer(source, destination, copy_size)

///|
pub extern "js" fn GPUCommandEncoder::copy_texture_to_buffer_with_gpu_extent_3d_dict(
  self : GPUCommandEncoder,
  source : GPUTexelCopyTextureInfo,
  destination : GPUTexelCopyBufferInfo,
  copy_size : GPUExtent3DDict,
) -> Unit =
  #| (self, source, destination, copy_size) => self.copyTextureToBuffer(source, destination, copy_size)

///|
pub extern "js" fn GPUCommandEncoder::copy_texture_to_texture_with_array_of_gpu_integer_coordinate(
  self : GPUCommandEncoder,
  source : GPUTexelCopyTextureInfo,
  destination : GPUTexelCopyTextureInfo,
  copy_size : FixedArray[GPUIntegerCoordinate],
) -> Unit =
  #| (self, source, destination, copy_size) => self.copyTextureToTexture(source, destination, copy_size)

///|
pub extern "js" fn GPUCommandEncoder::copy_texture_to_texture_with_gpu_extent_3d_dict(
  self : GPUCommandEncoder,
  source : GPUTexelCopyTextureInfo,
  destination : GPUTexelCopyTextureInfo,
  copy_size : GPUExtent3DDict,
) -> Unit =
  #| (self, source, destination, copy_size) => self.copyTextureToTexture(source, destination, copy_size)

///|
/// GPUComputePassEncoder interface
pub type GPUComputePassEncoder

///|
pub extern "js" fn GPUComputePassEncoder::to_js_value(
  self : GPUComputePassEncoder,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to GPUComputePassEncoder (unchecked)
pub extern "js" fn GPUComputePassEncoder::from_js_value(
  v : JsValue,
) -> GPUComputePassEncoder =
  #| (v) => v

///|
/// Safely cast JsValue to GPUComputePassEncoder (checked with instanceof)
pub extern "js" fn GPUComputePassEncoder::from_js_value_opt(
  v : JsValue,
) -> GPUComputePassEncoder? =
  #| (v) => (v instanceof GPUComputePassEncoder) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPUComputePassEncoder (checked with instanceof)
pub extern "js" fn JsValue::as_gpu_compute_pass_encoder(
  self : JsValue,
) -> GPUComputePassEncoder? =
  #| (self) => (self instanceof GPUComputePassEncoder) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPUComputePassEncoder (unchecked)
pub extern "js" fn JsValue::to_gpu_compute_pass_encoder(
  self : JsValue,
) -> GPUComputePassEncoder =
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
  #| (self, indirect_buffer, indirect_offset) => self.dispatchWorkgroupsIndirect(indirect_buffer, Number(indirect_offset))

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
  #| (self, index, bind_group) => self.setBindGroup(index, (bind_group.$tag === 1 ? bind_group._0 : null))

///|
pub extern "js" fn GPUComputePassEncoder::set_bind_group_with_dynamic_offsets(
  self : GPUComputePassEncoder,
  index : GPUIndex32,
  bind_group : GPUBindGroup?,
  dynamic_offsets : FixedArray[GPUBufferDynamicOffset],
) -> Unit =
  #| (self, index, bind_group, dynamic_offsets) => self.setBindGroup(index, (bind_group.$tag === 1 ? bind_group._0 : null), dynamic_offsets)

///|
pub extern "js" fn GPUComputePassEncoder::set_bind_group_with_index_gpu_index32_and_bind_group_and_dynamic_offsets_data_uint32_array_and_dynamic_offsets_data_start_gpu_size64_and_dynamic_offsets_data_length_gpu_size32(
  self : GPUComputePassEncoder,
  index : GPUIndex32,
  bind_group : GPUBindGroup?,
  dynamic_offsets_data : Uint32Array,
  dynamic_offsets_data_start : GPUSize64,
  dynamic_offsets_data_length : GPUSize32,
) -> Unit =
  #| (self, index, bind_group, dynamic_offsets_data, dynamic_offsets_data_start, dynamic_offsets_data_length) => self.setBindGroup(index, (bind_group.$tag === 1 ? bind_group._0 : null), dynamic_offsets_data, Number(dynamic_offsets_data_start), dynamic_offsets_data_length)

///|
/// GPURenderPassEncoder interface
pub type GPURenderPassEncoder

///|
pub extern "js" fn GPURenderPassEncoder::to_js_value(
  self : GPURenderPassEncoder,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to GPURenderPassEncoder (unchecked)
pub extern "js" fn GPURenderPassEncoder::from_js_value(
  v : JsValue,
) -> GPURenderPassEncoder =
  #| (v) => v

///|
/// Safely cast JsValue to GPURenderPassEncoder (checked with instanceof)
pub extern "js" fn GPURenderPassEncoder::from_js_value_opt(
  v : JsValue,
) -> GPURenderPassEncoder? =
  #| (v) => (v instanceof GPURenderPassEncoder) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPURenderPassEncoder (checked with instanceof)
pub extern "js" fn JsValue::as_gpu_render_pass_encoder(
  self : JsValue,
) -> GPURenderPassEncoder? =
  #| (self) => (self instanceof GPURenderPassEncoder) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPURenderPassEncoder (unchecked)
pub extern "js" fn JsValue::to_gpu_render_pass_encoder(
  self : JsValue,
) -> GPURenderPassEncoder =
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
  bundles : FixedArray[GPURenderBundle],
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
  #| (self, index, bind_group) => self.setBindGroup(index, (bind_group.$tag === 1 ? bind_group._0 : null))

///|
pub extern "js" fn GPURenderPassEncoder::set_bind_group_with_dynamic_offsets(
  self : GPURenderPassEncoder,
  index : GPUIndex32,
  bind_group : GPUBindGroup?,
  dynamic_offsets : FixedArray[GPUBufferDynamicOffset],
) -> Unit =
  #| (self, index, bind_group, dynamic_offsets) => self.setBindGroup(index, (bind_group.$tag === 1 ? bind_group._0 : null), dynamic_offsets)

///|
pub extern "js" fn GPURenderPassEncoder::set_bind_group_with_index_gpu_index32_and_bind_group_and_dynamic_offsets_data_uint32_array_and_dynamic_offsets_data_start_gpu_size64_and_dynamic_offsets_data_length_gpu_size32(
  self : GPURenderPassEncoder,
  index : GPUIndex32,
  bind_group : GPUBindGroup?,
  dynamic_offsets_data : Uint32Array,
  dynamic_offsets_data_start : GPUSize64,
  dynamic_offsets_data_length : GPUSize32,
) -> Unit =
  #| (self, index, bind_group, dynamic_offsets_data, dynamic_offsets_data_start, dynamic_offsets_data_length) => self.setBindGroup(index, (bind_group.$tag === 1 ? bind_group._0 : null), dynamic_offsets_data, Number(dynamic_offsets_data_start), dynamic_offsets_data_length)

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
  #| (self, buffer, index_format, offset, size) => self.setIndexBuffer(buffer, ['uint16', 'uint32'][index_format], Number(offset), Number(size))

///|
pub extern "js" fn GPURenderPassEncoder::set_vertex_buffer(
  self : GPURenderPassEncoder,
  slot : GPUIndex32,
  buffer : GPUBuffer?,
) -> Unit =
  #| (self, slot, buffer) => self.setVertexBuffer(slot, (buffer.$tag === 1 ? buffer._0 : null))

///|
pub extern "js" fn GPURenderPassEncoder::set_vertex_buffer_with_size(
  self : GPURenderPassEncoder,
  slot : GPUIndex32,
  buffer : GPUBuffer?,
  offset : GPUSize64,
  size : GPUSize64,
) -> Unit =
  #| (self, slot, buffer, offset, size) => self.setVertexBuffer(slot, (buffer.$tag === 1 ? buffer._0 : null), Number(offset), Number(size))

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
  #| (self, indirect_buffer, indirect_offset) => self.drawIndirect(indirect_buffer, Number(indirect_offset))

///|
pub extern "js" fn GPURenderPassEncoder::draw_indexed_indirect(
  self : GPURenderPassEncoder,
  indirect_buffer : GPUBuffer,
  indirect_offset : GPUSize64,
) -> Unit =
  #| (self, indirect_buffer, indirect_offset) => self.drawIndexedIndirect(indirect_buffer, Number(indirect_offset))

///|
pub extern "js" fn GPURenderPassEncoder::set_blend_constant_with_array_of_double(
  self : GPURenderPassEncoder,
  color : FixedArray[Double],
) -> Unit =
  #| (self, color) => self.setBlendConstant(color)

///|
pub extern "js" fn GPURenderPassEncoder::set_blend_constant_with_gpu_color_dict(
  self : GPURenderPassEncoder,
  color : GPUColorDict,
) -> Unit =
  #| (self, color) => self.setBlendConstant(color)

///|
/// GPURenderBundle interface
pub type GPURenderBundle

///|
pub extern "js" fn GPURenderBundle::to_js_value(
  self : GPURenderBundle,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to GPURenderBundle (unchecked)
pub extern "js" fn GPURenderBundle::from_js_value(
  v : JsValue,
) -> GPURenderBundle =
  #| (v) => v

///|
/// Safely cast JsValue to GPURenderBundle (checked with instanceof)
pub extern "js" fn GPURenderBundle::from_js_value_opt(
  v : JsValue,
) -> GPURenderBundle? =
  #| (v) => (v instanceof GPURenderBundle) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPURenderBundle (checked with instanceof)
pub extern "js" fn JsValue::as_gpu_render_bundle(
  self : JsValue,
) -> GPURenderBundle? =
  #| (self) => (self instanceof GPURenderBundle) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPURenderBundle (unchecked)
pub extern "js" fn JsValue::to_gpu_render_bundle(
  self : JsValue,
) -> GPURenderBundle =
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
/// Cast JsValue to GPURenderBundleEncoder (unchecked)
pub extern "js" fn GPURenderBundleEncoder::from_js_value(
  v : JsValue,
) -> GPURenderBundleEncoder =
  #| (v) => v

///|
/// Safely cast JsValue to GPURenderBundleEncoder (checked with instanceof)
pub extern "js" fn GPURenderBundleEncoder::from_js_value_opt(
  v : JsValue,
) -> GPURenderBundleEncoder? =
  #| (v) => (v instanceof GPURenderBundleEncoder) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPURenderBundleEncoder (checked with instanceof)
pub extern "js" fn JsValue::as_gpu_render_bundle_encoder(
  self : JsValue,
) -> GPURenderBundleEncoder? =
  #| (self) => (self instanceof GPURenderBundleEncoder) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPURenderBundleEncoder (unchecked)
pub extern "js" fn JsValue::to_gpu_render_bundle_encoder(
  self : JsValue,
) -> GPURenderBundleEncoder =
  #| (self) => self

///|
pub extern "js" fn GPURenderBundleEncoder::finish(
  self : GPURenderBundleEncoder,
) -> GPURenderBundle =
  #| (self) => self.finish()

///|
extern "js" fn GPURenderBundleEncoder::finish_with_descriptor_ffi(
  self : GPURenderBundleEncoder,
  descriptor : JsValue,
) -> GPURenderBundle =
  #| (self, descriptor) => self.finish(descriptor)

///|
pub fn GPURenderBundleEncoder::finish_with_descriptor(
  self : GPURenderBundleEncoder,
  descriptor : GPURenderBundleDescriptor,
) -> GPURenderBundle {
  GPURenderBundleEncoder::finish_with_descriptor_ffi(self, descriptor.to_js())
}

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
  #| (self, index, bind_group) => self.setBindGroup(index, (bind_group.$tag === 1 ? bind_group._0 : null))

///|
pub extern "js" fn GPURenderBundleEncoder::set_bind_group_with_dynamic_offsets(
  self : GPURenderBundleEncoder,
  index : GPUIndex32,
  bind_group : GPUBindGroup?,
  dynamic_offsets : FixedArray[GPUBufferDynamicOffset],
) -> Unit =
  #| (self, index, bind_group, dynamic_offsets) => self.setBindGroup(index, (bind_group.$tag === 1 ? bind_group._0 : null), dynamic_offsets)

///|
pub extern "js" fn GPURenderBundleEncoder::set_bind_group_with_index_gpu_index32_and_bind_group_and_dynamic_offsets_data_uint32_array_and_dynamic_offsets_data_start_gpu_size64_and_dynamic_offsets_data_length_gpu_size32(
  self : GPURenderBundleEncoder,
  index : GPUIndex32,
  bind_group : GPUBindGroup?,
  dynamic_offsets_data : Uint32Array,
  dynamic_offsets_data_start : GPUSize64,
  dynamic_offsets_data_length : GPUSize32,
) -> Unit =
  #| (self, index, bind_group, dynamic_offsets_data, dynamic_offsets_data_start, dynamic_offsets_data_length) => self.setBindGroup(index, (bind_group.$tag === 1 ? bind_group._0 : null), dynamic_offsets_data, Number(dynamic_offsets_data_start), dynamic_offsets_data_length)

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
  #| (self, buffer, index_format, offset, size) => self.setIndexBuffer(buffer, ['uint16', 'uint32'][index_format], Number(offset), Number(size))

///|
pub extern "js" fn GPURenderBundleEncoder::set_vertex_buffer(
  self : GPURenderBundleEncoder,
  slot : GPUIndex32,
  buffer : GPUBuffer?,
) -> Unit =
  #| (self, slot, buffer) => self.setVertexBuffer(slot, (buffer.$tag === 1 ? buffer._0 : null))

///|
pub extern "js" fn GPURenderBundleEncoder::set_vertex_buffer_with_size(
  self : GPURenderBundleEncoder,
  slot : GPUIndex32,
  buffer : GPUBuffer?,
  offset : GPUSize64,
  size : GPUSize64,
) -> Unit =
  #| (self, slot, buffer, offset, size) => self.setVertexBuffer(slot, (buffer.$tag === 1 ? buffer._0 : null), Number(offset), Number(size))

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
  #| (self, indirect_buffer, indirect_offset) => self.drawIndirect(indirect_buffer, Number(indirect_offset))

///|
pub extern "js" fn GPURenderBundleEncoder::draw_indexed_indirect(
  self : GPURenderBundleEncoder,
  indirect_buffer : GPUBuffer,
  indirect_offset : GPUSize64,
) -> Unit =
  #| (self, indirect_buffer, indirect_offset) => self.drawIndexedIndirect(indirect_buffer, Number(indirect_offset))

///|
/// GPUQueue interface
pub type GPUQueue

///|
pub extern "js" fn GPUQueue::to_js_value(self : GPUQueue) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to GPUQueue (unchecked)
pub extern "js" fn GPUQueue::from_js_value(v : JsValue) -> GPUQueue =
  #| (v) => v

///|
/// Safely cast JsValue to GPUQueue (checked with instanceof)
pub extern "js" fn GPUQueue::from_js_value_opt(v : JsValue) -> GPUQueue? =
  #| (v) => (v instanceof GPUQueue) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPUQueue (checked with instanceof)
pub extern "js" fn JsValue::as_gpu_queue(self : JsValue) -> GPUQueue? =
  #| (self) => (self instanceof GPUQueue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPUQueue (unchecked)
pub extern "js" fn JsValue::to_gpu_queue(self : JsValue) -> GPUQueue =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum GPUQueueWriteBufferError {
  OperationError(JsError)
  OtherError(JsError)
} derive(Debug)

///|
/// Error type for throwing methods
pub(all) enum GPUQueueCopyExternalImageToTextureError {
  SecurityError(JsError)
  OperationError(JsError)
  OtherError(JsError)
} derive(Debug)

///|
pub extern "js" fn GPUQueue::submit(
  self : GPUQueue,
  command_buffers : FixedArray[GPUCommandBuffer],
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
) -> Result[Unit, GPUQueueWriteBufferError] =
  #| (self, buffer, buffer_offset, data) => (() => { try { self.writeBuffer(buffer, Number(buffer_offset), data); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'OperationError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn GPUQueue::write_buffer_with_size(
  self : GPUQueue,
  buffer : GPUBuffer,
  buffer_offset : GPUSize64,
  data : AllowSharedBufferSource,
  data_offset : GPUSize64,
  size : GPUSize64,
) -> Result[Unit, GPUQueueWriteBufferError] =
  #| (self, buffer, buffer_offset, data, data_offset, size) => (() => { try { self.writeBuffer(buffer, Number(buffer_offset), data, Number(data_offset), Number(size)); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'OperationError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
extern "js" fn GPUQueue::write_texture_ffi(
  self : GPUQueue,
  destination : JsValue,
  data : AllowSharedBufferSource,
  data_layout : JsValue,
  size : GPUExtent3D,
) -> Unit =
  #| (self, destination, data, data_layout, size) => self.writeTexture(destination, data, data_layout, size)

///|
pub fn GPUQueue::write_texture(
  self : GPUQueue,
  destination : GPUTexelCopyTextureInfo,
  data : AllowSharedBufferSource,
  data_layout : GPUTexelCopyBufferLayout,
  size : GPUExtent3D,
) -> Unit {
  GPUQueue::write_texture_ffi(
    self,
    destination.to_js(),
    data,
    data_layout.to_js(),
    size,
  )
}

///|
extern "js" fn GPUQueue::copy_external_image_to_texture_ffi(
  self : GPUQueue,
  source : JsValue,
  destination : JsValue,
  copy_size : GPUExtent3D,
) -> Result[Unit, GPUQueueCopyExternalImageToTextureError] =
  #| (self, source, destination, copy_size) => (() => { try { self.copyExternalImageToTexture(source, destination, copy_size); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'SecurityError') return { $tag: 0, _0: e }; if (n === 'OperationError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }; } })()

///|
pub fn GPUQueue::copy_external_image_to_texture(
  self : GPUQueue,
  source : GPUCopyExternalImageSourceInfo,
  destination : GPUCopyExternalImageDestInfo,
  copy_size : GPUExtent3D,
) -> Result[Unit, GPUQueueCopyExternalImageToTextureError] {
  GPUQueue::copy_external_image_to_texture_ffi(
    self,
    source.to_js(),
    destination.to_js(),
    copy_size,
  )
}

///|
pub extern "js" fn GPUQueue::get_label(self : GPUQueue) -> String =
  #| (self) => self.label

///|
pub extern "js" fn GPUQueue::set_label(self : GPUQueue, value : String) -> Unit =
  #| (self, value) => { self.label = value }

///|
pub extern "js" fn GPUQueue::write_buffer_with_array_buffer(
  self : GPUQueue,
  buffer : GPUBuffer,
  buffer_offset : GPUSize64,
  data : ArrayBuffer,
  data_offset : GPUSize64,
  size : GPUSize64,
) -> Result[Unit, GPUQueueWriteBufferError] =
  #| (self, buffer, buffer_offset, data, data_offset, size) => (() => { try { self.writeBuffer(buffer, Number(buffer_offset), data, Number(data_offset), Number(size)); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'OperationError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn GPUQueue::write_buffer_with_shared_array_buffer(
  self : GPUQueue,
  buffer : GPUBuffer,
  buffer_offset : GPUSize64,
  data : SharedArrayBuffer,
  data_offset : GPUSize64,
  size : GPUSize64,
) -> Result[Unit, GPUQueueWriteBufferError] =
  #| (self, buffer, buffer_offset, data, data_offset, size) => (() => { try { self.writeBuffer(buffer, Number(buffer_offset), data, Number(data_offset), Number(size)); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'OperationError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn GPUQueue::write_buffer_with_array_buffer_view(
  self : GPUQueue,
  buffer : GPUBuffer,
  buffer_offset : GPUSize64,
  data : ArrayBufferView,
  data_offset : GPUSize64,
  size : GPUSize64,
) -> Result[Unit, GPUQueueWriteBufferError] =
  #| (self, buffer, buffer_offset, data, data_offset, size) => (() => { try { self.writeBuffer(buffer, Number(buffer_offset), data, Number(data_offset), Number(size)); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'OperationError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn GPUQueue::write_texture_with_array_buffer(
  self : GPUQueue,
  destination : GPUTexelCopyTextureInfo,
  data : ArrayBuffer,
  data_layout : GPUTexelCopyBufferLayout,
  size : GPUExtent3D,
) -> Unit =
  #| (self, destination, data, data_layout, size) => self.writeTexture(destination, data, data_layout, size)

///|
pub extern "js" fn GPUQueue::write_texture_with_shared_array_buffer(
  self : GPUQueue,
  destination : GPUTexelCopyTextureInfo,
  data : SharedArrayBuffer,
  data_layout : GPUTexelCopyBufferLayout,
  size : GPUExtent3D,
) -> Unit =
  #| (self, destination, data, data_layout, size) => self.writeTexture(destination, data, data_layout, size)

///|
pub extern "js" fn GPUQueue::write_texture_with_array_buffer_view(
  self : GPUQueue,
  destination : GPUTexelCopyTextureInfo,
  data : ArrayBufferView,
  data_layout : GPUTexelCopyBufferLayout,
  size : GPUExtent3D,
) -> Unit =
  #| (self, destination, data, data_layout, size) => self.writeTexture(destination, data, data_layout, size)

///|
pub extern "js" fn GPUQueue::copy_external_image_to_texture_with_array_of_gpu_integer_coordinate(
  self : GPUQueue,
  source : GPUCopyExternalImageSourceInfo,
  destination : GPUCopyExternalImageDestInfo,
  copy_size : FixedArray[GPUIntegerCoordinate],
) -> Result[Unit, GPUQueueCopyExternalImageToTextureError] =
  #| (self, source, destination, copy_size) => (() => { try { self.copyExternalImageToTexture(source, destination, copy_size); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'SecurityError') return { $tag: 0, _0: e }; if (n === 'OperationError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }; } })()

///|
pub extern "js" fn GPUQueue::copy_external_image_to_texture_with_gpu_extent_3d_dict(
  self : GPUQueue,
  source : GPUCopyExternalImageSourceInfo,
  destination : GPUCopyExternalImageDestInfo,
  copy_size : GPUExtent3DDict,
) -> Result[Unit, GPUQueueCopyExternalImageToTextureError] =
  #| (self, source, destination, copy_size) => (() => { try { self.copyExternalImageToTexture(source, destination, copy_size); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'SecurityError') return { $tag: 0, _0: e }; if (n === 'OperationError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }; } })()

///|
/// GPUQuerySet interface
pub type GPUQuerySet

///|
pub extern "js" fn GPUQuerySet::to_js_value(self : GPUQuerySet) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to GPUQuerySet (unchecked)
pub extern "js" fn GPUQuerySet::from_js_value(v : JsValue) -> GPUQuerySet =
  #| (v) => v

///|
/// Safely cast JsValue to GPUQuerySet (checked with instanceof)
pub extern "js" fn GPUQuerySet::from_js_value_opt(v : JsValue) -> GPUQuerySet? =
  #| (v) => (v instanceof GPUQuerySet) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPUQuerySet (checked with instanceof)
pub extern "js" fn JsValue::as_gpu_query_set(self : JsValue) -> GPUQuerySet? =
  #| (self) => (self instanceof GPUQuerySet) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPUQuerySet (unchecked)
pub extern "js" fn JsValue::to_gpu_query_set(self : JsValue) -> GPUQuerySet =
  #| (self) => self

///|
pub extern "js" fn GPUQuerySet::destroy(self : GPUQuerySet) -> Unit =
  #| (self) => self.destroy()

///|
pub extern "js" fn GPUQuerySet::get_type(self : GPUQuerySet) -> GPUQueryType =
  #| (self) => ['occlusion', 'timestamp'].indexOf(self.type)

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
/// Cast JsValue to GPUCanvasContext (unchecked)
pub extern "js" fn GPUCanvasContext::from_js_value(
  v : JsValue,
) -> GPUCanvasContext =
  #| (v) => v

///|
/// Safely cast JsValue to GPUCanvasContext (checked with instanceof)
pub extern "js" fn GPUCanvasContext::from_js_value_opt(
  v : JsValue,
) -> GPUCanvasContext? =
  #| (v) => (v instanceof GPUCanvasContext) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPUCanvasContext (checked with instanceof)
pub extern "js" fn JsValue::as_gpu_canvas_context(
  self : JsValue,
) -> GPUCanvasContext? =
  #| (self) => (self instanceof GPUCanvasContext) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPUCanvasContext (unchecked)
pub extern "js" fn JsValue::to_gpu_canvas_context(
  self : JsValue,
) -> GPUCanvasContext =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum GPUCanvasContextConfigureError {
  TypeError(JsError)
  OtherError(JsError)
} derive(Debug)

///|
/// Error type for throwing methods
pub(all) enum GPUCanvasContextGetCurrentTextureError {
  InvalidStateError(JsError)
  OtherError(JsError)
} derive(Debug)

///|
pub extern "js" fn GPUCanvasContext::get_canvas(
  self : GPUCanvasContext,
) -> HTMLCanvasElementOrOffscreenCanvas =
  #| (self) => self.canvas

///|
extern "js" fn GPUCanvasContext::configure_ffi(
  self : GPUCanvasContext,
  configuration : JsValue,
) -> Result[Unit, GPUCanvasContextConfigureError] =
  #| (self, configuration) => (() => { try { self.configure(configuration); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub fn GPUCanvasContext::configure(
  self : GPUCanvasContext,
  configuration : GPUCanvasConfiguration,
) -> Result[Unit, GPUCanvasContextConfigureError] {
  GPUCanvasContext::configure_ffi(self, configuration.to_js())
}

///|
pub extern "js" fn GPUCanvasContext::unconfigure(
  self : GPUCanvasContext,
) -> Unit =
  #| (self) => self.unconfigure()

///|
pub extern "js" fn GPUCanvasContext::get_configuration(
  self : GPUCanvasContext,
) -> GPUCanvasConfiguration? =
  #| (self) => (() => { const v = self.getConfiguration(); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn GPUCanvasContext::get_current_texture(
  self : GPUCanvasContext,
) -> Result[GPUTexture, GPUCanvasContextGetCurrentTextureError] =
  #| (self) => (() => { try { return { $tag: 1, _0: self.getCurrentTexture() }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'InvalidStateError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
/// GPUDeviceLostInfo interface
pub type GPUDeviceLostInfo

///|
pub extern "js" fn GPUDeviceLostInfo::to_js_value(
  self : GPUDeviceLostInfo,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to GPUDeviceLostInfo (unchecked)
pub extern "js" fn GPUDeviceLostInfo::from_js_value(
  v : JsValue,
) -> GPUDeviceLostInfo =
  #| (v) => v

///|
/// Safely cast JsValue to GPUDeviceLostInfo (checked with instanceof)
pub extern "js" fn GPUDeviceLostInfo::from_js_value_opt(
  v : JsValue,
) -> GPUDeviceLostInfo? =
  #| (v) => (v instanceof GPUDeviceLostInfo) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPUDeviceLostInfo (checked with instanceof)
pub extern "js" fn JsValue::as_gpu_device_lost_info(
  self : JsValue,
) -> GPUDeviceLostInfo? =
  #| (self) => (self instanceof GPUDeviceLostInfo) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPUDeviceLostInfo (unchecked)
pub extern "js" fn JsValue::to_gpu_device_lost_info(
  self : JsValue,
) -> GPUDeviceLostInfo =
  #| (self) => self

///|
pub extern "js" fn GPUDeviceLostInfo::get_reason(
  self : GPUDeviceLostInfo,
) -> GPUDeviceLostReason =
  #| (self) => ['unknown', 'destroyed'].indexOf(self.reason)

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
/// Cast JsValue to GPUError (unchecked)
pub extern "js" fn GPUError::from_js_value(v : JsValue) -> GPUError =
  #| (v) => v

///|
/// Safely cast JsValue to GPUError (checked with instanceof)
pub extern "js" fn GPUError::from_js_value_opt(v : JsValue) -> GPUError? =
  #| (v) => (v instanceof GPUError) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPUError (checked with instanceof)
pub extern "js" fn JsValue::as_gpu_error(self : JsValue) -> GPUError? =
  #| (self) => (self instanceof GPUError) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPUError (unchecked)
pub extern "js" fn JsValue::to_gpu_error(self : JsValue) -> GPUError =
  #| (self) => self

///|
pub extern "js" fn GPUError::as_gpu_validation_error(
  self : GPUError,
) -> GPUValidationError? =
  #| (self) => (self instanceof GPUValidationError) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn GPUError::as_gpu_out_of_memory_error(
  self : GPUError,
) -> GPUOutOfMemoryError? =
  #| (self) => (self instanceof GPUOutOfMemoryError) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn GPUError::as_gpu_internal_error(
  self : GPUError,
) -> GPUInternalError? =
  #| (self) => (self instanceof GPUInternalError) ? { $tag: 1, _0: self } : { $tag: 0 }

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
/// Cast JsValue to GPUValidationError (unchecked)
pub extern "js" fn GPUValidationError::from_js_value(
  v : JsValue,
) -> GPUValidationError =
  #| (v) => v

///|
/// Safely cast JsValue to GPUValidationError (checked with instanceof)
pub extern "js" fn GPUValidationError::from_js_value_opt(
  v : JsValue,
) -> GPUValidationError? =
  #| (v) => (v instanceof GPUValidationError) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPUValidationError (checked with instanceof)
pub extern "js" fn JsValue::as_gpu_validation_error(
  self : JsValue,
) -> GPUValidationError? =
  #| (self) => (self instanceof GPUValidationError) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPUValidationError (unchecked)
pub extern "js" fn JsValue::to_gpu_validation_error(
  self : JsValue,
) -> GPUValidationError =
  #| (self) => self

///|
pub extern "js" fn GPUValidationError::to_gpu_error(
  self : GPUValidationError,
) -> GPUError =
  #| (self) => self

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
/// Cast JsValue to GPUOutOfMemoryError (unchecked)
pub extern "js" fn GPUOutOfMemoryError::from_js_value(
  v : JsValue,
) -> GPUOutOfMemoryError =
  #| (v) => v

///|
/// Safely cast JsValue to GPUOutOfMemoryError (checked with instanceof)
pub extern "js" fn GPUOutOfMemoryError::from_js_value_opt(
  v : JsValue,
) -> GPUOutOfMemoryError? =
  #| (v) => (v instanceof GPUOutOfMemoryError) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPUOutOfMemoryError (checked with instanceof)
pub extern "js" fn JsValue::as_gpu_out_of_memory_error(
  self : JsValue,
) -> GPUOutOfMemoryError? =
  #| (self) => (self instanceof GPUOutOfMemoryError) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPUOutOfMemoryError (unchecked)
pub extern "js" fn JsValue::to_gpu_out_of_memory_error(
  self : JsValue,
) -> GPUOutOfMemoryError =
  #| (self) => self

///|
pub extern "js" fn GPUOutOfMemoryError::to_gpu_error(
  self : GPUOutOfMemoryError,
) -> GPUError =
  #| (self) => self

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
/// Cast JsValue to GPUInternalError (unchecked)
pub extern "js" fn GPUInternalError::from_js_value(
  v : JsValue,
) -> GPUInternalError =
  #| (v) => v

///|
/// Safely cast JsValue to GPUInternalError (checked with instanceof)
pub extern "js" fn GPUInternalError::from_js_value_opt(
  v : JsValue,
) -> GPUInternalError? =
  #| (v) => (v instanceof GPUInternalError) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPUInternalError (checked with instanceof)
pub extern "js" fn JsValue::as_gpu_internal_error(
  self : JsValue,
) -> GPUInternalError? =
  #| (self) => (self instanceof GPUInternalError) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPUInternalError (unchecked)
pub extern "js" fn JsValue::to_gpu_internal_error(
  self : JsValue,
) -> GPUInternalError =
  #| (self) => self

///|
pub extern "js" fn GPUInternalError::to_gpu_error(
  self : GPUInternalError,
) -> GPUError =
  #| (self) => self

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
/// Cast JsValue to GPUUncapturedErrorEvent (unchecked)
pub extern "js" fn GPUUncapturedErrorEvent::from_js_value(
  v : JsValue,
) -> GPUUncapturedErrorEvent =
  #| (v) => v

///|
/// Safely cast JsValue to GPUUncapturedErrorEvent (checked with instanceof)
pub extern "js" fn GPUUncapturedErrorEvent::from_js_value_opt(
  v : JsValue,
) -> GPUUncapturedErrorEvent? =
  #| (v) => (v instanceof GPUUncapturedErrorEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GPUUncapturedErrorEvent (checked with instanceof)
pub extern "js" fn JsValue::as_gpu_uncaptured_error_event(
  self : JsValue,
) -> GPUUncapturedErrorEvent? =
  #| (self) => (self instanceof GPUUncapturedErrorEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GPUUncapturedErrorEvent (unchecked)
pub extern "js" fn JsValue::to_gpu_uncaptured_error_event(
  self : JsValue,
) -> GPUUncapturedErrorEvent =
  #| (self) => self

///|
pub extern "js" fn GPUUncapturedErrorEvent::to_event(
  self : GPUUncapturedErrorEvent,
) -> Event =
  #| (self) => self

///|
extern "js" fn GPUUncapturedErrorEvent::new_ffi(
  type_ : String,
  gpu_uncaptured_error_event_init_dict : JsValue,
) -> GPUUncapturedErrorEvent =
  #| (type_, gpu_uncaptured_error_event_init_dict) => new GPUUncapturedErrorEvent(type_, gpu_uncaptured_error_event_init_dict)

///|
pub fn GPUUncapturedErrorEvent::new(
  type_ : String,
  gpu_uncaptured_error_event_init_dict : GPUUncapturedErrorEventInit,
) -> GPUUncapturedErrorEvent {
  GPUUncapturedErrorEvent::new_ffi(
    type_,
    gpu_uncaptured_error_event_init_dict.to_js(),
  )
}

///|
pub extern "js" fn GPUUncapturedErrorEvent::get_error(
  self : GPUUncapturedErrorEvent,
) -> GPUError =
  #| (self) => self.error

///|
/// GPUBufferUsage namespace

///|
/// GPUMapMode namespace

///|
/// GPUTextureUsage namespace

///|
/// GPUShaderStage namespace

///|
/// GPUColorWrite namespace
