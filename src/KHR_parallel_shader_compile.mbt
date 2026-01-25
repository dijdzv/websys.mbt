// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/KHR_parallel_shader_compile

///|
/// KHR_parallel_shader_compile interface
pub type KHR_parallel_shader_compile

///|
pub extern "js" fn KHR_parallel_shader_compile::to_js_value(
  self : KHR_parallel_shader_compile,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to KHR_parallel_shader_compile (unchecked)
pub extern "js" fn KHR_parallel_shader_compile::from_js_value(
  v : JsValue,
) -> KHR_parallel_shader_compile =
  #| (v) => v

///|
/// Safely cast JsValue to KHR_parallel_shader_compile (checked with instanceof)
pub extern "js" fn KHR_parallel_shader_compile::from_js_value_opt(
  v : JsValue,
) -> KHR_parallel_shader_compile? =
  #| (v) => (v instanceof KHR_parallel_shader_compile) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to KHR_parallel_shader_compile (checked with instanceof)
pub extern "js" fn JsValue::as_khr_parallel_shader_compile(
  self : JsValue,
) -> KHR_parallel_shader_compile? =
  #| (self) => (self instanceof KHR_parallel_shader_compile) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to KHR_parallel_shader_compile (unchecked)
pub extern "js" fn JsValue::to_khr_parallel_shader_compile(
  self : JsValue,
) -> KHR_parallel_shader_compile =
  #| (self) => self

// KHR_parallel_shader_compile.COMPLETION_STATUS_KHR

///|
pub let khr_parallel_shader_compile_completion_status_khr : Int = 0x91B1
