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
pub type Uint32List

///|
pub extern "js" fn Uint32List::to_js_value(self : Uint32List) -> JsValue =
  #| (self) => self

///|
/// Create Uint32List from Uint32Array
pub extern "js" fn Uint32List::from_uint32_array(v : Uint32Array) -> Uint32List =
  #| (v) => v

///|
/// Create Uint32List from Array[GLuint]
pub extern "js" fn Uint32List::from_array_of_g_luint(
  v : Array[GLuint],
) -> Uint32List =
  #| (v) => v

///|
/// WebGLQuery interface
pub type WebGLQuery

///|
pub extern "js" fn WebGLQuery::to_js_value(self : WebGLQuery) -> JsValue =
  #| (self) => self

///|
/// WebGLSampler interface
pub type WebGLSampler

///|
pub extern "js" fn WebGLSampler::to_js_value(self : WebGLSampler) -> JsValue =
  #| (self) => self

///|
/// WebGLSync interface
pub type WebGLSync

///|
pub extern "js" fn WebGLSync::to_js_value(self : WebGLSync) -> JsValue =
  #| (self) => self

///|
/// WebGLTransformFeedback interface
pub type WebGLTransformFeedback

///|
pub extern "js" fn WebGLTransformFeedback::to_js_value(
  self : WebGLTransformFeedback,
) -> JsValue =
  #| (self) => self

///|
/// WebGLVertexArrayObject interface
pub type WebGLVertexArrayObject

///|
pub extern "js" fn WebGLVertexArrayObject::to_js_value(
  self : WebGLVertexArrayObject,
) -> JsValue =
  #| (self) => self

///|
/// WebGL2RenderingContext interface
pub type WebGL2RenderingContext

///|
pub extern "js" fn WebGL2RenderingContext::to_js_value(
  self : WebGL2RenderingContext,
) -> JsValue =
  #| (self) => self

// WebGL2RenderingContext.DEPTH_BUFFER_BIT

///|
pub let web_g_l2_rendering_context_depth_buffer_bit : Int = 0x00000100

// WebGL2RenderingContext.STENCIL_BUFFER_BIT

///|
pub let web_g_l2_rendering_context_stencil_buffer_bit : Int = 0x00000400

// WebGL2RenderingContext.COLOR_BUFFER_BIT

///|
pub let web_g_l2_rendering_context_color_buffer_bit : Int = 0x00004000

// WebGL2RenderingContext.POINTS

///|
pub let web_g_l2_rendering_context_points : Int = 0x0000

// WebGL2RenderingContext.LINES

///|
pub let web_g_l2_rendering_context_lines : Int = 0x0001

// WebGL2RenderingContext.LINE_LOOP

///|
pub let web_g_l2_rendering_context_line_loop : Int = 0x0002

// WebGL2RenderingContext.LINE_STRIP

///|
pub let web_g_l2_rendering_context_line_strip : Int = 0x0003

// WebGL2RenderingContext.TRIANGLES

///|
pub let web_g_l2_rendering_context_triangles : Int = 0x0004

// WebGL2RenderingContext.TRIANGLE_STRIP

///|
pub let web_g_l2_rendering_context_triangle_strip : Int = 0x0005

// WebGL2RenderingContext.TRIANGLE_FAN

///|
pub let web_g_l2_rendering_context_triangle_fan : Int = 0x0006

// WebGL2RenderingContext.ZERO

///|
pub let web_g_l2_rendering_context_zero : Int = 0

// WebGL2RenderingContext.ONE

///|
pub let web_g_l2_rendering_context_one : Int = 1

// WebGL2RenderingContext.SRC_COLOR

///|
pub let web_g_l2_rendering_context_src_color : Int = 0x0300

// WebGL2RenderingContext.ONE_MINUS_SRC_COLOR

///|
pub let web_g_l2_rendering_context_one_minus_src_color : Int = 0x0301

// WebGL2RenderingContext.SRC_ALPHA

///|
pub let web_g_l2_rendering_context_src_alpha : Int = 0x0302

// WebGL2RenderingContext.ONE_MINUS_SRC_ALPHA

///|
pub let web_g_l2_rendering_context_one_minus_src_alpha : Int = 0x0303

// WebGL2RenderingContext.DST_ALPHA

///|
pub let web_g_l2_rendering_context_dst_alpha : Int = 0x0304

// WebGL2RenderingContext.ONE_MINUS_DST_ALPHA

///|
pub let web_g_l2_rendering_context_one_minus_dst_alpha : Int = 0x0305

// WebGL2RenderingContext.DST_COLOR

///|
pub let web_g_l2_rendering_context_dst_color : Int = 0x0306

// WebGL2RenderingContext.ONE_MINUS_DST_COLOR

///|
pub let web_g_l2_rendering_context_one_minus_dst_color : Int = 0x0307

// WebGL2RenderingContext.SRC_ALPHA_SATURATE

///|
pub let web_g_l2_rendering_context_src_alpha_saturate : Int = 0x0308

// WebGL2RenderingContext.FUNC_ADD

///|
pub let web_g_l2_rendering_context_func_add : Int = 0x8006

// WebGL2RenderingContext.BLEND_EQUATION

///|
pub let web_g_l2_rendering_context_blend_equation : Int = 0x8009

// WebGL2RenderingContext.BLEND_EQUATION_RGB

///|
pub let web_g_l2_rendering_context_blend_equation_rgb : Int = 0x8009

// WebGL2RenderingContext.BLEND_EQUATION_ALPHA

///|
pub let web_g_l2_rendering_context_blend_equation_alpha : Int = 0x883D

// WebGL2RenderingContext.FUNC_SUBTRACT

///|
pub let web_g_l2_rendering_context_func_subtract : Int = 0x800A

// WebGL2RenderingContext.FUNC_REVERSE_SUBTRACT

///|
pub let web_g_l2_rendering_context_func_reverse_subtract : Int = 0x800B

// WebGL2RenderingContext.BLEND_DST_RGB

///|
pub let web_g_l2_rendering_context_blend_dst_rgb : Int = 0x80C8

// WebGL2RenderingContext.BLEND_SRC_RGB

///|
pub let web_g_l2_rendering_context_blend_src_rgb : Int = 0x80C9

// WebGL2RenderingContext.BLEND_DST_ALPHA

///|
pub let web_g_l2_rendering_context_blend_dst_alpha : Int = 0x80CA

// WebGL2RenderingContext.BLEND_SRC_ALPHA

///|
pub let web_g_l2_rendering_context_blend_src_alpha : Int = 0x80CB

// WebGL2RenderingContext.CONSTANT_COLOR

///|
pub let web_g_l2_rendering_context_constant_color : Int = 0x8001

// WebGL2RenderingContext.ONE_MINUS_CONSTANT_COLOR

///|
pub let web_g_l2_rendering_context_one_minus_constant_color : Int = 0x8002

// WebGL2RenderingContext.CONSTANT_ALPHA

///|
pub let web_g_l2_rendering_context_constant_alpha : Int = 0x8003

// WebGL2RenderingContext.ONE_MINUS_CONSTANT_ALPHA

///|
pub let web_g_l2_rendering_context_one_minus_constant_alpha : Int = 0x8004

// WebGL2RenderingContext.BLEND_COLOR

///|
pub let web_g_l2_rendering_context_blend_color : Int = 0x8005

// WebGL2RenderingContext.ARRAY_BUFFER

///|
pub let web_g_l2_rendering_context_array_buffer : Int = 0x8892

// WebGL2RenderingContext.ELEMENT_ARRAY_BUFFER

///|
pub let web_g_l2_rendering_context_element_array_buffer : Int = 0x8893

// WebGL2RenderingContext.ARRAY_BUFFER_BINDING

///|
pub let web_g_l2_rendering_context_array_buffer_binding : Int = 0x8894

// WebGL2RenderingContext.ELEMENT_ARRAY_BUFFER_BINDING

///|
pub let web_g_l2_rendering_context_element_array_buffer_binding : Int = 0x8895

// WebGL2RenderingContext.STREAM_DRAW

///|
pub let web_g_l2_rendering_context_stream_draw : Int = 0x88E0

// WebGL2RenderingContext.STATIC_DRAW

///|
pub let web_g_l2_rendering_context_static_draw : Int = 0x88E4

// WebGL2RenderingContext.DYNAMIC_DRAW

///|
pub let web_g_l2_rendering_context_dynamic_draw : Int = 0x88E8

// WebGL2RenderingContext.BUFFER_SIZE

///|
pub let web_g_l2_rendering_context_buffer_size : Int = 0x8764

// WebGL2RenderingContext.BUFFER_USAGE

///|
pub let web_g_l2_rendering_context_buffer_usage : Int = 0x8765

// WebGL2RenderingContext.CURRENT_VERTEX_ATTRIB

///|
pub let web_g_l2_rendering_context_current_vertex_attrib : Int = 0x8626

// WebGL2RenderingContext.FRONT

///|
pub let web_g_l2_rendering_context_front : Int = 0x0404

// WebGL2RenderingContext.BACK

///|
pub let web_g_l2_rendering_context_back : Int = 0x0405

// WebGL2RenderingContext.FRONT_AND_BACK

///|
pub let web_g_l2_rendering_context_front_and_back : Int = 0x0408

// WebGL2RenderingContext.CULL_FACE

///|
pub let web_g_l2_rendering_context_cull_face : Int = 0x0B44

// WebGL2RenderingContext.BLEND

///|
pub let web_g_l2_rendering_context_blend : Int = 0x0BE2

// WebGL2RenderingContext.DITHER

///|
pub let web_g_l2_rendering_context_dither : Int = 0x0BD0

// WebGL2RenderingContext.STENCIL_TEST

///|
pub let web_g_l2_rendering_context_stencil_test : Int = 0x0B90

// WebGL2RenderingContext.DEPTH_TEST

///|
pub let web_g_l2_rendering_context_depth_test : Int = 0x0B71

// WebGL2RenderingContext.SCISSOR_TEST

///|
pub let web_g_l2_rendering_context_scissor_test : Int = 0x0C11

// WebGL2RenderingContext.POLYGON_OFFSET_FILL

///|
pub let web_g_l2_rendering_context_polygon_offset_fill : Int = 0x8037

// WebGL2RenderingContext.SAMPLE_ALPHA_TO_COVERAGE

///|
pub let web_g_l2_rendering_context_sample_alpha_to_coverage : Int = 0x809E

// WebGL2RenderingContext.SAMPLE_COVERAGE

///|
pub let web_g_l2_rendering_context_sample_coverage : Int = 0x80A0

// WebGL2RenderingContext.NO_ERROR

///|
pub let web_g_l2_rendering_context_no_error : Int = 0

// WebGL2RenderingContext.INVALID_ENUM

///|
pub let web_g_l2_rendering_context_invalid_enum : Int = 0x0500

// WebGL2RenderingContext.INVALID_VALUE

///|
pub let web_g_l2_rendering_context_invalid_value : Int = 0x0501

// WebGL2RenderingContext.INVALID_OPERATION

///|
pub let web_g_l2_rendering_context_invalid_operation : Int = 0x0502

// WebGL2RenderingContext.OUT_OF_MEMORY

///|
pub let web_g_l2_rendering_context_out_of_memory : Int = 0x0505

// WebGL2RenderingContext.CW

///|
pub let web_g_l2_rendering_context_cw : Int = 0x0900

// WebGL2RenderingContext.CCW

///|
pub let web_g_l2_rendering_context_ccw : Int = 0x0901

// WebGL2RenderingContext.LINE_WIDTH

///|
pub let web_g_l2_rendering_context_line_width : Int = 0x0B21

// WebGL2RenderingContext.ALIASED_POINT_SIZE_RANGE

///|
pub let web_g_l2_rendering_context_aliased_point_size_range : Int = 0x846D

// WebGL2RenderingContext.ALIASED_LINE_WIDTH_RANGE

///|
pub let web_g_l2_rendering_context_aliased_line_width_range : Int = 0x846E

// WebGL2RenderingContext.CULL_FACE_MODE

///|
pub let web_g_l2_rendering_context_cull_face_mode : Int = 0x0B45

// WebGL2RenderingContext.FRONT_FACE

///|
pub let web_g_l2_rendering_context_front_face : Int = 0x0B46

// WebGL2RenderingContext.DEPTH_RANGE

///|
pub let web_g_l2_rendering_context_depth_range : Int = 0x0B70

// WebGL2RenderingContext.DEPTH_WRITEMASK

///|
pub let web_g_l2_rendering_context_depth_writemask : Int = 0x0B72

// WebGL2RenderingContext.DEPTH_CLEAR_VALUE

///|
pub let web_g_l2_rendering_context_depth_clear_value : Int = 0x0B73

// WebGL2RenderingContext.DEPTH_FUNC

///|
pub let web_g_l2_rendering_context_depth_func : Int = 0x0B74

// WebGL2RenderingContext.STENCIL_CLEAR_VALUE

///|
pub let web_g_l2_rendering_context_stencil_clear_value : Int = 0x0B91

// WebGL2RenderingContext.STENCIL_FUNC

///|
pub let web_g_l2_rendering_context_stencil_func : Int = 0x0B92

// WebGL2RenderingContext.STENCIL_FAIL

///|
pub let web_g_l2_rendering_context_stencil_fail : Int = 0x0B94

// WebGL2RenderingContext.STENCIL_PASS_DEPTH_FAIL

///|
pub let web_g_l2_rendering_context_stencil_pass_depth_fail : Int = 0x0B95

// WebGL2RenderingContext.STENCIL_PASS_DEPTH_PASS

///|
pub let web_g_l2_rendering_context_stencil_pass_depth_pass : Int = 0x0B96

// WebGL2RenderingContext.STENCIL_REF

///|
pub let web_g_l2_rendering_context_stencil_ref : Int = 0x0B97

// WebGL2RenderingContext.STENCIL_VALUE_MASK

///|
pub let web_g_l2_rendering_context_stencil_value_mask : Int = 0x0B93

// WebGL2RenderingContext.STENCIL_WRITEMASK

///|
pub let web_g_l2_rendering_context_stencil_writemask : Int = 0x0B98

// WebGL2RenderingContext.STENCIL_BACK_FUNC

///|
pub let web_g_l2_rendering_context_stencil_back_func : Int = 0x8800

// WebGL2RenderingContext.STENCIL_BACK_FAIL

///|
pub let web_g_l2_rendering_context_stencil_back_fail : Int = 0x8801

// WebGL2RenderingContext.STENCIL_BACK_PASS_DEPTH_FAIL

///|
pub let web_g_l2_rendering_context_stencil_back_pass_depth_fail : Int = 0x8802

// WebGL2RenderingContext.STENCIL_BACK_PASS_DEPTH_PASS

///|
pub let web_g_l2_rendering_context_stencil_back_pass_depth_pass : Int = 0x8803

// WebGL2RenderingContext.STENCIL_BACK_REF

///|
pub let web_g_l2_rendering_context_stencil_back_ref : Int = 0x8CA3

// WebGL2RenderingContext.STENCIL_BACK_VALUE_MASK

///|
pub let web_g_l2_rendering_context_stencil_back_value_mask : Int = 0x8CA4

// WebGL2RenderingContext.STENCIL_BACK_WRITEMASK

///|
pub let web_g_l2_rendering_context_stencil_back_writemask : Int = 0x8CA5

// WebGL2RenderingContext.VIEWPORT

///|
pub let web_g_l2_rendering_context_viewport : Int = 0x0BA2

// WebGL2RenderingContext.SCISSOR_BOX

///|
pub let web_g_l2_rendering_context_scissor_box : Int = 0x0C10

// WebGL2RenderingContext.COLOR_CLEAR_VALUE

///|
pub let web_g_l2_rendering_context_color_clear_value : Int = 0x0C22

// WebGL2RenderingContext.COLOR_WRITEMASK

///|
pub let web_g_l2_rendering_context_color_writemask : Int = 0x0C23

// WebGL2RenderingContext.UNPACK_ALIGNMENT

///|
pub let web_g_l2_rendering_context_unpack_alignment : Int = 0x0CF5

// WebGL2RenderingContext.PACK_ALIGNMENT

///|
pub let web_g_l2_rendering_context_pack_alignment : Int = 0x0D05

// WebGL2RenderingContext.MAX_TEXTURE_SIZE

///|
pub let web_g_l2_rendering_context_max_texture_size : Int = 0x0D33

// WebGL2RenderingContext.MAX_VIEWPORT_DIMS

///|
pub let web_g_l2_rendering_context_max_viewport_dims : Int = 0x0D3A

// WebGL2RenderingContext.SUBPIXEL_BITS

///|
pub let web_g_l2_rendering_context_subpixel_bits : Int = 0x0D50

// WebGL2RenderingContext.RED_BITS

///|
pub let web_g_l2_rendering_context_red_bits : Int = 0x0D52

// WebGL2RenderingContext.GREEN_BITS

///|
pub let web_g_l2_rendering_context_green_bits : Int = 0x0D53

// WebGL2RenderingContext.BLUE_BITS

///|
pub let web_g_l2_rendering_context_blue_bits : Int = 0x0D54

// WebGL2RenderingContext.ALPHA_BITS

///|
pub let web_g_l2_rendering_context_alpha_bits : Int = 0x0D55

// WebGL2RenderingContext.DEPTH_BITS

///|
pub let web_g_l2_rendering_context_depth_bits : Int = 0x0D56

// WebGL2RenderingContext.STENCIL_BITS

///|
pub let web_g_l2_rendering_context_stencil_bits : Int = 0x0D57

// WebGL2RenderingContext.POLYGON_OFFSET_UNITS

///|
pub let web_g_l2_rendering_context_polygon_offset_units : Int = 0x2A00

// WebGL2RenderingContext.POLYGON_OFFSET_FACTOR

///|
pub let web_g_l2_rendering_context_polygon_offset_factor : Int = 0x8038

// WebGL2RenderingContext.TEXTURE_BINDING_2D

///|
pub let web_g_l2_rendering_context_texture_binding_2d : Int = 0x8069

// WebGL2RenderingContext.SAMPLE_BUFFERS

///|
pub let web_g_l2_rendering_context_sample_buffers : Int = 0x80A8

// WebGL2RenderingContext.SAMPLES

///|
pub let web_g_l2_rendering_context_samples : Int = 0x80A9

// WebGL2RenderingContext.SAMPLE_COVERAGE_VALUE

///|
pub let web_g_l2_rendering_context_sample_coverage_value : Int = 0x80AA

// WebGL2RenderingContext.SAMPLE_COVERAGE_INVERT

///|
pub let web_g_l2_rendering_context_sample_coverage_invert : Int = 0x80AB

// WebGL2RenderingContext.COMPRESSED_TEXTURE_FORMATS

///|
pub let web_g_l2_rendering_context_compressed_texture_formats : Int = 0x86A3

// WebGL2RenderingContext.DONT_CARE

///|
pub let web_g_l2_rendering_context_dont_care : Int = 0x1100

// WebGL2RenderingContext.FASTEST

///|
pub let web_g_l2_rendering_context_fastest : Int = 0x1101

// WebGL2RenderingContext.NICEST

///|
pub let web_g_l2_rendering_context_nicest : Int = 0x1102

// WebGL2RenderingContext.GENERATE_MIPMAP_HINT

///|
pub let web_g_l2_rendering_context_generate_mipmap_hint : Int = 0x8192

// WebGL2RenderingContext.BYTE

///|
pub let web_g_l2_rendering_context_byte : Int = 0x1400

// WebGL2RenderingContext.UNSIGNED_BYTE

///|
pub let web_g_l2_rendering_context_unsigned_byte : Int = 0x1401

// WebGL2RenderingContext.SHORT

///|
pub let web_g_l2_rendering_context_short : Int = 0x1402

// WebGL2RenderingContext.UNSIGNED_SHORT

///|
pub let web_g_l2_rendering_context_unsigned_short : Int = 0x1403

// WebGL2RenderingContext.INT

///|
pub let web_g_l2_rendering_context_int : Int = 0x1404

// WebGL2RenderingContext.UNSIGNED_INT

///|
pub let web_g_l2_rendering_context_unsigned_int : Int = 0x1405

// WebGL2RenderingContext.FLOAT

///|
pub let web_g_l2_rendering_context_float : Int = 0x1406

// WebGL2RenderingContext.DEPTH_COMPONENT

///|
pub let web_g_l2_rendering_context_depth_component : Int = 0x1902

// WebGL2RenderingContext.ALPHA

///|
pub let web_g_l2_rendering_context_alpha : Int = 0x1906

// WebGL2RenderingContext.RGB

///|
pub let web_g_l2_rendering_context_rgb : Int = 0x1907

// WebGL2RenderingContext.RGBA

///|
pub let web_g_l2_rendering_context_rgba : Int = 0x1908

// WebGL2RenderingContext.LUMINANCE

///|
pub let web_g_l2_rendering_context_luminance : Int = 0x1909

// WebGL2RenderingContext.LUMINANCE_ALPHA

///|
pub let web_g_l2_rendering_context_luminance_alpha : Int = 0x190A

// WebGL2RenderingContext.UNSIGNED_SHORT_4_4_4_4

///|
pub let web_g_l2_rendering_context_unsigned_short_4_4_4_4 : Int = 0x8033

// WebGL2RenderingContext.UNSIGNED_SHORT_5_5_5_1

///|
pub let web_g_l2_rendering_context_unsigned_short_5_5_5_1 : Int = 0x8034

// WebGL2RenderingContext.UNSIGNED_SHORT_5_6_5

///|
pub let web_g_l2_rendering_context_unsigned_short_5_6_5 : Int = 0x8363

// WebGL2RenderingContext.FRAGMENT_SHADER

///|
pub let web_g_l2_rendering_context_fragment_shader : Int = 0x8B30

// WebGL2RenderingContext.VERTEX_SHADER

///|
pub let web_g_l2_rendering_context_vertex_shader : Int = 0x8B31

// WebGL2RenderingContext.MAX_VERTEX_ATTRIBS

///|
pub let web_g_l2_rendering_context_max_vertex_attribs : Int = 0x8869

// WebGL2RenderingContext.MAX_VERTEX_UNIFORM_VECTORS

///|
pub let web_g_l2_rendering_context_max_vertex_uniform_vectors : Int = 0x8DFB

