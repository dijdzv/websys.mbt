// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/IndexedDB

///|
/// IDBRequestReadyState enum
pub(all) enum IDBRequestReadyState {
  Pending
  Done
}

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
}

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
}

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
}

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
pub struct IDBVersionChangeEventInit {
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
/// Convert to JsValue
pub extern "js" fn IDBVersionChangeEventInit::to_js(
  self : IDBVersionChangeEventInit,
) -> JsValue =
  #| (self) => ({
  #|   oldVersion: self.oldVersion,
  #|   newVersion: ((() => { const v = self.newVersion; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// IDBDatabaseInfo dictionary
pub struct IDBDatabaseInfo {
  name : String?
  version : Int64?
}

///|
/// Create a new IDBDatabaseInfo with default values
pub fn IDBDatabaseInfo::default() -> IDBDatabaseInfo {
  IDBDatabaseInfo::{ name: None, version: None }
}

///|
/// Convert to JsValue
pub extern "js" fn IDBDatabaseInfo::to_js(self : IDBDatabaseInfo) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   version: self.version
  #| })

///|
/// IDBTransactionOptions dictionary
pub struct IDBTransactionOptions {
  durability : IDBTransactionDurability?
}

///|
/// Create a new IDBTransactionOptions with default values
pub fn IDBTransactionOptions::default() -> IDBTransactionOptions {
  IDBTransactionOptions::{ durability: None }
}

///|
/// Convert to JsValue
pub extern "js" fn IDBTransactionOptions::to_js(
  self : IDBTransactionOptions,
) -> JsValue =
  #| (self) => ({
  #|   durability: ['default', 'strict', 'relaxed'][self.durability]
  #| })

///|
/// IDBObjectStoreParameters dictionary
pub struct IDBObjectStoreParameters {
  keyPath : StringOrArrayOfString?
  autoIncrement : Bool?
}

///|
/// Create a new IDBObjectStoreParameters with default values
pub fn IDBObjectStoreParameters::default() -> IDBObjectStoreParameters {
  IDBObjectStoreParameters::{ keyPath: None, autoIncrement: None }
}

///|
/// Convert to JsValue
pub extern "js" fn IDBObjectStoreParameters::to_js(
  self : IDBObjectStoreParameters,
) -> JsValue =
  #| (self) => ({
  #|   keyPath: self.keyPath,
  #|   autoIncrement: self.autoIncrement
  #| })

///|
/// IDBIndexParameters dictionary
pub struct IDBIndexParameters {
  unique : Bool?
  multiEntry : Bool?
}

///|
/// Create a new IDBIndexParameters with default values
pub fn IDBIndexParameters::default() -> IDBIndexParameters {
  IDBIndexParameters::{ unique: None, multiEntry: None }
}

///|
/// Convert to JsValue
pub extern "js" fn IDBIndexParameters::to_js(
  self : IDBIndexParameters,
) -> JsValue =
  #| (self) => ({
  #|   unique: self.unique,
  #|   multiEntry: self.multiEntry
  #| })

///|
/// IDBGetAllOptions dictionary
pub struct IDBGetAllOptions {
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
/// Convert to JsValue
pub extern "js" fn IDBGetAllOptions::to_js(self : IDBGetAllOptions) -> JsValue =
  #| (self) => ({
  #|   query: self.query,
  #|   count: self.count,
  #|   direction: ['next', 'nextunique', 'prev', 'prevunique'][self.direction]
  #| })

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
  #| (self) => { const v = self.error; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn IDBRequest::get_source(
  self : IDBRequest,
) -> IDBObjectStoreOrIDBIndexOrIDBCursor =
  #| (self) => self.source

///|
pub extern "js" fn IDBRequest::get_transaction(
  self : IDBRequest,
) -> IDBTransaction? =
  #| (self) => { const v = self.transaction; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn IDBRequest::get_ready_state(
  self : IDBRequest,
) -> IDBRequestReadyState =
  #| (self) => self.readyState

///|
pub extern "js" fn IDBRequest::get_onsuccess(self : IDBRequest) -> EventHandler =
  #| (self) => self.onsuccess

///|
pub extern "js" fn IDBRequest::set_onsuccess(
  self : IDBRequest,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsuccess = value }

///|
pub extern "js" fn IDBRequest::get_onerror(self : IDBRequest) -> EventHandler =
  #| (self) => self.onerror

