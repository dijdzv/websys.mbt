// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webgl1

///|
/// GLenum typedef
pub type GLenum = Int

///|
/// GLboolean typedef
pub type GLboolean = Bool

///|
/// GLbitfield typedef
pub type GLbitfield = Int

///|
/// GLbyte typedef
pub type GLbyte = Int

///|
/// GLshort typedef
pub type GLshort = Int

///|
/// GLint typedef
pub type GLint = Int

///|
/// GLsizei typedef
pub type GLsizei = Int

///|
/// GLintptr typedef
pub type GLintptr = Int64

///|
/// GLsizeiptr typedef
pub type GLsizeiptr = Int64

///|
/// GLubyte typedef
pub type GLubyte = Int

///|
/// GLushort typedef
pub type GLushort = Int

///|
/// GLuint typedef
pub type GLuint = Int

///|
/// GLfloat typedef
pub type GLfloat = Double

///|
/// GLclampf typedef
pub type GLclampf = Double

///|
/// TexImageSource typedef
pub type TexImageSource

///|
pub extern "js" fn TexImageSource::to_js_value(
  self : TexImageSource,
) -> JsValue =
  #| (self) => self

///|
/// Create TexImageSource from ImageBitmap
pub extern "js" fn TexImageSource::from_image_bitmap(
  v : ImageBitmap,
) -> TexImageSource =
  #| (v) => v

///|
/// Create TexImageSource from ImageData
pub extern "js" fn TexImageSource::from_image_data(
  v : ImageData,
) -> TexImageSource =
  #| (v) => v

///|
/// Create TexImageSource from HTMLImageElement
pub extern "js" fn TexImageSource::from_h_t_m_l_image_element(
  v : HTMLImageElement,
) -> TexImageSource =
  #| (v) => v

///|
/// Create TexImageSource from HTMLCanvasElement
pub extern "js" fn TexImageSource::from_h_t_m_l_canvas_element(
  v : HTMLCanvasElement,
) -> TexImageSource =
  #| (v) => v

///|
/// Create TexImageSource from HTMLVideoElement
pub extern "js" fn TexImageSource::from_h_t_m_l_video_element(
  v : HTMLVideoElement,
) -> TexImageSource =
  #| (v) => v

///|
/// Create TexImageSource from OffscreenCanvas
pub extern "js" fn TexImageSource::from_offscreen_canvas(
  v : OffscreenCanvas,
) -> TexImageSource =
  #| (v) => v

///|
/// Create TexImageSource from VideoFrame
pub extern "js" fn TexImageSource::from_video_frame(
  v : VideoFrame,
) -> TexImageSource =
  #| (v) => v

///|
/// Check if this TexImageSource is ImageBitmap
pub extern "js" fn TexImageSource::is_image_bitmap(
  self : TexImageSource,
) -> Bool =
  #| (self) => self instanceof ImageBitmap

///|
/// Check if this TexImageSource is ImageData
pub extern "js" fn TexImageSource::is_image_data(self : TexImageSource) -> Bool =
  #| (self) => self instanceof ImageData

///|
/// Check if this TexImageSource is HTMLImageElement
pub extern "js" fn TexImageSource::is_h_t_m_l_image_element(
  self : TexImageSource,
) -> Bool =
  #| (self) => self instanceof HTMLImageElement

///|
/// Check if this TexImageSource is HTMLCanvasElement
pub extern "js" fn TexImageSource::is_h_t_m_l_canvas_element(
  self : TexImageSource,
) -> Bool =
  #| (self) => self instanceof HTMLCanvasElement

///|
/// Check if this TexImageSource is HTMLVideoElement
pub extern "js" fn TexImageSource::is_h_t_m_l_video_element(
  self : TexImageSource,
) -> Bool =
  #| (self) => self instanceof HTMLVideoElement

///|
/// Check if this TexImageSource is OffscreenCanvas
pub extern "js" fn TexImageSource::is_offscreen_canvas(
  self : TexImageSource,
) -> Bool =
  #| (self) => self instanceof OffscreenCanvas

///|
/// Check if this TexImageSource is VideoFrame
pub extern "js" fn TexImageSource::is_video_frame(
  self : TexImageSource,
) -> Bool =
  #| (self) => self instanceof VideoFrame

///|
/// Try to get TexImageSource as ImageBitmap
pub extern "js" fn TexImageSource::as_image_bitmap(
  self : TexImageSource,
) -> ImageBitmap? =
  #| (self) => (self instanceof ImageBitmap) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get TexImageSource as ImageData
pub extern "js" fn TexImageSource::as_image_data(
  self : TexImageSource,
) -> ImageData? =
  #| (self) => (self instanceof ImageData) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get TexImageSource as HTMLImageElement
pub extern "js" fn TexImageSource::as_h_t_m_l_image_element(
  self : TexImageSource,
) -> HTMLImageElement? =
  #| (self) => (self instanceof HTMLImageElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get TexImageSource as HTMLCanvasElement
pub extern "js" fn TexImageSource::as_h_t_m_l_canvas_element(
  self : TexImageSource,
) -> HTMLCanvasElement? =
  #| (self) => (self instanceof HTMLCanvasElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get TexImageSource as HTMLVideoElement
pub extern "js" fn TexImageSource::as_h_t_m_l_video_element(
  self : TexImageSource,
) -> HTMLVideoElement? =
  #| (self) => (self instanceof HTMLVideoElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get TexImageSource as OffscreenCanvas
pub extern "js" fn TexImageSource::as_offscreen_canvas(
  self : TexImageSource,
) -> OffscreenCanvas? =
  #| (self) => (self instanceof OffscreenCanvas) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get TexImageSource as VideoFrame
pub extern "js" fn TexImageSource::as_video_frame(
  self : TexImageSource,
) -> VideoFrame? =
  #| (self) => (self instanceof VideoFrame) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Float32List typedef
pub type Float32List

///|
pub extern "js" fn Float32List::to_js_value(self : Float32List) -> JsValue =
  #| (self) => self

///|
/// Create Float32List from Float32Array
pub extern "js" fn Float32List::from_float32_array(
  v : Float32Array,
) -> Float32List =
  #| (v) => v

///|
/// Create Float32List from Array[GLfloat]
pub extern "js" fn Float32List::from_array_of_g_lfloat(
  v : Array[GLfloat],
) -> Float32List =
  #| (v) => v

///|
/// Check if this Float32List is Float32Array
pub extern "js" fn Float32List::is_float32_array(self : Float32List) -> Bool =
  #| (self) => self instanceof Float32Array

///|
/// Check if this Float32List is Array[GLfloat]
pub extern "js" fn Float32List::is_array_of_g_lfloat(
  self : Float32List,
) -> Bool =
  #| (self) => Array.isArray(self)

///|
/// Try to get Float32List as Float32Array
pub extern "js" fn Float32List::as_float32_array(
  self : Float32List,
) -> Float32Array? =
  #| (self) => (self instanceof Float32Array) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get Float32List as Array[GLfloat]
pub extern "js" fn Float32List::as_array_of_g_lfloat(
  self : Float32List,
) -> Array[GLfloat]? =
  #| (self) => (Array.isArray(self)) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Int32List typedef
pub type Int32List

///|
pub extern "js" fn Int32List::to_js_value(self : Int32List) -> JsValue =
  #| (self) => self

///|
/// Create Int32List from Int32Array
pub extern "js" fn Int32List::from_int32_array(v : Int32Array) -> Int32List =
  #| (v) => v

///|
/// Create Int32List from Array[GLint]
pub extern "js" fn Int32List::from_array_of_g_lint(
  v : Array[GLint],
) -> Int32List =
  #| (v) => v

///|
/// Check if this Int32List is Int32Array
pub extern "js" fn Int32List::is_int32_array(self : Int32List) -> Bool =
  #| (self) => self instanceof Int32Array

///|
/// Check if this Int32List is Array[GLint]
pub extern "js" fn Int32List::is_array_of_g_lint(self : Int32List) -> Bool =
  #| (self) => Array.isArray(self)

///|
/// Try to get Int32List as Int32Array
pub extern "js" fn Int32List::as_int32_array(self : Int32List) -> Int32Array? =
  #| (self) => (self instanceof Int32Array) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get Int32List as Array[GLint]
pub extern "js" fn Int32List::as_array_of_g_lint(
  self : Int32List,
) -> Array[GLint]? =
  #| (self) => (Array.isArray(self)) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// WebGLPowerPreference enum
pub(all) enum WebGLPowerPreference {
  Default
  LowPower
  HighPerformance
}

///|
/// Convert to string value
pub fn WebGLPowerPreference::to_string(self : WebGLPowerPreference) -> String {
  match self {
    WebGLPowerPreference::Default => "default"
    WebGLPowerPreference::LowPower => "low-power"
    WebGLPowerPreference::HighPerformance => "high-performance"
  }
}

///|
/// Parse from string value
pub fn WebGLPowerPreference::from_string(s : String) -> WebGLPowerPreference? {
  match s {
    "default" => Some(WebGLPowerPreference::Default)
    "low-power" => Some(WebGLPowerPreference::LowPower)
    "high-performance" => Some(WebGLPowerPreference::HighPerformance)
    _ => None
  }
}

///|
/// WebGLContextAttributes dictionary
pub(all) struct WebGLContextAttributes {
  alpha : Bool?
  depth : Bool?
  stencil : Bool?
  antialias : Bool?
  premultipliedAlpha : Bool?
  preserveDrawingBuffer : Bool?
  powerPreference : WebGLPowerPreference?
  failIfMajorPerformanceCaveat : Bool?
  desynchronized : Bool?
  xrCompatible : Bool?
}

///|
/// Create a new WebGLContextAttributes with default values
pub fn WebGLContextAttributes::default() -> WebGLContextAttributes {
  WebGLContextAttributes::{
    alpha: None,
    depth: None,
    stencil: None,
    antialias: None,
    premultipliedAlpha: None,
    preserveDrawingBuffer: None,
    powerPreference: None,
    failIfMajorPerformanceCaveat: None,
    desynchronized: None,
    xrCompatible: None,
  }
}

///|
extern "js" fn WebGLContextAttributes::to_js_ffi(
  self : WebGLContextAttributes,
) -> JsValue =
  #| (self) => ({
  #|   alpha: (self.alpha === -1 ? undefined : self.alpha),
  #|   depth: (self.depth === -1 ? undefined : self.depth),
  #|   stencil: (self.stencil === -1 ? undefined : self.stencil),
  #|   antialias: (self.antialias === -1 ? undefined : self.antialias),
  #|   premultipliedAlpha: (self.premultipliedAlpha === -1 ? undefined : self.premultipliedAlpha),
  #|   preserveDrawingBuffer: (self.preserveDrawingBuffer === -1 ? undefined : self.preserveDrawingBuffer),
  #|   powerPreference: ((() => { const v = self.powerPreference; if (v === undefined) return undefined; return ['default', 'low-power', 'high-performance'][v]; })()),
  #|   failIfMajorPerformanceCaveat: (self.failIfMajorPerformanceCaveat === -1 ? undefined : self.failIfMajorPerformanceCaveat),
  #|   desynchronized: (self.desynchronized === -1 ? undefined : self.desynchronized),
  #|   xrCompatible: (self.xrCompatible === -1 ? undefined : self.xrCompatible)
  #| })

///|
/// Convert to JsValue
pub fn WebGLContextAttributes::to_js(self : WebGLContextAttributes) -> JsValue {
  WebGLContextAttributes::to_js_ffi(self)
}

///|
/// WebGLContextEventInit dictionary
pub(all) struct WebGLContextEventInit {
  statusMessage : String?
}

///|
/// Create a new WebGLContextEventInit with default values
pub fn WebGLContextEventInit::default() -> WebGLContextEventInit {
  WebGLContextEventInit::{ statusMessage: None }
}

///|
extern "js" fn WebGLContextEventInit::to_js_ffi(
  self : WebGLContextEventInit,
) -> JsValue =
  #| (self) => ({
  #|   statusMessage: self.statusMessage
  #| })

///|
/// Convert to JsValue
pub fn WebGLContextEventInit::to_js(self : WebGLContextEventInit) -> JsValue {
  WebGLContextEventInit::to_js_ffi(self)
}

///|
/// WebGLObject interface
pub type WebGLObject

///|
pub extern "js" fn WebGLObject::to_js_value(self : WebGLObject) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WebGLObject (unchecked)
pub extern "js" fn WebGLObject::from_js_value(v : JsValue) -> WebGLObject =
  #| (v) => v

///|
/// Safely cast JsValue to WebGLObject (checked with instanceof)
pub extern "js" fn WebGLObject::from_js_value_opt(v : JsValue) -> WebGLObject? =
  #| (v) => (v instanceof WebGLObject) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WebGLObject (checked with instanceof)
pub extern "js" fn JsValue::as_web_gl_object(self : JsValue) -> WebGLObject? =
  #| (self) => (self instanceof WebGLObject) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WebGLObject (unchecked)
pub extern "js" fn JsValue::to_web_gl_object(self : JsValue) -> WebGLObject =
  #| (self) => self

///|
pub extern "js" fn WebGLObject::as_web_gl_buffer(
  self : WebGLObject,
) -> WebGLBuffer? =
  #| (self) => (self instanceof WebGLBuffer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn WebGLObject::as_web_gl_framebuffer(
  self : WebGLObject,
) -> WebGLFramebuffer? =
  #| (self) => (self instanceof WebGLFramebuffer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn WebGLObject::as_web_gl_program(
  self : WebGLObject,
) -> WebGLProgram? =
  #| (self) => (self instanceof WebGLProgram) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn WebGLObject::as_web_gl_renderbuffer(
  self : WebGLObject,
) -> WebGLRenderbuffer? =
  #| (self) => (self instanceof WebGLRenderbuffer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn WebGLObject::as_web_gl_shader(
  self : WebGLObject,
) -> WebGLShader? =
  #| (self) => (self instanceof WebGLShader) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn WebGLObject::as_web_gl_texture(
  self : WebGLObject,
) -> WebGLTexture? =
  #| (self) => (self instanceof WebGLTexture) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn WebGLObject::as_web_gl_vertex_array_object_oes(
  self : WebGLObject,
) -> WebGLVertexArrayObjectOES? =
  #| (self) => (self instanceof WebGLVertexArrayObjectOES) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn WebGLObject::as_web_gl_query(
  self : WebGLObject,
) -> WebGLQuery? =
  #| (self) => (self instanceof WebGLQuery) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn WebGLObject::as_web_gl_sampler(
  self : WebGLObject,
) -> WebGLSampler? =
  #| (self) => (self instanceof WebGLSampler) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn WebGLObject::as_web_gl_sync(
  self : WebGLObject,
) -> WebGLSync? =
  #| (self) => (self instanceof WebGLSync) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn WebGLObject::as_web_gl_transform_feedback(
  self : WebGLObject,
) -> WebGLTransformFeedback? =
  #| (self) => (self instanceof WebGLTransformFeedback) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn WebGLObject::as_web_gl_vertex_array_object(
  self : WebGLObject,
) -> WebGLVertexArrayObject? =
  #| (self) => (self instanceof WebGLVertexArrayObject) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn WebGLObject::as_web_gl_timer_query_ext(
  self : WebGLObject,
) -> WebGLTimerQueryEXT? =
  #| (self) => (self instanceof WebGLTimerQueryEXT) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn WebGLObject::get_label(self : WebGLObject) -> String =
  #| (self) => self.label

///|
pub extern "js" fn WebGLObject::set_label(
  self : WebGLObject,
  value : String,
) -> Unit =
  #| (self, value) => { self.label = value }

///|
/// WebGLBuffer interface
pub type WebGLBuffer

///|
pub extern "js" fn WebGLBuffer::to_js_value(self : WebGLBuffer) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WebGLBuffer (unchecked)
pub extern "js" fn WebGLBuffer::from_js_value(v : JsValue) -> WebGLBuffer =
  #| (v) => v

///|
/// Safely cast JsValue to WebGLBuffer (checked with instanceof)
pub extern "js" fn WebGLBuffer::from_js_value_opt(v : JsValue) -> WebGLBuffer? =
  #| (v) => (v instanceof WebGLBuffer) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WebGLBuffer (checked with instanceof)
pub extern "js" fn JsValue::as_web_gl_buffer(self : JsValue) -> WebGLBuffer? =
  #| (self) => (self instanceof WebGLBuffer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WebGLBuffer (unchecked)
pub extern "js" fn JsValue::to_web_gl_buffer(self : JsValue) -> WebGLBuffer =
  #| (self) => self

///|
pub extern "js" fn WebGLBuffer::to_web_gl_object(
  self : WebGLBuffer,
) -> WebGLObject =
  #| (self) => self

///|
/// WebGLFramebuffer interface
pub type WebGLFramebuffer