// WebGL2RenderingContext.MAX_VARYING_VECTORS

///|
pub let web_g_l2_rendering_context_max_varying_vectors : Int = 0x8DFC

// WebGL2RenderingContext.MAX_COMBINED_TEXTURE_IMAGE_UNITS

///|
pub let web_g_l2_rendering_context_max_combined_texture_image_units : Int = 0x8B4D

// WebGL2RenderingContext.MAX_VERTEX_TEXTURE_IMAGE_UNITS

///|
pub let web_g_l2_rendering_context_max_vertex_texture_image_units : Int = 0x8B4C

// WebGL2RenderingContext.MAX_TEXTURE_IMAGE_UNITS

///|
pub let web_g_l2_rendering_context_max_texture_image_units : Int = 0x8872

// WebGL2RenderingContext.MAX_FRAGMENT_UNIFORM_VECTORS

///|
pub let web_g_l2_rendering_context_max_fragment_uniform_vectors : Int = 0x8DFD

// WebGL2RenderingContext.SHADER_TYPE

///|
pub let web_g_l2_rendering_context_shader_type : Int = 0x8B4F

// WebGL2RenderingContext.DELETE_STATUS

///|
pub let web_g_l2_rendering_context_delete_status : Int = 0x8B80

// WebGL2RenderingContext.LINK_STATUS

///|
pub let web_g_l2_rendering_context_link_status : Int = 0x8B82

// WebGL2RenderingContext.VALIDATE_STATUS

///|
pub let web_g_l2_rendering_context_validate_status : Int = 0x8B83

// WebGL2RenderingContext.ATTACHED_SHADERS

///|
pub let web_g_l2_rendering_context_attached_shaders : Int = 0x8B85

// WebGL2RenderingContext.ACTIVE_UNIFORMS

///|
pub let web_g_l2_rendering_context_active_uniforms : Int = 0x8B86

// WebGL2RenderingContext.ACTIVE_ATTRIBUTES

///|
pub let web_g_l2_rendering_context_active_attributes : Int = 0x8B89

// WebGL2RenderingContext.SHADING_LANGUAGE_VERSION

///|
pub let web_g_l2_rendering_context_shading_language_version : Int = 0x8B8C

// WebGL2RenderingContext.CURRENT_PROGRAM

///|
pub let web_g_l2_rendering_context_current_program : Int = 0x8B8D

// WebGL2RenderingContext.NEVER

///|
pub let web_g_l2_rendering_context_never : Int = 0x0200

// WebGL2RenderingContext.LESS

///|
pub let web_g_l2_rendering_context_less : Int = 0x0201

// WebGL2RenderingContext.EQUAL

///|
pub let web_g_l2_rendering_context_equal : Int = 0x0202

// WebGL2RenderingContext.LEQUAL

///|
pub let web_g_l2_rendering_context_lequal : Int = 0x0203

// WebGL2RenderingContext.GREATER

///|
pub let web_g_l2_rendering_context_greater : Int = 0x0204

// WebGL2RenderingContext.NOTEQUAL

///|
pub let web_g_l2_rendering_context_notequal : Int = 0x0205

// WebGL2RenderingContext.GEQUAL

///|
pub let web_g_l2_rendering_context_gequal : Int = 0x0206

// WebGL2RenderingContext.ALWAYS

///|
pub let web_g_l2_rendering_context_always : Int = 0x0207

// WebGL2RenderingContext.KEEP

///|
pub let web_g_l2_rendering_context_keep : Int = 0x1E00

// WebGL2RenderingContext.REPLACE

///|
pub let web_g_l2_rendering_context_replace : Int = 0x1E01

// WebGL2RenderingContext.INCR

///|
pub let web_g_l2_rendering_context_incr : Int = 0x1E02

// WebGL2RenderingContext.DECR

///|
pub let web_g_l2_rendering_context_decr : Int = 0x1E03

// WebGL2RenderingContext.INVERT

///|
pub let web_g_l2_rendering_context_invert : Int = 0x150A

// WebGL2RenderingContext.INCR_WRAP

///|
pub let web_g_l2_rendering_context_incr_wrap : Int = 0x8507

// WebGL2RenderingContext.DECR_WRAP

///|
pub let web_g_l2_rendering_context_decr_wrap : Int = 0x8508

// WebGL2RenderingContext.VENDOR

///|
pub let web_g_l2_rendering_context_vendor : Int = 0x1F00

// WebGL2RenderingContext.RENDERER

///|
pub let web_g_l2_rendering_context_renderer : Int = 0x1F01

// WebGL2RenderingContext.VERSION

///|
pub let web_g_l2_rendering_context_version : Int = 0x1F02

// WebGL2RenderingContext.NEAREST

///|
pub let web_g_l2_rendering_context_nearest : Int = 0x2600

// WebGL2RenderingContext.LINEAR

///|
pub let web_g_l2_rendering_context_linear : Int = 0x2601

// WebGL2RenderingContext.NEAREST_MIPMAP_NEAREST

///|
pub let web_g_l2_rendering_context_nearest_mipmap_nearest : Int = 0x2700

// WebGL2RenderingContext.LINEAR_MIPMAP_NEAREST

///|
pub let web_g_l2_rendering_context_linear_mipmap_nearest : Int = 0x2701

// WebGL2RenderingContext.NEAREST_MIPMAP_LINEAR

///|
pub let web_g_l2_rendering_context_nearest_mipmap_linear : Int = 0x2702

// WebGL2RenderingContext.LINEAR_MIPMAP_LINEAR

///|
pub let web_g_l2_rendering_context_linear_mipmap_linear : Int = 0x2703

// WebGL2RenderingContext.TEXTURE_MAG_FILTER

///|
pub let web_g_l2_rendering_context_texture_mag_filter : Int = 0x2800

// WebGL2RenderingContext.TEXTURE_MIN_FILTER

///|
pub let web_g_l2_rendering_context_texture_min_filter : Int = 0x2801

// WebGL2RenderingContext.TEXTURE_WRAP_S

///|
pub let web_g_l2_rendering_context_texture_wrap_s : Int = 0x2802

// WebGL2RenderingContext.TEXTURE_WRAP_T

///|
pub let web_g_l2_rendering_context_texture_wrap_t : Int = 0x2803

// WebGL2RenderingContext.TEXTURE_2D

///|
pub let web_g_l2_rendering_context_texture_2d : Int = 0x0DE1

// WebGL2RenderingContext.TEXTURE

///|
pub let web_g_l2_rendering_context_texture : Int = 0x1702

// WebGL2RenderingContext.TEXTURE_CUBE_MAP

///|
pub let web_g_l2_rendering_context_texture_cube_map : Int = 0x8513

// WebGL2RenderingContext.TEXTURE_BINDING_CUBE_MAP

///|
pub let web_g_l2_rendering_context_texture_binding_cube_map : Int = 0x8514

// WebGL2RenderingContext.TEXTURE_CUBE_MAP_POSITIVE_X

///|
pub let web_g_l2_rendering_context_texture_cube_map_positive_x : Int = 0x8515

// WebGL2RenderingContext.TEXTURE_CUBE_MAP_NEGATIVE_X

///|
pub let web_g_l2_rendering_context_texture_cube_map_negative_x : Int = 0x8516

// WebGL2RenderingContext.TEXTURE_CUBE_MAP_POSITIVE_Y

///|
pub let web_g_l2_rendering_context_texture_cube_map_positive_y : Int = 0x8517

// WebGL2RenderingContext.TEXTURE_CUBE_MAP_NEGATIVE_Y

///|
pub let web_g_l2_rendering_context_texture_cube_map_negative_y : Int = 0x8518

// WebGL2RenderingContext.TEXTURE_CUBE_MAP_POSITIVE_Z

///|
pub let web_g_l2_rendering_context_texture_cube_map_positive_z : Int = 0x8519

// WebGL2RenderingContext.TEXTURE_CUBE_MAP_NEGATIVE_Z

///|
pub let web_g_l2_rendering_context_texture_cube_map_negative_z : Int = 0x851A

// WebGL2RenderingContext.MAX_CUBE_MAP_TEXTURE_SIZE

///|
pub let web_g_l2_rendering_context_max_cube_map_texture_size : Int = 0x851C

// WebGL2RenderingContext.TEXTURE0

///|
pub let web_g_l2_rendering_context_texture0 : Int = 0x84C0

// WebGL2RenderingContext.TEXTURE1

///|
pub let web_g_l2_rendering_context_texture1 : Int = 0x84C1

// WebGL2RenderingContext.TEXTURE2

///|
pub let web_g_l2_rendering_context_texture2 : Int = 0x84C2

// WebGL2RenderingContext.TEXTURE3

///|
pub let web_g_l2_rendering_context_texture3 : Int = 0x84C3

// WebGL2RenderingContext.TEXTURE4

///|
pub let web_g_l2_rendering_context_texture4 : Int = 0x84C4

// WebGL2RenderingContext.TEXTURE5

///|
pub let web_g_l2_rendering_context_texture5 : Int = 0x84C5

// WebGL2RenderingContext.TEXTURE6

///|
pub let web_g_l2_rendering_context_texture6 : Int = 0x84C6

// WebGL2RenderingContext.TEXTURE7

///|
pub let web_g_l2_rendering_context_texture7 : Int = 0x84C7

// WebGL2RenderingContext.TEXTURE8

///|
pub let web_g_l2_rendering_context_texture8 : Int = 0x84C8

// WebGL2RenderingContext.TEXTURE9

///|
pub let web_g_l2_rendering_context_texture9 : Int = 0x84C9

// WebGL2RenderingContext.TEXTURE10

///|
pub let web_g_l2_rendering_context_texture10 : Int = 0x84CA

// WebGL2RenderingContext.TEXTURE11

///|
pub let web_g_l2_rendering_context_texture11 : Int = 0x84CB

// WebGL2RenderingContext.TEXTURE12

///|
pub let web_g_l2_rendering_context_texture12 : Int = 0x84CC

// WebGL2RenderingContext.TEXTURE13

///|
pub let web_g_l2_rendering_context_texture13 : Int = 0x84CD

// WebGL2RenderingContext.TEXTURE14

///|
pub let web_g_l2_rendering_context_texture14 : Int = 0x84CE

// WebGL2RenderingContext.TEXTURE15

///|
pub let web_g_l2_rendering_context_texture15 : Int = 0x84CF

// WebGL2RenderingContext.TEXTURE16

///|
pub let web_g_l2_rendering_context_texture16 : Int = 0x84D0

// WebGL2RenderingContext.TEXTURE17

///|
pub let web_g_l2_rendering_context_texture17 : Int = 0x84D1

// WebGL2RenderingContext.TEXTURE18

///|
pub let web_g_l2_rendering_context_texture18 : Int = 0x84D2

// WebGL2RenderingContext.TEXTURE19

///|
pub let web_g_l2_rendering_context_texture19 : Int = 0x84D3

// WebGL2RenderingContext.TEXTURE20

///|
pub let web_g_l2_rendering_context_texture20 : Int = 0x84D4

// WebGL2RenderingContext.TEXTURE21

///|
pub let web_g_l2_rendering_context_texture21 : Int = 0x84D5

// WebGL2RenderingContext.TEXTURE22

///|
pub let web_g_l2_rendering_context_texture22 : Int = 0x84D6

// WebGL2RenderingContext.TEXTURE23

///|
pub let web_g_l2_rendering_context_texture23 : Int = 0x84D7

// WebGL2RenderingContext.TEXTURE24

///|
pub let web_g_l2_rendering_context_texture24 : Int = 0x84D8

// WebGL2RenderingContext.TEXTURE25

///|
pub let web_g_l2_rendering_context_texture25 : Int = 0x84D9

// WebGL2RenderingContext.TEXTURE26

///|
pub let web_g_l2_rendering_context_texture26 : Int = 0x84DA

// WebGL2RenderingContext.TEXTURE27

///|
pub let web_g_l2_rendering_context_texture27 : Int = 0x84DB

// WebGL2RenderingContext.TEXTURE28

///|
pub let web_g_l2_rendering_context_texture28 : Int = 0x84DC

// WebGL2RenderingContext.TEXTURE29

///|
pub let web_g_l2_rendering_context_texture29 : Int = 0x84DD

// WebGL2RenderingContext.TEXTURE30

///|
pub let web_g_l2_rendering_context_texture30 : Int = 0x84DE

// WebGL2RenderingContext.TEXTURE31

///|
pub let web_g_l2_rendering_context_texture31 : Int = 0x84DF

// WebGL2RenderingContext.ACTIVE_TEXTURE

///|
pub let web_g_l2_rendering_context_active_texture : Int = 0x84E0

// WebGL2RenderingContext.REPEAT

///|
pub let web_g_l2_rendering_context_repeat : Int = 0x2901

// WebGL2RenderingContext.CLAMP_TO_EDGE

///|
pub let web_g_l2_rendering_context_clamp_to_edge : Int = 0x812F

// WebGL2RenderingContext.MIRRORED_REPEAT

///|
pub let web_g_l2_rendering_context_mirrored_repeat : Int = 0x8370

// WebGL2RenderingContext.FLOAT_VEC2

///|
pub let web_g_l2_rendering_context_float_vec2 : Int = 0x8B50

// WebGL2RenderingContext.FLOAT_VEC3

///|
pub let web_g_l2_rendering_context_float_vec3 : Int = 0x8B51

// WebGL2RenderingContext.FLOAT_VEC4

///|
pub let web_g_l2_rendering_context_float_vec4 : Int = 0x8B52

// WebGL2RenderingContext.INT_VEC2

///|
pub let web_g_l2_rendering_context_int_vec2 : Int = 0x8B53

// WebGL2RenderingContext.INT_VEC3

///|
pub let web_g_l2_rendering_context_int_vec3 : Int = 0x8B54

// WebGL2RenderingContext.INT_VEC4

///|
pub let web_g_l2_rendering_context_int_vec4 : Int = 0x8B55

// WebGL2RenderingContext.BOOL

///|
pub let web_g_l2_rendering_context_bool : Int = 0x8B56

// WebGL2RenderingContext.BOOL_VEC2

///|
pub let web_g_l2_rendering_context_bool_vec2 : Int = 0x8B57

// WebGL2RenderingContext.BOOL_VEC3

///|
pub let web_g_l2_rendering_context_bool_vec3 : Int = 0x8B58

// WebGL2RenderingContext.BOOL_VEC4

///|
pub let web_g_l2_rendering_context_bool_vec4 : Int = 0x8B59

// WebGL2RenderingContext.FLOAT_MAT2

///|
pub let web_g_l2_rendering_context_float_mat2 : Int = 0x8B5A

// WebGL2RenderingContext.FLOAT_MAT3

///|
pub let web_g_l2_rendering_context_float_mat3 : Int = 0x8B5B

// WebGL2RenderingContext.FLOAT_MAT4

///|
pub let web_g_l2_rendering_context_float_mat4 : Int = 0x8B5C

// WebGL2RenderingContext.SAMPLER_2D

///|
pub let web_g_l2_rendering_context_sampler_2d : Int = 0x8B5E

// WebGL2RenderingContext.SAMPLER_CUBE

///|
pub let web_g_l2_rendering_context_sampler_cube : Int = 0x8B60

// WebGL2RenderingContext.VERTEX_ATTRIB_ARRAY_ENABLED

///|
pub let web_g_l2_rendering_context_vertex_attrib_array_enabled : Int = 0x8622

// WebGL2RenderingContext.VERTEX_ATTRIB_ARRAY_SIZE

///|
pub let web_g_l2_rendering_context_vertex_attrib_array_size : Int = 0x8623

// WebGL2RenderingContext.VERTEX_ATTRIB_ARRAY_STRIDE

///|
pub let web_g_l2_rendering_context_vertex_attrib_array_stride : Int = 0x8624

// WebGL2RenderingContext.VERTEX_ATTRIB_ARRAY_TYPE

///|
pub let web_g_l2_rendering_context_vertex_attrib_array_type : Int = 0x8625

// WebGL2RenderingContext.VERTEX_ATTRIB_ARRAY_NORMALIZED

///|
pub let web_g_l2_rendering_context_vertex_attrib_array_normalized : Int = 0x886A

// WebGL2RenderingContext.VERTEX_ATTRIB_ARRAY_POINTER

///|
pub let web_g_l2_rendering_context_vertex_attrib_array_pointer : Int = 0x8645

// WebGL2RenderingContext.VERTEX_ATTRIB_ARRAY_BUFFER_BINDING

///|
pub let web_g_l2_rendering_context_vertex_attrib_array_buffer_binding : Int = 0x889F

// WebGL2RenderingContext.IMPLEMENTATION_COLOR_READ_TYPE

///|
pub let web_g_l2_rendering_context_implementation_color_read_type : Int = 0x8B9A

// WebGL2RenderingContext.IMPLEMENTATION_COLOR_READ_FORMAT

///|
pub let web_g_l2_rendering_context_implementation_color_read_format : Int = 0x8B9B

// WebGL2RenderingContext.COMPILE_STATUS

///|
pub let web_g_l2_rendering_context_compile_status : Int = 0x8B81

// WebGL2RenderingContext.LOW_FLOAT

///|
pub let web_g_l2_rendering_context_low_float : Int = 0x8DF0

// WebGL2RenderingContext.MEDIUM_FLOAT

///|
pub let web_g_l2_rendering_context_medium_float : Int = 0x8DF1

// WebGL2RenderingContext.HIGH_FLOAT

///|
pub let web_g_l2_rendering_context_high_float : Int = 0x8DF2

// WebGL2RenderingContext.LOW_INT

///|
pub let web_g_l2_rendering_context_low_int : Int = 0x8DF3

// WebGL2RenderingContext.MEDIUM_INT

///|
pub let web_g_l2_rendering_context_medium_int : Int = 0x8DF4

// WebGL2RenderingContext.HIGH_INT

///|
pub let web_g_l2_rendering_context_high_int : Int = 0x8DF5

// WebGL2RenderingContext.FRAMEBUFFER

///|
pub let web_g_l2_rendering_context_framebuffer : Int = 0x8D40

// WebGL2RenderingContext.RENDERBUFFER

///|
pub let web_g_l2_rendering_context_renderbuffer : Int = 0x8D41

// WebGL2RenderingContext.RGBA4

///|
pub let web_g_l2_rendering_context_rgba4 : Int = 0x8056

// WebGL2RenderingContext.RGB5_A1

///|
pub let web_g_l2_rendering_context_rgb5_a1 : Int = 0x8057

// WebGL2RenderingContext.RGBA8

///|
pub let web_g_l2_rendering_context_rgba8 : Int = 0x8058

// WebGL2RenderingContext.RGB565

///|
pub let web_g_l2_rendering_context_rgb565 : Int = 0x8D62

// WebGL2RenderingContext.DEPTH_COMPONENT16

///|
pub let web_g_l2_rendering_context_depth_component16 : Int = 0x81A5

// WebGL2RenderingContext.STENCIL_INDEX8

///|
pub let web_g_l2_rendering_context_stencil_index8 : Int = 0x8D48

// WebGL2RenderingContext.DEPTH_STENCIL

///|
pub let web_g_l2_rendering_context_depth_stencil : Int = 0x84F9

// WebGL2RenderingContext.RENDERBUFFER_WIDTH

///|
pub let web_g_l2_rendering_context_renderbuffer_width : Int = 0x8D42

// WebGL2RenderingContext.RENDERBUFFER_HEIGHT

///|
pub let web_g_l2_rendering_context_renderbuffer_height : Int = 0x8D43

// WebGL2RenderingContext.RENDERBUFFER_INTERNAL_FORMAT

///|
pub let web_g_l2_rendering_context_renderbuffer_internal_format : Int = 0x8D44

// WebGL2RenderingContext.RENDERBUFFER_RED_SIZE

///|
pub let web_g_l2_rendering_context_renderbuffer_red_size : Int = 0x8D50

// WebGL2RenderingContext.RENDERBUFFER_GREEN_SIZE

///|
pub let web_g_l2_rendering_context_renderbuffer_green_size : Int = 0x8D51

// WebGL2RenderingContext.RENDERBUFFER_BLUE_SIZE

///|
pub let web_g_l2_rendering_context_renderbuffer_blue_size : Int = 0x8D52

// WebGL2RenderingContext.RENDERBUFFER_ALPHA_SIZE

///|
pub let web_g_l2_rendering_context_renderbuffer_alpha_size : Int = 0x8D53

// WebGL2RenderingContext.RENDERBUFFER_DEPTH_SIZE

///|
pub let web_g_l2_rendering_context_renderbuffer_depth_size : Int = 0x8D54

// WebGL2RenderingContext.RENDERBUFFER_STENCIL_SIZE

///|
pub let web_g_l2_rendering_context_renderbuffer_stencil_size : Int = 0x8D55

// WebGL2RenderingContext.FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE

///|
pub let web_g_l2_rendering_context_framebuffer_attachment_object_type : Int = 0x8CD0

// WebGL2RenderingContext.FRAMEBUFFER_ATTACHMENT_OBJECT_NAME

///|
pub let web_g_l2_rendering_context_framebuffer_attachment_object_name : Int = 0x8CD1

// WebGL2RenderingContext.FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL

///|
pub let web_g_l2_rendering_context_framebuffer_attachment_texture_level : Int = 0x8CD2

// WebGL2RenderingContext.FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE

///|
pub let web_g_l2_rendering_context_framebuffer_attachment_texture_cube_map_face : Int = 0x8CD3

// WebGL2RenderingContext.COLOR_ATTACHMENT0

///|
pub let web_g_l2_rendering_context_color_attachment0 : Int = 0x8CE0

// WebGL2RenderingContext.DEPTH_ATTACHMENT

///|
pub let web_g_l2_rendering_context_depth_attachment : Int = 0x8D00

// WebGL2RenderingContext.STENCIL_ATTACHMENT

///|
pub let web_g_l2_rendering_context_stencil_attachment : Int = 0x8D20

// WebGL2RenderingContext.DEPTH_STENCIL_ATTACHMENT

///|
pub let web_g_l2_rendering_context_depth_stencil_attachment : Int = 0x821A

// WebGL2RenderingContext.NONE

///|
pub let web_g_l2_rendering_context_none : Int = 0

// WebGL2RenderingContext.FRAMEBUFFER_COMPLETE

