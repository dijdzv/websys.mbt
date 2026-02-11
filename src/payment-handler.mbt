// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/payment-handler

///|
/// PaymentDelegation enum
pub(all) enum PaymentDelegation {
  ShippingAddress
  PayerName
  PayerPhone
  PayerEmail
} derive(Eq, Show)

///|
/// Convert to string value
pub fn PaymentDelegation::to_string(self : PaymentDelegation) -> String {
  match self {
    PaymentDelegation::ShippingAddress => "shippingAddress"
    PaymentDelegation::PayerName => "payerName"
    PaymentDelegation::PayerPhone => "payerPhone"
    PaymentDelegation::PayerEmail => "payerEmail"
  }
}

///|
/// Parse from string value
pub fn PaymentDelegation::from_string(s : String) -> PaymentDelegation? {
  match s {
    "shippingAddress" => Some(PaymentDelegation::ShippingAddress)
    "payerName" => Some(PaymentDelegation::PayerName)
    "payerPhone" => Some(PaymentDelegation::PayerPhone)
    "payerEmail" => Some(PaymentDelegation::PayerEmail)
    _ => None
  }
}

///|
/// PaymentRequestDetailsUpdate dictionary
pub(all) struct PaymentRequestDetailsUpdate {
  error : String?
  total : PaymentCurrencyAmount?
  modifiers : Array[PaymentDetailsModifier]?
  shippingOptions : Array[PaymentShippingOption]?
  paymentMethodErrors : JsValue?
  shippingAddressErrors : AddressErrors?
}

///|
/// Create a new PaymentRequestDetailsUpdate with default values
pub fn PaymentRequestDetailsUpdate::default() -> PaymentRequestDetailsUpdate {
  PaymentRequestDetailsUpdate::{
    error: None,
    total: None,
    modifiers: None,
    shippingOptions: None,
    paymentMethodErrors: None,
    shippingAddressErrors: None,
  }
}

///|
extern "js" fn PaymentRequestDetailsUpdate::to_js_ffi(
  self : PaymentRequestDetailsUpdate,
) -> JsValue =
  #| (self) => ({
  #|   error: self.error,
  #|   total: ((() => { const v = self.total; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   modifiers: ((() => { const v = self.modifiers; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   shippingOptions: ((() => { const v = self.shippingOptions; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   paymentMethodErrors: ((() => { const v = self.paymentMethodErrors; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   shippingAddressErrors: ((() => { const v = self.shippingAddressErrors; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn PaymentRequestDetailsUpdate::to_js(
  self : PaymentRequestDetailsUpdate,
) -> JsValue {
  PaymentRequestDetailsUpdate::to_js_ffi(self)
}

///|
extern "js" fn PaymentRequestDetailsUpdate::from_js_ffi(
  value : JsValue,
) -> PaymentRequestDetailsUpdate =
  #| (v) => ({
  #|   error: v.error,
  #|   total: (v.total === undefined ? { $tag: 0 } : { $tag: 1, _0: v.total }),
  #|   modifiers: (v.modifiers === undefined ? { $tag: 0 } : { $tag: 1, _0: v.modifiers }),
  #|   shippingOptions: (v.shippingOptions === undefined ? { $tag: 0 } : { $tag: 1, _0: v.shippingOptions }),
  #|   paymentMethodErrors: (v.paymentMethodErrors === undefined ? { $tag: 0 } : { $tag: 1, _0: v.paymentMethodErrors }),
  #|   shippingAddressErrors: (v.shippingAddressErrors === undefined ? { $tag: 0 } : { $tag: 1, _0: v.shippingAddressErrors })
  #| })

///|
/// Convert from JsValue
pub fn PaymentRequestDetailsUpdate::from_js(
  value : JsValue,
) -> PaymentRequestDetailsUpdate {
  PaymentRequestDetailsUpdate::from_js_ffi(value)
}

///|
/// PaymentRequestEventInit dictionary
pub(all) struct PaymentRequestEventInit {
  topOrigin : String?
  paymentRequestOrigin : String?
  paymentRequestId : String?
  methodData : Array[PaymentMethodData]?
  total : PaymentCurrencyAmount?
  modifiers : Array[PaymentDetailsModifier]?
  paymentOptions : PaymentOptions?
  shippingOptions : Array[PaymentShippingOption]?
}

