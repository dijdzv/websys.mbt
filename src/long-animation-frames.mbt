// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/long-animation-frames

///|
/// ScriptInvokerType enum
pub(all) enum ScriptInvokerType {
  ClassicScript
  ModuleScript
  EventListener
  UserCallback
  ResolvePromise
  RejectPromise
}

///|
/// Convert to string value
pub fn ScriptInvokerType::to_string(self : ScriptInvokerType) -> String {
  match self {
    ScriptInvokerType::ClassicScript => "classic-script"
    ScriptInvokerType::ModuleScript => "module-script"
    ScriptInvokerType::EventListener => "event-listener"
    ScriptInvokerType::UserCallback => "user-callback"
    ScriptInvokerType::ResolvePromise => "resolve-promise"
    ScriptInvokerType::RejectPromise => "reject-promise"
  }
}

///|
/// Parse from string value
pub fn ScriptInvokerType::from_string(s : String) -> ScriptInvokerType? {
  match s {
    "classic-script" => Some(ScriptInvokerType::ClassicScript)
    "module-script" => Some(ScriptInvokerType::ModuleScript)
    "event-listener" => Some(ScriptInvokerType::EventListener)
    "user-callback" => Some(ScriptInvokerType::UserCallback)
    "resolve-promise" => Some(ScriptInvokerType::ResolvePromise)
    "reject-promise" => Some(ScriptInvokerType::RejectPromise)
    _ => None
  }
}

///|
/// ScriptWindowAttribution enum
pub(all) enum ScriptWindowAttribution {
  Self
  Descendant
  Ancestor
  SamePage
  Other
}

///|
/// Convert to string value
pub fn ScriptWindowAttribution::to_string(
  self : ScriptWindowAttribution,
) -> String {
  match self {
    ScriptWindowAttribution::Self => "self"
    ScriptWindowAttribution::Descendant => "descendant"
    ScriptWindowAttribution::Ancestor => "ancestor"
    ScriptWindowAttribution::SamePage => "same-page"
    ScriptWindowAttribution::Other => "other"
  }
}

///|
/// Parse from string value
pub fn ScriptWindowAttribution::from_string(
  s : String,
) -> ScriptWindowAttribution? {
  match s {
    "self" => Some(ScriptWindowAttribution::Self)
    "descendant" => Some(ScriptWindowAttribution::Descendant)
    "ancestor" => Some(ScriptWindowAttribution::Ancestor)
    "same-page" => Some(ScriptWindowAttribution::SamePage)
    "other" => Some(ScriptWindowAttribution::Other)
    _ => None
  }
}

///|
/// PerformanceLongAnimationFrameTiming interface
pub type PerformanceLongAnimationFrameTiming

///|
pub extern "js" fn PerformanceLongAnimationFrameTiming::to_js_value(
  self : PerformanceLongAnimationFrameTiming,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn PerformanceLongAnimationFrameTiming::get_start_time(
  self : PerformanceLongAnimationFrameTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.startTime

///|
pub extern "js" fn PerformanceLongAnimationFrameTiming::get_duration(
  self : PerformanceLongAnimationFrameTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.duration

///|
pub extern "js" fn PerformanceLongAnimationFrameTiming::get_name(
  self : PerformanceLongAnimationFrameTiming,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn PerformanceLongAnimationFrameTiming::get_entry_type(
  self : PerformanceLongAnimationFrameTiming,
) -> String =
  #| (self) => self.entryType

///|
pub extern "js" fn PerformanceLongAnimationFrameTiming::get_render_start(
  self : PerformanceLongAnimationFrameTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.renderStart

///|
pub extern "js" fn PerformanceLongAnimationFrameTiming::get_style_and_layout_start(
  self : PerformanceLongAnimationFrameTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.styleAndLayoutStart

///|
pub extern "js" fn PerformanceLongAnimationFrameTiming::get_blocking_duration(
  self : PerformanceLongAnimationFrameTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.blockingDuration

///|
pub extern "js" fn PerformanceLongAnimationFrameTiming::get_first_u_i_event_timestamp(
  self : PerformanceLongAnimationFrameTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.firstUIEventTimestamp

///|
pub extern "js" fn PerformanceLongAnimationFrameTiming::get_scripts(
  self : PerformanceLongAnimationFrameTiming,
) -> JsValue =
  #| (self) => self.scripts

///|
pub extern "js" fn PerformanceLongAnimationFrameTiming::to_j_s_o_n(
  self : PerformanceLongAnimationFrameTiming,
) -> JsValue =
  #| (self) => self.toJSON()

///|
pub extern "js" fn PerformanceLongAnimationFrameTiming::get_paint_time(
  self : PerformanceLongAnimationFrameTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.paintTime

///|
pub extern "js" fn PerformanceLongAnimationFrameTiming::get_presentation_time(
  self : PerformanceLongAnimationFrameTiming,
) -> DOMHighResTimeStamp? =
  #| (self) => self.presentationTime

///|
/// PerformanceScriptTiming interface
pub type PerformanceScriptTiming

///|
pub extern "js" fn PerformanceScriptTiming::to_js_value(
  self : PerformanceScriptTiming,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn PerformanceScriptTiming::get_start_time(
  self : PerformanceScriptTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.startTime

///|
pub extern "js" fn PerformanceScriptTiming::get_duration(
  self : PerformanceScriptTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.duration

///|
pub extern "js" fn PerformanceScriptTiming::get_name(
  self : PerformanceScriptTiming,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn PerformanceScriptTiming::get_entry_type(
  self : PerformanceScriptTiming,
) -> String =
  #| (self) => self.entryType

///|
pub extern "js" fn PerformanceScriptTiming::get_invoker_type(
  self : PerformanceScriptTiming,
) -> ScriptInvokerType =
  #| (self) => self.invokerType

///|
pub extern "js" fn PerformanceScriptTiming::get_invoker(
  self : PerformanceScriptTiming,
) -> String =
  #| (self) => self.invoker

///|
pub extern "js" fn PerformanceScriptTiming::get_execution_start(
  self : PerformanceScriptTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.executionStart

///|
pub extern "js" fn PerformanceScriptTiming::get_source_u_r_l(
  self : PerformanceScriptTiming,
) -> String =
  #| (self) => self.sourceURL

///|
pub extern "js" fn PerformanceScriptTiming::get_source_function_name(
  self : PerformanceScriptTiming,
) -> String =
  #| (self) => self.sourceFunctionName

///|
pub extern "js" fn PerformanceScriptTiming::get_source_char_position(
  self : PerformanceScriptTiming,
) -> Int64 =
  #| (self) => self.sourceCharPosition

///|
pub extern "js" fn PerformanceScriptTiming::get_pause_duration(
  self : PerformanceScriptTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.pauseDuration

///|
pub extern "js" fn PerformanceScriptTiming::get_forced_style_and_layout_duration(
  self : PerformanceScriptTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.forcedStyleAndLayoutDuration

///|
pub extern "js" fn PerformanceScriptTiming::get_window(
  self : PerformanceScriptTiming,
) -> Window? =
  #| (self) => self.window

///|
pub extern "js" fn PerformanceScriptTiming::get_window_attribution(
  self : PerformanceScriptTiming,
) -> ScriptWindowAttribution =
  #| (self) => self.windowAttribution

///|
pub extern "js" fn PerformanceScriptTiming::to_j_s_o_n(
  self : PerformanceScriptTiming,
) -> JsValue =
  #| (self) => self.toJSON()