///|
pub let web_g_l2_rendering_context_framebuffer_complete : Int = 0x8CD5

// WebGL2RenderingContext.FRAMEBUFFER_INCOMPLETE_ATTACHMENT

///|
pub let web_g_l2_rendering_context_framebuffer_incomplete_attachment : Int = 0x8CD6

// WebGL2RenderingContext.FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT

///|
pub let web_g_l2_rendering_context_framebuffer_incomplete_missing_attachment : Int = 0x8CD7

// WebGL2RenderingContext.FRAMEBUFFER_INCOMPLETE_DIMENSIONS

///|
pub let web_g_l2_rendering_context_framebuffer_incomplete_dimensions : Int = 0x8CD9

// WebGL2RenderingContext.FRAMEBUFFER_UNSUPPORTED

///|
pub let web_g_l2_rendering_context_framebuffer_unsupported : Int = 0x8CDD

// WebGL2RenderingContext.FRAMEBUFFER_BINDING

///|
pub let web_g_l2_rendering_context_framebuffer_binding : Int = 0x8CA6

// WebGL2RenderingContext.RENDERBUFFER_BINDING

///|
pub let web_g_l2_rendering_context_renderbuffer_binding : Int = 0x8CA7

// WebGL2RenderingContext.MAX_RENDERBUFFER_SIZE

///|
pub let web_g_l2_rendering_context_max_renderbuffer_size : Int = 0x84E8

// WebGL2RenderingContext.INVALID_FRAMEBUFFER_OPERATION

///|
pub let web_g_l2_rendering_context_invalid_framebuffer_operation : Int = 0x0506

// WebGL2RenderingContext.UNPACK_FLIP_Y_WEBGL

///|
pub let web_g_l2_rendering_context_unpack_flip_y_webgl : Int = 0x9240

// WebGL2RenderingContext.UNPACK_PREMULTIPLY_ALPHA_WEBGL

///|
pub let web_g_l2_rendering_context_unpack_premultiply_alpha_webgl : Int = 0x9241

// WebGL2RenderingContext.CONTEXT_LOST_WEBGL

///|
pub let web_g_l2_rendering_context_context_lost_webgl : Int = 0x9242

// WebGL2RenderingContext.UNPACK_COLORSPACE_CONVERSION_WEBGL

///|
pub let web_g_l2_rendering_context_unpack_colorspace_conversion_webgl : Int = 0x9243

// WebGL2RenderingContext.BROWSER_DEFAULT_WEBGL

///|
pub let web_g_l2_rendering_context_browser_default_webgl : Int = 0x9244

///|
pub extern "js" fn WebGL2RenderingContext::get_canvas(
  self : WebGL2RenderingContext,
) -> JsValue =
  #| (self) => self.canvas

///|
pub extern "js" fn WebGL2RenderingContext::get_drawing_buffer_width(
  self : WebGL2RenderingContext,
) -> GLsizei =
  #| (self) => self.drawingBufferWidth

///|
pub extern "js" fn WebGL2RenderingContext::get_drawing_buffer_height(
  self : WebGL2RenderingContext,
) -> GLsizei =
  #| (self) => self.drawingBufferHeight

///|
pub extern "js" fn WebGL2RenderingContext::get_drawing_buffer_format(
  self : WebGL2RenderingContext,
) -> GLenum =
  #| (self) => self.drawingBufferFormat

///|
pub extern "js" fn WebGL2RenderingContext::get_drawing_buffer_color_space(
  self : WebGL2RenderingContext,
) -> PredefinedColorSpace =
  #| (self) => self.drawingBufferColorSpace

///|
pub extern "js" fn WebGL2RenderingContext::set_drawing_buffer_color_space(
  self : WebGL2RenderingContext,
  value : PredefinedColorSpace,
) -> Unit =
  #| (self, value) => { self.drawingBufferColorSpace = value }

///|
pub extern "js" fn WebGL2RenderingContext::get_unpack_color_space(
  self : WebGL2RenderingContext,
) -> PredefinedColorSpace =
  #| (self) => self.unpackColorSpace

///|
pub extern "js" fn WebGL2RenderingContext::set_unpack_color_space(
  self : WebGL2RenderingContext,
  value : PredefinedColorSpace,
) -> Unit =
  #| (self, value) => { self.unpackColorSpace = value }

///|
pub extern "js" fn WebGL2RenderingContext::get_context_attributes(
  self : WebGL2RenderingContext,
) -> WebGLContextAttributes? =
  #| (self) => self.getContextAttributes()

///|
pub extern "js" fn WebGL2RenderingContext::is_context_lost(
  self : WebGL2RenderingContext,
) -> Bool =
  #| (self) => self.isContextLost()

///|
pub extern "js" fn WebGL2RenderingContext::get_supported_extensions(
  self : WebGL2RenderingContext,
) -> Array[String] =
  #| (self) => self.getSupportedExtensions()

///|
pub extern "js" fn WebGL2RenderingContext::get_extension(
  self : WebGL2RenderingContext,
  name : String,
) -> JsValue? =
  #| (self, name) => self.getExtension(name)

///|
pub extern "js" fn WebGL2RenderingContext::drawing_buffer_storage(
  self : WebGL2RenderingContext,
  sized_format : GLenum,
  width : Int,
  height : Int,
) -> Unit =
  #| (self, sized_format, width, height) => self.drawingBufferStorage(sized_format, width, height)

///|
pub extern "js" fn WebGL2RenderingContext::active_texture(
  self : WebGL2RenderingContext,
  texture : GLenum,
) -> Unit =
  #| (self, texture) => self.activeTexture(texture)

///|
pub extern "js" fn WebGL2RenderingContext::attach_shader(
  self : WebGL2RenderingContext,
  program : WebGLProgram,
  shader : WebGLShader,
) -> Unit =
  #| (self, program, shader) => self.attachShader(program, shader)

///|
pub extern "js" fn WebGL2RenderingContext::bind_attrib_location(
  self : WebGL2RenderingContext,
  program : WebGLProgram,
  index : GLuint,
  name : String,
) -> Unit =
  #| (self, program, index, name) => self.bindAttribLocation(program, index, name)

///|
pub extern "js" fn WebGL2RenderingContext::bind_buffer(
  self : WebGL2RenderingContext,
  target : GLenum,
  buffer : WebGLBuffer?,
) -> Unit =
  #| (self, target, buffer) => self.bindBuffer(target, buffer)

///|
pub extern "js" fn WebGL2RenderingContext::bind_framebuffer(
  self : WebGL2RenderingContext,
  target : GLenum,
  framebuffer : WebGLFramebuffer?,
) -> Unit =
  #| (self, target, framebuffer) => self.bindFramebuffer(target, framebuffer)

///|
pub extern "js" fn WebGL2RenderingContext::bind_renderbuffer(
  self : WebGL2RenderingContext,
  target : GLenum,
  renderbuffer : WebGLRenderbuffer?,
) -> Unit =
  #| (self, target, renderbuffer) => self.bindRenderbuffer(target, renderbuffer)

///|
pub extern "js" fn WebGL2RenderingContext::bind_texture(
  self : WebGL2RenderingContext,
  target : GLenum,
  texture : WebGLTexture?,
) -> Unit =
  #| (self, target, texture) => self.bindTexture(target, texture)

///|
pub extern "js" fn WebGL2RenderingContext::blend_color(
  self : WebGL2RenderingContext,
  red : GLclampf,
  green : GLclampf,
  blue : GLclampf,
  alpha : GLclampf,
) -> Unit =
  #| (self, red, green, blue, alpha) => self.blendColor(red, green, blue, alpha)

///|
pub extern "js" fn WebGL2RenderingContext::blend_equation(
  self : WebGL2RenderingContext,
  mode : GLenum,
) -> Unit =
  #| (self, mode) => self.blendEquation(mode)

///|
pub extern "js" fn WebGL2RenderingContext::blend_equation_separate(
  self : WebGL2RenderingContext,
  mode_r_g_b : GLenum,
  mode_alpha : GLenum,
) -> Unit =
  #| (self, mode_r_g_b, mode_alpha) => self.blendEquationSeparate(mode_r_g_b, mode_alpha)

///|
pub extern "js" fn WebGL2RenderingContext::blend_func(
  self : WebGL2RenderingContext,
  sfactor : GLenum,
  dfactor : GLenum,
) -> Unit =
  #| (self, sfactor, dfactor) => self.blendFunc(sfactor, dfactor)

///|
pub extern "js" fn WebGL2RenderingContext::blend_func_separate(
  self : WebGL2RenderingContext,
  src_r_g_b : GLenum,
  dst_r_g_b : GLenum,
  src_alpha : GLenum,
  dst_alpha : GLenum,
) -> Unit =
  #| (self, src_r_g_b, dst_r_g_b, src_alpha, dst_alpha) => self.blendFuncSeparate(src_r_g_b, dst_r_g_b, src_alpha, dst_alpha)

///|
pub extern "js" fn WebGL2RenderingContext::check_framebuffer_status(
  self : WebGL2RenderingContext,
  target : GLenum,
) -> GLenum =
  #| (self, target) => self.checkFramebufferStatus(target)

///|
pub extern "js" fn WebGL2RenderingContext::clear(
  self : WebGL2RenderingContext,
  mask : GLbitfield,
) -> Unit =
  #| (self, mask) => self.clear(mask)

///|
pub extern "js" fn WebGL2RenderingContext::clear_color(
  self : WebGL2RenderingContext,
  red : GLclampf,
  green : GLclampf,
  blue : GLclampf,
  alpha : GLclampf,
) -> Unit =
  #| (self, red, green, blue, alpha) => self.clearColor(red, green, blue, alpha)

///|
pub extern "js" fn WebGL2RenderingContext::clear_depth(
  self : WebGL2RenderingContext,
  depth : GLclampf,
) -> Unit =
  #| (self, depth) => self.clearDepth(depth)

///|
pub extern "js" fn WebGL2RenderingContext::clear_stencil(
  self : WebGL2RenderingContext,
  s : GLint,
) -> Unit =
  #| (self, s) => self.clearStencil(s)

///|
pub extern "js" fn WebGL2RenderingContext::color_mask(
  self : WebGL2RenderingContext,
  red : GLboolean,
  green : GLboolean,
  blue : GLboolean,
  alpha : GLboolean,
) -> Unit =
  #| (self, red, green, blue, alpha) => self.colorMask(red, green, blue, alpha)

///|
pub extern "js" fn WebGL2RenderingContext::compile_shader(
  self : WebGL2RenderingContext,
  shader : WebGLShader,
) -> Unit =
  #| (self, shader) => self.compileShader(shader)

