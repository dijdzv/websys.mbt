// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webgl2

///|
/// GLint64 typedef
pub type GLint64 = Int64

///|
/// GLuint64 typedef
pub type GLuint64 = Int64

///|
/// Uint32List typedef
pub type Uint32List = JsValue

///|
/// WebGLQuery interface
pub type WebGLQuery

pub extern "js" fn WebGLQuery::to_js_value(self : WebGLQuery) -> JsValue =
  #| (self) => self

///|
/// WebGLSampler interface
pub type WebGLSampler

pub extern "js" fn WebGLSampler::to_js_value(self : WebGLSampler) -> JsValue =
  #| (self) => self

///|
/// WebGLSync interface
pub type WebGLSync

pub extern "js" fn WebGLSync::to_js_value(self : WebGLSync) -> JsValue =
  #| (self) => self

///|
/// WebGLTransformFeedback interface
pub type WebGLTransformFeedback

pub extern "js" fn WebGLTransformFeedback::to_js_value(self : WebGLTransformFeedback) -> JsValue =
  #| (self) => self

///|
/// WebGLVertexArrayObject interface
pub type WebGLVertexArrayObject

pub extern "js" fn WebGLVertexArrayObject::to_js_value(self : WebGLVertexArrayObject) -> JsValue =
  #| (self) => self

///|
/// WebGL2RenderingContext interface
pub type WebGL2RenderingContext

pub extern "js" fn WebGL2RenderingContext::to_js_value(self : WebGL2RenderingContext) -> JsValue =
  #| (self) => self

pub extern "js" fn WebGL2RenderingContext::get_canvas(self : WebGL2RenderingContext) -> JsValue =
  #| (self) => self.canvas

pub extern "js" fn WebGL2RenderingContext::get_drawing_buffer_width(self : WebGL2RenderingContext) -> GLsizei =
  #| (self) => self.drawingBufferWidth

pub extern "js" fn WebGL2RenderingContext::get_drawing_buffer_height(self : WebGL2RenderingContext) -> GLsizei =
  #| (self) => self.drawingBufferHeight

pub extern "js" fn WebGL2RenderingContext::get_drawing_buffer_format(self : WebGL2RenderingContext) -> GLenum =
  #| (self) => self.drawingBufferFormat

pub extern "js" fn WebGL2RenderingContext::get_drawing_buffer_color_space(self : WebGL2RenderingContext) -> PredefinedColorSpace =
  #| (self) => self.drawingBufferColorSpace

pub extern "js" fn WebGL2RenderingContext::set_drawing_buffer_color_space(self : WebGL2RenderingContext, value : PredefinedColorSpace) -> Unit =
  #| (self, value) => { self.drawingBufferColorSpace = value }

pub extern "js" fn WebGL2RenderingContext::get_unpack_color_space(self : WebGL2RenderingContext) -> PredefinedColorSpace =
  #| (self) => self.unpackColorSpace

pub extern "js" fn WebGL2RenderingContext::set_unpack_color_space(self : WebGL2RenderingContext, value : PredefinedColorSpace) -> Unit =
  #| (self, value) => { self.unpackColorSpace = value }

pub extern "js" fn WebGL2RenderingContext::get_context_attributes(self : WebGL2RenderingContext) -> WebGLContextAttributes? =
  #| (self) => self.getContextAttributes()

pub extern "js" fn WebGL2RenderingContext::is_context_lost(self : WebGL2RenderingContext) -> Bool =
  #| (self) => self.isContextLost()

pub extern "js" fn WebGL2RenderingContext::get_supported_extensions(self : WebGL2RenderingContext) -> JsValue =
  #| (self) => self.getSupportedExtensions()

pub extern "js" fn WebGL2RenderingContext::get_extension(self : WebGL2RenderingContext, name : String) -> JsValue? =
  #| (self, name) => self.getExtension(name)

pub extern "js" fn WebGL2RenderingContext::drawing_buffer_storage(self : WebGL2RenderingContext, sized_format : GLenum, width : Int, height : Int) -> Unit =
  #| (self, sized_format, width, height) => self.drawingBufferStorage(sized_format, width, height)

pub extern "js" fn WebGL2RenderingContext::active_texture(self : WebGL2RenderingContext, texture : GLenum) -> Unit =
  #| (self, texture) => self.activeTexture(texture)

pub extern "js" fn WebGL2RenderingContext::attach_shader(self : WebGL2RenderingContext, program : WebGLProgram, shader : WebGLShader) -> Unit =
  #| (self, program, shader) => self.attachShader(program, shader)

pub extern "js" fn WebGL2RenderingContext::bind_attrib_location(self : WebGL2RenderingContext, program : WebGLProgram, index : GLuint, name : String) -> Unit =
  #| (self, program, index, name) => self.bindAttribLocation(program, index, name)

pub extern "js" fn WebGL2RenderingContext::bind_buffer(self : WebGL2RenderingContext, target : GLenum, buffer : WebGLBuffer?) -> Unit =
  #| (self, target, buffer) => self.bindBuffer(target, buffer)

pub extern "js" fn WebGL2RenderingContext::bind_framebuffer(self : WebGL2RenderingContext, target : GLenum, framebuffer : WebGLFramebuffer?) -> Unit =
  #| (self, target, framebuffer) => self.bindFramebuffer(target, framebuffer)

pub extern "js" fn WebGL2RenderingContext::bind_renderbuffer(self : WebGL2RenderingContext, target : GLenum, renderbuffer : WebGLRenderbuffer?) -> Unit =
  #| (self, target, renderbuffer) => self.bindRenderbuffer(target, renderbuffer)

pub extern "js" fn WebGL2RenderingContext::bind_texture(self : WebGL2RenderingContext, target : GLenum, texture : WebGLTexture?) -> Unit =
  #| (self, target, texture) => self.bindTexture(target, texture)

pub extern "js" fn WebGL2RenderingContext::blend_color(self : WebGL2RenderingContext, red : GLclampf, green : GLclampf, blue : GLclampf, alpha : GLclampf) -> Unit =
  #| (self, red, green, blue, alpha) => self.blendColor(red, green, blue, alpha)

pub extern "js" fn WebGL2RenderingContext::blend_equation(self : WebGL2RenderingContext, mode : GLenum) -> Unit =
  #| (self, mode) => self.blendEquation(mode)

pub extern "js" fn WebGL2RenderingContext::blend_equation_separate(self : WebGL2RenderingContext, mode_r_g_b : GLenum, mode_alpha : GLenum) -> Unit =
  #| (self, mode_r_g_b, mode_alpha) => self.blendEquationSeparate(mode_r_g_b, mode_alpha)

pub extern "js" fn WebGL2RenderingContext::blend_func(self : WebGL2RenderingContext, sfactor : GLenum, dfactor : GLenum) -> Unit =
  #| (self, sfactor, dfactor) => self.blendFunc(sfactor, dfactor)

pub extern "js" fn WebGL2RenderingContext::blend_func_separate(self : WebGL2RenderingContext, src_r_g_b : GLenum, dst_r_g_b : GLenum, src_alpha : GLenum, dst_alpha : GLenum) -> Unit =
  #| (self, src_r_g_b, dst_r_g_b, src_alpha, dst_alpha) => self.blendFuncSeparate(src_r_g_b, dst_r_g_b, src_alpha, dst_alpha)

pub extern "js" fn WebGL2RenderingContext::check_framebuffer_status(self : WebGL2RenderingContext, target : GLenum) -> GLenum =
  #| (self, target) => self.checkFramebufferStatus(target)

pub extern "js" fn WebGL2RenderingContext::clear(self : WebGL2RenderingContext, mask : GLbitfield) -> Unit =
  #| (self, mask) => self.clear(mask)

pub extern "js" fn WebGL2RenderingContext::clear_color(self : WebGL2RenderingContext, red : GLclampf, green : GLclampf, blue : GLclampf, alpha : GLclampf) -> Unit =
  #| (self, red, green, blue, alpha) => self.clearColor(red, green, blue, alpha)

pub extern "js" fn WebGL2RenderingContext::clear_depth(self : WebGL2RenderingContext, depth : GLclampf) -> Unit =
  #| (self, depth) => self.clearDepth(depth)

