// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/fs

///|
/// FileSystemWriteChunkType typedef
pub type FileSystemWriteChunkType

///|
pub extern "js" fn FileSystemWriteChunkType::to_js_value(
  self : FileSystemWriteChunkType,
) -> JsValue =
  #| (self) => self

///|
/// Create FileSystemWriteChunkType from BufferSource
pub extern "js" fn FileSystemWriteChunkType::from_buffer_source(
  v : BufferSource,
) -> FileSystemWriteChunkType =
  #| (v) => v

///|
/// Create FileSystemWriteChunkType from Blob
pub extern "js" fn FileSystemWriteChunkType::from_blob(
  v : Blob,
) -> FileSystemWriteChunkType =
  #| (v) => v

///|
/// Create FileSystemWriteChunkType from String
pub extern "js" fn FileSystemWriteChunkType::from_string(
  v : String,
) -> FileSystemWriteChunkType =
  #| (v) => v

///|
/// Create FileSystemWriteChunkType from WriteParams
pub extern "js" fn FileSystemWriteChunkType::from_write_params(
  v : WriteParams,
) -> FileSystemWriteChunkType =
  #| (v) => v

///|
/// Check if this FileSystemWriteChunkType is BufferSource
pub extern "js" fn FileSystemWriteChunkType::is_buffer_source(
  self : FileSystemWriteChunkType,
) -> Bool =
  #| (self) => self instanceof Int8Array || self instanceof Int16Array || self instanceof Int32Array || self instanceof Uint8Array || self instanceof Uint16Array || self instanceof Uint32Array || self instanceof Uint8ClampedArray || self instanceof BigInt64Array || self instanceof BigUint64Array || self instanceof Float16Array || self instanceof Float32Array || self instanceof Float64Array || self instanceof DataView || self instanceof ArrayBuffer

///|
/// Check if this FileSystemWriteChunkType is Blob
pub extern "js" fn FileSystemWriteChunkType::is_blob(
  self : FileSystemWriteChunkType,
) -> Bool =
  #| (self) => self instanceof Blob

///|
/// Check if this FileSystemWriteChunkType is String
pub extern "js" fn FileSystemWriteChunkType::is_string(
  self : FileSystemWriteChunkType,
) -> Bool =
  #| (self) => typeof self === 'string'

///|
/// Check if this FileSystemWriteChunkType is WriteParams
pub extern "js" fn FileSystemWriteChunkType::is_write_params(
  self : FileSystemWriteChunkType,
) -> Bool =
  #| (self) => typeof self === 'object' && self !== null

///|
/// Try to get FileSystemWriteChunkType as BufferSource
pub extern "js" fn FileSystemWriteChunkType::as_buffer_source(
  self : FileSystemWriteChunkType,
) -> BufferSource? =
  #| (self) => (self instanceof Int8Array || self instanceof Int16Array || self instanceof Int32Array || self instanceof Uint8Array || self instanceof Uint16Array || self instanceof Uint32Array || self instanceof Uint8ClampedArray || self instanceof BigInt64Array || self instanceof BigUint64Array || self instanceof Float16Array || self instanceof Float32Array || self instanceof Float64Array || self instanceof DataView || self instanceof ArrayBuffer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get FileSystemWriteChunkType as Blob
pub extern "js" fn FileSystemWriteChunkType::as_blob(
  self : FileSystemWriteChunkType,
) -> Blob? =
  #| (self) => (self instanceof Blob) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get FileSystemWriteChunkType as String
pub extern "js" fn FileSystemWriteChunkType::as_string(
  self : FileSystemWriteChunkType,
) -> String? =
  #| (self) => (typeof self === 'string') ? self : undefined

///|
/// Try to get FileSystemWriteChunkType as WriteParams
pub extern "js" fn FileSystemWriteChunkType::as_write_params(
  self : FileSystemWriteChunkType,
) -> WriteParams? =
  #| (self) => (typeof self === 'object' && self !== null) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[FileSystemWriteChunkType] to BufferSource?
pub fn FileSystemWriteChunkType::bind_as_buffer_source(
  value : FileSystemWriteChunkType?,
) -> BufferSource? {
  match value {
    Some(v) => v.as_buffer_source()
    None => None
  }
}

