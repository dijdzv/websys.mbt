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
} derive(Eq, Show)

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
} derive(Eq, Show)

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
pub(all) struct EncapsulatedKey {
  sharedKey : CryptoKey?
  ciphertext : ArrayBuffer?
}

///|
/// Create a new EncapsulatedKey with default values
pub fn EncapsulatedKey::default() -> EncapsulatedKey {
  EncapsulatedKey::{ sharedKey: None, ciphertext: None }
}

///|
extern "js" fn EncapsulatedKey::to_js_ffi(self : EncapsulatedKey) -> JsValue =
  #| (self) => ({
  #|   sharedKey: ((() => { const v = self.sharedKey; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   ciphertext: ((() => { const v = self.ciphertext; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn EncapsulatedKey::to_js(self : EncapsulatedKey) -> JsValue {
  EncapsulatedKey::to_js_ffi(self)
}

///|
extern "js" fn EncapsulatedKey::from_js_ffi(value : JsValue) -> EncapsulatedKey =
  #| (v) => ({
  #|   sharedKey: (v.sharedKey === undefined ? { $tag: 0 } : { $tag: 1, _0: v.sharedKey }),
  #|   ciphertext: (v.ciphertext === undefined ? { $tag: 0 } : { $tag: 1, _0: v.ciphertext })
  #| })

///|
/// Convert from JsValue
pub fn EncapsulatedKey::from_js(value : JsValue) -> EncapsulatedKey {
  EncapsulatedKey::from_js_ffi(value)
}

///|
/// EncapsulatedBits dictionary
pub(all) struct EncapsulatedBits {
  sharedKey : ArrayBuffer?
  ciphertext : ArrayBuffer?
}

///|
/// Create a new EncapsulatedBits with default values
pub fn EncapsulatedBits::default() -> EncapsulatedBits {
  EncapsulatedBits::{ sharedKey: None, ciphertext: None }
}

///|
extern "js" fn EncapsulatedBits::to_js_ffi(self : EncapsulatedBits) -> JsValue =
  #| (self) => ({
  #|   sharedKey: ((() => { const v = self.sharedKey; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   ciphertext: ((() => { const v = self.ciphertext; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn EncapsulatedBits::to_js(self : EncapsulatedBits) -> JsValue {
  EncapsulatedBits::to_js_ffi(self)
}

///|
extern "js" fn EncapsulatedBits::from_js_ffi(
  value : JsValue,
) -> EncapsulatedBits =
  #| (v) => ({
  #|   sharedKey: (v.sharedKey === undefined ? { $tag: 0 } : { $tag: 1, _0: v.sharedKey }),
  #|   ciphertext: (v.ciphertext === undefined ? { $tag: 0 } : { $tag: 1, _0: v.ciphertext })
  #| })

///|
/// Convert from JsValue
pub fn EncapsulatedBits::from_js(value : JsValue) -> EncapsulatedBits {
  EncapsulatedBits::from_js_ffi(value)
}

