// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webmcp

///|
/// ToolExecuteCallback callback interface
pub type ToolExecuteCallback

///|
/// Create ToolExecuteCallback from a MoonBit function
pub extern "js" fn ToolExecuteCallback::from_fn(
  handler : (JsValue, ModelContextClient) -> Promise[JsValue],
) -> ToolExecuteCallback =
  #| (handler) => (a0, a1) => handler(a0, a1)

///|
/// UserInteractionCallback callback interface
pub type UserInteractionCallback

///|
/// ModelContextOptions dictionary
pub(all) struct ModelContextOptions {
  tools : FixedArray[ModelContextTool]?
}

///|
/// Create a new ModelContextOptions with default values
pub fn ModelContextOptions::default() -> ModelContextOptions {
  ModelContextOptions::{ tools: None, }
}

///|
extern "js" fn ModelContextOptions::to_js_ffi(
  self : ModelContextOptions,
) -> JsValue =
  #| (self) => ({
  #|   tools: self.tools
  #| })

///|
/// Convert to JsValue
pub fn ModelContextOptions::to_js(self : ModelContextOptions) -> JsValue {
  ModelContextOptions::to_js_ffi(self)
}

///|
extern "js" fn ModelContextOptions::from_js_ffi(
  value : JsValue,
) -> ModelContextOptions =
  #| (v) => ({
  #|   tools: v.tools
  #| })

///|
/// Convert from JsValue
pub fn ModelContextOptions::from_js(value : JsValue) -> ModelContextOptions {
  ModelContextOptions::from_js_ffi(value)
}

///|
/// ModelContextTool dictionary
pub(all) struct ModelContextTool {
  name : String
  description : String
  inputSchema : JsValue?
  execute : ToolExecuteCallback
  annotations : ToolAnnotations?
}

///|
/// Create a new ModelContextTool
pub fn ModelContextTool::new(
  execute~ : ToolExecuteCallback,
) -> ModelContextTool {
  ModelContextTool::{
    name: "",
    description: "",
    inputSchema: None,
    execute,
    annotations: None,
  }
}

///|
extern "js" fn ModelContextTool::to_js_ffi(
  self : ModelContextTool,
  convert_annotations : (ToolAnnotations?) -> JsValue,
) -> JsValue =
  #| (self, convert_annotations) => ({
  #|   name: self.name,
  #|   description: self.description,
  #|   inputSchema: ((() => { const v = self.inputSchema; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   execute: self.execute,
  #|   annotations: convert_annotations(self.annotations)
  #| })

///|
/// Convert to JsValue
pub fn ModelContextTool::to_js(self : ModelContextTool) -> JsValue {
  ModelContextTool::to_js_ffi(self, fn(value) {
    match value {
      Some(value) => value.to_js()
      None => dictionary_undefined()
    }
  })
}

///|
extern "js" fn ModelContextTool::from_js_ffi(
  value : JsValue,
  convert_annotations : (JsValue) -> ToolAnnotations?,
) -> ModelContextTool =
  #| (v, convert_annotations) => ({
  #|   name: v.name,
  #|   description: v.description,
  #|   inputSchema: (v.inputSchema === undefined ? { $tag: 0 } : { $tag: 1, _0: v.inputSchema }),
  #|   execute: v.execute,
  #|   annotations: convert_annotations(v.annotations)
  #| })

///|
/// Convert from JsValue
pub fn ModelContextTool::from_js(value : JsValue) -> ModelContextTool {
  ModelContextTool::from_js_ffi(value, fn(value) {
    if value.is_undefined() {
      None
    } else {
      Some(ToolAnnotations::from_js(value))
    }
  })
}

///|
/// ToolAnnotations dictionary
pub(all) struct ToolAnnotations {
  readOnlyHint : Bool?
}

///|
/// Create a new ToolAnnotations with default values
pub fn ToolAnnotations::default() -> ToolAnnotations {
  ToolAnnotations::{ readOnlyHint: None, }
}

