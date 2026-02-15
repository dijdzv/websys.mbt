// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webcrypto

///|
/// AlgorithmIdentifier typedef
pub type AlgorithmIdentifier

///|
pub extern "js" fn AlgorithmIdentifier::to_js_value(
  self : AlgorithmIdentifier,
) -> JsValue =
  #| (self) => self

///|
/// Create AlgorithmIdentifier from String
pub extern "js" fn AlgorithmIdentifier::from_string(
  v : String,
) -> AlgorithmIdentifier =
  #| (v) => v

///|
/// Check if this AlgorithmIdentifier is String
pub extern "js" fn AlgorithmIdentifier::is_string(
  self : AlgorithmIdentifier,
) -> Bool =
  #| (self) => typeof self === 'string'

///|
/// Try to get AlgorithmIdentifier as String
pub extern "js" fn AlgorithmIdentifier::as_string(
  self : AlgorithmIdentifier,
) -> String? =
  #| (self) => (typeof self === 'string') ? self : undefined

///|
/// Flatten Option[AlgorithmIdentifier] to String?
pub fn AlgorithmIdentifier::bind_as_string(
  value : AlgorithmIdentifier?,
) -> String? {
  match value {
    Some(v) => v.as_string()
    None => None
  }
}

///|
/// HashAlgorithmIdentifier typedef
pub type HashAlgorithmIdentifier = AlgorithmIdentifier

///|
/// BigInteger typedef
pub type BigInteger = Uint8Array

///|
/// NamedCurve typedef
pub type NamedCurve = String

///|
/// KeyType enum
pub(all) enum KeyType {
  Public
  Private
  Secret
} derive(Eq, Show)

///|
/// Convert to string value
pub fn KeyType::to_string(self : KeyType) -> String {
  match self {
    KeyType::Public => "public"
    KeyType::Private => "private"
    KeyType::Secret => "secret"
  }
}

///|
/// Parse from string value
pub fn KeyType::from_string(s : String) -> KeyType? {
  match s {
    "public" => Some(KeyType::Public)
    "private" => Some(KeyType::Private)
    "secret" => Some(KeyType::Secret)
    _ => None
  }
}

///|
/// Algorithm dictionary
pub(all) struct Algorithm {
  name : String
}

///|
/// Create a new Algorithm with default values
pub fn Algorithm::default() -> Algorithm {
  Algorithm::{ name: "" }
}

///|
extern "js" fn Algorithm::to_js_ffi(self : Algorithm) -> JsValue =
  #| (self) => ({
  #|   name: self.name
  #| })

///|
/// Convert to JsValue
pub fn Algorithm::to_js(self : Algorithm) -> JsValue {
  Algorithm::to_js_ffi(self)
}

///|
extern "js" fn Algorithm::from_js_ffi(value : JsValue) -> Algorithm =
  #| (v) => ({
  #|   name: v.name
  #| })

///|
/// Convert from JsValue
pub fn Algorithm::from_js(value : JsValue) -> Algorithm {
  Algorithm::from_js_ffi(value)
}

///|
/// KeyAlgorithm dictionary
pub(all) struct KeyAlgorithm {
  name : String
}

///|
/// Create a new KeyAlgorithm with default values
pub fn KeyAlgorithm::default() -> KeyAlgorithm {
  KeyAlgorithm::{ name: "" }
}

///|
extern "js" fn KeyAlgorithm::to_js_ffi(self : KeyAlgorithm) -> JsValue =
  #| (self) => ({
  #|   name: self.name
  #| })

///|
/// Convert to JsValue
pub fn KeyAlgorithm::to_js(self : KeyAlgorithm) -> JsValue {
  KeyAlgorithm::to_js_ffi(self)
}

///|
extern "js" fn KeyAlgorithm::from_js_ffi(value : JsValue) -> KeyAlgorithm =
  #| (v) => ({
  #|   name: v.name
  #| })

///|
/// Convert from JsValue
pub fn KeyAlgorithm::from_js(value : JsValue) -> KeyAlgorithm {
  KeyAlgorithm::from_js_ffi(value)
}

///|
/// RsaOtherPrimesInfo dictionary
pub(all) struct RsaOtherPrimesInfo {
  r : String?
  d : String?
  t : String?
}

///|
/// Create a new RsaOtherPrimesInfo with default values
pub fn RsaOtherPrimesInfo::default() -> RsaOtherPrimesInfo {
  RsaOtherPrimesInfo::{ r: None, d: None, t: None }
}

///|
extern "js" fn RsaOtherPrimesInfo::to_js_ffi(
  self : RsaOtherPrimesInfo,
) -> JsValue =
  #| (self) => ({
  #|   r: self.r,
  #|   d: self.d,
  #|   t: self.t
  #| })

///|
/// Convert to JsValue
pub fn RsaOtherPrimesInfo::to_js(self : RsaOtherPrimesInfo) -> JsValue {
  RsaOtherPrimesInfo::to_js_ffi(self)
}

///|
extern "js" fn RsaOtherPrimesInfo::from_js_ffi(
  value : JsValue,
) -> RsaOtherPrimesInfo =
  #| (v) => ({
  #|   r: v.r,
  #|   d: v.d,
  #|   t: v.t
  #| })

///|
/// Convert from JsValue
pub fn RsaOtherPrimesInfo::from_js(value : JsValue) -> RsaOtherPrimesInfo {
  RsaOtherPrimesInfo::from_js_ffi(value)
}

///|
/// CryptoKeyPair dictionary
pub(all) struct CryptoKeyPair {
  publicKey : CryptoKey?
  privateKey : CryptoKey?
}

///|
/// Create a new CryptoKeyPair with default values
pub fn CryptoKeyPair::default() -> CryptoKeyPair {
  CryptoKeyPair::{ publicKey: None, privateKey: None }
}

///|
extern "js" fn CryptoKeyPair::to_js_ffi(self : CryptoKeyPair) -> JsValue =
  #| (self) => ({
  #|   publicKey: ((() => { const v = self.publicKey; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   privateKey: ((() => { const v = self.privateKey; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn CryptoKeyPair::to_js(self : CryptoKeyPair) -> JsValue {
  CryptoKeyPair::to_js_ffi(self)
}

///|
extern "js" fn CryptoKeyPair::from_js_ffi(value : JsValue) -> CryptoKeyPair =
  #| (v) => ({
  #|   publicKey: (v.publicKey === undefined ? { $tag: 0 } : { $tag: 1, _0: v.publicKey }),
  #|   privateKey: (v.privateKey === undefined ? { $tag: 0 } : { $tag: 1, _0: v.privateKey })
  #| })

///|
/// Convert from JsValue
pub fn CryptoKeyPair::from_js(value : JsValue) -> CryptoKeyPair {
  CryptoKeyPair::from_js_ffi(value)
}

///|
/// RsaKeyGenParams dictionary
pub(all) struct RsaKeyGenParams {
  name : String
  modulusLength : Int
  publicExponent : BigInteger
}

///|
/// Create a new RsaKeyGenParams
pub fn RsaKeyGenParams::new(publicExponent~ : BigInteger) -> RsaKeyGenParams {
  RsaKeyGenParams::{ name: "", modulusLength: 0, publicExponent }
}

///|
extern "js" fn RsaKeyGenParams::to_js_ffi(self : RsaKeyGenParams) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   modulusLength: self.modulusLength,
  #|   publicExponent: self.publicExponent
  #| })

