// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/IndexedDB

///|
/// IDBRequestReadyState enum
pub(all) enum IDBRequestReadyState {
  Pending
  Done
} derive(Eq, Show)

///|
/// Convert to string value
pub fn IDBRequestReadyState::to_string(self : IDBRequestReadyState) -> String {
  match self {
    IDBRequestReadyState::Pending => "pending"
    IDBRequestReadyState::Done => "done"
  }
}

///|
/// Parse from string value
pub fn IDBRequestReadyState::from_string(s : String) -> IDBRequestReadyState? {
  match s {
    "pending" => Some(IDBRequestReadyState::Pending)
    "done" => Some(IDBRequestReadyState::Done)
    _ => None
  }
}

///|
/// IDBTransactionDurability enum
pub(all) enum IDBTransactionDurability {
  Default
  Strict
  Relaxed
} derive(Eq, Show)

///|
/// Convert to string value
pub fn IDBTransactionDurability::to_string(
  self : IDBTransactionDurability,
) -> String {
  match self {
    IDBTransactionDurability::Default => "default"
    IDBTransactionDurability::Strict => "strict"
    IDBTransactionDurability::Relaxed => "relaxed"
  }
}

///|
/// Parse from string value
pub fn IDBTransactionDurability::from_string(
  s : String,
) -> IDBTransactionDurability? {
  match s {
    "default" => Some(IDBTransactionDurability::Default)
    "strict" => Some(IDBTransactionDurability::Strict)
    "relaxed" => Some(IDBTransactionDurability::Relaxed)
    _ => None
  }
}

///|
/// IDBCursorDirection enum
pub(all) enum IDBCursorDirection {
  Next
  Nextunique
  Prev
  Prevunique
} derive(Eq, Show)

///|
/// Convert to string value
pub fn IDBCursorDirection::to_string(self : IDBCursorDirection) -> String {
  match self {
    IDBCursorDirection::Next => "next"
    IDBCursorDirection::Nextunique => "nextunique"
    IDBCursorDirection::Prev => "prev"
    IDBCursorDirection::Prevunique => "prevunique"
  }
}

///|
/// Parse from string value
pub fn IDBCursorDirection::from_string(s : String) -> IDBCursorDirection? {
  match s {
    "next" => Some(IDBCursorDirection::Next)
    "nextunique" => Some(IDBCursorDirection::Nextunique)
    "prev" => Some(IDBCursorDirection::Prev)
    "prevunique" => Some(IDBCursorDirection::Prevunique)
    _ => None
  }
}

///|
/// IDBTransactionMode enum
pub(all) enum IDBTransactionMode {
  Readonly
  Readwrite
  Versionchange
} derive(Eq, Show)

///|
/// Convert to string value
pub fn IDBTransactionMode::to_string(self : IDBTransactionMode) -> String {
  match self {
    IDBTransactionMode::Readonly => "readonly"
    IDBTransactionMode::Readwrite => "readwrite"
    IDBTransactionMode::Versionchange => "versionchange"
  }
}

///|
/// Parse from string value
pub fn IDBTransactionMode::from_string(s : String) -> IDBTransactionMode? {
  match s {
    "readonly" => Some(IDBTransactionMode::Readonly)
    "readwrite" => Some(IDBTransactionMode::Readwrite)
    "versionchange" => Some(IDBTransactionMode::Versionchange)
    _ => None
  }
}

///|
/// IDBVersionChangeEventInit dictionary
pub(all) struct IDBVersionChangeEventInit {
  oldVersion : Int64?
  newVersion : Nullable[Int64]
}

///|
/// Create a new IDBVersionChangeEventInit with default values
pub fn IDBVersionChangeEventInit::default() -> IDBVersionChangeEventInit {
  IDBVersionChangeEventInit::{
    oldVersion: None,
    newVersion: Nullable::Undefined,
  }
}

///|
extern "js" fn IDBVersionChangeEventInit::to_js_ffi(
  self : IDBVersionChangeEventInit,
) -> JsValue =
  #| (self) => ({
  #|   oldVersion: self.oldVersion,
  #|   newVersion: ((() => { const v = self.newVersion; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn IDBVersionChangeEventInit::to_js(
  self : IDBVersionChangeEventInit,
) -> JsValue {
  IDBVersionChangeEventInit::to_js_ffi(self)
}

///|
extern "js" fn IDBVersionChangeEventInit::from_js_ffi(
  value : JsValue,
) -> IDBVersionChangeEventInit =
  #| (v) => ({
  #|   oldVersion: v.oldVersion,
  #|   newVersion: (v.newVersion === undefined ? { $tag: 0 } : v.newVersion === null ? { $tag: 1 } : { $tag: 2, _0: v.newVersion })
  #| })

///|
/// Convert from JsValue
pub fn IDBVersionChangeEventInit::from_js(
  value : JsValue,
) -> IDBVersionChangeEventInit {
  IDBVersionChangeEventInit::from_js_ffi(value)
}

///|
/// IDBDatabaseInfo dictionary
pub(all) struct IDBDatabaseInfo {
  name : String?
  version : Int64?
}

///|
/// Create a new IDBDatabaseInfo with default values
pub fn IDBDatabaseInfo::default() -> IDBDatabaseInfo {
  IDBDatabaseInfo::{ name: None, version: None }
}

///|
extern "js" fn IDBDatabaseInfo::to_js_ffi(self : IDBDatabaseInfo) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   version: self.version
  #| })

///|
/// Convert to JsValue
pub fn IDBDatabaseInfo::to_js(self : IDBDatabaseInfo) -> JsValue {
  IDBDatabaseInfo::to_js_ffi(self)
}

///|
extern "js" fn IDBDatabaseInfo::from_js_ffi(value : JsValue) -> IDBDatabaseInfo =
  #| (v) => ({
  #|   name: v.name,
  #|   version: v.version
  #| })

///|
/// Convert from JsValue
pub fn IDBDatabaseInfo::from_js(value : JsValue) -> IDBDatabaseInfo {
  IDBDatabaseInfo::from_js_ffi(value)
}

///|
/// IDBTransactionOptions dictionary
pub(all) struct IDBTransactionOptions {
  durability : IDBTransactionDurability?
}

///|
/// Create a new IDBTransactionOptions with default values
pub fn IDBTransactionOptions::default() -> IDBTransactionOptions {
  IDBTransactionOptions::{ durability: None }
}

///|
extern "js" fn IDBTransactionOptions::to_js_ffi(
  self : IDBTransactionOptions,
) -> JsValue =
  #| (self) => ({
  #|   durability: ((() => { const v = self.durability; if (v === undefined) return undefined; return ['default', 'strict', 'relaxed'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn IDBTransactionOptions::to_js(self : IDBTransactionOptions) -> JsValue {
  IDBTransactionOptions::to_js_ffi(self)
}

///|
extern "js" fn IDBTransactionOptions::from_js_ffi(
  value : JsValue,
) -> IDBTransactionOptions =
  #| (v) => ({
  #|   durability: (v.durability === undefined ? undefined : ['default', 'strict', 'relaxed'].indexOf(v.durability))
  #| })

///|
/// Convert from JsValue
pub fn IDBTransactionOptions::from_js(value : JsValue) -> IDBTransactionOptions {
  IDBTransactionOptions::from_js_ffi(value)
}

///|
/// IDBObjectStoreParameters dictionary
pub(all) struct IDBObjectStoreParameters {
  keyPath : StringOrArrayOfString?
  autoIncrement : Bool?
}

///|
/// Create a new IDBObjectStoreParameters with default values
pub fn IDBObjectStoreParameters::default() -> IDBObjectStoreParameters {
  IDBObjectStoreParameters::{ keyPath: None, autoIncrement: None }
}

///|
extern "js" fn IDBObjectStoreParameters::to_js_ffi(
  self : IDBObjectStoreParameters,
) -> JsValue =
  #| (self) => ({
  #|   keyPath: ((() => { const v = self.keyPath; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   autoIncrement: (self.autoIncrement === -1 ? undefined : self.autoIncrement)
  #| })

///|
/// Convert to JsValue
pub fn IDBObjectStoreParameters::to_js(
  self : IDBObjectStoreParameters,
) -> JsValue {
  IDBObjectStoreParameters::to_js_ffi(self)
}