///|
pub extern "js" fn WebGLFramebuffer::to_js_value(
  self : WebGLFramebuffer,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WebGLFramebuffer (unchecked)
pub extern "js" fn WebGLFramebuffer::from_js_value(
  v : JsValue,
) -> WebGLFramebuffer =
  #| (v) => v

///|
/// Safely cast JsValue to WebGLFramebuffer (checked with instanceof)
pub extern "js" fn WebGLFramebuffer::from_js_value_opt(
  v : JsValue,
) -> WebGLFramebuffer? =
  #| (v) => (v instanceof WebGLFramebuffer) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WebGLFramebuffer (checked with instanceof)
pub extern "js" fn JsValue::as_web_gl_framebuffer(
  self : JsValue,
) -> WebGLFramebuffer? =
  #| (self) => (self instanceof WebGLFramebuffer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WebGLFramebuffer (unchecked)
pub extern "js" fn JsValue::to_web_gl_framebuffer(
  self : JsValue,
) -> WebGLFramebuffer =
  #| (self) => self

///|
pub extern "js" fn WebGLFramebuffer::to_web_gl_object(
  self : WebGLFramebuffer,
) -> WebGLObject =
  #| (self) => self

///|
/// WebGLProgram interface
pub type WebGLProgram

///|
pub extern "js" fn WebGLProgram::to_js_value(self : WebGLProgram) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WebGLProgram (unchecked)
pub extern "js" fn WebGLProgram::from_js_value(v : JsValue) -> WebGLProgram =
  #| (v) => v

///|
/// Safely cast JsValue to WebGLProgram (checked with instanceof)
pub extern "js" fn WebGLProgram::from_js_value_opt(
  v : JsValue,
) -> WebGLProgram? =
  #| (v) => (v instanceof WebGLProgram) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WebGLProgram (checked with instanceof)
pub extern "js" fn JsValue::as_web_gl_program(self : JsValue) -> WebGLProgram? =
  #| (self) => (self instanceof WebGLProgram) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WebGLProgram (unchecked)
pub extern "js" fn JsValue::to_web_gl_program(self : JsValue) -> WebGLProgram =
  #| (self) => self

///|
pub extern "js" fn WebGLProgram::to_web_gl_object(
  self : WebGLProgram,
) -> WebGLObject =
  #| (self) => self

///|
/// WebGLRenderbuffer interface
pub type WebGLRenderbuffer

///|
pub extern "js" fn WebGLRenderbuffer::to_js_value(
  self : WebGLRenderbuffer,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WebGLRenderbuffer (unchecked)
pub extern "js" fn WebGLRenderbuffer::from_js_value(
  v : JsValue,
) -> WebGLRenderbuffer =
  #| (v) => v

///|
/// Safely cast JsValue to WebGLRenderbuffer (checked with instanceof)
pub extern "js" fn WebGLRenderbuffer::from_js_value_opt(
  v : JsValue,
) -> WebGLRenderbuffer? =
  #| (v) => (v instanceof WebGLRenderbuffer) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WebGLRenderbuffer (checked with instanceof)
pub extern "js" fn JsValue::as_web_gl_renderbuffer(
  self : JsValue,
) -> WebGLRenderbuffer? =
  #| (self) => (self instanceof WebGLRenderbuffer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WebGLRenderbuffer (unchecked)
pub extern "js" fn JsValue::to_web_gl_renderbuffer(
  self : JsValue,
) -> WebGLRenderbuffer =
  #| (self) => self

///|
pub extern "js" fn WebGLRenderbuffer::to_web_gl_object(
  self : WebGLRenderbuffer,
) -> WebGLObject =
  #| (self) => self

///|
/// WebGLShader interface
pub type WebGLShader

///|
pub extern "js" fn WebGLShader::to_js_value(self : WebGLShader) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WebGLShader (unchecked)
pub extern "js" fn WebGLShader::from_js_value(v : JsValue) -> WebGLShader =
  #| (v) => v

///|
/// Safely cast JsValue to WebGLShader (checked with instanceof)
pub extern "js" fn WebGLShader::from_js_value_opt(v : JsValue) -> WebGLShader? =
  #| (v) => (v instanceof WebGLShader) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WebGLShader (checked with instanceof)
pub extern "js" fn JsValue::as_web_gl_shader(self : JsValue) -> WebGLShader? =
  #| (self) => (self instanceof WebGLShader) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WebGLShader (unchecked)
pub extern "js" fn JsValue::to_web_gl_shader(self : JsValue) -> WebGLShader =
  #| (self) => self

///|
pub extern "js" fn WebGLShader::to_web_gl_object(
  self : WebGLShader,
) -> WebGLObject =
  #| (self) => self

///|
/// WebGLTexture interface
pub type WebGLTexture

///|
pub extern "js" fn WebGLTexture::to_js_value(self : WebGLTexture) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WebGLTexture (unchecked)
pub extern "js" fn WebGLTexture::from_js_value(v : JsValue) -> WebGLTexture =
  #| (v) => v

///|
/// Safely cast JsValue to WebGLTexture (checked with instanceof)
pub extern "js" fn WebGLTexture::from_js_value_opt(
  v : JsValue,
) -> WebGLTexture? =
  #| (v) => (v instanceof WebGLTexture) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WebGLTexture (checked with instanceof)
pub extern "js" fn JsValue::as_web_gl_texture(self : JsValue) -> WebGLTexture? =
  #| (self) => (self instanceof WebGLTexture) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WebGLTexture (unchecked)
pub extern "js" fn JsValue::to_web_gl_texture(self : JsValue) -> WebGLTexture =
  #| (self) => self

///|
pub extern "js" fn WebGLTexture::to_web_gl_object(
  self : WebGLTexture,
) -> WebGLObject =
  #| (self) => self

///|
/// WebGLUniformLocation interface
pub type WebGLUniformLocation

///|
pub extern "js" fn WebGLUniformLocation::to_js_value(
  self : WebGLUniformLocation,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WebGLUniformLocation (unchecked)
pub extern "js" fn WebGLUniformLocation::from_js_value(
  v : JsValue,
) -> WebGLUniformLocation =
  #| (v) => v

///|
/// Safely cast JsValue to WebGLUniformLocation (checked with instanceof)
pub extern "js" fn WebGLUniformLocation::from_js_value_opt(
  v : JsValue,
) -> WebGLUniformLocation? =
  #| (v) => (v instanceof WebGLUniformLocation) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WebGLUniformLocation (checked with instanceof)
pub extern "js" fn JsValue::as_web_gl_uniform_location(
  self : JsValue,
) -> WebGLUniformLocation? =
  #| (self) => (self instanceof WebGLUniformLocation) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WebGLUniformLocation (unchecked)
pub extern "js" fn JsValue::to_web_gl_uniform_location(
  self : JsValue,
) -> WebGLUniformLocation =
  #| (self) => self

///|
/// WebGLActiveInfo interface
pub type WebGLActiveInfo

///|
pub extern "js" fn WebGLActiveInfo::to_js_value(
  self : WebGLActiveInfo,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WebGLActiveInfo (unchecked)
pub extern "js" fn WebGLActiveInfo::from_js_value(
  v : JsValue,
) -> WebGLActiveInfo =
  #| (v) => v

///|
/// Safely cast JsValue to WebGLActiveInfo (checked with instanceof)
pub extern "js" fn WebGLActiveInfo::from_js_value_opt(
  v : JsValue,
) -> WebGLActiveInfo? =
  #| (v) => (v instanceof WebGLActiveInfo) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WebGLActiveInfo (checked with instanceof)
pub extern "js" fn JsValue::as_web_gl_active_info(
  self : JsValue,
) -> WebGLActiveInfo? =
  #| (self) => (self instanceof WebGLActiveInfo) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WebGLActiveInfo (unchecked)
pub extern "js" fn JsValue::to_web_gl_active_info(
  self : JsValue,
) -> WebGLActiveInfo =
  #| (self) => self

///|
pub extern "js" fn WebGLActiveInfo::get_size(self : WebGLActiveInfo) -> GLint =
  #| (self) => self.size

///|
pub extern "js" fn WebGLActiveInfo::get_type(self : WebGLActiveInfo) -> GLenum =
  #| (self) => self.type

///|
pub extern "js" fn WebGLActiveInfo::get_name(self : WebGLActiveInfo) -> String =
  #| (self) => self.name

///|
/// WebGLShaderPrecisionFormat interface
pub type WebGLShaderPrecisionFormat

///|
pub extern "js" fn WebGLShaderPrecisionFormat::to_js_value(
  self : WebGLShaderPrecisionFormat,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WebGLShaderPrecisionFormat (unchecked)
pub extern "js" fn WebGLShaderPrecisionFormat::from_js_value(
  v : JsValue,
) -> WebGLShaderPrecisionFormat =
  #| (v) => v

///|
/// Safely cast JsValue to WebGLShaderPrecisionFormat (checked with instanceof)
pub extern "js" fn WebGLShaderPrecisionFormat::from_js_value_opt(
  v : JsValue,
) -> WebGLShaderPrecisionFormat? =
  #| (v) => (v instanceof WebGLShaderPrecisionFormat) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WebGLShaderPrecisionFormat (checked with instanceof)
pub extern "js" fn JsValue::as_web_gl_shader_precision_format(
  self : JsValue,
) -> WebGLShaderPrecisionFormat? =
  #| (self) => (self instanceof WebGLShaderPrecisionFormat) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WebGLShaderPrecisionFormat (unchecked)
pub extern "js" fn JsValue::to_web_gl_shader_precision_format(
  self : JsValue,
) -> WebGLShaderPrecisionFormat =
  #| (self) => self

///|
pub extern "js" fn WebGLShaderPrecisionFormat::get_range_min(
  self : WebGLShaderPrecisionFormat,
) -> GLint =
  #| (self) => self.rangeMin

///|
pub extern "js" fn WebGLShaderPrecisionFormat::get_range_max(
  self : WebGLShaderPrecisionFormat,
) -> GLint =
  #| (self) => self.rangeMax

///|
pub extern "js" fn WebGLShaderPrecisionFormat::get_precision(
  self : WebGLShaderPrecisionFormat,
) -> GLint =
  #| (self) => self.precision

///|
/// WebGLRenderingContext interface
pub type WebGLRenderingContext

///|
pub extern "js" fn WebGLRenderingContext::to_js_value(
  self : WebGLRenderingContext,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WebGLRenderingContext (unchecked)
pub extern "js" fn WebGLRenderingContext::from_js_value(
  v : JsValue,
) -> WebGLRenderingContext =
  #| (v) => v

///|
/// Safely cast JsValue to WebGLRenderingContext (checked with instanceof)
pub extern "js" fn WebGLRenderingContext::from_js_value_opt(
  v : JsValue,
) -> WebGLRenderingContext? =
  #| (v) => (v instanceof WebGLRenderingContext) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WebGLRenderingContext (checked with instanceof)
pub extern "js" fn JsValue::as_web_gl_rendering_context(
  self : JsValue,
) -> WebGLRenderingContext? =
  #| (self) => (self instanceof WebGLRenderingContext) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WebGLRenderingContext (unchecked)
pub extern "js" fn JsValue::to_web_gl_rendering_context(
  self : JsValue,
) -> WebGLRenderingContext =
  #| (self) => self

// WebGLRenderingContext.DEPTH_BUFFER_BIT

///|
pub let web_gl_rendering_context_depth_buffer_bit : Int = 0x00000100

// WebGLRenderingContext.STENCIL_BUFFER_BIT

///|
pub let web_gl_rendering_context_stencil_buffer_bit : Int = 0x00000400

// WebGLRenderingContext.COLOR_BUFFER_BIT

///|
pub let web_gl_rendering_context_color_buffer_bit : Int = 0x00004000

// WebGLRenderingContext.POINTS

///|
pub let web_gl_rendering_context_points : Int = 0x0000

// WebGLRenderingContext.LINES

///|
pub let web_gl_rendering_context_lines : Int = 0x0001

// WebGLRenderingContext.LINE_LOOP

///|
pub let web_gl_rendering_context_line_loop : Int = 0x0002

// WebGLRenderingContext.LINE_STRIP

///|
pub let web_gl_rendering_context_line_strip : Int = 0x0003

// WebGLRenderingContext.TRIANGLES

///|
pub let web_gl_rendering_context_triangles : Int = 0x0004

// WebGLRenderingContext.TRIANGLE_STRIP

///|
pub let web_gl_rendering_context_triangle_strip : Int = 0x0005

// WebGLRenderingContext.TRIANGLE_FAN

///|
pub let web_gl_rendering_context_triangle_fan : Int = 0x0006

// WebGLRenderingContext.ZERO

///|
pub let web_gl_rendering_context_zero : Int = 0

// WebGLRenderingContext.ONE

///|
pub let web_gl_rendering_context_one : Int = 1

// WebGLRenderingContext.SRC_COLOR

///|
pub let web_gl_rendering_context_src_color : Int = 0x0300

// WebGLRenderingContext.ONE_MINUS_SRC_COLOR

///|
pub let web_gl_rendering_context_one_minus_src_color : Int = 0x0301

// WebGLRenderingContext.SRC_ALPHA

///|
pub let web_gl_rendering_context_src_alpha : Int = 0x0302

// WebGLRenderingContext.ONE_MINUS_SRC_ALPHA

///|
pub let web_gl_rendering_context_one_minus_src_alpha : Int = 0x0303

// WebGLRenderingContext.DST_ALPHA

///|
pub let web_gl_rendering_context_dst_alpha : Int = 0x0304

// WebGLRenderingContext.ONE_MINUS_DST_ALPHA

///|
pub let web_gl_rendering_context_one_minus_dst_alpha : Int = 0x0305

// WebGLRenderingContext.DST_COLOR

///|
pub let web_gl_rendering_context_dst_color : Int = 0x0306

// WebGLRenderingContext.ONE_MINUS_DST_COLOR

///|
pub let web_gl_rendering_context_one_minus_dst_color : Int = 0x0307

// WebGLRenderingContext.SRC_ALPHA_SATURATE

///|
pub let web_gl_rendering_context_src_alpha_saturate : Int = 0x0308

// WebGLRenderingContext.FUNC_ADD

///|
pub let web_gl_rendering_context_func_add : Int = 0x8006

// WebGLRenderingContext.BLEND_EQUATION

///|
pub let web_gl_rendering_context_blend_equation : Int = 0x8009

// WebGLRenderingContext.BLEND_EQUATION_RGB

///|
pub let web_gl_rendering_context_blend_equation_rgb : Int = 0x8009

// WebGLRenderingContext.BLEND_EQUATION_ALPHA

///|
pub let web_gl_rendering_context_blend_equation_alpha : Int = 0x883D

// WebGLRenderingContext.FUNC_SUBTRACT

///|
pub let web_gl_rendering_context_func_subtract : Int = 0x800A

// WebGLRenderingContext.FUNC_REVERSE_SUBTRACT

///|
pub let web_gl_rendering_context_func_reverse_subtract : Int = 0x800B

// WebGLRenderingContext.BLEND_DST_RGB

///|
pub let web_gl_rendering_context_blend_dst_rgb : Int = 0x80C8

// WebGLRenderingContext.BLEND_SRC_RGB

///|
pub let web_gl_rendering_context_blend_src_rgb : Int = 0x80C9

// WebGLRenderingContext.BLEND_DST_ALPHA

///|
pub let web_gl_rendering_context_blend_dst_alpha : Int = 0x80CA

// WebGLRenderingContext.BLEND_SRC_ALPHA

///|
pub let web_gl_rendering_context_blend_src_alpha : Int = 0x80CB

// WebGLRenderingContext.CONSTANT_COLOR

///|
pub let web_gl_rendering_context_constant_color : Int = 0x8001

// WebGLRenderingContext.ONE_MINUS_CONSTANT_COLOR

///|
pub let web_gl_rendering_context_one_minus_constant_color : Int = 0x8002

// WebGLRenderingContext.CONSTANT_ALPHA

///|
pub let web_gl_rendering_context_constant_alpha : Int = 0x8003

// WebGLRenderingContext.ONE_MINUS_CONSTANT_ALPHA

///|
pub let web_gl_rendering_context_one_minus_constant_alpha : Int = 0x8004

// WebGLRenderingContext.BLEND_COLOR

///|
pub let web_gl_rendering_context_blend_color : Int = 0x8005

// WebGLRenderingContext.ARRAY_BUFFER

///|
pub let web_gl_rendering_context_array_buffer : Int = 0x8892

// WebGLRenderingContext.ELEMENT_ARRAY_BUFFER

///|
pub let web_gl_rendering_context_element_array_buffer : Int = 0x8893

// WebGLRenderingContext.ARRAY_BUFFER_BINDING

///|
pub let web_gl_rendering_context_array_buffer_binding : Int = 0x8894

// WebGLRenderingContext.ELEMENT_ARRAY_BUFFER_BINDING

///|
pub let web_gl_rendering_context_element_array_buffer_binding : Int = 0x8895

// WebGLRenderingContext.STREAM_DRAW

///|
pub let web_gl_rendering_context_stream_draw : Int = 0x88E0

// WebGLRenderingContext.STATIC_DRAW

///|
pub let web_gl_rendering_context_static_draw : Int = 0x88E4

// WebGLRenderingContext.DYNAMIC_DRAW

///|
pub let web_gl_rendering_context_dynamic_draw : Int = 0x88E8

// WebGLRenderingContext.BUFFER_SIZE

///|
pub let web_gl_rendering_context_buffer_size : Int = 0x8764

// WebGLRenderingContext.BUFFER_USAGE

///|
pub let web_gl_rendering_context_buffer_usage : Int = 0x8765

// WebGLRenderingContext.CURRENT_VERTEX_ATTRIB

///|
pub let web_gl_rendering_context_current_vertex_attrib : Int = 0x8626

// WebGLRenderingContext.FRONT

///|
pub let web_gl_rendering_context_front : Int = 0x0404

// WebGLRenderingContext.BACK

///|
pub let web_gl_rendering_context_back : Int = 0x0405

// WebGLRenderingContext.FRONT_AND_BACK

///|
pub let web_gl_rendering_context_front_and_back : Int = 0x0408

// WebGLRenderingContext.CULL_FACE

///|
pub let web_gl_rendering_context_cull_face : Int = 0x0B44

// WebGLRenderingContext.BLEND

///|
pub let web_gl_rendering_context_blend : Int = 0x0BE2

// WebGLRenderingContext.DITHER

///|
pub let web_gl_rendering_context_dither : Int = 0x0BD0

// WebGLRenderingContext.STENCIL_TEST

///|
pub let web_gl_rendering_context_stencil_test : Int = 0x0B90

// WebGLRenderingContext.DEPTH_TEST

///|
pub let web_gl_rendering_context_depth_test : Int = 0x0B71

// WebGLRenderingContext.SCISSOR_TEST

///|
pub let web_gl_rendering_context_scissor_test : Int = 0x0C11

// WebGLRenderingContext.POLYGON_OFFSET_FILL

///|
pub let web_gl_rendering_context_polygon_offset_fill : Int = 0x8037

// WebGLRenderingContext.SAMPLE_ALPHA_TO_COVERAGE

///|
pub let web_gl_rendering_context_sample_alpha_to_coverage : Int = 0x809E

// WebGLRenderingContext.SAMPLE_COVERAGE

///|
pub let web_gl_rendering_context_sample_coverage : Int = 0x80A0

// WebGLRenderingContext.NO_ERROR

///|
pub let web_gl_rendering_context_no_error : Int = 0

// WebGLRenderingContext.INVALID_ENUM

///|
pub let web_gl_rendering_context_invalid_enum : Int = 0x0500

// WebGLRenderingContext.INVALID_VALUE

///|
pub let web_gl_rendering_context_invalid_value : Int = 0x0501

// WebGLRenderingContext.INVALID_OPERATION

///|
pub let web_gl_rendering_context_invalid_operation : Int = 0x0502

// WebGLRenderingContext.OUT_OF_MEMORY

///|
pub let web_gl_rendering_context_out_of_memory : Int = 0x0505

// WebGLRenderingContext.CW

///|
pub let web_gl_rendering_context_cw : Int = 0x0900

// WebGLRenderingContext.CCW

///|
pub let web_gl_rendering_context_ccw : Int = 0x0901

// WebGLRenderingContext.LINE_WIDTH

///|
pub let web_gl_rendering_context_line_width : Int = 0x0B21

// WebGLRenderingContext.ALIASED_POINT_SIZE_RANGE

///|
pub let web_gl_rendering_context_aliased_point_size_range : Int = 0x846D

// WebGLRenderingContext.ALIASED_LINE_WIDTH_RANGE

///|
pub let web_gl_rendering_context_aliased_line_width_range : Int = 0x846E

// WebGLRenderingContext.CULL_FACE_MODE

///|
pub let web_gl_rendering_context_cull_face_mode : Int = 0x0B45

// WebGLRenderingContext.FRONT_FACE

///|
pub let web_gl_rendering_context_front_face : Int = 0x0B46

// WebGLRenderingContext.DEPTH_RANGE

///|
pub let web_gl_rendering_context_depth_range : Int = 0x0B70

// WebGLRenderingContext.DEPTH_WRITEMASK

///|
pub let web_gl_rendering_context_depth_writemask : Int = 0x0B72

// WebGLRenderingContext.DEPTH_CLEAR_VALUE

///|
pub let web_gl_rendering_context_depth_clear_value : Int = 0x0B73

// WebGLRenderingContext.DEPTH_FUNC

///|
pub let web_gl_rendering_context_depth_func : Int = 0x0B74

// WebGLRenderingContext.STENCIL_CLEAR_VALUE

///|
pub let web_gl_rendering_context_stencil_clear_value : Int = 0x0B91

// WebGLRenderingContext.STENCIL_FUNC

///|
pub let web_gl_rendering_context_stencil_func : Int = 0x0B92

// WebGLRenderingContext.STENCIL_FAIL

///|
pub let web_gl_rendering_context_stencil_fail : Int = 0x0B94

// WebGLRenderingContext.STENCIL_PASS_DEPTH_FAIL

///|
pub let web_gl_rendering_context_stencil_pass_depth_fail : Int = 0x0B95

// WebGLRenderingContext.STENCIL_PASS_DEPTH_PASS

///|
pub let web_gl_rendering_context_stencil_pass_depth_pass : Int = 0x0B96

// WebGLRenderingContext.STENCIL_REF

///|
pub let web_gl_rendering_context_stencil_ref : Int = 0x0B97

// WebGLRenderingContext.STENCIL_VALUE_MASK

///|
pub let web_gl_rendering_context_stencil_value_mask : Int = 0x0B93

// WebGLRenderingContext.STENCIL_WRITEMASK

///|
pub let web_gl_rendering_context_stencil_writemask : Int = 0x0B98

// WebGLRenderingContext.STENCIL_BACK_FUNC

///|
pub let web_gl_rendering_context_stencil_back_func : Int = 0x8800

// WebGLRenderingContext.STENCIL_BACK_FAIL

///|
pub let web_gl_rendering_context_stencil_back_fail : Int = 0x8801

// WebGLRenderingContext.STENCIL_BACK_PASS_DEPTH_FAIL

///|
pub let web_gl_rendering_context_stencil_back_pass_depth_fail : Int = 0x8802

// WebGLRenderingContext.STENCIL_BACK_PASS_DEPTH_PASS

///|
pub let web_gl_rendering_context_stencil_back_pass_depth_pass : Int = 0x8803

// WebGLRenderingContext.STENCIL_BACK_REF

///|
pub let web_gl_rendering_context_stencil_back_ref : Int = 0x8CA3

// WebGLRenderingContext.STENCIL_BACK_VALUE_MASK

///|
pub let web_gl_rendering_context_stencil_back_value_mask : Int = 0x8CA4

// WebGLRenderingContext.STENCIL_BACK_WRITEMASK

///|
pub let web_gl_rendering_context_stencil_back_writemask : Int = 0x8CA5

// WebGLRenderingContext.VIEWPORT

///|
pub let web_gl_rendering_context_viewport : Int = 0x0BA2

// WebGLRenderingContext.SCISSOR_BOX

///|
pub let web_gl_rendering_context_scissor_box : Int = 0x0C10

// WebGLRenderingContext.COLOR_CLEAR_VALUE

///|
pub let web_gl_rendering_context_color_clear_value : Int = 0x0C22

// WebGLRenderingContext.COLOR_WRITEMASK

///|
pub let web_gl_rendering_context_color_writemask : Int = 0x0C23

// WebGLRenderingContext.UNPACK_ALIGNMENT

///|
pub let web_gl_rendering_context_unpack_alignment : Int = 0x0CF5

// WebGLRenderingContext.PACK_ALIGNMENT

///|
pub let web_gl_rendering_context_pack_alignment : Int = 0x0D05

// WebGLRenderingContext.MAX_TEXTURE_SIZE

///|
pub let web_gl_rendering_context_max_texture_size : Int = 0x0D33

// WebGLRenderingContext.MAX_VIEWPORT_DIMS

///|
pub let web_gl_rendering_context_max_viewport_dims : Int = 0x0D3A

// WebGLRenderingContext.SUBPIXEL_BITS

///|
pub let web_gl_rendering_context_subpixel_bits : Int = 0x0D50

// WebGLRenderingContext.RED_BITS

///|
pub let web_gl_rendering_context_red_bits : Int = 0x0D52

// WebGLRenderingContext.GREEN_BITS

///|
pub let web_gl_rendering_context_green_bits : Int = 0x0D53

// WebGLRenderingContext.BLUE_BITS

///|
pub let web_gl_rendering_context_blue_bits : Int = 0x0D54

// WebGLRenderingContext.ALPHA_BITS

///|
pub let web_gl_rendering_context_alpha_bits : Int = 0x0D55

// WebGLRenderingContext.DEPTH_BITS

///|
pub let web_gl_rendering_context_depth_bits : Int = 0x0D56

// WebGLRenderingContext.STENCIL_BITS

///|
pub let web_gl_rendering_context_stencil_bits : Int = 0x0D57

// WebGLRenderingContext.POLYGON_OFFSET_UNITS

///|
pub let web_gl_rendering_context_polygon_offset_units : Int = 0x2A00

// WebGLRenderingContext.POLYGON_OFFSET_FACTOR

///|
pub let web_gl_rendering_context_polygon_offset_factor : Int = 0x8038

// WebGLRenderingContext.TEXTURE_BINDING_2D

///|
pub let web_gl_rendering_context_texture_binding_2d : Int = 0x8069

// WebGLRenderingContext.SAMPLE_BUFFERS

///|
pub let web_gl_rendering_context_sample_buffers : Int = 0x80A8

// WebGLRenderingContext.SAMPLES

///|
pub let web_gl_rendering_context_samples : Int = 0x80A9

// WebGLRenderingContext.SAMPLE_COVERAGE_VALUE

///|
pub let web_gl_rendering_context_sample_coverage_value : Int = 0x80AA

// WebGLRenderingContext.SAMPLE_COVERAGE_INVERT

///|
pub let web_gl_rendering_context_sample_coverage_invert : Int = 0x80AB

// WebGLRenderingContext.COMPRESSED_TEXTURE_FORMATS

///|
pub let web_gl_rendering_context_compressed_texture_formats : Int = 0x86A3

// WebGLRenderingContext.DONT_CARE

///|
pub let web_gl_rendering_context_dont_care : Int = 0x1100

// WebGLRenderingContext.FASTEST

///|
pub let web_gl_rendering_context_fastest : Int = 0x1101

// WebGLRenderingContext.NICEST

///|
pub let web_gl_rendering_context_nicest : Int = 0x1102

// WebGLRenderingContext.GENERATE_MIPMAP_HINT

///|
pub let web_gl_rendering_context_generate_mipmap_hint : Int = 0x8192

// WebGLRenderingContext.BYTE

///|
pub let web_gl_rendering_context_byte : Int = 0x1400

// WebGLRenderingContext.UNSIGNED_BYTE

///|
pub let web_gl_rendering_context_unsigned_byte : Int = 0x1401

// WebGLRenderingContext.SHORT

///|
pub let web_gl_rendering_context_short : Int = 0x1402

// WebGLRenderingContext.UNSIGNED_SHORT

///|
pub let web_gl_rendering_context_unsigned_short : Int = 0x1403

// WebGLRenderingContext.INT

///|
pub let web_gl_rendering_context_int : Int = 0x1404

// WebGLRenderingContext.UNSIGNED_INT

///|
pub let web_gl_rendering_context_unsigned_int : Int = 0x1405

// WebGLRenderingContext.FLOAT

///|
pub let web_gl_rendering_context_float : Int = 0x1406

// WebGLRenderingContext.DEPTH_COMPONENT

///|
pub let web_gl_rendering_context_depth_component : Int = 0x1902

// WebGLRenderingContext.ALPHA

///|
pub let web_gl_rendering_context_alpha : Int = 0x1906

// WebGLRenderingContext.RGB

///|
pub let web_gl_rendering_context_rgb : Int = 0x1907

// WebGLRenderingContext.RGBA

///|
pub let web_gl_rendering_context_rgba : Int = 0x1908

// WebGLRenderingContext.LUMINANCE

///|
pub let web_gl_rendering_context_luminance : Int = 0x1909

// WebGLRenderingContext.LUMINANCE_ALPHA

///|
pub let web_gl_rendering_context_luminance_alpha : Int = 0x190A

// WebGLRenderingContext.UNSIGNED_SHORT_4_4_4_4

///|
pub let web_gl_rendering_context_unsigned_short_4_4_4_4 : Int = 0x8033

// WebGLRenderingContext.UNSIGNED_SHORT_5_5_5_1

///|
pub let web_gl_rendering_context_unsigned_short_5_5_5_1 : Int = 0x8034

// WebGLRenderingContext.UNSIGNED_SHORT_5_6_5

///|
pub let web_gl_rendering_context_unsigned_short_5_6_5 : Int = 0x8363

// WebGLRenderingContext.FRAGMENT_SHADER

///|
pub let web_gl_rendering_context_fragment_shader : Int = 0x8B30

// WebGLRenderingContext.VERTEX_SHADER

///|
pub let web_gl_rendering_context_vertex_shader : Int = 0x8B31

// WebGLRenderingContext.MAX_VERTEX_ATTRIBS

///|
pub let web_gl_rendering_context_max_vertex_attribs : Int = 0x8869

// WebGLRenderingContext.MAX_VERTEX_UNIFORM_VECTORS

///|
pub let web_gl_rendering_context_max_vertex_uniform_vectors : Int = 0x8DFB

// WebGLRenderingContext.MAX_VARYING_VECTORS

///|
pub let web_gl_rendering_context_max_varying_vectors : Int = 0x8DFC

// WebGLRenderingContext.MAX_COMBINED_TEXTURE_IMAGE_UNITS

///|
pub let web_gl_rendering_context_max_combined_texture_image_units : Int = 0x8B4D

// WebGLRenderingContext.MAX_VERTEX_TEXTURE_IMAGE_UNITS

///|
pub let web_gl_rendering_context_max_vertex_texture_image_units : Int = 0x8B4C

// WebGLRenderingContext.MAX_TEXTURE_IMAGE_UNITS

///|
pub let web_gl_rendering_context_max_texture_image_units : Int = 0x8872

// WebGLRenderingContext.MAX_FRAGMENT_UNIFORM_VECTORS

///|
pub let web_gl_rendering_context_max_fragment_uniform_vectors : Int = 0x8DFD

// WebGLRenderingContext.SHADER_TYPE

///|
pub let web_gl_rendering_context_shader_type : Int = 0x8B4F

// WebGLRenderingContext.DELETE_STATUS

///|
pub let web_gl_rendering_context_delete_status : Int = 0x8B80

// WebGLRenderingContext.LINK_STATUS

///|
pub let web_gl_rendering_context_link_status : Int = 0x8B82

// WebGLRenderingContext.VALIDATE_STATUS

///|
pub let web_gl_rendering_context_validate_status : Int = 0x8B83

// WebGLRenderingContext.ATTACHED_SHADERS

///|
pub let web_gl_rendering_context_attached_shaders : Int = 0x8B85

// WebGLRenderingContext.ACTIVE_UNIFORMS

///|
pub let web_gl_rendering_context_active_uniforms : Int = 0x8B86

// WebGLRenderingContext.ACTIVE_ATTRIBUTES

///|
pub let web_gl_rendering_context_active_attributes : Int = 0x8B89

// WebGLRenderingContext.SHADING_LANGUAGE_VERSION

///|
pub let web_gl_rendering_context_shading_language_version : Int = 0x8B8C

// WebGLRenderingContext.CURRENT_PROGRAM

///|
pub let web_gl_rendering_context_current_program : Int = 0x8B8D

// WebGLRenderingContext.NEVER

///|
pub let web_gl_rendering_context_never : Int = 0x0200

// WebGLRenderingContext.LESS

///|
pub let web_gl_rendering_context_less : Int = 0x0201

// WebGLRenderingContext.EQUAL

///|
pub let web_gl_rendering_context_equal : Int = 0x0202

// WebGLRenderingContext.LEQUAL

///|
pub let web_gl_rendering_context_lequal : Int = 0x0203

// WebGLRenderingContext.GREATER

///|
pub let web_gl_rendering_context_greater : Int = 0x0204

// WebGLRenderingContext.NOTEQUAL

///|
pub let web_gl_rendering_context_notequal : Int = 0x0205

// WebGLRenderingContext.GEQUAL

///|
pub let web_gl_rendering_context_gequal : Int = 0x0206

// WebGLRenderingContext.ALWAYS

///|
pub let web_gl_rendering_context_always : Int = 0x0207

// WebGLRenderingContext.KEEP

///|
pub let web_gl_rendering_context_keep : Int = 0x1E00

// WebGLRenderingContext.REPLACE

///|
pub let web_gl_rendering_context_replace : Int = 0x1E01

// WebGLRenderingContext.INCR

///|
pub let web_gl_rendering_context_incr : Int = 0x1E02

// WebGLRenderingContext.DECR

///|
pub let web_gl_rendering_context_decr : Int = 0x1E03

// WebGLRenderingContext.INVERT

///|
pub let web_gl_rendering_context_invert : Int = 0x150A

// WebGLRenderingContext.INCR_WRAP

///|
pub let web_gl_rendering_context_incr_wrap : Int = 0x8507

// WebGLRenderingContext.DECR_WRAP

///|
pub let web_gl_rendering_context_decr_wrap : Int = 0x8508

// WebGLRenderingContext.VENDOR

///|
pub let web_gl_rendering_context_vendor : Int = 0x1F00

// WebGLRenderingContext.RENDERER

///|
pub let web_gl_rendering_context_renderer : Int = 0x1F01

// WebGLRenderingContext.VERSION

///|
pub let web_gl_rendering_context_version : Int = 0x1F02

// WebGLRenderingContext.NEAREST

///|
pub let web_gl_rendering_context_nearest : Int = 0x2600

// WebGLRenderingContext.LINEAR

///|
pub let web_gl_rendering_context_linear : Int = 0x2601

// WebGLRenderingContext.NEAREST_MIPMAP_NEAREST

///|
pub let web_gl_rendering_context_nearest_mipmap_nearest : Int = 0x2700

// WebGLRenderingContext.LINEAR_MIPMAP_NEAREST

///|
pub let web_gl_rendering_context_linear_mipmap_nearest : Int = 0x2701

// WebGLRenderingContext.NEAREST_MIPMAP_LINEAR

///|
pub let web_gl_rendering_context_nearest_mipmap_linear : Int = 0x2702

// WebGLRenderingContext.LINEAR_MIPMAP_LINEAR

///|
pub let web_gl_rendering_context_linear_mipmap_linear : Int = 0x2703

// WebGLRenderingContext.TEXTURE_MAG_FILTER

///|
pub let web_gl_rendering_context_texture_mag_filter : Int = 0x2800

// WebGLRenderingContext.TEXTURE_MIN_FILTER

///|
pub let web_gl_rendering_context_texture_min_filter : Int = 0x2801

// WebGLRenderingContext.TEXTURE_WRAP_S

///|
pub let web_gl_rendering_context_texture_wrap_s : Int = 0x2802

// WebGLRenderingContext.TEXTURE_WRAP_T

///|
pub let web_gl_rendering_context_texture_wrap_t : Int = 0x2803

// WebGLRenderingContext.TEXTURE_2D

///|
pub let web_gl_rendering_context_texture_2d : Int = 0x0DE1

// WebGLRenderingContext.TEXTURE

///|
pub let web_gl_rendering_context_texture : Int = 0x1702

// WebGLRenderingContext.TEXTURE_CUBE_MAP

///|
pub let web_gl_rendering_context_texture_cube_map : Int = 0x8513

// WebGLRenderingContext.TEXTURE_BINDING_CUBE_MAP

///|
pub let web_gl_rendering_context_texture_binding_cube_map : Int = 0x8514

// WebGLRenderingContext.TEXTURE_CUBE_MAP_POSITIVE_X

///|
pub let web_gl_rendering_context_texture_cube_map_positive_x : Int = 0x8515

// WebGLRenderingContext.TEXTURE_CUBE_MAP_NEGATIVE_X

///|
pub let web_gl_rendering_context_texture_cube_map_negative_x : Int = 0x8516

// WebGLRenderingContext.TEXTURE_CUBE_MAP_POSITIVE_Y

///|
pub let web_gl_rendering_context_texture_cube_map_positive_y : Int = 0x8517

// WebGLRenderingContext.TEXTURE_CUBE_MAP_NEGATIVE_Y

///|
pub let web_gl_rendering_context_texture_cube_map_negative_y : Int = 0x8518

// WebGLRenderingContext.TEXTURE_CUBE_MAP_POSITIVE_Z

///|
pub let web_gl_rendering_context_texture_cube_map_positive_z : Int = 0x8519

// WebGLRenderingContext.TEXTURE_CUBE_MAP_NEGATIVE_Z

///|
pub let web_gl_rendering_context_texture_cube_map_negative_z : Int = 0x851A

// WebGLRenderingContext.MAX_CUBE_MAP_TEXTURE_SIZE

///|
pub let web_gl_rendering_context_max_cube_map_texture_size : Int = 0x851C

// WebGLRenderingContext.TEXTURE0

///|
pub let web_gl_rendering_context_texture0 : Int = 0x84C0

// WebGLRenderingContext.TEXTURE1

///|
pub let web_gl_rendering_context_texture1 : Int = 0x84C1

// WebGLRenderingContext.TEXTURE2

///|
pub let web_gl_rendering_context_texture2 : Int = 0x84C2

// WebGLRenderingContext.TEXTURE3

///|
pub let web_gl_rendering_context_texture3 : Int = 0x84C3

// WebGLRenderingContext.TEXTURE4

///|
pub let web_gl_rendering_context_texture4 : Int = 0x84C4

// WebGLRenderingContext.TEXTURE5

///|
pub let web_gl_rendering_context_texture5 : Int = 0x84C5

// WebGLRenderingContext.TEXTURE6

///|
pub let web_gl_rendering_context_texture6 : Int = 0x84C6

// WebGLRenderingContext.TEXTURE7

///|
pub let web_gl_rendering_context_texture7 : Int = 0x84C7

// WebGLRenderingContext.TEXTURE8

///|
pub let web_gl_rendering_context_texture8 : Int = 0x84C8

// WebGLRenderingContext.TEXTURE9

///|
pub let web_gl_rendering_context_texture9 : Int = 0x84C9

// WebGLRenderingContext.TEXTURE10

///|
pub let web_gl_rendering_context_texture10 : Int = 0x84CA

// WebGLRenderingContext.TEXTURE11

///|
pub let web_gl_rendering_context_texture11 : Int = 0x84CB

// WebGLRenderingContext.TEXTURE12

///|
pub let web_gl_rendering_context_texture12 : Int = 0x84CC

// WebGLRenderingContext.TEXTURE13

///|
pub let web_gl_rendering_context_texture13 : Int = 0x84CD

// WebGLRenderingContext.TEXTURE14

///|
pub let web_gl_rendering_context_texture14 : Int = 0x84CE

// WebGLRenderingContext.TEXTURE15

///|
pub let web_gl_rendering_context_texture15 : Int = 0x84CF

// WebGLRenderingContext.TEXTURE16

///|
pub let web_gl_rendering_context_texture16 : Int = 0x84D0

// WebGLRenderingContext.TEXTURE17

///|
pub let web_gl_rendering_context_texture17 : Int = 0x84D1

// WebGLRenderingContext.TEXTURE18

///|
pub let web_gl_rendering_context_texture18 : Int = 0x84D2

// WebGLRenderingContext.TEXTURE19

///|
pub let web_gl_rendering_context_texture19 : Int = 0x84D3

// WebGLRenderingContext.TEXTURE20

///|
pub let web_gl_rendering_context_texture20 : Int = 0x84D4

// WebGLRenderingContext.TEXTURE21

///|
pub let web_gl_rendering_context_texture21 : Int = 0x84D5

// WebGLRenderingContext.TEXTURE22

///|
pub let web_gl_rendering_context_texture22 : Int = 0x84D6

// WebGLRenderingContext.TEXTURE23

///|
pub let web_gl_rendering_context_texture23 : Int = 0x84D7

// WebGLRenderingContext.TEXTURE24

///|
pub let web_gl_rendering_context_texture24 : Int = 0x84D8

// WebGLRenderingContext.TEXTURE25

///|
pub let web_gl_rendering_context_texture25 : Int = 0x84D9

// WebGLRenderingContext.TEXTURE26

///|
pub let web_gl_rendering_context_texture26 : Int = 0x84DA

// WebGLRenderingContext.TEXTURE27

///|
pub let web_gl_rendering_context_texture27 : Int = 0x84DB

// WebGLRenderingContext.TEXTURE28

///|
pub let web_gl_rendering_context_texture28 : Int = 0x84DC

// WebGLRenderingContext.TEXTURE29

///|
pub let web_gl_rendering_context_texture29 : Int = 0x84DD

// WebGLRenderingContext.TEXTURE30

///|
pub let web_gl_rendering_context_texture30 : Int = 0x84DE

// WebGLRenderingContext.TEXTURE31

///|
pub let web_gl_rendering_context_texture31 : Int = 0x84DF

// WebGLRenderingContext.ACTIVE_TEXTURE

///|
pub let web_gl_rendering_context_active_texture : Int = 0x84E0

// WebGLRenderingContext.REPEAT

///|
pub let web_gl_rendering_context_repeat : Int = 0x2901

// WebGLRenderingContext.CLAMP_TO_EDGE

///|
pub let web_gl_rendering_context_clamp_to_edge : Int = 0x812F

// WebGLRenderingContext.MIRRORED_REPEAT

///|
pub let web_gl_rendering_context_mirrored_repeat : Int = 0x8370

// WebGLRenderingContext.FLOAT_VEC2

///|
pub let web_gl_rendering_context_float_vec2 : Int = 0x8B50

// WebGLRenderingContext.FLOAT_VEC3

///|
pub let web_gl_rendering_context_float_vec3 : Int = 0x8B51

// WebGLRenderingContext.FLOAT_VEC4

///|
pub let web_gl_rendering_context_float_vec4 : Int = 0x8B52

// WebGLRenderingContext.INT_VEC2

///|
pub let web_gl_rendering_context_int_vec2 : Int = 0x8B53

// WebGLRenderingContext.INT_VEC3

///|
pub let web_gl_rendering_context_int_vec3 : Int = 0x8B54

// WebGLRenderingContext.INT_VEC4

///|
pub let web_gl_rendering_context_int_vec4 : Int = 0x8B55

// WebGLRenderingContext.BOOL

///|
pub let web_gl_rendering_context_bool : Int = 0x8B56

// WebGLRenderingContext.BOOL_VEC2

///|
pub let web_gl_rendering_context_bool_vec2 : Int = 0x8B57

// WebGLRenderingContext.BOOL_VEC3

///|
pub let web_gl_rendering_context_bool_vec3 : Int = 0x8B58

// WebGLRenderingContext.BOOL_VEC4

///|
pub let web_gl_rendering_context_bool_vec4 : Int = 0x8B59

// WebGLRenderingContext.FLOAT_MAT2

///|
pub let web_gl_rendering_context_float_mat2 : Int = 0x8B5A

// WebGLRenderingContext.FLOAT_MAT3

///|
pub let web_gl_rendering_context_float_mat3 : Int = 0x8B5B

// WebGLRenderingContext.FLOAT_MAT4

///|
pub let web_gl_rendering_context_float_mat4 : Int = 0x8B5C

// WebGLRenderingContext.SAMPLER_2D

///|
pub let web_gl_rendering_context_sampler_2d : Int = 0x8B5E

// WebGLRenderingContext.SAMPLER_CUBE

///|
pub let web_gl_rendering_context_sampler_cube : Int = 0x8B60

// WebGLRenderingContext.VERTEX_ATTRIB_ARRAY_ENABLED

///|
pub let web_gl_rendering_context_vertex_attrib_array_enabled : Int = 0x8622

// WebGLRenderingContext.VERTEX_ATTRIB_ARRAY_SIZE

///|
pub let web_gl_rendering_context_vertex_attrib_array_size : Int = 0x8623

// WebGLRenderingContext.VERTEX_ATTRIB_ARRAY_STRIDE

///|
pub let web_gl_rendering_context_vertex_attrib_array_stride : Int = 0x8624

// WebGLRenderingContext.VERTEX_ATTRIB_ARRAY_TYPE

///|
pub let web_gl_rendering_context_vertex_attrib_array_type : Int = 0x8625

// WebGLRenderingContext.VERTEX_ATTRIB_ARRAY_NORMALIZED

///|
pub let web_gl_rendering_context_vertex_attrib_array_normalized : Int = 0x886A

// WebGLRenderingContext.VERTEX_ATTRIB_ARRAY_POINTER

///|
pub let web_gl_rendering_context_vertex_attrib_array_pointer : Int = 0x8645

// WebGLRenderingContext.VERTEX_ATTRIB_ARRAY_BUFFER_BINDING

///|
pub let web_gl_rendering_context_vertex_attrib_array_buffer_binding : Int = 0x889F

// WebGLRenderingContext.IMPLEMENTATION_COLOR_READ_TYPE

///|
pub let web_gl_rendering_context_implementation_color_read_type : Int = 0x8B9A

// WebGLRenderingContext.IMPLEMENTATION_COLOR_READ_FORMAT

///|
pub let web_gl_rendering_context_implementation_color_read_format : Int = 0x8B9B

// WebGLRenderingContext.COMPILE_STATUS

///|
pub let web_gl_rendering_context_compile_status : Int = 0x8B81

// WebGLRenderingContext.LOW_FLOAT

///|
pub let web_gl_rendering_context_low_float : Int = 0x8DF0

// WebGLRenderingContext.MEDIUM_FLOAT

///|
pub let web_gl_rendering_context_medium_float : Int = 0x8DF1

// WebGLRenderingContext.HIGH_FLOAT

///|
pub let web_gl_rendering_context_high_float : Int = 0x8DF2

// WebGLRenderingContext.LOW_INT

///|
pub let web_gl_rendering_context_low_int : Int = 0x8DF3

// WebGLRenderingContext.MEDIUM_INT

///|
pub let web_gl_rendering_context_medium_int : Int = 0x8DF4

// WebGLRenderingContext.HIGH_INT

///|
pub let web_gl_rendering_context_high_int : Int = 0x8DF5

// WebGLRenderingContext.FRAMEBUFFER

///|
pub let web_gl_rendering_context_framebuffer : Int = 0x8D40

// WebGLRenderingContext.RENDERBUFFER

///|
pub let web_gl_rendering_context_renderbuffer : Int = 0x8D41

// WebGLRenderingContext.RGBA4

///|
pub let web_gl_rendering_context_rgba4 : Int = 0x8056

// WebGLRenderingContext.RGB5_A1

///|
pub let web_gl_rendering_context_rgb5_a1 : Int = 0x8057

// WebGLRenderingContext.RGBA8

///|
pub let web_gl_rendering_context_rgba8 : Int = 0x8058

// WebGLRenderingContext.RGB565

///|
pub let web_gl_rendering_context_rgb565 : Int = 0x8D62

// WebGLRenderingContext.DEPTH_COMPONENT16

///|
pub let web_gl_rendering_context_depth_component16 : Int = 0x81A5

// WebGLRenderingContext.STENCIL_INDEX8

///|
pub let web_gl_rendering_context_stencil_index8 : Int = 0x8D48

// WebGLRenderingContext.DEPTH_STENCIL

///|
pub let web_gl_rendering_context_depth_stencil : Int = 0x84F9

// WebGLRenderingContext.RENDERBUFFER_WIDTH

///|
pub let web_gl_rendering_context_renderbuffer_width : Int = 0x8D42

// WebGLRenderingContext.RENDERBUFFER_HEIGHT

///|
pub let web_gl_rendering_context_renderbuffer_height : Int = 0x8D43

// WebGLRenderingContext.RENDERBUFFER_INTERNAL_FORMAT

///|
pub let web_gl_rendering_context_renderbuffer_internal_format : Int = 0x8D44

// WebGLRenderingContext.RENDERBUFFER_RED_SIZE

///|
pub let web_gl_rendering_context_renderbuffer_red_size : Int = 0x8D50

// WebGLRenderingContext.RENDERBUFFER_GREEN_SIZE

///|
pub let web_gl_rendering_context_renderbuffer_green_size : Int = 0x8D51

// WebGLRenderingContext.RENDERBUFFER_BLUE_SIZE

///|
pub let web_gl_rendering_context_renderbuffer_blue_size : Int = 0x8D52

// WebGLRenderingContext.RENDERBUFFER_ALPHA_SIZE

///|
pub let web_gl_rendering_context_renderbuffer_alpha_size : Int = 0x8D53

// WebGLRenderingContext.RENDERBUFFER_DEPTH_SIZE

///|
pub let web_gl_rendering_context_renderbuffer_depth_size : Int = 0x8D54

// WebGLRenderingContext.RENDERBUFFER_STENCIL_SIZE

///|
pub let web_gl_rendering_context_renderbuffer_stencil_size : Int = 0x8D55

// WebGLRenderingContext.FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE

///|
pub let web_gl_rendering_context_framebuffer_attachment_object_type : Int = 0x8CD0

// WebGLRenderingContext.FRAMEBUFFER_ATTACHMENT_OBJECT_NAME

///|
pub let web_gl_rendering_context_framebuffer_attachment_object_name : Int = 0x8CD1

// WebGLRenderingContext.FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL

///|
pub let web_gl_rendering_context_framebuffer_attachment_texture_level : Int = 0x8CD2

// WebGLRenderingContext.FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE

///|
pub let web_gl_rendering_context_framebuffer_attachment_texture_cube_map_face : Int = 0x8CD3

// WebGLRenderingContext.COLOR_ATTACHMENT0

///|
pub let web_gl_rendering_context_color_attachment0 : Int = 0x8CE0

// WebGLRenderingContext.DEPTH_ATTACHMENT

///|
pub let web_gl_rendering_context_depth_attachment : Int = 0x8D00

// WebGLRenderingContext.STENCIL_ATTACHMENT

///|
pub let web_gl_rendering_context_stencil_attachment : Int = 0x8D20

// WebGLRenderingContext.DEPTH_STENCIL_ATTACHMENT

///|
pub let web_gl_rendering_context_depth_stencil_attachment : Int = 0x821A

// WebGLRenderingContext.NONE

///|
pub let web_gl_rendering_context_none : Int = 0

// WebGLRenderingContext.FRAMEBUFFER_COMPLETE

///|
pub let web_gl_rendering_context_framebuffer_complete : Int = 0x8CD5

// WebGLRenderingContext.FRAMEBUFFER_INCOMPLETE_ATTACHMENT

///|
pub let web_gl_rendering_context_framebuffer_incomplete_attachment : Int = 0x8CD6

// WebGLRenderingContext.FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT

///|
pub let web_gl_rendering_context_framebuffer_incomplete_missing_attachment : Int = 0x8CD7

// WebGLRenderingContext.FRAMEBUFFER_INCOMPLETE_DIMENSIONS

///|
pub let web_gl_rendering_context_framebuffer_incomplete_dimensions : Int = 0x8CD9

// WebGLRenderingContext.FRAMEBUFFER_UNSUPPORTED

///|
pub let web_gl_rendering_context_framebuffer_unsupported : Int = 0x8CDD

// WebGLRenderingContext.FRAMEBUFFER_BINDING

///|
pub let web_gl_rendering_context_framebuffer_binding : Int = 0x8CA6

// WebGLRenderingContext.RENDERBUFFER_BINDING

///|
pub let web_gl_rendering_context_renderbuffer_binding : Int = 0x8CA7

// WebGLRenderingContext.MAX_RENDERBUFFER_SIZE

///|
pub let web_gl_rendering_context_max_renderbuffer_size : Int = 0x84E8

// WebGLRenderingContext.INVALID_FRAMEBUFFER_OPERATION

///|
pub let web_gl_rendering_context_invalid_framebuffer_operation : Int = 0x0506

// WebGLRenderingContext.UNPACK_FLIP_Y_WEBGL

///|
pub let web_gl_rendering_context_unpack_flip_y_webgl : Int = 0x9240

// WebGLRenderingContext.UNPACK_PREMULTIPLY_ALPHA_WEBGL

///|
pub let web_gl_rendering_context_unpack_premultiply_alpha_webgl : Int = 0x9241

// WebGLRenderingContext.CONTEXT_LOST_WEBGL

///|
pub let web_gl_rendering_context_context_lost_webgl : Int = 0x9242

// WebGLRenderingContext.UNPACK_COLORSPACE_CONVERSION_WEBGL

///|
pub let web_gl_rendering_context_unpack_colorspace_conversion_webgl : Int = 0x9243

// WebGLRenderingContext.BROWSER_DEFAULT_WEBGL

///|
pub let web_gl_rendering_context_browser_default_webgl : Int = 0x9244

///|
pub extern "js" fn WebGLRenderingContext::get_canvas(
  self : WebGLRenderingContext,
) -> HTMLCanvasElementOrOffscreenCanvas =
  #| (self) => self.canvas

///|
pub extern "js" fn WebGLRenderingContext::get_drawing_buffer_width(
  self : WebGLRenderingContext,
) -> GLsizei =
  #| (self) => self.drawingBufferWidth

///|
pub extern "js" fn WebGLRenderingContext::get_drawing_buffer_height(
  self : WebGLRenderingContext,
) -> GLsizei =
  #| (self) => self.drawingBufferHeight

///|
pub extern "js" fn WebGLRenderingContext::get_drawing_buffer_format(
  self : WebGLRenderingContext,
) -> GLenum =
  #| (self) => self.drawingBufferFormat

///|
pub extern "js" fn WebGLRenderingContext::get_drawing_buffer_color_space(
  self : WebGLRenderingContext,
) -> PredefinedColorSpace =
  #| (self) => ['srgb', 'srgb-linear', 'display-p3', 'display-p3-linear'].indexOf(self.drawingBufferColorSpace)

///|
pub extern "js" fn WebGLRenderingContext::set_drawing_buffer_color_space(
  self : WebGLRenderingContext,
  value : PredefinedColorSpace,
) -> Unit =
  #| (self, value) => { self.drawingBufferColorSpace = ['srgb', 'srgb-linear', 'display-p3', 'display-p3-linear'][value] }

///|
pub extern "js" fn WebGLRenderingContext::get_unpack_color_space(
  self : WebGLRenderingContext,
) -> PredefinedColorSpace =
  #| (self) => ['srgb', 'srgb-linear', 'display-p3', 'display-p3-linear'].indexOf(self.unpackColorSpace)

///|
pub extern "js" fn WebGLRenderingContext::set_unpack_color_space(
  self : WebGLRenderingContext,
  value : PredefinedColorSpace,
) -> Unit =
  #| (self, value) => { self.unpackColorSpace = ['srgb', 'srgb-linear', 'display-p3', 'display-p3-linear'][value] }

///|
pub extern "js" fn WebGLRenderingContext::get_context_attributes(
  self : WebGLRenderingContext,
) -> WebGLContextAttributes? =
  #| (self) => (() => { const v = self.getContextAttributes(); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn WebGLRenderingContext::is_context_lost(
  self : WebGLRenderingContext,
) -> Bool =
  #| (self) => self.isContextLost()

///|
pub extern "js" fn WebGLRenderingContext::get_supported_extensions(
  self : WebGLRenderingContext,
) -> Array[String] =
  #| (self) => self.getSupportedExtensions()

///|
pub extern "js" fn WebGLRenderingContext::get_extension(
  self : WebGLRenderingContext,
  name : String,
) -> JsValue? =
  #| (self, name) => (() => { const v = self.getExtension(name); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn WebGLRenderingContext::drawing_buffer_storage(
  self : WebGLRenderingContext,
  sized_format : GLenum,
  width : Int,
  height : Int,
) -> Unit =
  #| (self, sized_format, width, height) => self.drawingBufferStorage(sized_format, width, height)

///|
pub extern "js" fn WebGLRenderingContext::active_texture(
  self : WebGLRenderingContext,
  texture : GLenum,
) -> Unit =
  #| (self, texture) => self.activeTexture(texture)

///|
pub extern "js" fn WebGLRenderingContext::attach_shader(
  self : WebGLRenderingContext,
  program : WebGLProgram,
  shader : WebGLShader,
) -> Unit =
  #| (self, program, shader) => self.attachShader(program, shader)

///|
pub extern "js" fn WebGLRenderingContext::bind_attrib_location(
  self : WebGLRenderingContext,
  program : WebGLProgram,
  index : GLuint,
  name : String,
) -> Unit =
  #| (self, program, index, name) => self.bindAttribLocation(program, index, name)

///|
pub extern "js" fn WebGLRenderingContext::bind_buffer(
  self : WebGLRenderingContext,
  target : GLenum,
  buffer : WebGLBuffer?,
) -> Unit =
  #| (self, target, buffer) => self.bindBuffer(target, (buffer.$tag === 1 ? buffer._0 : null))

///|
pub extern "js" fn WebGLRenderingContext::bind_framebuffer(
  self : WebGLRenderingContext,
  target : GLenum,
  framebuffer : WebGLFramebuffer?,
) -> Unit =
  #| (self, target, framebuffer) => self.bindFramebuffer(target, (framebuffer.$tag === 1 ? framebuffer._0 : null))

///|
pub extern "js" fn WebGLRenderingContext::bind_renderbuffer(
  self : WebGLRenderingContext,
  target : GLenum,
  renderbuffer : WebGLRenderbuffer?,
) -> Unit =
  #| (self, target, renderbuffer) => self.bindRenderbuffer(target, (renderbuffer.$tag === 1 ? renderbuffer._0 : null))

///|
pub extern "js" fn WebGLRenderingContext::bind_texture(
  self : WebGLRenderingContext,
  target : GLenum,
  texture : WebGLTexture?,
) -> Unit =
  #| (self, target, texture) => self.bindTexture(target, (texture.$tag === 1 ? texture._0 : null))

///|
pub extern "js" fn WebGLRenderingContext::blend_color(
  self : WebGLRenderingContext,
  red : GLclampf,
  green : GLclampf,
  blue : GLclampf,
  alpha : GLclampf,
) -> Unit =
  #| (self, red, green, blue, alpha) => self.blendColor(red, green, blue, alpha)

///|
pub extern "js" fn WebGLRenderingContext::blend_equation(
  self : WebGLRenderingContext,
  mode : GLenum,
) -> Unit =
  #| (self, mode) => self.blendEquation(mode)

///|
pub extern "js" fn WebGLRenderingContext::blend_equation_separate(
  self : WebGLRenderingContext,
  mode_rgb : GLenum,
  mode_alpha : GLenum,
) -> Unit =
  #| (self, mode_rgb, mode_alpha) => self.blendEquationSeparate(mode_rgb, mode_alpha)

///|
pub extern "js" fn WebGLRenderingContext::blend_func(
  self : WebGLRenderingContext,
  sfactor : GLenum,
  dfactor : GLenum,
) -> Unit =
  #| (self, sfactor, dfactor) => self.blendFunc(sfactor, dfactor)

///|
pub extern "js" fn WebGLRenderingContext::blend_func_separate(
  self : WebGLRenderingContext,
  src_rgb : GLenum,
  dst_rgb : GLenum,
  src_alpha : GLenum,
  dst_alpha : GLenum,
) -> Unit =
  #| (self, src_rgb, dst_rgb, src_alpha, dst_alpha) => self.blendFuncSeparate(src_rgb, dst_rgb, src_alpha, dst_alpha)

///|
pub extern "js" fn WebGLRenderingContext::check_framebuffer_status(
  self : WebGLRenderingContext,
  target : GLenum,
) -> GLenum =
  #| (self, target) => self.checkFramebufferStatus(target)

///|
pub extern "js" fn WebGLRenderingContext::clear(
  self : WebGLRenderingContext,
  mask : GLbitfield,
) -> Unit =
  #| (self, mask) => self.clear(mask)

///|
pub extern "js" fn WebGLRenderingContext::clear_color(
  self : WebGLRenderingContext,
  red : GLclampf,
  green : GLclampf,
  blue : GLclampf,
  alpha : GLclampf,
) -> Unit =
  #| (self, red, green, blue, alpha) => self.clearColor(red, green, blue, alpha)

///|
pub extern "js" fn WebGLRenderingContext::clear_depth(
  self : WebGLRenderingContext,
  depth : GLclampf,
) -> Unit =
  #| (self, depth) => self.clearDepth(depth)

///|
pub extern "js" fn WebGLRenderingContext::clear_stencil(
  self : WebGLRenderingContext,
  s : GLint,
) -> Unit =
  #| (self, s) => self.clearStencil(s)

///|
pub extern "js" fn WebGLRenderingContext::color_mask(
  self : WebGLRenderingContext,
  red : GLboolean,
  green : GLboolean,
  blue : GLboolean,
  alpha : GLboolean,
) -> Unit =
  #| (self, red, green, blue, alpha) => self.colorMask(red, green, blue, alpha)

///|
pub extern "js" fn WebGLRenderingContext::compile_shader(
  self : WebGLRenderingContext,
  shader : WebGLShader,
) -> Unit =
  #| (self, shader) => self.compileShader(shader)

///|
pub extern "js" fn WebGLRenderingContext::copy_tex_image2_d(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLenum,
  x : GLint,
  y : GLint,
  width : GLsizei,
  height : GLsizei,
  border : GLint,
) -> Unit =
  #| (self, target, level, internalformat, x, y, width, height, border) => self.copyTexImage2D(target, level, internalformat, x, y, width, height, border)

///|
pub extern "js" fn WebGLRenderingContext::copy_tex_sub_image2_d(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  x : GLint,
  y : GLint,
  width : GLsizei,
  height : GLsizei,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, x, y, width, height) => self.copyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height)

///|
pub extern "js" fn WebGLRenderingContext::create_buffer(
  self : WebGLRenderingContext,
) -> WebGLBuffer =
  #| (self) => self.createBuffer()

///|
pub extern "js" fn WebGLRenderingContext::create_framebuffer(
  self : WebGLRenderingContext,
) -> WebGLFramebuffer =
  #| (self) => self.createFramebuffer()

///|
pub extern "js" fn WebGLRenderingContext::create_program(
  self : WebGLRenderingContext,
) -> WebGLProgram =
  #| (self) => self.createProgram()

///|
pub extern "js" fn WebGLRenderingContext::create_renderbuffer(
  self : WebGLRenderingContext,
) -> WebGLRenderbuffer =
  #| (self) => self.createRenderbuffer()

///|
pub extern "js" fn WebGLRenderingContext::create_shader(
  self : WebGLRenderingContext,
  type_ : GLenum,
) -> WebGLShader? =
  #| (self, type_) => (() => { const v = self.createShader(type_); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn WebGLRenderingContext::create_texture(
  self : WebGLRenderingContext,
) -> WebGLTexture =
  #| (self) => self.createTexture()

///|
pub extern "js" fn WebGLRenderingContext::cull_face(
  self : WebGLRenderingContext,
  mode : GLenum,
) -> Unit =
  #| (self, mode) => self.cullFace(mode)

///|
pub extern "js" fn WebGLRenderingContext::delete_buffer(
  self : WebGLRenderingContext,
  buffer : WebGLBuffer?,
) -> Unit =
  #| (self, buffer) => self.deleteBuffer((buffer.$tag === 1 ? buffer._0 : null))

///|
pub extern "js" fn WebGLRenderingContext::delete_framebuffer(
  self : WebGLRenderingContext,
  framebuffer : WebGLFramebuffer?,
) -> Unit =
  #| (self, framebuffer) => self.deleteFramebuffer((framebuffer.$tag === 1 ? framebuffer._0 : null))

///|
pub extern "js" fn WebGLRenderingContext::delete_program(
  self : WebGLRenderingContext,
  program : WebGLProgram?,
) -> Unit =
  #| (self, program) => self.deleteProgram((program.$tag === 1 ? program._0 : null))

///|
pub extern "js" fn WebGLRenderingContext::delete_renderbuffer(
  self : WebGLRenderingContext,
  renderbuffer : WebGLRenderbuffer?,
) -> Unit =
  #| (self, renderbuffer) => self.deleteRenderbuffer((renderbuffer.$tag === 1 ? renderbuffer._0 : null))

///|
pub extern "js" fn WebGLRenderingContext::delete_shader(
  self : WebGLRenderingContext,
  shader : WebGLShader?,
) -> Unit =
  #| (self, shader) => self.deleteShader((shader.$tag === 1 ? shader._0 : null))

///|
pub extern "js" fn WebGLRenderingContext::delete_texture(
  self : WebGLRenderingContext,
  texture : WebGLTexture?,
) -> Unit =
  #| (self, texture) => self.deleteTexture((texture.$tag === 1 ? texture._0 : null))

///|
pub extern "js" fn WebGLRenderingContext::depth_func(
  self : WebGLRenderingContext,
  func : GLenum,
) -> Unit =
  #| (self, func) => self.depthFunc(func)

///|
pub extern "js" fn WebGLRenderingContext::depth_mask(
  self : WebGLRenderingContext,
  flag : GLboolean,
) -> Unit =
  #| (self, flag) => self.depthMask(flag)

///|
pub extern "js" fn WebGLRenderingContext::depth_range(
  self : WebGLRenderingContext,
  z_near : GLclampf,
  z_far : GLclampf,
) -> Unit =
  #| (self, z_near, z_far) => self.depthRange(z_near, z_far)

///|
pub extern "js" fn WebGLRenderingContext::detach_shader(
  self : WebGLRenderingContext,
  program : WebGLProgram,
  shader : WebGLShader,
) -> Unit =
  #| (self, program, shader) => self.detachShader(program, shader)

///|
pub extern "js" fn WebGLRenderingContext::disable(
  self : WebGLRenderingContext,
  cap : GLenum,
) -> Unit =
  #| (self, cap) => self.disable(cap)

///|
pub extern "js" fn WebGLRenderingContext::disable_vertex_attrib_array(
  self : WebGLRenderingContext,
  index : GLuint,
) -> Unit =
  #| (self, index) => self.disableVertexAttribArray(index)

///|
pub extern "js" fn WebGLRenderingContext::draw_arrays(
  self : WebGLRenderingContext,
  mode : GLenum,
  first : GLint,
  count : GLsizei,
) -> Unit =
  #| (self, mode, first, count) => self.drawArrays(mode, first, count)

///|
pub extern "js" fn WebGLRenderingContext::draw_elements(
  self : WebGLRenderingContext,
  mode : GLenum,
  count : GLsizei,
  type_ : GLenum,
  offset : GLintptr,
) -> Unit =
  #| (self, mode, count, type_, offset) => self.drawElements(mode, count, type_, offset)

///|
pub extern "js" fn WebGLRenderingContext::enable(
  self : WebGLRenderingContext,
  cap : GLenum,
) -> Unit =
  #| (self, cap) => self.enable(cap)

///|
pub extern "js" fn WebGLRenderingContext::enable_vertex_attrib_array(
  self : WebGLRenderingContext,
  index : GLuint,
) -> Unit =
  #| (self, index) => self.enableVertexAttribArray(index)

///|
pub extern "js" fn WebGLRenderingContext::finish(
  self : WebGLRenderingContext,
) -> Unit =
  #| (self) => self.finish()

///|
pub extern "js" fn WebGLRenderingContext::flush(
  self : WebGLRenderingContext,
) -> Unit =
  #| (self) => self.flush()

///|
pub extern "js" fn WebGLRenderingContext::framebuffer_renderbuffer(
  self : WebGLRenderingContext,
  target : GLenum,
  attachment : GLenum,
  renderbuffertarget : GLenum,
  renderbuffer : WebGLRenderbuffer?,
) -> Unit =
  #| (self, target, attachment, renderbuffertarget, renderbuffer) => self.framebufferRenderbuffer(target, attachment, renderbuffertarget, (renderbuffer.$tag === 1 ? renderbuffer._0 : null))

///|
pub extern "js" fn WebGLRenderingContext::framebuffer_texture2_d(
  self : WebGLRenderingContext,
  target : GLenum,
  attachment : GLenum,
  textarget : GLenum,
  texture : WebGLTexture?,
  level : GLint,
) -> Unit =
  #| (self, target, attachment, textarget, texture, level) => self.framebufferTexture2D(target, attachment, textarget, (texture.$tag === 1 ? texture._0 : null), level)

///|
pub extern "js" fn WebGLRenderingContext::front_face(
  self : WebGLRenderingContext,
  mode : GLenum,
) -> Unit =
  #| (self, mode) => self.frontFace(mode)

///|
pub extern "js" fn WebGLRenderingContext::generate_mipmap(
  self : WebGLRenderingContext,
  target : GLenum,
) -> Unit =
  #| (self, target) => self.generateMipmap(target)

///|
pub extern "js" fn WebGLRenderingContext::get_active_attrib(
  self : WebGLRenderingContext,
  program : WebGLProgram,
  index : GLuint,
) -> WebGLActiveInfo? =
  #| (self, program, index) => (() => { const v = self.getActiveAttrib(program, index); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn WebGLRenderingContext::get_active_uniform(
  self : WebGLRenderingContext,
  program : WebGLProgram,
  index : GLuint,
) -> WebGLActiveInfo? =
  #| (self, program, index) => (() => { const v = self.getActiveUniform(program, index); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn WebGLRenderingContext::get_attached_shaders(
  self : WebGLRenderingContext,
  program : WebGLProgram,
) -> Array[WebGLShader] =
  #| (self, program) => self.getAttachedShaders(program)