///|
pub extern "js" fn IDBRequest::set_onerror(
  self : IDBRequest,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onerror = value }

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
pub extern "js" fn IDBOpenDBRequest::get_onblocked(
  self : IDBOpenDBRequest,
) -> EventHandler =
  #| (self) => self.onblocked

///|
pub extern "js" fn IDBOpenDBRequest::set_onblocked(
  self : IDBOpenDBRequest,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onblocked = value }

///|
pub extern "js" fn IDBOpenDBRequest::get_onupgradeneeded(
  self : IDBOpenDBRequest,
) -> EventHandler =
  #| (self) => self.onupgradeneeded

///|
pub extern "js" fn IDBOpenDBRequest::set_onupgradeneeded(
  self : IDBOpenDBRequest,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onupgradeneeded = value }

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
  event_init_dict : IDBVersionChangeEventInit,
) -> IDBVersionChangeEvent =
  #| (type_, event_init_dict) => new IDBVersionChangeEvent(type_, event_init_dict)

///|
pub extern "js" fn IDBVersionChangeEvent::get_old_version(
  self : IDBVersionChangeEvent,
) -> Int64 =
  #| (self) => self.oldVersion

///|
pub extern "js" fn IDBVersionChangeEvent::get_new_version(
  self : IDBVersionChangeEvent,
) -> Int64? =
  #| (self) => { const v = self.newVersion; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

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
pub extern "js" fn IDBFactory::open(
  self : IDBFactory,
  name : String,
) -> IDBOpenDBRequest =
  #| (self, name) => self.open(name)

///|
pub extern "js" fn IDBFactory::open_with_version(
  self : IDBFactory,
  name : String,
  version : Int64,
) -> IDBOpenDBRequest =
  #| (self, name, version) => self.open(name, version)

///|
pub extern "js" fn IDBFactory::delete_database(
  self : IDBFactory,
  name : String,
) -> IDBOpenDBRequest =
  #| (self, name) => self.deleteDatabase(name)

///|
pub extern "js" fn IDBFactory::databases(
  self : IDBFactory,
) -> Promise[Array[IDBDatabaseInfo]] =
  #| (self) => self.databases()

///|
pub extern "js" fn IDBFactory::cmp(
  self : IDBFactory,
  first : JsValue,
  second : JsValue,
) -> Int =
  #| (self, first, second) => self.cmp(first, second)

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
pub extern "js" fn IDBDatabase::get_name(self : IDBDatabase) -> String =
  #| (self) => self.name

///|
pub extern "js" fn IDBDatabase::get_version(self : IDBDatabase) -> Int64 =
  #| (self) => self.version

///|
pub extern "js" fn IDBDatabase::get_object_store_names(
  self : IDBDatabase,
) -> DOMStringList =
  #| (self) => self.objectStoreNames

///|
pub extern "js" fn IDBDatabase::transaction(
  self : IDBDatabase,
  store_names : StringOrArrayOfString,
) -> IDBTransaction =
  #| (self, store_names) => self.transaction(store_names)

///|
pub extern "js" fn IDBDatabase::transaction_with_options(
  self : IDBDatabase,
  store_names : StringOrArrayOfString,
  mode : IDBTransactionMode,
  options : IDBTransactionOptions,
) -> IDBTransaction =
  #| (self, store_names, mode, options) => self.transaction(store_names, ['readonly', 'readwrite', 'versionchange'][mode], options)

///|
pub extern "js" fn IDBDatabase::close(self : IDBDatabase) -> Unit =
  #| (self) => self.close()

///|
pub extern "js" fn IDBDatabase::create_object_store(
  self : IDBDatabase,
  name : String,
) -> IDBObjectStore =
  #| (self, name) => self.createObjectStore(name)

///|
pub extern "js" fn IDBDatabase::create_object_store_with_options(
  self : IDBDatabase,
  name : String,
  options : IDBObjectStoreParameters,
) -> IDBObjectStore =
  #| (self, name, options) => self.createObjectStore(name, options)

///|
pub extern "js" fn IDBDatabase::delete_object_store(
  self : IDBDatabase,
  name : String,
) -> Unit =
  #| (self, name) => self.deleteObjectStore(name)

///|
pub extern "js" fn IDBDatabase::get_onabort(self : IDBDatabase) -> EventHandler =
  #| (self) => self.onabort

///|
pub extern "js" fn IDBDatabase::set_onabort(
  self : IDBDatabase,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onabort = value }

///|
pub extern "js" fn IDBDatabase::get_onclose(self : IDBDatabase) -> EventHandler =
  #| (self) => self.onclose

