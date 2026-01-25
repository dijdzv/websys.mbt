// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webxrlayers

///|
/// XRLayerLayout enum
pub(all) enum XRLayerLayout {
  Default
  Mono
  Stereo
  StereoLeftRight
  StereoTopBottom
}

///|
/// Convert to string value
pub fn XRLayerLayout::to_string(self : XRLayerLayout) -> String {
  match self {
    XRLayerLayout::Default => "default"
    XRLayerLayout::Mono => "mono"
    XRLayerLayout::Stereo => "stereo"
    XRLayerLayout::StereoLeftRight => "stereo-left-right"
    XRLayerLayout::StereoTopBottom => "stereo-top-bottom"
  }
}

///|
/// Parse from string value
pub fn XRLayerLayout::from_string(s : String) -> XRLayerLayout? {
  match s {
    "default" => Some(XRLayerLayout::Default)
    "mono" => Some(XRLayerLayout::Mono)
    "stereo" => Some(XRLayerLayout::Stereo)
    "stereo-left-right" => Some(XRLayerLayout::StereoLeftRight)
    "stereo-top-bottom" => Some(XRLayerLayout::StereoTopBottom)
    _ => None
  }
}

///|
/// XRLayerQuality enum
pub(all) enum XRLayerQuality {
  Default
  TextOptimized
  GraphicsOptimized
}

///|
/// Convert to string value
pub fn XRLayerQuality::to_string(self : XRLayerQuality) -> String {
  match self {
    XRLayerQuality::Default => "default"
    XRLayerQuality::TextOptimized => "text-optimized"
    XRLayerQuality::GraphicsOptimized => "graphics-optimized"
  }
}

///|
/// Parse from string value
pub fn XRLayerQuality::from_string(s : String) -> XRLayerQuality? {
  match s {
    "default" => Some(XRLayerQuality::Default)
    "text-optimized" => Some(XRLayerQuality::TextOptimized)
    "graphics-optimized" => Some(XRLayerQuality::GraphicsOptimized)
    _ => None
  }
}

///|
/// XRTextureType enum
pub(all) enum XRTextureType {
  Texture
  TextureArray
}

///|
/// Convert to string value
pub fn XRTextureType::to_string(self : XRTextureType) -> String {
  match self {
    XRTextureType::Texture => "texture"
    XRTextureType::TextureArray => "texture-array"
  }
}

///|
/// Parse from string value
pub fn XRTextureType::from_string(s : String) -> XRTextureType? {
  match s {
    "texture" => Some(XRTextureType::Texture)
    "texture-array" => Some(XRTextureType::TextureArray)
    _ => None
  }
}

///|
/// XRProjectionLayerInit dictionary
pub struct XRProjectionLayerInit {
  textureType : XRTextureType?
  colorFormat : GLenum?
  depthFormat : GLenum?
  scaleFactor : Double?
  clearOnAccess : Bool?
}

