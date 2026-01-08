// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-regions

///|
/// NamedFlowMap interface
pub type NamedFlowMap

///|
pub extern "js" fn NamedFlowMap::to_js_value(self : NamedFlowMap) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn NamedFlowMap::get(
  self : NamedFlowMap,
  key : CSSOMString,
) -> NamedFlow? =
  #| (self, key) => self.get(key)

///|
pub extern "js" fn NamedFlowMap::has(
  self : NamedFlowMap,
  key : CSSOMString,
) -> Bool =
  #| (self, key) => self.has(key)

///|
pub extern "js" fn NamedFlowMap::set(
  self : NamedFlowMap,
  key : CSSOMString,
  value : NamedFlow,
) -> Unit =
  #| (self, key, value) => { self.set(key, value) }

///|
pub extern "js" fn NamedFlowMap::delete(
  self : NamedFlowMap,
  key : CSSOMString,
) -> Bool =
  #| (self, key) => self.delete(key)

///|
pub extern "js" fn NamedFlowMap::clear(self : NamedFlowMap) -> Unit =
  #| (self) => { self.clear() }

///|
/// NamedFlow interface
pub type NamedFlow

///|
pub extern "js" fn NamedFlow::to_js_value(self : NamedFlow) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn NamedFlow::get_name(self : NamedFlow) -> CSSOMString =
  #| (self) => self.name

///|
pub extern "js" fn NamedFlow::get_overset(self : NamedFlow) -> Bool =
  #| (self) => self.overset

///|
pub extern "js" fn NamedFlow::get_regions(self : NamedFlow) -> Array[Element] =
  #| (self) => self.getRegions()

///|
pub extern "js" fn NamedFlow::get_first_empty_region_index(
  self : NamedFlow,
) -> Int =
  #| (self) => self.firstEmptyRegionIndex

///|
pub extern "js" fn NamedFlow::get_content(self : NamedFlow) -> Array[Node] =
  #| (self) => self.getContent()

///|
pub extern "js" fn NamedFlow::get_regions_by_content(
  self : NamedFlow,
  node : Node,
) -> Array[Element] =
  #| (self, node) => self.getRegionsByContent(node)
