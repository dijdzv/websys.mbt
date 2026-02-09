///|
fn test_datalist_element() -> Unit {
  let doc = get_document()
  let datalist = @websys.HTMLDataListElement::from_js_value(
    doc.create_element("datalist").to_js_value(),
  )
  // options collection (initially empty)
  let options = datalist.get_options()
  assert_eq(options.get_length(), 0, label="options initially empty")
  // Add options via DOM
  let opt1 = doc.create_element("option")
  @websys.HTMLOptionElement::from_js_value(opt1.to_js_value()).set_value("red")
  let opt2 = doc.create_element("option")
  @websys.HTMLOptionElement::from_js_value(opt2.to_js_value()).set_value(
    "green",
  )
  datalist.to_node().append_child(opt1.to_node()) |> ignore
  datalist.to_node().append_child(opt2.to_node()) |> ignore
  assert_eq(datalist.get_options().get_length(), 2, label="options after add")
}