///|
pub extern "js" fn IDBDatabase::set_onclose(
  self : IDBDatabase,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onclose = value }

///|
pub extern "js" fn IDBDatabase::get_onerror(self : IDBDatabase) -> EventHandler =
  #| (self) => self.onerror

///|
pub extern "js" fn IDBDatabase::set_onerror(
  self : IDBDatabase,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onerror = value }

///|
pub extern "js" fn IDBDatabase::get_onversionchange(
  self : IDBDatabase,
) -> EventHandler =
  #| (self) => self.onversionchange

///|
pub extern "js" fn IDBDatabase::set_onversionchange(
  self : IDBDatabase,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onversionchange = value }

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
pub extern "js" fn IDBObjectStore::get_name(self : IDBObjectStore) -> String =
  #| (self) => self.name

///|
pub extern "js" fn IDBObjectStore::set_name(
  self : IDBObjectStore,
  value : String,
) -> Unit =
  #| (self, value) => { self.name = value }

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
) -> IDBRequest =
  #| (self, value) => self.put(value)

///|
pub extern "js" fn IDBObjectStore::put_with_key(
  self : IDBObjectStore,
  value : JsValue,
  key : JsValue,
) -> IDBRequest =
  #| (self, value, key) => self.put(value, key)

///|
pub extern "js" fn IDBObjectStore::add(
  self : IDBObjectStore,
  value : JsValue,
) -> IDBRequest =
  #| (self, value) => self.add(value)

///|
pub extern "js" fn IDBObjectStore::add_with_key(
  self : IDBObjectStore,
  value : JsValue,
  key : JsValue,
) -> IDBRequest =
  #| (self, value, key) => self.add(value, key)

///|
pub extern "js" fn IDBObjectStore::delete(
  self : IDBObjectStore,
  query : JsValue,
) -> IDBRequest =
  #| (self, query) => self.delete(query)

///|
pub extern "js" fn IDBObjectStore::clear(self : IDBObjectStore) -> IDBRequest =
  #| (self) => self.clear()

///|
pub extern "js" fn IDBObjectStore::get(
  self : IDBObjectStore,
  query : JsValue,
) -> IDBRequest =
  #| (self, query) => self.get(query)

///|
pub extern "js" fn IDBObjectStore::get_key(
  self : IDBObjectStore,
  query : JsValue,
) -> IDBRequest =
  #| (self, query) => self.getKey(query)

///|
pub extern "js" fn IDBObjectStore::get_all(self : IDBObjectStore) -> IDBRequest =
  #| (self) => self.getAll()

///|
pub extern "js" fn IDBObjectStore::get_all_with_count(
  self : IDBObjectStore,
  query_or_options : JsValue,
  count : Int,
) -> IDBRequest =
  #| (self, query_or_options, count) => self.getAll(query_or_options, count)

///|
pub extern "js" fn IDBObjectStore::get_all_keys(
  self : IDBObjectStore,
) -> IDBRequest =
  #| (self) => self.getAllKeys()

///|
pub extern "js" fn IDBObjectStore::get_all_keys_with_count(
  self : IDBObjectStore,
  query_or_options : JsValue,
  count : Int,
) -> IDBRequest =
  #| (self, query_or_options, count) => self.getAllKeys(query_or_options, count)

///|
pub extern "js" fn IDBObjectStore::get_all_records(
  self : IDBObjectStore,
) -> IDBRequest =
  #| (self) => self.getAllRecords()

///|
pub extern "js" fn IDBObjectStore::get_all_records_with_options(
  self : IDBObjectStore,
  options : IDBGetAllOptions,
) -> IDBRequest =
  #| (self, options) => self.getAllRecords(options)

///|
pub extern "js" fn IDBObjectStore::count(self : IDBObjectStore) -> IDBRequest =
  #| (self) => self.count()

///|
pub extern "js" fn IDBObjectStore::count_with_query(
  self : IDBObjectStore,
  query : JsValue,
) -> IDBRequest =
  #| (self, query) => self.count(query)

///|
pub extern "js" fn IDBObjectStore::open_cursor(
  self : IDBObjectStore,
) -> IDBRequest =
  #| (self) => self.openCursor()

///|
pub extern "js" fn IDBObjectStore::open_cursor_with_direction(
  self : IDBObjectStore,
  query : JsValue,
  direction : IDBCursorDirection,
) -> IDBRequest =
  #| (self, query, direction) => self.openCursor(query, ['next', 'nextunique', 'prev', 'prevunique'][direction])

