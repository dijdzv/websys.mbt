// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/animation-triggers

///|
/// AnimationTriggerBehavior enum
pub(all) enum AnimationTriggerBehavior {
  Once
  Repeat
  Alternate
  State
} derive(Eq, Debug)

pub extend AnimationTriggerBehavior with Eq::{equal, not_equal}
pub extend AnimationTriggerBehavior with @debug.Debug::{to_repr}

/// Convert to string value
pub fn AnimationTriggerBehavior::to_string(self : AnimationTriggerBehavior) -> String {
  match self {
    AnimationTriggerBehavior::Once => "once"
    AnimationTriggerBehavior::Repeat => "repeat"
    AnimationTriggerBehavior::Alternate => "alternate"
    AnimationTriggerBehavior::State => "state"
  }
}

/// Parse from string value
pub fn AnimationTriggerBehavior::from_string(s : String) -> AnimationTriggerBehavior? {
  match s {
    "once" => Some(AnimationTriggerBehavior::Once)
    "repeat" => Some(AnimationTriggerBehavior::Repeat)
    "alternate" => Some(AnimationTriggerBehavior::Alternate)
    "state" => Some(AnimationTriggerBehavior::State)
    _ => None
  }
}

///|
/// AnimationTriggerOptions dictionary
pub(all) struct AnimationTriggerOptions {
  timeline : Nullable[AnimationTimeline]
  behavior : Nullable[AnimationTriggerBehavior]
  activationRangeStart : TimelineRangeOffsetOrCSSNumericValueOrCSSKeywordValueOrString?
  activationRangeEnd : TimelineRangeOffsetOrCSSNumericValueOrCSSKeywordValueOrString?
  activeRangeStart : TimelineRangeOffsetOrCSSNumericValueOrCSSKeywordValueOrString?
  activeRangeEnd : TimelineRangeOffsetOrCSSNumericValueOrCSSKeywordValueOrString?
}

/// Create a new AnimationTriggerOptions with default values
pub fn AnimationTriggerOptions::default() -> AnimationTriggerOptions {
  AnimationTriggerOptions::{
    timeline: Nullable::Undefined,
    behavior: Nullable::Undefined,
    activationRangeStart: None,
    activationRangeEnd: None,
    activeRangeStart: None,
    activeRangeEnd: None,
  }
}

extern "js" fn AnimationTriggerOptions::to_js_ffi(self : AnimationTriggerOptions) -> JsValue =
  #| (self) => ({
  #|   timeline: ((() => { const v = self.timeline; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   behavior: ((() => { const v = self.behavior; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return ['once', 'repeat', 'alternate', 'state'][v._0]; })()),
  #|   activationRangeStart: ((() => { const v = self.activationRangeStart; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   activationRangeEnd: ((() => { const v = self.activationRangeEnd; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   activeRangeStart: ((() => { const v = self.activeRangeStart; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   activeRangeEnd: ((() => { const v = self.activeRangeEnd; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

/// Convert to JsValue
pub fn AnimationTriggerOptions::to_js(self : AnimationTriggerOptions) -> JsValue {
  AnimationTriggerOptions::to_js_ffi(self)
}

extern "js" fn AnimationTriggerOptions::from_js_ffi(value : JsValue) -> AnimationTriggerOptions =
  #| (v) => ({
  #|   timeline: (v.timeline === undefined ? { $tag: 0 } : v.timeline === null ? { $tag: 1 } : { $tag: 2, _0: v.timeline }),
  #|   behavior: (v.behavior === undefined ? { $tag: 0 } : v.behavior === null ? { $tag: 1 } : { $tag: 2, _0: ['once', 'repeat', 'alternate', 'state'].indexOf(v.behavior) }),
  #|   activationRangeStart: (v.activationRangeStart === undefined ? { $tag: 0 } : { $tag: 1, _0: v.activationRangeStart }),
  #|   activationRangeEnd: (v.activationRangeEnd === undefined ? { $tag: 0 } : { $tag: 1, _0: v.activationRangeEnd }),
  #|   activeRangeStart: (v.activeRangeStart === undefined ? { $tag: 0 } : { $tag: 1, _0: v.activeRangeStart }),
  #|   activeRangeEnd: (v.activeRangeEnd === undefined ? { $tag: 0 } : { $tag: 1, _0: v.activeRangeEnd })
  #| })