///|
/// Convert to JsValue
pub fn RsaKeyGenParams::to_js(self : RsaKeyGenParams) -> JsValue {
  RsaKeyGenParams::to_js_ffi(self)
}

///|
extern "js" fn RsaKeyGenParams::from_js_ffi(value : JsValue) -> RsaKeyGenParams =
  #| (v) => ({
  #|   name: v.name,
  #|   modulusLength: v.modulusLength,
  #|   publicExponent: v.publicExponent
  #| })

///|
/// Convert from JsValue
pub fn RsaKeyGenParams::from_js(value : JsValue) -> RsaKeyGenParams {
  RsaKeyGenParams::from_js_ffi(value)
}

///|
/// RsaHashedKeyGenParams dictionary
pub(all) struct RsaHashedKeyGenParams {
  name : String
  modulusLength : Int
  publicExponent : BigInteger
  hash : HashAlgorithmIdentifier
}

///|
/// Create a new RsaHashedKeyGenParams
pub fn RsaHashedKeyGenParams::new(
  publicExponent~ : BigInteger,
  hash~ : HashAlgorithmIdentifier,
) -> RsaHashedKeyGenParams {
  RsaHashedKeyGenParams::{ name: "", modulusLength: 0, publicExponent, hash }
}

///|
extern "js" fn RsaHashedKeyGenParams::to_js_ffi(
  self : RsaHashedKeyGenParams,
) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   modulusLength: self.modulusLength,
  #|   publicExponent: self.publicExponent,
  #|   hash: self.hash
  #| })

///|
/// Convert to JsValue
pub fn RsaHashedKeyGenParams::to_js(self : RsaHashedKeyGenParams) -> JsValue {
  RsaHashedKeyGenParams::to_js_ffi(self)
}

///|
extern "js" fn RsaHashedKeyGenParams::from_js_ffi(
  value : JsValue,
) -> RsaHashedKeyGenParams =
  #| (v) => ({
  #|   name: v.name,
  #|   modulusLength: v.modulusLength,
  #|   publicExponent: v.publicExponent,
  #|   hash: v.hash
  #| })

///|
/// Convert from JsValue
pub fn RsaHashedKeyGenParams::from_js(value : JsValue) -> RsaHashedKeyGenParams {
  RsaHashedKeyGenParams::from_js_ffi(value)
}

///|
/// RsaKeyAlgorithm dictionary
pub(all) struct RsaKeyAlgorithm {
  name : String
  modulusLength : Int
  publicExponent : BigInteger
}

///|
/// Create a new RsaKeyAlgorithm
pub fn RsaKeyAlgorithm::new(publicExponent~ : BigInteger) -> RsaKeyAlgorithm {
  RsaKeyAlgorithm::{ name: "", modulusLength: 0, publicExponent }
}

///|
extern "js" fn RsaKeyAlgorithm::to_js_ffi(self : RsaKeyAlgorithm) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   modulusLength: self.modulusLength,
  #|   publicExponent: self.publicExponent
  #| })

///|
/// Convert to JsValue
pub fn RsaKeyAlgorithm::to_js(self : RsaKeyAlgorithm) -> JsValue {
  RsaKeyAlgorithm::to_js_ffi(self)
}

///|
extern "js" fn RsaKeyAlgorithm::from_js_ffi(value : JsValue) -> RsaKeyAlgorithm =
  #| (v) => ({
  #|   name: v.name,
  #|   modulusLength: v.modulusLength,
  #|   publicExponent: v.publicExponent
  #| })

///|
/// Convert from JsValue
pub fn RsaKeyAlgorithm::from_js(value : JsValue) -> RsaKeyAlgorithm {
  RsaKeyAlgorithm::from_js_ffi(value)
}

///|
/// RsaHashedKeyAlgorithm dictionary
pub(all) struct RsaHashedKeyAlgorithm {
  name : String
  modulusLength : Int
  publicExponent : BigInteger
  hash : KeyAlgorithm
}

///|
/// Create a new RsaHashedKeyAlgorithm
pub fn RsaHashedKeyAlgorithm::new(
  publicExponent~ : BigInteger,
  hash~ : KeyAlgorithm,
) -> RsaHashedKeyAlgorithm {
  RsaHashedKeyAlgorithm::{ name: "", modulusLength: 0, publicExponent, hash }
}

///|
extern "js" fn RsaHashedKeyAlgorithm::to_js_ffi(
  self : RsaHashedKeyAlgorithm,
) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   modulusLength: self.modulusLength,
  #|   publicExponent: self.publicExponent,
  #|   hash: self.hash
  #| })

///|
/// Convert to JsValue
pub fn RsaHashedKeyAlgorithm::to_js(self : RsaHashedKeyAlgorithm) -> JsValue {
  RsaHashedKeyAlgorithm::to_js_ffi(self)
}

///|
extern "js" fn RsaHashedKeyAlgorithm::from_js_ffi(
  value : JsValue,
) -> RsaHashedKeyAlgorithm =
  #| (v) => ({
  #|   name: v.name,
  #|   modulusLength: v.modulusLength,
  #|   publicExponent: v.publicExponent,
  #|   hash: v.hash
  #| })

///|
/// Convert from JsValue
pub fn RsaHashedKeyAlgorithm::from_js(value : JsValue) -> RsaHashedKeyAlgorithm {
  RsaHashedKeyAlgorithm::from_js_ffi(value)
}

///|
/// RsaHashedImportParams dictionary
pub(all) struct RsaHashedImportParams {
  name : String
  hash : HashAlgorithmIdentifier
}

///|
/// Create a new RsaHashedImportParams
pub fn RsaHashedImportParams::new(
  hash~ : HashAlgorithmIdentifier,
) -> RsaHashedImportParams {
  RsaHashedImportParams::{ name: "", hash }
}

///|
extern "js" fn RsaHashedImportParams::to_js_ffi(
  self : RsaHashedImportParams,
) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   hash: self.hash
  #| })

///|
/// Convert to JsValue
pub fn RsaHashedImportParams::to_js(self : RsaHashedImportParams) -> JsValue {
  RsaHashedImportParams::to_js_ffi(self)
}

///|
extern "js" fn RsaHashedImportParams::from_js_ffi(
  value : JsValue,
) -> RsaHashedImportParams =
  #| (v) => ({
  #|   name: v.name,
  #|   hash: v.hash
  #| })

///|
/// Convert from JsValue
pub fn RsaHashedImportParams::from_js(value : JsValue) -> RsaHashedImportParams {
  RsaHashedImportParams::from_js_ffi(value)
}

///|
/// RsaPssParams dictionary
pub(all) struct RsaPssParams {
  name : String
  saltLength : Int
}

///|
/// Create a new RsaPssParams with default values
pub fn RsaPssParams::default() -> RsaPssParams {
  RsaPssParams::{ name: "", saltLength: 0 }
}

///|
extern "js" fn RsaPssParams::to_js_ffi(self : RsaPssParams) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   saltLength: self.saltLength
  #| })

///|
/// Convert to JsValue
pub fn RsaPssParams::to_js(self : RsaPssParams) -> JsValue {
  RsaPssParams::to_js_ffi(self)
}

///|
extern "js" fn RsaPssParams::from_js_ffi(value : JsValue) -> RsaPssParams =
  #| (v) => ({
  #|   name: v.name,
  #|   saltLength: v.saltLength
  #| })

