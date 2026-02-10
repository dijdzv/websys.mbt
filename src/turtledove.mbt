// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/turtledove

///|
/// PreviousWinElement typedef
pub type PreviousWinElement

///|
pub extern "js" fn PreviousWinElement::to_js_value(
  self : PreviousWinElement,
) -> JsValue =
  #| (self) => self

///|
/// Create PreviousWinElement from Int64
pub extern "js" fn PreviousWinElement::from_int64(
  v : Int64,
) -> PreviousWinElement =
  #| (v) => v

///|
/// Create PreviousWinElement from AuctionAd
pub extern "js" fn PreviousWinElement::from_auction_ad(
  v : AuctionAd,
) -> PreviousWinElement =
  #| (v) => v

///|
/// Check if this PreviousWinElement is Int64
pub extern "js" fn PreviousWinElement::is_int64(
  self : PreviousWinElement,
) -> Bool =
  #| (self) => typeof self === 'number'

///|
/// Check if this PreviousWinElement is AuctionAd
pub extern "js" fn PreviousWinElement::is_auction_ad(
  self : PreviousWinElement,
) -> Bool =
  #| (self) => typeof self === 'object' && self !== null

///|
/// Try to get PreviousWinElement as Int64
pub extern "js" fn PreviousWinElement::as_int64(
  self : PreviousWinElement,
) -> Int64? =
  #| (self) => (typeof self === 'number') ? self : undefined

///|
/// Try to get PreviousWinElement as AuctionAd
pub extern "js" fn PreviousWinElement::as_auction_ad(
  self : PreviousWinElement,
) -> AuctionAd? =
  #| (self) => (typeof self === 'object' && self !== null) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[PreviousWinElement] to Int64?
pub fn PreviousWinElement::bind_as_int64(value : PreviousWinElement?) -> Int64? {
  match value {
    Some(v) => v.as_int64()
    None => None
  }
}

///|
/// Flatten Option[PreviousWinElement] to AuctionAd?
pub fn PreviousWinElement::bind_as_auction_ad(
  value : PreviousWinElement?,
) -> AuctionAd? {
  match value {
    Some(v) => v.as_auction_ad()
    None => None
  }
}

///|
/// PreviousWin typedef
pub type PreviousWin = Array[PreviousWinElement]

///|
/// KAnonStatus enum
pub(all) enum KAnonStatus {
  PassedAndEnforced
  PassedNotEnforced
  BelowThreshold
  NotCalculated
} derive(Eq, Show)

///|
/// Convert to string value
pub fn KAnonStatus::to_string(self : KAnonStatus) -> String {
  match self {
    KAnonStatus::PassedAndEnforced => "passedAndEnforced"
    KAnonStatus::PassedNotEnforced => "passedNotEnforced"
    KAnonStatus::BelowThreshold => "belowThreshold"
    KAnonStatus::NotCalculated => "notCalculated"
  }
}

///|
/// Parse from string value
pub fn KAnonStatus::from_string(s : String) -> KAnonStatus? {
  match s {
    "passedAndEnforced" => Some(KAnonStatus::PassedAndEnforced)
    "passedNotEnforced" => Some(KAnonStatus::PassedNotEnforced)
    "belowThreshold" => Some(KAnonStatus::BelowThreshold)
    "notCalculated" => Some(KAnonStatus::NotCalculated)
    _ => None
  }
}

///|
/// AuctionAd dictionary
pub(all) struct AuctionAd {
  renderURL : String
  sizeGroup : String?
  metadata : JsValue?
  buyerReportingId : String?
  buyerAndSellerReportingId : String?
  selectableBuyerAndSellerReportingIds : Array[String]?
  allowedReportingOrigins : Array[String]?
  adRenderId : String?
  creativeScanningMetadata : String?
}

///|
/// Create a new AuctionAd with default values
pub fn AuctionAd::default() -> AuctionAd {
  AuctionAd::{
    renderURL: "",
    sizeGroup: None,
    metadata: None,
    buyerReportingId: None,
    buyerAndSellerReportingId: None,
    selectableBuyerAndSellerReportingIds: None,
    allowedReportingOrigins: None,
    adRenderId: None,
    creativeScanningMetadata: None,
  }
}

///|
extern "js" fn AuctionAd::to_js_ffi(self : AuctionAd) -> JsValue =
  #| (self) => ({
  #|   renderURL: self.renderURL,
  #|   sizeGroup: self.sizeGroup,
  #|   metadata: ((() => { const v = self.metadata; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   buyerReportingId: self.buyerReportingId,
  #|   buyerAndSellerReportingId: self.buyerAndSellerReportingId,
  #|   selectableBuyerAndSellerReportingIds: ((() => { const v = self.selectableBuyerAndSellerReportingIds; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   allowedReportingOrigins: ((() => { const v = self.allowedReportingOrigins; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   adRenderId: self.adRenderId,
  #|   creativeScanningMetadata: self.creativeScanningMetadata
  #| })

///|
/// Convert to JsValue
pub fn AuctionAd::to_js(self : AuctionAd) -> JsValue {
  AuctionAd::to_js_ffi(self)
}

///|
extern "js" fn AuctionAd::from_js_ffi(value : JsValue) -> AuctionAd =
  #| (v) => ({
  #|   renderURL: v.renderURL,
  #|   sizeGroup: v.sizeGroup,
  #|   metadata: (v.metadata === undefined ? { $tag: 0 } : { $tag: 1, _0: v.metadata }),
  #|   buyerReportingId: v.buyerReportingId,
  #|   buyerAndSellerReportingId: v.buyerAndSellerReportingId,
  #|   selectableBuyerAndSellerReportingIds: (v.selectableBuyerAndSellerReportingIds === undefined ? { $tag: 0 } : { $tag: 1, _0: v.selectableBuyerAndSellerReportingIds }),
  #|   allowedReportingOrigins: (v.allowedReportingOrigins === undefined ? { $tag: 0 } : { $tag: 1, _0: v.allowedReportingOrigins }),
  #|   adRenderId: v.adRenderId,
  #|   creativeScanningMetadata: v.creativeScanningMetadata
  #| })

///|
/// Convert from JsValue
pub fn AuctionAd::from_js(value : JsValue) -> AuctionAd {
  AuctionAd::from_js_ffi(value)
}

///|
/// AuctionAdInterestGroupSize dictionary
pub(all) struct AuctionAdInterestGroupSize {
  width : String
  height : String
}

///|
/// Create a new AuctionAdInterestGroupSize with default values
pub fn AuctionAdInterestGroupSize::default() -> AuctionAdInterestGroupSize {
  AuctionAdInterestGroupSize::{ width: "", height: "" }
}

///|
extern "js" fn AuctionAdInterestGroupSize::to_js_ffi(
  self : AuctionAdInterestGroupSize,
) -> JsValue =
  #| (self) => ({
  #|   width: self.width,
  #|   height: self.height
  #| })

///|
/// Convert to JsValue
pub fn AuctionAdInterestGroupSize::to_js(
  self : AuctionAdInterestGroupSize,
) -> JsValue {
  AuctionAdInterestGroupSize::to_js_ffi(self)
}

///|
extern "js" fn AuctionAdInterestGroupSize::from_js_ffi(
  value : JsValue,
) -> AuctionAdInterestGroupSize =
  #| (v) => ({
  #|   width: v.width,
  #|   height: v.height
  #| })

///|
/// Convert from JsValue
pub fn AuctionAdInterestGroupSize::from_js(
  value : JsValue,
) -> AuctionAdInterestGroupSize {
  AuctionAdInterestGroupSize::from_js_ffi(value)
}

///|
/// GenerateBidInterestGroup dictionary
pub(all) struct GenerateBidInterestGroup {
  owner : String
  name : String
  enableBiddingSignalsPrioritization : Bool?
  priorityVector : JsValue?
  sellerCapabilities : JsValue?
  executionMode : String?
  biddingLogicURL : String?
  biddingWasmHelperURL : String?
  updateURL : String?
  trustedBiddingSignalsURL : String?
  trustedBiddingSignalsKeys : Array[String]?
  trustedBiddingSignalsSlotSizeMode : String?
  maxTrustedBiddingSignalsURLLength : Int?
  trustedBiddingSignalsCoordinator : String?
  userBiddingSignals : JsValue?
  ads : Array[AuctionAd]?
  adComponents : Array[AuctionAd]?
  adSizes : JsValue?
  sizeGroups : JsValue?
}

///|
/// Create a new GenerateBidInterestGroup with default values
pub fn GenerateBidInterestGroup::default() -> GenerateBidInterestGroup {
  GenerateBidInterestGroup::{
    owner: "",
    name: "",
    enableBiddingSignalsPrioritization: None,
    priorityVector: None,
    sellerCapabilities: None,
    executionMode: None,
    biddingLogicURL: None,
    biddingWasmHelperURL: None,
    updateURL: None,
    trustedBiddingSignalsURL: None,
    trustedBiddingSignalsKeys: None,
    trustedBiddingSignalsSlotSizeMode: None,
    maxTrustedBiddingSignalsURLLength: None,
    trustedBiddingSignalsCoordinator: None,
    userBiddingSignals: None,
    ads: None,
    adComponents: None,
    adSizes: None,
    sizeGroups: None,
  }
}

///|
extern "js" fn GenerateBidInterestGroup::to_js_ffi(
  self : GenerateBidInterestGroup,
) -> JsValue =
  #| (self) => ({
  #|   owner: self.owner,
  #|   name: self.name,
  #|   enableBiddingSignalsPrioritization: (self.enableBiddingSignalsPrioritization === -1 ? undefined : self.enableBiddingSignalsPrioritization),
  #|   priorityVector: ((() => { const v = self.priorityVector; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   sellerCapabilities: ((() => { const v = self.sellerCapabilities; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   executionMode: self.executionMode,
  #|   biddingLogicURL: self.biddingLogicURL,
  #|   biddingWasmHelperURL: self.biddingWasmHelperURL,
  #|   updateURL: self.updateURL,
  #|   trustedBiddingSignalsURL: self.trustedBiddingSignalsURL,
  #|   trustedBiddingSignalsKeys: ((() => { const v = self.trustedBiddingSignalsKeys; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   trustedBiddingSignalsSlotSizeMode: self.trustedBiddingSignalsSlotSizeMode,
  #|   maxTrustedBiddingSignalsURLLength: self.maxTrustedBiddingSignalsURLLength,
  #|   trustedBiddingSignalsCoordinator: self.trustedBiddingSignalsCoordinator,
  #|   userBiddingSignals: ((() => { const v = self.userBiddingSignals; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   ads: ((() => { const v = self.ads; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   adComponents: ((() => { const v = self.adComponents; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   adSizes: ((() => { const v = self.adSizes; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   sizeGroups: ((() => { const v = self.sizeGroups; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn GenerateBidInterestGroup::to_js(
  self : GenerateBidInterestGroup,
) -> JsValue {
  GenerateBidInterestGroup::to_js_ffi(self)
}

///|
extern "js" fn GenerateBidInterestGroup::from_js_ffi(
  value : JsValue,
) -> GenerateBidInterestGroup =
  #| (v) => ({
  #|   owner: v.owner,
  #|   name: v.name,
  #|   enableBiddingSignalsPrioritization: (v.enableBiddingSignalsPrioritization === undefined ? -1 : v.enableBiddingSignalsPrioritization),
  #|   priorityVector: (v.priorityVector === undefined ? { $tag: 0 } : { $tag: 1, _0: v.priorityVector }),
  #|   sellerCapabilities: (v.sellerCapabilities === undefined ? { $tag: 0 } : { $tag: 1, _0: v.sellerCapabilities }),
  #|   executionMode: v.executionMode,
  #|   biddingLogicURL: v.biddingLogicURL,
  #|   biddingWasmHelperURL: v.biddingWasmHelperURL,
  #|   updateURL: v.updateURL,
  #|   trustedBiddingSignalsURL: v.trustedBiddingSignalsURL,
  #|   trustedBiddingSignalsKeys: (v.trustedBiddingSignalsKeys === undefined ? { $tag: 0 } : { $tag: 1, _0: v.trustedBiddingSignalsKeys }),
  #|   trustedBiddingSignalsSlotSizeMode: v.trustedBiddingSignalsSlotSizeMode,
  #|   maxTrustedBiddingSignalsURLLength: v.maxTrustedBiddingSignalsURLLength,
  #|   trustedBiddingSignalsCoordinator: v.trustedBiddingSignalsCoordinator,
  #|   userBiddingSignals: (v.userBiddingSignals === undefined ? { $tag: 0 } : { $tag: 1, _0: v.userBiddingSignals }),
  #|   ads: (v.ads === undefined ? { $tag: 0 } : { $tag: 1, _0: v.ads }),
  #|   adComponents: (v.adComponents === undefined ? { $tag: 0 } : { $tag: 1, _0: v.adComponents }),
  #|   adSizes: (v.adSizes === undefined ? { $tag: 0 } : { $tag: 1, _0: v.adSizes }),
  #|   sizeGroups: (v.sizeGroups === undefined ? { $tag: 0 } : { $tag: 1, _0: v.sizeGroups })
  #| })

///|
/// Convert from JsValue
pub fn GenerateBidInterestGroup::from_js(
  value : JsValue,
) -> GenerateBidInterestGroup {
  GenerateBidInterestGroup::from_js_ffi(value)
}

///|
/// ProtectedAudiencePrivateAggregationConfig dictionary
pub(all) struct ProtectedAudiencePrivateAggregationConfig {
  aggregationCoordinatorOrigin : String?
}

///|
/// Create a new ProtectedAudiencePrivateAggregationConfig with default values
pub fn ProtectedAudiencePrivateAggregationConfig::default() -> ProtectedAudiencePrivateAggregationConfig {
  ProtectedAudiencePrivateAggregationConfig::{
    aggregationCoordinatorOrigin: None,
  }
}

