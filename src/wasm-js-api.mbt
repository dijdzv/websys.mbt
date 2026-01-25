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

///|
/// Convert to string value
pub fn ImportExportKind::to_string(self : ImportExportKind) -> String {
  match self {
    ImportExportKind::Function => "function"
    ImportExportKind::Table => "table"
    ImportExportKind::Memory => "memory"
    ImportExportKind::Global => "global"
    ImportExportKind::Tag => "tag"
  }
}

///|
/// Parse from string value
pub fn ImportExportKind::from_string(s : String) -> ImportExportKind? {
  match s {
    "function" => Some(ImportExportKind::Function)
    "table" => Some(ImportExportKind::Table)
    "memory" => Some(ImportExportKind::Memory)
    "global" => Some(ImportExportKind::Global)
    "tag" => Some(ImportExportKind::Tag)
    _ => None
  }
}

///|
/// AddressType enum
pub(all) enum AddressType {
  I32
  I64
}

///|
/// Convert to string value
pub fn AddressType::to_string(self : AddressType) -> String {
  match self {
    AddressType::I32 => "i32"
    AddressType::I64 => "i64"
  }
}

///|
/// Parse from string value
pub fn AddressType::from_string(s : String) -> AddressType? {
  match s {
    "i32" => Some(AddressType::I32)
    "i64" => Some(AddressType::I64)
    _ => None
  }
}

///|
/// TableKind enum
pub(all) enum TableKind {
  Externref
  Anyfunc
}

///|
/// Convert to string value
pub fn TableKind::to_string(self : TableKind) -> String {
  match self {
    TableKind::Externref => "externref"
    TableKind::Anyfunc => "anyfunc"
  }
}

