// HTMLElement property tests
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement
// Rust web-sys ref: crates/web-sys/tests/wasm/html_element.rs
// Pattern: type casting (Element → HTMLElement), String/Bool/Int getter/setter

///|
/// JS helper: set a style property on an element via JsValue.
extern "js" fn js_set_style_prop(
  el : @websys.JsValue,
  prop : String,
  value : String,
) -> Unit =
  #| (el, prop, value) => { el.style.setProperty(prop, value) }

///|
/// JS helper: get a style property from an element via JsValue.
extern "js" fn js_get_style_prop(
  el : @websys.JsValue,
  prop : String,
) -> String =
  #| (el, prop) => el.style.getPropertyValue(prop)

///|
/// Helper: create an HTMLElement from a tag name via document.createElement.
/// Uses unchecked cast since createElement always returns an HTMLElement subclass.
fn create_html_element(tag : String) -> @websys.HTMLElement {
  let doc = get_document()
  let el = doc.create_element(tag)
  @websys.HTMLElement::from_js_value(el.to_js_value())
}

///|
/// Test HTMLElement string properties (title, lang, dir).
/// Equivalent to:
///   const el = document.createElement("div")
///   el.title = "hello"; el.title // "hello"
///   el.lang = "ja"; el.lang // "ja"
pub fn test_html_element_props() -> Unit {
  let el = create_html_element("div")

  // title — Web API: el.title
  assert_eq(el.get_title(), "", label="title default")
  el.set_title("hello")
  assert_eq(el.get_title(), "hello", label="title set")

  // lang — Web API: el.lang
  assert_eq(el.get_lang(), "", label="lang default")
  el.set_lang("ja")
  assert_eq(el.get_lang(), "ja", label="lang set")

  // dir — Web API: el.dir
  assert_eq(el.get_dir(), "", label="dir default")
  el.set_dir("rtl")
  assert_eq(el.get_dir(), "rtl", label="dir set")

  // hidden — Web API: el.hidden (BoolOrDoubleOrString union type)
  el.set_hidden(@websys.BoolOrDoubleOrString::from_bool(true))
  assert_true(el.get_hidden().is_bool(), label="hidden is bool")
  el.set_hidden(@websys.BoolOrDoubleOrString::from_bool(false))

  // tab_index — Web API: el.tabIndex
  el.set_tab_index(1)
  assert_eq(el.get_tab_index(), 1, label="tab_index")

  // access_key — Web API: el.accessKey
  el.set_access_key("a")
  assert_eq(el.get_access_key(), "a", label="access_key")

  // content_editable — Web API: el.contentEditable
  el.set_content_editable("true")
  assert_eq(el.get_content_editable(), "true", label="content_editable")
  assert_true(el.get_is_content_editable(), label="is_content_editable")

  // spellcheck — Web API: el.spellcheck
  el.set_spellcheck(false)
  assert_false(el.get_spellcheck(), label="spellcheck false")
  el.set_spellcheck(true)
  assert_true(el.get_spellcheck(), label="spellcheck true")
  println("  html_element_props: ok")
}

///|
/// Test HTMLElement boolean properties (draggable, translate, inert).
pub fn test_html_element_bool_props() -> Unit {
  let el = create_html_element("div")

  // draggable — Web API: el.draggable
  assert_false(el.get_draggable(), label="draggable default")
  el.set_draggable(true)
  assert_true(el.get_draggable(), label="draggable set")

  // translate — Web API: el.translate
  el.set_translate(false)
  assert_false(el.get_translate(), label="translate set false")
  el.set_translate(true)
  assert_true(el.get_translate(), label="translate set true")

  // inert — Web API: el.inert
  assert_false(el.get_inert(), label="inert default")
  el.set_inert(true)
  assert_true(el.get_inert(), label="inert set")

  // classList — Web API: el.classList (via Element)
  let el2 = create_html_element("span")
  let class_list = el2.to_element().get_class_list()
  assert_eq(class_list.get_length(), 0, label="classList initially empty")
  class_list.add("cls1")
  assert_eq(class_list.get_length(), 1, label="classList length after add")
  assert_true(class_list.contains("cls1"), label="classList contains cls1")
  match class_list.get(0) {
    Some(v) => assert_eq(v, "cls1", label="classList get(0)")
    None => abort("FAIL: classList get(0) returned None")
  }
  class_list.add("cls2")
  assert_eq(class_list.get_length(), 2, label="classList length after add cls2")
  class_list.remove("cls1")
  assert_false(class_list.contains("cls1"), label="classList cls1 removed")
  assert_true(class_list.contains("cls2"), label="classList cls2 remains")

  // dataset — Web API: el.dataset (DOMStringMap)
  let el3 = create_html_element("div")
  let dataset = el3.get_dataset()
  dataset.set("foo", "bar")
  assert_eq(dataset.get_named("foo"), "bar", label="dataset set/get")
  dataset.set("foo", "baz")
  assert_eq(dataset.get_named("foo"), "baz", label="dataset overwrite")
  dataset.delete("foo")

  // style — via JS helpers (CSSOMString is opaque, so use JsValue workaround)
  let el4 = create_html_element("div")
  let jv = el4.to_js_value()
  js_set_style_prop(jv, "color", "red")
  assert_eq(js_get_style_prop(jv, "color"), "red", label="style color")
  js_set_style_prop(jv, "font-size", "14px")
  assert_eq(
    js_get_style_prop(jv, "font-size"),
    "14px",
    label="style font-size",
  )
  println("  html_element_bool_props: ok")
}

///|
/// Test HTMLElement innerText property.
pub fn test_html_element_inner_text() -> Unit {
  let el = create_html_element("p")
  assert_eq(el.get_inner_text(), "", label="innerText default")
  el.set_inner_text("Hello, World!")
  assert_eq(el.get_inner_text(), "Hello, World!", label="innerText set")
  el.set_inner_text("Updated")
  assert_eq(el.get_inner_text(), "Updated", label="innerText overwrite")
  println("  html_element_inner_text: ok")
}

///|
/// Test HTMLElement offset properties (Int getters, read-only).
pub fn test_html_element_offset() -> Unit {
  let el = create_html_element("div")

  // offset properties — returns 0 for detached elements
  let _top = el.get_offset_top()
  let _left = el.get_offset_left()
  let w = el.get_offset_width()
  let h = el.get_offset_height()
  assert_eq(w, 0, label="offsetWidth detached")
  assert_eq(h, 0, label="offsetHeight detached")

  // offset_parent — None for detached elements
  assert_true(el.get_offset_parent() is None, label="offset_parent detached")
  println("  html_element_offset: ok")
}

///|
/// Test HTMLElement methods — click, focus, blur (verify they don't throw).
/// Rust web-sys ref: crates/web-sys/tests/wasm/html_element.rs
pub fn test_html_element_methods() -> Unit {
  let el = create_html_element("div")

  // click, focus, blur — just verify they don't throw
  el.click()
  el.focus()
  el.blur()
  println("  html_element_methods: ok")
}
