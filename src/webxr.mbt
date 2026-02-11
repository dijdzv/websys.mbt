// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webxr

///|
/// XRWebGLRenderingContext typedef
pub type XRWebGLRenderingContext

///|
pub extern "js" fn XRWebGLRenderingContext::to_js_value(
  self : XRWebGLRenderingContext,
) -> JsValue =
  #| (self) => self

///|
/// Create XRWebGLRenderingContext from WebGLRenderingContext
pub extern "js" fn XRWebGLRenderingContext::from_web_gl_rendering_context(
  v : WebGLRenderingContext,
) -> XRWebGLRenderingContext =
  #| (v) => v

///|
/// Create XRWebGLRenderingContext from WebGL2RenderingContext
pub extern "js" fn XRWebGLRenderingContext::from_web_gl2_rendering_context(
  v : WebGL2RenderingContext,
) -> XRWebGLRenderingContext =
  #| (v) => v

///|
/// Check if this XRWebGLRenderingContext is WebGLRenderingContext
pub extern "js" fn XRWebGLRenderingContext::is_web_gl_rendering_context(
  self : XRWebGLRenderingContext,
) -> Bool =
  #| (self) => self instanceof WebGLRenderingContext

///|
/// Check if this XRWebGLRenderingContext is WebGL2RenderingContext
pub extern "js" fn XRWebGLRenderingContext::is_web_gl2_rendering_context(
  self : XRWebGLRenderingContext,
) -> Bool =
  #| (self) => self instanceof WebGL2RenderingContext

///|
/// Try to get XRWebGLRenderingContext as WebGLRenderingContext
pub extern "js" fn XRWebGLRenderingContext::as_web_gl_rendering_context(
  self : XRWebGLRenderingContext,
) -> WebGLRenderingContext? =
  #| (self) => (self instanceof WebGLRenderingContext) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get XRWebGLRenderingContext as WebGL2RenderingContext
pub extern "js" fn XRWebGLRenderingContext::as_web_gl2_rendering_context(
  self : XRWebGLRenderingContext,
) -> WebGL2RenderingContext? =
  #| (self) => (self instanceof WebGL2RenderingContext) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[XRWebGLRenderingContext] to WebGLRenderingContext?
pub fn XRWebGLRenderingContext::bind_as_web_gl_rendering_context(
  value : XRWebGLRenderingContext?,
) -> WebGLRenderingContext? {
  match value {
    Some(v) => v.as_web_gl_rendering_context()
    None => None
  }
}

///|
/// Flatten Option[XRWebGLRenderingContext] to WebGL2RenderingContext?
pub fn XRWebGLRenderingContext::bind_as_web_gl2_rendering_context(
  value : XRWebGLRenderingContext?,
) -> WebGL2RenderingContext? {
  match value {
    Some(v) => v.as_web_gl2_rendering_context()
    None => None
  }
}

///|
/// XRSessionMode enum
pub(all) enum XRSessionMode {
  Inline
  ImmersiveVr
  ImmersiveAr
} derive(Eq, Show)

///|
/// Convert to string value
pub fn XRSessionMode::to_string(self : XRSessionMode) -> String {
  match self {
    XRSessionMode::Inline => "inline"
    XRSessionMode::ImmersiveVr => "immersive-vr"
    XRSessionMode::ImmersiveAr => "immersive-ar"
  }
}

///|
/// Parse from string value
pub fn XRSessionMode::from_string(s : String) -> XRSessionMode? {
  match s {
    "inline" => Some(XRSessionMode::Inline)
    "immersive-vr" => Some(XRSessionMode::ImmersiveVr)
    "immersive-ar" => Some(XRSessionMode::ImmersiveAr)
    _ => None
  }
}

///|
/// XRVisibilityState enum
pub(all) enum XRVisibilityState {
  Visible
  VisibleBlurred
  Hidden
} derive(Eq, Show)

///|
/// Convert to string value
pub fn XRVisibilityState::to_string(self : XRVisibilityState) -> String {
  match self {
    XRVisibilityState::Visible => "visible"
    XRVisibilityState::VisibleBlurred => "visible-blurred"
    XRVisibilityState::Hidden => "hidden"
  }
}

///|
/// Parse from string value
pub fn XRVisibilityState::from_string(s : String) -> XRVisibilityState? {
  match s {
    "visible" => Some(XRVisibilityState::Visible)
    "visible-blurred" => Some(XRVisibilityState::VisibleBlurred)
    "hidden" => Some(XRVisibilityState::Hidden)
    _ => None
  }
}

///|
/// XRReferenceSpaceType enum
pub(all) enum XRReferenceSpaceType {
  Viewer
  Local
  LocalFloor
  BoundedFloor
  Unbounded
} derive(Eq, Show)

///|
/// Convert to string value
pub fn XRReferenceSpaceType::to_string(self : XRReferenceSpaceType) -> String {
  match self {
    XRReferenceSpaceType::Viewer => "viewer"
    XRReferenceSpaceType::Local => "local"
    XRReferenceSpaceType::LocalFloor => "local-floor"
    XRReferenceSpaceType::BoundedFloor => "bounded-floor"
    XRReferenceSpaceType::Unbounded => "unbounded"
  }
}

///|
/// Parse from string value
pub fn XRReferenceSpaceType::from_string(s : String) -> XRReferenceSpaceType? {
  match s {
    "viewer" => Some(XRReferenceSpaceType::Viewer)
    "local" => Some(XRReferenceSpaceType::Local)
    "local-floor" => Some(XRReferenceSpaceType::LocalFloor)
    "bounded-floor" => Some(XRReferenceSpaceType::BoundedFloor)
    "unbounded" => Some(XRReferenceSpaceType::Unbounded)
    _ => None
  }
}

///|
/// XREye enum
pub(all) enum XREye {
  None
  Left
  Right
} derive(Eq, Show)

///|
/// Convert to string value
pub fn XREye::to_string(self : XREye) -> String {
  match self {
    XREye::None => "none"
    XREye::Left => "left"
    XREye::Right => "right"
  }
}

///|
/// Parse from string value
pub fn XREye::from_string(s : String) -> XREye? {
  match s {
    "none" => Some(XREye::None)
    "left" => Some(XREye::Left)
    "right" => Some(XREye::Right)
    _ => None
  }
}

///|
/// XRHandedness enum
pub(all) enum XRHandedness {
  None
  Left
  Right
} derive(Eq, Show)

///|
/// Convert to string value
pub fn XRHandedness::to_string(self : XRHandedness) -> String {
  match self {
    XRHandedness::None => "none"
    XRHandedness::Left => "left"
    XRHandedness::Right => "right"
  }
}

///|
/// Parse from string value
pub fn XRHandedness::from_string(s : String) -> XRHandedness? {
  match s {
    "none" => Some(XRHandedness::None)
    "left" => Some(XRHandedness::Left)
    "right" => Some(XRHandedness::Right)
    _ => None
  }
}

///|
/// XRTargetRayMode enum
pub(all) enum XRTargetRayMode {
  Gaze
  TrackedPointer
  Screen
  TransientPointer
} derive(Eq, Show)

///|
/// Convert to string value
pub fn XRTargetRayMode::to_string(self : XRTargetRayMode) -> String {
  match self {
    XRTargetRayMode::Gaze => "gaze"
    XRTargetRayMode::TrackedPointer => "tracked-pointer"
    XRTargetRayMode::Screen => "screen"
    XRTargetRayMode::TransientPointer => "transient-pointer"
  }
}

///|
/// Parse from string value
pub fn XRTargetRayMode::from_string(s : String) -> XRTargetRayMode? {
  match s {
    "gaze" => Some(XRTargetRayMode::Gaze)
    "tracked-pointer" => Some(XRTargetRayMode::TrackedPointer)
    "screen" => Some(XRTargetRayMode::Screen)
    "transient-pointer" => Some(XRTargetRayMode::TransientPointer)
    _ => None
  }
}

///|
/// XRFrameRequestCallback callback interface
pub type XRFrameRequestCallback

///|
/// Create XRFrameRequestCallback from a MoonBit function
pub extern "js" fn XRFrameRequestCallback::from_fn(
  handler : (DOMHighResTimeStamp, XRFrame) -> Unit,
) -> XRFrameRequestCallback =
  #| (handler) => (a0, a1) => handler(a0, a1)

///|
/// XRRenderStateInit dictionary
pub(all) struct XRRenderStateInit {
  depthNear : Double?
  depthFar : Double?
  passthroughFullyObscured : Bool?
  inlineVerticalFieldOfView : Double?
  baseLayer : Nullable[XRWebGLLayer]
  layers : Array[XRLayer]?
}

///|
/// Create a new XRRenderStateInit with default values
pub fn XRRenderStateInit::default() -> XRRenderStateInit {
  XRRenderStateInit::{
    depthNear: None,
    depthFar: None,
    passthroughFullyObscured: None,
    inlineVerticalFieldOfView: None,
    baseLayer: Nullable::Undefined,
    layers: None,
  }
}

///|
extern "js" fn XRRenderStateInit::to_js_ffi(
  self : XRRenderStateInit,
) -> JsValue =
  #| (self) => ({
  #|   depthNear: self.depthNear,
  #|   depthFar: self.depthFar,
  #|   passthroughFullyObscured: (self.passthroughFullyObscured === -1 ? undefined : self.passthroughFullyObscured),
  #|   inlineVerticalFieldOfView: self.inlineVerticalFieldOfView,
  #|   baseLayer: ((() => { const v = self.baseLayer; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   layers: ((() => { const v = self.layers; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn XRRenderStateInit::to_js(self : XRRenderStateInit) -> JsValue {
  XRRenderStateInit::to_js_ffi(self)
}

