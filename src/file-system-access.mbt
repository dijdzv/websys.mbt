// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/file-system-access

///|
/// StartInDirectory typedef
pub type StartInDirectory = JsValue

///|
/// FileSystemPermissionMode enum
pub(all) enum FileSystemPermissionMode {
  Read
  Readwrite
}

/// Convert to string value
pub fn FileSystemPermissionMode::to_string(self : FileSystemPermissionMode) -> String {
  match self {
    Read => "read"
    Readwrite => "readwrite"
  }
}

/// Parse from string value
pub fn FileSystemPermissionMode::from_string(s : String) -> FileSystemPermissionMode? {
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

/// Create a new FileSystemPermissionDescriptor with default values
pub fn FileSystemPermissionDescriptor::default() -> FileSystemPermissionDescriptor {
  FileSystemPermissionDescriptor::{
    handle: panic(),
    mode: None,
  }
}

/// Convert to JsValue
pub extern "js" fn FileSystemPermissionDescriptor::to_js(self : FileSystemPermissionDescriptor) -> JsValue =
  #| (self) => ({
  #|   handle: self.handle,
  #|   mode: self.mode
  #| })

///|
/// FileSystemHandlePermissionDescriptor dictionary
pub struct FileSystemHandlePermissionDescriptor {
  mode : FileSystemPermissionMode?
}

/// Create a new FileSystemHandlePermissionDescriptor with default values
pub fn FileSystemHandlePermissionDescriptor::default() -> FileSystemHandlePermissionDescriptor {
  FileSystemHandlePermissionDescriptor::{
    mode: None,
  }
}

/// Convert to JsValue
pub extern "js" fn FileSystemHandlePermissionDescriptor::to_js(self : FileSystemHandlePermissionDescriptor) -> JsValue =
  #| (self) => ({
  #|   mode: self.mode
  #| })

///|
/// FilePickerAcceptType dictionary
pub struct FilePickerAcceptType {
  description : String?
  accept : JsValue?
}

/// Create a new FilePickerAcceptType with default values
pub fn FilePickerAcceptType::default() -> FilePickerAcceptType {
  FilePickerAcceptType::{
    description: None,
    accept: None,
  }
}

/// Convert to JsValue
pub extern "js" fn FilePickerAcceptType::to_js(self : FilePickerAcceptType) -> JsValue =
  #| (self) => ({
  #|   description: self.description,
  #|   accept: self.accept
  #| })

///|
/// FilePickerOptions dictionary
pub struct FilePickerOptions {
  types : JsValue?
  excludeAcceptAllOption : Bool?
  id : String?
  startIn : StartInDirectory?
}

/// Create a new FilePickerOptions with default values
pub fn FilePickerOptions::default() -> FilePickerOptions {
  FilePickerOptions::{
    types: None,
    excludeAcceptAllOption: None,
    id: None,
    startIn: None,
  }
}

/// Convert to JsValue
pub extern "js" fn FilePickerOptions::to_js(self : FilePickerOptions) -> JsValue =
  #| (self) => ({
  #|   types: self.types,
  #|   excludeAcceptAllOption: self.excludeAcceptAllOption,
  #|   id: self.id,
  #|   startIn: self.startIn
  #| })

///|
/// OpenFilePickerOptions dictionary
pub struct OpenFilePickerOptions {
  types : JsValue?
  excludeAcceptAllOption : Bool?
  id : String?
  startIn : StartInDirectory?
  multiple : Bool?
}

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

/// Convert to JsValue
pub extern "js" fn OpenFilePickerOptions::to_js(self : OpenFilePickerOptions) -> JsValue =
  #| (self) => ({
  #|   types: self.types,
  #|   excludeAcceptAllOption: self.excludeAcceptAllOption,
  #|   id: self.id,
  #|   startIn: self.startIn,
  #|   multiple: self.multiple
  #| })

///|
/// SaveFilePickerOptions dictionary
pub struct SaveFilePickerOptions {
  types : JsValue?
  excludeAcceptAllOption : Bool?
  id : String?
  startIn : StartInDirectory?
  suggestedName : String??
}

/// Create a new SaveFilePickerOptions with default values
pub fn SaveFilePickerOptions::default() -> SaveFilePickerOptions {
  SaveFilePickerOptions::{
    types: None,
    excludeAcceptAllOption: None,
    id: None,
    startIn: None,
    suggestedName: None,
  }
}

/// Convert to JsValue
pub extern "js" fn SaveFilePickerOptions::to_js(self : SaveFilePickerOptions) -> JsValue =
  #| (self) => ({
  #|   types: self.types,
  #|   excludeAcceptAllOption: self.excludeAcceptAllOption,
  #|   id: self.id,
  #|   startIn: self.startIn,
  #|   suggestedName: self.suggestedName
  #| })

///|
/// DirectoryPickerOptions dictionary
pub struct DirectoryPickerOptions {
  id : String?
  startIn : StartInDirectory?
  mode : FileSystemPermissionMode?
}

/// Create a new DirectoryPickerOptions with default values
pub fn DirectoryPickerOptions::default() -> DirectoryPickerOptions {
  DirectoryPickerOptions::{
    id: None,
    startIn: None,
    mode: None,
  }
}

/// Convert to JsValue
pub extern "js" fn DirectoryPickerOptions::to_js(self : DirectoryPickerOptions) -> JsValue =
  #| (self) => ({
  #|   id: self.id,
  #|   startIn: self.startIn,
  #|   mode: self.mode
  #| })

