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
    Read => "read"
    Readwrite => "readwrite"
  }
}

///|
/// Parse from string value
pub fn FileSystemPermissionMode::from_string(
  s : String,
) -> FileSystemPermissionMode? {
  match s {
    "read" => Some(Read)
    "readwrite" => Some(Readwrite)
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
    Desktop => "desktop"
    Documents => "documents"
    Downloads => "downloads"
    Music => "music"
    Pictures => "pictures"
    Videos => "videos"
  }
}

///|
/// Parse from string value
pub fn WellKnownDirectory::from_string(s : String) -> WellKnownDirectory? {
  match s {
    "desktop" => Some(Desktop)
    "documents" => Some(Documents)
    "downloads" => Some(Downloads)
    "music" => Some(Music)
    "pictures" => Some(Pictures)
    "videos" => Some(Videos)
    _ => None
  }
}

///|
/// FileSystemPermissionDescriptor dictionary
pub struct FileSystemPermissionDescriptor {
  handle : FileSystemHandle
  mode : FileSystemPermissionMode?
}

///|
/// Create a new FileSystemPermissionDescriptor with default values
pub fn FileSystemPermissionDescriptor::default() -> FileSystemPermissionDescriptor {
  FileSystemPermissionDescriptor::{ handle: panic(), mode: None }
}

///|
/// Convert to JsValue
pub extern "js" fn FileSystemPermissionDescriptor::to_js(
  self : FileSystemPermissionDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   handle: self.handle,
  #|   mode: ['read', 'readwrite'][self.mode]
  #| })

///|
/// FileSystemHandlePermissionDescriptor dictionary
pub struct FileSystemHandlePermissionDescriptor {
  mode : FileSystemPermissionMode?
}

///|
/// Create a new FileSystemHandlePermissionDescriptor with default values
pub fn FileSystemHandlePermissionDescriptor::default() -> FileSystemHandlePermissionDescriptor {
  FileSystemHandlePermissionDescriptor::{ mode: None }
}

///|
/// Convert to JsValue
pub extern "js" fn FileSystemHandlePermissionDescriptor::to_js(
  self : FileSystemHandlePermissionDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   mode: ['read', 'readwrite'][self.mode]
  #| })

///|
/// FilePickerAcceptType dictionary
pub struct FilePickerAcceptType {
  description : String?
  accept : JsValue?
}

///|
/// Create a new FilePickerAcceptType with default values
pub fn FilePickerAcceptType::default() -> FilePickerAcceptType {
  FilePickerAcceptType::{ description: None, accept: None }
}

///|
/// Convert to JsValue
pub extern "js" fn FilePickerAcceptType::to_js(
  self : FilePickerAcceptType,
) -> JsValue =
  #| (self) => ({
  #|   description: self.description,
  #|   accept: self.accept
  #| })

///|
/// FilePickerOptions dictionary
pub struct FilePickerOptions {
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
/// Convert to JsValue
pub extern "js" fn FilePickerOptions::to_js(
  self : FilePickerOptions,
) -> JsValue =
  #| (self) => ({
  #|   types: self.types,
  #|   excludeAcceptAllOption: self.excludeAcceptAllOption,
  #|   id: self.id,
  #|   startIn: self.startIn.to_js_value()
  #| })

///|
/// OpenFilePickerOptions dictionary
pub struct OpenFilePickerOptions {
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
/// Convert to JsValue
pub extern "js" fn OpenFilePickerOptions::to_js(
  self : OpenFilePickerOptions,
) -> JsValue =
  #| (self) => ({
  #|   types: self.types,
  #|   excludeAcceptAllOption: self.excludeAcceptAllOption,
  #|   id: self.id,
  #|   startIn: self.startIn.to_js_value(),
  #|   multiple: self.multiple
  #| })

///|
/// SaveFilePickerOptions dictionary
pub struct SaveFilePickerOptions {
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
/// Convert to JsValue
pub extern "js" fn SaveFilePickerOptions::to_js(
  self : SaveFilePickerOptions,
) -> JsValue =
  #| (self) => ({
  #|   types: self.types,
  #|   excludeAcceptAllOption: self.excludeAcceptAllOption,
  #|   id: self.id,
  #|   startIn: self.startIn.to_js_value(),
  #|   suggestedName: ((() => { const v = self.suggestedName; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// DirectoryPickerOptions dictionary
pub struct DirectoryPickerOptions {
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
/// Convert to JsValue
pub extern "js" fn DirectoryPickerOptions::to_js(
  self : DirectoryPickerOptions,
) -> JsValue =
  #| (self) => ({
  #|   id: self.id,
  #|   startIn: self.startIn.to_js_value(),
  #|   mode: ['read', 'readwrite'][self.mode]
  #| })
