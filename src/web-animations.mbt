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

///|
/// Convert to string value
pub fn AnimationPlayState::to_string(self : AnimationPlayState) -> String {
  match self {
    AnimationPlayState::Idle => "idle"
    AnimationPlayState::Running => "running"
    AnimationPlayState::Paused => "paused"
    AnimationPlayState::Finished => "finished"
  }
}

///|
/// Parse from string value
pub fn AnimationPlayState::from_string(s : String) -> AnimationPlayState? {
  match s {
    "idle" => Some(AnimationPlayState::Idle)
    "running" => Some(AnimationPlayState::Running)
    "paused" => Some(AnimationPlayState::Paused)
    "finished" => Some(AnimationPlayState::Finished)
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

///|
/// Convert to string value
pub fn AnimationReplaceState::to_string(self : AnimationReplaceState) -> String {
  match self {
    AnimationReplaceState::Active => "active"
    AnimationReplaceState::Removed => "removed"
    AnimationReplaceState::Persisted => "persisted"
  }
}

///|
/// Parse from string value
pub fn AnimationReplaceState::from_string(s : String) -> AnimationReplaceState? {
  match s {
    "active" => Some(AnimationReplaceState::Active)
    "removed" => Some(AnimationReplaceState::Removed)
    "persisted" => Some(AnimationReplaceState::Persisted)
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

///|
/// Convert to string value
pub fn FillMode::to_string(self : FillMode) -> String {
  match self {
    FillMode::None => "none"
    FillMode::Forwards => "forwards"
    FillMode::Backwards => "backwards"
    FillMode::Both => "both"
    FillMode::Auto => "auto"
  }
}

///|
/// Parse from string value
pub fn FillMode::from_string(s : String) -> FillMode? {
  match s {
    "none" => Some(FillMode::None)
    "forwards" => Some(FillMode::Forwards)
    "backwards" => Some(FillMode::Backwards)
    "both" => Some(FillMode::Both)
    "auto" => Some(FillMode::Auto)
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

///|
/// Convert to string value
pub fn PlaybackDirection::to_string(self : PlaybackDirection) -> String {
  match self {
    PlaybackDirection::Normal => "normal"
    PlaybackDirection::Reverse => "reverse"
    PlaybackDirection::Alternate => "alternate"
    PlaybackDirection::AlternateReverse => "alternate-reverse"
  }
}

///|
/// Parse from string value
pub fn PlaybackDirection::from_string(s : String) -> PlaybackDirection? {
  match s {
    "normal" => Some(PlaybackDirection::Normal)
    "reverse" => Some(PlaybackDirection::Reverse)
    "alternate" => Some(PlaybackDirection::Alternate)
    "alternate-reverse" => Some(PlaybackDirection::AlternateReverse)
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

///|
/// Convert to string value
pub fn CompositeOperation::to_string(self : CompositeOperation) -> String {
  match self {
    CompositeOperation::Replace => "replace"
    CompositeOperation::Add => "add"
    CompositeOperation::Accumulate => "accumulate"
  }
}

///|
/// Parse from string value
pub fn CompositeOperation::from_string(s : String) -> CompositeOperation? {
  match s {
    "replace" => Some(CompositeOperation::Replace)
    "add" => Some(CompositeOperation::Add)
    "accumulate" => Some(CompositeOperation::Accumulate)
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

///|
/// Convert to string value
pub fn CompositeOperationOrAuto::to_string(
  self : CompositeOperationOrAuto,
) -> String {
  match self {
    CompositeOperationOrAuto::Replace => "replace"
    CompositeOperationOrAuto::Add => "add"
    CompositeOperationOrAuto::Accumulate => "accumulate"
    CompositeOperationOrAuto::Auto => "auto"
  }
}

///|
/// Parse from string value
pub fn CompositeOperationOrAuto::from_string(
  s : String,
) -> CompositeOperationOrAuto? {
  match s {
    "replace" => Some(CompositeOperationOrAuto::Replace)
    "add" => Some(CompositeOperationOrAuto::Add)
    "accumulate" => Some(CompositeOperationOrAuto::Accumulate)
    "auto" => Some(CompositeOperationOrAuto::Auto)
    _ => None
  }
}

///|
/// DocumentTimelineOptions dictionary
pub struct DocumentTimelineOptions {
  originTime : DOMHighResTimeStamp?
}

///|
/// Create a new DocumentTimelineOptions with default values
pub fn DocumentTimelineOptions::default() -> DocumentTimelineOptions {
  DocumentTimelineOptions::{ originTime: None }
}

///|
/// Convert to JsValue
pub extern "js" fn DocumentTimelineOptions::to_js(
  self : DocumentTimelineOptions,
) -> JsValue =
  #| (self) => ({
  #|   originTime: self.originTime
  #| })

///|
/// BaseComputedKeyframe dictionary
pub struct BaseComputedKeyframe {
  offset : Nullable[Double]
  computedOffset : Double?
  easing : String?
  composite : CompositeOperationOrAuto?
}

///|
/// Create a new BaseComputedKeyframe with default values
pub fn BaseComputedKeyframe::default() -> BaseComputedKeyframe {
  BaseComputedKeyframe::{
    offset: Nullable::Undefined,
    computedOffset: None,
    easing: None,
    composite: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn BaseComputedKeyframe::to_js(
  self : BaseComputedKeyframe,
) -> JsValue =
  #| (self) => ({
  #|   offset: ((() => { const v = self.offset; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   computedOffset: self.computedOffset,
  #|   easing: self.easing,
  #|   composite: ['replace', 'add', 'accumulate', 'auto'][self.composite]
  #| })

///|
/// BasePropertyIndexedKeyframe dictionary
pub struct BasePropertyIndexedKeyframe {
  offset : NullableDoubleOrArrayOfNullableDouble?
  easing : StringOrArrayOfString?
  composite : CompositeOperationOrAutoOrArrayOfCompositeOperationOrAuto?
}

///|
/// Create a new BasePropertyIndexedKeyframe with default values
pub fn BasePropertyIndexedKeyframe::default() -> BasePropertyIndexedKeyframe {
  BasePropertyIndexedKeyframe::{ offset: None, easing: None, composite: None }
}

///|
/// Convert to JsValue
pub extern "js" fn BasePropertyIndexedKeyframe::to_js(
  self : BasePropertyIndexedKeyframe,
) -> JsValue =
  #| (self) => ({
  #|   offset: self.offset,
  #|   easing: self.easing,
  #|   composite: self.composite
  #| })

///|
/// BaseKeyframe dictionary
pub struct BaseKeyframe {
  offset : Nullable[Double]
  easing : String?
  composite : CompositeOperationOrAuto?
}

///|
/// Create a new BaseKeyframe with default values
pub fn BaseKeyframe::default() -> BaseKeyframe {
  BaseKeyframe::{ offset: Nullable::Undefined, easing: None, composite: None }
}

///|
/// Convert to JsValue
pub extern "js" fn BaseKeyframe::to_js(self : BaseKeyframe) -> JsValue =
  #| (self) => ({
  #|   offset: ((() => { const v = self.offset; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   easing: self.easing,
  #|   composite: ['replace', 'add', 'accumulate', 'auto'][self.composite]
  #| })

///|
/// GetAnimationsOptions dictionary
pub struct GetAnimationsOptions {
  subtree : Bool?
  pseudoElement : Nullable[CSSOMString]
}

///|
/// Create a new GetAnimationsOptions with default values
pub fn GetAnimationsOptions::default() -> GetAnimationsOptions {
  GetAnimationsOptions::{ subtree: None, pseudoElement: Nullable::Undefined }
}

///|
/// Convert to JsValue
pub extern "js" fn GetAnimationsOptions::to_js(
  self : GetAnimationsOptions,
) -> JsValue =
  #| (self) => ({
  #|   subtree: self.subtree,
  #|   pseudoElement: ((() => { const v = self.pseudoElement; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// AnimationTimeline interface
pub type AnimationTimeline

///|
pub extern "js" fn AnimationTimeline::to_js_value(
  self : AnimationTimeline,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AnimationTimeline (unchecked)
pub extern "js" fn AnimationTimeline::from_js_value(
  v : JsValue,
) -> AnimationTimeline =
  #| (v) => v

///|
/// Safely cast JsValue to AnimationTimeline (checked with instanceof)
pub extern "js" fn AnimationTimeline::from_js_value_opt(
  v : JsValue,
) -> AnimationTimeline? =
  #| (v) => (v instanceof AnimationTimeline) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AnimationTimeline (checked with instanceof)
pub extern "js" fn JsValue::as_animation_timeline(
  self : JsValue,
) -> AnimationTimeline? =
  #| (self) => (self instanceof AnimationTimeline) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AnimationTimeline (unchecked)
pub extern "js" fn JsValue::to_animation_timeline(
  self : JsValue,
) -> AnimationTimeline =
  #| (self) => self

///|
pub extern "js" fn AnimationTimeline::as_pointer_timeline(
  self : AnimationTimeline,
) -> PointerTimeline? =
  #| (self) => (self instanceof PointerTimeline) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AnimationTimeline::as_scroll_timeline(
  self : AnimationTimeline,
) -> ScrollTimeline? =
  #| (self) => (self instanceof ScrollTimeline) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AnimationTimeline::as_view_timeline(
  self : AnimationTimeline,
) -> ViewTimeline? =
  #| (self) => (self instanceof ViewTimeline) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AnimationTimeline::as_document_timeline(
  self : AnimationTimeline,
) -> DocumentTimeline? =
  #| (self) => (self instanceof DocumentTimeline) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AnimationTimeline::get_current_time(
  self : AnimationTimeline,
) -> CSSNumberish? =
  #| (self) => { const v = self.currentTime; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn AnimationTimeline::get_duration(
  self : AnimationTimeline,
) -> CSSNumberish? =
  #| (self) => { const v = self.duration; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn AnimationTimeline::play(
  self : AnimationTimeline,
) -> Animation =
  #| (self) => self.play()

///|
pub extern "js" fn AnimationTimeline::play_with_effect(
  self : AnimationTimeline,
  effect : AnimationEffect?,
) -> Animation =
  #| (self, effect) => self.play(effect)

///|
/// DocumentTimeline interface
pub type DocumentTimeline

///|
pub extern "js" fn DocumentTimeline::to_js_value(
  self : DocumentTimeline,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to DocumentTimeline (unchecked)
pub extern "js" fn DocumentTimeline::from_js_value(
  v : JsValue,
) -> DocumentTimeline =
  #| (v) => v

///|
/// Safely cast JsValue to DocumentTimeline (checked with instanceof)
pub extern "js" fn DocumentTimeline::from_js_value_opt(
  v : JsValue,
) -> DocumentTimeline? =
  #| (v) => (v instanceof DocumentTimeline) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to DocumentTimeline (checked with instanceof)
pub extern "js" fn JsValue::as_document_timeline(
  self : JsValue,
) -> DocumentTimeline? =
  #| (self) => (self instanceof DocumentTimeline) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to DocumentTimeline (unchecked)
pub extern "js" fn JsValue::to_document_timeline(
  self : JsValue,
) -> DocumentTimeline =
  #| (self) => self

///|
pub extern "js" fn DocumentTimeline::to_animation_timeline(
  self : DocumentTimeline,
) -> AnimationTimeline =
  #| (self) => self

///|
pub extern "js" fn DocumentTimeline::new(
  options : DocumentTimelineOptions,
) -> DocumentTimeline =
  #| (options) => new DocumentTimeline(options)

///|
/// Animation interface
pub type Animation

///|
pub extern "js" fn Animation::to_js_value(self : Animation) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Animation (unchecked)
pub extern "js" fn Animation::from_js_value(v : JsValue) -> Animation =
  #| (v) => v

///|
/// Safely cast JsValue to Animation (checked with instanceof)
pub extern "js" fn Animation::from_js_value_opt(v : JsValue) -> Animation? =
  #| (v) => (v instanceof Animation) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Animation (checked with instanceof)
pub extern "js" fn JsValue::as_animation(self : JsValue) -> Animation? =
  #| (self) => (self instanceof Animation) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Animation (unchecked)
pub extern "js" fn JsValue::to_animation(self : JsValue) -> Animation =
  #| (self) => self

///|
pub extern "js" fn Animation::to_event_target(self : Animation) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn Animation::as_worklet_animation(
  self : Animation,
) -> WorkletAnimation? =
  #| (self) => (self instanceof WorkletAnimation) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Animation::as_shadow_animation(
  self : Animation,
) -> ShadowAnimation? =
  #| (self) => (self instanceof ShadowAnimation) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Animation::as_css_animation(
  self : Animation,
) -> CSSAnimation? =
  #| (self) => (self instanceof CSSAnimation) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Animation::as_css_transition(
  self : Animation,
) -> CSSTransition? =
  #| (self) => (self instanceof CSSTransition) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Animation::new(
  effect : AnimationEffect?,
  timeline : AnimationTimeline?,
) -> Animation =
  #| (effect, timeline) => new Animation(effect, timeline)

///|
pub extern "js" fn Animation::get_id(self : Animation) -> String =
  #| (self) => self.id

///|
pub extern "js" fn Animation::set_id(self : Animation, value : String) -> Unit =
  #| (self, value) => { self.id = value }

///|
pub extern "js" fn Animation::get_effect(self : Animation) -> AnimationEffect? =
  #| (self) => { const v = self.effect; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn Animation::set_effect(
  self : Animation,
  value : AnimationEffect?,
) -> Unit =
  #| (self, value) => { self.effect = value }

///|
pub extern "js" fn Animation::get_timeline(
  self : Animation,
) -> AnimationTimeline? =
  #| (self) => { const v = self.timeline; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn Animation::set_timeline(
  self : Animation,
  value : AnimationTimeline?,
) -> Unit =
  #| (self, value) => { self.timeline = value }

///|
pub extern "js" fn Animation::get_playback_rate(self : Animation) -> Double =
  #| (self) => self.playbackRate

///|
pub extern "js" fn Animation::set_playback_rate(
  self : Animation,
  value : Double,
) -> Unit =
  #| (self, value) => { self.playbackRate = value }

///|
pub extern "js" fn Animation::get_play_state(
  self : Animation,
) -> AnimationPlayState =
  #| (self) => self.playState

///|
pub extern "js" fn Animation::get_replace_state(
  self : Animation,
) -> AnimationReplaceState =
  #| (self) => self.replaceState

///|
pub extern "js" fn Animation::get_pending(self : Animation) -> Bool =
  #| (self) => self.pending

///|
pub extern "js" fn Animation::get_ready(self : Animation) -> Promise[Animation] =
  #| (self) => self.ready

///|
pub extern "js" fn Animation::get_finished(
  self : Animation,
) -> Promise[Animation] =
  #| (self) => self.finished

///|
pub extern "js" fn Animation::get_onfinish(self : Animation) -> EventHandler =
  #| (self) => self.onfinish

///|
pub extern "js" fn Animation::set_onfinish(
  self : Animation,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onfinish = value }

///|
pub extern "js" fn Animation::get_oncancel(self : Animation) -> EventHandler =
  #| (self) => self.oncancel

///|
pub extern "js" fn Animation::set_oncancel(
  self : Animation,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncancel = value }

///|
pub extern "js" fn Animation::get_onremove(self : Animation) -> EventHandler =
  #| (self) => self.onremove

///|
pub extern "js" fn Animation::set_onremove(
  self : Animation,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onremove = value }

///|
pub extern "js" fn Animation::cancel(self : Animation) -> Unit =
  #| (self) => self.cancel()

///|
pub extern "js" fn Animation::finish(self : Animation) -> Unit =
  #| (self) => self.finish()

///|
pub extern "js" fn Animation::play(self : Animation) -> Unit =
  #| (self) => self.play()

///|
pub extern "js" fn Animation::pause(self : Animation) -> Unit =
  #| (self) => self.pause()

///|
pub extern "js" fn Animation::update_playback_rate(
  self : Animation,
  playback_rate : Double,
) -> Unit =
  #| (self, playback_rate) => self.updatePlaybackRate(playback_rate)

///|
pub extern "js" fn Animation::reverse(self : Animation) -> Unit =
  #| (self) => self.reverse()

///|
pub extern "js" fn Animation::persist(self : Animation) -> Unit =
  #| (self) => self.persist()

///|
pub extern "js" fn Animation::commit_styles(self : Animation) -> Unit =
  #| (self) => self.commitStyles()

///|
pub extern "js" fn Animation::get_start_time(self : Animation) -> CSSNumberish? =
  #| (self) => { const v = self.startTime; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn Animation::set_start_time(
  self : Animation,
  value : CSSNumberish?,
) -> Unit =
  #| (self, value) => { self.startTime = value }

///|
pub extern "js" fn Animation::get_current_time(
  self : Animation,
) -> CSSNumberish? =
  #| (self) => { const v = self.currentTime; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn Animation::set_current_time(
  self : Animation,
  value : CSSNumberish?,
) -> Unit =
  #| (self, value) => { self.currentTime = value }

