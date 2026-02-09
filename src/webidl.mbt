// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webidl

///|
/// ArrayBufferView typedef
pub type ArrayBufferView

///|
pub extern "js" fn ArrayBufferView::to_js_value(
  self : ArrayBufferView,
) -> JsValue =
  #| (self) => self

///|
/// Create ArrayBufferView from Int8Array
pub extern "js" fn ArrayBufferView::from_int8_array(
  v : Int8Array,
) -> ArrayBufferView =
  #| (v) => v

///|
/// Create ArrayBufferView from Int16Array
pub extern "js" fn ArrayBufferView::from_int16_array(
  v : Int16Array,
) -> ArrayBufferView =
  #| (v) => v

///|
/// Create ArrayBufferView from Int32Array
pub extern "js" fn ArrayBufferView::from_int32_array(
  v : Int32Array,
) -> ArrayBufferView =
  #| (v) => v

///|
/// Create ArrayBufferView from Uint8Array
pub extern "js" fn ArrayBufferView::from_uint8_array(
  v : Uint8Array,
) -> ArrayBufferView =
  #| (v) => v

///|
/// Create ArrayBufferView from Uint16Array
pub extern "js" fn ArrayBufferView::from_uint16_array(
  v : Uint16Array,
) -> ArrayBufferView =
  #| (v) => v

///|
/// Create ArrayBufferView from Uint32Array
pub extern "js" fn ArrayBufferView::from_uint32_array(
  v : Uint32Array,
) -> ArrayBufferView =
  #| (v) => v

///|
/// Create ArrayBufferView from Uint8ClampedArray
pub extern "js" fn ArrayBufferView::from_uint8_clamped_array(
  v : Uint8ClampedArray,
) -> ArrayBufferView =
  #| (v) => v

///|
/// Create ArrayBufferView from BigInt64Array
pub extern "js" fn ArrayBufferView::from_big_int64_array(
  v : BigInt64Array,
) -> ArrayBufferView =
  #| (v) => v

///|
/// Create ArrayBufferView from BigUint64Array
pub extern "js" fn ArrayBufferView::from_big_uint64_array(
  v : BigUint64Array,
) -> ArrayBufferView =
  #| (v) => v

///|
/// Create ArrayBufferView from Float16Array
pub extern "js" fn ArrayBufferView::from_float16_array(
  v : Float16Array,
) -> ArrayBufferView =
  #| (v) => v

///|
/// Create ArrayBufferView from Float32Array
pub extern "js" fn ArrayBufferView::from_float32_array(
  v : Float32Array,
) -> ArrayBufferView =
  #| (v) => v

///|
/// Create ArrayBufferView from Float64Array
pub extern "js" fn ArrayBufferView::from_float64_array(
  v : Float64Array,
) -> ArrayBufferView =
  #| (v) => v

///|
/// Create ArrayBufferView from DataView
pub extern "js" fn ArrayBufferView::from_data_view(
  v : DataView,
) -> ArrayBufferView =
  #| (v) => v

///|
/// Check if this ArrayBufferView is Int8Array
pub extern "js" fn ArrayBufferView::is_int8_array(
  self : ArrayBufferView,
) -> Bool =
  #| (self) => self instanceof Int8Array

///|
/// Check if this ArrayBufferView is Int16Array
pub extern "js" fn ArrayBufferView::is_int16_array(
  self : ArrayBufferView,
) -> Bool =
  #| (self) => self instanceof Int16Array

///|
/// Check if this ArrayBufferView is Int32Array
pub extern "js" fn ArrayBufferView::is_int32_array(
  self : ArrayBufferView,
) -> Bool =
  #| (self) => self instanceof Int32Array

///|
/// Check if this ArrayBufferView is Uint8Array
pub extern "js" fn ArrayBufferView::is_uint8_array(
  self : ArrayBufferView,
) -> Bool =
  #| (self) => self instanceof Uint8Array

///|
/// Check if this ArrayBufferView is Uint16Array
pub extern "js" fn ArrayBufferView::is_uint16_array(
  self : ArrayBufferView,
) -> Bool =
  #| (self) => self instanceof Uint16Array

///|
/// Check if this ArrayBufferView is Uint32Array
pub extern "js" fn ArrayBufferView::is_uint32_array(
  self : ArrayBufferView,
) -> Bool =
  #| (self) => self instanceof Uint32Array

///|
/// Check if this ArrayBufferView is Uint8ClampedArray
pub extern "js" fn ArrayBufferView::is_uint8_clamped_array(
  self : ArrayBufferView,
) -> Bool =
  #| (self) => self instanceof Uint8ClampedArray