///|
pub extern "js" fn WebGLRenderingContext::get_attrib_location(
  self : WebGLRenderingContext,
  program : WebGLProgram,
  name : String,
) -> GLint =
  #| (self, program, name) => self.getAttribLocation(program, name)

///|
pub extern "js" fn WebGLRenderingContext::get_buffer_parameter(
  self : WebGLRenderingContext,
  target : GLenum,
  pname : GLenum,
) -> JsValue =
  #| (self, target, pname) => self.getBufferParameter(target, pname)

///|
pub extern "js" fn WebGLRenderingContext::get_parameter(
  self : WebGLRenderingContext,
  pname : GLenum,
) -> JsValue =
  #| (self, pname) => self.getParameter(pname)

///|
pub extern "js" fn WebGLRenderingContext::get_error(
  self : WebGLRenderingContext,
) -> GLenum =
  #| (self) => self.getError()

///|
pub extern "js" fn WebGLRenderingContext::get_framebuffer_attachment_parameter(
  self : WebGLRenderingContext,
  target : GLenum,
  attachment : GLenum,
  pname : GLenum,
) -> JsValue =
  #| (self, target, attachment, pname) => self.getFramebufferAttachmentParameter(target, attachment, pname)

///|
pub extern "js" fn WebGLRenderingContext::get_program_parameter(
  self : WebGLRenderingContext,
  program : WebGLProgram,
  pname : GLenum,
) -> JsValue =
  #| (self, program, pname) => self.getProgramParameter(program, pname)

