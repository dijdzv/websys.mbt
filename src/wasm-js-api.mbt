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
pub(all) struct WebAssemblyInstantiatedSource {
  module_ : Module
  instance : Instance
}

///|
/// Create a new WebAssemblyInstantiatedSource
pub fn WebAssemblyInstantiatedSource::new(
  module_~ : Module,
  instance~ : Instance,
) -> WebAssemblyInstantiatedSource {
  WebAssemblyInstantiatedSource::{ module_, instance }
}

///|
extern "js" fn WebAssemblyInstantiatedSource::to_js_ffi(
  self : WebAssemblyInstantiatedSource,
) -> JsValue =
  #| (self) => ({
  #|   module: self.module_,
  #|   instance: self.instance
  #| })

///|
/// Convert to JsValue
pub fn WebAssemblyInstantiatedSource::to_js(
  self : WebAssemblyInstantiatedSource,
) -> JsValue {
  WebAssemblyInstantiatedSource::to_js_ffi(self)
}

///|
/// WebAssemblyCompileOptions dictionary
pub(all) struct WebAssemblyCompileOptions {
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
extern "js" fn WebAssemblyCompileOptions::to_js_ffi(
  self : WebAssemblyCompileOptions,
) -> JsValue =
  #| (self) => ({
  #|   importedStringConstants: ((() => { const v = self.importedStringConstants; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   builtins: ((() => { const v = self.builtins; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn WebAssemblyCompileOptions::to_js(
  self : WebAssemblyCompileOptions,
) -> JsValue {
  WebAssemblyCompileOptions::to_js_ffi(self)
}

///|
/// ModuleExportDescriptor dictionary
pub(all) struct ModuleExportDescriptor {
  name : String
  kind : ImportExportKind
}

///|
/// Create a new ModuleExportDescriptor
pub fn ModuleExportDescriptor::new(
  kind~ : ImportExportKind,
) -> ModuleExportDescriptor {
  ModuleExportDescriptor::{ name: "", kind }
}

///|
extern "js" fn ModuleExportDescriptor::to_js_ffi(
  self : ModuleExportDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   kind: ['function', 'table', 'memory', 'global', 'tag'][self.kind]
  #| })

///|
/// Convert to JsValue
pub fn ModuleExportDescriptor::to_js(self : ModuleExportDescriptor) -> JsValue {
  ModuleExportDescriptor::to_js_ffi(self)
}

///|
/// ModuleImportDescriptor dictionary
pub(all) struct ModuleImportDescriptor {
  module_ : String
  name : String
  kind : ImportExportKind
}

///|
/// Create a new ModuleImportDescriptor
pub fn ModuleImportDescriptor::new(
  kind~ : ImportExportKind,
) -> ModuleImportDescriptor {
  ModuleImportDescriptor::{ module_: "", name: "", kind }
}

///|
extern "js" fn ModuleImportDescriptor::to_js_ffi(
  self : ModuleImportDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   module: self.module_,
  #|   name: self.name,
  #|   kind: ['function', 'table', 'memory', 'global', 'tag'][self.kind]
  #| })

///|
/// Convert to JsValue
pub fn ModuleImportDescriptor::to_js(self : ModuleImportDescriptor) -> JsValue {
  ModuleImportDescriptor::to_js_ffi(self)
}

///|
/// MemoryDescriptor dictionary
pub(all) struct MemoryDescriptor {
  initial : AddressValue
  maximum : AddressValue?
  address : AddressType?
}

///|
/// Create a new MemoryDescriptor
pub fn MemoryDescriptor::new(initial~ : AddressValue) -> MemoryDescriptor {
  MemoryDescriptor::{ initial, maximum: None, address: None }
}

///|
extern "js" fn MemoryDescriptor::to_js_ffi(self : MemoryDescriptor) -> JsValue =
  #| (self) => ({
  #|   initial: self.initial,
  #|   maximum: ((() => { const v = self.maximum; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   address: ((() => { const v = self.address; if (v === undefined) return undefined; return ['i32', 'i64'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn MemoryDescriptor::to_js(self : MemoryDescriptor) -> JsValue {
  MemoryDescriptor::to_js_ffi(self)
}

///|
/// TableDescriptor dictionary
pub(all) struct TableDescriptor {
  element : TableKind
  initial : AddressValue
  maximum : AddressValue?
  address : AddressType?
}

///|
/// Create a new TableDescriptor
pub fn TableDescriptor::new(
  element~ : TableKind,
  initial~ : AddressValue,
) -> TableDescriptor {
  TableDescriptor::{ element, initial, maximum: None, address: None }
}

///|
extern "js" fn TableDescriptor::to_js_ffi(self : TableDescriptor) -> JsValue =
  #| (self) => ({
  #|   element: ['externref', 'anyfunc'][self.element],
  #|   initial: self.initial,
  #|   maximum: ((() => { const v = self.maximum; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   address: ((() => { const v = self.address; if (v === undefined) return undefined; return ['i32', 'i64'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn TableDescriptor::to_js(self : TableDescriptor) -> JsValue {
  TableDescriptor::to_js_ffi(self)
}

