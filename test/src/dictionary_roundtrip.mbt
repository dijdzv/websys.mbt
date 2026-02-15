// Dictionary round-trip tests — to_js() → from_js() preserves values
// Validates codegen for dictionary serialization/deserialization

///|
/// Test EventInit round-trip (Bool? fields).
pub fn test_dict_event_init_roundtrip() -> Unit {
  let init = @websys.EventInit::{
    bubbles: Some(true),
    cancelable: Some(false),
    composed: Some(true),
  }
  let js = init.to_js()
  let result = @websys.EventInit::from_js(js)
  assert_eq(result.bubbles, Some(true), label="bubbles round-trip")
  assert_eq(result.cancelable, Some(false), label="cancelable round-trip")
  assert_eq(result.composed, Some(true), label="composed round-trip")
  // None round-trip
  let init_none = @websys.EventInit::default()
  let result_none = @websys.EventInit::from_js(init_none.to_js())
  assert_true(result_none.bubbles is None, label="bubbles None round-trip")
  println("  dict_event_init_roundtrip: ok")
}

///|
/// Test MutationObserverInit round-trip (Bool? + Array[String]?).
pub fn test_dict_mutation_observer_init_roundtrip() -> Unit {
  let init = @websys.MutationObserverInit::{
    ..@websys.MutationObserverInit::default(),
    childList: Some(true),
    attributes: Some(true),
    attributeFilter: Some(["class", "id", "style"]),
  }
  let result = @websys.MutationObserverInit::from_js(init.to_js())
  assert_eq(result.childList, Some(true), label="childList round-trip")
  assert_eq(result.attributes, Some(true), label="attributes round-trip")
  match result.attributeFilter {
    Some(arr) => {
      assert_eq(arr.length(), 3, label="attributeFilter length")
      assert_eq(arr[0], "class", label="attributeFilter[0]")
      assert_eq(arr[1], "id", label="attributeFilter[1]")
      assert_eq(arr[2], "style", label="attributeFilter[2]")
    }
    None => abort("FAIL: attributeFilter should be Some after round-trip")
  }
  // None fields preserved
  assert_true(result.subtree is None, label="subtree None preserved")
  assert_true(
    result.characterData is None,
    label="characterData None preserved",
  )
  println("  dict_mutation_observer_init_roundtrip: ok")
}

///|
/// Test KeyboardEventInit round-trip (Bool? + String? + Int?).
pub fn test_dict_keyboard_event_init_roundtrip() -> Unit {
  let init : @websys.KeyboardEventInit = {
    ..@websys.KeyboardEventInit::default(),
    key: Some("Enter"),
    code: Some("Enter"),
    ctrlKey: Some(true),
    shiftKey: Some(false),
    location: Some(0),
    repeat: Some(true),
  }
  let result = @websys.KeyboardEventInit::from_js(init.to_js())
  assert_eq(result.key, Some("Enter"), label="key round-trip")
  assert_eq(result.code, Some("Enter"), label="code round-trip")
  assert_eq(result.ctrlKey, Some(true), label="ctrlKey round-trip")
  assert_eq(result.shiftKey, Some(false), label="shiftKey round-trip")
  assert_eq(result.location, Some(0), label="location round-trip")
  assert_eq(result.repeat, Some(true), label="repeat round-trip")
  // None fields
  assert_true(result.altKey is None, label="altKey None preserved")
  assert_true(result.metaKey is None, label="metaKey None preserved")
  println("  dict_keyboard_event_init_roundtrip: ok")
}