pub extern "js" fn WebGL2RenderingContext::clear_stencil(self : WebGL2RenderingContext, s : GLint) -> Unit =
  #| (self, s) => self.clearStencil(s)

pub extern "js" fn WebGL2RenderingContext::color_mask(self : WebGL2RenderingContext, red : GLboolean, green : GLboolean, blue : GLboolean, alpha : GLboolean) -> Unit =
  #| (self, red, green, blue, alpha) => self.colorMask(red, green, blue, alpha)

pub extern "js" fn WebGL2RenderingContext::compile_shader(self : WebGL2RenderingContext, shader : WebGLShader) -> Unit =
  #| (self, shader) => self.compileShader(shader)

pub extern "js" fn WebGL2RenderingContext::copy_tex_image2_d(self : WebGL2RenderingContext, target : GLenum, level : GLint, internalformat : GLenum, x : GLint, y : GLint, width : GLsizei, height : GLsizei, border : GLint) -> Unit =
  #| (self, target, level, internalformat, x, y, width, height, border) => self.copyTexImage2D(target, level, internalformat, x, y, width, height, border)

pub extern "js" fn WebGL2RenderingContext::copy_tex_sub_image2_d(self : WebGL2RenderingContext, target : GLenum, level : GLint, xoffset : GLint, yoffset : GLint, x : GLint, y : GLint, width : GLsizei, height : GLsizei) -> Unit =
  #| (self, target, level, xoffset, yoffset, x, y, width, height) => self.copyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height)

pub extern "js" fn WebGL2RenderingContext::create_buffer(self : WebGL2RenderingContext) -> WebGLBuffer =
  #| (self) => self.createBuffer()

pub extern "js" fn WebGL2RenderingContext::create_framebuffer(self : WebGL2RenderingContext) -> WebGLFramebuffer =
  #| (self) => self.createFramebuffer()

pub extern "js" fn WebGL2RenderingContext::create_program(self : WebGL2RenderingContext) -> WebGLProgram =
  #| (self) => self.createProgram()

pub extern "js" fn WebGL2RenderingContext::create_renderbuffer(self : WebGL2RenderingContext) -> WebGLRenderbuffer =
  #| (self) => self.createRenderbuffer()

pub extern "js" fn WebGL2RenderingContext::create_shader(self : WebGL2RenderingContext, type_ : GLenum) -> WebGLShader? =
  #| (self, type_) => self.createShader(type_)

pub extern "js" fn WebGL2RenderingContext::create_texture(self : WebGL2RenderingContext) -> WebGLTexture =
  #| (self) => self.createTexture()

pub extern "js" fn WebGL2RenderingContext::cull_face(self : WebGL2RenderingContext, mode : GLenum) -> Unit =
  #| (self, mode) => self.cullFace(mode)

pub extern "js" fn WebGL2RenderingContext::delete_buffer(self : WebGL2RenderingContext, buffer : WebGLBuffer?) -> Unit =
  #| (self, buffer) => self.deleteBuffer(buffer)

pub extern "js" fn WebGL2RenderingContext::delete_framebuffer(self : WebGL2RenderingContext, framebuffer : WebGLFramebuffer?) -> Unit =
  #| (self, framebuffer) => self.deleteFramebuffer(framebuffer)

pub extern "js" fn WebGL2RenderingContext::delete_program(self : WebGL2RenderingContext, program : WebGLProgram?) -> Unit =
  #| (self, program) => self.deleteProgram(program)

pub extern "js" fn WebGL2RenderingContext::delete_renderbuffer(self : WebGL2RenderingContext, renderbuffer : WebGLRenderbuffer?) -> Unit =
  #| (self, renderbuffer) => self.deleteRenderbuffer(renderbuffer)

pub extern "js" fn WebGL2RenderingContext::delete_shader(self : WebGL2RenderingContext, shader : WebGLShader?) -> Unit =
  #| (self, shader) => self.deleteShader(shader)

pub extern "js" fn WebGL2RenderingContext::delete_texture(self : WebGL2RenderingContext, texture : WebGLTexture?) -> Unit =
  #| (self, texture) => self.deleteTexture(texture)

pub extern "js" fn WebGL2RenderingContext::depth_func(self : WebGL2RenderingContext, func : GLenum) -> Unit =
  #| (self, func) => self.depthFunc(func)

pub extern "js" fn WebGL2RenderingContext::depth_mask(self : WebGL2RenderingContext, flag : GLboolean) -> Unit =
  #| (self, flag) => self.depthMask(flag)

pub extern "js" fn WebGL2RenderingContext::depth_range(self : WebGL2RenderingContext, z_near : GLclampf, z_far : GLclampf) -> Unit =
  #| (self, z_near, z_far) => self.depthRange(z_near, z_far)

pub extern "js" fn WebGL2RenderingContext::detach_shader(self : WebGL2RenderingContext, program : WebGLProgram, shader : WebGLShader) -> Unit =
  #| (self, program, shader) => self.detachShader(program, shader)

pub extern "js" fn WebGL2RenderingContext::disable(self : WebGL2RenderingContext, cap : GLenum) -> Unit =
  #| (self, cap) => self.disable(cap)

pub extern "js" fn WebGL2RenderingContext::disable_vertex_attrib_array(self : WebGL2RenderingContext, index : GLuint) -> Unit =
  #| (self, index) => self.disableVertexAttribArray(index)

pub extern "js" fn WebGL2RenderingContext::draw_arrays(self : WebGL2RenderingContext, mode : GLenum, first : GLint, count : GLsizei) -> Unit =
  #| (self, mode, first, count) => self.drawArrays(mode, first, count)

pub extern "js" fn WebGL2RenderingContext::draw_elements(self : WebGL2RenderingContext, mode : GLenum, count : GLsizei, type_ : GLenum, offset : GLintptr) -> Unit =
  #| (self, mode, count, type_, offset) => self.drawElements(mode, count, type_, offset)

pub extern "js" fn WebGL2RenderingContext::enable(self : WebGL2RenderingContext, cap : GLenum) -> Unit =
  #| (self, cap) => self.enable(cap)

pub extern "js" fn WebGL2RenderingContext::enable_vertex_attrib_array(self : WebGL2RenderingContext, index : GLuint) -> Unit =
  #| (self, index) => self.enableVertexAttribArray(index)

pub extern "js" fn WebGL2RenderingContext::finish(self : WebGL2RenderingContext) -> Unit =
  #| (self) => self.finish()

pub extern "js" fn WebGL2RenderingContext::flush(self : WebGL2RenderingContext) -> Unit =
  #| (self) => self.flush()

pub extern "js" fn WebGL2RenderingContext::framebuffer_renderbuffer(self : WebGL2RenderingContext, target : GLenum, attachment : GLenum, renderbuffertarget : GLenum, renderbuffer : WebGLRenderbuffer?) -> Unit =
  #| (self, target, attachment, renderbuffertarget, renderbuffer) => self.framebufferRenderbuffer(target, attachment, renderbuffertarget, renderbuffer)

pub extern "js" fn WebGL2RenderingContext::framebuffer_texture2_d(self : WebGL2RenderingContext, target : GLenum, attachment : GLenum, textarget : GLenum, texture : WebGLTexture?, level : GLint) -> Unit =
  #| (self, target, attachment, textarget, texture, level) => self.framebufferTexture2D(target, attachment, textarget, texture, level)

pub extern "js" fn WebGL2RenderingContext::front_face(self : WebGL2RenderingContext, mode : GLenum) -> Unit =
  #| (self, mode) => self.frontFace(mode)

pub extern "js" fn WebGL2RenderingContext::generate_mipmap(self : WebGL2RenderingContext, target : GLenum) -> Unit =
  #| (self, target) => self.generateMipmap(target)

pub extern "js" fn WebGL2RenderingContext::get_active_attrib(self : WebGL2RenderingContext, program : WebGLProgram, index : GLuint) -> WebGLActiveInfo? =
  #| (self, program, index) => self.getActiveAttrib(program, index)