///|
extern "js" fn IDBObjectStoreParameters::from_js_ffi(
  value : JsValue,
) -> IDBObjectStoreParameters =
  #| (v) => ({
  #|   keyPath: (v.keyPath === undefined ? { $tag: 0 } : { $tag: 1, _0: v.keyPath }),
  #|   autoIncrement: (v.autoIncrement === undefined ? -1 : v.autoIncrement)
  #| })

///|
/// Convert from JsValue
pub fn IDBObjectStoreParameters::from_js(
  value : JsValue,
) -> IDBObjectStoreParameters {
  IDBObjectStoreParameters::from_js_ffi(value)
}

///|
/// IDBIndexParameters dictionary
pub(all) struct IDBIndexParameters {
  unique : Bool?
  multiEntry : Bool?
}

///|
/// Create a new IDBIndexParameters with default values
pub fn IDBIndexParameters::default() -> IDBIndexParameters {
  IDBIndexParameters::{ unique: None, multiEntry: None }
}

///|
extern "js" fn IDBIndexParameters::to_js_ffi(
  self : IDBIndexParameters,
) -> JsValue =
  #| (self) => ({
  #|   unique: (self.unique === -1 ? undefined : self.unique),
  #|   multiEntry: (self.multiEntry === -1 ? undefined : self.multiEntry)
  #| })

///|
/// Convert to JsValue
pub fn IDBIndexParameters::to_js(self : IDBIndexParameters) -> JsValue {
  IDBIndexParameters::to_js_ffi(self)
}

///|
extern "js" fn IDBIndexParameters::from_js_ffi(
  value : JsValue,
) -> IDBIndexParameters =
  #| (v) => ({
  #|   unique: (v.unique === undefined ? -1 : v.unique),
  #|   multiEntry: (v.multiEntry === undefined ? -1 : v.multiEntry)
  #| })

///|
/// Convert from JsValue
pub fn IDBIndexParameters::from_js(value : JsValue) -> IDBIndexParameters {
  IDBIndexParameters::from_js_ffi(value)
}

///|
/// IDBGetAllOptions dictionary
pub(all) struct IDBGetAllOptions {
  query : JsValue?
  count : Int?
  direction : IDBCursorDirection?
}

///|
/// Create a new IDBGetAllOptions with default values
pub fn IDBGetAllOptions::default() -> IDBGetAllOptions {
  IDBGetAllOptions::{ query: None, count: None, direction: None }
}

///|
extern "js" fn IDBGetAllOptions::to_js_ffi(self : IDBGetAllOptions) -> JsValue =
  #| (self) => ({
  #|   query: ((() => { const v = self.query; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   count: self.count,
  #|   direction: ((() => { const v = self.direction; if (v === undefined) return undefined; return ['next', 'nextunique', 'prev', 'prevunique'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn IDBGetAllOptions::to_js(self : IDBGetAllOptions) -> JsValue {
  IDBGetAllOptions::to_js_ffi(self)
}

///|
extern "js" fn IDBGetAllOptions::from_js_ffi(
  value : JsValue,
) -> IDBGetAllOptions =
  #| (v) => ({
  #|   query: (v.query === undefined ? { $tag: 0 } : { $tag: 1, _0: v.query }),
  #|   count: v.count,
  #|   direction: (v.direction === undefined ? undefined : ['next', 'nextunique', 'prev', 'prevunique'].indexOf(v.direction))
  #| })

///|
/// Convert from JsValue
pub fn IDBGetAllOptions::from_js(value : JsValue) -> IDBGetAllOptions {
  IDBGetAllOptions::from_js_ffi(value)
}

///|
/// IDBRequest interface
pub type IDBRequest

///|
pub extern "js" fn IDBRequest::to_js_value(self : IDBRequest) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to IDBRequest (unchecked)
pub extern "js" fn IDBRequest::from_js_value(v : JsValue) -> IDBRequest =
  #| (v) => v

///|
/// Safely cast JsValue to IDBRequest (checked with instanceof)
pub extern "js" fn IDBRequest::from_js_value_opt(v : JsValue) -> IDBRequest? =
  #| (v) => (v instanceof IDBRequest) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to IDBRequest (checked with instanceof)
pub extern "js" fn JsValue::as_idb_request(self : JsValue) -> IDBRequest? =
  #| (self) => (self instanceof IDBRequest) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to IDBRequest (unchecked)
pub extern "js" fn JsValue::to_idb_request(self : JsValue) -> IDBRequest =
  #| (self) => self

///|
pub extern "js" fn IDBRequest::to_event_target(
  self : IDBRequest,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn IDBRequest::as_idb_open_db_request(
  self : IDBRequest,
) -> IDBOpenDBRequest? =
  #| (self) => (self instanceof IDBOpenDBRequest) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn IDBRequest::get_result(self : IDBRequest) -> JsValue =
  #| (self) => self.result

///|
pub extern "js" fn IDBRequest::get_error(self : IDBRequest) -> DOMException? =
  #| (self) => (() => { const v = self.error; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn IDBRequest::get_source(
  self : IDBRequest,
) -> IDBObjectStoreOrIDBIndexOrIDBCursor =
  #| (self) => self.source

///|
pub extern "js" fn IDBRequest::get_transaction(
  self : IDBRequest,
) -> IDBTransaction? =
  #| (self) => (() => { const v = self.transaction; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn IDBRequest::get_ready_state(
  self : IDBRequest,
) -> IDBRequestReadyState =
  #| (self) => ['pending', 'done'].indexOf(self.readyState)

///|
pub extern "js" fn IDBRequest::set_onsuccess(
  self : IDBRequest,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onsuccess = (e) => handler(e) }

///|
pub extern "js" fn IDBRequest::clear_onsuccess(self : IDBRequest) -> Unit =
  #| (self) => { self.onsuccess = null }

///|
pub extern "js" fn IDBRequest::set_onerror(
  self : IDBRequest,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onerror = (e) => handler(e) }

///|
pub extern "js" fn IDBRequest::clear_onerror(self : IDBRequest) -> Unit =
  #| (self) => { self.onerror = null }

///|
/// IDBOpenDBRequest interface
pub type IDBOpenDBRequest

