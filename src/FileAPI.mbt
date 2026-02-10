// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/FileAPI

///|
/// BlobPart typedef
pub type BlobPart

///|
pub extern "js" fn BlobPart::to_js_value(self : BlobPart) -> JsValue =
  #| (self) => self

///|
/// Create BlobPart from BufferSource
pub extern "js" fn BlobPart::from_buffer_source(v : BufferSource) -> BlobPart =
  #| (v) => v

///|
/// Create BlobPart from Blob
pub extern "js" fn BlobPart::from_blob(v : Blob) -> BlobPart =
  #| (v) => v

///|
/// Create BlobPart from String
pub extern "js" fn BlobPart::from_string(v : String) -> BlobPart =
  #| (v) => v

///|
/// Check if this BlobPart is BufferSource
pub extern "js" fn BlobPart::is_buffer_source(self : BlobPart) -> Bool =
  #| (self) => self instanceof Int8Array || self instanceof Int16Array || self instanceof Int32Array || self instanceof Uint8Array || self instanceof Uint16Array || self instanceof Uint32Array || self instanceof Uint8ClampedArray || self instanceof BigInt64Array || self instanceof BigUint64Array || self instanceof Float16Array || self instanceof Float32Array || self instanceof Float64Array || self instanceof DataView || self instanceof ArrayBuffer

///|
/// Check if this BlobPart is Blob
pub extern "js" fn BlobPart::is_blob(self : BlobPart) -> Bool =
  #| (self) => self instanceof Blob

///|
/// Check if this BlobPart is String
pub extern "js" fn BlobPart::is_string(self : BlobPart) -> Bool =
  #| (self) => typeof self === 'string'

///|
/// Try to get BlobPart as BufferSource
pub extern "js" fn BlobPart::as_buffer_source(self : BlobPart) -> BufferSource? =
  #| (self) => (self instanceof Int8Array || self instanceof Int16Array || self instanceof Int32Array || self instanceof Uint8Array || self instanceof Uint16Array || self instanceof Uint32Array || self instanceof Uint8ClampedArray || self instanceof BigInt64Array || self instanceof BigUint64Array || self instanceof Float16Array || self instanceof Float32Array || self instanceof Float64Array || self instanceof DataView || self instanceof ArrayBuffer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get BlobPart as Blob
pub extern "js" fn BlobPart::as_blob(self : BlobPart) -> Blob? =
  #| (self) => (self instanceof Blob) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get BlobPart as String
pub extern "js" fn BlobPart::as_string(self : BlobPart) -> String? =
  #| (self) => (typeof self === 'string') ? self : undefined

///|
/// Flatten Option[BlobPart] to BufferSource?
pub fn BlobPart::bind_as_buffer_source(value : BlobPart?) -> BufferSource? {
  match value {
    Some(v) => v.as_buffer_source()
    None => None
  }
}

///|
/// Flatten Option[BlobPart] to Blob?
pub fn BlobPart::bind_as_blob(value : BlobPart?) -> Blob? {
  match value {
    Some(v) => v.as_blob()
    None => None
  }
}

///|
/// Flatten Option[BlobPart] to String?
pub fn BlobPart::bind_as_string(value : BlobPart?) -> String? {
  match value {
    Some(v) => v.as_string()
    None => None
  }
}

///|
/// EndingType enum
pub(all) enum EndingType {
  Transparent
  Native
} derive(Eq, Show)

///|
/// Convert to string value
pub fn EndingType::to_string(self : EndingType) -> String {
  match self {
    EndingType::Transparent => "transparent"
    EndingType::Native => "native"
  }
}

///|
/// Parse from string value
pub fn EndingType::from_string(s : String) -> EndingType? {
  match s {
    "transparent" => Some(EndingType::Transparent)
    "native" => Some(EndingType::Native)
    _ => None
  }
}

///|
/// BlobPropertyBag dictionary
pub(all) struct BlobPropertyBag {
  type_ : String?
  endings : EndingType?
}

///|
/// Create a new BlobPropertyBag with default values
pub fn BlobPropertyBag::default() -> BlobPropertyBag {
  BlobPropertyBag::{ type_: None, endings: None }
}

///|
extern "js" fn BlobPropertyBag::to_js_ffi(self : BlobPropertyBag) -> JsValue =
  #| (self) => ({
  #|   type: self.type_,
  #|   endings: ((() => { const v = self.endings; if (v === undefined) return undefined; return ['transparent', 'native'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn BlobPropertyBag::to_js(self : BlobPropertyBag) -> JsValue {
  BlobPropertyBag::to_js_ffi(self)
}

