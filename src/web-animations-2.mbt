// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/web-animations-2

///|
/// IterationCompositeOperation enum
pub(all) enum IterationCompositeOperation {
  Replace
  Accumulate
} derive(Eq, Show)

///|
/// Convert to string value
pub fn IterationCompositeOperation::to_string(
  self : IterationCompositeOperation,
) -> String {
  match self {
    IterationCompositeOperation::Replace => "replace"
    IterationCompositeOperation::Accumulate => "accumulate"
  }
}

///|
/// Parse from string value
pub fn IterationCompositeOperation::from_string(
  s : String,
) -> IterationCompositeOperation? {
  match s {
    "replace" => Some(IterationCompositeOperation::Replace)
    "accumulate" => Some(IterationCompositeOperation::Accumulate)
    _ => None
  }
}

///|
/// AnimationTriggerBehavior enum
pub(all) enum AnimationTriggerBehavior {
  Once
  Repeat
  Alternate
  State
} derive(Eq, Show)

///|
/// Convert to string value
pub fn AnimationTriggerBehavior::to_string(
  self : AnimationTriggerBehavior,
) -> String {
  match self {
    AnimationTriggerBehavior::Once => "once"
    AnimationTriggerBehavior::Repeat => "repeat"
    AnimationTriggerBehavior::Alternate => "alternate"
    AnimationTriggerBehavior::State => "state"
  }
}

///|
/// Parse from string value
pub fn AnimationTriggerBehavior::from_string(
  s : String,
) -> AnimationTriggerBehavior? {
  match s {
    "once" => Some(AnimationTriggerBehavior::Once)
    "repeat" => Some(AnimationTriggerBehavior::Repeat)
    "alternate" => Some(AnimationTriggerBehavior::Alternate)
    "state" => Some(AnimationTriggerBehavior::State)
    _ => None
  }
}

///|
/// EffectCallback callback interface
pub type EffectCallback

///|
/// Create EffectCallback from a MoonBit function
pub extern "js" fn EffectCallback::from_fn(
  handler : (Double?, ElementOrCSSPseudoElement, Animation) -> Unit,
) -> EffectCallback =
  #| (handler) => (a0, a1, a2) => handler(a0, a1, a2)

///|
/// EffectTiming dictionary
pub(all) struct EffectTiming {
  delay : Double?
  endDelay : Double?
  playbackRate : Double?
  duration : DoubleOrCSSNumericValueOrString?
  fill : FillMode?
  iterationStart : Double?
  iterations : Double?
  direction : PlaybackDirection?
  easing : String?
}

///|
/// Create a new EffectTiming with default values
pub fn EffectTiming::default() -> EffectTiming {
  EffectTiming::{
    delay: None,
    endDelay: None,
    playbackRate: None,
    duration: None,
    fill: None,
    iterationStart: None,
    iterations: None,
    direction: None,
    easing: None,
  }
}

///|
extern "js" fn EffectTiming::to_js_ffi(self : EffectTiming) -> JsValue =
  #| (self) => ({
  #|   delay: self.delay,
  #|   endDelay: self.endDelay,
  #|   playbackRate: self.playbackRate,
  #|   duration: ((() => { const v = self.duration; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   fill: ((() => { const v = self.fill; if (v === undefined) return undefined; return ['none', 'forwards', 'backwards', 'both', 'auto'][v]; })()),
  #|   iterationStart: self.iterationStart,
  #|   iterations: self.iterations,
  #|   direction: ((() => { const v = self.direction; if (v === undefined) return undefined; return ['normal', 'reverse', 'alternate', 'alternate-reverse'][v]; })()),
  #|   easing: self.easing
  #| })

///|
/// Convert to JsValue
pub fn EffectTiming::to_js(self : EffectTiming) -> JsValue {
  EffectTiming::to_js_ffi(self)
}

///|
extern "js" fn EffectTiming::from_js_ffi(value : JsValue) -> EffectTiming =
  #| (v) => ({
  #|   delay: v.delay,
  #|   endDelay: v.endDelay,
  #|   playbackRate: v.playbackRate,
  #|   duration: (v.duration === undefined ? { $tag: 0 } : { $tag: 1, _0: v.duration }),
  #|   fill: (v.fill === undefined ? undefined : ['none', 'forwards', 'backwards', 'both', 'auto'].indexOf(v.fill)),
  #|   iterationStart: v.iterationStart,
  #|   iterations: v.iterations,
  #|   direction: (v.direction === undefined ? undefined : ['normal', 'reverse', 'alternate', 'alternate-reverse'].indexOf(v.direction)),
  #|   easing: v.easing
  #| })

///|
/// Convert from JsValue
pub fn EffectTiming::from_js(value : JsValue) -> EffectTiming {
  EffectTiming::from_js_ffi(value)
}