///|
pub extern "js" fn WebGL2RenderingContext::copy_tex_image2_d(
  self : WebGL2RenderingContext,
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
pub extern "js" fn WebGL2RenderingContext::copy_tex_sub_image2_d(
  self : WebGL2RenderingContext,
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
pub extern "js" fn WebGL2RenderingContext::create_buffer(
  self : WebGL2RenderingContext,
) -> WebGLBuffer =
  #| (self) => self.createBuffer()

///|
pub extern "js" fn WebGL2RenderingContext::create_framebuffer(
  self : WebGL2RenderingContext,
) -> WebGLFramebuffer =
  #| (self) => self.createFramebuffer()

///|
pub extern "js" fn WebGL2RenderingContext::create_program(
  self : WebGL2RenderingContext,
) -> WebGLProgram =
  #| (self) => self.createProgram()

///|
pub extern "js" fn WebGL2RenderingContext::create_renderbuffer(
  self : WebGL2RenderingContext,
) -> WebGLRenderbuffer =
  #| (self) => self.createRenderbuffer()

///|
pub extern "js" fn WebGL2RenderingContext::create_shader(
  self : WebGL2RenderingContext,
  type_ : GLenum,
) -> WebGLShader? =
  #| (self, type_) => self.createShader(type_)

///|
pub extern "js" fn WebGL2RenderingContext::create_texture(
  self : WebGL2RenderingContext,
) -> WebGLTexture =
  #| (self) => self.createTexture()

///|
pub extern "js" fn WebGL2RenderingContext::cull_face(
  self : WebGL2RenderingContext,
  mode : GLenum,
) -> Unit =
  #| (self, mode) => self.cullFace(mode)

///|
pub extern "js" fn WebGL2RenderingContext::delete_buffer(
  self : WebGL2RenderingContext,
  buffer : WebGLBuffer?,
) -> Unit =
  #| (self, buffer) => self.deleteBuffer(buffer)

///|
pub extern "js" fn WebGL2RenderingContext::delete_framebuffer(
  self : WebGL2RenderingContext,
  framebuffer : WebGLFramebuffer?,
) -> Unit =
  #| (self, framebuffer) => self.deleteFramebuffer(framebuffer)

///|
pub extern "js" fn WebGL2RenderingContext::delete_program(
  self : WebGL2RenderingContext,
  program : WebGLProgram?,
) -> Unit =
  #| (self, program) => self.deleteProgram(program)

///|
pub extern "js" fn WebGL2RenderingContext::delete_renderbuffer(
  self : WebGL2RenderingContext,
  renderbuffer : WebGLRenderbuffer?,
) -> Unit =
  #| (self, renderbuffer) => self.deleteRenderbuffer(renderbuffer)

///|
pub extern "js" fn WebGL2RenderingContext::delete_shader(
  self : WebGL2RenderingContext,
  shader : WebGLShader?,
) -> Unit =
  #| (self, shader) => self.deleteShader(shader)

///|
pub extern "js" fn WebGL2RenderingContext::delete_texture(
  self : WebGL2RenderingContext,
  texture : WebGLTexture?,
) -> Unit =
  #| (self, texture) => self.deleteTexture(texture)

///|
pub extern "js" fn WebGL2RenderingContext::depth_func(
  self : WebGL2RenderingContext,
  func : GLenum,
) -> Unit =
  #| (self, func) => self.depthFunc(func)

///|
pub extern "js" fn WebGL2RenderingContext::depth_mask(
  self : WebGL2RenderingContext,
  flag : GLboolean,
) -> Unit =
  #| (self, flag) => self.depthMask(flag)

///|
pub extern "js" fn WebGL2RenderingContext::depth_range(
  self : WebGL2RenderingContext,
  z_near : GLclampf,
  z_far : GLclampf,
) -> Unit =
  #| (self, z_near, z_far) => self.depthRange(z_near, z_far)

///|
pub extern "js" fn WebGL2RenderingContext::detach_shader(
  self : WebGL2RenderingContext,
  program : WebGLProgram,
  shader : WebGLShader,
) -> Unit =
  #| (self, program, shader) => self.detachShader(program, shader)

///|
pub extern "js" fn WebGL2RenderingContext::disable(
  self : WebGL2RenderingContext,
  cap : GLenum,
) -> Unit =
  #| (self, cap) => self.disable(cap)

///|
pub extern "js" fn WebGL2RenderingContext::disable_vertex_attrib_array(
  self : WebGL2RenderingContext,
  index : GLuint,
) -> Unit =
  #| (self, index) => self.disableVertexAttribArray(index)

///|
pub extern "js" fn WebGL2RenderingContext::draw_arrays(
  self : WebGL2RenderingContext,
  mode : GLenum,
  first : GLint,
  count : GLsizei,
) -> Unit =
  #| (self, mode, first, count) => self.drawArrays(mode, first, count)

///|
pub extern "js" fn WebGL2RenderingContext::draw_elements(
  self : WebGL2RenderingContext,
  mode : GLenum,
  count : GLsizei,
  type_ : GLenum,
  offset : GLintptr,
) -> Unit =
  #| (self, mode, count, type_, offset) => self.drawElements(mode, count, type_, offset)

///|
pub extern "js" fn WebGL2RenderingContext::enable(
  self : WebGL2RenderingContext,
  cap : GLenum,
) -> Unit =
  #| (self, cap) => self.enable(cap)

///|
pub extern "js" fn WebGL2RenderingContext::enable_vertex_attrib_array(
  self : WebGL2RenderingContext,
  index : GLuint,
) -> Unit =
  #| (self, index) => self.enableVertexAttribArray(index)

///|
pub extern "js" fn WebGL2RenderingContext::finish(
  self : WebGL2RenderingContext,
) -> Unit =
  #| (self) => self.finish()

///|
pub extern "js" fn WebGL2RenderingContext::flush(
  self : WebGL2RenderingContext,
) -> Unit =
  #| (self) => self.flush()

///|
pub extern "js" fn WebGL2RenderingContext::framebuffer_renderbuffer(
  self : WebGL2RenderingContext,
  target : GLenum,
  attachment : GLenum,
  renderbuffertarget : GLenum,
  renderbuffer : WebGLRenderbuffer?,
) -> Unit =
  #| (self, target, attachment, renderbuffertarget, renderbuffer) => self.framebufferRenderbuffer(target, attachment, renderbuffertarget, renderbuffer)

///|
pub extern "js" fn WebGL2RenderingContext::framebuffer_texture2_d(
  self : WebGL2RenderingContext,
  target : GLenum,
  attachment : GLenum,
  textarget : GLenum,
  texture : WebGLTexture?,
  level : GLint,
) -> Unit =
  #| (self, target, attachment, textarget, texture, level) => self.framebufferTexture2D(target, attachment, textarget, texture, level)

///|
pub extern "js" fn WebGL2RenderingContext::front_face(
  self : WebGL2RenderingContext,
  mode : GLenum,
) -> Unit =
  #| (self, mode) => self.frontFace(mode)

///|
pub extern "js" fn WebGL2RenderingContext::generate_mipmap(
  self : WebGL2RenderingContext,
  target : GLenum,
) -> Unit =
  #| (self, target) => self.generateMipmap(target)

///|
pub extern "js" fn WebGL2RenderingContext::get_active_attrib(
  self : WebGL2RenderingContext,
  program : WebGLProgram,
  index : GLuint,
) -> WebGLActiveInfo? =
  #| (self, program, index) => self.getActiveAttrib(program, index)

///|
pub extern "js" fn WebGL2RenderingContext::get_active_uniform(
  self : WebGL2RenderingContext,
  program : WebGLProgram,
  index : GLuint,
) -> WebGLActiveInfo? =
  #| (self, program, index) => self.getActiveUniform(program, index)

///|
pub extern "js" fn WebGL2RenderingContext::get_attached_shaders(
  self : WebGL2RenderingContext,
  program : WebGLProgram,
) -> Array[WebGLShader] =
  #| (self, program) => self.getAttachedShaders(program)

///|
pub extern "js" fn WebGL2RenderingContext::get_attrib_location(
  self : WebGL2RenderingContext,
  program : WebGLProgram,
  name : String,
) -> GLint =
  #| (self, program, name) => self.getAttribLocation(program, name)

///|
pub extern "js" fn WebGL2RenderingContext::get_buffer_parameter(
  self : WebGL2RenderingContext,
  target : GLenum,
  pname : GLenum,
) -> JsValue =
  #| (self, target, pname) => self.getBufferParameter(target, pname)

///|
pub extern "js" fn WebGL2RenderingContext::get_parameter(
  self : WebGL2RenderingContext,
  pname : GLenum,
) -> JsValue =
  #| (self, pname) => self.getParameter(pname)

///|
pub extern "js" fn WebGL2RenderingContext::get_error(
  self : WebGL2RenderingContext,
) -> GLenum =
  #| (self) => self.getError()

///|
pub extern "js" fn WebGL2RenderingContext::get_framebuffer_attachment_parameter(
  self : WebGL2RenderingContext,
  target : GLenum,
  attachment : GLenum,
  pname : GLenum,
) -> JsValue =
  #| (self, target, attachment, pname) => self.getFramebufferAttachmentParameter(target, attachment, pname)

///|
pub extern "js" fn WebGL2RenderingContext::get_program_parameter(
  self : WebGL2RenderingContext,
  program : WebGLProgram,
  pname : GLenum,
) -> JsValue =
  #| (self, program, pname) => self.getProgramParameter(program, pname)

///|
pub extern "js" fn WebGL2RenderingContext::get_program_info_log(
  self : WebGL2RenderingContext,
  program : WebGLProgram,
) -> String? =
  #| (self, program) => self.getProgramInfoLog(program)

///|
pub extern "js" fn WebGL2RenderingContext::get_renderbuffer_parameter(
  self : WebGL2RenderingContext,
  target : GLenum,
  pname : GLenum,
) -> JsValue =
  #| (self, target, pname) => self.getRenderbufferParameter(target, pname)

///|
pub extern "js" fn WebGL2RenderingContext::get_shader_parameter(
  self : WebGL2RenderingContext,
  shader : WebGLShader,
  pname : GLenum,
) -> JsValue =
  #| (self, shader, pname) => self.getShaderParameter(shader, pname)

///|
pub extern "js" fn WebGL2RenderingContext::get_shader_precision_format(
  self : WebGL2RenderingContext,
  shadertype : GLenum,
  precisiontype : GLenum,
) -> WebGLShaderPrecisionFormat? =
  #| (self, shadertype, precisiontype) => self.getShaderPrecisionFormat(shadertype, precisiontype)

///|
pub extern "js" fn WebGL2RenderingContext::get_shader_info_log(
  self : WebGL2RenderingContext,
  shader : WebGLShader,
) -> String? =
  #| (self, shader) => self.getShaderInfoLog(shader)

///|
pub extern "js" fn WebGL2RenderingContext::get_shader_source(
  self : WebGL2RenderingContext,
  shader : WebGLShader,
) -> String? =
  #| (self, shader) => self.getShaderSource(shader)

///|
pub extern "js" fn WebGL2RenderingContext::get_tex_parameter(
  self : WebGL2RenderingContext,
  target : GLenum,
  pname : GLenum,
) -> JsValue =
  #| (self, target, pname) => self.getTexParameter(target, pname)

///|
pub extern "js" fn WebGL2RenderingContext::get_uniform(
  self : WebGL2RenderingContext,
  program : WebGLProgram,
  location : WebGLUniformLocation,
) -> JsValue =
  #| (self, program, location) => self.getUniform(program, location)

///|
pub extern "js" fn WebGL2RenderingContext::get_uniform_location(
  self : WebGL2RenderingContext,
  program : WebGLProgram,
  name : String,
) -> WebGLUniformLocation? =
  #| (self, program, name) => self.getUniformLocation(program, name)

///|
pub extern "js" fn WebGL2RenderingContext::get_vertex_attrib(
  self : WebGL2RenderingContext,
  index : GLuint,
  pname : GLenum,
) -> JsValue =
  #| (self, index, pname) => self.getVertexAttrib(index, pname)

///|
pub extern "js" fn WebGL2RenderingContext::get_vertex_attrib_offset(
  self : WebGL2RenderingContext,
  index : GLuint,
  pname : GLenum,
) -> GLintptr =
  #| (self, index, pname) => self.getVertexAttribOffset(index, pname)

///|
pub extern "js" fn WebGL2RenderingContext::hint(
  self : WebGL2RenderingContext,
  target : GLenum,
  mode : GLenum,
) -> Unit =
  #| (self, target, mode) => self.hint(target, mode)

///|
pub extern "js" fn WebGL2RenderingContext::is_buffer(
  self : WebGL2RenderingContext,
  buffer : WebGLBuffer?,
) -> GLboolean =
  #| (self, buffer) => self.isBuffer(buffer)

///|
pub extern "js" fn WebGL2RenderingContext::is_enabled(
  self : WebGL2RenderingContext,
  cap : GLenum,
) -> GLboolean =
  #| (self, cap) => self.isEnabled(cap)

///|
pub extern "js" fn WebGL2RenderingContext::is_framebuffer(
  self : WebGL2RenderingContext,
  framebuffer : WebGLFramebuffer?,
) -> GLboolean =
  #| (self, framebuffer) => self.isFramebuffer(framebuffer)

///|
pub extern "js" fn WebGL2RenderingContext::is_program(
  self : WebGL2RenderingContext,
  program : WebGLProgram?,
) -> GLboolean =
  #| (self, program) => self.isProgram(program)

///|
pub extern "js" fn WebGL2RenderingContext::is_renderbuffer(
  self : WebGL2RenderingContext,
  renderbuffer : WebGLRenderbuffer?,
) -> GLboolean =
  #| (self, renderbuffer) => self.isRenderbuffer(renderbuffer)

///|
pub extern "js" fn WebGL2RenderingContext::is_shader(
  self : WebGL2RenderingContext,
  shader : WebGLShader?,
) -> GLboolean =
  #| (self, shader) => self.isShader(shader)

///|
pub extern "js" fn WebGL2RenderingContext::is_texture(
  self : WebGL2RenderingContext,
  texture : WebGLTexture?,
) -> GLboolean =
  #| (self, texture) => self.isTexture(texture)

///|
pub extern "js" fn WebGL2RenderingContext::line_width(
  self : WebGL2RenderingContext,
  width : GLfloat,
) -> Unit =
  #| (self, width) => self.lineWidth(width)

///|
pub extern "js" fn WebGL2RenderingContext::link_program(
  self : WebGL2RenderingContext,
  program : WebGLProgram,
) -> Unit =
  #| (self, program) => self.linkProgram(program)

///|
pub extern "js" fn WebGL2RenderingContext::pixel_storei(
  self : WebGL2RenderingContext,
  pname : GLenum,
  param : GLint,
) -> Unit =
  #| (self, pname, param) => self.pixelStorei(pname, param)

///|
pub extern "js" fn WebGL2RenderingContext::polygon_offset(
  self : WebGL2RenderingContext,
  factor : GLfloat,
  units : GLfloat,
) -> Unit =
  #| (self, factor, units) => self.polygonOffset(factor, units)

///|
pub extern "js" fn WebGL2RenderingContext::renderbuffer_storage(
  self : WebGL2RenderingContext,
  target : GLenum,
  internalformat : GLenum,
  width : GLsizei,
  height : GLsizei,
) -> Unit =
  #| (self, target, internalformat, width, height) => self.renderbufferStorage(target, internalformat, width, height)

///|
pub extern "js" fn WebGL2RenderingContext::sample_coverage(
  self : WebGL2RenderingContext,
  value : GLclampf,
  invert : GLboolean,
) -> Unit =
  #| (self, value, invert) => self.sampleCoverage(value, invert)

///|
pub extern "js" fn WebGL2RenderingContext::scissor(
  self : WebGL2RenderingContext,
  x : GLint,
  y : GLint,
  width : GLsizei,
  height : GLsizei,
) -> Unit =
  #| (self, x, y, width, height) => self.scissor(x, y, width, height)

///|
pub extern "js" fn WebGL2RenderingContext::shader_source(
  self : WebGL2RenderingContext,
  shader : WebGLShader,
  source : String,
) -> Unit =
  #| (self, shader, source) => self.shaderSource(shader, source)

///|
pub extern "js" fn WebGL2RenderingContext::stencil_func(
  self : WebGL2RenderingContext,
  func : GLenum,
  ref_ : GLint,
  mask : GLuint,
) -> Unit =
  #| (self, func, ref_, mask) => self.stencilFunc(func, ref_, mask)

///|
pub extern "js" fn WebGL2RenderingContext::stencil_func_separate(
  self : WebGL2RenderingContext,
  face : GLenum,
  func : GLenum,
  ref_ : GLint,
  mask : GLuint,
) -> Unit =
  #| (self, face, func, ref_, mask) => self.stencilFuncSeparate(face, func, ref_, mask)

///|
pub extern "js" fn WebGL2RenderingContext::stencil_mask(
  self : WebGL2RenderingContext,
  mask : GLuint,
) -> Unit =
  #| (self, mask) => self.stencilMask(mask)

///|
pub extern "js" fn WebGL2RenderingContext::stencil_mask_separate(
  self : WebGL2RenderingContext,
  face : GLenum,
  mask : GLuint,
) -> Unit =
  #| (self, face, mask) => self.stencilMaskSeparate(face, mask)

///|
pub extern "js" fn WebGL2RenderingContext::stencil_op(
  self : WebGL2RenderingContext,
  fail : GLenum,
  zfail : GLenum,
  zpass : GLenum,
) -> Unit =
  #| (self, fail, zfail, zpass) => self.stencilOp(fail, zfail, zpass)

///|
pub extern "js" fn WebGL2RenderingContext::stencil_op_separate(
  self : WebGL2RenderingContext,
  face : GLenum,
  fail : GLenum,
  zfail : GLenum,
  zpass : GLenum,
) -> Unit =
  #| (self, face, fail, zfail, zpass) => self.stencilOpSeparate(face, fail, zfail, zpass)

///|
pub extern "js" fn WebGL2RenderingContext::tex_parameterf(
  self : WebGL2RenderingContext,
  target : GLenum,
  pname : GLenum,
  param : GLfloat,
) -> Unit =
  #| (self, target, pname, param) => self.texParameterf(target, pname, param)

///|
pub extern "js" fn WebGL2RenderingContext::tex_parameteri(
  self : WebGL2RenderingContext,
  target : GLenum,
  pname : GLenum,
  param : GLint,
) -> Unit =
  #| (self, target, pname, param) => self.texParameteri(target, pname, param)

///|
pub extern "js" fn WebGL2RenderingContext::uniform1f(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  x : GLfloat,
) -> Unit =
  #| (self, location, x) => self.uniform1f(location, x)

///|
pub extern "js" fn WebGL2RenderingContext::uniform2f(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  x : GLfloat,
  y : GLfloat,
) -> Unit =
  #| (self, location, x, y) => self.uniform2f(location, x, y)

///|
pub extern "js" fn WebGL2RenderingContext::uniform3f(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  x : GLfloat,
  y : GLfloat,
  z : GLfloat,
) -> Unit =
  #| (self, location, x, y, z) => self.uniform3f(location, x, y, z)

///|
pub extern "js" fn WebGL2RenderingContext::uniform4f(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  x : GLfloat,
  y : GLfloat,
  z : GLfloat,
  w : GLfloat,
) -> Unit =
  #| (self, location, x, y, z, w) => self.uniform4f(location, x, y, z, w)

///|
pub extern "js" fn WebGL2RenderingContext::uniform1i(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  x : GLint,
) -> Unit =
  #| (self, location, x) => self.uniform1i(location, x)

///|
pub extern "js" fn WebGL2RenderingContext::uniform2i(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  x : GLint,
  y : GLint,
) -> Unit =
  #| (self, location, x, y) => self.uniform2i(location, x, y)

///|
pub extern "js" fn WebGL2RenderingContext::uniform3i(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  x : GLint,
  y : GLint,
  z : GLint,
) -> Unit =
  #| (self, location, x, y, z) => self.uniform3i(location, x, y, z)

///|
pub extern "js" fn WebGL2RenderingContext::uniform4i(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  x : GLint,
  y : GLint,
  z : GLint,
  w : GLint,
) -> Unit =
  #| (self, location, x, y, z, w) => self.uniform4i(location, x, y, z, w)

///|
pub extern "js" fn WebGL2RenderingContext::use_program(
  self : WebGL2RenderingContext,
  program : WebGLProgram?,
) -> Unit =
  #| (self, program) => self.useProgram(program)

///|
pub extern "js" fn WebGL2RenderingContext::validate_program(
  self : WebGL2RenderingContext,
  program : WebGLProgram,
) -> Unit =
  #| (self, program) => self.validateProgram(program)

///|
pub extern "js" fn WebGL2RenderingContext::vertex_attrib1f(
  self : WebGL2RenderingContext,
  index : GLuint,
  x : GLfloat,
) -> Unit =
  #| (self, index, x) => self.vertexAttrib1f(index, x)

///|
pub extern "js" fn WebGL2RenderingContext::vertex_attrib2f(
  self : WebGL2RenderingContext,
  index : GLuint,
  x : GLfloat,
  y : GLfloat,
) -> Unit =
  #| (self, index, x, y) => self.vertexAttrib2f(index, x, y)

///|
pub extern "js" fn WebGL2RenderingContext::vertex_attrib3f(
  self : WebGL2RenderingContext,
  index : GLuint,
  x : GLfloat,
  y : GLfloat,
  z : GLfloat,
) -> Unit =
  #| (self, index, x, y, z) => self.vertexAttrib3f(index, x, y, z)

///|
pub extern "js" fn WebGL2RenderingContext::vertex_attrib4f(
  self : WebGL2RenderingContext,
  index : GLuint,
  x : GLfloat,
  y : GLfloat,
  z : GLfloat,
  w : GLfloat,
) -> Unit =
  #| (self, index, x, y, z, w) => self.vertexAttrib4f(index, x, y, z, w)

///|
pub extern "js" fn WebGL2RenderingContext::vertex_attrib1fv(
  self : WebGL2RenderingContext,
  index : GLuint,
  values : Float32List,
) -> Unit =
  #| (self, index, values) => self.vertexAttrib1fv(index, values)

///|
pub extern "js" fn WebGL2RenderingContext::vertex_attrib2fv(
  self : WebGL2RenderingContext,
  index : GLuint,
  values : Float32List,
) -> Unit =
  #| (self, index, values) => self.vertexAttrib2fv(index, values)

///|
pub extern "js" fn WebGL2RenderingContext::vertex_attrib3fv(
  self : WebGL2RenderingContext,
  index : GLuint,
  values : Float32List,
) -> Unit =
  #| (self, index, values) => self.vertexAttrib3fv(index, values)

///|
pub extern "js" fn WebGL2RenderingContext::vertex_attrib4fv(
  self : WebGL2RenderingContext,
  index : GLuint,
  values : Float32List,
) -> Unit =
  #| (self, index, values) => self.vertexAttrib4fv(index, values)

///|
pub extern "js" fn WebGL2RenderingContext::vertex_attrib_pointer(
  self : WebGL2RenderingContext,
  index : GLuint,
  size : GLint,
  type_ : GLenum,
  normalized : GLboolean,
  stride : GLsizei,
  offset : GLintptr,
) -> Unit =
  #| (self, index, size, type_, normalized, stride, offset) => self.vertexAttribPointer(index, size, type_, normalized, stride, offset)

///|
pub extern "js" fn WebGL2RenderingContext::viewport(
  self : WebGL2RenderingContext,
  x : GLint,
  y : GLint,
  width : GLsizei,
  height : GLsizei,
) -> Unit =
  #| (self, x, y, width, height) => self.viewport(x, y, width, height)

///|
pub extern "js" fn WebGL2RenderingContext::make_x_r_compatible(
  self : WebGL2RenderingContext,
) -> Promise[Unit] =
  #| (self) => self.makeXRCompatible()

// WebGL2RenderingContext.READ_BUFFER

///|
pub let web_g_l2_rendering_context_read_buffer : Int = 0x0C02

// WebGL2RenderingContext.UNPACK_ROW_LENGTH

///|
pub let web_g_l2_rendering_context_unpack_row_length : Int = 0x0CF2

// WebGL2RenderingContext.UNPACK_SKIP_ROWS

///|
pub let web_g_l2_rendering_context_unpack_skip_rows : Int = 0x0CF3

// WebGL2RenderingContext.UNPACK_SKIP_PIXELS

///|
pub let web_g_l2_rendering_context_unpack_skip_pixels : Int = 0x0CF4

// WebGL2RenderingContext.PACK_ROW_LENGTH

///|
pub let web_g_l2_rendering_context_pack_row_length : Int = 0x0D02

// WebGL2RenderingContext.PACK_SKIP_ROWS

///|
pub let web_g_l2_rendering_context_pack_skip_rows : Int = 0x0D03

// WebGL2RenderingContext.PACK_SKIP_PIXELS

///|
pub let web_g_l2_rendering_context_pack_skip_pixels : Int = 0x0D04

// WebGL2RenderingContext.COLOR

///|
pub let web_g_l2_rendering_context_color : Int = 0x1800

// WebGL2RenderingContext.DEPTH

///|
pub let web_g_l2_rendering_context_depth : Int = 0x1801

// WebGL2RenderingContext.STENCIL

///|
pub let web_g_l2_rendering_context_stencil : Int = 0x1802

// WebGL2RenderingContext.RED

///|
pub let web_g_l2_rendering_context_red : Int = 0x1903

// WebGL2RenderingContext.RGB8

///|
pub let web_g_l2_rendering_context_rgb8 : Int = 0x8051

// WebGL2RenderingContext.RGB10_A2

///|
pub let web_g_l2_rendering_context_rgb10_a2 : Int = 0x8059

// WebGL2RenderingContext.TEXTURE_BINDING_3D

///|
pub let web_g_l2_rendering_context_texture_binding_3d : Int = 0x806A

// WebGL2RenderingContext.UNPACK_SKIP_IMAGES

///|
pub let web_g_l2_rendering_context_unpack_skip_images : Int = 0x806D

// WebGL2RenderingContext.UNPACK_IMAGE_HEIGHT

///|
pub let web_g_l2_rendering_context_unpack_image_height : Int = 0x806E

// WebGL2RenderingContext.TEXTURE_3D

///|
pub let web_g_l2_rendering_context_texture_3d : Int = 0x806F

// WebGL2RenderingContext.TEXTURE_WRAP_R

///|
pub let web_g_l2_rendering_context_texture_wrap_r : Int = 0x8072

// WebGL2RenderingContext.MAX_3D_TEXTURE_SIZE

///|
pub let web_g_l2_rendering_context_max_3d_texture_size : Int = 0x8073

// WebGL2RenderingContext.UNSIGNED_INT_2_10_10_10_REV

///|
pub let web_g_l2_rendering_context_unsigned_int_2_10_10_10_rev : Int = 0x8368

// WebGL2RenderingContext.MAX_ELEMENTS_VERTICES

///|
pub let web_g_l2_rendering_context_max_elements_vertices : Int = 0x80E8

// WebGL2RenderingContext.MAX_ELEMENTS_INDICES

///|
pub let web_g_l2_rendering_context_max_elements_indices : Int = 0x80E9

// WebGL2RenderingContext.TEXTURE_MIN_LOD

///|
pub let web_g_l2_rendering_context_texture_min_lod : Int = 0x813A

// WebGL2RenderingContext.TEXTURE_MAX_LOD

///|
pub let web_g_l2_rendering_context_texture_max_lod : Int = 0x813B

// WebGL2RenderingContext.TEXTURE_BASE_LEVEL

///|
pub let web_g_l2_rendering_context_texture_base_level : Int = 0x813C

// WebGL2RenderingContext.TEXTURE_MAX_LEVEL

///|
pub let web_g_l2_rendering_context_texture_max_level : Int = 0x813D

// WebGL2RenderingContext.MIN

///|
pub let web_g_l2_rendering_context_min : Int = 0x8007

// WebGL2RenderingContext.MAX

///|
pub let web_g_l2_rendering_context_max : Int = 0x8008

// WebGL2RenderingContext.DEPTH_COMPONENT24

///|
pub let web_g_l2_rendering_context_depth_component24 : Int = 0x81A6

// WebGL2RenderingContext.MAX_TEXTURE_LOD_BIAS

///|
pub let web_g_l2_rendering_context_max_texture_lod_bias : Int = 0x84FD

// WebGL2RenderingContext.TEXTURE_COMPARE_MODE

///|
pub let web_g_l2_rendering_context_texture_compare_mode : Int = 0x884C

// WebGL2RenderingContext.TEXTURE_COMPARE_FUNC

///|
pub let web_g_l2_rendering_context_texture_compare_func : Int = 0x884D

// WebGL2RenderingContext.CURRENT_QUERY

///|
pub let web_g_l2_rendering_context_current_query : Int = 0x8865

// WebGL2RenderingContext.QUERY_RESULT

///|
pub let web_g_l2_rendering_context_query_result : Int = 0x8866

// WebGL2RenderingContext.QUERY_RESULT_AVAILABLE

///|
pub let web_g_l2_rendering_context_query_result_available : Int = 0x8867

// WebGL2RenderingContext.STREAM_READ

///|
pub let web_g_l2_rendering_context_stream_read : Int = 0x88E1

// WebGL2RenderingContext.STREAM_COPY

///|
pub let web_g_l2_rendering_context_stream_copy : Int = 0x88E2

// WebGL2RenderingContext.STATIC_READ

///|
pub let web_g_l2_rendering_context_static_read : Int = 0x88E5

// WebGL2RenderingContext.STATIC_COPY

///|
pub let web_g_l2_rendering_context_static_copy : Int = 0x88E6

// WebGL2RenderingContext.DYNAMIC_READ

///|
pub let web_g_l2_rendering_context_dynamic_read : Int = 0x88E9

// WebGL2RenderingContext.DYNAMIC_COPY

///|
pub let web_g_l2_rendering_context_dynamic_copy : Int = 0x88EA

// WebGL2RenderingContext.MAX_DRAW_BUFFERS

///|
pub let web_g_l2_rendering_context_max_draw_buffers : Int = 0x8824

// WebGL2RenderingContext.DRAW_BUFFER0

///|
pub let web_g_l2_rendering_context_draw_buffer0 : Int = 0x8825

// WebGL2RenderingContext.DRAW_BUFFER1

///|
pub let web_g_l2_rendering_context_draw_buffer1 : Int = 0x8826

// WebGL2RenderingContext.DRAW_BUFFER2

///|
pub let web_g_l2_rendering_context_draw_buffer2 : Int = 0x8827

// WebGL2RenderingContext.DRAW_BUFFER3

///|
pub let web_g_l2_rendering_context_draw_buffer3 : Int = 0x8828

// WebGL2RenderingContext.DRAW_BUFFER4

///|
pub let web_g_l2_rendering_context_draw_buffer4 : Int = 0x8829

// WebGL2RenderingContext.DRAW_BUFFER5

///|
pub let web_g_l2_rendering_context_draw_buffer5 : Int = 0x882A

// WebGL2RenderingContext.DRAW_BUFFER6

///|
pub let web_g_l2_rendering_context_draw_buffer6 : Int = 0x882B

// WebGL2RenderingContext.DRAW_BUFFER7

///|
pub let web_g_l2_rendering_context_draw_buffer7 : Int = 0x882C

// WebGL2RenderingContext.DRAW_BUFFER8

///|
pub let web_g_l2_rendering_context_draw_buffer8 : Int = 0x882D

// WebGL2RenderingContext.DRAW_BUFFER9

///|
pub let web_g_l2_rendering_context_draw_buffer9 : Int = 0x882E

// WebGL2RenderingContext.DRAW_BUFFER10

///|
pub let web_g_l2_rendering_context_draw_buffer10 : Int = 0x882F

// WebGL2RenderingContext.DRAW_BUFFER11

///|
pub let web_g_l2_rendering_context_draw_buffer11 : Int = 0x8830

// WebGL2RenderingContext.DRAW_BUFFER12

///|
pub let web_g_l2_rendering_context_draw_buffer12 : Int = 0x8831

// WebGL2RenderingContext.DRAW_BUFFER13

///|
pub let web_g_l2_rendering_context_draw_buffer13 : Int = 0x8832

// WebGL2RenderingContext.DRAW_BUFFER14

///|
pub let web_g_l2_rendering_context_draw_buffer14 : Int = 0x8833

// WebGL2RenderingContext.DRAW_BUFFER15

///|
pub let web_g_l2_rendering_context_draw_buffer15 : Int = 0x8834

// WebGL2RenderingContext.MAX_FRAGMENT_UNIFORM_COMPONENTS

///|
pub let web_g_l2_rendering_context_max_fragment_uniform_components : Int = 0x8B49

// WebGL2RenderingContext.MAX_VERTEX_UNIFORM_COMPONENTS

///|
pub let web_g_l2_rendering_context_max_vertex_uniform_components : Int = 0x8B4A

// WebGL2RenderingContext.SAMPLER_3D

///|
pub let web_g_l2_rendering_context_sampler_3d : Int = 0x8B5F

// WebGL2RenderingContext.SAMPLER_2D_SHADOW

///|
pub let web_g_l2_rendering_context_sampler_2d_shadow : Int = 0x8B62

// WebGL2RenderingContext.FRAGMENT_SHADER_DERIVATIVE_HINT

///|
pub let web_g_l2_rendering_context_fragment_shader_derivative_hint : Int = 0x8B8B

// WebGL2RenderingContext.PIXEL_PACK_BUFFER

///|
pub let web_g_l2_rendering_context_pixel_pack_buffer : Int = 0x88EB

// WebGL2RenderingContext.PIXEL_UNPACK_BUFFER

///|
pub let web_g_l2_rendering_context_pixel_unpack_buffer : Int = 0x88EC

// WebGL2RenderingContext.PIXEL_PACK_BUFFER_BINDING

///|
pub let web_g_l2_rendering_context_pixel_pack_buffer_binding : Int = 0x88ED

// WebGL2RenderingContext.PIXEL_UNPACK_BUFFER_BINDING

///|
pub let web_g_l2_rendering_context_pixel_unpack_buffer_binding : Int = 0x88EF

// WebGL2RenderingContext.FLOAT_MAT2x3

///|
pub let web_g_l2_rendering_context_float_mat2x3 : Int = 0x8B65

// WebGL2RenderingContext.FLOAT_MAT2x4

///|
pub let web_g_l2_rendering_context_float_mat2x4 : Int = 0x8B66

// WebGL2RenderingContext.FLOAT_MAT3x2

///|
pub let web_g_l2_rendering_context_float_mat3x2 : Int = 0x8B67

// WebGL2RenderingContext.FLOAT_MAT3x4

///|
pub let web_g_l2_rendering_context_float_mat3x4 : Int = 0x8B68

// WebGL2RenderingContext.FLOAT_MAT4x2

///|
pub let web_g_l2_rendering_context_float_mat4x2 : Int = 0x8B69

// WebGL2RenderingContext.FLOAT_MAT4x3

///|
pub let web_g_l2_rendering_context_float_mat4x3 : Int = 0x8B6A

// WebGL2RenderingContext.SRGB

///|
pub let web_g_l2_rendering_context_srgb : Int = 0x8C40

// WebGL2RenderingContext.SRGB8

///|
pub let web_g_l2_rendering_context_srgb8 : Int = 0x8C41

// WebGL2RenderingContext.SRGB8_ALPHA8

///|
pub let web_g_l2_rendering_context_srgb8_alpha8 : Int = 0x8C43

// WebGL2RenderingContext.COMPARE_REF_TO_TEXTURE

///|
pub let web_g_l2_rendering_context_compare_ref_to_texture : Int = 0x884E

// WebGL2RenderingContext.RGBA32F

///|
pub let web_g_l2_rendering_context_rgba32f : Int = 0x8814

// WebGL2RenderingContext.RGB32F

///|
pub let web_g_l2_rendering_context_rgb32f : Int = 0x8815

// WebGL2RenderingContext.RGBA16F

///|
pub let web_g_l2_rendering_context_rgba16f : Int = 0x881A

// WebGL2RenderingContext.RGB16F

///|
pub let web_g_l2_rendering_context_rgb16f : Int = 0x881B

// WebGL2RenderingContext.VERTEX_ATTRIB_ARRAY_INTEGER

///|
pub let web_g_l2_rendering_context_vertex_attrib_array_integer : Int = 0x88FD

// WebGL2RenderingContext.MAX_ARRAY_TEXTURE_LAYERS

///|
pub let web_g_l2_rendering_context_max_array_texture_layers : Int = 0x88FF

// WebGL2RenderingContext.MIN_PROGRAM_TEXEL_OFFSET

///|
pub let web_g_l2_rendering_context_min_program_texel_offset : Int = 0x8904

// WebGL2RenderingContext.MAX_PROGRAM_TEXEL_OFFSET

///|
pub let web_g_l2_rendering_context_max_program_texel_offset : Int = 0x8905

// WebGL2RenderingContext.MAX_VARYING_COMPONENTS

///|
pub let web_g_l2_rendering_context_max_varying_components : Int = 0x8B4B

// WebGL2RenderingContext.TEXTURE_2D_ARRAY

///|
pub let web_g_l2_rendering_context_texture_2d_array : Int = 0x8C1A

// WebGL2RenderingContext.TEXTURE_BINDING_2D_ARRAY

///|
pub let web_g_l2_rendering_context_texture_binding_2d_array : Int = 0x8C1D

// WebGL2RenderingContext.R11F_G11F_B10F

///|
pub let web_g_l2_rendering_context_r11f_g11f_b10f : Int = 0x8C3A

// WebGL2RenderingContext.UNSIGNED_INT_10F_11F_11F_REV

///|
pub let web_g_l2_rendering_context_unsigned_int_10f_11f_11f_rev : Int = 0x8C3B

// WebGL2RenderingContext.RGB9_E5

///|
pub let web_g_l2_rendering_context_rgb9_e5 : Int = 0x8C3D

// WebGL2RenderingContext.UNSIGNED_INT_5_9_9_9_REV

///|
pub let web_g_l2_rendering_context_unsigned_int_5_9_9_9_rev : Int = 0x8C3E

// WebGL2RenderingContext.TRANSFORM_FEEDBACK_BUFFER_MODE

///|
pub let web_g_l2_rendering_context_transform_feedback_buffer_mode : Int = 0x8C7F

// WebGL2RenderingContext.MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS

///|
pub let web_g_l2_rendering_context_max_transform_feedback_separate_components : Int = 0x8C80

// WebGL2RenderingContext.TRANSFORM_FEEDBACK_VARYINGS

///|
pub let web_g_l2_rendering_context_transform_feedback_varyings : Int = 0x8C83

// WebGL2RenderingContext.TRANSFORM_FEEDBACK_BUFFER_START

///|
pub let web_g_l2_rendering_context_transform_feedback_buffer_start : Int = 0x8C84

// WebGL2RenderingContext.TRANSFORM_FEEDBACK_BUFFER_SIZE

///|
pub let web_g_l2_rendering_context_transform_feedback_buffer_size : Int = 0x8C85

// WebGL2RenderingContext.TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN

///|
pub let web_g_l2_rendering_context_transform_feedback_primitives_written : Int = 0x8C88

// WebGL2RenderingContext.RASTERIZER_DISCARD

///|
pub let web_g_l2_rendering_context_rasterizer_discard : Int = 0x8C89

// WebGL2RenderingContext.MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS

///|
pub let web_g_l2_rendering_context_max_transform_feedback_interleaved_components : Int = 0x8C8A

// WebGL2RenderingContext.MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS

///|
pub let web_g_l2_rendering_context_max_transform_feedback_separate_attribs : Int = 0x8C8B

// WebGL2RenderingContext.INTERLEAVED_ATTRIBS

///|
pub let web_g_l2_rendering_context_interleaved_attribs : Int = 0x8C8C

// WebGL2RenderingContext.SEPARATE_ATTRIBS

///|
pub let web_g_l2_rendering_context_separate_attribs : Int = 0x8C8D

// WebGL2RenderingContext.TRANSFORM_FEEDBACK_BUFFER

///|
pub let web_g_l2_rendering_context_transform_feedback_buffer : Int = 0x8C8E

// WebGL2RenderingContext.TRANSFORM_FEEDBACK_BUFFER_BINDING

///|
pub let web_g_l2_rendering_context_transform_feedback_buffer_binding : Int = 0x8C8F

// WebGL2RenderingContext.RGBA32UI

///|
pub let web_g_l2_rendering_context_rgba32ui : Int = 0x8D70

// WebGL2RenderingContext.RGB32UI

///|
pub let web_g_l2_rendering_context_rgb32ui : Int = 0x8D71

// WebGL2RenderingContext.RGBA16UI

///|
pub let web_g_l2_rendering_context_rgba16ui : Int = 0x8D76

// WebGL2RenderingContext.RGB16UI

///|
pub let web_g_l2_rendering_context_rgb16ui : Int = 0x8D77

// WebGL2RenderingContext.RGBA8UI

///|
pub let web_g_l2_rendering_context_rgba8ui : Int = 0x8D7C

// WebGL2RenderingContext.RGB8UI

///|
pub let web_g_l2_rendering_context_rgb8ui : Int = 0x8D7D

// WebGL2RenderingContext.RGBA32I

///|
pub let web_g_l2_rendering_context_rgba32i : Int = 0x8D82

// WebGL2RenderingContext.RGB32I

///|
pub let web_g_l2_rendering_context_rgb32i : Int = 0x8D83

// WebGL2RenderingContext.RGBA16I

///|
pub let web_g_l2_rendering_context_rgba16i : Int = 0x8D88

// WebGL2RenderingContext.RGB16I

///|
pub let web_g_l2_rendering_context_rgb16i : Int = 0x8D89

// WebGL2RenderingContext.RGBA8I

///|
pub let web_g_l2_rendering_context_rgba8i : Int = 0x8D8E

// WebGL2RenderingContext.RGB8I

///|
pub let web_g_l2_rendering_context_rgb8i : Int = 0x8D8F

// WebGL2RenderingContext.RED_INTEGER

///|
pub let web_g_l2_rendering_context_red_integer : Int = 0x8D94

// WebGL2RenderingContext.RGB_INTEGER

///|
pub let web_g_l2_rendering_context_rgb_integer : Int = 0x8D98

// WebGL2RenderingContext.RGBA_INTEGER

///|
pub let web_g_l2_rendering_context_rgba_integer : Int = 0x8D99

// WebGL2RenderingContext.SAMPLER_2D_ARRAY

///|
pub let web_g_l2_rendering_context_sampler_2d_array : Int = 0x8DC1

// WebGL2RenderingContext.SAMPLER_2D_ARRAY_SHADOW

///|
pub let web_g_l2_rendering_context_sampler_2d_array_shadow : Int = 0x8DC4

// WebGL2RenderingContext.SAMPLER_CUBE_SHADOW

///|
pub let web_g_l2_rendering_context_sampler_cube_shadow : Int = 0x8DC5

// WebGL2RenderingContext.UNSIGNED_INT_VEC2

///|
pub let web_g_l2_rendering_context_unsigned_int_vec2 : Int = 0x8DC6

// WebGL2RenderingContext.UNSIGNED_INT_VEC3

///|
pub let web_g_l2_rendering_context_unsigned_int_vec3 : Int = 0x8DC7

// WebGL2RenderingContext.UNSIGNED_INT_VEC4

///|
pub let web_g_l2_rendering_context_unsigned_int_vec4 : Int = 0x8DC8

// WebGL2RenderingContext.INT_SAMPLER_2D

///|
pub let web_g_l2_rendering_context_int_sampler_2d : Int = 0x8DCA

// WebGL2RenderingContext.INT_SAMPLER_3D

///|
pub let web_g_l2_rendering_context_int_sampler_3d : Int = 0x8DCB

// WebGL2RenderingContext.INT_SAMPLER_CUBE

///|
pub let web_g_l2_rendering_context_int_sampler_cube : Int = 0x8DCC

// WebGL2RenderingContext.INT_SAMPLER_2D_ARRAY

///|
pub let web_g_l2_rendering_context_int_sampler_2d_array : Int = 0x8DCF

// WebGL2RenderingContext.UNSIGNED_INT_SAMPLER_2D

///|
pub let web_g_l2_rendering_context_unsigned_int_sampler_2d : Int = 0x8DD2

// WebGL2RenderingContext.UNSIGNED_INT_SAMPLER_3D

///|
pub let web_g_l2_rendering_context_unsigned_int_sampler_3d : Int = 0x8DD3

// WebGL2RenderingContext.UNSIGNED_INT_SAMPLER_CUBE

///|
pub let web_g_l2_rendering_context_unsigned_int_sampler_cube : Int = 0x8DD4

// WebGL2RenderingContext.UNSIGNED_INT_SAMPLER_2D_ARRAY

///|
pub let web_g_l2_rendering_context_unsigned_int_sampler_2d_array : Int = 0x8DD7

// WebGL2RenderingContext.DEPTH_COMPONENT32F

///|
pub let web_g_l2_rendering_context_depth_component32f : Int = 0x8CAC

// WebGL2RenderingContext.DEPTH32F_STENCIL8

///|
pub let web_g_l2_rendering_context_depth32f_stencil8 : Int = 0x8CAD

// WebGL2RenderingContext.FLOAT_32_UNSIGNED_INT_24_8_REV

///|
pub let web_g_l2_rendering_context_float_32_unsigned_int_24_8_rev : Int = 0x8DAD

// WebGL2RenderingContext.FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING

///|
pub let web_g_l2_rendering_context_framebuffer_attachment_color_encoding : Int = 0x8210

// WebGL2RenderingContext.FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE

///|
pub let web_g_l2_rendering_context_framebuffer_attachment_component_type : Int = 0x8211

// WebGL2RenderingContext.FRAMEBUFFER_ATTACHMENT_RED_SIZE

///|
pub let web_g_l2_rendering_context_framebuffer_attachment_red_size : Int = 0x8212

// WebGL2RenderingContext.FRAMEBUFFER_ATTACHMENT_GREEN_SIZE

///|
pub let web_g_l2_rendering_context_framebuffer_attachment_green_size : Int = 0x8213

// WebGL2RenderingContext.FRAMEBUFFER_ATTACHMENT_BLUE_SIZE

///|
pub let web_g_l2_rendering_context_framebuffer_attachment_blue_size : Int = 0x8214

// WebGL2RenderingContext.FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE

///|
pub let web_g_l2_rendering_context_framebuffer_attachment_alpha_size : Int = 0x8215

// WebGL2RenderingContext.FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE

///|
pub let web_g_l2_rendering_context_framebuffer_attachment_depth_size : Int = 0x8216

// WebGL2RenderingContext.FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE

///|
pub let web_g_l2_rendering_context_framebuffer_attachment_stencil_size : Int = 0x8217

// WebGL2RenderingContext.FRAMEBUFFER_DEFAULT

///|
pub let web_g_l2_rendering_context_framebuffer_default : Int = 0x8218

// WebGL2RenderingContext.UNSIGNED_INT_24_8

///|
pub let web_g_l2_rendering_context_unsigned_int_24_8 : Int = 0x84FA

// WebGL2RenderingContext.DEPTH24_STENCIL8

///|
pub let web_g_l2_rendering_context_depth24_stencil8 : Int = 0x88F0

// WebGL2RenderingContext.UNSIGNED_NORMALIZED

///|
pub let web_g_l2_rendering_context_unsigned_normalized : Int = 0x8C17

// WebGL2RenderingContext.DRAW_FRAMEBUFFER_BINDING

///|
pub let web_g_l2_rendering_context_draw_framebuffer_binding : Int = 0x8CA6

// WebGL2RenderingContext.READ_FRAMEBUFFER

///|
pub let web_g_l2_rendering_context_read_framebuffer : Int = 0x8CA8

// WebGL2RenderingContext.DRAW_FRAMEBUFFER

///|
pub let web_g_l2_rendering_context_draw_framebuffer : Int = 0x8CA9

// WebGL2RenderingContext.READ_FRAMEBUFFER_BINDING

///|
pub let web_g_l2_rendering_context_read_framebuffer_binding : Int = 0x8CAA

// WebGL2RenderingContext.RENDERBUFFER_SAMPLES

///|
pub let web_g_l2_rendering_context_renderbuffer_samples : Int = 0x8CAB

// WebGL2RenderingContext.FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER

///|
pub let web_g_l2_rendering_context_framebuffer_attachment_texture_layer : Int = 0x8CD4

// WebGL2RenderingContext.MAX_COLOR_ATTACHMENTS

///|
pub let web_g_l2_rendering_context_max_color_attachments : Int = 0x8CDF

// WebGL2RenderingContext.COLOR_ATTACHMENT1

///|
pub let web_g_l2_rendering_context_color_attachment1 : Int = 0x8CE1

// WebGL2RenderingContext.COLOR_ATTACHMENT2

///|
pub let web_g_l2_rendering_context_color_attachment2 : Int = 0x8CE2

// WebGL2RenderingContext.COLOR_ATTACHMENT3

///|
pub let web_g_l2_rendering_context_color_attachment3 : Int = 0x8CE3

// WebGL2RenderingContext.COLOR_ATTACHMENT4

///|
pub let web_g_l2_rendering_context_color_attachment4 : Int = 0x8CE4

// WebGL2RenderingContext.COLOR_ATTACHMENT5

///|
pub let web_g_l2_rendering_context_color_attachment5 : Int = 0x8CE5

// WebGL2RenderingContext.COLOR_ATTACHMENT6

///|
pub let web_g_l2_rendering_context_color_attachment6 : Int = 0x8CE6

// WebGL2RenderingContext.COLOR_ATTACHMENT7

///|
pub let web_g_l2_rendering_context_color_attachment7 : Int = 0x8CE7

// WebGL2RenderingContext.COLOR_ATTACHMENT8

///|
pub let web_g_l2_rendering_context_color_attachment8 : Int = 0x8CE8

// WebGL2RenderingContext.COLOR_ATTACHMENT9

///|
pub let web_g_l2_rendering_context_color_attachment9 : Int = 0x8CE9

// WebGL2RenderingContext.COLOR_ATTACHMENT10

///|
pub let web_g_l2_rendering_context_color_attachment10 : Int = 0x8CEA

// WebGL2RenderingContext.COLOR_ATTACHMENT11

///|
pub let web_g_l2_rendering_context_color_attachment11 : Int = 0x8CEB

// WebGL2RenderingContext.COLOR_ATTACHMENT12

///|
pub let web_g_l2_rendering_context_color_attachment12 : Int = 0x8CEC

// WebGL2RenderingContext.COLOR_ATTACHMENT13

///|
pub let web_g_l2_rendering_context_color_attachment13 : Int = 0x8CED

// WebGL2RenderingContext.COLOR_ATTACHMENT14

///|
pub let web_g_l2_rendering_context_color_attachment14 : Int = 0x8CEE

// WebGL2RenderingContext.COLOR_ATTACHMENT15

///|
pub let web_g_l2_rendering_context_color_attachment15 : Int = 0x8CEF

// WebGL2RenderingContext.FRAMEBUFFER_INCOMPLETE_MULTISAMPLE

///|
pub let web_g_l2_rendering_context_framebuffer_incomplete_multisample : Int = 0x8D56

// WebGL2RenderingContext.MAX_SAMPLES

///|
pub let web_g_l2_rendering_context_max_samples : Int = 0x8D57

// WebGL2RenderingContext.HALF_FLOAT

///|
pub let web_g_l2_rendering_context_half_float : Int = 0x140B

// WebGL2RenderingContext.RG

///|
pub let web_g_l2_rendering_context_rg : Int = 0x8227

// WebGL2RenderingContext.RG_INTEGER

///|
pub let web_g_l2_rendering_context_rg_integer : Int = 0x8228

// WebGL2RenderingContext.R8

///|
pub let web_g_l2_rendering_context_r8 : Int = 0x8229

// WebGL2RenderingContext.RG8

///|
pub let web_g_l2_rendering_context_rg8 : Int = 0x822B

// WebGL2RenderingContext.R16F

///|
pub let web_g_l2_rendering_context_r16f : Int = 0x822D

// WebGL2RenderingContext.R32F

///|
pub let web_g_l2_rendering_context_r32f : Int = 0x822E

// WebGL2RenderingContext.RG16F

///|
pub let web_g_l2_rendering_context_rg16f : Int = 0x822F

// WebGL2RenderingContext.RG32F

///|
pub let web_g_l2_rendering_context_rg32f : Int = 0x8230

// WebGL2RenderingContext.R8I

///|
pub let web_g_l2_rendering_context_r8i : Int = 0x8231

// WebGL2RenderingContext.R8UI

///|
pub let web_g_l2_rendering_context_r8ui : Int = 0x8232

// WebGL2RenderingContext.R16I

///|
pub let web_g_l2_rendering_context_r16i : Int = 0x8233

// WebGL2RenderingContext.R16UI

///|
pub let web_g_l2_rendering_context_r16ui : Int = 0x8234

// WebGL2RenderingContext.R32I

///|
pub let web_g_l2_rendering_context_r32i : Int = 0x8235

// WebGL2RenderingContext.R32UI

///|
pub let web_g_l2_rendering_context_r32ui : Int = 0x8236

// WebGL2RenderingContext.RG8I

///|
pub let web_g_l2_rendering_context_rg8i : Int = 0x8237

// WebGL2RenderingContext.RG8UI

///|
pub let web_g_l2_rendering_context_rg8ui : Int = 0x8238

// WebGL2RenderingContext.RG16I

///|
pub let web_g_l2_rendering_context_rg16i : Int = 0x8239

// WebGL2RenderingContext.RG16UI

///|
pub let web_g_l2_rendering_context_rg16ui : Int = 0x823A

// WebGL2RenderingContext.RG32I

///|
pub let web_g_l2_rendering_context_rg32i : Int = 0x823B

// WebGL2RenderingContext.RG32UI

///|
pub let web_g_l2_rendering_context_rg32ui : Int = 0x823C

// WebGL2RenderingContext.VERTEX_ARRAY_BINDING

///|
pub let web_g_l2_rendering_context_vertex_array_binding : Int = 0x85B5

// WebGL2RenderingContext.R8_SNORM

///|
pub let web_g_l2_rendering_context_r8_snorm : Int = 0x8F94

// WebGL2RenderingContext.RG8_SNORM

///|
pub let web_g_l2_rendering_context_rg8_snorm : Int = 0x8F95

// WebGL2RenderingContext.RGB8_SNORM

///|
pub let web_g_l2_rendering_context_rgb8_snorm : Int = 0x8F96

// WebGL2RenderingContext.RGBA8_SNORM

///|
pub let web_g_l2_rendering_context_rgba8_snorm : Int = 0x8F97

// WebGL2RenderingContext.SIGNED_NORMALIZED

///|
pub let web_g_l2_rendering_context_signed_normalized : Int = 0x8F9C

// WebGL2RenderingContext.COPY_READ_BUFFER

///|
pub let web_g_l2_rendering_context_copy_read_buffer : Int = 0x8F36

// WebGL2RenderingContext.COPY_WRITE_BUFFER

///|
pub let web_g_l2_rendering_context_copy_write_buffer : Int = 0x8F37

// WebGL2RenderingContext.COPY_READ_BUFFER_BINDING

///|
pub let web_g_l2_rendering_context_copy_read_buffer_binding : Int = 0x8F36

// WebGL2RenderingContext.COPY_WRITE_BUFFER_BINDING

///|
pub let web_g_l2_rendering_context_copy_write_buffer_binding : Int = 0x8F37

// WebGL2RenderingContext.UNIFORM_BUFFER

///|
pub let web_g_l2_rendering_context_uniform_buffer : Int = 0x8A11

// WebGL2RenderingContext.UNIFORM_BUFFER_BINDING

///|
pub let web_g_l2_rendering_context_uniform_buffer_binding : Int = 0x8A28

// WebGL2RenderingContext.UNIFORM_BUFFER_START

///|
pub let web_g_l2_rendering_context_uniform_buffer_start : Int = 0x8A29

// WebGL2RenderingContext.UNIFORM_BUFFER_SIZE

///|
pub let web_g_l2_rendering_context_uniform_buffer_size : Int = 0x8A2A

// WebGL2RenderingContext.MAX_VERTEX_UNIFORM_BLOCKS

///|
pub let web_g_l2_rendering_context_max_vertex_uniform_blocks : Int = 0x8A2B

// WebGL2RenderingContext.MAX_FRAGMENT_UNIFORM_BLOCKS

///|
pub let web_g_l2_rendering_context_max_fragment_uniform_blocks : Int = 0x8A2D

// WebGL2RenderingContext.MAX_COMBINED_UNIFORM_BLOCKS

///|
pub let web_g_l2_rendering_context_max_combined_uniform_blocks : Int = 0x8A2E

// WebGL2RenderingContext.MAX_UNIFORM_BUFFER_BINDINGS

///|
pub let web_g_l2_rendering_context_max_uniform_buffer_bindings : Int = 0x8A2F

// WebGL2RenderingContext.MAX_UNIFORM_BLOCK_SIZE

///|
pub let web_g_l2_rendering_context_max_uniform_block_size : Int = 0x8A30

// WebGL2RenderingContext.MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS

///|
pub let web_g_l2_rendering_context_max_combined_vertex_uniform_components : Int = 0x8A31

// WebGL2RenderingContext.MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS

///|
pub let web_g_l2_rendering_context_max_combined_fragment_uniform_components : Int = 0x8A33

// WebGL2RenderingContext.UNIFORM_BUFFER_OFFSET_ALIGNMENT

///|
pub let web_g_l2_rendering_context_uniform_buffer_offset_alignment : Int = 0x8A34

// WebGL2RenderingContext.ACTIVE_UNIFORM_BLOCKS

///|
pub let web_g_l2_rendering_context_active_uniform_blocks : Int = 0x8A36

// WebGL2RenderingContext.UNIFORM_TYPE

///|
pub let web_g_l2_rendering_context_uniform_type : Int = 0x8A37

// WebGL2RenderingContext.UNIFORM_SIZE

///|
pub let web_g_l2_rendering_context_uniform_size : Int = 0x8A38

// WebGL2RenderingContext.UNIFORM_BLOCK_INDEX

///|
pub let web_g_l2_rendering_context_uniform_block_index : Int = 0x8A3A

// WebGL2RenderingContext.UNIFORM_OFFSET

///|
pub let web_g_l2_rendering_context_uniform_offset : Int = 0x8A3B

// WebGL2RenderingContext.UNIFORM_ARRAY_STRIDE

///|
pub let web_g_l2_rendering_context_uniform_array_stride : Int = 0x8A3C

// WebGL2RenderingContext.UNIFORM_MATRIX_STRIDE

///|
pub let web_g_l2_rendering_context_uniform_matrix_stride : Int = 0x8A3D

// WebGL2RenderingContext.UNIFORM_IS_ROW_MAJOR

///|
pub let web_g_l2_rendering_context_uniform_is_row_major : Int = 0x8A3E

// WebGL2RenderingContext.UNIFORM_BLOCK_BINDING

///|
pub let web_g_l2_rendering_context_uniform_block_binding : Int = 0x8A3F

// WebGL2RenderingContext.UNIFORM_BLOCK_DATA_SIZE

///|
pub let web_g_l2_rendering_context_uniform_block_data_size : Int = 0x8A40

// WebGL2RenderingContext.UNIFORM_BLOCK_ACTIVE_UNIFORMS

///|
pub let web_g_l2_rendering_context_uniform_block_active_uniforms : Int = 0x8A42

// WebGL2RenderingContext.UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES

///|
pub let web_g_l2_rendering_context_uniform_block_active_uniform_indices : Int = 0x8A43

// WebGL2RenderingContext.UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER

///|
pub let web_g_l2_rendering_context_uniform_block_referenced_by_vertex_shader : Int = 0x8A44

// WebGL2RenderingContext.UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER

///|
pub let web_g_l2_rendering_context_uniform_block_referenced_by_fragment_shader : Int = 0x8A46

// WebGL2RenderingContext.INVALID_INDEX

///|
pub let web_g_l2_rendering_context_invalid_index : Int = 0xFFFFFFFF

// WebGL2RenderingContext.MAX_VERTEX_OUTPUT_COMPONENTS

///|
pub let web_g_l2_rendering_context_max_vertex_output_components : Int = 0x9122

// WebGL2RenderingContext.MAX_FRAGMENT_INPUT_COMPONENTS

///|
pub let web_g_l2_rendering_context_max_fragment_input_components : Int = 0x9125

// WebGL2RenderingContext.MAX_SERVER_WAIT_TIMEOUT

///|
pub let web_g_l2_rendering_context_max_server_wait_timeout : Int = 0x9111

// WebGL2RenderingContext.OBJECT_TYPE

///|
pub let web_g_l2_rendering_context_object_type : Int = 0x9112

// WebGL2RenderingContext.SYNC_CONDITION

///|
pub let web_g_l2_rendering_context_sync_condition : Int = 0x9113

// WebGL2RenderingContext.SYNC_STATUS

///|
pub let web_g_l2_rendering_context_sync_status : Int = 0x9114

// WebGL2RenderingContext.SYNC_FLAGS

///|
pub let web_g_l2_rendering_context_sync_flags : Int = 0x9115

// WebGL2RenderingContext.SYNC_FENCE

///|
pub let web_g_l2_rendering_context_sync_fence : Int = 0x9116

// WebGL2RenderingContext.SYNC_GPU_COMMANDS_COMPLETE

///|
pub let web_g_l2_rendering_context_sync_gpu_commands_complete : Int = 0x9117

// WebGL2RenderingContext.UNSIGNALED

///|
pub let web_g_l2_rendering_context_unsignaled : Int = 0x9118

// WebGL2RenderingContext.SIGNALED

///|
pub let web_g_l2_rendering_context_signaled : Int = 0x9119

// WebGL2RenderingContext.ALREADY_SIGNALED

///|
pub let web_g_l2_rendering_context_already_signaled : Int = 0x911A

// WebGL2RenderingContext.TIMEOUT_EXPIRED

///|
pub let web_g_l2_rendering_context_timeout_expired : Int = 0x911B

// WebGL2RenderingContext.CONDITION_SATISFIED

///|
pub let web_g_l2_rendering_context_condition_satisfied : Int = 0x911C

// WebGL2RenderingContext.WAIT_FAILED

///|
pub let web_g_l2_rendering_context_wait_failed : Int = 0x911D

// WebGL2RenderingContext.SYNC_FLUSH_COMMANDS_BIT

///|
pub let web_g_l2_rendering_context_sync_flush_commands_bit : Int = 0x00000001

// WebGL2RenderingContext.VERTEX_ATTRIB_ARRAY_DIVISOR

///|
pub let web_g_l2_rendering_context_vertex_attrib_array_divisor : Int = 0x88FE

// WebGL2RenderingContext.ANY_SAMPLES_PASSED

///|
pub let web_g_l2_rendering_context_any_samples_passed : Int = 0x8C2F

// WebGL2RenderingContext.ANY_SAMPLES_PASSED_CONSERVATIVE

///|
pub let web_g_l2_rendering_context_any_samples_passed_conservative : Int = 0x8D6A

// WebGL2RenderingContext.SAMPLER_BINDING

///|
pub let web_g_l2_rendering_context_sampler_binding : Int = 0x8919

// WebGL2RenderingContext.RGB10_A2UI

///|
pub let web_g_l2_rendering_context_rgb10_a2ui : Int = 0x906F

// WebGL2RenderingContext.INT_2_10_10_10_REV

///|
pub let web_g_l2_rendering_context_int_2_10_10_10_rev : Int = 0x8D9F

// WebGL2RenderingContext.TRANSFORM_FEEDBACK

///|
pub let web_g_l2_rendering_context_transform_feedback : Int = 0x8E22

// WebGL2RenderingContext.TRANSFORM_FEEDBACK_PAUSED

///|
pub let web_g_l2_rendering_context_transform_feedback_paused : Int = 0x8E23

// WebGL2RenderingContext.TRANSFORM_FEEDBACK_ACTIVE

///|
pub let web_g_l2_rendering_context_transform_feedback_active : Int = 0x8E24

// WebGL2RenderingContext.TRANSFORM_FEEDBACK_BINDING

///|
pub let web_g_l2_rendering_context_transform_feedback_binding : Int = 0x8E25

// WebGL2RenderingContext.TEXTURE_IMMUTABLE_FORMAT

///|
pub let web_g_l2_rendering_context_texture_immutable_format : Int = 0x912F

// WebGL2RenderingContext.MAX_ELEMENT_INDEX

///|
pub let web_g_l2_rendering_context_max_element_index : Int = 0x8D6B

// WebGL2RenderingContext.TEXTURE_IMMUTABLE_LEVELS

///|
pub let web_g_l2_rendering_context_texture_immutable_levels : Int = 0x82DF

// WebGL2RenderingContext.TIMEOUT_IGNORED

///|
pub let web_g_l2_rendering_context_timeout_ignored : Int = -1

// WebGL2RenderingContext.MAX_CLIENT_WAIT_TIMEOUT_WEBGL

///|
pub let web_g_l2_rendering_context_max_client_wait_timeout_webgl : Int = 0x9247

///|
pub extern "js" fn WebGL2RenderingContext::copy_buffer_sub_data(
  self : WebGL2RenderingContext,
  read_target : GLenum,
  write_target : GLenum,
  read_offset : GLintptr,
  write_offset : GLintptr,
  size : GLsizeiptr,
) -> Unit =
  #| (self, read_target, write_target, read_offset, write_offset, size) => self.copyBufferSubData(read_target, write_target, read_offset, write_offset, size)

///|
pub extern "js" fn WebGL2RenderingContext::get_buffer_sub_data(
  self : WebGL2RenderingContext,
  target : GLenum,
  src_byte_offset : GLintptr,
  dst_buffer : ArrayBufferView,
) -> Unit =
  #| (self, target, src_byte_offset, dst_buffer) => self.getBufferSubData(target, src_byte_offset, dst_buffer)

///|
pub extern "js" fn WebGL2RenderingContext::get_buffer_sub_data_with_length(
  self : WebGL2RenderingContext,
  target : GLenum,
  src_byte_offset : GLintptr,
  dst_buffer : ArrayBufferView,
  dst_offset : Int64,
  length : GLuint,
) -> Unit =
  #| (self, target, src_byte_offset, dst_buffer, dst_offset, length) => self.getBufferSubData(target, src_byte_offset, dst_buffer, dst_offset, length)

///|
pub extern "js" fn WebGL2RenderingContext::blit_framebuffer(
  self : WebGL2RenderingContext,
  src_x0 : GLint,
  src_y0 : GLint,
  src_x1 : GLint,
  src_y1 : GLint,
  dst_x0 : GLint,
  dst_y0 : GLint,
  dst_x1 : GLint,
  dst_y1 : GLint,
  mask : GLbitfield,
  filter : GLenum,
) -> Unit =
  #| (self, src_x0, src_y0, src_x1, src_y1, dst_x0, dst_y0, dst_x1, dst_y1, mask, filter) => self.blitFramebuffer(src_x0, src_y0, src_x1, src_y1, dst_x0, dst_y0, dst_x1, dst_y1, mask, filter)

///|
pub extern "js" fn WebGL2RenderingContext::framebuffer_texture_layer(
  self : WebGL2RenderingContext,
  target : GLenum,
  attachment : GLenum,
  texture : WebGLTexture?,
  level : GLint,
  layer : GLint,
) -> Unit =
  #| (self, target, attachment, texture, level, layer) => self.framebufferTextureLayer(target, attachment, texture, level, layer)

///|
pub extern "js" fn WebGL2RenderingContext::invalidate_framebuffer(
  self : WebGL2RenderingContext,
  target : GLenum,
  attachments : Array[GLenum],
) -> Unit =
  #| (self, target, attachments) => self.invalidateFramebuffer(target, attachments)

///|
pub extern "js" fn WebGL2RenderingContext::invalidate_sub_framebuffer(
  self : WebGL2RenderingContext,
  target : GLenum,
  attachments : Array[GLenum],
  x : GLint,
  y : GLint,
  width : GLsizei,
  height : GLsizei,
) -> Unit =
  #| (self, target, attachments, x, y, width, height) => self.invalidateSubFramebuffer(target, attachments, x, y, width, height)

///|
pub extern "js" fn WebGL2RenderingContext::read_buffer(
  self : WebGL2RenderingContext,
  src : GLenum,
) -> Unit =
  #| (self, src) => self.readBuffer(src)

///|
pub extern "js" fn WebGL2RenderingContext::get_internalformat_parameter(
  self : WebGL2RenderingContext,
  target : GLenum,
  internalformat : GLenum,
  pname : GLenum,
) -> JsValue =
  #| (self, target, internalformat, pname) => self.getInternalformatParameter(target, internalformat, pname)

///|
pub extern "js" fn WebGL2RenderingContext::renderbuffer_storage_multisample(
  self : WebGL2RenderingContext,
  target : GLenum,
  samples : GLsizei,
  internalformat : GLenum,
  width : GLsizei,
  height : GLsizei,
) -> Unit =
  #| (self, target, samples, internalformat, width, height) => self.renderbufferStorageMultisample(target, samples, internalformat, width, height)

///|
pub extern "js" fn WebGL2RenderingContext::tex_storage2_d(
  self : WebGL2RenderingContext,
  target : GLenum,
  levels : GLsizei,
  internalformat : GLenum,
  width : GLsizei,
  height : GLsizei,
) -> Unit =
  #| (self, target, levels, internalformat, width, height) => self.texStorage2D(target, levels, internalformat, width, height)

///|
pub extern "js" fn WebGL2RenderingContext::tex_storage3_d(
  self : WebGL2RenderingContext,
  target : GLenum,
  levels : GLsizei,
  internalformat : GLenum,
  width : GLsizei,
  height : GLsizei,
  depth : GLsizei,
) -> Unit =
  #| (self, target, levels, internalformat, width, height, depth) => self.texStorage3D(target, levels, internalformat, width, height, depth)

///|
pub extern "js" fn WebGL2RenderingContext::tex_image3_d(
  self : WebGL2RenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLint,
  width : GLsizei,
  height : GLsizei,
  depth : GLsizei,
  border : GLint,
  format : GLenum,
  type_ : GLenum,
  pbo_offset : GLintptr,
) -> Unit =
  #| (self, target, level, internalformat, width, height, depth, border, format, type_, pbo_offset) => self.texImage3D(target, level, internalformat, width, height, depth, border, format, type_, pbo_offset)

///|
pub extern "js" fn WebGL2RenderingContext::tex_image3_d_with_target_g_lenum_and_level_g_lint_and_internalformat_g_lint_and_width_g_lsizei_and_height_g_lsizei_and_depth_g_lsizei_and_border_g_lint_and_format_g_lenum_and_type_g_lenum_and_source_tex_image_source(
  self : WebGL2RenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLint,
  width : GLsizei,
  height : GLsizei,
  depth : GLsizei,
  border : GLint,
  format : GLenum,
  type_ : GLenum,
  source : TexImageSource,
) -> Unit =
  #| (self, target, level, internalformat, width, height, depth, border, format, type_, source) => self.texImage3D(target, level, internalformat, width, height, depth, border, format, type_, source)

///|
pub extern "js" fn WebGL2RenderingContext::tex_image3_d_with_target_g_lenum_and_level_g_lint_and_internalformat_g_lint_and_width_g_lsizei_and_height_g_lsizei_and_depth_g_lsizei_and_border_g_lint_and_format_g_lenum_and_type_g_lenum_and_src_data(
  self : WebGL2RenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLint,
  width : GLsizei,
  height : GLsizei,
  depth : GLsizei,
  border : GLint,
  format : GLenum,
  type_ : GLenum,
  src_data : ArrayBufferView?,
) -> Unit =
  #| (self, target, level, internalformat, width, height, depth, border, format, type_, src_data) => self.texImage3D(target, level, internalformat, width, height, depth, border, format, type_, src_data)

///|
pub extern "js" fn WebGL2RenderingContext::tex_image3_d_with_target_g_lenum_and_level_g_lint_and_internalformat_g_lint_and_width_g_lsizei_and_height_g_lsizei_and_depth_g_lsizei_and_border_g_lint_and_format_g_lenum_and_type_g_lenum_and_src_data_array_buffer_view_and_src_offset(
  self : WebGL2RenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLint,
  width : GLsizei,
  height : GLsizei,
  depth : GLsizei,
  border : GLint,
  format : GLenum,
  type_ : GLenum,
  src_data : ArrayBufferView,
  src_offset : Int64,
) -> Unit =
  #| (self, target, level, internalformat, width, height, depth, border, format, type_, src_data, src_offset) => self.texImage3D(target, level, internalformat, width, height, depth, border, format, type_, src_data, src_offset)

///|
pub extern "js" fn WebGL2RenderingContext::tex_sub_image3_d(
  self : WebGL2RenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  zoffset : GLint,
  width : GLsizei,
  height : GLsizei,
  depth : GLsizei,
  format : GLenum,
  type_ : GLenum,
  pbo_offset : GLintptr,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, zoffset, width, height, depth, format, type_, pbo_offset) => self.texSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, type_, pbo_offset)

///|
pub extern "js" fn WebGL2RenderingContext::tex_sub_image3_d_with_target_g_lenum_and_level_g_lint_and_xoffset_g_lint_and_yoffset_g_lint_and_zoffset_g_lint_and_width_g_lsizei_and_height_g_lsizei_and_depth_g_lsizei_and_format_g_lenum_and_type_g_lenum_and_source_tex_image_source(
  self : WebGL2RenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  zoffset : GLint,
  width : GLsizei,
  height : GLsizei,
  depth : GLsizei,
  format : GLenum,
  type_ : GLenum,
  source : TexImageSource,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, zoffset, width, height, depth, format, type_, source) => self.texSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, type_, source)

