// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/payment-request

///|
/// PaymentShippingType enum
pub(all) enum PaymentShippingType {
  Shipping
  Delivery
  Pickup
} derive(Eq, Show)

///|
/// Convert to string value
pub fn PaymentShippingType::to_string(self : PaymentShippingType) -> String {
  match self {
    PaymentShippingType::Shipping => "shipping"
    PaymentShippingType::Delivery => "delivery"
    PaymentShippingType::Pickup => "pickup"
  }
}

///|
/// Parse from string value
pub fn PaymentShippingType::from_string(s : String) -> PaymentShippingType? {
  match s {
    "shipping" => Some(PaymentShippingType::Shipping)
    "delivery" => Some(PaymentShippingType::Delivery)
    "pickup" => Some(PaymentShippingType::Pickup)
    _ => None
  }
}

///|
/// PaymentComplete enum
pub(all) enum PaymentComplete {
  Fail
  Success
  Unknown
} derive(Eq, Show)

///|
/// Convert to string value
pub fn PaymentComplete::to_string(self : PaymentComplete) -> String {
  match self {
    PaymentComplete::Fail => "fail"
    PaymentComplete::Success => "success"
    PaymentComplete::Unknown => "unknown"
  }
}

///|
/// Parse from string value
pub fn PaymentComplete::from_string(s : String) -> PaymentComplete? {
  match s {
    "fail" => Some(PaymentComplete::Fail)
    "success" => Some(PaymentComplete::Success)
    "unknown" => Some(PaymentComplete::Unknown)
    _ => None
  }
}

///|
/// PaymentMethodData dictionary
pub(all) struct PaymentMethodData {
  supportedMethods : String
  data : JsValue?
}

///|
/// Create a new PaymentMethodData with default values
pub fn PaymentMethodData::default() -> PaymentMethodData {
  PaymentMethodData::{ supportedMethods: "", data: None }
}

///|
extern "js" fn PaymentMethodData::to_js_ffi(
  self : PaymentMethodData,
) -> JsValue =
  #| (self) => ({
  #|   supportedMethods: self.supportedMethods,
  #|   data: ((() => { const v = self.data; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn PaymentMethodData::to_js(self : PaymentMethodData) -> JsValue {
  PaymentMethodData::to_js_ffi(self)
}

///|
extern "js" fn PaymentMethodData::from_js_ffi(
  value : JsValue,
) -> PaymentMethodData =
  #| (v) => ({
  #|   supportedMethods: v.supportedMethods,
  #|   data: (v.data === undefined ? { $tag: 0 } : { $tag: 1, _0: v.data })
  #| })

///|
/// Convert from JsValue
pub fn PaymentMethodData::from_js(value : JsValue) -> PaymentMethodData {
  PaymentMethodData::from_js_ffi(value)
}

///|
/// PaymentCurrencyAmount dictionary
pub(all) struct PaymentCurrencyAmount {
  currency : String
  value : String
}

///|
/// Create a new PaymentCurrencyAmount with default values
pub fn PaymentCurrencyAmount::default() -> PaymentCurrencyAmount {
  PaymentCurrencyAmount::{ currency: "", value: "" }
}

///|
extern "js" fn PaymentCurrencyAmount::to_js_ffi(
  self : PaymentCurrencyAmount,
) -> JsValue =
  #| (self) => ({
  #|   currency: self.currency,
  #|   value: self.value
  #| })

///|
/// Convert to JsValue
pub fn PaymentCurrencyAmount::to_js(self : PaymentCurrencyAmount) -> JsValue {
  PaymentCurrencyAmount::to_js_ffi(self)
}

///|
extern "js" fn PaymentCurrencyAmount::from_js_ffi(
  value : JsValue,
) -> PaymentCurrencyAmount =
  #| (v) => ({
  #|   currency: v.currency,
  #|   value: v.value
  #| })

///|
/// Convert from JsValue
pub fn PaymentCurrencyAmount::from_js(value : JsValue) -> PaymentCurrencyAmount {
  PaymentCurrencyAmount::from_js_ffi(value)
}

