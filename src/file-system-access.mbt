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
/// Flatten Option[StartInDirectory] to WellKnownDirectory?
pub fn StartInDirectory::bind_as_well_known_directory(
  value : StartInDirectory?,
) -> WellKnownDirectory? {
  match value {
    Some(v) => v.as_well_known_directory()
    None => None
  }
}

///|
/// Flatten Option[StartInDirectory] to FileSystemHandle?
pub fn StartInDirectory::bind_as_file_system_handle(
  value : StartInDirectory?,
) -> FileSystemHandle? {
  match value {
    Some(v) => v.as_file_system_handle()
    None => None
  }
}

///|
/// FileSystemPermissionMode enum
pub(all) enum FileSystemPermissionMode {
  Read
  Readwrite
} derive(Eq, Show)

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
} derive(Eq, Show)

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
extern "js" fn FileSystemPermissionDescriptor::from_js_ffi(
  value : JsValue,
) -> FileSystemPermissionDescriptor =
  #| (v) => ({
  #|   handle: v.handle,
  #|   mode: (v.mode === undefined ? undefined : ['read', 'readwrite'].indexOf(v.mode))
  #| })

///|
/// Convert from JsValue
pub fn FileSystemPermissionDescriptor::from_js(
  value : JsValue,
) -> FileSystemPermissionDescriptor {
  FileSystemPermissionDescriptor::from_js_ffi(value)
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
extern "js" fn FileSystemHandlePermissionDescriptor::from_js_ffi(
  value : JsValue,
) -> FileSystemHandlePermissionDescriptor =
  #| (v) => ({
  #|   mode: (v.mode === undefined ? undefined : ['read', 'readwrite'].indexOf(v.mode))
  #| })

///|
/// Convert from JsValue
pub fn FileSystemHandlePermissionDescriptor::from_js(
  value : JsValue,
) -> FileSystemHandlePermissionDescriptor {
  FileSystemHandlePermissionDescriptor::from_js_ffi(value)
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
  #|   accept: ((() => { const v = self.accept; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn FilePickerAcceptType::to_js(self : FilePickerAcceptType) -> JsValue {
  FilePickerAcceptType::to_js_ffi(self)
}

///|
extern "js" fn FilePickerAcceptType::from_js_ffi(
  value : JsValue,
) -> FilePickerAcceptType =
  #| (v) => ({
  #|   description: v.description,
  #|   accept: (v.accept === undefined ? { $tag: 0 } : { $tag: 1, _0: v.accept })
  #| })

///|
/// Convert from JsValue
pub fn FilePickerAcceptType::from_js(value : JsValue) -> FilePickerAcceptType {
  FilePickerAcceptType::from_js_ffi(value)
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
  #|   types: ((() => { const v = self.types; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   excludeAcceptAllOption: (self.excludeAcceptAllOption === -1 ? undefined : self.excludeAcceptAllOption),
  #|   id: self.id,
  #|   startIn: ((() => { const v = self.startIn; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })())
  #| })

///|
/// Convert to JsValue
pub fn FilePickerOptions::to_js(self : FilePickerOptions) -> JsValue {
  FilePickerOptions::to_js_ffi(self)
}

///|
extern "js" fn FilePickerOptions::from_js_ffi(
  value : JsValue,
) -> FilePickerOptions =
  #| (v) => ({
  #|   types: (v.types === undefined ? { $tag: 0 } : { $tag: 1, _0: v.types }),
  #|   excludeAcceptAllOption: (v.excludeAcceptAllOption === undefined ? -1 : v.excludeAcceptAllOption),
  #|   id: v.id,
  #|   startIn: (v.startIn === undefined ? { $tag: 0 } : { $tag: 1, _0: v.startIn })
  #| })

///|
/// Convert from JsValue
pub fn FilePickerOptions::from_js(value : JsValue) -> FilePickerOptions {
  FilePickerOptions::from_js_ffi(value)
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
  #|   types: ((() => { const v = self.types; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   excludeAcceptAllOption: (self.excludeAcceptAllOption === -1 ? undefined : self.excludeAcceptAllOption),
  #|   id: self.id,
  #|   startIn: ((() => { const v = self.startIn; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   multiple: (self.multiple === -1 ? undefined : self.multiple)
  #| })

///|
/// Convert to JsValue
pub fn OpenFilePickerOptions::to_js(self : OpenFilePickerOptions) -> JsValue {
  OpenFilePickerOptions::to_js_ffi(self)
}

///|
extern "js" fn OpenFilePickerOptions::from_js_ffi(
  value : JsValue,
) -> OpenFilePickerOptions =
  #| (v) => ({
  #|   types: (v.types === undefined ? { $tag: 0 } : { $tag: 1, _0: v.types }),
  #|   excludeAcceptAllOption: (v.excludeAcceptAllOption === undefined ? -1 : v.excludeAcceptAllOption),
  #|   id: v.id,
  #|   startIn: (v.startIn === undefined ? { $tag: 0 } : { $tag: 1, _0: v.startIn }),
  #|   multiple: (v.multiple === undefined ? -1 : v.multiple)
  #| })

///|
/// Convert from JsValue
pub fn OpenFilePickerOptions::from_js(value : JsValue) -> OpenFilePickerOptions {
  OpenFilePickerOptions::from_js_ffi(value)
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
  #|   types: ((() => { const v = self.types; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   excludeAcceptAllOption: (self.excludeAcceptAllOption === -1 ? undefined : self.excludeAcceptAllOption),
  #|   id: self.id,
  #|   startIn: ((() => { const v = self.startIn; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   suggestedName: ((() => { const v = self.suggestedName; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn SaveFilePickerOptions::to_js(self : SaveFilePickerOptions) -> JsValue {
  SaveFilePickerOptions::to_js_ffi(self)
}

///|
extern "js" fn SaveFilePickerOptions::from_js_ffi(
  value : JsValue,
) -> SaveFilePickerOptions =
  #| (v) => ({
  #|   types: (v.types === undefined ? { $tag: 0 } : { $tag: 1, _0: v.types }),
  #|   excludeAcceptAllOption: (v.excludeAcceptAllOption === undefined ? -1 : v.excludeAcceptAllOption),
  #|   id: v.id,
  #|   startIn: (v.startIn === undefined ? { $tag: 0 } : { $tag: 1, _0: v.startIn }),
  #|   suggestedName: (v.suggestedName === undefined ? { $tag: 0 } : v.suggestedName === null ? { $tag: 1 } : { $tag: 2, _0: v.suggestedName })
  #| })

///|
/// Convert from JsValue
pub fn SaveFilePickerOptions::from_js(value : JsValue) -> SaveFilePickerOptions {
  SaveFilePickerOptions::from_js_ffi(value)
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
  #|   startIn: ((() => { const v = self.startIn; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   mode: ((() => { const v = self.mode; if (v === undefined) return undefined; return ['read', 'readwrite'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn DirectoryPickerOptions::to_js(self : DirectoryPickerOptions) -> JsValue {
  DirectoryPickerOptions::to_js_ffi(self)
}

///|
extern "js" fn DirectoryPickerOptions::from_js_ffi(
  value : JsValue,
) -> DirectoryPickerOptions =
  #| (v) => ({
  #|   id: v.id,
  #|   startIn: (v.startIn === undefined ? { $tag: 0 } : { $tag: 1, _0: v.startIn }),
  #|   mode: (v.mode === undefined ? undefined : ['read', 'readwrite'].indexOf(v.mode))
  #| })

///|
/// Convert from JsValue
pub fn DirectoryPickerOptions::from_js(
  value : JsValue,
) -> DirectoryPickerOptions {
  DirectoryPickerOptions::from_js_ffi(value)
}