pub extern "js" fn WebGL2RenderingContext::get_active_uniform(self : WebGL2RenderingContext, program : WebGLProgram, index : GLuint) -> WebGLActiveInfo? =
  #| (self, program, index) => self.getActiveUniform(program, index)

pub extern "js" fn WebGL2RenderingContext::get_attached_shaders(self : WebGL2RenderingContext, program : WebGLProgram) -> JsValue =
  #| (self, program) => self.getAttachedShaders(program)

pub extern "js" fn WebGL2RenderingContext::get_attrib_location(self : WebGL2RenderingContext, program : WebGLProgram, name : String) -> GLint =
  #| (self, program, name) => self.getAttribLocation(program, name)

pub extern "js" fn WebGL2RenderingContext::get_buffer_parameter(self : WebGL2RenderingContext, target : GLenum, pname : GLenum) -> JsValue =
  #| (self, target, pname) => self.getBufferParameter(target, pname)

pub extern "js" fn WebGL2RenderingContext::get_parameter(self : WebGL2RenderingContext, pname : GLenum) -> JsValue =
  #| (self, pname) => self.getParameter(pname)

pub extern "js" fn WebGL2RenderingContext::get_error(self : WebGL2RenderingContext) -> GLenum =
  #| (self) => self.getError()

pub extern "js" fn WebGL2RenderingContext::get_framebuffer_attachment_parameter(self : WebGL2RenderingContext, target : GLenum, attachment : GLenum, pname : GLenum) -> JsValue =
  #| (self, target, attachment, pname) => self.getFramebufferAttachmentParameter(target, attachment, pname)

pub extern "js" fn WebGL2RenderingContext::get_program_parameter(self : WebGL2RenderingContext, program : WebGLProgram, pname : GLenum) -> JsValue =
  #| (self, program, pname) => self.getProgramParameter(program, pname)

pub extern "js" fn WebGL2RenderingContext::get_program_info_log(self : WebGL2RenderingContext, program : WebGLProgram) -> String? =
  #| (self, program) => self.getProgramInfoLog(program)

pub extern "js" fn WebGL2RenderingContext::get_renderbuffer_parameter(self : WebGL2RenderingContext, target : GLenum, pname : GLenum) -> JsValue =
  #| (self, target, pname) => self.getRenderbufferParameter(target, pname)

pub extern "js" fn WebGL2RenderingContext::get_shader_parameter(self : WebGL2RenderingContext, shader : WebGLShader, pname : GLenum) -> JsValue =
  #| (self, shader, pname) => self.getShaderParameter(shader, pname)

pub extern "js" fn WebGL2RenderingContext::get_shader_precision_format(self : WebGL2RenderingContext, shadertype : GLenum, precisiontype : GLenum) -> WebGLShaderPrecisionFormat? =
  #| (self, shadertype, precisiontype) => self.getShaderPrecisionFormat(shadertype, precisiontype)

pub extern "js" fn WebGL2RenderingContext::get_shader_info_log(self : WebGL2RenderingContext, shader : WebGLShader) -> String? =
  #| (self, shader) => self.getShaderInfoLog(shader)

pub extern "js" fn WebGL2RenderingContext::get_shader_source(self : WebGL2RenderingContext, shader : WebGLShader) -> String? =
  #| (self, shader) => self.getShaderSource(shader)

pub extern "js" fn WebGL2RenderingContext::get_tex_parameter(self : WebGL2RenderingContext, target : GLenum, pname : GLenum) -> JsValue =
  #| (self, target, pname) => self.getTexParameter(target, pname)

pub extern "js" fn WebGL2RenderingContext::get_uniform(self : WebGL2RenderingContext, program : WebGLProgram, location : WebGLUniformLocation) -> JsValue =
  #| (self, program, location) => self.getUniform(program, location)

pub extern "js" fn WebGL2RenderingContext::get_uniform_location(self : WebGL2RenderingContext, program : WebGLProgram, name : String) -> WebGLUniformLocation? =
  #| (self, program, name) => self.getUniformLocation(program, name)

pub extern "js" fn WebGL2RenderingContext::get_vertex_attrib(self : WebGL2RenderingContext, index : GLuint, pname : GLenum) -> JsValue =
  #| (self, index, pname) => self.getVertexAttrib(index, pname)

pub extern "js" fn WebGL2RenderingContext::get_vertex_attrib_offset(self : WebGL2RenderingContext, index : GLuint, pname : GLenum) -> GLintptr =
  #| (self, index, pname) => self.getVertexAttribOffset(index, pname)

pub extern "js" fn WebGL2RenderingContext::hint(self : WebGL2RenderingContext, target : GLenum, mode : GLenum) -> Unit =
  #| (self, target, mode) => self.hint(target, mode)

pub extern "js" fn WebGL2RenderingContext::is_buffer(self : WebGL2RenderingContext, buffer : WebGLBuffer?) -> GLboolean =
  #| (self, buffer) => self.isBuffer(buffer)

pub extern "js" fn WebGL2RenderingContext::is_enabled(self : WebGL2RenderingContext, cap : GLenum) -> GLboolean =
  #| (self, cap) => self.isEnabled(cap)

pub extern "js" fn WebGL2RenderingContext::is_framebuffer(self : WebGL2RenderingContext, framebuffer : WebGLFramebuffer?) -> GLboolean =
  #| (self, framebuffer) => self.isFramebuffer(framebuffer)

pub extern "js" fn WebGL2RenderingContext::is_program(self : WebGL2RenderingContext, program : WebGLProgram?) -> GLboolean =
  #| (self, program) => self.isProgram(program)

pub extern "js" fn WebGL2RenderingContext::is_renderbuffer(self : WebGL2RenderingContext, renderbuffer : WebGLRenderbuffer?) -> GLboolean =
  #| (self, renderbuffer) => self.isRenderbuffer(renderbuffer)

pub extern "js" fn WebGL2RenderingContext::is_shader(self : WebGL2RenderingContext, shader : WebGLShader?) -> GLboolean =
  #| (self, shader) => self.isShader(shader)

pub extern "js" fn WebGL2RenderingContext::is_texture(self : WebGL2RenderingContext, texture : WebGLTexture?) -> GLboolean =
  #| (self, texture) => self.isTexture(texture)

pub extern "js" fn WebGL2RenderingContext::line_width(self : WebGL2RenderingContext, width : GLfloat) -> Unit =
  #| (self, width) => self.lineWidth(width)

pub extern "js" fn WebGL2RenderingContext::link_program(self : WebGL2RenderingContext, program : WebGLProgram) -> Unit =
  #| (self, program) => self.linkProgram(program)

pub extern "js" fn WebGL2RenderingContext::pixel_storei(self : WebGL2RenderingContext, pname : GLenum, param : GLint) -> Unit =
  #| (self, pname, param) => self.pixelStorei(pname, param)

pub extern "js" fn WebGL2RenderingContext::polygon_offset(self : WebGL2RenderingContext, factor : GLfloat, units : GLfloat) -> Unit =
  #| (self, factor, units) => self.polygonOffset(factor, units)

pub extern "js" fn WebGL2RenderingContext::renderbuffer_storage(self : WebGL2RenderingContext, target : GLenum, internalformat : GLenum, width : GLsizei, height : GLsizei) -> Unit =
  #| (self, target, internalformat, width, height) => self.renderbufferStorage(target, internalformat, width, height)

pub extern "js" fn WebGL2RenderingContext::sample_coverage(self : WebGL2RenderingContext, value : GLclampf, invert : GLboolean) -> Unit =
  #| (self, value, invert) => self.sampleCoverage(value, invert)

pub extern "js" fn WebGL2RenderingContext::scissor(self : WebGL2RenderingContext, x : GLint, y : GLint, width : GLsizei, height : GLsizei) -> Unit =
  #| (self, x, y, width, height) => self.scissor(x, y, width, height)

pub extern "js" fn WebGL2RenderingContext::shader_source(self : WebGL2RenderingContext, shader : WebGLShader, source : String) -> Unit =
  #| (self, shader, source) => self.shaderSource(shader, source)

pub extern "js" fn WebGL2RenderingContext::stencil_func(self : WebGL2RenderingContext, func : GLenum, ref_ : GLint, mask : GLuint) -> Unit =
  #| (self, func, ref_, mask) => self.stencilFunc(func, ref_, mask)

