// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/cssom-view

///|
/// GeometryNode typedef
pub type GeometryNode

///|
pub extern "js" fn GeometryNode::to_js_value(self : GeometryNode) -> JsValue =
  #| (self) => self

///|
/// Create GeometryNode from Text
pub extern "js" fn GeometryNode::from_text(v : Text) -> GeometryNode =
  #| (v) => v

///|
/// Create GeometryNode from Element
pub extern "js" fn GeometryNode::from_element(v : Element) -> GeometryNode =
  #| (v) => v

///|
/// Create GeometryNode from CSSPseudoElement
pub extern "js" fn GeometryNode::from_c_s_s_pseudo_element(
  v : CSSPseudoElement,
) -> GeometryNode =
  #| (v) => v

///|
/// Create GeometryNode from Document
pub extern "js" fn GeometryNode::from_document(v : Document) -> GeometryNode =
  #| (v) => v

///|
/// Check if this GeometryNode is Text
pub extern "js" fn GeometryNode::is_text(self : GeometryNode) -> Bool =
  #| (self) => self instanceof Text

///|
/// Check if this GeometryNode is Element
pub extern "js" fn GeometryNode::is_element(self : GeometryNode) -> Bool =
  #| (self) => self instanceof Element

///|
/// Check if this GeometryNode is CSSPseudoElement
pub extern "js" fn GeometryNode::is_c_s_s_pseudo_element(
  self : GeometryNode,
) -> Bool =
  #| (self) => self instanceof CSSPseudoElement

///|
/// Check if this GeometryNode is Document
pub extern "js" fn GeometryNode::is_document(self : GeometryNode) -> Bool =
  #| (self) => self instanceof Document

///|
/// Try to get GeometryNode as Text
pub extern "js" fn GeometryNode::as_text(self : GeometryNode) -> Text? =
  #| (self) => (self instanceof Text) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get GeometryNode as Element
pub extern "js" fn GeometryNode::as_element(self : GeometryNode) -> Element? =
  #| (self) => (self instanceof Element) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get GeometryNode as CSSPseudoElement
pub extern "js" fn GeometryNode::as_c_s_s_pseudo_element(
  self : GeometryNode,
) -> CSSPseudoElement? =
  #| (self) => (self instanceof CSSPseudoElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get GeometryNode as Document
pub extern "js" fn GeometryNode::as_document(self : GeometryNode) -> Document? =
  #| (self) => (self instanceof Document) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// ScrollBehavior enum
pub(all) enum ScrollBehavior {
  Auto
  Instant
  Smooth
}

///|
/// Convert to string value
pub fn ScrollBehavior::to_string(self : ScrollBehavior) -> String {
  match self {
    ScrollBehavior::Auto => "auto"
    ScrollBehavior::Instant => "instant"
    ScrollBehavior::Smooth => "smooth"
  }
}

///|
/// Parse from string value
pub fn ScrollBehavior::from_string(s : String) -> ScrollBehavior? {
  match s {
    "auto" => Some(ScrollBehavior::Auto)
    "instant" => Some(ScrollBehavior::Instant)
    "smooth" => Some(ScrollBehavior::Smooth)
    _ => None
  }
}

///|
/// ScrollLogicalPosition enum
pub(all) enum ScrollLogicalPosition {
  Start
  Center
  End
  Nearest
}

///|
/// Convert to string value
pub fn ScrollLogicalPosition::to_string(self : ScrollLogicalPosition) -> String {
  match self {
    ScrollLogicalPosition::Start => "start"
    ScrollLogicalPosition::Center => "center"
    ScrollLogicalPosition::End => "end"
    ScrollLogicalPosition::Nearest => "nearest"
  }
}

///|
/// Parse from string value
pub fn ScrollLogicalPosition::from_string(s : String) -> ScrollLogicalPosition? {
  match s {
    "start" => Some(ScrollLogicalPosition::Start)
    "center" => Some(ScrollLogicalPosition::Center)
    "end" => Some(ScrollLogicalPosition::End)
    "nearest" => Some(ScrollLogicalPosition::Nearest)
    _ => None
  }
}