/// Convert from JsValue
pub fn AnimationTriggerOptions::from_js(value : JsValue) -> AnimationTriggerOptions {
  AnimationTriggerOptions::from_js_ffi(value)
}

///|
/// AnimationTrigger interface
pub type AnimationTrigger

pub extern "js" fn AnimationTrigger::to_js_value(self : AnimationTrigger) -> JsValue =
  #| (self) => self

/// Cast JsValue to AnimationTrigger (unchecked)
pub extern "js" fn AnimationTrigger::from_js_value(v : JsValue) -> AnimationTrigger =
  #| (v) => v

/// Safely cast JsValue to AnimationTrigger (checked with instanceof)
pub extern "js" fn AnimationTrigger::from_js_value_opt(v : JsValue) -> AnimationTrigger? =
  #| (v) => (v instanceof AnimationTrigger) ? { $tag: 1, _0: v } : { $tag: 0 }

/// Safely cast JsValue to AnimationTrigger (checked with instanceof)
pub extern "js" fn JsValue::as_animation_trigger(self : JsValue) -> AnimationTrigger? =
  #| (self) => (self instanceof AnimationTrigger) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Cast JsValue to AnimationTrigger (unchecked)
pub extern "js" fn JsValue::to_animation_trigger(self : JsValue) -> AnimationTrigger =
  #| (self) => self

pub extern "js" fn AnimationTrigger::new() -> AnimationTrigger =
  #| () => new AnimationTrigger()

extern "js" fn AnimationTrigger::new_with_options_ffi(options : JsValue) -> AnimationTrigger =
  #| (options) => new AnimationTrigger(options)

pub fn AnimationTrigger::new_with_options(options : AnimationTriggerOptions) -> AnimationTrigger {
  AnimationTrigger::new_with_options_ffi(options.to_js())
}

pub extern "js" fn AnimationTrigger::get_timeline(self : AnimationTrigger) -> AnimationTimeline =
  #| (self) => self.timeline

pub extern "js" fn AnimationTrigger::set_timeline(self : AnimationTrigger, value : AnimationTimeline) -> Unit =
  #| (self, value) => { self.timeline = value }

pub extern "js" fn AnimationTrigger::get_behavior(self : AnimationTrigger) -> AnimationTriggerBehavior =
  #| (self) => ['once', 'repeat', 'alternate', 'state'].indexOf(self.behavior)

pub extern "js" fn AnimationTrigger::set_behavior(self : AnimationTrigger, value : AnimationTriggerBehavior) -> Unit =
  #| (self, value) => { self.behavior = ['once', 'repeat', 'alternate', 'state'][value] }

pub extern "js" fn AnimationTrigger::get_activation_range_start(self : AnimationTrigger) -> JsValue =
  #| (self) => self.activationRangeStart

pub extern "js" fn AnimationTrigger::set_activation_range_start(self : AnimationTrigger, value : JsValue) -> Unit =
  #| (self, value) => { self.activationRangeStart = value }

pub extern "js" fn AnimationTrigger::get_activation_range_end(self : AnimationTrigger) -> JsValue =
  #| (self) => self.activationRangeEnd

pub extern "js" fn AnimationTrigger::set_activation_range_end(self : AnimationTrigger, value : JsValue) -> Unit =
  #| (self, value) => { self.activationRangeEnd = value }

pub extern "js" fn AnimationTrigger::get_active_range_start(self : AnimationTrigger) -> JsValue =
  #| (self) => self.activeRangeStart

pub extern "js" fn AnimationTrigger::set_active_range_start(self : AnimationTrigger, value : JsValue) -> Unit =
  #| (self, value) => { self.activeRangeStart = value }

pub extern "js" fn AnimationTrigger::get_active_range_end(self : AnimationTrigger) -> JsValue =
  #| (self) => self.activeRangeEnd

pub extern "js" fn AnimationTrigger::set_active_range_end(self : AnimationTrigger, value : JsValue) -> Unit =
  #| (self, value) => { self.activeRangeEnd = value }
