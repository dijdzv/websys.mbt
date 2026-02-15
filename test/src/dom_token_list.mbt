///|
fn test_dom_token_list_iteration() -> Unit {
  let doc = get_document()
  let div = doc.create_element("div")
  div.set_class_name("a b c d")
  let classes = div.get_class_list()
  // length
  assert_eq(classes.get_length(), 4, label="length")
  // item access
  assert_eq(classes.item(0).unwrap(), "a", label="item(0)")
  assert_eq(classes.item(1).unwrap(), "b", label="item(1)")
  assert_eq(classes.item(2).unwrap(), "c", label="item(2)")
  assert_eq(classes.item(3).unwrap(), "d", label="item(3)")
  // out of bounds
  match classes.item(4) {
    Some(_) => abort("FAIL: item(4) should be None")
    None => ()
  }
}
