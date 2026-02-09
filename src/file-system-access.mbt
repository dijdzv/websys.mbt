// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/file-system-access

///|
/// StartInDirectory typedef
pub type StartInDirectory

///|
pub extern "js" fn StartInDirectory::to_js_value(
  self : StartInDirectory,
) -> JsValue =
  #| (self) => self

///|
/// Create StartInDirectory from WellKnownDirectory
pub extern "js" fn StartInDirectory::from_well_known_directory(
  v : WellKnownDirectory,
) -> StartInDirectory =
  #| (v) => v

///|
/// Create StartInDirectory from FileSystemHandle
pub extern "js" fn StartInDirectory::from_file_system_handle(
  v : FileSystemHandle,
) -> StartInDirectory =
  #| (v) => v

///|
/// Check if this StartInDirectory is WellKnownDirectory
pub extern "js" fn StartInDirectory::is_well_known_directory(
  self : StartInDirectory,
) -> Bool =
  #| (self) => typeof self === 'string'

///|
/// Check if this StartInDirectory is FileSystemHandle
pub extern "js" fn StartInDirectory::is_file_system_handle(
  self : StartInDirectory,
) -> Bool =
  #| (self) => self instanceof FileSystemHandle

///|
/// Try to get StartInDirectory as WellKnownDirectory
pub extern "js" fn StartInDirectory::as_well_known_directory(
  self : StartInDirectory,
) -> WellKnownDirectory? =
  #| (self) => (typeof self === 'string') ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get StartInDirectory as FileSystemHandle
pub extern "js" fn StartInDirectory::as_file_system_handle(
  self : StartInDirectory,
) -> FileSystemHandle? =
  #| (self) => (self instanceof FileSystemHandle) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// FileSystemPermissionMode enum
pub(all) enum FileSystemPermissionMode {
  Read
  Readwrite
}

///|
/// Convert to string value
pub fn FileSystemPermissionMode::to_string(
  self : FileSystemPermissionMode,
) -> String {
  match self {
    FileSystemPermissionMode::Read => "read"
    FileSystemPermissionMode::Readwrite => "readwrite"
  }
}

///|
/// Parse from string value
pub fn FileSystemPermissionMode::from_string(
  s : String,
) -> FileSystemPermissionMode? {
  match s {
    "read" => Some(FileSystemPermissionMode::Read)
    "readwrite" => Some(FileSystemPermissionMode::Readwrite)
    _ => None
  }
}

///|
/// WellKnownDirectory enum
pub(all) enum WellKnownDirectory {
  Desktop
  Documents
  Downloads
  Music
  Pictures
  Videos
}

///|
/// Convert to string value
pub fn WellKnownDirectory::to_string(self : WellKnownDirectory) -> String {
  match self {
    WellKnownDirectory::Desktop => "desktop"
    WellKnownDirectory::Documents => "documents"
    WellKnownDirectory::Downloads => "downloads"
    WellKnownDirectory::Music => "music"
    WellKnownDirectory::Pictures => "pictures"
    WellKnownDirectory::Videos => "videos"
  }
}

///|
/// Parse from string value
pub fn WellKnownDirectory::from_string(s : String) -> WellKnownDirectory? {
  match s {
    "desktop" => Some(WellKnownDirectory::Desktop)
    "documents" => Some(WellKnownDirectory::Documents)
    "downloads" => Some(WellKnownDirectory::Downloads)
    "music" => Some(WellKnownDirectory::Music)
    "pictures" => Some(WellKnownDirectory::Pictures)
    "videos" => Some(WellKnownDirectory::Videos)
    _ => None
  }
}

///|
/// FileSystemPermissionDescriptor dictionary
pub(all) struct FileSystemPermissionDescriptor {
  handle : FileSystemHandle
  mode : FileSystemPermissionMode?
}

///|
/// Create a new FileSystemPermissionDescriptor
pub fn FileSystemPermissionDescriptor::new(
  handle~ : FileSystemHandle,
) -> FileSystemPermissionDescriptor {
  FileSystemPermissionDescriptor::{ handle, mode: None }
}

///|
extern "js" fn FileSystemPermissionDescriptor::to_js_ffi(
  self : FileSystemPermissionDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   handle: self.handle,
  #|   mode: ((() => { const v = self.mode; if (v === undefined) return undefined; return ['read', 'readwrite'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn FileSystemPermissionDescriptor::to_js(
  self : FileSystemPermissionDescriptor,
) -> JsValue {
  FileSystemPermissionDescriptor::to_js_ffi(self)
}

///|
/// FileSystemHandlePermissionDescriptor dictionary
pub(all) struct FileSystemHandlePermissionDescriptor {
  mode : FileSystemPermissionMode?
}

///|
/// Create a new FileSystemHandlePermissionDescriptor with default values
pub fn FileSystemHandlePermissionDescriptor::default() -> FileSystemHandlePermissionDescriptor {
  FileSystemHandlePermissionDescriptor::{ mode: None }
}

