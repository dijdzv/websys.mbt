// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/fenced-frame

///|
/// UrnOrConfig typedef
pub type UrnOrConfig

///|
pub extern "js" fn UrnOrConfig::to_js_value(self : UrnOrConfig) -> JsValue =
  #| (self) => self

///|
/// Create UrnOrConfig from String
pub extern "js" fn UrnOrConfig::from_string(v : String) -> UrnOrConfig =
  #| (v) => v

///|
/// Create UrnOrConfig from FencedFrameConfig
pub extern "js" fn UrnOrConfig::from_fenced_frame_config(
  v : FencedFrameConfig,
) -> UrnOrConfig =
  #| (v) => v

///|
/// Check if this UrnOrConfig is String
pub extern "js" fn UrnOrConfig::is_string(self : UrnOrConfig) -> Bool =
  #| (self) => typeof self === 'string'

///|
/// Check if this UrnOrConfig is FencedFrameConfig
pub extern "js" fn UrnOrConfig::is_fenced_frame_config(
  self : UrnOrConfig,
) -> Bool =
  #| (self) => self instanceof FencedFrameConfig

///|
/// Try to get UrnOrConfig as String
pub extern "js" fn UrnOrConfig::as_string(self : UrnOrConfig) -> String? =
  #| (self) => (typeof self === 'string') ? self : undefined

///|
/// Try to get UrnOrConfig as FencedFrameConfig
pub extern "js" fn UrnOrConfig::as_fenced_frame_config(
  self : UrnOrConfig,
) -> FencedFrameConfig? =
  #| (self) => (self instanceof FencedFrameConfig) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// ReportEventType typedef
pub type ReportEventType

///|
pub extern "js" fn ReportEventType::to_js_value(
  self : ReportEventType,
) -> JsValue =
  #| (self) => self

///|
/// Create ReportEventType from FenceEvent
pub extern "js" fn ReportEventType::from_fence_event(
  v : FenceEvent,
) -> ReportEventType =
  #| (v) => v

///|
/// Create ReportEventType from String
pub extern "js" fn ReportEventType::from_string(v : String) -> ReportEventType =
  #| (v) => v

///|
/// Check if this ReportEventType is FenceEvent
pub extern "js" fn ReportEventType::is_fence_event(
  self : ReportEventType,
) -> Bool =
  #| (self) => typeof self === 'object' && self !== null

///|
/// Check if this ReportEventType is String
pub extern "js" fn ReportEventType::is_string(self : ReportEventType) -> Bool =
  #| (self) => typeof self === 'string'

///|
/// Try to get ReportEventType as FenceEvent
pub extern "js" fn ReportEventType::as_fence_event(
  self : ReportEventType,
) -> FenceEvent? =
  #| (self) => (typeof self === 'object' && self !== null) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get ReportEventType as String
pub extern "js" fn ReportEventType::as_string(
  self : ReportEventType,
) -> String? =
  #| (self) => (typeof self === 'string') ? self : undefined

///|
/// OpaqueProperty enum
pub(all) enum OpaqueProperty {
  Opaque
}

///|
/// Convert to string value
pub fn OpaqueProperty::to_string(self : OpaqueProperty) -> String {
  match self {
    OpaqueProperty::Opaque => "opaque"
  }
}