///|
extern "js" fn XRRenderStateInit::from_js_ffi(
  value : JsValue,
) -> XRRenderStateInit =
  #| (v) => ({
  #|   depthNear: v.depthNear,
  #|   depthFar: v.depthFar,
  #|   passthroughFullyObscured: (v.passthroughFullyObscured === undefined ? -1 : v.passthroughFullyObscured),
  #|   inlineVerticalFieldOfView: v.inlineVerticalFieldOfView,
  #|   baseLayer: (v.baseLayer === undefined ? { $tag: 0 } : v.baseLayer === null ? { $tag: 1 } : { $tag: 2, _0: v.baseLayer }),
  #|   layers: (v.layers === undefined ? { $tag: 0 } : { $tag: 1, _0: v.layers })
  #| })

///|
/// Convert from JsValue
pub fn XRRenderStateInit::from_js(value : JsValue) -> XRRenderStateInit {
  XRRenderStateInit::from_js_ffi(value)
}

///|
/// XRWebGLLayerInit dictionary
pub(all) struct XRWebGLLayerInit {
  antialias : Bool?
  depth : Bool?
  stencil : Bool?
  alpha : Bool?
  ignoreDepthValues : Bool?
  framebufferScaleFactor : Double?
}

///|
/// Create a new XRWebGLLayerInit with default values
pub fn XRWebGLLayerInit::default() -> XRWebGLLayerInit {
  XRWebGLLayerInit::{
    antialias: None,
    depth: None,
    stencil: None,
    alpha: None,
    ignoreDepthValues: None,
    framebufferScaleFactor: None,
  }
}

///|
extern "js" fn XRWebGLLayerInit::to_js_ffi(self : XRWebGLLayerInit) -> JsValue =
  #| (self) => ({
  #|   antialias: (self.antialias === -1 ? undefined : self.antialias),
  #|   depth: (self.depth === -1 ? undefined : self.depth),
  #|   stencil: (self.stencil === -1 ? undefined : self.stencil),
  #|   alpha: (self.alpha === -1 ? undefined : self.alpha),
  #|   ignoreDepthValues: (self.ignoreDepthValues === -1 ? undefined : self.ignoreDepthValues),
  #|   framebufferScaleFactor: self.framebufferScaleFactor
  #| })

///|
/// Convert to JsValue
pub fn XRWebGLLayerInit::to_js(self : XRWebGLLayerInit) -> JsValue {
  XRWebGLLayerInit::to_js_ffi(self)
}

///|
extern "js" fn XRWebGLLayerInit::from_js_ffi(
  value : JsValue,
) -> XRWebGLLayerInit =
  #| (v) => ({
  #|   antialias: (v.antialias === undefined ? -1 : v.antialias),
  #|   depth: (v.depth === undefined ? -1 : v.depth),
  #|   stencil: (v.stencil === undefined ? -1 : v.stencil),
  #|   alpha: (v.alpha === undefined ? -1 : v.alpha),
  #|   ignoreDepthValues: (v.ignoreDepthValues === undefined ? -1 : v.ignoreDepthValues),
  #|   framebufferScaleFactor: v.framebufferScaleFactor
  #| })

///|
/// Convert from JsValue
pub fn XRWebGLLayerInit::from_js(value : JsValue) -> XRWebGLLayerInit {
  XRWebGLLayerInit::from_js_ffi(value)
}

///|
/// XRSessionEventInit dictionary
pub(all) struct XRSessionEventInit {
  session : XRSession
}

///|
/// Create a new XRSessionEventInit
pub fn XRSessionEventInit::new(session~ : XRSession) -> XRSessionEventInit {
  XRSessionEventInit::{ session, }
}

///|
extern "js" fn XRSessionEventInit::to_js_ffi(
  self : XRSessionEventInit,
) -> JsValue =
  #| (self) => ({
  #|   session: self.session
  #| })

///|
/// Convert to JsValue
pub fn XRSessionEventInit::to_js(self : XRSessionEventInit) -> JsValue {
  XRSessionEventInit::to_js_ffi(self)
}

///|
extern "js" fn XRSessionEventInit::from_js_ffi(
  value : JsValue,
) -> XRSessionEventInit =
  #| (v) => ({
  #|   session: v.session
  #| })

///|
/// Convert from JsValue
pub fn XRSessionEventInit::from_js(value : JsValue) -> XRSessionEventInit {
  XRSessionEventInit::from_js_ffi(value)
}

///|
/// XRInputSourceEventInit dictionary
pub(all) struct XRInputSourceEventInit {
  frame : XRFrame
  inputSource : XRInputSource
}

///|
/// Create a new XRInputSourceEventInit
pub fn XRInputSourceEventInit::new(
  frame~ : XRFrame,
  inputSource~ : XRInputSource,
) -> XRInputSourceEventInit {
  XRInputSourceEventInit::{ frame, inputSource }
}

///|
extern "js" fn XRInputSourceEventInit::to_js_ffi(
  self : XRInputSourceEventInit,
) -> JsValue =
  #| (self) => ({
  #|   frame: self.frame,
  #|   inputSource: self.inputSource
  #| })

///|
/// Convert to JsValue
pub fn XRInputSourceEventInit::to_js(self : XRInputSourceEventInit) -> JsValue {
  XRInputSourceEventInit::to_js_ffi(self)
}

///|
extern "js" fn XRInputSourceEventInit::from_js_ffi(
  value : JsValue,
) -> XRInputSourceEventInit =
  #| (v) => ({
  #|   frame: v.frame,
  #|   inputSource: v.inputSource
  #| })

///|
/// Convert from JsValue
pub fn XRInputSourceEventInit::from_js(
  value : JsValue,
) -> XRInputSourceEventInit {
  XRInputSourceEventInit::from_js_ffi(value)
}

///|
/// XRInputSourcesChangeEventInit dictionary
pub(all) struct XRInputSourcesChangeEventInit {
  session : XRSession
  added : Array[XRInputSource]
  removed : Array[XRInputSource]
}

///|
/// Create a new XRInputSourcesChangeEventInit
pub fn XRInputSourcesChangeEventInit::new(
  session~ : XRSession,
) -> XRInputSourcesChangeEventInit {
  XRInputSourcesChangeEventInit::{ session, added: [], removed: [] }
}

///|
extern "js" fn XRInputSourcesChangeEventInit::to_js_ffi(
  self : XRInputSourcesChangeEventInit,
) -> JsValue =
  #| (self) => ({
  #|   session: self.session,
  #|   added: self.added,
  #|   removed: self.removed
  #| })

///|
/// Convert to JsValue
pub fn XRInputSourcesChangeEventInit::to_js(
  self : XRInputSourcesChangeEventInit,
) -> JsValue {
  XRInputSourcesChangeEventInit::to_js_ffi(self)
}

///|
extern "js" fn XRInputSourcesChangeEventInit::from_js_ffi(
  value : JsValue,
) -> XRInputSourcesChangeEventInit =
  #| (v) => ({
  #|   session: v.session,
  #|   added: v.added,
  #|   removed: v.removed
  #| })

///|
/// Convert from JsValue
pub fn XRInputSourcesChangeEventInit::from_js(
  value : JsValue,
) -> XRInputSourcesChangeEventInit {
  XRInputSourcesChangeEventInit::from_js_ffi(value)
}

///|
/// XRReferenceSpaceEventInit dictionary
pub(all) struct XRReferenceSpaceEventInit {
  referenceSpace : XRReferenceSpace
  transform : Nullable[XRRigidTransform]
}

///|
/// Create a new XRReferenceSpaceEventInit
pub fn XRReferenceSpaceEventInit::new(
  referenceSpace~ : XRReferenceSpace,
) -> XRReferenceSpaceEventInit {
  XRReferenceSpaceEventInit::{ referenceSpace, transform: Nullable::Undefined }
}

///|
extern "js" fn XRReferenceSpaceEventInit::to_js_ffi(
  self : XRReferenceSpaceEventInit,
) -> JsValue =
  #| (self) => ({
  #|   referenceSpace: self.referenceSpace,
  #|   transform: ((() => { const v = self.transform; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn XRReferenceSpaceEventInit::to_js(
  self : XRReferenceSpaceEventInit,
) -> JsValue {
  XRReferenceSpaceEventInit::to_js_ffi(self)
}

///|
extern "js" fn XRReferenceSpaceEventInit::from_js_ffi(
  value : JsValue,
) -> XRReferenceSpaceEventInit =
  #| (v) => ({
  #|   referenceSpace: v.referenceSpace,
  #|   transform: (v.transform === undefined ? { $tag: 0 } : v.transform === null ? { $tag: 1 } : { $tag: 2, _0: v.transform })
  #| })

///|
/// Convert from JsValue
pub fn XRReferenceSpaceEventInit::from_js(
  value : JsValue,
) -> XRReferenceSpaceEventInit {
  XRReferenceSpaceEventInit::from_js_ffi(value)
}

///|
/// XRVisibilityMaskChangeEventInit dictionary
pub(all) struct XRVisibilityMaskChangeEventInit {
  session : XRSession
  eye : XREye
  index : Int
  vertices : Float32Array
  indices : Uint32Array
}

///|
/// Create a new XRVisibilityMaskChangeEventInit
pub fn XRVisibilityMaskChangeEventInit::new(
  session~ : XRSession,
  eye~ : XREye,
  vertices~ : Float32Array,
  indices~ : Uint32Array,
) -> XRVisibilityMaskChangeEventInit {
  XRVisibilityMaskChangeEventInit::{ session, eye, index: 0, vertices, indices }
}

///|
extern "js" fn XRVisibilityMaskChangeEventInit::to_js_ffi(
  self : XRVisibilityMaskChangeEventInit,
) -> JsValue =
  #| (self) => ({
  #|   session: self.session,
  #|   eye: ['none', 'left', 'right'][self.eye],
  #|   index: self.index,
  #|   vertices: self.vertices,
  #|   indices: self.indices
  #| })

///|
/// Convert to JsValue
pub fn XRVisibilityMaskChangeEventInit::to_js(
  self : XRVisibilityMaskChangeEventInit,
) -> JsValue {
  XRVisibilityMaskChangeEventInit::to_js_ffi(self)
}

///|
extern "js" fn XRVisibilityMaskChangeEventInit::from_js_ffi(
  value : JsValue,
) -> XRVisibilityMaskChangeEventInit =
  #| (v) => ({
  #|   session: v.session,
  #|   eye: ['none', 'left', 'right'].indexOf(v.eye),
  #|   index: v.index,
  #|   vertices: v.vertices,
  #|   indices: v.indices
  #| })

