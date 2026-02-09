// Navigator API test
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/Navigator

///|
fn test_navigator() -> Unit {
  let win = @websys.window()
  let w = match win {
    Some(w) => w
    None => abort("FAIL: window() returned None")
  }
  let nav = w.get_navigator()
  // userAgent - should be a non-empty string
  let ua = nav.get_user_agent()
  assert_true(ua.length() > 0, label="userAgent non-empty")
  // language
  let lang = nav.get_language()
  assert_true(lang.length() > 0, label="language non-empty")
  // appName (deprecated but always returns "Netscape")
  assert_eq(nav.get_app_name(), "Netscape", label="appName")
  // cookieEnabled
  let _cookie = nav.get_cookie_enabled()
  // onLine
  let _online = nav.get_on_line()
  // platform (deprecated)
  let _platform = nav.get_platform()

}
