// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/digital-goods

///|
/// ItemType enum
pub(all) enum ItemType {
  Product
  Subscription
}

///|
/// Convert to string value
pub fn ItemType::to_string(self : ItemType) -> String {
  match self {
    ItemType::Product => "product"
    ItemType::Subscription => "subscription"
  }
}

///|
/// Parse from string value
pub fn ItemType::from_string(s : String) -> ItemType? {
  match s {
    "product" => Some(ItemType::Product)
    "subscription" => Some(ItemType::Subscription)
    _ => None
  }
}

///|
/// ItemDetails dictionary
pub struct ItemDetails {
  itemId : String
  title : String
  price : PaymentCurrencyAmount
  type_ : ItemType?
  description : String?
  iconURLs : Array[String]?
  subscriptionPeriod : String?
  freeTrialPeriod : String?
  introductoryPrice : PaymentCurrencyAmount?
  introductoryPricePeriod : String?
  introductoryPriceCycles : Int64?
}

///|
/// Create a new ItemDetails with default values
pub fn ItemDetails::default() -> ItemDetails {
  ItemDetails::{
    itemId: "",
    title: "",
    price: panic(),
    type_: None,
    description: None,
    iconURLs: None,
    subscriptionPeriod: None,
    freeTrialPeriod: None,
    introductoryPrice: None,
    introductoryPricePeriod: None,
    introductoryPriceCycles: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn ItemDetails::to_js(self : ItemDetails) -> JsValue =
  #| (self) => ({
  #|   itemId: self.itemId,
  #|   title: self.title,
  #|   price: self.price,
  #|   type: ['product', 'subscription'][self.type_],
  #|   description: self.description,
  #|   iconURLs: self.iconURLs,
  #|   subscriptionPeriod: self.subscriptionPeriod,
  #|   freeTrialPeriod: self.freeTrialPeriod,
  #|   introductoryPrice: self.introductoryPrice,
  #|   introductoryPricePeriod: self.introductoryPricePeriod,
  #|   introductoryPriceCycles: self.introductoryPriceCycles
  #| })

///|
/// PurchaseDetails dictionary
pub struct PurchaseDetails {
  itemId : String
  purchaseToken : String
}

///|
/// Create a new PurchaseDetails with default values
pub fn PurchaseDetails::default() -> PurchaseDetails {
  PurchaseDetails::{ itemId: "", purchaseToken: "" }
}

///|
/// Convert to JsValue
pub extern "js" fn PurchaseDetails::to_js(self : PurchaseDetails) -> JsValue =
  #| (self) => ({
  #|   itemId: self.itemId,
  #|   purchaseToken: self.purchaseToken
  #| })

///|
/// DigitalGoodsService interface
pub type DigitalGoodsService

///|
pub extern "js" fn DigitalGoodsService::to_js_value(
  self : DigitalGoodsService,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn DigitalGoodsService::get_details(
  self : DigitalGoodsService,
  item_ids : Array[String],
) -> Promise[Unit] =
  #| (self, item_ids) => self.getDetails(item_ids)

///|
pub extern "js" fn DigitalGoodsService::list_purchases(
  self : DigitalGoodsService,
) -> Promise[Unit] =
  #| (self) => self.listPurchases()

///|
pub extern "js" fn DigitalGoodsService::list_purchase_history(
  self : DigitalGoodsService,
) -> Promise[Unit] =
  #| (self) => self.listPurchaseHistory()

///|
pub extern "js" fn DigitalGoodsService::consume(
  self : DigitalGoodsService,
  purchase_token : String,
) -> Promise[Unit] =
  #| (self, purchase_token) => self.consume(purchase_token)