///|
/// OptionalEffectTiming dictionary
pub(all) struct OptionalEffectTiming {
  playbackRate : Double?
  delay : Double?
  endDelay : Double?
  fill : FillMode?
  iterationStart : Double?
  iterations : Double?
  duration : DoubleOrString?
  direction : PlaybackDirection?
  easing : String?
}

///|
/// Create a new OptionalEffectTiming with default values
pub fn OptionalEffectTiming::default() -> OptionalEffectTiming {
  OptionalEffectTiming::{
    playbackRate: None,
    delay: None,
    endDelay: None,
    fill: None,
    iterationStart: None,
    iterations: None,
    duration: None,
    direction: None,
    easing: None,
  }
}

///|
extern "js" fn OptionalEffectTiming::to_js_ffi(
  self : OptionalEffectTiming,
) -> JsValue =
  #| (self) => ({
  #|   playbackRate: self.playbackRate,
  #|   delay: self.delay,
  #|   endDelay: self.endDelay,
  #|   fill: ((() => { const v = self.fill; if (v === undefined) return undefined; return ['none', 'forwards', 'backwards', 'both', 'auto'][v]; })()),
  #|   iterationStart: self.iterationStart,
  #|   iterations: self.iterations,
  #|   duration: ((() => { const v = self.duration; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   direction: ((() => { const v = self.direction; if (v === undefined) return undefined; return ['normal', 'reverse', 'alternate', 'alternate-reverse'][v]; })()),
  #|   easing: self.easing
  #| })

///|
/// Convert to JsValue
pub fn OptionalEffectTiming::to_js(self : OptionalEffectTiming) -> JsValue {
  OptionalEffectTiming::to_js_ffi(self)
}

///|
extern "js" fn OptionalEffectTiming::from_js_ffi(
  value : JsValue,
) -> OptionalEffectTiming =
  #| (v) => ({
  #|   playbackRate: v.playbackRate,
  #|   delay: v.delay,
  #|   endDelay: v.endDelay,
  #|   fill: (v.fill === undefined ? undefined : ['none', 'forwards', 'backwards', 'both', 'auto'].indexOf(v.fill)),
  #|   iterationStart: v.iterationStart,
  #|   iterations: v.iterations,
  #|   duration: (v.duration === undefined ? { $tag: 0 } : { $tag: 1, _0: v.duration }),
  #|   direction: (v.direction === undefined ? undefined : ['normal', 'reverse', 'alternate', 'alternate-reverse'].indexOf(v.direction)),
  #|   easing: v.easing
  #| })

///|
/// Convert from JsValue
pub fn OptionalEffectTiming::from_js(value : JsValue) -> OptionalEffectTiming {
  OptionalEffectTiming::from_js_ffi(value)
}

///|
/// ComputedEffectTiming dictionary
pub(all) struct ComputedEffectTiming {
  delay : Double?
  endDelay : Double?
  playbackRate : Double?
  duration : DoubleOrCSSNumericValueOrString?
  fill : FillMode?
  iterationStart : Double?
  iterations : Double?
  direction : PlaybackDirection?
  easing : String?
  startTime : CSSNumberish?
  endTime : CSSNumberish?
  activeDuration : CSSNumberish?
  localTime : Nullable[CSSNumberish]
  progress : Nullable[Double]
  currentIteration : Nullable[Double]
}

///|
/// Create a new ComputedEffectTiming with default values
pub fn ComputedEffectTiming::default() -> ComputedEffectTiming {
  ComputedEffectTiming::{
    delay: None,
    endDelay: None,
    playbackRate: None,
    duration: None,
    fill: None,
    iterationStart: None,
    iterations: None,
    direction: None,
    easing: None,
    startTime: None,
    endTime: None,
    activeDuration: None,
    localTime: Nullable::Undefined,
    progress: Nullable::Undefined,
    currentIteration: Nullable::Undefined,
  }
}

///|
extern "js" fn ComputedEffectTiming::to_js_ffi(
  self : ComputedEffectTiming,
) -> JsValue =
  #| (self) => ({
  #|   delay: self.delay,
  #|   endDelay: self.endDelay,
  #|   playbackRate: self.playbackRate,
  #|   duration: ((() => { const v = self.duration; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   fill: ((() => { const v = self.fill; if (v === undefined) return undefined; return ['none', 'forwards', 'backwards', 'both', 'auto'][v]; })()),
  #|   iterationStart: self.iterationStart,
  #|   iterations: self.iterations,
  #|   direction: ((() => { const v = self.direction; if (v === undefined) return undefined; return ['normal', 'reverse', 'alternate', 'alternate-reverse'][v]; })()),
  #|   easing: self.easing,
  #|   startTime: ((() => { const v = self.startTime; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   endTime: ((() => { const v = self.endTime; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   activeDuration: ((() => { const v = self.activeDuration; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   localTime: ((() => { const v = self.localTime; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0.to_js_value(); })()),
  #|   progress: ((() => { const v = self.progress; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   currentIteration: ((() => { const v = self.currentIteration; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn ComputedEffectTiming::to_js(self : ComputedEffectTiming) -> JsValue {
  ComputedEffectTiming::to_js_ffi(self)
}

