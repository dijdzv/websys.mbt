// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-layout-api

///|
/// ChildDisplayType enum
pub(all) enum ChildDisplayType {
  Block
  Normal
}

/// Convert to string value
pub fn ChildDisplayType::to_string(self : ChildDisplayType) -> String {
  match self {
    Block => "block"
    Normal => "normal"
  }
}

/// Parse from string value
pub fn ChildDisplayType::from_string(s : String) -> ChildDisplayType? {
  match s {
    "block" => Some(Block)
    "normal" => Some(Normal)
    _ => None
  }
}

///|
/// LayoutSizingMode enum
pub(all) enum LayoutSizingMode {
  BlockLike
  Manual
}

/// Convert to string value
pub fn LayoutSizingMode::to_string(self : LayoutSizingMode) -> String {
  match self {
    BlockLike => "block-like"
    Manual => "manual"
  }
}

/// Parse from string value
pub fn LayoutSizingMode::from_string(s : String) -> LayoutSizingMode? {
  match s {
    "block-like" => Some(BlockLike)
    "manual" => Some(Manual)
    _ => None
  }
}

///|
/// BlockFragmentationType enum
pub(all) enum BlockFragmentationType {
  None
  Page
  Column
  Region
}

/// Convert to string value
pub fn BlockFragmentationType::to_string(self : BlockFragmentationType) -> String {
  match self {
    None => "none"
    Page => "page"
    Column => "column"
    Region => "region"
  }
}

/// Parse from string value
pub fn BlockFragmentationType::from_string(s : String) -> BlockFragmentationType? {
  match s {
    "none" => Some(None)
    "page" => Some(Page)
    "column" => Some(Column)
    "region" => Some(Region)
    _ => None
  }
}

///|
/// BreakType enum
pub(all) enum BreakType {
  None
  Line
  Column
  Page
  Region
}

/// Convert to string value
pub fn BreakType::to_string(self : BreakType) -> String {
  match self {
    None => "none"
    Line => "line"
    Column => "column"
    Page => "page"
    Region => "region"
  }
}

/// Parse from string value
pub fn BreakType::from_string(s : String) -> BreakType? {
  match s {
    "none" => Some(None)
    "line" => Some(Line)
    "column" => Some(Column)
    "page" => Some(Page)
    "region" => Some(Region)
    _ => None
  }
}

///|
/// LayoutOptions dictionary
pub struct LayoutOptions {
  childDisplay : ChildDisplayType?
  sizing : LayoutSizingMode?
}

/// Create a new LayoutOptions with default values
pub fn LayoutOptions::default() -> LayoutOptions {
  LayoutOptions::{
    childDisplay: None,
    sizing: None,
  }
}

/// Convert to JsValue
pub extern "js" fn LayoutOptions::to_js(self : LayoutOptions) -> JsValue =
  #| (self) => ({
  #|   childDisplay: self.childDisplay,
  #|   sizing: self.sizing
  #| })

///|
/// LayoutConstraintsOptions dictionary
pub struct LayoutConstraintsOptions {
  availableInlineSize : Double?
  availableBlockSize : Double?
  fixedInlineSize : Double?
  fixedBlockSize : Double?
  percentageInlineSize : Double?
  percentageBlockSize : Double?
  blockFragmentationOffset : Double?
  blockFragmentationType : BlockFragmentationType?
  data : JsValue?
}

/// Create a new LayoutConstraintsOptions with default values
pub fn LayoutConstraintsOptions::default() -> LayoutConstraintsOptions {
  LayoutConstraintsOptions::{
    availableInlineSize: None,
    availableBlockSize: None,
    fixedInlineSize: None,
    fixedBlockSize: None,
    percentageInlineSize: None,
    percentageBlockSize: None,
    blockFragmentationOffset: None,
    blockFragmentationType: None,
    data: None,
  }
}

/// Convert to JsValue
pub extern "js" fn LayoutConstraintsOptions::to_js(self : LayoutConstraintsOptions) -> JsValue =
  #| (self) => ({
  #|   availableInlineSize: self.availableInlineSize,
  #|   availableBlockSize: self.availableBlockSize,
  #|   fixedInlineSize: self.fixedInlineSize,
  #|   fixedBlockSize: self.fixedBlockSize,
  #|   percentageInlineSize: self.percentageInlineSize,
  #|   percentageBlockSize: self.percentageBlockSize,
  #|   blockFragmentationOffset: self.blockFragmentationOffset,
  #|   blockFragmentationType: self.blockFragmentationType,
  #|   data: self.data
  #| })

///|
/// BreakTokenOptions dictionary
pub struct BreakTokenOptions {
  childBreakTokens : JsValue?
  data : JsValue?
}