///|
pub extern "js" fn IDBOpenDBRequest::to_js_value(
  self : IDBOpenDBRequest,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to IDBOpenDBRequest (unchecked)
pub extern "js" fn IDBOpenDBRequest::from_js_value(
  v : JsValue,
) -> IDBOpenDBRequest =
  #| (v) => v

///|
/// Safely cast JsValue to IDBOpenDBRequest (checked with instanceof)
pub extern "js" fn IDBOpenDBRequest::from_js_value_opt(
  v : JsValue,
) -> IDBOpenDBRequest? =
  #| (v) => (v instanceof IDBOpenDBRequest) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to IDBOpenDBRequest (checked with instanceof)
pub extern "js" fn JsValue::as_idb_open_db_request(
  self : JsValue,
) -> IDBOpenDBRequest? =
  #| (self) => (self instanceof IDBOpenDBRequest) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to IDBOpenDBRequest (unchecked)
pub extern "js" fn JsValue::to_idb_open_db_request(
  self : JsValue,
) -> IDBOpenDBRequest =
  #| (self) => self

///|
pub extern "js" fn IDBOpenDBRequest::to_idb_request(
  self : IDBOpenDBRequest,
) -> IDBRequest =
  #| (self) => self

///|
pub extern "js" fn IDBOpenDBRequest::to_event_target(
  self : IDBOpenDBRequest,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn IDBOpenDBRequest::set_onblocked(
  self : IDBOpenDBRequest,
  handler : (IDBVersionChangeEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onblocked = (e) => handler(e) }

///|
pub extern "js" fn IDBOpenDBRequest::clear_onblocked(
  self : IDBOpenDBRequest,
) -> Unit =
  #| (self) => { self.onblocked = null }

///|
pub extern "js" fn IDBOpenDBRequest::set_onupgradeneeded(
  self : IDBOpenDBRequest,
  handler : (IDBVersionChangeEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onupgradeneeded = (e) => handler(e) }

///|
pub extern "js" fn IDBOpenDBRequest::clear_onupgradeneeded(
  self : IDBOpenDBRequest,
) -> Unit =
  #| (self) => { self.onupgradeneeded = null }

///|
/// IDBVersionChangeEvent interface
pub type IDBVersionChangeEvent

///|
pub extern "js" fn IDBVersionChangeEvent::to_js_value(
  self : IDBVersionChangeEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to IDBVersionChangeEvent (unchecked)
pub extern "js" fn IDBVersionChangeEvent::from_js_value(
  v : JsValue,
) -> IDBVersionChangeEvent =
  #| (v) => v

///|
/// Safely cast JsValue to IDBVersionChangeEvent (checked with instanceof)
pub extern "js" fn IDBVersionChangeEvent::from_js_value_opt(
  v : JsValue,
) -> IDBVersionChangeEvent? =
  #| (v) => (v instanceof IDBVersionChangeEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to IDBVersionChangeEvent (checked with instanceof)
pub extern "js" fn JsValue::as_idb_version_change_event(
  self : JsValue,
) -> IDBVersionChangeEvent? =
  #| (self) => (self instanceof IDBVersionChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to IDBVersionChangeEvent (unchecked)
pub extern "js" fn JsValue::to_idb_version_change_event(
  self : JsValue,
) -> IDBVersionChangeEvent =
  #| (self) => self

///|
pub extern "js" fn IDBVersionChangeEvent::to_event(
  self : IDBVersionChangeEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn IDBVersionChangeEvent::new(
  type_ : String,
) -> IDBVersionChangeEvent =
  #| (type_) => new IDBVersionChangeEvent(type_)

///|
extern "js" fn IDBVersionChangeEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> IDBVersionChangeEvent =
  #| (type_, event_init_dict) => new IDBVersionChangeEvent(type_, event_init_dict)

///|
pub fn IDBVersionChangeEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : IDBVersionChangeEventInit,
) -> IDBVersionChangeEvent {
  IDBVersionChangeEvent::new_with_event_init_dict_ffi(
    type_,
    event_init_dict.to_js(),
  )
}

///|
pub extern "js" fn IDBVersionChangeEvent::get_old_version(
  self : IDBVersionChangeEvent,
) -> Int64 =
  #| (self) => (() => { const n = self.oldVersion; return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

///|
pub extern "js" fn IDBVersionChangeEvent::get_new_version(
  self : IDBVersionChangeEvent,
) -> Int64? =
  #| (self) => (() => { const v = self.newVersion; if (v == null) return undefined; const n = v; return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

///|
/// IDBFactory interface
pub type IDBFactory

///|
pub extern "js" fn IDBFactory::to_js_value(self : IDBFactory) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to IDBFactory (unchecked)
pub extern "js" fn IDBFactory::from_js_value(v : JsValue) -> IDBFactory =
  #| (v) => v

///|
/// Safely cast JsValue to IDBFactory (checked with instanceof)
pub extern "js" fn IDBFactory::from_js_value_opt(v : JsValue) -> IDBFactory? =
  #| (v) => (v instanceof IDBFactory) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to IDBFactory (checked with instanceof)
pub extern "js" fn JsValue::as_idb_factory(self : JsValue) -> IDBFactory? =
  #| (self) => (self instanceof IDBFactory) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to IDBFactory (unchecked)
pub extern "js" fn JsValue::to_idb_factory(self : JsValue) -> IDBFactory =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum IDBFactoryOpenError {
  TypeError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBFactoryDatabasesError {
  UnknownError(JsError)
  SecurityError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBFactoryCmpError {
  DataError(JsError)
  OtherError(JsError)
} derive(Show)

///|
pub extern "js" fn IDBFactory::open(
  self : IDBFactory,
  name : String,
) -> Result[IDBOpenDBRequest, IDBFactoryOpenError] =
  #| (self, name) => (() => { try { return { $tag: 1, _0: self.open(name) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBFactory::open_with_version(
  self : IDBFactory,
  name : String,
  version : Int64,
) -> Result[IDBOpenDBRequest, IDBFactoryOpenError] =
  #| (self, name, version) => (() => { try { return { $tag: 1, _0: self.open(name, (version.hi * 4294967296 + version.lo)) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBFactory::delete_database(
  self : IDBFactory,
  name : String,
) -> IDBOpenDBRequest =
  #| (self, name) => self.deleteDatabase(name)

///|
pub extern "js" fn IDBFactory::databases(
  self : IDBFactory,
) -> Promise[Result[Array[IDBDatabaseInfo], IDBFactoryDatabasesError]] =
  #| (self) => self.databases().then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'UnknownError') return { $tag: 0, _0: e }; if (n === 'SecurityError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }))

///|
pub extern "js" fn IDBFactory::cmp(
  self : IDBFactory,
  first : JsValue,
  second : JsValue,
) -> Result[Int, IDBFactoryCmpError] =
  #| (self, first, second) => (() => { try { return { $tag: 1, _0: self.cmp(first, second) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
/// IDBDatabase interface
pub type IDBDatabase

///|
pub extern "js" fn IDBDatabase::to_js_value(self : IDBDatabase) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to IDBDatabase (unchecked)
pub extern "js" fn IDBDatabase::from_js_value(v : JsValue) -> IDBDatabase =
  #| (v) => v

///|
/// Safely cast JsValue to IDBDatabase (checked with instanceof)
pub extern "js" fn IDBDatabase::from_js_value_opt(v : JsValue) -> IDBDatabase? =
  #| (v) => (v instanceof IDBDatabase) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to IDBDatabase (checked with instanceof)
pub extern "js" fn JsValue::as_idb_database(self : JsValue) -> IDBDatabase? =
  #| (self) => (self instanceof IDBDatabase) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to IDBDatabase (unchecked)
pub extern "js" fn JsValue::to_idb_database(self : JsValue) -> IDBDatabase =
  #| (self) => self

///|
pub extern "js" fn IDBDatabase::to_event_target(
  self : IDBDatabase,
) -> EventTarget =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum IDBDatabaseTransactionError {
  TypeError(JsError)
  NotFoundError(JsError)
  InvalidStateError(JsError)
  InvalidAccessError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBDatabaseCreateObjectStoreError {
  SyntaxError(JsError)
  ConstraintError(JsError)
  InvalidStateError(JsError)
  InvalidAccessError(JsError)
  TransactionInactiveError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBDatabaseDeleteObjectStoreError {
  NotFoundError(JsError)
  InvalidStateError(JsError)
  TransactionInactiveError(JsError)
  OtherError(JsError)
} derive(Show)

///|
pub extern "js" fn IDBDatabase::get_name(self : IDBDatabase) -> String =
  #| (self) => self.name

///|
pub extern "js" fn IDBDatabase::get_version(self : IDBDatabase) -> Int64 =
  #| (self) => (() => { const n = self.version; return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

///|
pub extern "js" fn IDBDatabase::get_object_store_names(
  self : IDBDatabase,
) -> DOMStringList =
  #| (self) => self.objectStoreNames

///|
pub extern "js" fn IDBDatabase::transaction(
  self : IDBDatabase,
  store_names : StringOrArrayOfString,
) -> Result[IDBTransaction, IDBDatabaseTransactionError] =
  #| (self, store_names) => (() => { try { return { $tag: 1, _0: self.transaction(store_names) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'NotFoundError') return { $tag: 1, _0: e }; if (n === 'InvalidStateError') return { $tag: 2, _0: e }; if (n === 'InvalidAccessError') return { $tag: 3, _0: e }; return { $tag: 4, _0: e }; })() }; } })()

///|
extern "js" fn IDBDatabase::transaction_with_options_ffi(
  self : IDBDatabase,
  store_names : StringOrArrayOfString,
  mode : IDBTransactionMode,
  options : JsValue,
) -> Result[IDBTransaction, IDBDatabaseTransactionError] =
  #| (self, store_names, mode, options) => (() => { try { return { $tag: 1, _0: self.transaction(store_names, ['readonly', 'readwrite', 'versionchange'][mode], options) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'NotFoundError') return { $tag: 1, _0: e }; if (n === 'InvalidStateError') return { $tag: 2, _0: e }; if (n === 'InvalidAccessError') return { $tag: 3, _0: e }; return { $tag: 4, _0: e }; })() }; } })()

///|
pub fn IDBDatabase::transaction_with_options(
  self : IDBDatabase,
  store_names : StringOrArrayOfString,
  mode : IDBTransactionMode,
  options : IDBTransactionOptions,
) -> Result[IDBTransaction, IDBDatabaseTransactionError] {
  IDBDatabase::transaction_with_options_ffi(
    self,
    store_names,
    mode,
    options.to_js(),
  )
}

///|
pub extern "js" fn IDBDatabase::close(self : IDBDatabase) -> Unit =
  #| (self) => self.close()

///|
pub extern "js" fn IDBDatabase::create_object_store(
  self : IDBDatabase,
  name : String,
) -> Result[IDBObjectStore, IDBDatabaseCreateObjectStoreError] =
  #| (self, name) => (() => { try { return { $tag: 1, _0: self.createObjectStore(name) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'SyntaxError') return { $tag: 0, _0: e }; if (n === 'ConstraintError') return { $tag: 1, _0: e }; if (n === 'InvalidStateError') return { $tag: 2, _0: e }; if (n === 'InvalidAccessError') return { $tag: 3, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 4, _0: e }; return { $tag: 5, _0: e }; })() }; } })()

///|
extern "js" fn IDBDatabase::create_object_store_with_options_ffi(
  self : IDBDatabase,
  name : String,
  options : JsValue,
) -> Result[IDBObjectStore, IDBDatabaseCreateObjectStoreError] =
  #| (self, name, options) => (() => { try { return { $tag: 1, _0: self.createObjectStore(name, options) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'SyntaxError') return { $tag: 0, _0: e }; if (n === 'ConstraintError') return { $tag: 1, _0: e }; if (n === 'InvalidStateError') return { $tag: 2, _0: e }; if (n === 'InvalidAccessError') return { $tag: 3, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 4, _0: e }; return { $tag: 5, _0: e }; })() }; } })()

///|
pub fn IDBDatabase::create_object_store_with_options(
  self : IDBDatabase,
  name : String,
  options : IDBObjectStoreParameters,
) -> Result[IDBObjectStore, IDBDatabaseCreateObjectStoreError] {
  IDBDatabase::create_object_store_with_options_ffi(self, name, options.to_js())
}

///|
pub extern "js" fn IDBDatabase::delete_object_store(
  self : IDBDatabase,
  name : String,
) -> Result[Unit, IDBDatabaseDeleteObjectStoreError] =
  #| (self, name) => (() => { try { self.deleteObjectStore(name); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NotFoundError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBDatabase::set_onabort(
  self : IDBDatabase,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onabort = (e) => handler(e) }

///|
pub extern "js" fn IDBDatabase::clear_onabort(self : IDBDatabase) -> Unit =
  #| (self) => { self.onabort = null }

///|
pub extern "js" fn IDBDatabase::set_onclose(
  self : IDBDatabase,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onclose = (e) => handler(e) }

///|
pub extern "js" fn IDBDatabase::clear_onclose(self : IDBDatabase) -> Unit =
  #| (self) => { self.onclose = null }

///|
pub extern "js" fn IDBDatabase::set_onerror(
  self : IDBDatabase,
  handler : (ErrorEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onerror = (e) => handler(e) }

///|
pub extern "js" fn IDBDatabase::clear_onerror(self : IDBDatabase) -> Unit =
  #| (self) => { self.onerror = null }

///|
pub extern "js" fn IDBDatabase::set_onversionchange(
  self : IDBDatabase,
  handler : (IDBVersionChangeEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onversionchange = (e) => handler(e) }

///|
pub extern "js" fn IDBDatabase::clear_onversionchange(
  self : IDBDatabase,
) -> Unit =
  #| (self) => { self.onversionchange = null }

///|
/// IDBObjectStore interface
pub type IDBObjectStore

///|
pub extern "js" fn IDBObjectStore::to_js_value(
  self : IDBObjectStore,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to IDBObjectStore (unchecked)
pub extern "js" fn IDBObjectStore::from_js_value(v : JsValue) -> IDBObjectStore =
  #| (v) => v

///|
/// Safely cast JsValue to IDBObjectStore (checked with instanceof)
pub extern "js" fn IDBObjectStore::from_js_value_opt(
  v : JsValue,
) -> IDBObjectStore? =
  #| (v) => (v instanceof IDBObjectStore) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to IDBObjectStore (checked with instanceof)
pub extern "js" fn JsValue::as_idb_object_store(
  self : JsValue,
) -> IDBObjectStore? =
  #| (self) => (self instanceof IDBObjectStore) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to IDBObjectStore (unchecked)
pub extern "js" fn JsValue::to_idb_object_store(
  self : JsValue,
) -> IDBObjectStore =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum IDBObjectStoreSetNameError {
  ConstraintError(JsError)
  InvalidStateError(JsError)
  TransactionInactiveError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBObjectStorePutError {
  DataError(JsError)
  ReadOnlyError(JsError)
  DataCloneError(JsError)
  InvalidStateError(JsError)
  TransactionInactiveError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBObjectStoreAddError {
  DataError(JsError)
  ReadOnlyError(JsError)
  DataCloneError(JsError)
  ConstraintError(JsError)
  InvalidStateError(JsError)
  TransactionInactiveError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBObjectStoreDeleteError {
  DataError(JsError)
  ReadOnlyError(JsError)
  InvalidStateError(JsError)
  TransactionInactiveError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBObjectStoreClearError {
  ReadOnlyError(JsError)
  InvalidStateError(JsError)
  TransactionInactiveError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBObjectStoreGetError {
  DataError(JsError)
  InvalidStateError(JsError)
  TransactionInactiveError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBObjectStoreGetKeyError {
  DataError(JsError)
  InvalidStateError(JsError)
  TransactionInactiveError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBObjectStoreGetAllError {
  DataError(JsError)
  TypeError(JsError)
  InvalidStateError(JsError)
  TransactionInactiveError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBObjectStoreGetAllKeysError {
  DataError(JsError)
  TypeError(JsError)
  InvalidStateError(JsError)
  TransactionInactiveError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBObjectStoreGetAllRecordsError {
  TypeError(JsError)
  InvalidStateError(JsError)
  TransactionInactiveError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBObjectStoreCountError {
  DataError(JsError)
  InvalidStateError(JsError)
  TransactionInactiveError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBObjectStoreOpenCursorError {
  DataError(JsError)
  InvalidStateError(JsError)
  TransactionInactiveError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBObjectStoreOpenKeyCursorError {
  DataError(JsError)
  InvalidStateError(JsError)
  TransactionInactiveError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBObjectStoreIndexError {
  NotFoundError(JsError)
  InvalidStateError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBObjectStoreCreateIndexError {
  SyntaxError(JsError)
  ConstraintError(JsError)
  InvalidStateError(JsError)
  InvalidAccessError(JsError)
  TransactionInactiveError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBObjectStoreDeleteIndexError {
  NotFoundError(JsError)
  InvalidStateError(JsError)
  TransactionInactiveError(JsError)
  OtherError(JsError)
} derive(Show)

///|
pub extern "js" fn IDBObjectStore::get_name(self : IDBObjectStore) -> String =
  #| (self) => self.name

///|
pub extern "js" fn IDBObjectStore::set_name(
  self : IDBObjectStore,
  value : String,
) -> Result[Unit, IDBObjectStoreSetNameError] =
  #| (self, value) => (() => { try { self.name = value; return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'ConstraintError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBObjectStore::get_key_path(
  self : IDBObjectStore,
) -> JsValue =
  #| (self) => self.keyPath

///|
pub extern "js" fn IDBObjectStore::get_index_names(
  self : IDBObjectStore,
) -> DOMStringList =
  #| (self) => self.indexNames

///|
pub extern "js" fn IDBObjectStore::get_transaction(
  self : IDBObjectStore,
) -> IDBTransaction =
  #| (self) => self.transaction

///|
pub extern "js" fn IDBObjectStore::get_auto_increment(
  self : IDBObjectStore,
) -> Bool =
  #| (self) => self.autoIncrement

///|
pub extern "js" fn IDBObjectStore::put(
  self : IDBObjectStore,
  value : JsValue,
) -> Result[IDBRequest, IDBObjectStorePutError] =
  #| (self, value) => (() => { try { return { $tag: 1, _0: self.put(value) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; if (n === 'ReadOnlyError') return { $tag: 1, _0: e }; if (n === 'DataCloneError') return { $tag: 2, _0: e }; if (n === 'InvalidStateError') return { $tag: 3, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 4, _0: e }; return { $tag: 5, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBObjectStore::put_with_key(
  self : IDBObjectStore,
  value : JsValue,
  key : JsValue,
) -> Result[IDBRequest, IDBObjectStorePutError] =
  #| (self, value, key) => (() => { try { return { $tag: 1, _0: self.put(value, key) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; if (n === 'ReadOnlyError') return { $tag: 1, _0: e }; if (n === 'DataCloneError') return { $tag: 2, _0: e }; if (n === 'InvalidStateError') return { $tag: 3, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 4, _0: e }; return { $tag: 5, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBObjectStore::add(
  self : IDBObjectStore,
  value : JsValue,
) -> Result[IDBRequest, IDBObjectStoreAddError] =
  #| (self, value) => (() => { try { return { $tag: 1, _0: self.add(value) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; if (n === 'ReadOnlyError') return { $tag: 1, _0: e }; if (n === 'DataCloneError') return { $tag: 2, _0: e }; if (n === 'ConstraintError') return { $tag: 3, _0: e }; if (n === 'InvalidStateError') return { $tag: 4, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 5, _0: e }; return { $tag: 6, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBObjectStore::add_with_key(
  self : IDBObjectStore,
  value : JsValue,
  key : JsValue,
) -> Result[IDBRequest, IDBObjectStoreAddError] =
  #| (self, value, key) => (() => { try { return { $tag: 1, _0: self.add(value, key) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; if (n === 'ReadOnlyError') return { $tag: 1, _0: e }; if (n === 'DataCloneError') return { $tag: 2, _0: e }; if (n === 'ConstraintError') return { $tag: 3, _0: e }; if (n === 'InvalidStateError') return { $tag: 4, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 5, _0: e }; return { $tag: 6, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBObjectStore::delete(
  self : IDBObjectStore,
  query : JsValue,
) -> Result[IDBRequest, IDBObjectStoreDeleteError] =
  #| (self, query) => (() => { try { return { $tag: 1, _0: self.delete(query) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; if (n === 'ReadOnlyError') return { $tag: 1, _0: e }; if (n === 'InvalidStateError') return { $tag: 2, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 3, _0: e }; return { $tag: 4, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBObjectStore::clear(
  self : IDBObjectStore,
) -> Result[IDBRequest, IDBObjectStoreClearError] =
  #| (self) => (() => { try { return { $tag: 1, _0: self.clear() }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'ReadOnlyError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBObjectStore::get(
  self : IDBObjectStore,
  query : JsValue,
) -> Result[IDBRequest, IDBObjectStoreGetError] =
  #| (self, query) => (() => { try { return { $tag: 1, _0: self.get(query) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBObjectStore::get_key(
  self : IDBObjectStore,
  query : JsValue,
) -> Result[IDBRequest, IDBObjectStoreGetKeyError] =
  #| (self, query) => (() => { try { return { $tag: 1, _0: self.getKey(query) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBObjectStore::get_all(
  self : IDBObjectStore,
) -> Result[IDBRequest, IDBObjectStoreGetAllError] =
  #| (self) => (() => { try { return { $tag: 1, _0: self.getAll() }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; if (n === 'TypeError') return { $tag: 1, _0: e }; if (n === 'InvalidStateError') return { $tag: 2, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 3, _0: e }; return { $tag: 4, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBObjectStore::get_all_with_count(
  self : IDBObjectStore,
  query_or_options : JsValue,
  count : Int,
) -> Result[IDBRequest, IDBObjectStoreGetAllError] =
  #| (self, query_or_options, count) => (() => { try { return { $tag: 1, _0: self.getAll(query_or_options, count) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; if (n === 'TypeError') return { $tag: 1, _0: e }; if (n === 'InvalidStateError') return { $tag: 2, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 3, _0: e }; return { $tag: 4, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBObjectStore::get_all_keys(
  self : IDBObjectStore,
) -> Result[IDBRequest, IDBObjectStoreGetAllKeysError] =
  #| (self) => (() => { try { return { $tag: 1, _0: self.getAllKeys() }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; if (n === 'TypeError') return { $tag: 1, _0: e }; if (n === 'InvalidStateError') return { $tag: 2, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 3, _0: e }; return { $tag: 4, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBObjectStore::get_all_keys_with_count(
  self : IDBObjectStore,
  query_or_options : JsValue,
  count : Int,
) -> Result[IDBRequest, IDBObjectStoreGetAllKeysError] =
  #| (self, query_or_options, count) => (() => { try { return { $tag: 1, _0: self.getAllKeys(query_or_options, count) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; if (n === 'TypeError') return { $tag: 1, _0: e }; if (n === 'InvalidStateError') return { $tag: 2, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 3, _0: e }; return { $tag: 4, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBObjectStore::get_all_records(
  self : IDBObjectStore,
) -> Result[IDBRequest, IDBObjectStoreGetAllRecordsError] =
  #| (self) => (() => { try { return { $tag: 1, _0: self.getAllRecords() }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }; } })()

///|
extern "js" fn IDBObjectStore::get_all_records_with_options_ffi(
  self : IDBObjectStore,
  options : JsValue,
) -> Result[IDBRequest, IDBObjectStoreGetAllRecordsError] =
  #| (self, options) => (() => { try { return { $tag: 1, _0: self.getAllRecords(options) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }; } })()

///|
pub fn IDBObjectStore::get_all_records_with_options(
  self : IDBObjectStore,
  options : IDBGetAllOptions,
) -> Result[IDBRequest, IDBObjectStoreGetAllRecordsError] {
  IDBObjectStore::get_all_records_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn IDBObjectStore::count(
  self : IDBObjectStore,
) -> Result[IDBRequest, IDBObjectStoreCountError] =
  #| (self) => (() => { try { return { $tag: 1, _0: self.count() }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBObjectStore::count_with_query(
  self : IDBObjectStore,
  query : JsValue,
) -> Result[IDBRequest, IDBObjectStoreCountError] =
  #| (self, query) => (() => { try { return { $tag: 1, _0: self.count(query) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBObjectStore::open_cursor(
  self : IDBObjectStore,
) -> Result[IDBRequest, IDBObjectStoreOpenCursorError] =
  #| (self) => (() => { try { return { $tag: 1, _0: self.openCursor() }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBObjectStore::open_cursor_with_direction(
  self : IDBObjectStore,
  query : JsValue,
  direction : IDBCursorDirection,
) -> Result[IDBRequest, IDBObjectStoreOpenCursorError] =
  #| (self, query, direction) => (() => { try { return { $tag: 1, _0: self.openCursor(query, ['next', 'nextunique', 'prev', 'prevunique'][direction]) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBObjectStore::open_key_cursor(
  self : IDBObjectStore,
) -> Result[IDBRequest, IDBObjectStoreOpenKeyCursorError] =
  #| (self) => (() => { try { return { $tag: 1, _0: self.openKeyCursor() }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBObjectStore::open_key_cursor_with_direction(
  self : IDBObjectStore,
  query : JsValue,
  direction : IDBCursorDirection,
) -> Result[IDBRequest, IDBObjectStoreOpenKeyCursorError] =
  #| (self, query, direction) => (() => { try { return { $tag: 1, _0: self.openKeyCursor(query, ['next', 'nextunique', 'prev', 'prevunique'][direction]) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBObjectStore::index(
  self : IDBObjectStore,
  name : String,
) -> Result[IDBIndex, IDBObjectStoreIndexError] =
  #| (self, name) => (() => { try { return { $tag: 1, _0: self.index(name) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NotFoundError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBObjectStore::create_index(
  self : IDBObjectStore,
  name : String,
  key_path : StringOrArrayOfString,
) -> Result[IDBIndex, IDBObjectStoreCreateIndexError] =
  #| (self, name, key_path) => (() => { try { return { $tag: 1, _0: self.createIndex(name, key_path) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'SyntaxError') return { $tag: 0, _0: e }; if (n === 'ConstraintError') return { $tag: 1, _0: e }; if (n === 'InvalidStateError') return { $tag: 2, _0: e }; if (n === 'InvalidAccessError') return { $tag: 3, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 4, _0: e }; return { $tag: 5, _0: e }; })() }; } })()

///|
extern "js" fn IDBObjectStore::create_index_with_options_ffi(
  self : IDBObjectStore,
  name : String,
  key_path : StringOrArrayOfString,
  options : JsValue,
) -> Result[IDBIndex, IDBObjectStoreCreateIndexError] =
  #| (self, name, key_path, options) => (() => { try { return { $tag: 1, _0: self.createIndex(name, key_path, options) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'SyntaxError') return { $tag: 0, _0: e }; if (n === 'ConstraintError') return { $tag: 1, _0: e }; if (n === 'InvalidStateError') return { $tag: 2, _0: e }; if (n === 'InvalidAccessError') return { $tag: 3, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 4, _0: e }; return { $tag: 5, _0: e }; })() }; } })()

///|
pub fn IDBObjectStore::create_index_with_options(
  self : IDBObjectStore,
  name : String,
  key_path : StringOrArrayOfString,
  options : IDBIndexParameters,
) -> Result[IDBIndex, IDBObjectStoreCreateIndexError] {
  IDBObjectStore::create_index_with_options_ffi(
    self,
    name,
    key_path,
    options.to_js(),
  )
}

///|
pub extern "js" fn IDBObjectStore::delete_index(
  self : IDBObjectStore,
  name : String,
) -> Result[Unit, IDBObjectStoreDeleteIndexError] =
  #| (self, name) => (() => { try { self.deleteIndex(name); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NotFoundError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }; } })()

///|
/// IDBIndex interface
pub type IDBIndex

///|
pub extern "js" fn IDBIndex::to_js_value(self : IDBIndex) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to IDBIndex (unchecked)
pub extern "js" fn IDBIndex::from_js_value(v : JsValue) -> IDBIndex =
  #| (v) => v

///|
/// Safely cast JsValue to IDBIndex (checked with instanceof)
pub extern "js" fn IDBIndex::from_js_value_opt(v : JsValue) -> IDBIndex? =
  #| (v) => (v instanceof IDBIndex) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to IDBIndex (checked with instanceof)
pub extern "js" fn JsValue::as_idb_index(self : JsValue) -> IDBIndex? =
  #| (self) => (self instanceof IDBIndex) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to IDBIndex (unchecked)
pub extern "js" fn JsValue::to_idb_index(self : JsValue) -> IDBIndex =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum IDBIndexSetNameError {
  ConstraintError(JsError)
  InvalidStateError(JsError)
  TransactionInactiveError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBIndexGetError {
  DataError(JsError)
  InvalidStateError(JsError)
  TransactionInactiveError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBIndexGetKeyError {
  DataError(JsError)
  InvalidStateError(JsError)
  TransactionInactiveError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBIndexGetAllError {
  TypeError(JsError)
  InvalidStateError(JsError)
  TransactionInactiveError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBIndexGetAllKeysError {
  TypeError(JsError)
  InvalidStateError(JsError)
  TransactionInactiveError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBIndexGetAllRecordsError {
  TypeError(JsError)
  InvalidStateError(JsError)
  TransactionInactiveError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBIndexCountError {
  DataError(JsError)
  InvalidStateError(JsError)
  TransactionInactiveError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBIndexOpenCursorError {
  DataError(JsError)
  TypeError(JsError)
  InvalidStateError(JsError)
  TransactionInactiveError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBIndexOpenKeyCursorError {
  DataError(JsError)
  TypeError(JsError)
  InvalidStateError(JsError)
  TransactionInactiveError(JsError)
  OtherError(JsError)
} derive(Show)

///|
pub extern "js" fn IDBIndex::get_name(self : IDBIndex) -> String =
  #| (self) => self.name

///|
pub extern "js" fn IDBIndex::set_name(
  self : IDBIndex,
  value : String,
) -> Result[Unit, IDBIndexSetNameError] =
  #| (self, value) => (() => { try { self.name = value; return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'ConstraintError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBIndex::get_object_store(
  self : IDBIndex,
) -> IDBObjectStore =
  #| (self) => self.objectStore

///|
pub extern "js" fn IDBIndex::get_key_path(self : IDBIndex) -> JsValue =
  #| (self) => self.keyPath

///|
pub extern "js" fn IDBIndex::get_multi_entry(self : IDBIndex) -> Bool =
  #| (self) => self.multiEntry

///|
pub extern "js" fn IDBIndex::get_unique(self : IDBIndex) -> Bool =
  #| (self) => self.unique

///|
pub extern "js" fn IDBIndex::get(
  self : IDBIndex,
  query : JsValue,
) -> Result[IDBRequest, IDBIndexGetError] =
  #| (self, query) => (() => { try { return { $tag: 1, _0: self.get(query) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBIndex::get_key(
  self : IDBIndex,
  query : JsValue,
) -> Result[IDBRequest, IDBIndexGetKeyError] =
  #| (self, query) => (() => { try { return { $tag: 1, _0: self.getKey(query) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBIndex::get_all(
  self : IDBIndex,
) -> Result[IDBRequest, IDBIndexGetAllError] =
  #| (self) => (() => { try { return { $tag: 1, _0: self.getAll() }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBIndex::get_all_with_count(
  self : IDBIndex,
  query_or_options : JsValue,
  count : Int,
) -> Result[IDBRequest, IDBIndexGetAllError] =
  #| (self, query_or_options, count) => (() => { try { return { $tag: 1, _0: self.getAll(query_or_options, count) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBIndex::get_all_keys(
  self : IDBIndex,
) -> Result[IDBRequest, IDBIndexGetAllKeysError] =
  #| (self) => (() => { try { return { $tag: 1, _0: self.getAllKeys() }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBIndex::get_all_keys_with_count(
  self : IDBIndex,
  query_or_options : JsValue,
  count : Int,
) -> Result[IDBRequest, IDBIndexGetAllKeysError] =
  #| (self, query_or_options, count) => (() => { try { return { $tag: 1, _0: self.getAllKeys(query_or_options, count) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBIndex::get_all_records(
  self : IDBIndex,
) -> Result[IDBRequest, IDBIndexGetAllRecordsError] =
  #| (self) => (() => { try { return { $tag: 1, _0: self.getAllRecords() }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }; } })()

///|
extern "js" fn IDBIndex::get_all_records_with_options_ffi(
  self : IDBIndex,
  options : JsValue,
) -> Result[IDBRequest, IDBIndexGetAllRecordsError] =
  #| (self, options) => (() => { try { return { $tag: 1, _0: self.getAllRecords(options) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }; } })()

///|
pub fn IDBIndex::get_all_records_with_options(
  self : IDBIndex,
  options : IDBGetAllOptions,
) -> Result[IDBRequest, IDBIndexGetAllRecordsError] {
  IDBIndex::get_all_records_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn IDBIndex::count(
  self : IDBIndex,
) -> Result[IDBRequest, IDBIndexCountError] =
  #| (self) => (() => { try { return { $tag: 1, _0: self.count() }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBIndex::count_with_query(
  self : IDBIndex,
  query : JsValue,
) -> Result[IDBRequest, IDBIndexCountError] =
  #| (self, query) => (() => { try { return { $tag: 1, _0: self.count(query) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBIndex::open_cursor(
  self : IDBIndex,
) -> Result[IDBRequest, IDBIndexOpenCursorError] =
  #| (self) => (() => { try { return { $tag: 1, _0: self.openCursor() }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; if (n === 'TypeError') return { $tag: 1, _0: e }; if (n === 'InvalidStateError') return { $tag: 2, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 3, _0: e }; return { $tag: 4, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBIndex::open_cursor_with_direction(
  self : IDBIndex,
  query : JsValue,
  direction : IDBCursorDirection,
) -> Result[IDBRequest, IDBIndexOpenCursorError] =
  #| (self, query, direction) => (() => { try { return { $tag: 1, _0: self.openCursor(query, ['next', 'nextunique', 'prev', 'prevunique'][direction]) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; if (n === 'TypeError') return { $tag: 1, _0: e }; if (n === 'InvalidStateError') return { $tag: 2, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 3, _0: e }; return { $tag: 4, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBIndex::open_key_cursor(
  self : IDBIndex,
) -> Result[IDBRequest, IDBIndexOpenKeyCursorError] =
  #| (self) => (() => { try { return { $tag: 1, _0: self.openKeyCursor() }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; if (n === 'TypeError') return { $tag: 1, _0: e }; if (n === 'InvalidStateError') return { $tag: 2, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 3, _0: e }; return { $tag: 4, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBIndex::open_key_cursor_with_direction(
  self : IDBIndex,
  query : JsValue,
  direction : IDBCursorDirection,
) -> Result[IDBRequest, IDBIndexOpenKeyCursorError] =
  #| (self, query, direction) => (() => { try { return { $tag: 1, _0: self.openKeyCursor(query, ['next', 'nextunique', 'prev', 'prevunique'][direction]) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; if (n === 'TypeError') return { $tag: 1, _0: e }; if (n === 'InvalidStateError') return { $tag: 2, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 3, _0: e }; return { $tag: 4, _0: e }; })() }; } })()

///|
/// IDBKeyRange interface
pub type IDBKeyRange

///|
pub extern "js" fn IDBKeyRange::to_js_value(self : IDBKeyRange) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to IDBKeyRange (unchecked)
pub extern "js" fn IDBKeyRange::from_js_value(v : JsValue) -> IDBKeyRange =
  #| (v) => v

///|
/// Safely cast JsValue to IDBKeyRange (checked with instanceof)
pub extern "js" fn IDBKeyRange::from_js_value_opt(v : JsValue) -> IDBKeyRange? =
  #| (v) => (v instanceof IDBKeyRange) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to IDBKeyRange (checked with instanceof)
pub extern "js" fn JsValue::as_idb_key_range(self : JsValue) -> IDBKeyRange? =
  #| (self) => (self instanceof IDBKeyRange) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to IDBKeyRange (unchecked)
pub extern "js" fn JsValue::to_idb_key_range(self : JsValue) -> IDBKeyRange =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum IDBKeyRangeOnlyError {
  DataError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBKeyRangeLowerBoundError {
  DataError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBKeyRangeUpperBoundError {
  DataError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBKeyRangeBoundError {
  DataError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBKeyRangeIncludesError {
  DataError(JsError)
  OtherError(JsError)
} derive(Show)

///|
pub extern "js" fn IDBKeyRange::get_lower(self : IDBKeyRange) -> JsValue =
  #| (self) => self.lower

///|
pub extern "js" fn IDBKeyRange::get_upper(self : IDBKeyRange) -> JsValue =
  #| (self) => self.upper

///|
pub extern "js" fn IDBKeyRange::get_lower_open(self : IDBKeyRange) -> Bool =
  #| (self) => self.lowerOpen

///|
pub extern "js" fn IDBKeyRange::get_upper_open(self : IDBKeyRange) -> Bool =
  #| (self) => self.upperOpen

///|
pub extern "js" fn IDBKeyRange::only(
  value : JsValue,
) -> Result[IDBKeyRange, IDBKeyRangeOnlyError] =
  #| (value) => (() => { try { return { $tag: 1, _0: IDBKeyRange.only(value) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBKeyRange::lower_bound(
  lower : JsValue,
) -> Result[IDBKeyRange, IDBKeyRangeLowerBoundError] =
  #| (lower) => (() => { try { return { $tag: 1, _0: IDBKeyRange.lowerBound(lower) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBKeyRange::lower_bound_with_open(
  lower : JsValue,
  open : Bool,
) -> Result[IDBKeyRange, IDBKeyRangeLowerBoundError] =
  #| (lower, open) => (() => { try { return { $tag: 1, _0: IDBKeyRange.lowerBound(lower, open) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBKeyRange::upper_bound(
  upper : JsValue,
) -> Result[IDBKeyRange, IDBKeyRangeUpperBoundError] =
  #| (upper) => (() => { try { return { $tag: 1, _0: IDBKeyRange.upperBound(upper) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBKeyRange::upper_bound_with_open(
  upper : JsValue,
  open : Bool,
) -> Result[IDBKeyRange, IDBKeyRangeUpperBoundError] =
  #| (upper, open) => (() => { try { return { $tag: 1, _0: IDBKeyRange.upperBound(upper, open) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBKeyRange::bound(
  lower : JsValue,
  upper : JsValue,
) -> Result[IDBKeyRange, IDBKeyRangeBoundError] =
  #| (lower, upper) => (() => { try { return { $tag: 1, _0: IDBKeyRange.bound(lower, upper) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBKeyRange::bound_with_upper_open(
  lower : JsValue,
  upper : JsValue,
  lower_open : Bool,
  upper_open : Bool,
) -> Result[IDBKeyRange, IDBKeyRangeBoundError] =
  #| (lower, upper, lower_open, upper_open) => (() => { try { return { $tag: 1, _0: IDBKeyRange.bound(lower, upper, lower_open, upper_open) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBKeyRange::includes(
  self : IDBKeyRange,
  key : JsValue,
) -> Result[Bool, IDBKeyRangeIncludesError] =
  #| (self, key) => (() => { try { return { $tag: 1, _0: self.includes(key) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
