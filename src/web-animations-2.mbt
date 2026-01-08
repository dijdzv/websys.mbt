// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/web-animations-2

///|
/// IterationCompositeOperation enum
pub(all) enum IterationCompositeOperation {
  Replace
  Accumulate
}

///|
/// Convert to string value
pub fn IterationCompositeOperation::to_string(
  self : IterationCompositeOperation,
) -> String {
  match self {
    Replace => "replace"
    Accumulate => "accumulate"
  }
}

///|
/// Parse from string value
pub fn IterationCompositeOperation::from_string(
  s : String,
) -> IterationCompositeOperation? {
  match s {
    "replace" => Some(Replace)
    "accumulate" => Some(Accumulate)
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
}

///|
/// Convert to string value
pub fn AnimationTriggerBehavior::to_string(
  self : AnimationTriggerBehavior,
) -> String {
  match self {
    Once => "once"
    Repeat => "repeat"
    Alternate => "alternate"
    State => "state"
  }
}

///|
/// Parse from string value
pub fn AnimationTriggerBehavior::from_string(
  s : String,
) -> AnimationTriggerBehavior? {
  match s {
    "once" => Some(Once)
    "repeat" => Some(Repeat)
    "alternate" => Some(Alternate)
    "state" => Some(State)
    _ => None
  }
}

///|
/// EffectCallback callback interface
pub type EffectCallback

///|
/// Create EffectCallback from a MoonBit function
pub extern "js" fn EffectCallback::from_fn(
  handler : (Double?, JsValue, Animation) -> Unit,
) -> EffectCallback =
  #| (handler) => handler

///|
/// EffectTiming dictionary
pub struct EffectTiming {
  delay : Double?
  endDelay : Double?
  playbackRate : Double?
  duration : JsValue?
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
/// Convert to JsValue
pub extern "js" fn EffectTiming::to_js(self : EffectTiming) -> JsValue =
  #| (self) => ({
  #|   delay: self.delay,
  #|   endDelay: self.endDelay,
  #|   playbackRate: self.playbackRate,
  #|   duration: self.duration,
  #|   fill: ['none', 'forwards', 'backwards', 'both', 'auto'][self.fill],
  #|   iterationStart: self.iterationStart,
  #|   iterations: self.iterations,
  #|   direction: ['normal', 'reverse', 'alternate', 'alternate-reverse'][self.direction],
  #|   easing: self.easing
  #| })

///|
/// OptionalEffectTiming dictionary
pub struct OptionalEffectTiming {
  playbackRate : Double?
  delay : Double?
  endDelay : Double?
  fill : FillMode?
  iterationStart : Double?
  iterations : Double?
  duration : JsValue?
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
/// Convert to JsValue
pub extern "js" fn OptionalEffectTiming::to_js(
  self : OptionalEffectTiming,
) -> JsValue =
  #| (self) => ({
  #|   playbackRate: self.playbackRate,
  #|   delay: self.delay,
  #|   endDelay: self.endDelay,
  #|   fill: ['none', 'forwards', 'backwards', 'both', 'auto'][self.fill],
  #|   iterationStart: self.iterationStart,
  #|   iterations: self.iterations,
  #|   duration: self.duration,
  #|   direction: ['normal', 'reverse', 'alternate', 'alternate-reverse'][self.direction],
  #|   easing: self.easing
  #| })

///|
/// ComputedEffectTiming dictionary
pub struct ComputedEffectTiming {
  delay : Double?
  endDelay : Double?
  playbackRate : Double?
  duration : JsValue?
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
/// Convert to JsValue
pub extern "js" fn ComputedEffectTiming::to_js(
  self : ComputedEffectTiming,
) -> JsValue =
  #| (self) => ({
  #|   delay: self.delay,
  #|   endDelay: self.endDelay,
  #|   playbackRate: self.playbackRate,
  #|   duration: self.duration,
  #|   fill: ['none', 'forwards', 'backwards', 'both', 'auto'][self.fill],
  #|   iterationStart: self.iterationStart,
  #|   iterations: self.iterations,
  #|   direction: ['normal', 'reverse', 'alternate', 'alternate-reverse'][self.direction],
  #|   easing: self.easing,
  #|   startTime: self.startTime.to_js_value(),
  #|   endTime: self.endTime.to_js_value(),
  #|   activeDuration: self.activeDuration.to_js_value(),
  #|   localTime: ((() => { const v = self.localTime; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0.to_js_value(); })()),
  #|   progress: ((() => { const v = self.progress; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   currentIteration: ((() => { const v = self.currentIteration; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// KeyframeEffectOptions dictionary
pub struct KeyframeEffectOptions {
  delay : Double?
  endDelay : Double?
  playbackRate : Double?
  duration : JsValue?
  fill : FillMode?
  iterationStart : Double?
  iterations : Double?
  direction : PlaybackDirection?
  easing : String?
  iterationComposite : IterationCompositeOperation?
  composite : CompositeOperation?
  pseudoElement : Nullable[CSSOMString]
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
/// Convert to JsValue
pub extern "js" fn KeyframeEffectOptions::to_js(
  self : KeyframeEffectOptions,
) -> JsValue =
  #| (self) => ({
  #|   delay: self.delay,
  #|   endDelay: self.endDelay,
  #|   playbackRate: self.playbackRate,
  #|   duration: self.duration,
  #|   fill: ['none', 'forwards', 'backwards', 'both', 'auto'][self.fill],
  #|   iterationStart: self.iterationStart,
  #|   iterations: self.iterations,
  #|   direction: ['normal', 'reverse', 'alternate', 'alternate-reverse'][self.direction],
  #|   easing: self.easing,
  #|   iterationComposite: ['replace', 'accumulate'][self.iterationComposite],
  #|   composite: ['replace', 'add', 'accumulate'][self.composite],
  #|   pseudoElement: ((() => { const v = self.pseudoElement; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// TimelineRangeOffset dictionary
pub struct TimelineRangeOffset {
  rangeName : Nullable[CSSOMString]
  offset : CSSNumericValue?
}

///|
/// Create a new TimelineRangeOffset with default values
pub fn TimelineRangeOffset::default() -> TimelineRangeOffset {
  TimelineRangeOffset::{ rangeName: Nullable::Undefined, offset: None }
}

///|
/// Convert to JsValue
pub extern "js" fn TimelineRangeOffset::to_js(
  self : TimelineRangeOffset,
) -> JsValue =
  #| (self) => ({
  #|   rangeName: ((() => { const v = self.rangeName; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   offset: self.offset
  #| })

///|
/// KeyframeAnimationOptions dictionary
pub struct KeyframeAnimationOptions {
  delay : Double?
  endDelay : Double?
  playbackRate : Double?
  duration : JsValue?
  fill : FillMode?
  iterationStart : Double?
  iterations : Double?
  direction : PlaybackDirection?
  easing : String?
  iterationComposite : IterationCompositeOperation?
  composite : CompositeOperation?
  pseudoElement : Nullable[CSSOMString]
  rangeStart : JsValue?
  rangeEnd : JsValue?
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
/// Convert to JsValue
pub extern "js" fn KeyframeAnimationOptions::to_js(
  self : KeyframeAnimationOptions,
) -> JsValue =
  #| (self) => ({
  #|   delay: self.delay,
  #|   endDelay: self.endDelay,
  #|   playbackRate: self.playbackRate,
  #|   duration: self.duration,
  #|   fill: ['none', 'forwards', 'backwards', 'both', 'auto'][self.fill],
  #|   iterationStart: self.iterationStart,
  #|   iterations: self.iterations,
  #|   direction: ['normal', 'reverse', 'alternate', 'alternate-reverse'][self.direction],
  #|   easing: self.easing,
  #|   iterationComposite: ['replace', 'accumulate'][self.iterationComposite],
  #|   composite: ['replace', 'add', 'accumulate'][self.composite],
  #|   pseudoElement: ((() => { const v = self.pseudoElement; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   rangeStart: self.rangeStart,
  #|   rangeEnd: self.rangeEnd,
  #|   trigger: ((() => { const v = self.trigger; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   id: self.id,
  #|   timeline: ((() => { const v = self.timeline; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// AnimationPlaybackEventInit dictionary
pub struct AnimationPlaybackEventInit {
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
/// Convert to JsValue
pub extern "js" fn AnimationPlaybackEventInit::to_js(
  self : AnimationPlaybackEventInit,
) -> JsValue =
  #| (self) => ({
  #|   currentTime: ((() => { const v = self.currentTime; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0.to_js_value(); })()),
  #|   timelineTime: ((() => { const v = self.timelineTime; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0.to_js_value(); })())
  #| })

///|
/// AnimationTriggerOptions dictionary
pub struct AnimationTriggerOptions {
  timeline : Nullable[AnimationTimeline]
  behavior : Nullable[AnimationTriggerBehavior]
  rangeStart : JsValue?
  rangeEnd : JsValue?
  exitRangeStart : JsValue?
  exitRangeEnd : JsValue?
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
/// Convert to JsValue
pub extern "js" fn AnimationTriggerOptions::to_js(
  self : AnimationTriggerOptions,
) -> JsValue =
  #| (self) => ({
  #|   timeline: ((() => { const v = self.timeline; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   behavior: ((() => { const v = self.behavior; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return ['once', 'repeat', 'alternate', 'state'][v.$0]; })()),
  #|   rangeStart: self.rangeStart,
  #|   rangeEnd: self.rangeEnd,
  #|   exitRangeStart: self.exitRangeStart,
  #|   exitRangeEnd: self.exitRangeEnd
  #| })

///|
/// GroupEffect interface
pub type GroupEffect

///|
pub extern "js" fn GroupEffect::to_js_value(self : GroupEffect) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GroupEffect::new(
  children : Array[AnimationEffect],
  timing : JsValue,
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
  #| (self) => self.firstChild

///|
pub extern "js" fn GroupEffect::get_last_child(
  self : GroupEffect,
) -> AnimationEffect? =
  #| (self) => self.lastChild

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
pub extern "js" fn AnimationNodeList::get_length(
  self : AnimationNodeList,
) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn AnimationNodeList::item(
  self : AnimationNodeList,
  index : Int,
) -> AnimationEffect? =
  #| (self, index) => self.item(index)

///|
pub extern "js" fn AnimationNodeList::get(
  self : AnimationNodeList,
  index : Int,
) -> AnimationEffect? =
  #| (self, index) => self[index]

///|
/// SequenceEffect interface
pub type SequenceEffect

///|
pub extern "js" fn SequenceEffect::to_js_value(
  self : SequenceEffect,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn SequenceEffect::new(
  children : Array[AnimationEffect],
  timing : JsValue,
) -> SequenceEffect =
  #| (children, timing) => new SequenceEffect(children, timing)

///|
pub extern "js" fn SequenceEffect::get_children(
  self : SequenceEffect,
) -> AnimationNodeList =
  #| (self) => self.children

///|
pub extern "js" fn SequenceEffect::get_first_child(
  self : SequenceEffect,
) -> AnimationEffect? =
  #| (self) => self.firstChild

///|
pub extern "js" fn SequenceEffect::get_last_child(
  self : SequenceEffect,
) -> AnimationEffect? =
  #| (self) => self.lastChild

///|
pub extern "js" fn SequenceEffect::clone(self : SequenceEffect) -> GroupEffect =
  #| (self) => self.clone()

///|
pub extern "js" fn SequenceEffect::prepend(
  self : SequenceEffect,
  effects : AnimationEffect,
) -> Unit =
  #| (self, effects) => self.prepend(effects)

///|
pub extern "js" fn SequenceEffect::append(
  self : SequenceEffect,
  effects : AnimationEffect,
) -> Unit =
  #| (self, effects) => self.append(effects)

///|
/// AnimationPlaybackEvent interface
pub type AnimationPlaybackEvent

///|
pub extern "js" fn AnimationPlaybackEvent::to_js_value(
  self : AnimationPlaybackEvent,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn AnimationPlaybackEvent::new(
  type_ : String,
  event_init_dict : AnimationPlaybackEventInit,
) -> AnimationPlaybackEvent =
  #| (type_, event_init_dict) => new AnimationPlaybackEvent(type_, event_init_dict)

///|
pub extern "js" fn AnimationPlaybackEvent::get_current_time(
  self : AnimationPlaybackEvent,
) -> CSSNumberish? =
  #| (self) => self.currentTime

///|
pub extern "js" fn AnimationPlaybackEvent::get_timeline_time(
  self : AnimationPlaybackEvent,
) -> CSSNumberish? =
  #| (self) => self.timelineTime

///|
/// AnimationTrigger interface
pub type AnimationTrigger

///|
pub extern "js" fn AnimationTrigger::to_js_value(
  self : AnimationTrigger,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn AnimationTrigger::new(
  options : AnimationTriggerOptions,
) -> AnimationTrigger =
  #| (options) => new AnimationTrigger(options)

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
  #| (self) => self.behavior

///|
pub extern "js" fn AnimationTrigger::set_behavior(
  self : AnimationTrigger,
  value : AnimationTriggerBehavior,
) -> Unit =
  #| (self, value) => { self.behavior = value }

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