///|
/// Flatten Option[FileSystemWriteChunkType] to Blob?
pub fn FileSystemWriteChunkType::bind_as_blob(
  value : FileSystemWriteChunkType?,
) -> Blob? {
  match value {
    Some(v) => v.as_blob()
    None => None
  }
}

///|
/// Flatten Option[FileSystemWriteChunkType] to String?
pub fn FileSystemWriteChunkType::bind_as_string(
  value : FileSystemWriteChunkType?,
) -> String? {
  match value {
    Some(v) => v.as_string()
    None => None
  }
}

///|
/// Flatten Option[FileSystemWriteChunkType] to WriteParams?
pub fn FileSystemWriteChunkType::bind_as_write_params(
  value : FileSystemWriteChunkType?,
) -> WriteParams? {
  match value {
    Some(v) => v.as_write_params()
    None => None
  }
}

///|
/// FileSystemHandleKind enum
pub(all) enum FileSystemHandleKind {
  File
  Directory
} derive(Eq, Show)

///|
/// Convert to string value
pub fn FileSystemHandleKind::to_string(self : FileSystemHandleKind) -> String {
  match self {
    FileSystemHandleKind::File => "file"
    FileSystemHandleKind::Directory => "directory"
  }
}

///|
/// Parse from string value
pub fn FileSystemHandleKind::from_string(s : String) -> FileSystemHandleKind? {
  match s {
    "file" => Some(FileSystemHandleKind::File)
    "directory" => Some(FileSystemHandleKind::Directory)
    _ => None
  }
}

///|
/// WriteCommandType enum
pub(all) enum WriteCommandType {
  Write
  Seek
  Truncate
} derive(Eq, Show)

///|
/// Convert to string value
pub fn WriteCommandType::to_string(self : WriteCommandType) -> String {
  match self {
    WriteCommandType::Write => "write"
    WriteCommandType::Seek => "seek"
    WriteCommandType::Truncate => "truncate"
  }
}

///|
/// Parse from string value
pub fn WriteCommandType::from_string(s : String) -> WriteCommandType? {
  match s {
    "write" => Some(WriteCommandType::Write)
    "seek" => Some(WriteCommandType::Seek)
    "truncate" => Some(WriteCommandType::Truncate)
    _ => None
  }
}

///|
/// FileSystemCreateWritableOptions dictionary
pub(all) struct FileSystemCreateWritableOptions {
  keepExistingData : Bool?
}

///|
/// Create a new FileSystemCreateWritableOptions with default values
pub fn FileSystemCreateWritableOptions::default() -> FileSystemCreateWritableOptions {
  FileSystemCreateWritableOptions::{ keepExistingData: None }
}

///|
extern "js" fn FileSystemCreateWritableOptions::to_js_ffi(
  self : FileSystemCreateWritableOptions,
) -> JsValue =
  #| (self) => ({
  #|   keepExistingData: (self.keepExistingData === -1 ? undefined : self.keepExistingData)
  #| })

///|
/// Convert to JsValue
pub fn FileSystemCreateWritableOptions::to_js(
  self : FileSystemCreateWritableOptions,
) -> JsValue {
  FileSystemCreateWritableOptions::to_js_ffi(self)
}

///|
extern "js" fn FileSystemCreateWritableOptions::from_js_ffi(
  value : JsValue,
) -> FileSystemCreateWritableOptions =
  #| (v) => ({
  #|   keepExistingData: (v.keepExistingData === undefined ? -1 : v.keepExistingData)
  #| })

///|
/// Convert from JsValue
pub fn FileSystemCreateWritableOptions::from_js(
  value : JsValue,
) -> FileSystemCreateWritableOptions {
  FileSystemCreateWritableOptions::from_js_ffi(value)
}

///|
/// FileSystemGetFileOptions dictionary
pub(all) struct FileSystemGetFileOptions {
  create : Bool?
}

///|
/// Create a new FileSystemGetFileOptions with default values
pub fn FileSystemGetFileOptions::default() -> FileSystemGetFileOptions {
  FileSystemGetFileOptions::{ create: None }
}

///|
extern "js" fn FileSystemGetFileOptions::to_js_ffi(
  self : FileSystemGetFileOptions,
) -> JsValue =
  #| (self) => ({
  #|   create: (self.create === -1 ? undefined : self.create)
  #| })

///|
/// Convert to JsValue
pub fn FileSystemGetFileOptions::to_js(
  self : FileSystemGetFileOptions,
) -> JsValue {
  FileSystemGetFileOptions::to_js_ffi(self)
}

