// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webcrypto

///|
/// AlgorithmIdentifier typedef
pub type AlgorithmIdentifier = JsValue

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
}

/// Convert to string value
pub fn KeyType::to_string(self : KeyType) -> String {
  match self {
    Public => "public"
    Private => "private"
    Secret => "secret"
  }
}

/// Parse from string value
pub fn KeyType::from_string(s : String) -> KeyType? {
  match s {
    "public" => Some(Public)
    "private" => Some(Private)
    "secret" => Some(Secret)
    _ => None
  }
}

///|
/// Algorithm dictionary
pub struct Algorithm {
  name : String
}

/// Create a new Algorithm with default values
pub fn Algorithm::default() -> Algorithm {
  Algorithm::{
    name: "",
  }
}

/// Convert to JsValue
pub extern "js" fn Algorithm::to_js(self : Algorithm) -> JsValue =
  #| (self) => ({
  #|   name: self.name
  #| })

///|
/// KeyAlgorithm dictionary
pub struct KeyAlgorithm {
  name : String
}

/// Create a new KeyAlgorithm with default values
pub fn KeyAlgorithm::default() -> KeyAlgorithm {
  KeyAlgorithm::{
    name: "",
  }
}

/// Convert to JsValue
pub extern "js" fn KeyAlgorithm::to_js(self : KeyAlgorithm) -> JsValue =
  #| (self) => ({
  #|   name: self.name
  #| })

///|
/// RsaOtherPrimesInfo dictionary
pub struct RsaOtherPrimesInfo {
  r : String?
  d : String?
  t : String?
}

/// Create a new RsaOtherPrimesInfo with default values
pub fn RsaOtherPrimesInfo::default() -> RsaOtherPrimesInfo {
  RsaOtherPrimesInfo::{
    r: None,
    d: None,
    t: None,
  }
}

/// Convert to JsValue
pub extern "js" fn RsaOtherPrimesInfo::to_js(self : RsaOtherPrimesInfo) -> JsValue =
  #| (self) => ({
  #|   r: self.r,
  #|   d: self.d,
  #|   t: self.t
  #| })

///|
/// CryptoKeyPair dictionary
pub struct CryptoKeyPair {
  publicKey : CryptoKey?
  privateKey : CryptoKey?
}

/// Create a new CryptoKeyPair with default values
pub fn CryptoKeyPair::default() -> CryptoKeyPair {
  CryptoKeyPair::{
    publicKey: None,
    privateKey: None,
  }
}

/// Convert to JsValue
pub extern "js" fn CryptoKeyPair::to_js(self : CryptoKeyPair) -> JsValue =
  #| (self) => ({
  #|   publicKey: self.publicKey,
  #|   privateKey: self.privateKey
  #| })

///|
/// RsaKeyGenParams dictionary
pub struct RsaKeyGenParams {
  name : String
  modulusLength : Int
  publicExponent : BigInteger
}