///|
/// GlobalDescriptor dictionary
pub(all) struct GlobalDescriptor {
  value : ValueType
  mutable : Bool?
}

///|
/// Create a new GlobalDescriptor
pub fn GlobalDescriptor::new(value~ : ValueType) -> GlobalDescriptor {
  GlobalDescriptor::{ value, mutable: None }
}

///|
extern "js" fn GlobalDescriptor::to_js_ffi(self : GlobalDescriptor) -> JsValue =
  #| (self) => ({
  #|   value: ['i32', 'i64', 'f32', 'f64', 'v128', 'externref', 'anyfunc'][self.value],
  #|   mutable: (self.mutable === -1 ? undefined : self.mutable)
  #| })

///|
/// Convert to JsValue
pub fn GlobalDescriptor::to_js(self : GlobalDescriptor) -> JsValue {
  GlobalDescriptor::to_js_ffi(self)
}

///|
/// TagType dictionary
pub(all) struct TagType {
  parameters : Array[ValueType]
}

///|
/// Create a new TagType with default values
pub fn TagType::default() -> TagType {
  TagType::{ parameters: [] }
}

///|
extern "js" fn TagType::to_js_ffi(self : TagType) -> JsValue =
  #| (self) => ({
  #|   parameters: self.parameters
  #| })

///|
/// Convert to JsValue
pub fn TagType::to_js(self : TagType) -> JsValue {
  TagType::to_js_ffi(self)
}

///|
/// ExceptionOptions dictionary
pub(all) struct ExceptionOptions {
  traceStack : Bool?
}

///|
/// Create a new ExceptionOptions with default values
pub fn ExceptionOptions::default() -> ExceptionOptions {
  ExceptionOptions::{ traceStack: None }
}

///|
extern "js" fn ExceptionOptions::to_js_ffi(self : ExceptionOptions) -> JsValue =
  #| (self) => ({
  #|   traceStack: (self.traceStack === -1 ? undefined : self.traceStack)
  #| })

///|
/// Convert to JsValue
pub fn ExceptionOptions::to_js(self : ExceptionOptions) -> JsValue {
  ExceptionOptions::to_js_ffi(self)
}

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
pub extern "js" fn Module::new(bytes : BufferSource) -> Module =
  #| (bytes) => new Module(bytes)

///|
extern "js" fn Module::new_with_options_ffi(
  bytes : BufferSource,
  options : JsValue,
) -> Module =
  #| (bytes, options) => new Module(bytes, options)

///|
pub fn Module::new_with_options(
  bytes : BufferSource,
  options : WebAssemblyCompileOptions,
) -> Module {
  Module::new_with_options_ffi(bytes, options.to_js())
}

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
pub extern "js" fn Module::new_with_array_buffer_view(
  bytes : ArrayBufferView,
  options : WebAssemblyCompileOptions,
) -> Module =
  #| (bytes, options) => new Module(bytes, options)

///|
pub extern "js" fn Module::new_with_array_buffer(
  bytes : ArrayBuffer,
  options : WebAssemblyCompileOptions,
) -> Module =
  #| (bytes, options) => new Module(bytes, options)

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
pub extern "js" fn Instance::new(module_ : Module) -> Instance =
  #| (module_) => new Instance(module_)

///|
pub extern "js" fn Instance::new_with_import_object(
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
extern "js" fn Memory::new_ffi(descriptor : JsValue) -> Memory =
  #| (descriptor) => new Memory(descriptor)

///|
pub fn Memory::new(descriptor : MemoryDescriptor) -> Memory {
  Memory::new_ffi(descriptor.to_js())
}

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
extern "js" fn Table::new_ffi(descriptor : JsValue) -> Table =
  #| (descriptor) => new Table(descriptor)

///|
pub fn Table::new(descriptor : TableDescriptor) -> Table {
  Table::new_ffi(descriptor.to_js())
}

///|
extern "js" fn Table::new_with_value_ffi(
  descriptor : JsValue,
  value : JsValue,
) -> Table =
  #| (descriptor, value) => new Table(descriptor, value)

///|
pub fn Table::new_with_value(
  descriptor : TableDescriptor,
  value : JsValue,
) -> Table {
  Table::new_with_value_ffi(descriptor.to_js(), value)
}

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
extern "js" fn Global::new_ffi(descriptor : JsValue) -> Global =
  #| (descriptor) => new Global(descriptor)

///|
pub fn Global::new(descriptor : GlobalDescriptor) -> Global {
  Global::new_ffi(descriptor.to_js())
}

///|
extern "js" fn Global::new_with_v_ffi(
  descriptor : JsValue,
  v : JsValue,
) -> Global =
  #| (descriptor, v) => new Global(descriptor, v)

///|
pub fn Global::new_with_v(descriptor : GlobalDescriptor, v : JsValue) -> Global {
  Global::new_with_v_ffi(descriptor.to_js(), v)
}

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
extern "js" fn Tag::new_ffi(type_ : JsValue) -> Tag =
  #| (type_) => new Tag(type_)

///|
pub fn Tag::new(type_ : TagType) -> Tag {
  Tag::new_ffi(type_.to_js())
}

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
) -> Exception =
  #| (exception_tag, payload) => new Exception(exception_tag, payload)