/// Create a new BreakTokenOptions with default values
pub fn BreakTokenOptions::default() -> BreakTokenOptions {
  BreakTokenOptions::{
    childBreakTokens: None,
    data: None,
  }
}

/// Convert to JsValue
pub extern "js" fn BreakTokenOptions::to_js(self : BreakTokenOptions) -> JsValue =
  #| (self) => ({
  #|   childBreakTokens: self.childBreakTokens,
  #|   data: self.data
  #| })

///|
/// FragmentResultOptions dictionary
pub struct FragmentResultOptions {
  inlineSize : Double?
  blockSize : Double?
  autoBlockSize : Double?
  childFragments : JsValue?
  data : JsValue?
  breakToken : BreakTokenOptions?
}

/// Create a new FragmentResultOptions with default values
pub fn FragmentResultOptions::default() -> FragmentResultOptions {
  FragmentResultOptions::{
    inlineSize: None,
    blockSize: None,
    autoBlockSize: None,
    childFragments: None,
    data: None,
    breakToken: None,
  }
}

/// Convert to JsValue
pub extern "js" fn FragmentResultOptions::to_js(self : FragmentResultOptions) -> JsValue =
  #| (self) => ({
  #|   inlineSize: self.inlineSize,
  #|   blockSize: self.blockSize,
  #|   autoBlockSize: self.autoBlockSize,
  #|   childFragments: self.childFragments,
  #|   data: self.data,
  #|   breakToken: self.breakToken
  #| })

///|
/// IntrinsicSizesResultOptions dictionary
pub struct IntrinsicSizesResultOptions {
  maxContentSize : Double?
  minContentSize : Double?
}

/// Create a new IntrinsicSizesResultOptions with default values
pub fn IntrinsicSizesResultOptions::default() -> IntrinsicSizesResultOptions {
  IntrinsicSizesResultOptions::{
    maxContentSize: None,
    minContentSize: None,
  }
}

/// Convert to JsValue
pub extern "js" fn IntrinsicSizesResultOptions::to_js(self : IntrinsicSizesResultOptions) -> JsValue =
  #| (self) => ({
  #|   maxContentSize: self.maxContentSize,
  #|   minContentSize: self.minContentSize
  #| })

///|
/// LayoutWorkletGlobalScope interface
pub type LayoutWorkletGlobalScope

pub extern "js" fn LayoutWorkletGlobalScope::to_js_value(self : LayoutWorkletGlobalScope) -> JsValue =
  #| (self) => self

pub extern "js" fn LayoutWorkletGlobalScope::register_layout(self : LayoutWorkletGlobalScope, name : String, layout_ctor : VoidFunction) -> Unit =
  #| (self, name, layout_ctor) => self.registerLayout(name, layout_ctor)

///|
/// LayoutChild interface
pub type LayoutChild

pub extern "js" fn LayoutChild::to_js_value(self : LayoutChild) -> JsValue =
  #| (self) => self

pub extern "js" fn LayoutChild::get_style_map(self : LayoutChild) -> StylePropertyMapReadOnly =
  #| (self) => self.styleMap

pub extern "js" fn LayoutChild::intrinsic_sizes(self : LayoutChild) -> JsValue =
  #| (self) => self.intrinsicSizes()

pub extern "js" fn LayoutChild::layout_next_fragment(self : LayoutChild, constraints : LayoutConstraintsOptions, break_token : ChildBreakToken) -> JsValue =
  #| (self, constraints, break_token) => self.layoutNextFragment(constraints, break_token)

///|
/// LayoutFragment interface
pub type LayoutFragment

pub extern "js" fn LayoutFragment::to_js_value(self : LayoutFragment) -> JsValue =
  #| (self) => self

pub extern "js" fn LayoutFragment::get_inline_size(self : LayoutFragment) -> Double =
  #| (self) => self.inlineSize

pub extern "js" fn LayoutFragment::get_block_size(self : LayoutFragment) -> Double =
  #| (self) => self.blockSize

pub extern "js" fn LayoutFragment::get_inline_offset(self : LayoutFragment) -> Double =
  #| (self) => self.inlineOffset

pub extern "js" fn LayoutFragment::set_inline_offset(self : LayoutFragment, value : Double) -> Unit =
  #| (self, value) => { self.inlineOffset = value }

pub extern "js" fn LayoutFragment::get_block_offset(self : LayoutFragment) -> Double =
  #| (self) => self.blockOffset

pub extern "js" fn LayoutFragment::set_block_offset(self : LayoutFragment, value : Double) -> Unit =
  #| (self, value) => { self.blockOffset = value }

pub extern "js" fn LayoutFragment::get_data(self : LayoutFragment) -> JsValue =
  #| (self) => self.data

