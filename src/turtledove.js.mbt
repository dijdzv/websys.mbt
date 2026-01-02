// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/turtledove

///|
/// PreviousWinElement typedef
pub type PreviousWinElement = JsValue

///|
/// PreviousWin typedef
pub type PreviousWin = JsValue

///|
/// KAnonStatus enum
pub(all) enum KAnonStatus {
  PassedAndEnforced
  PassedNotEnforced
  BelowThreshold
  NotCalculated
}

/// Convert to string value
pub fn KAnonStatus::to_string(self : KAnonStatus) -> String {
  match self {
    PassedAndEnforced => "passedAndEnforced"
    PassedNotEnforced => "passedNotEnforced"
    BelowThreshold => "belowThreshold"
    NotCalculated => "notCalculated"
  }
}

/// Parse from string value
pub fn KAnonStatus::from_string(s : String) -> KAnonStatus? {
  match s {
    "passedAndEnforced" => Some(PassedAndEnforced)
    "passedNotEnforced" => Some(PassedNotEnforced)
    "belowThreshold" => Some(BelowThreshold)
    "notCalculated" => Some(NotCalculated)
    _ => None
  }
}

///|
/// AuctionAd dictionary
pub struct AuctionAd {
  renderURL : String
  sizeGroup : String?
  metadata : JsValue?
  buyerReportingId : String?
  buyerAndSellerReportingId : String?
  selectableBuyerAndSellerReportingIds : JsValue?
  allowedReportingOrigins : JsValue?
  adRenderId : String?
  creativeScanningMetadata : String?
}

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

/// Convert to JsValue
pub extern "js" fn AuctionAd::to_js(self : AuctionAd) -> JsValue =
  #| (self) => ({
  #|   renderURL: self.renderURL,
  #|   sizeGroup: self.sizeGroup,
  #|   metadata: self.metadata,
  #|   buyerReportingId: self.buyerReportingId,
  #|   buyerAndSellerReportingId: self.buyerAndSellerReportingId,
  #|   selectableBuyerAndSellerReportingIds: self.selectableBuyerAndSellerReportingIds,
  #|   allowedReportingOrigins: self.allowedReportingOrigins,
  #|   adRenderId: self.adRenderId,
  #|   creativeScanningMetadata: self.creativeScanningMetadata
  #| })

///|
/// AuctionAdInterestGroupSize dictionary
pub struct AuctionAdInterestGroupSize {
  width : String
  height : String
}

/// Create a new AuctionAdInterestGroupSize with default values
pub fn AuctionAdInterestGroupSize::default() -> AuctionAdInterestGroupSize {
  AuctionAdInterestGroupSize::{
    width: "",
    height: "",
  }
}

/// Convert to JsValue
pub extern "js" fn AuctionAdInterestGroupSize::to_js(self : AuctionAdInterestGroupSize) -> JsValue =
  #| (self) => ({
  #|   width: self.width,
  #|   height: self.height
  #| })

///|
/// GenerateBidInterestGroup dictionary
pub struct GenerateBidInterestGroup {
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
  trustedBiddingSignalsKeys : JsValue?
  trustedBiddingSignalsSlotSizeMode : String?
  maxTrustedBiddingSignalsURLLength : Int?
  trustedBiddingSignalsCoordinator : String?
  userBiddingSignals : JsValue?
  ads : JsValue?
  adComponents : JsValue?
  adSizes : JsValue?
  sizeGroups : JsValue?
}

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

/// Convert to JsValue
pub extern "js" fn GenerateBidInterestGroup::to_js(self : GenerateBidInterestGroup) -> JsValue =
  #| (self) => ({
  #|   owner: self.owner,
  #|   name: self.name,
  #|   enableBiddingSignalsPrioritization: self.enableBiddingSignalsPrioritization,
  #|   priorityVector: self.priorityVector,
  #|   sellerCapabilities: self.sellerCapabilities,
  #|   executionMode: self.executionMode,
  #|   biddingLogicURL: self.biddingLogicURL,
  #|   biddingWasmHelperURL: self.biddingWasmHelperURL,
  #|   updateURL: self.updateURL,
  #|   trustedBiddingSignalsURL: self.trustedBiddingSignalsURL,
  #|   trustedBiddingSignalsKeys: self.trustedBiddingSignalsKeys,
  #|   trustedBiddingSignalsSlotSizeMode: self.trustedBiddingSignalsSlotSizeMode,
  #|   maxTrustedBiddingSignalsURLLength: self.maxTrustedBiddingSignalsURLLength,
  #|   trustedBiddingSignalsCoordinator: self.trustedBiddingSignalsCoordinator,
  #|   userBiddingSignals: self.userBiddingSignals,
  #|   ads: self.ads,
  #|   adComponents: self.adComponents,
  #|   adSizes: self.adSizes,
  #|   sizeGroups: self.sizeGroups
  #| })

///|
/// ProtectedAudiencePrivateAggregationConfig dictionary
pub struct ProtectedAudiencePrivateAggregationConfig {
  aggregationCoordinatorOrigin : String?
}

/// Create a new ProtectedAudiencePrivateAggregationConfig with default values
pub fn ProtectedAudiencePrivateAggregationConfig::default() -> ProtectedAudiencePrivateAggregationConfig {
  ProtectedAudiencePrivateAggregationConfig::{
    aggregationCoordinatorOrigin: None,
  }
}