///|
/// Convert from JsValue
pub fn XRVisibilityMaskChangeEventInit::from_js(
  value : JsValue,
) -> XRVisibilityMaskChangeEventInit {
  XRVisibilityMaskChangeEventInit::from_js_ffi(value)
}

///|
/// XRSessionSupportedPermissionDescriptor dictionary
pub(all) struct XRSessionSupportedPermissionDescriptor {
  mode : XRSessionMode?
}

///|
/// Create a new XRSessionSupportedPermissionDescriptor with default values
pub fn XRSessionSupportedPermissionDescriptor::default() -> XRSessionSupportedPermissionDescriptor {
  XRSessionSupportedPermissionDescriptor::{ mode: None }
}

///|
extern "js" fn XRSessionSupportedPermissionDescriptor::to_js_ffi(
  self : XRSessionSupportedPermissionDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   mode: ((() => { const v = self.mode; if (v === undefined) return undefined; return ['inline', 'immersive-vr', 'immersive-ar'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn XRSessionSupportedPermissionDescriptor::to_js(
  self : XRSessionSupportedPermissionDescriptor,
) -> JsValue {
  XRSessionSupportedPermissionDescriptor::to_js_ffi(self)
}

///|
extern "js" fn XRSessionSupportedPermissionDescriptor::from_js_ffi(
  value : JsValue,
) -> XRSessionSupportedPermissionDescriptor =
  #| (v) => ({
  #|   mode: (v.mode === undefined ? undefined : ['inline', 'immersive-vr', 'immersive-ar'].indexOf(v.mode))
  #| })

///|
/// Convert from JsValue
pub fn XRSessionSupportedPermissionDescriptor::from_js(
  value : JsValue,
) -> XRSessionSupportedPermissionDescriptor {
  XRSessionSupportedPermissionDescriptor::from_js_ffi(value)
}

///|
/// XRPermissionDescriptor dictionary
pub(all) struct XRPermissionDescriptor {
  mode : XRSessionMode?
  requiredFeatures : Array[String]?
  optionalFeatures : Array[String]?
}

///|
/// Create a new XRPermissionDescriptor with default values
pub fn XRPermissionDescriptor::default() -> XRPermissionDescriptor {
  XRPermissionDescriptor::{
    mode: None,
    requiredFeatures: None,
    optionalFeatures: None,
  }
}

///|
extern "js" fn XRPermissionDescriptor::to_js_ffi(
  self : XRPermissionDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   mode: ((() => { const v = self.mode; if (v === undefined) return undefined; return ['inline', 'immersive-vr', 'immersive-ar'][v]; })()),
  #|   requiredFeatures: ((() => { const v = self.requiredFeatures; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   optionalFeatures: ((() => { const v = self.optionalFeatures; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn XRPermissionDescriptor::to_js(self : XRPermissionDescriptor) -> JsValue {
  XRPermissionDescriptor::to_js_ffi(self)
}

///|
extern "js" fn XRPermissionDescriptor::from_js_ffi(
  value : JsValue,
) -> XRPermissionDescriptor =
  #| (v) => ({
  #|   mode: (v.mode === undefined ? undefined : ['inline', 'immersive-vr', 'immersive-ar'].indexOf(v.mode)),
  #|   requiredFeatures: (v.requiredFeatures === undefined ? { $tag: 0 } : { $tag: 1, _0: v.requiredFeatures }),
  #|   optionalFeatures: (v.optionalFeatures === undefined ? { $tag: 0 } : { $tag: 1, _0: v.optionalFeatures })
  #| })

///|
/// Convert from JsValue
pub fn XRPermissionDescriptor::from_js(
  value : JsValue,
) -> XRPermissionDescriptor {
  XRPermissionDescriptor::from_js_ffi(value)
}

///|
/// XRSystem interface
pub type XRSystem

///|
pub extern "js" fn XRSystem::to_js_value(self : XRSystem) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRSystem (unchecked)
pub extern "js" fn XRSystem::from_js_value(v : JsValue) -> XRSystem =
  #| (v) => v

///|
/// Safely cast JsValue to XRSystem (checked with instanceof)
pub extern "js" fn XRSystem::from_js_value_opt(v : JsValue) -> XRSystem? =
  #| (v) => (v instanceof XRSystem) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRSystem (checked with instanceof)
pub extern "js" fn JsValue::as_xr_system(self : JsValue) -> XRSystem? =
  #| (self) => (self instanceof XRSystem) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRSystem (unchecked)
pub extern "js" fn JsValue::to_xr_system(self : JsValue) -> XRSystem =
  #| (self) => self

///|
pub extern "js" fn XRSystem::to_event_target(self : XRSystem) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn XRSystem::is_session_supported(
  self : XRSystem,
  mode : XRSessionMode,
) -> Promise[Bool] =
  #| (self, mode) => self.isSessionSupported(['inline', 'immersive-vr', 'immersive-ar'][mode])

///|
pub extern "js" fn XRSystem::request_session(
  self : XRSystem,
  mode : XRSessionMode,
) -> Promise[XRSession] =
  #| (self, mode) => self.requestSession(['inline', 'immersive-vr', 'immersive-ar'][mode])

///|
extern "js" fn XRSystem::request_session_with_options_ffi(
  self : XRSystem,
  mode : XRSessionMode,
  options : JsValue,
) -> Promise[XRSession] =
  #| (self, mode, options) => self.requestSession(['inline', 'immersive-vr', 'immersive-ar'][mode], options)

///|
pub fn XRSystem::request_session_with_options(
  self : XRSystem,
  mode : XRSessionMode,
  options : XRSessionInit,
) -> Promise[XRSession] {
  XRSystem::request_session_with_options_ffi(self, mode, options.to_js())
}

///|
pub extern "js" fn XRSystem::get_ondevicechange(
  self : XRSystem,
) -> EventHandler =
  #| (self) => self.ondevicechange

///|
pub extern "js" fn XRSystem::set_ondevicechange(
  self : XRSystem,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondevicechange = value }

///|
/// XRSession interface
pub type XRSession

///|
pub extern "js" fn XRSession::to_js_value(self : XRSession) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRSession (unchecked)
pub extern "js" fn XRSession::from_js_value(v : JsValue) -> XRSession =
  #| (v) => v

///|
/// Safely cast JsValue to XRSession (checked with instanceof)
pub extern "js" fn XRSession::from_js_value_opt(v : JsValue) -> XRSession? =
  #| (v) => (v instanceof XRSession) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRSession (checked with instanceof)
pub extern "js" fn JsValue::as_xr_session(self : JsValue) -> XRSession? =
  #| (self) => (self instanceof XRSession) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRSession (unchecked)
pub extern "js" fn JsValue::to_xr_session(self : JsValue) -> XRSession =
  #| (self) => self

///|
pub extern "js" fn XRSession::to_event_target(self : XRSession) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn XRSession::get_visibility_state(
  self : XRSession,
) -> XRVisibilityState =
  #| (self) => ['visible', 'visible-blurred', 'hidden'].indexOf(self.visibilityState)

///|
pub extern "js" fn XRSession::get_frame_rate(self : XRSession) -> Double? =
  #| (self) => (self.frameRate) ?? undefined

///|
pub extern "js" fn XRSession::get_supported_frame_rates(
  self : XRSession,
) -> Float32Array? =
  #| (self) => (() => { const v = self.supportedFrameRates; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn XRSession::get_render_state(
  self : XRSession,
) -> XRRenderState =
  #| (self) => self.renderState

///|
pub extern "js" fn XRSession::get_input_sources(
  self : XRSession,
) -> XRInputSourceArray =
  #| (self) => self.inputSources

///|
pub extern "js" fn XRSession::get_tracked_sources(
  self : XRSession,
) -> XRInputSourceArray =
  #| (self) => self.trackedSources

///|
pub extern "js" fn XRSession::get_enabled_features(
  self : XRSession,
) -> Array[String] =
  #| (self) => self.enabledFeatures

///|
pub extern "js" fn XRSession::get_is_system_keyboard_supported(
  self : XRSession,
) -> Bool =
  #| (self) => self.isSystemKeyboardSupported

///|
pub extern "js" fn XRSession::update_render_state(self : XRSession) -> Unit =
  #| (self) => self.updateRenderState()

///|
extern "js" fn XRSession::update_render_state_with_state_ffi(
  self : XRSession,
  state : JsValue,
) -> Unit =
  #| (self, state) => self.updateRenderState(state)

///|
pub fn XRSession::update_render_state_with_state(
  self : XRSession,
  state : XRRenderStateInit,
) -> Unit {
  XRSession::update_render_state_with_state_ffi(self, state.to_js())
}

///|
pub extern "js" fn XRSession::update_target_frame_rate(
  self : XRSession,
  rate : Double,
) -> Promise[Unit] =
  #| (self, rate) => self.updateTargetFrameRate(rate)

///|
pub extern "js" fn XRSession::request_reference_space(
  self : XRSession,
  type_ : XRReferenceSpaceType,
) -> Promise[XRReferenceSpace] =
  #| (self, type_) => self.requestReferenceSpace(['viewer', 'local', 'local-floor', 'bounded-floor', 'unbounded'][type_])

///|
pub extern "js" fn XRSession::request_animation_frame(
  self : XRSession,
  callback : XRFrameRequestCallback,
) -> Int =
  #| (self, callback) => self.requestAnimationFrame(callback)

///|
pub extern "js" fn XRSession::cancel_animation_frame(
  self : XRSession,
  handle : Int,
) -> Unit =
  #| (self, handle) => self.cancelAnimationFrame(handle)

///|
pub extern "js" fn XRSession::end(self : XRSession) -> Promise[Unit] =
  #| (self) => self.end()

///|
pub extern "js" fn XRSession::get_onend(self : XRSession) -> EventHandler =
  #| (self) => self.onend

///|
pub extern "js" fn XRSession::set_onend(
  self : XRSession,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onend = value }

///|
pub extern "js" fn XRSession::get_oninputsourceschange(
  self : XRSession,
) -> EventHandler =
  #| (self) => self.oninputsourceschange

///|
pub extern "js" fn XRSession::set_oninputsourceschange(
  self : XRSession,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oninputsourceschange = value }

///|
pub extern "js" fn XRSession::get_onselect(self : XRSession) -> EventHandler =
  #| (self) => self.onselect

///|
pub extern "js" fn XRSession::set_onselect(
  self : XRSession,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onselect = value }

///|
pub extern "js" fn XRSession::get_onselectstart(
  self : XRSession,
) -> EventHandler =
  #| (self) => self.onselectstart

///|
pub extern "js" fn XRSession::set_onselectstart(
  self : XRSession,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onselectstart = value }

///|
pub extern "js" fn XRSession::get_onselectend(self : XRSession) -> EventHandler =
  #| (self) => self.onselectend

///|
pub extern "js" fn XRSession::set_onselectend(
  self : XRSession,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onselectend = value }

///|
pub extern "js" fn XRSession::get_onsqueeze(self : XRSession) -> EventHandler =
  #| (self) => self.onsqueeze

///|
pub extern "js" fn XRSession::set_onsqueeze(
  self : XRSession,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsqueeze = value }

///|
pub extern "js" fn XRSession::get_onsqueezestart(
  self : XRSession,
) -> EventHandler =
  #| (self) => self.onsqueezestart

///|
pub extern "js" fn XRSession::set_onsqueezestart(
  self : XRSession,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsqueezestart = value }

///|
pub extern "js" fn XRSession::get_onsqueezeend(
  self : XRSession,
) -> EventHandler =
  #| (self) => self.onsqueezeend

///|
pub extern "js" fn XRSession::set_onsqueezeend(
  self : XRSession,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsqueezeend = value }

///|
pub extern "js" fn XRSession::get_onvisibilitychange(
  self : XRSession,
) -> EventHandler =
  #| (self) => self.onvisibilitychange

///|
pub extern "js" fn XRSession::set_onvisibilitychange(
  self : XRSession,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onvisibilitychange = value }

///|
pub extern "js" fn XRSession::get_onframeratechange(
  self : XRSession,
) -> EventHandler =
  #| (self) => self.onframeratechange

///|
pub extern "js" fn XRSession::set_onframeratechange(
  self : XRSession,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onframeratechange = value }

///|
pub extern "js" fn XRSession::initiate_room_capture(
  self : XRSession,
) -> Promise[Unit] =
  #| (self) => self.initiateRoomCapture()

///|
pub extern "js" fn XRSession::request_light_probe(
  self : XRSession,
) -> Promise[XRLightProbe] =
  #| (self) => self.requestLightProbe()

///|
extern "js" fn XRSession::request_light_probe_with_options_ffi(
  self : XRSession,
  options : JsValue,
) -> Promise[XRLightProbe] =
  #| (self, options) => self.requestLightProbe(options)

///|
pub fn XRSession::request_light_probe_with_options(
  self : XRSession,
  options : XRLightProbeInit,
) -> Promise[XRLightProbe] {
  XRSession::request_light_probe_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn XRSession::get_preferred_reflection_format(
  self : XRSession,
) -> XRReflectionFormat =
  #| (self) => ['srgba8', 'rgba16f'].indexOf(self.preferredReflectionFormat)

///|
pub extern "js" fn XRSession::get_persistent_anchors(
  self : XRSession,
) -> Array[String] =
  #| (self) => self.persistentAnchors

///|
pub extern "js" fn XRSession::restore_persistent_anchor(
  self : XRSession,
  uuid : String,
) -> Promise[XRAnchor] =
  #| (self, uuid) => self.restorePersistentAnchor(uuid)

///|
pub extern "js" fn XRSession::delete_persistent_anchor(
  self : XRSession,
  uuid : String,
) -> Promise[Unit] =
  #| (self, uuid) => self.deletePersistentAnchor(uuid)

///|
pub extern "js" fn XRSession::get_depth_usage(self : XRSession) -> XRDepthUsage =
  #| (self) => ['cpu-optimized', 'gpu-optimized'].indexOf(self.depthUsage)

///|
pub extern "js" fn XRSession::get_depth_data_format(
  self : XRSession,
) -> XRDepthDataFormat =
  #| (self) => ['luminance-alpha', 'float32', 'unsigned-short'].indexOf(self.depthDataFormat)

///|
pub extern "js" fn XRSession::get_depth_type(self : XRSession) -> XRDepthType? =
  #| (self) => (() => { const v = self.depthType; return v == null ? undefined : ['raw', 'smooth'].indexOf(v); })()

///|
pub extern "js" fn XRSession::get_depth_active(self : XRSession) -> Bool? =
  #| (self) => (self.depthActive) ?? undefined

///|
pub extern "js" fn XRSession::pause_depth_sensing(self : XRSession) -> Unit =
  #| (self) => self.pauseDepthSensing()

///|
pub extern "js" fn XRSession::resume_depth_sensing(self : XRSession) -> Unit =
  #| (self) => self.resumeDepthSensing()

///|
pub extern "js" fn XRSession::get_environment_blend_mode(
  self : XRSession,
) -> XREnvironmentBlendMode =
  #| (self) => ['opaque', 'alpha-blend', 'additive'].indexOf(self.environmentBlendMode)

///|
pub extern "js" fn XRSession::get_interaction_mode(
  self : XRSession,
) -> XRInteractionMode =
  #| (self) => ['screen-space', 'world-space'].indexOf(self.interactionMode)

///|
extern "js" fn XRSession::request_hit_test_source_ffi(
  self : XRSession,
  options : JsValue,
) -> Promise[XRHitTestSource] =
  #| (self, options) => self.requestHitTestSource(options)

///|
pub fn XRSession::request_hit_test_source(
  self : XRSession,
  options : XRHitTestOptionsInit,
) -> Promise[XRHitTestSource] {
  XRSession::request_hit_test_source_ffi(self, options.to_js())
}

///|
extern "js" fn XRSession::request_hit_test_source_for_transient_input_ffi(
  self : XRSession,
  options : JsValue,
) -> Promise[XRTransientInputHitTestSource] =
  #| (self, options) => self.requestHitTestSourceForTransientInput(options)

///|
pub fn XRSession::request_hit_test_source_for_transient_input(
  self : XRSession,
  options : XRTransientInputHitTestOptionsInit,
) -> Promise[XRTransientInputHitTestSource] {
  XRSession::request_hit_test_source_for_transient_input_ffi(
    self,
    options.to_js(),
  )
}

///|
pub extern "js" fn XRSession::get_dom_overlay_state(
  self : XRSession,
) -> XRDOMOverlayState? =
  #| (self) => (() => { const v = self.domOverlayState; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn XRSession::get_max_render_layers(self : XRSession) -> Int =
  #| (self) => self.maxRenderLayers

///|
/// XRRenderState interface
pub type XRRenderState

///|
pub extern "js" fn XRRenderState::to_js_value(self : XRRenderState) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRRenderState (unchecked)
pub extern "js" fn XRRenderState::from_js_value(v : JsValue) -> XRRenderState =
  #| (v) => v

///|
/// Safely cast JsValue to XRRenderState (checked with instanceof)
pub extern "js" fn XRRenderState::from_js_value_opt(
  v : JsValue,
) -> XRRenderState? =
  #| (v) => (v instanceof XRRenderState) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRRenderState (checked with instanceof)
pub extern "js" fn JsValue::as_xr_render_state(
  self : JsValue,
) -> XRRenderState? =
  #| (self) => (self instanceof XRRenderState) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRRenderState (unchecked)
pub extern "js" fn JsValue::to_xr_render_state(self : JsValue) -> XRRenderState =
  #| (self) => self

///|
pub extern "js" fn XRRenderState::get_depth_near(
  self : XRRenderState,
) -> Double =
  #| (self) => self.depthNear

///|
pub extern "js" fn XRRenderState::get_depth_far(self : XRRenderState) -> Double =
  #| (self) => self.depthFar

///|
pub extern "js" fn XRRenderState::get_passthrough_fully_obscured(
  self : XRRenderState,
) -> Bool? =
  #| (self) => (self.passthroughFullyObscured) ?? undefined

///|
pub extern "js" fn XRRenderState::get_inline_vertical_field_of_view(
  self : XRRenderState,
) -> Double? =
  #| (self) => (self.inlineVerticalFieldOfView) ?? undefined

///|
pub extern "js" fn XRRenderState::get_base_layer(
  self : XRRenderState,
) -> XRWebGLLayer? =
  #| (self) => (() => { const v = self.baseLayer; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn XRRenderState::get_layers(
  self : XRRenderState,
) -> Array[XRLayer] =
  #| (self) => self.layers

///|
/// XRFrame interface
pub type XRFrame

///|
pub extern "js" fn XRFrame::to_js_value(self : XRFrame) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRFrame (unchecked)
pub extern "js" fn XRFrame::from_js_value(v : JsValue) -> XRFrame =
  #| (v) => v

///|
/// Safely cast JsValue to XRFrame (checked with instanceof)
pub extern "js" fn XRFrame::from_js_value_opt(v : JsValue) -> XRFrame? =
  #| (v) => (v instanceof XRFrame) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRFrame (checked with instanceof)
pub extern "js" fn JsValue::as_xr_frame(self : JsValue) -> XRFrame? =
  #| (self) => (self instanceof XRFrame) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRFrame (unchecked)
pub extern "js" fn JsValue::to_xr_frame(self : JsValue) -> XRFrame =
  #| (self) => self

///|
pub extern "js" fn XRFrame::get_session(self : XRFrame) -> XRSession =
  #| (self) => self.session

///|
pub extern "js" fn XRFrame::get_predicted_display_time(
  self : XRFrame,
) -> DOMHighResTimeStamp =
  #| (self) => self.predictedDisplayTime

///|
pub extern "js" fn XRFrame::get_viewer_pose(
  self : XRFrame,
  reference_space : XRReferenceSpace,
) -> XRViewerPose? =
  #| (self, reference_space) => (() => { const v = self.getViewerPose(reference_space); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn XRFrame::get_pose(
  self : XRFrame,
  space : XRSpace,
  base_space : XRSpace,
) -> XRPose? =
  #| (self, space, base_space) => (() => { const v = self.getPose(space, base_space); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn XRFrame::get_body(self : XRFrame) -> XRBody? =
  #| (self) => (() => { const v = self.body; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn XRFrame::get_detected_planes(self : XRFrame) -> XRPlaneSet =
  #| (self) => self.detectedPlanes

///|
pub extern "js" fn XRFrame::get_light_estimate(
  self : XRFrame,
  light_probe : XRLightProbe,
) -> XRLightEstimate? =
  #| (self, light_probe) => (() => { const v = self.getLightEstimate(light_probe); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn XRFrame::create_anchor(
  self : XRFrame,
  pose : XRRigidTransform,
  space : XRSpace,
) -> Promise[XRAnchor] =
  #| (self, pose, space) => self.createAnchor(pose, space)

///|
pub extern "js" fn XRFrame::get_tracked_anchors(self : XRFrame) -> XRAnchorSet =
  #| (self) => self.trackedAnchors

///|
pub extern "js" fn XRFrame::get_detected_meshes(self : XRFrame) -> XRMeshSet =
  #| (self) => self.detectedMeshes

///|
pub extern "js" fn XRFrame::get_depth_information(
  self : XRFrame,
  view : XRView,
) -> XRCPUDepthInformation? =
  #| (self, view) => (() => { const v = self.getDepthInformation(view); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn XRFrame::get_joint_pose(
  self : XRFrame,
  joint : XRJointSpace,
  base_space : XRSpace,
) -> XRJointPose? =
  #| (self, joint, base_space) => (() => { const v = self.getJointPose(joint, base_space); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn XRFrame::fill_joint_radii(
  self : XRFrame,
  joint_spaces : Array[XRJointSpace],
  radii : Float32Array,
) -> Bool =
  #| (self, joint_spaces, radii) => self.fillJointRadii(joint_spaces, radii)

