// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/real-world-meshing

///|
/// XRMesh interface
pub type XRMesh

///|
pub extern "js" fn XRMesh::to_js_value(self : XRMesh) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn XRMesh::get_mesh_space(self : XRMesh) -> XRSpace =
  #| (self) => self.meshSpace

///|
pub extern "js" fn XRMesh::get_vertices(self : XRMesh) -> JsValue =
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
  #| (self) => self.semanticLabel

///|
/// XRMeshSet interface
pub type XRMeshSet

///|
pub extern "js" fn XRMeshSet::to_js_value(self : XRMeshSet) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn XRMeshSet::has(self : XRMeshSet, value : XRMesh) -> Bool =
  #| (self, value) => self.has(value)
