// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/web-animations

///|
/// AnimationPlayState enum
pub(all) enum AnimationPlayState {
  Idle
  Running
  Paused
  Finished
}

/// Convert to string value
pub fn AnimationPlayState::to_string(self : AnimationPlayState) -> String {
  match self {
    Idle => "idle"
    Running => "running"
    Paused => "paused"
    Finished => "finished"
  }
}

/// Parse from string value
pub fn AnimationPlayState::from_string(s : String) -> AnimationPlayState? {
  match s {
    "idle" => Some(Idle)
    "running" => Some(Running)
    "paused" => Some(Paused)
    "finished" => Some(Finished)
    _ => None
  }
}

///|
/// AnimationReplaceState enum
pub(all) enum AnimationReplaceState {
  Active
  Removed
  Persisted
}

/// Convert to string value
pub fn AnimationReplaceState::to_string(self : AnimationReplaceState) -> String {
  match self {
    Active => "active"
    Removed => "removed"
    Persisted => "persisted"
  }
}

/// Parse from string value
pub fn AnimationReplaceState::from_string(s : String) -> AnimationReplaceState? {
  match s {
    "active" => Some(Active)
    "removed" => Some(Removed)
    "persisted" => Some(Persisted)
    _ => None
  }
}

///|
/// FillMode enum
pub(all) enum FillMode {
  None
  Forwards
  Backwards
  Both
  Auto
}

/// Convert to string value
pub fn FillMode::to_string(self : FillMode) -> String {
  match self {
    None => "none"
    Forwards => "forwards"
    Backwards => "backwards"
    Both => "both"
    Auto => "auto"
  }
}

/// Parse from string value
pub fn FillMode::from_string(s : String) -> FillMode? {
  match s {
    "none" => Some(None)
    "forwards" => Some(Forwards)
    "backwards" => Some(Backwards)
    "both" => Some(Both)
    "auto" => Some(Auto)
    _ => None
  }
}

///|
/// PlaybackDirection enum
pub(all) enum PlaybackDirection {
  Normal
  Reverse
  Alternate
  AlternateReverse
}

/// Convert to string value
pub fn PlaybackDirection::to_string(self : PlaybackDirection) -> String {
  match self {
    Normal => "normal"
    Reverse => "reverse"
    Alternate => "alternate"
    AlternateReverse => "alternate-reverse"
  }
}

/// Parse from string value
pub fn PlaybackDirection::from_string(s : String) -> PlaybackDirection? {
  match s {
    "normal" => Some(Normal)
    "reverse" => Some(Reverse)
    "alternate" => Some(Alternate)
    "alternate-reverse" => Some(AlternateReverse)
    _ => None
  }
}

///|
/// CompositeOperation enum
pub(all) enum CompositeOperation {
  Replace
  Add
  Accumulate
}

/// Convert to string value
pub fn CompositeOperation::to_string(self : CompositeOperation) -> String {
  match self {
    Replace => "replace"
    Add => "add"
    Accumulate => "accumulate"
  }
}

/// Parse from string value
pub fn CompositeOperation::from_string(s : String) -> CompositeOperation? {
  match s {
    "replace" => Some(Replace)
    "add" => Some(Add)
    "accumulate" => Some(Accumulate)
    _ => None
  }
}

///|
/// CompositeOperationOrAuto enum
pub(all) enum CompositeOperationOrAuto {
  Replace
  Add
  Accumulate
  Auto
}

/// Convert to string value
pub fn CompositeOperationOrAuto::to_string(self : CompositeOperationOrAuto) -> String {
  match self {
    Replace => "replace"
    Add => "add"
    Accumulate => "accumulate"
    Auto => "auto"
  }
}

/// Parse from string value
pub fn CompositeOperationOrAuto::from_string(s : String) -> CompositeOperationOrAuto? {
  match s {
    "replace" => Some(Replace)
    "add" => Some(Add)
    "accumulate" => Some(Accumulate)
    "auto" => Some(Auto)
    _ => None
  }
}

