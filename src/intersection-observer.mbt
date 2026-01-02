// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/intersection-observer

/// IntersectionObserverCallback callback interface
pub type IntersectionObserverCallback

///|
/// IntersectionObserverEntryInit dictionary
pub struct IntersectionObserverEntryInit {
  time : DOMHighResTimeStamp
  rootBounds : DOMRectInit?
  boundingClientRect : DOMRectInit
  intersectionRect : DOMRectInit
  isIntersecting : Bool
  isVisible : Bool
  intersectionRatio : Double
  target : Element
}

/// Create a new IntersectionObserverEntryInit with default values
pub fn IntersectionObserverEntryInit::default() -> IntersectionObserverEntryInit {
  IntersectionObserverEntryInit::{
    time: panic(),
    rootBounds: None,
    boundingClientRect: panic(),
    intersectionRect: panic(),
    isIntersecting: false,
    isVisible: false,
    intersectionRatio: 0,
    target: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn IntersectionObserverEntryInit::to_js(self : IntersectionObserverEntryInit) -> JsValue =
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
/// IntersectionObserverInit dictionary
pub struct IntersectionObserverInit {
  root : JsValue?
  rootMargin : String?
  scrollMargin : String?
  threshold : JsValue?
  delay : Int?
  trackVisibility : Bool?
}

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

/// Convert to JsValue
pub extern "js" fn IntersectionObserverInit::to_js(self : IntersectionObserverInit) -> JsValue =
  #| (self) => ({
  #|   root: self.root,
  #|   rootMargin: self.rootMargin,
  #|   scrollMargin: self.scrollMargin,
  #|   threshold: self.threshold,
  #|   delay: self.delay,
  #|   trackVisibility: self.trackVisibility
  #| })

///|
/// IntersectionObserver interface
pub type IntersectionObserver

pub extern "js" fn IntersectionObserver::to_js_value(self : IntersectionObserver) -> JsValue =
  #| (self) => self

pub extern "js" fn IntersectionObserver::new(callback : IntersectionObserverCallback, options : IntersectionObserverInit) -> IntersectionObserver =
  #| (callback, options) => new IntersectionObserver(callback, options)

pub extern "js" fn IntersectionObserver::get_root(self : IntersectionObserver) -> JsValue =
  #| (self) => self.root

pub extern "js" fn IntersectionObserver::get_root_margin(self : IntersectionObserver) -> String =
  #| (self) => self.rootMargin

pub extern "js" fn IntersectionObserver::get_scroll_margin(self : IntersectionObserver) -> String =
  #| (self) => self.scrollMargin

pub extern "js" fn IntersectionObserver::get_thresholds(self : IntersectionObserver) -> JsValue =
  #| (self) => self.thresholds

pub extern "js" fn IntersectionObserver::get_delay(self : IntersectionObserver) -> Int =
  #| (self) => self.delay

pub extern "js" fn IntersectionObserver::get_track_visibility(self : IntersectionObserver) -> Bool =
  #| (self) => self.trackVisibility

pub extern "js" fn IntersectionObserver::observe(self : IntersectionObserver, target : Element) -> Unit =
  #| (self, target) => self.observe(target)

pub extern "js" fn IntersectionObserver::unobserve(self : IntersectionObserver, target : Element) -> Unit =
  #| (self, target) => self.unobserve(target)

pub extern "js" fn IntersectionObserver::disconnect(self : IntersectionObserver) -> Unit =
  #| (self) => self.disconnect()

pub extern "js" fn IntersectionObserver::take_records(self : IntersectionObserver) -> JsValue =
  #| (self) => self.takeRecords()

///|
/// IntersectionObserverEntry interface
pub type IntersectionObserverEntry

pub extern "js" fn IntersectionObserverEntry::to_js_value(self : IntersectionObserverEntry) -> JsValue =
  #| (self) => self

pub extern "js" fn IntersectionObserverEntry::new(intersection_observer_entry_init : IntersectionObserverEntryInit) -> IntersectionObserverEntry =
  #| (intersection_observer_entry_init) => new IntersectionObserverEntry(intersection_observer_entry_init)

pub extern "js" fn IntersectionObserverEntry::get_time(self : IntersectionObserverEntry) -> DOMHighResTimeStamp =
  #| (self) => self.time

pub extern "js" fn IntersectionObserverEntry::get_root_bounds(self : IntersectionObserverEntry) -> DOMRectReadOnly? =
  #| (self) => self.rootBounds

pub extern "js" fn IntersectionObserverEntry::get_bounding_client_rect(self : IntersectionObserverEntry) -> DOMRectReadOnly =
  #| (self) => self.boundingClientRect

pub extern "js" fn IntersectionObserverEntry::get_intersection_rect(self : IntersectionObserverEntry) -> DOMRectReadOnly =
  #| (self) => self.intersectionRect

pub extern "js" fn IntersectionObserverEntry::get_is_intersecting(self : IntersectionObserverEntry) -> Bool =
  #| (self) => self.isIntersecting

pub extern "js" fn IntersectionObserverEntry::get_is_visible(self : IntersectionObserverEntry) -> Bool =
  #| (self) => self.isVisible

pub extern "js" fn IntersectionObserverEntry::get_intersection_ratio(self : IntersectionObserverEntry) -> Double =
  #| (self) => self.intersectionRatio

pub extern "js" fn IntersectionObserverEntry::get_target(self : IntersectionObserverEntry) -> Element =
  #| (self) => self.target

