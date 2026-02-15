// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/web-nfc

///|
/// NDEFMessageSource typedef
pub type NDEFMessageSource

///|
pub extern "js" fn NDEFMessageSource::to_js_value(
  self : NDEFMessageSource,
) -> JsValue =
  #| (self) => self

///|
/// Create NDEFMessageSource from String
pub extern "js" fn NDEFMessageSource::from_string(
  v : String,
) -> NDEFMessageSource =
  #| (v) => v

///|
/// Create NDEFMessageSource from BufferSource
pub extern "js" fn NDEFMessageSource::from_buffer_source(
  v : BufferSource,
) -> NDEFMessageSource =
  #| (v) => v

///|
/// Create NDEFMessageSource from NDEFMessageInit
pub extern "js" fn NDEFMessageSource::from_ndef_message_init(
  v : NDEFMessageInit,
) -> NDEFMessageSource =
  #| (v) => v

///|
/// Check if this NDEFMessageSource is String
pub extern "js" fn NDEFMessageSource::is_string(
  self : NDEFMessageSource,
) -> Bool =
  #| (self) => typeof self === 'string'

///|
/// Check if this NDEFMessageSource is BufferSource
pub extern "js" fn NDEFMessageSource::is_buffer_source(
  self : NDEFMessageSource,
) -> Bool =
  #| (self) => self instanceof Int8Array || self instanceof Int16Array || self instanceof Int32Array || self instanceof Uint8Array || self instanceof Uint16Array || self instanceof Uint32Array || self instanceof Uint8ClampedArray || self instanceof BigInt64Array || self instanceof BigUint64Array || self instanceof Float16Array || self instanceof Float32Array || self instanceof Float64Array || self instanceof DataView || self instanceof ArrayBuffer

///|
/// Check if this NDEFMessageSource is NDEFMessageInit
pub extern "js" fn NDEFMessageSource::is_ndef_message_init(
  self : NDEFMessageSource,
) -> Bool =
  #| (self) => typeof self === 'object' && self !== null

///|
/// Try to get NDEFMessageSource as String
pub extern "js" fn NDEFMessageSource::as_string(
  self : NDEFMessageSource,
) -> String? =
  #| (self) => (typeof self === 'string') ? self : undefined

///|
/// Try to get NDEFMessageSource as BufferSource
pub extern "js" fn NDEFMessageSource::as_buffer_source(
  self : NDEFMessageSource,
) -> BufferSource? =
  #| (self) => (self instanceof Int8Array || self instanceof Int16Array || self instanceof Int32Array || self instanceof Uint8Array || self instanceof Uint16Array || self instanceof Uint32Array || self instanceof Uint8ClampedArray || self instanceof BigInt64Array || self instanceof BigUint64Array || self instanceof Float16Array || self instanceof Float32Array || self instanceof Float64Array || self instanceof DataView || self instanceof ArrayBuffer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get NDEFMessageSource as NDEFMessageInit
pub extern "js" fn NDEFMessageSource::as_ndef_message_init(
  self : NDEFMessageSource,
) -> NDEFMessageInit? =
  #| (self) => (typeof self === 'object' && self !== null) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[NDEFMessageSource] to String?
pub fn NDEFMessageSource::bind_as_string(value : NDEFMessageSource?) -> String? {
  match value {
    Some(v) => v.as_string()
    None => None
  }
}

///|
/// Flatten Option[NDEFMessageSource] to BufferSource?
pub fn NDEFMessageSource::bind_as_buffer_source(
  value : NDEFMessageSource?,
) -> BufferSource? {
  match value {
    Some(v) => v.as_buffer_source()
    None => None
  }
}

///|
/// Flatten Option[NDEFMessageSource] to NDEFMessageInit?
pub fn NDEFMessageSource::bind_as_ndef_message_init(
  value : NDEFMessageSource?,
) -> NDEFMessageInit? {
  match value {
    Some(v) => v.as_ndef_message_init()
    None => None
  }
}

///|
/// NDEFMessageInit dictionary
pub(all) struct NDEFMessageInit {
  records : Array[NDEFRecordInit]
}

///|
/// Create a new NDEFMessageInit with default values
pub fn NDEFMessageInit::default() -> NDEFMessageInit {
  NDEFMessageInit::{ records: [] }
}

///|
extern "js" fn NDEFMessageInit::to_js_ffi(self : NDEFMessageInit) -> JsValue =
  #| (self) => ({
  #|   records: self.records
  #| })

