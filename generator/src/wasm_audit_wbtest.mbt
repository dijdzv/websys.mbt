///|
test "inventory retains constructs after the first unsupported declaration" {
  let report = inventory_wasm_source(
    "[Exposed=Window] interface X { constructor(); Promise<DOMString> load(optional long limit); }; dictionary Options { DOMString? label; };",
  )
  assert_eq(report.definitions, 2)
  assert_true(report.first_raw_rejection is Some(_))
  assert_eq(report.parse_error, None)
  assert_eq(report.constructs.get("construct:dictionary"), Some(1))
  assert_eq(report.constructs.get("type:Promise"), Some(1))
  assert_eq(report.constructs.get("argument:optional"), Some(1))
  assert_eq(report.constructs.get("type:nullable"), Some(1))
}

///|
test "inventory does not turn parse failures into supported empty APIs" {
  let report = inventory_wasm_source("interface {")
  assert_true(report.parse_error is Some(_))
  assert_eq(report.definitions, 0)
}