///|
/// Convert from JsValue
pub fn RsaPssParams::from_js(value : JsValue) -> RsaPssParams {
  RsaPssParams::from_js_ffi(value)
}

///|
/// RsaOaepParams dictionary
pub(all) struct RsaOaepParams {
  name : String
  label : BufferSource?
}

///|
/// Create a new RsaOaepParams with default values
pub fn RsaOaepParams::default() -> RsaOaepParams {
  RsaOaepParams::{ name: "", label: None }
}

///|
extern "js" fn RsaOaepParams::to_js_ffi(self : RsaOaepParams) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   label: ((() => { const v = self.label; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })())
  #| })

///|
/// Convert to JsValue
pub fn RsaOaepParams::to_js(self : RsaOaepParams) -> JsValue {
  RsaOaepParams::to_js_ffi(self)
}

///|
extern "js" fn RsaOaepParams::from_js_ffi(value : JsValue) -> RsaOaepParams =
  #| (v) => ({
  #|   name: v.name,
  #|   label: (v.label === undefined ? { $tag: 0 } : { $tag: 1, _0: v.label })
  #| })

///|
/// Convert from JsValue
pub fn RsaOaepParams::from_js(value : JsValue) -> RsaOaepParams {
  RsaOaepParams::from_js_ffi(value)
}

///|
/// EcdsaParams dictionary
pub(all) struct EcdsaParams {
  name : String
  hash : HashAlgorithmIdentifier
}

///|
/// Create a new EcdsaParams
pub fn EcdsaParams::new(hash~ : HashAlgorithmIdentifier) -> EcdsaParams {
  EcdsaParams::{ name: "", hash }
}

///|
extern "js" fn EcdsaParams::to_js_ffi(self : EcdsaParams) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   hash: self.hash
  #| })

///|
/// Convert to JsValue
pub fn EcdsaParams::to_js(self : EcdsaParams) -> JsValue {
  EcdsaParams::to_js_ffi(self)
}

///|
extern "js" fn EcdsaParams::from_js_ffi(value : JsValue) -> EcdsaParams =
  #| (v) => ({
  #|   name: v.name,
  #|   hash: v.hash
  #| })

///|
/// Convert from JsValue
pub fn EcdsaParams::from_js(value : JsValue) -> EcdsaParams {
  EcdsaParams::from_js_ffi(value)
}

///|
/// EcKeyGenParams dictionary
pub(all) struct EcKeyGenParams {
  name : String
  namedCurve : NamedCurve
}

///|
/// Create a new EcKeyGenParams
pub fn EcKeyGenParams::new(namedCurve~ : NamedCurve) -> EcKeyGenParams {
  EcKeyGenParams::{ name: "", namedCurve }
}

///|
extern "js" fn EcKeyGenParams::to_js_ffi(self : EcKeyGenParams) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   namedCurve: self.namedCurve
  #| })

///|
/// Convert to JsValue
pub fn EcKeyGenParams::to_js(self : EcKeyGenParams) -> JsValue {
  EcKeyGenParams::to_js_ffi(self)
}

///|
extern "js" fn EcKeyGenParams::from_js_ffi(value : JsValue) -> EcKeyGenParams =
  #| (v) => ({
  #|   name: v.name,
  #|   namedCurve: v.namedCurve
  #| })

///|
/// Convert from JsValue
pub fn EcKeyGenParams::from_js(value : JsValue) -> EcKeyGenParams {
  EcKeyGenParams::from_js_ffi(value)
}

///|
/// EcKeyAlgorithm dictionary
pub(all) struct EcKeyAlgorithm {
  name : String
  namedCurve : NamedCurve
}

///|
/// Create a new EcKeyAlgorithm
pub fn EcKeyAlgorithm::new(namedCurve~ : NamedCurve) -> EcKeyAlgorithm {
  EcKeyAlgorithm::{ name: "", namedCurve }
}

///|
extern "js" fn EcKeyAlgorithm::to_js_ffi(self : EcKeyAlgorithm) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   namedCurve: self.namedCurve
  #| })

///|
/// Convert to JsValue
pub fn EcKeyAlgorithm::to_js(self : EcKeyAlgorithm) -> JsValue {
  EcKeyAlgorithm::to_js_ffi(self)
}

///|
extern "js" fn EcKeyAlgorithm::from_js_ffi(value : JsValue) -> EcKeyAlgorithm =
  #| (v) => ({
  #|   name: v.name,
  #|   namedCurve: v.namedCurve
  #| })

///|
/// Convert from JsValue
pub fn EcKeyAlgorithm::from_js(value : JsValue) -> EcKeyAlgorithm {
  EcKeyAlgorithm::from_js_ffi(value)
}

///|
/// EcKeyImportParams dictionary
pub(all) struct EcKeyImportParams {
  name : String
  namedCurve : NamedCurve
}

///|
/// Create a new EcKeyImportParams
pub fn EcKeyImportParams::new(namedCurve~ : NamedCurve) -> EcKeyImportParams {
  EcKeyImportParams::{ name: "", namedCurve }
}

///|
extern "js" fn EcKeyImportParams::to_js_ffi(
  self : EcKeyImportParams,
) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   namedCurve: self.namedCurve
  #| })

///|
/// Convert to JsValue
pub fn EcKeyImportParams::to_js(self : EcKeyImportParams) -> JsValue {
  EcKeyImportParams::to_js_ffi(self)
}

///|
extern "js" fn EcKeyImportParams::from_js_ffi(
  value : JsValue,
) -> EcKeyImportParams =
  #| (v) => ({
  #|   name: v.name,
  #|   namedCurve: v.namedCurve
  #| })

///|
/// Convert from JsValue
pub fn EcKeyImportParams::from_js(value : JsValue) -> EcKeyImportParams {
  EcKeyImportParams::from_js_ffi(value)
}

///|
/// EcdhKeyDeriveParams dictionary
pub(all) struct EcdhKeyDeriveParams {
  name : String
  public : CryptoKey
}

///|
/// Create a new EcdhKeyDeriveParams
pub fn EcdhKeyDeriveParams::new(public~ : CryptoKey) -> EcdhKeyDeriveParams {
  EcdhKeyDeriveParams::{ name: "", public }
}

///|
extern "js" fn EcdhKeyDeriveParams::to_js_ffi(
  self : EcdhKeyDeriveParams,
) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   public: self.public
  #| })

///|
/// Convert to JsValue
pub fn EcdhKeyDeriveParams::to_js(self : EcdhKeyDeriveParams) -> JsValue {
  EcdhKeyDeriveParams::to_js_ffi(self)
}

///|
extern "js" fn EcdhKeyDeriveParams::from_js_ffi(
  value : JsValue,
) -> EcdhKeyDeriveParams =
  #| (v) => ({
  #|   name: v.name,
  #|   public: v.public
  #| })

///|
/// Convert from JsValue
pub fn EcdhKeyDeriveParams::from_js(value : JsValue) -> EcdhKeyDeriveParams {
  EcdhKeyDeriveParams::from_js_ffi(value)
}

///|
/// AesCtrParams dictionary
pub(all) struct AesCtrParams {
  name : String
  counter : BufferSource
  length : Int
}

///|
/// Create a new AesCtrParams
pub fn AesCtrParams::new(counter~ : BufferSource) -> AesCtrParams {
  AesCtrParams::{ name: "", counter, length: 0 }
}

