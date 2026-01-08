// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webidl

///|
/// ArrayBufferView typedef
pub type ArrayBufferView = JsValue

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
/// BufferSource typedef
pub type BufferSource = JsValue

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
/// AllowSharedBufferSource typedef
pub type AllowSharedBufferSource = JsValue

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
/// Function callback interface
pub type Function

///|
/// Create Function from a MoonBit function
pub extern "js" fn Function::from_fn(
  handler : (JsValue) -> JsValue,
) -> Function =
  #| (handler) => handler

///|
/// VoidFunction callback interface
pub type VoidFunction

///|
/// QuotaExceededErrorOptions dictionary
pub struct QuotaExceededErrorOptions {
  quota : Double?
  requested : Double?
}

///|
/// Create a new QuotaExceededErrorOptions with default values
pub fn QuotaExceededErrorOptions::default() -> QuotaExceededErrorOptions {
  QuotaExceededErrorOptions::{ quota: None, requested: None }
}

///|
/// Convert to JsValue
pub extern "js" fn QuotaExceededErrorOptions::to_js(
  self : QuotaExceededErrorOptions,
) -> JsValue =
  #| (self) => ({
  #|   quota: self.quota,
  #|   requested: self.requested
  #| })

///|
/// QuotaExceededError interface
pub type QuotaExceededError

