///|
extern "js" fn invalid_dictionary_size(mode : Int) -> @websys.JsValue =
  #| mode => ({ size: [9007199254740992, -9007199254740992, Infinity, NaN, 1.5, -1, '512', 512n, null][mode], usage: 9 })

///|
extern "js" fn missing_integer_offset(value : @websys.JsValue) -> Bool =
  #| value => value.offset === undefined

///|
extern "js" fn signed_dictionary_value(value : @websys.JsValue) -> Double =
  #| value => value.lastModified

///|
fn test_dictionary_integer_range() -> Unit {
  for value in [0L, 1L, 9007199254740991L] {
    let descriptor = @websys.GPUBufferDescriptor::new(size=value, usage=9)
    let encoded = descriptor.to_js_checked().unwrap()
    assert_eq(
      @websys.GPUBufferDescriptor::from_js_checked(encoded).unwrap().size,
      value,
    )
    let optional = @websys.GPUTexelCopyBufferLayout::{
      ..@websys.GPUTexelCopyBufferLayout::default(),
      offset: Some(value),
    }
    assert_eq(
      @websys.GPUTexelCopyBufferLayout::from_js_checked(
        optional.to_js_checked().unwrap(),
      ).unwrap().offset,
      Some(value),
    )
  }
  for value in [-9007199254740991L, -1L, 0L, 1L, 9007199254740991L] {
    let signed = @websys.FilePropertyBag::{
      ..@websys.FilePropertyBag::default(),
      lastModified: Some(value),
    }
    assert_eq(
      signed_dictionary_value(signed.to_js_checked().unwrap()),
      value.to_double(),
    )
    assert_eq(
      @websys.FilePropertyBag::from_js_checked(signed.to_js_checked().unwrap()).unwrap().lastModified,
      Some(value),
    )
  }
  for value in [-9007199254740992L, 9007199254740992L, 9007199254740993L] {
    let descriptor = @websys.GPUBufferDescriptor::new(size=value, usage=9)
    guard descriptor.to_js_checked() is Err(error) else {
      abort("Unsafe size accepted")
    }
    assert_eq(error.name(), "RangeError")
    let optional = @websys.GPUTexelCopyBufferLayout::{
      ..@websys.GPUTexelCopyBufferLayout::default(),
      offset: Some(value),
    }
    assert_true(optional.to_js_checked() is Err(_))
    let signed = @websys.FilePropertyBag::{
      ..@websys.FilePropertyBag::default(),
      lastModified: Some(value),
    }
    assert_true(signed.to_js_checked() is Err(_))
  }
  for mode in 0..<9 {
    guard @websys.GPUBufferDescriptor::from_js_checked(
        invalid_dictionary_size(mode),
      )
      is Err(error) else {
      abort("Invalid host integer accepted")
    }
    assert_eq(error.name(), if mode < 6 { "RangeError" } else { "TypeError" })
  }
  let omitted = @websys.GPUTexelCopyBufferLayout::default()
    .to_js_checked()
    .unwrap()
  assert_true(missing_integer_offset(omitted))
  assert_eq(
    @websys.GPUTexelCopyBufferLayout::from_js_checked(omitted).unwrap().offset,
    None,
  )
}