/// Convert to JsValue
pub extern "js" fn ProtectedAudiencePrivateAggregationConfig::to_js(self : ProtectedAudiencePrivateAggregationConfig) -> JsValue =
  #| (self) => ({
  #|   aggregationCoordinatorOrigin: self.aggregationCoordinatorOrigin
  #| })

///|
/// AuctionAdInterestGroup dictionary
pub struct AuctionAdInterestGroup {
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
  trustedBiddingSignalsKeys : JsValue?
  trustedBiddingSignalsSlotSizeMode : String?
  maxTrustedBiddingSignalsURLLength : Int?
  trustedBiddingSignalsCoordinator : String?
  userBiddingSignals : JsValue?
  ads : JsValue?
  adComponents : JsValue?
  adSizes : JsValue?
  sizeGroups : JsValue?
  priority : Double?
  prioritySignalsOverrides : JsValue?
  lifetimeMs : Double
  additionalBidKey : String?
  privateAggregationConfig : ProtectedAudiencePrivateAggregationConfig?
}

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

/// Convert to JsValue
pub extern "js" fn AuctionAdInterestGroup::to_js(self : AuctionAdInterestGroup) -> JsValue =
  #| (self) => ({
  #|   owner: self.owner,
  #|   name: self.name,
  #|   enableBiddingSignalsPrioritization: self.enableBiddingSignalsPrioritization,
  #|   priorityVector: self.priorityVector,
  #|   sellerCapabilities: self.sellerCapabilities,
  #|   executionMode: self.executionMode,
  #|   biddingLogicURL: self.biddingLogicURL,
  #|   biddingWasmHelperURL: self.biddingWasmHelperURL,
  #|   updateURL: self.updateURL,
  #|   trustedBiddingSignalsURL: self.trustedBiddingSignalsURL,
  #|   trustedBiddingSignalsKeys: self.trustedBiddingSignalsKeys,
  #|   trustedBiddingSignalsSlotSizeMode: self.trustedBiddingSignalsSlotSizeMode,
  #|   maxTrustedBiddingSignalsURLLength: self.maxTrustedBiddingSignalsURLLength,
  #|   trustedBiddingSignalsCoordinator: self.trustedBiddingSignalsCoordinator,
  #|   userBiddingSignals: self.userBiddingSignals,
  #|   ads: self.ads,
  #|   adComponents: self.adComponents,
  #|   adSizes: self.adSizes,
  #|   sizeGroups: self.sizeGroups,
  #|   priority: self.priority,
  #|   prioritySignalsOverrides: self.prioritySignalsOverrides,
  #|   lifetimeMs: self.lifetimeMs,
  #|   additionalBidKey: self.additionalBidKey,
  #|   privateAggregationConfig: self.privateAggregationConfig
  #| })

///|
/// AuctionAdInterestGroupKey dictionary
pub struct AuctionAdInterestGroupKey {
  owner : String
  name : String
}

/// Create a new AuctionAdInterestGroupKey with default values
pub fn AuctionAdInterestGroupKey::default() -> AuctionAdInterestGroupKey {
  AuctionAdInterestGroupKey::{
    owner: "",
    name: "",
  }
}

/// Convert to JsValue
pub extern "js" fn AuctionAdInterestGroupKey::to_js(self : AuctionAdInterestGroupKey) -> JsValue =
  #| (self) => ({
  #|   owner: self.owner,
  #|   name: self.name
  #| })

///|
/// AuctionReportBuyersConfig dictionary
pub struct AuctionReportBuyersConfig {
  bucket : JsValue
  scale : Double
}

/// Create a new AuctionReportBuyersConfig with default values
pub fn AuctionReportBuyersConfig::default() -> AuctionReportBuyersConfig {
  AuctionReportBuyersConfig::{
    bucket: panic(),
    scale: 0,
  }
}

/// Convert to JsValue
pub extern "js" fn AuctionReportBuyersConfig::to_js(self : AuctionReportBuyersConfig) -> JsValue =
  #| (self) => ({
  #|   bucket: self.bucket,
  #|   scale: self.scale
  #| })

///|
/// AuctionReportBuyerDebugModeConfig dictionary
pub struct AuctionReportBuyerDebugModeConfig {
  enabled : Bool?
  debugKey : JsValue??
}

/// Create a new AuctionReportBuyerDebugModeConfig with default values
pub fn AuctionReportBuyerDebugModeConfig::default() -> AuctionReportBuyerDebugModeConfig {
  AuctionReportBuyerDebugModeConfig::{
    enabled: None,
    debugKey: None,
  }
}

/// Convert to JsValue
pub extern "js" fn AuctionReportBuyerDebugModeConfig::to_js(self : AuctionReportBuyerDebugModeConfig) -> JsValue =
  #| (self) => ({
  #|   enabled: self.enabled,
  #|   debugKey: self.debugKey
  #| })

///|
/// AuctionRealTimeReportingConfig dictionary
pub struct AuctionRealTimeReportingConfig {
  type_ : String
}

/// Create a new AuctionRealTimeReportingConfig with default values
pub fn AuctionRealTimeReportingConfig::default() -> AuctionRealTimeReportingConfig {
  AuctionRealTimeReportingConfig::{
    type_: "",
  }
}