///|
extern "js" fn FileSystemGetFileOptions::from_js_ffi(
  value : JsValue,
) -> FileSystemGetFileOptions =
  #| (v) => ({
  #|   create: (v.create === undefined ? -1 : v.create)
  #| })

///|
/// Convert from JsValue
pub fn FileSystemGetFileOptions::from_js(
  value : JsValue,
) -> FileSystemGetFileOptions {
  FileSystemGetFileOptions::from_js_ffi(value)
}

///|
/// FileSystemGetDirectoryOptions dictionary
pub(all) struct FileSystemGetDirectoryOptions {
  create : Bool?
}

///|
/// Create a new FileSystemGetDirectoryOptions with default values
pub fn FileSystemGetDirectoryOptions::default() -> FileSystemGetDirectoryOptions {
  FileSystemGetDirectoryOptions::{ create: None }
}

///|
extern "js" fn FileSystemGetDirectoryOptions::to_js_ffi(
  self : FileSystemGetDirectoryOptions,
) -> JsValue =
  #| (self) => ({
  #|   create: (self.create === -1 ? undefined : self.create)
  #| })

///|
/// Convert to JsValue
pub fn FileSystemGetDirectoryOptions::to_js(
  self : FileSystemGetDirectoryOptions,
) -> JsValue {
  FileSystemGetDirectoryOptions::to_js_ffi(self)
}

///|
extern "js" fn FileSystemGetDirectoryOptions::from_js_ffi(
  value : JsValue,
) -> FileSystemGetDirectoryOptions =
  #| (v) => ({
  #|   create: (v.create === undefined ? -1 : v.create)
  #| })

///|
/// Convert from JsValue
pub fn FileSystemGetDirectoryOptions::from_js(
  value : JsValue,
) -> FileSystemGetDirectoryOptions {
  FileSystemGetDirectoryOptions::from_js_ffi(value)
}

///|
/// FileSystemRemoveOptions dictionary
pub(all) struct FileSystemRemoveOptions {
  recursive : Bool?
}

///|
/// Create a new FileSystemRemoveOptions with default values
pub fn FileSystemRemoveOptions::default() -> FileSystemRemoveOptions {
  FileSystemRemoveOptions::{ recursive: None }
}

///|
extern "js" fn FileSystemRemoveOptions::to_js_ffi(
  self : FileSystemRemoveOptions,
) -> JsValue =
  #| (self) => ({
  #|   recursive: (self.recursive === -1 ? undefined : self.recursive)
  #| })

///|
/// Convert to JsValue
pub fn FileSystemRemoveOptions::to_js(
  self : FileSystemRemoveOptions,
) -> JsValue {
  FileSystemRemoveOptions::to_js_ffi(self)
}

///|
extern "js" fn FileSystemRemoveOptions::from_js_ffi(
  value : JsValue,
) -> FileSystemRemoveOptions =
  #| (v) => ({
  #|   recursive: (v.recursive === undefined ? -1 : v.recursive)
  #| })

///|
/// Convert from JsValue
pub fn FileSystemRemoveOptions::from_js(
  value : JsValue,
) -> FileSystemRemoveOptions {
  FileSystemRemoveOptions::from_js_ffi(value)
}

///|
/// WriteParams dictionary
pub(all) struct WriteParams {
  type_ : WriteCommandType
  size : Nullable[Int64]
  position : Nullable[Int64]
  data : BufferSourceOrBlobOrString?
}

///|
/// Create a new WriteParams
pub fn WriteParams::new(type_~ : WriteCommandType) -> WriteParams {
  WriteParams::{
    type_,
    size: Nullable::Undefined,
    position: Nullable::Undefined,
    data: None,
  }
}

///|
extern "js" fn WriteParams::to_js_ffi(self : WriteParams) -> JsValue =
  #| (self) => ({
  #|   type: ['write', 'seek', 'truncate'][self.type_],
  #|   size: ((() => { const v = self.size; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   position: ((() => { const v = self.position; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   data: ((() => { const v = self.data; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn WriteParams::to_js(self : WriteParams) -> JsValue {
  WriteParams::to_js_ffi(self)
}

