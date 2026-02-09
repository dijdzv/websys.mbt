// CSSOMString is opaque without Eq/Show, so we use JS helpers for string-based CSS operations.
// This documents that CSSOMString needs from_string/to_string or trait impls.

///|
extern "js" fn js_set_style(
  el : @websys.JsValue,
  prop : String,
  value : String,
) -> Unit =
  #| (el, prop, value) => { el.style.setProperty(prop, value) }

///|
extern "js" fn js_get_style(el : @websys.JsValue, prop : String) -> String =
  #| (el, prop) => el.style.getPropertyValue(prop)

///|
extern "js" fn js_get_style_length(el : @websys.JsValue) -> Int =
  #| (el) => el.style.length

///|
extern "js" fn js_remove_style(el : @websys.JsValue, prop : String) -> String =
  #| (el, prop) => el.style.removeProperty(prop)

///|
extern "js" fn js_get_css_text(el : @websys.JsValue) -> String =
  #| (el) => el.style.cssText

///|
fn test_css_style() -> Unit {
  let doc = get_document()
  let div = doc.create_element("div")
  let jv = div.to_js_value()
  // Initially no styles
  assert_eq(js_get_style_length(jv), 0, label="initially empty")
  // setProperty
  js_set_style(jv, "color", "red")
  assert_eq(js_get_style(jv, "color"), "red", label="color")
  js_set_style(jv, "font-size", "16px")
  assert_eq(js_get_style(jv, "font-size"), "16px", label="font-size")
  assert_eq(js_get_style_length(jv), 2, label="length after set")
  // removeProperty
  let removed = js_remove_style(jv, "color")
  assert_eq(removed, "red", label="removed value")
  assert_eq(js_get_style_length(jv), 1, label="length after remove")
  // cssText
  let css_text = js_get_css_text(jv)
  assert_true(
    css_text.contains("font-size"),
    label="cssText contains font-size",
  )
}

///|
fn test_css_style_text() -> Unit {
  let doc = get_document()
  let div = doc.create_element("div")
  let jv = div.to_js_value()
  // Test that HTMLElement.get_style() returns a CSSStyleProperties object
  let html = @websys.HTMLElement::from_js_value(jv)
  let _style = html.get_style()
  // Just verify it doesn't crash
  js_set_style(jv, "background-color", "blue")
  assert_eq(
    js_get_style(jv, "background-color"),
    "blue",
    label="background-color",
  )
}