///|
/// DocumentTimelineOptions dictionary
pub struct DocumentTimelineOptions {
  originTime : DOMHighResTimeStamp?
}

/// Create a new DocumentTimelineOptions with default values
pub fn DocumentTimelineOptions::default() -> DocumentTimelineOptions {
  DocumentTimelineOptions::{
    originTime: None,
  }
}

/// Convert to JsValue
pub extern "js" fn DocumentTimelineOptions::to_js(self : DocumentTimelineOptions) -> JsValue =
  #| (self) => ({
  #|   originTime: self.originTime
  #| })

///|
/// BaseComputedKeyframe dictionary
pub struct BaseComputedKeyframe {
  offset : Double??
  computedOffset : Double?
  easing : String?
  composite : CompositeOperationOrAuto?
}

/// Create a new BaseComputedKeyframe with default values
pub fn BaseComputedKeyframe::default() -> BaseComputedKeyframe {
  BaseComputedKeyframe::{
    offset: None,
    computedOffset: None,
    easing: None,
    composite: None,
  }
}

/// Convert to JsValue
pub extern "js" fn BaseComputedKeyframe::to_js(self : BaseComputedKeyframe) -> JsValue =
  #| (self) => ({
  #|   offset: self.offset,
  #|   computedOffset: self.computedOffset,
  #|   easing: self.easing,
  #|   composite: self.composite
  #| })

///|
/// BasePropertyIndexedKeyframe dictionary
pub struct BasePropertyIndexedKeyframe {
  offset : JsValue?
  easing : JsValue?
  composite : JsValue?
}

/// Create a new BasePropertyIndexedKeyframe with default values
pub fn BasePropertyIndexedKeyframe::default() -> BasePropertyIndexedKeyframe {
  BasePropertyIndexedKeyframe::{
    offset: None,
    easing: None,
    composite: None,
  }
}

/// Convert to JsValue
pub extern "js" fn BasePropertyIndexedKeyframe::to_js(self : BasePropertyIndexedKeyframe) -> JsValue =
  #| (self) => ({
  #|   offset: self.offset,
  #|   easing: self.easing,
  #|   composite: self.composite
  #| })

///|
/// BaseKeyframe dictionary
pub struct BaseKeyframe {
  offset : Double??
  easing : String?
  composite : CompositeOperationOrAuto?
}

/// Create a new BaseKeyframe with default values
pub fn BaseKeyframe::default() -> BaseKeyframe {
  BaseKeyframe::{
    offset: None,
    easing: None,
    composite: None,
  }
}

/// Convert to JsValue
pub extern "js" fn BaseKeyframe::to_js(self : BaseKeyframe) -> JsValue =
  #| (self) => ({
  #|   offset: self.offset,
  #|   easing: self.easing,
  #|   composite: self.composite
  #| })

///|
/// GetAnimationsOptions dictionary
pub struct GetAnimationsOptions {
  subtree : Bool?
  pseudoElement : CSSOMString??
}

/// Create a new GetAnimationsOptions with default values
pub fn GetAnimationsOptions::default() -> GetAnimationsOptions {
  GetAnimationsOptions::{
    subtree: None,
    pseudoElement: None,
  }
}

/// Convert to JsValue
pub extern "js" fn GetAnimationsOptions::to_js(self : GetAnimationsOptions) -> JsValue =
  #| (self) => ({
  #|   subtree: self.subtree,
  #|   pseudoElement: self.pseudoElement
  #| })

///|
/// AnimationTimeline interface
pub type AnimationTimeline

pub extern "js" fn AnimationTimeline::to_js_value(self : AnimationTimeline) -> JsValue =
  #| (self) => self

pub extern "js" fn AnimationTimeline::get_current_time(self : AnimationTimeline) -> CSSNumberish? =
  #| (self) => self.currentTime

pub extern "js" fn AnimationTimeline::get_duration(self : AnimationTimeline) -> CSSNumberish? =
  #| (self) => self.duration

