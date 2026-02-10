// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/permissions-policy

///|
/// PermissionsPolicyViolationReportBody dictionary
pub(all) struct PermissionsPolicyViolationReportBody {
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
extern "js" fn PermissionsPolicyViolationReportBody::to_js_ffi(
  self : PermissionsPolicyViolationReportBody,
) -> JsValue =
  #| (self) => ({
  #|   featureId: self.featureId,
  #|   sourceFile: ((() => { const v = self.sourceFile; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   lineNumber: ((() => { const v = self.lineNumber; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   columnNumber: ((() => { const v = self.columnNumber; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   disposition: self.disposition,
  #|   allowAttribute: ((() => { const v = self.allowAttribute; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   srcAttribute: ((() => { const v = self.srcAttribute; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn PermissionsPolicyViolationReportBody::to_js(
  self : PermissionsPolicyViolationReportBody,
) -> JsValue {
  PermissionsPolicyViolationReportBody::to_js_ffi(self)
}

///|
extern "js" fn PermissionsPolicyViolationReportBody::from_js_ffi(
  value : JsValue,
) -> PermissionsPolicyViolationReportBody =
  #| (v) => ({
  #|   featureId: v.featureId,
  #|   sourceFile: (v.sourceFile === undefined ? { $tag: 0 } : v.sourceFile === null ? { $tag: 1 } : { $tag: 2, _0: v.sourceFile }),
  #|   lineNumber: (v.lineNumber === undefined ? { $tag: 0 } : v.lineNumber === null ? { $tag: 1 } : { $tag: 2, _0: v.lineNumber }),
  #|   columnNumber: (v.columnNumber === undefined ? { $tag: 0 } : v.columnNumber === null ? { $tag: 1 } : { $tag: 2, _0: v.columnNumber }),
  #|   disposition: v.disposition,
  #|   allowAttribute: (v.allowAttribute === undefined ? { $tag: 0 } : v.allowAttribute === null ? { $tag: 1 } : { $tag: 2, _0: v.allowAttribute }),
  #|   srcAttribute: (v.srcAttribute === undefined ? { $tag: 0 } : v.srcAttribute === null ? { $tag: 1 } : { $tag: 2, _0: v.srcAttribute })
  #| })

///|
/// Convert from JsValue
pub fn PermissionsPolicyViolationReportBody::from_js(
  value : JsValue,
) -> PermissionsPolicyViolationReportBody {
  PermissionsPolicyViolationReportBody::from_js_ffi(value)
}

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
