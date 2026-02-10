// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/scheduling-apis

///|
/// TaskPriority enum
pub(all) enum TaskPriority {
  UserBlocking
  UserVisible
  Background
} derive(Eq, Show)

///|
/// Convert to string value
pub fn TaskPriority::to_string(self : TaskPriority) -> String {
  match self {
    TaskPriority::UserBlocking => "user-blocking"
    TaskPriority::UserVisible => "user-visible"
    TaskPriority::Background => "background"
  }
}

///|
/// Parse from string value
pub fn TaskPriority::from_string(s : String) -> TaskPriority? {
  match s {
    "user-blocking" => Some(TaskPriority::UserBlocking)
    "user-visible" => Some(TaskPriority::UserVisible)
    "background" => Some(TaskPriority::Background)
    _ => None
  }
}

///|
/// SchedulerPostTaskCallback callback interface
pub type SchedulerPostTaskCallback

///|
/// SchedulerPostTaskOptions dictionary
pub(all) struct SchedulerPostTaskOptions {
  signal : AbortSignal?
  priority : TaskPriority?
  delay : Int64?
}

///|
/// Create a new SchedulerPostTaskOptions with default values
pub fn SchedulerPostTaskOptions::default() -> SchedulerPostTaskOptions {
  SchedulerPostTaskOptions::{ signal: None, priority: None, delay: None }
}

///|
extern "js" fn SchedulerPostTaskOptions::to_js_ffi(
  self : SchedulerPostTaskOptions,
) -> JsValue =
  #| (self) => ({
  #|   signal: ((() => { const v = self.signal; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   priority: ((() => { const v = self.priority; if (v === undefined) return undefined; return ['user-blocking', 'user-visible', 'background'][v]; })()),
  #|   delay: self.delay
  #| })

///|
/// Convert to JsValue
pub fn SchedulerPostTaskOptions::to_js(
  self : SchedulerPostTaskOptions,
) -> JsValue {
  SchedulerPostTaskOptions::to_js_ffi(self)
}

///|
extern "js" fn SchedulerPostTaskOptions::from_js_ffi(
  value : JsValue,
) -> SchedulerPostTaskOptions =
  #| (v) => ({
  #|   signal: (v.signal === undefined ? { $tag: 0 } : { $tag: 1, _0: v.signal }),
  #|   priority: (v.priority === undefined ? undefined : ['user-blocking', 'user-visible', 'background'].indexOf(v.priority)),
  #|   delay: v.delay
  #| })

///|
/// Convert from JsValue
pub fn SchedulerPostTaskOptions::from_js(
  value : JsValue,
) -> SchedulerPostTaskOptions {
  SchedulerPostTaskOptions::from_js_ffi(value)
}

///|
/// TaskPriorityChangeEventInit dictionary
pub(all) struct TaskPriorityChangeEventInit {
  previousPriority : TaskPriority
}

///|
/// Create a new TaskPriorityChangeEventInit
pub fn TaskPriorityChangeEventInit::new(
  previousPriority~ : TaskPriority,
) -> TaskPriorityChangeEventInit {
  TaskPriorityChangeEventInit::{ previousPriority, }
}

///|
extern "js" fn TaskPriorityChangeEventInit::to_js_ffi(
  self : TaskPriorityChangeEventInit,
) -> JsValue =
  #| (self) => ({
  #|   previousPriority: ['user-blocking', 'user-visible', 'background'][self.previousPriority]
  #| })

///|
/// Convert to JsValue
pub fn TaskPriorityChangeEventInit::to_js(
  self : TaskPriorityChangeEventInit,
) -> JsValue {
  TaskPriorityChangeEventInit::to_js_ffi(self)
}

///|
extern "js" fn TaskPriorityChangeEventInit::from_js_ffi(
  value : JsValue,
) -> TaskPriorityChangeEventInit =
  #| (v) => ({
  #|   previousPriority: ['user-blocking', 'user-visible', 'background'].indexOf(v.previousPriority)
  #| })

///|
/// Convert from JsValue
pub fn TaskPriorityChangeEventInit::from_js(
  value : JsValue,
) -> TaskPriorityChangeEventInit {
  TaskPriorityChangeEventInit::from_js_ffi(value)
}

///|
/// TaskControllerInit dictionary
pub(all) struct TaskControllerInit {
  priority : TaskPriority?
}

///|
/// Create a new TaskControllerInit with default values
pub fn TaskControllerInit::default() -> TaskControllerInit {
  TaskControllerInit::{ priority: None }
}

///|
extern "js" fn TaskControllerInit::to_js_ffi(
  self : TaskControllerInit,
) -> JsValue =
  #| (self) => ({
  #|   priority: ((() => { const v = self.priority; if (v === undefined) return undefined; return ['user-blocking', 'user-visible', 'background'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn TaskControllerInit::to_js(self : TaskControllerInit) -> JsValue {
  TaskControllerInit::to_js_ffi(self)
}