pub extern "js" fn AnimationTimeline::play(self : AnimationTimeline) -> Animation =
  #| (self) => self.play()

pub extern "js" fn AnimationTimeline::play_with_effect(self : AnimationTimeline, effect : AnimationEffect?) -> Animation =
  #| (self, effect) => self.play(effect)

///|
/// DocumentTimeline interface
pub type DocumentTimeline

pub extern "js" fn DocumentTimeline::to_js_value(self : DocumentTimeline) -> JsValue =
  #| (self) => self

pub extern "js" fn DocumentTimeline::get_current_time(self : DocumentTimeline) -> CSSNumberish? =
  #| (self) => self.currentTime

pub extern "js" fn DocumentTimeline::get_duration(self : DocumentTimeline) -> CSSNumberish? =
  #| (self) => self.duration

pub extern "js" fn DocumentTimeline::play(self : DocumentTimeline) -> Animation =
  #| (self) => self.play()

pub extern "js" fn DocumentTimeline::play_with_effect(self : DocumentTimeline, effect : AnimationEffect?) -> Animation =
  #| (self, effect) => self.play(effect)

pub extern "js" fn DocumentTimeline::new(options : DocumentTimelineOptions) -> DocumentTimeline =
  #| (options) => new DocumentTimeline(options)

///|
/// Animation interface
pub type Animation

pub extern "js" fn Animation::to_js_value(self : Animation) -> JsValue =
  #| (self) => self

pub extern "js" fn Animation::new(effect : AnimationEffect?, timeline : AnimationTimeline?) -> Animation =
  #| (effect, timeline) => new Animation(effect, timeline)

pub extern "js" fn Animation::get_id(self : Animation) -> String =
  #| (self) => self.id

pub extern "js" fn Animation::set_id(self : Animation, value : String) -> Unit =
  #| (self, value) => { self.id = value }

pub extern "js" fn Animation::get_effect(self : Animation) -> AnimationEffect? =
  #| (self) => self.effect

pub extern "js" fn Animation::set_effect(self : Animation, value : AnimationEffect?) -> Unit =
  #| (self, value) => { self.effect = value }

pub extern "js" fn Animation::get_timeline(self : Animation) -> AnimationTimeline? =
  #| (self) => self.timeline

pub extern "js" fn Animation::set_timeline(self : Animation, value : AnimationTimeline?) -> Unit =
  #| (self, value) => { self.timeline = value }

pub extern "js" fn Animation::get_playback_rate(self : Animation) -> Double =
  #| (self) => self.playbackRate

pub extern "js" fn Animation::set_playback_rate(self : Animation, value : Double) -> Unit =
  #| (self, value) => { self.playbackRate = value }

pub extern "js" fn Animation::get_play_state(self : Animation) -> AnimationPlayState =
  #| (self) => self.playState

pub extern "js" fn Animation::get_replace_state(self : Animation) -> AnimationReplaceState =
  #| (self) => self.replaceState

pub extern "js" fn Animation::get_pending(self : Animation) -> Bool =
  #| (self) => self.pending

pub extern "js" fn Animation::get_ready(self : Animation) -> Promise[Animation] =
  #| (self) => self.ready

pub extern "js" fn Animation::get_finished(self : Animation) -> Promise[Animation] =
  #| (self) => self.finished

pub extern "js" fn Animation::get_onfinish(self : Animation) -> EventHandler =
  #| (self) => self.onfinish

pub extern "js" fn Animation::set_onfinish(self : Animation, value : EventHandler) -> Unit =
  #| (self, value) => { self.onfinish = value }

pub extern "js" fn Animation::get_oncancel(self : Animation) -> EventHandler =
  #| (self) => self.oncancel

pub extern "js" fn Animation::set_oncancel(self : Animation, value : EventHandler) -> Unit =
  #| (self, value) => { self.oncancel = value }

pub extern "js" fn Animation::get_onremove(self : Animation) -> EventHandler =
  #| (self) => self.onremove