/// IDBRecord interface
pub type IDBRecord

///|
pub extern "js" fn IDBRecord::to_js_value(self : IDBRecord) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to IDBRecord (unchecked)
pub extern "js" fn IDBRecord::from_js_value(v : JsValue) -> IDBRecord =
  #| (v) => v

///|
/// Safely cast JsValue to IDBRecord (checked with instanceof)
pub extern "js" fn IDBRecord::from_js_value_opt(v : JsValue) -> IDBRecord? =
  #| (v) => (v instanceof IDBRecord) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to IDBRecord (checked with instanceof)
pub extern "js" fn JsValue::as_idb_record(self : JsValue) -> IDBRecord? =
  #| (self) => (self instanceof IDBRecord) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to IDBRecord (unchecked)
pub extern "js" fn JsValue::to_idb_record(self : JsValue) -> IDBRecord =
  #| (self) => self

///|
pub extern "js" fn IDBRecord::get_key(self : IDBRecord) -> JsValue =
  #| (self) => self.key

///|
pub extern "js" fn IDBRecord::get_primary_key(self : IDBRecord) -> JsValue =
  #| (self) => self.primaryKey

///|
pub extern "js" fn IDBRecord::get_value(self : IDBRecord) -> JsValue =
  #| (self) => self.value

///|
/// IDBCursor interface
pub type IDBCursor

