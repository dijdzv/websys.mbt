// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/permissions-policy

///|
/// PermissionsPolicyViolationReportBody dictionary
pub struct PermissionsPolicyViolationReportBody {
  featureId : String?
  sourceFile : String??
  lineNumber : Int??
  columnNumber : Int??
  disposition : String?
  allowAttribute : String??
  srcAttribute : String??
}

/// Create a new PermissionsPolicyViolationReportBody with default values
pub fn PermissionsPolicyViolationReportBody::default() -> PermissionsPolicyViolationReportBody {
  PermissionsPolicyViolationReportBody::{
    featureId: None,
    sourceFile: None,
    lineNumber: None,
    columnNumber: None,
    disposition: None,
    allowAttribute: None,
    srcAttribute: None,
  }
}

/// Convert to JsValue
pub extern "js" fn PermissionsPolicyViolationReportBody::to_js(self : PermissionsPolicyViolationReportBody) -> JsValue =
  #| (self) => ({
  #|   featureId: self.featureId,
  #|   sourceFile: self.sourceFile,
  #|   lineNumber: self.lineNumber,
  #|   columnNumber: self.columnNumber,
  #|   disposition: self.disposition,
  #|   allowAttribute: self.allowAttribute,
  #|   srcAttribute: self.srcAttribute
  #| })

///|
/// PermissionsPolicy interface
pub type PermissionsPolicy

pub extern "js" fn PermissionsPolicy::to_js_value(self : PermissionsPolicy) -> JsValue =
  #| (self) => self

pub extern "js" fn PermissionsPolicy::allows_feature(self : PermissionsPolicy, feature : String, origin : String) -> Bool =
  #| (self, feature, origin) => self.allowsFeature(feature, origin)

pub extern "js" fn PermissionsPolicy::features(self : PermissionsPolicy) -> JsValue =
  #| (self) => self.features()

pub extern "js" fn PermissionsPolicy::allowed_features(self : PermissionsPolicy) -> JsValue =
  #| (self) => self.allowedFeatures()

pub extern "js" fn PermissionsPolicy::get_allowlist_for_feature(self : PermissionsPolicy, feature : String) -> JsValue =
  #| (self, feature) => self.getAllowlistForFeature(feature)

