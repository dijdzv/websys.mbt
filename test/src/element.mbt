// Element API tests (extended)
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/Element
// Rust web-sys ref: crates/web-sys/tests/wasm/element.rs
// Pattern: interface methods, querySelector, matches, children, innerHTML

///|
/// Test Element.matches — CSS selector matching.
/// Equivalent to:
///   const el = document.createElement("div")
///   el.className = "foo"
///   el.matches(".foo") // true
///   el.matches(".bar") // false
pub fn test_element_matches() -> Unit {
  let doc = get_document()
  let el = doc.create_element("div")
  el.set_class_name("foo bar")
  assert_true(el.matches(".foo"), label="matches .foo")
  assert_true(el.matches(".bar"), label="matches .bar")
  assert_true(el.matches("div"), label="matches div")
  assert_false(el.matches(".baz"), label="not matches .baz")
  assert_false(el.matches("span"), label="not matches span")
  assert_true(el.matches("div.foo"), label="matches div.foo")
  assert_true(el.webkit_matches_selector(".foo"), label="webkitMatchesSelector")
  println("  element_matches: ok")
}

///|
/// Test Element.className and classList interaction.
/// Equivalent to:
///   const el = document.createElement("div")
///   el.className = "a b c"
///   el.classList.length // 3
pub fn test_element_class_name() -> Unit {
  let doc = get_document()
  let el = doc.create_element("div")

  // className — Web API: el.className
  assert_eq(el.get_class_name(), "", label="className default")
  el.set_class_name("alpha beta")
  assert_eq(el.get_class_name(), "alpha beta", label="className set")

  // classList reflects className
  let cl = el.get_class_list()
  assert_eq(cl.get_length(), 2, label="classList length from className")
  assert_true(cl.contains("alpha"), label="classList contains alpha")
  println("  element_class_name: ok")
}

///|
/// Test Element.querySelector — find child elements.
/// Equivalent to:
///   const parent = document.createElement("div")
///   const child = document.createElement("span")
///   child.id = "target"
///   parent.appendChild(child)
///   parent.querySelector("#target") // span element
pub fn test_element_query_selector() -> Unit {
  let doc = get_document()
  let parent = doc.create_element("div")
  let child = doc.create_element("span")
  child.set_id("target")
  child.set_class_name("highlight")
  let parent_node = parent.to_node()
  let child_node = child.to_node()
  let _ = parent_node.append_child(child_node)

  // querySelector — Web API: parent.querySelector(selector) → Element?
  match parent.query_selector("#target") {
    Some(found) => {
      assert_eq(found.get_tag_name(), "SPAN", label="querySelector tagName")
      assert_eq(found.get_id(), "target", label="querySelector id")
    }
    None => abort("FAIL: querySelector returned None for #target")
  }

  // querySelector with class
  match parent.query_selector(".highlight") {
    Some(found) =>
      assert_eq(found.get_id(), "target", label="querySelector .highlight")
    None => abort("FAIL: querySelector returned None for .highlight")
  }

  // querySelector no match
  match parent.query_selector(".nonexistent") {
    None => () // expected
    Some(_) => abort("FAIL: querySelector returned Some for .nonexistent")
  }

  // querySelectorAll — Web API: parent.querySelectorAll(selector) → NodeList
  let all = parent.query_selector_all("span")
  assert_eq(all.get_length(), 1, label="querySelectorAll length")
  println("  element_query_selector: ok")
}

///|
/// Test Element children and childElementCount.
/// Equivalent to:
///   const parent = document.createElement("ul")
///   parent.appendChild(document.createElement("li"))
///   parent.childElementCount // 1
///   parent.children.length // 1
pub fn test_element_children() -> Unit {
  let doc = get_document()
  let parent = doc.create_element("ul")
  let parent_node = parent.to_node()
  assert_eq(
    parent.get_child_element_count(),
    0,
    label="childElementCount empty",
  )

  // Add children
  let li1 = doc.create_element("li")
  let li2 = doc.create_element("li")
  let li3 = doc.create_element("li")
  let _ = parent_node.append_child(li1.to_node())
  let _ = parent_node.append_child(li2.to_node())
  let _ = parent_node.append_child(li3.to_node())
  assert_eq(parent.get_child_element_count(), 3, label="childElementCount 3")

  // children — HTMLCollection
  let children = parent.get_children()
  assert_eq(children.get_length(), 3, label="children.length")

  // getElementsByTagName
  let lis = parent.get_elements_by_tag_name("li")
  assert_eq(lis.get_length(), 3, label="getElementsByTagName li")

  // firstElementChild — Web API: parent.firstElementChild → Element?
  match parent.get_first_element_child() {
    Some(first) =>
      assert_eq(first.get_tag_name(), "LI", label="firstElementChild")
    None => abort("FAIL: firstElementChild returned None")
  }

  // getElementsByClassName — Web API: parent.getElementsByClassName(names) → HTMLCollection
  li1.set_class_name("item")
  li2.set_class_name("item")
  let by_class = parent.get_elements_by_class_name("item")
  assert_eq(by_class.get_length(), 2, label="getElementsByClassName")
  println("  element_children: ok")
}

///|
/// Test Element properties — namespace, prefix, localName, attributes, innerHTML.
/// Rust web-sys ref: crates/web-sys/tests/wasm/element.rs
pub fn test_element_properties() -> Unit {
  let doc = get_document()
  let el = doc.create_element("div")

  // namespace_uri — HTML namespace for createElement'd elements
  assert_true(el.get_namespace_uri() is Some(_), label="namespace_uri is Some")

  // prefix — None for HTML elements
  assert_true(el.get_prefix() is None, label="prefix is None")

  // local_name — lowercase tag name
  assert_eq(el.get_local_name(), "div", label="local_name")

  // has_attributes — false initially, true after setting attributes
  el.set_id("foo")
  el.set_class_name("bar")
  assert_true(el.has_attributes(), label="has_attributes")

  // toggle_attribute — add/remove boolean attributes
  let _ = el.toggle_attribute("data-test")
  assert_true(el.has_attribute("data-test"), label="after toggle_attribute add")
  let _ = el.toggle_attribute_with_force("data-test", false)
  assert_false(
    el.has_attribute("data-test"),
    label="after toggle_attribute_with_force remove",
  )

  // inner_html / set_inner_html — uses TrustedHTMLOrString union type
  el.set_inner_html(
    @websys.TrustedHTMLOrString::from_string("<strong>Test</strong>"),
  )
  match el.get_inner_html().as_string() {
    Some(html) => assert_eq(html, "<strong>Test</strong>", label="inner_html")
    None => abort("FAIL: get_inner_html returned non-string")
  }

  // outer_html — includes the element's own tag
  match el.get_outer_html().as_string() {
    Some(outer) =>
      assert_true(outer.contains("Test"), label="outer_html contains content")
    None => abort("FAIL: get_outer_html returned non-string")
  }

  // insert_adjacent_html — append HTML content
  el.insert_adjacent_html(
    "beforeend",
    @websys.TrustedHTMLOrString::from_string("<em>appended</em>"),
  )
  match el.get_inner_html().as_string() {
    Some(html) =>
      assert_true(
        html.contains("<em>appended</em>"),
        label="insert_adjacent_html",
      )
    None => abort("FAIL: get_inner_html returned non-string after insert")
  }
  println("  element_properties: ok")
}
