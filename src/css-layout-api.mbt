// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-layout-api

///|
/// ChildDisplayType enum
pub(all) enum ChildDisplayType {
  Block
  Normal
} derive(Eq, Show)

///|
/// Convert to string value
pub fn ChildDisplayType::to_string(self : ChildDisplayType) -> String {
  match self {
    ChildDisplayType::Block => "block"
    ChildDisplayType::Normal => "normal"
  }
}

///|
/// Parse from string value
pub fn ChildDisplayType::from_string(s : String) -> ChildDisplayType? {
  match s {
    "block" => Some(ChildDisplayType::Block)
    "normal" => Some(ChildDisplayType::Normal)
    _ => None
  }
}

///|
/// LayoutSizingMode enum
pub(all) enum LayoutSizingMode {
  BlockLike
  Manual
} derive(Eq, Show)

///|
/// Convert to string value
pub fn LayoutSizingMode::to_string(self : LayoutSizingMode) -> String {
  match self {
    LayoutSizingMode::BlockLike => "block-like"
    LayoutSizingMode::Manual => "manual"
  }
}

///|
/// Parse from string value
pub fn LayoutSizingMode::from_string(s : String) -> LayoutSizingMode? {
  match s {
    "block-like" => Some(LayoutSizingMode::BlockLike)
    "manual" => Some(LayoutSizingMode::Manual)
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
} derive(Eq, Show)

///|
/// Convert to string value
pub fn BlockFragmentationType::to_string(
  self : BlockFragmentationType,
) -> String {
  match self {
    BlockFragmentationType::None => "none"
    BlockFragmentationType::Page => "page"
    BlockFragmentationType::Column => "column"
    BlockFragmentationType::Region => "region"
  }
}

///|
/// Parse from string value
pub fn BlockFragmentationType::from_string(
  s : String,
) -> BlockFragmentationType? {
  match s {
    "none" => Some(BlockFragmentationType::None)
    "page" => Some(BlockFragmentationType::Page)
    "column" => Some(BlockFragmentationType::Column)
    "region" => Some(BlockFragmentationType::Region)
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
} derive(Eq, Show)

///|
/// Convert to string value
pub fn BreakType::to_string(self : BreakType) -> String {
  match self {
    BreakType::None => "none"
    BreakType::Line => "line"
    BreakType::Column => "column"
    BreakType::Page => "page"
    BreakType::Region => "region"
  }
}

///|
/// Parse from string value
pub fn BreakType::from_string(s : String) -> BreakType? {
  match s {
    "none" => Some(BreakType::None)
    "line" => Some(BreakType::Line)
    "column" => Some(BreakType::Column)
    "page" => Some(BreakType::Page)
    "region" => Some(BreakType::Region)
    _ => None
  }
}

///|
/// LayoutOptions dictionary
pub(all) struct LayoutOptions {
  childDisplay : ChildDisplayType?
  sizing : LayoutSizingMode?
}

///|
/// Create a new LayoutOptions with default values
pub fn LayoutOptions::default() -> LayoutOptions {
  LayoutOptions::{ childDisplay: None, sizing: None }
}

///|
extern "js" fn LayoutOptions::to_js_ffi(self : LayoutOptions) -> JsValue =
  #| (self) => ({
  #|   childDisplay: ((() => { const v = self.childDisplay; if (v === undefined) return undefined; return ['block', 'normal'][v]; })()),
  #|   sizing: ((() => { const v = self.sizing; if (v === undefined) return undefined; return ['block-like', 'manual'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn LayoutOptions::to_js(self : LayoutOptions) -> JsValue {
  LayoutOptions::to_js_ffi(self)
}

///|
extern "js" fn LayoutOptions::from_js_ffi(value : JsValue) -> LayoutOptions =
  #| (v) => ({
  #|   childDisplay: (v.childDisplay === undefined ? undefined : ['block', 'normal'].indexOf(v.childDisplay)),
  #|   sizing: (v.sizing === undefined ? undefined : ['block-like', 'manual'].indexOf(v.sizing))
  #| })

///|
/// Convert from JsValue
pub fn LayoutOptions::from_js(value : JsValue) -> LayoutOptions {
  LayoutOptions::from_js_ffi(value)
}

///|
/// LayoutConstraintsOptions dictionary
pub(all) struct LayoutConstraintsOptions {
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

///|
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

///|
extern "js" fn LayoutConstraintsOptions::to_js_ffi(
  self : LayoutConstraintsOptions,
) -> JsValue =
  #| (self) => ({
  #|   availableInlineSize: self.availableInlineSize,
  #|   availableBlockSize: self.availableBlockSize,
  #|   fixedInlineSize: self.fixedInlineSize,
  #|   fixedBlockSize: self.fixedBlockSize,
  #|   percentageInlineSize: self.percentageInlineSize,
  #|   percentageBlockSize: self.percentageBlockSize,
  #|   blockFragmentationOffset: self.blockFragmentationOffset,
  #|   blockFragmentationType: ((() => { const v = self.blockFragmentationType; if (v === undefined) return undefined; return ['none', 'page', 'column', 'region'][v]; })()),
  #|   data: ((() => { const v = self.data; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn LayoutConstraintsOptions::to_js(
  self : LayoutConstraintsOptions,
) -> JsValue {
  LayoutConstraintsOptions::to_js_ffi(self)
}

///|
extern "js" fn LayoutConstraintsOptions::from_js_ffi(
  value : JsValue,
) -> LayoutConstraintsOptions =
  #| (v) => ({
  #|   availableInlineSize: v.availableInlineSize,
  #|   availableBlockSize: v.availableBlockSize,
  #|   fixedInlineSize: v.fixedInlineSize,
  #|   fixedBlockSize: v.fixedBlockSize,
  #|   percentageInlineSize: v.percentageInlineSize,
  #|   percentageBlockSize: v.percentageBlockSize,
  #|   blockFragmentationOffset: v.blockFragmentationOffset,
  #|   blockFragmentationType: (v.blockFragmentationType === undefined ? undefined : ['none', 'page', 'column', 'region'].indexOf(v.blockFragmentationType)),
  #|   data: (v.data === undefined ? { $tag: 0 } : { $tag: 1, _0: v.data })
  #| })

///|
/// Convert from JsValue
pub fn LayoutConstraintsOptions::from_js(
  value : JsValue,
) -> LayoutConstraintsOptions {
  LayoutConstraintsOptions::from_js_ffi(value)
}

///|
/// BreakTokenOptions dictionary
pub(all) struct BreakTokenOptions {
  childBreakTokens : Array[ChildBreakToken]?
  data : JsValue?
}

///|
/// Create a new BreakTokenOptions with default values
pub fn BreakTokenOptions::default() -> BreakTokenOptions {
  BreakTokenOptions::{ childBreakTokens: None, data: None }
}

///|
extern "js" fn BreakTokenOptions::to_js_ffi(
  self : BreakTokenOptions,
) -> JsValue =
  #| (self) => ({
  #|   childBreakTokens: ((() => { const v = self.childBreakTokens; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   data: ((() => { const v = self.data; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn BreakTokenOptions::to_js(self : BreakTokenOptions) -> JsValue {
  BreakTokenOptions::to_js_ffi(self)
}