///|
pub extern "js" fn IDBCursor::to_js_value(self : IDBCursor) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to IDBCursor (unchecked)
pub extern "js" fn IDBCursor::from_js_value(v : JsValue) -> IDBCursor =
  #| (v) => v

///|
/// Safely cast JsValue to IDBCursor (checked with instanceof)
pub extern "js" fn IDBCursor::from_js_value_opt(v : JsValue) -> IDBCursor? =
  #| (v) => (v instanceof IDBCursor) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to IDBCursor (checked with instanceof)
pub extern "js" fn JsValue::as_idb_cursor(self : JsValue) -> IDBCursor? =
  #| (self) => (self instanceof IDBCursor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to IDBCursor (unchecked)
pub extern "js" fn JsValue::to_idb_cursor(self : JsValue) -> IDBCursor =
  #| (self) => self

///|
pub extern "js" fn IDBCursor::as_idb_cursor_with_value(
  self : IDBCursor,
) -> IDBCursorWithValue? =
  #| (self) => (self instanceof IDBCursorWithValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Error type for throwing methods
pub(all) enum IDBCursorAdvanceError {
  TypeError(JsError)
  InvalidStateError(JsError)
  TransactionInactiveError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBCursorContinueError {
  DataError(JsError)
  InvalidStateError(JsError)
  TransactionInactiveError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBCursorContinuePrimaryKeyError {
  DataError(JsError)
  InvalidStateError(JsError)
  InvalidAccessError(JsError)
  TransactionInactiveError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBCursorUpdateError {
  DataError(JsError)
  ReadOnlyError(JsError)
  DataCloneError(JsError)
  InvalidStateError(JsError)
  TransactionInactiveError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBCursorDeleteError {
  ReadOnlyError(JsError)
  InvalidStateError(JsError)
  TransactionInactiveError(JsError)
  OtherError(JsError)
} derive(Show)

///|
pub extern "js" fn IDBCursor::get_source(
  self : IDBCursor,
) -> IDBObjectStoreOrIDBIndex =
  #| (self) => self.source

///|
pub extern "js" fn IDBCursor::get_direction(
  self : IDBCursor,
) -> IDBCursorDirection =
  #| (self) => ['next', 'nextunique', 'prev', 'prevunique'].indexOf(self.direction)

///|
pub extern "js" fn IDBCursor::get_key(self : IDBCursor) -> JsValue =
  #| (self) => self.key

///|
pub extern "js" fn IDBCursor::get_primary_key(self : IDBCursor) -> JsValue =
  #| (self) => self.primaryKey

///|
pub extern "js" fn IDBCursor::get_request(self : IDBCursor) -> IDBRequest =
  #| (self) => self.request

///|
pub extern "js" fn IDBCursor::advance(
  self : IDBCursor,
  count : Int,
) -> Result[Unit, IDBCursorAdvanceError] =
  #| (self, count) => (() => { try { self.advance(count); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBCursor::continue_(
  self : IDBCursor,
) -> Result[Unit, IDBCursorContinueError] =
  #| (self) => (() => { try { self.continue(); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBCursor::continue__with_key(
  self : IDBCursor,
  key : JsValue,
) -> Result[Unit, IDBCursorContinueError] =
  #| (self, key) => (() => { try { self.continue(key); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBCursor::continue_primary_key(
  self : IDBCursor,
  key : JsValue,
  primary_key : JsValue,
) -> Result[Unit, IDBCursorContinuePrimaryKeyError] =
  #| (self, key, primary_key) => (() => { try { self.continuePrimaryKey(key, primary_key); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'InvalidAccessError') return { $tag: 2, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 3, _0: e }; return { $tag: 4, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBCursor::update(
  self : IDBCursor,
  value : JsValue,
) -> Result[IDBRequest, IDBCursorUpdateError] =
  #| (self, value) => (() => { try { return { $tag: 1, _0: self.update(value) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'DataError') return { $tag: 0, _0: e }; if (n === 'ReadOnlyError') return { $tag: 1, _0: e }; if (n === 'DataCloneError') return { $tag: 2, _0: e }; if (n === 'InvalidStateError') return { $tag: 3, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 4, _0: e }; return { $tag: 5, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBCursor::delete(
  self : IDBCursor,
) -> Result[IDBRequest, IDBCursorDeleteError] =
  #| (self) => (() => { try { return { $tag: 1, _0: self.delete() }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'ReadOnlyError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'TransactionInactiveError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }; } })()