///|
extern "js" fn ProtectedAudiencePrivateAggregationConfig::to_js_ffi(
  self : ProtectedAudiencePrivateAggregationConfig,
) -> JsValue =
  #| (self) => ({
  #|   aggregationCoordinatorOrigin: self.aggregationCoordinatorOrigin
  #| })

///|
/// Convert to JsValue
pub fn ProtectedAudiencePrivateAggregationConfig::to_js(
  self : ProtectedAudiencePrivateAggregationConfig,
) -> JsValue {
  ProtectedAudiencePrivateAggregationConfig::to_js_ffi(self)
}

///|
extern "js" fn ProtectedAudiencePrivateAggregationConfig::from_js_ffi(
  value : JsValue,
) -> ProtectedAudiencePrivateAggregationConfig =
  #| (v) => ({
  #|   aggregationCoordinatorOrigin: v.aggregationCoordinatorOrigin
  #| })

///|
/// Convert from JsValue
pub fn ProtectedAudiencePrivateAggregationConfig::from_js(
  value : JsValue,
) -> ProtectedAudiencePrivateAggregationConfig {
  ProtectedAudiencePrivateAggregationConfig::from_js_ffi(value)
}

///|
/// AuctionAdInterestGroup dictionary
pub(all) struct AuctionAdInterestGroup {
  owner : String
  name : String
  enableBiddingSignalsPrioritization : Bool?
  priorityVector : JsValue?
  sellerCapabilities : JsValue?
  executionMode : String?
  biddingLogicURL : String?
  biddingWasmHelperURL : String?
  updateURL : String?
  trustedBiddingSignalsURL : String?
  trustedBiddingSignalsKeys : Array[String]?
  trustedBiddingSignalsSlotSizeMode : String?
  maxTrustedBiddingSignalsURLLength : Int?
  trustedBiddingSignalsCoordinator : String?
  userBiddingSignals : JsValue?
  ads : Array[AuctionAd]?
  adComponents : Array[AuctionAd]?
  adSizes : JsValue?
  sizeGroups : JsValue?
  priority : Double?
  prioritySignalsOverrides : JsValue?
  lifetimeMs : Double
  additionalBidKey : String?
  privateAggregationConfig : ProtectedAudiencePrivateAggregationConfig?
}

///|
/// Create a new AuctionAdInterestGroup with default values
pub fn AuctionAdInterestGroup::default() -> AuctionAdInterestGroup {
  AuctionAdInterestGroup::{
    owner: "",
    name: "",
    enableBiddingSignalsPrioritization: None,
    priorityVector: None,
    sellerCapabilities: None,
    executionMode: None,
    biddingLogicURL: None,
    biddingWasmHelperURL: None,
    updateURL: None,
    trustedBiddingSignalsURL: None,
    trustedBiddingSignalsKeys: None,
    trustedBiddingSignalsSlotSizeMode: None,
    maxTrustedBiddingSignalsURLLength: None,
    trustedBiddingSignalsCoordinator: None,
    userBiddingSignals: None,
    ads: None,
    adComponents: None,
    adSizes: None,
    sizeGroups: None,
    priority: None,
    prioritySignalsOverrides: None,
    lifetimeMs: 0,
    additionalBidKey: None,
    privateAggregationConfig: None,
  }
}

///|
extern "js" fn AuctionAdInterestGroup::to_js_ffi(
  self : AuctionAdInterestGroup,
) -> JsValue =
  #| (self) => ({
  #|   owner: self.owner,
  #|   name: self.name,
  #|   enableBiddingSignalsPrioritization: (self.enableBiddingSignalsPrioritization === -1 ? undefined : self.enableBiddingSignalsPrioritization),
  #|   priorityVector: ((() => { const v = self.priorityVector; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   sellerCapabilities: ((() => { const v = self.sellerCapabilities; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   executionMode: self.executionMode,
  #|   biddingLogicURL: self.biddingLogicURL,
  #|   biddingWasmHelperURL: self.biddingWasmHelperURL,
  #|   updateURL: self.updateURL,
  #|   trustedBiddingSignalsURL: self.trustedBiddingSignalsURL,
  #|   trustedBiddingSignalsKeys: ((() => { const v = self.trustedBiddingSignalsKeys; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   trustedBiddingSignalsSlotSizeMode: self.trustedBiddingSignalsSlotSizeMode,
  #|   maxTrustedBiddingSignalsURLLength: self.maxTrustedBiddingSignalsURLLength,
  #|   trustedBiddingSignalsCoordinator: self.trustedBiddingSignalsCoordinator,
  #|   userBiddingSignals: ((() => { const v = self.userBiddingSignals; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   ads: ((() => { const v = self.ads; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   adComponents: ((() => { const v = self.adComponents; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   adSizes: ((() => { const v = self.adSizes; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   sizeGroups: ((() => { const v = self.sizeGroups; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   priority: self.priority,
  #|   prioritySignalsOverrides: ((() => { const v = self.prioritySignalsOverrides; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   lifetimeMs: self.lifetimeMs,
  #|   additionalBidKey: self.additionalBidKey,
  #|   privateAggregationConfig: ((() => { const v = self.privateAggregationConfig; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn AuctionAdInterestGroup::to_js(self : AuctionAdInterestGroup) -> JsValue {
  AuctionAdInterestGroup::to_js_ffi(self)
}

///|
extern "js" fn AuctionAdInterestGroup::from_js_ffi(
  value : JsValue,
) -> AuctionAdInterestGroup =
  #| (v) => ({
  #|   owner: v.owner,
  #|   name: v.name,
  #|   enableBiddingSignalsPrioritization: (v.enableBiddingSignalsPrioritization === undefined ? -1 : v.enableBiddingSignalsPrioritization),
  #|   priorityVector: (v.priorityVector === undefined ? { $tag: 0 } : { $tag: 1, _0: v.priorityVector }),
  #|   sellerCapabilities: (v.sellerCapabilities === undefined ? { $tag: 0 } : { $tag: 1, _0: v.sellerCapabilities }),
  #|   executionMode: v.executionMode,
  #|   biddingLogicURL: v.biddingLogicURL,
  #|   biddingWasmHelperURL: v.biddingWasmHelperURL,
  #|   updateURL: v.updateURL,
  #|   trustedBiddingSignalsURL: v.trustedBiddingSignalsURL,
  #|   trustedBiddingSignalsKeys: (v.trustedBiddingSignalsKeys === undefined ? { $tag: 0 } : { $tag: 1, _0: v.trustedBiddingSignalsKeys }),
  #|   trustedBiddingSignalsSlotSizeMode: v.trustedBiddingSignalsSlotSizeMode,
  #|   maxTrustedBiddingSignalsURLLength: v.maxTrustedBiddingSignalsURLLength,
  #|   trustedBiddingSignalsCoordinator: v.trustedBiddingSignalsCoordinator,
  #|   userBiddingSignals: (v.userBiddingSignals === undefined ? { $tag: 0 } : { $tag: 1, _0: v.userBiddingSignals }),
  #|   ads: (v.ads === undefined ? { $tag: 0 } : { $tag: 1, _0: v.ads }),
  #|   adComponents: (v.adComponents === undefined ? { $tag: 0 } : { $tag: 1, _0: v.adComponents }),
  #|   adSizes: (v.adSizes === undefined ? { $tag: 0 } : { $tag: 1, _0: v.adSizes }),
  #|   sizeGroups: (v.sizeGroups === undefined ? { $tag: 0 } : { $tag: 1, _0: v.sizeGroups }),
  #|   priority: v.priority,
  #|   prioritySignalsOverrides: (v.prioritySignalsOverrides === undefined ? { $tag: 0 } : { $tag: 1, _0: v.prioritySignalsOverrides }),
  #|   lifetimeMs: v.lifetimeMs,
  #|   additionalBidKey: v.additionalBidKey,
  #|   privateAggregationConfig: (v.privateAggregationConfig === undefined ? { $tag: 0 } : { $tag: 1, _0: v.privateAggregationConfig })
  #| })

///|
/// Convert from JsValue
pub fn AuctionAdInterestGroup::from_js(
  value : JsValue,
) -> AuctionAdInterestGroup {
  AuctionAdInterestGroup::from_js_ffi(value)
}

///|
/// AuctionAdInterestGroupKey dictionary
pub(all) struct AuctionAdInterestGroupKey {
  owner : String
  name : String
}

///|
/// Create a new AuctionAdInterestGroupKey with default values
pub fn AuctionAdInterestGroupKey::default() -> AuctionAdInterestGroupKey {
  AuctionAdInterestGroupKey::{ owner: "", name: "" }
}

///|
extern "js" fn AuctionAdInterestGroupKey::to_js_ffi(
  self : AuctionAdInterestGroupKey,
) -> JsValue =
  #| (self) => ({
  #|   owner: self.owner,
  #|   name: self.name
  #| })

///|
/// Convert to JsValue
pub fn AuctionAdInterestGroupKey::to_js(
  self : AuctionAdInterestGroupKey,
) -> JsValue {
  AuctionAdInterestGroupKey::to_js_ffi(self)
}

///|
extern "js" fn AuctionAdInterestGroupKey::from_js_ffi(
  value : JsValue,
) -> AuctionAdInterestGroupKey =
  #| (v) => ({
  #|   owner: v.owner,
  #|   name: v.name
  #| })

///|
/// Convert from JsValue
pub fn AuctionAdInterestGroupKey::from_js(
  value : JsValue,
) -> AuctionAdInterestGroupKey {
  AuctionAdInterestGroupKey::from_js_ffi(value)
}

///|
/// AuctionReportBuyersConfig dictionary
pub(all) struct AuctionReportBuyersConfig {
  bucket : JsValue
  scale : Double
}

///|
/// Create a new AuctionReportBuyersConfig
pub fn AuctionReportBuyersConfig::new(
  bucket~ : JsValue,
) -> AuctionReportBuyersConfig {
  AuctionReportBuyersConfig::{ bucket, scale: 0 }
}

///|
extern "js" fn AuctionReportBuyersConfig::to_js_ffi(
  self : AuctionReportBuyersConfig,
) -> JsValue =
  #| (self) => ({
  #|   bucket: self.bucket,
  #|   scale: self.scale
  #| })

///|
/// Convert to JsValue
pub fn AuctionReportBuyersConfig::to_js(
  self : AuctionReportBuyersConfig,
) -> JsValue {
  AuctionReportBuyersConfig::to_js_ffi(self)
}

///|
extern "js" fn AuctionReportBuyersConfig::from_js_ffi(
  value : JsValue,
) -> AuctionReportBuyersConfig =
  #| (v) => ({
  #|   bucket: v.bucket,
  #|   scale: v.scale
  #| })

///|
/// Convert from JsValue
pub fn AuctionReportBuyersConfig::from_js(
  value : JsValue,
) -> AuctionReportBuyersConfig {
  AuctionReportBuyersConfig::from_js_ffi(value)
}

///|
/// AuctionReportBuyerDebugModeConfig dictionary
pub(all) struct AuctionReportBuyerDebugModeConfig {
  enabled : Bool?
  debugKey : Nullable[JsValue]
}

///|
/// Create a new AuctionReportBuyerDebugModeConfig with default values
pub fn AuctionReportBuyerDebugModeConfig::default() -> AuctionReportBuyerDebugModeConfig {
  AuctionReportBuyerDebugModeConfig::{
    enabled: None,
    debugKey: Nullable::Undefined,
  }
}

///|
extern "js" fn AuctionReportBuyerDebugModeConfig::to_js_ffi(
  self : AuctionReportBuyerDebugModeConfig,
) -> JsValue =
  #| (self) => ({
  #|   enabled: (self.enabled === -1 ? undefined : self.enabled),
  #|   debugKey: ((() => { const v = self.debugKey; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn AuctionReportBuyerDebugModeConfig::to_js(
  self : AuctionReportBuyerDebugModeConfig,
) -> JsValue {
  AuctionReportBuyerDebugModeConfig::to_js_ffi(self)
}

///|
extern "js" fn AuctionReportBuyerDebugModeConfig::from_js_ffi(
  value : JsValue,
) -> AuctionReportBuyerDebugModeConfig =
  #| (v) => ({
  #|   enabled: (v.enabled === undefined ? -1 : v.enabled),
  #|   debugKey: (v.debugKey === undefined ? { $tag: 0 } : v.debugKey === null ? { $tag: 1 } : { $tag: 2, _0: v.debugKey })
  #| })

///|
/// Convert from JsValue
pub fn AuctionReportBuyerDebugModeConfig::from_js(
  value : JsValue,
) -> AuctionReportBuyerDebugModeConfig {
  AuctionReportBuyerDebugModeConfig::from_js_ffi(value)
}

///|
/// AuctionRealTimeReportingConfig dictionary
pub(all) struct AuctionRealTimeReportingConfig {
  type_ : String
}

///|
/// Create a new AuctionRealTimeReportingConfig with default values
pub fn AuctionRealTimeReportingConfig::default() -> AuctionRealTimeReportingConfig {
  AuctionRealTimeReportingConfig::{ type_: "" }
}

///|
extern "js" fn AuctionRealTimeReportingConfig::to_js_ffi(
  self : AuctionRealTimeReportingConfig,
) -> JsValue =
  #| (self) => ({
  #|   type: self.type_
  #| })

///|
/// Convert to JsValue
pub fn AuctionRealTimeReportingConfig::to_js(
  self : AuctionRealTimeReportingConfig,
) -> JsValue {
  AuctionRealTimeReportingConfig::to_js_ffi(self)
}

///|
extern "js" fn AuctionRealTimeReportingConfig::from_js_ffi(
  value : JsValue,
) -> AuctionRealTimeReportingConfig =
  #| (v) => ({
  #|   type_: v.type
  #| })

///|
/// Convert from JsValue
pub fn AuctionRealTimeReportingConfig::from_js(
  value : JsValue,
) -> AuctionRealTimeReportingConfig {
  AuctionRealTimeReportingConfig::from_js_ffi(value)
}