///|
pub extern "js" fn WebGLRenderingContext::get_program_info_log(
  self : WebGLRenderingContext,
  program : WebGLProgram,
) -> String? =
  #| (self, program) => (self.getProgramInfoLog(program)) ?? undefined

///|
pub extern "js" fn WebGLRenderingContext::get_renderbuffer_parameter(
  self : WebGLRenderingContext,
  target : GLenum,
  pname : GLenum,
) -> JsValue =
  #| (self, target, pname) => self.getRenderbufferParameter(target, pname)

///|
pub extern "js" fn WebGLRenderingContext::get_shader_parameter(
  self : WebGLRenderingContext,
  shader : WebGLShader,
  pname : GLenum,
) -> JsValue =
  #| (self, shader, pname) => self.getShaderParameter(shader, pname)

///|
pub extern "js" fn WebGLRenderingContext::get_shader_precision_format(
  self : WebGLRenderingContext,
  shadertype : GLenum,
  precisiontype : GLenum,
) -> WebGLShaderPrecisionFormat? =
  #| (self, shadertype, precisiontype) => (() => { const v = self.getShaderPrecisionFormat(shadertype, precisiontype); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn WebGLRenderingContext::get_shader_info_log(
  self : WebGLRenderingContext,
  shader : WebGLShader,
) -> String? =
  #| (self, shader) => (self.getShaderInfoLog(shader)) ?? undefined