///|
pub extern "js" fn WebGL2RenderingContext::tex_sub_image3_d_with_target_g_lenum_and_level_g_lint_and_xoffset_g_lint_and_yoffset_g_lint_and_zoffset_g_lint_and_width_g_lsizei_and_height_g_lsizei_and_depth_g_lsizei_and_format_g_lenum_and_type_g_lenum_and_src_data(
  self : WebGL2RenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  zoffset : GLint,
  width : GLsizei,
  height : GLsizei,
  depth : GLsizei,
  format : GLenum,
  type_ : GLenum,
  src_data : ArrayBufferView?,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, zoffset, width, height, depth, format, type_, src_data) => self.texSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, type_, src_data)

///|
pub extern "js" fn WebGL2RenderingContext::tex_sub_image3_d_with_target_g_lenum_and_level_g_lint_and_xoffset_g_lint_and_yoffset_g_lint_and_zoffset_g_lint_and_width_g_lsizei_and_height_g_lsizei_and_depth_g_lsizei_and_format_g_lenum_and_type_g_lenum_and_src_data_and_src_offset(
  self : WebGL2RenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  zoffset : GLint,
  width : GLsizei,
  height : GLsizei,
  depth : GLsizei,
  format : GLenum,
  type_ : GLenum,
  src_data : ArrayBufferView?,
  src_offset : Int64,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, zoffset, width, height, depth, format, type_, src_data, src_offset) => self.texSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, type_, src_data, src_offset)

