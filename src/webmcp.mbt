// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webmcp

/// ToolExecuteCallback callback interface
pub type ToolExecuteCallback

/// Create ToolExecuteCallback from a MoonBit function
pub extern "js" fn ToolExecuteCallback::from_fn(handler : (JsValue, ToolExecuteCallbackOptions) -> Promise[JsValue]) -> ToolExecuteCallback =
  #| (handler) => (a0, a1) => handler(a0, a1)

///|
/// ModelContextTool dictionary
pub(all) struct ModelContextTool {
  name : String
  title : String?
  description : String
  inputSchema : JsValue?
  execute : ToolExecuteCallback
  annotations : ToolAnnotations?
}

/// Create a new ModelContextTool
pub fn ModelContextTool::new(execute~ : ToolExecuteCallback) -> ModelContextTool {
  ModelContextTool::{
    name: "",
    title: None,
    description: "",
    inputSchema: None,
    execute: execute,
    annotations: None,
  }
}

extern "js" fn ModelContextTool::to_js_ffi(self : ModelContextTool, convert_annotations : (ToolAnnotations?) -> JsValue) -> JsValue =
  #| (self, convert_annotations) => ({
  #|   name: self.name,
  #|   title: self.title,
  #|   description: self.description,
  #|   inputSchema: ((() => { const v = self.inputSchema; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   execute: self.execute,
  #|   annotations: convert_annotations(self.annotations)
  #| })

/// Convert to JsValue
pub fn ModelContextTool::to_js(self : ModelContextTool) -> JsValue {
  ModelContextTool::to_js_ffi(self, fn(value) { match value { Some(value) => value.to_js(); None => dictionary_undefined() } })
}

extern "js" fn ModelContextTool::from_js_ffi(value : JsValue, convert_annotations : (JsValue) -> ToolAnnotations?) -> ModelContextTool =
  #| (v, convert_annotations) => ({
  #|   name: v.name,
  #|   title: v.title,
  #|   description: v.description,
  #|   inputSchema: (v.inputSchema === undefined ? { $tag: 0 } : { $tag: 1, _0: v.inputSchema }),
  #|   execute: v.execute,
  #|   annotations: convert_annotations(v.annotations)
  #| })

/// Convert from JsValue
pub fn ModelContextTool::from_js(value : JsValue) -> ModelContextTool {
  ModelContextTool::from_js_ffi(value, fn(value) { if value.is_undefined() { None } else { Some(ToolAnnotations::from_js(value)) } })
}

///|
/// ToolAnnotations dictionary
pub(all) struct ToolAnnotations {
  readOnlyHint : Bool?
  untrustedContentHint : Bool?
  consequentialHint : Bool?
  debugging : Bool?
}

/// Create a new ToolAnnotations with default values
pub fn ToolAnnotations::default() -> ToolAnnotations {
  ToolAnnotations::{
    readOnlyHint: None,
    untrustedContentHint: None,
    consequentialHint: None,
    debugging: None,
  }
}

extern "js" fn ToolAnnotations::to_js_ffi(self : ToolAnnotations) -> JsValue =
  #| (self) => ({
  #|   readOnlyHint: (self.readOnlyHint === -1 ? undefined : self.readOnlyHint),
  #|   untrustedContentHint: (self.untrustedContentHint === -1 ? undefined : self.untrustedContentHint),
  #|   consequentialHint: (self.consequentialHint === -1 ? undefined : self.consequentialHint),
  #|   debugging: (self.debugging === -1 ? undefined : self.debugging)
  #| })

/// Convert to JsValue
pub fn ToolAnnotations::to_js(self : ToolAnnotations) -> JsValue {
  ToolAnnotations::to_js_ffi(self)
}

extern "js" fn ToolAnnotations::from_js_ffi(value : JsValue) -> ToolAnnotations =
  #| (v) => ({
  #|   readOnlyHint: (v.readOnlyHint === undefined ? -1 : v.readOnlyHint),
  #|   untrustedContentHint: (v.untrustedContentHint === undefined ? -1 : v.untrustedContentHint),
  #|   consequentialHint: (v.consequentialHint === undefined ? -1 : v.consequentialHint),
  #|   debugging: (v.debugging === undefined ? -1 : v.debugging)
  #| })

/// Convert from JsValue
pub fn ToolAnnotations::from_js(value : JsValue) -> ToolAnnotations {
  ToolAnnotations::from_js_ffi(value)
}

///|
/// ToolExecuteCallbackOptions dictionary
pub(all) struct ToolExecuteCallbackOptions {
  signal : AbortSignal
}