pub extern "js" fn Animation::set_onremove(self : Animation, value : EventHandler) -> Unit =
  #| (self, value) => { self.onremove = value }

pub extern "js" fn Animation::cancel(self : Animation) -> Unit =
  #| (self) => self.cancel()

pub extern "js" fn Animation::finish(self : Animation) -> Unit =
  #| (self) => self.finish()

pub extern "js" fn Animation::play(self : Animation) -> Unit =
  #| (self) => self.play()

pub extern "js" fn Animation::pause(self : Animation) -> Unit =
  #| (self) => self.pause()

pub extern "js" fn Animation::update_playback_rate(self : Animation, playback_rate : Double) -> Unit =
  #| (self, playback_rate) => self.updatePlaybackRate(playback_rate)

pub extern "js" fn Animation::reverse(self : Animation) -> Unit =
  #| (self) => self.reverse()

pub extern "js" fn Animation::persist(self : Animation) -> Unit =
  #| (self) => self.persist()

pub extern "js" fn Animation::commit_styles(self : Animation) -> Unit =
  #| (self) => self.commitStyles()

pub extern "js" fn Animation::get_start_time(self : Animation) -> CSSNumberish? =
  #| (self) => self.startTime

pub extern "js" fn Animation::set_start_time(self : Animation, value : CSSNumberish?) -> Unit =
  #| (self, value) => { self.startTime = value }

pub extern "js" fn Animation::get_current_time(self : Animation) -> CSSNumberish? =
  #| (self) => self.currentTime

pub extern "js" fn Animation::set_current_time(self : Animation, value : CSSNumberish?) -> Unit =
  #| (self, value) => { self.currentTime = value }

pub extern "js" fn Animation::get_trigger(self : Animation) -> AnimationTrigger? =
  #| (self) => self.trigger

pub extern "js" fn Animation::set_trigger(self : Animation, value : AnimationTrigger?) -> Unit =
  #| (self, value) => { self.trigger = value }

pub extern "js" fn Animation::get_overall_progress(self : Animation) -> Double? =
  #| (self) => self.overallProgress

///|
/// AnimationEffect interface
pub type AnimationEffect

pub extern "js" fn AnimationEffect::to_js_value(self : AnimationEffect) -> JsValue =
  #| (self) => self

pub extern "js" fn AnimationEffect::get_timing(self : AnimationEffect) -> EffectTiming =
  #| (self) => self.getTiming()

pub extern "js" fn AnimationEffect::get_computed_timing(self : AnimationEffect) -> ComputedEffectTiming =
  #| (self) => self.getComputedTiming()

pub extern "js" fn AnimationEffect::update_timing(self : AnimationEffect) -> Unit =
  #| (self) => self.updateTiming()

pub extern "js" fn AnimationEffect::update_timing_with_timing(self : AnimationEffect, timing : OptionalEffectTiming) -> Unit =
  #| (self, timing) => self.updateTiming(timing)

pub extern "js" fn AnimationEffect::get_parent(self : AnimationEffect) -> GroupEffect? =
  #| (self) => self.parent

pub extern "js" fn AnimationEffect::get_previous_sibling(self : AnimationEffect) -> AnimationEffect? =
  #| (self) => self.previousSibling

pub extern "js" fn AnimationEffect::get_next_sibling(self : AnimationEffect) -> AnimationEffect? =
  #| (self) => self.nextSibling

pub extern "js" fn AnimationEffect::before(self : AnimationEffect, effects : AnimationEffect) -> Unit =
  #| (self, effects) => self.before(effects)

pub extern "js" fn AnimationEffect::after(self : AnimationEffect, effects : AnimationEffect) -> Unit =
  #| (self, effects) => self.after(effects)

pub extern "js" fn AnimationEffect::replace(self : AnimationEffect, effects : AnimationEffect) -> Unit =
  #| (self, effects) => self.replace(effects)

pub extern "js" fn AnimationEffect::remove(self : AnimationEffect) -> Unit =
  #| (self) => self.remove()

