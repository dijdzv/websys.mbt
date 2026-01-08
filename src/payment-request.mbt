// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/payment-request

///|
/// PaymentShippingType enum
pub(all) enum PaymentShippingType {
  Shipping
  Delivery
  Pickup
}

///|
/// Convert to string value
pub fn PaymentShippingType::to_string(self : PaymentShippingType) -> String {
  match self {
    Shipping => "shipping"
    Delivery => "delivery"
    Pickup => "pickup"
  }
}

///|
/// Parse from string value
pub fn PaymentShippingType::from_string(s : String) -> PaymentShippingType? {
  match s {
    "shipping" => Some(Shipping)
    "delivery" => Some(Delivery)
    "pickup" => Some(Pickup)
    _ => None
  }
}

///|
/// PaymentComplete enum
pub(all) enum PaymentComplete {
  Fail
  Success
  Unknown
}

///|
/// Convert to string value
pub fn PaymentComplete::to_string(self : PaymentComplete) -> String {
  match self {
    Fail => "fail"
    Success => "success"
    Unknown => "unknown"
  }
}

///|
/// Parse from string value
pub fn PaymentComplete::from_string(s : String) -> PaymentComplete? {
  match s {
    "fail" => Some(Fail)
    "success" => Some(Success)
    "unknown" => Some(Unknown)
    _ => None
  }
}

///|
/// PaymentMethodData dictionary
pub struct PaymentMethodData {
  supportedMethods : String
  data : JsValue?
}

///|
/// Create a new PaymentMethodData with default values
pub fn PaymentMethodData::default() -> PaymentMethodData {
  PaymentMethodData::{ supportedMethods: "", data: None }
}

///|
/// Convert to JsValue
pub extern "js" fn PaymentMethodData::to_js(
  self : PaymentMethodData,
) -> JsValue =
  #| (self) => ({
  #|   supportedMethods: self.supportedMethods,
  #|   data: self.data
  #| })

///|
/// PaymentCurrencyAmount dictionary
pub struct PaymentCurrencyAmount {
  currency : String
  value : String
}

///|
/// Create a new PaymentCurrencyAmount with default values
pub fn PaymentCurrencyAmount::default() -> PaymentCurrencyAmount {
  PaymentCurrencyAmount::{ currency: "", value: "" }
}

///|
/// Convert to JsValue
pub extern "js" fn PaymentCurrencyAmount::to_js(
  self : PaymentCurrencyAmount,
) -> JsValue =
  #| (self) => ({
  #|   currency: self.currency,
  #|   value: self.value
  #| })

///|
/// PaymentDetailsBase dictionary
pub struct PaymentDetailsBase {
  displayItems : Array[PaymentItem]?
  shippingOptions : Array[PaymentShippingOption]?
  modifiers : Array[PaymentDetailsModifier]?
}