///|
extern "js" fn ToolAnnotations::to_js_ffi(self : ToolAnnotations) -> JsValue =
  #| (self) => ({
  #|   readOnlyHint: (self.readOnlyHint === -1 ? undefined : self.readOnlyHint)
  #| })

///|
/// Convert to JsValue
pub fn ToolAnnotations::to_js(self : ToolAnnotations) -> JsValue {
  ToolAnnotations::to_js_ffi(self)
}

///|
extern "js" fn ToolAnnotations::from_js_ffi(value : JsValue) -> ToolAnnotations =
  #| (v) => ({
  #|   readOnlyHint: (v.readOnlyHint === undefined ? -1 : v.readOnlyHint)
  #| })

///|
/// Convert from JsValue
pub fn ToolAnnotations::from_js(value : JsValue) -> ToolAnnotations {
  ToolAnnotations::from_js_ffi(value)
}

///|
/// ModelContext interface
pub type ModelContext

///|
pub extern "js" fn ModelContext::to_js_value(self : ModelContext) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ModelContext (unchecked)
pub extern "js" fn ModelContext::from_js_value(v : JsValue) -> ModelContext =
  #| (v) => v

///|
/// Safely cast JsValue to ModelContext (checked with instanceof)
pub extern "js" fn ModelContext::from_js_value_opt(
  v : JsValue,
) -> ModelContext? =
  #| (v) => (v instanceof ModelContext) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ModelContext (checked with instanceof)
pub extern "js" fn JsValue::as_model_context(self : JsValue) -> ModelContext? =
  #| (self) => (self instanceof ModelContext) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ModelContext (unchecked)
pub extern "js" fn JsValue::to_model_context(self : JsValue) -> ModelContext =
  #| (self) => self

///|
pub extern "js" fn ModelContext::provide_context(self : ModelContext) -> Unit =
  #| (self) => self.provideContext()

///|
extern "js" fn ModelContext::provide_context_with_options_ffi(
  self : ModelContext,
  options : JsValue,
) -> Unit =
  #| (self, options) => self.provideContext(options)

///|
pub fn ModelContext::provide_context_with_options(
  self : ModelContext,
  options : ModelContextOptions,
) -> Unit {
  ModelContext::provide_context_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn ModelContext::clear_context(self : ModelContext) -> Unit =
  #| (self) => self.clearContext()

///|
extern "js" fn ModelContext::register_tool_ffi(
  self : ModelContext,
  tool : JsValue,
) -> Unit =
  #| (self, tool) => self.registerTool(tool)

///|
pub fn ModelContext::register_tool(
  self : ModelContext,
  tool : ModelContextTool,
) -> Unit {
  ModelContext::register_tool_ffi(self, tool.to_js())
}

///|
pub extern "js" fn ModelContext::unregister_tool(
  self : ModelContext,
  name : String,
) -> Unit =
  #| (self, name) => self.unregisterTool(name)

///|
/// ModelContextClient interface
pub type ModelContextClient

///|
pub extern "js" fn ModelContextClient::to_js_value(
  self : ModelContextClient,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ModelContextClient (unchecked)
pub extern "js" fn ModelContextClient::from_js_value(
  v : JsValue,
) -> ModelContextClient =
  #| (v) => v

///|
/// Safely cast JsValue to ModelContextClient (checked with instanceof)
pub extern "js" fn ModelContextClient::from_js_value_opt(
  v : JsValue,
) -> ModelContextClient? =
  #| (v) => (v instanceof ModelContextClient) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ModelContextClient (checked with instanceof)
pub extern "js" fn JsValue::as_model_context_client(
  self : JsValue,
) -> ModelContextClient? =
  #| (self) => (self instanceof ModelContextClient) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ModelContextClient (unchecked)
pub extern "js" fn JsValue::to_model_context_client(
  self : JsValue,
) -> ModelContextClient =
  #| (self) => self

///|
pub extern "js" fn ModelContextClient::request_user_interaction(
  self : ModelContextClient,
  callback : UserInteractionCallback,
) -> Promise[JsValue] =
  #| (self, callback) => self.requestUserInteraction(callback)