///|
/// AuctionAdConfig dictionary
pub(all) struct AuctionAdConfig {
  seller : String
  decisionLogicURL : String
  trustedScoringSignalsURL : String?
  maxTrustedScoringSignalsURLLength : Int?
  trustedScoringSignalsCoordinator : String?
  sendCreativeScanningMetadata : Bool?
  interestGroupBuyers : Array[String]?
  auctionSignals : Promise[JsValue]?
  sellerSignals : Promise[JsValue]?
  directFromSellerSignalsHeaderAdSlot : Promise[String?]?
  deprecatedRenderURLReplacements : Promise[JsValue]?
  sellerTimeout : Int64?
  sellerExperimentGroupId : Int?
  perBuyerSignals : Promise[JsValue]?
  perBuyerTimeouts : Promise[JsValue]?
  perBuyerCumulativeTimeouts : Promise[JsValue]?
  reportingTimeout : Int64?
  sellerCurrency : String?
  perBuyerCurrencies : Promise[JsValue]?
  perBuyerMultiBidLimits : JsValue?
  perBuyerGroupLimits : JsValue?
  perBuyerExperimentGroupIds : JsValue?
  perBuyerPrioritySignals : JsValue?
  auctionReportBuyerKeys : Array[JsValue]?
  auctionReportBuyers : JsValue?
  auctionReportBuyerDebugModeConfig : AuctionReportBuyerDebugModeConfig?
  requiredSellerCapabilities : Array[String]?
  privateAggregationConfig : ProtectedAudiencePrivateAggregationConfig?
  requestedSize : JsValue?
  allSlotsRequestedSizes : Array[JsValue]?
  additionalBids : Promise[Unit]?
  auctionNonce : String?
  sellerRealTimeReportingConfig : AuctionRealTimeReportingConfig?
  perBuyerRealTimeReportingConfig : JsValue?
  componentAuctions : Array[AuctionAdConfig]?
  signal : Nullable[AbortSignal]
  resolveToConfig : Promise[Bool]?
  serverResponse : Promise[Uint8Array]?
  requestId : String?
}

///|
/// Create a new AuctionAdConfig with default values
pub fn AuctionAdConfig::default() -> AuctionAdConfig {
  AuctionAdConfig::{
    seller: "",
    decisionLogicURL: "",
    trustedScoringSignalsURL: None,
    maxTrustedScoringSignalsURLLength: None,
    trustedScoringSignalsCoordinator: None,
    sendCreativeScanningMetadata: None,
    interestGroupBuyers: None,
    auctionSignals: None,
    sellerSignals: None,
    directFromSellerSignalsHeaderAdSlot: None,
    deprecatedRenderURLReplacements: None,
    sellerTimeout: None,
    sellerExperimentGroupId: None,
    perBuyerSignals: None,
    perBuyerTimeouts: None,
    perBuyerCumulativeTimeouts: None,
    reportingTimeout: None,
    sellerCurrency: None,
    perBuyerCurrencies: None,
    perBuyerMultiBidLimits: None,
    perBuyerGroupLimits: None,
    perBuyerExperimentGroupIds: None,
    perBuyerPrioritySignals: None,
    auctionReportBuyerKeys: None,
    auctionReportBuyers: None,
    auctionReportBuyerDebugModeConfig: None,
    requiredSellerCapabilities: None,
    privateAggregationConfig: None,
    requestedSize: None,
    allSlotsRequestedSizes: None,
    additionalBids: None,
    auctionNonce: None,
    sellerRealTimeReportingConfig: None,
    perBuyerRealTimeReportingConfig: None,
    componentAuctions: None,
    signal: Nullable::Undefined,
    resolveToConfig: None,
    serverResponse: None,
    requestId: None,
  }
}

///|
extern "js" fn AuctionAdConfig::to_js_ffi(self : AuctionAdConfig) -> JsValue =
  #| (self) => ({
  #|   seller: self.seller,
  #|   decisionLogicURL: self.decisionLogicURL,
  #|   trustedScoringSignalsURL: self.trustedScoringSignalsURL,
  #|   maxTrustedScoringSignalsURLLength: self.maxTrustedScoringSignalsURLLength,
  #|   trustedScoringSignalsCoordinator: self.trustedScoringSignalsCoordinator,
  #|   sendCreativeScanningMetadata: (self.sendCreativeScanningMetadata === -1 ? undefined : self.sendCreativeScanningMetadata),
  #|   interestGroupBuyers: ((() => { const v = self.interestGroupBuyers; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   auctionSignals: ((() => { const v = self.auctionSignals; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   sellerSignals: ((() => { const v = self.sellerSignals; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   directFromSellerSignalsHeaderAdSlot: ((() => { const v = self.directFromSellerSignalsHeaderAdSlot; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   deprecatedRenderURLReplacements: ((() => { const v = self.deprecatedRenderURLReplacements; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   sellerTimeout: self.sellerTimeout,
  #|   sellerExperimentGroupId: self.sellerExperimentGroupId,
  #|   perBuyerSignals: ((() => { const v = self.perBuyerSignals; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   perBuyerTimeouts: ((() => { const v = self.perBuyerTimeouts; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   perBuyerCumulativeTimeouts: ((() => { const v = self.perBuyerCumulativeTimeouts; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   reportingTimeout: self.reportingTimeout,
  #|   sellerCurrency: self.sellerCurrency,
  #|   perBuyerCurrencies: ((() => { const v = self.perBuyerCurrencies; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   perBuyerMultiBidLimits: ((() => { const v = self.perBuyerMultiBidLimits; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   perBuyerGroupLimits: ((() => { const v = self.perBuyerGroupLimits; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   perBuyerExperimentGroupIds: ((() => { const v = self.perBuyerExperimentGroupIds; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   perBuyerPrioritySignals: ((() => { const v = self.perBuyerPrioritySignals; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   auctionReportBuyerKeys: ((() => { const v = self.auctionReportBuyerKeys; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   auctionReportBuyers: ((() => { const v = self.auctionReportBuyers; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   auctionReportBuyerDebugModeConfig: ((() => { const v = self.auctionReportBuyerDebugModeConfig; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   requiredSellerCapabilities: ((() => { const v = self.requiredSellerCapabilities; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   privateAggregationConfig: ((() => { const v = self.privateAggregationConfig; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   requestedSize: ((() => { const v = self.requestedSize; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   allSlotsRequestedSizes: ((() => { const v = self.allSlotsRequestedSizes; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   additionalBids: ((() => { const v = self.additionalBids; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   auctionNonce: self.auctionNonce,
  #|   sellerRealTimeReportingConfig: ((() => { const v = self.sellerRealTimeReportingConfig; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   perBuyerRealTimeReportingConfig: ((() => { const v = self.perBuyerRealTimeReportingConfig; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   componentAuctions: ((() => { const v = self.componentAuctions; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   signal: ((() => { const v = self.signal; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   resolveToConfig: ((() => { const v = self.resolveToConfig; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   serverResponse: ((() => { const v = self.serverResponse; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   requestId: self.requestId
  #| })

///|
/// Convert to JsValue
pub fn AuctionAdConfig::to_js(self : AuctionAdConfig) -> JsValue {
  AuctionAdConfig::to_js_ffi(self)
}

///|
extern "js" fn AuctionAdConfig::from_js_ffi(value : JsValue) -> AuctionAdConfig =
  #| (v) => ({
  #|   seller: v.seller,
  #|   decisionLogicURL: v.decisionLogicURL,
  #|   trustedScoringSignalsURL: v.trustedScoringSignalsURL,
  #|   maxTrustedScoringSignalsURLLength: v.maxTrustedScoringSignalsURLLength,
  #|   trustedScoringSignalsCoordinator: v.trustedScoringSignalsCoordinator,
  #|   sendCreativeScanningMetadata: (v.sendCreativeScanningMetadata === undefined ? -1 : v.sendCreativeScanningMetadata),
  #|   interestGroupBuyers: (v.interestGroupBuyers === undefined ? { $tag: 0 } : { $tag: 1, _0: v.interestGroupBuyers }),
  #|   auctionSignals: (v.auctionSignals === undefined ? { $tag: 0 } : { $tag: 1, _0: v.auctionSignals }),
  #|   sellerSignals: (v.sellerSignals === undefined ? { $tag: 0 } : { $tag: 1, _0: v.sellerSignals }),
  #|   directFromSellerSignalsHeaderAdSlot: (v.directFromSellerSignalsHeaderAdSlot === undefined ? { $tag: 0 } : { $tag: 1, _0: v.directFromSellerSignalsHeaderAdSlot }),
  #|   deprecatedRenderURLReplacements: (v.deprecatedRenderURLReplacements === undefined ? { $tag: 0 } : { $tag: 1, _0: v.deprecatedRenderURLReplacements }),
  #|   sellerTimeout: v.sellerTimeout,
  #|   sellerExperimentGroupId: v.sellerExperimentGroupId,
  #|   perBuyerSignals: (v.perBuyerSignals === undefined ? { $tag: 0 } : { $tag: 1, _0: v.perBuyerSignals }),
  #|   perBuyerTimeouts: (v.perBuyerTimeouts === undefined ? { $tag: 0 } : { $tag: 1, _0: v.perBuyerTimeouts }),
  #|   perBuyerCumulativeTimeouts: (v.perBuyerCumulativeTimeouts === undefined ? { $tag: 0 } : { $tag: 1, _0: v.perBuyerCumulativeTimeouts }),
  #|   reportingTimeout: v.reportingTimeout,
  #|   sellerCurrency: v.sellerCurrency,
  #|   perBuyerCurrencies: (v.perBuyerCurrencies === undefined ? { $tag: 0 } : { $tag: 1, _0: v.perBuyerCurrencies }),
  #|   perBuyerMultiBidLimits: (v.perBuyerMultiBidLimits === undefined ? { $tag: 0 } : { $tag: 1, _0: v.perBuyerMultiBidLimits }),
  #|   perBuyerGroupLimits: (v.perBuyerGroupLimits === undefined ? { $tag: 0 } : { $tag: 1, _0: v.perBuyerGroupLimits }),
  #|   perBuyerExperimentGroupIds: (v.perBuyerExperimentGroupIds === undefined ? { $tag: 0 } : { $tag: 1, _0: v.perBuyerExperimentGroupIds }),
  #|   perBuyerPrioritySignals: (v.perBuyerPrioritySignals === undefined ? { $tag: 0 } : { $tag: 1, _0: v.perBuyerPrioritySignals }),
  #|   auctionReportBuyerKeys: (v.auctionReportBuyerKeys === undefined ? { $tag: 0 } : { $tag: 1, _0: v.auctionReportBuyerKeys }),
  #|   auctionReportBuyers: (v.auctionReportBuyers === undefined ? { $tag: 0 } : { $tag: 1, _0: v.auctionReportBuyers }),
  #|   auctionReportBuyerDebugModeConfig: (v.auctionReportBuyerDebugModeConfig === undefined ? { $tag: 0 } : { $tag: 1, _0: v.auctionReportBuyerDebugModeConfig }),
  #|   requiredSellerCapabilities: (v.requiredSellerCapabilities === undefined ? { $tag: 0 } : { $tag: 1, _0: v.requiredSellerCapabilities }),
  #|   privateAggregationConfig: (v.privateAggregationConfig === undefined ? { $tag: 0 } : { $tag: 1, _0: v.privateAggregationConfig }),
  #|   requestedSize: (v.requestedSize === undefined ? { $tag: 0 } : { $tag: 1, _0: v.requestedSize }),
  #|   allSlotsRequestedSizes: (v.allSlotsRequestedSizes === undefined ? { $tag: 0 } : { $tag: 1, _0: v.allSlotsRequestedSizes }),
  #|   additionalBids: (v.additionalBids === undefined ? { $tag: 0 } : { $tag: 1, _0: v.additionalBids }),
  #|   auctionNonce: v.auctionNonce,
  #|   sellerRealTimeReportingConfig: (v.sellerRealTimeReportingConfig === undefined ? { $tag: 0 } : { $tag: 1, _0: v.sellerRealTimeReportingConfig }),
  #|   perBuyerRealTimeReportingConfig: (v.perBuyerRealTimeReportingConfig === undefined ? { $tag: 0 } : { $tag: 1, _0: v.perBuyerRealTimeReportingConfig }),
  #|   componentAuctions: (v.componentAuctions === undefined ? { $tag: 0 } : { $tag: 1, _0: v.componentAuctions }),
  #|   signal: (v.signal === undefined ? { $tag: 0 } : v.signal === null ? { $tag: 1 } : { $tag: 2, _0: v.signal }),
  #|   resolveToConfig: (v.resolveToConfig === undefined ? { $tag: 0 } : { $tag: 1, _0: v.resolveToConfig }),
  #|   serverResponse: (v.serverResponse === undefined ? { $tag: 0 } : { $tag: 1, _0: v.serverResponse }),
  #|   requestId: v.requestId
  #| })

///|
/// Convert from JsValue
pub fn AuctionAdConfig::from_js(value : JsValue) -> AuctionAdConfig {
  AuctionAdConfig::from_js_ffi(value)
}

///|
/// AdAuctionPerSellerData dictionary
pub(all) struct AdAuctionPerSellerData {
  seller : String
  request : Uint8Array?
  error : String?
}

///|
/// Create a new AdAuctionPerSellerData with default values
pub fn AdAuctionPerSellerData::default() -> AdAuctionPerSellerData {
  AdAuctionPerSellerData::{ seller: "", request: None, error: None }
}

///|
extern "js" fn AdAuctionPerSellerData::to_js_ffi(
  self : AdAuctionPerSellerData,
) -> JsValue =
  #| (self) => ({
  #|   seller: self.seller,
  #|   request: ((() => { const v = self.request; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   error: self.error
  #| })

///|
/// Convert to JsValue
pub fn AdAuctionPerSellerData::to_js(self : AdAuctionPerSellerData) -> JsValue {
  AdAuctionPerSellerData::to_js_ffi(self)
}