pub extern "js" fn WebGL2RenderingContext::stencil_func_separate(self : WebGL2RenderingContext, face : GLenum, func : GLenum, ref_ : GLint, mask : GLuint) -> Unit =
  #| (self, face, func, ref_, mask) => self.stencilFuncSeparate(face, func, ref_, mask)

pub extern "js" fn WebGL2RenderingContext::stencil_mask(self : WebGL2RenderingContext, mask : GLuint) -> Unit =
  #| (self, mask) => self.stencilMask(mask)

pub extern "js" fn WebGL2RenderingContext::stencil_mask_separate(self : WebGL2RenderingContext, face : GLenum, mask : GLuint) -> Unit =
  #| (self, face, mask) => self.stencilMaskSeparate(face, mask)

pub extern "js" fn WebGL2RenderingContext::stencil_op(self : WebGL2RenderingContext, fail : GLenum, zfail : GLenum, zpass : GLenum) -> Unit =
  #| (self, fail, zfail, zpass) => self.stencilOp(fail, zfail, zpass)

pub extern "js" fn WebGL2RenderingContext::stencil_op_separate(self : WebGL2RenderingContext, face : GLenum, fail : GLenum, zfail : GLenum, zpass : GLenum) -> Unit =
  #| (self, face, fail, zfail, zpass) => self.stencilOpSeparate(face, fail, zfail, zpass)

pub extern "js" fn WebGL2RenderingContext::tex_parameterf(self : WebGL2RenderingContext, target : GLenum, pname : GLenum, param : GLfloat) -> Unit =
  #| (self, target, pname, param) => self.texParameterf(target, pname, param)

pub extern "js" fn WebGL2RenderingContext::tex_parameteri(self : WebGL2RenderingContext, target : GLenum, pname : GLenum, param : GLint) -> Unit =
  #| (self, target, pname, param) => self.texParameteri(target, pname, param)

pub extern "js" fn WebGL2RenderingContext::uniform1f(self : WebGL2RenderingContext, location : WebGLUniformLocation?, x : GLfloat) -> Unit =
  #| (self, location, x) => self.uniform1f(location, x)

pub extern "js" fn WebGL2RenderingContext::uniform2f(self : WebGL2RenderingContext, location : WebGLUniformLocation?, x : GLfloat, y : GLfloat) -> Unit =
  #| (self, location, x, y) => self.uniform2f(location, x, y)

pub extern "js" fn WebGL2RenderingContext::uniform3f(self : WebGL2RenderingContext, location : WebGLUniformLocation?, x : GLfloat, y : GLfloat, z : GLfloat) -> Unit =
  #| (self, location, x, y, z) => self.uniform3f(location, x, y, z)

pub extern "js" fn WebGL2RenderingContext::uniform4f(self : WebGL2RenderingContext, location : WebGLUniformLocation?, x : GLfloat, y : GLfloat, z : GLfloat, w : GLfloat) -> Unit =
  #| (self, location, x, y, z, w) => self.uniform4f(location, x, y, z, w)

pub extern "js" fn WebGL2RenderingContext::uniform1i(self : WebGL2RenderingContext, location : WebGLUniformLocation?, x : GLint) -> Unit =
  #| (self, location, x) => self.uniform1i(location, x)

pub extern "js" fn WebGL2RenderingContext::uniform2i(self : WebGL2RenderingContext, location : WebGLUniformLocation?, x : GLint, y : GLint) -> Unit =
  #| (self, location, x, y) => self.uniform2i(location, x, y)

pub extern "js" fn WebGL2RenderingContext::uniform3i(self : WebGL2RenderingContext, location : WebGLUniformLocation?, x : GLint, y : GLint, z : GLint) -> Unit =
  #| (self, location, x, y, z) => self.uniform3i(location, x, y, z)

pub extern "js" fn WebGL2RenderingContext::uniform4i(self : WebGL2RenderingContext, location : WebGLUniformLocation?, x : GLint, y : GLint, z : GLint, w : GLint) -> Unit =
  #| (self, location, x, y, z, w) => self.uniform4i(location, x, y, z, w)

pub extern "js" fn WebGL2RenderingContext::use_program(self : WebGL2RenderingContext, program : WebGLProgram?) -> Unit =
  #| (self, program) => self.useProgram(program)

pub extern "js" fn WebGL2RenderingContext::validate_program(self : WebGL2RenderingContext, program : WebGLProgram) -> Unit =
  #| (self, program) => self.validateProgram(program)

pub extern "js" fn WebGL2RenderingContext::vertex_attrib1f(self : WebGL2RenderingContext, index : GLuint, x : GLfloat) -> Unit =
  #| (self, index, x) => self.vertexAttrib1f(index, x)

pub extern "js" fn WebGL2RenderingContext::vertex_attrib2f(self : WebGL2RenderingContext, index : GLuint, x : GLfloat, y : GLfloat) -> Unit =
  #| (self, index, x, y) => self.vertexAttrib2f(index, x, y)

pub extern "js" fn WebGL2RenderingContext::vertex_attrib3f(self : WebGL2RenderingContext, index : GLuint, x : GLfloat, y : GLfloat, z : GLfloat) -> Unit =
  #| (self, index, x, y, z) => self.vertexAttrib3f(index, x, y, z)

pub extern "js" fn WebGL2RenderingContext::vertex_attrib4f(self : WebGL2RenderingContext, index : GLuint, x : GLfloat, y : GLfloat, z : GLfloat, w : GLfloat) -> Unit =
  #| (self, index, x, y, z, w) => self.vertexAttrib4f(index, x, y, z, w)

pub extern "js" fn WebGL2RenderingContext::vertex_attrib1fv(self : WebGL2RenderingContext, index : GLuint, values : Float32List) -> Unit =
  #| (self, index, values) => self.vertexAttrib1fv(index, values)

pub extern "js" fn WebGL2RenderingContext::vertex_attrib2fv(self : WebGL2RenderingContext, index : GLuint, values : Float32List) -> Unit =
  #| (self, index, values) => self.vertexAttrib2fv(index, values)

pub extern "js" fn WebGL2RenderingContext::vertex_attrib3fv(self : WebGL2RenderingContext, index : GLuint, values : Float32List) -> Unit =
  #| (self, index, values) => self.vertexAttrib3fv(index, values)

pub extern "js" fn WebGL2RenderingContext::vertex_attrib4fv(self : WebGL2RenderingContext, index : GLuint, values : Float32List) -> Unit =
  #| (self, index, values) => self.vertexAttrib4fv(index, values)

pub extern "js" fn WebGL2RenderingContext::vertex_attrib_pointer(self : WebGL2RenderingContext, index : GLuint, size : GLint, type_ : GLenum, normalized : GLboolean, stride : GLsizei, offset : GLintptr) -> Unit =
  #| (self, index, size, type_, normalized, stride, offset) => self.vertexAttribPointer(index, size, type_, normalized, stride, offset)

pub extern "js" fn WebGL2RenderingContext::viewport(self : WebGL2RenderingContext, x : GLint, y : GLint, width : GLsizei, height : GLsizei) -> Unit =
  #| (self, x, y, width, height) => self.viewport(x, y, width, height)

pub extern "js" fn WebGL2RenderingContext::make_x_r_compatible(self : WebGL2RenderingContext) -> JsValue =
  #| (self) => self.makeXRCompatible()

pub extern "js" fn WebGL2RenderingContext::copy_buffer_sub_data(self : WebGL2RenderingContext, read_target : GLenum, write_target : GLenum, read_offset : GLintptr, write_offset : GLintptr, size : GLsizeiptr) -> Unit =
  #| (self, read_target, write_target, read_offset, write_offset, size) => self.copyBufferSubData(read_target, write_target, read_offset, write_offset, size)

pub extern "js" fn WebGL2RenderingContext::get_buffer_sub_data(self : WebGL2RenderingContext, target : GLenum, src_byte_offset : GLintptr, dst_buffer : ArrayBufferView, dst_offset : Int64, length : GLuint) -> Unit =
  #| (self, target, src_byte_offset, dst_buffer, dst_offset, length) => self.getBufferSubData(target, src_byte_offset, dst_buffer, dst_offset, length)