///|
/// Create a new PaymentRequestEventInit with default values
pub fn PaymentRequestEventInit::default() -> PaymentRequestEventInit {
  PaymentRequestEventInit::{
    topOrigin: None,
    paymentRequestOrigin: None,
    paymentRequestId: None,
    methodData: None,
    total: None,
    modifiers: None,
    paymentOptions: None,
    shippingOptions: None,
  }
}

///|
extern "js" fn PaymentRequestEventInit::to_js_ffi(
  self : PaymentRequestEventInit,
) -> JsValue =
  #| (self) => ({
  #|   topOrigin: self.topOrigin,
  #|   paymentRequestOrigin: self.paymentRequestOrigin,
  #|   paymentRequestId: self.paymentRequestId,
  #|   methodData: ((() => { const v = self.methodData; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   total: ((() => { const v = self.total; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   modifiers: ((() => { const v = self.modifiers; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   paymentOptions: ((() => { const v = self.paymentOptions; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   shippingOptions: ((() => { const v = self.shippingOptions; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn PaymentRequestEventInit::to_js(
  self : PaymentRequestEventInit,
) -> JsValue {
  PaymentRequestEventInit::to_js_ffi(self)
}

///|
extern "js" fn PaymentRequestEventInit::from_js_ffi(
  value : JsValue,
) -> PaymentRequestEventInit =
  #| (v) => ({
  #|   topOrigin: v.topOrigin,
  #|   paymentRequestOrigin: v.paymentRequestOrigin,
  #|   paymentRequestId: v.paymentRequestId,
  #|   methodData: (v.methodData === undefined ? { $tag: 0 } : { $tag: 1, _0: v.methodData }),
  #|   total: (v.total === undefined ? { $tag: 0 } : { $tag: 1, _0: v.total }),
  #|   modifiers: (v.modifiers === undefined ? { $tag: 0 } : { $tag: 1, _0: v.modifiers }),
  #|   paymentOptions: (v.paymentOptions === undefined ? { $tag: 0 } : { $tag: 1, _0: v.paymentOptions }),
  #|   shippingOptions: (v.shippingOptions === undefined ? { $tag: 0 } : { $tag: 1, _0: v.shippingOptions })
  #| })

///|
/// Convert from JsValue
pub fn PaymentRequestEventInit::from_js(
  value : JsValue,
) -> PaymentRequestEventInit {
  PaymentRequestEventInit::from_js_ffi(value)
}

///|
/// PaymentHandlerResponse dictionary
pub(all) struct PaymentHandlerResponse {
  methodName : String?
  details : JsValue?
  payerName : Nullable[String]
  payerEmail : Nullable[String]
  payerPhone : Nullable[String]
  shippingAddress : AddressInit?
  shippingOption : Nullable[String]
}

///|
/// Create a new PaymentHandlerResponse with default values
pub fn PaymentHandlerResponse::default() -> PaymentHandlerResponse {
  PaymentHandlerResponse::{
    methodName: None,
    details: None,
    payerName: Nullable::Undefined,
    payerEmail: Nullable::Undefined,
    payerPhone: Nullable::Undefined,
    shippingAddress: None,
    shippingOption: Nullable::Undefined,
  }
}

///|
extern "js" fn PaymentHandlerResponse::to_js_ffi(
  self : PaymentHandlerResponse,
) -> JsValue =
  #| (self) => ({
  #|   methodName: self.methodName,
  #|   details: ((() => { const v = self.details; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   payerName: ((() => { const v = self.payerName; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   payerEmail: ((() => { const v = self.payerEmail; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   payerPhone: ((() => { const v = self.payerPhone; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   shippingAddress: ((() => { const v = self.shippingAddress; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   shippingOption: ((() => { const v = self.shippingOption; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn PaymentHandlerResponse::to_js(self : PaymentHandlerResponse) -> JsValue {
  PaymentHandlerResponse::to_js_ffi(self)
}