///|
extern "js" fn AdAuctionPerSellerData::from_js_ffi(
  value : JsValue,
) -> AdAuctionPerSellerData =
  #| (v) => ({
  #|   seller: v.seller,
  #|   request: (v.request === undefined ? { $tag: 0 } : { $tag: 1, _0: v.request }),
  #|   error: v.error
  #| })

///|
/// Convert from JsValue
pub fn AdAuctionPerSellerData::from_js(
  value : JsValue,
) -> AdAuctionPerSellerData {
  AdAuctionPerSellerData::from_js_ffi(value)
}

///|
/// AdAuctionData dictionary
pub(all) struct AdAuctionData {
  requestId : String
  request : Uint8Array?
  requests : Array[AdAuctionPerSellerData]?
}

///|
/// Create a new AdAuctionData with default values
pub fn AdAuctionData::default() -> AdAuctionData {
  AdAuctionData::{ requestId: "", request: None, requests: None }
}

///|
extern "js" fn AdAuctionData::to_js_ffi(self : AdAuctionData) -> JsValue =
  #| (self) => ({
  #|   requestId: self.requestId,
  #|   request: ((() => { const v = self.request; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   requests: ((() => { const v = self.requests; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn AdAuctionData::to_js(self : AdAuctionData) -> JsValue {
  AdAuctionData::to_js_ffi(self)
}

///|
extern "js" fn AdAuctionData::from_js_ffi(value : JsValue) -> AdAuctionData =
  #| (v) => ({
  #|   requestId: v.requestId,
  #|   request: (v.request === undefined ? { $tag: 0 } : { $tag: 1, _0: v.request }),
  #|   requests: (v.requests === undefined ? { $tag: 0 } : { $tag: 1, _0: v.requests })
  #| })

///|
/// Convert from JsValue
pub fn AdAuctionData::from_js(value : JsValue) -> AdAuctionData {
  AdAuctionData::from_js_ffi(value)
}

///|
/// AdAuctionOneSeller dictionary
pub(all) struct AdAuctionOneSeller {
  seller : String
  coordinatorOrigin : String?
}

///|
/// Create a new AdAuctionOneSeller with default values
pub fn AdAuctionOneSeller::default() -> AdAuctionOneSeller {
  AdAuctionOneSeller::{ seller: "", coordinatorOrigin: None }
}

///|
extern "js" fn AdAuctionOneSeller::to_js_ffi(
  self : AdAuctionOneSeller,
) -> JsValue =
  #| (self) => ({
  #|   seller: self.seller,
  #|   coordinatorOrigin: self.coordinatorOrigin
  #| })

///|
/// Convert to JsValue
pub fn AdAuctionOneSeller::to_js(self : AdAuctionOneSeller) -> JsValue {
  AdAuctionOneSeller::to_js_ffi(self)
}

///|
extern "js" fn AdAuctionOneSeller::from_js_ffi(
  value : JsValue,
) -> AdAuctionOneSeller =
  #| (v) => ({
  #|   seller: v.seller,
  #|   coordinatorOrigin: v.coordinatorOrigin
  #| })

///|
/// Convert from JsValue
pub fn AdAuctionOneSeller::from_js(value : JsValue) -> AdAuctionOneSeller {
  AdAuctionOneSeller::from_js_ffi(value)
}

///|
/// AdAuctionDataConfig dictionary
pub(all) struct AdAuctionDataConfig {
  seller : String?
  coordinatorOrigin : String?
  sellers : Array[AdAuctionOneSeller]?
  requestSize : Int?
  perBuyerConfig : JsValue?
}

///|
/// Create a new AdAuctionDataConfig with default values
pub fn AdAuctionDataConfig::default() -> AdAuctionDataConfig {
  AdAuctionDataConfig::{
    seller: None,
    coordinatorOrigin: None,
    sellers: None,
    requestSize: None,
    perBuyerConfig: None,
  }
}

///|
extern "js" fn AdAuctionDataConfig::to_js_ffi(
  self : AdAuctionDataConfig,
) -> JsValue =
  #| (self) => ({
  #|   seller: self.seller,
  #|   coordinatorOrigin: self.coordinatorOrigin,
  #|   sellers: ((() => { const v = self.sellers; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   requestSize: self.requestSize,
  #|   perBuyerConfig: ((() => { const v = self.perBuyerConfig; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn AdAuctionDataConfig::to_js(self : AdAuctionDataConfig) -> JsValue {
  AdAuctionDataConfig::to_js_ffi(self)
}

///|
extern "js" fn AdAuctionDataConfig::from_js_ffi(
  value : JsValue,
) -> AdAuctionDataConfig =
  #| (v) => ({
  #|   seller: v.seller,
  #|   coordinatorOrigin: v.coordinatorOrigin,
  #|   sellers: (v.sellers === undefined ? { $tag: 0 } : { $tag: 1, _0: v.sellers }),
  #|   requestSize: v.requestSize,
  #|   perBuyerConfig: (v.perBuyerConfig === undefined ? { $tag: 0 } : { $tag: 1, _0: v.perBuyerConfig })
  #| })

///|
/// Convert from JsValue
pub fn AdAuctionDataConfig::from_js(value : JsValue) -> AdAuctionDataConfig {
  AdAuctionDataConfig::from_js_ffi(value)
}

///|
/// AdAuctionDataBuyerConfig dictionary
pub(all) struct AdAuctionDataBuyerConfig {
  targetSize : Int?
}

///|
/// Create a new AdAuctionDataBuyerConfig with default values
pub fn AdAuctionDataBuyerConfig::default() -> AdAuctionDataBuyerConfig {
  AdAuctionDataBuyerConfig::{ targetSize: None }
}

///|
extern "js" fn AdAuctionDataBuyerConfig::to_js_ffi(
  self : AdAuctionDataBuyerConfig,
) -> JsValue =
  #| (self) => ({
  #|   targetSize: self.targetSize
  #| })

///|
/// Convert to JsValue
pub fn AdAuctionDataBuyerConfig::to_js(
  self : AdAuctionDataBuyerConfig,
) -> JsValue {
  AdAuctionDataBuyerConfig::to_js_ffi(self)
}

///|
extern "js" fn AdAuctionDataBuyerConfig::from_js_ffi(
  value : JsValue,
) -> AdAuctionDataBuyerConfig =
  #| (v) => ({
  #|   targetSize: v.targetSize
  #| })

///|
/// Convert from JsValue
pub fn AdAuctionDataBuyerConfig::from_js(
  value : JsValue,
) -> AdAuctionDataBuyerConfig {
  AdAuctionDataBuyerConfig::from_js_ffi(value)
}

///|
/// StorageInterestGroup dictionary
pub(all) struct StorageInterestGroup {
  owner : String
  name : String
  enableBiddingSignalsPrioritization : Bool?
  priorityVector : JsValue?
  sellerCapabilities : JsValue?
  executionMode : String?
  biddingLogicURL : String?
  biddingWasmHelperURL : String?
  updateURL : String?
  trustedBiddingSignalsURL : String?
  trustedBiddingSignalsKeys : Array[String]?
  trustedBiddingSignalsSlotSizeMode : String?
  maxTrustedBiddingSignalsURLLength : Int?
  trustedBiddingSignalsCoordinator : String?
  userBiddingSignals : JsValue?
  ads : Array[AuctionAd]?
  adComponents : Array[AuctionAd]?
  adSizes : JsValue?
  sizeGroups : JsValue?
  priority : Double?
  prioritySignalsOverrides : JsValue?
  lifetimeMs : Double
  additionalBidKey : String?
  privateAggregationConfig : ProtectedAudiencePrivateAggregationConfig?
  joinCount : Int64?
  bidCount : Int64?
  prevWinsMs : Array[PreviousWin]?
  joiningOrigin : String?
  timeSinceGroupJoinedMs : Int64?
  lifetimeRemainingMs : Int64?
  timeSinceLastUpdateMs : Int64?
  timeUntilNextUpdateMs : Int64?
  estimatedSize : Int64?
}

///|
/// Create a new StorageInterestGroup with default values
pub fn StorageInterestGroup::default() -> StorageInterestGroup {
  StorageInterestGroup::{
    owner: "",
    name: "",
    enableBiddingSignalsPrioritization: None,
    priorityVector: None,
    sellerCapabilities: None,
    executionMode: None,
    biddingLogicURL: None,
    biddingWasmHelperURL: None,
    updateURL: None,
    trustedBiddingSignalsURL: None,
    trustedBiddingSignalsKeys: None,
    trustedBiddingSignalsSlotSizeMode: None,
    maxTrustedBiddingSignalsURLLength: None,
    trustedBiddingSignalsCoordinator: None,
    userBiddingSignals: None,
    ads: None,
    adComponents: None,
    adSizes: None,
    sizeGroups: None,
    priority: None,
    prioritySignalsOverrides: None,
    lifetimeMs: 0,
    additionalBidKey: None,
    privateAggregationConfig: None,
    joinCount: None,
    bidCount: None,
    prevWinsMs: None,
    joiningOrigin: None,
    timeSinceGroupJoinedMs: None,
    lifetimeRemainingMs: None,
    timeSinceLastUpdateMs: None,
    timeUntilNextUpdateMs: None,
    estimatedSize: None,
  }
}

///|
extern "js" fn StorageInterestGroup::to_js_ffi(
  self : StorageInterestGroup,
) -> JsValue =
  #| (self) => ({
  #|   owner: self.owner,
  #|   name: self.name,
  #|   enableBiddingSignalsPrioritization: (self.enableBiddingSignalsPrioritization === -1 ? undefined : self.enableBiddingSignalsPrioritization),
  #|   priorityVector: ((() => { const v = self.priorityVector; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   sellerCapabilities: ((() => { const v = self.sellerCapabilities; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   executionMode: self.executionMode,
  #|   biddingLogicURL: self.biddingLogicURL,
  #|   biddingWasmHelperURL: self.biddingWasmHelperURL,
  #|   updateURL: self.updateURL,
  #|   trustedBiddingSignalsURL: self.trustedBiddingSignalsURL,
  #|   trustedBiddingSignalsKeys: ((() => { const v = self.trustedBiddingSignalsKeys; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   trustedBiddingSignalsSlotSizeMode: self.trustedBiddingSignalsSlotSizeMode,
  #|   maxTrustedBiddingSignalsURLLength: self.maxTrustedBiddingSignalsURLLength,
  #|   trustedBiddingSignalsCoordinator: self.trustedBiddingSignalsCoordinator,
  #|   userBiddingSignals: ((() => { const v = self.userBiddingSignals; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   ads: ((() => { const v = self.ads; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   adComponents: ((() => { const v = self.adComponents; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   adSizes: ((() => { const v = self.adSizes; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   sizeGroups: ((() => { const v = self.sizeGroups; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   priority: self.priority,
  #|   prioritySignalsOverrides: ((() => { const v = self.prioritySignalsOverrides; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   lifetimeMs: self.lifetimeMs,
  #|   additionalBidKey: self.additionalBidKey,
  #|   privateAggregationConfig: ((() => { const v = self.privateAggregationConfig; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   joinCount: self.joinCount,
  #|   bidCount: self.bidCount,
  #|   prevWinsMs: ((() => { const v = self.prevWinsMs; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   joiningOrigin: self.joiningOrigin,
  #|   timeSinceGroupJoinedMs: self.timeSinceGroupJoinedMs,
  #|   lifetimeRemainingMs: self.lifetimeRemainingMs,
  #|   timeSinceLastUpdateMs: self.timeSinceLastUpdateMs,
  #|   timeUntilNextUpdateMs: self.timeUntilNextUpdateMs,
  #|   estimatedSize: self.estimatedSize
  #| })

///|
/// Convert to JsValue
pub fn StorageInterestGroup::to_js(self : StorageInterestGroup) -> JsValue {
  StorageInterestGroup::to_js_ffi(self)
}

///|
extern "js" fn StorageInterestGroup::from_js_ffi(
  value : JsValue,
) -> StorageInterestGroup =
  #| (v) => ({
  #|   owner: v.owner,
  #|   name: v.name,
  #|   enableBiddingSignalsPrioritization: (v.enableBiddingSignalsPrioritization === undefined ? -1 : v.enableBiddingSignalsPrioritization),
  #|   priorityVector: (v.priorityVector === undefined ? { $tag: 0 } : { $tag: 1, _0: v.priorityVector }),
  #|   sellerCapabilities: (v.sellerCapabilities === undefined ? { $tag: 0 } : { $tag: 1, _0: v.sellerCapabilities }),
  #|   executionMode: v.executionMode,
  #|   biddingLogicURL: v.biddingLogicURL,
  #|   biddingWasmHelperURL: v.biddingWasmHelperURL,
  #|   updateURL: v.updateURL,
  #|   trustedBiddingSignalsURL: v.trustedBiddingSignalsURL,
  #|   trustedBiddingSignalsKeys: (v.trustedBiddingSignalsKeys === undefined ? { $tag: 0 } : { $tag: 1, _0: v.trustedBiddingSignalsKeys }),
  #|   trustedBiddingSignalsSlotSizeMode: v.trustedBiddingSignalsSlotSizeMode,
  #|   maxTrustedBiddingSignalsURLLength: v.maxTrustedBiddingSignalsURLLength,
  #|   trustedBiddingSignalsCoordinator: v.trustedBiddingSignalsCoordinator,
  #|   userBiddingSignals: (v.userBiddingSignals === undefined ? { $tag: 0 } : { $tag: 1, _0: v.userBiddingSignals }),
  #|   ads: (v.ads === undefined ? { $tag: 0 } : { $tag: 1, _0: v.ads }),
  #|   adComponents: (v.adComponents === undefined ? { $tag: 0 } : { $tag: 1, _0: v.adComponents }),
  #|   adSizes: (v.adSizes === undefined ? { $tag: 0 } : { $tag: 1, _0: v.adSizes }),
  #|   sizeGroups: (v.sizeGroups === undefined ? { $tag: 0 } : { $tag: 1, _0: v.sizeGroups }),
  #|   priority: v.priority,
  #|   prioritySignalsOverrides: (v.prioritySignalsOverrides === undefined ? { $tag: 0 } : { $tag: 1, _0: v.prioritySignalsOverrides }),
  #|   lifetimeMs: v.lifetimeMs,
  #|   additionalBidKey: v.additionalBidKey,
  #|   privateAggregationConfig: (v.privateAggregationConfig === undefined ? { $tag: 0 } : { $tag: 1, _0: v.privateAggregationConfig }),
  #|   joinCount: v.joinCount,
  #|   bidCount: v.bidCount,
  #|   prevWinsMs: (v.prevWinsMs === undefined ? { $tag: 0 } : { $tag: 1, _0: v.prevWinsMs }),
  #|   joiningOrigin: v.joiningOrigin,
  #|   timeSinceGroupJoinedMs: v.timeSinceGroupJoinedMs,
  #|   lifetimeRemainingMs: v.lifetimeRemainingMs,
  #|   timeSinceLastUpdateMs: v.timeSinceLastUpdateMs,
  #|   timeUntilNextUpdateMs: v.timeUntilNextUpdateMs,
  #|   estimatedSize: v.estimatedSize
  #| })