/// Create a new ToolExecuteCallbackOptions
pub fn ToolExecuteCallbackOptions::new(signal~ : AbortSignal) -> ToolExecuteCallbackOptions {
  ToolExecuteCallbackOptions::{
    signal: signal,
  }
}

extern "js" fn ToolExecuteCallbackOptions::to_js_ffi(self : ToolExecuteCallbackOptions) -> JsValue =
  #| (self) => ({
  #|   signal: self.signal
  #| })

/// Convert to JsValue
pub fn ToolExecuteCallbackOptions::to_js(self : ToolExecuteCallbackOptions) -> JsValue {
  ToolExecuteCallbackOptions::to_js_ffi(self)
}

extern "js" fn ToolExecuteCallbackOptions::from_js_ffi(value : JsValue) -> ToolExecuteCallbackOptions =
  #| (v) => ({
  #|   signal: v.signal
  #| })

/// Convert from JsValue
pub fn ToolExecuteCallbackOptions::from_js(value : JsValue) -> ToolExecuteCallbackOptions {
  ToolExecuteCallbackOptions::from_js_ffi(value)
}

///|
/// ModelContextRegisterToolOptions dictionary
pub(all) struct ModelContextRegisterToolOptions {
  exposedTo : FixedArray[String]?
  signal : AbortSignal?
}

/// Create a new ModelContextRegisterToolOptions with default values
pub fn ModelContextRegisterToolOptions::default() -> ModelContextRegisterToolOptions {
  ModelContextRegisterToolOptions::{
    exposedTo: None,
    signal: None,
  }
}

extern "js" fn ModelContextRegisterToolOptions::to_js_ffi(self : ModelContextRegisterToolOptions) -> JsValue =
  #| (self) => ({
  #|   exposedTo: self.exposedTo,
  #|   signal: ((() => { const v = self.signal; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

/// Convert to JsValue
pub fn ModelContextRegisterToolOptions::to_js(self : ModelContextRegisterToolOptions) -> JsValue {
  ModelContextRegisterToolOptions::to_js_ffi(self)
}

extern "js" fn ModelContextRegisterToolOptions::from_js_ffi(value : JsValue) -> ModelContextRegisterToolOptions =
  #| (v) => ({
  #|   exposedTo: v.exposedTo,
  #|   signal: (v.signal === undefined ? { $tag: 0 } : { $tag: 1, _0: v.signal })
  #| })

/// Convert from JsValue
pub fn ModelContextRegisterToolOptions::from_js(value : JsValue) -> ModelContextRegisterToolOptions {
  ModelContextRegisterToolOptions::from_js_ffi(value)
}

///|
/// ModelContextGetToolOptions dictionary
pub(all) struct ModelContextGetToolOptions {
  fromOrigins : FixedArray[String]?
}

/// Create a new ModelContextGetToolOptions with default values
pub fn ModelContextGetToolOptions::default() -> ModelContextGetToolOptions {
  ModelContextGetToolOptions::{
    fromOrigins: None,
  }
}

extern "js" fn ModelContextGetToolOptions::to_js_ffi(self : ModelContextGetToolOptions) -> JsValue =
  #| (self) => ({
  #|   fromOrigins: self.fromOrigins
  #| })

/// Convert to JsValue
pub fn ModelContextGetToolOptions::to_js(self : ModelContextGetToolOptions) -> JsValue {
  ModelContextGetToolOptions::to_js_ffi(self)
}

extern "js" fn ModelContextGetToolOptions::from_js_ffi(value : JsValue) -> ModelContextGetToolOptions =
  #| (v) => ({
  #|   fromOrigins: v.fromOrigins
  #| })

/// Convert from JsValue
pub fn ModelContextGetToolOptions::from_js(value : JsValue) -> ModelContextGetToolOptions {
  ModelContextGetToolOptions::from_js_ffi(value)
}

///|
/// ModelContextExecuteToolOptions dictionary
pub(all) struct ModelContextExecuteToolOptions {
  signal : AbortSignal?
}

/// Create a new ModelContextExecuteToolOptions with default values
pub fn ModelContextExecuteToolOptions::default() -> ModelContextExecuteToolOptions {
  ModelContextExecuteToolOptions::{
    signal: None,
  }
}

extern "js" fn ModelContextExecuteToolOptions::to_js_ffi(self : ModelContextExecuteToolOptions) -> JsValue =
  #| (self) => ({
  #|   signal: ((() => { const v = self.signal; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