///|
pub extern "js" fn WebGLRenderingContext::get_shader_source(
  self : WebGLRenderingContext,
  shader : WebGLShader,
) -> String? =
  #| (self, shader) => (self.getShaderSource(shader)) ?? undefined

///|
pub extern "js" fn WebGLRenderingContext::get_tex_parameter(
  self : WebGLRenderingContext,
  target : GLenum,
  pname : GLenum,
) -> JsValue =
  #| (self, target, pname) => self.getTexParameter(target, pname)

///|
pub extern "js" fn WebGLRenderingContext::get_uniform(
  self : WebGLRenderingContext,
  program : WebGLProgram,
  location : WebGLUniformLocation,
) -> JsValue =
  #| (self, program, location) => self.getUniform(program, location)

///|
pub extern "js" fn WebGLRenderingContext::get_uniform_location(
  self : WebGLRenderingContext,
  program : WebGLProgram,
  name : String,
) -> WebGLUniformLocation? =
  #| (self, program, name) => (() => { const v = self.getUniformLocation(program, name); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn WebGLRenderingContext::get_vertex_attrib(
  self : WebGLRenderingContext,
  index : GLuint,
  pname : GLenum,
) -> JsValue =
  #| (self, index, pname) => self.getVertexAttrib(index, pname)