/// Convert to JsValue
pub extern "js" fn AuctionRealTimeReportingConfig::to_js(self : AuctionRealTimeReportingConfig) -> JsValue =
  #| (self) => ({
  #|   type: self.type_
  #| })

///|
/// AuctionAdConfig dictionary
pub struct AuctionAdConfig {
  seller : String
  decisionLogicURL : String
  trustedScoringSignalsURL : String?
  maxTrustedScoringSignalsURLLength : Int?
  trustedScoringSignalsCoordinator : String?
  sendCreativeScanningMetadata : Bool?
  interestGroupBuyers : JsValue?
  auctionSignals : JsValue?
  sellerSignals : JsValue?
  directFromSellerSignalsHeaderAdSlot : JsValue?
  deprecatedRenderURLReplacements : JsValue?
  sellerTimeout : Int64?
  sellerExperimentGroupId : Int?
  perBuyerSignals : JsValue?
  perBuyerTimeouts : JsValue?
  perBuyerCumulativeTimeouts : JsValue?
  reportingTimeout : Int64?
  sellerCurrency : String?
  perBuyerCurrencies : JsValue?
  perBuyerMultiBidLimits : JsValue?
  perBuyerGroupLimits : JsValue?
  perBuyerExperimentGroupIds : JsValue?
  perBuyerPrioritySignals : JsValue?
  auctionReportBuyerKeys : JsValue?
  auctionReportBuyers : JsValue?
  auctionReportBuyerDebugModeConfig : AuctionReportBuyerDebugModeConfig?
  requiredSellerCapabilities : JsValue?
  privateAggregationConfig : ProtectedAudiencePrivateAggregationConfig?
  requestedSize : JsValue?
  allSlotsRequestedSizes : JsValue?
  additionalBids : JsValue?
  auctionNonce : String?
  sellerRealTimeReportingConfig : AuctionRealTimeReportingConfig?
  perBuyerRealTimeReportingConfig : JsValue?
  componentAuctions : JsValue?
  signal : AbortSignal??
  resolveToConfig : JsValue?
  serverResponse : JsValue?
  requestId : String?
}

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
    signal: None,
    resolveToConfig: None,
    serverResponse: None,
    requestId: None,
  }
}

/// Convert to JsValue
pub extern "js" fn AuctionAdConfig::to_js(self : AuctionAdConfig) -> JsValue =
  #| (self) => ({
  #|   seller: self.seller,
  #|   decisionLogicURL: self.decisionLogicURL,
  #|   trustedScoringSignalsURL: self.trustedScoringSignalsURL,
  #|   maxTrustedScoringSignalsURLLength: self.maxTrustedScoringSignalsURLLength,
  #|   trustedScoringSignalsCoordinator: self.trustedScoringSignalsCoordinator,
  #|   sendCreativeScanningMetadata: self.sendCreativeScanningMetadata,
  #|   interestGroupBuyers: self.interestGroupBuyers,
  #|   auctionSignals: self.auctionSignals,
  #|   sellerSignals: self.sellerSignals,
  #|   directFromSellerSignalsHeaderAdSlot: self.directFromSellerSignalsHeaderAdSlot,
  #|   deprecatedRenderURLReplacements: self.deprecatedRenderURLReplacements,
  #|   sellerTimeout: self.sellerTimeout,
  #|   sellerExperimentGroupId: self.sellerExperimentGroupId,
  #|   perBuyerSignals: self.perBuyerSignals,
  #|   perBuyerTimeouts: self.perBuyerTimeouts,
  #|   perBuyerCumulativeTimeouts: self.perBuyerCumulativeTimeouts,
  #|   reportingTimeout: self.reportingTimeout,
  #|   sellerCurrency: self.sellerCurrency,
  #|   perBuyerCurrencies: self.perBuyerCurrencies,
  #|   perBuyerMultiBidLimits: self.perBuyerMultiBidLimits,
  #|   perBuyerGroupLimits: self.perBuyerGroupLimits,
  #|   perBuyerExperimentGroupIds: self.perBuyerExperimentGroupIds,
  #|   perBuyerPrioritySignals: self.perBuyerPrioritySignals,
  #|   auctionReportBuyerKeys: self.auctionReportBuyerKeys,
  #|   auctionReportBuyers: self.auctionReportBuyers,
  #|   auctionReportBuyerDebugModeConfig: self.auctionReportBuyerDebugModeConfig,
  #|   requiredSellerCapabilities: self.requiredSellerCapabilities,
  #|   privateAggregationConfig: self.privateAggregationConfig,
  #|   requestedSize: self.requestedSize,
  #|   allSlotsRequestedSizes: self.allSlotsRequestedSizes,
  #|   additionalBids: self.additionalBids,
  #|   auctionNonce: self.auctionNonce,
  #|   sellerRealTimeReportingConfig: self.sellerRealTimeReportingConfig,
  #|   perBuyerRealTimeReportingConfig: self.perBuyerRealTimeReportingConfig,
  #|   componentAuctions: self.componentAuctions,
  #|   signal: self.signal,
  #|   resolveToConfig: self.resolveToConfig,
  #|   serverResponse: self.serverResponse,
  #|   requestId: self.requestId
  #| })

