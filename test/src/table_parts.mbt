///|
fn test_table_section() -> Unit {
  let doc = get_document()
  let section = @websys.HTMLTableSectionElement::from_js_value(
    doc.create_element("tbody").to_js_value(),
  )
  // deprecated properties
  section.set_align("center")
  assert_eq(section.get_align(), "center", label="align")
  section.set_v_align("middle")
  assert_eq(section.get_v_align(), "middle", label="vAlign")
  section.set_ch(".")
  assert_eq(section.get_ch(), ".", label="ch")
  section.set_ch_off("2")
  assert_eq(section.get_ch_off(), "2", label="chOff")
  // rows collection
  let rows = section.get_rows()
  assert_eq(rows.get_length(), 0, label="rows initially empty")
  // insertRow
  let row = section.insert_row()
  assert_eq(section.get_rows().get_length(), 1, label="rows after insert")
  ignore(row)
}

///|
fn test_table_row() -> Unit {
  let doc = get_document()
  let row = @websys.HTMLTableRowElement::from_js_value(
    doc.create_element("tr").to_js_value(),
  )
  // deprecated properties
  row.set_align("right")
  assert_eq(row.get_align(), "right", label="align")
  row.set_v_align("top")
  assert_eq(row.get_v_align(), "top", label="vAlign")
  row.set_bg_color("#ff0000")
  assert_eq(row.get_bg_color(), "#ff0000", label="bgColor")
  // cells
  let cells = row.get_cells()
  assert_eq(cells.get_length(), 0, label="cells initially empty")
  // insertCell
  let cell = row.insert_cell()
  assert_eq(row.get_cells().get_length(), 1, label="cells after insert")
  ignore(cell)
}

///|
fn test_table_cell() -> Unit {
  let doc = get_document()
  let cell = @websys.HTMLTableCellElement::from_js_value(
    doc.create_element("td").to_js_value(),
  )
  // colSpan / rowSpan
  cell.set_col_span(2)
  assert_eq(cell.get_col_span(), 2, label="colSpan")
  cell.set_row_span(3)
  assert_eq(cell.get_row_span(), 3, label="rowSpan")
  // headers
  cell.set_headers("h1 h2")
  assert_eq(cell.get_headers(), "h1 h2", label="headers")
  // scope
  cell.set_scope("col")
  assert_eq(cell.get_scope(), "col", label="scope")
  // abbr
  cell.set_abbr("abbreviation")
  assert_eq(cell.get_abbr(), "abbreviation", label="abbr")
  // deprecated string props
  cell.set_align("center")
  assert_eq(cell.get_align(), "center", label="align")
  cell.set_width("100")
  assert_eq(cell.get_width(), "100", label="width")
  cell.set_height("50")
  assert_eq(cell.get_height(), "50", label="height")
}

///|
fn test_table_full() -> Unit {
  let doc = get_document()
  // Build a complete table structure
  let table = @websys.HTMLTableElement::from_js_value(
    doc.create_element("table").to_js_value(),
  )
  // Create caption
  let caption = table.create_caption()
  caption.to_html_element().set_inner_text("Test Table")
  // Create thead
  let thead = table.create_t_head()
  let header_row = thead.insert_row()
  let th1 = header_row.insert_cell()
  th1.to_html_element().set_inner_text("Name")
  let th2 = header_row.insert_cell()
  th2.to_html_element().set_inner_text("Age")
  // Create tbody
  let tbody = table.create_t_body()
  let row1 = tbody.insert_row()
  let td1 = row1.insert_cell()
  td1.to_html_element().set_inner_text("Alice")
  let td2 = row1.insert_cell()
  td2.to_html_element().set_inner_text("30")
  // Verify structure
  assert_eq(thead.get_rows().get_length(), 1, label="thead rows")
  assert_eq(tbody.get_rows().get_length(), 1, label="tbody rows")
  assert_eq(header_row.get_cells().get_length(), 2, label="header cells")
  assert_eq(row1.get_cells().get_length(), 2, label="data cells")
}