///|
/// Convert to JsValue
pub fn NDEFMessageInit::to_js(self : NDEFMessageInit) -> JsValue {
  NDEFMessageInit::to_js_ffi(self)
}

///|
extern "js" fn NDEFMessageInit::from_js_ffi(value : JsValue) -> NDEFMessageInit =
  #| (v) => ({
  #|   records: v.records
  #| })

///|
/// Convert from JsValue
pub fn NDEFMessageInit::from_js(value : JsValue) -> NDEFMessageInit {
  NDEFMessageInit::from_js_ffi(value)
}

///|
/// NDEFRecordInit dictionary
pub(all) struct NDEFRecordInit {
  recordType : String
  mediaType : String?
  id : String?
  encoding : String?
  lang : String?
  data : JsValue?
}

///|
/// Create a new NDEFRecordInit with default values
pub fn NDEFRecordInit::default() -> NDEFRecordInit {
  NDEFRecordInit::{
    recordType: "",
    mediaType: None,
    id: None,
    encoding: None,
    lang: None,
    data: None,
  }
}

///|
extern "js" fn NDEFRecordInit::to_js_ffi(self : NDEFRecordInit) -> JsValue =
  #| (self) => ({
  #|   recordType: self.recordType,
  #|   mediaType: self.mediaType,
  #|   id: self.id,
  #|   encoding: self.encoding,
  #|   lang: self.lang,
  #|   data: ((() => { const v = self.data; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn NDEFRecordInit::to_js(self : NDEFRecordInit) -> JsValue {
  NDEFRecordInit::to_js_ffi(self)
}

///|
extern "js" fn NDEFRecordInit::from_js_ffi(value : JsValue) -> NDEFRecordInit =
  #| (v) => ({
  #|   recordType: v.recordType,
  #|   mediaType: v.mediaType,
  #|   id: v.id,
  #|   encoding: v.encoding,
  #|   lang: v.lang,
  #|   data: (v.data === undefined ? { $tag: 0 } : { $tag: 1, _0: v.data })
  #| })

///|
/// Convert from JsValue
pub fn NDEFRecordInit::from_js(value : JsValue) -> NDEFRecordInit {
  NDEFRecordInit::from_js_ffi(value)
}

///|
/// NDEFReadingEventInit dictionary
pub(all) struct NDEFReadingEventInit {
  serialNumber : Nullable[String]
  message : NDEFMessageInit
}

///|
/// Create a new NDEFReadingEventInit
pub fn NDEFReadingEventInit::new(
  message~ : NDEFMessageInit,
) -> NDEFReadingEventInit {
  NDEFReadingEventInit::{ serialNumber: Nullable::Undefined, message }
}

///|
extern "js" fn NDEFReadingEventInit::to_js_ffi(
  self : NDEFReadingEventInit,
) -> JsValue =
  #| (self) => ({
  #|   serialNumber: ((() => { const v = self.serialNumber; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   message: self.message
  #| })

///|
/// Convert to JsValue
pub fn NDEFReadingEventInit::to_js(self : NDEFReadingEventInit) -> JsValue {
  NDEFReadingEventInit::to_js_ffi(self)
}

///|
extern "js" fn NDEFReadingEventInit::from_js_ffi(
  value : JsValue,
) -> NDEFReadingEventInit =
  #| (v) => ({
  #|   serialNumber: (v.serialNumber === undefined ? { $tag: 0 } : v.serialNumber === null ? { $tag: 1 } : { $tag: 2, _0: v.serialNumber }),
  #|   message: v.message
  #| })

///|
/// Convert from JsValue
pub fn NDEFReadingEventInit::from_js(value : JsValue) -> NDEFReadingEventInit {
  NDEFReadingEventInit::from_js_ffi(value)
}

///|
/// NDEFWriteOptions dictionary
pub(all) struct NDEFWriteOptions {
  overwrite : Bool?
  signal : Nullable[AbortSignal]
}

///|
/// Create a new NDEFWriteOptions with default values
pub fn NDEFWriteOptions::default() -> NDEFWriteOptions {
  NDEFWriteOptions::{ overwrite: None, signal: Nullable::Undefined }
}

