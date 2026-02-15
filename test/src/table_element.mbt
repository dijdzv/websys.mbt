// HTMLTableElement tests
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement
// Rust web-sys ref: crates/web-sys/tests/wasm/table_element.rs

///|
/// Test HTMLTableElement — caption, tHead, tFoot, tBodies, rows, insertRow, deleteRow,
/// and deprecated attributes (align, border, frame, rules, summary, width, bgColor,
/// cellPadding, cellSpacing).
/// Equivalent to:
///   const table = document.createElement("table")
///   table.createCaption(), table.createTHead(), etc.
pub fn test_table_element() -> Unit {
  let doc = get_document()
  let el = doc.create_element("table")
  let table = @websys.HTMLTableElement::from_js_value(el.to_js_value())

  // caption — initially None, full lifecycle
  assert_true(table.get_caption() is None, label="caption initially None")
  let caption = table.create_caption()
  assert_true(table.get_caption() is Some(_), label="caption after create")
  table.delete_caption()
  assert_true(table.get_caption() is None, label="caption after delete")
  table.set_caption(Some(caption))
  assert_true(table.get_caption() is Some(_), label="caption after set Some")

  // t_head — initially None, full lifecycle
  assert_true(table.get_t_head() is None, label="t_head initially None")
  let thead = table.create_t_head()
  assert_true(table.get_t_head() is Some(_), label="t_head after create")
  table.delete_t_head()
  assert_true(table.get_t_head() is None, label="t_head after delete")
  table.set_t_head(Some(thead))
  assert_true(table.get_t_head() is Some(_), label="t_head after set Some")

  // t_foot — initially None, full lifecycle
  assert_true(table.get_t_foot() is None, label="t_foot initially None")
  let tfoot = table.create_t_foot()
  assert_true(table.get_t_foot() is Some(_), label="t_foot after create")
  table.delete_t_foot()
  assert_true(table.get_t_foot() is None, label="t_foot after delete")
  table.set_t_foot(Some(tfoot))
  assert_true(table.get_t_foot() is Some(_), label="t_foot after set Some")

  // t_bodies — Web API: table.tBodies
  let _tbodies = table.get_t_bodies()

  // rows — Web API: table.rows
  let _rows = table.get_rows()

  // create_t_body — Web API: table.createTBody()
  let _tbody = table.create_t_body()

  // insert_row — Web API: table.insertRow()
  let _row = table.insert_row()
  let _row_at = table.insert_row_with_index(0)

  // delete_row — Web API: table.deleteRow(index)
  table.delete_row(0)

  // deprecated attributes
  table.set_align("left")
  assert_eq(table.get_align(), "left", label="align")
  table.set_border("1")
  assert_eq(table.get_border(), "1", label="border")
  table.set_frame("box")
  assert_eq(table.get_frame(), "box", label="frame")
  table.set_rules("all")
  assert_eq(table.get_rules(), "all", label="rules")
  table.set_summary("Summary")
  assert_eq(table.get_summary(), "Summary", label="summary")
  table.set_width("100")
  assert_eq(table.get_width(), "100", label="width")
  table.set_bg_color("#fff")
  assert_eq(table.get_bg_color(), "#fff", label="bg_color")
  table.set_cell_padding("5")
  assert_eq(table.get_cell_padding(), "5", label="cell_padding")
  table.set_cell_spacing("5")
  assert_eq(table.get_cell_spacing(), "5", label="cell_spacing")
  println("  table_element: ok")
}