///|
/// Check if this ArrayBufferView is BigInt64Array
pub extern "js" fn ArrayBufferView::is_big_int64_array(
  self : ArrayBufferView,
) -> Bool =
  #| (self) => self instanceof BigInt64Array

///|
/// Check if this ArrayBufferView is BigUint64Array
pub extern "js" fn ArrayBufferView::is_big_uint64_array(
  self : ArrayBufferView,
) -> Bool =
  #| (self) => self instanceof BigUint64Array

///|
/// Check if this ArrayBufferView is Float16Array
pub extern "js" fn ArrayBufferView::is_float16_array(
  self : ArrayBufferView,
) -> Bool =
  #| (self) => self instanceof Float16Array

///|
/// Check if this ArrayBufferView is Float32Array
pub extern "js" fn ArrayBufferView::is_float32_array(
  self : ArrayBufferView,
) -> Bool =
  #| (self) => self instanceof Float32Array

///|
/// Check if this ArrayBufferView is Float64Array
pub extern "js" fn ArrayBufferView::is_float64_array(
  self : ArrayBufferView,
) -> Bool =
  #| (self) => self instanceof Float64Array

///|
/// Check if this ArrayBufferView is DataView
pub extern "js" fn ArrayBufferView::is_data_view(
  self : ArrayBufferView,
) -> Bool =
  #| (self) => self instanceof DataView

///|
/// Try to get ArrayBufferView as Int8Array
pub extern "js" fn ArrayBufferView::as_int8_array(
  self : ArrayBufferView,
) -> Int8Array? =
  #| (self) => (self instanceof Int8Array) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get ArrayBufferView as Int16Array
pub extern "js" fn ArrayBufferView::as_int16_array(
  self : ArrayBufferView,
) -> Int16Array? =
  #| (self) => (self instanceof Int16Array) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get ArrayBufferView as Int32Array
pub extern "js" fn ArrayBufferView::as_int32_array(
  self : ArrayBufferView,
) -> Int32Array? =
  #| (self) => (self instanceof Int32Array) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get ArrayBufferView as Uint8Array
pub extern "js" fn ArrayBufferView::as_uint8_array(
  self : ArrayBufferView,
) -> Uint8Array? =
  #| (self) => (self instanceof Uint8Array) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get ArrayBufferView as Uint16Array
pub extern "js" fn ArrayBufferView::as_uint16_array(
  self : ArrayBufferView,
) -> Uint16Array? =
  #| (self) => (self instanceof Uint16Array) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get ArrayBufferView as Uint32Array
pub extern "js" fn ArrayBufferView::as_uint32_array(
  self : ArrayBufferView,
) -> Uint32Array? =
  #| (self) => (self instanceof Uint32Array) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get ArrayBufferView as Uint8ClampedArray
pub extern "js" fn ArrayBufferView::as_uint8_clamped_array(
  self : ArrayBufferView,
) -> Uint8ClampedArray? =
  #| (self) => (self instanceof Uint8ClampedArray) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get ArrayBufferView as BigInt64Array
pub extern "js" fn ArrayBufferView::as_big_int64_array(
  self : ArrayBufferView,
) -> BigInt64Array? =
  #| (self) => (self instanceof BigInt64Array) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get ArrayBufferView as BigUint64Array
pub extern "js" fn ArrayBufferView::as_big_uint64_array(
  self : ArrayBufferView,
) -> BigUint64Array? =
  #| (self) => (self instanceof BigUint64Array) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get ArrayBufferView as Float16Array
pub extern "js" fn ArrayBufferView::as_float16_array(
  self : ArrayBufferView,
) -> Float16Array? =
  #| (self) => (self instanceof Float16Array) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get ArrayBufferView as Float32Array
pub extern "js" fn ArrayBufferView::as_float32_array(
  self : ArrayBufferView,
) -> Float32Array? =
  #| (self) => (self instanceof Float32Array) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get ArrayBufferView as Float64Array
pub extern "js" fn ArrayBufferView::as_float64_array(
  self : ArrayBufferView,
) -> Float64Array? =
  #| (self) => (self instanceof Float64Array) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get ArrayBufferView as DataView
pub extern "js" fn ArrayBufferView::as_data_view(
  self : ArrayBufferView,
) -> DataView? =
  #| (self) => (self instanceof DataView) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// BufferSource typedef
pub type BufferSource

///|
pub extern "js" fn BufferSource::to_js_value(self : BufferSource) -> JsValue =
  #| (self) => self

