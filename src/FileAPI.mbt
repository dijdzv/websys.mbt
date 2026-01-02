// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/FileAPI

///|
/// BlobPart typedef
pub type BlobPart = JsValue

///|
/// EndingType enum
pub(all) enum EndingType {
  Transparent
  Native
}

/// Convert to string value
pub fn EndingType::to_string(self : EndingType) -> String {
  match self {
    Transparent => "transparent"
    Native => "native"
  }
}

/// Parse from string value
pub fn EndingType::from_string(s : String) -> EndingType? {
  match s {
    "transparent" => Some(Transparent)
    "native" => Some(Native)
    _ => None
  }
}

///|
/// BlobPropertyBag dictionary
pub struct BlobPropertyBag {
  type_ : String?
  endings : EndingType?
}

/// Create a new BlobPropertyBag with default values
pub fn BlobPropertyBag::default() -> BlobPropertyBag {
  BlobPropertyBag::{
    type_: None,
    endings: None,
  }
}

/// Convert to JsValue
pub extern "js" fn BlobPropertyBag::to_js(self : BlobPropertyBag) -> JsValue =
  #| (self) => ({
  #|   type: self.type_,
  #|   endings: self.endings
  #| })

///|
/// FilePropertyBag dictionary
pub struct FilePropertyBag {
  type_ : String?
  endings : EndingType?
  lastModified : Int64?
}

/// Create a new FilePropertyBag with default values
pub fn FilePropertyBag::default() -> FilePropertyBag {
  FilePropertyBag::{
    type_: None,
    endings: None,
    lastModified: None,
  }
}

/// Convert to JsValue
pub extern "js" fn FilePropertyBag::to_js(self : FilePropertyBag) -> JsValue =
  #| (self) => ({
  #|   type: self.type_,
  #|   endings: self.endings,
  #|   lastModified: self.lastModified
  #| })

///|
/// Blob interface
pub type Blob

pub extern "js" fn Blob::to_js_value(self : Blob) -> JsValue =
  #| (self) => self

pub extern "js" fn Blob::new(blob_parts : Array[BlobPart], options : BlobPropertyBag) -> Blob =
  #| (blob_parts, options) => new Blob(blob_parts, options)

pub extern "js" fn Blob::get_size(self : Blob) -> Int64 =
  #| (self) => self.size

pub extern "js" fn Blob::get_type(self : Blob) -> String =
  #| (self) => self.type

pub extern "js" fn Blob::slice(self : Blob) -> Blob =
  #| (self) => self.slice()

pub extern "js" fn Blob::slice_with_content_type(self : Blob, start : Int64, end : Int64, content_type : String) -> Blob =
  #| (self, start, end, content_type) => self.slice(start, end, content_type)

pub extern "js" fn Blob::stream(self : Blob) -> ReadableStream =
  #| (self) => self.stream()

pub extern "js" fn Blob::text(self : Blob) -> Promise[String] =
  #| (self) => self.text()

pub extern "js" fn Blob::array_buffer(self : Blob) -> Promise[ArrayBuffer] =
  #| (self) => self.arrayBuffer()

pub extern "js" fn Blob::bytes(self : Blob) -> Promise[Uint8Array] =
  #| (self) => self.bytes()

///|
/// File interface
pub type File

pub extern "js" fn File::to_js_value(self : File) -> JsValue =
  #| (self) => self

pub extern "js" fn File::new(blob_parts : Array[BlobPart], options : BlobPropertyBag) -> File =
  #| (blob_parts, options) => new File(blob_parts, options)

pub extern "js" fn File::get_size(self : File) -> Int64 =
  #| (self) => self.size

pub extern "js" fn File::get_type(self : File) -> String =
  #| (self) => self.type

pub extern "js" fn File::slice(self : File) -> Blob =
  #| (self) => self.slice()

pub extern "js" fn File::slice_with_content_type(self : File, start : Int64, end : Int64, content_type : String) -> Blob =
  #| (self, start, end, content_type) => self.slice(start, end, content_type)

pub extern "js" fn File::stream(self : File) -> ReadableStream =
  #| (self) => self.stream()

pub extern "js" fn File::text(self : File) -> Promise[String] =
  #| (self) => self.text()

pub extern "js" fn File::array_buffer(self : File) -> Promise[ArrayBuffer] =
  #| (self) => self.arrayBuffer()

pub extern "js" fn File::bytes(self : File) -> Promise[Uint8Array] =
  #| (self) => self.bytes()

pub extern "js" fn File::get_name(self : File) -> String =
  #| (self) => self.name

pub extern "js" fn File::get_last_modified(self : File) -> Int64 =
  #| (self) => self.lastModified

pub extern "js" fn File::get_webkit_relative_path(self : File) -> String =
  #| (self) => self.webkitRelativePath

///|
/// FileList interface
pub type FileList

pub extern "js" fn FileList::to_js_value(self : FileList) -> JsValue =
  #| (self) => self

pub extern "js" fn FileList::item(self : FileList, index : Int) -> File? =
  #| (self, index) => self.item(index)