///|
extern "js" fn BlobPropertyBag::from_js_ffi(value : JsValue) -> BlobPropertyBag =
  #| (v) => ({
  #|   type_: v.type,
  #|   endings: (v.endings === undefined ? undefined : ['transparent', 'native'].indexOf(v.endings))
  #| })

///|
/// Convert from JsValue
pub fn BlobPropertyBag::from_js(value : JsValue) -> BlobPropertyBag {
  BlobPropertyBag::from_js_ffi(value)
}

///|
/// FilePropertyBag dictionary
pub(all) struct FilePropertyBag {
  type_ : String?
  endings : EndingType?
  lastModified : Int64?
}

///|
/// Create a new FilePropertyBag with default values
pub fn FilePropertyBag::default() -> FilePropertyBag {
  FilePropertyBag::{ type_: None, endings: None, lastModified: None }
}

///|
extern "js" fn FilePropertyBag::to_js_ffi(self : FilePropertyBag) -> JsValue =
  #| (self) => ({
  #|   type: self.type_,
  #|   endings: ((() => { const v = self.endings; if (v === undefined) return undefined; return ['transparent', 'native'][v]; })()),
  #|   lastModified: self.lastModified
  #| })

///|
/// Convert to JsValue
pub fn FilePropertyBag::to_js(self : FilePropertyBag) -> JsValue {
  FilePropertyBag::to_js_ffi(self)
}

///|
extern "js" fn FilePropertyBag::from_js_ffi(value : JsValue) -> FilePropertyBag =
  #| (v) => ({
  #|   type_: v.type,
  #|   endings: (v.endings === undefined ? undefined : ['transparent', 'native'].indexOf(v.endings)),
  #|   lastModified: v.lastModified
  #| })

///|
/// Convert from JsValue
pub fn FilePropertyBag::from_js(value : JsValue) -> FilePropertyBag {
  FilePropertyBag::from_js_ffi(value)
}

///|
/// Blob interface
pub type Blob

///|
pub extern "js" fn Blob::to_js_value(self : Blob) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Blob (unchecked)
pub extern "js" fn Blob::from_js_value(v : JsValue) -> Blob =
  #| (v) => v

///|
/// Safely cast JsValue to Blob (checked with instanceof)
pub extern "js" fn Blob::from_js_value_opt(v : JsValue) -> Blob? =
  #| (v) => (v instanceof Blob) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Blob (checked with instanceof)
pub extern "js" fn JsValue::as_blob(self : JsValue) -> Blob? =
  #| (self) => (self instanceof Blob) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Blob (unchecked)
pub extern "js" fn JsValue::to_blob(self : JsValue) -> Blob =
  #| (self) => self

///|
pub extern "js" fn Blob::as_file(self : Blob) -> File? =
  #| (self) => (self instanceof File) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Blob::new() -> Blob =
  #| () => new Blob()

///|
extern "js" fn Blob::new_with_options_ffi(
  blob_parts : Array[BlobPart],
  options : JsValue,
) -> Blob =
  #| (blob_parts, options) => new Blob(blob_parts, options)

///|
pub fn Blob::new_with_options(
  blob_parts : Array[BlobPart],
  options : BlobPropertyBag,
) -> Blob {
  Blob::new_with_options_ffi(blob_parts, options.to_js())
}

///|
pub extern "js" fn Blob::get_size(self : Blob) -> Int64 =
  #| (self) => (() => { const n = self.size; return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

///|
pub extern "js" fn Blob::get_type(self : Blob) -> String =
  #| (self) => self.type

///|
pub extern "js" fn Blob::slice(self : Blob) -> Blob =
  #| (self) => self.slice()

///|
pub extern "js" fn Blob::slice_with_content_type(
  self : Blob,
  start : Int64,
  end : Int64,
  content_type : String,
) -> Blob =
  #| (self, start, end, content_type) => self.slice((start.hi * 4294967296 + start.lo), (end.hi * 4294967296 + end.lo), content_type)

///|
pub extern "js" fn Blob::stream(self : Blob) -> ReadableStream =
  #| (self) => self.stream()

///|
pub extern "js" fn Blob::text(self : Blob) -> Promise[String] =
  #| (self) => self.text()

///|
pub extern "js" fn Blob::array_buffer(self : Blob) -> Promise[ArrayBuffer] =
  #| (self) => self.arrayBuffer()

///|
pub extern "js" fn Blob::bytes(self : Blob) -> Promise[Uint8Array] =
  #| (self) => self.bytes()

///|
/// File interface
pub type File

