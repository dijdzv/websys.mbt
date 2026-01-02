// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webxr

///|
/// XRWebGLRenderingContext typedef
pub type XRWebGLRenderingContext = JsValue

///|
/// XRSessionMode enum
pub(all) enum XRSessionMode {
  Inline
  ImmersiveVr
  ImmersiveAr
}

/// Convert to string value
pub fn XRSessionMode::to_string(self : XRSessionMode) -> String {
  match self {
    Inline => "inline"
    ImmersiveVr => "immersive-vr"
    ImmersiveAr => "immersive-ar"
  }
}

/// Parse from string value
pub fn XRSessionMode::from_string(s : String) -> XRSessionMode? {
  match s {
    "inline" => Some(Inline)
    "immersive-vr" => Some(ImmersiveVr)
    "immersive-ar" => Some(ImmersiveAr)
    _ => None
  }
}

///|
/// XRVisibilityState enum
pub(all) enum XRVisibilityState {
  Visible
  VisibleBlurred
  Hidden
}

/// Convert to string value
pub fn XRVisibilityState::to_string(self : XRVisibilityState) -> String {
  match self {
    Visible => "visible"
    VisibleBlurred => "visible-blurred"
    Hidden => "hidden"
  }
}

/// Parse from string value
pub fn XRVisibilityState::from_string(s : String) -> XRVisibilityState? {
  match s {
    "visible" => Some(Visible)
    "visible-blurred" => Some(VisibleBlurred)
    "hidden" => Some(Hidden)
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
}

/// Convert to string value
pub fn XRReferenceSpaceType::to_string(self : XRReferenceSpaceType) -> String {
  match self {
    Viewer => "viewer"
    Local => "local"
    LocalFloor => "local-floor"
    BoundedFloor => "bounded-floor"
    Unbounded => "unbounded"
  }
}

/// Parse from string value
pub fn XRReferenceSpaceType::from_string(s : String) -> XRReferenceSpaceType? {
  match s {
    "viewer" => Some(Viewer)
    "local" => Some(Local)
    "local-floor" => Some(LocalFloor)
    "bounded-floor" => Some(BoundedFloor)
    "unbounded" => Some(Unbounded)
    _ => None
  }
}

///|
/// XREye enum
pub(all) enum XREye {
  None
  Left
  Right
}

/// Convert to string value
pub fn XREye::to_string(self : XREye) -> String {
  match self {
    None => "none"
    Left => "left"
    Right => "right"
  }
}

/// Parse from string value
pub fn XREye::from_string(s : String) -> XREye? {
  match s {
    "none" => Some(None)
    "left" => Some(Left)
    "right" => Some(Right)
    _ => None
  }
}

///|
/// XRHandedness enum
pub(all) enum XRHandedness {
  None
  Left
  Right
}

/// Convert to string value
pub fn XRHandedness::to_string(self : XRHandedness) -> String {
  match self {
    None => "none"
    Left => "left"
    Right => "right"
  }
}

/// Parse from string value
pub fn XRHandedness::from_string(s : String) -> XRHandedness? {
  match s {
    "none" => Some(None)
    "left" => Some(Left)
    "right" => Some(Right)
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
}

/// Convert to string value
pub fn XRTargetRayMode::to_string(self : XRTargetRayMode) -> String {
  match self {
    Gaze => "gaze"
    TrackedPointer => "tracked-pointer"
    Screen => "screen"
    TransientPointer => "transient-pointer"
  }
}

/// Parse from string value
pub fn XRTargetRayMode::from_string(s : String) -> XRTargetRayMode? {
  match s {
    "gaze" => Some(Gaze)
    "tracked-pointer" => Some(TrackedPointer)
    "screen" => Some(Screen)
    "transient-pointer" => Some(TransientPointer)
    _ => None
  }
}

/// XRFrameRequestCallback callback interface
pub type XRFrameRequestCallback

///|
/// XRRenderStateInit dictionary
pub struct XRRenderStateInit {
  depthNear : Double?
  depthFar : Double?
  passthroughFullyObscured : Bool?
  inlineVerticalFieldOfView : Double?
  baseLayer : XRWebGLLayer??
  layers : JsValue?
}

/// Create a new XRRenderStateInit with default values
pub fn XRRenderStateInit::default() -> XRRenderStateInit {
  XRRenderStateInit::{
    depthNear: None,
    depthFar: None,
    passthroughFullyObscured: None,
    inlineVerticalFieldOfView: None,
    baseLayer: None,
    layers: None,
  }
}

/// Convert to JsValue
pub extern "js" fn XRRenderStateInit::to_js(self : XRRenderStateInit) -> JsValue =
  #| (self) => ({
  #|   depthNear: self.depthNear,
  #|   depthFar: self.depthFar,
  #|   passthroughFullyObscured: self.passthroughFullyObscured,
  #|   inlineVerticalFieldOfView: self.inlineVerticalFieldOfView,
  #|   baseLayer: self.baseLayer,
  #|   layers: self.layers
  #| })

///|
/// XRWebGLLayerInit dictionary
pub struct XRWebGLLayerInit {
  antialias : Bool?
  depth : Bool?
  stencil : Bool?
  alpha : Bool?
  ignoreDepthValues : Bool?
  framebufferScaleFactor : Double?
}

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

/// Convert to JsValue
pub extern "js" fn XRWebGLLayerInit::to_js(self : XRWebGLLayerInit) -> JsValue =
  #| (self) => ({
  #|   antialias: self.antialias,
  #|   depth: self.depth,
  #|   stencil: self.stencil,
  #|   alpha: self.alpha,
  #|   ignoreDepthValues: self.ignoreDepthValues,
  #|   framebufferScaleFactor: self.framebufferScaleFactor
  #| })

///|
/// XRSessionEventInit dictionary
pub struct XRSessionEventInit {
  session : XRSession
}

/// Create a new XRSessionEventInit with default values
pub fn XRSessionEventInit::default() -> XRSessionEventInit {
  XRSessionEventInit::{
    session: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn XRSessionEventInit::to_js(self : XRSessionEventInit) -> JsValue =
  #| (self) => ({
  #|   session: self.session
  #| })

///|
/// XRInputSourceEventInit dictionary
pub struct XRInputSourceEventInit {
  frame : XRFrame
  inputSource : XRInputSource
}

/// Create a new XRInputSourceEventInit with default values
pub fn XRInputSourceEventInit::default() -> XRInputSourceEventInit {
  XRInputSourceEventInit::{
    frame: panic(),
    inputSource: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn XRInputSourceEventInit::to_js(self : XRInputSourceEventInit) -> JsValue =
  #| (self) => ({
  #|   frame: self.frame,
  #|   inputSource: self.inputSource
  #| })

///|
/// XRInputSourcesChangeEventInit dictionary
pub struct XRInputSourcesChangeEventInit {
  session : XRSession
  added : JsValue
  removed : JsValue
}

/// Create a new XRInputSourcesChangeEventInit with default values
pub fn XRInputSourcesChangeEventInit::default() -> XRInputSourcesChangeEventInit {
  XRInputSourcesChangeEventInit::{
    session: panic(),
    added: panic(),
    removed: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn XRInputSourcesChangeEventInit::to_js(self : XRInputSourcesChangeEventInit) -> JsValue =
  #| (self) => ({
  #|   session: self.session,
  #|   added: self.added,
  #|   removed: self.removed
  #| })

///|
/// XRReferenceSpaceEventInit dictionary
pub struct XRReferenceSpaceEventInit {
  referenceSpace : XRReferenceSpace
  transform : XRRigidTransform??
}

/// Create a new XRReferenceSpaceEventInit with default values
pub fn XRReferenceSpaceEventInit::default() -> XRReferenceSpaceEventInit {
  XRReferenceSpaceEventInit::{
    referenceSpace: panic(),
    transform: None,
  }
}

/// Convert to JsValue
pub extern "js" fn XRReferenceSpaceEventInit::to_js(self : XRReferenceSpaceEventInit) -> JsValue =
  #| (self) => ({
  #|   referenceSpace: self.referenceSpace,
  #|   transform: self.transform
  #| })

///|
/// XRVisibilityMaskChangeEventInit dictionary
pub struct XRVisibilityMaskChangeEventInit {
  session : XRSession
  eye : XREye
  index : Int
  vertices : Float32Array
  indices : Uint32Array
}

/// Create a new XRVisibilityMaskChangeEventInit with default values
pub fn XRVisibilityMaskChangeEventInit::default() -> XRVisibilityMaskChangeEventInit {
  XRVisibilityMaskChangeEventInit::{
    session: panic(),
    eye: panic(),
    index: 0,
    vertices: panic(),
    indices: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn XRVisibilityMaskChangeEventInit::to_js(self : XRVisibilityMaskChangeEventInit) -> JsValue =
  #| (self) => ({
  #|   session: self.session,
  #|   eye: self.eye,
  #|   index: self.index,
  #|   vertices: self.vertices,
  #|   indices: self.indices
  #| })

///|
/// XRSessionSupportedPermissionDescriptor dictionary
pub struct XRSessionSupportedPermissionDescriptor {
  mode : XRSessionMode?
}

/// Create a new XRSessionSupportedPermissionDescriptor with default values
pub fn XRSessionSupportedPermissionDescriptor::default() -> XRSessionSupportedPermissionDescriptor {
  XRSessionSupportedPermissionDescriptor::{
    mode: None,
  }
}

/// Convert to JsValue
pub extern "js" fn XRSessionSupportedPermissionDescriptor::to_js(self : XRSessionSupportedPermissionDescriptor) -> JsValue =
  #| (self) => ({
  #|   mode: self.mode
  #| })

///|
/// XRPermissionDescriptor dictionary
pub struct XRPermissionDescriptor {
  mode : XRSessionMode?
  requiredFeatures : JsValue?
  optionalFeatures : JsValue?
}

/// Create a new XRPermissionDescriptor with default values
pub fn XRPermissionDescriptor::default() -> XRPermissionDescriptor {
  XRPermissionDescriptor::{
    mode: None,
    requiredFeatures: None,
    optionalFeatures: None,
  }
}

/// Convert to JsValue
pub extern "js" fn XRPermissionDescriptor::to_js(self : XRPermissionDescriptor) -> JsValue =
  #| (self) => ({
  #|   mode: self.mode,
  #|   requiredFeatures: self.requiredFeatures,
  #|   optionalFeatures: self.optionalFeatures
  #| })

///|
/// XRSystem interface
pub type XRSystem

pub extern "js" fn XRSystem::to_js_value(self : XRSystem) -> JsValue =
  #| (self) => self

pub extern "js" fn XRSystem::is_session_supported(self : XRSystem, mode : XRSessionMode) -> JsValue =
  #| (self, mode) => self.isSessionSupported(['inline', 'immersive-vr', 'immersive-ar'][mode])

pub extern "js" fn XRSystem::request_session(self : XRSystem, mode : XRSessionMode, options : XRSessionInit) -> JsValue =
  #| (self, mode, options) => self.requestSession(['inline', 'immersive-vr', 'immersive-ar'][mode], options)

pub extern "js" fn XRSystem::get_ondevicechange(self : XRSystem) -> EventHandler =
  #| (self) => self.ondevicechange

pub extern "js" fn XRSystem::set_ondevicechange(self : XRSystem, value : EventHandler) -> Unit =
  #| (self, value) => { self.ondevicechange = value }

///|
/// XRSession interface
pub type XRSession

pub extern "js" fn XRSession::to_js_value(self : XRSession) -> JsValue =
  #| (self) => self

pub extern "js" fn XRSession::get_visibility_state(self : XRSession) -> XRVisibilityState =
  #| (self) => self.visibilityState

pub extern "js" fn XRSession::get_frame_rate(self : XRSession) -> Double? =
  #| (self) => self.frameRate

pub extern "js" fn XRSession::get_supported_frame_rates(self : XRSession) -> Float32Array? =
  #| (self) => self.supportedFrameRates

pub extern "js" fn XRSession::get_render_state(self : XRSession) -> XRRenderState =
  #| (self) => self.renderState

pub extern "js" fn XRSession::get_input_sources(self : XRSession) -> XRInputSourceArray =
  #| (self) => self.inputSources

pub extern "js" fn XRSession::get_tracked_sources(self : XRSession) -> XRInputSourceArray =
  #| (self) => self.trackedSources

pub extern "js" fn XRSession::get_enabled_features(self : XRSession) -> JsValue =
  #| (self) => self.enabledFeatures

pub extern "js" fn XRSession::get_is_system_keyboard_supported(self : XRSession) -> Bool =
  #| (self) => self.isSystemKeyboardSupported

pub extern "js" fn XRSession::update_render_state(self : XRSession, state : XRRenderStateInit) -> Unit =
  #| (self, state) => self.updateRenderState(state)

pub extern "js" fn XRSession::update_target_frame_rate(self : XRSession, rate : Double) -> JsValue =
  #| (self, rate) => self.updateTargetFrameRate(rate)

pub extern "js" fn XRSession::request_reference_space(self : XRSession, type_ : XRReferenceSpaceType) -> JsValue =
  #| (self, type_) => self.requestReferenceSpace(['viewer', 'local', 'local-floor', 'bounded-floor', 'unbounded'][type_])

pub extern "js" fn XRSession::request_animation_frame(self : XRSession, callback : XRFrameRequestCallback) -> Int =
  #| (self, callback) => self.requestAnimationFrame(callback)

pub extern "js" fn XRSession::cancel_animation_frame(self : XRSession, handle : Int) -> Unit =
  #| (self, handle) => self.cancelAnimationFrame(handle)

pub extern "js" fn XRSession::end(self : XRSession) -> JsValue =
  #| (self) => self.end()

pub extern "js" fn XRSession::get_onend(self : XRSession) -> EventHandler =
  #| (self) => self.onend

pub extern "js" fn XRSession::set_onend(self : XRSession, value : EventHandler) -> Unit =
  #| (self, value) => { self.onend = value }

pub extern "js" fn XRSession::get_oninputsourceschange(self : XRSession) -> EventHandler =
  #| (self) => self.oninputsourceschange

pub extern "js" fn XRSession::set_oninputsourceschange(self : XRSession, value : EventHandler) -> Unit =
  #| (self, value) => { self.oninputsourceschange = value }

pub extern "js" fn XRSession::get_onselect(self : XRSession) -> EventHandler =
  #| (self) => self.onselect

pub extern "js" fn XRSession::set_onselect(self : XRSession, value : EventHandler) -> Unit =
  #| (self, value) => { self.onselect = value }

pub extern "js" fn XRSession::get_onselectstart(self : XRSession) -> EventHandler =
  #| (self) => self.onselectstart

pub extern "js" fn XRSession::set_onselectstart(self : XRSession, value : EventHandler) -> Unit =
  #| (self, value) => { self.onselectstart = value }

pub extern "js" fn XRSession::get_onselectend(self : XRSession) -> EventHandler =
  #| (self) => self.onselectend

pub extern "js" fn XRSession::set_onselectend(self : XRSession, value : EventHandler) -> Unit =
  #| (self, value) => { self.onselectend = value }

pub extern "js" fn XRSession::get_onsqueeze(self : XRSession) -> EventHandler =
  #| (self) => self.onsqueeze

pub extern "js" fn XRSession::set_onsqueeze(self : XRSession, value : EventHandler) -> Unit =
  #| (self, value) => { self.onsqueeze = value }

pub extern "js" fn XRSession::get_onsqueezestart(self : XRSession) -> EventHandler =
  #| (self) => self.onsqueezestart

pub extern "js" fn XRSession::set_onsqueezestart(self : XRSession, value : EventHandler) -> Unit =
  #| (self, value) => { self.onsqueezestart = value }

pub extern "js" fn XRSession::get_onsqueezeend(self : XRSession) -> EventHandler =
  #| (self) => self.onsqueezeend

pub extern "js" fn XRSession::set_onsqueezeend(self : XRSession, value : EventHandler) -> Unit =
  #| (self, value) => { self.onsqueezeend = value }

pub extern "js" fn XRSession::get_onvisibilitychange(self : XRSession) -> EventHandler =
  #| (self) => self.onvisibilitychange

pub extern "js" fn XRSession::set_onvisibilitychange(self : XRSession, value : EventHandler) -> Unit =
  #| (self, value) => { self.onvisibilitychange = value }

pub extern "js" fn XRSession::get_onframeratechange(self : XRSession) -> EventHandler =
  #| (self) => self.onframeratechange

pub extern "js" fn XRSession::set_onframeratechange(self : XRSession, value : EventHandler) -> Unit =
  #| (self, value) => { self.onframeratechange = value }

pub extern "js" fn XRSession::get_persistent_anchors(self : XRSession) -> JsValue =
  #| (self) => self.persistentAnchors

pub extern "js" fn XRSession::restore_persistent_anchor(self : XRSession, uuid : String) -> JsValue =
  #| (self, uuid) => self.restorePersistentAnchor(uuid)

pub extern "js" fn XRSession::delete_persistent_anchor(self : XRSession, uuid : String) -> JsValue =
  #| (self, uuid) => self.deletePersistentAnchor(uuid)

pub extern "js" fn XRSession::get_environment_blend_mode(self : XRSession) -> XREnvironmentBlendMode =
  #| (self) => self.environmentBlendMode

pub extern "js" fn XRSession::get_interaction_mode(self : XRSession) -> XRInteractionMode =
  #| (self) => self.interactionMode

pub extern "js" fn XRSession::get_depth_usage(self : XRSession) -> XRDepthUsage =
  #| (self) => self.depthUsage

pub extern "js" fn XRSession::get_depth_data_format(self : XRSession) -> XRDepthDataFormat =
  #| (self) => self.depthDataFormat

pub extern "js" fn XRSession::get_depth_type(self : XRSession) -> XRDepthType? =
  #| (self) => self.depthType

pub extern "js" fn XRSession::get_depth_active(self : XRSession) -> Bool? =
  #| (self) => self.depthActive

pub extern "js" fn XRSession::pause_depth_sensing(self : XRSession) -> Unit =
  #| (self) => self.pauseDepthSensing()

pub extern "js" fn XRSession::resume_depth_sensing(self : XRSession) -> Unit =
  #| (self) => self.resumeDepthSensing()

pub extern "js" fn XRSession::get_dom_overlay_state(self : XRSession) -> XRDOMOverlayState? =
  #| (self) => self.domOverlayState

pub extern "js" fn XRSession::request_hit_test_source(self : XRSession, options : XRHitTestOptionsInit) -> JsValue =
  #| (self, options) => self.requestHitTestSource(options)

pub extern "js" fn XRSession::request_hit_test_source_for_transient_input(self : XRSession, options : XRTransientInputHitTestOptionsInit) -> JsValue =
  #| (self, options) => self.requestHitTestSourceForTransientInput(options)

pub extern "js" fn XRSession::request_light_probe(self : XRSession, options : XRLightProbeInit) -> JsValue =
  #| (self, options) => self.requestLightProbe(options)

pub extern "js" fn XRSession::get_preferred_reflection_format(self : XRSession) -> XRReflectionFormat =
  #| (self) => self.preferredReflectionFormat

pub extern "js" fn XRSession::initiate_room_capture(self : XRSession) -> JsValue =
  #| (self) => self.initiateRoomCapture()

///|
/// XRRenderState interface
pub type XRRenderState

pub extern "js" fn XRRenderState::to_js_value(self : XRRenderState) -> JsValue =
  #| (self) => self

pub extern "js" fn XRRenderState::get_depth_near(self : XRRenderState) -> Double =
  #| (self) => self.depthNear

pub extern "js" fn XRRenderState::get_depth_far(self : XRRenderState) -> Double =
  #| (self) => self.depthFar

pub extern "js" fn XRRenderState::get_passthrough_fully_obscured(self : XRRenderState) -> Bool? =
  #| (self) => self.passthroughFullyObscured

pub extern "js" fn XRRenderState::get_inline_vertical_field_of_view(self : XRRenderState) -> Double? =
  #| (self) => self.inlineVerticalFieldOfView

pub extern "js" fn XRRenderState::get_base_layer(self : XRRenderState) -> XRWebGLLayer? =
  #| (self) => self.baseLayer

pub extern "js" fn XRRenderState::get_layers(self : XRRenderState) -> JsValue =
  #| (self) => self.layers

///|
/// XRFrame interface
pub type XRFrame

pub extern "js" fn XRFrame::to_js_value(self : XRFrame) -> JsValue =
  #| (self) => self

pub extern "js" fn XRFrame::get_session(self : XRFrame) -> XRSession =
  #| (self) => self.session

pub extern "js" fn XRFrame::get_predicted_display_time(self : XRFrame) -> DOMHighResTimeStamp =
  #| (self) => self.predictedDisplayTime

pub extern "js" fn XRFrame::get_viewer_pose(self : XRFrame, reference_space : XRReferenceSpace) -> XRViewerPose? =
  #| (self, reference_space) => self.getViewerPose(reference_space)

pub extern "js" fn XRFrame::get_pose(self : XRFrame, space : XRSpace, base_space : XRSpace) -> XRPose? =
  #| (self, space, base_space) => self.getPose(space, base_space)

pub extern "js" fn XRFrame::create_anchor(self : XRFrame, pose : XRRigidTransform, space : XRSpace) -> JsValue =
  #| (self, pose, space) => self.createAnchor(pose, space)

pub extern "js" fn XRFrame::get_tracked_anchors(self : XRFrame) -> XRAnchorSet =
  #| (self) => self.trackedAnchors

pub extern "js" fn XRFrame::get_body(self : XRFrame) -> XRBody? =
  #| (self) => self.body

pub extern "js" fn XRFrame::get_detected_meshes(self : XRFrame) -> XRMeshSet =
  #| (self) => self.detectedMeshes

pub extern "js" fn XRFrame::get_depth_information(self : XRFrame, view : XRView) -> XRCPUDepthInformation? =
  #| (self, view) => self.getDepthInformation(view)

pub extern "js" fn XRFrame::get_joint_pose(self : XRFrame, joint : XRJointSpace, base_space : XRSpace) -> XRJointPose? =
  #| (self, joint, base_space) => self.getJointPose(joint, base_space)

pub extern "js" fn XRFrame::fill_joint_radii(self : XRFrame, joint_spaces : JsValue, radii : Float32Array) -> Bool =
  #| (self, joint_spaces, radii) => self.fillJointRadii(joint_spaces, radii)

pub extern "js" fn XRFrame::fill_poses(self : XRFrame, spaces : JsValue, base_space : XRSpace, transforms : Float32Array) -> Bool =
  #| (self, spaces, base_space, transforms) => self.fillPoses(spaces, base_space, transforms)

pub extern "js" fn XRFrame::get_hit_test_results(self : XRFrame, hit_test_source : XRHitTestSource) -> JsValue =
  #| (self, hit_test_source) => self.getHitTestResults(hit_test_source)

pub extern "js" fn XRFrame::get_hit_test_results_for_transient_input(self : XRFrame, hit_test_source : XRTransientInputHitTestSource) -> JsValue =
  #| (self, hit_test_source) => self.getHitTestResultsForTransientInput(hit_test_source)

pub extern "js" fn XRFrame::get_light_estimate(self : XRFrame, light_probe : XRLightProbe) -> XRLightEstimate? =
  #| (self, light_probe) => self.getLightEstimate(light_probe)

pub extern "js" fn XRFrame::get_detected_planes(self : XRFrame) -> XRPlaneSet =
  #| (self) => self.detectedPlanes

///|
/// XRSpace interface
pub type XRSpace

pub extern "js" fn XRSpace::to_js_value(self : XRSpace) -> JsValue =
  #| (self) => self

///|
/// XRReferenceSpace interface
pub type XRReferenceSpace

pub extern "js" fn XRReferenceSpace::to_js_value(self : XRReferenceSpace) -> JsValue =
  #| (self) => self

pub extern "js" fn XRReferenceSpace::get_offset_reference_space(self : XRReferenceSpace, origin_offset : XRRigidTransform) -> XRReferenceSpace =
  #| (self, origin_offset) => self.getOffsetReferenceSpace(origin_offset)

pub extern "js" fn XRReferenceSpace::get_onreset(self : XRReferenceSpace) -> EventHandler =
  #| (self) => self.onreset

pub extern "js" fn XRReferenceSpace::set_onreset(self : XRReferenceSpace, value : EventHandler) -> Unit =
  #| (self, value) => { self.onreset = value }

///|
/// XRBoundedReferenceSpace interface
pub type XRBoundedReferenceSpace

pub extern "js" fn XRBoundedReferenceSpace::to_js_value(self : XRBoundedReferenceSpace) -> JsValue =
  #| (self) => self

pub extern "js" fn XRBoundedReferenceSpace::get_offset_reference_space(self : XRBoundedReferenceSpace, origin_offset : XRRigidTransform) -> XRReferenceSpace =
  #| (self, origin_offset) => self.getOffsetReferenceSpace(origin_offset)

pub extern "js" fn XRBoundedReferenceSpace::get_onreset(self : XRBoundedReferenceSpace) -> EventHandler =
  #| (self) => self.onreset

pub extern "js" fn XRBoundedReferenceSpace::set_onreset(self : XRBoundedReferenceSpace, value : EventHandler) -> Unit =
  #| (self, value) => { self.onreset = value }

pub extern "js" fn XRBoundedReferenceSpace::get_bounds_geometry(self : XRBoundedReferenceSpace) -> JsValue =
  #| (self) => self.boundsGeometry

///|
/// XRView interface
pub type XRView

pub extern "js" fn XRView::to_js_value(self : XRView) -> JsValue =
  #| (self) => self

pub extern "js" fn XRView::get_eye(self : XRView) -> XREye =
  #| (self) => self.eye

pub extern "js" fn XRView::get_index(self : XRView) -> Int =
  #| (self) => self.index

pub extern "js" fn XRView::get_recommended_viewport_scale(self : XRView) -> Double? =
  #| (self) => self.recommendedViewportScale

pub extern "js" fn XRView::request_viewport_scale(self : XRView, scale : Double?) -> Unit =
  #| (self, scale) => self.requestViewportScale(scale)

pub extern "js" fn XRView::get_camera(self : XRView) -> XRCamera? =
  #| (self) => self.camera

pub extern "js" fn XRView::get_is_first_person_observer(self : XRView) -> Bool =
  #| (self) => self.isFirstPersonObserver

pub extern "js" fn XRView::get_projection_matrix(self : XRView) -> Float32Array =
  #| (self) => self.projectionMatrix

pub extern "js" fn XRView::get_transform(self : XRView) -> XRRigidTransform =
  #| (self) => self.transform

///|
/// XRViewport interface
pub type XRViewport

pub extern "js" fn XRViewport::to_js_value(self : XRViewport) -> JsValue =
  #| (self) => self

pub extern "js" fn XRViewport::get_x(self : XRViewport) -> Int =
  #| (self) => self.x

pub extern "js" fn XRViewport::get_y(self : XRViewport) -> Int =
  #| (self) => self.y

pub extern "js" fn XRViewport::get_width(self : XRViewport) -> Int =
  #| (self) => self.width

pub extern "js" fn XRViewport::get_height(self : XRViewport) -> Int =
  #| (self) => self.height

///|
/// XRRigidTransform interface
pub type XRRigidTransform

pub extern "js" fn XRRigidTransform::to_js_value(self : XRRigidTransform) -> JsValue =
  #| (self) => self

pub extern "js" fn XRRigidTransform::new(position : DOMPointInit, orientation : DOMPointInit) -> XRRigidTransform =
  #| (position, orientation) => new XRRigidTransform(position, orientation)

pub extern "js" fn XRRigidTransform::get_position(self : XRRigidTransform) -> DOMPointReadOnly =
  #| (self) => self.position

pub extern "js" fn XRRigidTransform::get_orientation(self : XRRigidTransform) -> DOMPointReadOnly =
  #| (self) => self.orientation

pub extern "js" fn XRRigidTransform::get_matrix(self : XRRigidTransform) -> Float32Array =
  #| (self) => self.matrix

pub extern "js" fn XRRigidTransform::get_inverse(self : XRRigidTransform) -> XRRigidTransform =
  #| (self) => self.inverse

///|
/// XRPose interface
pub type XRPose

pub extern "js" fn XRPose::to_js_value(self : XRPose) -> JsValue =
  #| (self) => self

pub extern "js" fn XRPose::get_transform(self : XRPose) -> XRRigidTransform =
  #| (self) => self.transform

pub extern "js" fn XRPose::get_linear_velocity(self : XRPose) -> DOMPointReadOnly? =
  #| (self) => self.linearVelocity

pub extern "js" fn XRPose::get_angular_velocity(self : XRPose) -> DOMPointReadOnly? =
  #| (self) => self.angularVelocity

pub extern "js" fn XRPose::get_emulated_position(self : XRPose) -> Bool =
  #| (self) => self.emulatedPosition

///|
/// XRViewerPose interface
pub type XRViewerPose

pub extern "js" fn XRViewerPose::to_js_value(self : XRViewerPose) -> JsValue =
  #| (self) => self

pub extern "js" fn XRViewerPose::get_transform(self : XRViewerPose) -> XRRigidTransform =
  #| (self) => self.transform

pub extern "js" fn XRViewerPose::get_linear_velocity(self : XRViewerPose) -> DOMPointReadOnly? =
  #| (self) => self.linearVelocity

pub extern "js" fn XRViewerPose::get_angular_velocity(self : XRViewerPose) -> DOMPointReadOnly? =
  #| (self) => self.angularVelocity

pub extern "js" fn XRViewerPose::get_emulated_position(self : XRViewerPose) -> Bool =
  #| (self) => self.emulatedPosition

pub extern "js" fn XRViewerPose::get_views(self : XRViewerPose) -> JsValue =
  #| (self) => self.views

///|
/// XRInputSource interface
pub type XRInputSource

pub extern "js" fn XRInputSource::to_js_value(self : XRInputSource) -> JsValue =
  #| (self) => self

pub extern "js" fn XRInputSource::get_handedness(self : XRInputSource) -> XRHandedness =
  #| (self) => self.handedness

pub extern "js" fn XRInputSource::get_target_ray_mode(self : XRInputSource) -> XRTargetRayMode =
  #| (self) => self.targetRayMode

pub extern "js" fn XRInputSource::get_target_ray_space(self : XRInputSource) -> XRSpace =
  #| (self) => self.targetRaySpace

pub extern "js" fn XRInputSource::get_grip_space(self : XRInputSource) -> XRSpace? =
  #| (self) => self.gripSpace

pub extern "js" fn XRInputSource::get_profiles(self : XRInputSource) -> JsValue =
  #| (self) => self.profiles

pub extern "js" fn XRInputSource::get_skip_rendering(self : XRInputSource) -> Bool =
  #| (self) => self.skipRendering

pub extern "js" fn XRInputSource::get_gamepad(self : XRInputSource) -> Gamepad? =
  #| (self) => self.gamepad

pub extern "js" fn XRInputSource::get_hand(self : XRInputSource) -> XRHand? =
  #| (self) => self.hand

///|
/// XRInputSourceArray interface
pub type XRInputSourceArray

pub extern "js" fn XRInputSourceArray::to_js_value(self : XRInputSourceArray) -> JsValue =
  #| (self) => self

pub extern "js" fn XRInputSourceArray::_unknown_(self : XRInputSourceArray) -> Unit =
  #| (self) => self._unknown_()

pub extern "js" fn XRInputSourceArray::get_length(self : XRInputSourceArray) -> Int =
  #| (self) => self.length

pub extern "js" fn XRInputSourceArray::get(self : XRInputSourceArray, index : Int) -> XRInputSource =
  #| (self, index) => self[index]

///|
/// XRLayer interface
pub type XRLayer

pub extern "js" fn XRLayer::to_js_value(self : XRLayer) -> JsValue =
  #| (self) => self

///|
/// XRWebGLLayer interface
pub type XRWebGLLayer

pub extern "js" fn XRWebGLLayer::to_js_value(self : XRWebGLLayer) -> JsValue =
  #| (self) => self

pub extern "js" fn XRWebGLLayer::new(session : XRSession, context : XRWebGLRenderingContext, layer_init : XRWebGLLayerInit) -> XRWebGLLayer =
  #| (session, context, layer_init) => new XRWebGLLayer(session, context, layer_init)

pub extern "js" fn XRWebGLLayer::get_antialias(self : XRWebGLLayer) -> Bool =
  #| (self) => self.antialias

pub extern "js" fn XRWebGLLayer::get_ignore_depth_values(self : XRWebGLLayer) -> Bool =
  #| (self) => self.ignoreDepthValues

pub extern "js" fn XRWebGLLayer::get_fixed_foveation(self : XRWebGLLayer) -> Double? =
  #| (self) => self.fixedFoveation

pub extern "js" fn XRWebGLLayer::set_fixed_foveation(self : XRWebGLLayer, value : Double?) -> Unit =
  #| (self, value) => { self.fixedFoveation = value }

pub extern "js" fn XRWebGLLayer::get_framebuffer(self : XRWebGLLayer) -> WebGLFramebuffer? =
  #| (self) => self.framebuffer

pub extern "js" fn XRWebGLLayer::get_framebuffer_width(self : XRWebGLLayer) -> Int =
  #| (self) => self.framebufferWidth

pub extern "js" fn XRWebGLLayer::get_framebuffer_height(self : XRWebGLLayer) -> Int =
  #| (self) => self.framebufferHeight

pub extern "js" fn XRWebGLLayer::get_viewport(self : XRWebGLLayer, view : XRView) -> XRViewport? =
  #| (self, view) => self.getViewport(view)

pub extern "js" fn XRWebGLLayer::get_native_framebuffer_scale_factor(session : XRSession) -> Double =
  #| (session) => XRWebGLLayer.getNativeFramebufferScaleFactor(session)

///|
/// XRSessionEvent interface
pub type XRSessionEvent

pub extern "js" fn XRSessionEvent::to_js_value(self : XRSessionEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn XRSessionEvent::new(type_ : String, event_init_dict : XRSessionEventInit) -> XRSessionEvent =
  #| (type_, event_init_dict) => new XRSessionEvent(type_, event_init_dict)

pub extern "js" fn XRSessionEvent::get_session(self : XRSessionEvent) -> XRSession =
  #| (self) => self.session

///|
/// XRInputSourceEvent interface
pub type XRInputSourceEvent

pub extern "js" fn XRInputSourceEvent::to_js_value(self : XRInputSourceEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn XRInputSourceEvent::new(type_ : String, event_init_dict : XRInputSourceEventInit) -> XRInputSourceEvent =
  #| (type_, event_init_dict) => new XRInputSourceEvent(type_, event_init_dict)

pub extern "js" fn XRInputSourceEvent::get_frame(self : XRInputSourceEvent) -> XRFrame =
  #| (self) => self.frame

pub extern "js" fn XRInputSourceEvent::get_input_source(self : XRInputSourceEvent) -> XRInputSource =
  #| (self) => self.inputSource

///|
/// XRInputSourcesChangeEvent interface
pub type XRInputSourcesChangeEvent

pub extern "js" fn XRInputSourcesChangeEvent::to_js_value(self : XRInputSourcesChangeEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn XRInputSourcesChangeEvent::new(type_ : String, event_init_dict : XRInputSourcesChangeEventInit) -> XRInputSourcesChangeEvent =
  #| (type_, event_init_dict) => new XRInputSourcesChangeEvent(type_, event_init_dict)

pub extern "js" fn XRInputSourcesChangeEvent::get_session(self : XRInputSourcesChangeEvent) -> XRSession =
  #| (self) => self.session

pub extern "js" fn XRInputSourcesChangeEvent::get_added(self : XRInputSourcesChangeEvent) -> JsValue =
  #| (self) => self.added

pub extern "js" fn XRInputSourcesChangeEvent::get_removed(self : XRInputSourcesChangeEvent) -> JsValue =
  #| (self) => self.removed

///|
/// XRReferenceSpaceEvent interface
pub type XRReferenceSpaceEvent

pub extern "js" fn XRReferenceSpaceEvent::to_js_value(self : XRReferenceSpaceEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn XRReferenceSpaceEvent::new(type_ : String, event_init_dict : XRReferenceSpaceEventInit) -> XRReferenceSpaceEvent =
  #| (type_, event_init_dict) => new XRReferenceSpaceEvent(type_, event_init_dict)

pub extern "js" fn XRReferenceSpaceEvent::get_reference_space(self : XRReferenceSpaceEvent) -> XRReferenceSpace =
  #| (self) => self.referenceSpace

pub extern "js" fn XRReferenceSpaceEvent::get_transform(self : XRReferenceSpaceEvent) -> XRRigidTransform? =
  #| (self) => self.transform

///|
/// XRVisibilityMaskChangeEvent interface
pub type XRVisibilityMaskChangeEvent

pub extern "js" fn XRVisibilityMaskChangeEvent::to_js_value(self : XRVisibilityMaskChangeEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn XRVisibilityMaskChangeEvent::new(type_ : String, event_init_dict : XRVisibilityMaskChangeEventInit) -> XRVisibilityMaskChangeEvent =
  #| (type_, event_init_dict) => new XRVisibilityMaskChangeEvent(type_, event_init_dict)

pub extern "js" fn XRVisibilityMaskChangeEvent::get_session(self : XRVisibilityMaskChangeEvent) -> XRSession =
  #| (self) => self.session

pub extern "js" fn XRVisibilityMaskChangeEvent::get_eye(self : XRVisibilityMaskChangeEvent) -> XREye =
  #| (self) => self.eye

pub extern "js" fn XRVisibilityMaskChangeEvent::get_index(self : XRVisibilityMaskChangeEvent) -> Int =
  #| (self) => self.index

pub extern "js" fn XRVisibilityMaskChangeEvent::get_vertices(self : XRVisibilityMaskChangeEvent) -> Float32Array =
  #| (self) => self.vertices

pub extern "js" fn XRVisibilityMaskChangeEvent::get_indices(self : XRVisibilityMaskChangeEvent) -> Uint32Array =
  #| (self) => self.indices

///|
/// XRPermissionStatus interface
pub type XRPermissionStatus

pub extern "js" fn XRPermissionStatus::to_js_value(self : XRPermissionStatus) -> JsValue =
  #| (self) => self

pub extern "js" fn XRPermissionStatus::get_granted(self : XRPermissionStatus) -> JsValue =
  #| (self) => self.granted

pub extern "js" fn XRPermissionStatus::set_granted(self : XRPermissionStatus, value : JsValue) -> Unit =
  #| (self, value) => { self.granted = value }

