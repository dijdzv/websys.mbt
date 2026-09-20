// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/digital-goods

///|
/// ItemType enum
pub(all) enum ItemType {
  Product
  Subscription
} derive(Eq, Debug)

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
  iconURLs : FixedArray[String]?
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
extern "js" fn ItemDetails::to_js_ffi(
  self : ItemDetails,
  convert_price : (PaymentCurrencyAmount) -> JsValue,
  convert_introductoryPrice : (PaymentCurrencyAmount?) -> JsValue,
) -> JsValue =
  #| (self, convert_price, convert_introductoryPrice) => ({
  #|   itemId: self.itemId,
  #|   title: self.title,
  #|   price: convert_price(self.price),
  #|   type: ((() => { const v = self.type_; if (v === undefined) return undefined; return ['product', 'subscription'][v]; })()),
  #|   description: self.description,
  #|   iconURLs: self.iconURLs,
  #|   subscriptionPeriod: self.subscriptionPeriod,
  #|   freeTrialPeriod: self.freeTrialPeriod,
  #|   introductoryPrice: convert_introductoryPrice(self.introductoryPrice),
  #|   introductoryPricePeriod: self.introductoryPricePeriod,
  #|   introductoryPriceCycles: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.introductoryPriceCycles)
  #| })

///|
/// Convert to JsValue
pub fn ItemDetails::to_js(self : ItemDetails) -> JsValue {
  ItemDetails::to_js_ffi(self, PaymentCurrencyAmount::to_js, fn(value) {
    match value {
      Some(value) => value.to_js()
      None => dictionary_undefined()
    }
  })
}

///|
extern "js" fn ItemDetails::from_js_ffi(
  value : JsValue,
  convert_price : (JsValue) -> PaymentCurrencyAmount,
  convert_introductoryPrice : (JsValue) -> PaymentCurrencyAmount?,
) -> ItemDetails =
  #| (v, convert_price, convert_introductoryPrice) => ({
  #|   itemId: v.itemId,
  #|   title: v.title,
  #|   price: convert_price(v.price),
  #|   type_: (v.type === undefined ? undefined : ['product', 'subscription'].indexOf(v.type)),
  #|   description: v.description,
  #|   iconURLs: v.iconURLs,
  #|   subscriptionPeriod: v.subscriptionPeriod,
  #|   freeTrialPeriod: v.freeTrialPeriod,
  #|   introductoryPrice: convert_introductoryPrice(v.introductoryPrice),
  #|   introductoryPricePeriod: v.introductoryPricePeriod,
  #|   introductoryPriceCycles: (v.introductoryPriceCycles === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.introductoryPriceCycles))
  #| })

///|
/// Convert from JsValue
pub fn ItemDetails::from_js(value : JsValue) -> ItemDetails {
  ItemDetails::from_js_ffi(value, PaymentCurrencyAmount::from_js, fn(value) {
    if value.is_undefined() {
      None
    } else {
      Some(PaymentCurrencyAmount::from_js(value))
    }
  })
}

///|
/// Catch dictionary conversion errors, including unsafe integer ranges.
pub fn ItemDetails::to_js_checked(
  self : ItemDetails,
) -> Result[JsValue, JsError] {
  try_dictionary_conversion(() => self.to_js())
}

///|
extern "js" fn try_dictionary_ItemDetails(
  convert : () -> ItemDetails,
) -> Result[ItemDetails, JsError] =
  #| convert => { try { return { $tag: 1, _0: convert() }; } catch (error) { return { $tag: 0, _0: error }; } }

///|
/// Catch invalid host fields, including unsafe integer ranges.
pub fn ItemDetails::from_js_checked(
  value : JsValue,
) -> Result[ItemDetails, JsError] {
  try_dictionary_ItemDetails(() => ItemDetails::from_js(value))
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
  PurchaseDetails::{ itemId: "", purchaseToken: "", }
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
extern "js" fn PurchaseDetails::from_js_ffi(value : JsValue) -> PurchaseDetails =
  #| (v) => ({
  #|   itemId: v.itemId,
  #|   purchaseToken: v.purchaseToken
  #| })

///|
/// Convert from JsValue
pub fn PurchaseDetails::from_js(value : JsValue) -> PurchaseDetails {
  PurchaseDetails::from_js_ffi(value)
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
  item_ids : FixedArray[String],
) -> Promise[FixedArray[ItemDetails]] =
  #| (self, item_ids) => self.getDetails(item_ids)

///|
pub extern "js" fn DigitalGoodsService::list_purchases(
  self : DigitalGoodsService,
) -> Promise[FixedArray[PurchaseDetails]] =
  #| (self) => self.listPurchases()

///|
pub extern "js" fn DigitalGoodsService::list_purchase_history(
  self : DigitalGoodsService,
) -> Promise[FixedArray[PurchaseDetails]] =
  #| (self) => self.listPurchaseHistory()

///|
pub extern "js" fn DigitalGoodsService::consume(
  self : DigitalGoodsService,
  purchase_token : String,
) -> Promise[Unit] =
  #| (self, purchase_token) => self.consume(purchase_token)