///|
/// Create BufferSource from ArrayBufferView
pub extern "js" fn BufferSource::from_array_buffer_view(
  v : ArrayBufferView,
) -> BufferSource =
  #| (v) => v

///|
/// Create BufferSource from ArrayBuffer
pub extern "js" fn BufferSource::from_array_buffer(
  v : ArrayBuffer,
) -> BufferSource =
  #| (v) => v

///|
/// Check if this BufferSource is ArrayBufferView
pub extern "js" fn BufferSource::is_array_buffer_view(
  self : BufferSource,
) -> Bool =
  #| (self) => self instanceof Int8Array || self instanceof Int16Array || self instanceof Int32Array || self instanceof Uint8Array || self instanceof Uint16Array || self instanceof Uint32Array || self instanceof Uint8ClampedArray || self instanceof BigInt64Array || self instanceof BigUint64Array || self instanceof Float16Array || self instanceof Float32Array || self instanceof Float64Array || self instanceof DataView

///|
/// Check if this BufferSource is ArrayBuffer
pub extern "js" fn BufferSource::is_array_buffer(self : BufferSource) -> Bool =
  #| (self) => self instanceof ArrayBuffer

///|
/// Try to get BufferSource as ArrayBufferView
pub extern "js" fn BufferSource::as_array_buffer_view(
  self : BufferSource,
) -> ArrayBufferView? =
  #| (self) => (self instanceof Int8Array || self instanceof Int16Array || self instanceof Int32Array || self instanceof Uint8Array || self instanceof Uint16Array || self instanceof Uint32Array || self instanceof Uint8ClampedArray || self instanceof BigInt64Array || self instanceof BigUint64Array || self instanceof Float16Array || self instanceof Float32Array || self instanceof Float64Array || self instanceof DataView) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get BufferSource as ArrayBuffer
pub extern "js" fn BufferSource::as_array_buffer(
  self : BufferSource,
) -> ArrayBuffer? =
  #| (self) => (self instanceof ArrayBuffer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// AllowSharedBufferSource typedef
pub type AllowSharedBufferSource

///|
pub extern "js" fn AllowSharedBufferSource::to_js_value(
  self : AllowSharedBufferSource,
) -> JsValue =
  #| (self) => self

///|
/// Create AllowSharedBufferSource from ArrayBuffer
pub extern "js" fn AllowSharedBufferSource::from_array_buffer(
  v : ArrayBuffer,
) -> AllowSharedBufferSource =
  #| (v) => v

///|
/// Create AllowSharedBufferSource from SharedArrayBuffer
pub extern "js" fn AllowSharedBufferSource::from_shared_array_buffer(
  v : SharedArrayBuffer,
) -> AllowSharedBufferSource =
  #| (v) => v

///|
/// Create AllowSharedBufferSource from ArrayBufferView
pub extern "js" fn AllowSharedBufferSource::from_array_buffer_view(
  v : ArrayBufferView,
) -> AllowSharedBufferSource =
  #| (v) => v

///|
/// Check if this AllowSharedBufferSource is ArrayBuffer
pub extern "js" fn AllowSharedBufferSource::is_array_buffer(
  self : AllowSharedBufferSource,
) -> Bool =
  #| (self) => self instanceof ArrayBuffer

///|
/// Check if this AllowSharedBufferSource is SharedArrayBuffer
pub extern "js" fn AllowSharedBufferSource::is_shared_array_buffer(
  self : AllowSharedBufferSource,
) -> Bool =
  #| (self) => self instanceof SharedArrayBuffer

///|
/// Check if this AllowSharedBufferSource is ArrayBufferView
pub extern "js" fn AllowSharedBufferSource::is_array_buffer_view(
  self : AllowSharedBufferSource,
) -> Bool =
  #| (self) => self instanceof Int8Array || self instanceof Int16Array || self instanceof Int32Array || self instanceof Uint8Array || self instanceof Uint16Array || self instanceof Uint32Array || self instanceof Uint8ClampedArray || self instanceof BigInt64Array || self instanceof BigUint64Array || self instanceof Float16Array || self instanceof Float32Array || self instanceof Float64Array || self instanceof DataView

///|
/// Try to get AllowSharedBufferSource as ArrayBuffer
pub extern "js" fn AllowSharedBufferSource::as_array_buffer(
  self : AllowSharedBufferSource,
) -> ArrayBuffer? =
  #| (self) => (self instanceof ArrayBuffer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get AllowSharedBufferSource as SharedArrayBuffer
pub extern "js" fn AllowSharedBufferSource::as_shared_array_buffer(
  self : AllowSharedBufferSource,
) -> SharedArrayBuffer? =
  #| (self) => (self instanceof SharedArrayBuffer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get AllowSharedBufferSource as ArrayBufferView
