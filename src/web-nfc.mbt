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
pub extern "js" fn NDEFMessageSource::from_n_d_e_f_message_init(
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
pub extern "js" fn NDEFMessageSource::is_n_d_e_f_message_init(
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
pub extern "js" fn NDEFMessageSource::as_n_d_e_f_message_init(
  self : NDEFMessageSource,
) -> NDEFMessageInit? =
  #| (self) => (typeof self === 'object' && self !== null) ? { $tag: 1, _0: self } : { $tag: 0 }

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
  #|   data: ((() => { const v = self.data; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn NDEFRecordInit::to_js(self : NDEFRecordInit) -> JsValue {
  NDEFRecordInit::to_js_ffi(self)
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
  #|   serialNumber: ((() => { const v = self.serialNumber; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   message: self.message
  #| })

///|
/// Convert to JsValue
pub fn NDEFReadingEventInit::to_js(self : NDEFReadingEventInit) -> JsValue {
  NDEFReadingEventInit::to_js_ffi(self)
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
  #|   signal: ((() => { const v = self.signal; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// Convert to JsValue
pub fn NDEFWriteOptions::to_js(self : NDEFWriteOptions) -> JsValue {
  NDEFWriteOptions::to_js_ffi(self)
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
  #|   signal: ((() => { const v = self.signal; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// Convert to JsValue
pub fn NDEFMakeReadOnlyOptions::to_js(
  self : NDEFMakeReadOnlyOptions,
) -> JsValue {
  NDEFMakeReadOnlyOptions::to_js_ffi(self)
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
  #|   signal: ((() => { const v = self.signal; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn NDEFScanOptions::to_js(self : NDEFScanOptions) -> JsValue {
  NDEFScanOptions::to_js_ffi(self)
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
pub extern "js" fn NDEFMessage::get_records(self : NDEFMessage) -> JsValue =
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
) -> Array[NDEFRecord] =
  #| (self) => self.toRecords()

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
pub extern "js" fn NDEFReader::new() -> NDEFReader =
  #| () => new NDEFReader()

///|
pub extern "js" fn NDEFReader::get_onreading(self : NDEFReader) -> EventHandler =
  #| (self) => self.onreading

///|
pub extern "js" fn NDEFReader::set_onreading(
  self : NDEFReader,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onreading = value }

///|
pub extern "js" fn NDEFReader::get_onreadingerror(
  self : NDEFReader,
) -> EventHandler =
  #| (self) => self.onreadingerror

///|
pub extern "js" fn NDEFReader::set_onreadingerror(
  self : NDEFReader,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onreadingerror = value }

///|
pub extern "js" fn NDEFReader::scan(self : NDEFReader) -> Promise[Unit] =
  #| (self) => self.scan()

///|
extern "js" fn NDEFReader::scan_with_options_ffi(
  self : NDEFReader,
  options : JsValue,
) -> Promise[Unit] =
  #| (self, options) => self.scan(options)

///|
pub fn NDEFReader::scan_with_options(
  self : NDEFReader,
  options : NDEFScanOptions,
) -> Promise[Unit] {
  NDEFReader::scan_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn NDEFReader::write(
  self : NDEFReader,
  message : NDEFMessageSource,
) -> Promise[Unit] =
  #| (self, message) => self.write(message)

///|
extern "js" fn NDEFReader::write_with_options_ffi(
  self : NDEFReader,
  message : NDEFMessageSource,
  options : JsValue,
) -> Promise[Unit] =
  #| (self, message, options) => self.write(message, options)

///|
pub fn NDEFReader::write_with_options(
  self : NDEFReader,
  message : NDEFMessageSource,
  options : NDEFWriteOptions,
) -> Promise[Unit] {
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
) -> Promise[Unit] =
  #| (self, message, options) => self.write(message, options)

///|
pub extern "js" fn NDEFReader::write_with_buffer_source(
  self : NDEFReader,
  message : BufferSource,
  options : NDEFWriteOptions,
) -> Promise[Unit] =
  #| (self, message, options) => self.write(message, options)

///|
pub extern "js" fn NDEFReader::write_with_n_d_e_f_message_init(
  self : NDEFReader,
  message : NDEFMessageInit,
  options : NDEFWriteOptions,
) -> Promise[Unit] =
  #| (self, message, options) => self.write(message, options)

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