///|
/// Create a new XRProjectionLayerInit with default values
pub fn XRProjectionLayerInit::default() -> XRProjectionLayerInit {
  XRProjectionLayerInit::{
    textureType: None,
    colorFormat: None,
    depthFormat: None,
    scaleFactor: None,
    clearOnAccess: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn XRProjectionLayerInit::to_js(
  self : XRProjectionLayerInit,
) -> JsValue =
  #| (self) => ({
  #|   textureType: ['texture', 'texture-array'][self.textureType],
  #|   colorFormat: self.colorFormat,
  #|   depthFormat: self.depthFormat,
  #|   scaleFactor: self.scaleFactor,
  #|   clearOnAccess: self.clearOnAccess
  #| })

///|
/// XRLayerInit dictionary
pub struct XRLayerInit {
  space : XRSpace
  textureType : XRTextureType?
  colorFormat : GLenum?
  depthFormat : Nullable[GLenum]
  mipLevels : Int?
  viewPixelWidth : Int
  viewPixelHeight : Int
  layout : XRLayerLayout?
  isStatic : Bool?
  clearOnAccess : Bool?
}

///|
/// Create a new XRLayerInit with default values
pub fn XRLayerInit::default() -> XRLayerInit {
  XRLayerInit::{
    space: panic(),
    textureType: None,
    colorFormat: None,
    depthFormat: Nullable::Undefined,
    mipLevels: None,
    viewPixelWidth: 0,
    viewPixelHeight: 0,
    layout: None,
    isStatic: None,
    clearOnAccess: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn XRLayerInit::to_js(self : XRLayerInit) -> JsValue =
  #| (self) => ({
  #|   space: self.space,
  #|   textureType: ['texture', 'texture-array'][self.textureType],
  #|   colorFormat: self.colorFormat,
  #|   depthFormat: ((() => { const v = self.depthFormat; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   mipLevels: self.mipLevels,
  #|   viewPixelWidth: self.viewPixelWidth,
  #|   viewPixelHeight: self.viewPixelHeight,
  #|   layout: ['default', 'mono', 'stereo', 'stereo-left-right', 'stereo-top-bottom'][self.layout],
  #|   isStatic: self.isStatic,
  #|   clearOnAccess: self.clearOnAccess
  #| })

///|
/// XRQuadLayerInit dictionary
pub struct XRQuadLayerInit {
  space : XRSpace
  textureType : XRTextureType?
  colorFormat : GLenum?
  depthFormat : Nullable[GLenum]
  mipLevels : Int?
  viewPixelWidth : Int
  viewPixelHeight : Int
  layout : XRLayerLayout?
  isStatic : Bool?
  clearOnAccess : Bool?
  transform : Nullable[XRRigidTransform]
  width : Double?
  height : Double?
}

///|
/// Create a new XRQuadLayerInit with default values
pub fn XRQuadLayerInit::default() -> XRQuadLayerInit {
  XRQuadLayerInit::{
    space: panic(),
    textureType: None,
    colorFormat: None,
    depthFormat: Nullable::Undefined,
    mipLevels: None,
    viewPixelWidth: 0,
    viewPixelHeight: 0,
    layout: None,
    isStatic: None,
    clearOnAccess: None,
    transform: Nullable::Undefined,
    width: None,
    height: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn XRQuadLayerInit::to_js(self : XRQuadLayerInit) -> JsValue =
  #| (self) => ({
  #|   space: self.space,
  #|   textureType: ['texture', 'texture-array'][self.textureType],
  #|   colorFormat: self.colorFormat,
  #|   depthFormat: ((() => { const v = self.depthFormat; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   mipLevels: self.mipLevels,
  #|   viewPixelWidth: self.viewPixelWidth,
  #|   viewPixelHeight: self.viewPixelHeight,
  #|   layout: ['default', 'mono', 'stereo', 'stereo-left-right', 'stereo-top-bottom'][self.layout],
  #|   isStatic: self.isStatic,
  #|   clearOnAccess: self.clearOnAccess,
  #|   transform: ((() => { const v = self.transform; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   width: self.width,
  #|   height: self.height
  #| })

///|
/// XRCylinderLayerInit dictionary
pub struct XRCylinderLayerInit {
  space : XRSpace
  textureType : XRTextureType?
  colorFormat : GLenum?
  depthFormat : Nullable[GLenum]
  mipLevels : Int?
  viewPixelWidth : Int
  viewPixelHeight : Int
  layout : XRLayerLayout?
  isStatic : Bool?
  clearOnAccess : Bool?
  transform : Nullable[XRRigidTransform]
  radius : Double?
  centralAngle : Double?
  aspectRatio : Double?
}

///|
/// Create a new XRCylinderLayerInit with default values
pub fn XRCylinderLayerInit::default() -> XRCylinderLayerInit {
  XRCylinderLayerInit::{
    space: panic(),
    textureType: None,
    colorFormat: None,
    depthFormat: Nullable::Undefined,
    mipLevels: None,
    viewPixelWidth: 0,
    viewPixelHeight: 0,
    layout: None,
    isStatic: None,
    clearOnAccess: None,
    transform: Nullable::Undefined,
    radius: None,
    centralAngle: None,
    aspectRatio: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn XRCylinderLayerInit::to_js(
  self : XRCylinderLayerInit,
) -> JsValue =
  #| (self) => ({
  #|   space: self.space,
  #|   textureType: ['texture', 'texture-array'][self.textureType],
  #|   colorFormat: self.colorFormat,
  #|   depthFormat: ((() => { const v = self.depthFormat; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   mipLevels: self.mipLevels,
  #|   viewPixelWidth: self.viewPixelWidth,
  #|   viewPixelHeight: self.viewPixelHeight,
  #|   layout: ['default', 'mono', 'stereo', 'stereo-left-right', 'stereo-top-bottom'][self.layout],
  #|   isStatic: self.isStatic,
  #|   clearOnAccess: self.clearOnAccess,
  #|   transform: ((() => { const v = self.transform; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   radius: self.radius,
  #|   centralAngle: self.centralAngle,
  #|   aspectRatio: self.aspectRatio
  #| })

///|
/// XREquirectLayerInit dictionary
pub struct XREquirectLayerInit {
  space : XRSpace
  textureType : XRTextureType?
  colorFormat : GLenum?
  depthFormat : Nullable[GLenum]
  mipLevels : Int?
  viewPixelWidth : Int
  viewPixelHeight : Int
  layout : XRLayerLayout?
  isStatic : Bool?
  clearOnAccess : Bool?
  transform : Nullable[XRRigidTransform]
  radius : Double?
  centralHorizontalAngle : Double?
  upperVerticalAngle : Double?
  lowerVerticalAngle : Double?
}

///|
/// Create a new XREquirectLayerInit with default values
pub fn XREquirectLayerInit::default() -> XREquirectLayerInit {
  XREquirectLayerInit::{
    space: panic(),
    textureType: None,
    colorFormat: None,
    depthFormat: Nullable::Undefined,
    mipLevels: None,
    viewPixelWidth: 0,
    viewPixelHeight: 0,
    layout: None,
    isStatic: None,
    clearOnAccess: None,
    transform: Nullable::Undefined,
    radius: None,
    centralHorizontalAngle: None,
    upperVerticalAngle: None,
    lowerVerticalAngle: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn XREquirectLayerInit::to_js(
  self : XREquirectLayerInit,
) -> JsValue =
  #| (self) => ({
  #|   space: self.space,
  #|   textureType: ['texture', 'texture-array'][self.textureType],
  #|   colorFormat: self.colorFormat,
  #|   depthFormat: ((() => { const v = self.depthFormat; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   mipLevels: self.mipLevels,
  #|   viewPixelWidth: self.viewPixelWidth,
  #|   viewPixelHeight: self.viewPixelHeight,
  #|   layout: ['default', 'mono', 'stereo', 'stereo-left-right', 'stereo-top-bottom'][self.layout],
  #|   isStatic: self.isStatic,
  #|   clearOnAccess: self.clearOnAccess,
  #|   transform: ((() => { const v = self.transform; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   radius: self.radius,
  #|   centralHorizontalAngle: self.centralHorizontalAngle,
  #|   upperVerticalAngle: self.upperVerticalAngle,
  #|   lowerVerticalAngle: self.lowerVerticalAngle
  #| })

///|
/// XRCubeLayerInit dictionary
pub struct XRCubeLayerInit {
  space : XRSpace
  textureType : XRTextureType?
  colorFormat : GLenum?
  depthFormat : Nullable[GLenum]
  mipLevels : Int?
  viewPixelWidth : Int
  viewPixelHeight : Int
  layout : XRLayerLayout?
  isStatic : Bool?
  clearOnAccess : Bool?
  orientation : Nullable[DOMPointReadOnly]
}

///|
/// Create a new XRCubeLayerInit with default values
pub fn XRCubeLayerInit::default() -> XRCubeLayerInit {
  XRCubeLayerInit::{
    space: panic(),
    textureType: None,
    colorFormat: None,
    depthFormat: Nullable::Undefined,
    mipLevels: None,
    viewPixelWidth: 0,
    viewPixelHeight: 0,
    layout: None,
    isStatic: None,
    clearOnAccess: None,
    orientation: Nullable::Undefined,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn XRCubeLayerInit::to_js(self : XRCubeLayerInit) -> JsValue =
  #| (self) => ({
  #|   space: self.space,
  #|   textureType: ['texture', 'texture-array'][self.textureType],
  #|   colorFormat: self.colorFormat,
  #|   depthFormat: ((() => { const v = self.depthFormat; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   mipLevels: self.mipLevels,
  #|   viewPixelWidth: self.viewPixelWidth,
  #|   viewPixelHeight: self.viewPixelHeight,
  #|   layout: ['default', 'mono', 'stereo', 'stereo-left-right', 'stereo-top-bottom'][self.layout],
  #|   isStatic: self.isStatic,
  #|   clearOnAccess: self.clearOnAccess,
  #|   orientation: ((() => { const v = self.orientation; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// XRMediaLayerInit dictionary
pub struct XRMediaLayerInit {
  space : XRSpace
  layout : XRLayerLayout?
  invertStereo : Bool?
}

///|
/// Create a new XRMediaLayerInit with default values
pub fn XRMediaLayerInit::default() -> XRMediaLayerInit {
  XRMediaLayerInit::{ space: panic(), layout: None, invertStereo: None }
}

///|
/// Convert to JsValue
pub extern "js" fn XRMediaLayerInit::to_js(self : XRMediaLayerInit) -> JsValue =
  #| (self) => ({
  #|   space: self.space,
  #|   layout: ['default', 'mono', 'stereo', 'stereo-left-right', 'stereo-top-bottom'][self.layout],
  #|   invertStereo: self.invertStereo
  #| })

///|
/// XRMediaQuadLayerInit dictionary
pub struct XRMediaQuadLayerInit {
  space : XRSpace
  layout : XRLayerLayout?
  invertStereo : Bool?
  transform : Nullable[XRRigidTransform]
  width : Nullable[Double]
  height : Nullable[Double]
}

///|
/// Create a new XRMediaQuadLayerInit with default values
pub fn XRMediaQuadLayerInit::default() -> XRMediaQuadLayerInit {
  XRMediaQuadLayerInit::{
    space: panic(),
    layout: None,
    invertStereo: None,
    transform: Nullable::Undefined,
    width: Nullable::Undefined,
    height: Nullable::Undefined,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn XRMediaQuadLayerInit::to_js(
  self : XRMediaQuadLayerInit,
) -> JsValue =
  #| (self) => ({
  #|   space: self.space,
  #|   layout: ['default', 'mono', 'stereo', 'stereo-left-right', 'stereo-top-bottom'][self.layout],
  #|   invertStereo: self.invertStereo,
  #|   transform: ((() => { const v = self.transform; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   width: ((() => { const v = self.width; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   height: ((() => { const v = self.height; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// XRMediaCylinderLayerInit dictionary
pub struct XRMediaCylinderLayerInit {
  space : XRSpace
  layout : XRLayerLayout?
  invertStereo : Bool?
  transform : Nullable[XRRigidTransform]
  radius : Double?
  centralAngle : Double?
  aspectRatio : Nullable[Double]
}

///|
/// Create a new XRMediaCylinderLayerInit with default values
pub fn XRMediaCylinderLayerInit::default() -> XRMediaCylinderLayerInit {
  XRMediaCylinderLayerInit::{
    space: panic(),
    layout: None,
    invertStereo: None,
    transform: Nullable::Undefined,
    radius: None,
    centralAngle: None,
    aspectRatio: Nullable::Undefined,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn XRMediaCylinderLayerInit::to_js(
  self : XRMediaCylinderLayerInit,
) -> JsValue =
  #| (self) => ({
  #|   space: self.space,
  #|   layout: ['default', 'mono', 'stereo', 'stereo-left-right', 'stereo-top-bottom'][self.layout],
  #|   invertStereo: self.invertStereo,
  #|   transform: ((() => { const v = self.transform; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   radius: self.radius,
  #|   centralAngle: self.centralAngle,
  #|   aspectRatio: ((() => { const v = self.aspectRatio; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// XRMediaEquirectLayerInit dictionary
pub struct XRMediaEquirectLayerInit {
  space : XRSpace
  layout : XRLayerLayout?
  invertStereo : Bool?
  transform : Nullable[XRRigidTransform]
  radius : Double?
  centralHorizontalAngle : Double?
  upperVerticalAngle : Double?
  lowerVerticalAngle : Double?
}

///|
/// Create a new XRMediaEquirectLayerInit with default values
pub fn XRMediaEquirectLayerInit::default() -> XRMediaEquirectLayerInit {
  XRMediaEquirectLayerInit::{
    space: panic(),
    layout: None,
    invertStereo: None,
    transform: Nullable::Undefined,
    radius: None,
    centralHorizontalAngle: None,
    upperVerticalAngle: None,
    lowerVerticalAngle: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn XRMediaEquirectLayerInit::to_js(
  self : XRMediaEquirectLayerInit,
) -> JsValue =
  #| (self) => ({
  #|   space: self.space,
  #|   layout: ['default', 'mono', 'stereo', 'stereo-left-right', 'stereo-top-bottom'][self.layout],
  #|   invertStereo: self.invertStereo,
  #|   transform: ((() => { const v = self.transform; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   radius: self.radius,
  #|   centralHorizontalAngle: self.centralHorizontalAngle,
  #|   upperVerticalAngle: self.upperVerticalAngle,
  #|   lowerVerticalAngle: self.lowerVerticalAngle
  #| })

///|
/// XRLayerEventInit dictionary
pub struct XRLayerEventInit {
  layer : XRLayer
}

///|
/// Create a new XRLayerEventInit with default values
pub fn XRLayerEventInit::default() -> XRLayerEventInit {
  XRLayerEventInit::{ layer: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn XRLayerEventInit::to_js(self : XRLayerEventInit) -> JsValue =
  #| (self) => ({
  #|   layer: self.layer
  #| })

///|
/// XRCompositionLayer interface
pub type XRCompositionLayer

///|
pub extern "js" fn XRCompositionLayer::to_js_value(
  self : XRCompositionLayer,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRCompositionLayer (unchecked)
pub extern "js" fn XRCompositionLayer::from_js_value(
  v : JsValue,
) -> XRCompositionLayer =
  #| (v) => v

///|
/// Safely cast JsValue to XRCompositionLayer (checked with instanceof)
pub extern "js" fn XRCompositionLayer::from_js_value_opt(
  v : JsValue,
) -> XRCompositionLayer? =
  #| (v) => (v instanceof XRCompositionLayer) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRCompositionLayer (checked with instanceof)
pub extern "js" fn JsValue::as_xr_composition_layer(
  self : JsValue,
) -> XRCompositionLayer? =
  #| (self) => (self instanceof XRCompositionLayer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRCompositionLayer (unchecked)
pub extern "js" fn JsValue::to_xr_composition_layer(
  self : JsValue,
) -> XRCompositionLayer =
  #| (self) => self

///|
pub extern "js" fn XRCompositionLayer::to_xr_layer(
  self : XRCompositionLayer,
) -> XRLayer =
  #| (self) => self

///|
pub extern "js" fn XRCompositionLayer::to_event_target(
  self : XRCompositionLayer,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn XRCompositionLayer::as_xr_projection_layer(
  self : XRCompositionLayer,
) -> XRProjectionLayer? =
  #| (self) => (self instanceof XRProjectionLayer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn XRCompositionLayer::as_xr_quad_layer(
  self : XRCompositionLayer,
) -> XRQuadLayer? =
  #| (self) => (self instanceof XRQuadLayer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn XRCompositionLayer::as_xr_cylinder_layer(
  self : XRCompositionLayer,
) -> XRCylinderLayer? =
  #| (self) => (self instanceof XRCylinderLayer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn XRCompositionLayer::as_xr_equirect_layer(
  self : XRCompositionLayer,
) -> XREquirectLayer? =
  #| (self) => (self instanceof XREquirectLayer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn XRCompositionLayer::as_xr_cube_layer(
  self : XRCompositionLayer,
) -> XRCubeLayer? =
  #| (self) => (self instanceof XRCubeLayer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn XRCompositionLayer::get_layout(
  self : XRCompositionLayer,
) -> XRLayerLayout =
  #| (self) => self.layout

///|
pub extern "js" fn XRCompositionLayer::get_blend_texture_source_alpha(
  self : XRCompositionLayer,
) -> Bool =
  #| (self) => self.blendTextureSourceAlpha

///|
pub extern "js" fn XRCompositionLayer::set_blend_texture_source_alpha(
  self : XRCompositionLayer,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.blendTextureSourceAlpha = value }

///|
pub extern "js" fn XRCompositionLayer::get_force_mono_presentation(
  self : XRCompositionLayer,
) -> Bool =
  #| (self) => self.forceMonoPresentation

///|
pub extern "js" fn XRCompositionLayer::set_force_mono_presentation(
  self : XRCompositionLayer,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.forceMonoPresentation = value }

///|
pub extern "js" fn XRCompositionLayer::get_opacity(
  self : XRCompositionLayer,
) -> Double =
  #| (self) => self.opacity

///|
pub extern "js" fn XRCompositionLayer::set_opacity(
  self : XRCompositionLayer,
  value : Double,
) -> Unit =
  #| (self, value) => { self.opacity = value }

///|
pub extern "js" fn XRCompositionLayer::get_mip_levels(
  self : XRCompositionLayer,
) -> Int =
  #| (self) => self.mipLevels

///|
pub extern "js" fn XRCompositionLayer::get_quality(
  self : XRCompositionLayer,
) -> XRLayerQuality =
  #| (self) => self.quality

///|
pub extern "js" fn XRCompositionLayer::set_quality(
  self : XRCompositionLayer,
  value : XRLayerQuality,
) -> Unit =
  #| (self, value) => { self.quality = value }

///|
pub extern "js" fn XRCompositionLayer::get_needs_redraw(
  self : XRCompositionLayer,
) -> Bool =
  #| (self) => self.needsRedraw

///|
pub extern "js" fn XRCompositionLayer::destroy(
  self : XRCompositionLayer,
) -> Unit =
  #| (self) => self.destroy()

///|
/// XRProjectionLayer interface
pub type XRProjectionLayer

///|
pub extern "js" fn XRProjectionLayer::to_js_value(
  self : XRProjectionLayer,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRProjectionLayer (unchecked)
pub extern "js" fn XRProjectionLayer::from_js_value(
  v : JsValue,
) -> XRProjectionLayer =
  #| (v) => v

///|
/// Safely cast JsValue to XRProjectionLayer (checked with instanceof)
pub extern "js" fn XRProjectionLayer::from_js_value_opt(
  v : JsValue,
) -> XRProjectionLayer? =
  #| (v) => (v instanceof XRProjectionLayer) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRProjectionLayer (checked with instanceof)
pub extern "js" fn JsValue::as_xr_projection_layer(
  self : JsValue,
) -> XRProjectionLayer? =
  #| (self) => (self instanceof XRProjectionLayer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRProjectionLayer (unchecked)
pub extern "js" fn JsValue::to_xr_projection_layer(
  self : JsValue,
) -> XRProjectionLayer =
  #| (self) => self

///|
pub extern "js" fn XRProjectionLayer::to_xr_composition_layer(
  self : XRProjectionLayer,
) -> XRCompositionLayer =
  #| (self) => self

///|
pub extern "js" fn XRProjectionLayer::to_xr_layer(
  self : XRProjectionLayer,
) -> XRLayer =
  #| (self) => self

///|
pub extern "js" fn XRProjectionLayer::to_event_target(
  self : XRProjectionLayer,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn XRProjectionLayer::get_texture_width(
  self : XRProjectionLayer,
) -> Int =
  #| (self) => self.textureWidth

///|
pub extern "js" fn XRProjectionLayer::get_texture_height(
  self : XRProjectionLayer,
) -> Int =
  #| (self) => self.textureHeight

///|
pub extern "js" fn XRProjectionLayer::get_texture_array_length(
  self : XRProjectionLayer,
) -> Int =
  #| (self) => self.textureArrayLength

///|
pub extern "js" fn XRProjectionLayer::get_ignore_depth_values(
  self : XRProjectionLayer,
) -> Bool =
  #| (self) => self.ignoreDepthValues

///|
pub extern "js" fn XRProjectionLayer::get_fixed_foveation(
  self : XRProjectionLayer,
) -> Double? =
  #| (self) => { const v = self.fixedFoveation; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn XRProjectionLayer::set_fixed_foveation(
  self : XRProjectionLayer,
  value : Double?,
) -> Unit =
  #| (self, value) => { self.fixedFoveation = value }

///|
pub extern "js" fn XRProjectionLayer::get_delta_pose(
  self : XRProjectionLayer,
) -> XRRigidTransform? =
  #| (self) => { const v = self.deltaPose; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn XRProjectionLayer::set_delta_pose(
  self : XRProjectionLayer,
  value : XRRigidTransform?,
) -> Unit =
  #| (self, value) => { self.deltaPose = value }

///|
/// XRQuadLayer interface
pub type XRQuadLayer

///|
pub extern "js" fn XRQuadLayer::to_js_value(self : XRQuadLayer) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRQuadLayer (unchecked)
pub extern "js" fn XRQuadLayer::from_js_value(v : JsValue) -> XRQuadLayer =
  #| (v) => v

///|
/// Safely cast JsValue to XRQuadLayer (checked with instanceof)
pub extern "js" fn XRQuadLayer::from_js_value_opt(v : JsValue) -> XRQuadLayer? =
  #| (v) => (v instanceof XRQuadLayer) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRQuadLayer (checked with instanceof)
pub extern "js" fn JsValue::as_xr_quad_layer(self : JsValue) -> XRQuadLayer? =
  #| (self) => (self instanceof XRQuadLayer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRQuadLayer (unchecked)
pub extern "js" fn JsValue::to_xr_quad_layer(self : JsValue) -> XRQuadLayer =
  #| (self) => self

///|
pub extern "js" fn XRQuadLayer::to_xr_composition_layer(
  self : XRQuadLayer,
) -> XRCompositionLayer =
  #| (self) => self

///|
pub extern "js" fn XRQuadLayer::to_xr_layer(self : XRQuadLayer) -> XRLayer =
  #| (self) => self

///|
pub extern "js" fn XRQuadLayer::to_event_target(
  self : XRQuadLayer,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn XRQuadLayer::get_space(self : XRQuadLayer) -> XRSpace =
  #| (self) => self.space

///|
pub extern "js" fn XRQuadLayer::set_space(
  self : XRQuadLayer,
  value : XRSpace,
) -> Unit =
  #| (self, value) => { self.space = value }

///|
pub extern "js" fn XRQuadLayer::get_transform(
  self : XRQuadLayer,
) -> XRRigidTransform =
  #| (self) => self.transform

///|
pub extern "js" fn XRQuadLayer::set_transform(
  self : XRQuadLayer,
  value : XRRigidTransform,
) -> Unit =
  #| (self, value) => { self.transform = value }

///|
pub extern "js" fn XRQuadLayer::get_width(self : XRQuadLayer) -> Double =
  #| (self) => self.width

///|
pub extern "js" fn XRQuadLayer::set_width(
  self : XRQuadLayer,
  value : Double,
) -> Unit =
  #| (self, value) => { self.width = value }

///|
pub extern "js" fn XRQuadLayer::get_height(self : XRQuadLayer) -> Double =
  #| (self) => self.height

///|
pub extern "js" fn XRQuadLayer::set_height(
  self : XRQuadLayer,
  value : Double,
) -> Unit =
  #| (self, value) => { self.height = value }

///|
pub extern "js" fn XRQuadLayer::get_onredraw(
  self : XRQuadLayer,
) -> EventHandler =
  #| (self) => self.onredraw

///|
pub extern "js" fn XRQuadLayer::set_onredraw(
  self : XRQuadLayer,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onredraw = value }

///|
/// XRCylinderLayer interface
pub type XRCylinderLayer

///|
pub extern "js" fn XRCylinderLayer::to_js_value(
  self : XRCylinderLayer,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRCylinderLayer (unchecked)
pub extern "js" fn XRCylinderLayer::from_js_value(
  v : JsValue,
) -> XRCylinderLayer =
  #| (v) => v

///|
/// Safely cast JsValue to XRCylinderLayer (checked with instanceof)
pub extern "js" fn XRCylinderLayer::from_js_value_opt(
  v : JsValue,
) -> XRCylinderLayer? =
  #| (v) => (v instanceof XRCylinderLayer) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRCylinderLayer (checked with instanceof)
pub extern "js" fn JsValue::as_xr_cylinder_layer(
  self : JsValue,
) -> XRCylinderLayer? =
  #| (self) => (self instanceof XRCylinderLayer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRCylinderLayer (unchecked)
pub extern "js" fn JsValue::to_xr_cylinder_layer(
  self : JsValue,
) -> XRCylinderLayer =
  #| (self) => self

///|
pub extern "js" fn XRCylinderLayer::to_xr_composition_layer(
  self : XRCylinderLayer,
) -> XRCompositionLayer =
  #| (self) => self

///|
pub extern "js" fn XRCylinderLayer::to_xr_layer(
  self : XRCylinderLayer,
) -> XRLayer =
  #| (self) => self

///|
pub extern "js" fn XRCylinderLayer::to_event_target(
  self : XRCylinderLayer,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn XRCylinderLayer::get_space(
  self : XRCylinderLayer,
) -> XRSpace =
  #| (self) => self.space

///|
pub extern "js" fn XRCylinderLayer::set_space(
  self : XRCylinderLayer,
  value : XRSpace,
) -> Unit =
  #| (self, value) => { self.space = value }

///|
pub extern "js" fn XRCylinderLayer::get_transform(
  self : XRCylinderLayer,
) -> XRRigidTransform =
  #| (self) => self.transform

///|
pub extern "js" fn XRCylinderLayer::set_transform(
  self : XRCylinderLayer,
  value : XRRigidTransform,
) -> Unit =
  #| (self, value) => { self.transform = value }

///|
pub extern "js" fn XRCylinderLayer::get_radius(
  self : XRCylinderLayer,
) -> Double =
  #| (self) => self.radius

///|
pub extern "js" fn XRCylinderLayer::set_radius(
  self : XRCylinderLayer,
  value : Double,
) -> Unit =
  #| (self, value) => { self.radius = value }

///|
pub extern "js" fn XRCylinderLayer::get_central_angle(
  self : XRCylinderLayer,
) -> Double =
  #| (self) => self.centralAngle

///|
pub extern "js" fn XRCylinderLayer::set_central_angle(
  self : XRCylinderLayer,
  value : Double,
) -> Unit =
  #| (self, value) => { self.centralAngle = value }

///|
pub extern "js" fn XRCylinderLayer::get_aspect_ratio(
  self : XRCylinderLayer,
) -> Double =
  #| (self) => self.aspectRatio

///|
pub extern "js" fn XRCylinderLayer::set_aspect_ratio(
  self : XRCylinderLayer,
  value : Double,
) -> Unit =
  #| (self, value) => { self.aspectRatio = value }

///|
pub extern "js" fn XRCylinderLayer::get_onredraw(
  self : XRCylinderLayer,
) -> EventHandler =
  #| (self) => self.onredraw

///|
pub extern "js" fn XRCylinderLayer::set_onredraw(
  self : XRCylinderLayer,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onredraw = value }

///|
/// XREquirectLayer interface
pub type XREquirectLayer

///|
pub extern "js" fn XREquirectLayer::to_js_value(
  self : XREquirectLayer,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XREquirectLayer (unchecked)
pub extern "js" fn XREquirectLayer::from_js_value(
  v : JsValue,
) -> XREquirectLayer =
  #| (v) => v

///|
/// Safely cast JsValue to XREquirectLayer (checked with instanceof)
pub extern "js" fn XREquirectLayer::from_js_value_opt(
  v : JsValue,
) -> XREquirectLayer? =
  #| (v) => (v instanceof XREquirectLayer) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XREquirectLayer (checked with instanceof)
pub extern "js" fn JsValue::as_xr_equirect_layer(
  self : JsValue,
) -> XREquirectLayer? =
  #| (self) => (self instanceof XREquirectLayer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XREquirectLayer (unchecked)
pub extern "js" fn JsValue::to_xr_equirect_layer(
  self : JsValue,
) -> XREquirectLayer =
  #| (self) => self

///|
pub extern "js" fn XREquirectLayer::to_xr_composition_layer(
  self : XREquirectLayer,
) -> XRCompositionLayer =
  #| (self) => self

///|
pub extern "js" fn XREquirectLayer::to_xr_layer(
  self : XREquirectLayer,
) -> XRLayer =
  #| (self) => self

///|
pub extern "js" fn XREquirectLayer::to_event_target(
  self : XREquirectLayer,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn XREquirectLayer::get_space(
  self : XREquirectLayer,
) -> XRSpace =
  #| (self) => self.space

///|
pub extern "js" fn XREquirectLayer::set_space(
  self : XREquirectLayer,
  value : XRSpace,
) -> Unit =
  #| (self, value) => { self.space = value }

///|
pub extern "js" fn XREquirectLayer::get_transform(
  self : XREquirectLayer,
) -> XRRigidTransform =
  #| (self) => self.transform

///|
pub extern "js" fn XREquirectLayer::set_transform(
  self : XREquirectLayer,
  value : XRRigidTransform,
) -> Unit =
  #| (self, value) => { self.transform = value }

///|
pub extern "js" fn XREquirectLayer::get_radius(
  self : XREquirectLayer,
) -> Double =
  #| (self) => self.radius

///|
pub extern "js" fn XREquirectLayer::set_radius(
  self : XREquirectLayer,
  value : Double,
) -> Unit =
  #| (self, value) => { self.radius = value }

///|
pub extern "js" fn XREquirectLayer::get_central_horizontal_angle(
  self : XREquirectLayer,
) -> Double =
  #| (self) => self.centralHorizontalAngle

///|
pub extern "js" fn XREquirectLayer::set_central_horizontal_angle(
  self : XREquirectLayer,
  value : Double,
) -> Unit =
  #| (self, value) => { self.centralHorizontalAngle = value }

///|
pub extern "js" fn XREquirectLayer::get_upper_vertical_angle(
  self : XREquirectLayer,
) -> Double =
  #| (self) => self.upperVerticalAngle

///|
pub extern "js" fn XREquirectLayer::set_upper_vertical_angle(
  self : XREquirectLayer,
  value : Double,
) -> Unit =
  #| (self, value) => { self.upperVerticalAngle = value }

///|
pub extern "js" fn XREquirectLayer::get_lower_vertical_angle(
  self : XREquirectLayer,
) -> Double =
  #| (self) => self.lowerVerticalAngle

///|
pub extern "js" fn XREquirectLayer::set_lower_vertical_angle(
  self : XREquirectLayer,
  value : Double,
) -> Unit =
  #| (self, value) => { self.lowerVerticalAngle = value }

///|
pub extern "js" fn XREquirectLayer::get_onredraw(
  self : XREquirectLayer,
) -> EventHandler =
  #| (self) => self.onredraw

///|
pub extern "js" fn XREquirectLayer::set_onredraw(
  self : XREquirectLayer,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onredraw = value }

///|
/// XRCubeLayer interface
pub type XRCubeLayer

///|
pub extern "js" fn XRCubeLayer::to_js_value(self : XRCubeLayer) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRCubeLayer (unchecked)
pub extern "js" fn XRCubeLayer::from_js_value(v : JsValue) -> XRCubeLayer =
  #| (v) => v

///|
/// Safely cast JsValue to XRCubeLayer (checked with instanceof)
pub extern "js" fn XRCubeLayer::from_js_value_opt(v : JsValue) -> XRCubeLayer? =
  #| (v) => (v instanceof XRCubeLayer) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRCubeLayer (checked with instanceof)
pub extern "js" fn JsValue::as_xr_cube_layer(self : JsValue) -> XRCubeLayer? =
  #| (self) => (self instanceof XRCubeLayer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRCubeLayer (unchecked)
pub extern "js" fn JsValue::to_xr_cube_layer(self : JsValue) -> XRCubeLayer =
  #| (self) => self

///|
pub extern "js" fn XRCubeLayer::to_xr_composition_layer(
  self : XRCubeLayer,
) -> XRCompositionLayer =
  #| (self) => self

///|
pub extern "js" fn XRCubeLayer::to_xr_layer(self : XRCubeLayer) -> XRLayer =
  #| (self) => self

///|
pub extern "js" fn XRCubeLayer::to_event_target(
  self : XRCubeLayer,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn XRCubeLayer::get_space(self : XRCubeLayer) -> XRSpace =
  #| (self) => self.space

///|
pub extern "js" fn XRCubeLayer::set_space(
  self : XRCubeLayer,
  value : XRSpace,
) -> Unit =
  #| (self, value) => { self.space = value }

///|
pub extern "js" fn XRCubeLayer::get_orientation(
  self : XRCubeLayer,
) -> DOMPointReadOnly =
  #| (self) => self.orientation

///|
pub extern "js" fn XRCubeLayer::set_orientation(
  self : XRCubeLayer,
  value : DOMPointReadOnly,
) -> Unit =
  #| (self, value) => { self.orientation = value }

///|
pub extern "js" fn XRCubeLayer::get_onredraw(
  self : XRCubeLayer,
) -> EventHandler =
  #| (self) => self.onredraw

///|
pub extern "js" fn XRCubeLayer::set_onredraw(
  self : XRCubeLayer,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onredraw = value }

///|
/// XRSubImage interface
pub type XRSubImage

///|
pub extern "js" fn XRSubImage::to_js_value(self : XRSubImage) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRSubImage (unchecked)
pub extern "js" fn XRSubImage::from_js_value(v : JsValue) -> XRSubImage =
  #| (v) => v

///|
/// Safely cast JsValue to XRSubImage (checked with instanceof)
pub extern "js" fn XRSubImage::from_js_value_opt(v : JsValue) -> XRSubImage? =
  #| (v) => (v instanceof XRSubImage) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRSubImage (checked with instanceof)
pub extern "js" fn JsValue::as_xr_sub_image(self : JsValue) -> XRSubImage? =
  #| (self) => (self instanceof XRSubImage) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRSubImage (unchecked)
pub extern "js" fn JsValue::to_xr_sub_image(self : JsValue) -> XRSubImage =
  #| (self) => self

///|
pub extern "js" fn XRSubImage::as_xr_web_gl_sub_image(
  self : XRSubImage,
) -> XRWebGLSubImage? =
  #| (self) => (self instanceof XRWebGLSubImage) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn XRSubImage::get_viewport(self : XRSubImage) -> XRViewport =
  #| (self) => self.viewport

///|
/// XRWebGLSubImage interface
pub type XRWebGLSubImage

///|
pub extern "js" fn XRWebGLSubImage::to_js_value(
  self : XRWebGLSubImage,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRWebGLSubImage (unchecked)
pub extern "js" fn XRWebGLSubImage::from_js_value(
  v : JsValue,
) -> XRWebGLSubImage =
  #| (v) => v

///|
/// Safely cast JsValue to XRWebGLSubImage (checked with instanceof)
pub extern "js" fn XRWebGLSubImage::from_js_value_opt(
  v : JsValue,
) -> XRWebGLSubImage? =
  #| (v) => (v instanceof XRWebGLSubImage) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRWebGLSubImage (checked with instanceof)
pub extern "js" fn JsValue::as_xr_web_gl_sub_image(
  self : JsValue,
) -> XRWebGLSubImage? =
  #| (self) => (self instanceof XRWebGLSubImage) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRWebGLSubImage (unchecked)
pub extern "js" fn JsValue::to_xr_web_gl_sub_image(
  self : JsValue,
) -> XRWebGLSubImage =
  #| (self) => self

///|
pub extern "js" fn XRWebGLSubImage::to_xr_sub_image(
  self : XRWebGLSubImage,
) -> XRSubImage =
  #| (self) => self

///|
pub extern "js" fn XRWebGLSubImage::get_color_texture(
  self : XRWebGLSubImage,
) -> WebGLTexture =
  #| (self) => self.colorTexture

///|
pub extern "js" fn XRWebGLSubImage::get_depth_stencil_texture(
  self : XRWebGLSubImage,
) -> WebGLTexture? =
  #| (self) => { const v = self.depthStencilTexture; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn XRWebGLSubImage::get_motion_vector_texture(
  self : XRWebGLSubImage,
) -> WebGLTexture? =
  #| (self) => { const v = self.motionVectorTexture; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn XRWebGLSubImage::get_image_index(
  self : XRWebGLSubImage,
) -> Int? =
  #| (self) => { const v = self.imageIndex; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn XRWebGLSubImage::get_color_texture_width(
  self : XRWebGLSubImage,
) -> Int =
  #| (self) => self.colorTextureWidth

///|
pub extern "js" fn XRWebGLSubImage::get_color_texture_height(
  self : XRWebGLSubImage,
) -> Int =
  #| (self) => self.colorTextureHeight

///|
pub extern "js" fn XRWebGLSubImage::get_depth_stencil_texture_width(
  self : XRWebGLSubImage,
) -> Int? =
  #| (self) => { const v = self.depthStencilTextureWidth; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn XRWebGLSubImage::get_depth_stencil_texture_height(
  self : XRWebGLSubImage,
) -> Int? =
  #| (self) => { const v = self.depthStencilTextureHeight; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn XRWebGLSubImage::get_motion_vector_texture_width(
  self : XRWebGLSubImage,
) -> Int? =
  #| (self) => { const v = self.motionVectorTextureWidth; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn XRWebGLSubImage::get_motion_vector_texture_height(
  self : XRWebGLSubImage,
) -> Int? =
  #| (self) => { const v = self.motionVectorTextureHeight; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
/// XRWebGLBinding interface
pub type XRWebGLBinding

///|
pub extern "js" fn XRWebGLBinding::to_js_value(
  self : XRWebGLBinding,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRWebGLBinding (unchecked)
pub extern "js" fn XRWebGLBinding::from_js_value(v : JsValue) -> XRWebGLBinding =
  #| (v) => v

///|
/// Safely cast JsValue to XRWebGLBinding (checked with instanceof)
pub extern "js" fn XRWebGLBinding::from_js_value_opt(
  v : JsValue,
) -> XRWebGLBinding? =
  #| (v) => (v instanceof XRWebGLBinding) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRWebGLBinding (checked with instanceof)
pub extern "js" fn JsValue::as_xr_web_gl_binding(
  self : JsValue,
) -> XRWebGLBinding? =
  #| (self) => (self instanceof XRWebGLBinding) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRWebGLBinding (unchecked)
pub extern "js" fn JsValue::to_xr_web_gl_binding(
  self : JsValue,
) -> XRWebGLBinding =
  #| (self) => self

///|
pub extern "js" fn XRWebGLBinding::new(
  session : XRSession,
  context : XRWebGLRenderingContext,
) -> XRWebGLBinding =
  #| (session, context) => new XRWebGLBinding(session, context)

///|
pub extern "js" fn XRWebGLBinding::get_native_projection_scale_factor(
  self : XRWebGLBinding,
) -> Double =
  #| (self) => self.nativeProjectionScaleFactor

///|
pub extern "js" fn XRWebGLBinding::get_uses_depth_values(
  self : XRWebGLBinding,
) -> Bool =
  #| (self) => self.usesDepthValues

///|
pub extern "js" fn XRWebGLBinding::create_projection_layer(
  self : XRWebGLBinding,
) -> XRProjectionLayer =
  #| (self) => self.createProjectionLayer()

///|
pub extern "js" fn XRWebGLBinding::create_projection_layer_with_init(
  self : XRWebGLBinding,
  init_ : XRProjectionLayerInit,
) -> XRProjectionLayer =
  #| (self, init_) => self.createProjectionLayer(init_)

///|
pub extern "js" fn XRWebGLBinding::create_quad_layer(
  self : XRWebGLBinding,
) -> XRQuadLayer =
  #| (self) => self.createQuadLayer()

///|
pub extern "js" fn XRWebGLBinding::create_quad_layer_with_init(
  self : XRWebGLBinding,
  init_ : XRQuadLayerInit,
) -> XRQuadLayer =
  #| (self, init_) => self.createQuadLayer(init_)

///|
pub extern "js" fn XRWebGLBinding::create_cylinder_layer(
  self : XRWebGLBinding,
) -> XRCylinderLayer =
  #| (self) => self.createCylinderLayer()

///|
pub extern "js" fn XRWebGLBinding::create_cylinder_layer_with_init(
  self : XRWebGLBinding,
  init_ : XRCylinderLayerInit,
) -> XRCylinderLayer =
  #| (self, init_) => self.createCylinderLayer(init_)

///|
pub extern "js" fn XRWebGLBinding::create_equirect_layer(
  self : XRWebGLBinding,
) -> XREquirectLayer =
  #| (self) => self.createEquirectLayer()

///|
pub extern "js" fn XRWebGLBinding::create_equirect_layer_with_init(
  self : XRWebGLBinding,
  init_ : XREquirectLayerInit,
) -> XREquirectLayer =
  #| (self, init_) => self.createEquirectLayer(init_)

///|
pub extern "js" fn XRWebGLBinding::create_cube_layer(
  self : XRWebGLBinding,
) -> XRCubeLayer =
  #| (self) => self.createCubeLayer()

///|
pub extern "js" fn XRWebGLBinding::create_cube_layer_with_init(
  self : XRWebGLBinding,
  init_ : XRCubeLayerInit,
) -> XRCubeLayer =
  #| (self, init_) => self.createCubeLayer(init_)

///|
pub extern "js" fn XRWebGLBinding::get_sub_image(
  self : XRWebGLBinding,
  layer : XRCompositionLayer,
  frame : XRFrame,
) -> XRWebGLSubImage =
  #| (self, layer, frame) => self.getSubImage(layer, frame)

///|
pub extern "js" fn XRWebGLBinding::get_sub_image_with_eye(
  self : XRWebGLBinding,
  layer : XRCompositionLayer,
  frame : XRFrame,
  eye : XREye,
) -> XRWebGLSubImage =
  #| (self, layer, frame, eye) => self.getSubImage(layer, frame, ['none', 'left', 'right'][eye])

///|
pub extern "js" fn XRWebGLBinding::get_view_sub_image(
  self : XRWebGLBinding,
  layer : XRProjectionLayer,
  view : XRView,
) -> XRWebGLSubImage =
  #| (self, layer, view) => self.getViewSubImage(layer, view)

///|
pub extern "js" fn XRWebGLBinding::foveate_bound_texture(
  self : XRWebGLBinding,
  target : GLenum,
  fixed_foveation : Double,
) -> Unit =
  #| (self, target, fixed_foveation) => self.foveateBoundTexture(target, fixed_foveation)

///|
pub extern "js" fn XRWebGLBinding::get_reflection_cube_map(
  self : XRWebGLBinding,
  light_probe : XRLightProbe,
) -> WebGLTexture? =
  #| (self, light_probe) => { const v = self.getReflectionCubeMap(light_probe); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn XRWebGLBinding::get_depth_information(
  self : XRWebGLBinding,
  view : XRView,
) -> XRWebGLDepthInformation? =
  #| (self, view) => { const v = self.getDepthInformation(view); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn XRWebGLBinding::get_camera_image(
  self : XRWebGLBinding,
  camera : XRCamera,
) -> WebGLTexture? =
  #| (self, camera) => { const v = self.getCameraImage(camera); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
/// XRMediaBinding interface
pub type XRMediaBinding

///|
pub extern "js" fn XRMediaBinding::to_js_value(
  self : XRMediaBinding,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRMediaBinding (unchecked)
pub extern "js" fn XRMediaBinding::from_js_value(v : JsValue) -> XRMediaBinding =
  #| (v) => v

///|
/// Safely cast JsValue to XRMediaBinding (checked with instanceof)
pub extern "js" fn XRMediaBinding::from_js_value_opt(
  v : JsValue,
) -> XRMediaBinding? =
  #| (v) => (v instanceof XRMediaBinding) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRMediaBinding (checked with instanceof)
pub extern "js" fn JsValue::as_xr_media_binding(
  self : JsValue,
) -> XRMediaBinding? =
  #| (self) => (self instanceof XRMediaBinding) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRMediaBinding (unchecked)
pub extern "js" fn JsValue::to_xr_media_binding(
  self : JsValue,
) -> XRMediaBinding =
  #| (self) => self

///|
pub extern "js" fn XRMediaBinding::new(session : XRSession) -> XRMediaBinding =
  #| (session) => new XRMediaBinding(session)

///|
pub extern "js" fn XRMediaBinding::create_quad_layer(
  self : XRMediaBinding,
  video : HTMLVideoElement,
) -> XRQuadLayer =
  #| (self, video) => self.createQuadLayer(video)

///|
pub extern "js" fn XRMediaBinding::create_quad_layer_with_init(
  self : XRMediaBinding,
  video : HTMLVideoElement,
  init_ : XRMediaQuadLayerInit,
) -> XRQuadLayer =
  #| (self, video, init_) => self.createQuadLayer(video, init_)

///|
pub extern "js" fn XRMediaBinding::create_cylinder_layer(
  self : XRMediaBinding,
  video : HTMLVideoElement,
) -> XRCylinderLayer =
  #| (self, video) => self.createCylinderLayer(video)

///|
pub extern "js" fn XRMediaBinding::create_cylinder_layer_with_init(
  self : XRMediaBinding,
  video : HTMLVideoElement,
  init_ : XRMediaCylinderLayerInit,
) -> XRCylinderLayer =
  #| (self, video, init_) => self.createCylinderLayer(video, init_)

///|
pub extern "js" fn XRMediaBinding::create_equirect_layer(
  self : XRMediaBinding,
  video : HTMLVideoElement,
) -> XREquirectLayer =
  #| (self, video) => self.createEquirectLayer(video)

///|
pub extern "js" fn XRMediaBinding::create_equirect_layer_with_init(
  self : XRMediaBinding,
  video : HTMLVideoElement,
  init_ : XRMediaEquirectLayerInit,
) -> XREquirectLayer =
  #| (self, video, init_) => self.createEquirectLayer(video, init_)

///|
/// XRLayerEvent interface
pub type XRLayerEvent

///|
pub extern "js" fn XRLayerEvent::to_js_value(self : XRLayerEvent) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRLayerEvent (unchecked)
pub extern "js" fn XRLayerEvent::from_js_value(v : JsValue) -> XRLayerEvent =
  #| (v) => v

///|
/// Safely cast JsValue to XRLayerEvent (checked with instanceof)
pub extern "js" fn XRLayerEvent::from_js_value_opt(
  v : JsValue,
) -> XRLayerEvent? =
  #| (v) => (v instanceof XRLayerEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRLayerEvent (checked with instanceof)
pub extern "js" fn JsValue::as_xr_layer_event(self : JsValue) -> XRLayerEvent? =
  #| (self) => (self instanceof XRLayerEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRLayerEvent (unchecked)
pub extern "js" fn JsValue::to_xr_layer_event(self : JsValue) -> XRLayerEvent =
  #| (self) => self

///|
pub extern "js" fn XRLayerEvent::to_event(self : XRLayerEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn XRLayerEvent::new(
  type_ : String,
  event_init_dict : XRLayerEventInit,
) -> XRLayerEvent =
  #| (type_, event_init_dict) => new XRLayerEvent(type_, event_init_dict)

///|
pub extern "js" fn XRLayerEvent::get_layer(self : XRLayerEvent) -> XRLayer =
  #| (self) => self.layer