///|
extern "js" fn WriteParams::from_js_ffi(value : JsValue) -> WriteParams =
  #| (v) => ({
  #|   type_: ['write', 'seek', 'truncate'].indexOf(v.type),
  #|   size: (v.size === undefined ? { $tag: 0 } : v.size === null ? { $tag: 1 } : { $tag: 2, _0: v.size }),
  #|   position: (v.position === undefined ? { $tag: 0 } : v.position === null ? { $tag: 1 } : { $tag: 2, _0: v.position }),
  #|   data: (v.data === undefined ? { $tag: 0 } : { $tag: 1, _0: v.data })
  #| })

///|
/// Convert from JsValue
pub fn WriteParams::from_js(value : JsValue) -> WriteParams {
  WriteParams::from_js_ffi(value)
}

///|
/// FileSystemReadWriteOptions dictionary
pub(all) struct FileSystemReadWriteOptions {
  at : Int64?
}

///|
/// Create a new FileSystemReadWriteOptions with default values
pub fn FileSystemReadWriteOptions::default() -> FileSystemReadWriteOptions {
  FileSystemReadWriteOptions::{ at: None }
}

///|
extern "js" fn FileSystemReadWriteOptions::to_js_ffi(
  self : FileSystemReadWriteOptions,
) -> JsValue =
  #| (self) => ({
  #|   at: self.at
  #| })

///|
/// Convert to JsValue
pub fn FileSystemReadWriteOptions::to_js(
  self : FileSystemReadWriteOptions,
) -> JsValue {
  FileSystemReadWriteOptions::to_js_ffi(self)
}

///|
extern "js" fn FileSystemReadWriteOptions::from_js_ffi(
  value : JsValue,
) -> FileSystemReadWriteOptions =
  #| (v) => ({
  #|   at: v.at
  #| })

///|
/// Convert from JsValue
pub fn FileSystemReadWriteOptions::from_js(
  value : JsValue,
) -> FileSystemReadWriteOptions {
  FileSystemReadWriteOptions::from_js_ffi(value)
}

///|
/// FileSystemHandle interface
pub type FileSystemHandle

///|
pub extern "js" fn FileSystemHandle::to_js_value(
  self : FileSystemHandle,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to FileSystemHandle (unchecked)
pub extern "js" fn FileSystemHandle::from_js_value(
  v : JsValue,
) -> FileSystemHandle =
  #| (v) => v

///|
/// Safely cast JsValue to FileSystemHandle (checked with instanceof)
pub extern "js" fn FileSystemHandle::from_js_value_opt(
  v : JsValue,
) -> FileSystemHandle? =
  #| (v) => (v instanceof FileSystemHandle) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to FileSystemHandle (checked with instanceof)
pub extern "js" fn JsValue::as_file_system_handle(
  self : JsValue,
) -> FileSystemHandle? =
  #| (self) => (self instanceof FileSystemHandle) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to FileSystemHandle (unchecked)
pub extern "js" fn JsValue::to_file_system_handle(
  self : JsValue,
) -> FileSystemHandle =
  #| (self) => self

///|
pub extern "js" fn FileSystemHandle::as_file_system_file_handle(
  self : FileSystemHandle,
) -> FileSystemFileHandle? =
  #| (self) => (self instanceof FileSystemFileHandle) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn FileSystemHandle::as_file_system_directory_handle(
  self : FileSystemHandle,
) -> FileSystemDirectoryHandle? =
  #| (self) => (self instanceof FileSystemDirectoryHandle) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn FileSystemHandle::get_kind(
  self : FileSystemHandle,
) -> FileSystemHandleKind =
  #| (self) => ['file', 'directory'].indexOf(self.kind)

