// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/selection-api

///|
/// GetComposedRangesOptions dictionary
pub struct GetComposedRangesOptions {
  shadowRoots : JsValue?
}

/// Create a new GetComposedRangesOptions with default values
pub fn GetComposedRangesOptions::default() -> GetComposedRangesOptions {
  GetComposedRangesOptions::{
    shadowRoots: None,
  }
}

/// Convert to JsValue
pub extern "js" fn GetComposedRangesOptions::to_js(self : GetComposedRangesOptions) -> JsValue =
  #| (self) => ({
  #|   shadowRoots: self.shadowRoots
  #| })

///|
/// Selection interface
pub type Selection

pub extern "js" fn Selection::to_js_value(self : Selection) -> JsValue =
  #| (self) => self

pub extern "js" fn Selection::get_anchor_node(self : Selection) -> Node? =
  #| (self) => self.anchorNode

pub extern "js" fn Selection::get_anchor_offset(self : Selection) -> Int =
  #| (self) => self.anchorOffset

pub extern "js" fn Selection::get_focus_node(self : Selection) -> Node? =
  #| (self) => self.focusNode

pub extern "js" fn Selection::get_focus_offset(self : Selection) -> Int =
  #| (self) => self.focusOffset

pub extern "js" fn Selection::get_is_collapsed(self : Selection) -> Bool =
  #| (self) => self.isCollapsed

pub extern "js" fn Selection::get_range_count(self : Selection) -> Int =
  #| (self) => self.rangeCount

pub extern "js" fn Selection::get_type(self : Selection) -> String =
  #| (self) => self.type

pub extern "js" fn Selection::get_direction(self : Selection) -> String =
  #| (self) => self.direction

pub extern "js" fn Selection::get_range_at(self : Selection, index : Int) -> Range =
  #| (self, index) => self.getRangeAt(index)

pub extern "js" fn Selection::add_range(self : Selection, range : Range) -> Unit =
  #| (self, range) => self.addRange(range)

pub extern "js" fn Selection::remove_range(self : Selection, range : Range) -> Unit =
  #| (self, range) => self.removeRange(range)

pub extern "js" fn Selection::remove_all_ranges(self : Selection) -> Unit =
  #| (self) => self.removeAllRanges()

pub extern "js" fn Selection::empty(self : Selection) -> Unit =
  #| (self) => self.empty()

pub extern "js" fn Selection::get_composed_ranges(self : Selection, options : GetComposedRangesOptions) -> JsValue =
  #| (self, options) => self.getComposedRanges(options)

pub extern "js" fn Selection::collapse(self : Selection, node : Node?, offset : Int) -> Unit =
  #| (self, node, offset) => self.collapse(node, offset)

pub extern "js" fn Selection::set_position(self : Selection, node : Node?, offset : Int) -> Unit =
  #| (self, node, offset) => self.setPosition(node, offset)

pub extern "js" fn Selection::collapse_to_start(self : Selection) -> Unit =
  #| (self) => self.collapseToStart()

pub extern "js" fn Selection::collapse_to_end(self : Selection) -> Unit =
  #| (self) => self.collapseToEnd()

pub extern "js" fn Selection::extend(self : Selection, node : Node, offset : Int) -> Unit =
  #| (self, node, offset) => self.extend(node, offset)

pub extern "js" fn Selection::set_base_and_extent(self : Selection, anchor_node : Node, anchor_offset : Int, focus_node : Node, focus_offset : Int) -> Unit =
  #| (self, anchor_node, anchor_offset, focus_node, focus_offset) => self.setBaseAndExtent(anchor_node, anchor_offset, focus_node, focus_offset)

pub extern "js" fn Selection::select_all_children(self : Selection, node : Node) -> Unit =
  #| (self, node) => self.selectAllChildren(node)

pub extern "js" fn Selection::modify(self : Selection, alter : String, direction : String, granularity : String) -> Unit =
  #| (self, alter, direction, granularity) => self.modify(alter, direction, granularity)

pub extern "js" fn Selection::delete_from_document(self : Selection) -> Unit =
  #| (self) => self.deleteFromDocument()

pub extern "js" fn Selection::contains_node(self : Selection, node : Node, allow_partial_containment : Bool) -> Bool =
  #| (self, node, allow_partial_containment) => self.containsNode(node, allow_partial_containment)