///|
extern "js" fn NDEFWriteOptions::to_js_ffi(self : NDEFWriteOptions) -> JsValue =
  #| (self) => ({
  #|   overwrite: (self.overwrite === -1 ? undefined : self.overwrite),
  #|   signal: ((() => { const v = self.signal; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn NDEFWriteOptions::to_js(self : NDEFWriteOptions) -> JsValue {
  NDEFWriteOptions::to_js_ffi(self)
}

///|
extern "js" fn NDEFWriteOptions::from_js_ffi(
  value : JsValue,
) -> NDEFWriteOptions =
  #| (v) => ({
  #|   overwrite: (v.overwrite === undefined ? -1 : v.overwrite),
  #|   signal: (v.signal === undefined ? { $tag: 0 } : v.signal === null ? { $tag: 1 } : { $tag: 2, _0: v.signal })
  #| })

///|
/// Convert from JsValue
pub fn NDEFWriteOptions::from_js(value : JsValue) -> NDEFWriteOptions {
  NDEFWriteOptions::from_js_ffi(value)
}

///|
/// NDEFMakeReadOnlyOptions dictionary
pub(all) struct NDEFMakeReadOnlyOptions {
  signal : Nullable[AbortSignal]
}

///|
/// Create a new NDEFMakeReadOnlyOptions with default values
pub fn NDEFMakeReadOnlyOptions::default() -> NDEFMakeReadOnlyOptions {
  NDEFMakeReadOnlyOptions::{ signal: Nullable::Undefined }
}

///|
extern "js" fn NDEFMakeReadOnlyOptions::to_js_ffi(
  self : NDEFMakeReadOnlyOptions,
) -> JsValue =
  #| (self) => ({
  #|   signal: ((() => { const v = self.signal; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn NDEFMakeReadOnlyOptions::to_js(
  self : NDEFMakeReadOnlyOptions,
) -> JsValue {
  NDEFMakeReadOnlyOptions::to_js_ffi(self)
}

///|
extern "js" fn NDEFMakeReadOnlyOptions::from_js_ffi(
  value : JsValue,
) -> NDEFMakeReadOnlyOptions =
  #| (v) => ({
  #|   signal: (v.signal === undefined ? { $tag: 0 } : v.signal === null ? { $tag: 1 } : { $tag: 2, _0: v.signal })
  #| })

///|
/// Convert from JsValue
pub fn NDEFMakeReadOnlyOptions::from_js(
  value : JsValue,
) -> NDEFMakeReadOnlyOptions {
  NDEFMakeReadOnlyOptions::from_js_ffi(value)
}

///|
/// NDEFScanOptions dictionary
pub(all) struct NDEFScanOptions {
  signal : AbortSignal?
}

///|
/// Create a new NDEFScanOptions with default values
pub fn NDEFScanOptions::default() -> NDEFScanOptions {
  NDEFScanOptions::{ signal: None }
}

///|
extern "js" fn NDEFScanOptions::to_js_ffi(self : NDEFScanOptions) -> JsValue =
  #| (self) => ({
  #|   signal: ((() => { const v = self.signal; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn NDEFScanOptions::to_js(self : NDEFScanOptions) -> JsValue {
  NDEFScanOptions::to_js_ffi(self)
}

///|
extern "js" fn NDEFScanOptions::from_js_ffi(value : JsValue) -> NDEFScanOptions =
  #| (v) => ({
  #|   signal: (v.signal === undefined ? { $tag: 0 } : { $tag: 1, _0: v.signal })
  #| })

///|
/// Convert from JsValue
pub fn NDEFScanOptions::from_js(value : JsValue) -> NDEFScanOptions {
  NDEFScanOptions::from_js_ffi(value)
}

///|
/// NDEFMessage interface
pub type NDEFMessage

///|
pub extern "js" fn NDEFMessage::to_js_value(self : NDEFMessage) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to NDEFMessage (unchecked)
pub extern "js" fn NDEFMessage::from_js_value(v : JsValue) -> NDEFMessage =
  #| (v) => v

///|
/// Safely cast JsValue to NDEFMessage (checked with instanceof)
pub extern "js" fn NDEFMessage::from_js_value_opt(v : JsValue) -> NDEFMessage? =
  #| (v) => (v instanceof NDEFMessage) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to NDEFMessage (checked with instanceof)
pub extern "js" fn JsValue::as_ndef_message(self : JsValue) -> NDEFMessage? =
  #| (self) => (self instanceof NDEFMessage) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to NDEFMessage (unchecked)
pub extern "js" fn JsValue::to_ndef_message(self : JsValue) -> NDEFMessage =
  #| (self) => self