///|
/// AdAuctionPerSellerData dictionary
pub struct AdAuctionPerSellerData {
  seller : String
  request : Uint8Array?
  error : String?
}

/// Create a new AdAuctionPerSellerData with default values
pub fn AdAuctionPerSellerData::default() -> AdAuctionPerSellerData {
  AdAuctionPerSellerData::{
    seller: "",
    request: None,
    error: None,
  }
}

/// Convert to JsValue
pub extern "js" fn AdAuctionPerSellerData::to_js(self : AdAuctionPerSellerData) -> JsValue =
  #| (self) => ({
  #|   seller: self.seller,
  #|   request: self.request,
  #|   error: self.error
  #| })

///|
/// AdAuctionData dictionary
pub struct AdAuctionData {
  requestId : String
  request : Uint8Array?
  requests : JsValue?
}

/// Create a new AdAuctionData with default values
pub fn AdAuctionData::default() -> AdAuctionData {
  AdAuctionData::{
    requestId: "",
    request: None,
    requests: None,
  }
}

/// Convert to JsValue
pub extern "js" fn AdAuctionData::to_js(self : AdAuctionData) -> JsValue =
  #| (self) => ({
  #|   requestId: self.requestId,
  #|   request: self.request,
  #|   requests: self.requests
  #| })

///|
/// AdAuctionOneSeller dictionary
pub struct AdAuctionOneSeller {
  seller : String
  coordinatorOrigin : String?
}

/// Create a new AdAuctionOneSeller with default values
pub fn AdAuctionOneSeller::default() -> AdAuctionOneSeller {
  AdAuctionOneSeller::{
    seller: "",
    coordinatorOrigin: None,
  }
}

/// Convert to JsValue
pub extern "js" fn AdAuctionOneSeller::to_js(self : AdAuctionOneSeller) -> JsValue =
  #| (self) => ({
  #|   seller: self.seller,
  #|   coordinatorOrigin: self.coordinatorOrigin
  #| })

///|
/// AdAuctionDataConfig dictionary
pub struct AdAuctionDataConfig {
  seller : String?
  coordinatorOrigin : String?
  sellers : JsValue?
  requestSize : Int?
  perBuyerConfig : JsValue?
}

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

/// Convert to JsValue
pub extern "js" fn AdAuctionDataConfig::to_js(self : AdAuctionDataConfig) -> JsValue =
  #| (self) => ({
  #|   seller: self.seller,
  #|   coordinatorOrigin: self.coordinatorOrigin,
  #|   sellers: self.sellers,
  #|   requestSize: self.requestSize,
  #|   perBuyerConfig: self.perBuyerConfig
  #| })

///|
/// AdAuctionDataBuyerConfig dictionary
pub struct AdAuctionDataBuyerConfig {
  targetSize : Int?
}

/// Create a new AdAuctionDataBuyerConfig with default values
pub fn AdAuctionDataBuyerConfig::default() -> AdAuctionDataBuyerConfig {
  AdAuctionDataBuyerConfig::{
    targetSize: None,
  }
}

/// Convert to JsValue
pub extern "js" fn AdAuctionDataBuyerConfig::to_js(self : AdAuctionDataBuyerConfig) -> JsValue =
  #| (self) => ({
  #|   targetSize: self.targetSize
  #| })

///|
/// StorageInterestGroup dictionary
pub struct StorageInterestGroup {
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
  trustedBiddingSignalsKeys : JsValue?
  trustedBiddingSignalsSlotSizeMode : String?
  maxTrustedBiddingSignalsURLLength : Int?
  trustedBiddingSignalsCoordinator : String?
  userBiddingSignals : JsValue?
  ads : JsValue?
  adComponents : JsValue?
  adSizes : JsValue?
  sizeGroups : JsValue?
  priority : Double?
  prioritySignalsOverrides : JsValue?
  lifetimeMs : Double
  additionalBidKey : String?
  privateAggregationConfig : ProtectedAudiencePrivateAggregationConfig?
  joinCount : Int64?
  bidCount : Int64?
  prevWinsMs : JsValue?
  joiningOrigin : String?
  timeSinceGroupJoinedMs : Int64?
  lifetimeRemainingMs : Int64?
  timeSinceLastUpdateMs : Int64?
  timeUntilNextUpdateMs : Int64?
  estimatedSize : Int64?
}

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