///|
extern "js" fn PaymentHandlerResponse::from_js_ffi(
  value : JsValue,
) -> PaymentHandlerResponse =
  #| (v) => ({
  #|   methodName: v.methodName,
  #|   details: (v.details === undefined ? { $tag: 0 } : { $tag: 1, _0: v.details }),
  #|   payerName: (v.payerName === undefined ? { $tag: 0 } : v.payerName === null ? { $tag: 1 } : { $tag: 2, _0: v.payerName }),
  #|   payerEmail: (v.payerEmail === undefined ? { $tag: 0 } : v.payerEmail === null ? { $tag: 1 } : { $tag: 2, _0: v.payerEmail }),
  #|   payerPhone: (v.payerPhone === undefined ? { $tag: 0 } : v.payerPhone === null ? { $tag: 1 } : { $tag: 2, _0: v.payerPhone }),
  #|   shippingAddress: (v.shippingAddress === undefined ? { $tag: 0 } : { $tag: 1, _0: v.shippingAddress }),
  #|   shippingOption: (v.shippingOption === undefined ? { $tag: 0 } : v.shippingOption === null ? { $tag: 1 } : { $tag: 2, _0: v.shippingOption })
  #| })

///|
/// Convert from JsValue
pub fn PaymentHandlerResponse::from_js(
  value : JsValue,
) -> PaymentHandlerResponse {
  PaymentHandlerResponse::from_js_ffi(value)
}

///|
/// AddressInit dictionary
pub(all) struct AddressInit {
  country : String?
  addressLine : Array[String]?
  region : String?
  city : String?
  dependentLocality : String?
  postalCode : String?
  sortingCode : String?
  organization : String?
  recipient : String?
  phone : String?
}

///|
/// Create a new AddressInit with default values
pub fn AddressInit::default() -> AddressInit {
  AddressInit::{
    country: None,
    addressLine: None,
    region: None,
    city: None,
    dependentLocality: None,
    postalCode: None,
    sortingCode: None,
    organization: None,
    recipient: None,
    phone: None,
  }
}

///|
extern "js" fn AddressInit::to_js_ffi(self : AddressInit) -> JsValue =
  #| (self) => ({
  #|   country: self.country,
  #|   addressLine: ((() => { const v = self.addressLine; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   region: self.region,
  #|   city: self.city,
  #|   dependentLocality: self.dependentLocality,
  #|   postalCode: self.postalCode,
  #|   sortingCode: self.sortingCode,
  #|   organization: self.organization,
  #|   recipient: self.recipient,
  #|   phone: self.phone
  #| })

///|
/// Convert to JsValue
pub fn AddressInit::to_js(self : AddressInit) -> JsValue {
  AddressInit::to_js_ffi(self)
}

///|
extern "js" fn AddressInit::from_js_ffi(value : JsValue) -> AddressInit =
  #| (v) => ({
  #|   country: v.country,
  #|   addressLine: (v.addressLine === undefined ? { $tag: 0 } : { $tag: 1, _0: v.addressLine }),
  #|   region: v.region,
  #|   city: v.city,
  #|   dependentLocality: v.dependentLocality,
  #|   postalCode: v.postalCode,
  #|   sortingCode: v.sortingCode,
  #|   organization: v.organization,
  #|   recipient: v.recipient,
  #|   phone: v.phone
  #| })

///|
/// Convert from JsValue
pub fn AddressInit::from_js(value : JsValue) -> AddressInit {
  AddressInit::from_js_ffi(value)
}

///|
/// PaymentManager interface
pub type PaymentManager

