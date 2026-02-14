// HTMLOptionsCollection test
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection
// Equivalent Rust web-sys test: options_collection.rs

///|
fn test_options_collection() -> Unit {
  let doc = get_document()
  let select = @websys.HTMLSelectElement::from_js_value(
    doc.create_element("select").to_js_value(),
  )

  // Add four options (matching Rust test: "food options collection")
  let foods = ["Pizza", "Tacos", "Sushi", "Ramen"]
  for i = 0; i < foods.length(); i = i + 1 {
    let opt = @websys.HTMLOptionElement::from_js_value(
      doc.create_element("option").to_js_value(),
    )
    opt.set_value(foods[i])
    opt.set_text(foods[i])
    select.add(
      @websys.HTMLOptionElementOrHTMLOptGroupElement::from_html_option_element(
        opt,
      ),
    )
  }

  // Get the options collection
  let opts = select.get_options()

  // Should have four options
  assert_eq(opts.get_length(), 4, label="initial length")

  // Remove first element
  opts.remove(0)
  assert_eq(opts.get_length(), 3, label="length after remove")

  // Set selected index
  opts.set_selected_index(1)
  assert_eq(opts.get_selected_index(), 1, label="selectedIndex")

  // Set length
  opts.set_length(1234)
  assert_eq(opts.get_length(), 1234, label="length after set")
}