///|
pub extern "js" fn XRFrame::fill_poses(
  self : XRFrame,
  spaces : Array[XRSpace],
  base_space : XRSpace,
  transforms : Float32Array,
) -> Bool =
  #| (self, spaces, base_space, transforms) => self.fillPoses(spaces, base_space, transforms)

///|
pub extern "js" fn XRFrame::get_hit_test_results(
  self : XRFrame,
  hit_test_source : XRHitTestSource,
) -> Array[XRHitTestResult] =
  #| (self, hit_test_source) => self.getHitTestResults(hit_test_source)

///|
pub extern "js" fn XRFrame::get_hit_test_results_for_transient_input(
  self : XRFrame,
  hit_test_source : XRTransientInputHitTestSource,
) -> Array[XRTransientInputHitTestResult] =
  #| (self, hit_test_source) => self.getHitTestResultsForTransientInput(hit_test_source)

///|
/// XRSpace interface
pub type XRSpace

///|
pub extern "js" fn XRSpace::to_js_value(self : XRSpace) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRSpace (unchecked)
pub extern "js" fn XRSpace::from_js_value(v : JsValue) -> XRSpace =
  #| (v) => v

///|
/// Safely cast JsValue to XRSpace (checked with instanceof)
pub extern "js" fn XRSpace::from_js_value_opt(v : JsValue) -> XRSpace? =
  #| (v) => (v instanceof XRSpace) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRSpace (checked with instanceof)