///|
pub extern "js" fn WebGLRenderingContext::get_vertex_attrib_offset(
  self : WebGLRenderingContext,
  index : GLuint,
  pname : GLenum,
) -> GLintptr =
  #| (self, index, pname) => self.getVertexAttribOffset(index, pname)

///|
pub extern "js" fn WebGLRenderingContext::hint(
  self : WebGLRenderingContext,
  target : GLenum,
  mode : GLenum,
) -> Unit =
  #| (self, target, mode) => self.hint(target, mode)

///|
pub extern "js" fn WebGLRenderingContext::is_buffer(
  self : WebGLRenderingContext,
  buffer : WebGLBuffer?,
) -> GLboolean =
  #| (self, buffer) => self.isBuffer((buffer.$tag === 1 ? buffer._0 : null))

///|
pub extern "js" fn WebGLRenderingContext::is_enabled(
  self : WebGLRenderingContext,
  cap : GLenum,
) -> GLboolean =
  #| (self, cap) => self.isEnabled(cap)

///|
pub extern "js" fn WebGLRenderingContext::is_framebuffer(
  self : WebGLRenderingContext,
  framebuffer : WebGLFramebuffer?,
) -> GLboolean =
  #| (self, framebuffer) => self.isFramebuffer((framebuffer.$tag === 1 ? framebuffer._0 : null))

///|
pub extern "js" fn WebGLRenderingContext::is_program(
  self : WebGLRenderingContext,
  program : WebGLProgram?,
) -> GLboolean =
  #| (self, program) => self.isProgram((program.$tag === 1 ? program._0 : null))

///|
pub extern "js" fn WebGLRenderingContext::is_renderbuffer(
  self : WebGLRenderingContext,
  renderbuffer : WebGLRenderbuffer?,
) -> GLboolean =
  #| (self, renderbuffer) => self.isRenderbuffer((renderbuffer.$tag === 1 ? renderbuffer._0 : null))

///|
pub extern "js" fn WebGLRenderingContext::is_shader(
  self : WebGLRenderingContext,
  shader : WebGLShader?,
) -> GLboolean =
  #| (self, shader) => self.isShader((shader.$tag === 1 ? shader._0 : null))

///|
pub extern "js" fn WebGLRenderingContext::is_texture(
  self : WebGLRenderingContext,
  texture : WebGLTexture?,
) -> GLboolean =
  #| (self, texture) => self.isTexture((texture.$tag === 1 ? texture._0 : null))

///|
pub extern "js" fn WebGLRenderingContext::line_width(
  self : WebGLRenderingContext,
  width : GLfloat,
) -> Unit =
  #| (self, width) => self.lineWidth(width)

///|
pub extern "js" fn WebGLRenderingContext::link_program(
  self : WebGLRenderingContext,
  program : WebGLProgram,
) -> Unit =
  #| (self, program) => self.linkProgram(program)

///|
pub extern "js" fn WebGLRenderingContext::pixel_storei(
  self : WebGLRenderingContext,
  pname : GLenum,
  param : GLint,
) -> Unit =
  #| (self, pname, param) => self.pixelStorei(pname, param)

///|
pub extern "js" fn WebGLRenderingContext::polygon_offset(
  self : WebGLRenderingContext,
  factor : GLfloat,
  units : GLfloat,
) -> Unit =
  #| (self, factor, units) => self.polygonOffset(factor, units)

///|
pub extern "js" fn WebGLRenderingContext::renderbuffer_storage(
  self : WebGLRenderingContext,
  target : GLenum,
  internalformat : GLenum,
  width : GLsizei,
  height : GLsizei,
) -> Unit =
  #| (self, target, internalformat, width, height) => self.renderbufferStorage(target, internalformat, width, height)

///|
pub extern "js" fn WebGLRenderingContext::sample_coverage(
  self : WebGLRenderingContext,
  value : GLclampf,
  invert : GLboolean,
) -> Unit =
  #| (self, value, invert) => self.sampleCoverage(value, invert)

///|
pub extern "js" fn WebGLRenderingContext::scissor(
  self : WebGLRenderingContext,
  x : GLint,
  y : GLint,
  width : GLsizei,
  height : GLsizei,
) -> Unit =
  #| (self, x, y, width, height) => self.scissor(x, y, width, height)

///|
pub extern "js" fn WebGLRenderingContext::shader_source(
  self : WebGLRenderingContext,
  shader : WebGLShader,
  source : String,
) -> Unit =
  #| (self, shader, source) => self.shaderSource(shader, source)

///|
pub extern "js" fn WebGLRenderingContext::stencil_func(
  self : WebGLRenderingContext,
  func : GLenum,
  ref_ : GLint,
  mask : GLuint,
) -> Unit =
  #| (self, func, ref_, mask) => self.stencilFunc(func, ref_, mask)

///|
pub extern "js" fn WebGLRenderingContext::stencil_func_separate(
  self : WebGLRenderingContext,
  face : GLenum,
  func : GLenum,
  ref_ : GLint,
  mask : GLuint,
) -> Unit =
  #| (self, face, func, ref_, mask) => self.stencilFuncSeparate(face, func, ref_, mask)

///|
pub extern "js" fn WebGLRenderingContext::stencil_mask(
  self : WebGLRenderingContext,
  mask : GLuint,
) -> Unit =
  #| (self, mask) => self.stencilMask(mask)

///|
pub extern "js" fn WebGLRenderingContext::stencil_mask_separate(
  self : WebGLRenderingContext,
  face : GLenum,
  mask : GLuint,
) -> Unit =
  #| (self, face, mask) => self.stencilMaskSeparate(face, mask)

///|
pub extern "js" fn WebGLRenderingContext::stencil_op(
  self : WebGLRenderingContext,
  fail : GLenum,
  zfail : GLenum,
  zpass : GLenum,
) -> Unit =
  #| (self, fail, zfail, zpass) => self.stencilOp(fail, zfail, zpass)

///|
pub extern "js" fn WebGLRenderingContext::stencil_op_separate(
  self : WebGLRenderingContext,
  face : GLenum,
  fail : GLenum,
  zfail : GLenum,
  zpass : GLenum,
) -> Unit =
  #| (self, face, fail, zfail, zpass) => self.stencilOpSeparate(face, fail, zfail, zpass)

///|
pub extern "js" fn WebGLRenderingContext::tex_parameterf(
  self : WebGLRenderingContext,
  target : GLenum,
  pname : GLenum,
  param : GLfloat,
) -> Unit =
  #| (self, target, pname, param) => self.texParameterf(target, pname, param)

///|
pub extern "js" fn WebGLRenderingContext::tex_parameteri(
  self : WebGLRenderingContext,
  target : GLenum,
  pname : GLenum,
  param : GLint,
) -> Unit =
  #| (self, target, pname, param) => self.texParameteri(target, pname, param)

///|
pub extern "js" fn WebGLRenderingContext::uniform1f(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  x : GLfloat,
) -> Unit =
  #| (self, location, x) => self.uniform1f((location.$tag === 1 ? location._0 : null), x)

///|
pub extern "js" fn WebGLRenderingContext::uniform2f(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  x : GLfloat,
  y : GLfloat,
) -> Unit =
  #| (self, location, x, y) => self.uniform2f((location.$tag === 1 ? location._0 : null), x, y)

///|
pub extern "js" fn WebGLRenderingContext::uniform3f(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  x : GLfloat,
  y : GLfloat,
  z : GLfloat,
) -> Unit =
  #| (self, location, x, y, z) => self.uniform3f((location.$tag === 1 ? location._0 : null), x, y, z)

///|
pub extern "js" fn WebGLRenderingContext::uniform4f(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  x : GLfloat,
  y : GLfloat,
  z : GLfloat,
  w : GLfloat,
) -> Unit =
  #| (self, location, x, y, z, w) => self.uniform4f((location.$tag === 1 ? location._0 : null), x, y, z, w)

///|
pub extern "js" fn WebGLRenderingContext::uniform1i(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  x : GLint,
) -> Unit =
  #| (self, location, x) => self.uniform1i((location.$tag === 1 ? location._0 : null), x)

///|
pub extern "js" fn WebGLRenderingContext::uniform2i(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  x : GLint,
  y : GLint,
) -> Unit =
  #| (self, location, x, y) => self.uniform2i((location.$tag === 1 ? location._0 : null), x, y)

///|
pub extern "js" fn WebGLRenderingContext::uniform3i(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  x : GLint,
  y : GLint,
  z : GLint,
) -> Unit =
  #| (self, location, x, y, z) => self.uniform3i((location.$tag === 1 ? location._0 : null), x, y, z)

///|
pub extern "js" fn WebGLRenderingContext::uniform4i(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  x : GLint,
  y : GLint,
  z : GLint,
  w : GLint,
) -> Unit =
  #| (self, location, x, y, z, w) => self.uniform4i((location.$tag === 1 ? location._0 : null), x, y, z, w)

///|
pub extern "js" fn WebGLRenderingContext::use_program(
  self : WebGLRenderingContext,
  program : WebGLProgram?,
) -> Unit =
  #| (self, program) => self.useProgram((program.$tag === 1 ? program._0 : null))