///|
pub extern "js" fn Animation::get_trigger(
  self : Animation,
) -> AnimationTrigger? =
  #| (self) => { const v = self.trigger; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn Animation::set_trigger(
  self : Animation,
  value : AnimationTrigger?,
) -> Unit =
  #| (self, value) => { self.trigger = value }

///|
pub extern "js" fn Animation::get_overall_progress(self : Animation) -> Double? =
  #| (self) => { const v = self.overallProgress; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
/// AnimationEffect interface
pub type AnimationEffect

///|
pub extern "js" fn AnimationEffect::to_js_value(
  self : AnimationEffect,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AnimationEffect (unchecked)
pub extern "js" fn AnimationEffect::from_js_value(
  v : JsValue,
) -> AnimationEffect =
  #| (v) => v

///|
/// Safely cast JsValue to AnimationEffect (checked with instanceof)
pub extern "js" fn AnimationEffect::from_js_value_opt(
  v : JsValue,
) -> AnimationEffect? =
  #| (v) => (v instanceof AnimationEffect) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AnimationEffect (checked with instanceof)
pub extern "js" fn JsValue::as_animation_effect(
  self : JsValue,
) -> AnimationEffect? =
  #| (self) => (self instanceof AnimationEffect) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AnimationEffect (unchecked)
pub extern "js" fn JsValue::to_animation_effect(
  self : JsValue,
) -> AnimationEffect =
  #| (self) => self

///|
pub extern "js" fn AnimationEffect::as_keyframe_effect(
  self : AnimationEffect,
) -> KeyframeEffect? =
  #| (self) => (self instanceof KeyframeEffect) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AnimationEffect::get_timing(
  self : AnimationEffect,
) -> EffectTiming =
  #| (self) => self.getTiming()

