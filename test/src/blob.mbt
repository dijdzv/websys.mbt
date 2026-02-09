// Blob / File API tests
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/Blob
// Pattern: interface, union type (BlobPart), dictionary (BlobPropertyBag),
//          enum (EndingType)

///|
/// Test Blob construction and properties.
/// Equivalent to:
///   const blob = new Blob(["Hello, World!"], { type: "text/plain" })
///   blob.size // 13
///   blob.type // "text/plain"
pub fn test_blob() -> Unit {
  // Create BlobPart from string — Union type pattern
  let part = @websys.BlobPart::from_string("Hello, World!")

  // new Blob([part], { type: "text/plain" })
  let blob = @websys.Blob::new_with_options([part], {
    type_: Some("text/plain"),
    endings: None,
  })

  // size — Web API: blob.size
  assert_eq(blob.get_size(), 13L, label="blob.size")

  // type — Web API: blob.type
  assert_eq(blob.get_type(), "text/plain", label="blob.type")

  // Empty blob
  let empty = @websys.Blob::new()
  assert_eq(empty.get_size(), 0L, label="empty blob size")
  assert_eq(empty.get_type(), "", label="empty blob type")

  // Blob with multiple parts
  let part1 = @websys.BlobPart::from_string("Hello, ")
  let part2 = @websys.BlobPart::from_string("World!")
  let multi = @websys.Blob::new_with_options(
    [part1, part2],
    @websys.BlobPropertyBag::default(),
  )
  assert_eq(multi.get_size(), 13L, label="multi-part blob size")

  // slice — Web API: blob.slice(0, 5)
  let sliced = blob.slice_with_content_type(0L, 5L, "text/plain")
  assert_eq(sliced.get_size(), 5L, label="sliced blob size")
  println("  blob: ok")
}

///|
/// Test BlobPart union type — from_*, is_*, as_*.
/// Union types allow passing different JS types to a single parameter.
pub fn test_blob_union_type() -> Unit {
  // from_string — create BlobPart from String
  let str_part = @websys.BlobPart::from_string("text")
  assert_true(str_part.is_string(), label="is_string")
  assert_false(str_part.is_blob(), label="is_blob for string")

  // as_string — extract String from BlobPart
  match str_part.as_string() {
    Some(s) => assert_eq(s, "text", label="as_string")
    None => abort("FAIL: as_string returned None for string BlobPart")
  }

  // from_blob — create BlobPart from Blob
  let inner_blob = @websys.Blob::new_with_options(
    [@websys.BlobPart::from_string("inner")],
    @websys.BlobPropertyBag::default(),
  )
  let blob_part = @websys.BlobPart::from_blob(inner_blob)
  assert_true(blob_part.is_blob(), label="is_blob")
  assert_false(blob_part.is_string(), label="is_string for blob")

  // as_blob
  match blob_part.as_blob() {
    Some(b) => assert_eq(b.get_size(), 5L, label="as_blob.size")
    None => abort("FAIL: as_blob returned None for blob BlobPart")
  }
  println("  blob_union_type: ok")
}

///|
/// Test BlobPropertyBag dictionary — default() + to_js().
pub fn test_blob_dictionary() -> Unit {
  // default() creates a dictionary with all None fields
  let bag = @websys.BlobPropertyBag::default()
  // to_js() converts the dictionary to a JsValue (JS object)
  let _js = bag.to_js()

  // Dictionary with type set via struct literal (pub(all) struct)
  let bag2 : @websys.BlobPropertyBag = {
    type_: Some("application/json"),
    endings: None,
  }

  // Verify the dictionary works with Blob constructor
  let blob = @websys.Blob::new_with_options(
    [@websys.BlobPart::from_string("{}")],
    bag2,
  )
  assert_eq(blob.get_type(), "application/json", label="dict type passed")
  println("  blob_dictionary: ok")
}

///|
/// Test EndingType enum — to_string / from_string round-trip.
pub fn test_blob_enum() -> Unit {
  // to_string — Web IDL enum → String
  assert_eq(
    @websys.EndingType::Transparent.to_string(),
    "transparent",
    label="Transparent to_string",
  )
  assert_eq(
    @websys.EndingType::Native.to_string(),
    "native",
    label="Native to_string",
  )

  // from_string — String → Web IDL enum (round-trip)
  match @websys.EndingType::from_string("transparent") {
    Some(e) =>
      assert_eq(e.to_string(), "transparent", label="round-trip transparent")
    None => abort("FAIL: from_string returned None for 'transparent'")
  }
  match @websys.EndingType::from_string("native") {
    Some(e) => assert_eq(e.to_string(), "native", label="round-trip native")
    None => abort("FAIL: from_string returned None for 'native'")
  }

  // Invalid string returns None
  match @websys.EndingType::from_string("invalid") {
    None => ()
    Some(_) => abort("FAIL: from_string should return None for invalid string")
  }
  println("  blob_enum: ok")
}

///|
/// Test File API.
/// Equivalent to:
///   const file = new File(["content"], "test.txt", { type: "text/plain" })
///   file.name // "test.txt"
///   file.size // 7
pub fn test_file() -> Unit {
  let part = @websys.BlobPart::from_string("content")

  // new File(bits, name, options)
  let file = @websys.File::new_with_options([part], "test.txt", {
    type_: Some("text/plain"),
    endings: None,
    lastModified: None,
  })

  // name — Web API: file.name
  assert_eq(file.get_name(), "test.txt", label="file.name")

  // File inherits from Blob — Web API: file.size, file.type
  let as_blob = file.to_blob()
  assert_eq(as_blob.get_size(), 7L, label="file.size via blob")
  assert_eq(as_blob.get_type(), "text/plain", label="file.type via blob")

  // lastModified — Web API: file.lastModified (timestamp)
  let lm = file.get_last_modified()
  assert_true(lm > 0L, label="lastModified > 0")
  println("  file: ok")
}
