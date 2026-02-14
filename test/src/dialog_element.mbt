///|
fn test_dialog_element() -> Unit {
  let doc = get_document()
  let dialog = @websys.HTMLDialogElement::from_js_value(
    doc.create_element("dialog").to_js_value(),
  )
  // initially closed
  assert_false(dialog.get_open(), label="open default")
  // returnValue
  dialog.set_return_value("ok")
  assert_eq(dialog.get_return_value(), "ok", label="returnValue")
  // open/close via attribute
  dialog.set_open(true)
  assert_true(dialog.get_open(), label="open after set")
  dialog.set_open(false)
  assert_false(dialog.get_open(), label="open after close set")
  // show() opens non-modally
  dialog.show()
  assert_true(dialog.get_open(), label="open after show")
  // close with returnValue
  dialog.close_with_return_value("cancelled")
  assert_false(dialog.get_open(), label="open after close")
  assert_eq(
    dialog.get_return_value(),
    "cancelled",
    label="returnValue after close",
  )
}