///|
/// Convert from JsValue
pub fn StorageInterestGroup::from_js(value : JsValue) -> StorageInterestGroup {
  StorageInterestGroup::from_js_ffi(value)
}

///|
/// PASignalValue dictionary
pub(all) struct PASignalValue {
  baseValue : String
  scale : Double?
  offset : BigintOrInt?
}

///|
/// Create a new PASignalValue with default values
pub fn PASignalValue::default() -> PASignalValue {
  PASignalValue::{ baseValue: "", scale: None, offset: None }
}

///|
extern "js" fn PASignalValue::to_js_ffi(self : PASignalValue) -> JsValue =
  #| (self) => ({
  #|   baseValue: self.baseValue,
  #|   scale: self.scale,
  #|   offset: ((() => { const v = self.offset; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn PASignalValue::to_js(self : PASignalValue) -> JsValue {
  PASignalValue::to_js_ffi(self)
}

///|
extern "js" fn PASignalValue::from_js_ffi(value : JsValue) -> PASignalValue =
  #| (v) => ({
  #|   baseValue: v.baseValue,
  #|   scale: v.scale,
  #|   offset: (v.offset === undefined ? { $tag: 0 } : { $tag: 1, _0: v.offset })
  #| })

///|
/// Convert from JsValue
pub fn PASignalValue::from_js(value : JsValue) -> PASignalValue {
  PASignalValue::from_js_ffi(value)
}

///|
/// PAExtendedHistogramContribution dictionary
pub(all) struct PAExtendedHistogramContribution {
  bucket : PASignalValueOrBigint
  value : PASignalValueOrInt
  filteringId : JsValue?
}

///|
/// Create a new PAExtendedHistogramContribution
pub fn PAExtendedHistogramContribution::new(
  bucket~ : PASignalValueOrBigint,
  value~ : PASignalValueOrInt,
) -> PAExtendedHistogramContribution {
  PAExtendedHistogramContribution::{ bucket, value, filteringId: None }
}

///|
extern "js" fn PAExtendedHistogramContribution::to_js_ffi(
  self : PAExtendedHistogramContribution,
) -> JsValue =
  #| (self) => ({
  #|   bucket: self.bucket,
  #|   value: self.value,
  #|   filteringId: ((() => { const v = self.filteringId; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn PAExtendedHistogramContribution::to_js(
  self : PAExtendedHistogramContribution,
) -> JsValue {
  PAExtendedHistogramContribution::to_js_ffi(self)
}

///|
extern "js" fn PAExtendedHistogramContribution::from_js_ffi(
  value : JsValue,
) -> PAExtendedHistogramContribution =
  #| (v) => ({
  #|   bucket: v.bucket,
  #|   value: v.value,
  #|   filteringId: (v.filteringId === undefined ? { $tag: 0 } : { $tag: 1, _0: v.filteringId })
  #| })

///|
/// Convert from JsValue
pub fn PAExtendedHistogramContribution::from_js(
  value : JsValue,
) -> PAExtendedHistogramContribution {
  PAExtendedHistogramContribution::from_js_ffi(value)
}

///|
/// RealTimeContribution dictionary
pub(all) struct RealTimeContribution {
  bucket : Int
  priorityWeight : Double
  latencyThreshold : Int?
}

///|
/// Create a new RealTimeContribution with default values
pub fn RealTimeContribution::default() -> RealTimeContribution {
  RealTimeContribution::{ bucket: 0, priorityWeight: 0, latencyThreshold: None }
}

///|
extern "js" fn RealTimeContribution::to_js_ffi(
  self : RealTimeContribution,
) -> JsValue =
  #| (self) => ({
  #|   bucket: self.bucket,
  #|   priorityWeight: self.priorityWeight,
  #|   latencyThreshold: self.latencyThreshold
  #| })

///|
/// Convert to JsValue
pub fn RealTimeContribution::to_js(self : RealTimeContribution) -> JsValue {
  RealTimeContribution::to_js_ffi(self)
}

///|
extern "js" fn RealTimeContribution::from_js_ffi(
  value : JsValue,
) -> RealTimeContribution =
  #| (v) => ({
  #|   bucket: v.bucket,
  #|   priorityWeight: v.priorityWeight,
  #|   latencyThreshold: v.latencyThreshold
  #| })

///|
/// Convert from JsValue
pub fn RealTimeContribution::from_js(value : JsValue) -> RealTimeContribution {
  RealTimeContribution::from_js_ffi(value)
}

///|
/// AdRender dictionary
pub(all) struct AdRender {
  url : String
  width : String?
  height : String?
}

///|
/// Create a new AdRender with default values
pub fn AdRender::default() -> AdRender {
  AdRender::{ url: "", width: None, height: None }
}

///|
extern "js" fn AdRender::to_js_ffi(self : AdRender) -> JsValue =
  #| (self) => ({
  #|   url: self.url,
  #|   width: self.width,
  #|   height: self.height
  #| })

///|
/// Convert to JsValue
pub fn AdRender::to_js(self : AdRender) -> JsValue {
  AdRender::to_js_ffi(self)
}

///|
extern "js" fn AdRender::from_js_ffi(value : JsValue) -> AdRender =
  #| (v) => ({
  #|   url: v.url,
  #|   width: v.width,
  #|   height: v.height
  #| })

///|
/// Convert from JsValue
pub fn AdRender::from_js(value : JsValue) -> AdRender {
  AdRender::from_js_ffi(value)
}

///|
/// GenerateBidOutput dictionary
pub(all) struct GenerateBidOutput {
  bid : Double?
  bidCurrency : String?
  render : StringOrAdRender?
  ad : JsValue?
  selectedBuyerAndSellerReportingId : String?
  adComponents : Array[StringOrAdRender]?
  adCost : Double?
  modelingSignals : Double?
  allowComponentAuction : Bool?
  targetNumAdComponents : Int?
  numMandatoryAdComponents : Int?
}

///|
/// Create a new GenerateBidOutput with default values
pub fn GenerateBidOutput::default() -> GenerateBidOutput {
  GenerateBidOutput::{
    bid: None,
    bidCurrency: None,
    render: None,
    ad: None,
    selectedBuyerAndSellerReportingId: None,
    adComponents: None,
    adCost: None,
    modelingSignals: None,
    allowComponentAuction: None,
    targetNumAdComponents: None,
    numMandatoryAdComponents: None,
  }
}

///|
extern "js" fn GenerateBidOutput::to_js_ffi(
  self : GenerateBidOutput,
) -> JsValue =
  #| (self) => ({
  #|   bid: self.bid,
  #|   bidCurrency: self.bidCurrency,
  #|   render: ((() => { const v = self.render; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   ad: ((() => { const v = self.ad; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   selectedBuyerAndSellerReportingId: self.selectedBuyerAndSellerReportingId,
  #|   adComponents: ((() => { const v = self.adComponents; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   adCost: self.adCost,
  #|   modelingSignals: self.modelingSignals,
  #|   allowComponentAuction: (self.allowComponentAuction === -1 ? undefined : self.allowComponentAuction),
  #|   targetNumAdComponents: self.targetNumAdComponents,
  #|   numMandatoryAdComponents: self.numMandatoryAdComponents
  #| })

///|
/// Convert to JsValue
pub fn GenerateBidOutput::to_js(self : GenerateBidOutput) -> JsValue {
  GenerateBidOutput::to_js_ffi(self)
}

///|
extern "js" fn GenerateBidOutput::from_js_ffi(
  value : JsValue,
) -> GenerateBidOutput =
  #| (v) => ({
  #|   bid: v.bid,
  #|   bidCurrency: v.bidCurrency,
  #|   render: (v.render === undefined ? { $tag: 0 } : { $tag: 1, _0: v.render }),
  #|   ad: (v.ad === undefined ? { $tag: 0 } : { $tag: 1, _0: v.ad }),
  #|   selectedBuyerAndSellerReportingId: v.selectedBuyerAndSellerReportingId,
  #|   adComponents: (v.adComponents === undefined ? { $tag: 0 } : { $tag: 1, _0: v.adComponents }),
  #|   adCost: v.adCost,
  #|   modelingSignals: v.modelingSignals,
  #|   allowComponentAuction: (v.allowComponentAuction === undefined ? -1 : v.allowComponentAuction),
  #|   targetNumAdComponents: v.targetNumAdComponents,
  #|   numMandatoryAdComponents: v.numMandatoryAdComponents
  #| })

///|
/// Convert from JsValue
pub fn GenerateBidOutput::from_js(value : JsValue) -> GenerateBidOutput {
  GenerateBidOutput::from_js_ffi(value)
}

///|
/// BiddingBrowserSignals dictionary
pub(all) struct BiddingBrowserSignals {
  topWindowHostname : String
  seller : String
  joinCount : Int
  bidCount : Int
  recency : Int
  adComponentsLimit : Int
  multiBidLimit : Int
  requestedSize : JsValue?
  topLevelSeller : String?
  prevWinsMs : Array[PreviousWin]?
  wasmHelper : JsValue?
  dataVersion : Int?
  crossOriginDataVersion : Int?
  forDebuggingOnlyInCooldownOrLockout : Bool?
}

///|
/// Create a new BiddingBrowserSignals with default values
pub fn BiddingBrowserSignals::default() -> BiddingBrowserSignals {
  BiddingBrowserSignals::{
    topWindowHostname: "",
    seller: "",
    joinCount: 0,
    bidCount: 0,
    recency: 0,
    adComponentsLimit: 0,
    multiBidLimit: 0,
    requestedSize: None,
    topLevelSeller: None,
    prevWinsMs: None,
    wasmHelper: None,
    dataVersion: None,
    crossOriginDataVersion: None,
    forDebuggingOnlyInCooldownOrLockout: None,
  }
}

///|
extern "js" fn BiddingBrowserSignals::to_js_ffi(
  self : BiddingBrowserSignals,
) -> JsValue =
  #| (self) => ({
  #|   topWindowHostname: self.topWindowHostname,
  #|   seller: self.seller,
  #|   joinCount: self.joinCount,
  #|   bidCount: self.bidCount,
  #|   recency: self.recency,
  #|   adComponentsLimit: self.adComponentsLimit,
  #|   multiBidLimit: self.multiBidLimit,
  #|   requestedSize: ((() => { const v = self.requestedSize; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   topLevelSeller: self.topLevelSeller,
  #|   prevWinsMs: ((() => { const v = self.prevWinsMs; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   wasmHelper: ((() => { const v = self.wasmHelper; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   dataVersion: self.dataVersion,
  #|   crossOriginDataVersion: self.crossOriginDataVersion,
  #|   forDebuggingOnlyInCooldownOrLockout: (self.forDebuggingOnlyInCooldownOrLockout === -1 ? undefined : self.forDebuggingOnlyInCooldownOrLockout)
  #| })

///|
/// Convert to JsValue
pub fn BiddingBrowserSignals::to_js(self : BiddingBrowserSignals) -> JsValue {
  BiddingBrowserSignals::to_js_ffi(self)
}

///|
extern "js" fn BiddingBrowserSignals::from_js_ffi(
  value : JsValue,
) -> BiddingBrowserSignals =
  #| (v) => ({
  #|   topWindowHostname: v.topWindowHostname,
  #|   seller: v.seller,
  #|   joinCount: v.joinCount,
  #|   bidCount: v.bidCount,
  #|   recency: v.recency,
  #|   adComponentsLimit: v.adComponentsLimit,
  #|   multiBidLimit: v.multiBidLimit,
  #|   requestedSize: (v.requestedSize === undefined ? { $tag: 0 } : { $tag: 1, _0: v.requestedSize }),
  #|   topLevelSeller: v.topLevelSeller,
  #|   prevWinsMs: (v.prevWinsMs === undefined ? { $tag: 0 } : { $tag: 1, _0: v.prevWinsMs }),
  #|   wasmHelper: (v.wasmHelper === undefined ? { $tag: 0 } : { $tag: 1, _0: v.wasmHelper }),
  #|   dataVersion: v.dataVersion,
  #|   crossOriginDataVersion: v.crossOriginDataVersion,
  #|   forDebuggingOnlyInCooldownOrLockout: (v.forDebuggingOnlyInCooldownOrLockout === undefined ? -1 : v.forDebuggingOnlyInCooldownOrLockout)
  #| })

///|
/// Convert from JsValue
pub fn BiddingBrowserSignals::from_js(value : JsValue) -> BiddingBrowserSignals {
  BiddingBrowserSignals::from_js_ffi(value)
}

///|
/// ScoringBrowserSignals dictionary
pub(all) struct ScoringBrowserSignals {
  topWindowHostname : String
  interestGroupOwner : String
  renderURL : String
  biddingDurationMsec : Int
  bidCurrency : String
  renderSize : JsValue?
  dataVersion : Int?
  crossOriginDataVersion : Int?
  adComponents : Array[String]?
  forDebuggingOnlyInCooldownOrLockout : Bool?
  creativeScanningMetadata : String?
  adComponentsCreativeScanningMetadata : Array[JsValue]?
}

