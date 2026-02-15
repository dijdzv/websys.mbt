// HTMLMapElement / HTMLAreaElement tests
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/HTMLMapElement
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement

///|
fn test_map_element() -> Unit {
  let doc = get_document()
  let map = @websys.HTMLMapElement::from_js_value(
    doc.create_element("map").to_js_value(),
  )
  // name
  assert_eq(map.get_name(), "", label="name default")
  map.set_name("my-map")
  assert_eq(map.get_name(), "my-map", label="name set")
  // areas collection (initially empty)
  let areas = map.get_areas()
  assert_eq(areas.get_length(), 0, label="areas initially empty")
  // Add an area element to the map
  let area = doc.create_element("area")
  map.to_node().append_child(area.to_node()) |> ignore
  assert_eq(map.get_areas().get_length(), 1, label="areas after adding")
}

///|
fn test_area_element() -> Unit {
  let doc = get_document()
  let area = @websys.HTMLAreaElement::from_js_value(
    doc.create_element("area").to_js_value(),
  )
  // alt
  assert_eq(area.get_alt(), "", label="alt default")
  area.set_alt("Logo")
  assert_eq(area.get_alt(), "Logo", label="alt set")
  // coords
  area.set_coords("0,0,100,100")
  assert_eq(area.get_coords(), "0,0,100,100", label="coords")
  // shape
  area.set_shape("rect")
  assert_eq(area.get_shape(), "rect", label="shape")
  // target
  area.set_target("_blank")
  assert_eq(area.get_target(), "_blank", label="target")
  // rel
  area.set_rel("noopener")
  assert_eq(area.get_rel(), "noopener", label="rel")
  // relList (DOMTokenList)
  let rel_list = area.get_rel_list()
  assert_eq(rel_list.get_length(), 1, label="relList length")
  // href (URL-reflected attribute)
  area.set_href("https://example.com/page")
  assert_eq(area.get_href(), "https://example.com/page", label="href")
  // referrerPolicy
  area.set_referrer_policy("origin")
  assert_eq(area.get_referrer_policy(), "origin", label="referrerPolicy")
  // noHref (deprecated)
  assert_false(area.get_no_href(), label="noHref default")
  area.set_no_href(true)
  assert_true(area.get_no_href(), label="noHref set")
}
