// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/intersection-observer

///|
/// IntersectionObserverCallback callback interface
pub type IntersectionObserverCallback

///|
/// Create IntersectionObserverCallback from a MoonBit function
pub extern "js" fn IntersectionObserverCallback::from_fn(
  handler : (Array[IntersectionObserverEntry], IntersectionObserver) -> Unit,
) -> IntersectionObserverCallback =
  #| (handler) => (a0, a1) => handler(a0, a1)

///|
/// IntersectionObserverEntryInit dictionary
pub(all) struct IntersectionObserverEntryInit {
  time : DOMHighResTimeStamp
  rootBounds : DOMRectInit?
  boundingClientRect : DOMRectInit
  intersectionRect : DOMRectInit
  isIntersecting : Bool
  isVisible : Bool
  intersectionRatio : Double
  target : Element
}

///|
/// Create a new IntersectionObserverEntryInit
pub fn IntersectionObserverEntryInit::new(
  time~ : DOMHighResTimeStamp,
  boundingClientRect~ : DOMRectInit,
  intersectionRect~ : DOMRectInit,
  target~ : Element,
) -> IntersectionObserverEntryInit {
  IntersectionObserverEntryInit::{
    time,
    rootBounds: None,
    boundingClientRect,
    intersectionRect,
    isIntersecting: false,
    isVisible: false,
    intersectionRatio: 0,
    target,
  }
}

///|
extern "js" fn IntersectionObserverEntryInit::to_js_ffi(
  self : IntersectionObserverEntryInit,
) -> JsValue =
  #| (self) => ({
  #|   time: self.time,
  #|   rootBounds: self.rootBounds,
  #|   boundingClientRect: self.boundingClientRect,
  #|   intersectionRect: self.intersectionRect,
  #|   isIntersecting: self.isIntersecting,
  #|   isVisible: self.isVisible,
  #|   intersectionRatio: self.intersectionRatio,
  #|   target: self.target
  #| })

///|
/// Convert to JsValue
pub fn IntersectionObserverEntryInit::to_js(
  self : IntersectionObserverEntryInit,
) -> JsValue {
  IntersectionObserverEntryInit::to_js_ffi(self)
}

///|
extern "js" fn IntersectionObserverEntryInit::from_js_ffi(
  value : JsValue,
) -> IntersectionObserverEntryInit =
  #| (v) => ({
  #|   time: v.time,
  #|   rootBounds: v.rootBounds,
  #|   boundingClientRect: v.boundingClientRect,
  #|   intersectionRect: v.intersectionRect,
  #|   isIntersecting: v.isIntersecting,
  #|   isVisible: v.isVisible,
  #|   intersectionRatio: v.intersectionRatio,
  #|   target: v.target
  #| })

///|
/// Convert from JsValue
pub fn IntersectionObserverEntryInit::from_js(
  value : JsValue,
) -> IntersectionObserverEntryInit {
  IntersectionObserverEntryInit::from_js_ffi(value)
}

///|
/// IntersectionObserverInit dictionary
pub(all) struct IntersectionObserverInit {
  root : ElementOrDocument?
  rootMargin : String?
  scrollMargin : String?
  threshold : DoubleOrArrayOfDouble?
  delay : Int?
  trackVisibility : Bool?
}

///|
/// Create a new IntersectionObserverInit with default values
pub fn IntersectionObserverInit::default() -> IntersectionObserverInit {
  IntersectionObserverInit::{
    root: None,
    rootMargin: None,
    scrollMargin: None,
    threshold: None,
    delay: None,
    trackVisibility: None,
  }
}

///|
extern "js" fn IntersectionObserverInit::to_js_ffi(
  self : IntersectionObserverInit,
) -> JsValue =
  #| (self) => ({
  #|   root: ((() => { const v = self.root; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   rootMargin: self.rootMargin,
  #|   scrollMargin: self.scrollMargin,
  #|   threshold: ((() => { const v = self.threshold; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   delay: self.delay,
  #|   trackVisibility: (self.trackVisibility === -1 ? undefined : self.trackVisibility)
  #| })

