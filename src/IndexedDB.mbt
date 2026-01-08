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
    Pending => "pending"
    Done => "done"
  }
}

///|
/// Parse from string value
pub fn IDBRequestReadyState::from_string(s : String) -> IDBRequestReadyState? {
  match s {
    "pending" => Some(Pending)
    "done" => Some(Done)
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
    Default => "default"
    Strict => "strict"
    Relaxed => "relaxed"
  }
}

///|
/// Parse from string value
pub fn IDBTransactionDurability::from_string(
  s : String,
) -> IDBTransactionDurability? {
  match s {
    "default" => Some(Default)
    "strict" => Some(Strict)
    "relaxed" => Some(Relaxed)
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
    Next => "next"
    Nextunique => "nextunique"
    Prev => "prev"
    Prevunique => "prevunique"
  }
}

///|
/// Parse from string value
pub fn IDBCursorDirection::from_string(s : String) -> IDBCursorDirection? {
  match s {
    "next" => Some(Next)
    "nextunique" => Some(Nextunique)
    "prev" => Some(Prev)
    "prevunique" => Some(Prevunique)
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
    Readonly => "readonly"
    Readwrite => "readwrite"
    Versionchange => "versionchange"
  }
}

///|
/// Parse from string value
pub fn IDBTransactionMode::from_string(s : String) -> IDBTransactionMode? {
  match s {
    "readonly" => Some(Readonly)
    "readwrite" => Some(Readwrite)
    "versionchange" => Some(Versionchange)
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
  keyPath : JsValue?
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
pub extern "js" fn IDBRequest::get_result(self : IDBRequest) -> JsValue =
  #| (self) => self.result

///|
pub extern "js" fn IDBRequest::get_error(self : IDBRequest) -> DOMException? =
  #| (self) => self.error

///|
pub extern "js" fn IDBRequest::get_source(self : IDBRequest) -> JsValue =
  #| (self) => self.source

///|
pub extern "js" fn IDBRequest::get_transaction(
  self : IDBRequest,
) -> IDBTransaction? =
  #| (self) => self.transaction

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
pub extern "js" fn IDBOpenDBRequest::get_result(
  self : IDBOpenDBRequest,
) -> JsValue =
  #| (self) => self.result

///|
pub extern "js" fn IDBOpenDBRequest::get_error(
  self : IDBOpenDBRequest,
) -> DOMException? =
  #| (self) => self.error

///|
pub extern "js" fn IDBOpenDBRequest::get_source(
  self : IDBOpenDBRequest,
) -> JsValue =
  #| (self) => self.source

///|
pub extern "js" fn IDBOpenDBRequest::get_transaction(
  self : IDBOpenDBRequest,
) -> IDBTransaction? =
  #| (self) => self.transaction

///|
pub extern "js" fn IDBOpenDBRequest::get_ready_state(
  self : IDBOpenDBRequest,
) -> IDBRequestReadyState =
  #| (self) => self.readyState

///|
pub extern "js" fn IDBOpenDBRequest::get_onsuccess(
  self : IDBOpenDBRequest,
) -> EventHandler =
  #| (self) => self.onsuccess

///|
pub extern "js" fn IDBOpenDBRequest::set_onsuccess(
  self : IDBOpenDBRequest,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsuccess = value }

///|
pub extern "js" fn IDBOpenDBRequest::get_onerror(
  self : IDBOpenDBRequest,
) -> EventHandler =
  #| (self) => self.onerror

///|
pub extern "js" fn IDBOpenDBRequest::set_onerror(
  self : IDBOpenDBRequest,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onerror = value }

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
  #| (self) => self.newVersion

///|
/// IDBFactory interface
pub type IDBFactory

///|
pub extern "js" fn IDBFactory::to_js_value(self : IDBFactory) -> JsValue =
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
  store_names : JsValue,
) -> IDBTransaction =
  #| (self, store_names) => self.transaction(store_names)

///|
pub extern "js" fn IDBDatabase::transaction_with_options(
  self : IDBDatabase,
  store_names : JsValue,
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
  key_path : JsValue,
) -> IDBIndex =
  #| (self, name, key_path) => self.createIndex(name, key_path)

///|
pub extern "js" fn IDBObjectStore::create_index_with_options(
  self : IDBObjectStore,
  name : String,
  key_path : JsValue,
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
pub extern "js" fn IDBCursor::get_source(self : IDBCursor) -> JsValue =
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
pub extern "js" fn IDBCursorWithValue::get_source(
  self : IDBCursorWithValue,
) -> JsValue =
  #| (self) => self.source

///|
pub extern "js" fn IDBCursorWithValue::get_direction(
  self : IDBCursorWithValue,
) -> IDBCursorDirection =
  #| (self) => self.direction

///|
pub extern "js" fn IDBCursorWithValue::get_key(
  self : IDBCursorWithValue,
) -> JsValue =
  #| (self) => self.key

///|
pub extern "js" fn IDBCursorWithValue::get_primary_key(
  self : IDBCursorWithValue,
) -> JsValue =
  #| (self) => self.primaryKey

///|
pub extern "js" fn IDBCursorWithValue::get_request(
  self : IDBCursorWithValue,
) -> IDBRequest =
  #| (self) => self.request

///|
pub extern "js" fn IDBCursorWithValue::advance(
  self : IDBCursorWithValue,
  count : Int,
) -> Unit =
  #| (self, count) => self.advance(count)

///|
pub extern "js" fn IDBCursorWithValue::continue_(
  self : IDBCursorWithValue,
) -> Unit =
  #| (self) => self.continue()

///|
pub extern "js" fn IDBCursorWithValue::continue__with_key(
  self : IDBCursorWithValue,
  key : JsValue,
) -> Unit =
  #| (self, key) => self.continue(key)

///|
pub extern "js" fn IDBCursorWithValue::continue_primary_key(
  self : IDBCursorWithValue,
  key : JsValue,
  primary_key : JsValue,
) -> Unit =
  #| (self, key, primary_key) => self.continuePrimaryKey(key, primary_key)

///|
pub extern "js" fn IDBCursorWithValue::update(
  self : IDBCursorWithValue,
  value : JsValue,
) -> IDBRequest =
  #| (self, value) => self.update(value)

///|
pub extern "js" fn IDBCursorWithValue::delete(
  self : IDBCursorWithValue,
) -> IDBRequest =
  #| (self) => self.delete()

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
  #| (self) => self.error

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