///|
extern "js" fn ComputedEffectTiming::from_js_ffi(
  value : JsValue,
) -> ComputedEffectTiming =
  #| (v) => ({
  #|   delay: v.delay,
  #|   endDelay: v.endDelay,
  #|   playbackRate: v.playbackRate,
  #|   duration: (v.duration === undefined ? { $tag: 0 } : { $tag: 1, _0: v.duration }),
  #|   fill: (v.fill === undefined ? undefined : ['none', 'forwards', 'backwards', 'both', 'auto'].indexOf(v.fill)),
  #|   iterationStart: v.iterationStart,
  #|   iterations: v.iterations,
  #|   direction: (v.direction === undefined ? undefined : ['normal', 'reverse', 'alternate', 'alternate-reverse'].indexOf(v.direction)),
  #|   easing: v.easing,
  #|   startTime: (v.startTime === undefined ? { $tag: 0 } : { $tag: 1, _0: v.startTime }),
  #|   endTime: (v.endTime === undefined ? { $tag: 0 } : { $tag: 1, _0: v.endTime }),
  #|   activeDuration: (v.activeDuration === undefined ? { $tag: 0 } : { $tag: 1, _0: v.activeDuration }),
  #|   localTime: (v.localTime === undefined ? { $tag: 0 } : v.localTime === null ? { $tag: 1 } : { $tag: 2, _0: v.localTime }),
  #|   progress: (v.progress === undefined ? { $tag: 0 } : v.progress === null ? { $tag: 1 } : { $tag: 2, _0: v.progress }),
  #|   currentIteration: (v.currentIteration === undefined ? { $tag: 0 } : v.currentIteration === null ? { $tag: 1 } : { $tag: 2, _0: v.currentIteration })
  #| })

///|
/// Convert from JsValue
pub fn ComputedEffectTiming::from_js(value : JsValue) -> ComputedEffectTiming {
  ComputedEffectTiming::from_js_ffi(value)
}

///|
/// KeyframeEffectOptions dictionary
pub(all) struct KeyframeEffectOptions {
  delay : Double?
  endDelay : Double?
  playbackRate : Double?
  duration : DoubleOrCSSNumericValueOrString?
  fill : FillMode?
  iterationStart : Double?
  iterations : Double?
  direction : PlaybackDirection?
  easing : String?
  iterationComposite : IterationCompositeOperation?
  composite : CompositeOperation?
  pseudoElement : Nullable[String]
}

///|
/// Create a new KeyframeEffectOptions with default values
pub fn KeyframeEffectOptions::default() -> KeyframeEffectOptions {
  KeyframeEffectOptions::{
    delay: None,
    endDelay: None,
    playbackRate: None,
    duration: None,
    fill: None,
    iterationStart: None,
    iterations: None,
    direction: None,
    easing: None,
    iterationComposite: None,
    composite: None,
    pseudoElement: Nullable::Undefined,
  }
}

///|
extern "js" fn KeyframeEffectOptions::to_js_ffi(
  self : KeyframeEffectOptions,
) -> JsValue =
  #| (self) => ({
  #|   delay: self.delay,
  #|   endDelay: self.endDelay,
  #|   playbackRate: self.playbackRate,
  #|   duration: ((() => { const v = self.duration; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   fill: ((() => { const v = self.fill; if (v === undefined) return undefined; return ['none', 'forwards', 'backwards', 'both', 'auto'][v]; })()),
  #|   iterationStart: self.iterationStart,
  #|   iterations: self.iterations,
  #|   direction: ((() => { const v = self.direction; if (v === undefined) return undefined; return ['normal', 'reverse', 'alternate', 'alternate-reverse'][v]; })()),
  #|   easing: self.easing,
  #|   iterationComposite: ((() => { const v = self.iterationComposite; if (v === undefined) return undefined; return ['replace', 'accumulate'][v]; })()),
  #|   composite: ((() => { const v = self.composite; if (v === undefined) return undefined; return ['replace', 'add', 'accumulate'][v]; })()),
  #|   pseudoElement: ((() => { const v = self.pseudoElement; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn KeyframeEffectOptions::to_js(self : KeyframeEffectOptions) -> JsValue {
  KeyframeEffectOptions::to_js_ffi(self)
}