///|
/// PaymentDetailsBase dictionary
pub(all) struct PaymentDetailsBase {
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
extern "js" fn PaymentDetailsBase::to_js_ffi(
  self : PaymentDetailsBase,
) -> JsValue =
  #| (self) => ({
  #|   displayItems: ((() => { const v = self.displayItems; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   shippingOptions: ((() => { const v = self.shippingOptions; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   modifiers: ((() => { const v = self.modifiers; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn PaymentDetailsBase::to_js(self : PaymentDetailsBase) -> JsValue {
  PaymentDetailsBase::to_js_ffi(self)
}

///|
extern "js" fn PaymentDetailsBase::from_js_ffi(
  value : JsValue,
) -> PaymentDetailsBase =
  #| (v) => ({
  #|   displayItems: (v.displayItems === undefined ? { $tag: 0 } : { $tag: 1, _0: v.displayItems }),
  #|   shippingOptions: (v.shippingOptions === undefined ? { $tag: 0 } : { $tag: 1, _0: v.shippingOptions }),
  #|   modifiers: (v.modifiers === undefined ? { $tag: 0 } : { $tag: 1, _0: v.modifiers })
  #| })

///|
/// Convert from JsValue
pub fn PaymentDetailsBase::from_js(value : JsValue) -> PaymentDetailsBase {
  PaymentDetailsBase::from_js_ffi(value)
}

///|
/// PaymentDetailsInit dictionary
pub(all) struct PaymentDetailsInit {
  displayItems : Array[PaymentItem]?
  shippingOptions : Array[PaymentShippingOption]?
  modifiers : Array[PaymentDetailsModifier]?
  id : String?
  total : PaymentItem
}

///|
/// Create a new PaymentDetailsInit
pub fn PaymentDetailsInit::new(total~ : PaymentItem) -> PaymentDetailsInit {
  PaymentDetailsInit::{
    displayItems: None,
    shippingOptions: None,
    modifiers: None,
    id: None,
    total,
  }
}

///|
extern "js" fn PaymentDetailsInit::to_js_ffi(
  self : PaymentDetailsInit,
) -> JsValue =
  #| (self) => ({
  #|   displayItems: ((() => { const v = self.displayItems; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   shippingOptions: ((() => { const v = self.shippingOptions; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   modifiers: ((() => { const v = self.modifiers; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   id: self.id,
  #|   total: self.total
  #| })

///|
/// Convert to JsValue
pub fn PaymentDetailsInit::to_js(self : PaymentDetailsInit) -> JsValue {
  PaymentDetailsInit::to_js_ffi(self)
}

///|
extern "js" fn PaymentDetailsInit::from_js_ffi(
  value : JsValue,
) -> PaymentDetailsInit =
  #| (v) => ({
  #|   displayItems: (v.displayItems === undefined ? { $tag: 0 } : { $tag: 1, _0: v.displayItems }),
  #|   shippingOptions: (v.shippingOptions === undefined ? { $tag: 0 } : { $tag: 1, _0: v.shippingOptions }),
  #|   modifiers: (v.modifiers === undefined ? { $tag: 0 } : { $tag: 1, _0: v.modifiers }),
  #|   id: v.id,
  #|   total: v.total
  #| })

///|
/// Convert from JsValue
pub fn PaymentDetailsInit::from_js(value : JsValue) -> PaymentDetailsInit {
  PaymentDetailsInit::from_js_ffi(value)
}

///|
/// PaymentDetailsUpdate dictionary
pub(all) struct PaymentDetailsUpdate {
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
extern "js" fn PaymentDetailsUpdate::to_js_ffi(
  self : PaymentDetailsUpdate,
) -> JsValue =
  #| (self) => ({
  #|   displayItems: ((() => { const v = self.displayItems; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   shippingOptions: ((() => { const v = self.shippingOptions; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   modifiers: ((() => { const v = self.modifiers; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   error: self.error,
  #|   total: ((() => { const v = self.total; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   shippingAddressErrors: ((() => { const v = self.shippingAddressErrors; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   payerErrors: ((() => { const v = self.payerErrors; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   paymentMethodErrors: ((() => { const v = self.paymentMethodErrors; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn PaymentDetailsUpdate::to_js(self : PaymentDetailsUpdate) -> JsValue {
  PaymentDetailsUpdate::to_js_ffi(self)
}

