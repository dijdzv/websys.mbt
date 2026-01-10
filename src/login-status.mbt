// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/login-status

///|
/// LoginStatus enum
pub(all) enum LoginStatus {
  LoggedIn
  LoggedOut
}

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
pub extern "js" fn NavigatorLogin::set_status(
  self : NavigatorLogin,
  status : LoginStatus,
) -> Promise[Unit] =
  #| (self, status) => self.setStatus(['logged-in', 'logged-out'][status])
