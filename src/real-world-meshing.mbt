// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/real-world-meshing

///|
/// XRMesh interface
pub type XRMesh

///|
pub extern "js" fn XRMesh::to_js_value(self : XRMesh) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRMesh (unchecked)
pub extern "js" fn XRMesh::from_js_value(v : JsValue) -> XRMesh =
  #| (v) => v

///|
/// Safely cast JsValue to XRMesh (checked with instanceof)
pub extern "js" fn XRMesh::from_js_value_opt(v : JsValue) -> XRMesh? =
  #| (v) => (v instanceof XRMesh) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRMesh (checked with instanceof)
pub extern "js" fn JsValue::as_xr_mesh(self : JsValue) -> XRMesh? =
  #| (self) => (self instanceof XRMesh) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRMesh (unchecked)
pub extern "js" fn JsValue::to_xr_mesh(self : JsValue) -> XRMesh =
  #| (self) => self

///|
pub extern "js" fn XRMesh::get_mesh_space(self : XRMesh) -> XRSpace =
  #| (self) => self.meshSpace

///|
pub extern "js" fn XRMesh::get_vertices(self : XRMesh) -> Array[Float32Array] =
  #| (self) => self.vertices

///|
pub extern "js" fn XRMesh::get_indices(self : XRMesh) -> Uint32Array =
  #| (self) => self.indices

///|
pub extern "js" fn XRMesh::get_last_changed_time(
  self : XRMesh,
) -> DOMHighResTimeStamp =
  #| (self) => self.lastChangedTime

///|
pub extern "js" fn XRMesh::get_semantic_label(self : XRMesh) -> String? =
  #| (self) => (self.semanticLabel) ?? undefined

///|
/// XRMeshSet interface
pub type XRMeshSet

///|
pub extern "js" fn XRMeshSet::to_js_value(self : XRMeshSet) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRMeshSet (unchecked)
pub extern "js" fn XRMeshSet::from_js_value(v : JsValue) -> XRMeshSet =
  #| (v) => v

///|
/// Safely cast JsValue to XRMeshSet (checked with instanceof)
pub extern "js" fn XRMeshSet::from_js_value_opt(v : JsValue) -> XRMeshSet? =
  #| (v) => (v instanceof XRMeshSet) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRMeshSet (checked with instanceof)
pub extern "js" fn JsValue::as_xr_mesh_set(self : JsValue) -> XRMeshSet? =
  #| (self) => (self instanceof XRMeshSet) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRMeshSet (unchecked)
pub extern "js" fn JsValue::to_xr_mesh_set(self : JsValue) -> XRMeshSet =
  #| (self) => self

///|
pub extern "js" fn XRMeshSet::has(self : XRMeshSet, value : XRMesh) -> Bool =
  #| (self, value) => self.has(value)