///|
extern "js" fn BreakTokenOptions::from_js_ffi(
  value : JsValue,
) -> BreakTokenOptions =
  #| (v) => ({
  #|   childBreakTokens: (v.childBreakTokens === undefined ? { $tag: 0 } : { $tag: 1, _0: v.childBreakTokens }),
  #|   data: (v.data === undefined ? { $tag: 0 } : { $tag: 1, _0: v.data })
  #| })

///|
/// Convert from JsValue
pub fn BreakTokenOptions::from_js(value : JsValue) -> BreakTokenOptions {
  BreakTokenOptions::from_js_ffi(value)
}

///|
/// FragmentResultOptions dictionary
pub(all) struct FragmentResultOptions {
  inlineSize : Double?
  blockSize : Double?
  autoBlockSize : Double?
  childFragments : Array[LayoutFragment]?
  data : JsValue?
  breakToken : BreakTokenOptions?
}

///|
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

///|
extern "js" fn FragmentResultOptions::to_js_ffi(
  self : FragmentResultOptions,
) -> JsValue =
  #| (self) => ({
  #|   inlineSize: self.inlineSize,
  #|   blockSize: self.blockSize,
  #|   autoBlockSize: self.autoBlockSize,
  #|   childFragments: ((() => { const v = self.childFragments; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   data: ((() => { const v = self.data; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   breakToken: ((() => { const v = self.breakToken; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn FragmentResultOptions::to_js(self : FragmentResultOptions) -> JsValue {
  FragmentResultOptions::to_js_ffi(self)
}