/// Convert to JsValue
pub extern "js" fn StorageInterestGroup::to_js(self : StorageInterestGroup) -> JsValue =
  #| (self) => ({
  #|   owner: self.owner,
  #|   name: self.name,
  #|   enableBiddingSignalsPrioritization: self.enableBiddingSignalsPrioritization,
  #|   priorityVector: self.priorityVector,
  #|   sellerCapabilities: self.sellerCapabilities,
  #|   executionMode: self.executionMode,
  #|   biddingLogicURL: self.biddingLogicURL,
  #|   biddingWasmHelperURL: self.biddingWasmHelperURL,
  #|   updateURL: self.updateURL,
  #|   trustedBiddingSignalsURL: self.trustedBiddingSignalsURL,
  #|   trustedBiddingSignalsKeys: self.trustedBiddingSignalsKeys,
  #|   trustedBiddingSignalsSlotSizeMode: self.trustedBiddingSignalsSlotSizeMode,
  #|   maxTrustedBiddingSignalsURLLength: self.maxTrustedBiddingSignalsURLLength,
  #|   trustedBiddingSignalsCoordinator: self.trustedBiddingSignalsCoordinator,
  #|   userBiddingSignals: self.userBiddingSignals,
  #|   ads: self.ads,
  #|   adComponents: self.adComponents,
  #|   adSizes: self.adSizes,
  #|   sizeGroups: self.sizeGroups,
  #|   priority: self.priority,
  #|   prioritySignalsOverrides: self.prioritySignalsOverrides,
  #|   lifetimeMs: self.lifetimeMs,
  #|   additionalBidKey: self.additionalBidKey,
  #|   privateAggregationConfig: self.privateAggregationConfig,
  #|   joinCount: self.joinCount,
  #|   bidCount: self.bidCount,
  #|   prevWinsMs: self.prevWinsMs,
  #|   joiningOrigin: self.joiningOrigin,
  #|   timeSinceGroupJoinedMs: self.timeSinceGroupJoinedMs,
  #|   lifetimeRemainingMs: self.lifetimeRemainingMs,
  #|   timeSinceLastUpdateMs: self.timeSinceLastUpdateMs,
  #|   timeUntilNextUpdateMs: self.timeUntilNextUpdateMs,
  #|   estimatedSize: self.estimatedSize
  #| })

///|
/// PASignalValue dictionary
pub struct PASignalValue {
  baseValue : String
  scale : Double?
  offset : JsValue?
}

/// Create a new PASignalValue with default values
pub fn PASignalValue::default() -> PASignalValue {
  PASignalValue::{
    baseValue: "",
    scale: None,
    offset: None,
  }
}

/// Convert to JsValue
pub extern "js" fn PASignalValue::to_js(self : PASignalValue) -> JsValue =
  #| (self) => ({
  #|   baseValue: self.baseValue,
  #|   scale: self.scale,
  #|   offset: self.offset
  #| })

///|
/// PAExtendedHistogramContribution dictionary
pub struct PAExtendedHistogramContribution {
  bucket : JsValue
  value : JsValue
  filteringId : JsValue?
}

/// Create a new PAExtendedHistogramContribution with default values
pub fn PAExtendedHistogramContribution::default() -> PAExtendedHistogramContribution {
  PAExtendedHistogramContribution::{
    bucket: panic(),
    value: panic(),
    filteringId: None,
  }
}

/// Convert to JsValue
pub extern "js" fn PAExtendedHistogramContribution::to_js(self : PAExtendedHistogramContribution) -> JsValue =
  #| (self) => ({
  #|   bucket: self.bucket,
  #|   value: self.value,
  #|   filteringId: self.filteringId
  #| })

///|
/// RealTimeContribution dictionary
pub struct RealTimeContribution {
  bucket : Int
  priorityWeight : Double
  latencyThreshold : Int?
}

/// Create a new RealTimeContribution with default values
pub fn RealTimeContribution::default() -> RealTimeContribution {
  RealTimeContribution::{
    bucket: 0,
    priorityWeight: 0,
    latencyThreshold: None,
  }
}

/// Convert to JsValue
pub extern "js" fn RealTimeContribution::to_js(self : RealTimeContribution) -> JsValue =
  #| (self) => ({
  #|   bucket: self.bucket,
  #|   priorityWeight: self.priorityWeight,
  #|   latencyThreshold: self.latencyThreshold
  #| })

///|
/// AdRender dictionary
pub struct AdRender {
  url : String
  width : String?
  height : String?
}

/// Create a new AdRender with default values
pub fn AdRender::default() -> AdRender {
  AdRender::{
    url: "",
    width: None,
    height: None,
  }
}

/// Convert to JsValue
pub extern "js" fn AdRender::to_js(self : AdRender) -> JsValue =
  #| (self) => ({
  #|   url: self.url,
  #|   width: self.width,
  #|   height: self.height
  #| })

///|
/// GenerateBidOutput dictionary
pub struct GenerateBidOutput {
  bid : Double?
  bidCurrency : String?
  render : JsValue?
  ad : JsValue?
  selectedBuyerAndSellerReportingId : String?
  adComponents : JsValue?
  adCost : Double?
  modelingSignals : Double?
  allowComponentAuction : Bool?
  targetNumAdComponents : Int?
  numMandatoryAdComponents : Int?
}

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

/// Convert to JsValue
pub extern "js" fn GenerateBidOutput::to_js(self : GenerateBidOutput) -> JsValue =
  #| (self) => ({
  #|   bid: self.bid,
  #|   bidCurrency: self.bidCurrency,
  #|   render: self.render,
  #|   ad: self.ad,
  #|   selectedBuyerAndSellerReportingId: self.selectedBuyerAndSellerReportingId,
  #|   adComponents: self.adComponents,
  #|   adCost: self.adCost,
  #|   modelingSignals: self.modelingSignals,
  #|   allowComponentAuction: self.allowComponentAuction,
  #|   targetNumAdComponents: self.targetNumAdComponents,
  #|   numMandatoryAdComponents: self.numMandatoryAdComponents
  #| })