///|
extern "js" fn KeyframeEffectOptions::from_js_ffi(
  value : JsValue,
) -> KeyframeEffectOptions =
  #| (v) => ({
  #|   delay: v.delay,
  #|   endDelay: v.endDelay,
  #|   playbackRate: v.playbackRate,
  #|   duration: (v.duration === undefined ? { $tag: 0 } : { $tag: 1, _0: v.duration }),
  #|   fill: (v.fill === undefined ? undefined : ['none', 'forwards', 'backwards', 'both', 'auto'].indexOf(v.fill)),
  #|   iterationStart: v.iterationStart,
  #|   iterations: v.iterations,
  #|   direction: (v.direction === undefined ? undefined : ['normal', 'reverse', 'alternate', 'alternate-reverse'].indexOf(v.direction)),
  #|   easing: v.easing,
  #|   iterationComposite: (v.iterationComposite === undefined ? undefined : ['replace', 'accumulate'].indexOf(v.iterationComposite)),
  #|   composite: (v.composite === undefined ? undefined : ['replace', 'add', 'accumulate'].indexOf(v.composite)),
  #|   pseudoElement: (v.pseudoElement === undefined ? { $tag: 0 } : v.pseudoElement === null ? { $tag: 1 } : { $tag: 2, _0: v.pseudoElement })
  #| })

///|
/// Convert from JsValue
pub fn KeyframeEffectOptions::from_js(value : JsValue) -> KeyframeEffectOptions {
  KeyframeEffectOptions::from_js_ffi(value)
}

///|
/// TimelineRangeOffset dictionary
pub(all) struct TimelineRangeOffset {
  rangeName : Nullable[String]
  offset : CSSNumericValue?
}

///|
/// Create a new TimelineRangeOffset with default values
pub fn TimelineRangeOffset::default() -> TimelineRangeOffset {
  TimelineRangeOffset::{ rangeName: Nullable::Undefined, offset: None }
}

///|
extern "js" fn TimelineRangeOffset::to_js_ffi(
  self : TimelineRangeOffset,
) -> JsValue =
  #| (self) => ({
  #|   rangeName: ((() => { const v = self.rangeName; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   offset: ((() => { const v = self.offset; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn TimelineRangeOffset::to_js(self : TimelineRangeOffset) -> JsValue {
  TimelineRangeOffset::to_js_ffi(self)
}

///|
extern "js" fn TimelineRangeOffset::from_js_ffi(
  value : JsValue,
) -> TimelineRangeOffset =
  #| (v) => ({
  #|   rangeName: (v.rangeName === undefined ? { $tag: 0 } : v.rangeName === null ? { $tag: 1 } : { $tag: 2, _0: v.rangeName }),
  #|   offset: (v.offset === undefined ? { $tag: 0 } : { $tag: 1, _0: v.offset })
  #| })

///|
/// Convert from JsValue
pub fn TimelineRangeOffset::from_js(value : JsValue) -> TimelineRangeOffset {
  TimelineRangeOffset::from_js_ffi(value)
}

///|
/// KeyframeAnimationOptions dictionary
pub(all) struct KeyframeAnimationOptions {
  delay : Double?
  endDelay : Double?
  playbackRate : Double?
  duration : DoubleOrCSSNumericValueOrString?
  fill : FillMode?
  iterationStart : Double?
  iterations : Double?
  direction : PlaybackDirection?
  easing : String?
  iterationComposite : IterationCompositeOperation?
  composite : CompositeOperation?
  pseudoElement : Nullable[String]
  rangeStart : TimelineRangeOffsetOrCSSNumericValueOrCSSKeywordValueOrString?
  rangeEnd : TimelineRangeOffsetOrCSSNumericValueOrCSSKeywordValueOrString?
  trigger : Nullable[AnimationTrigger]
  id : String?
  timeline : Nullable[AnimationTimeline]
}

///|
/// Create a new KeyframeAnimationOptions with default values
pub fn KeyframeAnimationOptions::default() -> KeyframeAnimationOptions {
  KeyframeAnimationOptions::{
    delay: None,
    endDelay: None,
    playbackRate: None,
    duration: None,
    fill: None,
    iterationStart: None,
    iterations: None,
    direction: None,
    easing: None,
    iterationComposite: None,
    composite: None,
    pseudoElement: Nullable::Undefined,
    rangeStart: None,
    rangeEnd: None,
    trigger: Nullable::Undefined,
    id: None,
    timeline: Nullable::Undefined,
  }
}

///|
extern "js" fn KeyframeAnimationOptions::to_js_ffi(
  self : KeyframeAnimationOptions,
) -> JsValue =
  #| (self) => ({
  #|   delay: self.delay,
  #|   endDelay: self.endDelay,
  #|   playbackRate: self.playbackRate,
  #|   duration: ((() => { const v = self.duration; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   fill: ((() => { const v = self.fill; if (v === undefined) return undefined; return ['none', 'forwards', 'backwards', 'both', 'auto'][v]; })()),
  #|   iterationStart: self.iterationStart,
  #|   iterations: self.iterations,
  #|   direction: ((() => { const v = self.direction; if (v === undefined) return undefined; return ['normal', 'reverse', 'alternate', 'alternate-reverse'][v]; })()),
  #|   easing: self.easing,
  #|   iterationComposite: ((() => { const v = self.iterationComposite; if (v === undefined) return undefined; return ['replace', 'accumulate'][v]; })()),
  #|   composite: ((() => { const v = self.composite; if (v === undefined) return undefined; return ['replace', 'add', 'accumulate'][v]; })()),
  #|   pseudoElement: ((() => { const v = self.pseudoElement; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   rangeStart: ((() => { const v = self.rangeStart; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   rangeEnd: ((() => { const v = self.rangeEnd; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   trigger: ((() => { const v = self.trigger; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   id: self.id,
  #|   timeline: ((() => { const v = self.timeline; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn KeyframeAnimationOptions::to_js(
  self : KeyframeAnimationOptions,
) -> JsValue {
  KeyframeAnimationOptions::to_js_ffi(self)
}

