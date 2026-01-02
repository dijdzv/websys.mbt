// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-view-transitions

/// ViewTransitionUpdateCallback callback interface
pub type ViewTransitionUpdateCallback

///|
/// StartViewTransitionOptions dictionary
pub struct StartViewTransitionOptions {
  update : ViewTransitionUpdateCallback??
  types : JsValue?
}

/// Create a new StartViewTransitionOptions with default values
pub fn StartViewTransitionOptions::default() -> StartViewTransitionOptions {
  StartViewTransitionOptions::{
    update: None,
    types: None,
  }
}

/// Convert to JsValue
pub extern "js" fn StartViewTransitionOptions::to_js(self : StartViewTransitionOptions) -> JsValue =
  #| (self) => ({
  #|   update: self.update,
  #|   types: self.types
  #| })

///|
/// CSSViewTransitionRule interface
pub type CSSViewTransitionRule

pub extern "js" fn CSSViewTransitionRule::to_js_value(self : CSSViewTransitionRule) -> JsValue =
  #| (self) => self

pub extern "js" fn CSSViewTransitionRule::get_navigation(self : CSSViewTransitionRule) -> CSSOMString =
  #| (self) => self.navigation

pub extern "js" fn CSSViewTransitionRule::get_types(self : CSSViewTransitionRule) -> JsValue =
  #| (self) => self.types

///|
/// ViewTransition interface
pub type ViewTransition

pub extern "js" fn ViewTransition::to_js_value(self : ViewTransition) -> JsValue =
  #| (self) => self

pub extern "js" fn ViewTransition::get_update_callback_done(self : ViewTransition) -> JsValue =
  #| (self) => self.updateCallbackDone

pub extern "js" fn ViewTransition::get_ready(self : ViewTransition) -> JsValue =
  #| (self) => self.ready

pub extern "js" fn ViewTransition::get_finished(self : ViewTransition) -> JsValue =
  #| (self) => self.finished

pub extern "js" fn ViewTransition::skip_transition(self : ViewTransition) -> Unit =
  #| (self) => self.skipTransition()

pub extern "js" fn ViewTransition::get_types(self : ViewTransition) -> ViewTransitionTypeSet =
  #| (self) => self.types

pub extern "js" fn ViewTransition::set_types(self : ViewTransition, value : ViewTransitionTypeSet) -> Unit =
  #| (self, value) => { self.types = value }

pub extern "js" fn ViewTransition::get_transition_root(self : ViewTransition) -> Element =
  #| (self) => self.transitionRoot

pub extern "js" fn ViewTransition::wait_until(self : ViewTransition, promise : JsValue) -> Unit =
  #| (self, promise) => self.waitUntil(promise)

///|
/// ViewTransitionTypeSet interface
pub type ViewTransitionTypeSet

pub extern "js" fn ViewTransitionTypeSet::to_js_value(self : ViewTransitionTypeSet) -> JsValue =
  #| (self) => self

pub extern "js" fn ViewTransitionTypeSet::_unknown_(self : ViewTransitionTypeSet) -> Unit =
  #| (self) => self._unknown_()