///|
extern "js" fn PaymentDetailsUpdate::from_js_ffi(
  value : JsValue,
) -> PaymentDetailsUpdate =
  #| (v) => ({
  #|   displayItems: (v.displayItems === undefined ? { $tag: 0 } : { $tag: 1, _0: v.displayItems }),
  #|   shippingOptions: (v.shippingOptions === undefined ? { $tag: 0 } : { $tag: 1, _0: v.shippingOptions }),
  #|   modifiers: (v.modifiers === undefined ? { $tag: 0 } : { $tag: 1, _0: v.modifiers }),
  #|   error: v.error,
  #|   total: (v.total === undefined ? { $tag: 0 } : { $tag: 1, _0: v.total }),
  #|   shippingAddressErrors: (v.shippingAddressErrors === undefined ? { $tag: 0 } : { $tag: 1, _0: v.shippingAddressErrors }),
  #|   payerErrors: (v.payerErrors === undefined ? { $tag: 0 } : { $tag: 1, _0: v.payerErrors }),
  #|   paymentMethodErrors: (v.paymentMethodErrors === undefined ? { $tag: 0 } : { $tag: 1, _0: v.paymentMethodErrors })
  #| })

///|
/// Convert from JsValue
pub fn PaymentDetailsUpdate::from_js(value : JsValue) -> PaymentDetailsUpdate {
  PaymentDetailsUpdate::from_js_ffi(value)
}

///|
/// PaymentDetailsModifier dictionary
pub(all) struct PaymentDetailsModifier {
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
extern "js" fn PaymentDetailsModifier::to_js_ffi(
  self : PaymentDetailsModifier,
) -> JsValue =
  #| (self) => ({
  #|   supportedMethods: self.supportedMethods,
  #|   total: ((() => { const v = self.total; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   additionalDisplayItems: ((() => { const v = self.additionalDisplayItems; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   data: ((() => { const v = self.data; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn PaymentDetailsModifier::to_js(self : PaymentDetailsModifier) -> JsValue {
  PaymentDetailsModifier::to_js_ffi(self)
}

///|
extern "js" fn PaymentDetailsModifier::from_js_ffi(
  value : JsValue,
) -> PaymentDetailsModifier =
  #| (v) => ({
  #|   supportedMethods: v.supportedMethods,
  #|   total: (v.total === undefined ? { $tag: 0 } : { $tag: 1, _0: v.total }),
  #|   additionalDisplayItems: (v.additionalDisplayItems === undefined ? { $tag: 0 } : { $tag: 1, _0: v.additionalDisplayItems }),
  #|   data: (v.data === undefined ? { $tag: 0 } : { $tag: 1, _0: v.data })
  #| })

///|
/// Convert from JsValue
pub fn PaymentDetailsModifier::from_js(
  value : JsValue,
) -> PaymentDetailsModifier {
  PaymentDetailsModifier::from_js_ffi(value)
}

///|
/// PaymentOptions dictionary
pub(all) struct PaymentOptions {
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
extern "js" fn PaymentOptions::to_js_ffi(self : PaymentOptions) -> JsValue =
  #| (self) => ({
  #|   requestPayerName: (self.requestPayerName === -1 ? undefined : self.requestPayerName),
  #|   requestBillingAddress: (self.requestBillingAddress === -1 ? undefined : self.requestBillingAddress),
  #|   requestPayerEmail: (self.requestPayerEmail === -1 ? undefined : self.requestPayerEmail),
  #|   requestPayerPhone: (self.requestPayerPhone === -1 ? undefined : self.requestPayerPhone),
  #|   requestShipping: (self.requestShipping === -1 ? undefined : self.requestShipping),
  #|   shippingType: ((() => { const v = self.shippingType; if (v === undefined) return undefined; return ['shipping', 'delivery', 'pickup'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn PaymentOptions::to_js(self : PaymentOptions) -> JsValue {
  PaymentOptions::to_js_ffi(self)
}