pub extern "js" fn WebGL2RenderingContext::blit_framebuffer(self : WebGL2RenderingContext, src_x0 : GLint, src_y0 : GLint, src_x1 : GLint, src_y1 : GLint, dst_x0 : GLint, dst_y0 : GLint, dst_x1 : GLint, dst_y1 : GLint, mask : GLbitfield, filter : GLenum) -> Unit =
  #| (self, src_x0, src_y0, src_x1, src_y1, dst_x0, dst_y0, dst_x1, dst_y1, mask, filter) => self.blitFramebuffer(src_x0, src_y0, src_x1, src_y1, dst_x0, dst_y0, dst_x1, dst_y1, mask, filter)

pub extern "js" fn WebGL2RenderingContext::framebuffer_texture_layer(self : WebGL2RenderingContext, target : GLenum, attachment : GLenum, texture : WebGLTexture?, level : GLint, layer : GLint) -> Unit =
  #| (self, target, attachment, texture, level, layer) => self.framebufferTextureLayer(target, attachment, texture, level, layer)

pub extern "js" fn WebGL2RenderingContext::invalidate_framebuffer(self : WebGL2RenderingContext, target : GLenum, attachments : JsValue) -> Unit =
  #| (self, target, attachments) => self.invalidateFramebuffer(target, attachments)

pub extern "js" fn WebGL2RenderingContext::invalidate_sub_framebuffer(self : WebGL2RenderingContext, target : GLenum, attachments : JsValue, x : GLint, y : GLint, width : GLsizei, height : GLsizei) -> Unit =
  #| (self, target, attachments, x, y, width, height) => self.invalidateSubFramebuffer(target, attachments, x, y, width, height)

pub extern "js" fn WebGL2RenderingContext::read_buffer(self : WebGL2RenderingContext, src : GLenum) -> Unit =
  #| (self, src) => self.readBuffer(src)

pub extern "js" fn WebGL2RenderingContext::get_internalformat_parameter(self : WebGL2RenderingContext, target : GLenum, internalformat : GLenum, pname : GLenum) -> JsValue =
  #| (self, target, internalformat, pname) => self.getInternalformatParameter(target, internalformat, pname)

pub extern "js" fn WebGL2RenderingContext::renderbuffer_storage_multisample(self : WebGL2RenderingContext, target : GLenum, samples : GLsizei, internalformat : GLenum, width : GLsizei, height : GLsizei) -> Unit =
  #| (self, target, samples, internalformat, width, height) => self.renderbufferStorageMultisample(target, samples, internalformat, width, height)

pub extern "js" fn WebGL2RenderingContext::tex_storage2_d(self : WebGL2RenderingContext, target : GLenum, levels : GLsizei, internalformat : GLenum, width : GLsizei, height : GLsizei) -> Unit =
  #| (self, target, levels, internalformat, width, height) => self.texStorage2D(target, levels, internalformat, width, height)

pub extern "js" fn WebGL2RenderingContext::tex_storage3_d(self : WebGL2RenderingContext, target : GLenum, levels : GLsizei, internalformat : GLenum, width : GLsizei, height : GLsizei, depth : GLsizei) -> Unit =
  #| (self, target, levels, internalformat, width, height, depth) => self.texStorage3D(target, levels, internalformat, width, height, depth)

pub extern "js" fn WebGL2RenderingContext::tex_image3_d(self : WebGL2RenderingContext, target : GLenum, level : GLint, internalformat : GLint, width : GLsizei, height : GLsizei, depth : GLsizei, border : GLint, format : GLenum, type_ : GLenum, pbo_offset : GLintptr) -> Unit =
  #| (self, target, level, internalformat, width, height, depth, border, format, type_, pbo_offset) => self.texImage3D(target, level, internalformat, width, height, depth, border, format, type_, pbo_offset)

pub extern "js" fn WebGL2RenderingContext::tex_sub_image3_d(self : WebGL2RenderingContext, target : GLenum, level : GLint, xoffset : GLint, yoffset : GLint, zoffset : GLint, width : GLsizei, height : GLsizei, depth : GLsizei, format : GLenum, type_ : GLenum, pbo_offset : GLintptr) -> Unit =
  #| (self, target, level, xoffset, yoffset, zoffset, width, height, depth, format, type_, pbo_offset) => self.texSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, type_, pbo_offset)

pub extern "js" fn WebGL2RenderingContext::copy_tex_sub_image3_d(self : WebGL2RenderingContext, target : GLenum, level : GLint, xoffset : GLint, yoffset : GLint, zoffset : GLint, x : GLint, y : GLint, width : GLsizei, height : GLsizei) -> Unit =
  #| (self, target, level, xoffset, yoffset, zoffset, x, y, width, height) => self.copyTexSubImage3D(target, level, xoffset, yoffset, zoffset, x, y, width, height)

pub extern "js" fn WebGL2RenderingContext::compressed_tex_image3_d(self : WebGL2RenderingContext, target : GLenum, level : GLint, internalformat : GLenum, width : GLsizei, height : GLsizei, depth : GLsizei, border : GLint, image_size : GLsizei, offset : GLintptr) -> Unit =
  #| (self, target, level, internalformat, width, height, depth, border, image_size, offset) => self.compressedTexImage3D(target, level, internalformat, width, height, depth, border, image_size, offset)

pub extern "js" fn WebGL2RenderingContext::compressed_tex_sub_image3_d(self : WebGL2RenderingContext, target : GLenum, level : GLint, xoffset : GLint, yoffset : GLint, zoffset : GLint, width : GLsizei, height : GLsizei, depth : GLsizei, format : GLenum, image_size : GLsizei, offset : GLintptr) -> Unit =
  #| (self, target, level, xoffset, yoffset, zoffset, width, height, depth, format, image_size, offset) => self.compressedTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, image_size, offset)

pub extern "js" fn WebGL2RenderingContext::get_frag_data_location(self : WebGL2RenderingContext, program : WebGLProgram, name : String) -> GLint =
  #| (self, program, name) => self.getFragDataLocation(program, name)

pub extern "js" fn WebGL2RenderingContext::uniform1ui(self : WebGL2RenderingContext, location : WebGLUniformLocation?, v0 : GLuint) -> Unit =
  #| (self, location, v0) => self.uniform1ui(location, v0)

pub extern "js" fn WebGL2RenderingContext::uniform2ui(self : WebGL2RenderingContext, location : WebGLUniformLocation?, v0 : GLuint, v1 : GLuint) -> Unit =
  #| (self, location, v0, v1) => self.uniform2ui(location, v0, v1)

pub extern "js" fn WebGL2RenderingContext::uniform3ui(self : WebGL2RenderingContext, location : WebGLUniformLocation?, v0 : GLuint, v1 : GLuint, v2 : GLuint) -> Unit =
  #| (self, location, v0, v1, v2) => self.uniform3ui(location, v0, v1, v2)

pub extern "js" fn WebGL2RenderingContext::uniform4ui(self : WebGL2RenderingContext, location : WebGLUniformLocation?, v0 : GLuint, v1 : GLuint, v2 : GLuint, v3 : GLuint) -> Unit =
  #| (self, location, v0, v1, v2, v3) => self.uniform4ui(location, v0, v1, v2, v3)

pub extern "js" fn WebGL2RenderingContext::uniform1uiv(self : WebGL2RenderingContext, location : WebGLUniformLocation?, data : Uint32List, src_offset : Int64, src_length : GLuint) -> Unit =
  #| (self, location, data, src_offset, src_length) => self.uniform1uiv(location, data, src_offset, src_length)

pub extern "js" fn WebGL2RenderingContext::uniform2uiv(self : WebGL2RenderingContext, location : WebGLUniformLocation?, data : Uint32List, src_offset : Int64, src_length : GLuint) -> Unit =
  #| (self, location, data, src_offset, src_length) => self.uniform2uiv(location, data, src_offset, src_length)

pub extern "js" fn WebGL2RenderingContext::uniform3uiv(self : WebGL2RenderingContext, location : WebGLUniformLocation?, data : Uint32List, src_offset : Int64, src_length : GLuint) -> Unit =
  #| (self, location, data, src_offset, src_length) => self.uniform3uiv(location, data, src_offset, src_length)