///|
extern "js" fn FragmentResultOptions::from_js_ffi(
  value : JsValue,
) -> FragmentResultOptions =
  #| (v) => ({
  #|   inlineSize: v.inlineSize,
  #|   blockSize: v.blockSize,
  #|   autoBlockSize: v.autoBlockSize,
  #|   childFragments: (v.childFragments === undefined ? { $tag: 0 } : { $tag: 1, _0: v.childFragments }),
  #|   data: (v.data === undefined ? { $tag: 0 } : { $tag: 1, _0: v.data }),
  #|   breakToken: (v.breakToken === undefined ? { $tag: 0 } : { $tag: 1, _0: v.breakToken })
  #| })

///|
/// Convert from JsValue
pub fn FragmentResultOptions::from_js(value : JsValue) -> FragmentResultOptions {
  FragmentResultOptions::from_js_ffi(value)
}

///|
/// IntrinsicSizesResultOptions dictionary
pub(all) struct IntrinsicSizesResultOptions {
  maxContentSize : Double?
  minContentSize : Double?
}

///|
/// Create a new IntrinsicSizesResultOptions with default values
pub fn IntrinsicSizesResultOptions::default() -> IntrinsicSizesResultOptions {
  IntrinsicSizesResultOptions::{ maxContentSize: None, minContentSize: None }
}

///|
extern "js" fn IntrinsicSizesResultOptions::to_js_ffi(
  self : IntrinsicSizesResultOptions,
) -> JsValue =
  #| (self) => ({
  #|   maxContentSize: self.maxContentSize,
  #|   minContentSize: self.minContentSize
  #| })

///|
/// Convert to JsValue
pub fn IntrinsicSizesResultOptions::to_js(
  self : IntrinsicSizesResultOptions,
) -> JsValue {
  IntrinsicSizesResultOptions::to_js_ffi(self)
}

///|
extern "js" fn IntrinsicSizesResultOptions::from_js_ffi(
  value : JsValue,
) -> IntrinsicSizesResultOptions =
  #| (v) => ({
  #|   maxContentSize: v.maxContentSize,
  #|   minContentSize: v.minContentSize
  #| })

///|
/// Convert from JsValue
pub fn IntrinsicSizesResultOptions::from_js(
  value : JsValue,
) -> IntrinsicSizesResultOptions {
  IntrinsicSizesResultOptions::from_js_ffi(value)
}

///|
/// LayoutWorkletGlobalScope interface
pub type LayoutWorkletGlobalScope

