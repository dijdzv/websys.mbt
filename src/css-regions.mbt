// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-regions

///|
/// NamedFlowMap interface
pub type NamedFlowMap

pub extern "js" fn NamedFlowMap::to_js_value(self : NamedFlowMap) -> JsValue =
  #| (self) => self

pub extern "js" fn NamedFlowMap::_unknown_(self : NamedFlowMap) -> Unit =
  #| (self) => self._unknown_()

///|
/// NamedFlow interface
pub type NamedFlow

pub extern "js" fn NamedFlow::to_js_value(self : NamedFlow) -> JsValue =
  #| (self) => self

pub extern "js" fn NamedFlow::get_name(self : NamedFlow) -> CSSOMString =
  #| (self) => self.name

pub extern "js" fn NamedFlow::get_overset(self : NamedFlow) -> Bool =
  #| (self) => self.overset

pub extern "js" fn NamedFlow::get_regions(self : NamedFlow) -> JsValue =
  #| (self) => self.getRegions()

pub extern "js" fn NamedFlow::get_first_empty_region_index(self : NamedFlow) -> Int =
  #| (self) => self.firstEmptyRegionIndex

pub extern "js" fn NamedFlow::get_content(self : NamedFlow) -> JsValue =
  #| (self) => self.getContent()

pub extern "js" fn NamedFlow::get_regions_by_content(self : NamedFlow, node : Node) -> JsValue =
  #| (self, node) => self.getRegionsByContent(node)