///|
pub extern "js" fn WebGLRenderingContext::validate_program(
  self : WebGLRenderingContext,
  program : WebGLProgram,
) -> Unit =
  #| (self, program) => self.validateProgram(program)

///|
pub extern "js" fn WebGLRenderingContext::vertex_attrib1f(
  self : WebGLRenderingContext,
  index : GLuint,
  x : GLfloat,
) -> Unit =
  #| (self, index, x) => self.vertexAttrib1f(index, x)

///|
pub extern "js" fn WebGLRenderingContext::vertex_attrib2f(
  self : WebGLRenderingContext,
  index : GLuint,
  x : GLfloat,
  y : GLfloat,
) -> Unit =
  #| (self, index, x, y) => self.vertexAttrib2f(index, x, y)

///|
pub extern "js" fn WebGLRenderingContext::vertex_attrib3f(
  self : WebGLRenderingContext,
  index : GLuint,
  x : GLfloat,
  y : GLfloat,
  z : GLfloat,
) -> Unit =
  #| (self, index, x, y, z) => self.vertexAttrib3f(index, x, y, z)

///|
pub extern "js" fn WebGLRenderingContext::vertex_attrib4f(
  self : WebGLRenderingContext,
  index : GLuint,
  x : GLfloat,
  y : GLfloat,
  z : GLfloat,
  w : GLfloat,
) -> Unit =
  #| (self, index, x, y, z, w) => self.vertexAttrib4f(index, x, y, z, w)

///|
pub extern "js" fn WebGLRenderingContext::vertex_attrib1fv(
  self : WebGLRenderingContext,
  index : GLuint,
  values : Float32List,
) -> Unit =
  #| (self, index, values) => self.vertexAttrib1fv(index, values)

///|
pub extern "js" fn WebGLRenderingContext::vertex_attrib2fv(
  self : WebGLRenderingContext,
  index : GLuint,
  values : Float32List,
) -> Unit =
  #| (self, index, values) => self.vertexAttrib2fv(index, values)

///|
pub extern "js" fn WebGLRenderingContext::vertex_attrib3fv(
  self : WebGLRenderingContext,
  index : GLuint,
  values : Float32List,
) -> Unit =
  #| (self, index, values) => self.vertexAttrib3fv(index, values)

///|
pub extern "js" fn WebGLRenderingContext::vertex_attrib4fv(
  self : WebGLRenderingContext,
  index : GLuint,
  values : Float32List,
) -> Unit =
  #| (self, index, values) => self.vertexAttrib4fv(index, values)

///|
pub extern "js" fn WebGLRenderingContext::vertex_attrib_pointer(
  self : WebGLRenderingContext,
  index : GLuint,
  size : GLint,
  type_ : GLenum,
  normalized : GLboolean,
  stride : GLsizei,
  offset : GLintptr,
) -> Unit =
  #| (self, index, size, type_, normalized, stride, offset) => self.vertexAttribPointer(index, size, type_, normalized, stride, offset)

///|
pub extern "js" fn WebGLRenderingContext::viewport(
  self : WebGLRenderingContext,
  x : GLint,
  y : GLint,
  width : GLsizei,
  height : GLsizei,
) -> Unit =
  #| (self, x, y, width, height) => self.viewport(x, y, width, height)

///|
pub extern "js" fn WebGLRenderingContext::make_xr_compatible(
  self : WebGLRenderingContext,
) -> Promise[Unit] =
  #| (self) => self.makeXRCompatible()

///|
pub extern "js" fn WebGLRenderingContext::buffer_data(
  self : WebGLRenderingContext,
  target : GLenum,
  size : GLsizeiptr,
  usage : GLenum,
) -> Unit =
  #| (self, target, size, usage) => self.bufferData(target, size, usage)

///|
pub extern "js" fn WebGLRenderingContext::buffer_data_with_target_g_lenum_and_data_and_usage_g_lenum(
  self : WebGLRenderingContext,
  target : GLenum,
  data : AllowSharedBufferSource?,
  usage : GLenum,
) -> Unit =
  #| (self, target, data, usage) => self.bufferData(target, (data.$tag === 1 ? data._0 : null), usage)

///|
pub extern "js" fn WebGLRenderingContext::buffer_sub_data(
  self : WebGLRenderingContext,
  target : GLenum,
  offset : GLintptr,
  data : AllowSharedBufferSource,
) -> Unit =
  #| (self, target, offset, data) => self.bufferSubData(target, offset, data)

///|
pub extern "js" fn WebGLRenderingContext::compressed_tex_image2_d(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLenum,
  width : GLsizei,
  height : GLsizei,
  border : GLint,
  data : ArrayBufferView,
) -> Unit =
  #| (self, target, level, internalformat, width, height, border, data) => self.compressedTexImage2D(target, level, internalformat, width, height, border, data)

///|
pub extern "js" fn WebGLRenderingContext::compressed_tex_sub_image2_d(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  width : GLsizei,
  height : GLsizei,
  format : GLenum,
  data : ArrayBufferView,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, width, height, format, data) => self.compressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, data)

///|
pub extern "js" fn WebGLRenderingContext::read_pixels(
  self : WebGLRenderingContext,
  x : GLint,
  y : GLint,
  width : GLsizei,
  height : GLsizei,
  format : GLenum,
  type_ : GLenum,
  pixels : ArrayBufferView?,
) -> Unit =
  #| (self, x, y, width, height, format, type_, pixels) => self.readPixels(x, y, width, height, format, type_, (pixels.$tag === 1 ? pixels._0 : null))

///|
pub extern "js" fn WebGLRenderingContext::tex_image2_d(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLint,
  format : GLenum,
  type_ : GLenum,
  source : TexImageSource,
) -> Unit =
  #| (self, target, level, internalformat, format, type_, source) => self.texImage2D(target, level, internalformat, format, type_, source)

///|
pub extern "js" fn WebGLRenderingContext::tex_image2_d_with_target_g_lenum_and_level_g_lint_and_internalformat_g_lint_and_width_g_lsizei_and_height_g_lsizei_and_border_g_lint_and_format_g_lenum_and_type_g_lenum_and_pixels(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLint,
  width : GLsizei,
  height : GLsizei,
  border : GLint,
  format : GLenum,
  type_ : GLenum,
  pixels : ArrayBufferView?,
) -> Unit =
  #| (self, target, level, internalformat, width, height, border, format, type_, pixels) => self.texImage2D(target, level, internalformat, width, height, border, format, type_, (pixels.$tag === 1 ? pixels._0 : null))

///|
pub extern "js" fn WebGLRenderingContext::tex_sub_image2_d(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  format : GLenum,
  type_ : GLenum,
  source : TexImageSource,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, format, type_, source) => self.texSubImage2D(target, level, xoffset, yoffset, format, type_, source)

///|
pub extern "js" fn WebGLRenderingContext::tex_sub_image2_d_with_target_g_lenum_and_level_g_lint_and_xoffset_g_lint_and_yoffset_g_lint_and_width_g_lsizei_and_height_g_lsizei_and_format_g_lenum_and_type_g_lenum_and_pixels(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  width : GLsizei,
  height : GLsizei,
  format : GLenum,
  type_ : GLenum,
  pixels : ArrayBufferView?,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, width, height, format, type_, pixels) => self.texSubImage2D(target, level, xoffset, yoffset, width, height, format, type_, (pixels.$tag === 1 ? pixels._0 : null))

///|
pub extern "js" fn WebGLRenderingContext::uniform1fv(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  v : Float32List,
) -> Unit =
  #| (self, location, v) => self.uniform1fv((location.$tag === 1 ? location._0 : null), v)

///|
pub extern "js" fn WebGLRenderingContext::uniform2fv(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  v : Float32List,
) -> Unit =
  #| (self, location, v) => self.uniform2fv((location.$tag === 1 ? location._0 : null), v)

///|
pub extern "js" fn WebGLRenderingContext::uniform3fv(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  v : Float32List,
) -> Unit =
  #| (self, location, v) => self.uniform3fv((location.$tag === 1 ? location._0 : null), v)

///|
pub extern "js" fn WebGLRenderingContext::uniform4fv(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  v : Float32List,
) -> Unit =
  #| (self, location, v) => self.uniform4fv((location.$tag === 1 ? location._0 : null), v)

///|
pub extern "js" fn WebGLRenderingContext::uniform1iv(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  v : Int32List,
) -> Unit =
  #| (self, location, v) => self.uniform1iv((location.$tag === 1 ? location._0 : null), v)

///|
pub extern "js" fn WebGLRenderingContext::uniform2iv(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  v : Int32List,
) -> Unit =
  #| (self, location, v) => self.uniform2iv((location.$tag === 1 ? location._0 : null), v)

///|
pub extern "js" fn WebGLRenderingContext::uniform3iv(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  v : Int32List,
) -> Unit =
  #| (self, location, v) => self.uniform3iv((location.$tag === 1 ? location._0 : null), v)

///|
pub extern "js" fn WebGLRenderingContext::uniform4iv(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  v : Int32List,
) -> Unit =
  #| (self, location, v) => self.uniform4iv((location.$tag === 1 ? location._0 : null), v)

///|
pub extern "js" fn WebGLRenderingContext::uniform_matrix2fv(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  transpose : GLboolean,
  value : Float32List,
) -> Unit =
  #| (self, location, transpose, value) => self.uniformMatrix2fv((location.$tag === 1 ? location._0 : null), transpose, value)

///|
pub extern "js" fn WebGLRenderingContext::uniform_matrix3fv(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  transpose : GLboolean,
  value : Float32List,
) -> Unit =
  #| (self, location, transpose, value) => self.uniformMatrix3fv((location.$tag === 1 ? location._0 : null), transpose, value)

///|
pub extern "js" fn WebGLRenderingContext::uniform_matrix4fv(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  transpose : GLboolean,
  value : Float32List,
) -> Unit =
  #| (self, location, transpose, value) => self.uniformMatrix4fv((location.$tag === 1 ? location._0 : null), transpose, value)

///|
pub extern "js" fn WebGLRenderingContext::vertex_attrib1fv_with_float32_array(
  self : WebGLRenderingContext,
  index : GLuint,
  values : Float32Array,
) -> Unit =
  #| (self, index, values) => self.vertexAttrib1fv(index, values)

///|
pub extern "js" fn WebGLRenderingContext::vertex_attrib1fv_with_array_of_g_lfloat(
  self : WebGLRenderingContext,
  index : GLuint,
  values : Array[GLfloat],
) -> Unit =
  #| (self, index, values) => self.vertexAttrib1fv(index, values)

///|
pub extern "js" fn WebGLRenderingContext::vertex_attrib2fv_with_float32_array(
  self : WebGLRenderingContext,
  index : GLuint,
  values : Float32Array,
) -> Unit =
  #| (self, index, values) => self.vertexAttrib2fv(index, values)

///|
pub extern "js" fn WebGLRenderingContext::vertex_attrib2fv_with_array_of_g_lfloat(
  self : WebGLRenderingContext,
  index : GLuint,
  values : Array[GLfloat],
) -> Unit =
  #| (self, index, values) => self.vertexAttrib2fv(index, values)

///|
pub extern "js" fn WebGLRenderingContext::vertex_attrib3fv_with_float32_array(
  self : WebGLRenderingContext,
  index : GLuint,
  values : Float32Array,
) -> Unit =
  #| (self, index, values) => self.vertexAttrib3fv(index, values)

///|
pub extern "js" fn WebGLRenderingContext::vertex_attrib3fv_with_array_of_g_lfloat(
  self : WebGLRenderingContext,
  index : GLuint,
  values : Array[GLfloat],
) -> Unit =
  #| (self, index, values) => self.vertexAttrib3fv(index, values)

///|
pub extern "js" fn WebGLRenderingContext::vertex_attrib4fv_with_float32_array(
  self : WebGLRenderingContext,
  index : GLuint,
  values : Float32Array,
) -> Unit =
  #| (self, index, values) => self.vertexAttrib4fv(index, values)

///|
pub extern "js" fn WebGLRenderingContext::vertex_attrib4fv_with_array_of_g_lfloat(
  self : WebGLRenderingContext,
  index : GLuint,
  values : Array[GLfloat],
) -> Unit =
  #| (self, index, values) => self.vertexAttrib4fv(index, values)

///|
pub extern "js" fn WebGLRenderingContext::buffer_sub_data_with_array_buffer(
  self : WebGLRenderingContext,
  target : GLenum,
  offset : GLintptr,
  data : ArrayBuffer,
) -> Unit =
  #| (self, target, offset, data) => self.bufferSubData(target, offset, data)

///|
pub extern "js" fn WebGLRenderingContext::buffer_sub_data_with_shared_array_buffer(
  self : WebGLRenderingContext,
  target : GLenum,
  offset : GLintptr,
  data : SharedArrayBuffer,
) -> Unit =
  #| (self, target, offset, data) => self.bufferSubData(target, offset, data)

///|
pub extern "js" fn WebGLRenderingContext::buffer_sub_data_with_array_buffer_view(
  self : WebGLRenderingContext,
  target : GLenum,
  offset : GLintptr,
  data : ArrayBufferView,
) -> Unit =
  #| (self, target, offset, data) => self.bufferSubData(target, offset, data)

///|
pub extern "js" fn WebGLRenderingContext::compressed_tex_image2_d_with_int8_array(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLenum,
  width : GLsizei,
  height : GLsizei,
  border : GLint,
  data : Int8Array,
) -> Unit =
  #| (self, target, level, internalformat, width, height, border, data) => self.compressedTexImage2D(target, level, internalformat, width, height, border, data)

///|
pub extern "js" fn WebGLRenderingContext::compressed_tex_image2_d_with_int16_array(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLenum,
  width : GLsizei,
  height : GLsizei,
  border : GLint,
  data : Int16Array,
) -> Unit =
  #| (self, target, level, internalformat, width, height, border, data) => self.compressedTexImage2D(target, level, internalformat, width, height, border, data)

///|
pub extern "js" fn WebGLRenderingContext::compressed_tex_image2_d_with_int32_array(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLenum,
  width : GLsizei,
  height : GLsizei,
  border : GLint,
  data : Int32Array,
) -> Unit =
  #| (self, target, level, internalformat, width, height, border, data) => self.compressedTexImage2D(target, level, internalformat, width, height, border, data)

///|
pub extern "js" fn WebGLRenderingContext::compressed_tex_image2_d_with_uint8_array(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLenum,
  width : GLsizei,
  height : GLsizei,
  border : GLint,
  data : Uint8Array,
) -> Unit =
  #| (self, target, level, internalformat, width, height, border, data) => self.compressedTexImage2D(target, level, internalformat, width, height, border, data)

///|
pub extern "js" fn WebGLRenderingContext::compressed_tex_image2_d_with_uint16_array(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLenum,
  width : GLsizei,
  height : GLsizei,
  border : GLint,
  data : Uint16Array,
) -> Unit =
  #| (self, target, level, internalformat, width, height, border, data) => self.compressedTexImage2D(target, level, internalformat, width, height, border, data)

///|
pub extern "js" fn WebGLRenderingContext::compressed_tex_image2_d_with_uint32_array(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLenum,
  width : GLsizei,
  height : GLsizei,
  border : GLint,
  data : Uint32Array,
) -> Unit =
  #| (self, target, level, internalformat, width, height, border, data) => self.compressedTexImage2D(target, level, internalformat, width, height, border, data)

///|
pub extern "js" fn WebGLRenderingContext::compressed_tex_image2_d_with_uint8_clamped_array(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLenum,
  width : GLsizei,
  height : GLsizei,
  border : GLint,
  data : Uint8ClampedArray,
) -> Unit =
  #| (self, target, level, internalformat, width, height, border, data) => self.compressedTexImage2D(target, level, internalformat, width, height, border, data)

///|
pub extern "js" fn WebGLRenderingContext::compressed_tex_image2_d_with_big_int64_array(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLenum,
  width : GLsizei,
  height : GLsizei,
  border : GLint,
  data : BigInt64Array,
) -> Unit =
  #| (self, target, level, internalformat, width, height, border, data) => self.compressedTexImage2D(target, level, internalformat, width, height, border, data)

///|
pub extern "js" fn WebGLRenderingContext::compressed_tex_image2_d_with_big_uint64_array(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLenum,
  width : GLsizei,
  height : GLsizei,
  border : GLint,
  data : BigUint64Array,
) -> Unit =
  #| (self, target, level, internalformat, width, height, border, data) => self.compressedTexImage2D(target, level, internalformat, width, height, border, data)

///|
pub extern "js" fn WebGLRenderingContext::compressed_tex_image2_d_with_float16_array(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLenum,
  width : GLsizei,
  height : GLsizei,
  border : GLint,
  data : Float16Array,
) -> Unit =
  #| (self, target, level, internalformat, width, height, border, data) => self.compressedTexImage2D(target, level, internalformat, width, height, border, data)

