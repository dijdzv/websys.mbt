// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/wasm-js-api

///|
/// AddressValue typedef
pub type AddressValue = JsValue

///|
/// ImportExportKind enum
pub(all) enum ImportExportKind {
  Function
  Table
  Memory
  Global
  Tag
}

/// Convert to string value
pub fn ImportExportKind::to_string(self : ImportExportKind) -> String {
  match self {
    Function => "function"
    Table => "table"
    Memory => "memory"
    Global => "global"
    Tag => "tag"
  }
}

/// Parse from string value
pub fn ImportExportKind::from_string(s : String) -> ImportExportKind? {
  match s {
    "function" => Some(Function)
    "table" => Some(Table)
    "memory" => Some(Memory)
    "global" => Some(Global)
    "tag" => Some(Tag)
    _ => None
  }
}

///|
/// AddressType enum
pub(all) enum AddressType {
  I32
  I64
}

/// Convert to string value
pub fn AddressType::to_string(self : AddressType) -> String {
  match self {
    I32 => "i32"
    I64 => "i64"
  }
}

/// Parse from string value
pub fn AddressType::from_string(s : String) -> AddressType? {
  match s {
    "i32" => Some(I32)
    "i64" => Some(I64)
    _ => None
  }
}

///|
/// TableKind enum
pub(all) enum TableKind {
  Externref
  Anyfunc
}

/// Convert to string value
pub fn TableKind::to_string(self : TableKind) -> String {
  match self {
    Externref => "externref"
    Anyfunc => "anyfunc"
  }
}

/// Parse from string value
pub fn TableKind::from_string(s : String) -> TableKind? {
  match s {
    "externref" => Some(Externref)
    "anyfunc" => Some(Anyfunc)
    _ => None
  }
}

///|
/// ValueType enum
pub(all) enum ValueType {
  I32
  I64
  F32
  F64
  V128
  Externref
  Anyfunc
}

/// Convert to string value
pub fn ValueType::to_string(self : ValueType) -> String {
  match self {
    I32 => "i32"
    I64 => "i64"
    F32 => "f32"
    F64 => "f64"
    V128 => "v128"
    Externref => "externref"
    Anyfunc => "anyfunc"
  }
}

/// Parse from string value
pub fn ValueType::from_string(s : String) -> ValueType? {
  match s {
    "i32" => Some(I32)
    "i64" => Some(I64)
    "f32" => Some(F32)
    "f64" => Some(F64)
    "v128" => Some(V128)
    "externref" => Some(Externref)
    "anyfunc" => Some(Anyfunc)
    _ => None
  }
}

///|
/// WebAssemblyInstantiatedSource dictionary
pub struct WebAssemblyInstantiatedSource {
  module_ : Module
  instance : Instance
}