///|
pub extern "js" fn File::to_js_value(self : File) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to File (unchecked)
pub extern "js" fn File::from_js_value(v : JsValue) -> File =
  #| (v) => v

///|
/// Safely cast JsValue to File (checked with instanceof)
pub extern "js" fn File::from_js_value_opt(v : JsValue) -> File? =
  #| (v) => (v instanceof File) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to File (checked with instanceof)
pub extern "js" fn JsValue::as_file(self : JsValue) -> File? =
  #| (self) => (self instanceof File) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to File (unchecked)
pub extern "js" fn JsValue::to_file(self : JsValue) -> File =
  #| (self) => self

///|
pub extern "js" fn File::to_blob(self : File) -> Blob =
  #| (self) => self

///|
pub extern "js" fn File::new(
  file_bits : Array[BlobPart],
  file_name : String,
) -> File =
  #| (file_bits, file_name) => new File(file_bits, file_name)

///|
extern "js" fn File::new_with_options_ffi(
  file_bits : Array[BlobPart],
  file_name : String,
  options : JsValue,
) -> File =
  #| (file_bits, file_name, options) => new File(file_bits, file_name, options)

///|
pub fn File::new_with_options(
  file_bits : Array[BlobPart],
  file_name : String,
  options : FilePropertyBag,
) -> File {
  File::new_with_options_ffi(file_bits, file_name, options.to_js())
}

///|
pub extern "js" fn File::get_name(self : File) -> String =
  #| (self) => self.name

///|
pub extern "js" fn File::get_last_modified(self : File) -> Int64 =
  #| (self) => (() => { const n = self.lastModified; return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

///|
pub extern "js" fn File::get_webkit_relative_path(self : File) -> String =
  #| (self) => self.webkitRelativePath

///|
/// FileList interface
pub type FileList

///|
pub extern "js" fn FileList::to_js_value(self : FileList) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to FileList (unchecked)
pub extern "js" fn FileList::from_js_value(v : JsValue) -> FileList =
  #| (v) => v

///|
/// Safely cast JsValue to FileList (checked with instanceof)
pub extern "js" fn FileList::from_js_value_opt(v : JsValue) -> FileList? =
  #| (v) => (v instanceof FileList) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to FileList (checked with instanceof)
pub extern "js" fn JsValue::as_file_list(self : JsValue) -> FileList? =
  #| (self) => (self instanceof FileList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to FileList (unchecked)
pub extern "js" fn JsValue::to_file_list(self : JsValue) -> FileList =
  #| (self) => self

///|
pub extern "js" fn FileList::item(self : FileList, index : Int) -> File? =
  #| (self, index) => (() => { const v = self.item(index); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn FileList::get(self : FileList, index : Int) -> File? =
  #| (self, index) => (() => { const v = self[index]; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn FileList::get_length(self : FileList) -> Int =
  #| (self) => self.length

///|
/// FileReader interface
pub type FileReader

///|
pub extern "js" fn FileReader::to_js_value(self : FileReader) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to FileReader (unchecked)
pub extern "js" fn FileReader::from_js_value(v : JsValue) -> FileReader =
  #| (v) => v

///|
/// Safely cast JsValue to FileReader (checked with instanceof)
pub extern "js" fn FileReader::from_js_value_opt(v : JsValue) -> FileReader? =
  #| (v) => (v instanceof FileReader) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to FileReader (checked with instanceof)
pub extern "js" fn JsValue::as_file_reader(self : JsValue) -> FileReader? =
  #| (self) => (self instanceof FileReader) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to FileReader (unchecked)
pub extern "js" fn JsValue::to_file_reader(self : JsValue) -> FileReader =
  #| (self) => self