pub extern "js" fn LayoutFragment::get_break_token(self : LayoutFragment) -> ChildBreakToken? =
  #| (self) => self.breakToken

///|
/// IntrinsicSizes interface
pub type IntrinsicSizes

pub extern "js" fn IntrinsicSizes::to_js_value(self : IntrinsicSizes) -> JsValue =
  #| (self) => self

pub extern "js" fn IntrinsicSizes::get_min_content_size(self : IntrinsicSizes) -> Double =
  #| (self) => self.minContentSize

pub extern "js" fn IntrinsicSizes::get_max_content_size(self : IntrinsicSizes) -> Double =
  #| (self) => self.maxContentSize

///|
/// LayoutConstraints interface
pub type LayoutConstraints

pub extern "js" fn LayoutConstraints::to_js_value(self : LayoutConstraints) -> JsValue =
  #| (self) => self

pub extern "js" fn LayoutConstraints::get_available_inline_size(self : LayoutConstraints) -> Double =
  #| (self) => self.availableInlineSize

pub extern "js" fn LayoutConstraints::get_available_block_size(self : LayoutConstraints) -> Double =
  #| (self) => self.availableBlockSize

pub extern "js" fn LayoutConstraints::get_fixed_inline_size(self : LayoutConstraints) -> Double? =
  #| (self) => self.fixedInlineSize

pub extern "js" fn LayoutConstraints::get_fixed_block_size(self : LayoutConstraints) -> Double? =
  #| (self) => self.fixedBlockSize

pub extern "js" fn LayoutConstraints::get_percentage_inline_size(self : LayoutConstraints) -> Double =
  #| (self) => self.percentageInlineSize

pub extern "js" fn LayoutConstraints::get_percentage_block_size(self : LayoutConstraints) -> Double =
  #| (self) => self.percentageBlockSize

pub extern "js" fn LayoutConstraints::get_block_fragmentation_offset(self : LayoutConstraints) -> Double? =
  #| (self) => self.blockFragmentationOffset

pub extern "js" fn LayoutConstraints::get_block_fragmentation_type(self : LayoutConstraints) -> BlockFragmentationType =
  #| (self) => self.blockFragmentationType

pub extern "js" fn LayoutConstraints::get_data(self : LayoutConstraints) -> JsValue =
  #| (self) => self.data

///|
/// ChildBreakToken interface
pub type ChildBreakToken

pub extern "js" fn ChildBreakToken::to_js_value(self : ChildBreakToken) -> JsValue =
  #| (self) => self

pub extern "js" fn ChildBreakToken::get_break_type(self : ChildBreakToken) -> BreakType =
  #| (self) => self.breakType

pub extern "js" fn ChildBreakToken::get_child(self : ChildBreakToken) -> LayoutChild =
  #| (self) => self.child

///|
/// BreakToken interface
pub type BreakToken

pub extern "js" fn BreakToken::to_js_value(self : BreakToken) -> JsValue =
  #| (self) => self

pub extern "js" fn BreakToken::get_child_break_tokens(self : BreakToken) -> JsValue =
  #| (self) => self.childBreakTokens

pub extern "js" fn BreakToken::get_data(self : BreakToken) -> JsValue =
  #| (self) => self.data

///|
/// LayoutEdges interface
pub type LayoutEdges

pub extern "js" fn LayoutEdges::to_js_value(self : LayoutEdges) -> JsValue =
  #| (self) => self

pub extern "js" fn LayoutEdges::get_inline_start(self : LayoutEdges) -> Double =
  #| (self) => self.inlineStart

pub extern "js" fn LayoutEdges::get_inline_end(self : LayoutEdges) -> Double =
  #| (self) => self.inlineEnd

pub extern "js" fn LayoutEdges::get_block_start(self : LayoutEdges) -> Double =
  #| (self) => self.blockStart

pub extern "js" fn LayoutEdges::get_block_end(self : LayoutEdges) -> Double =
  #| (self) => self.blockEnd

pub extern "js" fn LayoutEdges::get_inline(self : LayoutEdges) -> Double =
  #| (self) => self.inline

pub extern "js" fn LayoutEdges::get_block(self : LayoutEdges) -> Double =
  #| (self) => self.block

///|
/// FragmentResult interface
pub type FragmentResult

pub extern "js" fn FragmentResult::to_js_value(self : FragmentResult) -> JsValue =
  #| (self) => self

pub extern "js" fn FragmentResult::new(options : FragmentResultOptions) -> FragmentResult =
  #| (options) => new FragmentResult(options)

pub extern "js" fn FragmentResult::get_inline_size(self : FragmentResult) -> Double =
  #| (self) => self.inlineSize

pub extern "js" fn FragmentResult::get_block_size(self : FragmentResult) -> Double =
  #| (self) => self.blockSize