///|
/// Parse from string value
pub fn OpaqueProperty::from_string(s : String) -> OpaqueProperty? {
  match s {
    "opaque" => Some(OpaqueProperty::Opaque)
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

///|
/// Convert to string value
pub fn FenceReportingDestination::to_string(
  self : FenceReportingDestination,
) -> String {
  match self {
    FenceReportingDestination::Buyer => "buyer"
    FenceReportingDestination::Seller => "seller"
    FenceReportingDestination::ComponentSeller => "component-seller"
    FenceReportingDestination::DirectSeller => "direct-seller"
    FenceReportingDestination::SharedStorageSelectUrl =>
      "shared-storage-select-url"
  }
}

///|
/// Parse from string value
pub fn FenceReportingDestination::from_string(
  s : String,
) -> FenceReportingDestination? {
  match s {
    "buyer" => Some(FenceReportingDestination::Buyer)
    "seller" => Some(FenceReportingDestination::Seller)
    "component-seller" => Some(FenceReportingDestination::ComponentSeller)
    "direct-seller" => Some(FenceReportingDestination::DirectSeller)
    "shared-storage-select-url" =>
      Some(FenceReportingDestination::SharedStorageSelectUrl)
    _ => None
  }
}

///|
/// FenceEvent dictionary
pub(all) struct FenceEvent {
  eventType : String?
  eventData : String?
  destination : Array[FenceReportingDestination]?
  crossOriginExposed : Bool?
  once : Bool?
  destinationURL : String?
}

///|
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

///|
extern "js" fn FenceEvent::to_js_ffi(self : FenceEvent) -> JsValue =
  #| (self) => ({
  #|   eventType: self.eventType,
  #|   eventData: self.eventData,
  #|   destination: ((() => { const v = self.destination; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   crossOriginExposed: (self.crossOriginExposed === -1 ? undefined : self.crossOriginExposed),
  #|   once: (self.once === -1 ? undefined : self.once),
  #|   destinationURL: self.destinationURL
  #| })

///|
/// Convert to JsValue
pub fn FenceEvent::to_js(self : FenceEvent) -> JsValue {
  FenceEvent::to_js_ffi(self)
}

///|
/// HTMLFencedFrameElement interface
pub type HTMLFencedFrameElement

///|
pub extern "js" fn HTMLFencedFrameElement::to_js_value(
  self : HTMLFencedFrameElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLFencedFrameElement (unchecked)
pub extern "js" fn HTMLFencedFrameElement::from_js_value(
  v : JsValue,
) -> HTMLFencedFrameElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLFencedFrameElement (checked with instanceof)
pub extern "js" fn HTMLFencedFrameElement::from_js_value_opt(
  v : JsValue,
) -> HTMLFencedFrameElement? =
  #| (v) => (v instanceof HTMLFencedFrameElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLFencedFrameElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_fenced_frame_element(
  self : JsValue,
) -> HTMLFencedFrameElement? =
  #| (self) => (self instanceof HTMLFencedFrameElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLFencedFrameElement (unchecked)
pub extern "js" fn JsValue::to_html_fenced_frame_element(
  self : JsValue,
) -> HTMLFencedFrameElement =
  #| (self) => self

///|
pub extern "js" fn HTMLFencedFrameElement::to_html_element(
  self : HTMLFencedFrameElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLFencedFrameElement::to_element(
  self : HTMLFencedFrameElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLFencedFrameElement::to_node(
  self : HTMLFencedFrameElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLFencedFrameElement::to_event_target(
  self : HTMLFencedFrameElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLFencedFrameElement::new() -> HTMLFencedFrameElement =
  #| () => new HTMLFencedFrameElement()

///|
pub extern "js" fn HTMLFencedFrameElement::get_config(
  self : HTMLFencedFrameElement,
) -> FencedFrameConfig? =
  #| (self) => (() => { const v = self.config; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLFencedFrameElement::set_config(
  self : HTMLFencedFrameElement,
  value : FencedFrameConfig?,
) -> Unit =
  #| (self, value) => { self.config = (value.$tag === 1 ? value._0 : null) }

///|
pub extern "js" fn HTMLFencedFrameElement::get_width(
  self : HTMLFencedFrameElement,
) -> String =
  #| (self) => self.width

///|
pub extern "js" fn HTMLFencedFrameElement::set_width(
  self : HTMLFencedFrameElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.width = value }

///|
pub extern "js" fn HTMLFencedFrameElement::get_height(
  self : HTMLFencedFrameElement,
) -> String =
  #| (self) => self.height

///|
pub extern "js" fn HTMLFencedFrameElement::set_height(
  self : HTMLFencedFrameElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.height = value }

///|
pub extern "js" fn HTMLFencedFrameElement::get_sandbox(
  self : HTMLFencedFrameElement,
) -> DOMTokenList =
  #| (self) => self.sandbox

///|
pub extern "js" fn HTMLFencedFrameElement::get_allow(
  self : HTMLFencedFrameElement,
) -> String =
  #| (self) => self.allow

///|
pub extern "js" fn HTMLFencedFrameElement::set_allow(
  self : HTMLFencedFrameElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.allow = value }

///|
/// FencedFrameConfig interface
pub type FencedFrameConfig

///|
pub extern "js" fn FencedFrameConfig::to_js_value(
  self : FencedFrameConfig,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to FencedFrameConfig (unchecked)
pub extern "js" fn FencedFrameConfig::from_js_value(
  v : JsValue,
) -> FencedFrameConfig =
  #| (v) => v

///|
/// Safely cast JsValue to FencedFrameConfig (checked with instanceof)
pub extern "js" fn FencedFrameConfig::from_js_value_opt(
  v : JsValue,
) -> FencedFrameConfig? =
  #| (v) => (v instanceof FencedFrameConfig) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to FencedFrameConfig (checked with instanceof)
pub extern "js" fn JsValue::as_fenced_frame_config(
  self : JsValue,
) -> FencedFrameConfig? =
  #| (self) => (self instanceof FencedFrameConfig) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to FencedFrameConfig (unchecked)
pub extern "js" fn JsValue::to_fenced_frame_config(
  self : JsValue,
) -> FencedFrameConfig =
  #| (self) => self

///|
pub extern "js" fn FencedFrameConfig::new(url : String) -> FencedFrameConfig =
  #| (url) => new FencedFrameConfig(url)

///|
pub extern "js" fn FencedFrameConfig::set_shared_storage_context(
  self : FencedFrameConfig,
  context_string : String,
) -> Unit =
  #| (self, context_string) => self.setSharedStorageContext(context_string)

///|
/// Fence interface
pub type Fence

///|
pub extern "js" fn Fence::to_js_value(self : Fence) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Fence (unchecked)
pub extern "js" fn Fence::from_js_value(v : JsValue) -> Fence =
  #| (v) => v

///|
/// Safely cast JsValue to Fence (checked with instanceof)
pub extern "js" fn Fence::from_js_value_opt(v : JsValue) -> Fence? =
  #| (v) => (v instanceof Fence) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Fence (checked with instanceof)
pub extern "js" fn JsValue::as_fence(self : JsValue) -> Fence? =
  #| (self) => (self instanceof Fence) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Fence (unchecked)
pub extern "js" fn JsValue::to_fence(self : JsValue) -> Fence =
  #| (self) => self

///|
pub extern "js" fn Fence::report_event(self : Fence) -> Unit =
  #| (self) => self.reportEvent()

///|
pub extern "js" fn Fence::report_event_with_event(
  self : Fence,
  event : ReportEventType,
) -> Unit =
  #| (self, event) => self.reportEvent(event)

///|
pub extern "js" fn Fence::set_report_event_data_for_automatic_beacons(
  self : Fence,
) -> Unit =
  #| (self) => self.setReportEventDataForAutomaticBeacons()

///|
extern "js" fn Fence::set_report_event_data_for_automatic_beacons_with_event_ffi(
  self : Fence,
  event : JsValue,
) -> Unit =
  #| (self, event) => self.setReportEventDataForAutomaticBeacons(event)

///|
pub fn Fence::set_report_event_data_for_automatic_beacons_with_event(
  self : Fence,
  event : FenceEvent,
) -> Unit {
  Fence::set_report_event_data_for_automatic_beacons_with_event_ffi(
    self,
    event.to_js(),
  )
}

///|
pub extern "js" fn Fence::get_nested_configs(
  self : Fence,
) -> Array[FencedFrameConfig] =
  #| (self) => self.getNestedConfigs()

///|
pub extern "js" fn Fence::disable_untrusted_network(
  self : Fence,
) -> Promise[Unit] =
  #| (self) => self.disableUntrustedNetwork()

///|
pub extern "js" fn Fence::notify_event(self : Fence, event : Event) -> Unit =
  #| (self, event) => self.notifyEvent(event)

///|
pub extern "js" fn Fence::report_event_with_fence_event(
  self : Fence,
  event : FenceEvent,
) -> Unit =
  #| (self, event) => self.reportEvent(event)

///|
pub extern "js" fn Fence::report_event_with_string(
  self : Fence,
  event : String,
) -> Unit =
  #| (self, event) => self.reportEvent(event)
