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
pub(all) struct ItemDetails {
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
/// Create a new ItemDetails
pub fn ItemDetails::new(price~ : PaymentCurrencyAmount) -> ItemDetails {
  ItemDetails::{
    itemId: "",
    title: "",
    price,
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
extern "js" fn ItemDetails::to_js_ffi(self : ItemDetails) -> JsValue =
  #| (self) => ({
  #|   itemId: self.itemId,
  #|   title: self.title,
  #|   price: self.price,
  #|   type: ((() => { const v = self.type_; if (v === undefined) return undefined; return ['product', 'subscription'][v]; })()),
  #|   description: self.description,
  #|   iconURLs: ((() => { const v = self.iconURLs; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   subscriptionPeriod: self.subscriptionPeriod,
  #|   freeTrialPeriod: self.freeTrialPeriod,
  #|   introductoryPrice: ((() => { const v = self.introductoryPrice; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   introductoryPricePeriod: self.introductoryPricePeriod,
  #|   introductoryPriceCycles: self.introductoryPriceCycles
  #| })

///|
/// Convert to JsValue
pub fn ItemDetails::to_js(self : ItemDetails) -> JsValue {
  ItemDetails::to_js_ffi(self)
}

///|
/// PurchaseDetails dictionary
pub(all) struct PurchaseDetails {
  itemId : String
  purchaseToken : String
}

///|
/// Create a new PurchaseDetails with default values
pub fn PurchaseDetails::default() -> PurchaseDetails {
  PurchaseDetails::{ itemId: "", purchaseToken: "" }
}

///|
extern "js" fn PurchaseDetails::to_js_ffi(self : PurchaseDetails) -> JsValue =
  #| (self) => ({
  #|   itemId: self.itemId,
  #|   purchaseToken: self.purchaseToken
  #| })

///|
/// Convert to JsValue
pub fn PurchaseDetails::to_js(self : PurchaseDetails) -> JsValue {
  PurchaseDetails::to_js_ffi(self)
}

///|
/// DigitalGoodsService interface
pub type DigitalGoodsService

///|
pub extern "js" fn DigitalGoodsService::to_js_value(
  self : DigitalGoodsService,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to DigitalGoodsService (unchecked)
pub extern "js" fn DigitalGoodsService::from_js_value(
  v : JsValue,
) -> DigitalGoodsService =
  #| (v) => v

///|
/// Safely cast JsValue to DigitalGoodsService (checked with instanceof)
pub extern "js" fn DigitalGoodsService::from_js_value_opt(
  v : JsValue,
) -> DigitalGoodsService? =
  #| (v) => (v instanceof DigitalGoodsService) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to DigitalGoodsService (checked with instanceof)
pub extern "js" fn JsValue::as_digital_goods_service(
  self : JsValue,
) -> DigitalGoodsService? =
  #| (self) => (self instanceof DigitalGoodsService) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to DigitalGoodsService (unchecked)
pub extern "js" fn JsValue::to_digital_goods_service(
  self : JsValue,
) -> DigitalGoodsService =
  #| (self) => self

///|
pub extern "js" fn DigitalGoodsService::get_details(
  self : DigitalGoodsService,
  item_ids : Array[String],
) -> Promise[Array[ItemDetails]] =
  #| (self, item_ids) => self.getDetails(item_ids)

///|
pub extern "js" fn DigitalGoodsService::list_purchases(
  self : DigitalGoodsService,
) -> Promise[Array[PurchaseDetails]] =
  #| (self) => self.listPurchases()

///|
pub extern "js" fn DigitalGoodsService::list_purchase_history(
  self : DigitalGoodsService,
) -> Promise[Array[PurchaseDetails]] =
  #| (self) => self.listPurchaseHistory()

///|
pub extern "js" fn DigitalGoodsService::consume(
  self : DigitalGoodsService,
  purchase_token : String,
) -> Promise[Unit] =
  #| (self, purchase_token) => self.consume(purchase_token)