pub extern "js" fn AllowSharedBufferSource::as_array_buffer_view(
  self : AllowSharedBufferSource,
) -> ArrayBufferView? =
  #| (self) => (self instanceof Int8Array || self instanceof Int16Array || self instanceof Int32Array || self instanceof Uint8Array || self instanceof Uint16Array || self instanceof Uint32Array || self instanceof Uint8ClampedArray || self instanceof BigInt64Array || self instanceof BigUint64Array || self instanceof Float16Array || self instanceof Float32Array || self instanceof Float64Array || self instanceof DataView) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Function callback interface
pub type Function

///|
/// Create Function from a MoonBit function
pub extern "js" fn Function::from_fn(
  handler : (JsValue) -> JsValue,
) -> Function =
  #| (handler) => (a0) => handler(a0)

///|
/// VoidFunction callback interface
pub type VoidFunction

///|
/// QuotaExceededErrorOptions dictionary
pub(all) struct QuotaExceededErrorOptions {
  quota : Double?
  requested : Double?
}

///|
/// Create a new QuotaExceededErrorOptions with default values
pub fn QuotaExceededErrorOptions::default() -> QuotaExceededErrorOptions {
  QuotaExceededErrorOptions::{ quota: None, requested: None }
}

///|
extern "js" fn QuotaExceededErrorOptions::to_js_ffi(
  self : QuotaExceededErrorOptions,
) -> JsValue =
  #| (self) => ({
  #|   quota: self.quota,
  #|   requested: self.requested
  #| })

///|
/// Convert to JsValue
pub fn QuotaExceededErrorOptions::to_js(
  self : QuotaExceededErrorOptions,
) -> JsValue {
  QuotaExceededErrorOptions::to_js_ffi(self)
}

///|
/// QuotaExceededError interface
pub type QuotaExceededError

///|
pub extern "js" fn QuotaExceededError::to_js_value(
  self : QuotaExceededError,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to QuotaExceededError (unchecked)
pub extern "js" fn QuotaExceededError::from_js_value(
  v : JsValue,
) -> QuotaExceededError =
  #| (v) => v

///|
/// Safely cast JsValue to QuotaExceededError (checked with instanceof)
pub extern "js" fn QuotaExceededError::from_js_value_opt(
  v : JsValue,
) -> QuotaExceededError? =
  #| (v) => (v instanceof QuotaExceededError) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to QuotaExceededError (checked with instanceof)
pub extern "js" fn JsValue::as_quota_exceeded_error(
  self : JsValue,
) -> QuotaExceededError? =
  #| (self) => (self instanceof QuotaExceededError) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to QuotaExceededError (unchecked)
pub extern "js" fn JsValue::to_quota_exceeded_error(
  self : JsValue,
) -> QuotaExceededError =
  #| (self) => self

///|
pub extern "js" fn QuotaExceededError::to_dom_exception(
  self : QuotaExceededError,
) -> DOMException =
  #| (self) => self

///|
pub extern "js" fn QuotaExceededError::new() -> QuotaExceededError =
  #| () => new QuotaExceededError()

///|
extern "js" fn QuotaExceededError::new_with_options_ffi(
  message : String,
  options : JsValue,
) -> QuotaExceededError =
  #| (message, options) => new QuotaExceededError(message, options)

///|
pub fn QuotaExceededError::new_with_options(
  message : String,
  options : QuotaExceededErrorOptions,
) -> QuotaExceededError {
  QuotaExceededError::new_with_options_ffi(message, options.to_js())
}

///|
pub extern "js" fn QuotaExceededError::get_quota(
  self : QuotaExceededError,
) -> Double? =
  #| (self) => (self.quota) ?? undefined

///|
pub extern "js" fn QuotaExceededError::get_requested(
  self : QuotaExceededError,
) -> Double? =
  #| (self) => (self.requested) ?? undefined

///|
/// DOMException interface
pub type DOMException

///|
pub extern "js" fn DOMException::to_js_value(self : DOMException) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to DOMException (unchecked)
pub extern "js" fn DOMException::from_js_value(v : JsValue) -> DOMException =
  #| (v) => v

///|
/// Safely cast JsValue to DOMException (checked with instanceof)
pub extern "js" fn DOMException::from_js_value_opt(
  v : JsValue,
) -> DOMException? =
  #| (v) => (v instanceof DOMException) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to DOMException (checked with instanceof)
pub extern "js" fn JsValue::as_dom_exception(self : JsValue) -> DOMException? =
  #| (self) => (self instanceof DOMException) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to DOMException (unchecked)
pub extern "js" fn JsValue::to_dom_exception(self : JsValue) -> DOMException =
  #| (self) => self

///|
pub extern "js" fn DOMException::as_identity_credential_error(
  self : DOMException,
) -> IdentityCredentialError? =
  #| (self) => (self instanceof IdentityCredentialError) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn DOMException::as_overconstrained_error(
  self : DOMException,
) -> OverconstrainedError? =
  #| (self) => (self instanceof OverconstrainedError) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn DOMException::as_quota_exceeded_error(
  self : DOMException,
) -> QuotaExceededError? =
  #| (self) => (self instanceof QuotaExceededError) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn DOMException::as_web_transport_error(
  self : DOMException,
) -> WebTransportError? =
  #| (self) => (self instanceof WebTransportError) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn DOMException::as_rtc_error(self : DOMException) -> RTCError? =
  #| (self) => (self instanceof RTCError) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn DOMException::as_gpu_pipeline_error(
  self : DOMException,
) -> GPUPipelineError? =
  #| (self) => (self instanceof GPUPipelineError) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn DOMException::new() -> DOMException =
  #| () => new DOMException()