///|
pub extern "js" fn LayoutWorkletGlobalScope::to_js_value(
  self : LayoutWorkletGlobalScope,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to LayoutWorkletGlobalScope (unchecked)
pub extern "js" fn LayoutWorkletGlobalScope::from_js_value(
  v : JsValue,
) -> LayoutWorkletGlobalScope =
  #| (v) => v

///|
/// Safely cast JsValue to LayoutWorkletGlobalScope (checked with instanceof)
pub extern "js" fn LayoutWorkletGlobalScope::from_js_value_opt(
  v : JsValue,
) -> LayoutWorkletGlobalScope? =
  #| (v) => (v instanceof LayoutWorkletGlobalScope) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to LayoutWorkletGlobalScope (checked with instanceof)
pub extern "js" fn JsValue::as_layout_worklet_global_scope(
  self : JsValue,
) -> LayoutWorkletGlobalScope? =
  #| (self) => (self instanceof LayoutWorkletGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to LayoutWorkletGlobalScope (unchecked)
pub extern "js" fn JsValue::to_layout_worklet_global_scope(
  self : JsValue,
) -> LayoutWorkletGlobalScope =
  #| (self) => self

///|
pub extern "js" fn LayoutWorkletGlobalScope::to_worklet_global_scope(
  self : LayoutWorkletGlobalScope,
) -> WorkletGlobalScope =
  #| (self) => self

///|
pub extern "js" fn LayoutWorkletGlobalScope::register_layout(
  self : LayoutWorkletGlobalScope,
  name : String,
  layout_ctor : VoidFunction,
) -> Unit =
  #| (self, name, layout_ctor) => self.registerLayout(name, layout_ctor)

///|
/// LayoutChild interface
pub type LayoutChild

///|
pub extern "js" fn LayoutChild::to_js_value(self : LayoutChild) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to LayoutChild (unchecked)
pub extern "js" fn LayoutChild::from_js_value(v : JsValue) -> LayoutChild =
  #| (v) => v

///|
/// Safely cast JsValue to LayoutChild (checked with instanceof)
pub extern "js" fn LayoutChild::from_js_value_opt(v : JsValue) -> LayoutChild? =
  #| (v) => (v instanceof LayoutChild) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to LayoutChild (checked with instanceof)
pub extern "js" fn JsValue::as_layout_child(self : JsValue) -> LayoutChild? =
  #| (self) => (self instanceof LayoutChild) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to LayoutChild (unchecked)
pub extern "js" fn JsValue::to_layout_child(self : JsValue) -> LayoutChild =
  #| (self) => self

///|
pub extern "js" fn LayoutChild::get_style_map(
  self : LayoutChild,
) -> StylePropertyMapReadOnly =
  #| (self) => self.styleMap

///|
pub extern "js" fn LayoutChild::intrinsic_sizes(
  self : LayoutChild,
) -> Promise[IntrinsicSizes] =
  #| (self) => self.intrinsicSizes()

///|
extern "js" fn LayoutChild::layout_next_fragment_ffi(
  self : LayoutChild,
  constraints : JsValue,
  break_token : ChildBreakToken,
) -> Promise[LayoutFragment] =
  #| (self, constraints, break_token) => self.layoutNextFragment(constraints, break_token)

///|
pub fn LayoutChild::layout_next_fragment(
  self : LayoutChild,
  constraints : LayoutConstraintsOptions,
  break_token : ChildBreakToken,
) -> Promise[LayoutFragment] {
  LayoutChild::layout_next_fragment_ffi(self, constraints.to_js(), break_token)
}

///|
/// LayoutFragment interface
pub type LayoutFragment

///|
pub extern "js" fn LayoutFragment::to_js_value(
  self : LayoutFragment,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to LayoutFragment (unchecked)
pub extern "js" fn LayoutFragment::from_js_value(v : JsValue) -> LayoutFragment =
  #| (v) => v

///|
/// Safely cast JsValue to LayoutFragment (checked with instanceof)
pub extern "js" fn LayoutFragment::from_js_value_opt(
  v : JsValue,
) -> LayoutFragment? =
  #| (v) => (v instanceof LayoutFragment) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to LayoutFragment (checked with instanceof)
pub extern "js" fn JsValue::as_layout_fragment(
  self : JsValue,
) -> LayoutFragment? =
  #| (self) => (self instanceof LayoutFragment) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to LayoutFragment (unchecked)
pub extern "js" fn JsValue::to_layout_fragment(
  self : JsValue,
) -> LayoutFragment =
  #| (self) => self

///|
pub extern "js" fn LayoutFragment::get_inline_size(
  self : LayoutFragment,
) -> Double =
  #| (self) => self.inlineSize

///|
pub extern "js" fn LayoutFragment::get_block_size(
  self : LayoutFragment,
) -> Double =
  #| (self) => self.blockSize

///|
pub extern "js" fn LayoutFragment::get_inline_offset(
  self : LayoutFragment,
) -> Double =
  #| (self) => self.inlineOffset

///|
pub extern "js" fn LayoutFragment::set_inline_offset(
  self : LayoutFragment,
  value : Double,
) -> Unit =
  #| (self, value) => { self.inlineOffset = value }

///|
pub extern "js" fn LayoutFragment::get_block_offset(
  self : LayoutFragment,
) -> Double =
  #| (self) => self.blockOffset

///|
pub extern "js" fn LayoutFragment::set_block_offset(
  self : LayoutFragment,
  value : Double,
) -> Unit =
  #| (self, value) => { self.blockOffset = value }

///|
pub extern "js" fn LayoutFragment::get_data(self : LayoutFragment) -> JsValue =
  #| (self) => self.data

///|
pub extern "js" fn LayoutFragment::get_break_token(
  self : LayoutFragment,
) -> ChildBreakToken? =
  #| (self) => (() => { const v = self.breakToken; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// IntrinsicSizes interface
pub type IntrinsicSizes

///|
pub extern "js" fn IntrinsicSizes::to_js_value(
  self : IntrinsicSizes,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to IntrinsicSizes (unchecked)
pub extern "js" fn IntrinsicSizes::from_js_value(v : JsValue) -> IntrinsicSizes =
  #| (v) => v

///|
/// Safely cast JsValue to IntrinsicSizes (checked with instanceof)
pub extern "js" fn IntrinsicSizes::from_js_value_opt(
  v : JsValue,
) -> IntrinsicSizes? =
  #| (v) => (v instanceof IntrinsicSizes) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to IntrinsicSizes (checked with instanceof)
pub extern "js" fn JsValue::as_intrinsic_sizes(
  self : JsValue,
) -> IntrinsicSizes? =
  #| (self) => (self instanceof IntrinsicSizes) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to IntrinsicSizes (unchecked)
pub extern "js" fn JsValue::to_intrinsic_sizes(
  self : JsValue,
) -> IntrinsicSizes =
  #| (self) => self

///|
pub extern "js" fn IntrinsicSizes::get_min_content_size(
  self : IntrinsicSizes,
) -> Double =
  #| (self) => self.minContentSize

///|
pub extern "js" fn IntrinsicSizes::get_max_content_size(
  self : IntrinsicSizes,
) -> Double =
  #| (self) => self.maxContentSize

///|
/// LayoutConstraints interface
pub type LayoutConstraints

///|
pub extern "js" fn LayoutConstraints::to_js_value(
  self : LayoutConstraints,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to LayoutConstraints (unchecked)
pub extern "js" fn LayoutConstraints::from_js_value(
  v : JsValue,
) -> LayoutConstraints =
  #| (v) => v

///|
/// Safely cast JsValue to LayoutConstraints (checked with instanceof)
pub extern "js" fn LayoutConstraints::from_js_value_opt(
  v : JsValue,
) -> LayoutConstraints? =
  #| (v) => (v instanceof LayoutConstraints) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to LayoutConstraints (checked with instanceof)
pub extern "js" fn JsValue::as_layout_constraints(
  self : JsValue,
) -> LayoutConstraints? =
  #| (self) => (self instanceof LayoutConstraints) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to LayoutConstraints (unchecked)
pub extern "js" fn JsValue::to_layout_constraints(
  self : JsValue,
) -> LayoutConstraints =
  #| (self) => self

///|
pub extern "js" fn LayoutConstraints::get_available_inline_size(
  self : LayoutConstraints,
) -> Double =
  #| (self) => self.availableInlineSize

///|
pub extern "js" fn LayoutConstraints::get_available_block_size(
  self : LayoutConstraints,
) -> Double =
  #| (self) => self.availableBlockSize

///|
pub extern "js" fn LayoutConstraints::get_fixed_inline_size(
  self : LayoutConstraints,
) -> Double? =
  #| (self) => (self.fixedInlineSize) ?? undefined

///|
pub extern "js" fn LayoutConstraints::get_fixed_block_size(
  self : LayoutConstraints,
) -> Double? =
  #| (self) => (self.fixedBlockSize) ?? undefined

///|
pub extern "js" fn LayoutConstraints::get_percentage_inline_size(
  self : LayoutConstraints,
) -> Double =
  #| (self) => self.percentageInlineSize

///|
pub extern "js" fn LayoutConstraints::get_percentage_block_size(
  self : LayoutConstraints,
) -> Double =
  #| (self) => self.percentageBlockSize

///|
pub extern "js" fn LayoutConstraints::get_block_fragmentation_offset(
  self : LayoutConstraints,
) -> Double? =
  #| (self) => (self.blockFragmentationOffset) ?? undefined

///|
pub extern "js" fn LayoutConstraints::get_block_fragmentation_type(
  self : LayoutConstraints,
) -> BlockFragmentationType =
  #| (self) => ['none', 'page', 'column', 'region'].indexOf(self.blockFragmentationType)

///|
pub extern "js" fn LayoutConstraints::get_data(
  self : LayoutConstraints,
) -> JsValue =
  #| (self) => self.data

///|
/// ChildBreakToken interface
pub type ChildBreakToken

///|
pub extern "js" fn ChildBreakToken::to_js_value(
  self : ChildBreakToken,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ChildBreakToken (unchecked)
pub extern "js" fn ChildBreakToken::from_js_value(
  v : JsValue,
) -> ChildBreakToken =
  #| (v) => v

///|
/// Safely cast JsValue to ChildBreakToken (checked with instanceof)
pub extern "js" fn ChildBreakToken::from_js_value_opt(
  v : JsValue,
) -> ChildBreakToken? =
  #| (v) => (v instanceof ChildBreakToken) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ChildBreakToken (checked with instanceof)
pub extern "js" fn JsValue::as_child_break_token(
  self : JsValue,
) -> ChildBreakToken? =
  #| (self) => (self instanceof ChildBreakToken) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ChildBreakToken (unchecked)
pub extern "js" fn JsValue::to_child_break_token(
  self : JsValue,
) -> ChildBreakToken =
  #| (self) => self

///|
pub extern "js" fn ChildBreakToken::get_break_type(
  self : ChildBreakToken,
) -> BreakType =
  #| (self) => ['none', 'line', 'column', 'page', 'region'].indexOf(self.breakType)

///|
pub extern "js" fn ChildBreakToken::get_child(
  self : ChildBreakToken,
) -> LayoutChild =
  #| (self) => self.child

///|
/// BreakToken interface
pub type BreakToken

///|
pub extern "js" fn BreakToken::to_js_value(self : BreakToken) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to BreakToken (unchecked)
pub extern "js" fn BreakToken::from_js_value(v : JsValue) -> BreakToken =
  #| (v) => v

///|
/// Safely cast JsValue to BreakToken (checked with instanceof)
pub extern "js" fn BreakToken::from_js_value_opt(v : JsValue) -> BreakToken? =
  #| (v) => (v instanceof BreakToken) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to BreakToken (checked with instanceof)
pub extern "js" fn JsValue::as_break_token(self : JsValue) -> BreakToken? =
  #| (self) => (self instanceof BreakToken) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to BreakToken (unchecked)
pub extern "js" fn JsValue::to_break_token(self : JsValue) -> BreakToken =
  #| (self) => self

///|
pub extern "js" fn BreakToken::get_child_break_tokens(
  self : BreakToken,
) -> Array[ChildBreakToken] =
  #| (self) => self.childBreakTokens

///|
pub extern "js" fn BreakToken::get_data(self : BreakToken) -> JsValue =
  #| (self) => self.data

///|
/// LayoutEdges interface
pub type LayoutEdges

///|
pub extern "js" fn LayoutEdges::to_js_value(self : LayoutEdges) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to LayoutEdges (unchecked)
pub extern "js" fn LayoutEdges::from_js_value(v : JsValue) -> LayoutEdges =
  #| (v) => v

///|
/// Safely cast JsValue to LayoutEdges (checked with instanceof)
pub extern "js" fn LayoutEdges::from_js_value_opt(v : JsValue) -> LayoutEdges? =
  #| (v) => (v instanceof LayoutEdges) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to LayoutEdges (checked with instanceof)
pub extern "js" fn JsValue::as_layout_edges(self : JsValue) -> LayoutEdges? =
  #| (self) => (self instanceof LayoutEdges) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to LayoutEdges (unchecked)
pub extern "js" fn JsValue::to_layout_edges(self : JsValue) -> LayoutEdges =
  #| (self) => self

///|
pub extern "js" fn LayoutEdges::get_inline_start(self : LayoutEdges) -> Double =
  #| (self) => self.inlineStart

///|
pub extern "js" fn LayoutEdges::get_inline_end(self : LayoutEdges) -> Double =
  #| (self) => self.inlineEnd

///|
pub extern "js" fn LayoutEdges::get_block_start(self : LayoutEdges) -> Double =
  #| (self) => self.blockStart

///|
pub extern "js" fn LayoutEdges::get_block_end(self : LayoutEdges) -> Double =
  #| (self) => self.blockEnd

///|
pub extern "js" fn LayoutEdges::get_inline(self : LayoutEdges) -> Double =
  #| (self) => self.inline

///|
pub extern "js" fn LayoutEdges::get_block(self : LayoutEdges) -> Double =
  #| (self) => self.block

///|
/// FragmentResult interface
pub type FragmentResult

///|
pub extern "js" fn FragmentResult::to_js_value(
  self : FragmentResult,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to FragmentResult (unchecked)
pub extern "js" fn FragmentResult::from_js_value(v : JsValue) -> FragmentResult =
  #| (v) => v

///|
/// Safely cast JsValue to FragmentResult (checked with instanceof)
pub extern "js" fn FragmentResult::from_js_value_opt(
  v : JsValue,
) -> FragmentResult? =
  #| (v) => (v instanceof FragmentResult) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to FragmentResult (checked with instanceof)
pub extern "js" fn JsValue::as_fragment_result(
  self : JsValue,
) -> FragmentResult? =
  #| (self) => (self instanceof FragmentResult) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to FragmentResult (unchecked)
pub extern "js" fn JsValue::to_fragment_result(
  self : JsValue,
) -> FragmentResult =
  #| (self) => self

///|
pub extern "js" fn FragmentResult::new() -> FragmentResult =
  #| () => new FragmentResult()

///|
extern "js" fn FragmentResult::new_with_options_ffi(
  options : JsValue,
) -> FragmentResult =
  #| (options) => new FragmentResult(options)

///|
pub fn FragmentResult::new_with_options(
  options : FragmentResultOptions,
) -> FragmentResult {
  FragmentResult::new_with_options_ffi(options.to_js())
}

///|
pub extern "js" fn FragmentResult::get_inline_size(
  self : FragmentResult,
) -> Double =
  #| (self) => self.inlineSize

///|
pub extern "js" fn FragmentResult::get_block_size(
  self : FragmentResult,
) -> Double =
  #| (self) => self.blockSize