///|
/// Create a new ScoringBrowserSignals with default values
pub fn ScoringBrowserSignals::default() -> ScoringBrowserSignals {
  ScoringBrowserSignals::{
    topWindowHostname: "",
    interestGroupOwner: "",
    renderURL: "",
    biddingDurationMsec: 0,
    bidCurrency: "",
    renderSize: None,
    dataVersion: None,
    crossOriginDataVersion: None,
    adComponents: None,
    forDebuggingOnlyInCooldownOrLockout: None,
    creativeScanningMetadata: None,
    adComponentsCreativeScanningMetadata: None,
  }
}

///|
extern "js" fn ScoringBrowserSignals::to_js_ffi(
  self : ScoringBrowserSignals,
) -> JsValue =
  #| (self) => ({
  #|   topWindowHostname: self.topWindowHostname,
  #|   interestGroupOwner: self.interestGroupOwner,
  #|   renderURL: self.renderURL,
  #|   biddingDurationMsec: self.biddingDurationMsec,
  #|   bidCurrency: self.bidCurrency,
  #|   renderSize: ((() => { const v = self.renderSize; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   dataVersion: self.dataVersion,
  #|   crossOriginDataVersion: self.crossOriginDataVersion,
  #|   adComponents: ((() => { const v = self.adComponents; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   forDebuggingOnlyInCooldownOrLockout: (self.forDebuggingOnlyInCooldownOrLockout === -1 ? undefined : self.forDebuggingOnlyInCooldownOrLockout),
  #|   creativeScanningMetadata: self.creativeScanningMetadata,
  #|   adComponentsCreativeScanningMetadata: ((() => { const v = self.adComponentsCreativeScanningMetadata; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn ScoringBrowserSignals::to_js(self : ScoringBrowserSignals) -> JsValue {
  ScoringBrowserSignals::to_js_ffi(self)
}

///|
extern "js" fn ScoringBrowserSignals::from_js_ffi(
  value : JsValue,
) -> ScoringBrowserSignals =
  #| (v) => ({
  #|   topWindowHostname: v.topWindowHostname,
  #|   interestGroupOwner: v.interestGroupOwner,
  #|   renderURL: v.renderURL,
  #|   biddingDurationMsec: v.biddingDurationMsec,
  #|   bidCurrency: v.bidCurrency,
  #|   renderSize: (v.renderSize === undefined ? { $tag: 0 } : { $tag: 1, _0: v.renderSize }),
  #|   dataVersion: v.dataVersion,
  #|   crossOriginDataVersion: v.crossOriginDataVersion,
  #|   adComponents: (v.adComponents === undefined ? { $tag: 0 } : { $tag: 1, _0: v.adComponents }),
  #|   forDebuggingOnlyInCooldownOrLockout: (v.forDebuggingOnlyInCooldownOrLockout === undefined ? -1 : v.forDebuggingOnlyInCooldownOrLockout),
  #|   creativeScanningMetadata: v.creativeScanningMetadata,
  #|   adComponentsCreativeScanningMetadata: (v.adComponentsCreativeScanningMetadata === undefined ? { $tag: 0 } : { $tag: 1, _0: v.adComponentsCreativeScanningMetadata })
  #| })

///|
/// Convert from JsValue
pub fn ScoringBrowserSignals::from_js(value : JsValue) -> ScoringBrowserSignals {
  ScoringBrowserSignals::from_js_ffi(value)
}

///|
/// ReportingBrowserSignals dictionary
pub(all) struct ReportingBrowserSignals {
  topWindowHostname : String
  interestGroupOwner : String
  renderURL : String
  bid : Double
  highestScoringOtherBid : Double
  bidCurrency : String?
  highestScoringOtherBidCurrency : String?
  topLevelSeller : String?
  componentSeller : String?
  buyerAndSellerReportingId : String?
  selectedBuyerAndSellerReportingId : String?
}

///|
/// Create a new ReportingBrowserSignals with default values
pub fn ReportingBrowserSignals::default() -> ReportingBrowserSignals {
  ReportingBrowserSignals::{
    topWindowHostname: "",
    interestGroupOwner: "",
    renderURL: "",
    bid: 0,
    highestScoringOtherBid: 0,
    bidCurrency: None,
    highestScoringOtherBidCurrency: None,
    topLevelSeller: None,
    componentSeller: None,
    buyerAndSellerReportingId: None,
    selectedBuyerAndSellerReportingId: None,
  }
}

///|
extern "js" fn ReportingBrowserSignals::to_js_ffi(
  self : ReportingBrowserSignals,
) -> JsValue =
  #| (self) => ({
  #|   topWindowHostname: self.topWindowHostname,
  #|   interestGroupOwner: self.interestGroupOwner,
  #|   renderURL: self.renderURL,
  #|   bid: self.bid,
  #|   highestScoringOtherBid: self.highestScoringOtherBid,
  #|   bidCurrency: self.bidCurrency,
  #|   highestScoringOtherBidCurrency: self.highestScoringOtherBidCurrency,
  #|   topLevelSeller: self.topLevelSeller,
  #|   componentSeller: self.componentSeller,
  #|   buyerAndSellerReportingId: self.buyerAndSellerReportingId,
  #|   selectedBuyerAndSellerReportingId: self.selectedBuyerAndSellerReportingId
  #| })

///|
/// Convert to JsValue
pub fn ReportingBrowserSignals::to_js(
  self : ReportingBrowserSignals,
) -> JsValue {
  ReportingBrowserSignals::to_js_ffi(self)
}

///|
extern "js" fn ReportingBrowserSignals::from_js_ffi(
  value : JsValue,
) -> ReportingBrowserSignals =
  #| (v) => ({
  #|   topWindowHostname: v.topWindowHostname,
  #|   interestGroupOwner: v.interestGroupOwner,
  #|   renderURL: v.renderURL,
  #|   bid: v.bid,
  #|   highestScoringOtherBid: v.highestScoringOtherBid,
  #|   bidCurrency: v.bidCurrency,
  #|   highestScoringOtherBidCurrency: v.highestScoringOtherBidCurrency,
  #|   topLevelSeller: v.topLevelSeller,
  #|   componentSeller: v.componentSeller,
  #|   buyerAndSellerReportingId: v.buyerAndSellerReportingId,
  #|   selectedBuyerAndSellerReportingId: v.selectedBuyerAndSellerReportingId
  #| })

///|
/// Convert from JsValue
pub fn ReportingBrowserSignals::from_js(
  value : JsValue,
) -> ReportingBrowserSignals {
  ReportingBrowserSignals::from_js_ffi(value)
}

///|
/// ReportResultBrowserSignals dictionary
pub(all) struct ReportResultBrowserSignals {
  topWindowHostname : String
  interestGroupOwner : String
  renderURL : String
  bid : Double
  highestScoringOtherBid : Double
  bidCurrency : String?
  highestScoringOtherBidCurrency : String?
  topLevelSeller : String?
  componentSeller : String?
  buyerAndSellerReportingId : String?
  selectedBuyerAndSellerReportingId : String?
  desirability : Double
  topLevelSellerSignals : String?
  modifiedBid : Double?
  dataVersion : Int?
}

///|
/// Create a new ReportResultBrowserSignals with default values
pub fn ReportResultBrowserSignals::default() -> ReportResultBrowserSignals {
  ReportResultBrowserSignals::{
    topWindowHostname: "",
    interestGroupOwner: "",
    renderURL: "",
    bid: 0,
    highestScoringOtherBid: 0,
    bidCurrency: None,
    highestScoringOtherBidCurrency: None,
    topLevelSeller: None,
    componentSeller: None,
    buyerAndSellerReportingId: None,
    selectedBuyerAndSellerReportingId: None,
    desirability: 0,
    topLevelSellerSignals: None,
    modifiedBid: None,
    dataVersion: None,
  }
}

///|
extern "js" fn ReportResultBrowserSignals::to_js_ffi(
  self : ReportResultBrowserSignals,
) -> JsValue =
  #| (self) => ({
  #|   topWindowHostname: self.topWindowHostname,
  #|   interestGroupOwner: self.interestGroupOwner,
  #|   renderURL: self.renderURL,
  #|   bid: self.bid,
  #|   highestScoringOtherBid: self.highestScoringOtherBid,
  #|   bidCurrency: self.bidCurrency,
  #|   highestScoringOtherBidCurrency: self.highestScoringOtherBidCurrency,
  #|   topLevelSeller: self.topLevelSeller,
  #|   componentSeller: self.componentSeller,
  #|   buyerAndSellerReportingId: self.buyerAndSellerReportingId,
  #|   selectedBuyerAndSellerReportingId: self.selectedBuyerAndSellerReportingId,
  #|   desirability: self.desirability,
  #|   topLevelSellerSignals: self.topLevelSellerSignals,
  #|   modifiedBid: self.modifiedBid,
  #|   dataVersion: self.dataVersion
  #| })

///|
/// Convert to JsValue
pub fn ReportResultBrowserSignals::to_js(
  self : ReportResultBrowserSignals,
) -> JsValue {
  ReportResultBrowserSignals::to_js_ffi(self)
}

///|
extern "js" fn ReportResultBrowserSignals::from_js_ffi(
  value : JsValue,
) -> ReportResultBrowserSignals =
  #| (v) => ({
  #|   topWindowHostname: v.topWindowHostname,
  #|   interestGroupOwner: v.interestGroupOwner,
  #|   renderURL: v.renderURL,
  #|   bid: v.bid,
  #|   highestScoringOtherBid: v.highestScoringOtherBid,
  #|   bidCurrency: v.bidCurrency,
  #|   highestScoringOtherBidCurrency: v.highestScoringOtherBidCurrency,
  #|   topLevelSeller: v.topLevelSeller,
  #|   componentSeller: v.componentSeller,
  #|   buyerAndSellerReportingId: v.buyerAndSellerReportingId,
  #|   selectedBuyerAndSellerReportingId: v.selectedBuyerAndSellerReportingId,
  #|   desirability: v.desirability,
  #|   topLevelSellerSignals: v.topLevelSellerSignals,
  #|   modifiedBid: v.modifiedBid,
  #|   dataVersion: v.dataVersion
  #| })

///|
/// Convert from JsValue
pub fn ReportResultBrowserSignals::from_js(
  value : JsValue,
) -> ReportResultBrowserSignals {
  ReportResultBrowserSignals::from_js_ffi(value)
}

///|
/// ReportWinBrowserSignals dictionary
pub(all) struct ReportWinBrowserSignals {
  topWindowHostname : String
  interestGroupOwner : String
  renderURL : String
  bid : Double
  highestScoringOtherBid : Double
  bidCurrency : String?
  highestScoringOtherBidCurrency : String?
  topLevelSeller : String?
  componentSeller : String?
  buyerAndSellerReportingId : String?
  selectedBuyerAndSellerReportingId : String?
  adCost : Double?
  seller : String?
  madeHighestScoringOtherBid : Bool?
  interestGroupName : String?
  buyerReportingId : String?
  modelingSignals : Int?
  dataVersion : Int?
  kAnonStatus : KAnonStatus?
}

///|
/// Create a new ReportWinBrowserSignals with default values
pub fn ReportWinBrowserSignals::default() -> ReportWinBrowserSignals {
  ReportWinBrowserSignals::{
    topWindowHostname: "",
    interestGroupOwner: "",
    renderURL: "",
    bid: 0,
    highestScoringOtherBid: 0,
    bidCurrency: None,
    highestScoringOtherBidCurrency: None,
    topLevelSeller: None,
    componentSeller: None,
    buyerAndSellerReportingId: None,
    selectedBuyerAndSellerReportingId: None,
    adCost: None,
    seller: None,
    madeHighestScoringOtherBid: None,
    interestGroupName: None,
    buyerReportingId: None,
    modelingSignals: None,
    dataVersion: None,
    kAnonStatus: None,
  }
}

///|
extern "js" fn ReportWinBrowserSignals::to_js_ffi(
  self : ReportWinBrowserSignals,
) -> JsValue =
  #| (self) => ({
  #|   topWindowHostname: self.topWindowHostname,
  #|   interestGroupOwner: self.interestGroupOwner,
  #|   renderURL: self.renderURL,
  #|   bid: self.bid,
  #|   highestScoringOtherBid: self.highestScoringOtherBid,
  #|   bidCurrency: self.bidCurrency,
  #|   highestScoringOtherBidCurrency: self.highestScoringOtherBidCurrency,
  #|   topLevelSeller: self.topLevelSeller,
  #|   componentSeller: self.componentSeller,
  #|   buyerAndSellerReportingId: self.buyerAndSellerReportingId,
  #|   selectedBuyerAndSellerReportingId: self.selectedBuyerAndSellerReportingId,
  #|   adCost: self.adCost,
  #|   seller: self.seller,
  #|   madeHighestScoringOtherBid: (self.madeHighestScoringOtherBid === -1 ? undefined : self.madeHighestScoringOtherBid),
  #|   interestGroupName: self.interestGroupName,
  #|   buyerReportingId: self.buyerReportingId,
  #|   modelingSignals: self.modelingSignals,
  #|   dataVersion: self.dataVersion,
  #|   kAnonStatus: ((() => { const v = self.kAnonStatus; if (v === undefined) return undefined; return ['passedAndEnforced', 'passedNotEnforced', 'belowThreshold', 'notCalculated'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn ReportWinBrowserSignals::to_js(
  self : ReportWinBrowserSignals,
) -> JsValue {
  ReportWinBrowserSignals::to_js_ffi(self)
}