pub extern "js" fn JsValue::as_xr_space(self : JsValue) -> XRSpace? =
  #| (self) => (self instanceof XRSpace) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRSpace (unchecked)
pub extern "js" fn JsValue::to_xr_space(self : JsValue) -> XRSpace =
  #| (self) => self

///|
pub extern "js" fn XRSpace::to_event_target(self : XRSpace) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn XRSpace::as_xr_body_space(self : XRSpace) -> XRBodySpace? =
  #| (self) => (self instanceof XRBodySpace) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn XRSpace::as_xr_reference_space(
  self : XRSpace,
) -> XRReferenceSpace? =
  #| (self) => (self instanceof XRReferenceSpace) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn XRSpace::as_xr_bounded_reference_space(
  self : XRSpace,
) -> XRBoundedReferenceSpace? =
  #| (self) => (self instanceof XRBoundedReferenceSpace) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn XRSpace::as_xr_joint_space(self : XRSpace) -> XRJointSpace? =
  #| (self) => (self instanceof XRJointSpace) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// XRReferenceSpace interface
pub type XRReferenceSpace

///|
pub extern "js" fn XRReferenceSpace::to_js_value(
  self : XRReferenceSpace,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRReferenceSpace (unchecked)
pub extern "js" fn XRReferenceSpace::from_js_value(
  v : JsValue,
) -> XRReferenceSpace =
  #| (v) => v

///|
/// Safely cast JsValue to XRReferenceSpace (checked with instanceof)
pub extern "js" fn XRReferenceSpace::from_js_value_opt(
  v : JsValue,
) -> XRReferenceSpace? =
  #| (v) => (v instanceof XRReferenceSpace) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRReferenceSpace (checked with instanceof)
pub extern "js" fn JsValue::as_xr_reference_space(
  self : JsValue,
) -> XRReferenceSpace? =
  #| (self) => (self instanceof XRReferenceSpace) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRReferenceSpace (unchecked)
pub extern "js" fn JsValue::to_xr_reference_space(
  self : JsValue,
) -> XRReferenceSpace =
  #| (self) => self

///|
pub extern "js" fn XRReferenceSpace::to_xr_space(
  self : XRReferenceSpace,
) -> XRSpace =
  #| (self) => self

///|
pub extern "js" fn XRReferenceSpace::to_event_target(
  self : XRReferenceSpace,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn XRReferenceSpace::as_xr_bounded_reference_space(
  self : XRReferenceSpace,
) -> XRBoundedReferenceSpace? =
  #| (self) => (self instanceof XRBoundedReferenceSpace) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn XRReferenceSpace::get_offset_reference_space(
  self : XRReferenceSpace,
  origin_offset : XRRigidTransform,
) -> XRReferenceSpace =
  #| (self, origin_offset) => self.getOffsetReferenceSpace(origin_offset)

///|
pub extern "js" fn XRReferenceSpace::get_onreset(
  self : XRReferenceSpace,
) -> EventHandler =
  #| (self) => self.onreset

///|
pub extern "js" fn XRReferenceSpace::set_onreset(
  self : XRReferenceSpace,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onreset = value }

///|
/// XRBoundedReferenceSpace interface
pub type XRBoundedReferenceSpace

///|
pub extern "js" fn XRBoundedReferenceSpace::to_js_value(
  self : XRBoundedReferenceSpace,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRBoundedReferenceSpace (unchecked)
pub extern "js" fn XRBoundedReferenceSpace::from_js_value(
  v : JsValue,
) -> XRBoundedReferenceSpace =
  #| (v) => v

///|
/// Safely cast JsValue to XRBoundedReferenceSpace (checked with instanceof)
pub extern "js" fn XRBoundedReferenceSpace::from_js_value_opt(
  v : JsValue,
) -> XRBoundedReferenceSpace? =
  #| (v) => (v instanceof XRBoundedReferenceSpace) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRBoundedReferenceSpace (checked with instanceof)
pub extern "js" fn JsValue::as_xr_bounded_reference_space(
  self : JsValue,
) -> XRBoundedReferenceSpace? =
  #| (self) => (self instanceof XRBoundedReferenceSpace) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRBoundedReferenceSpace (unchecked)
pub extern "js" fn JsValue::to_xr_bounded_reference_space(
  self : JsValue,
) -> XRBoundedReferenceSpace =
  #| (self) => self

///|
pub extern "js" fn XRBoundedReferenceSpace::to_xr_reference_space(
  self : XRBoundedReferenceSpace,
) -> XRReferenceSpace =
  #| (self) => self

///|
pub extern "js" fn XRBoundedReferenceSpace::to_xr_space(
  self : XRBoundedReferenceSpace,
) -> XRSpace =
  #| (self) => self

///|
pub extern "js" fn XRBoundedReferenceSpace::to_event_target(
  self : XRBoundedReferenceSpace,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn XRBoundedReferenceSpace::get_bounds_geometry(
  self : XRBoundedReferenceSpace,
) -> Array[DOMPointReadOnly] =
  #| (self) => self.boundsGeometry

///|
/// XRView interface
pub type XRView

///|
pub extern "js" fn XRView::to_js_value(self : XRView) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRView (unchecked)
pub extern "js" fn XRView::from_js_value(v : JsValue) -> XRView =
  #| (v) => v

///|
/// Safely cast JsValue to XRView (checked with instanceof)
pub extern "js" fn XRView::from_js_value_opt(v : JsValue) -> XRView? =
  #| (v) => (v instanceof XRView) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRView (checked with instanceof)
pub extern "js" fn JsValue::as_xr_view(self : JsValue) -> XRView? =
  #| (self) => (self instanceof XRView) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRView (unchecked)
pub extern "js" fn JsValue::to_xr_view(self : JsValue) -> XRView =
  #| (self) => self

///|
pub extern "js" fn XRView::get_eye(self : XRView) -> XREye =
  #| (self) => ['none', 'left', 'right'].indexOf(self.eye)

///|
pub extern "js" fn XRView::get_index(self : XRView) -> Int =
  #| (self) => self.index

///|
pub extern "js" fn XRView::get_recommended_viewport_scale(
  self : XRView,
) -> Double? =
  #| (self) => (self.recommendedViewportScale) ?? undefined

///|
pub extern "js" fn XRView::request_viewport_scale(
  self : XRView,
  scale : Double?,
) -> Unit =
  #| (self, scale) => self.requestViewportScale(scale)

///|
pub extern "js" fn XRView::get_is_first_person_observer(self : XRView) -> Bool =
  #| (self) => self.isFirstPersonObserver

///|
pub extern "js" fn XRView::get_camera(self : XRView) -> XRCamera? =
  #| (self) => (() => { const v = self.camera; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn XRView::get_projection_matrix(self : XRView) -> Float32Array =
  #| (self) => self.projectionMatrix

///|
pub extern "js" fn XRView::get_transform(self : XRView) -> XRRigidTransform =
  #| (self) => self.transform

///|
/// XRViewport interface
pub type XRViewport

///|
pub extern "js" fn XRViewport::to_js_value(self : XRViewport) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRViewport (unchecked)
pub extern "js" fn XRViewport::from_js_value(v : JsValue) -> XRViewport =
  #| (v) => v

///|
/// Safely cast JsValue to XRViewport (checked with instanceof)
pub extern "js" fn XRViewport::from_js_value_opt(v : JsValue) -> XRViewport? =
  #| (v) => (v instanceof XRViewport) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRViewport (checked with instanceof)
pub extern "js" fn JsValue::as_xr_viewport(self : JsValue) -> XRViewport? =
  #| (self) => (self instanceof XRViewport) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRViewport (unchecked)
pub extern "js" fn JsValue::to_xr_viewport(self : JsValue) -> XRViewport =
  #| (self) => self

///|
pub extern "js" fn XRViewport::get_x(self : XRViewport) -> Int =
  #| (self) => self.x

///|
pub extern "js" fn XRViewport::get_y(self : XRViewport) -> Int =
  #| (self) => self.y

///|
pub extern "js" fn XRViewport::get_width(self : XRViewport) -> Int =
  #| (self) => self.width

///|
pub extern "js" fn XRViewport::get_height(self : XRViewport) -> Int =
  #| (self) => self.height

///|
/// XRRigidTransform interface
pub type XRRigidTransform

///|
pub extern "js" fn XRRigidTransform::to_js_value(
  self : XRRigidTransform,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRRigidTransform (unchecked)
pub extern "js" fn XRRigidTransform::from_js_value(
  v : JsValue,
) -> XRRigidTransform =
  #| (v) => v

///|
/// Safely cast JsValue to XRRigidTransform (checked with instanceof)
pub extern "js" fn XRRigidTransform::from_js_value_opt(
  v : JsValue,
) -> XRRigidTransform? =
  #| (v) => (v instanceof XRRigidTransform) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRRigidTransform (checked with instanceof)
pub extern "js" fn JsValue::as_xr_rigid_transform(
  self : JsValue,
) -> XRRigidTransform? =
  #| (self) => (self instanceof XRRigidTransform) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRRigidTransform (unchecked)
pub extern "js" fn JsValue::to_xr_rigid_transform(
  self : JsValue,
) -> XRRigidTransform =
  #| (self) => self

///|
pub extern "js" fn XRRigidTransform::new() -> XRRigidTransform =
  #| () => new XRRigidTransform()

///|
extern "js" fn XRRigidTransform::new_with_orientation_ffi(
  position : JsValue,
  orientation : JsValue,
) -> XRRigidTransform =
  #| (position, orientation) => new XRRigidTransform(position, orientation)

///|
pub fn XRRigidTransform::new_with_orientation(
  position : DOMPointInit,
  orientation : DOMPointInit,
) -> XRRigidTransform {
  XRRigidTransform::new_with_orientation_ffi(
    position.to_js(),
    orientation.to_js(),
  )
}

///|
pub extern "js" fn XRRigidTransform::get_position(
  self : XRRigidTransform,
) -> DOMPointReadOnly =
  #| (self) => self.position

///|
pub extern "js" fn XRRigidTransform::get_orientation(
  self : XRRigidTransform,
) -> DOMPointReadOnly =
  #| (self) => self.orientation

///|
pub extern "js" fn XRRigidTransform::get_matrix(
  self : XRRigidTransform,
) -> Float32Array =
  #| (self) => self.matrix

///|
pub extern "js" fn XRRigidTransform::get_inverse(
  self : XRRigidTransform,
) -> XRRigidTransform =
  #| (self) => self.inverse

///|
/// XRPose interface
pub type XRPose

///|
pub extern "js" fn XRPose::to_js_value(self : XRPose) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRPose (unchecked)
pub extern "js" fn XRPose::from_js_value(v : JsValue) -> XRPose =
  #| (v) => v

///|
/// Safely cast JsValue to XRPose (checked with instanceof)
pub extern "js" fn XRPose::from_js_value_opt(v : JsValue) -> XRPose? =
  #| (v) => (v instanceof XRPose) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRPose (checked with instanceof)
pub extern "js" fn JsValue::as_xr_pose(self : JsValue) -> XRPose? =
  #| (self) => (self instanceof XRPose) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRPose (unchecked)
pub extern "js" fn JsValue::to_xr_pose(self : JsValue) -> XRPose =
  #| (self) => self

///|
pub extern "js" fn XRPose::as_xr_viewer_pose(self : XRPose) -> XRViewerPose? =
  #| (self) => (self instanceof XRViewerPose) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn XRPose::as_xr_joint_pose(self : XRPose) -> XRJointPose? =
  #| (self) => (self instanceof XRJointPose) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn XRPose::get_transform(self : XRPose) -> XRRigidTransform =
  #| (self) => self.transform

///|
pub extern "js" fn XRPose::get_linear_velocity(
  self : XRPose,
) -> DOMPointReadOnly? =
  #| (self) => (() => { const v = self.linearVelocity; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn XRPose::get_angular_velocity(
  self : XRPose,
) -> DOMPointReadOnly? =
  #| (self) => (() => { const v = self.angularVelocity; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn XRPose::get_emulated_position(self : XRPose) -> Bool =
  #| (self) => self.emulatedPosition

///|
/// XRViewerPose interface
pub type XRViewerPose

///|
pub extern "js" fn XRViewerPose::to_js_value(self : XRViewerPose) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRViewerPose (unchecked)
pub extern "js" fn XRViewerPose::from_js_value(v : JsValue) -> XRViewerPose =
  #| (v) => v

///|
/// Safely cast JsValue to XRViewerPose (checked with instanceof)
pub extern "js" fn XRViewerPose::from_js_value_opt(
  v : JsValue,
) -> XRViewerPose? =
  #| (v) => (v instanceof XRViewerPose) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRViewerPose (checked with instanceof)
pub extern "js" fn JsValue::as_xr_viewer_pose(self : JsValue) -> XRViewerPose? =
  #| (self) => (self instanceof XRViewerPose) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRViewerPose (unchecked)
pub extern "js" fn JsValue::to_xr_viewer_pose(self : JsValue) -> XRViewerPose =
  #| (self) => self

///|
pub extern "js" fn XRViewerPose::to_xr_pose(self : XRViewerPose) -> XRPose =
  #| (self) => self

///|
pub extern "js" fn XRViewerPose::get_views(
  self : XRViewerPose,
) -> Array[XRView] =
  #| (self) => self.views

///|
/// XRInputSource interface
pub type XRInputSource

///|
pub extern "js" fn XRInputSource::to_js_value(self : XRInputSource) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRInputSource (unchecked)
pub extern "js" fn XRInputSource::from_js_value(v : JsValue) -> XRInputSource =
  #| (v) => v

///|
/// Safely cast JsValue to XRInputSource (checked with instanceof)
pub extern "js" fn XRInputSource::from_js_value_opt(
  v : JsValue,
) -> XRInputSource? =
  #| (v) => (v instanceof XRInputSource) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRInputSource (checked with instanceof)
pub extern "js" fn JsValue::as_xr_input_source(
  self : JsValue,
) -> XRInputSource? =
  #| (self) => (self instanceof XRInputSource) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRInputSource (unchecked)
pub extern "js" fn JsValue::to_xr_input_source(self : JsValue) -> XRInputSource =
  #| (self) => self

///|
pub extern "js" fn XRInputSource::get_handedness(
  self : XRInputSource,
) -> XRHandedness =
  #| (self) => ['none', 'left', 'right'].indexOf(self.handedness)

///|
pub extern "js" fn XRInputSource::get_target_ray_mode(
  self : XRInputSource,
) -> XRTargetRayMode =
  #| (self) => ['gaze', 'tracked-pointer', 'screen', 'transient-pointer'].indexOf(self.targetRayMode)

///|
pub extern "js" fn XRInputSource::get_target_ray_space(
  self : XRInputSource,
) -> XRSpace =
  #| (self) => self.targetRaySpace

///|
pub extern "js" fn XRInputSource::get_grip_space(
  self : XRInputSource,
) -> XRSpace? =
  #| (self) => (() => { const v = self.gripSpace; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn XRInputSource::get_profiles(
  self : XRInputSource,
) -> Array[String] =
  #| (self) => self.profiles

///|
pub extern "js" fn XRInputSource::get_skip_rendering(
  self : XRInputSource,
) -> Bool =
  #| (self) => self.skipRendering

///|
pub extern "js" fn XRInputSource::get_hand(self : XRInputSource) -> XRHand? =
  #| (self) => (() => { const v = self.hand; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn XRInputSource::get_gamepad(self : XRInputSource) -> Gamepad? =
  #| (self) => (() => { const v = self.gamepad; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// XRInputSourceArray interface
pub type XRInputSourceArray

///|
pub extern "js" fn XRInputSourceArray::to_js_value(
  self : XRInputSourceArray,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRInputSourceArray (unchecked)
pub extern "js" fn XRInputSourceArray::from_js_value(
  v : JsValue,
) -> XRInputSourceArray =
  #| (v) => v

///|
/// Safely cast JsValue to XRInputSourceArray (checked with instanceof)
pub extern "js" fn XRInputSourceArray::from_js_value_opt(
  v : JsValue,
) -> XRInputSourceArray? =
  #| (v) => (v instanceof XRInputSourceArray) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRInputSourceArray (checked with instanceof)
pub extern "js" fn JsValue::as_xr_input_source_array(
  self : JsValue,
) -> XRInputSourceArray? =
  #| (self) => (self instanceof XRInputSourceArray) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRInputSourceArray (unchecked)
pub extern "js" fn JsValue::to_xr_input_source_array(
  self : JsValue,
) -> XRInputSourceArray =
  #| (self) => self

///|
pub extern "js" fn XRInputSourceArray::keys(
  self : XRInputSourceArray,
) -> JsValue =
  #| (self) => self.keys()

///|
pub extern "js" fn XRInputSourceArray::values(
  self : XRInputSourceArray,
) -> JsValue =
  #| (self) => self.values()

///|
pub extern "js" fn XRInputSourceArray::entries(
  self : XRInputSourceArray,
) -> JsValue =
  #| (self) => self.entries()

///|
pub extern "js" fn XRInputSourceArray::for_each(
  self : XRInputSourceArray,
  callback : JsValue,
) -> Unit =
  #| (self, callback) => { self.forEach(callback) }

///|
pub extern "js" fn XRInputSourceArray::get_length(
  self : XRInputSourceArray,
) -> Int =
  #| (self) => self.length

///|
#alias("_[_]")
pub extern "js" fn XRInputSourceArray::get(
  self : XRInputSourceArray,
  index : Int,
) -> XRInputSource =
  #| (self, index) => self[index]

///|
/// XRLayer interface
pub type XRLayer

///|
pub extern "js" fn XRLayer::to_js_value(self : XRLayer) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRLayer (unchecked)
pub extern "js" fn XRLayer::from_js_value(v : JsValue) -> XRLayer =
  #| (v) => v

///|
/// Safely cast JsValue to XRLayer (checked with instanceof)
pub extern "js" fn XRLayer::from_js_value_opt(v : JsValue) -> XRLayer? =
  #| (v) => (v instanceof XRLayer) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRLayer (checked with instanceof)
pub extern "js" fn JsValue::as_xr_layer(self : JsValue) -> XRLayer? =
  #| (self) => (self instanceof XRLayer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRLayer (unchecked)
pub extern "js" fn JsValue::to_xr_layer(self : JsValue) -> XRLayer =
  #| (self) => self

///|
pub extern "js" fn XRLayer::to_event_target(self : XRLayer) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn XRLayer::as_xr_web_gl_layer(self : XRLayer) -> XRWebGLLayer? =
  #| (self) => (self instanceof XRWebGLLayer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn XRLayer::as_xr_composition_layer(
  self : XRLayer,
) -> XRCompositionLayer? =
  #| (self) => (self instanceof XRCompositionLayer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn XRLayer::as_xr_projection_layer(
  self : XRLayer,
) -> XRProjectionLayer? =
  #| (self) => (self instanceof XRProjectionLayer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn XRLayer::as_xr_quad_layer(self : XRLayer) -> XRQuadLayer? =
  #| (self) => (self instanceof XRQuadLayer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn XRLayer::as_xr_cylinder_layer(
  self : XRLayer,
) -> XRCylinderLayer? =
  #| (self) => (self instanceof XRCylinderLayer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn XRLayer::as_xr_equirect_layer(
  self : XRLayer,
) -> XREquirectLayer? =
  #| (self) => (self instanceof XREquirectLayer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn XRLayer::as_xr_cube_layer(self : XRLayer) -> XRCubeLayer? =
  #| (self) => (self instanceof XRCubeLayer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// XRWebGLLayer interface