///|
pub extern "js" fn WebGL2RenderingContext::copy_tex_sub_image3_d(
  self : WebGL2RenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  zoffset : GLint,
  x : GLint,
  y : GLint,
  width : GLsizei,
  height : GLsizei,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, zoffset, x, y, width, height) => self.copyTexSubImage3D(target, level, xoffset, yoffset, zoffset, x, y, width, height)

///|
pub extern "js" fn WebGL2RenderingContext::compressed_tex_image3_d(
  self : WebGL2RenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLenum,
  width : GLsizei,
  height : GLsizei,
  depth : GLsizei,
  border : GLint,
  src_data : ArrayBufferView,
) -> Unit =
  #| (self, target, level, internalformat, width, height, depth, border, src_data) => self.compressedTexImage3D(target, level, internalformat, width, height, depth, border, src_data)

///|
pub extern "js" fn WebGL2RenderingContext::compressed_tex_image3_d_with_src_length_override(
  self : WebGL2RenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLenum,
  width : GLsizei,
  height : GLsizei,
  depth : GLsizei,
  border : GLint,
  src_data : ArrayBufferView,
  src_offset : Int64,
  src_length_override : GLuint,
) -> Unit =
  #| (self, target, level, internalformat, width, height, depth, border, src_data, src_offset, src_length_override) => self.compressedTexImage3D(target, level, internalformat, width, height, depth, border, src_data, src_offset, src_length_override)

///|
pub extern "js" fn WebGL2RenderingContext::compressed_tex_image3_d_with_target_g_lenum_and_level_g_lint_and_internalformat_g_lenum_and_width_g_lsizei_and_height_g_lsizei_and_depth_g_lsizei_and_border_g_lint_and_image_size_g_lsizei_and_offset_g_lintptr(
  self : WebGL2RenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLenum,
  width : GLsizei,
  height : GLsizei,
  depth : GLsizei,
  border : GLint,
  image_size : GLsizei,
  offset : GLintptr,
) -> Unit =
  #| (self, target, level, internalformat, width, height, depth, border, image_size, offset) => self.compressedTexImage3D(target, level, internalformat, width, height, depth, border, image_size, offset)

///|
pub extern "js" fn WebGL2RenderingContext::compressed_tex_sub_image3_d(
  self : WebGL2RenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  zoffset : GLint,
  width : GLsizei,
  height : GLsizei,
  depth : GLsizei,
  format : GLenum,
  src_data : ArrayBufferView,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, zoffset, width, height, depth, format, src_data) => self.compressedTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, src_data)