pub extern "js" fn WebGL2RenderingContext::uniform4uiv(self : WebGL2RenderingContext, location : WebGLUniformLocation?, data : Uint32List, src_offset : Int64, src_length : GLuint) -> Unit =
  #| (self, location, data, src_offset, src_length) => self.uniform4uiv(location, data, src_offset, src_length)

pub extern "js" fn WebGL2RenderingContext::uniform_matrix3x2fv(self : WebGL2RenderingContext, location : WebGLUniformLocation?, transpose : GLboolean, data : Float32List, src_offset : Int64, src_length : GLuint) -> Unit =
  #| (self, location, transpose, data, src_offset, src_length) => self.uniformMatrix3x2fv(location, transpose, data, src_offset, src_length)

pub extern "js" fn WebGL2RenderingContext::uniform_matrix4x2fv(self : WebGL2RenderingContext, location : WebGLUniformLocation?, transpose : GLboolean, data : Float32List, src_offset : Int64, src_length : GLuint) -> Unit =
  #| (self, location, transpose, data, src_offset, src_length) => self.uniformMatrix4x2fv(location, transpose, data, src_offset, src_length)

pub extern "js" fn WebGL2RenderingContext::uniform_matrix2x3fv(self : WebGL2RenderingContext, location : WebGLUniformLocation?, transpose : GLboolean, data : Float32List, src_offset : Int64, src_length : GLuint) -> Unit =
  #| (self, location, transpose, data, src_offset, src_length) => self.uniformMatrix2x3fv(location, transpose, data, src_offset, src_length)

pub extern "js" fn WebGL2RenderingContext::uniform_matrix4x3fv(self : WebGL2RenderingContext, location : WebGLUniformLocation?, transpose : GLboolean, data : Float32List, src_offset : Int64, src_length : GLuint) -> Unit =
  #| (self, location, transpose, data, src_offset, src_length) => self.uniformMatrix4x3fv(location, transpose, data, src_offset, src_length)

pub extern "js" fn WebGL2RenderingContext::uniform_matrix2x4fv(self : WebGL2RenderingContext, location : WebGLUniformLocation?, transpose : GLboolean, data : Float32List, src_offset : Int64, src_length : GLuint) -> Unit =
  #| (self, location, transpose, data, src_offset, src_length) => self.uniformMatrix2x4fv(location, transpose, data, src_offset, src_length)

pub extern "js" fn WebGL2RenderingContext::uniform_matrix3x4fv(self : WebGL2RenderingContext, location : WebGLUniformLocation?, transpose : GLboolean, data : Float32List, src_offset : Int64, src_length : GLuint) -> Unit =
  #| (self, location, transpose, data, src_offset, src_length) => self.uniformMatrix3x4fv(location, transpose, data, src_offset, src_length)

pub extern "js" fn WebGL2RenderingContext::vertex_attrib_i4i(self : WebGL2RenderingContext, index : GLuint, x : GLint, y : GLint, z : GLint, w : GLint) -> Unit =
  #| (self, index, x, y, z, w) => self.vertexAttribI4i(index, x, y, z, w)

pub extern "js" fn WebGL2RenderingContext::vertex_attrib_i4iv(self : WebGL2RenderingContext, index : GLuint, values : Int32List) -> Unit =
  #| (self, index, values) => self.vertexAttribI4iv(index, values)

pub extern "js" fn WebGL2RenderingContext::vertex_attrib_i4ui(self : WebGL2RenderingContext, index : GLuint, x : GLuint, y : GLuint, z : GLuint, w : GLuint) -> Unit =
  #| (self, index, x, y, z, w) => self.vertexAttribI4ui(index, x, y, z, w)

pub extern "js" fn WebGL2RenderingContext::vertex_attrib_i4uiv(self : WebGL2RenderingContext, index : GLuint, values : Uint32List) -> Unit =
  #| (self, index, values) => self.vertexAttribI4uiv(index, values)

pub extern "js" fn WebGL2RenderingContext::vertex_attrib_i_pointer(self : WebGL2RenderingContext, index : GLuint, size : GLint, type_ : GLenum, stride : GLsizei, offset : GLintptr) -> Unit =
  #| (self, index, size, type_, stride, offset) => self.vertexAttribIPointer(index, size, type_, stride, offset)

pub extern "js" fn WebGL2RenderingContext::vertex_attrib_divisor(self : WebGL2RenderingContext, index : GLuint, divisor : GLuint) -> Unit =
  #| (self, index, divisor) => self.vertexAttribDivisor(index, divisor)

pub extern "js" fn WebGL2RenderingContext::draw_arrays_instanced(self : WebGL2RenderingContext, mode : GLenum, first : GLint, count : GLsizei, instance_count : GLsizei) -> Unit =
  #| (self, mode, first, count, instance_count) => self.drawArraysInstanced(mode, first, count, instance_count)

pub extern "js" fn WebGL2RenderingContext::draw_elements_instanced(self : WebGL2RenderingContext, mode : GLenum, count : GLsizei, type_ : GLenum, offset : GLintptr, instance_count : GLsizei) -> Unit =
  #| (self, mode, count, type_, offset, instance_count) => self.drawElementsInstanced(mode, count, type_, offset, instance_count)

pub extern "js" fn WebGL2RenderingContext::draw_range_elements(self : WebGL2RenderingContext, mode : GLenum, start : GLuint, end : GLuint, count : GLsizei, type_ : GLenum, offset : GLintptr) -> Unit =
  #| (self, mode, start, end, count, type_, offset) => self.drawRangeElements(mode, start, end, count, type_, offset)

pub extern "js" fn WebGL2RenderingContext::draw_buffers(self : WebGL2RenderingContext, buffers : JsValue) -> Unit =
  #| (self, buffers) => self.drawBuffers(buffers)

pub extern "js" fn WebGL2RenderingContext::clear_bufferfv(self : WebGL2RenderingContext, buffer : GLenum, drawbuffer : GLint, values : Float32List, src_offset : Int64) -> Unit =
  #| (self, buffer, drawbuffer, values, src_offset) => self.clearBufferfv(buffer, drawbuffer, values, src_offset)

pub extern "js" fn WebGL2RenderingContext::clear_bufferiv(self : WebGL2RenderingContext, buffer : GLenum, drawbuffer : GLint, values : Int32List, src_offset : Int64) -> Unit =
  #| (self, buffer, drawbuffer, values, src_offset) => self.clearBufferiv(buffer, drawbuffer, values, src_offset)

pub extern "js" fn WebGL2RenderingContext::clear_bufferuiv(self : WebGL2RenderingContext, buffer : GLenum, drawbuffer : GLint, values : Uint32List, src_offset : Int64) -> Unit =
  #| (self, buffer, drawbuffer, values, src_offset) => self.clearBufferuiv(buffer, drawbuffer, values, src_offset)

pub extern "js" fn WebGL2RenderingContext::clear_bufferfi(self : WebGL2RenderingContext, buffer : GLenum, drawbuffer : GLint, depth : GLfloat, stencil : GLint) -> Unit =
  #| (self, buffer, drawbuffer, depth, stencil) => self.clearBufferfi(buffer, drawbuffer, depth, stencil)

pub extern "js" fn WebGL2RenderingContext::create_query(self : WebGL2RenderingContext) -> WebGLQuery =
  #| (self) => self.createQuery()

pub extern "js" fn WebGL2RenderingContext::delete_query(self : WebGL2RenderingContext, query : WebGLQuery?) -> Unit =
  #| (self, query) => self.deleteQuery(query)

pub extern "js" fn WebGL2RenderingContext::is_query(self : WebGL2RenderingContext, query : WebGLQuery?) -> GLboolean =
  #| (self, query) => self.isQuery(query)

pub extern "js" fn WebGL2RenderingContext::begin_query(self : WebGL2RenderingContext, target : GLenum, query : WebGLQuery) -> Unit =
  #| (self, target, query) => self.beginQuery(target, query)