/// Create a new RsaKeyGenParams with default values
pub fn RsaKeyGenParams::default() -> RsaKeyGenParams {
  RsaKeyGenParams::{
    name: "",
    modulusLength: 0,
    publicExponent: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn RsaKeyGenParams::to_js(self : RsaKeyGenParams) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   modulusLength: self.modulusLength,
  #|   publicExponent: self.publicExponent
  #| })

///|
/// RsaHashedKeyGenParams dictionary
pub struct RsaHashedKeyGenParams {
  name : String
  modulusLength : Int
  publicExponent : BigInteger
  hash : HashAlgorithmIdentifier
}

/// Create a new RsaHashedKeyGenParams with default values
pub fn RsaHashedKeyGenParams::default() -> RsaHashedKeyGenParams {
  RsaHashedKeyGenParams::{
    name: "",
    modulusLength: 0,
    publicExponent: panic(),
    hash: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn RsaHashedKeyGenParams::to_js(self : RsaHashedKeyGenParams) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   modulusLength: self.modulusLength,
  #|   publicExponent: self.publicExponent,
  #|   hash: self.hash
  #| })

///|
/// RsaKeyAlgorithm dictionary
pub struct RsaKeyAlgorithm {
  name : String
  modulusLength : Int
  publicExponent : BigInteger
}

/// Create a new RsaKeyAlgorithm with default values
pub fn RsaKeyAlgorithm::default() -> RsaKeyAlgorithm {
  RsaKeyAlgorithm::{
    name: "",
    modulusLength: 0,
    publicExponent: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn RsaKeyAlgorithm::to_js(self : RsaKeyAlgorithm) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   modulusLength: self.modulusLength,
  #|   publicExponent: self.publicExponent
  #| })

///|
/// RsaHashedKeyAlgorithm dictionary
pub struct RsaHashedKeyAlgorithm {
  name : String
  modulusLength : Int
  publicExponent : BigInteger
  hash : KeyAlgorithm
}

/// Create a new RsaHashedKeyAlgorithm with default values
pub fn RsaHashedKeyAlgorithm::default() -> RsaHashedKeyAlgorithm {
  RsaHashedKeyAlgorithm::{
    name: "",
    modulusLength: 0,
    publicExponent: panic(),
    hash: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn RsaHashedKeyAlgorithm::to_js(self : RsaHashedKeyAlgorithm) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   modulusLength: self.modulusLength,
  #|   publicExponent: self.publicExponent,
  #|   hash: self.hash
  #| })

///|
/// RsaHashedImportParams dictionary
pub struct RsaHashedImportParams {
  name : String
  hash : HashAlgorithmIdentifier
}

/// Create a new RsaHashedImportParams with default values
pub fn RsaHashedImportParams::default() -> RsaHashedImportParams {
  RsaHashedImportParams::{
    name: "",
    hash: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn RsaHashedImportParams::to_js(self : RsaHashedImportParams) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   hash: self.hash
  #| })

///|
/// RsaPssParams dictionary
pub struct RsaPssParams {
  name : String
  saltLength : Int
}

/// Create a new RsaPssParams with default values
pub fn RsaPssParams::default() -> RsaPssParams {
  RsaPssParams::{
    name: "",
    saltLength: 0,
  }
}

/// Convert to JsValue
pub extern "js" fn RsaPssParams::to_js(self : RsaPssParams) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   saltLength: self.saltLength
  #| })

///|
/// RsaOaepParams dictionary
pub struct RsaOaepParams {
  name : String
  label : BufferSource?
}

/// Create a new RsaOaepParams with default values
pub fn RsaOaepParams::default() -> RsaOaepParams {
  RsaOaepParams::{
    name: "",
    label: None,
  }
}

/// Convert to JsValue
pub extern "js" fn RsaOaepParams::to_js(self : RsaOaepParams) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   label: self.label
  #| })

///|
/// EcdsaParams dictionary
pub struct EcdsaParams {
  name : String
  hash : HashAlgorithmIdentifier
}

/// Create a new EcdsaParams with default values
pub fn EcdsaParams::default() -> EcdsaParams {
  EcdsaParams::{
    name: "",
    hash: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn EcdsaParams::to_js(self : EcdsaParams) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   hash: self.hash
  #| })

///|
/// EcKeyGenParams dictionary
pub struct EcKeyGenParams {
  name : String
  namedCurve : NamedCurve
}

/// Create a new EcKeyGenParams with default values
pub fn EcKeyGenParams::default() -> EcKeyGenParams {
  EcKeyGenParams::{
    name: "",
    namedCurve: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn EcKeyGenParams::to_js(self : EcKeyGenParams) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   namedCurve: self.namedCurve
  #| })

///|
/// EcKeyAlgorithm dictionary
pub struct EcKeyAlgorithm {
  name : String
  namedCurve : NamedCurve
}

/// Create a new EcKeyAlgorithm with default values
pub fn EcKeyAlgorithm::default() -> EcKeyAlgorithm {
  EcKeyAlgorithm::{
    name: "",
    namedCurve: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn EcKeyAlgorithm::to_js(self : EcKeyAlgorithm) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   namedCurve: self.namedCurve
  #| })

///|
/// EcKeyImportParams dictionary
pub struct EcKeyImportParams {
  name : String
  namedCurve : NamedCurve
}

/// Create a new EcKeyImportParams with default values
pub fn EcKeyImportParams::default() -> EcKeyImportParams {
  EcKeyImportParams::{
    name: "",
    namedCurve: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn EcKeyImportParams::to_js(self : EcKeyImportParams) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   namedCurve: self.namedCurve
  #| })

///|
/// EcdhKeyDeriveParams dictionary
pub struct EcdhKeyDeriveParams {
  name : String
  public : CryptoKey
}

/// Create a new EcdhKeyDeriveParams with default values
pub fn EcdhKeyDeriveParams::default() -> EcdhKeyDeriveParams {
  EcdhKeyDeriveParams::{
    name: "",
    public: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn EcdhKeyDeriveParams::to_js(self : EcdhKeyDeriveParams) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   public: self.public
  #| })

///|
/// AesCtrParams dictionary
pub struct AesCtrParams {
  name : String
  counter : BufferSource
  length : Int
}

/// Create a new AesCtrParams with default values
pub fn AesCtrParams::default() -> AesCtrParams {
  AesCtrParams::{
    name: "",
    counter: panic(),
    length: 0,
  }
}

/// Convert to JsValue
pub extern "js" fn AesCtrParams::to_js(self : AesCtrParams) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   counter: self.counter,
  #|   length: self.length
  #| })

///|
/// AesKeyAlgorithm dictionary
pub struct AesKeyAlgorithm {
  name : String
  length : Int
}

/// Create a new AesKeyAlgorithm with default values
pub fn AesKeyAlgorithm::default() -> AesKeyAlgorithm {
  AesKeyAlgorithm::{
    name: "",
    length: 0,
  }
}

/// Convert to JsValue
pub extern "js" fn AesKeyAlgorithm::to_js(self : AesKeyAlgorithm) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   length: self.length
  #| })

///|
/// AesKeyGenParams dictionary
pub struct AesKeyGenParams {
  name : String
  length : Int
}

/// Create a new AesKeyGenParams with default values
pub fn AesKeyGenParams::default() -> AesKeyGenParams {
  AesKeyGenParams::{
    name: "",
    length: 0,
  }
}

/// Convert to JsValue
pub extern "js" fn AesKeyGenParams::to_js(self : AesKeyGenParams) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   length: self.length
  #| })

///|
/// AesDerivedKeyParams dictionary
pub struct AesDerivedKeyParams {
  name : String
  length : Int
}

/// Create a new AesDerivedKeyParams with default values
pub fn AesDerivedKeyParams::default() -> AesDerivedKeyParams {
  AesDerivedKeyParams::{
    name: "",
    length: 0,
  }
}

/// Convert to JsValue
pub extern "js" fn AesDerivedKeyParams::to_js(self : AesDerivedKeyParams) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   length: self.length
  #| })

///|
/// AesCbcParams dictionary
pub struct AesCbcParams {
  name : String
  iv : BufferSource
}

/// Create a new AesCbcParams with default values
pub fn AesCbcParams::default() -> AesCbcParams {
  AesCbcParams::{
    name: "",
    iv: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn AesCbcParams::to_js(self : AesCbcParams) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   iv: self.iv
  #| })

///|
/// AesGcmParams dictionary
pub struct AesGcmParams {
  name : String
  iv : BufferSource
  additionalData : BufferSource?
  tagLength : Int?
}

/// Create a new AesGcmParams with default values
pub fn AesGcmParams::default() -> AesGcmParams {
  AesGcmParams::{
    name: "",
    iv: panic(),
    additionalData: None,
    tagLength: None,
  }
}

/// Convert to JsValue
pub extern "js" fn AesGcmParams::to_js(self : AesGcmParams) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   iv: self.iv,
  #|   additionalData: self.additionalData,
  #|   tagLength: self.tagLength
  #| })

///|
/// HmacImportParams dictionary
pub struct HmacImportParams {
  name : String
  hash : HashAlgorithmIdentifier
  length : Int?
}

/// Create a new HmacImportParams with default values
pub fn HmacImportParams::default() -> HmacImportParams {
  HmacImportParams::{
    name: "",
    hash: panic(),
    length: None,
  }
}

/// Convert to JsValue
pub extern "js" fn HmacImportParams::to_js(self : HmacImportParams) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   hash: self.hash,
  #|   length: self.length
  #| })

///|
/// HmacKeyAlgorithm dictionary
pub struct HmacKeyAlgorithm {
  name : String
  hash : KeyAlgorithm
  length : Int
}

/// Create a new HmacKeyAlgorithm with default values
pub fn HmacKeyAlgorithm::default() -> HmacKeyAlgorithm {
  HmacKeyAlgorithm::{
    name: "",
    hash: panic(),
    length: 0,
  }
}

/// Convert to JsValue
pub extern "js" fn HmacKeyAlgorithm::to_js(self : HmacKeyAlgorithm) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   hash: self.hash,
  #|   length: self.length
  #| })

///|
/// HmacKeyGenParams dictionary
pub struct HmacKeyGenParams {
  name : String
  hash : HashAlgorithmIdentifier
  length : Int?
}

/// Create a new HmacKeyGenParams with default values
pub fn HmacKeyGenParams::default() -> HmacKeyGenParams {
  HmacKeyGenParams::{
    name: "",
    hash: panic(),
    length: None,
  }
}

/// Convert to JsValue
pub extern "js" fn HmacKeyGenParams::to_js(self : HmacKeyGenParams) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   hash: self.hash,
  #|   length: self.length
  #| })

///|
/// HkdfParams dictionary
pub struct HkdfParams {
  name : String
  hash : HashAlgorithmIdentifier
  salt : BufferSource
  info : BufferSource
}

/// Create a new HkdfParams with default values
pub fn HkdfParams::default() -> HkdfParams {
  HkdfParams::{
    name: "",
    hash: panic(),
    salt: panic(),
    info: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn HkdfParams::to_js(self : HkdfParams) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   hash: self.hash,
  #|   salt: self.salt,
  #|   info: self.info
  #| })

///|
/// Pbkdf2Params dictionary
pub struct Pbkdf2Params {
  name : String
  salt : BufferSource
  iterations : Int
  hash : HashAlgorithmIdentifier
}

/// Create a new Pbkdf2Params with default values
pub fn Pbkdf2Params::default() -> Pbkdf2Params {
  Pbkdf2Params::{
    name: "",
    salt: panic(),
    iterations: 0,
    hash: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn Pbkdf2Params::to_js(self : Pbkdf2Params) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   salt: self.salt,
  #|   iterations: self.iterations,
  #|   hash: self.hash
  #| })

///|
/// Crypto interface
pub type Crypto

pub extern "js" fn Crypto::to_js_value(self : Crypto) -> JsValue =
  #| (self) => self

pub extern "js" fn Crypto::get_subtle(self : Crypto) -> SubtleCrypto =
  #| (self) => self.subtle

pub extern "js" fn Crypto::get_random_values(self : Crypto, array : ArrayBufferView) -> ArrayBufferView =
  #| (self, array) => self.getRandomValues(array)

pub extern "js" fn Crypto::random_u_u_i_d(self : Crypto) -> String =
  #| (self) => self.randomUUID()

///|
/// CryptoKey interface
pub type CryptoKey

pub extern "js" fn CryptoKey::to_js_value(self : CryptoKey) -> JsValue =
  #| (self) => self

pub extern "js" fn CryptoKey::get_type(self : CryptoKey) -> KeyType =
  #| (self) => self.type

pub extern "js" fn CryptoKey::get_extractable(self : CryptoKey) -> Bool =
  #| (self) => self.extractable

pub extern "js" fn CryptoKey::get_algorithm(self : CryptoKey) -> JsValue =
  #| (self) => self.algorithm

pub extern "js" fn CryptoKey::get_usages(self : CryptoKey) -> JsValue =
  #| (self) => self.usages

///|
/// SubtleCrypto interface
pub type SubtleCrypto

pub extern "js" fn SubtleCrypto::to_js_value(self : SubtleCrypto) -> JsValue =
  #| (self) => self

pub extern "js" fn SubtleCrypto::encrypt(self : SubtleCrypto, algorithm : AlgorithmIdentifier, key : CryptoKey, data : BufferSource) -> JsValue =
  #| (self, algorithm, key, data) => self.encrypt(algorithm, key, data)

pub extern "js" fn SubtleCrypto::decrypt(self : SubtleCrypto, algorithm : AlgorithmIdentifier, key : CryptoKey, data : BufferSource) -> JsValue =
  #| (self, algorithm, key, data) => self.decrypt(algorithm, key, data)

pub extern "js" fn SubtleCrypto::sign(self : SubtleCrypto, algorithm : AlgorithmIdentifier, key : CryptoKey, data : BufferSource) -> JsValue =
  #| (self, algorithm, key, data) => self.sign(algorithm, key, data)

pub extern "js" fn SubtleCrypto::verify(self : SubtleCrypto, algorithm : AlgorithmIdentifier, key : CryptoKey, signature : BufferSource, data : BufferSource) -> JsValue =
  #| (self, algorithm, key, signature, data) => self.verify(algorithm, key, signature, data)

pub extern "js" fn SubtleCrypto::digest(self : SubtleCrypto, algorithm : AlgorithmIdentifier, data : BufferSource) -> JsValue =
  #| (self, algorithm, data) => self.digest(algorithm, data)

pub extern "js" fn SubtleCrypto::generate_key(self : SubtleCrypto, algorithm : AlgorithmIdentifier, extractable : Bool, key_usages : JsValue) -> JsValue =
  #| (self, algorithm, extractable, key_usages) => self.generateKey(algorithm, extractable, key_usages)

pub extern "js" fn SubtleCrypto::derive_key(self : SubtleCrypto, algorithm : AlgorithmIdentifier, base_key : CryptoKey, derived_key_type : AlgorithmIdentifier, extractable : Bool, key_usages : JsValue) -> JsValue =
  #| (self, algorithm, base_key, derived_key_type, extractable, key_usages) => self.deriveKey(algorithm, base_key, derived_key_type, extractable, key_usages)

pub extern "js" fn SubtleCrypto::derive_bits(self : SubtleCrypto, algorithm : AlgorithmIdentifier, base_key : CryptoKey, length : Int?) -> JsValue =
  #| (self, algorithm, base_key, length) => self.deriveBits(algorithm, base_key, length)

pub extern "js" fn SubtleCrypto::import_key(self : SubtleCrypto, format : KeyFormat, key_data : JsValue, algorithm : AlgorithmIdentifier, extractable : Bool, key_usages : JsValue) -> JsValue =
  #| (self, format, key_data, algorithm, extractable, key_usages) => self.importKey(['raw-public', 'raw-private', 'raw-seed', 'raw-secret', 'raw', 'spki', 'pkcs8', 'jwk'][format], key_data, algorithm, extractable, key_usages)

pub extern "js" fn SubtleCrypto::export_key(self : SubtleCrypto, format : KeyFormat, key : CryptoKey) -> JsValue =
  #| (self, format, key) => self.exportKey(['raw-public', 'raw-private', 'raw-seed', 'raw-secret', 'raw', 'spki', 'pkcs8', 'jwk'][format], key)

pub extern "js" fn SubtleCrypto::wrap_key(self : SubtleCrypto, format : KeyFormat, key : CryptoKey, wrapping_key : CryptoKey, wrap_algorithm : AlgorithmIdentifier) -> JsValue =
  #| (self, format, key, wrapping_key, wrap_algorithm) => self.wrapKey(['raw-public', 'raw-private', 'raw-seed', 'raw-secret', 'raw', 'spki', 'pkcs8', 'jwk'][format], key, wrapping_key, wrap_algorithm)

pub extern "js" fn SubtleCrypto::unwrap_key(self : SubtleCrypto, format : KeyFormat, wrapped_key : BufferSource, unwrapping_key : CryptoKey, unwrap_algorithm : AlgorithmIdentifier, unwrapped_key_algorithm : AlgorithmIdentifier, extractable : Bool, key_usages : JsValue) -> JsValue =
  #| (self, format, wrapped_key, unwrapping_key, unwrap_algorithm, unwrapped_key_algorithm, extractable, key_usages) => self.unwrapKey(['raw-public', 'raw-private', 'raw-seed', 'raw-secret', 'raw', 'spki', 'pkcs8', 'jwk'][format], wrapped_key, unwrapping_key, unwrap_algorithm, unwrapped_key_algorithm, extractable, key_usages)

pub extern "js" fn SubtleCrypto::encapsulate_key(self : SubtleCrypto, encapsulation_algorithm : AlgorithmIdentifier, encapsulation_key : CryptoKey, shared_key_algorithm : AlgorithmIdentifier, extractable : Bool, key_usages : JsValue) -> JsValue =
  #| (self, encapsulation_algorithm, encapsulation_key, shared_key_algorithm, extractable, key_usages) => self.encapsulateKey(encapsulation_algorithm, encapsulation_key, shared_key_algorithm, extractable, key_usages)

pub extern "js" fn SubtleCrypto::encapsulate_bits(self : SubtleCrypto, encapsulation_algorithm : AlgorithmIdentifier, encapsulation_key : CryptoKey) -> JsValue =
  #| (self, encapsulation_algorithm, encapsulation_key) => self.encapsulateBits(encapsulation_algorithm, encapsulation_key)

pub extern "js" fn SubtleCrypto::decapsulate_key(self : SubtleCrypto, decapsulation_algorithm : AlgorithmIdentifier, decapsulation_key : CryptoKey, ciphertext : BufferSource, shared_key_algorithm : AlgorithmIdentifier, extractable : Bool, key_usages : JsValue) -> JsValue =
  #| (self, decapsulation_algorithm, decapsulation_key, ciphertext, shared_key_algorithm, extractable, key_usages) => self.decapsulateKey(decapsulation_algorithm, decapsulation_key, ciphertext, shared_key_algorithm, extractable, key_usages)

pub extern "js" fn SubtleCrypto::decapsulate_bits(self : SubtleCrypto, decapsulation_algorithm : AlgorithmIdentifier, decapsulation_key : CryptoKey, ciphertext : BufferSource) -> JsValue =
  #| (self, decapsulation_algorithm, decapsulation_key, ciphertext) => self.decapsulateBits(decapsulation_algorithm, decapsulation_key, ciphertext)

pub extern "js" fn SubtleCrypto::get_public_key(self : SubtleCrypto, key : CryptoKey, key_usages : JsValue) -> JsValue =
  #| (self, key, key_usages) => self.getPublicKey(key, key_usages)

pub extern "js" fn SubtleCrypto::supports(operation : String, algorithm : AlgorithmIdentifier, length : Int?) -> Bool =
  #| (operation, algorithm, length) => SubtleCrypto.supports(operation, algorithm, length)