///|
pub extern "js" fn AnimationEffect::get_computed_timing(
  self : AnimationEffect,
) -> ComputedEffectTiming =
  #| (self) => self.getComputedTiming()

///|
pub extern "js" fn AnimationEffect::update_timing(
  self : AnimationEffect,
) -> Unit =
  #| (self) => self.updateTiming()

///|
pub extern "js" fn AnimationEffect::update_timing_with_timing(
  self : AnimationEffect,
  timing : OptionalEffectTiming,
) -> Unit =
  #| (self, timing) => self.updateTiming(timing)

///|
pub extern "js" fn AnimationEffect::get_parent(
  self : AnimationEffect,
) -> GroupEffect? =
  #| (self) => { const v = self.parent; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn AnimationEffect::get_previous_sibling(
  self : AnimationEffect,
) -> AnimationEffect? =
  #| (self) => { const v = self.previousSibling; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn AnimationEffect::get_next_sibling(
  self : AnimationEffect,
) -> AnimationEffect? =
  #| (self) => { const v = self.nextSibling; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn AnimationEffect::before(
  self : AnimationEffect,
  effects : AnimationEffect,
) -> Unit =
  #| (self, effects) => self.before(effects)

///|
pub extern "js" fn AnimationEffect::after(
  self : AnimationEffect,
  effects : AnimationEffect,
) -> Unit =
  #| (self, effects) => self.after(effects)