pub extern "js" fn FileList::get(self : FileList, index : Int) -> File? =
  #| (self, index) => self[index]

pub extern "js" fn FileList::get_length(self : FileList) -> Int =
  #| (self) => self.length

///|
/// FileReader interface
pub type FileReader

pub extern "js" fn FileReader::to_js_value(self : FileReader) -> JsValue =
  #| (self) => self

pub extern "js" fn FileReader::new() -> FileReader =
  #| () => new FileReader()

pub extern "js" fn FileReader::read_as_array_buffer(self : FileReader, blob : Blob) -> Unit =
  #| (self, blob) => self.readAsArrayBuffer(blob)

pub extern "js" fn FileReader::read_as_binary_string(self : FileReader, blob : Blob) -> Unit =
  #| (self, blob) => self.readAsBinaryString(blob)

pub extern "js" fn FileReader::read_as_text(self : FileReader, blob : Blob) -> Unit =
  #| (self, blob) => self.readAsText(blob)

pub extern "js" fn FileReader::read_as_text_with_encoding(self : FileReader, blob : Blob, encoding : String) -> Unit =
  #| (self, blob, encoding) => self.readAsText(blob, encoding)

pub extern "js" fn FileReader::read_as_data_u_r_l(self : FileReader, blob : Blob) -> Unit =
  #| (self, blob) => self.readAsDataURL(blob)

pub extern "js" fn FileReader::abort(self : FileReader) -> Unit =
  #| (self) => self.abort()

// FileReader.EMPTY
pub let file_reader_empty : Int = 0

// FileReader.LOADING
pub let file_reader_loading : Int = 1

// FileReader.DONE
pub let file_reader_done : Int = 2

pub extern "js" fn FileReader::get_ready_state(self : FileReader) -> Int =
  #| (self) => self.readyState

pub extern "js" fn FileReader::get_result(self : FileReader) -> JsValue =
  #| (self) => self.result

pub extern "js" fn FileReader::get_error(self : FileReader) -> DOMException? =
  #| (self) => self.error

pub extern "js" fn FileReader::get_onloadstart(self : FileReader) -> EventHandler =
  #| (self) => self.onloadstart

pub extern "js" fn FileReader::set_onloadstart(self : FileReader, value : EventHandler) -> Unit =
  #| (self, value) => { self.onloadstart = value }

pub extern "js" fn FileReader::get_onprogress(self : FileReader) -> EventHandler =
  #| (self) => self.onprogress

pub extern "js" fn FileReader::set_onprogress(self : FileReader, value : EventHandler) -> Unit =
  #| (self, value) => { self.onprogress = value }

pub extern "js" fn FileReader::get_onload(self : FileReader) -> EventHandler =
  #| (self) => self.onload

pub extern "js" fn FileReader::set_onload(self : FileReader, value : EventHandler) -> Unit =
  #| (self, value) => { self.onload = value }

pub extern "js" fn FileReader::get_onabort(self : FileReader) -> EventHandler =
  #| (self) => self.onabort

pub extern "js" fn FileReader::set_onabort(self : FileReader, value : EventHandler) -> Unit =
  #| (self, value) => { self.onabort = value }

pub extern "js" fn FileReader::get_onerror(self : FileReader) -> EventHandler =
  #| (self) => self.onerror

pub extern "js" fn FileReader::set_onerror(self : FileReader, value : EventHandler) -> Unit =
  #| (self, value) => { self.onerror = value }

pub extern "js" fn FileReader::get_onloadend(self : FileReader) -> EventHandler =
  #| (self) => self.onloadend

pub extern "js" fn FileReader::set_onloadend(self : FileReader, value : EventHandler) -> Unit =
  #| (self, value) => { self.onloadend = value }

///|
/// FileReaderSync interface
pub type FileReaderSync

pub extern "js" fn FileReaderSync::to_js_value(self : FileReaderSync) -> JsValue =
  #| (self) => self

pub extern "js" fn FileReaderSync::new() -> FileReaderSync =
  #| () => new FileReaderSync()

pub extern "js" fn FileReaderSync::read_as_array_buffer(self : FileReaderSync, blob : Blob) -> ArrayBuffer =
  #| (self, blob) => self.readAsArrayBuffer(blob)

pub extern "js" fn FileReaderSync::read_as_binary_string(self : FileReaderSync, blob : Blob) -> String =
  #| (self, blob) => self.readAsBinaryString(blob)

pub extern "js" fn FileReaderSync::read_as_text(self : FileReaderSync, blob : Blob) -> String =
  #| (self, blob) => self.readAsText(blob)

pub extern "js" fn FileReaderSync::read_as_text_with_encoding(self : FileReaderSync, blob : Blob, encoding : String) -> String =
  #| (self, blob, encoding) => self.readAsText(blob, encoding)

pub extern "js" fn FileReaderSync::read_as_data_u_r_l(self : FileReaderSync, blob : Blob) -> String =
  #| (self, blob) => self.readAsDataURL(blob)

