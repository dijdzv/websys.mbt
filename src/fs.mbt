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
  #| (self) => (typeof self === 'string') ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get FileSystemWriteChunkType as WriteParams
pub extern "js" fn FileSystemWriteChunkType::as_write_params(
  self : FileSystemWriteChunkType,
) -> WriteParams? =
  #| (self) => (typeof self === 'object' && self !== null) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// FileSystemHandleKind enum
pub(all) enum FileSystemHandleKind {
  File
  Directory
}

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
}

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
pub struct FileSystemCreateWritableOptions {
  keepExistingData : Bool?
}

///|
/// Create a new FileSystemCreateWritableOptions with default values
pub fn FileSystemCreateWritableOptions::default() -> FileSystemCreateWritableOptions {
  FileSystemCreateWritableOptions::{ keepExistingData: None }
}

///|
/// Convert to JsValue
pub extern "js" fn FileSystemCreateWritableOptions::to_js(
  self : FileSystemCreateWritableOptions,
) -> JsValue =
  #| (self) => ({
  #|   keepExistingData: self.keepExistingData
  #| })

///|
/// FileSystemGetFileOptions dictionary
pub struct FileSystemGetFileOptions {
  create : Bool?
}

///|
/// Create a new FileSystemGetFileOptions with default values
pub fn FileSystemGetFileOptions::default() -> FileSystemGetFileOptions {
  FileSystemGetFileOptions::{ create: None }
}

///|
/// Convert to JsValue
pub extern "js" fn FileSystemGetFileOptions::to_js(
  self : FileSystemGetFileOptions,
) -> JsValue =
  #| (self) => ({
  #|   create: self.create
  #| })

///|
/// FileSystemGetDirectoryOptions dictionary
pub struct FileSystemGetDirectoryOptions {
  create : Bool?
}

///|
/// Create a new FileSystemGetDirectoryOptions with default values
pub fn FileSystemGetDirectoryOptions::default() -> FileSystemGetDirectoryOptions {
  FileSystemGetDirectoryOptions::{ create: None }
}

///|
/// Convert to JsValue
pub extern "js" fn FileSystemGetDirectoryOptions::to_js(
  self : FileSystemGetDirectoryOptions,
) -> JsValue =
  #| (self) => ({
  #|   create: self.create
  #| })

///|
/// FileSystemRemoveOptions dictionary
pub struct FileSystemRemoveOptions {
  recursive : Bool?
}

///|
/// Create a new FileSystemRemoveOptions with default values
pub fn FileSystemRemoveOptions::default() -> FileSystemRemoveOptions {
  FileSystemRemoveOptions::{ recursive: None }
}

///|
/// Convert to JsValue
pub extern "js" fn FileSystemRemoveOptions::to_js(
  self : FileSystemRemoveOptions,
) -> JsValue =
  #| (self) => ({
  #|   recursive: self.recursive
  #| })

///|
/// WriteParams dictionary
pub struct WriteParams {
  type_ : WriteCommandType
  size : Nullable[Int64]
  position : Nullable[Int64]
  data : JsValue?
}