///|
extern "js" fn PaymentOptions::from_js_ffi(value : JsValue) -> PaymentOptions =
  #| (v) => ({
  #|   requestPayerName: (v.requestPayerName === undefined ? -1 : v.requestPayerName),
  #|   requestBillingAddress: (v.requestBillingAddress === undefined ? -1 : v.requestBillingAddress),
  #|   requestPayerEmail: (v.requestPayerEmail === undefined ? -1 : v.requestPayerEmail),
  #|   requestPayerPhone: (v.requestPayerPhone === undefined ? -1 : v.requestPayerPhone),
  #|   requestShipping: (v.requestShipping === undefined ? -1 : v.requestShipping),
  #|   shippingType: (v.shippingType === undefined ? undefined : ['shipping', 'delivery', 'pickup'].indexOf(v.shippingType))
  #| })

///|
/// Convert from JsValue
pub fn PaymentOptions::from_js(value : JsValue) -> PaymentOptions {
  PaymentOptions::from_js_ffi(value)
}

///|
/// PaymentItem dictionary
pub(all) struct PaymentItem {
  label : String
  amount : PaymentCurrencyAmount
  pending : Bool?
}

///|
/// Create a new PaymentItem
pub fn PaymentItem::new(amount~ : PaymentCurrencyAmount) -> PaymentItem {
  PaymentItem::{ label: "", amount, pending: None }
}

///|
extern "js" fn PaymentItem::to_js_ffi(self : PaymentItem) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   amount: self.amount,
  #|   pending: (self.pending === -1 ? undefined : self.pending)
  #| })

///|
/// Convert to JsValue
pub fn PaymentItem::to_js(self : PaymentItem) -> JsValue {
  PaymentItem::to_js_ffi(self)
}

///|
extern "js" fn PaymentItem::from_js_ffi(value : JsValue) -> PaymentItem =
  #| (v) => ({
  #|   label: v.label,
  #|   amount: v.amount,
  #|   pending: (v.pending === undefined ? -1 : v.pending)
  #| })

///|
/// Convert from JsValue
pub fn PaymentItem::from_js(value : JsValue) -> PaymentItem {
  PaymentItem::from_js_ffi(value)
}

///|
/// PaymentCompleteDetails dictionary
pub(all) struct PaymentCompleteDetails {
  data : Nullable[JsValue]
}

///|
/// Create a new PaymentCompleteDetails with default values
pub fn PaymentCompleteDetails::default() -> PaymentCompleteDetails {
  PaymentCompleteDetails::{ data: Nullable::Undefined }
}

///|
extern "js" fn PaymentCompleteDetails::to_js_ffi(
  self : PaymentCompleteDetails,
) -> JsValue =
  #| (self) => ({
  #|   data: ((() => { const v = self.data; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn PaymentCompleteDetails::to_js(self : PaymentCompleteDetails) -> JsValue {
  PaymentCompleteDetails::to_js_ffi(self)
}

///|
extern "js" fn PaymentCompleteDetails::from_js_ffi(
  value : JsValue,
) -> PaymentCompleteDetails =
  #| (v) => ({
  #|   data: (v.data === undefined ? { $tag: 0 } : v.data === null ? { $tag: 1 } : { $tag: 2, _0: v.data })
  #| })

///|
/// Convert from JsValue
pub fn PaymentCompleteDetails::from_js(
  value : JsValue,
) -> PaymentCompleteDetails {
  PaymentCompleteDetails::from_js_ffi(value)
}

///|
/// PaymentShippingOption dictionary
pub(all) struct PaymentShippingOption {
  id : String
  label : String
  amount : PaymentCurrencyAmount
  selected : Bool?
}

///|
/// Create a new PaymentShippingOption
pub fn PaymentShippingOption::new(
  amount~ : PaymentCurrencyAmount,
) -> PaymentShippingOption {
  PaymentShippingOption::{ id: "", label: "", amount, selected: None }
}

///|
extern "js" fn PaymentShippingOption::to_js_ffi(
  self : PaymentShippingOption,
) -> JsValue =
  #| (self) => ({
  #|   id: self.id,
  #|   label: self.label,
  #|   amount: self.amount,
  #|   selected: (self.selected === -1 ? undefined : self.selected)
  #| })

///|
/// Convert to JsValue
pub fn PaymentShippingOption::to_js(self : PaymentShippingOption) -> JsValue {
  PaymentShippingOption::to_js_ffi(self)
}