/// Convert to JsValue
pub fn ModelContextExecuteToolOptions::to_js(self : ModelContextExecuteToolOptions) -> JsValue {
  ModelContextExecuteToolOptions::to_js_ffi(self)
}

extern "js" fn ModelContextExecuteToolOptions::from_js_ffi(value : JsValue) -> ModelContextExecuteToolOptions =
  #| (v) => ({
  #|   signal: (v.signal === undefined ? { $tag: 0 } : { $tag: 1, _0: v.signal })
  #| })

/// Convert from JsValue
pub fn ModelContextExecuteToolOptions::from_js(value : JsValue) -> ModelContextExecuteToolOptions {
  ModelContextExecuteToolOptions::from_js_ffi(value)
}

///|
/// RegisteredTool dictionary
pub(all) struct RegisteredTool {
  name : String
  title : String?
  description : String
  inputSchema : JsValue?
  window : Window
  origin : String
  annotations : ToolAnnotations?
}

/// Create a new RegisteredTool
pub fn RegisteredTool::new(window~ : Window) -> RegisteredTool {
  RegisteredTool::{
    name: "",
    title: None,
    description: "",
    inputSchema: None,
    window: window,
    origin: "",
    annotations: None,
  }
}

extern "js" fn RegisteredTool::to_js_ffi(self : RegisteredTool, convert_annotations : (ToolAnnotations?) -> JsValue) -> JsValue =
  #| (self, convert_annotations) => ({
  #|   name: self.name,
  #|   title: self.title,
  #|   description: self.description,
  #|   inputSchema: ((() => { const v = self.inputSchema; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   window: self.window,
  #|   origin: self.origin,
  #|   annotations: convert_annotations(self.annotations)
  #| })

/// Convert to JsValue
pub fn RegisteredTool::to_js(self : RegisteredTool) -> JsValue {
  RegisteredTool::to_js_ffi(self, fn(value) { match value { Some(value) => value.to_js(); None => dictionary_undefined() } })
}

extern "js" fn RegisteredTool::from_js_ffi(value : JsValue, convert_annotations : (JsValue) -> ToolAnnotations?) -> RegisteredTool =
  #| (v, convert_annotations) => ({
  #|   name: v.name,
  #|   title: v.title,
  #|   description: v.description,
  #|   inputSchema: (v.inputSchema === undefined ? { $tag: 0 } : { $tag: 1, _0: v.inputSchema }),
  #|   window: v.window,
  #|   origin: v.origin,
  #|   annotations: convert_annotations(v.annotations)
  #| })

/// Convert from JsValue
pub fn RegisteredTool::from_js(value : JsValue) -> RegisteredTool {
  RegisteredTool::from_js_ffi(value, fn(value) { if value.is_undefined() { None } else { Some(ToolAnnotations::from_js(value)) } })
}

///|
/// ToolActivatedEventInit dictionary
pub(all) struct ToolActivatedEventInit {
  toolName : String?
}

/// Create a new ToolActivatedEventInit with default values
pub fn ToolActivatedEventInit::default() -> ToolActivatedEventInit {
  ToolActivatedEventInit::{
    toolName: None,
  }
}

extern "js" fn ToolActivatedEventInit::to_js_ffi(self : ToolActivatedEventInit) -> JsValue =
  #| (self) => ({
  #|   toolName: self.toolName
  #| })

/// Convert to JsValue
pub fn ToolActivatedEventInit::to_js(self : ToolActivatedEventInit) -> JsValue {
  ToolActivatedEventInit::to_js_ffi(self)
}

extern "js" fn ToolActivatedEventInit::from_js_ffi(value : JsValue) -> ToolActivatedEventInit =
  #| (v) => ({
  #|   toolName: v.toolName
  #| })

/// Convert from JsValue
pub fn ToolActivatedEventInit::from_js(value : JsValue) -> ToolActivatedEventInit {
  ToolActivatedEventInit::from_js_ffi(value)
}

///|
/// ToolCancelEventInit dictionary
pub(all) struct ToolCancelEventInit {
  toolName : String?
}

/// Create a new ToolCancelEventInit with default values
pub fn ToolCancelEventInit::default() -> ToolCancelEventInit {
  ToolCancelEventInit::{
    toolName: None,
  }
}

extern "js" fn ToolCancelEventInit::to_js_ffi(self : ToolCancelEventInit) -> JsValue =
  #| (self) => ({
  #|   toolName: self.toolName
  #| })

/// Convert to JsValue
pub fn ToolCancelEventInit::to_js(self : ToolCancelEventInit) -> JsValue {
  ToolCancelEventInit::to_js_ffi(self)
}

