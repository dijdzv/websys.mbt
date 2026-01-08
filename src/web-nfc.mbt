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
/// NDEFMessageInit dictionary
pub struct NDEFMessageInit {
  records : Array[NDEFRecordInit]
}

///|
/// Create a new NDEFMessageInit with default values
pub fn NDEFMessageInit::default() -> NDEFMessageInit {
  NDEFMessageInit::{ records: [] }
}

///|
/// Convert to JsValue
pub extern "js" fn NDEFMessageInit::to_js(self : NDEFMessageInit) -> JsValue =
  #| (self) => ({
  #|   records: self.records
  #| })

///|
/// NDEFRecordInit dictionary
pub struct NDEFRecordInit {
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
/// Convert to JsValue
pub extern "js" fn NDEFRecordInit::to_js(self : NDEFRecordInit) -> JsValue =
  #| (self) => ({
  #|   recordType: self.recordType,
  #|   mediaType: self.mediaType,
  #|   id: self.id,
  #|   encoding: self.encoding,
  #|   lang: self.lang,
  #|   data: self.data
  #| })

///|
/// NDEFReadingEventInit dictionary
pub struct NDEFReadingEventInit {
  serialNumber : Nullable[String]
  message : NDEFMessageInit
}

///|
/// Create a new NDEFReadingEventInit with default values
pub fn NDEFReadingEventInit::default() -> NDEFReadingEventInit {
  NDEFReadingEventInit::{ serialNumber: Nullable::Undefined, message: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn NDEFReadingEventInit::to_js(
  self : NDEFReadingEventInit,
) -> JsValue =
  #| (self) => ({
  #|   serialNumber: ((() => { const v = self.serialNumber; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   message: self.message
  #| })

///|
/// NDEFWriteOptions dictionary
pub struct NDEFWriteOptions {
  overwrite : Bool?
  signal : Nullable[AbortSignal]
}

///|
/// Create a new NDEFWriteOptions with default values
pub fn NDEFWriteOptions::default() -> NDEFWriteOptions {
  NDEFWriteOptions::{ overwrite: None, signal: Nullable::Undefined }
}

///|
/// Convert to JsValue
pub extern "js" fn NDEFWriteOptions::to_js(self : NDEFWriteOptions) -> JsValue =
  #| (self) => ({
  #|   overwrite: self.overwrite,
  #|   signal: ((() => { const v = self.signal; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// NDEFMakeReadOnlyOptions dictionary
pub struct NDEFMakeReadOnlyOptions {
  signal : Nullable[AbortSignal]
}

///|
/// Create a new NDEFMakeReadOnlyOptions with default values
pub fn NDEFMakeReadOnlyOptions::default() -> NDEFMakeReadOnlyOptions {
  NDEFMakeReadOnlyOptions::{ signal: Nullable::Undefined }
}

///|
/// Convert to JsValue
pub extern "js" fn NDEFMakeReadOnlyOptions::to_js(
  self : NDEFMakeReadOnlyOptions,
) -> JsValue =
  #| (self) => ({
  #|   signal: ((() => { const v = self.signal; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// NDEFScanOptions dictionary
pub struct NDEFScanOptions {
  signal : AbortSignal?
}

///|
/// Create a new NDEFScanOptions with default values
pub fn NDEFScanOptions::default() -> NDEFScanOptions {
  NDEFScanOptions::{ signal: None }
}

///|
/// Convert to JsValue
pub extern "js" fn NDEFScanOptions::to_js(self : NDEFScanOptions) -> JsValue =
  #| (self) => ({
  #|   signal: self.signal
  #| })

///|
/// NDEFMessage interface
pub type NDEFMessage

///|
pub extern "js" fn NDEFMessage::to_js_value(self : NDEFMessage) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn NDEFMessage::new(
  message_init : NDEFMessageInit,
) -> NDEFMessage =
  #| (message_init) => new NDEFMessage(message_init)

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
pub extern "js" fn NDEFRecord::new(record_init : NDEFRecordInit) -> NDEFRecord =
  #| (record_init) => new NDEFRecord(record_init)

///|
pub extern "js" fn NDEFRecord::get_record_type(self : NDEFRecord) -> String =
  #| (self) => self.recordType

///|
pub extern "js" fn NDEFRecord::get_media_type(self : NDEFRecord) -> String? =
  #| (self) => self.mediaType

///|
pub extern "js" fn NDEFRecord::get_id(self : NDEFRecord) -> String? =
  #| (self) => self.id

///|
pub extern "js" fn NDEFRecord::get_data(self : NDEFRecord) -> DataView? =
  #| (self) => self.data

///|
pub extern "js" fn NDEFRecord::get_encoding(self : NDEFRecord) -> String? =
  #| (self) => self.encoding

///|
pub extern "js" fn NDEFRecord::get_lang(self : NDEFRecord) -> String? =
  #| (self) => self.lang

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
pub extern "js" fn NDEFReader::scan_with_options(
  self : NDEFReader,
  options : NDEFScanOptions,
) -> Promise[Unit] =
  #| (self, options) => self.scan(options)

///|
pub extern "js" fn NDEFReader::write(
  self : NDEFReader,
  message : NDEFMessageSource,
) -> Promise[Unit] =
  #| (self, message) => self.write(message)

///|
pub extern "js" fn NDEFReader::write_with_options(
  self : NDEFReader,
  message : NDEFMessageSource,
  options : NDEFWriteOptions,
) -> Promise[Unit] =
  #| (self, message, options) => self.write(message, options)

///|
pub extern "js" fn NDEFReader::make_read_only(
  self : NDEFReader,
) -> Promise[Unit] =
  #| (self) => self.makeReadOnly()

///|
pub extern "js" fn NDEFReader::make_read_only_with_options(
  self : NDEFReader,
  options : NDEFMakeReadOnlyOptions,
) -> Promise[Unit] =
  #| (self, options) => self.makeReadOnly(options)

///|
/// NDEFReadingEvent interface
pub type NDEFReadingEvent

///|
pub extern "js" fn NDEFReadingEvent::to_js_value(
  self : NDEFReadingEvent,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn NDEFReadingEvent::new(
  type_ : String,
  reading_event_init_dict : NDEFReadingEventInit,
) -> NDEFReadingEvent =
  #| (type_, reading_event_init_dict) => new NDEFReadingEvent(type_, reading_event_init_dict)

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