///|
/// IDBCursorWithValue interface
pub type IDBCursorWithValue

///|
pub extern "js" fn IDBCursorWithValue::to_js_value(
  self : IDBCursorWithValue,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to IDBCursorWithValue (unchecked)
pub extern "js" fn IDBCursorWithValue::from_js_value(
  v : JsValue,
) -> IDBCursorWithValue =
  #| (v) => v

///|
/// Safely cast JsValue to IDBCursorWithValue (checked with instanceof)
pub extern "js" fn IDBCursorWithValue::from_js_value_opt(
  v : JsValue,
) -> IDBCursorWithValue? =
  #| (v) => (v instanceof IDBCursorWithValue) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to IDBCursorWithValue (checked with instanceof)
pub extern "js" fn JsValue::as_idb_cursor_with_value(
  self : JsValue,
) -> IDBCursorWithValue? =
  #| (self) => (self instanceof IDBCursorWithValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to IDBCursorWithValue (unchecked)
pub extern "js" fn JsValue::to_idb_cursor_with_value(
  self : JsValue,
) -> IDBCursorWithValue =
  #| (self) => self

///|
pub extern "js" fn IDBCursorWithValue::to_idb_cursor(
  self : IDBCursorWithValue,
) -> IDBCursor =
  #| (self) => self

///|
pub extern "js" fn IDBCursorWithValue::get_value(
  self : IDBCursorWithValue,
) -> JsValue =
  #| (self) => self.value

///|
/// IDBTransaction interface
pub type IDBTransaction

///|
pub extern "js" fn IDBTransaction::to_js_value(
  self : IDBTransaction,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to IDBTransaction (unchecked)
pub extern "js" fn IDBTransaction::from_js_value(v : JsValue) -> IDBTransaction =
  #| (v) => v

///|
/// Safely cast JsValue to IDBTransaction (checked with instanceof)
pub extern "js" fn IDBTransaction::from_js_value_opt(
  v : JsValue,
) -> IDBTransaction? =
  #| (v) => (v instanceof IDBTransaction) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to IDBTransaction (checked with instanceof)
pub extern "js" fn JsValue::as_idb_transaction(
  self : JsValue,
) -> IDBTransaction? =
  #| (self) => (self instanceof IDBTransaction) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to IDBTransaction (unchecked)
pub extern "js" fn JsValue::to_idb_transaction(
  self : JsValue,
) -> IDBTransaction =
  #| (self) => self

///|
pub extern "js" fn IDBTransaction::to_event_target(
  self : IDBTransaction,
) -> EventTarget =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum IDBTransactionObjectStoreError {
  NotFoundError(JsError)
  InvalidStateError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBTransactionCommitError {
  InvalidStateError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum IDBTransactionAbortError {
  InvalidStateError(JsError)
  OtherError(JsError)
} derive(Show)

///|
pub extern "js" fn IDBTransaction::get_object_store_names(
  self : IDBTransaction,
) -> DOMStringList =
  #| (self) => self.objectStoreNames

///|
pub extern "js" fn IDBTransaction::get_mode(
  self : IDBTransaction,
) -> IDBTransactionMode =
  #| (self) => ['readonly', 'readwrite', 'versionchange'].indexOf(self.mode)

///|
pub extern "js" fn IDBTransaction::get_durability(
  self : IDBTransaction,
) -> IDBTransactionDurability =
  #| (self) => ['default', 'strict', 'relaxed'].indexOf(self.durability)

///|
pub extern "js" fn IDBTransaction::get_db(self : IDBTransaction) -> IDBDatabase =
  #| (self) => self.db

///|
pub extern "js" fn IDBTransaction::get_error(
  self : IDBTransaction,
) -> DOMException? =
  #| (self) => (() => { const v = self.error; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn IDBTransaction::object_store(
  self : IDBTransaction,
  name : String,
) -> Result[IDBObjectStore, IDBTransactionObjectStoreError] =
  #| (self, name) => (() => { try { return { $tag: 1, _0: self.objectStore(name) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NotFoundError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBTransaction::commit(
  self : IDBTransaction,
) -> Result[Unit, IDBTransactionCommitError] =
  #| (self) => (() => { try { self.commit(); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'InvalidStateError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBTransaction::abort(
  self : IDBTransaction,
) -> Result[Unit, IDBTransactionAbortError] =
  #| (self) => (() => { try { self.abort(); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'InvalidStateError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn IDBTransaction::set_onabort(
  self : IDBTransaction,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onabort = (e) => handler(e) }

///|
pub extern "js" fn IDBTransaction::clear_onabort(self : IDBTransaction) -> Unit =
  #| (self) => { self.onabort = null }

///|
pub extern "js" fn IDBTransaction::set_oncomplete(
  self : IDBTransaction,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.oncomplete = (e) => handler(e) }

///|
pub extern "js" fn IDBTransaction::clear_oncomplete(
  self : IDBTransaction,
) -> Unit =
  #| (self) => { self.oncomplete = null }

///|
pub extern "js" fn IDBTransaction::set_onerror(
  self : IDBTransaction,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onerror = (e) => handler(e) }

///|
pub extern "js" fn IDBTransaction::clear_onerror(self : IDBTransaction) -> Unit =
  #| (self) => { self.onerror = null }
