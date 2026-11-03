// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-anchor-position

///|
/// CSSPositionTryRule interface
pub type CSSPositionTryRule

///|
pub extern "js" fn CSSPositionTryRule::to_js_value(
  self : CSSPositionTryRule,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSPositionTryRule (unchecked)
pub extern "js" fn CSSPositionTryRule::from_js_value(
  v : JsValue,
) -> CSSPositionTryRule =
  #| (v) => v

///|
/// Safely cast JsValue to CSSPositionTryRule (checked with instanceof)
pub extern "js" fn CSSPositionTryRule::from_js_value_opt(
  v : JsValue,
) -> CSSPositionTryRule? =
  #| (v) => (v instanceof CSSPositionTryRule) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSPositionTryRule (checked with instanceof)
pub extern "js" fn JsValue::as_css_position_try_rule(
  self : JsValue,
) -> CSSPositionTryRule? =
  #| (self) => (self instanceof CSSPositionTryRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSPositionTryRule (unchecked)
pub extern "js" fn JsValue::to_css_position_try_rule(
  self : JsValue,
) -> CSSPositionTryRule =
  #| (self) => self

///|
pub extern "js" fn CSSPositionTryRule::to_css_rule(
  self : CSSPositionTryRule,
) -> CSSRule =
  #| (self) => self

///|
pub extern "js" fn CSSPositionTryRule::get_name(
  self : CSSPositionTryRule,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn CSSPositionTryRule::get_style(
  self : CSSPositionTryRule,
) -> CSSPositionTryDescriptors =
  #| (self) => self.style

///|
/// CSSPositionTryDescriptors interface
pub type CSSPositionTryDescriptors

///|
pub extern "js" fn CSSPositionTryDescriptors::to_js_value(
  self : CSSPositionTryDescriptors,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSPositionTryDescriptors (unchecked)
pub extern "js" fn CSSPositionTryDescriptors::from_js_value(
  v : JsValue,
) -> CSSPositionTryDescriptors =
  #| (v) => v

///|
/// Safely cast JsValue to CSSPositionTryDescriptors (checked with instanceof)
pub extern "js" fn CSSPositionTryDescriptors::from_js_value_opt(
  v : JsValue,
) -> CSSPositionTryDescriptors? =
  #| (v) => (v instanceof CSSPositionTryDescriptors) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSPositionTryDescriptors (checked with instanceof)
pub extern "js" fn JsValue::as_css_position_try_descriptors(
  self : JsValue,
) -> CSSPositionTryDescriptors? =
  #| (self) => (self instanceof CSSPositionTryDescriptors) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSPositionTryDescriptors (unchecked)
pub extern "js" fn JsValue::to_css_position_try_descriptors(
  self : JsValue,
) -> CSSPositionTryDescriptors =
  #| (self) => self

///|
pub extern "js" fn CSSPositionTryDescriptors::to_css_style_declaration(
  self : CSSPositionTryDescriptors,
) -> CSSStyleDeclaration =
  #| (self) => self

///|
pub extern "js" fn CSSPositionTryDescriptors::get_margin(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.margin

///|
pub extern "js" fn CSSPositionTryDescriptors::set_margin(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.margin = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_margin_top(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.marginTop

///|
pub extern "js" fn CSSPositionTryDescriptors::set_margin_top(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.marginTop = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_margin_right(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.marginRight

///|
pub extern "js" fn CSSPositionTryDescriptors::set_margin_right(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.marginRight = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_margin_bottom(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.marginBottom

///|
pub extern "js" fn CSSPositionTryDescriptors::set_margin_bottom(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.marginBottom = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_margin_left(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.marginLeft

///|
pub extern "js" fn CSSPositionTryDescriptors::set_margin_left(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.marginLeft = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_margin_block(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.marginBlock

///|
pub extern "js" fn CSSPositionTryDescriptors::set_margin_block(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.marginBlock = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_margin_block_start(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.marginBlockStart

///|
pub extern "js" fn CSSPositionTryDescriptors::set_margin_block_start(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.marginBlockStart = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_margin_block_end(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.marginBlockEnd

///|
pub extern "js" fn CSSPositionTryDescriptors::set_margin_block_end(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.marginBlockEnd = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_margin_inline(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.marginInline

///|
pub extern "js" fn CSSPositionTryDescriptors::set_margin_inline(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.marginInline = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_margin_inline_start(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.marginInlineStart

///|
pub extern "js" fn CSSPositionTryDescriptors::set_margin_inline_start(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.marginInlineStart = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_margin_inline_end(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.marginInlineEnd

///|
pub extern "js" fn CSSPositionTryDescriptors::set_margin_inline_end(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.marginInlineEnd = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_inset(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.inset

///|
pub extern "js" fn CSSPositionTryDescriptors::set_inset(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.inset = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_inset_block(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.insetBlock

///|
pub extern "js" fn CSSPositionTryDescriptors::set_inset_block(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.insetBlock = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_inset_block_start(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.insetBlockStart

///|
pub extern "js" fn CSSPositionTryDescriptors::set_inset_block_start(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.insetBlockStart = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_inset_block_end(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.insetBlockEnd

///|
pub extern "js" fn CSSPositionTryDescriptors::set_inset_block_end(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.insetBlockEnd = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_inset_inline(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.insetInline

///|
pub extern "js" fn CSSPositionTryDescriptors::set_inset_inline(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.insetInline = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_inset_inline_start(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.insetInlineStart

///|
pub extern "js" fn CSSPositionTryDescriptors::set_inset_inline_start(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.insetInlineStart = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_inset_inline_end(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.insetInlineEnd

///|
pub extern "js" fn CSSPositionTryDescriptors::set_inset_inline_end(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.insetInlineEnd = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_top(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.top

///|
pub extern "js" fn CSSPositionTryDescriptors::set_top(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.top = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_left(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.left

///|
pub extern "js" fn CSSPositionTryDescriptors::set_left(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.left = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_right(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.right

///|
pub extern "js" fn CSSPositionTryDescriptors::set_right(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.right = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_bottom(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.bottom

///|
pub extern "js" fn CSSPositionTryDescriptors::set_bottom(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.bottom = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_width(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.width

///|
pub extern "js" fn CSSPositionTryDescriptors::set_width(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.width = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_min_width(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.minWidth

///|
pub extern "js" fn CSSPositionTryDescriptors::set_min_width(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.minWidth = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_max_width(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.maxWidth

///|
pub extern "js" fn CSSPositionTryDescriptors::set_max_width(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.maxWidth = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_height(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.height

///|
pub extern "js" fn CSSPositionTryDescriptors::set_height(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.height = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_min_height(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.minHeight

///|
pub extern "js" fn CSSPositionTryDescriptors::set_min_height(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.minHeight = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_max_height(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.maxHeight

///|
pub extern "js" fn CSSPositionTryDescriptors::set_max_height(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.maxHeight = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_block_size(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.blockSize

///|
pub extern "js" fn CSSPositionTryDescriptors::set_block_size(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.blockSize = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_min_block_size(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.minBlockSize

///|
pub extern "js" fn CSSPositionTryDescriptors::set_min_block_size(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.minBlockSize = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_max_block_size(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.maxBlockSize

///|
pub extern "js" fn CSSPositionTryDescriptors::set_max_block_size(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.maxBlockSize = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_inline_size(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.inlineSize

///|
pub extern "js" fn CSSPositionTryDescriptors::set_inline_size(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.inlineSize = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_min_inline_size(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.minInlineSize

///|
pub extern "js" fn CSSPositionTryDescriptors::set_min_inline_size(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.minInlineSize = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_max_inline_size(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.maxInlineSize

///|
pub extern "js" fn CSSPositionTryDescriptors::set_max_inline_size(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.maxInlineSize = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_place_self(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.placeSelf

///|
pub extern "js" fn CSSPositionTryDescriptors::set_place_self(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.placeSelf = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_align_self(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.alignSelf

///|
pub extern "js" fn CSSPositionTryDescriptors::set_align_self(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.alignSelf = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_justify_self(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.justifySelf

///|
pub extern "js" fn CSSPositionTryDescriptors::set_justify_self(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.justifySelf = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_position_anchor(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.positionAnchor

///|
pub extern "js" fn CSSPositionTryDescriptors::set_position_anchor(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.positionAnchor = value }

///|
pub extern "js" fn CSSPositionTryDescriptors::get_position_area(
  self : CSSPositionTryDescriptors,
) -> String =
  #| (self) => self.positionArea

///|
pub extern "js" fn CSSPositionTryDescriptors::set_position_area(
  self : CSSPositionTryDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.positionArea = value }