///|
/// BiddingBrowserSignals dictionary
pub struct BiddingBrowserSignals {
  topWindowHostname : String
  seller : String
  joinCount : Int
  bidCount : Int
  recency : Int
  adComponentsLimit : Int
  multiBidLimit : Int
  requestedSize : JsValue?
  topLevelSeller : String?
  prevWinsMs : JsValue?
  wasmHelper : JsValue?
  dataVersion : Int?
  crossOriginDataVersion : Int?
  forDebuggingOnlyInCooldownOrLockout : Bool?
}

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

/// Convert to JsValue
pub extern "js" fn BiddingBrowserSignals::to_js(self : BiddingBrowserSignals) -> JsValue =
  #| (self) => ({
  #|   topWindowHostname: self.topWindowHostname,
  #|   seller: self.seller,
  #|   joinCount: self.joinCount,
  #|   bidCount: self.bidCount,
  #|   recency: self.recency,
  #|   adComponentsLimit: self.adComponentsLimit,
  #|   multiBidLimit: self.multiBidLimit,
  #|   requestedSize: self.requestedSize,
  #|   topLevelSeller: self.topLevelSeller,
  #|   prevWinsMs: self.prevWinsMs,
  #|   wasmHelper: self.wasmHelper,
  #|   dataVersion: self.dataVersion,
  #|   crossOriginDataVersion: self.crossOriginDataVersion,
  #|   forDebuggingOnlyInCooldownOrLockout: self.forDebuggingOnlyInCooldownOrLockout
  #| })

///|
/// ScoringBrowserSignals dictionary
pub struct ScoringBrowserSignals {
  topWindowHostname : String
  interestGroupOwner : String
  renderURL : String
  biddingDurationMsec : Int
  bidCurrency : String
  renderSize : JsValue?
  dataVersion : Int?
  crossOriginDataVersion : Int?
  adComponents : JsValue?
  forDebuggingOnlyInCooldownOrLockout : Bool?
  creativeScanningMetadata : String?
  adComponentsCreativeScanningMetadata : JsValue?
}

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

/// Convert to JsValue
pub extern "js" fn ScoringBrowserSignals::to_js(self : ScoringBrowserSignals) -> JsValue =
  #| (self) => ({
  #|   topWindowHostname: self.topWindowHostname,
  #|   interestGroupOwner: self.interestGroupOwner,
  #|   renderURL: self.renderURL,
  #|   biddingDurationMsec: self.biddingDurationMsec,
  #|   bidCurrency: self.bidCurrency,
  #|   renderSize: self.renderSize,
  #|   dataVersion: self.dataVersion,
  #|   crossOriginDataVersion: self.crossOriginDataVersion,
  #|   adComponents: self.adComponents,
  #|   forDebuggingOnlyInCooldownOrLockout: self.forDebuggingOnlyInCooldownOrLockout,
  #|   creativeScanningMetadata: self.creativeScanningMetadata,
  #|   adComponentsCreativeScanningMetadata: self.adComponentsCreativeScanningMetadata
  #| })