///|
extern "js" fn AesCtrParams::to_js_ffi(self : AesCtrParams) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   counter: self.counter.to_js_value(),
  #|   length: self.length
  #| })

///|
/// Convert to JsValue
pub fn AesCtrParams::to_js(self : AesCtrParams) -> JsValue {
  AesCtrParams::to_js_ffi(self)
}

///|
extern "js" fn AesCtrParams::from_js_ffi(value : JsValue) -> AesCtrParams =
  #| (v) => ({
  #|   name: v.name,
  #|   counter: v.counter,
  #|   length: v.length
  #| })

///|
/// Convert from JsValue
pub fn AesCtrParams::from_js(value : JsValue) -> AesCtrParams {
  AesCtrParams::from_js_ffi(value)
}

///|
/// AesKeyAlgorithm dictionary
pub(all) struct AesKeyAlgorithm {
  name : String
  length : Int
}

///|
/// Create a new AesKeyAlgorithm with default values
pub fn AesKeyAlgorithm::default() -> AesKeyAlgorithm {
  AesKeyAlgorithm::{ name: "", length: 0 }
}

///|
extern "js" fn AesKeyAlgorithm::to_js_ffi(self : AesKeyAlgorithm) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   length: self.length
  #| })

///|
/// Convert to JsValue
pub fn AesKeyAlgorithm::to_js(self : AesKeyAlgorithm) -> JsValue {
  AesKeyAlgorithm::to_js_ffi(self)
}

///|
extern "js" fn AesKeyAlgorithm::from_js_ffi(value : JsValue) -> AesKeyAlgorithm =
  #| (v) => ({
  #|   name: v.name,
  #|   length: v.length
  #| })

///|
/// Convert from JsValue
pub fn AesKeyAlgorithm::from_js(value : JsValue) -> AesKeyAlgorithm {
  AesKeyAlgorithm::from_js_ffi(value)
}

///|
/// AesKeyGenParams dictionary
pub(all) struct AesKeyGenParams {
  name : String
  length : Int
}

///|
/// Create a new AesKeyGenParams with default values
pub fn AesKeyGenParams::default() -> AesKeyGenParams {
  AesKeyGenParams::{ name: "", length: 0 }
}

///|
extern "js" fn AesKeyGenParams::to_js_ffi(self : AesKeyGenParams) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   length: self.length
  #| })

///|
/// Convert to JsValue
pub fn AesKeyGenParams::to_js(self : AesKeyGenParams) -> JsValue {
  AesKeyGenParams::to_js_ffi(self)
}

///|
extern "js" fn AesKeyGenParams::from_js_ffi(value : JsValue) -> AesKeyGenParams =
  #| (v) => ({
  #|   name: v.name,
  #|   length: v.length
  #| })

///|
/// Convert from JsValue
pub fn AesKeyGenParams::from_js(value : JsValue) -> AesKeyGenParams {
  AesKeyGenParams::from_js_ffi(value)
}

///|
/// AesDerivedKeyParams dictionary
pub(all) struct AesDerivedKeyParams {
  name : String
  length : Int
}

///|
/// Create a new AesDerivedKeyParams with default values
pub fn AesDerivedKeyParams::default() -> AesDerivedKeyParams {
  AesDerivedKeyParams::{ name: "", length: 0 }
}

///|
extern "js" fn AesDerivedKeyParams::to_js_ffi(
  self : AesDerivedKeyParams,
) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   length: self.length
  #| })

///|
/// Convert to JsValue
pub fn AesDerivedKeyParams::to_js(self : AesDerivedKeyParams) -> JsValue {
  AesDerivedKeyParams::to_js_ffi(self)
}

///|
extern "js" fn AesDerivedKeyParams::from_js_ffi(
  value : JsValue,
) -> AesDerivedKeyParams =
  #| (v) => ({
  #|   name: v.name,
  #|   length: v.length
  #| })

///|
/// Convert from JsValue
pub fn AesDerivedKeyParams::from_js(value : JsValue) -> AesDerivedKeyParams {
  AesDerivedKeyParams::from_js_ffi(value)
}

///|
/// AesCbcParams dictionary
pub(all) struct AesCbcParams {
  name : String
  iv : BufferSource
}

///|
/// Create a new AesCbcParams
pub fn AesCbcParams::new(iv~ : BufferSource) -> AesCbcParams {
  AesCbcParams::{ name: "", iv }
}

///|
extern "js" fn AesCbcParams::to_js_ffi(self : AesCbcParams) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   iv: self.iv.to_js_value()
  #| })

///|
/// Convert to JsValue
pub fn AesCbcParams::to_js(self : AesCbcParams) -> JsValue {
  AesCbcParams::to_js_ffi(self)
}

///|
extern "js" fn AesCbcParams::from_js_ffi(value : JsValue) -> AesCbcParams =
  #| (v) => ({
  #|   name: v.name,
  #|   iv: v.iv
  #| })

///|
/// Convert from JsValue
pub fn AesCbcParams::from_js(value : JsValue) -> AesCbcParams {
  AesCbcParams::from_js_ffi(value)
}

///|
/// AesGcmParams dictionary
pub(all) struct AesGcmParams {
  name : String
  iv : BufferSource
  additionalData : BufferSource?
  tagLength : Int?
}

///|
/// Create a new AesGcmParams
pub fn AesGcmParams::new(iv~ : BufferSource) -> AesGcmParams {
  AesGcmParams::{ name: "", iv, additionalData: None, tagLength: None }
}

///|
extern "js" fn AesGcmParams::to_js_ffi(self : AesGcmParams) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   iv: self.iv.to_js_value(),
  #|   additionalData: ((() => { const v = self.additionalData; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   tagLength: self.tagLength
  #| })

///|
/// Convert to JsValue
pub fn AesGcmParams::to_js(self : AesGcmParams) -> JsValue {
  AesGcmParams::to_js_ffi(self)
}

///|
extern "js" fn AesGcmParams::from_js_ffi(value : JsValue) -> AesGcmParams =
  #| (v) => ({
  #|   name: v.name,
  #|   iv: v.iv,
  #|   additionalData: (v.additionalData === undefined ? { $tag: 0 } : { $tag: 1, _0: v.additionalData }),
  #|   tagLength: v.tagLength
  #| })

///|
/// Convert from JsValue
pub fn AesGcmParams::from_js(value : JsValue) -> AesGcmParams {
  AesGcmParams::from_js_ffi(value)
}

///|
/// HmacImportParams dictionary
pub(all) struct HmacImportParams {
  name : String
  hash : HashAlgorithmIdentifier
  length : Int?
}

///|
/// Create a new HmacImportParams
pub fn HmacImportParams::new(
  hash~ : HashAlgorithmIdentifier,
) -> HmacImportParams {
  HmacImportParams::{ name: "", hash, length: None }
}

///|
extern "js" fn HmacImportParams::to_js_ffi(self : HmacImportParams) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   hash: self.hash,
  #|   length: self.length
  #| })

///|
/// Convert to JsValue
pub fn HmacImportParams::to_js(self : HmacImportParams) -> JsValue {
  HmacImportParams::to_js_ffi(self)
}

///|
extern "js" fn HmacImportParams::from_js_ffi(
  value : JsValue,
) -> HmacImportParams =
  #| (v) => ({
  #|   name: v.name,
  #|   hash: v.hash,
  #|   length: v.length
  #| })

