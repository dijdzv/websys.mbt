// Type narrowing tests — as_*, from_js_value_opt, is_* patterns
// Validates codegen for instanceof-based safe downcasting

///|
/// Test Node::as_* narrowing — success and failure cases.
pub fn test_node_narrowing() -> Unit {
  let doc = get_document()
  // Create a div — its Node should narrow to HTMLDivElement
  let div = doc.create_element("div")
  let node = div.to_node()
  // Success: Node → HTMLDivElement
  assert_true(node.as_html_div_element() is Some(_), label="Node as HTMLDivElement")
  // Success: Node → HTMLElement
  assert_true(node.as_html_element() is Some(_), label="Node as HTMLElement")
  // Success: Node → Element
  assert_true(node.as_element() is Some(_), label="Node as Element")
  // Failure: Node → HTMLInputElement (div is not input)
  assert_true(node.as_html_input_element() is None, label="div not HTMLInputElement")
  // Failure: Node → Document
  assert_true(node.as_document() is None, label="div not Document")
  // Text node narrowing
  let text = doc.create_text_node("hello")
  let text_node = text.to_node()
  assert_true(text_node.as_text() is Some(_), label="Text node as Text")
  assert_true(text_node.as_character_data() is Some(_), label="Text node as CharacterData")
  assert_true(text_node.as_element() is None, label="Text node not Element")
  // Comment node narrowing
  let comment = doc.create_comment("test")
  let comment_node = comment.to_node()
  assert_true(comment_node.as_comment() is Some(_), label="Comment as Comment")
  assert_true(comment_node.as_text() is None, label="Comment not Text")
  println("  node_narrowing: ok")
}

///|
/// Test Element::as_* narrowing.
pub fn test_element_narrowing() -> Unit {
  let doc = get_document()
  let input = doc.create_element("input")
  // Element → HTMLInputElement
  assert_true(
    input.as_html_input_element() is Some(_),
    label="Element as HTMLInputElement",
  )
  // Element → HTMLElement
  assert_true(input.as_html_element() is Some(_), label="input as HTMLElement")
  // Element → HTMLButtonElement (should fail)
  assert_true(
    input.as_html_button_element() is None,
    label="input not HTMLButtonElement",
  )
  println("  element_narrowing: ok")
}

///|
/// Test Event::as_* narrowing.
pub fn test_event_narrowing() -> Unit {
  // PointerEvent should narrow to MouseEvent and UIEvent (inheritance)
  let ptr_event = @websys.PointerEvent::new("click")
  let event = ptr_event.to_event()
  assert_true(
    event.as_pointer_event() is Some(_),
    label="Event as PointerEvent",
  )
  assert_true(event.as_mouse_event() is Some(_), label="PointerEvent as MouseEvent")
  assert_true(event.as_ui_event() is Some(_), label="PointerEvent as UIEvent")
  // Failure: PointerEvent is not KeyboardEvent
  assert_true(
    event.as_keyboard_event() is None,
    label="PointerEvent not KeyboardEvent",
  )
  // KeyboardEvent narrowing
  let kb_event = @websys.KeyboardEvent::new("keydown")
  let kb_base = kb_event.to_event()
  assert_true(
    kb_base.as_keyboard_event() is Some(_),
    label="Event as KeyboardEvent",
  )
  assert_true(
    kb_base.as_mouse_event() is None,
    label="KeyboardEvent not MouseEvent",
  )
  // CustomEvent narrowing
  let custom = @websys.CustomEvent::new("test")
  assert_true(
    custom.to_event().as_custom_event() is Some(_),
    label="Event as CustomEvent",
  )
  println("  event_narrowing: ok")
}

///|
/// Test from_js_value_opt — checked cast from JsValue.
pub fn test_from_js_value_opt() -> Unit {
  let doc = get_document()
  // Create a DOMRect via getBoundingClientRect
  let div = doc.create_element("div")
  let rect_js = div.get_bounding_client_rect().to_js_value()
  // Success: JsValue → DOMRect
  assert_true(
    @websys.DOMRect::from_js_value_opt(rect_js) is Some(_),
    label="JsValue as DOMRect",
  )
  // Success: also a DOMRectReadOnly
  assert_true(
    @websys.DOMRectReadOnly::from_js_value_opt(rect_js) is Some(_),
    label="DOMRect as DOMRectReadOnly",
  )
  // Failure: DOMRect is not a DOMPoint
  assert_true(
    @websys.DOMPoint::from_js_value_opt(rect_js) is None,
    label="DOMRect not DOMPoint",
  )
  // from_js_value_opt on Element
  let div_js = div.to_js_value()
  assert_true(
    @websys.Element::from_js_value_opt(div_js) is Some(_),
    label="div JsValue as Element",
  )
  assert_true(
    @websys.HTMLDivElement::from_js_value_opt(div_js) is Some(_),
    label="div JsValue as HTMLDivElement",
  )
  assert_true(
    @websys.HTMLInputElement::from_js_value_opt(div_js) is None,
    label="div JsValue not HTMLInputElement",
  )
  println("  from_js_value_opt: ok")
}

///|
/// Test union type is_* and as_* patterns.
pub fn test_union_type_narrowing() -> Unit {
  // BlobPart: String | Blob | BufferSource
  let str_part = @websys.BlobPart::from_string("hello")
  assert_true(str_part.is_string(), label="BlobPart from_string is_string")
  assert_false(str_part.is_blob(), label="BlobPart from_string not is_blob")
  assert_eq(str_part.as_string(), Some("hello"), label="BlobPart as_string")
  assert_true(str_part.as_blob() is None, label="string part as_blob is None")
  let blob = @websys.Blob::new()
  let blob_part = @websys.BlobPart::from_blob(blob)
  assert_true(blob_part.is_blob(), label="BlobPart from_blob is_blob")
  assert_false(blob_part.is_string(), label="BlobPart from_blob not is_string")
  assert_true(blob_part.as_blob() is Some(_), label="blob part as_blob is Some")
  assert_true(blob_part.as_string() is None, label="blob part as_string is None")
  println("  union_type_narrowing: ok")
}