pub extern "js" fn WebGL2RenderingContext::end_query(self : WebGL2RenderingContext, target : GLenum) -> Unit =
  #| (self, target) => self.endQuery(target)

pub extern "js" fn WebGL2RenderingContext::get_query(self : WebGL2RenderingContext, target : GLenum, pname : GLenum) -> WebGLQuery? =
  #| (self, target, pname) => self.getQuery(target, pname)

pub extern "js" fn WebGL2RenderingContext::get_query_parameter(self : WebGL2RenderingContext, query : WebGLQuery, pname : GLenum) -> JsValue =
  #| (self, query, pname) => self.getQueryParameter(query, pname)

pub extern "js" fn WebGL2RenderingContext::create_sampler(self : WebGL2RenderingContext) -> WebGLSampler =
  #| (self) => self.createSampler()

pub extern "js" fn WebGL2RenderingContext::delete_sampler(self : WebGL2RenderingContext, sampler : WebGLSampler?) -> Unit =
  #| (self, sampler) => self.deleteSampler(sampler)

pub extern "js" fn WebGL2RenderingContext::is_sampler(self : WebGL2RenderingContext, sampler : WebGLSampler?) -> GLboolean =
  #| (self, sampler) => self.isSampler(sampler)

pub extern "js" fn WebGL2RenderingContext::bind_sampler(self : WebGL2RenderingContext, unit : GLuint, sampler : WebGLSampler?) -> Unit =
  #| (self, unit, sampler) => self.bindSampler(unit, sampler)

pub extern "js" fn WebGL2RenderingContext::sampler_parameteri(self : WebGL2RenderingContext, sampler : WebGLSampler, pname : GLenum, param : GLint) -> Unit =
  #| (self, sampler, pname, param) => self.samplerParameteri(sampler, pname, param)

pub extern "js" fn WebGL2RenderingContext::sampler_parameterf(self : WebGL2RenderingContext, sampler : WebGLSampler, pname : GLenum, param : GLfloat) -> Unit =
  #| (self, sampler, pname, param) => self.samplerParameterf(sampler, pname, param)

pub extern "js" fn WebGL2RenderingContext::get_sampler_parameter(self : WebGL2RenderingContext, sampler : WebGLSampler, pname : GLenum) -> JsValue =
  #| (self, sampler, pname) => self.getSamplerParameter(sampler, pname)

pub extern "js" fn WebGL2RenderingContext::fence_sync(self : WebGL2RenderingContext, condition : GLenum, flags : GLbitfield) -> WebGLSync? =
  #| (self, condition, flags) => self.fenceSync(condition, flags)

pub extern "js" fn WebGL2RenderingContext::is_sync(self : WebGL2RenderingContext, sync : WebGLSync?) -> GLboolean =
  #| (self, sync) => self.isSync(sync)

pub extern "js" fn WebGL2RenderingContext::delete_sync(self : WebGL2RenderingContext, sync : WebGLSync?) -> Unit =
  #| (self, sync) => self.deleteSync(sync)

pub extern "js" fn WebGL2RenderingContext::client_wait_sync(self : WebGL2RenderingContext, sync : WebGLSync, flags : GLbitfield, timeout : GLuint64) -> GLenum =
  #| (self, sync, flags, timeout) => self.clientWaitSync(sync, flags, timeout)

pub extern "js" fn WebGL2RenderingContext::wait_sync(self : WebGL2RenderingContext, sync : WebGLSync, flags : GLbitfield, timeout : GLint64) -> Unit =
  #| (self, sync, flags, timeout) => self.waitSync(sync, flags, timeout)

pub extern "js" fn WebGL2RenderingContext::get_sync_parameter(self : WebGL2RenderingContext, sync : WebGLSync, pname : GLenum) -> JsValue =
  #| (self, sync, pname) => self.getSyncParameter(sync, pname)

pub extern "js" fn WebGL2RenderingContext::create_transform_feedback(self : WebGL2RenderingContext) -> WebGLTransformFeedback =
  #| (self) => self.createTransformFeedback()

pub extern "js" fn WebGL2RenderingContext::delete_transform_feedback(self : WebGL2RenderingContext, tf : WebGLTransformFeedback?) -> Unit =
  #| (self, tf) => self.deleteTransformFeedback(tf)

pub extern "js" fn WebGL2RenderingContext::is_transform_feedback(self : WebGL2RenderingContext, tf : WebGLTransformFeedback?) -> GLboolean =
  #| (self, tf) => self.isTransformFeedback(tf)

pub extern "js" fn WebGL2RenderingContext::bind_transform_feedback(self : WebGL2RenderingContext, target : GLenum, tf : WebGLTransformFeedback?) -> Unit =
  #| (self, target, tf) => self.bindTransformFeedback(target, tf)

pub extern "js" fn WebGL2RenderingContext::begin_transform_feedback(self : WebGL2RenderingContext, primitive_mode : GLenum) -> Unit =
  #| (self, primitive_mode) => self.beginTransformFeedback(primitive_mode)

pub extern "js" fn WebGL2RenderingContext::end_transform_feedback(self : WebGL2RenderingContext) -> Unit =
  #| (self) => self.endTransformFeedback()

pub extern "js" fn WebGL2RenderingContext::transform_feedback_varyings(self : WebGL2RenderingContext, program : WebGLProgram, varyings : JsValue, buffer_mode : GLenum) -> Unit =
  #| (self, program, varyings, buffer_mode) => self.transformFeedbackVaryings(program, varyings, buffer_mode)

pub extern "js" fn WebGL2RenderingContext::get_transform_feedback_varying(self : WebGL2RenderingContext, program : WebGLProgram, index : GLuint) -> WebGLActiveInfo? =
  #| (self, program, index) => self.getTransformFeedbackVarying(program, index)

pub extern "js" fn WebGL2RenderingContext::pause_transform_feedback(self : WebGL2RenderingContext) -> Unit =
  #| (self) => self.pauseTransformFeedback()

pub extern "js" fn WebGL2RenderingContext::resume_transform_feedback(self : WebGL2RenderingContext) -> Unit =
  #| (self) => self.resumeTransformFeedback()

pub extern "js" fn WebGL2RenderingContext::bind_buffer_base(self : WebGL2RenderingContext, target : GLenum, index : GLuint, buffer : WebGLBuffer?) -> Unit =
  #| (self, target, index, buffer) => self.bindBufferBase(target, index, buffer)

pub extern "js" fn WebGL2RenderingContext::bind_buffer_range(self : WebGL2RenderingContext, target : GLenum, index : GLuint, buffer : WebGLBuffer?, offset : GLintptr, size : GLsizeiptr) -> Unit =
  #| (self, target, index, buffer, offset, size) => self.bindBufferRange(target, index, buffer, offset, size)

pub extern "js" fn WebGL2RenderingContext::get_indexed_parameter(self : WebGL2RenderingContext, target : GLenum, index : GLuint) -> JsValue =
  #| (self, target, index) => self.getIndexedParameter(target, index)

pub extern "js" fn WebGL2RenderingContext::get_uniform_indices(self : WebGL2RenderingContext, program : WebGLProgram, uniform_names : JsValue) -> JsValue =
  #| (self, program, uniform_names) => self.getUniformIndices(program, uniform_names)

pub extern "js" fn WebGL2RenderingContext::get_active_uniforms(self : WebGL2RenderingContext, program : WebGLProgram, uniform_indices : JsValue, pname : GLenum) -> JsValue =
  #| (self, program, uniform_indices, pname) => self.getActiveUniforms(program, uniform_indices, pname)

pub extern "js" fn WebGL2RenderingContext::get_uniform_block_index(self : WebGL2RenderingContext, program : WebGLProgram, uniform_block_name : String) -> GLuint =
  #| (self, program, uniform_block_name) => self.getUniformBlockIndex(program, uniform_block_name)

pub extern "js" fn WebGL2RenderingContext::get_active_uniform_block_parameter(self : WebGL2RenderingContext, program : WebGLProgram, uniform_block_index : GLuint, pname : GLenum) -> JsValue =
  #| (self, program, uniform_block_index, pname) => self.getActiveUniformBlockParameter(program, uniform_block_index, pname)

