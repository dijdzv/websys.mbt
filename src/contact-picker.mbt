// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/contact-picker

///|
/// ContactProperty enum
pub(all) enum ContactProperty {
  Address
  Email
  Icon
  Name
  Tel
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn ContactProperty::to_string(self : ContactProperty) -> String {
  match self {
    ContactProperty::Address => "address"
    ContactProperty::Email => "email"
    ContactProperty::Icon => "icon"
    ContactProperty::Name => "name"
    ContactProperty::Tel => "tel"
  }
}

///|
/// Parse from string value
pub fn ContactProperty::from_string(s : String) -> ContactProperty? {
  match s {
    "address" => Some(ContactProperty::Address)
    "email" => Some(ContactProperty::Email)
    "icon" => Some(ContactProperty::Icon)
    "name" => Some(ContactProperty::Name)
    "tel" => Some(ContactProperty::Tel)
    _ => None
  }
}

///|
/// ContactInfo dictionary
pub(all) struct ContactInfo {
  address : FixedArray[ContactAddress]?
  email : FixedArray[String]?
  icon : FixedArray[Blob]?
  name : FixedArray[String]?
  tel : FixedArray[String]?
}

///|
/// Create a new ContactInfo with default values
pub fn ContactInfo::default() -> ContactInfo {
  ContactInfo::{
    address: None,
    email: None,
    icon: None,
    name: None,
    tel: None,
  }
}

///|
extern "js" fn ContactInfo::to_js_ffi(self : ContactInfo) -> JsValue =
  #| (self) => ({
  #|   address: self.address,
  #|   email: self.email,
  #|   icon: self.icon,
  #|   name: self.name,
  #|   tel: self.tel
  #| })

///|
/// Convert to JsValue
pub fn ContactInfo::to_js(self : ContactInfo) -> JsValue {
  ContactInfo::to_js_ffi(self)
}

///|
extern "js" fn ContactInfo::from_js_ffi(value : JsValue) -> ContactInfo =
  #| (v) => ({
  #|   address: v.address,
  #|   email: v.email,
  #|   icon: v.icon,
  #|   name: v.name,
  #|   tel: v.tel
  #| })

///|
/// Convert from JsValue
pub fn ContactInfo::from_js(value : JsValue) -> ContactInfo {
  ContactInfo::from_js_ffi(value)
}

///|
/// ContactsSelectOptions dictionary
pub(all) struct ContactsSelectOptions {
  multiple : Bool?
}

///|
/// Create a new ContactsSelectOptions with default values
pub fn ContactsSelectOptions::default() -> ContactsSelectOptions {
  ContactsSelectOptions::{ multiple: None, }
}

///|
extern "js" fn ContactsSelectOptions::to_js_ffi(
  self : ContactsSelectOptions,
) -> JsValue =
  #| (self) => ({
  #|   multiple: (self.multiple === -1 ? undefined : self.multiple)
  #| })

///|
/// Convert to JsValue
pub fn ContactsSelectOptions::to_js(self : ContactsSelectOptions) -> JsValue {
  ContactsSelectOptions::to_js_ffi(self)
}

///|
extern "js" fn ContactsSelectOptions::from_js_ffi(
  value : JsValue,
) -> ContactsSelectOptions =
  #| (v) => ({
  #|   multiple: (v.multiple === undefined ? -1 : v.multiple)
  #| })

///|
/// Convert from JsValue
pub fn ContactsSelectOptions::from_js(value : JsValue) -> ContactsSelectOptions {
  ContactsSelectOptions::from_js_ffi(value)
}

///|
/// ContactAddress interface
pub type ContactAddress

///|
pub extern "js" fn ContactAddress::to_js_value(
  self : ContactAddress,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ContactAddress (unchecked)
pub extern "js" fn ContactAddress::from_js_value(v : JsValue) -> ContactAddress =
  #| (v) => v

///|
/// Safely cast JsValue to ContactAddress (checked with instanceof)
pub extern "js" fn ContactAddress::from_js_value_opt(
  v : JsValue,
) -> ContactAddress? =
  #| (v) => (v instanceof ContactAddress) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ContactAddress (checked with instanceof)
pub extern "js" fn JsValue::as_contact_address(
  self : JsValue,
) -> ContactAddress? =
  #| (self) => (self instanceof ContactAddress) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ContactAddress (unchecked)
pub extern "js" fn JsValue::to_contact_address(
  self : JsValue,
) -> ContactAddress =
  #| (self) => self

///|
pub extern "js" fn ContactAddress::to_json(self : ContactAddress) -> JsValue =
  #| (self) => self.toJSON()

///|
pub extern "js" fn ContactAddress::get_city(self : ContactAddress) -> String =
  #| (self) => self.city

///|
pub extern "js" fn ContactAddress::get_country(self : ContactAddress) -> String =
  #| (self) => self.country

///|
pub extern "js" fn ContactAddress::get_dependent_locality(
  self : ContactAddress,
) -> String =
  #| (self) => self.dependentLocality

///|
pub extern "js" fn ContactAddress::get_organization(
  self : ContactAddress,
) -> String =
  #| (self) => self.organization

///|
pub extern "js" fn ContactAddress::get_phone(self : ContactAddress) -> String =
  #| (self) => self.phone

///|
pub extern "js" fn ContactAddress::get_postal_code(
  self : ContactAddress,
) -> String =
  #| (self) => self.postalCode

///|
pub extern "js" fn ContactAddress::get_recipient(
  self : ContactAddress,
) -> String =
  #| (self) => self.recipient

///|
pub extern "js" fn ContactAddress::get_region(self : ContactAddress) -> String =
  #| (self) => self.region

///|
pub extern "js" fn ContactAddress::get_sorting_code(
  self : ContactAddress,
) -> String =
  #| (self) => self.sortingCode

///|
pub extern "js" fn ContactAddress::get_address_line(
  self : ContactAddress,
) -> FixedArray[String] =
  #| (self) => self.addressLine

///|
/// ContactsManager interface
pub type ContactsManager

///|
pub extern "js" fn ContactsManager::to_js_value(
  self : ContactsManager,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ContactsManager (unchecked)
pub extern "js" fn ContactsManager::from_js_value(
  v : JsValue,
) -> ContactsManager =
  #| (v) => v

///|
/// Safely cast JsValue to ContactsManager (checked with instanceof)
pub extern "js" fn ContactsManager::from_js_value_opt(
  v : JsValue,
) -> ContactsManager? =
  #| (v) => (v instanceof ContactsManager) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ContactsManager (checked with instanceof)
pub extern "js" fn JsValue::as_contacts_manager(
  self : JsValue,
) -> ContactsManager? =
  #| (self) => (self instanceof ContactsManager) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ContactsManager (unchecked)
pub extern "js" fn JsValue::to_contacts_manager(
  self : JsValue,
) -> ContactsManager =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum ContactsManagerSelectError {
  TypeError(JsError)
  SecurityError(JsError)
  InvalidStateError(JsError)
  OtherError(JsError)
} derive(Debug)

///|
pub extern "js" fn ContactsManager::get_properties(
  self : ContactsManager,
) -> Promise[FixedArray[ContactProperty]] =
  #| (self) => self.getProperties()

///|
pub extern "js" fn ContactsManager::select(
  self : ContactsManager,
  properties : FixedArray[ContactProperty],
) -> Promise[Result[FixedArray[ContactInfo], ContactsManagerSelectError]] =
  #| (self, properties) => self.select(properties).then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'SecurityError') return { $tag: 1, _0: e }; if (n === 'InvalidStateError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }))

///|
extern "js" fn ContactsManager::select_with_options_ffi(
  self : ContactsManager,
  properties : FixedArray[ContactProperty],
  options : JsValue,
) -> Promise[Result[FixedArray[ContactInfo], ContactsManagerSelectError]] =
  #| (self, properties, options) => self.select(properties, options).then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'SecurityError') return { $tag: 1, _0: e }; if (n === 'InvalidStateError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }))

///|
pub fn ContactsManager::select_with_options(
  self : ContactsManager,
  properties : FixedArray[ContactProperty],
  options : ContactsSelectOptions,
) -> Promise[Result[FixedArray[ContactInfo], ContactsManagerSelectError]] {
  ContactsManager::select_with_options_ffi(self, properties, options.to_js())
}