///|
extern "js" fn Exception::new_with_options_ffi(
  exception_tag : Tag,
  payload : Array[JsValue],
  options : JsValue,
) -> Exception =
  #| (exception_tag, payload, options) => new Exception(exception_tag, payload, options)

///|
pub fn Exception::new_with_options(
  exception_tag : Tag,
  payload : Array[JsValue],
  options : ExceptionOptions,
) -> Exception {
  Exception::new_with_options_ffi(exception_tag, payload, options.to_js())
}

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

///|
/// WebAssembly namespace
pub extern "js" fn web_assembly_validate(bytes : BufferSource) -> Bool =
  #| (bytes) => WebAssembly.validate(bytes)

///|
extern "js" fn web_assembly_validate_with_options_ffi(
  bytes : BufferSource,
  options : JsValue,
) -> Bool =
  #| (bytes, options) => WebAssembly.validate(bytes, options)

///|
pub fn web_assembly_validate_with_options(
  bytes : BufferSource,
  options : WebAssemblyCompileOptions,
) -> Bool {
  web_assembly_validate_with_options_ffi(bytes, options.to_js())
}

///|
pub extern "js" fn web_assembly_compile(
  bytes : BufferSource,
) -> Promise[Module] =
  #| (bytes) => WebAssembly.compile(bytes)

///|
extern "js" fn web_assembly_compile_with_options_ffi(
  bytes : BufferSource,
  options : JsValue,
) -> Promise[Module] =
  #| (bytes, options) => WebAssembly.compile(bytes, options)

///|
pub fn web_assembly_compile_with_options(
  bytes : BufferSource,
  options : WebAssemblyCompileOptions,
) -> Promise[Module] {
  web_assembly_compile_with_options_ffi(bytes, options.to_js())
}

///|
pub extern "js" fn web_assembly_instantiate(
  bytes : BufferSource,
) -> Promise[WebAssemblyInstantiatedSource] =
  #| (bytes) => WebAssembly.instantiate(bytes)

///|
extern "js" fn web_assembly_instantiate_with_options_ffi(
  bytes : BufferSource,
  import_object : JsValue,
  options : JsValue,
) -> Promise[WebAssemblyInstantiatedSource] =
  #| (bytes, import_object, options) => WebAssembly.instantiate(bytes, import_object, options)

///|
pub fn web_assembly_instantiate_with_options(
  bytes : BufferSource,
  import_object : JsValue,
  options : WebAssemblyCompileOptions,
) -> Promise[WebAssemblyInstantiatedSource] {
  web_assembly_instantiate_with_options_ffi(
    bytes,
    import_object,
    options.to_js(),
  )
}

///|
pub extern "js" fn web_assembly_get_js_tag() -> Tag =
  #| () => WebAssembly.JSTag

///|
/// WebAssembly namespace
pub extern "js" fn web_assembly_compile_streaming(
  source : Promise[Response],
) -> Promise[Module] =
  #| (source) => WebAssembly.compileStreaming(source)

///|
extern "js" fn web_assembly_compile_streaming_with_options_ffi(
  source : Promise[Response],
  options : JsValue,
) -> Promise[Module] =
  #| (source, options) => WebAssembly.compileStreaming(source, options)

///|
pub fn web_assembly_compile_streaming_with_options(
  source : Promise[Response],
  options : WebAssemblyCompileOptions,
) -> Promise[Module] {
  web_assembly_compile_streaming_with_options_ffi(source, options.to_js())
}

///|
pub extern "js" fn web_assembly_instantiate_streaming(
  source : Promise[Response],
) -> Promise[WebAssemblyInstantiatedSource] =
  #| (source) => WebAssembly.instantiateStreaming(source)

///|
extern "js" fn web_assembly_instantiate_streaming_with_options_ffi(
  source : Promise[Response],
  import_object : JsValue,
  options : JsValue,
) -> Promise[WebAssemblyInstantiatedSource] =
  #| (source, import_object, options) => WebAssembly.instantiateStreaming(source, import_object, options)

///|
pub fn web_assembly_instantiate_streaming_with_options(
  source : Promise[Response],
  import_object : JsValue,
  options : WebAssemblyCompileOptions,
) -> Promise[WebAssemblyInstantiatedSource] {
  web_assembly_instantiate_streaming_with_options_ffi(
    source,
    import_object,
    options.to_js(),
  )
}