pub type XRWebGLLayer

///|
pub extern "js" fn XRWebGLLayer::to_js_value(self : XRWebGLLayer) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRWebGLLayer (unchecked)
pub extern "js" fn XRWebGLLayer::from_js_value(v : JsValue) -> XRWebGLLayer =
  #| (v) => v

///|
/// Safely cast JsValue to XRWebGLLayer (checked with instanceof)
pub extern "js" fn XRWebGLLayer::from_js_value_opt(
  v : JsValue,
) -> XRWebGLLayer? =
  #| (v) => (v instanceof XRWebGLLayer) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRWebGLLayer (checked with instanceof)
pub extern "js" fn JsValue::as_xr_web_gl_layer(self : JsValue) -> XRWebGLLayer? =
  #| (self) => (self instanceof XRWebGLLayer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRWebGLLayer (unchecked)
pub extern "js" fn JsValue::to_xr_web_gl_layer(self : JsValue) -> XRWebGLLayer =
  #| (self) => self

///|
pub extern "js" fn XRWebGLLayer::to_xr_layer(self : XRWebGLLayer) -> XRLayer =
  #| (self) => self

///|
pub extern "js" fn XRWebGLLayer::to_event_target(
  self : XRWebGLLayer,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn XRWebGLLayer::new(
  session : XRSession,
  context : XRWebGLRenderingContext,
) -> XRWebGLLayer =
  #| (session, context) => new XRWebGLLayer(session, context)

///|
extern "js" fn XRWebGLLayer::new_with_layer_init_ffi(
  session : XRSession,
  context : XRWebGLRenderingContext,
  layer_init : JsValue,
) -> XRWebGLLayer =
  #| (session, context, layer_init) => new XRWebGLLayer(session, context, layer_init)

///|
pub fn XRWebGLLayer::new_with_layer_init(
  session : XRSession,
  context : XRWebGLRenderingContext,
  layer_init : XRWebGLLayerInit,
) -> XRWebGLLayer {
  XRWebGLLayer::new_with_layer_init_ffi(session, context, layer_init.to_js())
}

///|
pub extern "js" fn XRWebGLLayer::get_antialias(self : XRWebGLLayer) -> Bool =
  #| (self) => self.antialias

///|
pub extern "js" fn XRWebGLLayer::get_ignore_depth_values(
  self : XRWebGLLayer,
) -> Bool =
  #| (self) => self.ignoreDepthValues

///|
pub extern "js" fn XRWebGLLayer::get_fixed_foveation(
  self : XRWebGLLayer,
) -> Double? =
  #| (self) => (self.fixedFoveation) ?? undefined

///|
pub extern "js" fn XRWebGLLayer::set_fixed_foveation(
  self : XRWebGLLayer,
  value : Double?,
) -> Unit =
  #| (self, value) => { self.fixedFoveation = value }

///|
pub extern "js" fn XRWebGLLayer::get_framebuffer(
  self : XRWebGLLayer,
) -> WebGLFramebuffer? =
  #| (self) => (() => { const v = self.framebuffer; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn XRWebGLLayer::get_framebuffer_width(
  self : XRWebGLLayer,
) -> Int =
  #| (self) => self.framebufferWidth