///|
pub extern "js" fn WebGL2RenderingContext::compressed_tex_sub_image3_d_with_src_length_override(
  self : WebGL2RenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  zoffset : GLint,
  width : GLsizei,
  height : GLsizei,
  depth : GLsizei,
  format : GLenum,
  src_data : ArrayBufferView,
  src_offset : Int64,
  src_length_override : GLuint,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, zoffset, width, height, depth, format, src_data, src_offset, src_length_override) => self.compressedTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, src_data, src_offset, src_length_override)

///|
pub extern "js" fn WebGL2RenderingContext::compressed_tex_sub_image3_d_with_target_g_lenum_and_level_g_lint_and_xoffset_g_lint_and_yoffset_g_lint_and_zoffset_g_lint_and_width_g_lsizei_and_height_g_lsizei_and_depth_g_lsizei_and_format_g_lenum_and_image_size_g_lsizei_and_offset_g_lintptr(
  self : WebGL2RenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  zoffset : GLint,
  width : GLsizei,
  height : GLsizei,
  depth : GLsizei,
  format : GLenum,
  image_size : GLsizei,
  offset : GLintptr,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, zoffset, width, height, depth, format, image_size, offset) => self.compressedTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, image_size, offset)

///|
pub extern "js" fn WebGL2RenderingContext::get_frag_data_location(
  self : WebGL2RenderingContext,
  program : WebGLProgram,
  name : String,
) -> GLint =
  #| (self, program, name) => self.getFragDataLocation(program, name)

///|
pub extern "js" fn WebGL2RenderingContext::uniform1ui(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  v0 : GLuint,
) -> Unit =
  #| (self, location, v0) => self.uniform1ui(location, v0)

///|
pub extern "js" fn WebGL2RenderingContext::uniform2ui(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  v0 : GLuint,
  v1 : GLuint,
) -> Unit =
  #| (self, location, v0, v1) => self.uniform2ui(location, v0, v1)

///|
pub extern "js" fn WebGL2RenderingContext::uniform3ui(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  v0 : GLuint,
  v1 : GLuint,
  v2 : GLuint,
) -> Unit =
  #| (self, location, v0, v1, v2) => self.uniform3ui(location, v0, v1, v2)

///|
pub extern "js" fn WebGL2RenderingContext::uniform4ui(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  v0 : GLuint,
  v1 : GLuint,
  v2 : GLuint,
  v3 : GLuint,
) -> Unit =
  #| (self, location, v0, v1, v2, v3) => self.uniform4ui(location, v0, v1, v2, v3)

///|
pub extern "js" fn WebGL2RenderingContext::uniform1uiv(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  data : Uint32List,
) -> Unit =
  #| (self, location, data) => self.uniform1uiv(location, data)

///|
pub extern "js" fn WebGL2RenderingContext::uniform1uiv_with_src_length(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  data : Uint32List,
  src_offset : Int64,
  src_length : GLuint,
) -> Unit =
  #| (self, location, data, src_offset, src_length) => self.uniform1uiv(location, data, src_offset, src_length)

///|
pub extern "js" fn WebGL2RenderingContext::uniform2uiv(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  data : Uint32List,
) -> Unit =
  #| (self, location, data) => self.uniform2uiv(location, data)

///|
pub extern "js" fn WebGL2RenderingContext::uniform2uiv_with_src_length(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  data : Uint32List,
  src_offset : Int64,
  src_length : GLuint,
) -> Unit =
  #| (self, location, data, src_offset, src_length) => self.uniform2uiv(location, data, src_offset, src_length)

///|
pub extern "js" fn WebGL2RenderingContext::uniform3uiv(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  data : Uint32List,
) -> Unit =
  #| (self, location, data) => self.uniform3uiv(location, data)

///|
pub extern "js" fn WebGL2RenderingContext::uniform3uiv_with_src_length(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  data : Uint32List,
  src_offset : Int64,
  src_length : GLuint,
) -> Unit =
  #| (self, location, data, src_offset, src_length) => self.uniform3uiv(location, data, src_offset, src_length)

///|
pub extern "js" fn WebGL2RenderingContext::uniform4uiv(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  data : Uint32List,
) -> Unit =
  #| (self, location, data) => self.uniform4uiv(location, data)

///|
pub extern "js" fn WebGL2RenderingContext::uniform4uiv_with_src_length(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  data : Uint32List,
  src_offset : Int64,
  src_length : GLuint,
) -> Unit =
  #| (self, location, data, src_offset, src_length) => self.uniform4uiv(location, data, src_offset, src_length)

///|
pub extern "js" fn WebGL2RenderingContext::uniform_matrix3x2fv(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  transpose : GLboolean,
  data : Float32List,
) -> Unit =
  #| (self, location, transpose, data) => self.uniformMatrix3x2fv(location, transpose, data)

///|
pub extern "js" fn WebGL2RenderingContext::uniform_matrix3x2fv_with_src_length(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  transpose : GLboolean,
  data : Float32List,
  src_offset : Int64,
  src_length : GLuint,
) -> Unit =
  #| (self, location, transpose, data, src_offset, src_length) => self.uniformMatrix3x2fv(location, transpose, data, src_offset, src_length)

///|
pub extern "js" fn WebGL2RenderingContext::uniform_matrix4x2fv(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  transpose : GLboolean,
  data : Float32List,
) -> Unit =
  #| (self, location, transpose, data) => self.uniformMatrix4x2fv(location, transpose, data)

///|
pub extern "js" fn WebGL2RenderingContext::uniform_matrix4x2fv_with_src_length(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  transpose : GLboolean,
  data : Float32List,
  src_offset : Int64,
  src_length : GLuint,
) -> Unit =
  #| (self, location, transpose, data, src_offset, src_length) => self.uniformMatrix4x2fv(location, transpose, data, src_offset, src_length)

///|
pub extern "js" fn WebGL2RenderingContext::uniform_matrix2x3fv(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  transpose : GLboolean,
  data : Float32List,
) -> Unit =
  #| (self, location, transpose, data) => self.uniformMatrix2x3fv(location, transpose, data)

///|
pub extern "js" fn WebGL2RenderingContext::uniform_matrix2x3fv_with_src_length(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  transpose : GLboolean,
  data : Float32List,
  src_offset : Int64,
  src_length : GLuint,
) -> Unit =
  #| (self, location, transpose, data, src_offset, src_length) => self.uniformMatrix2x3fv(location, transpose, data, src_offset, src_length)

///|
pub extern "js" fn WebGL2RenderingContext::uniform_matrix4x3fv(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  transpose : GLboolean,
  data : Float32List,
) -> Unit =
  #| (self, location, transpose, data) => self.uniformMatrix4x3fv(location, transpose, data)

///|
pub extern "js" fn WebGL2RenderingContext::uniform_matrix4x3fv_with_src_length(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  transpose : GLboolean,
  data : Float32List,
  src_offset : Int64,
  src_length : GLuint,
) -> Unit =
  #| (self, location, transpose, data, src_offset, src_length) => self.uniformMatrix4x3fv(location, transpose, data, src_offset, src_length)

///|
pub extern "js" fn WebGL2RenderingContext::uniform_matrix2x4fv(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  transpose : GLboolean,
  data : Float32List,
) -> Unit =
  #| (self, location, transpose, data) => self.uniformMatrix2x4fv(location, transpose, data)

///|
pub extern "js" fn WebGL2RenderingContext::uniform_matrix2x4fv_with_src_length(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  transpose : GLboolean,
  data : Float32List,
  src_offset : Int64,
  src_length : GLuint,
) -> Unit =
  #| (self, location, transpose, data, src_offset, src_length) => self.uniformMatrix2x4fv(location, transpose, data, src_offset, src_length)

///|
pub extern "js" fn WebGL2RenderingContext::uniform_matrix3x4fv(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  transpose : GLboolean,
  data : Float32List,
) -> Unit =
  #| (self, location, transpose, data) => self.uniformMatrix3x4fv(location, transpose, data)

///|
pub extern "js" fn WebGL2RenderingContext::uniform_matrix3x4fv_with_src_length(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  transpose : GLboolean,
  data : Float32List,
  src_offset : Int64,
  src_length : GLuint,
) -> Unit =
  #| (self, location, transpose, data, src_offset, src_length) => self.uniformMatrix3x4fv(location, transpose, data, src_offset, src_length)

///|
pub extern "js" fn WebGL2RenderingContext::vertex_attrib_i4i(
  self : WebGL2RenderingContext,
  index : GLuint,
  x : GLint,
  y : GLint,
  z : GLint,
  w : GLint,
) -> Unit =
  #| (self, index, x, y, z, w) => self.vertexAttribI4i(index, x, y, z, w)

///|
pub extern "js" fn WebGL2RenderingContext::vertex_attrib_i4iv(
  self : WebGL2RenderingContext,
  index : GLuint,
  values : Int32List,
) -> Unit =
  #| (self, index, values) => self.vertexAttribI4iv(index, values)

///|
pub extern "js" fn WebGL2RenderingContext::vertex_attrib_i4ui(
  self : WebGL2RenderingContext,
  index : GLuint,
  x : GLuint,
  y : GLuint,
  z : GLuint,
  w : GLuint,
) -> Unit =
  #| (self, index, x, y, z, w) => self.vertexAttribI4ui(index, x, y, z, w)

///|
pub extern "js" fn WebGL2RenderingContext::vertex_attrib_i4uiv(
  self : WebGL2RenderingContext,
  index : GLuint,
  values : Uint32List,
) -> Unit =
  #| (self, index, values) => self.vertexAttribI4uiv(index, values)

///|
pub extern "js" fn WebGL2RenderingContext::vertex_attrib_i_pointer(
  self : WebGL2RenderingContext,
  index : GLuint,
  size : GLint,
  type_ : GLenum,
  stride : GLsizei,
  offset : GLintptr,
) -> Unit =
  #| (self, index, size, type_, stride, offset) => self.vertexAttribIPointer(index, size, type_, stride, offset)

///|
pub extern "js" fn WebGL2RenderingContext::vertex_attrib_divisor(
  self : WebGL2RenderingContext,
  index : GLuint,
  divisor : GLuint,
) -> Unit =
  #| (self, index, divisor) => self.vertexAttribDivisor(index, divisor)

///|
pub extern "js" fn WebGL2RenderingContext::draw_arrays_instanced(
  self : WebGL2RenderingContext,
  mode : GLenum,
  first : GLint,
  count : GLsizei,
  instance_count : GLsizei,
) -> Unit =
  #| (self, mode, first, count, instance_count) => self.drawArraysInstanced(mode, first, count, instance_count)

///|
pub extern "js" fn WebGL2RenderingContext::draw_elements_instanced(
  self : WebGL2RenderingContext,
  mode : GLenum,
  count : GLsizei,
  type_ : GLenum,
  offset : GLintptr,
  instance_count : GLsizei,
) -> Unit =
  #| (self, mode, count, type_, offset, instance_count) => self.drawElementsInstanced(mode, count, type_, offset, instance_count)

///|
pub extern "js" fn WebGL2RenderingContext::draw_range_elements(
  self : WebGL2RenderingContext,
  mode : GLenum,
  start : GLuint,
  end : GLuint,
  count : GLsizei,
  type_ : GLenum,
  offset : GLintptr,
) -> Unit =
  #| (self, mode, start, end, count, type_, offset) => self.drawRangeElements(mode, start, end, count, type_, offset)

///|
pub extern "js" fn WebGL2RenderingContext::draw_buffers(
  self : WebGL2RenderingContext,
  buffers : Array[GLenum],
) -> Unit =
  #| (self, buffers) => self.drawBuffers(buffers)

///|
pub extern "js" fn WebGL2RenderingContext::clear_bufferfv(
  self : WebGL2RenderingContext,
  buffer : GLenum,
  drawbuffer : GLint,
  values : Float32List,
) -> Unit =
  #| (self, buffer, drawbuffer, values) => self.clearBufferfv(buffer, drawbuffer, values)

///|
pub extern "js" fn WebGL2RenderingContext::clear_bufferfv_with_src_offset(
  self : WebGL2RenderingContext,
  buffer : GLenum,
  drawbuffer : GLint,
  values : Float32List,
  src_offset : Int64,
) -> Unit =
  #| (self, buffer, drawbuffer, values, src_offset) => self.clearBufferfv(buffer, drawbuffer, values, src_offset)

///|
pub extern "js" fn WebGL2RenderingContext::clear_bufferiv(
  self : WebGL2RenderingContext,
  buffer : GLenum,
  drawbuffer : GLint,
  values : Int32List,
) -> Unit =
  #| (self, buffer, drawbuffer, values) => self.clearBufferiv(buffer, drawbuffer, values)

///|
pub extern "js" fn WebGL2RenderingContext::clear_bufferiv_with_src_offset(
  self : WebGL2RenderingContext,
  buffer : GLenum,
  drawbuffer : GLint,
  values : Int32List,
  src_offset : Int64,
) -> Unit =
  #| (self, buffer, drawbuffer, values, src_offset) => self.clearBufferiv(buffer, drawbuffer, values, src_offset)

///|
pub extern "js" fn WebGL2RenderingContext::clear_bufferuiv(
  self : WebGL2RenderingContext,
  buffer : GLenum,
  drawbuffer : GLint,
  values : Uint32List,
) -> Unit =
  #| (self, buffer, drawbuffer, values) => self.clearBufferuiv(buffer, drawbuffer, values)

///|
pub extern "js" fn WebGL2RenderingContext::clear_bufferuiv_with_src_offset(
  self : WebGL2RenderingContext,
  buffer : GLenum,
  drawbuffer : GLint,
  values : Uint32List,
  src_offset : Int64,
) -> Unit =
  #| (self, buffer, drawbuffer, values, src_offset) => self.clearBufferuiv(buffer, drawbuffer, values, src_offset)

///|
pub extern "js" fn WebGL2RenderingContext::clear_bufferfi(
  self : WebGL2RenderingContext,
  buffer : GLenum,
  drawbuffer : GLint,
  depth : GLfloat,
  stencil : GLint,
) -> Unit =
  #| (self, buffer, drawbuffer, depth, stencil) => self.clearBufferfi(buffer, drawbuffer, depth, stencil)

///|
pub extern "js" fn WebGL2RenderingContext::create_query(
  self : WebGL2RenderingContext,
) -> WebGLQuery =
  #| (self) => self.createQuery()

///|
pub extern "js" fn WebGL2RenderingContext::delete_query(
  self : WebGL2RenderingContext,
  query : WebGLQuery?,
) -> Unit =
  #| (self, query) => self.deleteQuery(query)

///|
pub extern "js" fn WebGL2RenderingContext::is_query(
  self : WebGL2RenderingContext,
  query : WebGLQuery?,
) -> GLboolean =
  #| (self, query) => self.isQuery(query)

///|
pub extern "js" fn WebGL2RenderingContext::begin_query(
  self : WebGL2RenderingContext,
  target : GLenum,
  query : WebGLQuery,
) -> Unit =
  #| (self, target, query) => self.beginQuery(target, query)

///|
pub extern "js" fn WebGL2RenderingContext::end_query(
  self : WebGL2RenderingContext,
  target : GLenum,
) -> Unit =
  #| (self, target) => self.endQuery(target)

///|
pub extern "js" fn WebGL2RenderingContext::get_query(
  self : WebGL2RenderingContext,
  target : GLenum,
  pname : GLenum,
) -> WebGLQuery? =
  #| (self, target, pname) => self.getQuery(target, pname)

///|
pub extern "js" fn WebGL2RenderingContext::get_query_parameter(
  self : WebGL2RenderingContext,
  query : WebGLQuery,
  pname : GLenum,
) -> JsValue =
  #| (self, query, pname) => self.getQueryParameter(query, pname)

///|
pub extern "js" fn WebGL2RenderingContext::create_sampler(
  self : WebGL2RenderingContext,
) -> WebGLSampler =
  #| (self) => self.createSampler()

///|
pub extern "js" fn WebGL2RenderingContext::delete_sampler(
  self : WebGL2RenderingContext,
  sampler : WebGLSampler?,
) -> Unit =
  #| (self, sampler) => self.deleteSampler(sampler)

///|
pub extern "js" fn WebGL2RenderingContext::is_sampler(
  self : WebGL2RenderingContext,
  sampler : WebGLSampler?,
) -> GLboolean =
  #| (self, sampler) => self.isSampler(sampler)

///|
pub extern "js" fn WebGL2RenderingContext::bind_sampler(
  self : WebGL2RenderingContext,
  unit : GLuint,
  sampler : WebGLSampler?,
) -> Unit =
  #| (self, unit, sampler) => self.bindSampler(unit, sampler)

///|
pub extern "js" fn WebGL2RenderingContext::sampler_parameteri(
  self : WebGL2RenderingContext,
  sampler : WebGLSampler,
  pname : GLenum,
  param : GLint,
) -> Unit =
  #| (self, sampler, pname, param) => self.samplerParameteri(sampler, pname, param)

///|
pub extern "js" fn WebGL2RenderingContext::sampler_parameterf(
  self : WebGL2RenderingContext,
  sampler : WebGLSampler,
  pname : GLenum,
  param : GLfloat,
) -> Unit =
  #| (self, sampler, pname, param) => self.samplerParameterf(sampler, pname, param)

///|
pub extern "js" fn WebGL2RenderingContext::get_sampler_parameter(
  self : WebGL2RenderingContext,
  sampler : WebGLSampler,
  pname : GLenum,
) -> JsValue =
  #| (self, sampler, pname) => self.getSamplerParameter(sampler, pname)

///|
pub extern "js" fn WebGL2RenderingContext::fence_sync(
  self : WebGL2RenderingContext,
  condition : GLenum,
  flags : GLbitfield,
) -> WebGLSync? =
  #| (self, condition, flags) => self.fenceSync(condition, flags)

///|
pub extern "js" fn WebGL2RenderingContext::is_sync(
  self : WebGL2RenderingContext,
  sync : WebGLSync?,
) -> GLboolean =
  #| (self, sync) => self.isSync(sync)

///|
pub extern "js" fn WebGL2RenderingContext::delete_sync(
  self : WebGL2RenderingContext,
  sync : WebGLSync?,
) -> Unit =
  #| (self, sync) => self.deleteSync(sync)

///|
pub extern "js" fn WebGL2RenderingContext::client_wait_sync(
  self : WebGL2RenderingContext,
  sync : WebGLSync,
  flags : GLbitfield,
  timeout : GLuint64,
) -> GLenum =
  #| (self, sync, flags, timeout) => self.clientWaitSync(sync, flags, timeout)

///|
pub extern "js" fn WebGL2RenderingContext::wait_sync(
  self : WebGL2RenderingContext,
  sync : WebGLSync,
  flags : GLbitfield,
  timeout : GLint64,
) -> Unit =
  #| (self, sync, flags, timeout) => self.waitSync(sync, flags, timeout)

///|
pub extern "js" fn WebGL2RenderingContext::get_sync_parameter(
  self : WebGL2RenderingContext,
  sync : WebGLSync,
  pname : GLenum,
) -> JsValue =
  #| (self, sync, pname) => self.getSyncParameter(sync, pname)

///|
pub extern "js" fn WebGL2RenderingContext::create_transform_feedback(
  self : WebGL2RenderingContext,
) -> WebGLTransformFeedback =
  #| (self) => self.createTransformFeedback()

///|
pub extern "js" fn WebGL2RenderingContext::delete_transform_feedback(
  self : WebGL2RenderingContext,
  tf : WebGLTransformFeedback?,
) -> Unit =
  #| (self, tf) => self.deleteTransformFeedback(tf)

///|
pub extern "js" fn WebGL2RenderingContext::is_transform_feedback(
  self : WebGL2RenderingContext,
  tf : WebGLTransformFeedback?,
) -> GLboolean =
  #| (self, tf) => self.isTransformFeedback(tf)

///|
pub extern "js" fn WebGL2RenderingContext::bind_transform_feedback(
  self : WebGL2RenderingContext,
  target : GLenum,
  tf : WebGLTransformFeedback?,
) -> Unit =
  #| (self, target, tf) => self.bindTransformFeedback(target, tf)

///|
pub extern "js" fn WebGL2RenderingContext::begin_transform_feedback(
  self : WebGL2RenderingContext,
  primitive_mode : GLenum,
) -> Unit =
  #| (self, primitive_mode) => self.beginTransformFeedback(primitive_mode)

///|
pub extern "js" fn WebGL2RenderingContext::end_transform_feedback(
  self : WebGL2RenderingContext,
) -> Unit =
  #| (self) => self.endTransformFeedback()

///|
pub extern "js" fn WebGL2RenderingContext::transform_feedback_varyings(
  self : WebGL2RenderingContext,
  program : WebGLProgram,
  varyings : Array[String],
  buffer_mode : GLenum,
) -> Unit =
  #| (self, program, varyings, buffer_mode) => self.transformFeedbackVaryings(program, varyings, buffer_mode)

///|
pub extern "js" fn WebGL2RenderingContext::get_transform_feedback_varying(
  self : WebGL2RenderingContext,
  program : WebGLProgram,
  index : GLuint,
) -> WebGLActiveInfo? =
  #| (self, program, index) => self.getTransformFeedbackVarying(program, index)

///|
pub extern "js" fn WebGL2RenderingContext::pause_transform_feedback(
  self : WebGL2RenderingContext,
) -> Unit =
  #| (self) => self.pauseTransformFeedback()

///|
pub extern "js" fn WebGL2RenderingContext::resume_transform_feedback(
  self : WebGL2RenderingContext,
) -> Unit =
  #| (self) => self.resumeTransformFeedback()

///|
pub extern "js" fn WebGL2RenderingContext::bind_buffer_base(
  self : WebGL2RenderingContext,
  target : GLenum,
  index : GLuint,
  buffer : WebGLBuffer?,
) -> Unit =
  #| (self, target, index, buffer) => self.bindBufferBase(target, index, buffer)

///|
pub extern "js" fn WebGL2RenderingContext::bind_buffer_range(
  self : WebGL2RenderingContext,
  target : GLenum,
  index : GLuint,
  buffer : WebGLBuffer?,
  offset : GLintptr,
  size : GLsizeiptr,
) -> Unit =
  #| (self, target, index, buffer, offset, size) => self.bindBufferRange(target, index, buffer, offset, size)

///|
pub extern "js" fn WebGL2RenderingContext::get_indexed_parameter(
  self : WebGL2RenderingContext,
  target : GLenum,
  index : GLuint,
) -> JsValue =
  #| (self, target, index) => self.getIndexedParameter(target, index)

