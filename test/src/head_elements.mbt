///|
fn test_html_html_element() -> Unit {
  let doc = get_document()
  let html = @websys.HTMLHtmlElement::from_js_value(
    doc.create_element("html").to_js_value(),
  )
  // version is a deprecated string property
  html.set_version("-//W3C//DTD HTML 4.01//EN")
  assert_eq(html.get_version(), "-//W3C//DTD HTML 4.01//EN", label="version")
  let _el : @websys.Element = html.to_element()
}

///|
fn test_title_element() -> Unit {
  let doc = get_document()
  let title = @websys.HTMLTitleElement::from_js_value(
    doc.create_element("title").to_js_value(),
  )
  title.set_text("My Page Title")
  assert_eq(title.get_text(), "My Page Title", label="text")
}

///|
fn test_meta_element() -> Unit {
  let doc = get_document()
  let meta = @websys.HTMLMetaElement::from_js_value(
    doc.create_element("meta").to_js_value(),
  )
  meta.set_name("description")
  assert_eq(meta.get_name(), "description", label="name")
  meta.set_content("A test page")
  assert_eq(meta.get_content(), "A test page", label="content")
  meta.set_http_equiv("Content-Type")
  assert_eq(meta.get_http_equiv(), "Content-Type", label="httpEquiv")
  meta.set_scheme("PICS-1.1")
  assert_eq(meta.get_scheme(), "PICS-1.1", label="scheme")
  meta.set_media("screen")
  assert_eq(meta.get_media(), "screen", label="media")
}

///|
fn test_style_element() -> Unit {
  let doc = get_document()
  let style = @websys.HTMLStyleElement::from_js_value(
    doc.create_element("style").to_js_value(),
  )
  // media
  style.set_media("print")
  assert_eq(style.get_media(), "print", label="media")
  // type
  style.set_type("text/css")
  assert_eq(style.get_type(), "text/css", label="type")
  // disabled requires the element to be connected (needs an associated stylesheet)
  let head = doc.get_head()
  match head {
    Some(h) => {
      h.to_node().append_child(style.to_node()) |> ignore
      assert_false(style.get_disabled(), label="disabled default")
      style.set_disabled(true)
      assert_true(style.get_disabled(), label="disabled set")
      style.set_disabled(false)
      assert_false(style.get_disabled(), label="disabled unset")
      h.to_node().remove_child(style.to_node()) |> ignore
    }
    None => abort("FAIL: document.head is None")
  }
}

///|
fn test_link_element() -> Unit {
  let doc = get_document()
  let link = @websys.HTMLLinkElement::from_js_value(
    doc.create_element("link").to_js_value(),
  )
  link.set_rel("stylesheet")
  assert_eq(link.get_rel(), "stylesheet", label="rel")
  link.set_type("text/css")
  assert_eq(link.get_type(), "text/css", label="type")
  link.set_media("screen")
  assert_eq(link.get_media(), "screen", label="media")
  link.set_hreflang("en")
  assert_eq(link.get_hreflang(), "en", label="hreflang")
  link.set_integrity("sha256-abc123")
  assert_eq(link.get_integrity(), "sha256-abc123", label="integrity")
  link.set_referrer_policy("no-referrer")
  assert_eq(link.get_referrer_policy(), "no-referrer", label="referrerPolicy")
  // disabled
  assert_false(link.get_disabled(), label="disabled default")
  link.set_disabled(true)
  assert_true(link.get_disabled(), label="disabled set")
}

///|
fn test_script_element() -> Unit {
  let doc = get_document()
  let script = @websys.HTMLScriptElement::from_js_value(
    doc.create_element("script").to_js_value(),
  )
  // src is a URL-reflected attribute: getter returns absolute URL per HTML spec
  script.set_src("https://cdn.example.com/app.js")
  assert_eq(script.get_src(), "https://cdn.example.com/app.js", label="src")
  script.set_type("module")
  assert_eq(script.get_type(), "module", label="type")
  // async defaults to true for dynamically-created scripts (per HTML spec)
  assert_true(script.get_async(), label="async default (dynamic)")
  script.set_async(false)
  assert_false(script.get_async(), label="async set false")
  script.set_async(true)
  assert_true(script.get_async(), label="async set true")
  assert_false(script.get_defer(), label="defer default")
  script.set_defer(true)
  assert_true(script.get_defer(), label="defer set")
  assert_false(script.get_no_module(), label="noModule default")
  script.set_no_module(true)
  assert_true(script.get_no_module(), label="noModule set")
  // text
  script.set_text("console.log('hello')")
  assert_eq(script.get_text(), "console.log('hello')", label="text")
  // integrity
  script.set_integrity("sha384-xyz")
  assert_eq(script.get_integrity(), "sha384-xyz", label="integrity")
  script.set_referrer_policy("origin")
  assert_eq(script.get_referrer_policy(), "origin", label="referrerPolicy")
  // charset (deprecated)
  script.set_charset("UTF-8")
  assert_eq(script.get_charset(), "UTF-8", label="charset")
  // cross_origin — None by default
  assert_true(
    script.get_cross_origin() is None,
    label="cross_origin default None",
  )
  script.set_cross_origin(Some("anonymous"))
  assert_eq(
    script.get_cross_origin().unwrap(),
    "anonymous",
    label="cross_origin set",
  )
  script.set_cross_origin(None)
  assert_true(script.get_cross_origin() is None, label="cross_origin set None")
  // event (deprecated)
  script.set_event("ev")
  assert_eq(script.get_event(), "ev", label="event")
  // html_for (deprecated)
  script.set_html_for("hey")
  assert_eq(script.get_html_for(), "hey", label="html_for")
}