///|
pub extern "js" fn DOMException::new_with_name(
  message : String,
  name : String,
) -> DOMException =
  #| (message, name) => new DOMException(message, name)

///|
pub extern "js" fn DOMException::get_name(self : DOMException) -> String =
  #| (self) => self.name

///|
pub extern "js" fn DOMException::get_message(self : DOMException) -> String =
  #| (self) => self.message

///|
pub extern "js" fn DOMException::get_code(self : DOMException) -> Int =
  #| (self) => self.code

// DOMException.INDEX_SIZE_ERR

///|
pub let dom_exception_index_size_err : Int = 1

// DOMException.DOMSTRING_SIZE_ERR

///|
pub let dom_exception_domstring_size_err : Int = 2

// DOMException.HIERARCHY_REQUEST_ERR

///|
pub let dom_exception_hierarchy_request_err : Int = 3

// DOMException.WRONG_DOCUMENT_ERR

///|
pub let dom_exception_wrong_document_err : Int = 4

// DOMException.INVALID_CHARACTER_ERR

///|
pub let dom_exception_invalid_character_err : Int = 5

// DOMException.NO_DATA_ALLOWED_ERR

///|
pub let dom_exception_no_data_allowed_err : Int = 6

// DOMException.NO_MODIFICATION_ALLOWED_ERR

///|
pub let dom_exception_no_modification_allowed_err : Int = 7

// DOMException.NOT_FOUND_ERR

///|
pub let dom_exception_not_found_err : Int = 8

// DOMException.NOT_SUPPORTED_ERR

///|
pub let dom_exception_not_supported_err : Int = 9

// DOMException.INUSE_ATTRIBUTE_ERR

///|
pub let dom_exception_inuse_attribute_err : Int = 10

// DOMException.INVALID_STATE_ERR

///|
pub let dom_exception_invalid_state_err : Int = 11

// DOMException.SYNTAX_ERR

///|
pub let dom_exception_syntax_err : Int = 12

// DOMException.INVALID_MODIFICATION_ERR

///|
pub let dom_exception_invalid_modification_err : Int = 13

// DOMException.NAMESPACE_ERR

///|
pub let dom_exception_namespace_err : Int = 14

// DOMException.INVALID_ACCESS_ERR

///|
pub let dom_exception_invalid_access_err : Int = 15

// DOMException.VALIDATION_ERR

///|
pub let dom_exception_validation_err : Int = 16

// DOMException.TYPE_MISMATCH_ERR

///|
pub let dom_exception_type_mismatch_err : Int = 17

// DOMException.SECURITY_ERR

///|
pub let dom_exception_security_err : Int = 18

// DOMException.NETWORK_ERR

///|
pub let dom_exception_network_err : Int = 19

// DOMException.ABORT_ERR

///|
pub let dom_exception_abort_err : Int = 20

// DOMException.URL_MISMATCH_ERR

///|
pub let dom_exception_url_mismatch_err : Int = 21

// DOMException.QUOTA_EXCEEDED_ERR

///|
pub let dom_exception_quota_exceeded_err : Int = 22

// DOMException.TIMEOUT_ERR

///|
pub let dom_exception_timeout_err : Int = 23

// DOMException.INVALID_NODE_TYPE_ERR

///|
pub let dom_exception_invalid_node_type_err : Int = 24

// DOMException.DATA_CLONE_ERR

///|
pub let dom_exception_data_clone_err : Int = 25
