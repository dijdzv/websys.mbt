// IndexedDB test
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory
// Equivalent Rust web-sys test: indexeddb.rs

///|
fn test_indexeddb_accessor() -> Unit {
  let win = @websys.window()
  let w = match win {
    Some(w) => w
    None => abort("FAIL: window() returned None")
  }
  // window.indexedDB should return an IDBFactory
  let idb = w.get_indexed_db()
  // Just verify the accessor doesn't throw and returns a valid object
  let _ = idb.to_js_value()
  println("  indexeddb_accessor: ok")
}

///|
/// Test IDBKeyRange static methods and properties.
pub fn test_idb_key_range() -> Unit {
  // IDBKeyRange.only
  let only = @websys.IDBKeyRange::only(@websys.JsValue::from_int(5)).unwrap()
  assert_eq(only.get_lower_open(), false, label="only lower_open")
  assert_eq(only.get_upper_open(), false, label="only upper_open")
  // IDBKeyRange.lowerBound
  let lower = @websys.IDBKeyRange::lower_bound(@websys.JsValue::from_int(3)).unwrap()
  assert_eq(lower.get_lower_open(), false, label="lowerBound default open")
  assert_eq(lower.get_upper_open(), true, label="lowerBound upper_open")
  let lower_open = @websys.IDBKeyRange::lower_bound_with_open(
    @websys.JsValue::from_int(3),
    true,
  ).unwrap()
  assert_eq(lower_open.get_lower_open(), true, label="lowerBound explicit open")
  // IDBKeyRange.upperBound
  let upper = @websys.IDBKeyRange::upper_bound(@websys.JsValue::from_int(10)).unwrap()
  assert_eq(upper.get_lower_open(), true, label="upperBound lower_open")
  assert_eq(upper.get_upper_open(), false, label="upperBound default open")
  // IDBKeyRange.bound
  let range = @websys.IDBKeyRange::bound(
    @websys.JsValue::from_int(1),
    @websys.JsValue::from_int(10),
  ).unwrap()
  assert_eq(range.get_lower_open(), false, label="bound lower_open")
  assert_eq(range.get_upper_open(), false, label="bound upper_open")
  // includes
  assert_eq(
    range.includes(@websys.JsValue::from_int(5)).unwrap(),
    true,
    label="includes 5",
  )
  assert_eq(
    range.includes(@websys.JsValue::from_int(11)).unwrap(),
    false,
    label="excludes 11",
  )
  println("  idb_key_range: ok")
}

///|
/// Test IDBFactory.cmp for key comparison.
pub fn test_idb_factory_cmp() -> Unit {
  let win = @websys.window().unwrap()
  let idb = win.get_indexed_db()
  // cmp(1, 2) should return -1
  assert_eq(
    idb.cmp(@websys.JsValue::from_int(1), @websys.JsValue::from_int(2)).unwrap(),
    -1,
    label="cmp 1 vs 2",
  )
  // cmp(2, 1) should return 1
  assert_eq(
    idb.cmp(@websys.JsValue::from_int(2), @websys.JsValue::from_int(1)).unwrap(),
    1,
    label="cmp 2 vs 1",
  )
  // cmp(1, 1) should return 0
  assert_eq(
    idb.cmp(@websys.JsValue::from_int(1), @websys.JsValue::from_int(1)).unwrap(),
    0,
    label="cmp 1 vs 1",
  )
  // cmp with strings
  assert_eq(
    idb
    .cmp(@websys.JsValue::from_string("a"), @websys.JsValue::from_string("b"))
    .unwrap(),
    -1,
    label="cmp a vs b",
  )
  println("  idb_factory_cmp: ok")
}

///|
/// Test IndexedDB enums round-trip.
pub fn test_idb_enums() -> Unit {
  // IDBTransactionMode
  assert_eq(
    @websys.IDBTransactionMode::Readonly.to_string(),
    "readonly",
    label="Readonly to_string",
  )
  assert_eq(
    @websys.IDBTransactionMode::Readwrite.to_string(),
    "readwrite",
    label="Readwrite to_string",
  )
  assert_eq(
    @websys.IDBTransactionMode::from_string("versionchange"),
    Some(@websys.IDBTransactionMode::Versionchange),
    label="from_string versionchange",
  )
  assert_true(
    @websys.IDBTransactionMode::from_string("invalid") is None,
    label="IDBTransactionMode invalid",
  )
  // IDBCursorDirection
  assert_eq(
    @websys.IDBCursorDirection::Next.to_string(),
    "next",
    label="Next to_string",
  )
  assert_eq(
    @websys.IDBCursorDirection::Prevunique.to_string(),
    "prevunique",
    label="Prevunique to_string",
  )
  assert_eq(
    @websys.IDBCursorDirection::from_string("prev"),
    Some(@websys.IDBCursorDirection::Prev),
    label="from_string prev",
  )
  // IDBRequestReadyState
  assert_eq(
    @websys.IDBRequestReadyState::Pending.to_string(),
    "pending",
    label="Pending to_string",
  )
  assert_eq(
    @websys.IDBRequestReadyState::Done.to_string(),
    "done",
    label="Done to_string",
  )
  println("  idb_enums: ok")
}