///|
extern "js" fn NDEFMessage::new_ffi(message_init : JsValue) -> NDEFMessage =
  #| (message_init) => new NDEFMessage(message_init)

///|
pub fn NDEFMessage::new(message_init : NDEFMessageInit) -> NDEFMessage {
  NDEFMessage::new_ffi(message_init.to_js())
}

///|
pub extern "js" fn NDEFMessage::get_records(
  self : NDEFMessage,
) -> Array[NDEFRecord] =
  #| (self) => self.records

///|
/// NDEFRecord interface
pub type NDEFRecord

///|
pub extern "js" fn NDEFRecord::to_js_value(self : NDEFRecord) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to NDEFRecord (unchecked)
pub extern "js" fn NDEFRecord::from_js_value(v : JsValue) -> NDEFRecord =
  #| (v) => v

///|
/// Safely cast JsValue to NDEFRecord (checked with instanceof)
pub extern "js" fn NDEFRecord::from_js_value_opt(v : JsValue) -> NDEFRecord? =
  #| (v) => (v instanceof NDEFRecord) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to NDEFRecord (checked with instanceof)
pub extern "js" fn JsValue::as_ndef_record(self : JsValue) -> NDEFRecord? =
  #| (self) => (self instanceof NDEFRecord) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to NDEFRecord (unchecked)
pub extern "js" fn JsValue::to_ndef_record(self : JsValue) -> NDEFRecord =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum NDEFRecordToRecordsError {
  NotSupported(JsError)
  OtherError(JsError)
}

///|
extern "js" fn NDEFRecord::new_ffi(record_init : JsValue) -> NDEFRecord =
  #| (record_init) => new NDEFRecord(record_init)

///|
pub fn NDEFRecord::new(record_init : NDEFRecordInit) -> NDEFRecord {
  NDEFRecord::new_ffi(record_init.to_js())
}

///|
pub extern "js" fn NDEFRecord::get_record_type(self : NDEFRecord) -> String =
  #| (self) => self.recordType

///|
pub extern "js" fn NDEFRecord::get_media_type(self : NDEFRecord) -> String? =
  #| (self) => (self.mediaType) ?? undefined

///|
pub extern "js" fn NDEFRecord::get_id(self : NDEFRecord) -> String? =
  #| (self) => (self.id) ?? undefined

///|
pub extern "js" fn NDEFRecord::get_data(self : NDEFRecord) -> DataView? =
  #| (self) => (() => { const v = self.data; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn NDEFRecord::get_encoding(self : NDEFRecord) -> String? =
  #| (self) => (self.encoding) ?? undefined

///|
pub extern "js" fn NDEFRecord::get_lang(self : NDEFRecord) -> String? =
  #| (self) => (self.lang) ?? undefined

///|
pub extern "js" fn NDEFRecord::to_records(
  self : NDEFRecord,
) -> Result[Array[NDEFRecord], NDEFRecordToRecordsError] =
  #| (self) => (() => { try { return { $tag: 1, _0: self.toRecords() }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NotSupported') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
/// NDEFReader interface
pub type NDEFReader

///|
pub extern "js" fn NDEFReader::to_js_value(self : NDEFReader) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to NDEFReader (unchecked)
pub extern "js" fn NDEFReader::from_js_value(v : JsValue) -> NDEFReader =
  #| (v) => v

///|
/// Safely cast JsValue to NDEFReader (checked with instanceof)
pub extern "js" fn NDEFReader::from_js_value_opt(v : JsValue) -> NDEFReader? =
  #| (v) => (v instanceof NDEFReader) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to NDEFReader (checked with instanceof)
pub extern "js" fn JsValue::as_ndef_reader(self : JsValue) -> NDEFReader? =
  #| (self) => (self instanceof NDEFReader) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to NDEFReader (unchecked)
pub extern "js" fn JsValue::to_ndef_reader(self : JsValue) -> NDEFReader =
  #| (self) => self

///|
pub extern "js" fn NDEFReader::to_event_target(
  self : NDEFReader,
) -> EventTarget =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum NDEFReaderScanError {
  AbortError(JsError)
  NotAllowedError(JsError)
  InvalidStateError(JsError)
  NotSupportedError(JsError)
  OtherError(JsError)
}

///|
/// Error type for throwing methods
pub(all) enum NDEFReaderWriteError {
  AbortError(JsError)
  NetworkError(JsError)
  NotAllowedError(JsError)
  NotReadableError(JsError)
  NotSupportedError(JsError)
  OtherError(JsError)
}

