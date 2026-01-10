// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/scheduling-apis

///|
/// TaskPriority enum
pub(all) enum TaskPriority {
  UserBlocking
  UserVisible
  Background
}

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
pub struct SchedulerPostTaskOptions {
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
/// Convert to JsValue
pub extern "js" fn SchedulerPostTaskOptions::to_js(
  self : SchedulerPostTaskOptions,
) -> JsValue =
  #| (self) => ({
  #|   signal: self.signal,
  #|   priority: ['user-blocking', 'user-visible', 'background'][self.priority],
  #|   delay: self.delay
  #| })

///|
/// TaskPriorityChangeEventInit dictionary
pub struct TaskPriorityChangeEventInit {
  previousPriority : TaskPriority
}

///|
/// Create a new TaskPriorityChangeEventInit with default values
pub fn TaskPriorityChangeEventInit::default() -> TaskPriorityChangeEventInit {
  TaskPriorityChangeEventInit::{ previousPriority: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn TaskPriorityChangeEventInit::to_js(
  self : TaskPriorityChangeEventInit,
) -> JsValue =
  #| (self) => ({
  #|   previousPriority: ['user-blocking', 'user-visible', 'background'][self.previousPriority]
  #| })

///|
/// TaskControllerInit dictionary
pub struct TaskControllerInit {
  priority : TaskPriority?
}

///|
/// Create a new TaskControllerInit with default values
pub fn TaskControllerInit::default() -> TaskControllerInit {
  TaskControllerInit::{ priority: None }
}

///|
/// Convert to JsValue
pub extern "js" fn TaskControllerInit::to_js(
  self : TaskControllerInit,
) -> JsValue =
  #| (self) => ({
  #|   priority: ['user-blocking', 'user-visible', 'background'][self.priority]
  #| })

///|
/// TaskSignalAnyInit dictionary
pub struct TaskSignalAnyInit {
  priority : JsValue?
}

///|
/// Create a new TaskSignalAnyInit with default values
pub fn TaskSignalAnyInit::default() -> TaskSignalAnyInit {
  TaskSignalAnyInit::{ priority: None }
}

///|
/// Convert to JsValue
pub extern "js" fn TaskSignalAnyInit::to_js(
  self : TaskSignalAnyInit,
) -> JsValue =
  #| (self) => ({
  #|   priority: self.priority
  #| })

///|
/// Scheduler interface
pub type Scheduler

///|
pub extern "js" fn Scheduler::to_js_value(self : Scheduler) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn Scheduler::post_task(
  self : Scheduler,
  callback : SchedulerPostTaskCallback,
) -> Promise[JsValue] =
  #| (self, callback) => self.postTask(callback)

///|
pub extern "js" fn Scheduler::post_task_with_options(
  self : Scheduler,
  callback : SchedulerPostTaskCallback,
  options : SchedulerPostTaskOptions,
) -> Promise[JsValue] =
  #| (self, callback, options) => self.postTask(callback, options)

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
pub extern "js" fn TaskPriorityChangeEvent::new(
  type_ : String,
  priority_change_event_init_dict : TaskPriorityChangeEventInit,
) -> TaskPriorityChangeEvent =
  #| (type_, priority_change_event_init_dict) => new TaskPriorityChangeEvent(type_, priority_change_event_init_dict)

///|
pub extern "js" fn TaskPriorityChangeEvent::get_previous_priority(
  self : TaskPriorityChangeEvent,
) -> TaskPriority =
  #| (self) => self.previousPriority

///|
/// TaskController interface
pub type TaskController

///|
pub extern "js" fn TaskController::to_js_value(
  self : TaskController,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn TaskController::new(
  init_ : TaskControllerInit,
) -> TaskController =
  #| (init_) => new TaskController(init_)

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
pub extern "js" fn TaskSignal::any(
  signals : Array[AbortSignal],
  init_ : TaskSignalAnyInit,
) -> TaskSignal =
  #| (signals, init_) => TaskSignal.any(signals, init_)

///|
pub extern "js" fn TaskSignal::get_priority(self : TaskSignal) -> TaskPriority =
  #| (self) => self.priority

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