///|
pub extern "js" fn PaymentManager::to_js_value(
  self : PaymentManager,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PaymentManager (unchecked)
pub extern "js" fn PaymentManager::from_js_value(v : JsValue) -> PaymentManager =
  #| (v) => v

///|
/// Safely cast JsValue to PaymentManager (checked with instanceof)
pub extern "js" fn PaymentManager::from_js_value_opt(
  v : JsValue,
) -> PaymentManager? =
  #| (v) => (v instanceof PaymentManager) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PaymentManager (checked with instanceof)
pub extern "js" fn JsValue::as_payment_manager(
  self : JsValue,
) -> PaymentManager? =
  #| (self) => (self instanceof PaymentManager) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PaymentManager (unchecked)
pub extern "js" fn JsValue::to_payment_manager(
  self : JsValue,
) -> PaymentManager =
  #| (self) => self

///|
pub extern "js" fn PaymentManager::get_user_hint(
  self : PaymentManager,
) -> String =
  #| (self) => self.userHint

///|
pub extern "js" fn PaymentManager::set_user_hint(
  self : PaymentManager,
  value : String,
) -> Unit =
  #| (self, value) => { self.userHint = value }

///|
pub extern "js" fn PaymentManager::enable_delegations(
  self : PaymentManager,
  delegations : Array[PaymentDelegation],
) -> Promise[Unit] =
  #| (self, delegations) => self.enableDelegations(delegations)

///|
/// CanMakePaymentEvent interface
pub type CanMakePaymentEvent

///|
pub extern "js" fn CanMakePaymentEvent::to_js_value(
  self : CanMakePaymentEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CanMakePaymentEvent (unchecked)
pub extern "js" fn CanMakePaymentEvent::from_js_value(
  v : JsValue,
) -> CanMakePaymentEvent =
  #| (v) => v

///|
/// Safely cast JsValue to CanMakePaymentEvent (checked with instanceof)
pub extern "js" fn CanMakePaymentEvent::from_js_value_opt(
  v : JsValue,
) -> CanMakePaymentEvent? =
  #| (v) => (v instanceof CanMakePaymentEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CanMakePaymentEvent (checked with instanceof)
pub extern "js" fn JsValue::as_can_make_payment_event(
  self : JsValue,
) -> CanMakePaymentEvent? =
  #| (self) => (self instanceof CanMakePaymentEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CanMakePaymentEvent (unchecked)
pub extern "js" fn JsValue::to_can_make_payment_event(
  self : JsValue,
) -> CanMakePaymentEvent =
  #| (self) => self

///|
pub extern "js" fn CanMakePaymentEvent::to_extendable_event(
  self : CanMakePaymentEvent,
) -> ExtendableEvent =
  #| (self) => self

///|
pub extern "js" fn CanMakePaymentEvent::to_event(
  self : CanMakePaymentEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn CanMakePaymentEvent::new(
  type_ : String,
) -> CanMakePaymentEvent =
  #| (type_) => new CanMakePaymentEvent(type_)

///|
pub extern "js" fn CanMakePaymentEvent::respond_with(
  self : CanMakePaymentEvent,
  can_make_payment_response : Promise[Bool],
) -> Unit =
  #| (self, can_make_payment_response) => self.respondWith(can_make_payment_response)

///|
/// PaymentRequestEvent interface
pub type PaymentRequestEvent

///|
pub extern "js" fn PaymentRequestEvent::to_js_value(
  self : PaymentRequestEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PaymentRequestEvent (unchecked)
pub extern "js" fn PaymentRequestEvent::from_js_value(
  v : JsValue,
) -> PaymentRequestEvent =
  #| (v) => v

///|
/// Safely cast JsValue to PaymentRequestEvent (checked with instanceof)
pub extern "js" fn PaymentRequestEvent::from_js_value_opt(
  v : JsValue,
) -> PaymentRequestEvent? =
  #| (v) => (v instanceof PaymentRequestEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PaymentRequestEvent (checked with instanceof)
pub extern "js" fn JsValue::as_payment_request_event(
  self : JsValue,
) -> PaymentRequestEvent? =
  #| (self) => (self instanceof PaymentRequestEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PaymentRequestEvent (unchecked)
pub extern "js" fn JsValue::to_payment_request_event(
  self : JsValue,
) -> PaymentRequestEvent =
  #| (self) => self

///|
pub extern "js" fn PaymentRequestEvent::to_extendable_event(
  self : PaymentRequestEvent,
) -> ExtendableEvent =
  #| (self) => self

///|
pub extern "js" fn PaymentRequestEvent::to_event(
  self : PaymentRequestEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn PaymentRequestEvent::new(
  type_ : String,
) -> PaymentRequestEvent =
  #| (type_) => new PaymentRequestEvent(type_)

///|
extern "js" fn PaymentRequestEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> PaymentRequestEvent =
  #| (type_, event_init_dict) => new PaymentRequestEvent(type_, event_init_dict)

///|
pub fn PaymentRequestEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : PaymentRequestEventInit,
) -> PaymentRequestEvent {
  PaymentRequestEvent::new_with_event_init_dict_ffi(
    type_,
    event_init_dict.to_js(),
  )
}

///|
pub extern "js" fn PaymentRequestEvent::get_top_origin(
  self : PaymentRequestEvent,
) -> String =
  #| (self) => self.topOrigin

///|
pub extern "js" fn PaymentRequestEvent::get_payment_request_origin(
  self : PaymentRequestEvent,
) -> String =
  #| (self) => self.paymentRequestOrigin

///|
pub extern "js" fn PaymentRequestEvent::get_payment_request_id(
  self : PaymentRequestEvent,
) -> String =
  #| (self) => self.paymentRequestId

///|
pub extern "js" fn PaymentRequestEvent::get_method_data(
  self : PaymentRequestEvent,
) -> Array[PaymentMethodData] =
  #| (self) => self.methodData

///|
pub extern "js" fn PaymentRequestEvent::get_total(
  self : PaymentRequestEvent,
) -> JsValue =
  #| (self) => self.total

///|
pub extern "js" fn PaymentRequestEvent::get_modifiers(
  self : PaymentRequestEvent,
) -> Array[PaymentDetailsModifier] =
  #| (self) => self.modifiers

///|
pub extern "js" fn PaymentRequestEvent::get_payment_options(
  self : PaymentRequestEvent,
) -> JsValue? =
  #| (self) => (() => { const v = self.paymentOptions; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn PaymentRequestEvent::get_shipping_options(
  self : PaymentRequestEvent,
) -> Array[PaymentShippingOption] =
  #| (self) => self.shippingOptions

///|
pub extern "js" fn PaymentRequestEvent::open_window(
  self : PaymentRequestEvent,
  url : String,
) -> Promise[WindowClient?] =
  #| (self, url) => self.openWindow(url)

///|
pub extern "js" fn PaymentRequestEvent::change_payment_method(
  self : PaymentRequestEvent,
  method_name : String,
) -> Promise[PaymentRequestDetailsUpdate?] =
  #| (self, method_name) => self.changePaymentMethod(method_name)

///|
pub extern "js" fn PaymentRequestEvent::change_payment_method_with_method_details(
  self : PaymentRequestEvent,
  method_name : String,
  method_details : JsValue?,
) -> Promise[PaymentRequestDetailsUpdate?] =
  #| (self, method_name, method_details) => self.changePaymentMethod(method_name, (method_details.$tag === 1 ? method_details._0 : null))

///|
pub extern "js" fn PaymentRequestEvent::change_shipping_address(
  self : PaymentRequestEvent,
) -> Promise[PaymentRequestDetailsUpdate?] =
  #| (self) => self.changeShippingAddress()

///|
extern "js" fn PaymentRequestEvent::change_shipping_address_with_shipping_address_ffi(
  self : PaymentRequestEvent,
  shipping_address : JsValue,
) -> Promise[PaymentRequestDetailsUpdate?] =
  #| (self, shipping_address) => self.changeShippingAddress(shipping_address)

///|
pub fn PaymentRequestEvent::change_shipping_address_with_shipping_address(
  self : PaymentRequestEvent,
  shipping_address : AddressInit,
) -> Promise[PaymentRequestDetailsUpdate?] {
  PaymentRequestEvent::change_shipping_address_with_shipping_address_ffi(
    self,
    shipping_address.to_js(),
  )
}

///|
pub extern "js" fn PaymentRequestEvent::change_shipping_option(
  self : PaymentRequestEvent,
  shipping_option : String,
) -> Promise[PaymentRequestDetailsUpdate?] =
  #| (self, shipping_option) => self.changeShippingOption(shipping_option)

///|
pub extern "js" fn PaymentRequestEvent::respond_with(
  self : PaymentRequestEvent,
  handler_response_promise : Promise[PaymentHandlerResponse],
) -> Unit =
  #| (self, handler_response_promise) => self.respondWith(handler_response_promise)
