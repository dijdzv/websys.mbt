// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/payment-handler

///|
/// PaymentDelegation enum
pub(all) enum PaymentDelegation {
  ShippingAddress
  PayerName
  PayerPhone
  PayerEmail
}

///|
/// Convert to string value
pub fn PaymentDelegation::to_string(self : PaymentDelegation) -> String {
  match self {
    ShippingAddress => "shippingAddress"
    PayerName => "payerName"
    PayerPhone => "payerPhone"
    PayerEmail => "payerEmail"
  }
}

///|
/// Parse from string value
pub fn PaymentDelegation::from_string(s : String) -> PaymentDelegation? {
  match s {
    "shippingAddress" => Some(ShippingAddress)
    "payerName" => Some(PayerName)
    "payerPhone" => Some(PayerPhone)
    "payerEmail" => Some(PayerEmail)
    _ => None
  }
}

///|
/// PaymentRequestDetailsUpdate dictionary
pub struct PaymentRequestDetailsUpdate {
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
/// Convert to JsValue
pub extern "js" fn PaymentRequestDetailsUpdate::to_js(
  self : PaymentRequestDetailsUpdate,
) -> JsValue =
  #| (self) => ({
  #|   error: self.error,
  #|   total: self.total,
  #|   modifiers: self.modifiers,
  #|   shippingOptions: self.shippingOptions,
  #|   paymentMethodErrors: self.paymentMethodErrors,
  #|   shippingAddressErrors: self.shippingAddressErrors
  #| })

///|
/// PaymentRequestEventInit dictionary
pub struct PaymentRequestEventInit {
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
/// Convert to JsValue
pub extern "js" fn PaymentRequestEventInit::to_js(
  self : PaymentRequestEventInit,
) -> JsValue =
  #| (self) => ({
  #|   topOrigin: self.topOrigin,
  #|   paymentRequestOrigin: self.paymentRequestOrigin,
  #|   paymentRequestId: self.paymentRequestId,
  #|   methodData: self.methodData,
  #|   total: self.total,
  #|   modifiers: self.modifiers,
  #|   paymentOptions: self.paymentOptions,
  #|   shippingOptions: self.shippingOptions
  #| })

///|
/// PaymentHandlerResponse dictionary
pub struct PaymentHandlerResponse {
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
/// Convert to JsValue
pub extern "js" fn PaymentHandlerResponse::to_js(
  self : PaymentHandlerResponse,
) -> JsValue =
  #| (self) => ({
  #|   methodName: self.methodName,
  #|   details: self.details,
  #|   payerName: ((() => { const v = self.payerName; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   payerEmail: ((() => { const v = self.payerEmail; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   payerPhone: ((() => { const v = self.payerPhone; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   shippingAddress: self.shippingAddress,
  #|   shippingOption: ((() => { const v = self.shippingOption; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// AddressInit dictionary
pub struct AddressInit {
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
/// Convert to JsValue
pub extern "js" fn AddressInit::to_js(self : AddressInit) -> JsValue =
  #| (self) => ({
  #|   country: self.country,
  #|   addressLine: self.addressLine,
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
/// PaymentManager interface
pub type PaymentManager

///|
pub extern "js" fn PaymentManager::to_js_value(
  self : PaymentManager,
) -> JsValue =
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
pub extern "js" fn PaymentRequestEvent::new(
  type_ : String,
  event_init_dict : PaymentRequestEventInit,
) -> PaymentRequestEvent =
  #| (type_, event_init_dict) => new PaymentRequestEvent(type_, event_init_dict)

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
) -> JsValue =
  #| (self) => self.methodData

///|
pub extern "js" fn PaymentRequestEvent::get_total(
  self : PaymentRequestEvent,
) -> JsValue =
  #| (self) => self.total

///|
pub extern "js" fn PaymentRequestEvent::get_modifiers(
  self : PaymentRequestEvent,
) -> JsValue =
  #| (self) => self.modifiers

///|
pub extern "js" fn PaymentRequestEvent::get_payment_options(
  self : PaymentRequestEvent,
) -> JsValue? =
  #| (self) => self.paymentOptions

///|
pub extern "js" fn PaymentRequestEvent::get_shipping_options(
  self : PaymentRequestEvent,
) -> JsValue? =
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
  #| (self, method_name, method_details) => self.changePaymentMethod(method_name, method_details)

///|
pub extern "js" fn PaymentRequestEvent::change_shipping_address(
  self : PaymentRequestEvent,
) -> Promise[PaymentRequestDetailsUpdate?] =
  #| (self) => self.changeShippingAddress()

///|
pub extern "js" fn PaymentRequestEvent::change_shipping_address_with_shipping_address(
  self : PaymentRequestEvent,
  shipping_address : AddressInit,
) -> Promise[PaymentRequestDetailsUpdate?] =
  #| (self, shipping_address) => self.changeShippingAddress(shipping_address)

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