///|
/// ScrollIntoViewContainer enum
pub(all) enum ScrollIntoViewContainer {
  All
  Nearest
}

///|
/// Convert to string value
pub fn ScrollIntoViewContainer::to_string(
  self : ScrollIntoViewContainer,
) -> String {
  match self {
    ScrollIntoViewContainer::All => "all"
    ScrollIntoViewContainer::Nearest => "nearest"
  }
}

///|
/// Parse from string value
pub fn ScrollIntoViewContainer::from_string(
  s : String,
) -> ScrollIntoViewContainer? {
  match s {
    "all" => Some(ScrollIntoViewContainer::All)
    "nearest" => Some(ScrollIntoViewContainer::Nearest)
    _ => None
  }
}

///|
/// CSSBoxType enum
pub(all) enum CSSBoxType {
  Margin
  Border
  Padding
  Content
}

///|
/// Convert to string value
pub fn CSSBoxType::to_string(self : CSSBoxType) -> String {
  match self {
    CSSBoxType::Margin => "margin"
    CSSBoxType::Border => "border"
    CSSBoxType::Padding => "padding"
    CSSBoxType::Content => "content"
  }
}

///|
/// Parse from string value
pub fn CSSBoxType::from_string(s : String) -> CSSBoxType? {
  match s {
    "margin" => Some(CSSBoxType::Margin)
    "border" => Some(CSSBoxType::Border)
    "padding" => Some(CSSBoxType::Padding)
    "content" => Some(CSSBoxType::Content)
    _ => None
  }
}

///|
/// ScrollOptions dictionary
pub(all) struct ScrollOptions {
  behavior : ScrollBehavior?
}

///|
/// Create a new ScrollOptions with default values
pub fn ScrollOptions::default() -> ScrollOptions {
  ScrollOptions::{ behavior: None }
}

///|
extern "js" fn ScrollOptions::to_js_ffi(self : ScrollOptions) -> JsValue =
  #| (self) => ({
  #|   behavior: ((() => { const v = self.behavior; if (v === undefined) return undefined; return ['auto', 'instant', 'smooth'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn ScrollOptions::to_js(self : ScrollOptions) -> JsValue {
  ScrollOptions::to_js_ffi(self)
}

///|
/// ScrollToOptions dictionary
pub(all) struct ScrollToOptions {
  behavior : ScrollBehavior?
  left : Double?
  top : Double?
}

///|
/// Create a new ScrollToOptions with default values
pub fn ScrollToOptions::default() -> ScrollToOptions {
  ScrollToOptions::{ behavior: None, left: None, top: None }
}

///|
extern "js" fn ScrollToOptions::to_js_ffi(self : ScrollToOptions) -> JsValue =
  #| (self) => ({
  #|   behavior: ((() => { const v = self.behavior; if (v === undefined) return undefined; return ['auto', 'instant', 'smooth'][v]; })()),
  #|   left: self.left,
  #|   top: self.top
  #| })

///|
/// Convert to JsValue
pub fn ScrollToOptions::to_js(self : ScrollToOptions) -> JsValue {
  ScrollToOptions::to_js_ffi(self)
}

///|
/// MediaQueryListEventInit dictionary
pub(all) struct MediaQueryListEventInit {
  media : CSSOMString?
  matches : Bool?
}

///|
/// Create a new MediaQueryListEventInit with default values
pub fn MediaQueryListEventInit::default() -> MediaQueryListEventInit {
  MediaQueryListEventInit::{ media: None, matches: None }
}

///|
extern "js" fn MediaQueryListEventInit::to_js_ffi(
  self : MediaQueryListEventInit,
) -> JsValue =
  #| (self) => ({
  #|   media: ((() => { const v = self.media; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   matches: (self.matches === -1 ? undefined : self.matches)
  #| })

///|
/// Convert to JsValue
pub fn MediaQueryListEventInit::to_js(
  self : MediaQueryListEventInit,
) -> JsValue {
  MediaQueryListEventInit::to_js_ffi(self)
}

///|
/// CaretPositionFromPointOptions dictionary
pub(all) struct CaretPositionFromPointOptions {
  shadowRoots : Array[ShadowRoot]?
}