///|
/// JsonWebKey dictionary
pub(all) struct JsonWebKey {
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
extern "js" fn JsonWebKey::to_js_ffi(self : JsonWebKey) -> JsValue =
  #| (self) => ({
  #|   pub: self.pub_,
  #|   priv: self.priv_,
  #|   kty: self.kty,
  #|   use: self.use_,
  #|   key_ops: ((() => { const v = self.key_ops; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   alg: self.alg,
  #|   ext: (self.ext === -1 ? undefined : self.ext),
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
  #|   oth: ((() => { const v = self.oth; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   k: self.k
  #| })

///|
/// Convert to JsValue
pub fn JsonWebKey::to_js(self : JsonWebKey) -> JsValue {
  JsonWebKey::to_js_ffi(self)
}

///|
extern "js" fn JsonWebKey::from_js_ffi(value : JsValue) -> JsonWebKey =
  #| (v) => ({
  #|   pub_: v.pub,
  #|   priv_: v.priv,
  #|   kty: v.kty,
  #|   use_: v.use,
  #|   key_ops: (v.key_ops === undefined ? { $tag: 0 } : { $tag: 1, _0: v.key_ops }),
  #|   alg: v.alg,
  #|   ext: (v.ext === undefined ? -1 : v.ext),
  #|   crv: v.crv,
  #|   x: v.x,
  #|   y: v.y,
  #|   d: v.d,
  #|   n: v.n,
  #|   e: v.e,
  #|   p: v.p,
  #|   q: v.q,
  #|   dp: v.dp,
  #|   dq: v.dq,
  #|   qi: v.qi,
  #|   oth: (v.oth === undefined ? { $tag: 0 } : { $tag: 1, _0: v.oth }),
  #|   k: v.k
  #| })

///|
/// Convert from JsValue
pub fn JsonWebKey::from_js(value : JsValue) -> JsonWebKey {
  JsonWebKey::from_js_ffi(value)
}

///|
/// ContextParams dictionary
pub(all) struct ContextParams {
  context : BufferSource?
}

///|
/// Create a new ContextParams with default values
pub fn ContextParams::default() -> ContextParams {
  ContextParams::{ context: None }
}

///|
extern "js" fn ContextParams::to_js_ffi(self : ContextParams) -> JsValue =
  #| (self) => ({
  #|   context: ((() => { const v = self.context; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })())
  #| })

///|
/// Convert to JsValue
pub fn ContextParams::to_js(self : ContextParams) -> JsValue {
  ContextParams::to_js_ffi(self)
}

///|
extern "js" fn ContextParams::from_js_ffi(value : JsValue) -> ContextParams =
  #| (v) => ({
  #|   context: (v.context === undefined ? { $tag: 0 } : { $tag: 1, _0: v.context })
  #| })

///|
/// Convert from JsValue
pub fn ContextParams::from_js(value : JsValue) -> ContextParams {
  ContextParams::from_js_ffi(value)
}

///|
/// AeadParams dictionary
pub(all) struct AeadParams {
  iv : BufferSource
  additionalData : BufferSource?
  tagLength : Int?
}

///|
/// Create a new AeadParams
pub fn AeadParams::new(iv~ : BufferSource) -> AeadParams {
  AeadParams::{ iv, additionalData: None, tagLength: None }
}

///|
extern "js" fn AeadParams::to_js_ffi(self : AeadParams) -> JsValue =
  #| (self) => ({
  #|   iv: self.iv.to_js_value(),
  #|   additionalData: ((() => { const v = self.additionalData; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   tagLength: self.tagLength
  #| })

///|
/// Convert to JsValue
pub fn AeadParams::to_js(self : AeadParams) -> JsValue {
  AeadParams::to_js_ffi(self)
}

///|
extern "js" fn AeadParams::from_js_ffi(value : JsValue) -> AeadParams =
  #| (v) => ({
  #|   iv: v.iv,
  #|   additionalData: (v.additionalData === undefined ? { $tag: 0 } : { $tag: 1, _0: v.additionalData }),
  #|   tagLength: v.tagLength
  #| })

///|
/// Convert from JsValue
pub fn AeadParams::from_js(value : JsValue) -> AeadParams {
  AeadParams::from_js_ffi(value)
}

///|
/// CShakeParams dictionary
pub(all) struct CShakeParams {
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
extern "js" fn CShakeParams::to_js_ffi(self : CShakeParams) -> JsValue =
  #| (self) => ({
  #|   length: self.length,
  #|   functionName: ((() => { const v = self.functionName; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   customization: ((() => { const v = self.customization; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })())
  #| })

///|
/// Convert to JsValue
pub fn CShakeParams::to_js(self : CShakeParams) -> JsValue {
  CShakeParams::to_js_ffi(self)
}

///|
extern "js" fn CShakeParams::from_js_ffi(value : JsValue) -> CShakeParams =
  #| (v) => ({
  #|   length: v.length,
  #|   functionName: (v.functionName === undefined ? { $tag: 0 } : { $tag: 1, _0: v.functionName }),
  #|   customization: (v.customization === undefined ? { $tag: 0 } : { $tag: 1, _0: v.customization })
  #| })

///|
/// Convert from JsValue
pub fn CShakeParams::from_js(value : JsValue) -> CShakeParams {
  CShakeParams::from_js_ffi(value)
}

///|
/// KmacKeyGenParams dictionary
pub(all) struct KmacKeyGenParams {
  length : Int?
}

///|
/// Create a new KmacKeyGenParams with default values
pub fn KmacKeyGenParams::default() -> KmacKeyGenParams {
  KmacKeyGenParams::{ length: None }
}

///|
extern "js" fn KmacKeyGenParams::to_js_ffi(self : KmacKeyGenParams) -> JsValue =
  #| (self) => ({
  #|   length: self.length
  #| })

///|
/// Convert to JsValue
pub fn KmacKeyGenParams::to_js(self : KmacKeyGenParams) -> JsValue {
  KmacKeyGenParams::to_js_ffi(self)
}

///|
extern "js" fn KmacKeyGenParams::from_js_ffi(
  value : JsValue,
) -> KmacKeyGenParams =
  #| (v) => ({
  #|   length: v.length
  #| })

///|
/// Convert from JsValue
pub fn KmacKeyGenParams::from_js(value : JsValue) -> KmacKeyGenParams {
  KmacKeyGenParams::from_js_ffi(value)
}

///|
/// KmacImportParams dictionary
pub(all) struct KmacImportParams {
  length : Int?
}

///|
/// Create a new KmacImportParams with default values
pub fn KmacImportParams::default() -> KmacImportParams {
  KmacImportParams::{ length: None }
}

///|
extern "js" fn KmacImportParams::to_js_ffi(self : KmacImportParams) -> JsValue =
  #| (self) => ({
  #|   length: self.length
  #| })

///|
/// Convert to JsValue
pub fn KmacImportParams::to_js(self : KmacImportParams) -> JsValue {
  KmacImportParams::to_js_ffi(self)
}

///|
extern "js" fn KmacImportParams::from_js_ffi(
  value : JsValue,
) -> KmacImportParams =
  #| (v) => ({
  #|   length: v.length
  #| })

///|
/// Convert from JsValue
pub fn KmacImportParams::from_js(value : JsValue) -> KmacImportParams {
  KmacImportParams::from_js_ffi(value)
}

///|
/// KmacKeyAlgorithm dictionary
pub(all) struct KmacKeyAlgorithm {
  length : Int
}

///|
/// Create a new KmacKeyAlgorithm with default values
pub fn KmacKeyAlgorithm::default() -> KmacKeyAlgorithm {
  KmacKeyAlgorithm::{ length: 0 }
}

///|
extern "js" fn KmacKeyAlgorithm::to_js_ffi(self : KmacKeyAlgorithm) -> JsValue =
  #| (self) => ({
  #|   length: self.length
  #| })

///|
/// Convert to JsValue
pub fn KmacKeyAlgorithm::to_js(self : KmacKeyAlgorithm) -> JsValue {
  KmacKeyAlgorithm::to_js_ffi(self)
}

///|
extern "js" fn KmacKeyAlgorithm::from_js_ffi(
  value : JsValue,
) -> KmacKeyAlgorithm =
  #| (v) => ({
  #|   length: v.length
  #| })

///|
/// Convert from JsValue
pub fn KmacKeyAlgorithm::from_js(value : JsValue) -> KmacKeyAlgorithm {
  KmacKeyAlgorithm::from_js_ffi(value)
}

///|
/// KmacParams dictionary
pub(all) struct KmacParams {
  length : Int
  customization : BufferSource?
}

///|
/// Create a new KmacParams with default values
pub fn KmacParams::default() -> KmacParams {
  KmacParams::{ length: 0, customization: None }
}

///|
extern "js" fn KmacParams::to_js_ffi(self : KmacParams) -> JsValue =
  #| (self) => ({
  #|   length: self.length,
  #|   customization: ((() => { const v = self.customization; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })())
  #| })

///|
/// Convert to JsValue
pub fn KmacParams::to_js(self : KmacParams) -> JsValue {
  KmacParams::to_js_ffi(self)
}

///|
extern "js" fn KmacParams::from_js_ffi(value : JsValue) -> KmacParams =
  #| (v) => ({
  #|   length: v.length,
  #|   customization: (v.customization === undefined ? { $tag: 0 } : { $tag: 1, _0: v.customization })
  #| })

///|
/// Convert from JsValue
pub fn KmacParams::from_js(value : JsValue) -> KmacParams {
  KmacParams::from_js_ffi(value)
}

///|
/// Argon2Params dictionary
pub(all) struct Argon2Params {
  nonce : BufferSource
  parallelism : Int
  memory : Int
  passes : Int
  version : Int?
  secretValue : BufferSource?
  associatedData : BufferSource?
}

///|
/// Create a new Argon2Params
pub fn Argon2Params::new(nonce~ : BufferSource) -> Argon2Params {
  Argon2Params::{
    nonce,
    parallelism: 0,
    memory: 0,
    passes: 0,
    version: None,
    secretValue: None,
    associatedData: None,
  }
}

///|
extern "js" fn Argon2Params::to_js_ffi(self : Argon2Params) -> JsValue =
  #| (self) => ({
  #|   nonce: self.nonce.to_js_value(),
  #|   parallelism: self.parallelism,
  #|   memory: self.memory,
  #|   passes: self.passes,
  #|   version: self.version,
  #|   secretValue: ((() => { const v = self.secretValue; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   associatedData: ((() => { const v = self.associatedData; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })())
  #| })

///|
/// Convert to JsValue
pub fn Argon2Params::to_js(self : Argon2Params) -> JsValue {
  Argon2Params::to_js_ffi(self)
}

///|
extern "js" fn Argon2Params::from_js_ffi(value : JsValue) -> Argon2Params =
  #| (v) => ({
  #|   nonce: v.nonce,
  #|   parallelism: v.parallelism,
  #|   memory: v.memory,
  #|   passes: v.passes,
  #|   version: v.version,
  #|   secretValue: (v.secretValue === undefined ? { $tag: 0 } : { $tag: 1, _0: v.secretValue }),
  #|   associatedData: (v.associatedData === undefined ? { $tag: 0 } : { $tag: 1, _0: v.associatedData })
  #| })

///|
/// Convert from JsValue
pub fn Argon2Params::from_js(value : JsValue) -> Argon2Params {
  Argon2Params::from_js_ffi(value)
}
