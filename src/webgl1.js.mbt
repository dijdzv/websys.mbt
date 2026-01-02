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
pub type TexImageSource = JsValue

///|
/// Float32List typedef
pub type Float32List = JsValue

///|
/// Int32List typedef
pub type Int32List = JsValue

///|
/// WebGLPowerPreference enum
pub(all) enum WebGLPowerPreference {
  Default
  LowPower
  HighPerformance
}

/// Convert to string value
pub fn WebGLPowerPreference::to_string(self : WebGLPowerPreference) -> String {
  match self {
    Default => "default"
    LowPower => "low-power"
    HighPerformance => "high-performance"
  }
}

/// Parse from string value
pub fn WebGLPowerPreference::from_string(s : String) -> WebGLPowerPreference? {
  match s {
    "default" => Some(Default)
    "low-power" => Some(LowPower)
    "high-performance" => Some(HighPerformance)
    _ => None
  }
}

///|
/// WebGLContextAttributes dictionary
pub struct WebGLContextAttributes {
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

/// Convert to JsValue
pub extern "js" fn WebGLContextAttributes::to_js(self : WebGLContextAttributes) -> JsValue =
  #| (self) => ({
  #|   alpha: self.alpha,
  #|   depth: self.depth,
  #|   stencil: self.stencil,
  #|   antialias: self.antialias,
  #|   premultipliedAlpha: self.premultipliedAlpha,
  #|   preserveDrawingBuffer: self.preserveDrawingBuffer,
  #|   powerPreference: self.powerPreference,
  #|   failIfMajorPerformanceCaveat: self.failIfMajorPerformanceCaveat,
  #|   desynchronized: self.desynchronized,
  #|   xrCompatible: self.xrCompatible
  #| })

///|
/// WebGLContextEventInit dictionary
pub struct WebGLContextEventInit {
  statusMessage : String?
}

/// Create a new WebGLContextEventInit with default values
pub fn WebGLContextEventInit::default() -> WebGLContextEventInit {
  WebGLContextEventInit::{
    statusMessage: None,
  }
}

/// Convert to JsValue
pub extern "js" fn WebGLContextEventInit::to_js(self : WebGLContextEventInit) -> JsValue =
  #| (self) => ({
  #|   statusMessage: self.statusMessage
  #| })

///|
/// WebGLObject interface
pub type WebGLObject

pub extern "js" fn WebGLObject::to_js_value(self : WebGLObject) -> JsValue =
  #| (self) => self

pub extern "js" fn WebGLObject::get_label(self : WebGLObject) -> String =
  #| (self) => self.label

pub extern "js" fn WebGLObject::set_label(self : WebGLObject, value : String) -> Unit =
  #| (self, value) => { self.label = value }

///|
/// WebGLBuffer interface
pub type WebGLBuffer

pub extern "js" fn WebGLBuffer::to_js_value(self : WebGLBuffer) -> JsValue =
  #| (self) => self

pub extern "js" fn WebGLBuffer::get_label(self : WebGLBuffer) -> String =
  #| (self) => self.label

pub extern "js" fn WebGLBuffer::set_label(self : WebGLBuffer, value : String) -> Unit =
  #| (self, value) => { self.label = value }

///|
/// WebGLFramebuffer interface
pub type WebGLFramebuffer

pub extern "js" fn WebGLFramebuffer::to_js_value(self : WebGLFramebuffer) -> JsValue =
  #| (self) => self

pub extern "js" fn WebGLFramebuffer::get_label(self : WebGLFramebuffer) -> String =
  #| (self) => self.label

pub extern "js" fn WebGLFramebuffer::set_label(self : WebGLFramebuffer, value : String) -> Unit =
  #| (self, value) => { self.label = value }

///|
/// WebGLProgram interface
pub type WebGLProgram

pub extern "js" fn WebGLProgram::to_js_value(self : WebGLProgram) -> JsValue =
  #| (self) => self

pub extern "js" fn WebGLProgram::get_label(self : WebGLProgram) -> String =
  #| (self) => self.label

pub extern "js" fn WebGLProgram::set_label(self : WebGLProgram, value : String) -> Unit =
  #| (self, value) => { self.label = value }

///|
/// WebGLRenderbuffer interface
pub type WebGLRenderbuffer

pub extern "js" fn WebGLRenderbuffer::to_js_value(self : WebGLRenderbuffer) -> JsValue =
  #| (self) => self

pub extern "js" fn WebGLRenderbuffer::get_label(self : WebGLRenderbuffer) -> String =
  #| (self) => self.label

pub extern "js" fn WebGLRenderbuffer::set_label(self : WebGLRenderbuffer, value : String) -> Unit =
  #| (self, value) => { self.label = value }

///|
/// WebGLShader interface
pub type WebGLShader

pub extern "js" fn WebGLShader::to_js_value(self : WebGLShader) -> JsValue =
  #| (self) => self

pub extern "js" fn WebGLShader::get_label(self : WebGLShader) -> String =
  #| (self) => self.label

pub extern "js" fn WebGLShader::set_label(self : WebGLShader, value : String) -> Unit =
  #| (self, value) => { self.label = value }

///|
/// WebGLTexture interface
pub type WebGLTexture

pub extern "js" fn WebGLTexture::to_js_value(self : WebGLTexture) -> JsValue =
  #| (self) => self

pub extern "js" fn WebGLTexture::get_label(self : WebGLTexture) -> String =
  #| (self) => self.label

pub extern "js" fn WebGLTexture::set_label(self : WebGLTexture, value : String) -> Unit =
  #| (self, value) => { self.label = value }

///|
/// WebGLUniformLocation interface
pub type WebGLUniformLocation

pub extern "js" fn WebGLUniformLocation::to_js_value(self : WebGLUniformLocation) -> JsValue =
  #| (self) => self

///|
/// WebGLActiveInfo interface
pub type WebGLActiveInfo

pub extern "js" fn WebGLActiveInfo::to_js_value(self : WebGLActiveInfo) -> JsValue =
  #| (self) => self

pub extern "js" fn WebGLActiveInfo::get_size(self : WebGLActiveInfo) -> GLint =
  #| (self) => self.size

pub extern "js" fn WebGLActiveInfo::get_type(self : WebGLActiveInfo) -> GLenum =
  #| (self) => self.type

pub extern "js" fn WebGLActiveInfo::get_name(self : WebGLActiveInfo) -> String =
  #| (self) => self.name

///|
/// WebGLShaderPrecisionFormat interface
pub type WebGLShaderPrecisionFormat

pub extern "js" fn WebGLShaderPrecisionFormat::to_js_value(self : WebGLShaderPrecisionFormat) -> JsValue =
  #| (self) => self

pub extern "js" fn WebGLShaderPrecisionFormat::get_range_min(self : WebGLShaderPrecisionFormat) -> GLint =
  #| (self) => self.rangeMin

pub extern "js" fn WebGLShaderPrecisionFormat::get_range_max(self : WebGLShaderPrecisionFormat) -> GLint =
  #| (self) => self.rangeMax

pub extern "js" fn WebGLShaderPrecisionFormat::get_precision(self : WebGLShaderPrecisionFormat) -> GLint =
  #| (self) => self.precision

///|
/// WebGLRenderingContext interface
pub type WebGLRenderingContext

pub extern "js" fn WebGLRenderingContext::to_js_value(self : WebGLRenderingContext) -> JsValue =
  #| (self) => self

pub extern "js" fn WebGLRenderingContext::get_canvas(self : WebGLRenderingContext) -> JsValue =
  #| (self) => self.canvas

pub extern "js" fn WebGLRenderingContext::get_drawing_buffer_width(self : WebGLRenderingContext) -> GLsizei =
  #| (self) => self.drawingBufferWidth

pub extern "js" fn WebGLRenderingContext::get_drawing_buffer_height(self : WebGLRenderingContext) -> GLsizei =
  #| (self) => self.drawingBufferHeight

pub extern "js" fn WebGLRenderingContext::get_drawing_buffer_format(self : WebGLRenderingContext) -> GLenum =
  #| (self) => self.drawingBufferFormat

pub extern "js" fn WebGLRenderingContext::get_drawing_buffer_color_space(self : WebGLRenderingContext) -> PredefinedColorSpace =
  #| (self) => self.drawingBufferColorSpace

pub extern "js" fn WebGLRenderingContext::set_drawing_buffer_color_space(self : WebGLRenderingContext, value : PredefinedColorSpace) -> Unit =
  #| (self, value) => { self.drawingBufferColorSpace = value }

pub extern "js" fn WebGLRenderingContext::get_unpack_color_space(self : WebGLRenderingContext) -> PredefinedColorSpace =
  #| (self) => self.unpackColorSpace

pub extern "js" fn WebGLRenderingContext::set_unpack_color_space(self : WebGLRenderingContext, value : PredefinedColorSpace) -> Unit =
  #| (self, value) => { self.unpackColorSpace = value }

pub extern "js" fn WebGLRenderingContext::get_context_attributes(self : WebGLRenderingContext) -> WebGLContextAttributes? =
  #| (self) => self.getContextAttributes()

pub extern "js" fn WebGLRenderingContext::is_context_lost(self : WebGLRenderingContext) -> Bool =
  #| (self) => self.isContextLost()

pub extern "js" fn WebGLRenderingContext::get_supported_extensions(self : WebGLRenderingContext) -> JsValue =
  #| (self) => self.getSupportedExtensions()

pub extern "js" fn WebGLRenderingContext::get_extension(self : WebGLRenderingContext, name : String) -> JsValue? =
  #| (self, name) => self.getExtension(name)

pub extern "js" fn WebGLRenderingContext::drawing_buffer_storage(self : WebGLRenderingContext, sized_format : GLenum, width : Int, height : Int) -> Unit =
  #| (self, sized_format, width, height) => self.drawingBufferStorage(sized_format, width, height)

pub extern "js" fn WebGLRenderingContext::active_texture(self : WebGLRenderingContext, texture : GLenum) -> Unit =
  #| (self, texture) => self.activeTexture(texture)

pub extern "js" fn WebGLRenderingContext::attach_shader(self : WebGLRenderingContext, program : WebGLProgram, shader : WebGLShader) -> Unit =
  #| (self, program, shader) => self.attachShader(program, shader)

pub extern "js" fn WebGLRenderingContext::bind_attrib_location(self : WebGLRenderingContext, program : WebGLProgram, index : GLuint, name : String) -> Unit =
  #| (self, program, index, name) => self.bindAttribLocation(program, index, name)

pub extern "js" fn WebGLRenderingContext::bind_buffer(self : WebGLRenderingContext, target : GLenum, buffer : WebGLBuffer?) -> Unit =
  #| (self, target, buffer) => self.bindBuffer(target, buffer)

pub extern "js" fn WebGLRenderingContext::bind_framebuffer(self : WebGLRenderingContext, target : GLenum, framebuffer : WebGLFramebuffer?) -> Unit =
  #| (self, target, framebuffer) => self.bindFramebuffer(target, framebuffer)

pub extern "js" fn WebGLRenderingContext::bind_renderbuffer(self : WebGLRenderingContext, target : GLenum, renderbuffer : WebGLRenderbuffer?) -> Unit =
  #| (self, target, renderbuffer) => self.bindRenderbuffer(target, renderbuffer)

pub extern "js" fn WebGLRenderingContext::bind_texture(self : WebGLRenderingContext, target : GLenum, texture : WebGLTexture?) -> Unit =
  #| (self, target, texture) => self.bindTexture(target, texture)

pub extern "js" fn WebGLRenderingContext::blend_color(self : WebGLRenderingContext, red : GLclampf, green : GLclampf, blue : GLclampf, alpha : GLclampf) -> Unit =
  #| (self, red, green, blue, alpha) => self.blendColor(red, green, blue, alpha)

pub extern "js" fn WebGLRenderingContext::blend_equation(self : WebGLRenderingContext, mode : GLenum) -> Unit =
  #| (self, mode) => self.blendEquation(mode)

pub extern "js" fn WebGLRenderingContext::blend_equation_separate(self : WebGLRenderingContext, mode_r_g_b : GLenum, mode_alpha : GLenum) -> Unit =
  #| (self, mode_r_g_b, mode_alpha) => self.blendEquationSeparate(mode_r_g_b, mode_alpha)

pub extern "js" fn WebGLRenderingContext::blend_func(self : WebGLRenderingContext, sfactor : GLenum, dfactor : GLenum) -> Unit =
  #| (self, sfactor, dfactor) => self.blendFunc(sfactor, dfactor)

pub extern "js" fn WebGLRenderingContext::blend_func_separate(self : WebGLRenderingContext, src_r_g_b : GLenum, dst_r_g_b : GLenum, src_alpha : GLenum, dst_alpha : GLenum) -> Unit =
  #| (self, src_r_g_b, dst_r_g_b, src_alpha, dst_alpha) => self.blendFuncSeparate(src_r_g_b, dst_r_g_b, src_alpha, dst_alpha)

pub extern "js" fn WebGLRenderingContext::check_framebuffer_status(self : WebGLRenderingContext, target : GLenum) -> GLenum =
  #| (self, target) => self.checkFramebufferStatus(target)

pub extern "js" fn WebGLRenderingContext::clear(self : WebGLRenderingContext, mask : GLbitfield) -> Unit =
  #| (self, mask) => self.clear(mask)

pub extern "js" fn WebGLRenderingContext::clear_color(self : WebGLRenderingContext, red : GLclampf, green : GLclampf, blue : GLclampf, alpha : GLclampf) -> Unit =
  #| (self, red, green, blue, alpha) => self.clearColor(red, green, blue, alpha)

pub extern "js" fn WebGLRenderingContext::clear_depth(self : WebGLRenderingContext, depth : GLclampf) -> Unit =
  #| (self, depth) => self.clearDepth(depth)

pub extern "js" fn WebGLRenderingContext::clear_stencil(self : WebGLRenderingContext, s : GLint) -> Unit =
  #| (self, s) => self.clearStencil(s)

pub extern "js" fn WebGLRenderingContext::color_mask(self : WebGLRenderingContext, red : GLboolean, green : GLboolean, blue : GLboolean, alpha : GLboolean) -> Unit =
  #| (self, red, green, blue, alpha) => self.colorMask(red, green, blue, alpha)

pub extern "js" fn WebGLRenderingContext::compile_shader(self : WebGLRenderingContext, shader : WebGLShader) -> Unit =
  #| (self, shader) => self.compileShader(shader)

pub extern "js" fn WebGLRenderingContext::copy_tex_image2_d(self : WebGLRenderingContext, target : GLenum, level : GLint, internalformat : GLenum, x : GLint, y : GLint, width : GLsizei, height : GLsizei, border : GLint) -> Unit =
  #| (self, target, level, internalformat, x, y, width, height, border) => self.copyTexImage2D(target, level, internalformat, x, y, width, height, border)

pub extern "js" fn WebGLRenderingContext::copy_tex_sub_image2_d(self : WebGLRenderingContext, target : GLenum, level : GLint, xoffset : GLint, yoffset : GLint, x : GLint, y : GLint, width : GLsizei, height : GLsizei) -> Unit =
  #| (self, target, level, xoffset, yoffset, x, y, width, height) => self.copyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height)

pub extern "js" fn WebGLRenderingContext::create_buffer(self : WebGLRenderingContext) -> WebGLBuffer =
  #| (self) => self.createBuffer()

pub extern "js" fn WebGLRenderingContext::create_framebuffer(self : WebGLRenderingContext) -> WebGLFramebuffer =
  #| (self) => self.createFramebuffer()

pub extern "js" fn WebGLRenderingContext::create_program(self : WebGLRenderingContext) -> WebGLProgram =
  #| (self) => self.createProgram()

pub extern "js" fn WebGLRenderingContext::create_renderbuffer(self : WebGLRenderingContext) -> WebGLRenderbuffer =
  #| (self) => self.createRenderbuffer()

pub extern "js" fn WebGLRenderingContext::create_shader(self : WebGLRenderingContext, type_ : GLenum) -> WebGLShader? =
  #| (self, type_) => self.createShader(type_)

pub extern "js" fn WebGLRenderingContext::create_texture(self : WebGLRenderingContext) -> WebGLTexture =
  #| (self) => self.createTexture()

pub extern "js" fn WebGLRenderingContext::cull_face(self : WebGLRenderingContext, mode : GLenum) -> Unit =
  #| (self, mode) => self.cullFace(mode)

pub extern "js" fn WebGLRenderingContext::delete_buffer(self : WebGLRenderingContext, buffer : WebGLBuffer?) -> Unit =
  #| (self, buffer) => self.deleteBuffer(buffer)

pub extern "js" fn WebGLRenderingContext::delete_framebuffer(self : WebGLRenderingContext, framebuffer : WebGLFramebuffer?) -> Unit =
  #| (self, framebuffer) => self.deleteFramebuffer(framebuffer)

pub extern "js" fn WebGLRenderingContext::delete_program(self : WebGLRenderingContext, program : WebGLProgram?) -> Unit =
  #| (self, program) => self.deleteProgram(program)

pub extern "js" fn WebGLRenderingContext::delete_renderbuffer(self : WebGLRenderingContext, renderbuffer : WebGLRenderbuffer?) -> Unit =
  #| (self, renderbuffer) => self.deleteRenderbuffer(renderbuffer)

pub extern "js" fn WebGLRenderingContext::delete_shader(self : WebGLRenderingContext, shader : WebGLShader?) -> Unit =
  #| (self, shader) => self.deleteShader(shader)

pub extern "js" fn WebGLRenderingContext::delete_texture(self : WebGLRenderingContext, texture : WebGLTexture?) -> Unit =
  #| (self, texture) => self.deleteTexture(texture)

pub extern "js" fn WebGLRenderingContext::depth_func(self : WebGLRenderingContext, func : GLenum) -> Unit =
  #| (self, func) => self.depthFunc(func)

pub extern "js" fn WebGLRenderingContext::depth_mask(self : WebGLRenderingContext, flag : GLboolean) -> Unit =
  #| (self, flag) => self.depthMask(flag)

pub extern "js" fn WebGLRenderingContext::depth_range(self : WebGLRenderingContext, z_near : GLclampf, z_far : GLclampf) -> Unit =
  #| (self, z_near, z_far) => self.depthRange(z_near, z_far)

pub extern "js" fn WebGLRenderingContext::detach_shader(self : WebGLRenderingContext, program : WebGLProgram, shader : WebGLShader) -> Unit =
  #| (self, program, shader) => self.detachShader(program, shader)

pub extern "js" fn WebGLRenderingContext::disable(self : WebGLRenderingContext, cap : GLenum) -> Unit =
  #| (self, cap) => self.disable(cap)

pub extern "js" fn WebGLRenderingContext::disable_vertex_attrib_array(self : WebGLRenderingContext, index : GLuint) -> Unit =
  #| (self, index) => self.disableVertexAttribArray(index)

pub extern "js" fn WebGLRenderingContext::draw_arrays(self : WebGLRenderingContext, mode : GLenum, first : GLint, count : GLsizei) -> Unit =
  #| (self, mode, first, count) => self.drawArrays(mode, first, count)

pub extern "js" fn WebGLRenderingContext::draw_elements(self : WebGLRenderingContext, mode : GLenum, count : GLsizei, type_ : GLenum, offset : GLintptr) -> Unit =
  #| (self, mode, count, type_, offset) => self.drawElements(mode, count, type_, offset)

pub extern "js" fn WebGLRenderingContext::enable(self : WebGLRenderingContext, cap : GLenum) -> Unit =
  #| (self, cap) => self.enable(cap)

pub extern "js" fn WebGLRenderingContext::enable_vertex_attrib_array(self : WebGLRenderingContext, index : GLuint) -> Unit =
  #| (self, index) => self.enableVertexAttribArray(index)

pub extern "js" fn WebGLRenderingContext::finish(self : WebGLRenderingContext) -> Unit =
  #| (self) => self.finish()

pub extern "js" fn WebGLRenderingContext::flush(self : WebGLRenderingContext) -> Unit =
  #| (self) => self.flush()

pub extern "js" fn WebGLRenderingContext::framebuffer_renderbuffer(self : WebGLRenderingContext, target : GLenum, attachment : GLenum, renderbuffertarget : GLenum, renderbuffer : WebGLRenderbuffer?) -> Unit =
  #| (self, target, attachment, renderbuffertarget, renderbuffer) => self.framebufferRenderbuffer(target, attachment, renderbuffertarget, renderbuffer)

pub extern "js" fn WebGLRenderingContext::framebuffer_texture2_d(self : WebGLRenderingContext, target : GLenum, attachment : GLenum, textarget : GLenum, texture : WebGLTexture?, level : GLint) -> Unit =
  #| (self, target, attachment, textarget, texture, level) => self.framebufferTexture2D(target, attachment, textarget, texture, level)

pub extern "js" fn WebGLRenderingContext::front_face(self : WebGLRenderingContext, mode : GLenum) -> Unit =
  #| (self, mode) => self.frontFace(mode)

pub extern "js" fn WebGLRenderingContext::generate_mipmap(self : WebGLRenderingContext, target : GLenum) -> Unit =
  #| (self, target) => self.generateMipmap(target)

pub extern "js" fn WebGLRenderingContext::get_active_attrib(self : WebGLRenderingContext, program : WebGLProgram, index : GLuint) -> WebGLActiveInfo? =
  #| (self, program, index) => self.getActiveAttrib(program, index)

pub extern "js" fn WebGLRenderingContext::get_active_uniform(self : WebGLRenderingContext, program : WebGLProgram, index : GLuint) -> WebGLActiveInfo? =
  #| (self, program, index) => self.getActiveUniform(program, index)

pub extern "js" fn WebGLRenderingContext::get_attached_shaders(self : WebGLRenderingContext, program : WebGLProgram) -> JsValue =
  #| (self, program) => self.getAttachedShaders(program)

pub extern "js" fn WebGLRenderingContext::get_attrib_location(self : WebGLRenderingContext, program : WebGLProgram, name : String) -> GLint =
  #| (self, program, name) => self.getAttribLocation(program, name)

pub extern "js" fn WebGLRenderingContext::get_buffer_parameter(self : WebGLRenderingContext, target : GLenum, pname : GLenum) -> JsValue =
  #| (self, target, pname) => self.getBufferParameter(target, pname)

pub extern "js" fn WebGLRenderingContext::get_parameter(self : WebGLRenderingContext, pname : GLenum) -> JsValue =
  #| (self, pname) => self.getParameter(pname)

pub extern "js" fn WebGLRenderingContext::get_error(self : WebGLRenderingContext) -> GLenum =
  #| (self) => self.getError()

pub extern "js" fn WebGLRenderingContext::get_framebuffer_attachment_parameter(self : WebGLRenderingContext, target : GLenum, attachment : GLenum, pname : GLenum) -> JsValue =
  #| (self, target, attachment, pname) => self.getFramebufferAttachmentParameter(target, attachment, pname)

pub extern "js" fn WebGLRenderingContext::get_program_parameter(self : WebGLRenderingContext, program : WebGLProgram, pname : GLenum) -> JsValue =
  #| (self, program, pname) => self.getProgramParameter(program, pname)

pub extern "js" fn WebGLRenderingContext::get_program_info_log(self : WebGLRenderingContext, program : WebGLProgram) -> String? =
  #| (self, program) => self.getProgramInfoLog(program)

pub extern "js" fn WebGLRenderingContext::get_renderbuffer_parameter(self : WebGLRenderingContext, target : GLenum, pname : GLenum) -> JsValue =
  #| (self, target, pname) => self.getRenderbufferParameter(target, pname)

pub extern "js" fn WebGLRenderingContext::get_shader_parameter(self : WebGLRenderingContext, shader : WebGLShader, pname : GLenum) -> JsValue =
  #| (self, shader, pname) => self.getShaderParameter(shader, pname)

pub extern "js" fn WebGLRenderingContext::get_shader_precision_format(self : WebGLRenderingContext, shadertype : GLenum, precisiontype : GLenum) -> WebGLShaderPrecisionFormat? =
  #| (self, shadertype, precisiontype) => self.getShaderPrecisionFormat(shadertype, precisiontype)

pub extern "js" fn WebGLRenderingContext::get_shader_info_log(self : WebGLRenderingContext, shader : WebGLShader) -> String? =
  #| (self, shader) => self.getShaderInfoLog(shader)

pub extern "js" fn WebGLRenderingContext::get_shader_source(self : WebGLRenderingContext, shader : WebGLShader) -> String? =
  #| (self, shader) => self.getShaderSource(shader)

pub extern "js" fn WebGLRenderingContext::get_tex_parameter(self : WebGLRenderingContext, target : GLenum, pname : GLenum) -> JsValue =
  #| (self, target, pname) => self.getTexParameter(target, pname)

pub extern "js" fn WebGLRenderingContext::get_uniform(self : WebGLRenderingContext, program : WebGLProgram, location : WebGLUniformLocation) -> JsValue =
  #| (self, program, location) => self.getUniform(program, location)

pub extern "js" fn WebGLRenderingContext::get_uniform_location(self : WebGLRenderingContext, program : WebGLProgram, name : String) -> WebGLUniformLocation? =
  #| (self, program, name) => self.getUniformLocation(program, name)

pub extern "js" fn WebGLRenderingContext::get_vertex_attrib(self : WebGLRenderingContext, index : GLuint, pname : GLenum) -> JsValue =
  #| (self, index, pname) => self.getVertexAttrib(index, pname)

pub extern "js" fn WebGLRenderingContext::get_vertex_attrib_offset(self : WebGLRenderingContext, index : GLuint, pname : GLenum) -> GLintptr =
  #| (self, index, pname) => self.getVertexAttribOffset(index, pname)

pub extern "js" fn WebGLRenderingContext::hint(self : WebGLRenderingContext, target : GLenum, mode : GLenum) -> Unit =
  #| (self, target, mode) => self.hint(target, mode)

pub extern "js" fn WebGLRenderingContext::is_buffer(self : WebGLRenderingContext, buffer : WebGLBuffer?) -> GLboolean =
  #| (self, buffer) => self.isBuffer(buffer)

pub extern "js" fn WebGLRenderingContext::is_enabled(self : WebGLRenderingContext, cap : GLenum) -> GLboolean =
  #| (self, cap) => self.isEnabled(cap)

pub extern "js" fn WebGLRenderingContext::is_framebuffer(self : WebGLRenderingContext, framebuffer : WebGLFramebuffer?) -> GLboolean =
  #| (self, framebuffer) => self.isFramebuffer(framebuffer)

pub extern "js" fn WebGLRenderingContext::is_program(self : WebGLRenderingContext, program : WebGLProgram?) -> GLboolean =
  #| (self, program) => self.isProgram(program)

pub extern "js" fn WebGLRenderingContext::is_renderbuffer(self : WebGLRenderingContext, renderbuffer : WebGLRenderbuffer?) -> GLboolean =
  #| (self, renderbuffer) => self.isRenderbuffer(renderbuffer)

pub extern "js" fn WebGLRenderingContext::is_shader(self : WebGLRenderingContext, shader : WebGLShader?) -> GLboolean =
  #| (self, shader) => self.isShader(shader)

pub extern "js" fn WebGLRenderingContext::is_texture(self : WebGLRenderingContext, texture : WebGLTexture?) -> GLboolean =
  #| (self, texture) => self.isTexture(texture)

pub extern "js" fn WebGLRenderingContext::line_width(self : WebGLRenderingContext, width : GLfloat) -> Unit =
  #| (self, width) => self.lineWidth(width)

pub extern "js" fn WebGLRenderingContext::link_program(self : WebGLRenderingContext, program : WebGLProgram) -> Unit =
  #| (self, program) => self.linkProgram(program)

pub extern "js" fn WebGLRenderingContext::pixel_storei(self : WebGLRenderingContext, pname : GLenum, param : GLint) -> Unit =
  #| (self, pname, param) => self.pixelStorei(pname, param)

pub extern "js" fn WebGLRenderingContext::polygon_offset(self : WebGLRenderingContext, factor : GLfloat, units : GLfloat) -> Unit =
  #| (self, factor, units) => self.polygonOffset(factor, units)

pub extern "js" fn WebGLRenderingContext::renderbuffer_storage(self : WebGLRenderingContext, target : GLenum, internalformat : GLenum, width : GLsizei, height : GLsizei) -> Unit =
  #| (self, target, internalformat, width, height) => self.renderbufferStorage(target, internalformat, width, height)

pub extern "js" fn WebGLRenderingContext::sample_coverage(self : WebGLRenderingContext, value : GLclampf, invert : GLboolean) -> Unit =
  #| (self, value, invert) => self.sampleCoverage(value, invert)

pub extern "js" fn WebGLRenderingContext::scissor(self : WebGLRenderingContext, x : GLint, y : GLint, width : GLsizei, height : GLsizei) -> Unit =
  #| (self, x, y, width, height) => self.scissor(x, y, width, height)

pub extern "js" fn WebGLRenderingContext::shader_source(self : WebGLRenderingContext, shader : WebGLShader, source : String) -> Unit =
  #| (self, shader, source) => self.shaderSource(shader, source)

pub extern "js" fn WebGLRenderingContext::stencil_func(self : WebGLRenderingContext, func : GLenum, ref_ : GLint, mask : GLuint) -> Unit =
  #| (self, func, ref_, mask) => self.stencilFunc(func, ref_, mask)

pub extern "js" fn WebGLRenderingContext::stencil_func_separate(self : WebGLRenderingContext, face : GLenum, func : GLenum, ref_ : GLint, mask : GLuint) -> Unit =
  #| (self, face, func, ref_, mask) => self.stencilFuncSeparate(face, func, ref_, mask)

pub extern "js" fn WebGLRenderingContext::stencil_mask(self : WebGLRenderingContext, mask : GLuint) -> Unit =
  #| (self, mask) => self.stencilMask(mask)

pub extern "js" fn WebGLRenderingContext::stencil_mask_separate(self : WebGLRenderingContext, face : GLenum, mask : GLuint) -> Unit =
  #| (self, face, mask) => self.stencilMaskSeparate(face, mask)

pub extern "js" fn WebGLRenderingContext::stencil_op(self : WebGLRenderingContext, fail : GLenum, zfail : GLenum, zpass : GLenum) -> Unit =
  #| (self, fail, zfail, zpass) => self.stencilOp(fail, zfail, zpass)

pub extern "js" fn WebGLRenderingContext::stencil_op_separate(self : WebGLRenderingContext, face : GLenum, fail : GLenum, zfail : GLenum, zpass : GLenum) -> Unit =
  #| (self, face, fail, zfail, zpass) => self.stencilOpSeparate(face, fail, zfail, zpass)

pub extern "js" fn WebGLRenderingContext::tex_parameterf(self : WebGLRenderingContext, target : GLenum, pname : GLenum, param : GLfloat) -> Unit =
  #| (self, target, pname, param) => self.texParameterf(target, pname, param)

pub extern "js" fn WebGLRenderingContext::tex_parameteri(self : WebGLRenderingContext, target : GLenum, pname : GLenum, param : GLint) -> Unit =
  #| (self, target, pname, param) => self.texParameteri(target, pname, param)

pub extern "js" fn WebGLRenderingContext::uniform1f(self : WebGLRenderingContext, location : WebGLUniformLocation?, x : GLfloat) -> Unit =
  #| (self, location, x) => self.uniform1f(location, x)

pub extern "js" fn WebGLRenderingContext::uniform2f(self : WebGLRenderingContext, location : WebGLUniformLocation?, x : GLfloat, y : GLfloat) -> Unit =
  #| (self, location, x, y) => self.uniform2f(location, x, y)

pub extern "js" fn WebGLRenderingContext::uniform3f(self : WebGLRenderingContext, location : WebGLUniformLocation?, x : GLfloat, y : GLfloat, z : GLfloat) -> Unit =
  #| (self, location, x, y, z) => self.uniform3f(location, x, y, z)

pub extern "js" fn WebGLRenderingContext::uniform4f(self : WebGLRenderingContext, location : WebGLUniformLocation?, x : GLfloat, y : GLfloat, z : GLfloat, w : GLfloat) -> Unit =
  #| (self, location, x, y, z, w) => self.uniform4f(location, x, y, z, w)

pub extern "js" fn WebGLRenderingContext::uniform1i(self : WebGLRenderingContext, location : WebGLUniformLocation?, x : GLint) -> Unit =
  #| (self, location, x) => self.uniform1i(location, x)

pub extern "js" fn WebGLRenderingContext::uniform2i(self : WebGLRenderingContext, location : WebGLUniformLocation?, x : GLint, y : GLint) -> Unit =
  #| (self, location, x, y) => self.uniform2i(location, x, y)

pub extern "js" fn WebGLRenderingContext::uniform3i(self : WebGLRenderingContext, location : WebGLUniformLocation?, x : GLint, y : GLint, z : GLint) -> Unit =
  #| (self, location, x, y, z) => self.uniform3i(location, x, y, z)

pub extern "js" fn WebGLRenderingContext::uniform4i(self : WebGLRenderingContext, location : WebGLUniformLocation?, x : GLint, y : GLint, z : GLint, w : GLint) -> Unit =
  #| (self, location, x, y, z, w) => self.uniform4i(location, x, y, z, w)

pub extern "js" fn WebGLRenderingContext::use_program(self : WebGLRenderingContext, program : WebGLProgram?) -> Unit =
  #| (self, program) => self.useProgram(program)

pub extern "js" fn WebGLRenderingContext::validate_program(self : WebGLRenderingContext, program : WebGLProgram) -> Unit =
  #| (self, program) => self.validateProgram(program)

pub extern "js" fn WebGLRenderingContext::vertex_attrib1f(self : WebGLRenderingContext, index : GLuint, x : GLfloat) -> Unit =
  #| (self, index, x) => self.vertexAttrib1f(index, x)

pub extern "js" fn WebGLRenderingContext::vertex_attrib2f(self : WebGLRenderingContext, index : GLuint, x : GLfloat, y : GLfloat) -> Unit =
  #| (self, index, x, y) => self.vertexAttrib2f(index, x, y)

pub extern "js" fn WebGLRenderingContext::vertex_attrib3f(self : WebGLRenderingContext, index : GLuint, x : GLfloat, y : GLfloat, z : GLfloat) -> Unit =
  #| (self, index, x, y, z) => self.vertexAttrib3f(index, x, y, z)

pub extern "js" fn WebGLRenderingContext::vertex_attrib4f(self : WebGLRenderingContext, index : GLuint, x : GLfloat, y : GLfloat, z : GLfloat, w : GLfloat) -> Unit =
  #| (self, index, x, y, z, w) => self.vertexAttrib4f(index, x, y, z, w)

pub extern "js" fn WebGLRenderingContext::vertex_attrib1fv(self : WebGLRenderingContext, index : GLuint, values : Float32List) -> Unit =
  #| (self, index, values) => self.vertexAttrib1fv(index, values)

pub extern "js" fn WebGLRenderingContext::vertex_attrib2fv(self : WebGLRenderingContext, index : GLuint, values : Float32List) -> Unit =
  #| (self, index, values) => self.vertexAttrib2fv(index, values)

pub extern "js" fn WebGLRenderingContext::vertex_attrib3fv(self : WebGLRenderingContext, index : GLuint, values : Float32List) -> Unit =
  #| (self, index, values) => self.vertexAttrib3fv(index, values)

pub extern "js" fn WebGLRenderingContext::vertex_attrib4fv(self : WebGLRenderingContext, index : GLuint, values : Float32List) -> Unit =
  #| (self, index, values) => self.vertexAttrib4fv(index, values)

pub extern "js" fn WebGLRenderingContext::vertex_attrib_pointer(self : WebGLRenderingContext, index : GLuint, size : GLint, type_ : GLenum, normalized : GLboolean, stride : GLsizei, offset : GLintptr) -> Unit =
  #| (self, index, size, type_, normalized, stride, offset) => self.vertexAttribPointer(index, size, type_, normalized, stride, offset)

pub extern "js" fn WebGLRenderingContext::viewport(self : WebGLRenderingContext, x : GLint, y : GLint, width : GLsizei, height : GLsizei) -> Unit =
  #| (self, x, y, width, height) => self.viewport(x, y, width, height)

pub extern "js" fn WebGLRenderingContext::make_x_r_compatible(self : WebGLRenderingContext) -> JsValue =
  #| (self) => self.makeXRCompatible()

pub extern "js" fn WebGLRenderingContext::buffer_data(self : WebGLRenderingContext, target : GLenum, size : GLsizeiptr, usage : GLenum) -> Unit =
  #| (self, target, size, usage) => self.bufferData(target, size, usage)

pub extern "js" fn WebGLRenderingContext::buffer_sub_data(self : WebGLRenderingContext, target : GLenum, offset : GLintptr, data : AllowSharedBufferSource) -> Unit =
  #| (self, target, offset, data) => self.bufferSubData(target, offset, data)

pub extern "js" fn WebGLRenderingContext::compressed_tex_image2_d(self : WebGLRenderingContext, target : GLenum, level : GLint, internalformat : GLenum, width : GLsizei, height : GLsizei, border : GLint, data : ArrayBufferView) -> Unit =
  #| (self, target, level, internalformat, width, height, border, data) => self.compressedTexImage2D(target, level, internalformat, width, height, border, data)

pub extern "js" fn WebGLRenderingContext::compressed_tex_sub_image2_d(self : WebGLRenderingContext, target : GLenum, level : GLint, xoffset : GLint, yoffset : GLint, width : GLsizei, height : GLsizei, format : GLenum, data : ArrayBufferView) -> Unit =
  #| (self, target, level, xoffset, yoffset, width, height, format, data) => self.compressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, data)

pub extern "js" fn WebGLRenderingContext::read_pixels(self : WebGLRenderingContext, x : GLint, y : GLint, width : GLsizei, height : GLsizei, format : GLenum, type_ : GLenum, pixels : ArrayBufferView?) -> Unit =
  #| (self, x, y, width, height, format, type_, pixels) => self.readPixels(x, y, width, height, format, type_, pixels)

pub extern "js" fn WebGLRenderingContext::tex_image2_d(self : WebGLRenderingContext, target : GLenum, level : GLint, internalformat : GLint, width : GLsizei, height : GLsizei, border : GLint, format : GLenum, type_ : GLenum, pixels : ArrayBufferView?) -> Unit =
  #| (self, target, level, internalformat, width, height, border, format, type_, pixels) => self.texImage2D(target, level, internalformat, width, height, border, format, type_, pixels)

pub extern "js" fn WebGLRenderingContext::tex_sub_image2_d(self : WebGLRenderingContext, target : GLenum, level : GLint, xoffset : GLint, yoffset : GLint, width : GLsizei, height : GLsizei, format : GLenum, type_ : GLenum, pixels : ArrayBufferView?) -> Unit =
  #| (self, target, level, xoffset, yoffset, width, height, format, type_, pixels) => self.texSubImage2D(target, level, xoffset, yoffset, width, height, format, type_, pixels)

pub extern "js" fn WebGLRenderingContext::uniform1fv(self : WebGLRenderingContext, location : WebGLUniformLocation?, v : Float32List) -> Unit =
  #| (self, location, v) => self.uniform1fv(location, v)

pub extern "js" fn WebGLRenderingContext::uniform2fv(self : WebGLRenderingContext, location : WebGLUniformLocation?, v : Float32List) -> Unit =
  #| (self, location, v) => self.uniform2fv(location, v)

pub extern "js" fn WebGLRenderingContext::uniform3fv(self : WebGLRenderingContext, location : WebGLUniformLocation?, v : Float32List) -> Unit =
  #| (self, location, v) => self.uniform3fv(location, v)

pub extern "js" fn WebGLRenderingContext::uniform4fv(self : WebGLRenderingContext, location : WebGLUniformLocation?, v : Float32List) -> Unit =
  #| (self, location, v) => self.uniform4fv(location, v)

pub extern "js" fn WebGLRenderingContext::uniform1iv(self : WebGLRenderingContext, location : WebGLUniformLocation?, v : Int32List) -> Unit =
  #| (self, location, v) => self.uniform1iv(location, v)

pub extern "js" fn WebGLRenderingContext::uniform2iv(self : WebGLRenderingContext, location : WebGLUniformLocation?, v : Int32List) -> Unit =
  #| (self, location, v) => self.uniform2iv(location, v)

pub extern "js" fn WebGLRenderingContext::uniform3iv(self : WebGLRenderingContext, location : WebGLUniformLocation?, v : Int32List) -> Unit =
  #| (self, location, v) => self.uniform3iv(location, v)

pub extern "js" fn WebGLRenderingContext::uniform4iv(self : WebGLRenderingContext, location : WebGLUniformLocation?, v : Int32List) -> Unit =
  #| (self, location, v) => self.uniform4iv(location, v)

pub extern "js" fn WebGLRenderingContext::uniform_matrix2fv(self : WebGLRenderingContext, location : WebGLUniformLocation?, transpose : GLboolean, value : Float32List) -> Unit =
  #| (self, location, transpose, value) => self.uniformMatrix2fv(location, transpose, value)

pub extern "js" fn WebGLRenderingContext::uniform_matrix3fv(self : WebGLRenderingContext, location : WebGLUniformLocation?, transpose : GLboolean, value : Float32List) -> Unit =
  #| (self, location, transpose, value) => self.uniformMatrix3fv(location, transpose, value)

pub extern "js" fn WebGLRenderingContext::uniform_matrix4fv(self : WebGLRenderingContext, location : WebGLUniformLocation?, transpose : GLboolean, value : Float32List) -> Unit =
  #| (self, location, transpose, value) => self.uniformMatrix4fv(location, transpose, value)

///|
/// WebGLContextEvent interface
pub type WebGLContextEvent

pub extern "js" fn WebGLContextEvent::to_js_value(self : WebGLContextEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn WebGLContextEvent::new(type_ : String, event_init : WebGLContextEventInit) -> WebGLContextEvent =
  #| (type_, event_init) => new WebGLContextEvent(type_, event_init)

pub extern "js" fn WebGLContextEvent::get_status_message(self : WebGLContextEvent) -> String =
  #| (self) => self.statusMessage