///|
/// Create a new CaretPositionFromPointOptions with default values
pub fn CaretPositionFromPointOptions::default() -> CaretPositionFromPointOptions {
  CaretPositionFromPointOptions::{ shadowRoots: None }
}

///|
extern "js" fn CaretPositionFromPointOptions::to_js_ffi(
  self : CaretPositionFromPointOptions,
) -> JsValue =
  #| (self) => ({
  #|   shadowRoots: ((() => { const v = self.shadowRoots; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn CaretPositionFromPointOptions::to_js(
  self : CaretPositionFromPointOptions,
) -> JsValue {
  CaretPositionFromPointOptions::to_js_ffi(self)
}

///|
/// ScrollIntoViewOptions dictionary
pub(all) struct ScrollIntoViewOptions {
  behavior : ScrollBehavior?
  block : ScrollLogicalPosition?
  inline : ScrollLogicalPosition?
  container : ScrollIntoViewContainer?
}

///|
/// Create a new ScrollIntoViewOptions with default values
pub fn ScrollIntoViewOptions::default() -> ScrollIntoViewOptions {
  ScrollIntoViewOptions::{
    behavior: None,
    block: None,
    inline: None,
    container: None,
  }
}

///|
extern "js" fn ScrollIntoViewOptions::to_js_ffi(
  self : ScrollIntoViewOptions,
) -> JsValue =
  #| (self) => ({
  #|   behavior: ((() => { const v = self.behavior; if (v === undefined) return undefined; return ['auto', 'instant', 'smooth'][v]; })()),
  #|   block: ((() => { const v = self.block; if (v === undefined) return undefined; return ['start', 'center', 'end', 'nearest'][v]; })()),
  #|   inline: ((() => { const v = self.inline; if (v === undefined) return undefined; return ['start', 'center', 'end', 'nearest'][v]; })()),
  #|   container: ((() => { const v = self.container; if (v === undefined) return undefined; return ['all', 'nearest'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn ScrollIntoViewOptions::to_js(self : ScrollIntoViewOptions) -> JsValue {
  ScrollIntoViewOptions::to_js_ffi(self)
}

///|
/// CheckVisibilityOptions dictionary
pub(all) struct CheckVisibilityOptions {
  checkOpacity : Bool?
  checkVisibilityCSS : Bool?
  contentVisibilityAuto : Bool?
  opacityProperty : Bool?
  visibilityProperty : Bool?
}

///|
/// Create a new CheckVisibilityOptions with default values
pub fn CheckVisibilityOptions::default() -> CheckVisibilityOptions {
  CheckVisibilityOptions::{
    checkOpacity: None,
    checkVisibilityCSS: None,
    contentVisibilityAuto: None,
    opacityProperty: None,
    visibilityProperty: None,
  }
}

///|
extern "js" fn CheckVisibilityOptions::to_js_ffi(
  self : CheckVisibilityOptions,
) -> JsValue =
  #| (self) => ({
  #|   checkOpacity: (self.checkOpacity === -1 ? undefined : self.checkOpacity),
  #|   checkVisibilityCSS: (self.checkVisibilityCSS === -1 ? undefined : self.checkVisibilityCSS),
  #|   contentVisibilityAuto: (self.contentVisibilityAuto === -1 ? undefined : self.contentVisibilityAuto),
  #|   opacityProperty: (self.opacityProperty === -1 ? undefined : self.opacityProperty),
  #|   visibilityProperty: (self.visibilityProperty === -1 ? undefined : self.visibilityProperty)
  #| })

///|
/// Convert to JsValue
pub fn CheckVisibilityOptions::to_js(self : CheckVisibilityOptions) -> JsValue {
  CheckVisibilityOptions::to_js_ffi(self)
}

///|
/// BoxQuadOptions dictionary
pub(all) struct BoxQuadOptions {
  box : CSSBoxType?
  relativeTo : GeometryNode?
}

///|
/// Create a new BoxQuadOptions with default values
pub fn BoxQuadOptions::default() -> BoxQuadOptions {
  BoxQuadOptions::{ box: None, relativeTo: None }
}