///|
pub extern "js" fn AnimationEffect::replace(
  self : AnimationEffect,
  effects : AnimationEffect,
) -> Unit =
  #| (self, effects) => self.replace(effects)

///|
pub extern "js" fn AnimationEffect::remove(self : AnimationEffect) -> Unit =
  #| (self) => self.remove()

///|
/// KeyframeEffect interface
pub type KeyframeEffect

///|
pub extern "js" fn KeyframeEffect::to_js_value(
  self : KeyframeEffect,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to KeyframeEffect (unchecked)
pub extern "js" fn KeyframeEffect::from_js_value(v : JsValue) -> KeyframeEffect =
  #| (v) => v

///|
/// Safely cast JsValue to KeyframeEffect (checked with instanceof)
pub extern "js" fn KeyframeEffect::from_js_value_opt(
  v : JsValue,
) -> KeyframeEffect? =
  #| (v) => (v instanceof KeyframeEffect) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to KeyframeEffect (checked with instanceof)
pub extern "js" fn JsValue::as_keyframe_effect(
  self : JsValue,
) -> KeyframeEffect? =
  #| (self) => (self instanceof KeyframeEffect) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to KeyframeEffect (unchecked)
pub extern "js" fn JsValue::to_keyframe_effect(
  self : JsValue,
) -> KeyframeEffect =
  #| (self) => self

///|
pub extern "js" fn KeyframeEffect::to_animation_effect(
  self : KeyframeEffect,
) -> AnimationEffect =
  #| (self) => self

///|
pub extern "js" fn KeyframeEffect::new(
  target : Element?,
  keyframes : JsValue?,
  options : DoubleOrKeyframeEffectOptions,
) -> KeyframeEffect =
  #| (target, keyframes, options) => new KeyframeEffect(target, keyframes, options)

///|
pub extern "js" fn KeyframeEffect::get_target(
  self : KeyframeEffect,
) -> Element? =
  #| (self) => { const v = self.target; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn KeyframeEffect::set_target(
  self : KeyframeEffect,
  value : Element?,
) -> Unit =
  #| (self, value) => { self.target = value }