///|
/// Convert from JsValue
pub fn HmacImportParams::from_js(value : JsValue) -> HmacImportParams {
  HmacImportParams::from_js_ffi(value)
}

///|
/// HmacKeyAlgorithm dictionary
pub(all) struct HmacKeyAlgorithm {
  name : String
  hash : KeyAlgorithm
  length : Int
}

///|
/// Create a new HmacKeyAlgorithm
pub fn HmacKeyAlgorithm::new(hash~ : KeyAlgorithm) -> HmacKeyAlgorithm {
  HmacKeyAlgorithm::{ name: "", hash, length: 0 }
}

///|
extern "js" fn HmacKeyAlgorithm::to_js_ffi(self : HmacKeyAlgorithm) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   hash: self.hash,
  #|   length: self.length
  #| })

///|
/// Convert to JsValue
pub fn HmacKeyAlgorithm::to_js(self : HmacKeyAlgorithm) -> JsValue {
  HmacKeyAlgorithm::to_js_ffi(self)
}

///|
extern "js" fn HmacKeyAlgorithm::from_js_ffi(
  value : JsValue,
) -> HmacKeyAlgorithm =
  #| (v) => ({
  #|   name: v.name,
  #|   hash: v.hash,
  #|   length: v.length
  #| })

///|
/// Convert from JsValue
pub fn HmacKeyAlgorithm::from_js(value : JsValue) -> HmacKeyAlgorithm {
  HmacKeyAlgorithm::from_js_ffi(value)
}

///|
/// HmacKeyGenParams dictionary
pub(all) struct HmacKeyGenParams {
  name : String
  hash : HashAlgorithmIdentifier
  length : Int?
}

///|
/// Create a new HmacKeyGenParams
pub fn HmacKeyGenParams::new(
  hash~ : HashAlgorithmIdentifier,
) -> HmacKeyGenParams {
  HmacKeyGenParams::{ name: "", hash, length: None }
}

///|
extern "js" fn HmacKeyGenParams::to_js_ffi(self : HmacKeyGenParams) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   hash: self.hash,
  #|   length: self.length
  #| })

///|
/// Convert to JsValue
pub fn HmacKeyGenParams::to_js(self : HmacKeyGenParams) -> JsValue {
  HmacKeyGenParams::to_js_ffi(self)
}

///|
extern "js" fn HmacKeyGenParams::from_js_ffi(
  value : JsValue,
) -> HmacKeyGenParams =
  #| (v) => ({
  #|   name: v.name,
  #|   hash: v.hash,
  #|   length: v.length
  #| })

///|
/// Convert from JsValue
pub fn HmacKeyGenParams::from_js(value : JsValue) -> HmacKeyGenParams {
  HmacKeyGenParams::from_js_ffi(value)
}

///|
/// HkdfParams dictionary
pub(all) struct HkdfParams {
  name : String
  hash : HashAlgorithmIdentifier
  salt : BufferSource
  info : BufferSource
}

///|
/// Create a new HkdfParams
pub fn HkdfParams::new(
  hash~ : HashAlgorithmIdentifier,
  salt~ : BufferSource,
  info~ : BufferSource,
) -> HkdfParams {
  HkdfParams::{ name: "", hash, salt, info }
}

///|
extern "js" fn HkdfParams::to_js_ffi(self : HkdfParams) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   hash: self.hash,
  #|   salt: self.salt.to_js_value(),
  #|   info: self.info.to_js_value()
  #| })

///|
/// Convert to JsValue
pub fn HkdfParams::to_js(self : HkdfParams) -> JsValue {
  HkdfParams::to_js_ffi(self)
}

///|
extern "js" fn HkdfParams::from_js_ffi(value : JsValue) -> HkdfParams =
  #| (v) => ({
  #|   name: v.name,
  #|   hash: v.hash,
  #|   salt: v.salt,
  #|   info: v.info
  #| })

///|
/// Convert from JsValue
pub fn HkdfParams::from_js(value : JsValue) -> HkdfParams {
  HkdfParams::from_js_ffi(value)
}

///|
/// Pbkdf2Params dictionary
pub(all) struct Pbkdf2Params {
  name : String
  salt : BufferSource
  iterations : Int
  hash : HashAlgorithmIdentifier
}

///|
/// Create a new Pbkdf2Params
pub fn Pbkdf2Params::new(
  salt~ : BufferSource,
  hash~ : HashAlgorithmIdentifier,
) -> Pbkdf2Params {
  Pbkdf2Params::{ name: "", salt, iterations: 0, hash }
}

///|
extern "js" fn Pbkdf2Params::to_js_ffi(self : Pbkdf2Params) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   salt: self.salt.to_js_value(),
  #|   iterations: self.iterations,
  #|   hash: self.hash
  #| })

///|
/// Convert to JsValue
pub fn Pbkdf2Params::to_js(self : Pbkdf2Params) -> JsValue {
  Pbkdf2Params::to_js_ffi(self)
}

///|
extern "js" fn Pbkdf2Params::from_js_ffi(value : JsValue) -> Pbkdf2Params =
  #| (v) => ({
  #|   name: v.name,
  #|   salt: v.salt,
  #|   iterations: v.iterations,
  #|   hash: v.hash
  #| })

///|
/// Convert from JsValue
pub fn Pbkdf2Params::from_js(value : JsValue) -> Pbkdf2Params {
  Pbkdf2Params::from_js_ffi(value)
}

///|
/// Crypto interface
pub type Crypto

///|
pub extern "js" fn Crypto::to_js_value(self : Crypto) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Crypto (unchecked)
pub extern "js" fn Crypto::from_js_value(v : JsValue) -> Crypto =
  #| (v) => v

///|
/// Safely cast JsValue to Crypto (checked with instanceof)
pub extern "js" fn Crypto::from_js_value_opt(v : JsValue) -> Crypto? =
  #| (v) => (v instanceof Crypto) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Crypto (checked with instanceof)
pub extern "js" fn JsValue::as_crypto(self : JsValue) -> Crypto? =
  #| (self) => (self instanceof Crypto) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Crypto (unchecked)
pub extern "js" fn JsValue::to_crypto(self : JsValue) -> Crypto =
  #| (self) => self

///|
pub extern "js" fn Crypto::get_subtle(self : Crypto) -> SubtleCrypto =
  #| (self) => self.subtle

///|
pub extern "js" fn Crypto::get_random_values(
  self : Crypto,
  array : ArrayBufferView,
) -> ArrayBufferView =
  #| (self, array) => self.getRandomValues(array)

///|
pub extern "js" fn Crypto::random_uuid(self : Crypto) -> String =
  #| (self) => self.randomUUID()

///|
pub extern "js" fn Crypto::get_random_values_with_int8_array(
  self : Crypto,
  array : Int8Array,
) -> ArrayBufferView =
  #| (self, array) => self.getRandomValues(array)

///|
pub extern "js" fn Crypto::get_random_values_with_int16_array(
  self : Crypto,
  array : Int16Array,
) -> ArrayBufferView =
  #| (self, array) => self.getRandomValues(array)

///|
pub extern "js" fn Crypto::get_random_values_with_int32_array(
  self : Crypto,
  array : Int32Array,
) -> ArrayBufferView =
  #| (self, array) => self.getRandomValues(array)