///|
/// KeyframeEffect interface
pub type KeyframeEffect

pub extern "js" fn KeyframeEffect::to_js_value(self : KeyframeEffect) -> JsValue =
  #| (self) => self

pub extern "js" fn KeyframeEffect::get_timing(self : KeyframeEffect) -> EffectTiming =
  #| (self) => self.getTiming()

pub extern "js" fn KeyframeEffect::get_computed_timing(self : KeyframeEffect) -> ComputedEffectTiming =
  #| (self) => self.getComputedTiming()

pub extern "js" fn KeyframeEffect::update_timing(self : KeyframeEffect) -> Unit =
  #| (self) => self.updateTiming()

pub extern "js" fn KeyframeEffect::update_timing_with_timing(self : KeyframeEffect, timing : OptionalEffectTiming) -> Unit =
  #| (self, timing) => self.updateTiming(timing)

pub extern "js" fn KeyframeEffect::get_parent(self : KeyframeEffect) -> GroupEffect? =
  #| (self) => self.parent

pub extern "js" fn KeyframeEffect::get_previous_sibling(self : KeyframeEffect) -> AnimationEffect? =
  #| (self) => self.previousSibling

pub extern "js" fn KeyframeEffect::get_next_sibling(self : KeyframeEffect) -> AnimationEffect? =
  #| (self) => self.nextSibling

pub extern "js" fn KeyframeEffect::before(self : KeyframeEffect, effects : AnimationEffect) -> Unit =
  #| (self, effects) => self.before(effects)

pub extern "js" fn KeyframeEffect::after(self : KeyframeEffect, effects : AnimationEffect) -> Unit =
  #| (self, effects) => self.after(effects)

pub extern "js" fn KeyframeEffect::replace(self : KeyframeEffect, effects : AnimationEffect) -> Unit =
  #| (self, effects) => self.replace(effects)

pub extern "js" fn KeyframeEffect::remove(self : KeyframeEffect) -> Unit =
  #| (self) => self.remove()

pub extern "js" fn KeyframeEffect::new(target : Element?, keyframes : JsValue?, options : JsValue) -> KeyframeEffect =
  #| (target, keyframes, options) => new KeyframeEffect(target, keyframes, options)

pub extern "js" fn KeyframeEffect::get_target(self : KeyframeEffect) -> Element? =
  #| (self) => self.target

pub extern "js" fn KeyframeEffect::set_target(self : KeyframeEffect, value : Element?) -> Unit =
  #| (self, value) => { self.target = value }

pub extern "js" fn KeyframeEffect::get_pseudo_element(self : KeyframeEffect) -> CSSOMString? =
  #| (self) => self.pseudoElement

pub extern "js" fn KeyframeEffect::set_pseudo_element(self : KeyframeEffect, value : CSSOMString?) -> Unit =
  #| (self, value) => { self.pseudoElement = value }

pub extern "js" fn KeyframeEffect::get_composite(self : KeyframeEffect) -> CompositeOperation =
  #| (self) => self.composite

pub extern "js" fn KeyframeEffect::set_composite(self : KeyframeEffect, value : CompositeOperation) -> Unit =
  #| (self, value) => { self.composite = value }

pub extern "js" fn KeyframeEffect::get_keyframes(self : KeyframeEffect) -> Array[JsValue] =
  #| (self) => self.getKeyframes()

pub extern "js" fn KeyframeEffect::set_keyframes(self : KeyframeEffect, keyframes : JsValue?) -> Unit =
  #| (self, keyframes) => self.setKeyframes(keyframes)

pub extern "js" fn KeyframeEffect::get_iteration_composite(self : KeyframeEffect) -> IterationCompositeOperation =
  #| (self) => self.iterationComposite

pub extern "js" fn KeyframeEffect::set_iteration_composite(self : KeyframeEffect, value : IterationCompositeOperation) -> Unit =
  #| (self, value) => { self.iterationComposite = value }

