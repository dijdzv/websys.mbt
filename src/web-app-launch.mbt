// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/web-app-launch

///|
/// LaunchConsumer callback interface
pub type LaunchConsumer

///|
/// Create LaunchConsumer from a MoonBit function
pub extern "js" fn LaunchConsumer::from_fn(
  handler : (LaunchParams) -> JsValue,
) -> LaunchConsumer =
  #| (handler) => (a0) => handler(a0)

///|
/// LaunchParams interface
pub type LaunchParams

///|
pub extern "js" fn LaunchParams::to_js_value(self : LaunchParams) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to LaunchParams (unchecked)
pub extern "js" fn LaunchParams::from_js_value(v : JsValue) -> LaunchParams =
  #| (v) => v

///|
/// Safely cast JsValue to LaunchParams (checked with instanceof)
pub extern "js" fn LaunchParams::from_js_value_opt(
  v : JsValue,
) -> LaunchParams? =
  #| (v) => (v instanceof LaunchParams) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to LaunchParams (checked with instanceof)
pub extern "js" fn JsValue::as_launch_params(self : JsValue) -> LaunchParams? =
  #| (self) => (self instanceof LaunchParams) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to LaunchParams (unchecked)
pub extern "js" fn JsValue::to_launch_params(self : JsValue) -> LaunchParams =
  #| (self) => self

///|
pub extern "js" fn LaunchParams::get_target_url(self : LaunchParams) -> String? =
  #| (self) => (self.targetURL) ?? undefined

///|
pub extern "js" fn LaunchParams::get_files(
  self : LaunchParams,
) -> Array[FileSystemHandle] =
  #| (self) => self.files

///|
/// LaunchQueue interface
pub type LaunchQueue

///|
pub extern "js" fn LaunchQueue::to_js_value(self : LaunchQueue) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to LaunchQueue (unchecked)
pub extern "js" fn LaunchQueue::from_js_value(v : JsValue) -> LaunchQueue =
  #| (v) => v

///|
/// Safely cast JsValue to LaunchQueue (checked with instanceof)
pub extern "js" fn LaunchQueue::from_js_value_opt(v : JsValue) -> LaunchQueue? =
  #| (v) => (v instanceof LaunchQueue) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to LaunchQueue (checked with instanceof)
pub extern "js" fn JsValue::as_launch_queue(self : JsValue) -> LaunchQueue? =
  #| (self) => (self instanceof LaunchQueue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to LaunchQueue (unchecked)
pub extern "js" fn JsValue::to_launch_queue(self : JsValue) -> LaunchQueue =
  #| (self) => self

///|
pub extern "js" fn LaunchQueue::set_consumer(
  self : LaunchQueue,
  consumer : LaunchConsumer,
) -> Unit =
  #| (self, consumer) => self.setConsumer(consumer)
