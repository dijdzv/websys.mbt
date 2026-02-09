///|
fn test_slot_element() -> Unit {
  let doc = get_document()
  let slot = @websys.HTMLSlotElement::from_js_value(
    doc.create_element("slot").to_js_value(),
  )
  // name
  assert_eq(slot.get_name(), "", label="default name")
  slot.set_name("my-slot")
  assert_eq(slot.get_name(), "my-slot", label="name set")
  // type conversion
  let _html : @websys.HTMLElement = slot.to_html_element()

}