///|
pub extern "js" fn XRWebGLLayer::get_framebuffer_height(
  self : XRWebGLLayer,
) -> Int =
  #| (self) => self.framebufferHeight

///|
pub extern "js" fn XRWebGLLayer::get_viewport(
  self : XRWebGLLayer,
  view : XRView,
) -> XRViewport? =
  #| (self, view) => (() => { const v = self.getViewport(view); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn XRWebGLLayer::get_native_framebuffer_scale_factor(
  session : XRSession,
) -> Double =
  #| (session) => XRWebGLLayer.getNativeFramebufferScaleFactor(session)

///|
pub extern "js" fn XRWebGLLayer::new_with_web_gl_rendering_context(
  session : XRSession,
  context : WebGLRenderingContext,
  layer_init : XRWebGLLayerInit,
) -> XRWebGLLayer =
  #| (session, context, layer_init) => new XRWebGLLayer(session, context, layer_init)

///|
pub extern "js" fn XRWebGLLayer::new_with_web_gl2_rendering_context(
  session : XRSession,
  context : WebGL2RenderingContext,
  layer_init : XRWebGLLayerInit,
) -> XRWebGLLayer =
  #| (session, context, layer_init) => new XRWebGLLayer(session, context, layer_init)

///|
/// XRSessionEvent interface
pub type XRSessionEvent