///|
pub extern "js" fn WebGL2RenderingContext::get_uniform_indices(
  self : WebGL2RenderingContext,
  program : WebGLProgram,
  uniform_names : Array[String],
) -> Array[GLuint] =
  #| (self, program, uniform_names) => self.getUniformIndices(program, uniform_names)

///|
pub extern "js" fn WebGL2RenderingContext::get_active_uniforms(
  self : WebGL2RenderingContext,
  program : WebGLProgram,
  uniform_indices : Array[GLuint],
  pname : GLenum,
) -> JsValue =
  #| (self, program, uniform_indices, pname) => self.getActiveUniforms(program, uniform_indices, pname)

///|
pub extern "js" fn WebGL2RenderingContext::get_uniform_block_index(
  self : WebGL2RenderingContext,
  program : WebGLProgram,
  uniform_block_name : String,
) -> GLuint =
  #| (self, program, uniform_block_name) => self.getUniformBlockIndex(program, uniform_block_name)

///|
pub extern "js" fn WebGL2RenderingContext::get_active_uniform_block_parameter(
  self : WebGL2RenderingContext,
  program : WebGLProgram,
  uniform_block_index : GLuint,
  pname : GLenum,
) -> JsValue =
  #| (self, program, uniform_block_index, pname) => self.getActiveUniformBlockParameter(program, uniform_block_index, pname)

///|
pub extern "js" fn WebGL2RenderingContext::get_active_uniform_block_name(
  self : WebGL2RenderingContext,
  program : WebGLProgram,
  uniform_block_index : GLuint,
) -> String? =
  #| (self, program, uniform_block_index) => self.getActiveUniformBlockName(program, uniform_block_index)

///|
pub extern "js" fn WebGL2RenderingContext::uniform_block_binding(
  self : WebGL2RenderingContext,
  program : WebGLProgram,
  uniform_block_index : GLuint,
  uniform_block_binding : GLuint,
) -> Unit =
  #| (self, program, uniform_block_index, uniform_block_binding) => self.uniformBlockBinding(program, uniform_block_index, uniform_block_binding)

///|
pub extern "js" fn WebGL2RenderingContext::create_vertex_array(
  self : WebGL2RenderingContext,
) -> WebGLVertexArrayObject =
  #| (self) => self.createVertexArray()

///|
pub extern "js" fn WebGL2RenderingContext::delete_vertex_array(
  self : WebGL2RenderingContext,
  vertex_array : WebGLVertexArrayObject?,
) -> Unit =
  #| (self, vertex_array) => self.deleteVertexArray(vertex_array)

///|
pub extern "js" fn WebGL2RenderingContext::is_vertex_array(
  self : WebGL2RenderingContext,
  vertex_array : WebGLVertexArrayObject?,
) -> GLboolean =
  #| (self, vertex_array) => self.isVertexArray(vertex_array)

///|
pub extern "js" fn WebGL2RenderingContext::bind_vertex_array(
  self : WebGL2RenderingContext,
  array : WebGLVertexArrayObject?,
) -> Unit =
  #| (self, array) => self.bindVertexArray(array)

///|
pub extern "js" fn WebGL2RenderingContext::buffer_data(
  self : WebGL2RenderingContext,
  target : GLenum,
  size : GLsizeiptr,
  usage : GLenum,
) -> Unit =
  #| (self, target, size, usage) => self.bufferData(target, size, usage)

///|
pub extern "js" fn WebGL2RenderingContext::buffer_data_with_target_g_lenum_and_src_data_and_usage_g_lenum(
  self : WebGL2RenderingContext,
  target : GLenum,
  src_data : AllowSharedBufferSource?,
  usage : GLenum,
) -> Unit =
  #| (self, target, src_data, usage) => self.bufferData(target, src_data, usage)

///|
pub extern "js" fn WebGL2RenderingContext::buffer_data_with_target_g_lenum_and_src_data_array_buffer_view_and_usage_g_lenum_and_src_offset(
  self : WebGL2RenderingContext,
  target : GLenum,
  src_data : ArrayBufferView,
  usage : GLenum,
  src_offset : Int64,
) -> Unit =
  #| (self, target, src_data, usage, src_offset) => self.bufferData(target, src_data, usage, src_offset)

///|
pub extern "js" fn WebGL2RenderingContext::buffer_data_with_target_g_lenum_and_src_data_array_buffer_view_and_usage_g_lenum_and_src_offset_and_length_g_luint(
  self : WebGL2RenderingContext,
  target : GLenum,
  src_data : ArrayBufferView,
  usage : GLenum,
  src_offset : Int64,
  length : GLuint,
) -> Unit =
  #| (self, target, src_data, usage, src_offset, length) => self.bufferData(target, src_data, usage, src_offset, length)

///|
pub extern "js" fn WebGL2RenderingContext::buffer_sub_data(
  self : WebGL2RenderingContext,
  target : GLenum,
  dst_byte_offset : GLintptr,
  src_data : AllowSharedBufferSource,
) -> Unit =
  #| (self, target, dst_byte_offset, src_data) => self.bufferSubData(target, dst_byte_offset, src_data)

///|
pub extern "js" fn WebGL2RenderingContext::buffer_sub_data_with_target_g_lenum_and_dst_byte_offset_g_lintptr_and_src_data_array_buffer_view_and_src_offset(
  self : WebGL2RenderingContext,
  target : GLenum,
  dst_byte_offset : GLintptr,
  src_data : ArrayBufferView,
  src_offset : Int64,
) -> Unit =
  #| (self, target, dst_byte_offset, src_data, src_offset) => self.bufferSubData(target, dst_byte_offset, src_data, src_offset)

///|
pub extern "js" fn WebGL2RenderingContext::buffer_sub_data_with_target_g_lenum_and_dst_byte_offset_g_lintptr_and_src_data_array_buffer_view_and_src_offset_and_length_g_luint(
  self : WebGL2RenderingContext,
  target : GLenum,
  dst_byte_offset : GLintptr,
  src_data : ArrayBufferView,
  src_offset : Int64,
  length : GLuint,
) -> Unit =
  #| (self, target, dst_byte_offset, src_data, src_offset, length) => self.bufferSubData(target, dst_byte_offset, src_data, src_offset, length)

///|
pub extern "js" fn WebGL2RenderingContext::tex_image2_d(
  self : WebGL2RenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLint,
  format : GLenum,
  type_ : GLenum,
  source : TexImageSource,
) -> Unit =
  #| (self, target, level, internalformat, format, type_, source) => self.texImage2D(target, level, internalformat, format, type_, source)

///|
pub extern "js" fn WebGL2RenderingContext::tex_image2_d_with_target_g_lenum_and_level_g_lint_and_internalformat_g_lint_and_width_g_lsizei_and_height_g_lsizei_and_border_g_lint_and_format_g_lenum_and_type_g_lenum_and_pixels(
  self : WebGL2RenderingContext,
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
  #| (self, target, level, internalformat, width, height, border, format, type_, pixels) => self.texImage2D(target, level, internalformat, width, height, border, format, type_, pixels)

///|
pub extern "js" fn WebGL2RenderingContext::tex_image2_d_with_target_g_lenum_and_level_g_lint_and_internalformat_g_lint_and_width_g_lsizei_and_height_g_lsizei_and_border_g_lint_and_format_g_lenum_and_type_g_lenum_and_pbo_offset_g_lintptr(
  self : WebGL2RenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLint,
  width : GLsizei,
  height : GLsizei,
  border : GLint,
  format : GLenum,
  type_ : GLenum,
  pbo_offset : GLintptr,
) -> Unit =
  #| (self, target, level, internalformat, width, height, border, format, type_, pbo_offset) => self.texImage2D(target, level, internalformat, width, height, border, format, type_, pbo_offset)

///|
pub extern "js" fn WebGL2RenderingContext::tex_image2_d_with_target_g_lenum_and_level_g_lint_and_internalformat_g_lint_and_width_g_lsizei_and_height_g_lsizei_and_border_g_lint_and_format_g_lenum_and_type_g_lenum_and_source_tex_image_source(
  self : WebGL2RenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLint,
  width : GLsizei,
  height : GLsizei,
  border : GLint,
  format : GLenum,
  type_ : GLenum,
  source : TexImageSource,
) -> Unit =
  #| (self, target, level, internalformat, width, height, border, format, type_, source) => self.texImage2D(target, level, internalformat, width, height, border, format, type_, source)

///|
pub extern "js" fn WebGL2RenderingContext::tex_image2_d_with_target_g_lenum_and_level_g_lint_and_internalformat_g_lint_and_width_g_lsizei_and_height_g_lsizei_and_border_g_lint_and_format_g_lenum_and_type_g_lenum_and_src_data_array_buffer_view_and_src_offset(
  self : WebGL2RenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLint,
  width : GLsizei,
  height : GLsizei,
  border : GLint,
  format : GLenum,
  type_ : GLenum,
  src_data : ArrayBufferView,
  src_offset : Int64,
) -> Unit =
  #| (self, target, level, internalformat, width, height, border, format, type_, src_data, src_offset) => self.texImage2D(target, level, internalformat, width, height, border, format, type_, src_data, src_offset)

///|
pub extern "js" fn WebGL2RenderingContext::tex_sub_image2_d(
  self : WebGL2RenderingContext,
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
pub extern "js" fn WebGL2RenderingContext::tex_sub_image2_d_with_target_g_lenum_and_level_g_lint_and_xoffset_g_lint_and_yoffset_g_lint_and_width_g_lsizei_and_height_g_lsizei_and_format_g_lenum_and_type_g_lenum_and_pixels(
  self : WebGL2RenderingContext,
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
  #| (self, target, level, xoffset, yoffset, width, height, format, type_, pixels) => self.texSubImage2D(target, level, xoffset, yoffset, width, height, format, type_, pixels)

///|
pub extern "js" fn WebGL2RenderingContext::tex_sub_image2_d_with_target_g_lenum_and_level_g_lint_and_xoffset_g_lint_and_yoffset_g_lint_and_width_g_lsizei_and_height_g_lsizei_and_format_g_lenum_and_type_g_lenum_and_pbo_offset_g_lintptr(
  self : WebGL2RenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  width : GLsizei,
  height : GLsizei,
  format : GLenum,
  type_ : GLenum,
  pbo_offset : GLintptr,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, width, height, format, type_, pbo_offset) => self.texSubImage2D(target, level, xoffset, yoffset, width, height, format, type_, pbo_offset)

///|
pub extern "js" fn WebGL2RenderingContext::tex_sub_image2_d_with_target_g_lenum_and_level_g_lint_and_xoffset_g_lint_and_yoffset_g_lint_and_width_g_lsizei_and_height_g_lsizei_and_format_g_lenum_and_type_g_lenum_and_source_tex_image_source(
  self : WebGL2RenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  width : GLsizei,
  height : GLsizei,
  format : GLenum,
  type_ : GLenum,
  source : TexImageSource,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, width, height, format, type_, source) => self.texSubImage2D(target, level, xoffset, yoffset, width, height, format, type_, source)

///|
pub extern "js" fn WebGL2RenderingContext::tex_sub_image2_d_with_target_g_lenum_and_level_g_lint_and_xoffset_g_lint_and_yoffset_g_lint_and_width_g_lsizei_and_height_g_lsizei_and_format_g_lenum_and_type_g_lenum_and_src_data_array_buffer_view_and_src_offset(
  self : WebGL2RenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  width : GLsizei,
  height : GLsizei,
  format : GLenum,
  type_ : GLenum,
  src_data : ArrayBufferView,
  src_offset : Int64,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, width, height, format, type_, src_data, src_offset) => self.texSubImage2D(target, level, xoffset, yoffset, width, height, format, type_, src_data, src_offset)

///|
pub extern "js" fn WebGL2RenderingContext::compressed_tex_image2_d(
  self : WebGL2RenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLenum,
  width : GLsizei,
  height : GLsizei,
  border : GLint,
  src_data : ArrayBufferView,
) -> Unit =
  #| (self, target, level, internalformat, width, height, border, src_data) => self.compressedTexImage2D(target, level, internalformat, width, height, border, src_data)

///|
pub extern "js" fn WebGL2RenderingContext::compressed_tex_image2_d_with_src_length_override(
  self : WebGL2RenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLenum,
  width : GLsizei,
  height : GLsizei,
  border : GLint,
  src_data : ArrayBufferView,
  src_offset : Int64,
  src_length_override : GLuint,
) -> Unit =
  #| (self, target, level, internalformat, width, height, border, src_data, src_offset, src_length_override) => self.compressedTexImage2D(target, level, internalformat, width, height, border, src_data, src_offset, src_length_override)

///|
pub extern "js" fn WebGL2RenderingContext::compressed_tex_image2_d_with_target_g_lenum_and_level_g_lint_and_internalformat_g_lenum_and_width_g_lsizei_and_height_g_lsizei_and_border_g_lint_and_image_size_g_lsizei_and_offset_g_lintptr(
  self : WebGL2RenderingContext,
  target : GLenum,
  level : GLint,
  internalformat : GLenum,
  width : GLsizei,
  height : GLsizei,
  border : GLint,
  image_size : GLsizei,
  offset : GLintptr,
) -> Unit =
  #| (self, target, level, internalformat, width, height, border, image_size, offset) => self.compressedTexImage2D(target, level, internalformat, width, height, border, image_size, offset)

///|
pub extern "js" fn WebGL2RenderingContext::compressed_tex_sub_image2_d(
  self : WebGL2RenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  width : GLsizei,
  height : GLsizei,
  format : GLenum,
  src_data : ArrayBufferView,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, width, height, format, src_data) => self.compressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, src_data)

///|
pub extern "js" fn WebGL2RenderingContext::compressed_tex_sub_image2_d_with_src_length_override(
  self : WebGL2RenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  width : GLsizei,
  height : GLsizei,
  format : GLenum,
  src_data : ArrayBufferView,
  src_offset : Int64,
  src_length_override : GLuint,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, width, height, format, src_data, src_offset, src_length_override) => self.compressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, src_data, src_offset, src_length_override)

///|
pub extern "js" fn WebGL2RenderingContext::compressed_tex_sub_image2_d_with_target_g_lenum_and_level_g_lint_and_xoffset_g_lint_and_yoffset_g_lint_and_width_g_lsizei_and_height_g_lsizei_and_format_g_lenum_and_image_size_g_lsizei_and_offset_g_lintptr(
  self : WebGL2RenderingContext,
  target : GLenum,
  level : GLint,
  xoffset : GLint,
  yoffset : GLint,
  width : GLsizei,
  height : GLsizei,
  format : GLenum,
  image_size : GLsizei,
  offset : GLintptr,
) -> Unit =
  #| (self, target, level, xoffset, yoffset, width, height, format, image_size, offset) => self.compressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, image_size, offset)

///|
pub extern "js" fn WebGL2RenderingContext::uniform1fv(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  data : Float32List,
) -> Unit =
  #| (self, location, data) => self.uniform1fv(location, data)

///|
pub extern "js" fn WebGL2RenderingContext::uniform1fv_with_src_length(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  data : Float32List,
  src_offset : Int64,
  src_length : GLuint,
) -> Unit =
  #| (self, location, data, src_offset, src_length) => self.uniform1fv(location, data, src_offset, src_length)

///|
pub extern "js" fn WebGL2RenderingContext::uniform2fv(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  data : Float32List,
) -> Unit =
  #| (self, location, data) => self.uniform2fv(location, data)

///|
pub extern "js" fn WebGL2RenderingContext::uniform2fv_with_src_length(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  data : Float32List,
  src_offset : Int64,
  src_length : GLuint,
) -> Unit =
  #| (self, location, data, src_offset, src_length) => self.uniform2fv(location, data, src_offset, src_length)

///|
pub extern "js" fn WebGL2RenderingContext::uniform3fv(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  data : Float32List,
) -> Unit =
  #| (self, location, data) => self.uniform3fv(location, data)

///|
pub extern "js" fn WebGL2RenderingContext::uniform3fv_with_src_length(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  data : Float32List,
  src_offset : Int64,
  src_length : GLuint,
) -> Unit =
  #| (self, location, data, src_offset, src_length) => self.uniform3fv(location, data, src_offset, src_length)

///|
pub extern "js" fn WebGL2RenderingContext::uniform4fv(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  data : Float32List,
) -> Unit =
  #| (self, location, data) => self.uniform4fv(location, data)

///|
pub extern "js" fn WebGL2RenderingContext::uniform4fv_with_src_length(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  data : Float32List,
  src_offset : Int64,
  src_length : GLuint,
) -> Unit =
  #| (self, location, data, src_offset, src_length) => self.uniform4fv(location, data, src_offset, src_length)

///|
pub extern "js" fn WebGL2RenderingContext::uniform1iv(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  data : Int32List,
) -> Unit =
  #| (self, location, data) => self.uniform1iv(location, data)

///|
pub extern "js" fn WebGL2RenderingContext::uniform1iv_with_src_length(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  data : Int32List,
  src_offset : Int64,
  src_length : GLuint,
) -> Unit =
  #| (self, location, data, src_offset, src_length) => self.uniform1iv(location, data, src_offset, src_length)

///|
pub extern "js" fn WebGL2RenderingContext::uniform2iv(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  data : Int32List,
) -> Unit =
  #| (self, location, data) => self.uniform2iv(location, data)

///|
pub extern "js" fn WebGL2RenderingContext::uniform2iv_with_src_length(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  data : Int32List,
  src_offset : Int64,
  src_length : GLuint,
) -> Unit =
  #| (self, location, data, src_offset, src_length) => self.uniform2iv(location, data, src_offset, src_length)

///|
pub extern "js" fn WebGL2RenderingContext::uniform3iv(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  data : Int32List,
) -> Unit =
  #| (self, location, data) => self.uniform3iv(location, data)

///|
pub extern "js" fn WebGL2RenderingContext::uniform3iv_with_src_length(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  data : Int32List,
  src_offset : Int64,
  src_length : GLuint,
) -> Unit =
  #| (self, location, data, src_offset, src_length) => self.uniform3iv(location, data, src_offset, src_length)

///|
pub extern "js" fn WebGL2RenderingContext::uniform4iv(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  data : Int32List,
) -> Unit =
  #| (self, location, data) => self.uniform4iv(location, data)

///|
pub extern "js" fn WebGL2RenderingContext::uniform4iv_with_src_length(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  data : Int32List,
  src_offset : Int64,
  src_length : GLuint,
) -> Unit =
  #| (self, location, data, src_offset, src_length) => self.uniform4iv(location, data, src_offset, src_length)

///|
pub extern "js" fn WebGL2RenderingContext::uniform_matrix2fv(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  transpose : GLboolean,
  data : Float32List,
) -> Unit =
  #| (self, location, transpose, data) => self.uniformMatrix2fv(location, transpose, data)

///|
pub extern "js" fn WebGL2RenderingContext::uniform_matrix2fv_with_src_length(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  transpose : GLboolean,
  data : Float32List,
  src_offset : Int64,
  src_length : GLuint,
) -> Unit =
  #| (self, location, transpose, data, src_offset, src_length) => self.uniformMatrix2fv(location, transpose, data, src_offset, src_length)

///|
pub extern "js" fn WebGL2RenderingContext::uniform_matrix3fv(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  transpose : GLboolean,
  data : Float32List,
) -> Unit =
  #| (self, location, transpose, data) => self.uniformMatrix3fv(location, transpose, data)

///|
pub extern "js" fn WebGL2RenderingContext::uniform_matrix3fv_with_src_length(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  transpose : GLboolean,
  data : Float32List,
  src_offset : Int64,
  src_length : GLuint,
) -> Unit =
  #| (self, location, transpose, data, src_offset, src_length) => self.uniformMatrix3fv(location, transpose, data, src_offset, src_length)

///|
pub extern "js" fn WebGL2RenderingContext::uniform_matrix4fv(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  transpose : GLboolean,
  data : Float32List,
) -> Unit =
  #| (self, location, transpose, data) => self.uniformMatrix4fv(location, transpose, data)

///|
pub extern "js" fn WebGL2RenderingContext::uniform_matrix4fv_with_src_length(
  self : WebGL2RenderingContext,
  location : WebGLUniformLocation?,
  transpose : GLboolean,
  data : Float32List,
  src_offset : Int64,
  src_length : GLuint,
) -> Unit =
  #| (self, location, transpose, data, src_offset, src_length) => self.uniformMatrix4fv(location, transpose, data, src_offset, src_length)

///|
pub extern "js" fn WebGL2RenderingContext::read_pixels(
  self : WebGL2RenderingContext,
  x : GLint,
  y : GLint,
  width : GLsizei,
  height : GLsizei,
  format : GLenum,
  type_ : GLenum,
  dst_data : ArrayBufferView?,
) -> Unit =
  #| (self, x, y, width, height, format, type_, dst_data) => self.readPixels(x, y, width, height, format, type_, dst_data)

///|
pub extern "js" fn WebGL2RenderingContext::read_pixels_with_x_g_lint_and_y_g_lint_and_width_g_lsizei_and_height_g_lsizei_and_format_g_lenum_and_type_g_lenum_and_offset_g_lintptr(
  self : WebGL2RenderingContext,
  x : GLint,
  y : GLint,
  width : GLsizei,
  height : GLsizei,
  format : GLenum,
  type_ : GLenum,
  offset : GLintptr,
) -> Unit =
  #| (self, x, y, width, height, format, type_, offset) => self.readPixels(x, y, width, height, format, type_, offset)

///|
pub extern "js" fn WebGL2RenderingContext::read_pixels_with_x_g_lint_and_y_g_lint_and_width_g_lsizei_and_height_g_lsizei_and_format_g_lenum_and_type_g_lenum_and_dst_data_array_buffer_view_and_dst_offset(
  self : WebGL2RenderingContext,
  x : GLint,
  y : GLint,
  width : GLsizei,
  height : GLsizei,
  format : GLenum,
  type_ : GLenum,
  dst_data : ArrayBufferView,
  dst_offset : Int64,
) -> Unit =
  #| (self, x, y, width, height, format, type_, dst_data, dst_offset) => self.readPixels(x, y, width, height, format, type_, dst_data, dst_offset)