///|
pub extern "js" fn Crypto::get_random_values_with_uint8_array(
  self : Crypto,
  array : Uint8Array,
) -> ArrayBufferView =
  #| (self, array) => self.getRandomValues(array)

///|
pub extern "js" fn Crypto::get_random_values_with_uint16_array(
  self : Crypto,
  array : Uint16Array,
) -> ArrayBufferView =
  #| (self, array) => self.getRandomValues(array)

///|
pub extern "js" fn Crypto::get_random_values_with_uint32_array(
  self : Crypto,
  array : Uint32Array,
) -> ArrayBufferView =
  #| (self, array) => self.getRandomValues(array)

///|
pub extern "js" fn Crypto::get_random_values_with_uint8_clamped_array(
  self : Crypto,
  array : Uint8ClampedArray,
) -> ArrayBufferView =
  #| (self, array) => self.getRandomValues(array)

///|
pub extern "js" fn Crypto::get_random_values_with_big_int64_array(
  self : Crypto,
  array : BigInt64Array,
) -> ArrayBufferView =
  #| (self, array) => self.getRandomValues(array)

///|
pub extern "js" fn Crypto::get_random_values_with_big_uint64_array(
  self : Crypto,
  array : BigUint64Array,
) -> ArrayBufferView =
  #| (self, array) => self.getRandomValues(array)

///|
pub extern "js" fn Crypto::get_random_values_with_float16_array(
  self : Crypto,
  array : Float16Array,
) -> ArrayBufferView =
  #| (self, array) => self.getRandomValues(array)

///|
pub extern "js" fn Crypto::get_random_values_with_float32_array(
  self : Crypto,
  array : Float32Array,
) -> ArrayBufferView =
  #| (self, array) => self.getRandomValues(array)

///|
pub extern "js" fn Crypto::get_random_values_with_float64_array(
  self : Crypto,
  array : Float64Array,
) -> ArrayBufferView =
  #| (self, array) => self.getRandomValues(array)

///|
pub extern "js" fn Crypto::get_random_values_with_data_view(
  self : Crypto,
  array : DataView,
) -> ArrayBufferView =
  #| (self, array) => self.getRandomValues(array)

///|
/// CryptoKey interface
pub type CryptoKey

///|
pub extern "js" fn CryptoKey::to_js_value(self : CryptoKey) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CryptoKey (unchecked)
pub extern "js" fn CryptoKey::from_js_value(v : JsValue) -> CryptoKey =
  #| (v) => v

///|
/// Safely cast JsValue to CryptoKey (checked with instanceof)
pub extern "js" fn CryptoKey::from_js_value_opt(v : JsValue) -> CryptoKey? =
  #| (v) => (v instanceof CryptoKey) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CryptoKey (checked with instanceof)
pub extern "js" fn JsValue::as_crypto_key(self : JsValue) -> CryptoKey? =
  #| (self) => (self instanceof CryptoKey) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CryptoKey (unchecked)
pub extern "js" fn JsValue::to_crypto_key(self : JsValue) -> CryptoKey =
  #| (self) => self

///|
pub extern "js" fn CryptoKey::get_type(self : CryptoKey) -> KeyType =
  #| (self) => ['public', 'private', 'secret'].indexOf(self.type)

///|
pub extern "js" fn CryptoKey::get_extractable(self : CryptoKey) -> Bool =
  #| (self) => self.extractable

///|
pub extern "js" fn CryptoKey::get_algorithm(self : CryptoKey) -> JsValue =
  #| (self) => self.algorithm

///|
pub extern "js" fn CryptoKey::get_usages(self : CryptoKey) -> JsValue =
  #| (self) => self.usages

///|
/// SubtleCrypto interface
pub type SubtleCrypto

///|
pub extern "js" fn SubtleCrypto::to_js_value(self : SubtleCrypto) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SubtleCrypto (unchecked)
pub extern "js" fn SubtleCrypto::from_js_value(v : JsValue) -> SubtleCrypto =
  #| (v) => v

///|
/// Safely cast JsValue to SubtleCrypto (checked with instanceof)
pub extern "js" fn SubtleCrypto::from_js_value_opt(
  v : JsValue,
) -> SubtleCrypto? =
  #| (v) => (v instanceof SubtleCrypto) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SubtleCrypto (checked with instanceof)
pub extern "js" fn JsValue::as_subtle_crypto(self : JsValue) -> SubtleCrypto? =
  #| (self) => (self instanceof SubtleCrypto) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SubtleCrypto (unchecked)
pub extern "js" fn JsValue::to_subtle_crypto(self : JsValue) -> SubtleCrypto =
  #| (self) => self

///|
pub extern "js" fn SubtleCrypto::encrypt(
  self : SubtleCrypto,
  algorithm : AlgorithmIdentifier,
  key : CryptoKey,
  data : BufferSource,
) -> Promise[ArrayBuffer] =
  #| (self, algorithm, key, data) => self.encrypt(algorithm, key, data)

///|
pub extern "js" fn SubtleCrypto::decrypt(
  self : SubtleCrypto,
  algorithm : AlgorithmIdentifier,
  key : CryptoKey,
  data : BufferSource,
) -> Promise[ArrayBuffer] =
  #| (self, algorithm, key, data) => self.decrypt(algorithm, key, data)

///|
pub extern "js" fn SubtleCrypto::sign(
  self : SubtleCrypto,
  algorithm : AlgorithmIdentifier,
  key : CryptoKey,
  data : BufferSource,
) -> Promise[ArrayBuffer] =
  #| (self, algorithm, key, data) => self.sign(algorithm, key, data)

///|
pub extern "js" fn SubtleCrypto::verify(
  self : SubtleCrypto,
  algorithm : AlgorithmIdentifier,
  key : CryptoKey,
  signature : BufferSource,
  data : BufferSource,
) -> Promise[Bool] =
  #| (self, algorithm, key, signature, data) => self.verify(algorithm, key, signature, data)

///|
pub extern "js" fn SubtleCrypto::digest(
  self : SubtleCrypto,
  algorithm : AlgorithmIdentifier,
  data : BufferSource,
) -> Promise[ArrayBuffer] =
  #| (self, algorithm, data) => self.digest(algorithm, data)

///|
pub extern "js" fn SubtleCrypto::generate_key(
  self : SubtleCrypto,
  algorithm : AlgorithmIdentifier,
  extractable : Bool,
  key_usages : Array[KeyUsage],
) -> Promise[CryptoKeyOrCryptoKeyPair] =
  #| (self, algorithm, extractable, key_usages) => self.generateKey(algorithm, extractable, key_usages)

///|
pub extern "js" fn SubtleCrypto::derive_key(
  self : SubtleCrypto,
  algorithm : AlgorithmIdentifier,
  base_key : CryptoKey,
  derived_key_type : AlgorithmIdentifier,
  extractable : Bool,
  key_usages : Array[KeyUsage],
) -> Promise[CryptoKey] =
  #| (self, algorithm, base_key, derived_key_type, extractable, key_usages) => self.deriveKey(algorithm, base_key, derived_key_type, extractable, key_usages)

///|
pub extern "js" fn SubtleCrypto::derive_bits(
  self : SubtleCrypto,
  algorithm : AlgorithmIdentifier,
  base_key : CryptoKey,
) -> Promise[ArrayBuffer] =
  #| (self, algorithm, base_key) => self.deriveBits(algorithm, base_key)

