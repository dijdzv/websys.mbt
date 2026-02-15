// NamedNodeMap / Attr test
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/Attr

///|
fn test_named_node_map() -> Unit {
  let doc = get_document()
  let el = doc.create_element("div")
  el.set_id("test-id")
  el.set_class_name("foo bar")
  // Get attributes via NamedNodeMap
  let attrs = el.get_attributes()
  assert_eq(attrs.get_length(), 2, label="length")
  // getNamedItem
  let id_attr = attrs.get_named_item("id")
  assert_true(id_attr is Some(_), label="getNamedItem id exists")
  match id_attr {
    Some(attr) => {
      assert_eq(attr.get_name(), "id", label="attr name")
      assert_eq(attr.get_value(), "test-id", label="attr value")
      assert_true(attr.get_specified(), label="specified")
    }
    None => abort("FAIL: id attr not found")
  }
  // item(index)
  let first = attrs.item(0)
  assert_true(first is Some(_), label="item(0) exists")
  // getNamedItem for non-existent
  let missing = attrs.get_named_item("data-foo")
  assert_true(missing is None, label="getNamedItem missing")
}

///|
fn test_attr_mutation() -> Unit {
  let doc = get_document()
  let el = doc.create_element("span")
  el.set_id("attr-test")
  let attrs = el.get_attributes()
  // Get and mutate via Attr.set_value
  let attr = attrs.get_named_item("id")
  match attr {
    Some(a) => {
      a.set_value("new-id")
      assert_eq(el.get_id(), "new-id", label="id after attr mutation")
      // ownerElement
      let owner = a.get_owner_element()
      assert_true(owner is Some(_), label="ownerElement exists")
      // localName
      assert_eq(a.get_local_name(), "id", label="localName")
    }
    None => abort("FAIL: id attr not found")
  }
}
