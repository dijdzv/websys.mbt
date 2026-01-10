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
pub struct ScrollOptions {
  behavior : ScrollBehavior?
}

///|
/// Create a new ScrollOptions with default values
pub fn ScrollOptions::default() -> ScrollOptions {
  ScrollOptions::{ behavior: None }
}

///|
/// Convert to JsValue
pub extern "js" fn ScrollOptions::to_js(self : ScrollOptions) -> JsValue =
  #| (self) => ({
  #|   behavior: ['auto', 'instant', 'smooth'][self.behavior]
  #| })

///|
/// ScrollToOptions dictionary
pub struct ScrollToOptions {
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
/// Convert to JsValue
pub extern "js" fn ScrollToOptions::to_js(self : ScrollToOptions) -> JsValue =
  #| (self) => ({
  #|   behavior: ['auto', 'instant', 'smooth'][self.behavior],
  #|   left: self.left,
  #|   top: self.top
  #| })

///|
/// MediaQueryListEventInit dictionary
pub struct MediaQueryListEventInit {
  media : CSSOMString?
  matches : Bool?
}

///|
/// Create a new MediaQueryListEventInit with default values
pub fn MediaQueryListEventInit::default() -> MediaQueryListEventInit {
  MediaQueryListEventInit::{ media: None, matches: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MediaQueryListEventInit::to_js(
  self : MediaQueryListEventInit,
) -> JsValue =
  #| (self) => ({
  #|   media: self.media,
  #|   matches: self.matches
  #| })

///|
/// CaretPositionFromPointOptions dictionary
pub struct CaretPositionFromPointOptions {
  shadowRoots : Array[ShadowRoot]?
}

///|
/// Create a new CaretPositionFromPointOptions with default values
pub fn CaretPositionFromPointOptions::default() -> CaretPositionFromPointOptions {
  CaretPositionFromPointOptions::{ shadowRoots: None }
}

///|
/// Convert to JsValue
pub extern "js" fn CaretPositionFromPointOptions::to_js(
  self : CaretPositionFromPointOptions,
) -> JsValue =
  #| (self) => ({
  #|   shadowRoots: self.shadowRoots
  #| })

///|
/// ScrollIntoViewOptions dictionary
pub struct ScrollIntoViewOptions {
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
/// Convert to JsValue
pub extern "js" fn ScrollIntoViewOptions::to_js(
  self : ScrollIntoViewOptions,
) -> JsValue =
  #| (self) => ({
  #|   behavior: ['auto', 'instant', 'smooth'][self.behavior],
  #|   block: ['start', 'center', 'end', 'nearest'][self.block],
  #|   inline: ['start', 'center', 'end', 'nearest'][self.inline],
  #|   container: ['all', 'nearest'][self.container]
  #| })

///|
/// CheckVisibilityOptions dictionary
pub struct CheckVisibilityOptions {
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
/// Convert to JsValue
pub extern "js" fn CheckVisibilityOptions::to_js(
  self : CheckVisibilityOptions,
) -> JsValue =
  #| (self) => ({
  #|   checkOpacity: self.checkOpacity,
  #|   checkVisibilityCSS: self.checkVisibilityCSS,
  #|   contentVisibilityAuto: self.contentVisibilityAuto,
  #|   opacityProperty: self.opacityProperty,
  #|   visibilityProperty: self.visibilityProperty
  #| })

///|
/// BoxQuadOptions dictionary
pub struct BoxQuadOptions {
  box : CSSBoxType?
  relativeTo : GeometryNode?
}

///|
/// Create a new BoxQuadOptions with default values
pub fn BoxQuadOptions::default() -> BoxQuadOptions {
  BoxQuadOptions::{ box: None, relativeTo: None }
}

///|
/// Convert to JsValue
pub extern "js" fn BoxQuadOptions::to_js(self : BoxQuadOptions) -> JsValue =
  #| (self) => ({
  #|   box: ['margin', 'border', 'padding', 'content'][self.box],
  #|   relativeTo: self.relativeTo.to_js_value()
  #| })

///|
/// ConvertCoordinateOptions dictionary
pub struct ConvertCoordinateOptions {
  fromBox : CSSBoxType?
  toBox : CSSBoxType?
}

///|
/// Create a new ConvertCoordinateOptions with default values
pub fn ConvertCoordinateOptions::default() -> ConvertCoordinateOptions {
  ConvertCoordinateOptions::{ fromBox: None, toBox: None }
}

///|
/// Convert to JsValue
pub extern "js" fn ConvertCoordinateOptions::to_js(
  self : ConvertCoordinateOptions,
) -> JsValue =
  #| (self) => ({
  #|   fromBox: ['margin', 'border', 'padding', 'content'][self.fromBox],
  #|   toBox: ['margin', 'border', 'padding', 'content'][self.toBox]
  #| })

///|
/// MediaQueryList interface
pub type MediaQueryList

///|
pub extern "js" fn MediaQueryList::to_js_value(
  self : MediaQueryList,
) -> JsValue =
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
  #| (self, callback) => self.addListener(callback)

///|
pub extern "js" fn MediaQueryList::remove_listener(
  self : MediaQueryList,
  callback : EventListener?,
) -> Unit =
  #| (self, callback) => self.removeListener(callback)

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
pub extern "js" fn MediaQueryListEvent::new(
  type_ : CSSOMString,
  event_init_dict : MediaQueryListEventInit,
) -> MediaQueryListEvent =
  #| (type_, event_init_dict) => new MediaQueryListEvent(type_, event_init_dict)

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
pub extern "js" fn CaretPosition::get_offset_node(self : CaretPosition) -> Node =
  #| (self) => self.offsetNode

///|
pub extern "js" fn CaretPosition::get_offset(self : CaretPosition) -> Int =
  #| (self) => self.offset

///|
pub extern "js" fn CaretPosition::get_client_rect(
  self : CaretPosition,
) -> DOMRect? =
  #| (self) => self.getClientRect()

///|
/// VisualViewport interface
pub type VisualViewport

///|
pub extern "js" fn VisualViewport::to_js_value(
  self : VisualViewport,
) -> JsValue =
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