///|
extern "js" fn TaskControllerInit::from_js_ffi(
  value : JsValue,
) -> TaskControllerInit =
  #| (v) => ({
  #|   priority: (v.priority === undefined ? undefined : ['user-blocking', 'user-visible', 'background'].indexOf(v.priority))
  #| })

///|
/// Convert from JsValue
pub fn TaskControllerInit::from_js(value : JsValue) -> TaskControllerInit {
  TaskControllerInit::from_js_ffi(value)
}

///|
/// TaskSignalAnyInit dictionary
pub(all) struct TaskSignalAnyInit {
  priority : TaskPriorityOrTaskSignal?
}

///|
/// Create a new TaskSignalAnyInit with default values
pub fn TaskSignalAnyInit::default() -> TaskSignalAnyInit {
  TaskSignalAnyInit::{ priority: None }
}

///|
extern "js" fn TaskSignalAnyInit::to_js_ffi(
  self : TaskSignalAnyInit,
) -> JsValue =
  #| (self) => ({
  #|   priority: ((() => { const v = self.priority; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn TaskSignalAnyInit::to_js(self : TaskSignalAnyInit) -> JsValue {
  TaskSignalAnyInit::to_js_ffi(self)
}

///|
extern "js" fn TaskSignalAnyInit::from_js_ffi(
  value : JsValue,
) -> TaskSignalAnyInit =
  #| (v) => ({
  #|   priority: (v.priority === undefined ? { $tag: 0 } : { $tag: 1, _0: v.priority })
  #| })

///|
/// Convert from JsValue
pub fn TaskSignalAnyInit::from_js(value : JsValue) -> TaskSignalAnyInit {
  TaskSignalAnyInit::from_js_ffi(value)
}

///|
/// Scheduler interface
pub type Scheduler

///|
pub extern "js" fn Scheduler::to_js_value(self : Scheduler) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Scheduler (unchecked)
pub extern "js" fn Scheduler::from_js_value(v : JsValue) -> Scheduler =
  #| (v) => v

///|
/// Safely cast JsValue to Scheduler (checked with instanceof)
pub extern "js" fn Scheduler::from_js_value_opt(v : JsValue) -> Scheduler? =
  #| (v) => (v instanceof Scheduler) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Scheduler (checked with instanceof)
pub extern "js" fn JsValue::as_scheduler(self : JsValue) -> Scheduler? =
  #| (self) => (self instanceof Scheduler) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Scheduler (unchecked)
pub extern "js" fn JsValue::to_scheduler(self : JsValue) -> Scheduler =
  #| (self) => self

///|
pub extern "js" fn Scheduler::post_task(
  self : Scheduler,
  callback : SchedulerPostTaskCallback,
) -> Promise[JsValue] =
  #| (self, callback) => self.postTask(callback)

///|
extern "js" fn Scheduler::post_task_with_options_ffi(
  self : Scheduler,
  callback : SchedulerPostTaskCallback,
  options : JsValue,
) -> Promise[JsValue] =
  #| (self, callback, options) => self.postTask(callback, options)

///|
pub fn Scheduler::post_task_with_options(
  self : Scheduler,
  callback : SchedulerPostTaskCallback,
  options : SchedulerPostTaskOptions,
) -> Promise[JsValue] {
  Scheduler::post_task_with_options_ffi(self, callback, options.to_js())
}

///|
pub extern "js" fn Scheduler::yield_(self : Scheduler) -> Promise[Unit] =
  #| (self) => self.yield()

///|
/// TaskPriorityChangeEvent interface
pub type TaskPriorityChangeEvent

