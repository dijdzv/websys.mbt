// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/entries-api

/// ErrorCallback callback interface
pub type ErrorCallback

/// FileSystemEntryCallback callback interface
pub type FileSystemEntryCallback

/// FileSystemEntriesCallback callback interface
pub type FileSystemEntriesCallback

/// FileCallback callback interface
pub type FileCallback

///|
/// FileSystemFlags dictionary
pub struct FileSystemFlags {
  create : Bool?
  exclusive : Bool?
}

/// Create a new FileSystemFlags with default values
pub fn FileSystemFlags::default() -> FileSystemFlags {
  FileSystemFlags::{
    create: None,
    exclusive: None,
  }
}

/// Convert to JsValue
pub extern "js" fn FileSystemFlags::to_js(self : FileSystemFlags) -> JsValue =
  #| (self) => ({
  #|   create: self.create,
  #|   exclusive: self.exclusive
  #| })

///|
/// FileSystemEntry interface
pub type FileSystemEntry

pub extern "js" fn FileSystemEntry::to_js_value(self : FileSystemEntry) -> JsValue =
  #| (self) => self

pub extern "js" fn FileSystemEntry::get_is_file(self : FileSystemEntry) -> Bool =
  #| (self) => self.isFile

pub extern "js" fn FileSystemEntry::get_is_directory(self : FileSystemEntry) -> Bool =
  #| (self) => self.isDirectory

pub extern "js" fn FileSystemEntry::get_name(self : FileSystemEntry) -> String =
  #| (self) => self.name

pub extern "js" fn FileSystemEntry::get_full_path(self : FileSystemEntry) -> String =
  #| (self) => self.fullPath

pub extern "js" fn FileSystemEntry::get_filesystem(self : FileSystemEntry) -> FileSystem =
  #| (self) => self.filesystem

pub extern "js" fn FileSystemEntry::get_parent(self : FileSystemEntry, success_callback : FileSystemEntryCallback, error_callback : ErrorCallback) -> Unit =
  #| (self, success_callback, error_callback) => self.getParent(success_callback, error_callback)

///|
/// FileSystemDirectoryEntry interface
pub type FileSystemDirectoryEntry

pub extern "js" fn FileSystemDirectoryEntry::to_js_value(self : FileSystemDirectoryEntry) -> JsValue =
  #| (self) => self

pub extern "js" fn FileSystemDirectoryEntry::get_is_file(self : FileSystemDirectoryEntry) -> Bool =
  #| (self) => self.isFile

pub extern "js" fn FileSystemDirectoryEntry::get_is_directory(self : FileSystemDirectoryEntry) -> Bool =
  #| (self) => self.isDirectory

pub extern "js" fn FileSystemDirectoryEntry::get_name(self : FileSystemDirectoryEntry) -> String =
  #| (self) => self.name

pub extern "js" fn FileSystemDirectoryEntry::get_full_path(self : FileSystemDirectoryEntry) -> String =
  #| (self) => self.fullPath

pub extern "js" fn FileSystemDirectoryEntry::get_filesystem(self : FileSystemDirectoryEntry) -> FileSystem =
  #| (self) => self.filesystem

pub extern "js" fn FileSystemDirectoryEntry::get_parent(self : FileSystemDirectoryEntry, success_callback : FileSystemEntryCallback, error_callback : ErrorCallback) -> Unit =
  #| (self, success_callback, error_callback) => self.getParent(success_callback, error_callback)

pub extern "js" fn FileSystemDirectoryEntry::create_reader(self : FileSystemDirectoryEntry) -> FileSystemDirectoryReader =
  #| (self) => self.createReader()

pub extern "js" fn FileSystemDirectoryEntry::get_file(self : FileSystemDirectoryEntry, path : String?, options : FileSystemFlags, success_callback : FileSystemEntryCallback, error_callback : ErrorCallback) -> Unit =
  #| (self, path, options, success_callback, error_callback) => self.getFile(path, options, success_callback, error_callback)

pub extern "js" fn FileSystemDirectoryEntry::get_directory(self : FileSystemDirectoryEntry, path : String?, options : FileSystemFlags, success_callback : FileSystemEntryCallback, error_callback : ErrorCallback) -> Unit =
  #| (self, path, options, success_callback, error_callback) => self.getDirectory(path, options, success_callback, error_callback)

///|
/// FileSystemDirectoryReader interface
pub type FileSystemDirectoryReader

pub extern "js" fn FileSystemDirectoryReader::to_js_value(self : FileSystemDirectoryReader) -> JsValue =
  #| (self) => self

pub extern "js" fn FileSystemDirectoryReader::read_entries(self : FileSystemDirectoryReader, success_callback : FileSystemEntriesCallback, error_callback : ErrorCallback) -> Unit =
  #| (self, success_callback, error_callback) => self.readEntries(success_callback, error_callback)

///|
/// FileSystemFileEntry interface
pub type FileSystemFileEntry

pub extern "js" fn FileSystemFileEntry::to_js_value(self : FileSystemFileEntry) -> JsValue =
  #| (self) => self

pub extern "js" fn FileSystemFileEntry::get_is_file(self : FileSystemFileEntry) -> Bool =
  #| (self) => self.isFile

pub extern "js" fn FileSystemFileEntry::get_is_directory(self : FileSystemFileEntry) -> Bool =
  #| (self) => self.isDirectory

pub extern "js" fn FileSystemFileEntry::get_name(self : FileSystemFileEntry) -> String =
  #| (self) => self.name

pub extern "js" fn FileSystemFileEntry::get_full_path(self : FileSystemFileEntry) -> String =
  #| (self) => self.fullPath

pub extern "js" fn FileSystemFileEntry::get_filesystem(self : FileSystemFileEntry) -> FileSystem =
  #| (self) => self.filesystem

pub extern "js" fn FileSystemFileEntry::get_parent(self : FileSystemFileEntry, success_callback : FileSystemEntryCallback, error_callback : ErrorCallback) -> Unit =
  #| (self, success_callback, error_callback) => self.getParent(success_callback, error_callback)

pub extern "js" fn FileSystemFileEntry::file(self : FileSystemFileEntry, success_callback : FileCallback, error_callback : ErrorCallback) -> Unit =
  #| (self, success_callback, error_callback) => self.file(success_callback, error_callback)

///|
/// FileSystem interface
pub type FileSystem

pub extern "js" fn FileSystem::to_js_value(self : FileSystem) -> JsValue =
  #| (self) => self

pub extern "js" fn FileSystem::get_name(self : FileSystem) -> String =
  #| (self) => self.name

pub extern "js" fn FileSystem::get_root(self : FileSystem) -> FileSystemDirectoryEntry =
  #| (self) => self.root