///|
/// Convert to JsValue
pub fn IntersectionObserverInit::to_js(
  self : IntersectionObserverInit,
) -> JsValue {
  IntersectionObserverInit::to_js_ffi(self)
}

///|
extern "js" fn IntersectionObserverInit::from_js_ffi(
  value : JsValue,
) -> IntersectionObserverInit =
  #| (v) => ({
  #|   root: (v.root === undefined ? { $tag: 0 } : { $tag: 1, _0: v.root }),
  #|   rootMargin: v.rootMargin,
  #|   scrollMargin: v.scrollMargin,
  #|   threshold: (v.threshold === undefined ? { $tag: 0 } : { $tag: 1, _0: v.threshold }),
  #|   delay: v.delay,
  #|   trackVisibility: (v.trackVisibility === undefined ? -1 : v.trackVisibility)
  #| })

///|
/// Convert from JsValue
pub fn IntersectionObserverInit::from_js(
  value : JsValue,
) -> IntersectionObserverInit {
  IntersectionObserverInit::from_js_ffi(value)
}

///|
/// IntersectionObserver interface
pub type IntersectionObserver

///|
pub extern "js" fn IntersectionObserver::to_js_value(
  self : IntersectionObserver,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to IntersectionObserver (unchecked)
pub extern "js" fn IntersectionObserver::from_js_value(
  v : JsValue,
) -> IntersectionObserver =
  #| (v) => v

///|
/// Safely cast JsValue to IntersectionObserver (checked with instanceof)
pub extern "js" fn IntersectionObserver::from_js_value_opt(
  v : JsValue,
) -> IntersectionObserver? =
  #| (v) => (v instanceof IntersectionObserver) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to IntersectionObserver (checked with instanceof)
pub extern "js" fn JsValue::as_intersection_observer(
  self : JsValue,
) -> IntersectionObserver? =
  #| (self) => (self instanceof IntersectionObserver) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to IntersectionObserver (unchecked)
pub extern "js" fn JsValue::to_intersection_observer(
  self : JsValue,
) -> IntersectionObserver =
  #| (self) => self

///|
pub extern "js" fn IntersectionObserver::new(
  callback : IntersectionObserverCallback,
) -> IntersectionObserver =
  #| (callback) => new IntersectionObserver(callback)

///|
extern "js" fn IntersectionObserver::new_with_options_ffi(
  callback : IntersectionObserverCallback,
  options : JsValue,
) -> IntersectionObserver =
  #| (callback, options) => new IntersectionObserver(callback, options)

///|
pub fn IntersectionObserver::new_with_options(
  callback : IntersectionObserverCallback,
  options : IntersectionObserverInit,
) -> IntersectionObserver {
  IntersectionObserver::new_with_options_ffi(callback, options.to_js())
}

///|
pub extern "js" fn IntersectionObserver::get_root(
  self : IntersectionObserver,
) -> ElementOrDocument =
  #| (self) => self.root

///|
pub extern "js" fn IntersectionObserver::get_root_margin(
  self : IntersectionObserver,
) -> String =
  #| (self) => self.rootMargin

///|
pub extern "js" fn IntersectionObserver::get_scroll_margin(
  self : IntersectionObserver,
) -> String =
  #| (self) => self.scrollMargin

///|
pub extern "js" fn IntersectionObserver::get_thresholds(
  self : IntersectionObserver,
) -> JsValue =
  #| (self) => self.thresholds

///|
pub extern "js" fn IntersectionObserver::get_delay(
  self : IntersectionObserver,
) -> Int =
  #| (self) => self.delay

///|
pub extern "js" fn IntersectionObserver::get_track_visibility(
  self : IntersectionObserver,
) -> Bool =
  #| (self) => self.trackVisibility

///|
pub extern "js" fn IntersectionObserver::observe(
  self : IntersectionObserver,
  target : Element,
) -> Unit =
  #| (self, target) => self.observe(target)

///|
pub extern "js" fn IntersectionObserver::unobserve(
  self : IntersectionObserver,
  target : Element,
) -> Unit =
  #| (self, target) => self.unobserve(target)

///|
pub extern "js" fn IntersectionObserver::disconnect(
  self : IntersectionObserver,
) -> Unit =
  #| (self) => self.disconnect()

///|
pub extern "js" fn IntersectionObserver::take_records(
  self : IntersectionObserver,
) -> Array[IntersectionObserverEntry] =
  #| (self) => self.takeRecords()

///|
/// IntersectionObserverEntry interface
pub type IntersectionObserverEntry

///|
pub extern "js" fn IntersectionObserverEntry::to_js_value(
  self : IntersectionObserverEntry,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to IntersectionObserverEntry (unchecked)
pub extern "js" fn IntersectionObserverEntry::from_js_value(
  v : JsValue,
) -> IntersectionObserverEntry =
  #| (v) => v

///|
/// Safely cast JsValue to IntersectionObserverEntry (checked with instanceof)
pub extern "js" fn IntersectionObserverEntry::from_js_value_opt(
  v : JsValue,
) -> IntersectionObserverEntry? =
  #| (v) => (v instanceof IntersectionObserverEntry) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to IntersectionObserverEntry (checked with instanceof)
pub extern "js" fn JsValue::as_intersection_observer_entry(
  self : JsValue,
) -> IntersectionObserverEntry? =
  #| (self) => (self instanceof IntersectionObserverEntry) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to IntersectionObserverEntry (unchecked)
pub extern "js" fn JsValue::to_intersection_observer_entry(
  self : JsValue,
) -> IntersectionObserverEntry =
  #| (self) => self

///|
extern "js" fn IntersectionObserverEntry::new_ffi(
  intersection_observer_entry_init : JsValue,
) -> IntersectionObserverEntry =
  #| (intersection_observer_entry_init) => new IntersectionObserverEntry(intersection_observer_entry_init)

///|
pub fn IntersectionObserverEntry::new(
  intersection_observer_entry_init : IntersectionObserverEntryInit,
) -> IntersectionObserverEntry {
  IntersectionObserverEntry::new_ffi(intersection_observer_entry_init.to_js())
}

///|
pub extern "js" fn IntersectionObserverEntry::get_time(
  self : IntersectionObserverEntry,
) -> DOMHighResTimeStamp =
  #| (self) => self.time

///|
pub extern "js" fn IntersectionObserverEntry::get_root_bounds(
  self : IntersectionObserverEntry,
) -> DOMRectReadOnly? =
  #| (self) => (() => { const v = self.rootBounds; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn IntersectionObserverEntry::get_bounding_client_rect(
  self : IntersectionObserverEntry,
) -> DOMRectReadOnly =
  #| (self) => self.boundingClientRect

///|
pub extern "js" fn IntersectionObserverEntry::get_intersection_rect(
  self : IntersectionObserverEntry,
) -> DOMRectReadOnly =
  #| (self) => self.intersectionRect

///|
pub extern "js" fn IntersectionObserverEntry::get_is_intersecting(
  self : IntersectionObserverEntry,
) -> Bool =
  #| (self) => self.isIntersecting

///|
pub extern "js" fn IntersectionObserverEntry::get_is_visible(
  self : IntersectionObserverEntry,
) -> Bool =
  #| (self) => self.isVisible

///|
pub extern "js" fn IntersectionObserverEntry::get_intersection_ratio(
  self : IntersectionObserverEntry,
) -> Double =
  #| (self) => self.intersectionRatio

///|
pub extern "js" fn IntersectionObserverEntry::get_target(
  self : IntersectionObserverEntry,
) -> Element =
  #| (self) => self.target
