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

}