///|
pub extern "js" fn TaskPriorityChangeEvent::to_js_value(
  self : TaskPriorityChangeEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to TaskPriorityChangeEvent (unchecked)
pub extern "js" fn TaskPriorityChangeEvent::from_js_value(
  v : JsValue,
) -> TaskPriorityChangeEvent =
  #| (v) => v

///|
/// Safely cast JsValue to TaskPriorityChangeEvent (checked with instanceof)
pub extern "js" fn TaskPriorityChangeEvent::from_js_value_opt(
  v : JsValue,
) -> TaskPriorityChangeEvent? =
  #| (v) => (v instanceof TaskPriorityChangeEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to TaskPriorityChangeEvent (checked with instanceof)
pub extern "js" fn JsValue::as_task_priority_change_event(
  self : JsValue,
) -> TaskPriorityChangeEvent? =
  #| (self) => (self instanceof TaskPriorityChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to TaskPriorityChangeEvent (unchecked)
pub extern "js" fn JsValue::to_task_priority_change_event(
  self : JsValue,
) -> TaskPriorityChangeEvent =
  #| (self) => self

///|
pub extern "js" fn TaskPriorityChangeEvent::to_event(
  self : TaskPriorityChangeEvent,
) -> Event =
  #| (self) => self

///|
extern "js" fn TaskPriorityChangeEvent::new_ffi(
  type_ : String,
  priority_change_event_init_dict : JsValue,
) -> TaskPriorityChangeEvent =
  #| (type_, priority_change_event_init_dict) => new TaskPriorityChangeEvent(type_, priority_change_event_init_dict)

///|
pub fn TaskPriorityChangeEvent::new(
  type_ : String,
  priority_change_event_init_dict : TaskPriorityChangeEventInit,
) -> TaskPriorityChangeEvent {
  TaskPriorityChangeEvent::new_ffi(
    type_,
    priority_change_event_init_dict.to_js(),
  )
}

///|
pub extern "js" fn TaskPriorityChangeEvent::get_previous_priority(
  self : TaskPriorityChangeEvent,
) -> TaskPriority =
  #| (self) => ['user-blocking', 'user-visible', 'background'].indexOf(self.previousPriority)

///|
/// TaskController interface
pub type TaskController

///|
pub extern "js" fn TaskController::to_js_value(
  self : TaskController,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to TaskController (unchecked)
pub extern "js" fn TaskController::from_js_value(v : JsValue) -> TaskController =
  #| (v) => v

///|
/// Safely cast JsValue to TaskController (checked with instanceof)
pub extern "js" fn TaskController::from_js_value_opt(
  v : JsValue,
) -> TaskController? =
  #| (v) => (v instanceof TaskController) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to TaskController (checked with instanceof)
pub extern "js" fn JsValue::as_task_controller(
  self : JsValue,
) -> TaskController? =
  #| (self) => (self instanceof TaskController) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to TaskController (unchecked)
pub extern "js" fn JsValue::to_task_controller(
  self : JsValue,
) -> TaskController =
  #| (self) => self

///|
pub extern "js" fn TaskController::to_abort_controller(
  self : TaskController,
) -> AbortController =
  #| (self) => self

///|
pub extern "js" fn TaskController::new() -> TaskController =
  #| () => new TaskController()

///|
extern "js" fn TaskController::new_with_init_ffi(
  init_ : JsValue,
) -> TaskController =
  #| (init_) => new TaskController(init_)

///|
pub fn TaskController::new_with_init(
  init_ : TaskControllerInit,
) -> TaskController {
  TaskController::new_with_init_ffi(init_.to_js())
}

///|
pub extern "js" fn TaskController::set_priority(
  self : TaskController,
  priority : TaskPriority,
) -> Unit =
  #| (self, priority) => self.setPriority(['user-blocking', 'user-visible', 'background'][priority])

///|
/// TaskSignal interface
pub type TaskSignal

///|
pub extern "js" fn TaskSignal::to_js_value(self : TaskSignal) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to TaskSignal (unchecked)
pub extern "js" fn TaskSignal::from_js_value(v : JsValue) -> TaskSignal =
  #| (v) => v

///|
/// Safely cast JsValue to TaskSignal (checked with instanceof)
pub extern "js" fn TaskSignal::from_js_value_opt(v : JsValue) -> TaskSignal? =
  #| (v) => (v instanceof TaskSignal) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to TaskSignal (checked with instanceof)
pub extern "js" fn JsValue::as_task_signal(self : JsValue) -> TaskSignal? =
  #| (self) => (self instanceof TaskSignal) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to TaskSignal (unchecked)
pub extern "js" fn JsValue::to_task_signal(self : JsValue) -> TaskSignal =
  #| (self) => self

///|
pub extern "js" fn TaskSignal::to_abort_signal(
  self : TaskSignal,
) -> AbortSignal =
  #| (self) => self

///|
pub extern "js" fn TaskSignal::to_event_target(
  self : TaskSignal,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn TaskSignal::any(signals : Array[AbortSignal]) -> TaskSignal =
  #| (signals) => TaskSignal.any(signals)

///|
extern "js" fn TaskSignal::any_with_init_ffi(
  signals : Array[AbortSignal],
  init_ : JsValue,
) -> TaskSignal =
  #| (signals, init_) => TaskSignal.any(signals, init_)

///|
pub fn TaskSignal::any_with_init(
  signals : Array[AbortSignal],
  init_ : TaskSignalAnyInit,
) -> TaskSignal {
  TaskSignal::any_with_init_ffi(signals, init_.to_js())
}

///|
pub extern "js" fn TaskSignal::get_priority(self : TaskSignal) -> TaskPriority =
  #| (self) => ['user-blocking', 'user-visible', 'background'].indexOf(self.priority)

///|
pub extern "js" fn TaskSignal::get_onprioritychange(
  self : TaskSignal,
) -> EventHandler =
  #| (self) => self.onprioritychange

///|
pub extern "js" fn TaskSignal::set_onprioritychange(
  self : TaskSignal,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onprioritychange = value }
