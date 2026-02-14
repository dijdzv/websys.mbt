// FormData API tests
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/FormData
// Pattern: interface (constructor, String methods, Bool checks)

///|
/// Test FormData — append, get, has, set, delete.
/// Equivalent to:
///   const fd = new FormData()
///   fd.append("name", "value")
///   fd.get("name") // "value"
///   fd.has("name") // true
pub fn test_form_data() -> Unit {
  let fd = @websys.FormData::new()

  // Initially empty
  assert_false(fd.has("name"), label="has before append")

  // append — Web API: fd.append(name, value)
  fd.append("name", "Alice")
  assert_true(fd.has("name"), label="has after append")

  // get — Web API: fd.get(name) → FormDataEntryValue?
  // FormDataEntryValue is a union (Blob | String), so this tests nullable + union
  let val = fd.get("name")
  match val {
    Some(_) => () // got a value (FormDataEntryValue)
    None => abort("FAIL: FormData.get returned None after append")
  }

  // set — Web API: fd.set(name, value) — overwrites
  fd.set("name", "Bob")
  assert_true(fd.has("name"), label="has after set")

  // delete — Web API: fd.delete(name)
  fd.delete("name")
  assert_false(fd.has("name"), label="has after delete")

  // Multiple values with same key
  fd.append("tags", "a")
  fd.append("tags", "b")
  assert_true(fd.has("tags"), label="has tags")
  println("  form_data: ok")
}