///|
extern "js" fn ReportWinBrowserSignals::from_js_ffi(
  value : JsValue,
) -> ReportWinBrowserSignals =
  #| (v) => ({
  #|   topWindowHostname: v.topWindowHostname,
  #|   interestGroupOwner: v.interestGroupOwner,
  #|   renderURL: v.renderURL,
  #|   bid: v.bid,
  #|   highestScoringOtherBid: v.highestScoringOtherBid,
  #|   bidCurrency: v.bidCurrency,
  #|   highestScoringOtherBidCurrency: v.highestScoringOtherBidCurrency,
  #|   topLevelSeller: v.topLevelSeller,
  #|   componentSeller: v.componentSeller,
  #|   buyerAndSellerReportingId: v.buyerAndSellerReportingId,
  #|   selectedBuyerAndSellerReportingId: v.selectedBuyerAndSellerReportingId,
  #|   adCost: v.adCost,
  #|   seller: v.seller,
  #|   madeHighestScoringOtherBid: (v.madeHighestScoringOtherBid === undefined ? -1 : v.madeHighestScoringOtherBid),
  #|   interestGroupName: v.interestGroupName,
  #|   buyerReportingId: v.buyerReportingId,
  #|   modelingSignals: v.modelingSignals,
  #|   dataVersion: v.dataVersion,
  #|   kAnonStatus: (v.kAnonStatus === undefined ? undefined : ['passedAndEnforced', 'passedNotEnforced', 'belowThreshold', 'notCalculated'].indexOf(v.kAnonStatus))
  #| })

///|
/// Convert from JsValue
pub fn ReportWinBrowserSignals::from_js(
  value : JsValue,
) -> ReportWinBrowserSignals {
  ReportWinBrowserSignals::from_js_ffi(value)
}

///|
/// DirectFromSellerSignalsForBuyer dictionary
pub(all) struct DirectFromSellerSignalsForBuyer {
  auctionSignals : JsValue?
  perBuyerSignals : JsValue?
}

///|
/// Create a new DirectFromSellerSignalsForBuyer with default values
pub fn DirectFromSellerSignalsForBuyer::default() -> DirectFromSellerSignalsForBuyer {
  DirectFromSellerSignalsForBuyer::{
    auctionSignals: None,
    perBuyerSignals: None,
  }
}

///|
extern "js" fn DirectFromSellerSignalsForBuyer::to_js_ffi(
  self : DirectFromSellerSignalsForBuyer,
) -> JsValue =
  #| (self) => ({
  #|   auctionSignals: ((() => { const v = self.auctionSignals; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   perBuyerSignals: ((() => { const v = self.perBuyerSignals; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn DirectFromSellerSignalsForBuyer::to_js(
  self : DirectFromSellerSignalsForBuyer,
) -> JsValue {
  DirectFromSellerSignalsForBuyer::to_js_ffi(self)
}

///|
extern "js" fn DirectFromSellerSignalsForBuyer::from_js_ffi(
  value : JsValue,
) -> DirectFromSellerSignalsForBuyer =
  #| (v) => ({
  #|   auctionSignals: (v.auctionSignals === undefined ? { $tag: 0 } : { $tag: 1, _0: v.auctionSignals }),
  #|   perBuyerSignals: (v.perBuyerSignals === undefined ? { $tag: 0 } : { $tag: 1, _0: v.perBuyerSignals })
  #| })

///|
/// Convert from JsValue
pub fn DirectFromSellerSignalsForBuyer::from_js(
  value : JsValue,
) -> DirectFromSellerSignalsForBuyer {
  DirectFromSellerSignalsForBuyer::from_js_ffi(value)
}

///|
/// DirectFromSellerSignalsForSeller dictionary
pub(all) struct DirectFromSellerSignalsForSeller {
  auctionSignals : JsValue?
  sellerSignals : JsValue?
}

///|
/// Create a new DirectFromSellerSignalsForSeller with default values
pub fn DirectFromSellerSignalsForSeller::default() -> DirectFromSellerSignalsForSeller {
  DirectFromSellerSignalsForSeller::{
    auctionSignals: None,
    sellerSignals: None,
  }
}

///|
extern "js" fn DirectFromSellerSignalsForSeller::to_js_ffi(
  self : DirectFromSellerSignalsForSeller,
) -> JsValue =
  #| (self) => ({
  #|   auctionSignals: ((() => { const v = self.auctionSignals; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   sellerSignals: ((() => { const v = self.sellerSignals; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn DirectFromSellerSignalsForSeller::to_js(
  self : DirectFromSellerSignalsForSeller,
) -> JsValue {
  DirectFromSellerSignalsForSeller::to_js_ffi(self)
}

///|
extern "js" fn DirectFromSellerSignalsForSeller::from_js_ffi(
  value : JsValue,
) -> DirectFromSellerSignalsForSeller =
  #| (v) => ({
  #|   auctionSignals: (v.auctionSignals === undefined ? { $tag: 0 } : { $tag: 1, _0: v.auctionSignals }),
  #|   sellerSignals: (v.sellerSignals === undefined ? { $tag: 0 } : { $tag: 1, _0: v.sellerSignals })
  #| })

///|
/// Convert from JsValue
pub fn DirectFromSellerSignalsForSeller::from_js(
  value : JsValue,
) -> DirectFromSellerSignalsForSeller {
  DirectFromSellerSignalsForSeller::from_js_ffi(value)
}

///|
/// ScoreAdOutput dictionary
pub(all) struct ScoreAdOutput {
  desirability : Double
  bid : Double?
  bidCurrency : String?
  incomingBidInSellerCurrency : Double?
  allowComponentAuction : Bool?
}

///|
/// Create a new ScoreAdOutput with default values
pub fn ScoreAdOutput::default() -> ScoreAdOutput {
  ScoreAdOutput::{
    desirability: 0,
    bid: None,
    bidCurrency: None,
    incomingBidInSellerCurrency: None,
    allowComponentAuction: None,
  }
}

///|
extern "js" fn ScoreAdOutput::to_js_ffi(self : ScoreAdOutput) -> JsValue =
  #| (self) => ({
  #|   desirability: self.desirability,
  #|   bid: self.bid,
  #|   bidCurrency: self.bidCurrency,
  #|   incomingBidInSellerCurrency: self.incomingBidInSellerCurrency,
  #|   allowComponentAuction: (self.allowComponentAuction === -1 ? undefined : self.allowComponentAuction)
  #| })

///|
/// Convert to JsValue
pub fn ScoreAdOutput::to_js(self : ScoreAdOutput) -> JsValue {
  ScoreAdOutput::to_js_ffi(self)
}

///|
extern "js" fn ScoreAdOutput::from_js_ffi(value : JsValue) -> ScoreAdOutput =
  #| (v) => ({
  #|   desirability: v.desirability,
  #|   bid: v.bid,
  #|   bidCurrency: v.bidCurrency,
  #|   incomingBidInSellerCurrency: v.incomingBidInSellerCurrency,
  #|   allowComponentAuction: (v.allowComponentAuction === undefined ? -1 : v.allowComponentAuction)
  #| })

///|
/// Convert from JsValue
pub fn ScoreAdOutput::from_js(value : JsValue) -> ScoreAdOutput {
  ScoreAdOutput::from_js_ffi(value)
}

///|
/// InterestGroupScriptRunnerGlobalScope interface
pub type InterestGroupScriptRunnerGlobalScope

///|
pub extern "js" fn InterestGroupScriptRunnerGlobalScope::to_js_value(
  self : InterestGroupScriptRunnerGlobalScope,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to InterestGroupScriptRunnerGlobalScope (unchecked)
pub extern "js" fn InterestGroupScriptRunnerGlobalScope::from_js_value(
  v : JsValue,
) -> InterestGroupScriptRunnerGlobalScope =
  #| (v) => v

///|
/// Safely cast JsValue to InterestGroupScriptRunnerGlobalScope (checked with instanceof)
pub extern "js" fn InterestGroupScriptRunnerGlobalScope::from_js_value_opt(
  v : JsValue,
) -> InterestGroupScriptRunnerGlobalScope? =
  #| (v) => (v instanceof InterestGroupScriptRunnerGlobalScope) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to InterestGroupScriptRunnerGlobalScope (checked with instanceof)
pub extern "js" fn JsValue::as_interest_group_script_runner_global_scope(
  self : JsValue,
) -> InterestGroupScriptRunnerGlobalScope? =
  #| (self) => (self instanceof InterestGroupScriptRunnerGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to InterestGroupScriptRunnerGlobalScope (unchecked)
pub extern "js" fn JsValue::to_interest_group_script_runner_global_scope(
  self : JsValue,
) -> InterestGroupScriptRunnerGlobalScope =
  #| (self) => self

///|
pub extern "js" fn InterestGroupScriptRunnerGlobalScope::as_interest_group_bidding_and_scoring_script_runner_global_scope(
  self : InterestGroupScriptRunnerGlobalScope,
) -> InterestGroupBiddingAndScoringScriptRunnerGlobalScope? =
  #| (self) => (self instanceof InterestGroupBiddingAndScoringScriptRunnerGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn InterestGroupScriptRunnerGlobalScope::as_interest_group_bidding_script_runner_global_scope(
  self : InterestGroupScriptRunnerGlobalScope,
) -> InterestGroupBiddingScriptRunnerGlobalScope? =
  #| (self) => (self instanceof InterestGroupBiddingScriptRunnerGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn InterestGroupScriptRunnerGlobalScope::as_interest_group_scoring_script_runner_global_scope(
  self : InterestGroupScriptRunnerGlobalScope,
) -> InterestGroupScoringScriptRunnerGlobalScope? =
  #| (self) => (self instanceof InterestGroupScoringScriptRunnerGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn InterestGroupScriptRunnerGlobalScope::as_interest_group_reporting_script_runner_global_scope(
  self : InterestGroupScriptRunnerGlobalScope,
) -> InterestGroupReportingScriptRunnerGlobalScope? =
  #| (self) => (self instanceof InterestGroupReportingScriptRunnerGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn InterestGroupScriptRunnerGlobalScope::get_private_aggregation(
  self : InterestGroupScriptRunnerGlobalScope,
) -> PrivateAggregation? =
  #| (self) => (() => { const v = self.privateAggregation; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn InterestGroupScriptRunnerGlobalScope::get_protected_audience(
  self : InterestGroupScriptRunnerGlobalScope,
) -> ProtectedAudienceUtilities =
  #| (self) => self.protectedAudience

///|
/// ProtectedAudienceUtilities interface
pub type ProtectedAudienceUtilities

