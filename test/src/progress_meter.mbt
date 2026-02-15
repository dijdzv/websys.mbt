///|
fn test_progress_element() -> Unit {
  let doc = get_document()
  let progress = @websys.HTMLProgressElement::from_js_value(
    doc.create_element("progress").to_js_value(),
  )
  // max
  progress.set_max(100.0)
  assert_eq(progress.get_max(), 100.0, label="max")
  // value
  progress.set_value(50.0)
  assert_eq(progress.get_value(), 50.0, label="value")
  // position (computed)
  let pos = progress.get_position()
  assert_eq(pos, 0.5, label="position (50/100)")
  // labels — Rust test: progress.labels().length() == 0
  let labels = progress.get_labels()
  assert_eq(labels.get_length(), 0, label="labels empty")
}

///|
fn test_meter_element() -> Unit {
  let doc = get_document()
  let meter = @websys.HTMLMeterElement::from_js_value(
    doc.create_element("meter").to_js_value(),
  )
  // min/max
  meter.set_min(0.0)
  assert_eq(meter.get_min(), 0.0, label="min")
  meter.set_max(100.0)
  assert_eq(meter.get_max(), 100.0, label="max")
  // value
  meter.set_value(75.0)
  assert_eq(meter.get_value(), 75.0, label="value")
  // low/high/optimum
  meter.set_low(25.0)
  assert_eq(meter.get_low(), 25.0, label="low")
  meter.set_high(75.0)
  assert_eq(meter.get_high(), 75.0, label="high")
  meter.set_optimum(50.0)
  assert_eq(meter.get_optimum(), 50.0, label="optimum")
}