pub extern "js" fn WebGL2RenderingContext::get_active_uniform_block_name(self : WebGL2RenderingContext, program : WebGLProgram, uniform_block_index : GLuint) -> String? =
  #| (self, program, uniform_block_index) => self.getActiveUniformBlockName(program, uniform_block_index)

pub extern "js" fn WebGL2RenderingContext::uniform_block_binding(self : WebGL2RenderingContext, program : WebGLProgram, uniform_block_index : GLuint, uniform_block_binding : GLuint) -> Unit =
  #| (self, program, uniform_block_index, uniform_block_binding) => self.uniformBlockBinding(program, uniform_block_index, uniform_block_binding)

pub extern "js" fn WebGL2RenderingContext::create_vertex_array(self : WebGL2RenderingContext) -> WebGLVertexArrayObject =
  #| (self) => self.createVertexArray()

pub extern "js" fn WebGL2RenderingContext::delete_vertex_array(self : WebGL2RenderingContext, vertex_array : WebGLVertexArrayObject?) -> Unit =
  #| (self, vertex_array) => self.deleteVertexArray(vertex_array)

pub extern "js" fn WebGL2RenderingContext::is_vertex_array(self : WebGL2RenderingContext, vertex_array : WebGLVertexArrayObject?) -> GLboolean =
  #| (self, vertex_array) => self.isVertexArray(vertex_array)

pub extern "js" fn WebGL2RenderingContext::bind_vertex_array(self : WebGL2RenderingContext, array : WebGLVertexArrayObject?) -> Unit =
  #| (self, array) => self.bindVertexArray(array)

pub extern "js" fn WebGL2RenderingContext::buffer_data(self : WebGL2RenderingContext, target : GLenum, size : GLsizeiptr, usage : GLenum) -> Unit =
  #| (self, target, size, usage) => self.bufferData(target, size, usage)

pub extern "js" fn WebGL2RenderingContext::buffer_sub_data(self : WebGL2RenderingContext, target : GLenum, dst_byte_offset : GLintptr, src_data : AllowSharedBufferSource) -> Unit =
  #| (self, target, dst_byte_offset, src_data) => self.bufferSubData(target, dst_byte_offset, src_data)

pub extern "js" fn WebGL2RenderingContext::tex_image2_d(self : WebGL2RenderingContext, target : GLenum, level : GLint, internalformat : GLint, width : GLsizei, height : GLsizei, border : GLint, format : GLenum, type_ : GLenum, pixels : ArrayBufferView?) -> Unit =
  #| (self, target, level, internalformat, width, height, border, format, type_, pixels) => self.texImage2D(target, level, internalformat, width, height, border, format, type_, pixels)

pub extern "js" fn WebGL2RenderingContext::tex_sub_image2_d(self : WebGL2RenderingContext, target : GLenum, level : GLint, xoffset : GLint, yoffset : GLint, width : GLsizei, height : GLsizei, format : GLenum, type_ : GLenum, pixels : ArrayBufferView?) -> Unit =
  #| (self, target, level, xoffset, yoffset, width, height, format, type_, pixels) => self.texSubImage2D(target, level, xoffset, yoffset, width, height, format, type_, pixels)

pub extern "js" fn WebGL2RenderingContext::compressed_tex_image2_d(self : WebGL2RenderingContext, target : GLenum, level : GLint, internalformat : GLenum, width : GLsizei, height : GLsizei, border : GLint, image_size : GLsizei, offset : GLintptr) -> Unit =
  #| (self, target, level, internalformat, width, height, border, image_size, offset) => self.compressedTexImage2D(target, level, internalformat, width, height, border, image_size, offset)

pub extern "js" fn WebGL2RenderingContext::compressed_tex_sub_image2_d(self : WebGL2RenderingContext, target : GLenum, level : GLint, xoffset : GLint, yoffset : GLint, width : GLsizei, height : GLsizei, format : GLenum, image_size : GLsizei, offset : GLintptr) -> Unit =
  #| (self, target, level, xoffset, yoffset, width, height, format, image_size, offset) => self.compressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, image_size, offset)

pub extern "js" fn WebGL2RenderingContext::uniform1fv(self : WebGL2RenderingContext, location : WebGLUniformLocation?, data : Float32List, src_offset : Int64, src_length : GLuint) -> Unit =
  #| (self, location, data, src_offset, src_length) => self.uniform1fv(location, data, src_offset, src_length)

pub extern "js" fn WebGL2RenderingContext::uniform2fv(self : WebGL2RenderingContext, location : WebGLUniformLocation?, data : Float32List, src_offset : Int64, src_length : GLuint) -> Unit =
  #| (self, location, data, src_offset, src_length) => self.uniform2fv(location, data, src_offset, src_length)

pub extern "js" fn WebGL2RenderingContext::uniform3fv(self : WebGL2RenderingContext, location : WebGLUniformLocation?, data : Float32List, src_offset : Int64, src_length : GLuint) -> Unit =
  #| (self, location, data, src_offset, src_length) => self.uniform3fv(location, data, src_offset, src_length)

pub extern "js" fn WebGL2RenderingContext::uniform4fv(self : WebGL2RenderingContext, location : WebGLUniformLocation?, data : Float32List, src_offset : Int64, src_length : GLuint) -> Unit =
  #| (self, location, data, src_offset, src_length) => self.uniform4fv(location, data, src_offset, src_length)

pub extern "js" fn WebGL2RenderingContext::uniform1iv(self : WebGL2RenderingContext, location : WebGLUniformLocation?, data : Int32List, src_offset : Int64, src_length : GLuint) -> Unit =
  #| (self, location, data, src_offset, src_length) => self.uniform1iv(location, data, src_offset, src_length)

pub extern "js" fn WebGL2RenderingContext::uniform2iv(self : WebGL2RenderingContext, location : WebGLUniformLocation?, data : Int32List, src_offset : Int64, src_length : GLuint) -> Unit =
  #| (self, location, data, src_offset, src_length) => self.uniform2iv(location, data, src_offset, src_length)

pub extern "js" fn WebGL2RenderingContext::uniform3iv(self : WebGL2RenderingContext, location : WebGLUniformLocation?, data : Int32List, src_offset : Int64, src_length : GLuint) -> Unit =
  #| (self, location, data, src_offset, src_length) => self.uniform3iv(location, data, src_offset, src_length)

pub extern "js" fn WebGL2RenderingContext::uniform4iv(self : WebGL2RenderingContext, location : WebGLUniformLocation?, data : Int32List, src_offset : Int64, src_length : GLuint) -> Unit =
  #| (self, location, data, src_offset, src_length) => self.uniform4iv(location, data, src_offset, src_length)

pub extern "js" fn WebGL2RenderingContext::uniform_matrix2fv(self : WebGL2RenderingContext, location : WebGLUniformLocation?, transpose : GLboolean, data : Float32List, src_offset : Int64, src_length : GLuint) -> Unit =
  #| (self, location, transpose, data, src_offset, src_length) => self.uniformMatrix2fv(location, transpose, data, src_offset, src_length)

pub extern "js" fn WebGL2RenderingContext::uniform_matrix3fv(self : WebGL2RenderingContext, location : WebGLUniformLocation?, transpose : GLboolean, data : Float32List, src_offset : Int64, src_length : GLuint) -> Unit =
  #| (self, location, transpose, data, src_offset, src_length) => self.uniformMatrix3fv(location, transpose, data, src_offset, src_length)

pub extern "js" fn WebGL2RenderingContext::uniform_matrix4fv(self : WebGL2RenderingContext, location : WebGLUniformLocation?, transpose : GLboolean, data : Float32List, src_offset : Int64, src_length : GLuint) -> Unit =
  #| (self, location, transpose, data, src_offset, src_length) => self.uniformMatrix4fv(location, transpose, data, src_offset, src_length)

pub extern "js" fn WebGL2RenderingContext::read_pixels(self : WebGL2RenderingContext, x : GLint, y : GLint, width : GLsizei, height : GLsizei, format : GLenum, type_ : GLenum, dst_data : ArrayBufferView?) -> Unit =
  #| (self, x, y, width, height, format, type_, dst_data) => self.readPixels(x, y, width, height, format, type_, dst_data)

