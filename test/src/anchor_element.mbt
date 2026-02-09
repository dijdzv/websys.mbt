// HTMLAnchorElement tests
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement
// Rust web-sys ref: crates/web-sys/tests/wasm/anchor_element.rs

///|
/// Test HTMLAnchorElement — href, target, rel, text, URL decomposition.
/// Equivalent to:
///   const a = document.createElement("a")
///   a.href = "https://example.com:8080/path?q=1#hash"
///   a.hostname // "example.com"
pub fn test_anchor_element() -> Unit {
  let doc = get_document()
  let el = doc.create_element("a")
  let a = @websys.HTMLAnchorElement::from_js_value(el.to_js_value())

  // href — Web API: a.href
  a.set_href("https://example.com:8080/path?q=1#hash")
  let href = a.get_href()
  assert_true(href.contains("example.com"), label="href contains domain")

  // target — Web API: a.target
  assert_eq(a.get_target(), "", label="target default")
  a.set_target("_blank")
  assert_eq(a.get_target(), "_blank", label="target set")

  // rel — Web API: a.rel
  assert_eq(a.get_rel(), "", label="rel default")
  a.set_rel("noopener noreferrer")
  assert_eq(a.get_rel(), "noopener noreferrer", label="rel set")

  // text — Web API: a.text
  a.set_text("Click me")
  assert_eq(a.get_text(), "Click me", label="text set")

  // URL decomposition — Web API: a.protocol, a.hostname, a.pathname, a.search, a.hash
  assert_eq(a.get_protocol(), "https:", label="protocol")
  assert_eq(a.get_hostname(), "example.com", label="hostname")
  assert_eq(a.get_pathname(), "/path", label="pathname")
  assert_eq(a.get_search(), "?q=1", label="search")
  assert_eq(a.get_hash(), "#hash", label="hash")

  // download — Web API: a.download
  assert_eq(a.get_download(), "", label="download default")
  a.set_download("file.pdf")
  assert_eq(a.get_download(), "file.pdf", label="download set")

  // hreflang — Web API: a.hreflang
  a.set_hreflang("en")
  assert_eq(a.get_hreflang(), "en", label="hreflang set")

  // ping — Web API: a.ping
  a.set_ping("https://example.com")
  assert_eq(a.get_ping(), "https://example.com", label="ping set")

  // referrerPolicy — Web API: a.referrerPolicy
  a.set_referrer_policy("no-referrer")
  assert_eq(a.get_referrer_policy(), "no-referrer", label="referrerPolicy set")

  // type — Web API: a.type
  a.set_type("text/html")
  assert_eq(a.get_type(), "text/html", label="type set")

  // name (deprecated) — Web API: a.name
  a.set_name("link1")
  assert_eq(a.get_name(), "link1", label="name set")

  // coords (deprecated) — Web API: a.coords
  a.set_coords("1,2,3")
  assert_eq(a.get_coords(), "1,2,3", label="coords set")

  // charset (deprecated) — Web API: a.charset
  a.set_charset("utf-8")
  assert_eq(a.get_charset(), "utf-8", label="charset set")

  // rev (deprecated) — Web API: a.rev
  a.set_rev("alternate")
  assert_eq(a.get_rev(), "alternate", label="rev set")

  // shape (deprecated) — Web API: a.shape
  a.set_shape("rect")
  assert_eq(a.get_shape(), "rect", label="shape set")
  println("  anchor_element: ok")
}
