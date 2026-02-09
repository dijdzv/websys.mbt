// DOM API tests
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/Document
// Pattern: interface (constructor, methods), type casting (Element → Node → EventTarget)

///|
/// Helper: get the document from the global window object.
fn get_document() -> @websys.Document {
  let win = @websys.window()
  match win {
    Some(w) => w.get_document()
    None => abort("FAIL: window() returned None")
  }
}

///|
/// Test document.createElement and basic Element properties.
/// Equivalent to:
///   const div = document.createElement("div")
///   div.id = "test"
///   div.tagName // "DIV"
pub fn test_dom_create_element() -> Unit {
  let doc = get_document()

  // createElement — Web API: document.createElement("div")
  let div = doc.create_element("div")
  assert_eq(div.get_tag_name(), "DIV", label="tagName")

  // id property — Web API: el.id = "test"; el.id
  assert_eq(div.get_id(), "", label="id default")
  div.set_id("test-element")
  assert_eq(div.get_id(), "test-element", label="id after set")

  // className — Web API: el.className = "foo bar"
  assert_eq(div.get_class_name(), "", label="className default")
  div.set_class_name("foo bar")
  assert_eq(div.get_class_name(), "foo bar", label="className after set")

  // Different element types
  let span = doc.create_element("span")
  assert_eq(span.get_tag_name(), "SPAN", label="span tagName")
  let p = doc.create_element("p")
  assert_eq(p.get_tag_name(), "P", label="p tagName")
  println("  dom_create_element: ok")
}

///|
/// Test Element.setAttribute / getAttribute.
/// Equivalent to:
///   el.setAttribute("data-value", "42")
///   el.getAttribute("data-value") // "42"
pub fn test_dom_attributes() -> Unit {
  let doc = get_document()
  let el = doc.create_element("div")

  // getAttribute returns null for missing attributes — Web API: el.getAttribute("x")
  let missing = el.get_attribute("data-value")
  match missing {
    None => ()
    Some(_) => abort("FAIL [getAttribute missing]: expected None")
  }

  // setAttribute — Web API: el.setAttribute("data-value", "42")
  let str = @websys.TrustedTypeOrString::from_string
  el.set_attribute("data-value", str("42"))
  match el.get_attribute("data-value") {
    Some(v) => assert_eq(v, "42", label="getAttribute after set")
    None => abort("FAIL [getAttribute after set]: expected Some")
  }

  // hasAttribute — Web API: el.hasAttribute("data-value")
  assert_true(el.has_attribute("data-value"), label="hasAttribute")
  assert_false(el.has_attribute("nonexistent"), label="hasAttribute missing")

  // removeAttribute — Web API: el.removeAttribute("data-value")
  el.remove_attribute("data-value")
  assert_false(el.has_attribute("data-value"), label="after removeAttribute")

  // Multiple attributes
  el.set_attribute("role", str("button"))
  el.set_attribute("aria-label", str("click me"))
  let names = el.get_attribute_names()
  assert_eq(names.length(), 2, label="attribute count")
  println("  dom_attributes: ok")
}

///|
/// Test DOM tree operations: appendChild, textContent, children.
/// Equivalent to:
///   parent.appendChild(child)
///   parent.children.length // 1
///   node.textContent = "hello"
pub fn test_dom_tree() -> Unit {
  let doc = get_document()

  // Build a small tree: <div><span></span><p></p></div>
  let parent = doc.create_element("div")
  let child1 = doc.create_element("span")
  let child2 = doc.create_element("p")

  // appendChild — Web API: parent.appendChild(child)
  // Need to cast Element → Node for appendChild
  let parent_node = parent.to_node()
  let _ = parent_node.append_child(child1.to_node())
  let _ = parent_node.append_child(child2.to_node())

  // children — Web API: parent.children.length
  assert_eq(parent.get_child_element_count(), 2, label="childElementCount")

  // children collection — Web API: parent.children
  let children = parent.get_children()
  assert_eq(children.get_length(), 2, label="children.length")

  // First child's tagName
  match children.item(0) {
    Some(first) =>
      assert_eq(first.get_tag_name(), "SPAN", label="first child tag")
    None => abort("FAIL: children.item(0) returned None")
  }

  // textContent — Web API: node.textContent = "hello"
  child1.to_node().set_text_content(Some("hello"))
  match child1.to_node().get_text_content() {
    Some(t) => assert_eq(t, "hello", label="textContent")
    None => abort("FAIL: textContent returned None")
  }

  // parentNode — Web API: child.parentNode
  match child1.to_node().get_parent_node() {
    Some(_) => ()
    None => abort("FAIL: parentNode returned None after appendChild")
  }
  println("  dom_tree: ok")
}