/// Create a new WebAssemblyInstantiatedSource with default values
pub fn WebAssemblyInstantiatedSource::default() -> WebAssemblyInstantiatedSource {
  WebAssemblyInstantiatedSource::{
    module_: panic(),
    instance: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn WebAssemblyInstantiatedSource::to_js(self : WebAssemblyInstantiatedSource) -> JsValue =
  #| (self) => ({
  #|   module: self.module_,
  #|   instance: self.instance
  #| })

///|
/// WebAssemblyCompileOptions dictionary
pub struct WebAssemblyCompileOptions {
  importedStringConstants : String??
  builtins : JsValue?
}

/// Create a new WebAssemblyCompileOptions with default values
pub fn WebAssemblyCompileOptions::default() -> WebAssemblyCompileOptions {
  WebAssemblyCompileOptions::{
    importedStringConstants: None,
    builtins: None,
  }
}

/// Convert to JsValue
pub extern "js" fn WebAssemblyCompileOptions::to_js(self : WebAssemblyCompileOptions) -> JsValue =
  #| (self) => ({
  #|   importedStringConstants: self.importedStringConstants,
  #|   builtins: self.builtins
  #| })

///|
/// ModuleExportDescriptor dictionary
pub struct ModuleExportDescriptor {
  name : String
  kind : ImportExportKind
}

/// Create a new ModuleExportDescriptor with default values
pub fn ModuleExportDescriptor::default() -> ModuleExportDescriptor {
  ModuleExportDescriptor::{
    name: "",
    kind: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn ModuleExportDescriptor::to_js(self : ModuleExportDescriptor) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   kind: self.kind
  #| })

///|
/// ModuleImportDescriptor dictionary
pub struct ModuleImportDescriptor {
  module_ : String
  name : String
  kind : ImportExportKind
}

/// Create a new ModuleImportDescriptor with default values
pub fn ModuleImportDescriptor::default() -> ModuleImportDescriptor {
  ModuleImportDescriptor::{
    module_: "",
    name: "",
    kind: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn ModuleImportDescriptor::to_js(self : ModuleImportDescriptor) -> JsValue =
  #| (self) => ({
  #|   module: self.module_,
  #|   name: self.name,
  #|   kind: self.kind
  #| })

///|
/// MemoryDescriptor dictionary
pub struct MemoryDescriptor {
  initial : AddressValue
  maximum : AddressValue?
  address : AddressType?
}

/// Create a new MemoryDescriptor with default values
pub fn MemoryDescriptor::default() -> MemoryDescriptor {
  MemoryDescriptor::{
    initial: panic(),
    maximum: None,
    address: None,
  }
}

/// Convert to JsValue
pub extern "js" fn MemoryDescriptor::to_js(self : MemoryDescriptor) -> JsValue =
  #| (self) => ({
  #|   initial: self.initial,
  #|   maximum: self.maximum,
  #|   address: self.address
  #| })

///|
/// TableDescriptor dictionary
pub struct TableDescriptor {
  element : TableKind
  initial : AddressValue
  maximum : AddressValue?
  address : AddressType?
}

/// Create a new TableDescriptor with default values
pub fn TableDescriptor::default() -> TableDescriptor {
  TableDescriptor::{
    element: panic(),
    initial: panic(),
    maximum: None,
    address: None,
  }
}

/// Convert to JsValue
pub extern "js" fn TableDescriptor::to_js(self : TableDescriptor) -> JsValue =
  #| (self) => ({
  #|   element: self.element,
  #|   initial: self.initial,
  #|   maximum: self.maximum,
  #|   address: self.address
  #| })

///|
/// GlobalDescriptor dictionary
pub struct GlobalDescriptor {
  value : ValueType
  mutable : Bool?
}

/// Create a new GlobalDescriptor with default values
pub fn GlobalDescriptor::default() -> GlobalDescriptor {
  GlobalDescriptor::{
    value: panic(),
    mutable: None,
  }
}

/// Convert to JsValue
pub extern "js" fn GlobalDescriptor::to_js(self : GlobalDescriptor) -> JsValue =
  #| (self) => ({
  #|   value: self.value,
  #|   mutable: self.mutable
  #| })

///|
/// TagType dictionary
pub struct TagType {
  parameters : JsValue
}

/// Create a new TagType with default values
pub fn TagType::default() -> TagType {
  TagType::{
    parameters: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn TagType::to_js(self : TagType) -> JsValue =
  #| (self) => ({
  #|   parameters: self.parameters
  #| })

///|
/// ExceptionOptions dictionary
pub struct ExceptionOptions {
  traceStack : Bool?
}

/// Create a new ExceptionOptions with default values
pub fn ExceptionOptions::default() -> ExceptionOptions {
  ExceptionOptions::{
    traceStack: None,
  }
}

/// Convert to JsValue
pub extern "js" fn ExceptionOptions::to_js(self : ExceptionOptions) -> JsValue =
  #| (self) => ({
  #|   traceStack: self.traceStack
  #| })

///|
/// Module interface
pub type Module

pub extern "js" fn Module::to_js_value(self : Module) -> JsValue =
  #| (self) => self

pub extern "js" fn Module::new(bytes : BufferSource, options : WebAssemblyCompileOptions) -> Module =
  #| (bytes, options) => new Module(bytes, options)

pub extern "js" fn Module::exports(module_object : Module) -> JsValue =
  #| (module_object) => Module.exports(module_object)

pub extern "js" fn Module::imports(module_object : Module) -> JsValue =
  #| (module_object) => Module.imports(module_object)

pub extern "js" fn Module::custom_sections(module_object : Module, section_name : String) -> JsValue =
  #| (module_object, section_name) => Module.customSections(module_object, section_name)

///|
/// Instance interface
pub type Instance

pub extern "js" fn Instance::to_js_value(self : Instance) -> JsValue =
  #| (self) => self

pub extern "js" fn Instance::new(module_ : Module, import_object : JsValue) -> Instance =
  #| (module_, import_object) => new Instance(module_, import_object)

pub extern "js" fn Instance::get_exports(self : Instance) -> JsValue =
  #| (self) => self.exports

///|
/// Memory interface
pub type Memory

pub extern "js" fn Memory::to_js_value(self : Memory) -> JsValue =
  #| (self) => self

pub extern "js" fn Memory::new(descriptor : MemoryDescriptor) -> Memory =
  #| (descriptor) => new Memory(descriptor)

pub extern "js" fn Memory::grow(self : Memory, delta : AddressValue) -> AddressValue =
  #| (self, delta) => self.grow(delta)

pub extern "js" fn Memory::to_fixed_length_buffer(self : Memory) -> ArrayBuffer =
  #| (self) => self.toFixedLengthBuffer()

pub extern "js" fn Memory::to_resizable_buffer(self : Memory) -> ArrayBuffer =
  #| (self) => self.toResizableBuffer()

pub extern "js" fn Memory::get_buffer(self : Memory) -> ArrayBuffer =
  #| (self) => self.buffer

///|
/// Table interface
pub type Table

pub extern "js" fn Table::to_js_value(self : Table) -> JsValue =
  #| (self) => self

pub extern "js" fn Table::new(descriptor : TableDescriptor, value : JsValue) -> Table =
  #| (descriptor, value) => new Table(descriptor, value)

pub extern "js" fn Table::grow(self : Table, delta : AddressValue, value : JsValue) -> AddressValue =
  #| (self, delta, value) => self.grow(delta, value)

pub extern "js" fn Table::get(self : Table, index : AddressValue) -> JsValue =
  #| (self, index) => self.get(index)

pub extern "js" fn Table::set(self : Table, index : AddressValue, value : JsValue) -> Unit =
  #| (self, index, value) => self.set(index, value)

pub extern "js" fn Table::get_length(self : Table) -> AddressValue =
  #| (self) => self.length

///|
/// Global interface
pub type Global

pub extern "js" fn Global::to_js_value(self : Global) -> JsValue =
  #| (self) => self

pub extern "js" fn Global::new(descriptor : GlobalDescriptor, v : JsValue) -> Global =
  #| (descriptor, v) => new Global(descriptor, v)

pub extern "js" fn Global::value_of(self : Global) -> JsValue =
  #| (self) => self.valueOf()

pub extern "js" fn Global::get_value(self : Global) -> JsValue =
  #| (self) => self.value

pub extern "js" fn Global::set_value(self : Global, value : JsValue) -> Unit =
  #| (self, value) => { self.value = value }

///|
/// Tag interface
pub type Tag

pub extern "js" fn Tag::to_js_value(self : Tag) -> JsValue =
  #| (self) => self

pub extern "js" fn Tag::new(type_ : TagType) -> Tag =
  #| (type_) => new Tag(type_)

///|
/// Exception interface
pub type Exception

pub extern "js" fn Exception::to_js_value(self : Exception) -> JsValue =
  #| (self) => self

pub extern "js" fn Exception::new(exception_tag : Tag, payload : JsValue, options : ExceptionOptions) -> Exception =
  #| (exception_tag, payload, options) => new Exception(exception_tag, payload, options)

pub extern "js" fn Exception::get_arg(self : Exception, index : Int) -> JsValue =
  #| (self, index) => self.getArg(index)

pub extern "js" fn Exception::is_(self : Exception, exception_tag : Tag) -> Bool =
  #| (self, exception_tag) => self.is(exception_tag)

pub extern "js" fn Exception::get_stack(self : Exception) -> JsValue =
  #| (self) => self.stack