///|
pub extern "js" fn NDEFReader::new() -> NDEFReader =
  #| () => new NDEFReader()

///|
pub extern "js" fn NDEFReader::set_onreading(
  self : NDEFReader,
  handler : (NDEFReadingEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onreading = (e) => handler(e) }

///|
pub extern "js" fn NDEFReader::clear_onreading(self : NDEFReader) -> Unit =
  #| (self) => { self.onreading = null }

///|
pub extern "js" fn NDEFReader::set_onreadingerror(
  self : NDEFReader,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onreadingerror = (e) => handler(e) }

///|
pub extern "js" fn NDEFReader::clear_onreadingerror(self : NDEFReader) -> Unit =
  #| (self) => { self.onreadingerror = null }

///|
pub extern "js" fn NDEFReader::scan(
  self : NDEFReader,
) -> Promise[Result[Unit, NDEFReaderScanError]] =
  #| (self) => self.scan().then(v => ({ $tag: 1, _0: undefined })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'AbortError') return { $tag: 0, _0: e }; if (n === 'NotAllowedError') return { $tag: 1, _0: e }; if (n === 'InvalidStateError') return { $tag: 2, _0: e }; if (n === 'NotSupportedError') return { $tag: 3, _0: e }; return { $tag: 4, _0: e }; })() }))

///|
extern "js" fn NDEFReader::scan_with_options_ffi(
  self : NDEFReader,
  options : JsValue,
) -> Promise[Result[Unit, NDEFReaderScanError]] =
  #| (self, options) => self.scan(options).then(v => ({ $tag: 1, _0: undefined })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'AbortError') return { $tag: 0, _0: e }; if (n === 'NotAllowedError') return { $tag: 1, _0: e }; if (n === 'InvalidStateError') return { $tag: 2, _0: e }; if (n === 'NotSupportedError') return { $tag: 3, _0: e }; return { $tag: 4, _0: e }; })() }))

///|
pub fn NDEFReader::scan_with_options(
  self : NDEFReader,
  options : NDEFScanOptions,
) -> Promise[Result[Unit, NDEFReaderScanError]] {
  NDEFReader::scan_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn NDEFReader::write(
  self : NDEFReader,
  message : NDEFMessageSource,
) -> Promise[Result[Unit, NDEFReaderWriteError]] =
  #| (self, message) => self.write(message).then(v => ({ $tag: 1, _0: undefined })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'AbortError') return { $tag: 0, _0: e }; if (n === 'NetworkError') return { $tag: 1, _0: e }; if (n === 'NotAllowedError') return { $tag: 2, _0: e }; if (n === 'NotReadableError') return { $tag: 3, _0: e }; if (n === 'NotSupportedError') return { $tag: 4, _0: e }; return { $tag: 5, _0: e }; })() }))

///|
extern "js" fn NDEFReader::write_with_options_ffi(
  self : NDEFReader,
  message : NDEFMessageSource,
  options : JsValue,
) -> Promise[Result[Unit, NDEFReaderWriteError]] =
  #| (self, message, options) => self.write(message, options).then(v => ({ $tag: 1, _0: undefined })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'AbortError') return { $tag: 0, _0: e }; if (n === 'NetworkError') return { $tag: 1, _0: e }; if (n === 'NotAllowedError') return { $tag: 2, _0: e }; if (n === 'NotReadableError') return { $tag: 3, _0: e }; if (n === 'NotSupportedError') return { $tag: 4, _0: e }; return { $tag: 5, _0: e }; })() }))

///|
pub fn NDEFReader::write_with_options(
  self : NDEFReader,
  message : NDEFMessageSource,
  options : NDEFWriteOptions,
) -> Promise[Result[Unit, NDEFReaderWriteError]] {
  NDEFReader::write_with_options_ffi(self, message, options.to_js())
}

///|
pub extern "js" fn NDEFReader::make_read_only(
  self : NDEFReader,
) -> Promise[Unit] =
  #| (self) => self.makeReadOnly()

///|
extern "js" fn NDEFReader::make_read_only_with_options_ffi(
  self : NDEFReader,
  options : JsValue,
) -> Promise[Unit] =
  #| (self, options) => self.makeReadOnly(options)

///|
pub fn NDEFReader::make_read_only_with_options(
  self : NDEFReader,
  options : NDEFMakeReadOnlyOptions,
) -> Promise[Unit] {
  NDEFReader::make_read_only_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn NDEFReader::write_with_string(
  self : NDEFReader,
  message : String,
  options : NDEFWriteOptions,
) -> Promise[Result[Unit, NDEFReaderWriteError]] =
  #| (self, message, options) => self.write(message, options).then(v => ({ $tag: 1, _0: undefined })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'AbortError') return { $tag: 0, _0: e }; if (n === 'NetworkError') return { $tag: 1, _0: e }; if (n === 'NotAllowedError') return { $tag: 2, _0: e }; if (n === 'NotReadableError') return { $tag: 3, _0: e }; if (n === 'NotSupportedError') return { $tag: 4, _0: e }; return { $tag: 5, _0: e }; })() }))

///|
pub extern "js" fn NDEFReader::write_with_buffer_source(
  self : NDEFReader,
  message : BufferSource,
  options : NDEFWriteOptions,
) -> Promise[Result[Unit, NDEFReaderWriteError]] =
  #| (self, message, options) => self.write(message, options).then(v => ({ $tag: 1, _0: undefined })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'AbortError') return { $tag: 0, _0: e }; if (n === 'NetworkError') return { $tag: 1, _0: e }; if (n === 'NotAllowedError') return { $tag: 2, _0: e }; if (n === 'NotReadableError') return { $tag: 3, _0: e }; if (n === 'NotSupportedError') return { $tag: 4, _0: e }; return { $tag: 5, _0: e }; })() }))

///|
pub extern "js" fn NDEFReader::write_with_ndef_message_init(
  self : NDEFReader,
  message : NDEFMessageInit,
  options : NDEFWriteOptions,
) -> Promise[Result[Unit, NDEFReaderWriteError]] =
  #| (self, message, options) => self.write(message, options).then(v => ({ $tag: 1, _0: undefined })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'AbortError') return { $tag: 0, _0: e }; if (n === 'NetworkError') return { $tag: 1, _0: e }; if (n === 'NotAllowedError') return { $tag: 2, _0: e }; if (n === 'NotReadableError') return { $tag: 3, _0: e }; if (n === 'NotSupportedError') return { $tag: 4, _0: e }; return { $tag: 5, _0: e }; })() }))

///|
/// NDEFReadingEvent interface
pub type NDEFReadingEvent

///|
pub extern "js" fn NDEFReadingEvent::to_js_value(
  self : NDEFReadingEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to NDEFReadingEvent (unchecked)
pub extern "js" fn NDEFReadingEvent::from_js_value(
  v : JsValue,
) -> NDEFReadingEvent =
  #| (v) => v

///|
/// Safely cast JsValue to NDEFReadingEvent (checked with instanceof)
pub extern "js" fn NDEFReadingEvent::from_js_value_opt(
  v : JsValue,
) -> NDEFReadingEvent? =
  #| (v) => (v instanceof NDEFReadingEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to NDEFReadingEvent (checked with instanceof)
pub extern "js" fn JsValue::as_ndef_reading_event(
  self : JsValue,
) -> NDEFReadingEvent? =
  #| (self) => (self instanceof NDEFReadingEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to NDEFReadingEvent (unchecked)
pub extern "js" fn JsValue::to_ndef_reading_event(
  self : JsValue,
) -> NDEFReadingEvent =
  #| (self) => self

///|
pub extern "js" fn NDEFReadingEvent::to_event(self : NDEFReadingEvent) -> Event =
  #| (self) => self

///|
extern "js" fn NDEFReadingEvent::new_ffi(
  type_ : String,
  reading_event_init_dict : JsValue,
) -> NDEFReadingEvent =
  #| (type_, reading_event_init_dict) => new NDEFReadingEvent(type_, reading_event_init_dict)

///|
pub fn NDEFReadingEvent::new(
  type_ : String,
  reading_event_init_dict : NDEFReadingEventInit,
) -> NDEFReadingEvent {
  NDEFReadingEvent::new_ffi(type_, reading_event_init_dict.to_js())
}

///|
pub extern "js" fn NDEFReadingEvent::get_serial_number(
  self : NDEFReadingEvent,
) -> String =
  #| (self) => self.serialNumber

///|
pub extern "js" fn NDEFReadingEvent::get_message(
  self : NDEFReadingEvent,
) -> NDEFMessage =
  #| (self) => self.message
