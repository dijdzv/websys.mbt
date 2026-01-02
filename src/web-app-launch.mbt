// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/web-app-launch

/// LaunchConsumer callback interface
pub type LaunchConsumer

/// Create LaunchConsumer from a MoonBit function
pub extern "js" fn LaunchConsumer::from_fn(handler : (LaunchParams) -> JsValue) -> LaunchConsumer =
  #| (handler) => handler

///|
/// LaunchParams interface
pub type LaunchParams

pub extern "js" fn LaunchParams::to_js_value(self : LaunchParams) -> JsValue =
  #| (self) => self

pub extern "js" fn LaunchParams::get_target_u_r_l(self : LaunchParams) -> String? =
  #| (self) => self.targetURL

pub extern "js" fn LaunchParams::get_files(self : LaunchParams) -> JsValue =
  #| (self) => self.files

///|
/// LaunchQueue interface
pub type LaunchQueue

pub extern "js" fn LaunchQueue::to_js_value(self : LaunchQueue) -> JsValue =
  #| (self) => self

pub extern "js" fn LaunchQueue::set_consumer(self : LaunchQueue, consumer : LaunchConsumer) -> Unit =
  #| (self, consumer) => self.setConsumer(consumer)

