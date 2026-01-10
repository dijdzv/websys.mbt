// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webcrypto-modern-algos

///|
/// KeyFormat enum
pub(all) enum KeyFormat {
  RawPublic
  RawPrivate
  RawSeed
  RawSecret
  Raw
  Spki
  Pkcs8
  Jwk
}

///|
/// Convert to string value
pub fn KeyFormat::to_string(self : KeyFormat) -> String {
  match self {
    KeyFormat::RawPublic => "raw-public"
    KeyFormat::RawPrivate => "raw-private"
    KeyFormat::RawSeed => "raw-seed"
    KeyFormat::RawSecret => "raw-secret"
    KeyFormat::Raw => "raw"
    KeyFormat::Spki => "spki"
    KeyFormat::Pkcs8 => "pkcs8"
    KeyFormat::Jwk => "jwk"
  }
}

///|
/// Parse from string value
pub fn KeyFormat::from_string(s : String) -> KeyFormat? {
  match s {
    "raw-public" => Some(KeyFormat::RawPublic)
    "raw-private" => Some(KeyFormat::RawPrivate)
    "raw-seed" => Some(KeyFormat::RawSeed)
    "raw-secret" => Some(KeyFormat::RawSecret)
    "raw" => Some(KeyFormat::Raw)
    "spki" => Some(KeyFormat::Spki)
    "pkcs8" => Some(KeyFormat::Pkcs8)
    "jwk" => Some(KeyFormat::Jwk)
    _ => None
  }
}

///|
/// KeyUsage enum
pub(all) enum KeyUsage {
  Encrypt
  Decrypt
  Sign
  Verify
  DeriveKey
  DeriveBits
  WrapKey
  UnwrapKey
  EncapsulateKey
  EncapsulateBits
  DecapsulateKey
  DecapsulateBits
}

///|
/// Convert to string value
pub fn KeyUsage::to_string(self : KeyUsage) -> String {
  match self {
    KeyUsage::Encrypt => "encrypt"
    KeyUsage::Decrypt => "decrypt"
    KeyUsage::Sign => "sign"
    KeyUsage::Verify => "verify"
    KeyUsage::DeriveKey => "deriveKey"
    KeyUsage::DeriveBits => "deriveBits"
    KeyUsage::WrapKey => "wrapKey"
    KeyUsage::UnwrapKey => "unwrapKey"
    KeyUsage::EncapsulateKey => "encapsulateKey"
    KeyUsage::EncapsulateBits => "encapsulateBits"
    KeyUsage::DecapsulateKey => "decapsulateKey"
    KeyUsage::DecapsulateBits => "decapsulateBits"
  }
}

///|
/// Parse from string value
pub fn KeyUsage::from_string(s : String) -> KeyUsage? {
  match s {
    "encrypt" => Some(KeyUsage::Encrypt)
    "decrypt" => Some(KeyUsage::Decrypt)
    "sign" => Some(KeyUsage::Sign)
    "verify" => Some(KeyUsage::Verify)
    "deriveKey" => Some(KeyUsage::DeriveKey)
    "deriveBits" => Some(KeyUsage::DeriveBits)
    "wrapKey" => Some(KeyUsage::WrapKey)
    "unwrapKey" => Some(KeyUsage::UnwrapKey)
    "encapsulateKey" => Some(KeyUsage::EncapsulateKey)
    "encapsulateBits" => Some(KeyUsage::EncapsulateBits)
    "decapsulateKey" => Some(KeyUsage::DecapsulateKey)
    "decapsulateBits" => Some(KeyUsage::DecapsulateBits)
    _ => None
  }
}

///|
/// EncapsulatedKey dictionary
pub struct EncapsulatedKey {
  sharedKey : CryptoKey?
  ciphertext : ArrayBuffer?
}

///|
/// Create a new EncapsulatedKey with default values
pub fn EncapsulatedKey::default() -> EncapsulatedKey {
  EncapsulatedKey::{ sharedKey: None, ciphertext: None }
}

///|
/// Convert to JsValue
pub extern "js" fn EncapsulatedKey::to_js(self : EncapsulatedKey) -> JsValue =
  #| (self) => ({
  #|   sharedKey: self.sharedKey,
  #|   ciphertext: self.ciphertext
  #| })

///|
/// EncapsulatedBits dictionary
pub struct EncapsulatedBits {
  sharedKey : ArrayBuffer?
  ciphertext : ArrayBuffer?
}

///|
/// Create a new EncapsulatedBits with default values
pub fn EncapsulatedBits::default() -> EncapsulatedBits {
  EncapsulatedBits::{ sharedKey: None, ciphertext: None }
}

///|
/// Convert to JsValue
pub extern "js" fn EncapsulatedBits::to_js(self : EncapsulatedBits) -> JsValue =
  #| (self) => ({
  #|   sharedKey: self.sharedKey,
  #|   ciphertext: self.ciphertext
  #| })

///|
/// JsonWebKey dictionary
pub struct JsonWebKey {
  pub_ : String?
  priv_ : String?
  kty : String?
  use_ : String?
  key_ops : Array[String]?
  alg : String?
  ext : Bool?
  crv : String?
  x : String?
  y : String?
  d : String?
  n : String?
  e : String?
  p : String?
  q : String?
  dp : String?
  dq : String?
  qi : String?
  oth : Array[RsaOtherPrimesInfo]?
  k : String?
}