///|
extern "js" fn KeyframeAnimationOptions::from_js_ffi(
  value : JsValue,
) -> KeyframeAnimationOptions =
  #| (v) => ({
  #|   delay: v.delay,
  #|   endDelay: v.endDelay,
  #|   playbackRate: v.playbackRate,
  #|   duration: (v.duration === undefined ? { $tag: 0 } : { $tag: 1, _0: v.duration }),
  #|   fill: (v.fill === undefined ? undefined : ['none', 'forwards', 'backwards', 'both', 'auto'].indexOf(v.fill)),
  #|   iterationStart: v.iterationStart,
  #|   iterations: v.iterations,
  #|   direction: (v.direction === undefined ? undefined : ['normal', 'reverse', 'alternate', 'alternate-reverse'].indexOf(v.direction)),
  #|   easing: v.easing,
  #|   iterationComposite: (v.iterationComposite === undefined ? undefined : ['replace', 'accumulate'].indexOf(v.iterationComposite)),
  #|   composite: (v.composite === undefined ? undefined : ['replace', 'add', 'accumulate'].indexOf(v.composite)),
  #|   pseudoElement: (v.pseudoElement === undefined ? { $tag: 0 } : v.pseudoElement === null ? { $tag: 1 } : { $tag: 2, _0: v.pseudoElement }),
  #|   rangeStart: (v.rangeStart === undefined ? { $tag: 0 } : { $tag: 1, _0: v.rangeStart }),
  #|   rangeEnd: (v.rangeEnd === undefined ? { $tag: 0 } : { $tag: 1, _0: v.rangeEnd }),
  #|   trigger: (v.trigger === undefined ? { $tag: 0 } : v.trigger === null ? { $tag: 1 } : { $tag: 2, _0: v.trigger }),
  #|   id: v.id,
  #|   timeline: (v.timeline === undefined ? { $tag: 0 } : v.timeline === null ? { $tag: 1 } : { $tag: 2, _0: v.timeline })
  #| })

///|
/// Convert from JsValue
pub fn KeyframeAnimationOptions::from_js(
  value : JsValue,
) -> KeyframeAnimationOptions {
  KeyframeAnimationOptions::from_js_ffi(value)
}

///|
/// AnimationPlaybackEventInit dictionary
pub(all) struct AnimationPlaybackEventInit {
  currentTime : Nullable[CSSNumberish]
  timelineTime : Nullable[CSSNumberish]
}

///|
/// Create a new AnimationPlaybackEventInit with default values
pub fn AnimationPlaybackEventInit::default() -> AnimationPlaybackEventInit {
  AnimationPlaybackEventInit::{
    currentTime: Nullable::Undefined,
    timelineTime: Nullable::Undefined,
  }
}

///|
extern "js" fn AnimationPlaybackEventInit::to_js_ffi(
  self : AnimationPlaybackEventInit,
) -> JsValue =
  #| (self) => ({
  #|   currentTime: ((() => { const v = self.currentTime; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0.to_js_value(); })()),
  #|   timelineTime: ((() => { const v = self.timelineTime; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0.to_js_value(); })())
  #| })

///|
/// Convert to JsValue
pub fn AnimationPlaybackEventInit::to_js(
  self : AnimationPlaybackEventInit,
) -> JsValue {
  AnimationPlaybackEventInit::to_js_ffi(self)
}

///|
extern "js" fn AnimationPlaybackEventInit::from_js_ffi(
  value : JsValue,
) -> AnimationPlaybackEventInit =
  #| (v) => ({
  #|   currentTime: (v.currentTime === undefined ? { $tag: 0 } : v.currentTime === null ? { $tag: 1 } : { $tag: 2, _0: v.currentTime }),
  #|   timelineTime: (v.timelineTime === undefined ? { $tag: 0 } : v.timelineTime === null ? { $tag: 1 } : { $tag: 2, _0: v.timelineTime })
  #| })

///|
/// Convert from JsValue
pub fn AnimationPlaybackEventInit::from_js(
  value : JsValue,
) -> AnimationPlaybackEventInit {
  AnimationPlaybackEventInit::from_js_ffi(value)
}