///|
extern "js" fn PaymentShippingOption::from_js_ffi(
  value : JsValue,
) -> PaymentShippingOption =
  #| (v) => ({
  #|   id: v.id,
  #|   label: v.label,
  #|   amount: v.amount,
  #|   selected: (v.selected === undefined ? -1 : v.selected)
  #| })

///|
/// Convert from JsValue
pub fn PaymentShippingOption::from_js(value : JsValue) -> PaymentShippingOption {
  PaymentShippingOption::from_js_ffi(value)
}

///|
/// PaymentValidationErrors dictionary
pub(all) struct PaymentValidationErrors {
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
extern "js" fn PaymentValidationErrors::to_js_ffi(
  self : PaymentValidationErrors,
) -> JsValue =
  #| (self) => ({
  #|   payer: ((() => { const v = self.payer; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   shippingAddress: ((() => { const v = self.shippingAddress; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   error: self.error,
  #|   paymentMethod: ((() => { const v = self.paymentMethod; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn PaymentValidationErrors::to_js(
  self : PaymentValidationErrors,
) -> JsValue {
  PaymentValidationErrors::to_js_ffi(self)
}

///|
extern "js" fn PaymentValidationErrors::from_js_ffi(
  value : JsValue,
) -> PaymentValidationErrors =
  #| (v) => ({
  #|   payer: (v.payer === undefined ? { $tag: 0 } : { $tag: 1, _0: v.payer }),
  #|   shippingAddress: (v.shippingAddress === undefined ? { $tag: 0 } : { $tag: 1, _0: v.shippingAddress }),
  #|   error: v.error,
  #|   paymentMethod: (v.paymentMethod === undefined ? { $tag: 0 } : { $tag: 1, _0: v.paymentMethod })
  #| })

///|
/// Convert from JsValue
pub fn PaymentValidationErrors::from_js(
  value : JsValue,
) -> PaymentValidationErrors {
  PaymentValidationErrors::from_js_ffi(value)
}

