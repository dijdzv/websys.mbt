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
}

/// Convert to string value
pub fn ContactProperty::to_string(self : ContactProperty) -> String {
  match self {
    Address => "address"
    Email => "email"
    Icon => "icon"
    Name => "name"
    Tel => "tel"
  }
}

/// Parse from string value
pub fn ContactProperty::from_string(s : String) -> ContactProperty? {
  match s {
    "address" => Some(Address)
    "email" => Some(Email)
    "icon" => Some(Icon)
    "name" => Some(Name)
    "tel" => Some(Tel)
    _ => None
  }
}

///|
/// ContactInfo dictionary
pub struct ContactInfo {
  address : Array[ContactAddress]?
  email : Array[String]?
  icon : Array[Blob]?
  name : Array[String]?
  tel : Array[String]?
}

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

/// Convert to JsValue
pub extern "js" fn ContactInfo::to_js(self : ContactInfo) -> JsValue =
  #| (self) => ({
  #|   address: self.address,
  #|   email: self.email,
  #|   icon: self.icon,
  #|   name: self.name,
  #|   tel: self.tel
  #| })

///|
/// ContactsSelectOptions dictionary
pub struct ContactsSelectOptions {
  multiple : Bool?
}

/// Create a new ContactsSelectOptions with default values
pub fn ContactsSelectOptions::default() -> ContactsSelectOptions {
  ContactsSelectOptions::{
    multiple: None,
  }
}

/// Convert to JsValue
pub extern "js" fn ContactsSelectOptions::to_js(self : ContactsSelectOptions) -> JsValue =
  #| (self) => ({
  #|   multiple: self.multiple
  #| })

///|
/// ContactAddress interface
pub type ContactAddress

pub extern "js" fn ContactAddress::to_js_value(self : ContactAddress) -> JsValue =
  #| (self) => self

pub extern "js" fn ContactAddress::to_j_s_o_n(self : ContactAddress) -> JsValue =
  #| (self) => self.toJSON()

pub extern "js" fn ContactAddress::get_city(self : ContactAddress) -> String =
  #| (self) => self.city

pub extern "js" fn ContactAddress::get_country(self : ContactAddress) -> String =
  #| (self) => self.country

pub extern "js" fn ContactAddress::get_dependent_locality(self : ContactAddress) -> String =
  #| (self) => self.dependentLocality

pub extern "js" fn ContactAddress::get_organization(self : ContactAddress) -> String =
  #| (self) => self.organization

pub extern "js" fn ContactAddress::get_phone(self : ContactAddress) -> String =
  #| (self) => self.phone

pub extern "js" fn ContactAddress::get_postal_code(self : ContactAddress) -> String =
  #| (self) => self.postalCode

pub extern "js" fn ContactAddress::get_recipient(self : ContactAddress) -> String =
  #| (self) => self.recipient

pub extern "js" fn ContactAddress::get_region(self : ContactAddress) -> String =
  #| (self) => self.region

pub extern "js" fn ContactAddress::get_sorting_code(self : ContactAddress) -> String =
  #| (self) => self.sortingCode

pub extern "js" fn ContactAddress::get_address_line(self : ContactAddress) -> JsValue =
  #| (self) => self.addressLine

///|
/// ContactsManager interface
pub type ContactsManager

pub extern "js" fn ContactsManager::to_js_value(self : ContactsManager) -> JsValue =
  #| (self) => self

pub extern "js" fn ContactsManager::get_properties(self : ContactsManager) -> Promise[Array[ContactProperty]] =
  #| (self) => self.getProperties()

pub extern "js" fn ContactsManager::select(self : ContactsManager, properties : Array[ContactProperty]) -> Promise[Array[ContactInfo]] =
  #| (self, properties) => self.select(properties)

pub extern "js" fn ContactsManager::select_with_options(self : ContactsManager, properties : Array[ContactProperty], options : ContactsSelectOptions) -> Promise[Array[ContactInfo]] =
  #| (self, properties, options) => self.select(properties, options)