///|
pub extern "js" fn SubtleCrypto::derive_bits_with_length(
  self : SubtleCrypto,
  algorithm : AlgorithmIdentifier,
  base_key : CryptoKey,
  length : Int?,
) -> Promise[ArrayBuffer] =
  #| (self, algorithm, base_key, length) => self.deriveBits(algorithm, base_key, length)

///|
pub extern "js" fn SubtleCrypto::import_key(
  self : SubtleCrypto,
  format : KeyFormat,
  key_data : BufferSourceOrJsonWebKey,
  algorithm : AlgorithmIdentifier,
  extractable : Bool,
  key_usages : Array[KeyUsage],
) -> Promise[CryptoKey] =
  #| (self, format, key_data, algorithm, extractable, key_usages) => self.importKey(['raw-public', 'raw-private', 'raw-seed', 'raw-secret', 'raw', 'spki', 'pkcs8', 'jwk'][format], key_data, algorithm, extractable, key_usages)

///|
pub extern "js" fn SubtleCrypto::export_key(
  self : SubtleCrypto,
  format : KeyFormat,
  key : CryptoKey,
) -> Promise[ArrayBufferOrJsonWebKey] =
  #| (self, format, key) => self.exportKey(['raw-public', 'raw-private', 'raw-seed', 'raw-secret', 'raw', 'spki', 'pkcs8', 'jwk'][format], key)

///|
pub extern "js" fn SubtleCrypto::wrap_key(
  self : SubtleCrypto,
  format : KeyFormat,
  key : CryptoKey,
  wrapping_key : CryptoKey,
  wrap_algorithm : AlgorithmIdentifier,
) -> Promise[ArrayBuffer] =
  #| (self, format, key, wrapping_key, wrap_algorithm) => self.wrapKey(['raw-public', 'raw-private', 'raw-seed', 'raw-secret', 'raw', 'spki', 'pkcs8', 'jwk'][format], key, wrapping_key, wrap_algorithm)

///|
pub extern "js" fn SubtleCrypto::unwrap_key(
  self : SubtleCrypto,
  format : KeyFormat,
  wrapped_key : BufferSource,
  unwrapping_key : CryptoKey,
  unwrap_algorithm : AlgorithmIdentifier,
  unwrapped_key_algorithm : AlgorithmIdentifier,
  extractable : Bool,
  key_usages : Array[KeyUsage],
) -> Promise[CryptoKey] =
  #| (self, format, wrapped_key, unwrapping_key, unwrap_algorithm, unwrapped_key_algorithm, extractable, key_usages) => self.unwrapKey(['raw-public', 'raw-private', 'raw-seed', 'raw-secret', 'raw', 'spki', 'pkcs8', 'jwk'][format], wrapped_key, unwrapping_key, unwrap_algorithm, unwrapped_key_algorithm, extractable, key_usages)

///|
pub extern "js" fn SubtleCrypto::encapsulate_key(
  self : SubtleCrypto,
  encapsulation_algorithm : AlgorithmIdentifier,
  encapsulation_key : CryptoKey,
  shared_key_algorithm : AlgorithmIdentifier,
  extractable : Bool,
  key_usages : Array[KeyUsage],
) -> Promise[EncapsulatedKey] =
  #| (self, encapsulation_algorithm, encapsulation_key, shared_key_algorithm, extractable, key_usages) => self.encapsulateKey(encapsulation_algorithm, encapsulation_key, shared_key_algorithm, extractable, key_usages).then(v => ({
  #|   sharedKey: (v.sharedKey === undefined ? { $tag: 0 } : { $tag: 1, _0: v.sharedKey }),
  #|   ciphertext: (v.ciphertext === undefined ? { $tag: 0 } : { $tag: 1, _0: v.ciphertext })
  #| }))

///|
pub extern "js" fn SubtleCrypto::encapsulate_bits(
  self : SubtleCrypto,
  encapsulation_algorithm : AlgorithmIdentifier,
  encapsulation_key : CryptoKey,
) -> Promise[EncapsulatedBits] =
  #| (self, encapsulation_algorithm, encapsulation_key) => self.encapsulateBits(encapsulation_algorithm, encapsulation_key).then(v => ({
  #|   sharedKey: (v.sharedKey === undefined ? { $tag: 0 } : { $tag: 1, _0: v.sharedKey }),
  #|   ciphertext: (v.ciphertext === undefined ? { $tag: 0 } : { $tag: 1, _0: v.ciphertext })
  #| }))

///|
pub extern "js" fn SubtleCrypto::decapsulate_key(
  self : SubtleCrypto,
  decapsulation_algorithm : AlgorithmIdentifier,
  decapsulation_key : CryptoKey,
  ciphertext : BufferSource,
  shared_key_algorithm : AlgorithmIdentifier,
  extractable : Bool,
  key_usages : Array[KeyUsage],
) -> Promise[CryptoKey] =
  #| (self, decapsulation_algorithm, decapsulation_key, ciphertext, shared_key_algorithm, extractable, key_usages) => self.decapsulateKey(decapsulation_algorithm, decapsulation_key, ciphertext, shared_key_algorithm, extractable, key_usages)

///|
pub extern "js" fn SubtleCrypto::decapsulate_bits(
  self : SubtleCrypto,
  decapsulation_algorithm : AlgorithmIdentifier,
  decapsulation_key : CryptoKey,
  ciphertext : BufferSource,
) -> Promise[ArrayBuffer] =
  #| (self, decapsulation_algorithm, decapsulation_key, ciphertext) => self.decapsulateBits(decapsulation_algorithm, decapsulation_key, ciphertext)

///|
pub extern "js" fn SubtleCrypto::get_public_key(
  self : SubtleCrypto,
  key : CryptoKey,
  key_usages : Array[KeyUsage],
) -> Promise[CryptoKey] =
  #| (self, key, key_usages) => self.getPublicKey(key, key_usages)

///|
pub extern "js" fn SubtleCrypto::supports(
  operation : String,
  algorithm : AlgorithmIdentifier,
) -> Bool =
  #| (operation, algorithm) => SubtleCrypto.supports(operation, algorithm)

///|
pub extern "js" fn SubtleCrypto::supports_with_length(
  operation : String,
  algorithm : AlgorithmIdentifier,
  length : Int?,
) -> Bool =
  #| (operation, algorithm, length) => SubtleCrypto.supports(operation, algorithm, length)

///|
pub extern "js" fn SubtleCrypto::supports_with_operation_and_algorithm_algorithm_identifier_and_additional_algorithm_algorithm_identifier(
  operation : String,
  algorithm : AlgorithmIdentifier,
  additional_algorithm : AlgorithmIdentifier,
) -> Bool =
  #| (operation, algorithm, additional_algorithm) => SubtleCrypto.supports(operation, algorithm, additional_algorithm)

///|
pub extern "js" fn SubtleCrypto::encrypt_with_string(
  self : SubtleCrypto,
  algorithm : String,
  key : CryptoKey,
  data : BufferSource,
) -> Promise[ArrayBuffer] =
  #| (self, algorithm, key, data) => self.encrypt(algorithm, key, data)

///|
pub extern "js" fn SubtleCrypto::decrypt_with_string(
  self : SubtleCrypto,
  algorithm : String,
  key : CryptoKey,
  data : BufferSource,
) -> Promise[ArrayBuffer] =
  #| (self, algorithm, key, data) => self.decrypt(algorithm, key, data)

