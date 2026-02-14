// HTMLIFrameElement test
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement

///|
fn test_iframe_element() -> Unit {
  let doc = get_document()
  let iframe = @websys.HTMLIFrameElement::from_js_value(
    doc.create_element("iframe").to_js_value(),
  )
  // src (URL-reflected attribute)
  iframe.set_src("https://example.com/embed")
  assert_eq(iframe.get_src(), "https://example.com/embed", label="src")
  // name
  assert_eq(iframe.get_name(), "", label="name default")
  iframe.set_name("my-frame")
  assert_eq(iframe.get_name(), "my-frame", label="name set")
  // width / height (string attributes)
  iframe.set_width("640")
  assert_eq(iframe.get_width(), "640", label="width")
  iframe.set_height("480")
  assert_eq(iframe.get_height(), "480", label="height")
  // allow
  iframe.set_allow("fullscreen; autoplay")
  assert_eq(iframe.get_allow(), "fullscreen; autoplay", label="allow")
  // allowFullscreen
  assert_false(iframe.get_allow_fullscreen(), label="allowFullscreen default")
  iframe.set_allow_fullscreen(true)
  assert_true(iframe.get_allow_fullscreen(), label="allowFullscreen set")
  // referrerPolicy
  iframe.set_referrer_policy("no-referrer")
  assert_eq(iframe.get_referrer_policy(), "no-referrer", label="referrerPolicy")
  // loading
  iframe.set_loading("lazy")
  assert_eq(iframe.get_loading(), "lazy", label="loading")
  // sandbox (DOMTokenList)
  let sandbox = iframe.get_sandbox()
  assert_eq(sandbox.get_length(), 0, label="sandbox initially empty")
  // type conversions
  let _html : @websys.HTMLElement = iframe.to_html_element()
  let _el : @websys.Element = iframe.to_element()
}