///|
/// AnimationTriggerOptions dictionary
pub(all) struct AnimationTriggerOptions {
  timeline : Nullable[AnimationTimeline]
  behavior : Nullable[AnimationTriggerBehavior]
  rangeStart : TimelineRangeOffsetOrCSSNumericValueOrCSSKeywordValueOrString?
  rangeEnd : TimelineRangeOffsetOrCSSNumericValueOrCSSKeywordValueOrString?
  exitRangeStart : TimelineRangeOffsetOrCSSNumericValueOrCSSKeywordValueOrString?
  exitRangeEnd : TimelineRangeOffsetOrCSSNumericValueOrCSSKeywordValueOrString?
}

///|
/// Create a new AnimationTriggerOptions with default values
pub fn AnimationTriggerOptions::default() -> AnimationTriggerOptions {
  AnimationTriggerOptions::{
    timeline: Nullable::Undefined,
    behavior: Nullable::Undefined,
    rangeStart: None,
    rangeEnd: None,
    exitRangeStart: None,
    exitRangeEnd: None,
  }
}

///|
extern "js" fn AnimationTriggerOptions::to_js_ffi(
  self : AnimationTriggerOptions,
) -> JsValue =
  #| (self) => ({
  #|   timeline: ((() => { const v = self.timeline; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   behavior: ((() => { const v = self.behavior; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return ['once', 'repeat', 'alternate', 'state'][v._0]; })()),
  #|   rangeStart: ((() => { const v = self.rangeStart; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   rangeEnd: ((() => { const v = self.rangeEnd; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   exitRangeStart: ((() => { const v = self.exitRangeStart; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   exitRangeEnd: ((() => { const v = self.exitRangeEnd; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn AnimationTriggerOptions::to_js(
  self : AnimationTriggerOptions,
) -> JsValue {
  AnimationTriggerOptions::to_js_ffi(self)
}

///|
extern "js" fn AnimationTriggerOptions::from_js_ffi(
  value : JsValue,
) -> AnimationTriggerOptions =
  #| (v) => ({
  #|   timeline: (v.timeline === undefined ? { $tag: 0 } : v.timeline === null ? { $tag: 1 } : { $tag: 2, _0: v.timeline }),
  #|   behavior: (v.behavior === undefined ? { $tag: 0 } : v.behavior === null ? { $tag: 1 } : { $tag: 2, _0: ['once', 'repeat', 'alternate', 'state'].indexOf(v.behavior) }),
  #|   rangeStart: (v.rangeStart === undefined ? { $tag: 0 } : { $tag: 1, _0: v.rangeStart }),
  #|   rangeEnd: (v.rangeEnd === undefined ? { $tag: 0 } : { $tag: 1, _0: v.rangeEnd }),
  #|   exitRangeStart: (v.exitRangeStart === undefined ? { $tag: 0 } : { $tag: 1, _0: v.exitRangeStart }),
  #|   exitRangeEnd: (v.exitRangeEnd === undefined ? { $tag: 0 } : { $tag: 1, _0: v.exitRangeEnd })
  #| })

///|
/// Convert from JsValue
pub fn AnimationTriggerOptions::from_js(
  value : JsValue,
) -> AnimationTriggerOptions {
  AnimationTriggerOptions::from_js_ffi(value)
}

///|
/// GroupEffect interface
pub type GroupEffect

///|
pub extern "js" fn GroupEffect::to_js_value(self : GroupEffect) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to GroupEffect (unchecked)
pub extern "js" fn GroupEffect::from_js_value(v : JsValue) -> GroupEffect =
  #| (v) => v

///|
/// Safely cast JsValue to GroupEffect (checked with instanceof)
pub extern "js" fn GroupEffect::from_js_value_opt(v : JsValue) -> GroupEffect? =
  #| (v) => (v instanceof GroupEffect) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GroupEffect (checked with instanceof)
pub extern "js" fn JsValue::as_group_effect(self : JsValue) -> GroupEffect? =
  #| (self) => (self instanceof GroupEffect) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GroupEffect (unchecked)
pub extern "js" fn JsValue::to_group_effect(self : JsValue) -> GroupEffect =
  #| (self) => self

///|
pub extern "js" fn GroupEffect::as_sequence_effect(
  self : GroupEffect,
) -> SequenceEffect? =
  #| (self) => (self instanceof SequenceEffect) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn GroupEffect::new(
  children : Array[AnimationEffect],
) -> GroupEffect =
  #| (children) => new GroupEffect(children)

///|
pub extern "js" fn GroupEffect::new_with_timing(
  children : Array[AnimationEffect],
  timing : DoubleOrEffectTiming,
) -> GroupEffect =
  #| (children, timing) => new GroupEffect(children, timing)

///|
pub extern "js" fn GroupEffect::get_children(
  self : GroupEffect,
) -> AnimationNodeList =
  #| (self) => self.children

///|
pub extern "js" fn GroupEffect::get_first_child(
  self : GroupEffect,
) -> AnimationEffect? =
  #| (self) => (() => { const v = self.firstChild; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn GroupEffect::get_last_child(
  self : GroupEffect,
) -> AnimationEffect? =
  #| (self) => (() => { const v = self.lastChild; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn GroupEffect::clone(self : GroupEffect) -> GroupEffect =
  #| (self) => self.clone()