///|
pub extern "js" fn WebGLRenderingContext::compressed_tex_image2_d_with_float32_array(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLenum,
  width : GLsizei,
  height : GLsizei,
  border : GLint,
  data : Float32Array,
) -> Unit =
  #| (self, target, level, internalformat, width, height, border, data) => self.compressedTexImage2D(target, level, internalformat, width, height, border, data)

///|
pub extern "js" fn WebGLRenderingContext::compressed_tex_image2_d_with_float64_array(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLenum,
  width : GLsizei,
  height : GLsizei,
  border : GLint,
  data : Float64Array,
) -> Unit =
  #| (self, target, level, internalformat, width, height, border, data) => self.compressedTexImage2D(target, level, internalformat, width, height, border, data)

///|
pub extern "js" fn WebGLRenderingContext::compressed_tex_image2_d_with_data_view(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLenum,
  width : GLsizei,
  height : GLsizei,
  border : GLint,
  data : DataView,
) -> Unit =
  #| (self, target, level, internalformat, width, height, border, data) => self.compressedTexImage2D(target, level, internalformat, width, height, border, data)

///|
pub extern "js" fn WebGLRenderingContext::compressed_tex_sub_image2_d_with_int8_array(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  width : GLsizei,
  height : GLsizei,
  format : GLenum,
  data : Int8Array,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, width, height, format, data) => self.compressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, data)

///|
pub extern "js" fn WebGLRenderingContext::compressed_tex_sub_image2_d_with_int16_array(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  width : GLsizei,
  height : GLsizei,
  format : GLenum,
  data : Int16Array,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, width, height, format, data) => self.compressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, data)

///|
pub extern "js" fn WebGLRenderingContext::compressed_tex_sub_image2_d_with_int32_array(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  width : GLsizei,
  height : GLsizei,
  format : GLenum,
  data : Int32Array,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, width, height, format, data) => self.compressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, data)

///|
pub extern "js" fn WebGLRenderingContext::compressed_tex_sub_image2_d_with_uint8_array(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  width : GLsizei,
  height : GLsizei,
  format : GLenum,
  data : Uint8Array,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, width, height, format, data) => self.compressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, data)

///|
pub extern "js" fn WebGLRenderingContext::compressed_tex_sub_image2_d_with_uint16_array(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  width : GLsizei,
  height : GLsizei,
  format : GLenum,
  data : Uint16Array,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, width, height, format, data) => self.compressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, data)

///|
pub extern "js" fn WebGLRenderingContext::compressed_tex_sub_image2_d_with_uint32_array(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  width : GLsizei,
  height : GLsizei,
  format : GLenum,
  data : Uint32Array,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, width, height, format, data) => self.compressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, data)

///|
pub extern "js" fn WebGLRenderingContext::compressed_tex_sub_image2_d_with_uint8_clamped_array(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  width : GLsizei,
  height : GLsizei,
  format : GLenum,
  data : Uint8ClampedArray,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, width, height, format, data) => self.compressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, data)

///|
pub extern "js" fn WebGLRenderingContext::compressed_tex_sub_image2_d_with_big_int64_array(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  width : GLsizei,
  height : GLsizei,
  format : GLenum,
  data : BigInt64Array,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, width, height, format, data) => self.compressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, data)

///|
pub extern "js" fn WebGLRenderingContext::compressed_tex_sub_image2_d_with_big_uint64_array(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  width : GLsizei,
  height : GLsizei,
  format : GLenum,
  data : BigUint64Array,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, width, height, format, data) => self.compressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, data)

///|
pub extern "js" fn WebGLRenderingContext::compressed_tex_sub_image2_d_with_float16_array(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  width : GLsizei,
  height : GLsizei,
  format : GLenum,
  data : Float16Array,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, width, height, format, data) => self.compressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, data)

///|
pub extern "js" fn WebGLRenderingContext::compressed_tex_sub_image2_d_with_float32_array(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  width : GLsizei,
  height : GLsizei,
  format : GLenum,
  data : Float32Array,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, width, height, format, data) => self.compressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, data)

///|
pub extern "js" fn WebGLRenderingContext::compressed_tex_sub_image2_d_with_float64_array(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  width : GLsizei,
  height : GLsizei,
  format : GLenum,
  data : Float64Array,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, width, height, format, data) => self.compressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, data)

///|
pub extern "js" fn WebGLRenderingContext::compressed_tex_sub_image2_d_with_data_view(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  width : GLsizei,
  height : GLsizei,
  format : GLenum,
  data : DataView,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, width, height, format, data) => self.compressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, data)

///|
pub extern "js" fn WebGLRenderingContext::tex_image2_d_with_image_bitmap(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLint,
  format : GLenum,
  type_ : GLenum,
  source : ImageBitmap,
) -> Unit =
  #| (self, target, level, internalformat, format, type_, source) => self.texImage2D(target, level, internalformat, format, type_, source)

///|
pub extern "js" fn WebGLRenderingContext::tex_image2_d_with_image_data(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLint,
  format : GLenum,
  type_ : GLenum,
  source : ImageData,
) -> Unit =
  #| (self, target, level, internalformat, format, type_, source) => self.texImage2D(target, level, internalformat, format, type_, source)

///|
pub extern "js" fn WebGLRenderingContext::tex_image2_d_with_h_t_m_l_image_element(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLint,
  format : GLenum,
  type_ : GLenum,
  source : HTMLImageElement,
) -> Unit =
  #| (self, target, level, internalformat, format, type_, source) => self.texImage2D(target, level, internalformat, format, type_, source)

///|
pub extern "js" fn WebGLRenderingContext::tex_image2_d_with_h_t_m_l_canvas_element(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLint,
  format : GLenum,
  type_ : GLenum,
  source : HTMLCanvasElement,
) -> Unit =
  #| (self, target, level, internalformat, format, type_, source) => self.texImage2D(target, level, internalformat, format, type_, source)

///|
pub extern "js" fn WebGLRenderingContext::tex_image2_d_with_h_t_m_l_video_element(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLint,
  format : GLenum,
  type_ : GLenum,
  source : HTMLVideoElement,
) -> Unit =
  #| (self, target, level, internalformat, format, type_, source) => self.texImage2D(target, level, internalformat, format, type_, source)

///|
pub extern "js" fn WebGLRenderingContext::tex_image2_d_with_offscreen_canvas(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLint,
  format : GLenum,
  type_ : GLenum,
  source : OffscreenCanvas,
) -> Unit =
  #| (self, target, level, internalformat, format, type_, source) => self.texImage2D(target, level, internalformat, format, type_, source)

///|
pub extern "js" fn WebGLRenderingContext::tex_image2_d_with_video_frame(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLint,
  format : GLenum,
  type_ : GLenum,
  source : VideoFrame,
) -> Unit =
  #| (self, target, level, internalformat, format, type_, source) => self.texImage2D(target, level, internalformat, format, type_, source)

///|
pub extern "js" fn WebGLRenderingContext::tex_sub_image2_d_with_image_bitmap(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  format : GLenum,
  type_ : GLenum,
  source : ImageBitmap,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, format, type_, source) => self.texSubImage2D(target, level, xoffset, yoffset, format, type_, source)

///|
pub extern "js" fn WebGLRenderingContext::tex_sub_image2_d_with_image_data(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  format : GLenum,
  type_ : GLenum,
  source : ImageData,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, format, type_, source) => self.texSubImage2D(target, level, xoffset, yoffset, format, type_, source)

///|
pub extern "js" fn WebGLRenderingContext::tex_sub_image2_d_with_h_t_m_l_image_element(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  format : GLenum,
  type_ : GLenum,
  source : HTMLImageElement,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, format, type_, source) => self.texSubImage2D(target, level, xoffset, yoffset, format, type_, source)

///|
pub extern "js" fn WebGLRenderingContext::tex_sub_image2_d_with_h_t_m_l_canvas_element(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  format : GLenum,
  type_ : GLenum,
  source : HTMLCanvasElement,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, format, type_, source) => self.texSubImage2D(target, level, xoffset, yoffset, format, type_, source)

///|
pub extern "js" fn WebGLRenderingContext::tex_sub_image2_d_with_h_t_m_l_video_element(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  format : GLenum,
  type_ : GLenum,
  source : HTMLVideoElement,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, format, type_, source) => self.texSubImage2D(target, level, xoffset, yoffset, format, type_, source)

///|
pub extern "js" fn WebGLRenderingContext::tex_sub_image2_d_with_offscreen_canvas(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  format : GLenum,
  type_ : GLenum,
  source : OffscreenCanvas,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, format, type_, source) => self.texSubImage2D(target, level, xoffset, yoffset, format, type_, source)

///|
pub extern "js" fn WebGLRenderingContext::tex_sub_image2_d_with_video_frame(
  self : WebGLRenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  format : GLenum,
  type_ : GLenum,
  source : VideoFrame,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, format, type_, source) => self.texSubImage2D(target, level, xoffset, yoffset, format, type_, source)

///|
pub extern "js" fn WebGLRenderingContext::uniform1fv_with_float32_array(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  v : Float32Array,
) -> Unit =
  #| (self, location, v) => self.uniform1fv((location.$tag === 1 ? location._0 : null), v)

///|
pub extern "js" fn WebGLRenderingContext::uniform1fv_with_array_of_g_lfloat(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  v : Array[GLfloat],
) -> Unit =
  #| (self, location, v) => self.uniform1fv((location.$tag === 1 ? location._0 : null), v)

///|
pub extern "js" fn WebGLRenderingContext::uniform2fv_with_float32_array(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  v : Float32Array,
) -> Unit =
  #| (self, location, v) => self.uniform2fv((location.$tag === 1 ? location._0 : null), v)

///|
pub extern "js" fn WebGLRenderingContext::uniform2fv_with_array_of_g_lfloat(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  v : Array[GLfloat],
) -> Unit =
  #| (self, location, v) => self.uniform2fv((location.$tag === 1 ? location._0 : null), v)

///|
pub extern "js" fn WebGLRenderingContext::uniform3fv_with_float32_array(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  v : Float32Array,
) -> Unit =
  #| (self, location, v) => self.uniform3fv((location.$tag === 1 ? location._0 : null), v)

///|
pub extern "js" fn WebGLRenderingContext::uniform3fv_with_array_of_g_lfloat(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  v : Array[GLfloat],
) -> Unit =
  #| (self, location, v) => self.uniform3fv((location.$tag === 1 ? location._0 : null), v)

///|
pub extern "js" fn WebGLRenderingContext::uniform4fv_with_float32_array(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  v : Float32Array,
) -> Unit =
  #| (self, location, v) => self.uniform4fv((location.$tag === 1 ? location._0 : null), v)

///|
pub extern "js" fn WebGLRenderingContext::uniform4fv_with_array_of_g_lfloat(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  v : Array[GLfloat],
) -> Unit =
  #| (self, location, v) => self.uniform4fv((location.$tag === 1 ? location._0 : null), v)

///|
pub extern "js" fn WebGLRenderingContext::uniform1iv_with_int32_array(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  v : Int32Array,
) -> Unit =
  #| (self, location, v) => self.uniform1iv((location.$tag === 1 ? location._0 : null), v)

///|
pub extern "js" fn WebGLRenderingContext::uniform1iv_with_array_of_g_lint(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  v : Array[GLint],
) -> Unit =
  #| (self, location, v) => self.uniform1iv((location.$tag === 1 ? location._0 : null), v)

///|
pub extern "js" fn WebGLRenderingContext::uniform2iv_with_int32_array(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  v : Int32Array,
) -> Unit =
  #| (self, location, v) => self.uniform2iv((location.$tag === 1 ? location._0 : null), v)

///|
pub extern "js" fn WebGLRenderingContext::uniform2iv_with_array_of_g_lint(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  v : Array[GLint],
) -> Unit =
  #| (self, location, v) => self.uniform2iv((location.$tag === 1 ? location._0 : null), v)

///|
pub extern "js" fn WebGLRenderingContext::uniform3iv_with_int32_array(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  v : Int32Array,
) -> Unit =
  #| (self, location, v) => self.uniform3iv((location.$tag === 1 ? location._0 : null), v)

///|
pub extern "js" fn WebGLRenderingContext::uniform3iv_with_array_of_g_lint(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  v : Array[GLint],
) -> Unit =
  #| (self, location, v) => self.uniform3iv((location.$tag === 1 ? location._0 : null), v)

///|
pub extern "js" fn WebGLRenderingContext::uniform4iv_with_int32_array(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  v : Int32Array,
) -> Unit =
  #| (self, location, v) => self.uniform4iv((location.$tag === 1 ? location._0 : null), v)

///|
pub extern "js" fn WebGLRenderingContext::uniform4iv_with_array_of_g_lint(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  v : Array[GLint],
) -> Unit =
  #| (self, location, v) => self.uniform4iv((location.$tag === 1 ? location._0 : null), v)

///|
pub extern "js" fn WebGLRenderingContext::uniform_matrix2fv_with_float32_array(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  transpose : GLboolean,
  value : Float32Array,
) -> Unit =
  #| (self, location, transpose, value) => self.uniformMatrix2fv((location.$tag === 1 ? location._0 : null), transpose, value)

///|
pub extern "js" fn WebGLRenderingContext::uniform_matrix2fv_with_array_of_g_lfloat(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  transpose : GLboolean,
  value : Array[GLfloat],
) -> Unit =
  #| (self, location, transpose, value) => self.uniformMatrix2fv((location.$tag === 1 ? location._0 : null), transpose, value)

///|
pub extern "js" fn WebGLRenderingContext::uniform_matrix3fv_with_float32_array(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  transpose : GLboolean,
  value : Float32Array,
) -> Unit =
  #| (self, location, transpose, value) => self.uniformMatrix3fv((location.$tag === 1 ? location._0 : null), transpose, value)

///|
pub extern "js" fn WebGLRenderingContext::uniform_matrix3fv_with_array_of_g_lfloat(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  transpose : GLboolean,
  value : Array[GLfloat],
) -> Unit =
  #| (self, location, transpose, value) => self.uniformMatrix3fv((location.$tag === 1 ? location._0 : null), transpose, value)

///|
pub extern "js" fn WebGLRenderingContext::uniform_matrix4fv_with_float32_array(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  transpose : GLboolean,
  value : Float32Array,
) -> Unit =
  #| (self, location, transpose, value) => self.uniformMatrix4fv((location.$tag === 1 ? location._0 : null), transpose, value)

///|
pub extern "js" fn WebGLRenderingContext::uniform_matrix4fv_with_array_of_g_lfloat(
  self : WebGLRenderingContext,
  location : WebGLUniformLocation?,
  transpose : GLboolean,
  value : Array[GLfloat],
) -> Unit =
  #| (self, location, transpose, value) => self.uniformMatrix4fv((location.$tag === 1 ? location._0 : null), transpose, value)

///|
/// WebGLContextEvent interface
pub type WebGLContextEvent

///|
pub extern "js" fn WebGLContextEvent::to_js_value(
  self : WebGLContextEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WebGLContextEvent (unchecked)
pub extern "js" fn WebGLContextEvent::from_js_value(
  v : JsValue,
) -> WebGLContextEvent =
  #| (v) => v

///|
/// Safely cast JsValue to WebGLContextEvent (checked with instanceof)
pub extern "js" fn WebGLContextEvent::from_js_value_opt(
  v : JsValue,
) -> WebGLContextEvent? =
  #| (v) => (v instanceof WebGLContextEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WebGLContextEvent (checked with instanceof)
pub extern "js" fn JsValue::as_web_gl_context_event(
  self : JsValue,
) -> WebGLContextEvent? =
  #| (self) => (self instanceof WebGLContextEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WebGLContextEvent (unchecked)
pub extern "js" fn JsValue::to_web_gl_context_event(
  self : JsValue,
) -> WebGLContextEvent =
  #| (self) => self

///|
pub extern "js" fn WebGLContextEvent::to_event(
  self : WebGLContextEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn WebGLContextEvent::new(type_ : String) -> WebGLContextEvent =
  #| (type_) => new WebGLContextEvent(type_)

///|
extern "js" fn WebGLContextEvent::new_with_event_init_ffi(
  type_ : String,
  event_init : JsValue,
) -> WebGLContextEvent =
  #| (type_, event_init) => new WebGLContextEvent(type_, event_init)

///|
pub fn WebGLContextEvent::new_with_event_init(
  type_ : String,
  event_init : WebGLContextEventInit,
) -> WebGLContextEvent {
  WebGLContextEvent::new_with_event_init_ffi(type_, event_init.to_js())
}

///|
pub extern "js" fn WebGLContextEvent::get_status_message(
  self : WebGLContextEvent,
) -> String =
  #| (self) => self.statusMessage