///|
/// PayerErrors dictionary
pub(all) struct PayerErrors {
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
extern "js" fn PayerErrors::to_js_ffi(self : PayerErrors) -> JsValue =
  #| (self) => ({
  #|   email: self.email,
  #|   name: self.name,
  #|   phone: self.phone
  #| })

///|
/// Convert to JsValue
pub fn PayerErrors::to_js(self : PayerErrors) -> JsValue {
  PayerErrors::to_js_ffi(self)
}

///|
extern "js" fn PayerErrors::from_js_ffi(value : JsValue) -> PayerErrors =
  #| (v) => ({
  #|   email: v.email,
  #|   name: v.name,
  #|   phone: v.phone
  #| })

///|
/// Convert from JsValue
pub fn PayerErrors::from_js(value : JsValue) -> PayerErrors {
  PayerErrors::from_js_ffi(value)
}

///|
/// AddressErrors dictionary
pub(all) struct AddressErrors {
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
extern "js" fn AddressErrors::to_js_ffi(self : AddressErrors) -> JsValue =
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
/// Convert to JsValue
pub fn AddressErrors::to_js(self : AddressErrors) -> JsValue {
  AddressErrors::to_js_ffi(self)
}

///|
extern "js" fn AddressErrors::from_js_ffi(value : JsValue) -> AddressErrors =
  #| (v) => ({
  #|   addressLine: v.addressLine,
  #|   city: v.city,
  #|   country: v.country,
  #|   dependentLocality: v.dependentLocality,
  #|   organization: v.organization,
  #|   phone: v.phone,
  #|   postalCode: v.postalCode,
  #|   recipient: v.recipient,
  #|   region: v.region,
  #|   sortingCode: v.sortingCode
  #| })

///|
/// Convert from JsValue
pub fn AddressErrors::from_js(value : JsValue) -> AddressErrors {
  AddressErrors::from_js_ffi(value)
}

///|
/// PaymentMethodChangeEventInit dictionary
pub(all) struct PaymentMethodChangeEventInit {
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
extern "js" fn PaymentMethodChangeEventInit::to_js_ffi(
  self : PaymentMethodChangeEventInit,
) -> JsValue =
  #| (self) => ({
  #|   methodName: self.methodName,
  #|   methodDetails: ((() => { const v = self.methodDetails; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn PaymentMethodChangeEventInit::to_js(
  self : PaymentMethodChangeEventInit,
) -> JsValue {
  PaymentMethodChangeEventInit::to_js_ffi(self)
}

///|
extern "js" fn PaymentMethodChangeEventInit::from_js_ffi(
  value : JsValue,
) -> PaymentMethodChangeEventInit =
  #| (v) => ({
  #|   methodName: v.methodName,
  #|   methodDetails: (v.methodDetails === undefined ? { $tag: 0 } : v.methodDetails === null ? { $tag: 1 } : { $tag: 2, _0: v.methodDetails })
  #| })

///|
/// Convert from JsValue
pub fn PaymentMethodChangeEventInit::from_js(
  value : JsValue,
) -> PaymentMethodChangeEventInit {
  PaymentMethodChangeEventInit::from_js_ffi(value)
}

///|
/// PaymentRequestUpdateEventInit dictionary
pub(all) struct PaymentRequestUpdateEventInit {}

///|
/// Create a new PaymentRequestUpdateEventInit with default values
pub fn PaymentRequestUpdateEventInit::default() -> PaymentRequestUpdateEventInit {
  PaymentRequestUpdateEventInit::{  }
}

///|
extern "js" fn PaymentRequestUpdateEventInit::to_js_ffi(
  self : PaymentRequestUpdateEventInit,
) -> JsValue =
  #| (self) => ({
  #| })

///|
/// Convert to JsValue
pub fn PaymentRequestUpdateEventInit::to_js(
  self : PaymentRequestUpdateEventInit,
) -> JsValue {
  PaymentRequestUpdateEventInit::to_js_ffi(self)
}

///|
extern "js" fn PaymentRequestUpdateEventInit::from_js_ffi(
  value : JsValue,
) -> PaymentRequestUpdateEventInit =
  #| (v) => ({
  #| })

///|
/// Convert from JsValue
pub fn PaymentRequestUpdateEventInit::from_js(
  value : JsValue,
) -> PaymentRequestUpdateEventInit {
  PaymentRequestUpdateEventInit::from_js_ffi(value)
}

///|
/// PaymentRequest interface
pub type PaymentRequest

///|
pub extern "js" fn PaymentRequest::to_js_value(
  self : PaymentRequest,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PaymentRequest (unchecked)
pub extern "js" fn PaymentRequest::from_js_value(v : JsValue) -> PaymentRequest =
  #| (v) => v

///|
/// Safely cast JsValue to PaymentRequest (checked with instanceof)
pub extern "js" fn PaymentRequest::from_js_value_opt(
  v : JsValue,
) -> PaymentRequest? =
  #| (v) => (v instanceof PaymentRequest) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PaymentRequest (checked with instanceof)
pub extern "js" fn JsValue::as_payment_request(
  self : JsValue,
) -> PaymentRequest? =
  #| (self) => (self instanceof PaymentRequest) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PaymentRequest (unchecked)
pub extern "js" fn JsValue::to_payment_request(
  self : JsValue,
) -> PaymentRequest =
  #| (self) => self

///|
pub extern "js" fn PaymentRequest::to_event_target(
  self : PaymentRequest,
) -> EventTarget =
  #| (self) => self

///|
extern "js" fn PaymentRequest::new_ffi(
  method_data : Array[PaymentMethodData],
  details : JsValue,
) -> PaymentRequest =
  #| (method_data, details) => new PaymentRequest(method_data, details)

///|
pub fn PaymentRequest::new(
  method_data : Array[PaymentMethodData],
  details : PaymentDetailsInit,
) -> PaymentRequest {
  PaymentRequest::new_ffi(method_data, details.to_js())
}

///|
extern "js" fn PaymentRequest::new_with_options_ffi(
  method_data : Array[PaymentMethodData],
  details : JsValue,
  options : JsValue,
) -> PaymentRequest =
  #| (method_data, details, options) => new PaymentRequest(method_data, details, options)

///|
pub fn PaymentRequest::new_with_options(
  method_data : Array[PaymentMethodData],
  details : PaymentDetailsInit,
  options : PaymentOptions,
) -> PaymentRequest {
  PaymentRequest::new_with_options_ffi(
    method_data,
    details.to_js(),
    options.to_js(),
  )
}

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
  #| (self) => (() => { const v = self.shippingAddress; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn PaymentRequest::get_shipping_option(
  self : PaymentRequest,
) -> String? =
  #| (self) => (self.shippingOption) ?? undefined

///|
pub extern "js" fn PaymentRequest::get_shipping_type(
  self : PaymentRequest,
) -> PaymentShippingType? =
  #| (self) => (() => { const v = self.shippingType; return v == null ? undefined : ['shipping', 'delivery', 'pickup'].indexOf(v); })()

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
/// Cast JsValue to PaymentResponse (unchecked)
pub extern "js" fn PaymentResponse::from_js_value(
  v : JsValue,
) -> PaymentResponse =
  #| (v) => v

///|
/// Safely cast JsValue to PaymentResponse (checked with instanceof)
pub extern "js" fn PaymentResponse::from_js_value_opt(
  v : JsValue,
) -> PaymentResponse? =
  #| (v) => (v instanceof PaymentResponse) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PaymentResponse (checked with instanceof)
pub extern "js" fn JsValue::as_payment_response(
  self : JsValue,
) -> PaymentResponse? =
  #| (self) => (self instanceof PaymentResponse) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PaymentResponse (unchecked)
pub extern "js" fn JsValue::to_payment_response(
  self : JsValue,
) -> PaymentResponse =
  #| (self) => self

///|
pub extern "js" fn PaymentResponse::to_event_target(
  self : PaymentResponse,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn PaymentResponse::to_json(self : PaymentResponse) -> JsValue =
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
  #| (self) => (() => { const v = self.shippingAddress; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn PaymentResponse::get_shipping_option(
  self : PaymentResponse,
) -> String? =
  #| (self) => (self.shippingOption) ?? undefined

///|
pub extern "js" fn PaymentResponse::get_payer_name(
  self : PaymentResponse,
) -> String? =
  #| (self) => (self.payerName) ?? undefined

///|
pub extern "js" fn PaymentResponse::get_payer_email(
  self : PaymentResponse,
) -> String? =
  #| (self) => (self.payerEmail) ?? undefined

///|
pub extern "js" fn PaymentResponse::get_payer_phone(
  self : PaymentResponse,
) -> String? =
  #| (self) => (self.payerPhone) ?? undefined

///|
pub extern "js" fn PaymentResponse::complete(
  self : PaymentResponse,
) -> Promise[Unit] =
  #| (self) => self.complete()

///|
extern "js" fn PaymentResponse::complete_with_details_ffi(
  self : PaymentResponse,
  result : PaymentComplete,
  details : JsValue,
) -> Promise[Unit] =
  #| (self, result, details) => self.complete(['fail', 'success', 'unknown'][result], details)

///|
pub fn PaymentResponse::complete_with_details(
  self : PaymentResponse,
  result : PaymentComplete,
  details : PaymentCompleteDetails,
) -> Promise[Unit] {
  PaymentResponse::complete_with_details_ffi(self, result, details.to_js())
}

///|
pub extern "js" fn PaymentResponse::retry(
  self : PaymentResponse,
) -> Promise[Unit] =
  #| (self) => self.retry()

///|
extern "js" fn PaymentResponse::retry_with_error_fields_ffi(
  self : PaymentResponse,
  error_fields : JsValue,
) -> Promise[Unit] =
  #| (self, error_fields) => self.retry(error_fields)

///|
pub fn PaymentResponse::retry_with_error_fields(
  self : PaymentResponse,
  error_fields : PaymentValidationErrors,
) -> Promise[Unit] {
  PaymentResponse::retry_with_error_fields_ffi(self, error_fields.to_js())
}

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
/// Cast JsValue to PaymentMethodChangeEvent (unchecked)
pub extern "js" fn PaymentMethodChangeEvent::from_js_value(
  v : JsValue,
) -> PaymentMethodChangeEvent =
  #| (v) => v

///|
/// Safely cast JsValue to PaymentMethodChangeEvent (checked with instanceof)
pub extern "js" fn PaymentMethodChangeEvent::from_js_value_opt(
  v : JsValue,
) -> PaymentMethodChangeEvent? =
  #| (v) => (v instanceof PaymentMethodChangeEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PaymentMethodChangeEvent (checked with instanceof)
pub extern "js" fn JsValue::as_payment_method_change_event(
  self : JsValue,
) -> PaymentMethodChangeEvent? =
  #| (self) => (self instanceof PaymentMethodChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PaymentMethodChangeEvent (unchecked)
pub extern "js" fn JsValue::to_payment_method_change_event(
  self : JsValue,
) -> PaymentMethodChangeEvent =
  #| (self) => self

///|
pub extern "js" fn PaymentMethodChangeEvent::to_payment_request_update_event(
  self : PaymentMethodChangeEvent,
) -> PaymentRequestUpdateEvent =
  #| (self) => self

///|
pub extern "js" fn PaymentMethodChangeEvent::to_event(
  self : PaymentMethodChangeEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn PaymentMethodChangeEvent::new(
  type_ : String,
) -> PaymentMethodChangeEvent =
  #| (type_) => new PaymentMethodChangeEvent(type_)

///|
extern "js" fn PaymentMethodChangeEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> PaymentMethodChangeEvent =
  #| (type_, event_init_dict) => new PaymentMethodChangeEvent(type_, event_init_dict)

///|
pub fn PaymentMethodChangeEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : PaymentMethodChangeEventInit,
) -> PaymentMethodChangeEvent {
  PaymentMethodChangeEvent::new_with_event_init_dict_ffi(
    type_,
    event_init_dict.to_js(),
  )
}

///|
pub extern "js" fn PaymentMethodChangeEvent::get_method_name(
  self : PaymentMethodChangeEvent,
) -> String =
  #| (self) => self.methodName

///|
pub extern "js" fn PaymentMethodChangeEvent::get_method_details(
  self : PaymentMethodChangeEvent,
) -> JsValue? =
  #| (self) => (() => { const v = self.methodDetails; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// PaymentRequestUpdateEvent interface
pub type PaymentRequestUpdateEvent

///|
pub extern "js" fn PaymentRequestUpdateEvent::to_js_value(
  self : PaymentRequestUpdateEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PaymentRequestUpdateEvent (unchecked)
pub extern "js" fn PaymentRequestUpdateEvent::from_js_value(
  v : JsValue,
) -> PaymentRequestUpdateEvent =
  #| (v) => v

///|
/// Safely cast JsValue to PaymentRequestUpdateEvent (checked with instanceof)
pub extern "js" fn PaymentRequestUpdateEvent::from_js_value_opt(
  v : JsValue,
) -> PaymentRequestUpdateEvent? =
  #| (v) => (v instanceof PaymentRequestUpdateEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PaymentRequestUpdateEvent (checked with instanceof)
pub extern "js" fn JsValue::as_payment_request_update_event(
  self : JsValue,
) -> PaymentRequestUpdateEvent? =
  #| (self) => (self instanceof PaymentRequestUpdateEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PaymentRequestUpdateEvent (unchecked)
pub extern "js" fn JsValue::to_payment_request_update_event(
  self : JsValue,
) -> PaymentRequestUpdateEvent =
  #| (self) => self

///|
pub extern "js" fn PaymentRequestUpdateEvent::to_event(
  self : PaymentRequestUpdateEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn PaymentRequestUpdateEvent::as_payment_method_change_event(
  self : PaymentRequestUpdateEvent,
) -> PaymentMethodChangeEvent? =
  #| (self) => (self instanceof PaymentMethodChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn PaymentRequestUpdateEvent::new(
  type_ : String,
) -> PaymentRequestUpdateEvent =
  #| (type_) => new PaymentRequestUpdateEvent(type_)

///|
extern "js" fn PaymentRequestUpdateEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> PaymentRequestUpdateEvent =
  #| (type_, event_init_dict) => new PaymentRequestUpdateEvent(type_, event_init_dict)

///|
pub fn PaymentRequestUpdateEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : PaymentRequestUpdateEventInit,
) -> PaymentRequestUpdateEvent {
  PaymentRequestUpdateEvent::new_with_event_init_dict_ffi(
    type_,
    event_init_dict.to_js(),
  )
}

///|
pub extern "js" fn PaymentRequestUpdateEvent::update_with(
  self : PaymentRequestUpdateEvent,
  details_promise : Promise[PaymentDetailsUpdate],
) -> Unit =
  #| (self, details_promise) => self.updateWith(details_promise)