///|
pub extern "js" fn ProtectedAudienceUtilities::to_js_value(
  self : ProtectedAudienceUtilities,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ProtectedAudienceUtilities (unchecked)
pub extern "js" fn ProtectedAudienceUtilities::from_js_value(
  v : JsValue,
) -> ProtectedAudienceUtilities =
  #| (v) => v

///|
/// Safely cast JsValue to ProtectedAudienceUtilities (checked with instanceof)
pub extern "js" fn ProtectedAudienceUtilities::from_js_value_opt(
  v : JsValue,
) -> ProtectedAudienceUtilities? =
  #| (v) => (v instanceof ProtectedAudienceUtilities) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ProtectedAudienceUtilities (checked with instanceof)
pub extern "js" fn JsValue::as_protected_audience_utilities(
  self : JsValue,
) -> ProtectedAudienceUtilities? =
  #| (self) => (self instanceof ProtectedAudienceUtilities) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ProtectedAudienceUtilities (unchecked)
pub extern "js" fn JsValue::to_protected_audience_utilities(
  self : JsValue,
) -> ProtectedAudienceUtilities =
  #| (self) => self

///|
pub extern "js" fn ProtectedAudienceUtilities::encode_utf8(
  self : ProtectedAudienceUtilities,
  input : String,
) -> Uint8Array =
  #| (self, input) => self.encodeUtf8(input)

///|
pub extern "js" fn ProtectedAudienceUtilities::decode_utf8(
  self : ProtectedAudienceUtilities,
  bytes : Uint8Array,
) -> String =
  #| (self, bytes) => self.decodeUtf8(bytes)

///|
/// ForDebuggingOnly interface
pub type ForDebuggingOnly

///|
pub extern "js" fn ForDebuggingOnly::to_js_value(
  self : ForDebuggingOnly,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ForDebuggingOnly (unchecked)
pub extern "js" fn ForDebuggingOnly::from_js_value(
  v : JsValue,
) -> ForDebuggingOnly =
  #| (v) => v

///|
/// Safely cast JsValue to ForDebuggingOnly (checked with instanceof)
pub extern "js" fn ForDebuggingOnly::from_js_value_opt(
  v : JsValue,
) -> ForDebuggingOnly? =
  #| (v) => (v instanceof ForDebuggingOnly) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ForDebuggingOnly (checked with instanceof)
pub extern "js" fn JsValue::as_for_debugging_only(
  self : JsValue,
) -> ForDebuggingOnly? =
  #| (self) => (self instanceof ForDebuggingOnly) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ForDebuggingOnly (unchecked)
pub extern "js" fn JsValue::to_for_debugging_only(
  self : JsValue,
) -> ForDebuggingOnly =
  #| (self) => self

///|
pub extern "js" fn ForDebuggingOnly::report_ad_auction_win(
  self : ForDebuggingOnly,
  url : String,
) -> Unit =
  #| (self, url) => self.reportAdAuctionWin(url)

///|
pub extern "js" fn ForDebuggingOnly::report_ad_auction_loss(
  self : ForDebuggingOnly,
  url : String,
) -> Unit =
  #| (self, url) => self.reportAdAuctionLoss(url)

///|
/// RealTimeReporting interface
pub type RealTimeReporting

///|
pub extern "js" fn RealTimeReporting::to_js_value(
  self : RealTimeReporting,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to RealTimeReporting (unchecked)
pub extern "js" fn RealTimeReporting::from_js_value(
  v : JsValue,
) -> RealTimeReporting =
  #| (v) => v

///|
/// Safely cast JsValue to RealTimeReporting (checked with instanceof)
pub extern "js" fn RealTimeReporting::from_js_value_opt(
  v : JsValue,
) -> RealTimeReporting? =
  #| (v) => (v instanceof RealTimeReporting) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to RealTimeReporting (checked with instanceof)
pub extern "js" fn JsValue::as_real_time_reporting(
  self : JsValue,
) -> RealTimeReporting? =
  #| (self) => (self instanceof RealTimeReporting) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to RealTimeReporting (unchecked)
pub extern "js" fn JsValue::to_real_time_reporting(
  self : JsValue,
) -> RealTimeReporting =
  #| (self) => self

///|
extern "js" fn RealTimeReporting::contribute_to_histogram_ffi(
  self : RealTimeReporting,
  contribution : JsValue,
) -> Unit =
  #| (self, contribution) => self.contributeToHistogram(contribution)

///|
pub fn RealTimeReporting::contribute_to_histogram(
  self : RealTimeReporting,
  contribution : RealTimeContribution,
) -> Unit {
  RealTimeReporting::contribute_to_histogram_ffi(self, contribution.to_js())
}

///|
/// InterestGroupBiddingAndScoringScriptRunnerGlobalScope interface
pub type InterestGroupBiddingAndScoringScriptRunnerGlobalScope

///|
pub extern "js" fn InterestGroupBiddingAndScoringScriptRunnerGlobalScope::to_js_value(
  self : InterestGroupBiddingAndScoringScriptRunnerGlobalScope,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to InterestGroupBiddingAndScoringScriptRunnerGlobalScope (unchecked)
pub extern "js" fn InterestGroupBiddingAndScoringScriptRunnerGlobalScope::from_js_value(
  v : JsValue,
) -> InterestGroupBiddingAndScoringScriptRunnerGlobalScope =
  #| (v) => v

///|
/// Safely cast JsValue to InterestGroupBiddingAndScoringScriptRunnerGlobalScope (checked with instanceof)
pub extern "js" fn InterestGroupBiddingAndScoringScriptRunnerGlobalScope::from_js_value_opt(
  v : JsValue,
) -> InterestGroupBiddingAndScoringScriptRunnerGlobalScope? =
  #| (v) => (v instanceof InterestGroupBiddingAndScoringScriptRunnerGlobalScope) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to InterestGroupBiddingAndScoringScriptRunnerGlobalScope (checked with instanceof)
pub extern "js" fn JsValue::as_interest_group_bidding_and_scoring_script_runner_global_scope(
  self : JsValue,
) -> InterestGroupBiddingAndScoringScriptRunnerGlobalScope? =
  #| (self) => (self instanceof InterestGroupBiddingAndScoringScriptRunnerGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to InterestGroupBiddingAndScoringScriptRunnerGlobalScope (unchecked)
pub extern "js" fn JsValue::to_interest_group_bidding_and_scoring_script_runner_global_scope(
  self : JsValue,
) -> InterestGroupBiddingAndScoringScriptRunnerGlobalScope =
  #| (self) => self

///|
pub extern "js" fn InterestGroupBiddingAndScoringScriptRunnerGlobalScope::to_interest_group_script_runner_global_scope(
  self : InterestGroupBiddingAndScoringScriptRunnerGlobalScope,
) -> InterestGroupScriptRunnerGlobalScope =
  #| (self) => self

///|
pub extern "js" fn InterestGroupBiddingAndScoringScriptRunnerGlobalScope::as_interest_group_bidding_script_runner_global_scope(
  self : InterestGroupBiddingAndScoringScriptRunnerGlobalScope,
) -> InterestGroupBiddingScriptRunnerGlobalScope? =
  #| (self) => (self instanceof InterestGroupBiddingScriptRunnerGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn InterestGroupBiddingAndScoringScriptRunnerGlobalScope::as_interest_group_scoring_script_runner_global_scope(
  self : InterestGroupBiddingAndScoringScriptRunnerGlobalScope,
) -> InterestGroupScoringScriptRunnerGlobalScope? =
  #| (self) => (self instanceof InterestGroupScoringScriptRunnerGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn InterestGroupBiddingAndScoringScriptRunnerGlobalScope::get_for_debugging_only(
  self : InterestGroupBiddingAndScoringScriptRunnerGlobalScope,
) -> ForDebuggingOnly =
  #| (self) => self.forDebuggingOnly

///|
pub extern "js" fn InterestGroupBiddingAndScoringScriptRunnerGlobalScope::get_real_time_reporting(
  self : InterestGroupBiddingAndScoringScriptRunnerGlobalScope,
) -> RealTimeReporting =
  #| (self) => self.realTimeReporting

///|
/// InterestGroupBiddingScriptRunnerGlobalScope interface
pub type InterestGroupBiddingScriptRunnerGlobalScope

///|
pub extern "js" fn InterestGroupBiddingScriptRunnerGlobalScope::to_js_value(
  self : InterestGroupBiddingScriptRunnerGlobalScope,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to InterestGroupBiddingScriptRunnerGlobalScope (unchecked)
pub extern "js" fn InterestGroupBiddingScriptRunnerGlobalScope::from_js_value(
  v : JsValue,
) -> InterestGroupBiddingScriptRunnerGlobalScope =
  #| (v) => v

///|
/// Safely cast JsValue to InterestGroupBiddingScriptRunnerGlobalScope (checked with instanceof)
pub extern "js" fn InterestGroupBiddingScriptRunnerGlobalScope::from_js_value_opt(
  v : JsValue,
) -> InterestGroupBiddingScriptRunnerGlobalScope? =
  #| (v) => (v instanceof InterestGroupBiddingScriptRunnerGlobalScope) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to InterestGroupBiddingScriptRunnerGlobalScope (checked with instanceof)
pub extern "js" fn JsValue::as_interest_group_bidding_script_runner_global_scope(
  self : JsValue,
) -> InterestGroupBiddingScriptRunnerGlobalScope? =
  #| (self) => (self instanceof InterestGroupBiddingScriptRunnerGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to InterestGroupBiddingScriptRunnerGlobalScope (unchecked)
pub extern "js" fn JsValue::to_interest_group_bidding_script_runner_global_scope(
  self : JsValue,
) -> InterestGroupBiddingScriptRunnerGlobalScope =
  #| (self) => self

///|
pub extern "js" fn InterestGroupBiddingScriptRunnerGlobalScope::to_interest_group_bidding_and_scoring_script_runner_global_scope(
  self : InterestGroupBiddingScriptRunnerGlobalScope,
) -> InterestGroupBiddingAndScoringScriptRunnerGlobalScope =
  #| (self) => self

///|
pub extern "js" fn InterestGroupBiddingScriptRunnerGlobalScope::to_interest_group_script_runner_global_scope(
  self : InterestGroupBiddingScriptRunnerGlobalScope,
) -> InterestGroupScriptRunnerGlobalScope =
  #| (self) => self

///|
pub extern "js" fn InterestGroupBiddingScriptRunnerGlobalScope::set_bid(
  self : InterestGroupBiddingScriptRunnerGlobalScope,
) -> Bool =
  #| (self) => self.setBid()

///|
pub extern "js" fn InterestGroupBiddingScriptRunnerGlobalScope::set_bid_with_one_or_many_bids(
  self : InterestGroupBiddingScriptRunnerGlobalScope,
  one_or_many_bids : GenerateBidOutputOrArrayOfGenerateBidOutput,
) -> Bool =
  #| (self, one_or_many_bids) => self.setBid(one_or_many_bids)

///|
pub extern "js" fn InterestGroupBiddingScriptRunnerGlobalScope::set_priority(
  self : InterestGroupBiddingScriptRunnerGlobalScope,
  priority : Double,
) -> Unit =
  #| (self, priority) => self.setPriority(priority)

///|
pub extern "js" fn InterestGroupBiddingScriptRunnerGlobalScope::set_priority_signals_override(
  self : InterestGroupBiddingScriptRunnerGlobalScope,
  key : String,
) -> Unit =
  #| (self, key) => self.setPrioritySignalsOverride(key)

///|
pub extern "js" fn InterestGroupBiddingScriptRunnerGlobalScope::set_priority_signals_override_with_priority(
  self : InterestGroupBiddingScriptRunnerGlobalScope,
  key : String,
  priority : Double?,
) -> Unit =
  #| (self, key, priority) => self.setPrioritySignalsOverride(key, priority)

///|
/// InterestGroupScoringScriptRunnerGlobalScope interface
pub type InterestGroupScoringScriptRunnerGlobalScope

///|
pub extern "js" fn InterestGroupScoringScriptRunnerGlobalScope::to_js_value(
  self : InterestGroupScoringScriptRunnerGlobalScope,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to InterestGroupScoringScriptRunnerGlobalScope (unchecked)
pub extern "js" fn InterestGroupScoringScriptRunnerGlobalScope::from_js_value(
  v : JsValue,
) -> InterestGroupScoringScriptRunnerGlobalScope =
  #| (v) => v

///|
/// Safely cast JsValue to InterestGroupScoringScriptRunnerGlobalScope (checked with instanceof)
pub extern "js" fn InterestGroupScoringScriptRunnerGlobalScope::from_js_value_opt(
  v : JsValue,
) -> InterestGroupScoringScriptRunnerGlobalScope? =
  #| (v) => (v instanceof InterestGroupScoringScriptRunnerGlobalScope) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to InterestGroupScoringScriptRunnerGlobalScope (checked with instanceof)
pub extern "js" fn JsValue::as_interest_group_scoring_script_runner_global_scope(
  self : JsValue,
) -> InterestGroupScoringScriptRunnerGlobalScope? =
  #| (self) => (self instanceof InterestGroupScoringScriptRunnerGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to InterestGroupScoringScriptRunnerGlobalScope (unchecked)
pub extern "js" fn JsValue::to_interest_group_scoring_script_runner_global_scope(
  self : JsValue,
) -> InterestGroupScoringScriptRunnerGlobalScope =
  #| (self) => self

///|
pub extern "js" fn InterestGroupScoringScriptRunnerGlobalScope::to_interest_group_bidding_and_scoring_script_runner_global_scope(
  self : InterestGroupScoringScriptRunnerGlobalScope,
) -> InterestGroupBiddingAndScoringScriptRunnerGlobalScope =
  #| (self) => self

///|
pub extern "js" fn InterestGroupScoringScriptRunnerGlobalScope::to_interest_group_script_runner_global_scope(
  self : InterestGroupScoringScriptRunnerGlobalScope,
) -> InterestGroupScriptRunnerGlobalScope =
  #| (self) => self

///|
/// InterestGroupReportingScriptRunnerGlobalScope interface
pub type InterestGroupReportingScriptRunnerGlobalScope

///|
pub extern "js" fn InterestGroupReportingScriptRunnerGlobalScope::to_js_value(
  self : InterestGroupReportingScriptRunnerGlobalScope,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to InterestGroupReportingScriptRunnerGlobalScope (unchecked)
pub extern "js" fn InterestGroupReportingScriptRunnerGlobalScope::from_js_value(
  v : JsValue,
) -> InterestGroupReportingScriptRunnerGlobalScope =
  #| (v) => v

///|
/// Safely cast JsValue to InterestGroupReportingScriptRunnerGlobalScope (checked with instanceof)
pub extern "js" fn InterestGroupReportingScriptRunnerGlobalScope::from_js_value_opt(
  v : JsValue,
) -> InterestGroupReportingScriptRunnerGlobalScope? =
  #| (v) => (v instanceof InterestGroupReportingScriptRunnerGlobalScope) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to InterestGroupReportingScriptRunnerGlobalScope (checked with instanceof)
pub extern "js" fn JsValue::as_interest_group_reporting_script_runner_global_scope(
  self : JsValue,
) -> InterestGroupReportingScriptRunnerGlobalScope? =
  #| (self) => (self instanceof InterestGroupReportingScriptRunnerGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to InterestGroupReportingScriptRunnerGlobalScope (unchecked)
pub extern "js" fn JsValue::to_interest_group_reporting_script_runner_global_scope(
  self : JsValue,
) -> InterestGroupReportingScriptRunnerGlobalScope =
  #| (self) => self

///|
pub extern "js" fn InterestGroupReportingScriptRunnerGlobalScope::to_interest_group_script_runner_global_scope(
  self : InterestGroupReportingScriptRunnerGlobalScope,
) -> InterestGroupScriptRunnerGlobalScope =
  #| (self) => self

///|
pub extern "js" fn InterestGroupReportingScriptRunnerGlobalScope::send_report_to(
  self : InterestGroupReportingScriptRunnerGlobalScope,
  url : String,
) -> Unit =
  #| (self, url) => self.sendReportTo(url)

///|
pub extern "js" fn InterestGroupReportingScriptRunnerGlobalScope::register_ad_beacon(
  self : InterestGroupReportingScriptRunnerGlobalScope,
  map : JsValue,
) -> Unit =
  #| (self, map) => self.registerAdBeacon(map)

///|
pub extern "js" fn InterestGroupReportingScriptRunnerGlobalScope::register_ad_macro(
  self : InterestGroupReportingScriptRunnerGlobalScope,
  name : String,
  value : String,
) -> Unit =
  #| (self, name, value) => self.registerAdMacro(name, value)

///|
/// ProtectedAudience interface
pub type ProtectedAudience

///|
pub extern "js" fn ProtectedAudience::to_js_value(
  self : ProtectedAudience,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ProtectedAudience (unchecked)
pub extern "js" fn ProtectedAudience::from_js_value(
  v : JsValue,
) -> ProtectedAudience =
  #| (v) => v

///|
/// Safely cast JsValue to ProtectedAudience (checked with instanceof)
pub extern "js" fn ProtectedAudience::from_js_value_opt(
  v : JsValue,
) -> ProtectedAudience? =
  #| (v) => (v instanceof ProtectedAudience) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ProtectedAudience (checked with instanceof)
pub extern "js" fn JsValue::as_protected_audience(
  self : JsValue,
) -> ProtectedAudience? =
  #| (self) => (self instanceof ProtectedAudience) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ProtectedAudience (unchecked)
pub extern "js" fn JsValue::to_protected_audience(
  self : JsValue,
) -> ProtectedAudience =
  #| (self) => self

///|
pub extern "js" fn ProtectedAudience::query_feature_support(
  self : ProtectedAudience,
  feature : String,
) -> JsValue =
  #| (self, feature) => self.queryFeatureSupport(feature)
