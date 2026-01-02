// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/fenced-frame

///|
/// UrnOrConfig typedef
pub type UrnOrConfig = JsValue

///|
/// ReportEventType typedef
pub type ReportEventType = JsValue

///|
/// OpaqueProperty enum
pub(all) enum OpaqueProperty {
  Opaque
}

/// Convert to string value
pub fn OpaqueProperty::to_string(self : OpaqueProperty) -> String {
  match self {
    Opaque => "opaque"
  }
}

/// Parse from string value
pub fn OpaqueProperty::from_string(s : String) -> OpaqueProperty? {
  match s {
    "opaque" => Some(Opaque)
    _ => None
  }
}

///|
/// FenceReportingDestination enum
pub(all) enum FenceReportingDestination {
  Buyer
  Seller
  ComponentSeller
  DirectSeller
  SharedStorageSelectUrl
}

/// Convert to string value
pub fn FenceReportingDestination::to_string(self : FenceReportingDestination) -> String {
  match self {
    Buyer => "buyer"
    Seller => "seller"
    ComponentSeller => "component-seller"
    DirectSeller => "direct-seller"
    SharedStorageSelectUrl => "shared-storage-select-url"
  }
}

/// Parse from string value
pub fn FenceReportingDestination::from_string(s : String) -> FenceReportingDestination? {
  match s {
    "buyer" => Some(Buyer)
    "seller" => Some(Seller)
    "component-seller" => Some(ComponentSeller)
    "direct-seller" => Some(DirectSeller)
    "shared-storage-select-url" => Some(SharedStorageSelectUrl)
    _ => None
  }
}

///|
/// FenceEvent dictionary
pub struct FenceEvent {
  eventType : String?
  eventData : String?
  destination : Array[FenceReportingDestination]?
  crossOriginExposed : Bool?
  once : Bool?
  destinationURL : String?
}

/// Create a new FenceEvent with default values
pub fn FenceEvent::default() -> FenceEvent {
  FenceEvent::{
    eventType: None,
    eventData: None,
    destination: None,
    crossOriginExposed: None,
    once: None,
    destinationURL: None,
  }
}

/// Convert to JsValue
pub extern "js" fn FenceEvent::to_js(self : FenceEvent) -> JsValue =
  #| (self) => ({
  #|   eventType: self.eventType,
  #|   eventData: self.eventData,
  #|   destination: self.destination,
  #|   crossOriginExposed: self.crossOriginExposed,
  #|   once: self.once,
  #|   destinationURL: self.destinationURL
  #| })

///|
/// HTMLFencedFrameElement interface
pub type HTMLFencedFrameElement

pub extern "js" fn HTMLFencedFrameElement::to_js_value(self : HTMLFencedFrameElement) -> JsValue =
  #| (self) => self

pub extern "js" fn HTMLFencedFrameElement::new() -> HTMLFencedFrameElement =
  #| () => new HTMLFencedFrameElement()

pub extern "js" fn HTMLFencedFrameElement::get_config(self : HTMLFencedFrameElement) -> FencedFrameConfig? =
  #| (self) => self.config

pub extern "js" fn HTMLFencedFrameElement::set_config(self : HTMLFencedFrameElement, value : FencedFrameConfig?) -> Unit =
  #| (self, value) => { self.config = value }

pub extern "js" fn HTMLFencedFrameElement::get_width(self : HTMLFencedFrameElement) -> String =
  #| (self) => self.width

pub extern "js" fn HTMLFencedFrameElement::set_width(self : HTMLFencedFrameElement, value : String) -> Unit =
  #| (self, value) => { self.width = value }

pub extern "js" fn HTMLFencedFrameElement::get_height(self : HTMLFencedFrameElement) -> String =
  #| (self) => self.height

pub extern "js" fn HTMLFencedFrameElement::set_height(self : HTMLFencedFrameElement, value : String) -> Unit =
  #| (self, value) => { self.height = value }

pub extern "js" fn HTMLFencedFrameElement::get_sandbox(self : HTMLFencedFrameElement) -> DOMTokenList =
  #| (self) => self.sandbox

pub extern "js" fn HTMLFencedFrameElement::get_allow(self : HTMLFencedFrameElement) -> String =
  #| (self) => self.allow

pub extern "js" fn HTMLFencedFrameElement::set_allow(self : HTMLFencedFrameElement, value : String) -> Unit =
  #| (self, value) => { self.allow = value }

///|
/// FencedFrameConfig interface
pub type FencedFrameConfig

pub extern "js" fn FencedFrameConfig::to_js_value(self : FencedFrameConfig) -> JsValue =
  #| (self) => self

pub extern "js" fn FencedFrameConfig::new(url : String) -> FencedFrameConfig =
  #| (url) => new FencedFrameConfig(url)

pub extern "js" fn FencedFrameConfig::set_shared_storage_context(self : FencedFrameConfig, context_string : String) -> Unit =
  #| (self, context_string) => self.setSharedStorageContext(context_string)

///|
/// Fence interface
pub type Fence

pub extern "js" fn Fence::to_js_value(self : Fence) -> JsValue =
  #| (self) => self

pub extern "js" fn Fence::report_event(self : Fence) -> Unit =
  #| (self) => self.reportEvent()

pub extern "js" fn Fence::report_event_with_event(self : Fence, event : ReportEventType) -> Unit =
  #| (self, event) => self.reportEvent(event)

pub extern "js" fn Fence::set_report_event_data_for_automatic_beacons(self : Fence) -> Unit =
  #| (self) => self.setReportEventDataForAutomaticBeacons()

pub extern "js" fn Fence::set_report_event_data_for_automatic_beacons_with_event(self : Fence, event : FenceEvent) -> Unit =
  #| (self, event) => self.setReportEventDataForAutomaticBeacons(event)

pub extern "js" fn Fence::get_nested_configs(self : Fence) -> Array[FencedFrameConfig] =
  #| (self) => self.getNestedConfigs()

pub extern "js" fn Fence::disable_untrusted_network(self : Fence) -> Promise[Unit] =
  #| (self) => self.disableUntrustedNetwork()

pub extern "js" fn Fence::notify_event(self : Fence, event : Event) -> Unit =
  #| (self, event) => self.notifyEvent(event)

