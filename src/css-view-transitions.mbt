// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-view-transitions

///|
/// ViewTransitionUpdateCallback callback interface
pub type ViewTransitionUpdateCallback

///|
/// StartViewTransitionOptions dictionary
pub struct StartViewTransitionOptions {
  update : Nullable[ViewTransitionUpdateCallback]
  types : Array[String]?
}

///|
/// Create a new StartViewTransitionOptions with default values
pub fn StartViewTransitionOptions::default() -> StartViewTransitionOptions {
  StartViewTransitionOptions::{ update: Nullable::Undefined, types: None }
}

///|
/// Convert to JsValue
pub extern "js" fn StartViewTransitionOptions::to_js(
  self : StartViewTransitionOptions,
) -> JsValue =
  #| (self) => ({
  #|   update: ((() => { const v = self.update; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   types: self.types
  #| })

///|
/// ViewTransition interface
pub type ViewTransition

///|
pub extern "js" fn ViewTransition::to_js_value(
  self : ViewTransition,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ViewTransition (unchecked)
pub extern "js" fn ViewTransition::from_js_value(v : JsValue) -> ViewTransition =
  #| (v) => v

///|
/// Safely cast JsValue to ViewTransition (checked with instanceof)
pub extern "js" fn ViewTransition::from_js_value_opt(
  v : JsValue,
) -> ViewTransition? =
  #| (v) => (v instanceof ViewTransition) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ViewTransition (checked with instanceof)
pub extern "js" fn JsValue::as_view_transition(
  self : JsValue,
) -> ViewTransition? =
  #| (self) => (self instanceof ViewTransition) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ViewTransition (unchecked)
pub extern "js" fn JsValue::to_view_transition(
  self : JsValue,
) -> ViewTransition =
  #| (self) => self

///|
pub extern "js" fn ViewTransition::get_update_callback_done(
  self : ViewTransition,
) -> Promise[Unit] =
  #| (self) => self.updateCallbackDone

///|
pub extern "js" fn ViewTransition::get_ready(
  self : ViewTransition,
) -> Promise[Unit] =
  #| (self) => self.ready

///|
pub extern "js" fn ViewTransition::get_finished(
  self : ViewTransition,
) -> Promise[Unit] =
  #| (self) => self.finished

///|
pub extern "js" fn ViewTransition::skip_transition(
  self : ViewTransition,
) -> Unit =
  #| (self) => self.skipTransition()

///|
pub extern "js" fn ViewTransition::get_types(
  self : ViewTransition,
) -> ViewTransitionTypeSet =
  #| (self) => self.types

///|
pub extern "js" fn ViewTransition::set_types(
  self : ViewTransition,
  value : ViewTransitionTypeSet,
) -> Unit =
  #| (self, value) => { self.types = value }

///|
pub extern "js" fn ViewTransition::get_transition_root(
  self : ViewTransition,
) -> Element =
  #| (self) => self.transitionRoot

///|
pub extern "js" fn ViewTransition::wait_until(
  self : ViewTransition,
  promise : Promise[JsValue],
) -> Unit =
  #| (self, promise) => self.waitUntil(promise)

///|
/// ViewTransitionTypeSet interface
pub type ViewTransitionTypeSet

///|
pub extern "js" fn ViewTransitionTypeSet::to_js_value(
  self : ViewTransitionTypeSet,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ViewTransitionTypeSet (unchecked)
pub extern "js" fn ViewTransitionTypeSet::from_js_value(
  v : JsValue,
) -> ViewTransitionTypeSet =
  #| (v) => v

///|
/// Safely cast JsValue to ViewTransitionTypeSet (checked with instanceof)
pub extern "js" fn ViewTransitionTypeSet::from_js_value_opt(
  v : JsValue,
) -> ViewTransitionTypeSet? =
  #| (v) => (v instanceof ViewTransitionTypeSet) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ViewTransitionTypeSet (checked with instanceof)
pub extern "js" fn JsValue::as_view_transition_type_set(
  self : JsValue,
) -> ViewTransitionTypeSet? =
  #| (self) => (self instanceof ViewTransitionTypeSet) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ViewTransitionTypeSet (unchecked)
pub extern "js" fn JsValue::to_view_transition_type_set(
  self : JsValue,
) -> ViewTransitionTypeSet =
  #| (self) => self

///|
pub extern "js" fn ViewTransitionTypeSet::has(
  self : ViewTransitionTypeSet,
  value : String,
) -> Bool =
  #| (self, value) => self.has(value)

///|
pub extern "js" fn ViewTransitionTypeSet::add(
  self : ViewTransitionTypeSet,
  value : String,
) -> Unit =
  #| (self, value) => { self.add(value) }

///|
pub extern "js" fn ViewTransitionTypeSet::delete(
  self : ViewTransitionTypeSet,
  value : String,
) -> Bool =
  #| (self, value) => self.delete(value)

///|
pub extern "js" fn ViewTransitionTypeSet::clear(
  self : ViewTransitionTypeSet,
) -> Unit =
  #| (self) => { self.clear() }

///|
/// CSSViewTransitionRule interface
pub type CSSViewTransitionRule

///|
pub extern "js" fn CSSViewTransitionRule::to_js_value(
  self : CSSViewTransitionRule,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSViewTransitionRule (unchecked)
pub extern "js" fn CSSViewTransitionRule::from_js_value(
  v : JsValue,
) -> CSSViewTransitionRule =
  #| (v) => v

///|
/// Safely cast JsValue to CSSViewTransitionRule (checked with instanceof)
pub extern "js" fn CSSViewTransitionRule::from_js_value_opt(
  v : JsValue,
) -> CSSViewTransitionRule? =
  #| (v) => (v instanceof CSSViewTransitionRule) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSViewTransitionRule (checked with instanceof)
pub extern "js" fn JsValue::as_css_view_transition_rule(
  self : JsValue,
) -> CSSViewTransitionRule? =
  #| (self) => (self instanceof CSSViewTransitionRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSViewTransitionRule (unchecked)
pub extern "js" fn JsValue::to_css_view_transition_rule(
  self : JsValue,
) -> CSSViewTransitionRule =
  #| (self) => self

///|
pub extern "js" fn CSSViewTransitionRule::to_css_rule(
  self : CSSViewTransitionRule,
) -> CSSRule =
  #| (self) => self

///|
pub extern "js" fn CSSViewTransitionRule::get_navigation(
  self : CSSViewTransitionRule,
) -> CSSOMString =
  #| (self) => self.navigation

///|
pub extern "js" fn CSSViewTransitionRule::get_types(
  self : CSSViewTransitionRule,
) -> JsValue =
  #| (self) => self.types
