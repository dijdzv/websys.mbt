// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/permissions-policy

///|
/// PermissionsPolicyViolationReportBody dictionary
pub struct PermissionsPolicyViolationReportBody {
  featureId : String?
  sourceFile : Nullable[String]
  lineNumber : Nullable[Int]
  columnNumber : Nullable[Int]
  disposition : String?
  allowAttribute : Nullable[String]
  srcAttribute : Nullable[String]
}

///|
/// Create a new PermissionsPolicyViolationReportBody with default values
pub fn PermissionsPolicyViolationReportBody::default() -> PermissionsPolicyViolationReportBody {
  PermissionsPolicyViolationReportBody::{
    featureId: None,
    sourceFile: Nullable::Undefined,
    lineNumber: Nullable::Undefined,
    columnNumber: Nullable::Undefined,
    disposition: None,
    allowAttribute: Nullable::Undefined,
    srcAttribute: Nullable::Undefined,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn PermissionsPolicyViolationReportBody::to_js(
  self : PermissionsPolicyViolationReportBody,
) -> JsValue =
  #| (self) => ({
  #|   featureId: self.featureId,
  #|   sourceFile: ((() => { const v = self.sourceFile; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   lineNumber: ((() => { const v = self.lineNumber; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   columnNumber: ((() => { const v = self.columnNumber; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   disposition: self.disposition,
  #|   allowAttribute: ((() => { const v = self.allowAttribute; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   srcAttribute: ((() => { const v = self.srcAttribute; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// PermissionsPolicy interface
pub type PermissionsPolicy

///|
pub extern "js" fn PermissionsPolicy::to_js_value(
  self : PermissionsPolicy,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PermissionsPolicy (unchecked)
pub extern "js" fn PermissionsPolicy::from_js_value(
  v : JsValue,
) -> PermissionsPolicy =
  #| (v) => v

///|
/// Safely cast JsValue to PermissionsPolicy (checked with instanceof)
pub extern "js" fn PermissionsPolicy::from_js_value_opt(
  v : JsValue,
) -> PermissionsPolicy? =
  #| (v) => (v instanceof PermissionsPolicy) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PermissionsPolicy (checked with instanceof)
pub extern "js" fn JsValue::as_permissions_policy(
  self : JsValue,
) -> PermissionsPolicy? =
  #| (self) => (self instanceof PermissionsPolicy) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PermissionsPolicy (unchecked)
pub extern "js" fn JsValue::to_permissions_policy(
  self : JsValue,
) -> PermissionsPolicy =
  #| (self) => self

///|
pub extern "js" fn PermissionsPolicy::allows_feature(
  self : PermissionsPolicy,
  feature : String,
) -> Bool =
  #| (self, feature) => self.allowsFeature(feature)

///|
pub extern "js" fn PermissionsPolicy::allows_feature_with_origin(
  self : PermissionsPolicy,
  feature : String,
  origin : String,
) -> Bool =
  #| (self, feature, origin) => self.allowsFeature(feature, origin)

///|
pub extern "js" fn PermissionsPolicy::features(
  self : PermissionsPolicy,
) -> Array[String] =
  #| (self) => self.features()

///|
pub extern "js" fn PermissionsPolicy::allowed_features(
  self : PermissionsPolicy,
) -> Array[String] =
  #| (self) => self.allowedFeatures()

///|
pub extern "js" fn PermissionsPolicy::get_allowlist_for_feature(
  self : PermissionsPolicy,
  feature : String,
) -> Array[String] =
  #| (self, feature) => self.getAllowlistForFeature(feature)