///|
pub extern "js" fn FileReader::to_event_target(
  self : FileReader,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn FileReader::new() -> FileReader =
  #| () => new FileReader()

///|
pub extern "js" fn FileReader::read_as_array_buffer(
  self : FileReader,
  blob : Blob,
) -> Unit =
  #| (self, blob) => self.readAsArrayBuffer(blob)

///|
pub extern "js" fn FileReader::read_as_binary_string(
  self : FileReader,
  blob : Blob,
) -> Unit =
  #| (self, blob) => self.readAsBinaryString(blob)

///|
pub extern "js" fn FileReader::read_as_text(
  self : FileReader,
  blob : Blob,
) -> Unit =
  #| (self, blob) => self.readAsText(blob)

///|
pub extern "js" fn FileReader::read_as_text_with_encoding(
  self : FileReader,
  blob : Blob,
  encoding : String,
) -> Unit =
  #| (self, blob, encoding) => self.readAsText(blob, encoding)

///|
pub extern "js" fn FileReader::read_as_data_url(
  self : FileReader,
  blob : Blob,
) -> Unit =
  #| (self, blob) => self.readAsDataURL(blob)

///|
pub extern "js" fn FileReader::abort(self : FileReader) -> Unit =
  #| (self) => self.abort()

// FileReader.EMPTY

///|
pub let file_reader_empty : Int = 0

// FileReader.LOADING

///|
pub let file_reader_loading : Int = 1

// FileReader.DONE

///|
pub let file_reader_done : Int = 2

///|
pub extern "js" fn FileReader::get_ready_state(self : FileReader) -> Int =
  #| (self) => self.readyState

///|
pub extern "js" fn FileReader::get_result(
  self : FileReader,
) -> StringOrArrayBuffer =
  #| (self) => self.result

///|
pub extern "js" fn FileReader::get_error(self : FileReader) -> DOMException? =
  #| (self) => (() => { const v = self.error; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn FileReader::get_onloadstart(
  self : FileReader,
) -> EventHandler =
  #| (self) => self.onloadstart

///|
pub extern "js" fn FileReader::set_onloadstart(
  self : FileReader,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onloadstart = value }

///|
pub extern "js" fn FileReader::get_onprogress(
  self : FileReader,
) -> EventHandler =
  #| (self) => self.onprogress

///|
pub extern "js" fn FileReader::set_onprogress(
  self : FileReader,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onprogress = value }

///|
pub extern "js" fn FileReader::get_onload(self : FileReader) -> EventHandler =
  #| (self) => self.onload

///|
pub extern "js" fn FileReader::set_onload(
  self : FileReader,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onload = value }

///|
pub extern "js" fn FileReader::get_onabort(self : FileReader) -> EventHandler =
  #| (self) => self.onabort

///|
pub extern "js" fn FileReader::set_onabort(
  self : FileReader,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onabort = value }

///|
pub extern "js" fn FileReader::get_onerror(self : FileReader) -> EventHandler =
  #| (self) => self.onerror

///|
pub extern "js" fn FileReader::set_onerror(
  self : FileReader,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onerror = value }

///|
pub extern "js" fn FileReader::get_onloadend(self : FileReader) -> EventHandler =
  #| (self) => self.onloadend

///|
pub extern "js" fn FileReader::set_onloadend(
  self : FileReader,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onloadend = value }

///|
/// FileReaderSync interface
pub type FileReaderSync

///|
pub extern "js" fn FileReaderSync::to_js_value(
  self : FileReaderSync,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to FileReaderSync (unchecked)
pub extern "js" fn FileReaderSync::from_js_value(v : JsValue) -> FileReaderSync =
  #| (v) => v

///|
/// Safely cast JsValue to FileReaderSync (checked with instanceof)
pub extern "js" fn FileReaderSync::from_js_value_opt(
  v : JsValue,
) -> FileReaderSync? =
  #| (v) => (v instanceof FileReaderSync) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to FileReaderSync (checked with instanceof)
pub extern "js" fn JsValue::as_file_reader_sync(
  self : JsValue,
) -> FileReaderSync? =
  #| (self) => (self instanceof FileReaderSync) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to FileReaderSync (unchecked)
pub extern "js" fn JsValue::to_file_reader_sync(
  self : JsValue,
) -> FileReaderSync =
  #| (self) => self

///|
pub extern "js" fn FileReaderSync::new() -> FileReaderSync =
  #| () => new FileReaderSync()

///|
pub extern "js" fn FileReaderSync::read_as_array_buffer(
  self : FileReaderSync,
  blob : Blob,
) -> ArrayBuffer =
  #| (self, blob) => self.readAsArrayBuffer(blob)

///|
pub extern "js" fn FileReaderSync::read_as_binary_string(
  self : FileReaderSync,
  blob : Blob,
) -> String =
  #| (self, blob) => self.readAsBinaryString(blob)

///|
pub extern "js" fn FileReaderSync::read_as_text(
  self : FileReaderSync,
  blob : Blob,
) -> String =
  #| (self, blob) => self.readAsText(blob)

///|
pub extern "js" fn FileReaderSync::read_as_text_with_encoding(
  self : FileReaderSync,
  blob : Blob,
  encoding : String,
) -> String =
  #| (self, blob, encoding) => self.readAsText(blob, encoding)

///|
pub extern "js" fn FileReaderSync::read_as_data_url(
  self : FileReaderSync,
  blob : Blob,
) -> String =
  #| (self, blob) => self.readAsDataURL(blob)