///|
pub extern "js" fn SubtleCrypto::sign_with_string(
  self : SubtleCrypto,
  algorithm : String,
  key : CryptoKey,
  data : BufferSource,
) -> Promise[ArrayBuffer] =
  #| (self, algorithm, key, data) => self.sign(algorithm, key, data)

///|
pub extern "js" fn SubtleCrypto::verify_with_string(
  self : SubtleCrypto,
  algorithm : String,
  key : CryptoKey,
  signature : BufferSource,
  data : BufferSource,
) -> Promise[Bool] =
  #| (self, algorithm, key, signature, data) => self.verify(algorithm, key, signature, data)

///|
pub extern "js" fn SubtleCrypto::digest_with_string(
  self : SubtleCrypto,
  algorithm : String,
  data : BufferSource,
) -> Promise[ArrayBuffer] =
  #| (self, algorithm, data) => self.digest(algorithm, data)

///|
pub extern "js" fn SubtleCrypto::generate_key_with_string(
  self : SubtleCrypto,
  algorithm : String,
  extractable : Bool,
  key_usages : Array[KeyUsage],
) -> Promise[CryptoKeyOrCryptoKeyPair] =
  #| (self, algorithm, extractable, key_usages) => self.generateKey(algorithm, extractable, key_usages)

///|
pub extern "js" fn SubtleCrypto::derive_key_with_string(
  self : SubtleCrypto,
  algorithm : String,
  base_key : CryptoKey,
  derived_key_type : AlgorithmIdentifier,
  extractable : Bool,
  key_usages : Array[KeyUsage],
) -> Promise[CryptoKey] =
  #| (self, algorithm, base_key, derived_key_type, extractable, key_usages) => self.deriveKey(algorithm, base_key, derived_key_type, extractable, key_usages)

///|
pub extern "js" fn SubtleCrypto::derive_bits_with_string(
  self : SubtleCrypto,
  algorithm : String,
  base_key : CryptoKey,
  length : Int?,
) -> Promise[ArrayBuffer] =
  #| (self, algorithm, base_key, length) => self.deriveBits(algorithm, base_key, length)

///|
pub extern "js" fn SubtleCrypto::import_key_with_string(
  self : SubtleCrypto,
  format : KeyFormat,
  key_data : BufferSourceOrJsonWebKey,
  algorithm : String,
  extractable : Bool,
  key_usages : Array[KeyUsage],
) -> Promise[CryptoKey] =
  #| (self, format, key_data, algorithm, extractable, key_usages) => self.importKey(['raw-public', 'raw-private', 'raw-seed', 'raw-secret', 'raw', 'spki', 'pkcs8', 'jwk'][format], key_data, algorithm, extractable, key_usages)

///|
pub extern "js" fn SubtleCrypto::wrap_key_with_string(
  self : SubtleCrypto,
  format : KeyFormat,
  key : CryptoKey,
  wrapping_key : CryptoKey,
  wrap_algorithm : String,
) -> Promise[ArrayBuffer] =
  #| (self, format, key, wrapping_key, wrap_algorithm) => self.wrapKey(['raw-public', 'raw-private', 'raw-seed', 'raw-secret', 'raw', 'spki', 'pkcs8', 'jwk'][format], key, wrapping_key, wrap_algorithm)

///|
pub extern "js" fn SubtleCrypto::unwrap_key_with_array_buffer_view(
  self : SubtleCrypto,
  format : KeyFormat,
  wrapped_key : ArrayBufferView,
  unwrapping_key : CryptoKey,
  unwrap_algorithm : AlgorithmIdentifier,
  unwrapped_key_algorithm : AlgorithmIdentifier,
  extractable : Bool,
  key_usages : Array[KeyUsage],
) -> Promise[CryptoKey] =
  #| (self, format, wrapped_key, unwrapping_key, unwrap_algorithm, unwrapped_key_algorithm, extractable, key_usages) => self.unwrapKey(['raw-public', 'raw-private', 'raw-seed', 'raw-secret', 'raw', 'spki', 'pkcs8', 'jwk'][format], wrapped_key, unwrapping_key, unwrap_algorithm, unwrapped_key_algorithm, extractable, key_usages)

///|
pub extern "js" fn SubtleCrypto::unwrap_key_with_array_buffer(
  self : SubtleCrypto,
  format : KeyFormat,
  wrapped_key : ArrayBuffer,
  unwrapping_key : CryptoKey,
  unwrap_algorithm : AlgorithmIdentifier,
  unwrapped_key_algorithm : AlgorithmIdentifier,
  extractable : Bool,
  key_usages : Array[KeyUsage],
) -> Promise[CryptoKey] =
  #| (self, format, wrapped_key, unwrapping_key, unwrap_algorithm, unwrapped_key_algorithm, extractable, key_usages) => self.unwrapKey(['raw-public', 'raw-private', 'raw-seed', 'raw-secret', 'raw', 'spki', 'pkcs8', 'jwk'][format], wrapped_key, unwrapping_key, unwrap_algorithm, unwrapped_key_algorithm, extractable, key_usages)

///|
pub extern "js" fn SubtleCrypto::encapsulate_key_with_string(
  self : SubtleCrypto,
  encapsulation_algorithm : String,
  encapsulation_key : CryptoKey,
  shared_key_algorithm : AlgorithmIdentifier,
  extractable : Bool,
  key_usages : Array[KeyUsage],
) -> Promise[EncapsulatedKey] =
  #| (self, encapsulation_algorithm, encapsulation_key, shared_key_algorithm, extractable, key_usages) => self.encapsulateKey(encapsulation_algorithm, encapsulation_key, shared_key_algorithm, extractable, key_usages)

///|
pub extern "js" fn SubtleCrypto::encapsulate_bits_with_string(
  self : SubtleCrypto,
  encapsulation_algorithm : String,
  encapsulation_key : CryptoKey,
) -> Promise[EncapsulatedBits] =
  #| (self, encapsulation_algorithm, encapsulation_key) => self.encapsulateBits(encapsulation_algorithm, encapsulation_key)

///|
pub extern "js" fn SubtleCrypto::decapsulate_key_with_string(
  self : SubtleCrypto,
  decapsulation_algorithm : String,
  decapsulation_key : CryptoKey,
  ciphertext : BufferSource,
  shared_key_algorithm : AlgorithmIdentifier,
  extractable : Bool,
  key_usages : Array[KeyUsage],
) -> Promise[CryptoKey] =
  #| (self, decapsulation_algorithm, decapsulation_key, ciphertext, shared_key_algorithm, extractable, key_usages) => self.decapsulateKey(decapsulation_algorithm, decapsulation_key, ciphertext, shared_key_algorithm, extractable, key_usages)

///|
pub extern "js" fn SubtleCrypto::decapsulate_bits_with_string(
  self : SubtleCrypto,
  decapsulation_algorithm : String,
  decapsulation_key : CryptoKey,
  ciphertext : BufferSource,
) -> Promise[ArrayBuffer] =
  #| (self, decapsulation_algorithm, decapsulation_key, ciphertext) => self.decapsulateBits(decapsulation_algorithm, decapsulation_key, ciphertext)

///|
pub extern "js" fn SubtleCrypto::supports_with_string(
  operation : String,
  algorithm : String,
  length : Int?,
) -> Bool =
  #| (operation, algorithm, length) => SubtleCrypto.supports(operation, algorithm, length)