///|
/// Create a new JsonWebKey with default values
pub fn JsonWebKey::default() -> JsonWebKey {
  JsonWebKey::{
    pub_: None,
    priv_: None,
    kty: None,
    use_: None,
    key_ops: None,
    alg: None,
    ext: None,
    crv: None,
    x: None,
    y: None,
    d: None,
    n: None,
    e: None,
    p: None,
    q: None,
    dp: None,
    dq: None,
    qi: None,
    oth: None,
    k: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn JsonWebKey::to_js(self : JsonWebKey) -> JsValue =
  #| (self) => ({
  #|   pub: self.pub_,
  #|   priv: self.priv_,
  #|   kty: self.kty,
  #|   use: self.use_,
  #|   key_ops: self.key_ops,
  #|   alg: self.alg,
  #|   ext: self.ext,
  #|   crv: self.crv,
  #|   x: self.x,
  #|   y: self.y,
  #|   d: self.d,
  #|   n: self.n,
  #|   e: self.e,
  #|   p: self.p,
  #|   q: self.q,
  #|   dp: self.dp,
  #|   dq: self.dq,
  #|   qi: self.qi,
  #|   oth: self.oth,
  #|   k: self.k
  #| })

///|
/// ContextParams dictionary
pub struct ContextParams {
  context : BufferSource?
}

///|
/// Create a new ContextParams with default values
pub fn ContextParams::default() -> ContextParams {
  ContextParams::{ context: None }
}

///|
/// Convert to JsValue
pub extern "js" fn ContextParams::to_js(self : ContextParams) -> JsValue =
  #| (self) => ({
  #|   context: self.context.to_js_value()
  #| })

///|
/// AeadParams dictionary
pub struct AeadParams {
  iv : BufferSource
  additionalData : BufferSource?
  tagLength : Int?
}

///|
/// Create a new AeadParams with default values
pub fn AeadParams::default() -> AeadParams {
  AeadParams::{ iv: panic(), additionalData: None, tagLength: None }
}

///|
/// Convert to JsValue
pub extern "js" fn AeadParams::to_js(self : AeadParams) -> JsValue =
  #| (self) => ({
  #|   iv: self.iv.to_js_value(),
  #|   additionalData: self.additionalData.to_js_value(),
  #|   tagLength: self.tagLength
  #| })

///|
/// CShakeParams dictionary
pub struct CShakeParams {
  length : Int
  functionName : BufferSource?
  customization : BufferSource?
}

///|
/// Create a new CShakeParams with default values
pub fn CShakeParams::default() -> CShakeParams {
  CShakeParams::{ length: 0, functionName: None, customization: None }
}

///|
/// Convert to JsValue
pub extern "js" fn CShakeParams::to_js(self : CShakeParams) -> JsValue =
  #| (self) => ({
  #|   length: self.length,
  #|   functionName: self.functionName.to_js_value(),
  #|   customization: self.customization.to_js_value()
  #| })

///|
/// KmacKeyGenParams dictionary
pub struct KmacKeyGenParams {
  length : Int?
}

///|
/// Create a new KmacKeyGenParams with default values
pub fn KmacKeyGenParams::default() -> KmacKeyGenParams {
  KmacKeyGenParams::{ length: None }
}

///|
/// Convert to JsValue
pub extern "js" fn KmacKeyGenParams::to_js(self : KmacKeyGenParams) -> JsValue =
  #| (self) => ({
  #|   length: self.length
  #| })

///|
/// KmacImportParams dictionary
pub struct KmacImportParams {
  length : Int?
}

///|
/// Create a new KmacImportParams with default values
pub fn KmacImportParams::default() -> KmacImportParams {
  KmacImportParams::{ length: None }
}

///|
/// Convert to JsValue
pub extern "js" fn KmacImportParams::to_js(self : KmacImportParams) -> JsValue =
  #| (self) => ({
  #|   length: self.length
  #| })

///|
/// KmacKeyAlgorithm dictionary
pub struct KmacKeyAlgorithm {
  length : Int
}

///|
/// Create a new KmacKeyAlgorithm with default values
pub fn KmacKeyAlgorithm::default() -> KmacKeyAlgorithm {
  KmacKeyAlgorithm::{ length: 0 }
}

///|
/// Convert to JsValue
pub extern "js" fn KmacKeyAlgorithm::to_js(self : KmacKeyAlgorithm) -> JsValue =
  #| (self) => ({
  #|   length: self.length
  #| })

///|
/// KmacParams dictionary
pub struct KmacParams {
  length : Int
  customization : BufferSource?
}

///|
/// Create a new KmacParams with default values
pub fn KmacParams::default() -> KmacParams {
  KmacParams::{ length: 0, customization: None }
}

///|
/// Convert to JsValue
pub extern "js" fn KmacParams::to_js(self : KmacParams) -> JsValue =
  #| (self) => ({
  #|   length: self.length,
  #|   customization: self.customization.to_js_value()
  #| })

///|
/// Argon2Params dictionary
pub struct Argon2Params {
  nonce : BufferSource
  parallelism : Int
  memory : Int
  passes : Int
  version : Int?
  secretValue : BufferSource?
  associatedData : BufferSource?
}

///|
/// Create a new Argon2Params with default values
pub fn Argon2Params::default() -> Argon2Params {
  Argon2Params::{
    nonce: panic(),
    parallelism: 0,
    memory: 0,
    passes: 0,
    version: None,
    secretValue: None,
    associatedData: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn Argon2Params::to_js(self : Argon2Params) -> JsValue =
  #| (self) => ({
  #|   nonce: self.nonce.to_js_value(),
  #|   parallelism: self.parallelism,
  #|   memory: self.memory,
  #|   passes: self.passes,
  #|   version: self.version,
  #|   secretValue: self.secretValue.to_js_value(),
  #|   associatedData: self.associatedData.to_js_value()
  #| })