///|
/// Create a new PaymentDetailsBase with default values
pub fn PaymentDetailsBase::default() -> PaymentDetailsBase {
  PaymentDetailsBase::{
    displayItems: None,
    shippingOptions: None,
    modifiers: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn PaymentDetailsBase::to_js(
  self : PaymentDetailsBase,
) -> JsValue =
  #| (self) => ({
  #|   displayItems: self.displayItems,
  #|   shippingOptions: self.shippingOptions,
  #|   modifiers: self.modifiers
  #| })

///|
/// PaymentDetailsInit dictionary
pub struct PaymentDetailsInit {
  displayItems : Array[PaymentItem]?
  shippingOptions : Array[PaymentShippingOption]?
  modifiers : Array[PaymentDetailsModifier]?
  id : String?
  total : PaymentItem
}

///|
/// Create a new PaymentDetailsInit with default values
pub fn PaymentDetailsInit::default() -> PaymentDetailsInit {
  PaymentDetailsInit::{
    displayItems: None,
    shippingOptions: None,
    modifiers: None,
    id: None,
    total: panic(),
  }
}

///|
/// Convert to JsValue
pub extern "js" fn PaymentDetailsInit::to_js(
  self : PaymentDetailsInit,
) -> JsValue =
  #| (self) => ({
  #|   displayItems: self.displayItems,
  #|   shippingOptions: self.shippingOptions,
  #|   modifiers: self.modifiers,
  #|   id: self.id,
  #|   total: self.total
  #| })

///|
/// PaymentDetailsUpdate dictionary
pub struct PaymentDetailsUpdate {
  displayItems : Array[PaymentItem]?
  shippingOptions : Array[PaymentShippingOption]?
  modifiers : Array[PaymentDetailsModifier]?
  error : String?
  total : PaymentItem?
  shippingAddressErrors : AddressErrors?
  payerErrors : PayerErrors?
  paymentMethodErrors : JsValue?
}

///|
/// Create a new PaymentDetailsUpdate with default values
pub fn PaymentDetailsUpdate::default() -> PaymentDetailsUpdate {
  PaymentDetailsUpdate::{
    displayItems: None,
    shippingOptions: None,
    modifiers: None,
    error: None,
    total: None,
    shippingAddressErrors: None,
    payerErrors: None,
    paymentMethodErrors: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn PaymentDetailsUpdate::to_js(
  self : PaymentDetailsUpdate,
) -> JsValue =
  #| (self) => ({
  #|   displayItems: self.displayItems,
  #|   shippingOptions: self.shippingOptions,
  #|   modifiers: self.modifiers,
  #|   error: self.error,
  #|   total: self.total,
  #|   shippingAddressErrors: self.shippingAddressErrors,
  #|   payerErrors: self.payerErrors,
  #|   paymentMethodErrors: self.paymentMethodErrors
  #| })

///|
/// PaymentDetailsModifier dictionary
pub struct PaymentDetailsModifier {
  supportedMethods : String
  total : PaymentItem?
  additionalDisplayItems : Array[PaymentItem]?
  data : JsValue?
}

///|
/// Create a new PaymentDetailsModifier with default values
pub fn PaymentDetailsModifier::default() -> PaymentDetailsModifier {
  PaymentDetailsModifier::{
    supportedMethods: "",
    total: None,
    additionalDisplayItems: None,
    data: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn PaymentDetailsModifier::to_js(
  self : PaymentDetailsModifier,
) -> JsValue =
  #| (self) => ({
  #|   supportedMethods: self.supportedMethods,
  #|   total: self.total,
  #|   additionalDisplayItems: self.additionalDisplayItems,
  #|   data: self.data
  #| })

///|
/// PaymentOptions dictionary
pub struct PaymentOptions {
  requestPayerName : Bool?
  requestBillingAddress : Bool?
  requestPayerEmail : Bool?
  requestPayerPhone : Bool?
  requestShipping : Bool?
  shippingType : PaymentShippingType?
}

///|
/// Create a new PaymentOptions with default values
pub fn PaymentOptions::default() -> PaymentOptions {
  PaymentOptions::{
    requestPayerName: None,
    requestBillingAddress: None,
    requestPayerEmail: None,
    requestPayerPhone: None,
    requestShipping: None,
    shippingType: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn PaymentOptions::to_js(self : PaymentOptions) -> JsValue =
  #| (self) => ({
  #|   requestPayerName: self.requestPayerName,
  #|   requestBillingAddress: self.requestBillingAddress,
  #|   requestPayerEmail: self.requestPayerEmail,
  #|   requestPayerPhone: self.requestPayerPhone,
  #|   requestShipping: self.requestShipping,
  #|   shippingType: ['shipping', 'delivery', 'pickup'][self.shippingType]
  #| })

///|
/// PaymentItem dictionary
pub struct PaymentItem {
  label : String
  amount : PaymentCurrencyAmount
  pending : Bool?
}

///|
/// Create a new PaymentItem with default values
pub fn PaymentItem::default() -> PaymentItem {
  PaymentItem::{ label: "", amount: panic(), pending: None }
}

///|
/// Convert to JsValue
pub extern "js" fn PaymentItem::to_js(self : PaymentItem) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   amount: self.amount,
  #|   pending: self.pending
  #| })

///|
/// PaymentCompleteDetails dictionary
pub struct PaymentCompleteDetails {
  data : Nullable[JsValue]
}

///|
/// Create a new PaymentCompleteDetails with default values
pub fn PaymentCompleteDetails::default() -> PaymentCompleteDetails {
  PaymentCompleteDetails::{ data: Nullable::Undefined }
}

///|
/// Convert to JsValue
pub extern "js" fn PaymentCompleteDetails::to_js(
  self : PaymentCompleteDetails,
) -> JsValue =
  #| (self) => ({
  #|   data: ((() => { const v = self.data; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// PaymentShippingOption dictionary
pub struct PaymentShippingOption {
  id : String
  label : String
  amount : PaymentCurrencyAmount
  selected : Bool?
}

///|
/// Create a new PaymentShippingOption with default values
pub fn PaymentShippingOption::default() -> PaymentShippingOption {
  PaymentShippingOption::{ id: "", label: "", amount: panic(), selected: None }
}

///|
/// Convert to JsValue
pub extern "js" fn PaymentShippingOption::to_js(
  self : PaymentShippingOption,
) -> JsValue =
  #| (self) => ({
  #|   id: self.id,
  #|   label: self.label,
  #|   amount: self.amount,
  #|   selected: self.selected
  #| })

///|
/// PaymentValidationErrors dictionary
pub struct PaymentValidationErrors {
  payer : PayerErrors?
  shippingAddress : AddressErrors?
  error : String?
  paymentMethod : JsValue?
}

///|
/// Create a new PaymentValidationErrors with default values
pub fn PaymentValidationErrors::default() -> PaymentValidationErrors {
  PaymentValidationErrors::{
    payer: None,
    shippingAddress: None,
    error: None,
    paymentMethod: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn PaymentValidationErrors::to_js(
  self : PaymentValidationErrors,
) -> JsValue =
  #| (self) => ({
  #|   payer: self.payer,
  #|   shippingAddress: self.shippingAddress,
  #|   error: self.error,
  #|   paymentMethod: self.paymentMethod
  #| })

///|
/// PayerErrors dictionary
pub struct PayerErrors {
  email : String?
  name : String?
  phone : String?
}

///|
/// Create a new PayerErrors with default values
pub fn PayerErrors::default() -> PayerErrors {
  PayerErrors::{ email: None, name: None, phone: None }
}

///|
/// Convert to JsValue
pub extern "js" fn PayerErrors::to_js(self : PayerErrors) -> JsValue =
  #| (self) => ({
  #|   email: self.email,
  #|   name: self.name,
  #|   phone: self.phone
  #| })

///|
/// AddressErrors dictionary
pub struct AddressErrors {
  addressLine : String?
  city : String?
  country : String?
  dependentLocality : String?
  organization : String?
  phone : String?
  postalCode : String?
  recipient : String?
  region : String?
  sortingCode : String?
}

///|
/// Create a new AddressErrors with default values
pub fn AddressErrors::default() -> AddressErrors {
  AddressErrors::{
    addressLine: None,
    city: None,
    country: None,
    dependentLocality: None,
    organization: None,
    phone: None,
    postalCode: None,
    recipient: None,
    region: None,
    sortingCode: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn AddressErrors::to_js(self : AddressErrors) -> JsValue =
  #| (self) => ({
  #|   addressLine: self.addressLine,
  #|   city: self.city,
  #|   country: self.country,
  #|   dependentLocality: self.dependentLocality,
  #|   organization: self.organization,
  #|   phone: self.phone,
  #|   postalCode: self.postalCode,
  #|   recipient: self.recipient,
  #|   region: self.region,
  #|   sortingCode: self.sortingCode
  #| })

///|
/// PaymentMethodChangeEventInit dictionary
pub struct PaymentMethodChangeEventInit {
  methodName : String?
  methodDetails : Nullable[JsValue]
}

///|
/// Create a new PaymentMethodChangeEventInit with default values
pub fn PaymentMethodChangeEventInit::default() -> PaymentMethodChangeEventInit {
  PaymentMethodChangeEventInit::{
    methodName: None,
    methodDetails: Nullable::Undefined,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn PaymentMethodChangeEventInit::to_js(
  self : PaymentMethodChangeEventInit,
) -> JsValue =
  #| (self) => ({
  #|   methodName: self.methodName,
  #|   methodDetails: ((() => { const v = self.methodDetails; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// PaymentRequestUpdateEventInit dictionary
pub struct PaymentRequestUpdateEventInit {}

///|
/// Create a new PaymentRequestUpdateEventInit with default values
pub fn PaymentRequestUpdateEventInit::default() -> PaymentRequestUpdateEventInit {
  PaymentRequestUpdateEventInit::{  }
}

///|
/// Convert to JsValue
pub extern "js" fn PaymentRequestUpdateEventInit::to_js(
  self : PaymentRequestUpdateEventInit,
) -> JsValue =
  #| (self) => ({
  #| })

///|
/// PaymentRequest interface
pub type PaymentRequest

///|
pub extern "js" fn PaymentRequest::to_js_value(
  self : PaymentRequest,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn PaymentRequest::new(
  method_data : Array[PaymentMethodData],
  details : PaymentDetailsInit,
  options : PaymentOptions,
) -> PaymentRequest =
  #| (method_data, details, options) => new PaymentRequest(method_data, details, options)

///|
pub extern "js" fn PaymentRequest::show(
  self : PaymentRequest,
) -> Promise[PaymentResponse] =
  #| (self) => self.show()

///|
pub extern "js" fn PaymentRequest::show_with_details_promise(
  self : PaymentRequest,
  details_promise : Promise[PaymentDetailsUpdate],
) -> Promise[PaymentResponse] =
  #| (self, details_promise) => self.show(details_promise)

///|
pub extern "js" fn PaymentRequest::abort(
  self : PaymentRequest,
) -> Promise[Unit] =
  #| (self) => self.abort()

///|
pub extern "js" fn PaymentRequest::can_make_payment(
  self : PaymentRequest,
) -> Promise[Bool] =
  #| (self) => self.canMakePayment()

///|
pub extern "js" fn PaymentRequest::get_id(self : PaymentRequest) -> String =
  #| (self) => self.id

///|
pub extern "js" fn PaymentRequest::get_shipping_address(
  self : PaymentRequest,
) -> ContactAddress? =
  #| (self) => self.shippingAddress

///|
pub extern "js" fn PaymentRequest::get_shipping_option(
  self : PaymentRequest,
) -> String? =
  #| (self) => self.shippingOption

///|
pub extern "js" fn PaymentRequest::get_shipping_type(
  self : PaymentRequest,
) -> PaymentShippingType? =
  #| (self) => self.shippingType

///|
pub extern "js" fn PaymentRequest::get_onshippingaddresschange(
  self : PaymentRequest,
) -> EventHandler =
  #| (self) => self.onshippingaddresschange

///|
pub extern "js" fn PaymentRequest::set_onshippingaddresschange(
  self : PaymentRequest,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onshippingaddresschange = value }

///|
pub extern "js" fn PaymentRequest::get_onshippingoptionchange(
  self : PaymentRequest,
) -> EventHandler =
  #| (self) => self.onshippingoptionchange

///|
pub extern "js" fn PaymentRequest::set_onshippingoptionchange(
  self : PaymentRequest,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onshippingoptionchange = value }

///|
pub extern "js" fn PaymentRequest::get_onpaymentmethodchange(
  self : PaymentRequest,
) -> EventHandler =
  #| (self) => self.onpaymentmethodchange

///|
pub extern "js" fn PaymentRequest::set_onpaymentmethodchange(
  self : PaymentRequest,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpaymentmethodchange = value }

///|
pub extern "js" fn PaymentRequest::secure_payment_confirmation_availability() -> Promise[
  SecurePaymentConfirmationAvailability,
] =
  #| () => PaymentRequest.securePaymentConfirmationAvailability()

///|
/// PaymentResponse interface
pub type PaymentResponse

///|
pub extern "js" fn PaymentResponse::to_js_value(
  self : PaymentResponse,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn PaymentResponse::to_j_s_o_n(
  self : PaymentResponse,
) -> JsValue =
  #| (self) => self.toJSON()

///|
pub extern "js" fn PaymentResponse::get_request_id(
  self : PaymentResponse,
) -> String =
  #| (self) => self.requestId

///|
pub extern "js" fn PaymentResponse::get_method_name(
  self : PaymentResponse,
) -> String =
  #| (self) => self.methodName

///|
pub extern "js" fn PaymentResponse::get_details(
  self : PaymentResponse,
) -> JsValue =
  #| (self) => self.details

///|
pub extern "js" fn PaymentResponse::get_shipping_address(
  self : PaymentResponse,
) -> ContactAddress? =
  #| (self) => self.shippingAddress

///|
pub extern "js" fn PaymentResponse::get_shipping_option(
  self : PaymentResponse,
) -> String? =
  #| (self) => self.shippingOption

///|
pub extern "js" fn PaymentResponse::get_payer_name(
  self : PaymentResponse,
) -> String? =
  #| (self) => self.payerName

///|
pub extern "js" fn PaymentResponse::get_payer_email(
  self : PaymentResponse,
) -> String? =
  #| (self) => self.payerEmail

///|
pub extern "js" fn PaymentResponse::get_payer_phone(
  self : PaymentResponse,
) -> String? =
  #| (self) => self.payerPhone

///|
pub extern "js" fn PaymentResponse::complete(
  self : PaymentResponse,
) -> Promise[Unit] =
  #| (self) => self.complete()

///|
pub extern "js" fn PaymentResponse::complete_with_details(
  self : PaymentResponse,
  result : PaymentComplete,
  details : PaymentCompleteDetails,
) -> Promise[Unit] =
  #| (self, result, details) => self.complete(['fail', 'success', 'unknown'][result], details)

///|
pub extern "js" fn PaymentResponse::retry(
  self : PaymentResponse,
) -> Promise[Unit] =
  #| (self) => self.retry()

///|
pub extern "js" fn PaymentResponse::retry_with_error_fields(
  self : PaymentResponse,
  error_fields : PaymentValidationErrors,
) -> Promise[Unit] =
  #| (self, error_fields) => self.retry(error_fields)

///|
pub extern "js" fn PaymentResponse::get_onpayerdetailchange(
  self : PaymentResponse,
) -> EventHandler =
  #| (self) => self.onpayerdetailchange

///|
pub extern "js" fn PaymentResponse::set_onpayerdetailchange(
  self : PaymentResponse,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpayerdetailchange = value }

///|
/// PaymentMethodChangeEvent interface
pub type PaymentMethodChangeEvent

///|
pub extern "js" fn PaymentMethodChangeEvent::to_js_value(
  self : PaymentMethodChangeEvent,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn PaymentMethodChangeEvent::new(
  type_ : String,
  event_init_dict : PaymentRequestUpdateEventInit,
) -> PaymentMethodChangeEvent =
  #| (type_, event_init_dict) => new PaymentMethodChangeEvent(type_, event_init_dict)

///|
pub extern "js" fn PaymentMethodChangeEvent::update_with(
  self : PaymentMethodChangeEvent,
  details_promise : Promise[PaymentDetailsUpdate],
) -> Unit =
  #| (self, details_promise) => self.updateWith(details_promise)

///|
pub extern "js" fn PaymentMethodChangeEvent::get_method_name(
  self : PaymentMethodChangeEvent,
) -> String =
  #| (self) => self.methodName

///|
pub extern "js" fn PaymentMethodChangeEvent::get_method_details(
  self : PaymentMethodChangeEvent,
) -> JsValue? =
  #| (self) => self.methodDetails

///|
/// PaymentRequestUpdateEvent interface
pub type PaymentRequestUpdateEvent

///|
pub extern "js" fn PaymentRequestUpdateEvent::to_js_value(
  self : PaymentRequestUpdateEvent,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn PaymentRequestUpdateEvent::new(
  type_ : String,
  event_init_dict : PaymentRequestUpdateEventInit,
) -> PaymentRequestUpdateEvent =
  #| (type_, event_init_dict) => new PaymentRequestUpdateEvent(type_, event_init_dict)

///|
pub extern "js" fn PaymentRequestUpdateEvent::update_with(
  self : PaymentRequestUpdateEvent,
  details_promise : Promise[PaymentDetailsUpdate],
) -> Unit =
  #| (self, details_promise) => self.updateWith(details_promise)