///|
pub extern "js" fn KeyframeEffect::get_pseudo_element(
  self : KeyframeEffect,
) -> CSSOMString? =
  #| (self) => { const v = self.pseudoElement; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn KeyframeEffect::set_pseudo_element(
  self : KeyframeEffect,
  value : CSSOMString?,
) -> Unit =
  #| (self, value) => { self.pseudoElement = value }

///|
pub extern "js" fn KeyframeEffect::get_composite(
  self : KeyframeEffect,
) -> CompositeOperation =
  #| (self) => self.composite

///|
pub extern "js" fn KeyframeEffect::set_composite(
  self : KeyframeEffect,
  value : CompositeOperation,
) -> Unit =
  #| (self, value) => { self.composite = value }

///|
pub extern "js" fn KeyframeEffect::get_keyframes(
  self : KeyframeEffect,
) -> Array[JsValue] =
  #| (self) => self.getKeyframes()

///|
pub extern "js" fn KeyframeEffect::set_keyframes(
  self : KeyframeEffect,
  keyframes : JsValue?,
) -> Unit =
  #| (self, keyframes) => self.setKeyframes(keyframes)

///|
pub extern "js" fn KeyframeEffect::get_iteration_composite(
  self : KeyframeEffect,
) -> IterationCompositeOperation =
  #| (self) => self.iterationComposite

///|
pub extern "js" fn KeyframeEffect::set_iteration_composite(
  self : KeyframeEffect,
  value : IterationCompositeOperation,
) -> Unit =
  #| (self, value) => { self.iterationComposite = value }