///|
pub extern "js" fn GroupEffect::prepend(
  self : GroupEffect,
  effects : AnimationEffect,
) -> Unit =
  #| (self, effects) => self.prepend(effects)

///|
pub extern "js" fn GroupEffect::append(
  self : GroupEffect,
  effects : AnimationEffect,
) -> Unit =
  #| (self, effects) => self.append(effects)

///|
/// AnimationNodeList interface
pub type AnimationNodeList

///|
pub extern "js" fn AnimationNodeList::to_js_value(
  self : AnimationNodeList,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AnimationNodeList (unchecked)
pub extern "js" fn AnimationNodeList::from_js_value(
  v : JsValue,
) -> AnimationNodeList =
  #| (v) => v

///|
/// Safely cast JsValue to AnimationNodeList (checked with instanceof)
pub extern "js" fn AnimationNodeList::from_js_value_opt(
  v : JsValue,
) -> AnimationNodeList? =
  #| (v) => (v instanceof AnimationNodeList) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AnimationNodeList (checked with instanceof)
pub extern "js" fn JsValue::as_animation_node_list(
  self : JsValue,
) -> AnimationNodeList? =
  #| (self) => (self instanceof AnimationNodeList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AnimationNodeList (unchecked)
pub extern "js" fn JsValue::to_animation_node_list(
  self : JsValue,
) -> AnimationNodeList =
  #| (self) => self

///|
pub extern "js" fn AnimationNodeList::get_length(
  self : AnimationNodeList,
) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn AnimationNodeList::item(
  self : AnimationNodeList,
  index : Int,
) -> AnimationEffect? =
  #| (self, index) => (() => { const v = self.item(index); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn AnimationNodeList::get(
  self : AnimationNodeList,
  index : Int,
) -> AnimationEffect? =
  #| (self, index) => (() => { const v = self[index]; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// SequenceEffect interface
pub type SequenceEffect