///|
/// ReportingBrowserSignals dictionary
pub struct ReportingBrowserSignals {
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

/// Convert to JsValue
pub extern "js" fn ReportingBrowserSignals::to_js(self : ReportingBrowserSignals) -> JsValue =
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
/// ReportResultBrowserSignals dictionary
pub struct ReportResultBrowserSignals {
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

/// Convert to JsValue
pub extern "js" fn ReportResultBrowserSignals::to_js(self : ReportResultBrowserSignals) -> JsValue =
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
/// ReportWinBrowserSignals dictionary
pub struct ReportWinBrowserSignals {
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

/// Convert to JsValue
pub extern "js" fn ReportWinBrowserSignals::to_js(self : ReportWinBrowserSignals) -> JsValue =
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
  #|   madeHighestScoringOtherBid: self.madeHighestScoringOtherBid,
  #|   interestGroupName: self.interestGroupName,
  #|   buyerReportingId: self.buyerReportingId,
  #|   modelingSignals: self.modelingSignals,
  #|   dataVersion: self.dataVersion,
  #|   kAnonStatus: self.kAnonStatus
  #| })

///|
/// DirectFromSellerSignalsForBuyer dictionary
pub struct DirectFromSellerSignalsForBuyer {
  auctionSignals : JsValue?
  perBuyerSignals : JsValue?
}

/// Create a new DirectFromSellerSignalsForBuyer with default values
pub fn DirectFromSellerSignalsForBuyer::default() -> DirectFromSellerSignalsForBuyer {
  DirectFromSellerSignalsForBuyer::{
    auctionSignals: None,
    perBuyerSignals: None,
  }
}

/// Convert to JsValue
pub extern "js" fn DirectFromSellerSignalsForBuyer::to_js(self : DirectFromSellerSignalsForBuyer) -> JsValue =
  #| (self) => ({
  #|   auctionSignals: self.auctionSignals,
  #|   perBuyerSignals: self.perBuyerSignals
  #| })

///|
/// DirectFromSellerSignalsForSeller dictionary
pub struct DirectFromSellerSignalsForSeller {
  auctionSignals : JsValue?
  sellerSignals : JsValue?
}

/// Create a new DirectFromSellerSignalsForSeller with default values
pub fn DirectFromSellerSignalsForSeller::default() -> DirectFromSellerSignalsForSeller {
  DirectFromSellerSignalsForSeller::{
    auctionSignals: None,
    sellerSignals: None,
  }
}

/// Convert to JsValue
pub extern "js" fn DirectFromSellerSignalsForSeller::to_js(self : DirectFromSellerSignalsForSeller) -> JsValue =
  #| (self) => ({
  #|   auctionSignals: self.auctionSignals,
  #|   sellerSignals: self.sellerSignals
  #| })

///|
/// ScoreAdOutput dictionary
pub struct ScoreAdOutput {
  desirability : Double
  bid : Double?
  bidCurrency : String?
  incomingBidInSellerCurrency : Double?
  allowComponentAuction : Bool?
}

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

/// Convert to JsValue
pub extern "js" fn ScoreAdOutput::to_js(self : ScoreAdOutput) -> JsValue =
  #| (self) => ({
  #|   desirability: self.desirability,
  #|   bid: self.bid,
  #|   bidCurrency: self.bidCurrency,
  #|   incomingBidInSellerCurrency: self.incomingBidInSellerCurrency,
  #|   allowComponentAuction: self.allowComponentAuction
  #| })

///|
/// InterestGroupScriptRunnerGlobalScope interface
pub type InterestGroupScriptRunnerGlobalScope

pub extern "js" fn InterestGroupScriptRunnerGlobalScope::to_js_value(self : InterestGroupScriptRunnerGlobalScope) -> JsValue =
  #| (self) => self

pub extern "js" fn InterestGroupScriptRunnerGlobalScope::get_private_aggregation(self : InterestGroupScriptRunnerGlobalScope) -> PrivateAggregation? =
  #| (self) => self.privateAggregation

pub extern "js" fn InterestGroupScriptRunnerGlobalScope::get_protected_audience(self : InterestGroupScriptRunnerGlobalScope) -> ProtectedAudienceUtilities =
  #| (self) => self.protectedAudience

///|
/// ProtectedAudienceUtilities interface
pub type ProtectedAudienceUtilities

pub extern "js" fn ProtectedAudienceUtilities::to_js_value(self : ProtectedAudienceUtilities) -> JsValue =
  #| (self) => self

pub extern "js" fn ProtectedAudienceUtilities::encode_utf8(self : ProtectedAudienceUtilities, input : String) -> Uint8Array =
  #| (self, input) => self.encodeUtf8(input)

pub extern "js" fn ProtectedAudienceUtilities::decode_utf8(self : ProtectedAudienceUtilities, bytes : Uint8Array) -> String =
  #| (self, bytes) => self.decodeUtf8(bytes)

///|
/// ForDebuggingOnly interface
pub type ForDebuggingOnly

pub extern "js" fn ForDebuggingOnly::to_js_value(self : ForDebuggingOnly) -> JsValue =
  #| (self) => self

pub extern "js" fn ForDebuggingOnly::report_ad_auction_win(self : ForDebuggingOnly, url : String) -> Unit =
  #| (self, url) => self.reportAdAuctionWin(url)

pub extern "js" fn ForDebuggingOnly::report_ad_auction_loss(self : ForDebuggingOnly, url : String) -> Unit =
  #| (self, url) => self.reportAdAuctionLoss(url)

///|
/// RealTimeReporting interface
pub type RealTimeReporting

pub extern "js" fn RealTimeReporting::to_js_value(self : RealTimeReporting) -> JsValue =
  #| (self) => self

pub extern "js" fn RealTimeReporting::contribute_to_histogram(self : RealTimeReporting, contribution : RealTimeContribution) -> Unit =
  #| (self, contribution) => self.contributeToHistogram(contribution)

///|
/// InterestGroupBiddingAndScoringScriptRunnerGlobalScope interface
pub type InterestGroupBiddingAndScoringScriptRunnerGlobalScope

pub extern "js" fn InterestGroupBiddingAndScoringScriptRunnerGlobalScope::to_js_value(self : InterestGroupBiddingAndScoringScriptRunnerGlobalScope) -> JsValue =
  #| (self) => self

pub extern "js" fn InterestGroupBiddingAndScoringScriptRunnerGlobalScope::get_private_aggregation(self : InterestGroupBiddingAndScoringScriptRunnerGlobalScope) -> PrivateAggregation? =
  #| (self) => self.privateAggregation

pub extern "js" fn InterestGroupBiddingAndScoringScriptRunnerGlobalScope::get_protected_audience(self : InterestGroupBiddingAndScoringScriptRunnerGlobalScope) -> ProtectedAudienceUtilities =
  #| (self) => self.protectedAudience

pub extern "js" fn InterestGroupBiddingAndScoringScriptRunnerGlobalScope::get_for_debugging_only(self : InterestGroupBiddingAndScoringScriptRunnerGlobalScope) -> ForDebuggingOnly =
  #| (self) => self.forDebuggingOnly

pub extern "js" fn InterestGroupBiddingAndScoringScriptRunnerGlobalScope::get_real_time_reporting(self : InterestGroupBiddingAndScoringScriptRunnerGlobalScope) -> RealTimeReporting =
  #| (self) => self.realTimeReporting

///|
/// InterestGroupBiddingScriptRunnerGlobalScope interface
pub type InterestGroupBiddingScriptRunnerGlobalScope

pub extern "js" fn InterestGroupBiddingScriptRunnerGlobalScope::to_js_value(self : InterestGroupBiddingScriptRunnerGlobalScope) -> JsValue =
  #| (self) => self

pub extern "js" fn InterestGroupBiddingScriptRunnerGlobalScope::get_private_aggregation(self : InterestGroupBiddingScriptRunnerGlobalScope) -> PrivateAggregation? =
  #| (self) => self.privateAggregation

pub extern "js" fn InterestGroupBiddingScriptRunnerGlobalScope::get_protected_audience(self : InterestGroupBiddingScriptRunnerGlobalScope) -> ProtectedAudienceUtilities =
  #| (self) => self.protectedAudience

pub extern "js" fn InterestGroupBiddingScriptRunnerGlobalScope::get_for_debugging_only(self : InterestGroupBiddingScriptRunnerGlobalScope) -> ForDebuggingOnly =
  #| (self) => self.forDebuggingOnly

pub extern "js" fn InterestGroupBiddingScriptRunnerGlobalScope::get_real_time_reporting(self : InterestGroupBiddingScriptRunnerGlobalScope) -> RealTimeReporting =
  #| (self) => self.realTimeReporting

pub extern "js" fn InterestGroupBiddingScriptRunnerGlobalScope::set_bid(self : InterestGroupBiddingScriptRunnerGlobalScope, one_or_many_bids : JsValue) -> Bool =
  #| (self, one_or_many_bids) => self.setBid(one_or_many_bids)

pub extern "js" fn InterestGroupBiddingScriptRunnerGlobalScope::set_priority(self : InterestGroupBiddingScriptRunnerGlobalScope, priority : Double) -> Unit =
  #| (self, priority) => self.setPriority(priority)

pub extern "js" fn InterestGroupBiddingScriptRunnerGlobalScope::set_priority_signals_override(self : InterestGroupBiddingScriptRunnerGlobalScope, key : String, priority : Double?) -> Unit =
  #| (self, key, priority) => self.setPrioritySignalsOverride(key, priority)

///|
/// InterestGroupScoringScriptRunnerGlobalScope interface
pub type InterestGroupScoringScriptRunnerGlobalScope

pub extern "js" fn InterestGroupScoringScriptRunnerGlobalScope::to_js_value(self : InterestGroupScoringScriptRunnerGlobalScope) -> JsValue =
  #| (self) => self

pub extern "js" fn InterestGroupScoringScriptRunnerGlobalScope::get_private_aggregation(self : InterestGroupScoringScriptRunnerGlobalScope) -> PrivateAggregation? =
  #| (self) => self.privateAggregation

pub extern "js" fn InterestGroupScoringScriptRunnerGlobalScope::get_protected_audience(self : InterestGroupScoringScriptRunnerGlobalScope) -> ProtectedAudienceUtilities =
  #| (self) => self.protectedAudience

pub extern "js" fn InterestGroupScoringScriptRunnerGlobalScope::get_for_debugging_only(self : InterestGroupScoringScriptRunnerGlobalScope) -> ForDebuggingOnly =
  #| (self) => self.forDebuggingOnly

pub extern "js" fn InterestGroupScoringScriptRunnerGlobalScope::get_real_time_reporting(self : InterestGroupScoringScriptRunnerGlobalScope) -> RealTimeReporting =
  #| (self) => self.realTimeReporting

///|
/// InterestGroupReportingScriptRunnerGlobalScope interface
pub type InterestGroupReportingScriptRunnerGlobalScope

pub extern "js" fn InterestGroupReportingScriptRunnerGlobalScope::to_js_value(self : InterestGroupReportingScriptRunnerGlobalScope) -> JsValue =
  #| (self) => self

pub extern "js" fn InterestGroupReportingScriptRunnerGlobalScope::get_private_aggregation(self : InterestGroupReportingScriptRunnerGlobalScope) -> PrivateAggregation? =
  #| (self) => self.privateAggregation

pub extern "js" fn InterestGroupReportingScriptRunnerGlobalScope::get_protected_audience(self : InterestGroupReportingScriptRunnerGlobalScope) -> ProtectedAudienceUtilities =
  #| (self) => self.protectedAudience

pub extern "js" fn InterestGroupReportingScriptRunnerGlobalScope::send_report_to(self : InterestGroupReportingScriptRunnerGlobalScope, url : String) -> Unit =
  #| (self, url) => self.sendReportTo(url)

pub extern "js" fn InterestGroupReportingScriptRunnerGlobalScope::register_ad_beacon(self : InterestGroupReportingScriptRunnerGlobalScope, map : JsValue) -> Unit =
  #| (self, map) => self.registerAdBeacon(map)

pub extern "js" fn InterestGroupReportingScriptRunnerGlobalScope::register_ad_macro(self : InterestGroupReportingScriptRunnerGlobalScope, name : String, value : String) -> Unit =
  #| (self, name, value) => self.registerAdMacro(name, value)

///|
/// ProtectedAudience interface
pub type ProtectedAudience

pub extern "js" fn ProtectedAudience::to_js_value(self : ProtectedAudience) -> JsValue =
  #| (self) => self

pub extern "js" fn ProtectedAudience::query_feature_support(self : ProtectedAudience, feature : String) -> JsValue =
  #| (self, feature) => self.queryFeatureSupport(feature)