///|
pub extern "js" fn IDBObjectStore::open_key_cursor(
  self : IDBObjectStore,
) -> IDBRequest =
  #| (self) => self.openKeyCursor()

///|
pub extern "js" fn IDBObjectStore::open_key_cursor_with_direction(
  self : IDBObjectStore,
  query : JsValue,
  direction : IDBCursorDirection,
) -> IDBRequest =
  #| (self, query, direction) => self.openKeyCursor(query, ['next', 'nextunique', 'prev', 'prevunique'][direction])

///|
pub extern "js" fn IDBObjectStore::index(
  self : IDBObjectStore,
  name : String,
) -> IDBIndex =
  #| (self, name) => self.index(name)

///|
pub extern "js" fn IDBObjectStore::create_index(
  self : IDBObjectStore,
  name : String,
  key_path : StringOrArrayOfString,
) -> IDBIndex =
  #| (self, name, key_path) => self.createIndex(name, key_path)

///|
pub extern "js" fn IDBObjectStore::create_index_with_options(
  self : IDBObjectStore,
  name : String,
  key_path : StringOrArrayOfString,
  options : IDBIndexParameters,
) -> IDBIndex =
  #| (self, name, key_path, options) => self.createIndex(name, key_path, options)

///|
pub extern "js" fn IDBObjectStore::delete_index(
  self : IDBObjectStore,
  name : String,
) -> Unit =
  #| (self, name) => self.deleteIndex(name)

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
pub extern "js" fn IDBIndex::get_name(self : IDBIndex) -> String =
  #| (self) => self.name

///|
pub extern "js" fn IDBIndex::set_name(self : IDBIndex, value : String) -> Unit =
  #| (self, value) => { self.name = value }

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
) -> IDBRequest =
  #| (self, query) => self.get(query)

///|
pub extern "js" fn IDBIndex::get_key(
  self : IDBIndex,
  query : JsValue,
) -> IDBRequest =
  #| (self, query) => self.getKey(query)

///|
pub extern "js" fn IDBIndex::get_all(self : IDBIndex) -> IDBRequest =
  #| (self) => self.getAll()

///|
pub extern "js" fn IDBIndex::get_all_with_count(
  self : IDBIndex,
  query_or_options : JsValue,
  count : Int,
) -> IDBRequest =
  #| (self, query_or_options, count) => self.getAll(query_or_options, count)

///|
pub extern "js" fn IDBIndex::get_all_keys(self : IDBIndex) -> IDBRequest =
  #| (self) => self.getAllKeys()

///|
pub extern "js" fn IDBIndex::get_all_keys_with_count(
  self : IDBIndex,
  query_or_options : JsValue,
  count : Int,
) -> IDBRequest =
  #| (self, query_or_options, count) => self.getAllKeys(query_or_options, count)

///|
pub extern "js" fn IDBIndex::get_all_records(self : IDBIndex) -> IDBRequest =
  #| (self) => self.getAllRecords()

///|
pub extern "js" fn IDBIndex::get_all_records_with_options(
  self : IDBIndex,
  options : IDBGetAllOptions,
) -> IDBRequest =
  #| (self, options) => self.getAllRecords(options)

///|
pub extern "js" fn IDBIndex::count(self : IDBIndex) -> IDBRequest =
  #| (self) => self.count()

///|
pub extern "js" fn IDBIndex::count_with_query(
  self : IDBIndex,
  query : JsValue,
) -> IDBRequest =
  #| (self, query) => self.count(query)

///|
pub extern "js" fn IDBIndex::open_cursor(self : IDBIndex) -> IDBRequest =
  #| (self) => self.openCursor()

///|
pub extern "js" fn IDBIndex::open_cursor_with_direction(
  self : IDBIndex,
  query : JsValue,
  direction : IDBCursorDirection,
) -> IDBRequest =
  #| (self, query, direction) => self.openCursor(query, ['next', 'nextunique', 'prev', 'prevunique'][direction])

///|
pub extern "js" fn IDBIndex::open_key_cursor(self : IDBIndex) -> IDBRequest =
  #| (self) => self.openKeyCursor()

///|
pub extern "js" fn IDBIndex::open_key_cursor_with_direction(
  self : IDBIndex,
  query : JsValue,
  direction : IDBCursorDirection,
) -> IDBRequest =
  #| (self, query, direction) => self.openKeyCursor(query, ['next', 'nextunique', 'prev', 'prevunique'][direction])

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
pub extern "js" fn IDBKeyRange::only(value : JsValue) -> IDBKeyRange =
  #| (value) => IDBKeyRange.only(value)