///|
pub extern "js" fn SequenceEffect::to_js_value(
  self : SequenceEffect,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SequenceEffect (unchecked)
pub extern "js" fn SequenceEffect::from_js_value(v : JsValue) -> SequenceEffect =
  #| (v) => v

///|
/// Safely cast JsValue to SequenceEffect (checked with instanceof)
pub extern "js" fn SequenceEffect::from_js_value_opt(
  v : JsValue,
) -> SequenceEffect? =
  #| (v) => (v instanceof SequenceEffect) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SequenceEffect (checked with instanceof)
pub extern "js" fn JsValue::as_sequence_effect(
  self : JsValue,
) -> SequenceEffect? =
  #| (self) => (self instanceof SequenceEffect) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SequenceEffect (unchecked)
pub extern "js" fn JsValue::to_sequence_effect(
  self : JsValue,
) -> SequenceEffect =
  #| (self) => self

///|
pub extern "js" fn SequenceEffect::to_group_effect(
  self : SequenceEffect,
) -> GroupEffect =
  #| (self) => self

///|
pub extern "js" fn SequenceEffect::new(
  children : Array[AnimationEffect],
) -> SequenceEffect =
  #| (children) => new SequenceEffect(children)

///|
pub extern "js" fn SequenceEffect::new_with_timing(
  children : Array[AnimationEffect],
  timing : DoubleOrEffectTiming,
) -> SequenceEffect =
  #| (children, timing) => new SequenceEffect(children, timing)

///|
pub extern "js" fn SequenceEffect::clone(
  self : SequenceEffect,
) -> SequenceEffect =
  #| (self) => self.clone()

///|
/// AnimationPlaybackEvent interface
pub type AnimationPlaybackEvent

///|
pub extern "js" fn AnimationPlaybackEvent::to_js_value(
  self : AnimationPlaybackEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AnimationPlaybackEvent (unchecked)
pub extern "js" fn AnimationPlaybackEvent::from_js_value(
  v : JsValue,
) -> AnimationPlaybackEvent =
  #| (v) => v

///|
/// Safely cast JsValue to AnimationPlaybackEvent (checked with instanceof)
pub extern "js" fn AnimationPlaybackEvent::from_js_value_opt(
  v : JsValue,
) -> AnimationPlaybackEvent? =
  #| (v) => (v instanceof AnimationPlaybackEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AnimationPlaybackEvent (checked with instanceof)
pub extern "js" fn JsValue::as_animation_playback_event(
  self : JsValue,
) -> AnimationPlaybackEvent? =
  #| (self) => (self instanceof AnimationPlaybackEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AnimationPlaybackEvent (unchecked)
pub extern "js" fn JsValue::to_animation_playback_event(
  self : JsValue,
) -> AnimationPlaybackEvent =
  #| (self) => self

///|
pub extern "js" fn AnimationPlaybackEvent::to_event(
  self : AnimationPlaybackEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn AnimationPlaybackEvent::new(
  type_ : String,
) -> AnimationPlaybackEvent =
  #| (type_) => new AnimationPlaybackEvent(type_)

///|
extern "js" fn AnimationPlaybackEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> AnimationPlaybackEvent =
  #| (type_, event_init_dict) => new AnimationPlaybackEvent(type_, event_init_dict)

///|
pub fn AnimationPlaybackEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : AnimationPlaybackEventInit,
) -> AnimationPlaybackEvent {
  AnimationPlaybackEvent::new_with_event_init_dict_ffi(
    type_,
    event_init_dict.to_js(),
  )
}

///|
pub extern "js" fn AnimationPlaybackEvent::get_current_time(
  self : AnimationPlaybackEvent,
) -> CSSNumberish? =
  #| (self) => (() => { const v = self.currentTime; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn AnimationPlaybackEvent::get_timeline_time(
  self : AnimationPlaybackEvent,
) -> CSSNumberish? =
  #| (self) => (() => { const v = self.timelineTime; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// AnimationTrigger interface
pub type AnimationTrigger

///|
pub extern "js" fn AnimationTrigger::to_js_value(
  self : AnimationTrigger,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AnimationTrigger (unchecked)
pub extern "js" fn AnimationTrigger::from_js_value(
  v : JsValue,
) -> AnimationTrigger =
  #| (v) => v

///|
/// Safely cast JsValue to AnimationTrigger (checked with instanceof)
pub extern "js" fn AnimationTrigger::from_js_value_opt(
  v : JsValue,
) -> AnimationTrigger? =
  #| (v) => (v instanceof AnimationTrigger) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AnimationTrigger (checked with instanceof)
pub extern "js" fn JsValue::as_animation_trigger(
  self : JsValue,
) -> AnimationTrigger? =
  #| (self) => (self instanceof AnimationTrigger) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AnimationTrigger (unchecked)
pub extern "js" fn JsValue::to_animation_trigger(
  self : JsValue,
) -> AnimationTrigger =
  #| (self) => self

///|
pub extern "js" fn AnimationTrigger::new() -> AnimationTrigger =
  #| () => new AnimationTrigger()

///|
extern "js" fn AnimationTrigger::new_with_options_ffi(
  options : JsValue,
) -> AnimationTrigger =
  #| (options) => new AnimationTrigger(options)

///|
pub fn AnimationTrigger::new_with_options(
  options : AnimationTriggerOptions,
) -> AnimationTrigger {
  AnimationTrigger::new_with_options_ffi(options.to_js())
}

///|
pub extern "js" fn AnimationTrigger::get_timeline(
  self : AnimationTrigger,
) -> AnimationTimeline =
  #| (self) => self.timeline

///|
pub extern "js" fn AnimationTrigger::set_timeline(
  self : AnimationTrigger,
  value : AnimationTimeline,
) -> Unit =
  #| (self, value) => { self.timeline = value }

///|
pub extern "js" fn AnimationTrigger::get_behavior(
  self : AnimationTrigger,
) -> AnimationTriggerBehavior =
  #| (self) => ['once', 'repeat', 'alternate', 'state'].indexOf(self.behavior)

///|
pub extern "js" fn AnimationTrigger::set_behavior(
  self : AnimationTrigger,
  value : AnimationTriggerBehavior,
) -> Unit =
  #| (self, value) => { self.behavior = ['once', 'repeat', 'alternate', 'state'][value] }

///|
pub extern "js" fn AnimationTrigger::get_range_start(
  self : AnimationTrigger,
) -> JsValue =
  #| (self) => self.rangeStart

///|
pub extern "js" fn AnimationTrigger::set_range_start(
  self : AnimationTrigger,
  value : JsValue,
) -> Unit =
  #| (self, value) => { self.rangeStart = value }

///|
pub extern "js" fn AnimationTrigger::get_range_end(
  self : AnimationTrigger,
) -> JsValue =
  #| (self) => self.rangeEnd

///|
pub extern "js" fn AnimationTrigger::set_range_end(
  self : AnimationTrigger,
  value : JsValue,
) -> Unit =
  #| (self, value) => { self.rangeEnd = value }

///|
pub extern "js" fn AnimationTrigger::get_exit_range_start(
  self : AnimationTrigger,
) -> JsValue =
  #| (self) => self.exitRangeStart

///|
pub extern "js" fn AnimationTrigger::set_exit_range_start(
  self : AnimationTrigger,
  value : JsValue,
) -> Unit =
  #| (self, value) => { self.exitRangeStart = value }

///|
pub extern "js" fn AnimationTrigger::get_exit_range_end(
  self : AnimationTrigger,
) -> JsValue =
  #| (self) => self.exitRangeEnd

///|
pub extern "js" fn AnimationTrigger::set_exit_range_end(
  self : AnimationTrigger,
  value : JsValue,
) -> Unit =
  #| (self, value) => { self.exitRangeEnd = value }
