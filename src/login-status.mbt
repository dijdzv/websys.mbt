// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/login-status

///|
/// LoginStatus enum
pub(all) enum LoginStatus {
  LoggedIn
  LoggedOut
} derive(Eq, Show)

///|
/// Convert to string value
pub fn LoginStatus::to_string(self : LoginStatus) -> String {
  match self {
    LoginStatus::LoggedIn => "logged-in"
    LoginStatus::LoggedOut => "logged-out"
  }
}

///|
/// Parse from string value
pub fn LoginStatus::from_string(s : String) -> LoginStatus? {
  match s {
    "logged-in" => Some(LoginStatus::LoggedIn)
    "logged-out" => Some(LoginStatus::LoggedOut)
    _ => None
  }
}

///|
/// NavigatorLogin interface
pub type NavigatorLogin

///|
pub extern "js" fn NavigatorLogin::to_js_value(
  self : NavigatorLogin,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to NavigatorLogin (unchecked)
pub extern "js" fn NavigatorLogin::from_js_value(v : JsValue) -> NavigatorLogin =
  #| (v) => v

///|
/// Safely cast JsValue to NavigatorLogin (checked with instanceof)
pub extern "js" fn NavigatorLogin::from_js_value_opt(
  v : JsValue,
) -> NavigatorLogin? =
  #| (v) => (v instanceof NavigatorLogin) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to NavigatorLogin (checked with instanceof)
pub extern "js" fn JsValue::as_navigator_login(
  self : JsValue,
) -> NavigatorLogin? =
  #| (self) => (self instanceof NavigatorLogin) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to NavigatorLogin (unchecked)
pub extern "js" fn JsValue::to_navigator_login(
  self : JsValue,
) -> NavigatorLogin =
  #| (self) => self

///|
pub extern "js" fn NavigatorLogin::set_status(
  self : NavigatorLogin,
  status : LoginStatus,
) -> Promise[Unit] =
  #| (self, status) => self.setStatus(['logged-in', 'logged-out'][status])
