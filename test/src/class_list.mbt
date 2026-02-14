// DOMTokenList (classList) tests
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList
// Rust web-sys ref: element.rs (class_list tests)
// Pattern: interface accessed from Element, String/Bool/Int methods

///|
/// Test DOMTokenList via Element.classList — add, remove, contains, length.
/// Equivalent to:
///   const el = document.createElement("div")
///   el.classList.add("foo")
///   el.classList.contains("foo") // true
///   el.classList.length // 1
pub fn test_class_list() -> Unit {
  let doc = get_document()
  let el = doc.create_element("div")
  let cl = el.get_class_list()

  // Initially empty
  assert_eq(cl.get_length(), 0, label="classList initial length")
  assert_false(cl.contains("foo"), label="contains before add")

  // add
  cl.add("foo")
  assert_eq(cl.get_length(), 1, label="classList length after add")
  assert_true(cl.contains("foo"), label="contains after add")

  // add second class
  cl.add("bar")
  assert_eq(cl.get_length(), 2, label="classList length after add bar")
  assert_true(cl.contains("bar"), label="contains bar")

  // remove
  cl.remove("foo")
  assert_eq(cl.get_length(), 1, label="classList length after remove")
  assert_false(cl.contains("foo"), label="contains foo after remove")
  assert_true(cl.contains("bar"), label="contains bar still")
  println("  class_list: ok")
}

///|
/// Test DOMTokenList toggle and replace.
pub fn test_class_list_toggle() -> Unit {
  let doc = get_document()
  let el = doc.create_element("div")
  let cl = el.get_class_list()

  // toggle — adds if absent, removes if present
  let added = cl.toggle("active")
  assert_true(added, label="toggle returns true when added")
  assert_true(cl.contains("active"), label="active present after toggle")
  let removed = cl.toggle("active")
  assert_false(removed, label="toggle returns false when removed")
  assert_false(cl.contains("active"), label="active absent after toggle")

  // toggle with force
  let forced = cl.toggle_with_force("visible", true)
  assert_true(forced, label="toggle_with_force true")
  assert_true(cl.contains("visible"), label="visible present")
  let forced2 = cl.toggle_with_force("visible", false)
  assert_false(forced2, label="toggle_with_force false")
  assert_false(cl.contains("visible"), label="visible removed")

  // replace
  cl.add("old-class")
  let replaced = cl.replace("old-class", "new-class")
  assert_true(replaced, label="replace returns true")
  assert_false(cl.contains("old-class"), label="old-class gone")
  assert_true(cl.contains("new-class"), label="new-class present")

  // replace non-existent
  let not_replaced = cl.replace("nonexistent", "something")
  assert_false(not_replaced, label="replace non-existent returns false")
  println("  class_list_toggle: ok")
}

///|
/// Test DOMTokenList value property.
pub fn test_class_list_value() -> Unit {
  let doc = get_document()
  let el = doc.create_element("div")
  let cl = el.get_class_list()

  // set value directly — space-separated class string
  cl.set_value("a b c")
  assert_eq(cl.get_length(), 3, label="value set length")
  assert_true(cl.contains("a"), label="contains a")
  assert_true(cl.contains("b"), label="contains b")
  assert_true(cl.contains("c"), label="contains c")

  // get value
  let val = cl.get_value()
  assert_eq(val, "a b c", label="value get")
  println("  class_list_value: ok")
}
