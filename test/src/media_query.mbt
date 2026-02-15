// MediaQueryList test
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryList

///|
fn test_media_query_list() -> Unit {
  let win = @websys.window().unwrap()
  let mql = win.match_media("(min-width: 100px)")
  // matches should return a boolean
  let matches = mql.get_matches()
  // Just verify the API works without crashing
  assert_true(matches == true || matches == false, label="matches is bool")
}
