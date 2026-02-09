// Storage API test (localStorage)
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/Storage

///|
extern "js" fn js_get_local_storage() -> @websys.Storage =
  #| () => window.localStorage

///|
fn test_storage() -> Unit {
  let storage = js_get_local_storage()
  // Initially empty (or clear it first)
  storage.clear()
  assert_eq(storage.get_length(), 0, label="length after clear")
  // setItem / getItem
  storage.set_item("key1", "value1")
  assert_eq(storage.get_length(), 1, label="length after set")
  let val = storage.get_item("key1")
  assert_true(val is Some(_), label="getItem returns Some")
  match val {
    Some(v) => assert_eq(v, "value1", label="getItem value")
    None => abort("FAIL: expected Some")
  }
  // getItem for non-existent key
  let missing = storage.get_item("nonexistent")
  assert_true(missing is None, label="getItem missing returns None")
  // key()
  let k = storage.key(0)
  assert_true(k is Some(_), label="key(0) returns Some")
  // setItem another
  storage.set_item("key2", "value2")
  assert_eq(storage.get_length(), 2, label="length after second set")
  // removeItem
  storage.remove_item("key1")
  assert_eq(storage.get_length(), 1, label="length after remove")
  let removed = storage.get_item("key1")
  assert_true(removed is None, label="getItem after remove")
  // clear
  storage.clear()
  assert_eq(storage.get_length(), 0, label="length after final clear")
}