///|
extern "js" fn BoxQuadOptions::to_js_ffi(self : BoxQuadOptions) -> JsValue =
  #| (self) => ({
  #|   box: ((() => { const v = self.box; if (v === undefined) return undefined; return ['margin', 'border', 'padding', 'content'][v]; })()),
  #|   relativeTo: ((() => { const v = self.relativeTo; if (v.$tag !== 1) return undefined; return v._0.to_js_value(); })())
  #| })

///|
/// Convert to JsValue
pub fn BoxQuadOptions::to_js(self : BoxQuadOptions) -> JsValue {
  BoxQuadOptions::to_js_ffi(self)
}

///|
/// ConvertCoordinateOptions dictionary
pub(all) struct ConvertCoordinateOptions {
  fromBox : CSSBoxType?
  toBox : CSSBoxType?
}

///|
/// Create a new ConvertCoordinateOptions with default values
pub fn ConvertCoordinateOptions::default() -> ConvertCoordinateOptions {
  ConvertCoordinateOptions::{ fromBox: None, toBox: None }
}

///|
extern "js" fn ConvertCoordinateOptions::to_js_ffi(
  self : ConvertCoordinateOptions,
) -> JsValue =
  #| (self) => ({
  #|   fromBox: ((() => { const v = self.fromBox; if (v === undefined) return undefined; return ['margin', 'border', 'padding', 'content'][v]; })()),
  #|   toBox: ((() => { const v = self.toBox; if (v === undefined) return undefined; return ['margin', 'border', 'padding', 'content'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn ConvertCoordinateOptions::to_js(
  self : ConvertCoordinateOptions,
) -> JsValue {
  ConvertCoordinateOptions::to_js_ffi(self)
}

///|
/// MediaQueryList interface
pub type MediaQueryList