///|
pub extern "js" fn FileSystemHandle::get_name(
  self : FileSystemHandle,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn FileSystemHandle::is_same_entry(
  self : FileSystemHandle,
  other : FileSystemHandle,
) -> Promise[Bool] =
  #| (self, other) => self.isSameEntry(other)

///|
pub extern "js" fn FileSystemHandle::query_permission(
  self : FileSystemHandle,
) -> Promise[PermissionState] =
  #| (self) => self.queryPermission()

///|
extern "js" fn FileSystemHandle::query_permission_with_descriptor_ffi(
  self : FileSystemHandle,
  descriptor : JsValue,
) -> Promise[PermissionState] =
  #| (self, descriptor) => self.queryPermission(descriptor)

///|
pub fn FileSystemHandle::query_permission_with_descriptor(
  self : FileSystemHandle,
  descriptor : FileSystemHandlePermissionDescriptor,
) -> Promise[PermissionState] {
  FileSystemHandle::query_permission_with_descriptor_ffi(
    self,
    descriptor.to_js(),
  )
}

///|
pub extern "js" fn FileSystemHandle::request_permission(
  self : FileSystemHandle,
) -> Promise[PermissionState] =
  #| (self) => self.requestPermission()

///|
extern "js" fn FileSystemHandle::request_permission_with_descriptor_ffi(
  self : FileSystemHandle,
  descriptor : JsValue,
) -> Promise[PermissionState] =
  #| (self, descriptor) => self.requestPermission(descriptor)

///|
pub fn FileSystemHandle::request_permission_with_descriptor(
  self : FileSystemHandle,
  descriptor : FileSystemHandlePermissionDescriptor,
) -> Promise[PermissionState] {
  FileSystemHandle::request_permission_with_descriptor_ffi(
    self,
    descriptor.to_js(),
  )
}

///|
/// FileSystemFileHandle interface
pub type FileSystemFileHandle

///|
pub extern "js" fn FileSystemFileHandle::to_js_value(
  self : FileSystemFileHandle,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to FileSystemFileHandle (unchecked)
pub extern "js" fn FileSystemFileHandle::from_js_value(
  v : JsValue,
) -> FileSystemFileHandle =
  #| (v) => v

///|
/// Safely cast JsValue to FileSystemFileHandle (checked with instanceof)
pub extern "js" fn FileSystemFileHandle::from_js_value_opt(
  v : JsValue,
) -> FileSystemFileHandle? =
  #| (v) => (v instanceof FileSystemFileHandle) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to FileSystemFileHandle (checked with instanceof)
pub extern "js" fn JsValue::as_file_system_file_handle(
  self : JsValue,
) -> FileSystemFileHandle? =
  #| (self) => (self instanceof FileSystemFileHandle) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to FileSystemFileHandle (unchecked)
pub extern "js" fn JsValue::to_file_system_file_handle(
  self : JsValue,
) -> FileSystemFileHandle =
  #| (self) => self

///|
pub extern "js" fn FileSystemFileHandle::to_file_system_handle(
  self : FileSystemFileHandle,
) -> FileSystemHandle =
  #| (self) => self

///|
pub extern "js" fn FileSystemFileHandle::get_file(
  self : FileSystemFileHandle,
) -> Promise[File] =
  #| (self) => self.getFile()

///|
pub extern "js" fn FileSystemFileHandle::create_writable(
  self : FileSystemFileHandle,
) -> Promise[FileSystemWritableFileStream] =
  #| (self) => self.createWritable()

///|
extern "js" fn FileSystemFileHandle::create_writable_with_options_ffi(
  self : FileSystemFileHandle,
  options : JsValue,
) -> Promise[FileSystemWritableFileStream] =
  #| (self, options) => self.createWritable(options)

///|
pub fn FileSystemFileHandle::create_writable_with_options(
  self : FileSystemFileHandle,
  options : FileSystemCreateWritableOptions,
) -> Promise[FileSystemWritableFileStream] {
  FileSystemFileHandle::create_writable_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn FileSystemFileHandle::create_sync_access_handle(
  self : FileSystemFileHandle,
) -> Promise[FileSystemSyncAccessHandle] =
  #| (self) => self.createSyncAccessHandle()

///|
/// FileSystemDirectoryHandle interface
pub type FileSystemDirectoryHandle

///|
pub extern "js" fn FileSystemDirectoryHandle::to_js_value(
  self : FileSystemDirectoryHandle,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to FileSystemDirectoryHandle (unchecked)
pub extern "js" fn FileSystemDirectoryHandle::from_js_value(
  v : JsValue,
) -> FileSystemDirectoryHandle =
  #| (v) => v

///|
/// Safely cast JsValue to FileSystemDirectoryHandle (checked with instanceof)
pub extern "js" fn FileSystemDirectoryHandle::from_js_value_opt(
  v : JsValue,
) -> FileSystemDirectoryHandle? =
  #| (v) => (v instanceof FileSystemDirectoryHandle) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to FileSystemDirectoryHandle (checked with instanceof)
pub extern "js" fn JsValue::as_file_system_directory_handle(
  self : JsValue,
) -> FileSystemDirectoryHandle? =
  #| (self) => (self instanceof FileSystemDirectoryHandle) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to FileSystemDirectoryHandle (unchecked)
pub extern "js" fn JsValue::to_file_system_directory_handle(
  self : JsValue,
) -> FileSystemDirectoryHandle =
  #| (self) => self

///|
pub extern "js" fn FileSystemDirectoryHandle::to_file_system_handle(
  self : FileSystemDirectoryHandle,
) -> FileSystemHandle =
  #| (self) => self

///|
pub extern "js" fn FileSystemDirectoryHandle::keys(
  self : FileSystemDirectoryHandle,
) -> JsValue =
  #| (self) => self.keys()

///|
pub extern "js" fn FileSystemDirectoryHandle::values(
  self : FileSystemDirectoryHandle,
) -> JsValue =
  #| (self) => self.values()

///|
pub extern "js" fn FileSystemDirectoryHandle::entries(
  self : FileSystemDirectoryHandle,
) -> JsValue =
  #| (self) => self.entries()

///|
pub extern "js" fn FileSystemDirectoryHandle::get_file_handle(
  self : FileSystemDirectoryHandle,
  name : String,
) -> Promise[FileSystemFileHandle] =
  #| (self, name) => self.getFileHandle(name)

///|
extern "js" fn FileSystemDirectoryHandle::get_file_handle_with_options_ffi(
  self : FileSystemDirectoryHandle,
  name : String,
  options : JsValue,
) -> Promise[FileSystemFileHandle] =
  #| (self, name, options) => self.getFileHandle(name, options)

///|
pub fn FileSystemDirectoryHandle::get_file_handle_with_options(
  self : FileSystemDirectoryHandle,
  name : String,
  options : FileSystemGetFileOptions,
) -> Promise[FileSystemFileHandle] {
  FileSystemDirectoryHandle::get_file_handle_with_options_ffi(
    self,
    name,
    options.to_js(),
  )
}

///|
pub extern "js" fn FileSystemDirectoryHandle::get_directory_handle(
  self : FileSystemDirectoryHandle,
  name : String,
) -> Promise[FileSystemDirectoryHandle] =
  #| (self, name) => self.getDirectoryHandle(name)

///|
extern "js" fn FileSystemDirectoryHandle::get_directory_handle_with_options_ffi(
  self : FileSystemDirectoryHandle,
  name : String,
  options : JsValue,
) -> Promise[FileSystemDirectoryHandle] =
  #| (self, name, options) => self.getDirectoryHandle(name, options)

///|
pub fn FileSystemDirectoryHandle::get_directory_handle_with_options(
  self : FileSystemDirectoryHandle,
  name : String,
  options : FileSystemGetDirectoryOptions,
) -> Promise[FileSystemDirectoryHandle] {
  FileSystemDirectoryHandle::get_directory_handle_with_options_ffi(
    self,
    name,
    options.to_js(),
  )
}

///|
pub extern "js" fn FileSystemDirectoryHandle::remove_entry(
  self : FileSystemDirectoryHandle,
  name : String,
) -> Promise[Unit] =
  #| (self, name) => self.removeEntry(name)

///|
extern "js" fn FileSystemDirectoryHandle::remove_entry_with_options_ffi(
  self : FileSystemDirectoryHandle,
  name : String,
  options : JsValue,
) -> Promise[Unit] =
  #| (self, name, options) => self.removeEntry(name, options)

///|
pub fn FileSystemDirectoryHandle::remove_entry_with_options(
  self : FileSystemDirectoryHandle,
  name : String,
  options : FileSystemRemoveOptions,
) -> Promise[Unit] {
  FileSystemDirectoryHandle::remove_entry_with_options_ffi(
    self,
    name,
    options.to_js(),
  )
}

///|
pub extern "js" fn FileSystemDirectoryHandle::resolve(
  self : FileSystemDirectoryHandle,
  possible_descendant : FileSystemHandle,
) -> Promise[Array[String]] =
  #| (self, possible_descendant) => self.resolve(possible_descendant)

///|
/// FileSystemWritableFileStream interface
pub type FileSystemWritableFileStream

///|
pub extern "js" fn FileSystemWritableFileStream::to_js_value(
  self : FileSystemWritableFileStream,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to FileSystemWritableFileStream (unchecked)
pub extern "js" fn FileSystemWritableFileStream::from_js_value(
  v : JsValue,
) -> FileSystemWritableFileStream =
  #| (v) => v

///|
/// Safely cast JsValue to FileSystemWritableFileStream (checked with instanceof)
pub extern "js" fn FileSystemWritableFileStream::from_js_value_opt(
  v : JsValue,
) -> FileSystemWritableFileStream? =
  #| (v) => (v instanceof FileSystemWritableFileStream) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to FileSystemWritableFileStream (checked with instanceof)
pub extern "js" fn JsValue::as_file_system_writable_file_stream(
  self : JsValue,
) -> FileSystemWritableFileStream? =
  #| (self) => (self instanceof FileSystemWritableFileStream) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to FileSystemWritableFileStream (unchecked)
pub extern "js" fn JsValue::to_file_system_writable_file_stream(
  self : JsValue,
) -> FileSystemWritableFileStream =
  #| (self) => self

///|
pub extern "js" fn FileSystemWritableFileStream::to_writable_stream(
  self : FileSystemWritableFileStream,
) -> WritableStream =
  #| (self) => self

///|
pub extern "js" fn FileSystemWritableFileStream::write(
  self : FileSystemWritableFileStream,
  data : FileSystemWriteChunkType,
) -> Promise[Unit] =
  #| (self, data) => self.write(data)

///|
pub extern "js" fn FileSystemWritableFileStream::seek(
  self : FileSystemWritableFileStream,
  position : Int64,
) -> Promise[Unit] =
  #| (self, position) => self.seek((position.hi * 4294967296 + position.lo))

///|
pub extern "js" fn FileSystemWritableFileStream::truncate(
  self : FileSystemWritableFileStream,
  size : Int64,
) -> Promise[Unit] =
  #| (self, size) => self.truncate((size.hi * 4294967296 + size.lo))

///|
pub extern "js" fn FileSystemWritableFileStream::write_with_buffer_source(
  self : FileSystemWritableFileStream,
  data : BufferSource,
) -> Promise[Unit] =
  #| (self, data) => self.write(data)

///|
pub extern "js" fn FileSystemWritableFileStream::write_with_blob(
  self : FileSystemWritableFileStream,
  data : Blob,
) -> Promise[Unit] =
  #| (self, data) => self.write(data)

///|
pub extern "js" fn FileSystemWritableFileStream::write_with_string(
  self : FileSystemWritableFileStream,
  data : String,
) -> Promise[Unit] =
  #| (self, data) => self.write(data)

///|
pub extern "js" fn FileSystemWritableFileStream::write_with_write_params(
  self : FileSystemWritableFileStream,
  data : WriteParams,
) -> Promise[Unit] =
  #| (self, data) => self.write(data)

///|
/// FileSystemSyncAccessHandle interface
pub type FileSystemSyncAccessHandle

///|
pub extern "js" fn FileSystemSyncAccessHandle::to_js_value(
  self : FileSystemSyncAccessHandle,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to FileSystemSyncAccessHandle (unchecked)
pub extern "js" fn FileSystemSyncAccessHandle::from_js_value(
  v : JsValue,
) -> FileSystemSyncAccessHandle =
  #| (v) => v

///|
/// Safely cast JsValue to FileSystemSyncAccessHandle (checked with instanceof)
pub extern "js" fn FileSystemSyncAccessHandle::from_js_value_opt(
  v : JsValue,
) -> FileSystemSyncAccessHandle? =
  #| (v) => (v instanceof FileSystemSyncAccessHandle) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to FileSystemSyncAccessHandle (checked with instanceof)
pub extern "js" fn JsValue::as_file_system_sync_access_handle(
  self : JsValue,
) -> FileSystemSyncAccessHandle? =
  #| (self) => (self instanceof FileSystemSyncAccessHandle) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to FileSystemSyncAccessHandle (unchecked)
pub extern "js" fn JsValue::to_file_system_sync_access_handle(
  self : JsValue,
) -> FileSystemSyncAccessHandle =
  #| (self) => self

///|
pub extern "js" fn FileSystemSyncAccessHandle::read(
  self : FileSystemSyncAccessHandle,
  buffer : AllowSharedBufferSource,
) -> Int64 =
  #| (self, buffer) => (() => { const n = self.read(buffer); return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

///|
extern "js" fn FileSystemSyncAccessHandle::read_with_options_ffi(
  self : FileSystemSyncAccessHandle,
  buffer : AllowSharedBufferSource,
  options : JsValue,
) -> Int64 =
  #| (self, buffer, options) => (() => { const n = self.read(buffer, options); return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

///|
pub fn FileSystemSyncAccessHandle::read_with_options(
  self : FileSystemSyncAccessHandle,
  buffer : AllowSharedBufferSource,
  options : FileSystemReadWriteOptions,
) -> Int64 {
  FileSystemSyncAccessHandle::read_with_options_ffi(
    self,
    buffer,
    options.to_js(),
  )
}

///|
pub extern "js" fn FileSystemSyncAccessHandle::write(
  self : FileSystemSyncAccessHandle,
  buffer : AllowSharedBufferSource,
) -> Int64 =
  #| (self, buffer) => (() => { const n = self.write(buffer); return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

///|
extern "js" fn FileSystemSyncAccessHandle::write_with_options_ffi(
  self : FileSystemSyncAccessHandle,
  buffer : AllowSharedBufferSource,
  options : JsValue,
) -> Int64 =
  #| (self, buffer, options) => (() => { const n = self.write(buffer, options); return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

///|
pub fn FileSystemSyncAccessHandle::write_with_options(
  self : FileSystemSyncAccessHandle,
  buffer : AllowSharedBufferSource,
  options : FileSystemReadWriteOptions,
) -> Int64 {
  FileSystemSyncAccessHandle::write_with_options_ffi(
    self,
    buffer,
    options.to_js(),
  )
}

///|
pub extern "js" fn FileSystemSyncAccessHandle::truncate(
  self : FileSystemSyncAccessHandle,
  new_size : Int64,
) -> Unit =
  #| (self, new_size) => self.truncate((new_size.hi * 4294967296 + new_size.lo))

///|
pub extern "js" fn FileSystemSyncAccessHandle::get_size(
  self : FileSystemSyncAccessHandle,
) -> Int64 =
  #| (self) => (() => { const n = self.getSize(); return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

///|
pub extern "js" fn FileSystemSyncAccessHandle::flush(
  self : FileSystemSyncAccessHandle,
) -> Unit =
  #| (self) => self.flush()

///|
pub extern "js" fn FileSystemSyncAccessHandle::close(
  self : FileSystemSyncAccessHandle,
) -> Unit =
  #| (self) => self.close()

///|
pub extern "js" fn FileSystemSyncAccessHandle::read_with_array_buffer(
  self : FileSystemSyncAccessHandle,
  buffer : ArrayBuffer,
  options : FileSystemReadWriteOptions,
) -> Int64 =
  #| (self, buffer, options) => (() => { const n = self.read(buffer, options); return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

///|
pub extern "js" fn FileSystemSyncAccessHandle::read_with_shared_array_buffer(
  self : FileSystemSyncAccessHandle,
  buffer : SharedArrayBuffer,
  options : FileSystemReadWriteOptions,
) -> Int64 =
  #| (self, buffer, options) => (() => { const n = self.read(buffer, options); return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

///|
pub extern "js" fn FileSystemSyncAccessHandle::read_with_array_buffer_view(
  self : FileSystemSyncAccessHandle,
  buffer : ArrayBufferView,
  options : FileSystemReadWriteOptions,
) -> Int64 =
  #| (self, buffer, options) => (() => { const n = self.read(buffer, options); return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

///|
pub extern "js" fn FileSystemSyncAccessHandle::write_with_array_buffer(
  self : FileSystemSyncAccessHandle,
  buffer : ArrayBuffer,
  options : FileSystemReadWriteOptions,
) -> Int64 =
  #| (self, buffer, options) => (() => { const n = self.write(buffer, options); return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

///|
pub extern "js" fn FileSystemSyncAccessHandle::write_with_shared_array_buffer(
  self : FileSystemSyncAccessHandle,
  buffer : SharedArrayBuffer,
  options : FileSystemReadWriteOptions,
) -> Int64 =
  #| (self, buffer, options) => (() => { const n = self.write(buffer, options); return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

///|
pub extern "js" fn FileSystemSyncAccessHandle::write_with_array_buffer_view(
  self : FileSystemSyncAccessHandle,
  buffer : ArrayBufferView,
  options : FileSystemReadWriteOptions,
) -> Int64 =
  #| (self, buffer, options) => (() => { const n = self.write(buffer, options); return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()