extern "js" fn ToolCancelEventInit::from_js_ffi(value : JsValue) -> ToolCancelEventInit =
  #| (v) => ({
  #|   toolName: v.toolName
  #| })

/// Convert from JsValue
pub fn ToolCancelEventInit::from_js(value : JsValue) -> ToolCancelEventInit {
  ToolCancelEventInit::from_js_ffi(value)
}

///|
/// ModelContext interface
pub type ModelContext

pub extern "js" fn ModelContext::to_js_value(self : ModelContext) -> JsValue =
  #| (self) => self

/// Cast JsValue to ModelContext (unchecked)
pub extern "js" fn ModelContext::from_js_value(v : JsValue) -> ModelContext =
  #| (v) => v

/// Safely cast JsValue to ModelContext (checked with instanceof)
pub extern "js" fn ModelContext::from_js_value_opt(v : JsValue) -> ModelContext? =
  #| (v) => (v instanceof ModelContext) ? { $tag: 1, _0: v } : { $tag: 0 }

/// Safely cast JsValue to ModelContext (checked with instanceof)
pub extern "js" fn JsValue::as_model_context(self : JsValue) -> ModelContext? =
  #| (self) => (self instanceof ModelContext) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Cast JsValue to ModelContext (unchecked)
pub extern "js" fn JsValue::to_model_context(self : JsValue) -> ModelContext =
  #| (self) => self

pub extern "js" fn ModelContext::to_event_target(self : ModelContext) -> EventTarget =
  #| (self) => self

extern "js" fn ModelContext::register_tool_ffi(self : ModelContext, tool : JsValue) -> Promise[Unit] =
  #| (self, tool) => self.registerTool(tool)

pub fn ModelContext::register_tool(self : ModelContext, tool : ModelContextTool) -> Promise[Unit] {
  ModelContext::register_tool_ffi(self, tool.to_js())
}

extern "js" fn ModelContext::register_tool_with_options_ffi(self : ModelContext, tool : JsValue, options : JsValue) -> Promise[Unit] =
  #| (self, tool, options) => self.registerTool(tool, options)

pub fn ModelContext::register_tool_with_options(self : ModelContext, tool : ModelContextTool, options : ModelContextRegisterToolOptions) -> Promise[Unit] {
  ModelContext::register_tool_with_options_ffi(self, tool.to_js(), options.to_js())
}

pub extern "js" fn ModelContext::get_tools(self : ModelContext) -> Promise[FixedArray[RegisteredTool]] =
  #| (self) => self.getTools()

extern "js" fn ModelContext::get_tools_with_options_ffi(self : ModelContext, options : JsValue) -> Promise[FixedArray[RegisteredTool]] =
  #| (self, options) => self.getTools(options)

pub fn ModelContext::get_tools_with_options(self : ModelContext, options : ModelContextGetToolOptions) -> Promise[FixedArray[RegisteredTool]] {
  ModelContext::get_tools_with_options_ffi(self, options.to_js())
}

extern "js" fn ModelContext::execute_tool_ffi(self : ModelContext, tool : JsValue) -> Promise[String] =
  #| (self, tool) => self.executeTool(tool)

pub fn ModelContext::execute_tool(self : ModelContext, tool : RegisteredTool) -> Promise[String] {
  ModelContext::execute_tool_ffi(self, tool.to_js())
}

extern "js" fn ModelContext::execute_tool_with_options_ffi(self : ModelContext, tool : JsValue, input_object : JsValue, options : JsValue) -> Promise[String] =
  #| (self, tool, input_object, options) => self.executeTool(tool, input_object, options)

pub fn ModelContext::execute_tool_with_options(self : ModelContext, tool : RegisteredTool, input_object : JsValue, options : ModelContextExecuteToolOptions) -> Promise[String] {
  ModelContext::execute_tool_with_options_ffi(self, tool.to_js(), input_object, options.to_js())
}

pub extern "js" fn ModelContext::set_ontoolchange(self : ModelContext, handler : (Event) -> Unit) -> Unit =
  #| (self, handler) => { self.ontoolchange = (e) => handler(e) }

pub extern "js" fn ModelContext::clear_ontoolchange(self : ModelContext) -> Unit =
  #| (self) => { self.ontoolchange = null }

pub extern "js" fn ModelContext::set_ontoolactivated(self : ModelContext, handler : (Event) -> Unit) -> Unit =
  #| (self, handler) => { self.ontoolactivated = (e) => handler(e) }

pub extern "js" fn ModelContext::clear_ontoolactivated(self : ModelContext) -> Unit =
  #| (self) => { self.ontoolactivated = null }