///|
/// Create a new WriteParams with default values
pub fn WriteParams::default() -> WriteParams {
  WriteParams::{
    type_: panic(),
    size: Nullable::Undefined,
    position: Nullable::Undefined,
    data: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn WriteParams::to_js(self : WriteParams) -> JsValue =
  #| (self) => ({
  #|   type: ['write', 'seek', 'truncate'][self.type_],
  #|   size: ((() => { const v = self.size; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   position: ((() => { const v = self.position; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   data: self.data
  #| })

///|
/// FileSystemReadWriteOptions dictionary
pub struct FileSystemReadWriteOptions {
  at : Int64?
}

///|
/// Create a new FileSystemReadWriteOptions with default values
pub fn FileSystemReadWriteOptions::default() -> FileSystemReadWriteOptions {
  FileSystemReadWriteOptions::{ at: None }
}

///|
/// Convert to JsValue
pub extern "js" fn FileSystemReadWriteOptions::to_js(
  self : FileSystemReadWriteOptions,
) -> JsValue =
  #| (self) => ({
  #|   at: self.at
  #| })

///|
/// FileSystemHandle interface
pub type FileSystemHandle

///|
pub extern "js" fn FileSystemHandle::to_js_value(
  self : FileSystemHandle,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn FileSystemHandle::get_kind(
  self : FileSystemHandle,
) -> FileSystemHandleKind =
  #| (self) => self.kind

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
pub extern "js" fn FileSystemHandle::query_permission_with_descriptor(
  self : FileSystemHandle,
  descriptor : FileSystemHandlePermissionDescriptor,
) -> Promise[PermissionState] =
  #| (self, descriptor) => self.queryPermission(descriptor)

///|
pub extern "js" fn FileSystemHandle::request_permission(
  self : FileSystemHandle,
) -> Promise[PermissionState] =
  #| (self) => self.requestPermission()

///|
pub extern "js" fn FileSystemHandle::request_permission_with_descriptor(
  self : FileSystemHandle,
  descriptor : FileSystemHandlePermissionDescriptor,
) -> Promise[PermissionState] =
  #| (self, descriptor) => self.requestPermission(descriptor)

///|
/// FileSystemFileHandle interface
pub type FileSystemFileHandle

///|
pub extern "js" fn FileSystemFileHandle::to_js_value(
  self : FileSystemFileHandle,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn FileSystemFileHandle::get_kind(
  self : FileSystemFileHandle,
) -> FileSystemHandleKind =
  #| (self) => self.kind

///|
pub extern "js" fn FileSystemFileHandle::get_name(
  self : FileSystemFileHandle,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn FileSystemFileHandle::is_same_entry(
  self : FileSystemFileHandle,
  other : FileSystemHandle,
) -> Promise[Bool] =
  #| (self, other) => self.isSameEntry(other)

///|
pub extern "js" fn FileSystemFileHandle::query_permission(
  self : FileSystemFileHandle,
) -> Promise[PermissionState] =
  #| (self) => self.queryPermission()

///|
pub extern "js" fn FileSystemFileHandle::query_permission_with_descriptor(
  self : FileSystemFileHandle,
  descriptor : FileSystemHandlePermissionDescriptor,
) -> Promise[PermissionState] =
  #| (self, descriptor) => self.queryPermission(descriptor)

///|
pub extern "js" fn FileSystemFileHandle::request_permission(
  self : FileSystemFileHandle,
) -> Promise[PermissionState] =
  #| (self) => self.requestPermission()

///|
pub extern "js" fn FileSystemFileHandle::request_permission_with_descriptor(
  self : FileSystemFileHandle,
  descriptor : FileSystemHandlePermissionDescriptor,
) -> Promise[PermissionState] =
  #| (self, descriptor) => self.requestPermission(descriptor)

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
pub extern "js" fn FileSystemFileHandle::create_writable_with_options(
  self : FileSystemFileHandle,
  options : FileSystemCreateWritableOptions,
) -> Promise[FileSystemWritableFileStream] =
  #| (self, options) => self.createWritable(options)

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
pub extern "js" fn FileSystemDirectoryHandle::get_kind(
  self : FileSystemDirectoryHandle,
) -> FileSystemHandleKind =
  #| (self) => self.kind

///|
pub extern "js" fn FileSystemDirectoryHandle::get_name(
  self : FileSystemDirectoryHandle,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn FileSystemDirectoryHandle::is_same_entry(
  self : FileSystemDirectoryHandle,
  other : FileSystemHandle,
) -> Promise[Bool] =
  #| (self, other) => self.isSameEntry(other)

///|
pub extern "js" fn FileSystemDirectoryHandle::query_permission(
  self : FileSystemDirectoryHandle,
) -> Promise[PermissionState] =
  #| (self) => self.queryPermission()

///|
pub extern "js" fn FileSystemDirectoryHandle::query_permission_with_descriptor(
  self : FileSystemDirectoryHandle,
  descriptor : FileSystemHandlePermissionDescriptor,
) -> Promise[PermissionState] =
  #| (self, descriptor) => self.queryPermission(descriptor)

///|
pub extern "js" fn FileSystemDirectoryHandle::request_permission(
  self : FileSystemDirectoryHandle,
) -> Promise[PermissionState] =
  #| (self) => self.requestPermission()

///|
pub extern "js" fn FileSystemDirectoryHandle::request_permission_with_descriptor(
  self : FileSystemDirectoryHandle,
  descriptor : FileSystemHandlePermissionDescriptor,
) -> Promise[PermissionState] =
  #| (self, descriptor) => self.requestPermission(descriptor)

///|
pub extern "js" fn FileSystemDirectoryHandle::_unknown_(
  self : FileSystemDirectoryHandle,
) -> Unit =
  #| (self) => self._unknown_()

///|
pub extern "js" fn FileSystemDirectoryHandle::get_file_handle(
  self : FileSystemDirectoryHandle,
  name : String,
) -> Promise[FileSystemFileHandle] =
  #| (self, name) => self.getFileHandle(name)

///|
pub extern "js" fn FileSystemDirectoryHandle::get_file_handle_with_options(
  self : FileSystemDirectoryHandle,
  name : String,
  options : FileSystemGetFileOptions,
) -> Promise[FileSystemFileHandle] =
  #| (self, name, options) => self.getFileHandle(name, options)

///|
pub extern "js" fn FileSystemDirectoryHandle::get_directory_handle(
  self : FileSystemDirectoryHandle,
  name : String,
) -> Promise[FileSystemDirectoryHandle] =
  #| (self, name) => self.getDirectoryHandle(name)

///|
pub extern "js" fn FileSystemDirectoryHandle::get_directory_handle_with_options(
  self : FileSystemDirectoryHandle,
  name : String,
  options : FileSystemGetDirectoryOptions,
) -> Promise[FileSystemDirectoryHandle] =
  #| (self, name, options) => self.getDirectoryHandle(name, options)

///|
pub extern "js" fn FileSystemDirectoryHandle::remove_entry(
  self : FileSystemDirectoryHandle,
  name : String,
) -> Promise[Unit] =
  #| (self, name) => self.removeEntry(name)

///|
pub extern "js" fn FileSystemDirectoryHandle::remove_entry_with_options(
  self : FileSystemDirectoryHandle,
  name : String,
  options : FileSystemRemoveOptions,
) -> Promise[Unit] =
  #| (self, name, options) => self.removeEntry(name, options)

///|
pub extern "js" fn FileSystemDirectoryHandle::resolve(
  self : FileSystemDirectoryHandle,
  possible_descendant : FileSystemHandle,
) -> Promise[Unit] =
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
  #| (self, position) => self.seek(position)

///|
pub extern "js" fn FileSystemWritableFileStream::truncate(
  self : FileSystemWritableFileStream,
  size : Int64,
) -> Promise[Unit] =
  #| (self, size) => self.truncate(size)

///|
/// FileSystemSyncAccessHandle interface
pub type FileSystemSyncAccessHandle

///|
pub extern "js" fn FileSystemSyncAccessHandle::to_js_value(
  self : FileSystemSyncAccessHandle,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn FileSystemSyncAccessHandle::read(
  self : FileSystemSyncAccessHandle,
  buffer : AllowSharedBufferSource,
) -> Int64 =
  #| (self, buffer) => self.read(buffer)

///|
pub extern "js" fn FileSystemSyncAccessHandle::read_with_options(
  self : FileSystemSyncAccessHandle,
  buffer : AllowSharedBufferSource,
  options : FileSystemReadWriteOptions,
) -> Int64 =
  #| (self, buffer, options) => self.read(buffer, options)

///|
pub extern "js" fn FileSystemSyncAccessHandle::write(
  self : FileSystemSyncAccessHandle,
  buffer : AllowSharedBufferSource,
) -> Int64 =
  #| (self, buffer) => self.write(buffer)

///|
pub extern "js" fn FileSystemSyncAccessHandle::write_with_options(
  self : FileSystemSyncAccessHandle,
  buffer : AllowSharedBufferSource,
  options : FileSystemReadWriteOptions,
) -> Int64 =
  #| (self, buffer, options) => self.write(buffer, options)

///|
pub extern "js" fn FileSystemSyncAccessHandle::truncate(
  self : FileSystemSyncAccessHandle,
  new_size : Int64,
) -> Unit =
  #| (self, new_size) => self.truncate(new_size)

///|
pub extern "js" fn FileSystemSyncAccessHandle::get_size(
  self : FileSystemSyncAccessHandle,
) -> Int64 =
  #| (self) => self.getSize()

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