///|
pub extern "js" fn IDBKeyRange::lower_bound(
  lower : JsValue,
  open : Bool,
) -> IDBKeyRange =
  #| (lower, open) => IDBKeyRange.lowerBound(lower, open)

///|
pub extern "js" fn IDBKeyRange::upper_bound(
  upper : JsValue,
  open : Bool,
) -> IDBKeyRange =
  #| (upper, open) => IDBKeyRange.upperBound(upper, open)

///|
pub extern "js" fn IDBKeyRange::bound(
  lower : JsValue,
  upper : JsValue,
  lower_open : Bool,
  upper_open : Bool,
) -> IDBKeyRange =
  #| (lower, upper, lower_open, upper_open) => IDBKeyRange.bound(lower, upper, lower_open, upper_open)

///|
pub extern "js" fn IDBKeyRange::includes(
  self : IDBKeyRange,
  key : JsValue,
) -> Bool =
  #| (self, key) => self.includes(key)

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
pub extern "js" fn IDBCursor::get_source(
  self : IDBCursor,
) -> IDBObjectStoreOrIDBIndex =
  #| (self) => self.source

///|
pub extern "js" fn IDBCursor::get_direction(
  self : IDBCursor,
) -> IDBCursorDirection =
  #| (self) => self.direction

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
pub extern "js" fn IDBCursor::advance(self : IDBCursor, count : Int) -> Unit =
  #| (self, count) => self.advance(count)

///|
pub extern "js" fn IDBCursor::continue_(self : IDBCursor) -> Unit =
  #| (self) => self.continue()

///|
pub extern "js" fn IDBCursor::continue__with_key(
  self : IDBCursor,
  key : JsValue,
) -> Unit =
  #| (self, key) => self.continue(key)

///|
pub extern "js" fn IDBCursor::continue_primary_key(
  self : IDBCursor,
  key : JsValue,
  primary_key : JsValue,
) -> Unit =
  #| (self, key, primary_key) => self.continuePrimaryKey(key, primary_key)

///|
pub extern "js" fn IDBCursor::update(
  self : IDBCursor,
  value : JsValue,
) -> IDBRequest =
  #| (self, value) => self.update(value)

///|
pub extern "js" fn IDBCursor::delete(self : IDBCursor) -> IDBRequest =
  #| (self) => self.delete()

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
pub extern "js" fn IDBTransaction::get_object_store_names(
  self : IDBTransaction,
) -> DOMStringList =
  #| (self) => self.objectStoreNames

///|
pub extern "js" fn IDBTransaction::get_mode(
  self : IDBTransaction,
) -> IDBTransactionMode =
  #| (self) => self.mode

///|
pub extern "js" fn IDBTransaction::get_durability(
  self : IDBTransaction,
) -> IDBTransactionDurability =
  #| (self) => self.durability

///|
pub extern "js" fn IDBTransaction::get_db(self : IDBTransaction) -> IDBDatabase =
  #| (self) => self.db

///|
pub extern "js" fn IDBTransaction::get_error(
  self : IDBTransaction,
) -> DOMException? =
  #| (self) => { const v = self.error; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn IDBTransaction::object_store(
  self : IDBTransaction,
  name : String,
) -> IDBObjectStore =
  #| (self, name) => self.objectStore(name)

///|
pub extern "js" fn IDBTransaction::commit(self : IDBTransaction) -> Unit =
  #| (self) => self.commit()

///|
pub extern "js" fn IDBTransaction::abort(self : IDBTransaction) -> Unit =
  #| (self) => self.abort()

///|
pub extern "js" fn IDBTransaction::get_onabort(
  self : IDBTransaction,
) -> EventHandler =
  #| (self) => self.onabort

///|
pub extern "js" fn IDBTransaction::set_onabort(
  self : IDBTransaction,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onabort = value }

///|
pub extern "js" fn IDBTransaction::get_oncomplete(
  self : IDBTransaction,
) -> EventHandler =
  #| (self) => self.oncomplete

///|
pub extern "js" fn IDBTransaction::set_oncomplete(
  self : IDBTransaction,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncomplete = value }

///|
pub extern "js" fn IDBTransaction::get_onerror(
  self : IDBTransaction,
) -> EventHandler =
  #| (self) => self.onerror

///|
pub extern "js" fn IDBTransaction::set_onerror(
  self : IDBTransaction,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onerror = value }