pub extern "js" fn ModelContext::set_ontoolcancel(self : ModelContext, handler : (Event) -> Unit) -> Unit =
  #| (self, handler) => { self.ontoolcancel = (e) => handler(e) }

pub extern "js" fn ModelContext::clear_ontoolcancel(self : ModelContext) -> Unit =
  #| (self) => { self.ontoolcancel = null }

///|
/// ToolActivatedEvent interface
pub type ToolActivatedEvent

pub extern "js" fn ToolActivatedEvent::to_js_value(self : ToolActivatedEvent) -> JsValue =
  #| (self) => self

/// Cast JsValue to ToolActivatedEvent (unchecked)
pub extern "js" fn ToolActivatedEvent::from_js_value(v : JsValue) -> ToolActivatedEvent =
  #| (v) => v

/// Safely cast JsValue to ToolActivatedEvent (checked with instanceof)
pub extern "js" fn ToolActivatedEvent::from_js_value_opt(v : JsValue) -> ToolActivatedEvent? =
  #| (v) => (v instanceof ToolActivatedEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

/// Safely cast JsValue to ToolActivatedEvent (checked with instanceof)
pub extern "js" fn JsValue::as_tool_activated_event(self : JsValue) -> ToolActivatedEvent? =
  #| (self) => (self instanceof ToolActivatedEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Cast JsValue to ToolActivatedEvent (unchecked)
pub extern "js" fn JsValue::to_tool_activated_event(self : JsValue) -> ToolActivatedEvent =
  #| (self) => self

pub extern "js" fn ToolActivatedEvent::to_event(self : ToolActivatedEvent) -> Event =
  #| (self) => self

pub extern "js" fn ToolActivatedEvent::new(type_ : String) -> ToolActivatedEvent =
  #| (type_) => new ToolActivatedEvent(type_)

extern "js" fn ToolActivatedEvent::new_with_event_init_dict_ffi(type_ : String, event_init_dict : JsValue) -> ToolActivatedEvent =
  #| (type_, event_init_dict) => new ToolActivatedEvent(type_, event_init_dict)

pub fn ToolActivatedEvent::new_with_event_init_dict(type_ : String, event_init_dict : ToolActivatedEventInit) -> ToolActivatedEvent {
  ToolActivatedEvent::new_with_event_init_dict_ffi(type_, event_init_dict.to_js())
}

pub extern "js" fn ToolActivatedEvent::get_tool_name(self : ToolActivatedEvent) -> String =
  #| (self) => self.toolName

///|
/// ToolCancelEvent interface
pub type ToolCancelEvent

pub extern "js" fn ToolCancelEvent::to_js_value(self : ToolCancelEvent) -> JsValue =
  #| (self) => self

/// Cast JsValue to ToolCancelEvent (unchecked)
pub extern "js" fn ToolCancelEvent::from_js_value(v : JsValue) -> ToolCancelEvent =
  #| (v) => v

/// Safely cast JsValue to ToolCancelEvent (checked with instanceof)
pub extern "js" fn ToolCancelEvent::from_js_value_opt(v : JsValue) -> ToolCancelEvent? =
  #| (v) => (v instanceof ToolCancelEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

/// Safely cast JsValue to ToolCancelEvent (checked with instanceof)
pub extern "js" fn JsValue::as_tool_cancel_event(self : JsValue) -> ToolCancelEvent? =
  #| (self) => (self instanceof ToolCancelEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Cast JsValue to ToolCancelEvent (unchecked)
pub extern "js" fn JsValue::to_tool_cancel_event(self : JsValue) -> ToolCancelEvent =
  #| (self) => self

pub extern "js" fn ToolCancelEvent::to_event(self : ToolCancelEvent) -> Event =
  #| (self) => self

pub extern "js" fn ToolCancelEvent::new(type_ : String) -> ToolCancelEvent =
  #| (type_) => new ToolCancelEvent(type_)

extern "js" fn ToolCancelEvent::new_with_event_init_dict_ffi(type_ : String, event_init_dict : JsValue) -> ToolCancelEvent =
  #| (type_, event_init_dict) => new ToolCancelEvent(type_, event_init_dict)

pub fn ToolCancelEvent::new_with_event_init_dict(type_ : String, event_init_dict : ToolCancelEventInit) -> ToolCancelEvent {
  ToolCancelEvent::new_with_event_init_dict_ffi(type_, event_init_dict.to_js())
}

pub extern "js" fn ToolCancelEvent::get_tool_name(self : ToolCancelEvent) -> String =
  #| (self) => self.toolName