///|
pub extern "js" fn XRSessionEvent::to_js_value(
  self : XRSessionEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRSessionEvent (unchecked)
pub extern "js" fn XRSessionEvent::from_js_value(v : JsValue) -> XRSessionEvent =
  #| (v) => v

///|
/// Safely cast JsValue to XRSessionEvent (checked with instanceof)
pub extern "js" fn XRSessionEvent::from_js_value_opt(
  v : JsValue,
) -> XRSessionEvent? =
  #| (v) => (v instanceof XRSessionEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRSessionEvent (checked with instanceof)
pub extern "js" fn JsValue::as_xr_session_event(
  self : JsValue,
) -> XRSessionEvent? =
  #| (self) => (self instanceof XRSessionEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRSessionEvent (unchecked)
pub extern "js" fn JsValue::to_xr_session_event(
  self : JsValue,
) -> XRSessionEvent =
  #| (self) => self

///|
pub extern "js" fn XRSessionEvent::to_event(self : XRSessionEvent) -> Event =
  #| (self) => self

///|
extern "js" fn XRSessionEvent::new_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> XRSessionEvent =
  #| (type_, event_init_dict) => new XRSessionEvent(type_, event_init_dict)

///|
pub fn XRSessionEvent::new(
  type_ : String,
  event_init_dict : XRSessionEventInit,
) -> XRSessionEvent {
  XRSessionEvent::new_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn XRSessionEvent::get_session(
  self : XRSessionEvent,
) -> XRSession =
  #| (self) => self.session

///|
/// XRInputSourceEvent interface
pub type XRInputSourceEvent

///|
pub extern "js" fn XRInputSourceEvent::to_js_value(
  self : XRInputSourceEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRInputSourceEvent (unchecked)
pub extern "js" fn XRInputSourceEvent::from_js_value(
  v : JsValue,
) -> XRInputSourceEvent =
  #| (v) => v

///|
/// Safely cast JsValue to XRInputSourceEvent (checked with instanceof)
pub extern "js" fn XRInputSourceEvent::from_js_value_opt(
  v : JsValue,
) -> XRInputSourceEvent? =
  #| (v) => (v instanceof XRInputSourceEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRInputSourceEvent (checked with instanceof)
pub extern "js" fn JsValue::as_xr_input_source_event(
  self : JsValue,
) -> XRInputSourceEvent? =
  #| (self) => (self instanceof XRInputSourceEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRInputSourceEvent (unchecked)
pub extern "js" fn JsValue::to_xr_input_source_event(
  self : JsValue,
) -> XRInputSourceEvent =
  #| (self) => self

///|
pub extern "js" fn XRInputSourceEvent::to_event(
  self : XRInputSourceEvent,
) -> Event =
  #| (self) => self

///|
extern "js" fn XRInputSourceEvent::new_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> XRInputSourceEvent =
  #| (type_, event_init_dict) => new XRInputSourceEvent(type_, event_init_dict)

///|
pub fn XRInputSourceEvent::new(
  type_ : String,
  event_init_dict : XRInputSourceEventInit,
) -> XRInputSourceEvent {
  XRInputSourceEvent::new_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn XRInputSourceEvent::get_frame(
  self : XRInputSourceEvent,
) -> XRFrame =
  #| (self) => self.frame

///|
pub extern "js" fn XRInputSourceEvent::get_input_source(
  self : XRInputSourceEvent,
) -> XRInputSource =
  #| (self) => self.inputSource

///|
/// XRInputSourcesChangeEvent interface
pub type XRInputSourcesChangeEvent

///|
pub extern "js" fn XRInputSourcesChangeEvent::to_js_value(
  self : XRInputSourcesChangeEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRInputSourcesChangeEvent (unchecked)
pub extern "js" fn XRInputSourcesChangeEvent::from_js_value(
  v : JsValue,
) -> XRInputSourcesChangeEvent =
  #| (v) => v

///|
/// Safely cast JsValue to XRInputSourcesChangeEvent (checked with instanceof)
pub extern "js" fn XRInputSourcesChangeEvent::from_js_value_opt(
  v : JsValue,
) -> XRInputSourcesChangeEvent? =
  #| (v) => (v instanceof XRInputSourcesChangeEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRInputSourcesChangeEvent (checked with instanceof)
pub extern "js" fn JsValue::as_xr_input_sources_change_event(
  self : JsValue,
) -> XRInputSourcesChangeEvent? =
  #| (self) => (self instanceof XRInputSourcesChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRInputSourcesChangeEvent (unchecked)
pub extern "js" fn JsValue::to_xr_input_sources_change_event(
  self : JsValue,
) -> XRInputSourcesChangeEvent =
  #| (self) => self

///|
pub extern "js" fn XRInputSourcesChangeEvent::to_event(
  self : XRInputSourcesChangeEvent,
) -> Event =
  #| (self) => self

///|
extern "js" fn XRInputSourcesChangeEvent::new_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> XRInputSourcesChangeEvent =
  #| (type_, event_init_dict) => new XRInputSourcesChangeEvent(type_, event_init_dict)

///|
pub fn XRInputSourcesChangeEvent::new(
  type_ : String,
  event_init_dict : XRInputSourcesChangeEventInit,
) -> XRInputSourcesChangeEvent {
  XRInputSourcesChangeEvent::new_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn XRInputSourcesChangeEvent::get_session(
  self : XRInputSourcesChangeEvent,
) -> XRSession =
  #| (self) => self.session

///|
pub extern "js" fn XRInputSourcesChangeEvent::get_added(
  self : XRInputSourcesChangeEvent,
) -> Array[XRInputSource] =
  #| (self) => self.added

///|
pub extern "js" fn XRInputSourcesChangeEvent::get_removed(
  self : XRInputSourcesChangeEvent,
) -> Array[XRInputSource] =
  #| (self) => self.removed

///|
/// XRReferenceSpaceEvent interface
pub type XRReferenceSpaceEvent

///|
pub extern "js" fn XRReferenceSpaceEvent::to_js_value(
  self : XRReferenceSpaceEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRReferenceSpaceEvent (unchecked)
pub extern "js" fn XRReferenceSpaceEvent::from_js_value(
  v : JsValue,
) -> XRReferenceSpaceEvent =
  #| (v) => v

///|
/// Safely cast JsValue to XRReferenceSpaceEvent (checked with instanceof)
pub extern "js" fn XRReferenceSpaceEvent::from_js_value_opt(
  v : JsValue,
) -> XRReferenceSpaceEvent? =
  #| (v) => (v instanceof XRReferenceSpaceEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRReferenceSpaceEvent (checked with instanceof)
pub extern "js" fn JsValue::as_xr_reference_space_event(
  self : JsValue,
) -> XRReferenceSpaceEvent? =
  #| (self) => (self instanceof XRReferenceSpaceEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRReferenceSpaceEvent (unchecked)
pub extern "js" fn JsValue::to_xr_reference_space_event(
  self : JsValue,
) -> XRReferenceSpaceEvent =
  #| (self) => self

///|
pub extern "js" fn XRReferenceSpaceEvent::to_event(
  self : XRReferenceSpaceEvent,
) -> Event =
  #| (self) => self

///|
extern "js" fn XRReferenceSpaceEvent::new_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> XRReferenceSpaceEvent =
  #| (type_, event_init_dict) => new XRReferenceSpaceEvent(type_, event_init_dict)

///|
pub fn XRReferenceSpaceEvent::new(
  type_ : String,
  event_init_dict : XRReferenceSpaceEventInit,
) -> XRReferenceSpaceEvent {
  XRReferenceSpaceEvent::new_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn XRReferenceSpaceEvent::get_reference_space(
  self : XRReferenceSpaceEvent,
) -> XRReferenceSpace =
  #| (self) => self.referenceSpace

///|
pub extern "js" fn XRReferenceSpaceEvent::get_transform(
  self : XRReferenceSpaceEvent,
) -> XRRigidTransform? =
  #| (self) => (() => { const v = self.transform; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// XRVisibilityMaskChangeEvent interface
pub type XRVisibilityMaskChangeEvent

///|
pub extern "js" fn XRVisibilityMaskChangeEvent::to_js_value(
  self : XRVisibilityMaskChangeEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRVisibilityMaskChangeEvent (unchecked)
pub extern "js" fn XRVisibilityMaskChangeEvent::from_js_value(
  v : JsValue,
) -> XRVisibilityMaskChangeEvent =
  #| (v) => v

///|
/// Safely cast JsValue to XRVisibilityMaskChangeEvent (checked with instanceof)
pub extern "js" fn XRVisibilityMaskChangeEvent::from_js_value_opt(
  v : JsValue,
) -> XRVisibilityMaskChangeEvent? =
  #| (v) => (v instanceof XRVisibilityMaskChangeEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRVisibilityMaskChangeEvent (checked with instanceof)
pub extern "js" fn JsValue::as_xr_visibility_mask_change_event(
  self : JsValue,
) -> XRVisibilityMaskChangeEvent? =
  #| (self) => (self instanceof XRVisibilityMaskChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRVisibilityMaskChangeEvent (unchecked)
pub extern "js" fn JsValue::to_xr_visibility_mask_change_event(
  self : JsValue,
) -> XRVisibilityMaskChangeEvent =
  #| (self) => self

///|
pub extern "js" fn XRVisibilityMaskChangeEvent::to_event(
  self : XRVisibilityMaskChangeEvent,
) -> Event =
  #| (self) => self

///|
extern "js" fn XRVisibilityMaskChangeEvent::new_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> XRVisibilityMaskChangeEvent =
  #| (type_, event_init_dict) => new XRVisibilityMaskChangeEvent(type_, event_init_dict)

///|
pub fn XRVisibilityMaskChangeEvent::new(
  type_ : String,
  event_init_dict : XRVisibilityMaskChangeEventInit,
) -> XRVisibilityMaskChangeEvent {
  XRVisibilityMaskChangeEvent::new_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn XRVisibilityMaskChangeEvent::get_session(
  self : XRVisibilityMaskChangeEvent,
) -> XRSession =
  #| (self) => self.session

///|
pub extern "js" fn XRVisibilityMaskChangeEvent::get_eye(
  self : XRVisibilityMaskChangeEvent,
) -> XREye =
  #| (self) => ['none', 'left', 'right'].indexOf(self.eye)

///|
pub extern "js" fn XRVisibilityMaskChangeEvent::get_index(
  self : XRVisibilityMaskChangeEvent,
) -> Int =
  #| (self) => self.index

///|
pub extern "js" fn XRVisibilityMaskChangeEvent::get_vertices(
  self : XRVisibilityMaskChangeEvent,
) -> Float32Array =
  #| (self) => self.vertices

///|
pub extern "js" fn XRVisibilityMaskChangeEvent::get_indices(
  self : XRVisibilityMaskChangeEvent,
) -> Uint32Array =
  #| (self) => self.indices

///|
/// XRPermissionStatus interface
pub type XRPermissionStatus

///|
pub extern "js" fn XRPermissionStatus::to_js_value(
  self : XRPermissionStatus,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRPermissionStatus (unchecked)
pub extern "js" fn XRPermissionStatus::from_js_value(
  v : JsValue,
) -> XRPermissionStatus =
  #| (v) => v

///|
/// Safely cast JsValue to XRPermissionStatus (checked with instanceof)
pub extern "js" fn XRPermissionStatus::from_js_value_opt(
  v : JsValue,
) -> XRPermissionStatus? =
  #| (v) => (v instanceof XRPermissionStatus) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRPermissionStatus (checked with instanceof)
pub extern "js" fn JsValue::as_xr_permission_status(
  self : JsValue,
) -> XRPermissionStatus? =
  #| (self) => (self instanceof XRPermissionStatus) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRPermissionStatus (unchecked)
pub extern "js" fn JsValue::to_xr_permission_status(
  self : JsValue,
) -> XRPermissionStatus =
  #| (self) => self

///|
pub extern "js" fn XRPermissionStatus::to_permission_status(
  self : XRPermissionStatus,
) -> PermissionStatus =
  #| (self) => self

///|
pub extern "js" fn XRPermissionStatus::to_event_target(
  self : XRPermissionStatus,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn XRPermissionStatus::get_granted(
  self : XRPermissionStatus,
) -> Array[String] =
  #| (self) => self.granted

///|
pub extern "js" fn XRPermissionStatus::set_granted(
  self : XRPermissionStatus,
  value : Array[String],
) -> Unit =
  #| (self, value) => { self.granted = value }