///|
/// Parse from string value
pub fn TableKind::from_string(s : String) -> TableKind? {
  match s {
    "externref" => Some(TableKind::Externref)
    "anyfunc" => Some(TableKind::Anyfunc)
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

///|
/// Convert to string value
pub fn ValueType::to_string(self : ValueType) -> String {
  match self {
    ValueType::I32 => "i32"
    ValueType::I64 => "i64"
    ValueType::F32 => "f32"
    ValueType::F64 => "f64"
    ValueType::V128 => "v128"
    ValueType::Externref => "externref"
    ValueType::Anyfunc => "anyfunc"
  }
}

///|
/// Parse from string value
pub fn ValueType::from_string(s : String) -> ValueType? {
  match s {
    "i32" => Some(ValueType::I32)
    "i64" => Some(ValueType::I64)
    "f32" => Some(ValueType::F32)
    "f64" => Some(ValueType::F64)
    "v128" => Some(ValueType::V128)
    "externref" => Some(ValueType::Externref)
    "anyfunc" => Some(ValueType::Anyfunc)
    _ => None
  }
}

///|
/// WebAssemblyInstantiatedSource dictionary
pub struct WebAssemblyInstantiatedSource {
  module_ : Module
  instance : Instance
}

///|
/// Create a new WebAssemblyInstantiatedSource with default values
pub fn WebAssemblyInstantiatedSource::default() -> WebAssemblyInstantiatedSource {
  WebAssemblyInstantiatedSource::{ module_: panic(), instance: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn WebAssemblyInstantiatedSource::to_js(
  self : WebAssemblyInstantiatedSource,
) -> JsValue =
  #| (self) => ({
  #|   module: self.module_,
  #|   instance: self.instance
  #| })

///|
/// WebAssemblyCompileOptions dictionary
pub struct WebAssemblyCompileOptions {
  importedStringConstants : Nullable[String]
  builtins : Array[String]?
}

///|
/// Create a new WebAssemblyCompileOptions with default values
pub fn WebAssemblyCompileOptions::default() -> WebAssemblyCompileOptions {
  WebAssemblyCompileOptions::{
    importedStringConstants: Nullable::Undefined,
    builtins: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn WebAssemblyCompileOptions::to_js(
  self : WebAssemblyCompileOptions,
) -> JsValue =
  #| (self) => ({
  #|   importedStringConstants: ((() => { const v = self.importedStringConstants; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   builtins: self.builtins
  #| })

///|
/// ModuleExportDescriptor dictionary
pub struct ModuleExportDescriptor {
  name : String
  kind : ImportExportKind
}

///|
/// Create a new ModuleExportDescriptor with default values
pub fn ModuleExportDescriptor::default() -> ModuleExportDescriptor {
  ModuleExportDescriptor::{ name: "", kind: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn ModuleExportDescriptor::to_js(
  self : ModuleExportDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   kind: ['function', 'table', 'memory', 'global', 'tag'][self.kind]
  #| })

///|
/// ModuleImportDescriptor dictionary
pub struct ModuleImportDescriptor {
  module_ : String
  name : String
  kind : ImportExportKind
}

///|
/// Create a new ModuleImportDescriptor with default values
pub fn ModuleImportDescriptor::default() -> ModuleImportDescriptor {
  ModuleImportDescriptor::{ module_: "", name: "", kind: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn ModuleImportDescriptor::to_js(
  self : ModuleImportDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   module: self.module_,
  #|   name: self.name,
  #|   kind: ['function', 'table', 'memory', 'global', 'tag'][self.kind]
  #| })

///|
/// MemoryDescriptor dictionary
pub struct MemoryDescriptor {
  initial : AddressValue
  maximum : AddressValue?
  address : AddressType?
}

///|
/// Create a new MemoryDescriptor with default values
pub fn MemoryDescriptor::default() -> MemoryDescriptor {
  MemoryDescriptor::{ initial: panic(), maximum: None, address: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MemoryDescriptor::to_js(self : MemoryDescriptor) -> JsValue =
  #| (self) => ({
  #|   initial: self.initial,
  #|   maximum: self.maximum,
  #|   address: ['i32', 'i64'][self.address]
  #| })

///|
/// TableDescriptor dictionary
pub struct TableDescriptor {
  element : TableKind
  initial : AddressValue
  maximum : AddressValue?
  address : AddressType?
}

///|
/// Create a new TableDescriptor with default values
pub fn TableDescriptor::default() -> TableDescriptor {
  TableDescriptor::{
    element: panic(),
    initial: panic(),
    maximum: None,
    address: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn TableDescriptor::to_js(self : TableDescriptor) -> JsValue =
  #| (self) => ({
  #|   element: ['externref', 'anyfunc'][self.element],
  #|   initial: self.initial,
  #|   maximum: self.maximum,
  #|   address: ['i32', 'i64'][self.address]
  #| })

///|
/// GlobalDescriptor dictionary
pub struct GlobalDescriptor {
  value : ValueType
  mutable : Bool?
}

///|
/// Create a new GlobalDescriptor with default values
pub fn GlobalDescriptor::default() -> GlobalDescriptor {
  GlobalDescriptor::{ value: panic(), mutable: None }
}

///|
/// Convert to JsValue
pub extern "js" fn GlobalDescriptor::to_js(self : GlobalDescriptor) -> JsValue =
  #| (self) => ({
  #|   value: ['i32', 'i64', 'f32', 'f64', 'v128', 'externref', 'anyfunc'][self.value],
  #|   mutable: self.mutable
  #| })

///|
/// TagType dictionary
pub struct TagType {
  parameters : Array[ValueType]
}

///|
/// Create a new TagType with default values
pub fn TagType::default() -> TagType {
  TagType::{ parameters: [] }
}

///|
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

///|
/// Create a new ExceptionOptions with default values
pub fn ExceptionOptions::default() -> ExceptionOptions {
  ExceptionOptions::{ traceStack: None }
}

///|
/// Convert to JsValue
pub extern "js" fn ExceptionOptions::to_js(self : ExceptionOptions) -> JsValue =
  #| (self) => ({
  #|   traceStack: self.traceStack
  #| })

///|
/// Module interface
pub type Module

///|
pub extern "js" fn Module::to_js_value(self : Module) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Module (unchecked)
pub extern "js" fn Module::from_js_value(v : JsValue) -> Module =
  #| (v) => v

///|
/// Safely cast JsValue to Module (checked with instanceof)
pub extern "js" fn Module::from_js_value_opt(v : JsValue) -> Module? =
  #| (v) => (v instanceof Module) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Module (checked with instanceof)
pub extern "js" fn JsValue::as_module(self : JsValue) -> Module? =
  #| (self) => (self instanceof Module) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Module (unchecked)
pub extern "js" fn JsValue::to_module(self : JsValue) -> Module =
  #| (self) => self

///|
pub extern "js" fn Module::new(
  bytes : BufferSource,
  options : WebAssemblyCompileOptions,
) -> Module =
  #| (bytes, options) => new Module(bytes, options)

///|
pub extern "js" fn Module::exports(
  module_object : Module,
) -> Array[ModuleExportDescriptor] =
  #| (module_object) => Module.exports(module_object)

///|
pub extern "js" fn Module::imports(
  module_object : Module,
) -> Array[ModuleImportDescriptor] =
  #| (module_object) => Module.imports(module_object)

///|
pub extern "js" fn Module::custom_sections(
  module_object : Module,
  section_name : String,
) -> Array[ArrayBuffer] =
  #| (module_object, section_name) => Module.customSections(module_object, section_name)

///|
/// Instance interface
pub type Instance

///|
pub extern "js" fn Instance::to_js_value(self : Instance) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Instance (unchecked)
pub extern "js" fn Instance::from_js_value(v : JsValue) -> Instance =
  #| (v) => v

///|
/// Safely cast JsValue to Instance (checked with instanceof)
pub extern "js" fn Instance::from_js_value_opt(v : JsValue) -> Instance? =
  #| (v) => (v instanceof Instance) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Instance (checked with instanceof)
pub extern "js" fn JsValue::as_instance(self : JsValue) -> Instance? =
  #| (self) => (self instanceof Instance) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Instance (unchecked)
pub extern "js" fn JsValue::to_instance(self : JsValue) -> Instance =
  #| (self) => self

///|
pub extern "js" fn Instance::new(
  module_ : Module,
  import_object : JsValue,
) -> Instance =
  #| (module_, import_object) => new Instance(module_, import_object)

///|
pub extern "js" fn Instance::get_exports(self : Instance) -> JsValue =
  #| (self) => self.exports

///|
/// Memory interface
pub type Memory

///|
pub extern "js" fn Memory::to_js_value(self : Memory) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Memory (unchecked)
pub extern "js" fn Memory::from_js_value(v : JsValue) -> Memory =
  #| (v) => v

///|
/// Safely cast JsValue to Memory (checked with instanceof)
pub extern "js" fn Memory::from_js_value_opt(v : JsValue) -> Memory? =
  #| (v) => (v instanceof Memory) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Memory (checked with instanceof)
pub extern "js" fn JsValue::as_memory(self : JsValue) -> Memory? =
  #| (self) => (self instanceof Memory) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Memory (unchecked)
pub extern "js" fn JsValue::to_memory(self : JsValue) -> Memory =
  #| (self) => self

///|
pub extern "js" fn Memory::new(descriptor : MemoryDescriptor) -> Memory =
  #| (descriptor) => new Memory(descriptor)

///|
pub extern "js" fn Memory::grow(
  self : Memory,
  delta : AddressValue,
) -> AddressValue =
  #| (self, delta) => self.grow(delta)

///|
pub extern "js" fn Memory::to_fixed_length_buffer(self : Memory) -> ArrayBuffer =
  #| (self) => self.toFixedLengthBuffer()

///|
pub extern "js" fn Memory::to_resizable_buffer(self : Memory) -> ArrayBuffer =
  #| (self) => self.toResizableBuffer()

///|
pub extern "js" fn Memory::get_buffer(self : Memory) -> ArrayBuffer =
  #| (self) => self.buffer

///|
/// Table interface
pub type Table

///|
pub extern "js" fn Table::to_js_value(self : Table) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Table (unchecked)
pub extern "js" fn Table::from_js_value(v : JsValue) -> Table =
  #| (v) => v

///|
/// Safely cast JsValue to Table (checked with instanceof)
pub extern "js" fn Table::from_js_value_opt(v : JsValue) -> Table? =
  #| (v) => (v instanceof Table) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Table (checked with instanceof)
pub extern "js" fn JsValue::as_table(self : JsValue) -> Table? =
  #| (self) => (self instanceof Table) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Table (unchecked)
pub extern "js" fn JsValue::to_table(self : JsValue) -> Table =
  #| (self) => self

///|
pub extern "js" fn Table::new(
  descriptor : TableDescriptor,
  value : JsValue,
) -> Table =
  #| (descriptor, value) => new Table(descriptor, value)

///|
pub extern "js" fn Table::grow(
  self : Table,
  delta : AddressValue,
) -> AddressValue =
  #| (self, delta) => self.grow(delta)

///|
pub extern "js" fn Table::grow_with_value(
  self : Table,
  delta : AddressValue,
  value : JsValue,
) -> AddressValue =
  #| (self, delta, value) => self.grow(delta, value)

///|
pub extern "js" fn Table::get(self : Table, index : AddressValue) -> JsValue =
  #| (self, index) => self.get(index)

///|
pub extern "js" fn Table::set(self : Table, index : AddressValue) -> Unit =
  #| (self, index) => self.set(index)

///|
pub extern "js" fn Table::set_with_value(
  self : Table,
  index : AddressValue,
  value : JsValue,
) -> Unit =
  #| (self, index, value) => self.set(index, value)

///|
pub extern "js" fn Table::get_length(self : Table) -> AddressValue =
  #| (self) => self.length

///|
/// Global interface
pub type Global

///|
pub extern "js" fn Global::to_js_value(self : Global) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Global (unchecked)
pub extern "js" fn Global::from_js_value(v : JsValue) -> Global =
  #| (v) => v

///|
/// Safely cast JsValue to Global (checked with instanceof)
pub extern "js" fn Global::from_js_value_opt(v : JsValue) -> Global? =
  #| (v) => (v instanceof Global) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Global (checked with instanceof)
pub extern "js" fn JsValue::as_global(self : JsValue) -> Global? =
  #| (self) => (self instanceof Global) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Global (unchecked)
pub extern "js" fn JsValue::to_global(self : JsValue) -> Global =
  #| (self) => self

///|
pub extern "js" fn Global::new(
  descriptor : GlobalDescriptor,
  v : JsValue,
) -> Global =
  #| (descriptor, v) => new Global(descriptor, v)

///|
pub extern "js" fn Global::value_of(self : Global) -> JsValue =
  #| (self) => self.valueOf()

///|
pub extern "js" fn Global::get_value(self : Global) -> JsValue =
  #| (self) => self.value

///|
pub extern "js" fn Global::set_value(self : Global, value : JsValue) -> Unit =
  #| (self, value) => { self.value = value }

///|
/// Tag interface
pub type Tag

///|
pub extern "js" fn Tag::to_js_value(self : Tag) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Tag (unchecked)
pub extern "js" fn Tag::from_js_value(v : JsValue) -> Tag =
  #| (v) => v

///|
/// Safely cast JsValue to Tag (checked with instanceof)
pub extern "js" fn Tag::from_js_value_opt(v : JsValue) -> Tag? =
  #| (v) => (v instanceof Tag) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Tag (checked with instanceof)
pub extern "js" fn JsValue::as_tag(self : JsValue) -> Tag? =
  #| (self) => (self instanceof Tag) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Tag (unchecked)
pub extern "js" fn JsValue::to_tag(self : JsValue) -> Tag =
  #| (self) => self

///|
pub extern "js" fn Tag::new(type_ : TagType) -> Tag =
  #| (type_) => new Tag(type_)

///|
/// Exception interface
pub type Exception

///|
pub extern "js" fn Exception::to_js_value(self : Exception) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Exception (unchecked)
pub extern "js" fn Exception::from_js_value(v : JsValue) -> Exception =
  #| (v) => v

///|
/// Safely cast JsValue to Exception (checked with instanceof)
pub extern "js" fn Exception::from_js_value_opt(v : JsValue) -> Exception? =
  #| (v) => (v instanceof Exception) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Exception (checked with instanceof)
pub extern "js" fn JsValue::as_exception(self : JsValue) -> Exception? =
  #| (self) => (self instanceof Exception) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Exception (unchecked)
pub extern "js" fn JsValue::to_exception(self : JsValue) -> Exception =
  #| (self) => self

///|
pub extern "js" fn Exception::new(
  exception_tag : Tag,
  payload : Array[JsValue],
  options : ExceptionOptions,
) -> Exception =
  #| (exception_tag, payload, options) => new Exception(exception_tag, payload, options)

///|
pub extern "js" fn Exception::get_arg(self : Exception, index : Int) -> JsValue =
  #| (self, index) => self.getArg(index)

///|
pub extern "js" fn Exception::is_(
  self : Exception,
  exception_tag : Tag,
) -> Bool =
  #| (self, exception_tag) => self.is(exception_tag)

///|
pub extern "js" fn Exception::get_stack(self : Exception) -> StringOrVoid =
  #| (self) => self.stack