///|
pub extern "js" fn MediaQueryList::to_js_value(
  self : MediaQueryList,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to MediaQueryList (unchecked)
pub extern "js" fn MediaQueryList::from_js_value(v : JsValue) -> MediaQueryList =
  #| (v) => v

///|
/// Safely cast JsValue to MediaQueryList (checked with instanceof)
pub extern "js" fn MediaQueryList::from_js_value_opt(
  v : JsValue,
) -> MediaQueryList? =
  #| (v) => (v instanceof MediaQueryList) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MediaQueryList (checked with instanceof)
pub extern "js" fn JsValue::as_media_query_list(
  self : JsValue,
) -> MediaQueryList? =
  #| (self) => (self instanceof MediaQueryList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MediaQueryList (unchecked)
pub extern "js" fn JsValue::to_media_query_list(
  self : JsValue,
) -> MediaQueryList =
  #| (self) => self

///|
pub extern "js" fn MediaQueryList::to_event_target(
  self : MediaQueryList,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn MediaQueryList::get_media(
  self : MediaQueryList,
) -> CSSOMString =
  #| (self) => self.media

///|
pub extern "js" fn MediaQueryList::get_matches(self : MediaQueryList) -> Bool =
  #| (self) => self.matches

///|
pub extern "js" fn MediaQueryList::add_listener(
  self : MediaQueryList,
  callback : EventListener?,
) -> Unit =
  #| (self, callback) => self.addListener((callback.$tag === 1 ? callback._0 : null))

///|
pub extern "js" fn MediaQueryList::remove_listener(
  self : MediaQueryList,
  callback : EventListener?,
) -> Unit =
  #| (self, callback) => self.removeListener((callback.$tag === 1 ? callback._0 : null))

///|
pub extern "js" fn MediaQueryList::get_onchange(
  self : MediaQueryList,
) -> EventHandler =
  #| (self) => self.onchange

///|
pub extern "js" fn MediaQueryList::set_onchange(
  self : MediaQueryList,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onchange = value }

///|
/// MediaQueryListEvent interface
pub type MediaQueryListEvent

///|
pub extern "js" fn MediaQueryListEvent::to_js_value(
  self : MediaQueryListEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to MediaQueryListEvent (unchecked)
pub extern "js" fn MediaQueryListEvent::from_js_value(
  v : JsValue,
) -> MediaQueryListEvent =
  #| (v) => v

///|
/// Safely cast JsValue to MediaQueryListEvent (checked with instanceof)
pub extern "js" fn MediaQueryListEvent::from_js_value_opt(
  v : JsValue,
) -> MediaQueryListEvent? =
  #| (v) => (v instanceof MediaQueryListEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MediaQueryListEvent (checked with instanceof)
pub extern "js" fn JsValue::as_media_query_list_event(
  self : JsValue,
) -> MediaQueryListEvent? =
  #| (self) => (self instanceof MediaQueryListEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MediaQueryListEvent (unchecked)
pub extern "js" fn JsValue::to_media_query_list_event(
  self : JsValue,
) -> MediaQueryListEvent =
  #| (self) => self

///|
pub extern "js" fn MediaQueryListEvent::to_event(
  self : MediaQueryListEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn MediaQueryListEvent::new(
  type_ : CSSOMString,
) -> MediaQueryListEvent =
  #| (type_) => new MediaQueryListEvent(type_)

///|
extern "js" fn MediaQueryListEvent::new_with_event_init_dict_ffi(
  type_ : CSSOMString,
  event_init_dict : JsValue,
) -> MediaQueryListEvent =
  #| (type_, event_init_dict) => new MediaQueryListEvent(type_, event_init_dict)

///|
pub fn MediaQueryListEvent::new_with_event_init_dict(
  type_ : CSSOMString,
  event_init_dict : MediaQueryListEventInit,
) -> MediaQueryListEvent {
  MediaQueryListEvent::new_with_event_init_dict_ffi(
    type_,
    event_init_dict.to_js(),
  )
}

///|
pub extern "js" fn MediaQueryListEvent::get_media(
  self : MediaQueryListEvent,
) -> CSSOMString =
  #| (self) => self.media

///|
pub extern "js" fn MediaQueryListEvent::get_matches(
  self : MediaQueryListEvent,
) -> Bool =
  #| (self) => self.matches

///|
/// Screen interface
pub type Screen

///|
pub extern "js" fn Screen::to_js_value(self : Screen) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Screen (unchecked)
pub extern "js" fn Screen::from_js_value(v : JsValue) -> Screen =
  #| (v) => v

///|
/// Safely cast JsValue to Screen (checked with instanceof)
pub extern "js" fn Screen::from_js_value_opt(v : JsValue) -> Screen? =
  #| (v) => (v instanceof Screen) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Screen (checked with instanceof)
pub extern "js" fn JsValue::as_screen(self : JsValue) -> Screen? =
  #| (self) => (self instanceof Screen) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Screen (unchecked)
pub extern "js" fn JsValue::to_screen(self : JsValue) -> Screen =
  #| (self) => self

///|
pub extern "js" fn Screen::as_screen_detailed(self : Screen) -> ScreenDetailed? =
  #| (self) => (self instanceof ScreenDetailed) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Screen::get_avail_width(self : Screen) -> Int =
  #| (self) => self.availWidth

///|
pub extern "js" fn Screen::get_avail_height(self : Screen) -> Int =
  #| (self) => self.availHeight

///|
pub extern "js" fn Screen::get_width(self : Screen) -> Int =
  #| (self) => self.width

///|
pub extern "js" fn Screen::get_height(self : Screen) -> Int =
  #| (self) => self.height

///|
pub extern "js" fn Screen::get_color_depth(self : Screen) -> Int =
  #| (self) => self.colorDepth

///|
pub extern "js" fn Screen::get_pixel_depth(self : Screen) -> Int =
  #| (self) => self.pixelDepth

///|
pub extern "js" fn Screen::get_orientation(self : Screen) -> ScreenOrientation =
  #| (self) => self.orientation

///|
pub extern "js" fn Screen::get_is_extended(self : Screen) -> Bool =
  #| (self) => self.isExtended

///|
pub extern "js" fn Screen::get_onchange(self : Screen) -> EventHandler =
  #| (self) => self.onchange

///|
pub extern "js" fn Screen::set_onchange(
  self : Screen,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onchange = value }

///|
/// CaretPosition interface
pub type CaretPosition

///|
pub extern "js" fn CaretPosition::to_js_value(self : CaretPosition) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CaretPosition (unchecked)
pub extern "js" fn CaretPosition::from_js_value(v : JsValue) -> CaretPosition =
  #| (v) => v

///|
/// Safely cast JsValue to CaretPosition (checked with instanceof)
pub extern "js" fn CaretPosition::from_js_value_opt(
  v : JsValue,
) -> CaretPosition? =
  #| (v) => (v instanceof CaretPosition) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CaretPosition (checked with instanceof)
pub extern "js" fn JsValue::as_caret_position(self : JsValue) -> CaretPosition? =
  #| (self) => (self instanceof CaretPosition) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CaretPosition (unchecked)
pub extern "js" fn JsValue::to_caret_position(self : JsValue) -> CaretPosition =
  #| (self) => self

///|
pub extern "js" fn CaretPosition::get_offset_node(self : CaretPosition) -> Node =
  #| (self) => self.offsetNode

///|
pub extern "js" fn CaretPosition::get_offset(self : CaretPosition) -> Int =
  #| (self) => self.offset

///|
pub extern "js" fn CaretPosition::get_client_rect(
  self : CaretPosition,
) -> DOMRect? =
  #| (self) => (() => { const v = self.getClientRect(); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// VisualViewport interface
pub type VisualViewport

///|
pub extern "js" fn VisualViewport::to_js_value(
  self : VisualViewport,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to VisualViewport (unchecked)
pub extern "js" fn VisualViewport::from_js_value(v : JsValue) -> VisualViewport =
  #| (v) => v

///|
/// Safely cast JsValue to VisualViewport (checked with instanceof)
pub extern "js" fn VisualViewport::from_js_value_opt(
  v : JsValue,
) -> VisualViewport? =
  #| (v) => (v instanceof VisualViewport) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to VisualViewport (checked with instanceof)
pub extern "js" fn JsValue::as_visual_viewport(
  self : JsValue,
) -> VisualViewport? =
  #| (self) => (self instanceof VisualViewport) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to VisualViewport (unchecked)
pub extern "js" fn JsValue::to_visual_viewport(
  self : JsValue,
) -> VisualViewport =
  #| (self) => self

///|
pub extern "js" fn VisualViewport::to_event_target(
  self : VisualViewport,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn VisualViewport::get_offset_left(
  self : VisualViewport,
) -> Double =
  #| (self) => self.offsetLeft

///|
pub extern "js" fn VisualViewport::get_offset_top(
  self : VisualViewport,
) -> Double =
  #| (self) => self.offsetTop

///|
pub extern "js" fn VisualViewport::get_page_left(
  self : VisualViewport,
) -> Double =
  #| (self) => self.pageLeft

///|
pub extern "js" fn VisualViewport::get_page_top(
  self : VisualViewport,
) -> Double =
  #| (self) => self.pageTop

///|
pub extern "js" fn VisualViewport::get_width(self : VisualViewport) -> Double =
  #| (self) => self.width

///|
pub extern "js" fn VisualViewport::get_height(self : VisualViewport) -> Double =
  #| (self) => self.height

///|
pub extern "js" fn VisualViewport::get_scale(self : VisualViewport) -> Double =
  #| (self) => self.scale

///|
pub extern "js" fn VisualViewport::get_onresize(
  self : VisualViewport,
) -> EventHandler =
  #| (self) => self.onresize

///|
pub extern "js" fn VisualViewport::set_onresize(
  self : VisualViewport,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onresize = value }

///|
pub extern "js" fn VisualViewport::get_onscroll(
  self : VisualViewport,
) -> EventHandler =
  #| (self) => self.onscroll

///|
pub extern "js" fn VisualViewport::set_onscroll(
  self : VisualViewport,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onscroll = value }

///|
pub extern "js" fn VisualViewport::get_onscrollend(
  self : VisualViewport,
) -> EventHandler =
  #| (self) => self.onscrollend

///|
pub extern "js" fn VisualViewport::set_onscrollend(
  self : VisualViewport,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onscrollend = value }