///|
extern "js" fn FileSystemHandlePermissionDescriptor::to_js_ffi(
  self : FileSystemHandlePermissionDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   mode: ((() => { const v = self.mode; if (v === undefined) return undefined; return ['read', 'readwrite'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn FileSystemHandlePermissionDescriptor::to_js(
  self : FileSystemHandlePermissionDescriptor,
) -> JsValue {
  FileSystemHandlePermissionDescriptor::to_js_ffi(self)
}

///|
/// FilePickerAcceptType dictionary
pub(all) struct FilePickerAcceptType {
  description : String?
  accept : JsValue?
}

///|
/// Create a new FilePickerAcceptType with default values
pub fn FilePickerAcceptType::default() -> FilePickerAcceptType {
  FilePickerAcceptType::{ description: None, accept: None }
}

///|
extern "js" fn FilePickerAcceptType::to_js_ffi(
  self : FilePickerAcceptType,
) -> JsValue =
  #| (self) => ({
  #|   description: self.description,
  #|   accept: ((() => { const v = self.accept; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn FilePickerAcceptType::to_js(self : FilePickerAcceptType) -> JsValue {
  FilePickerAcceptType::to_js_ffi(self)
}

///|
/// FilePickerOptions dictionary
pub(all) struct FilePickerOptions {
  types : Array[FilePickerAcceptType]?
  excludeAcceptAllOption : Bool?
  id : String?
  startIn : StartInDirectory?
}

///|
/// Create a new FilePickerOptions with default values
pub fn FilePickerOptions::default() -> FilePickerOptions {
  FilePickerOptions::{
    types: None,
    excludeAcceptAllOption: None,
    id: None,
    startIn: None,
  }
}

///|
extern "js" fn FilePickerOptions::to_js_ffi(
  self : FilePickerOptions,
) -> JsValue =
  #| (self) => ({
  #|   types: ((() => { const v = self.types; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   excludeAcceptAllOption: (self.excludeAcceptAllOption === -1 ? undefined : self.excludeAcceptAllOption),
  #|   id: self.id,
  #|   startIn: ((() => { const v = self.startIn; if (v.$tag !== 1) return undefined; return v._0.to_js_value(); })())
  #| })

///|
/// Convert to JsValue
pub fn FilePickerOptions::to_js(self : FilePickerOptions) -> JsValue {
  FilePickerOptions::to_js_ffi(self)
}

///|
/// OpenFilePickerOptions dictionary
pub(all) struct OpenFilePickerOptions {
  types : Array[FilePickerAcceptType]?
  excludeAcceptAllOption : Bool?
  id : String?
  startIn : StartInDirectory?
  multiple : Bool?
}

///|
/// Create a new OpenFilePickerOptions with default values
pub fn OpenFilePickerOptions::default() -> OpenFilePickerOptions {
  OpenFilePickerOptions::{
    types: None,
    excludeAcceptAllOption: None,
    id: None,
    startIn: None,
    multiple: None,
  }
}

///|
extern "js" fn OpenFilePickerOptions::to_js_ffi(
  self : OpenFilePickerOptions,
) -> JsValue =
  #| (self) => ({
  #|   types: ((() => { const v = self.types; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   excludeAcceptAllOption: (self.excludeAcceptAllOption === -1 ? undefined : self.excludeAcceptAllOption),
  #|   id: self.id,
  #|   startIn: ((() => { const v = self.startIn; if (v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   multiple: (self.multiple === -1 ? undefined : self.multiple)
  #| })

///|
/// Convert to JsValue
pub fn OpenFilePickerOptions::to_js(self : OpenFilePickerOptions) -> JsValue {
  OpenFilePickerOptions::to_js_ffi(self)
}

///|
/// SaveFilePickerOptions dictionary
pub(all) struct SaveFilePickerOptions {
  types : Array[FilePickerAcceptType]?
  excludeAcceptAllOption : Bool?
  id : String?
  startIn : StartInDirectory?
  suggestedName : Nullable[String]
}

///|
/// Create a new SaveFilePickerOptions with default values
pub fn SaveFilePickerOptions::default() -> SaveFilePickerOptions {
  SaveFilePickerOptions::{
    types: None,
    excludeAcceptAllOption: None,
    id: None,
    startIn: None,
    suggestedName: Nullable::Undefined,
  }
}

///|
extern "js" fn SaveFilePickerOptions::to_js_ffi(
  self : SaveFilePickerOptions,
) -> JsValue =
  #| (self) => ({
  #|   types: ((() => { const v = self.types; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   excludeAcceptAllOption: (self.excludeAcceptAllOption === -1 ? undefined : self.excludeAcceptAllOption),
  #|   id: self.id,
  #|   startIn: ((() => { const v = self.startIn; if (v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   suggestedName: ((() => { const v = self.suggestedName; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// Convert to JsValue
pub fn SaveFilePickerOptions::to_js(self : SaveFilePickerOptions) -> JsValue {
  SaveFilePickerOptions::to_js_ffi(self)
}

///|
/// DirectoryPickerOptions dictionary
pub(all) struct DirectoryPickerOptions {
  id : String?
  startIn : StartInDirectory?
  mode : FileSystemPermissionMode?
}

///|
/// Create a new DirectoryPickerOptions with default values
pub fn DirectoryPickerOptions::default() -> DirectoryPickerOptions {
  DirectoryPickerOptions::{ id: None, startIn: None, mode: None }
}

///|
extern "js" fn DirectoryPickerOptions::to_js_ffi(
  self : DirectoryPickerOptions,
) -> JsValue =
  #| (self) => ({
  #|   id: self.id,
  #|   startIn: ((() => { const v = self.startIn; if (v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   mode: ((() => { const v = self.mode; if (v === undefined) return undefined; return ['read', 'readwrite'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn DirectoryPickerOptions::to_js(self : DirectoryPickerOptions) -> JsValue {
  DirectoryPickerOptions::to_js_ffi(self)
}