///|
pub extern "js" fn QuotaExceededError::to_js_value(
  self : QuotaExceededError,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn QuotaExceededError::new(
  message : String,
  name : String,
) -> QuotaExceededError =
  #| (message, name) => new QuotaExceededError(message, name)

///|
pub extern "js" fn QuotaExceededError::get_name(
  self : QuotaExceededError,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn QuotaExceededError::get_message(
  self : QuotaExceededError,
) -> String =
  #| (self) => self.message

///|
pub extern "js" fn QuotaExceededError::get_code(
  self : QuotaExceededError,
) -> Int =
  #| (self) => self.code

// QuotaExceededError.INDEX_SIZE_ERR

///|
pub let quota_exceeded_error_index_size_err : Int = 1

// QuotaExceededError.DOMSTRING_SIZE_ERR

///|
pub let quota_exceeded_error_domstring_size_err : Int = 2

// QuotaExceededError.HIERARCHY_REQUEST_ERR

///|
pub let quota_exceeded_error_hierarchy_request_err : Int = 3

// QuotaExceededError.WRONG_DOCUMENT_ERR

///|
pub let quota_exceeded_error_wrong_document_err : Int = 4

// QuotaExceededError.INVALID_CHARACTER_ERR

///|
pub let quota_exceeded_error_invalid_character_err : Int = 5

// QuotaExceededError.NO_DATA_ALLOWED_ERR

///|
pub let quota_exceeded_error_no_data_allowed_err : Int = 6

// QuotaExceededError.NO_MODIFICATION_ALLOWED_ERR

///|
pub let quota_exceeded_error_no_modification_allowed_err : Int = 7

// QuotaExceededError.NOT_FOUND_ERR

///|
pub let quota_exceeded_error_not_found_err : Int = 8

// QuotaExceededError.NOT_SUPPORTED_ERR

///|
pub let quota_exceeded_error_not_supported_err : Int = 9

// QuotaExceededError.INUSE_ATTRIBUTE_ERR

///|
pub let quota_exceeded_error_inuse_attribute_err : Int = 10

// QuotaExceededError.INVALID_STATE_ERR

///|
pub let quota_exceeded_error_invalid_state_err : Int = 11

// QuotaExceededError.SYNTAX_ERR

///|
pub let quota_exceeded_error_syntax_err : Int = 12

// QuotaExceededError.INVALID_MODIFICATION_ERR

///|
pub let quota_exceeded_error_invalid_modification_err : Int = 13

// QuotaExceededError.NAMESPACE_ERR

///|
pub let quota_exceeded_error_namespace_err : Int = 14

// QuotaExceededError.INVALID_ACCESS_ERR

///|
pub let quota_exceeded_error_invalid_access_err : Int = 15

// QuotaExceededError.VALIDATION_ERR

///|
pub let quota_exceeded_error_validation_err : Int = 16

// QuotaExceededError.TYPE_MISMATCH_ERR

///|
pub let quota_exceeded_error_type_mismatch_err : Int = 17

// QuotaExceededError.SECURITY_ERR

///|
pub let quota_exceeded_error_security_err : Int = 18

// QuotaExceededError.NETWORK_ERR

///|
pub let quota_exceeded_error_network_err : Int = 19

// QuotaExceededError.ABORT_ERR

///|
pub let quota_exceeded_error_abort_err : Int = 20

// QuotaExceededError.URL_MISMATCH_ERR

///|
pub let quota_exceeded_error_url_mismatch_err : Int = 21

// QuotaExceededError.QUOTA_EXCEEDED_ERR

///|
pub let quota_exceeded_error_quota_exceeded_err : Int = 22

// QuotaExceededError.TIMEOUT_ERR

///|
pub let quota_exceeded_error_timeout_err : Int = 23

// QuotaExceededError.INVALID_NODE_TYPE_ERR

///|
pub let quota_exceeded_error_invalid_node_type_err : Int = 24

// QuotaExceededError.DATA_CLONE_ERR

///|
pub let quota_exceeded_error_data_clone_err : Int = 25

///|
pub extern "js" fn QuotaExceededError::get_quota(
  self : QuotaExceededError,
) -> Double? =
  #| (self) => self.quota

///|
pub extern "js" fn QuotaExceededError::get_requested(
  self : QuotaExceededError,
) -> Double? =
  #| (self) => self.requested

///|
/// DOMException interface
pub type DOMException

///|
pub extern "js" fn DOMException::to_js_value(self : DOMException) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn DOMException::new(
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
pub let d_o_m_exception_index_size_err : Int = 1

// DOMException.DOMSTRING_SIZE_ERR

///|
pub let d_o_m_exception_domstring_size_err : Int = 2

// DOMException.HIERARCHY_REQUEST_ERR

///|
pub let d_o_m_exception_hierarchy_request_err : Int = 3

// DOMException.WRONG_DOCUMENT_ERR

///|
pub let d_o_m_exception_wrong_document_err : Int = 4

// DOMException.INVALID_CHARACTER_ERR

///|
pub let d_o_m_exception_invalid_character_err : Int = 5

// DOMException.NO_DATA_ALLOWED_ERR

///|
pub let d_o_m_exception_no_data_allowed_err : Int = 6

// DOMException.NO_MODIFICATION_ALLOWED_ERR

///|
pub let d_o_m_exception_no_modification_allowed_err : Int = 7

// DOMException.NOT_FOUND_ERR

///|
pub let d_o_m_exception_not_found_err : Int = 8

// DOMException.NOT_SUPPORTED_ERR

///|
pub let d_o_m_exception_not_supported_err : Int = 9

// DOMException.INUSE_ATTRIBUTE_ERR

///|
pub let d_o_m_exception_inuse_attribute_err : Int = 10

// DOMException.INVALID_STATE_ERR

///|
pub let d_o_m_exception_invalid_state_err : Int = 11

// DOMException.SYNTAX_ERR

///|
pub let d_o_m_exception_syntax_err : Int = 12

// DOMException.INVALID_MODIFICATION_ERR

///|
pub let d_o_m_exception_invalid_modification_err : Int = 13

// DOMException.NAMESPACE_ERR

///|
pub let d_o_m_exception_namespace_err : Int = 14

// DOMException.INVALID_ACCESS_ERR

///|
pub let d_o_m_exception_invalid_access_err : Int = 15

// DOMException.VALIDATION_ERR

///|
pub let d_o_m_exception_validation_err : Int = 16

// DOMException.TYPE_MISMATCH_ERR

///|
pub let d_o_m_exception_type_mismatch_err : Int = 17

// DOMException.SECURITY_ERR

///|
pub let d_o_m_exception_security_err : Int = 18

// DOMException.NETWORK_ERR

///|
pub let d_o_m_exception_network_err : Int = 19

// DOMException.ABORT_ERR

///|
pub let d_o_m_exception_abort_err : Int = 20

// DOMException.URL_MISMATCH_ERR

///|
pub let d_o_m_exception_url_mismatch_err : Int = 21

// DOMException.QUOTA_EXCEEDED_ERR

///|
pub let d_o_m_exception_quota_exceeded_err : Int = 22

// DOMException.TIMEOUT_ERR

///|
pub let d_o_m_exception_timeout_err : Int = 23

// DOMException.INVALID_NODE_TYPE_ERR

///|
pub let d_o_m_exception_invalid_node_type_err : Int = 24

// DOMException.DATA_CLONE_ERR

///|
pub let d_o_m_exception_data_clone_err : Int = 25
