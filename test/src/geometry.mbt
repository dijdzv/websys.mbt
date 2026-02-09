// DOMPoint / DOMRect geometry tests
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint
// Pattern: interface (constructor, Double getter/setter)

///|
/// Test DOMPoint — constructor and coordinate properties.
/// Equivalent to:
///   const p = new DOMPoint()
///   p.x // 0
///   p.x = 10; p.x // 10
pub fn test_dom_point() -> Unit {
  // Default constructor — all zeros
  let p = @websys.DOMPoint::new()
  assert_eq(p.get_x(), 0.0, label="x default")
  assert_eq(p.get_y(), 0.0, label="y default")
  assert_eq(p.get_z(), 0.0, label="z default")
  assert_eq(p.get_w(), 1.0, label="w default (homogeneous)")

  // Set properties
  p.set_x(10.0)
  p.set_y(20.0)
  p.set_z(30.0)
  p.set_w(2.0)
  assert_eq(p.get_x(), 10.0, label="x set")
  assert_eq(p.get_y(), 20.0, label="y set")
  assert_eq(p.get_z(), 30.0, label="z set")
  assert_eq(p.get_w(), 2.0, label="w set")

  // Constructor with values
  let p2 = @websys.DOMPoint::new_with_w(1.5, 2.5, 3.5, 4.5)
  assert_eq(p2.get_x(), 1.5, label="new_with_w x")
  assert_eq(p2.get_y(), 2.5, label="new_with_w y")
  assert_eq(p2.get_z(), 3.5, label="new_with_w z")
  assert_eq(p2.get_w(), 4.5, label="new_with_w w")
  println("  dom_point: ok")
}

///|
/// Test DOMRect — constructor and rect properties.
/// Equivalent to:
///   const r = new DOMRect(10, 20, 100, 50)
///   r.x // 10, r.width // 100
///   r.top // 20, r.right // 110
pub fn test_dom_rect() -> Unit {
  // Default constructor
  let r = @websys.DOMRect::new()
  assert_eq(r.get_x(), 0.0, label="x default")
  assert_eq(r.get_y(), 0.0, label="y default")
  assert_eq(r.get_width(), 0.0, label="width default")
  assert_eq(r.get_height(), 0.0, label="height default")

  // Constructor with values
  let r2 = @websys.DOMRect::new_with_height(10.0, 20.0, 100.0, 50.0)
  assert_eq(r2.get_x(), 10.0, label="x set")
  assert_eq(r2.get_y(), 20.0, label="y set")
  assert_eq(r2.get_width(), 100.0, label="width set")
  assert_eq(r2.get_height(), 50.0, label="height set")

  // Computed properties via DOMRectReadOnly cast
  let ro = r2.to_dom_rect_read_only()
  assert_eq(ro.get_top(), 20.0, label="top")
  assert_eq(ro.get_left(), 10.0, label="left")
  assert_eq(ro.get_right(), 110.0, label="right (x + width)")
  assert_eq(ro.get_bottom(), 70.0, label="bottom (y + height)")

  // Mutable set
  r2.set_x(0.0)
  r2.set_width(200.0)
  assert_eq(r2.get_x(), 0.0, label="x after set")
  assert_eq(r2.get_width(), 200.0, label="width after set")
  println("  dom_rect: ok")
}
