// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/mediacapture-extensions

///|
/// GetUserMediaSemantics enum
pub(all) enum GetUserMediaSemantics {
  BrowserChooses
  UserChooses
} derive(Eq, Debug)

pub extend GetUserMediaSemantics with Eq::{equal, not_equal}
pub extend GetUserMediaSemantics with @debug.Debug::{to_repr}

/// Convert to string value
pub fn GetUserMediaSemantics::to_string(self : GetUserMediaSemantics) -> String {
  match self {
    GetUserMediaSemantics::BrowserChooses => "browser-chooses"
    GetUserMediaSemantics::UserChooses => "user-chooses"
  }
}

/// Parse from string value
pub fn GetUserMediaSemantics::from_string(s : String) -> GetUserMediaSemantics? {
  match s {
    "browser-chooses" => Some(GetUserMediaSemantics::BrowserChooses)
    "user-chooses" => Some(GetUserMediaSemantics::UserChooses)
    _ => None
  }
}

///|
/// SegmentType enum
pub(all) enum SegmentType {
  HumanFace
  LeftEye
  RightEye
  Eye
  Mouth
} derive(Eq, Debug)

pub extend SegmentType with Eq::{equal, not_equal}
pub extend SegmentType with @debug.Debug::{to_repr}

/// Convert to string value
pub fn SegmentType::to_string(self : SegmentType) -> String {
  match self {
    SegmentType::HumanFace => "human-face"
    SegmentType::LeftEye => "left-eye"
    SegmentType::RightEye => "right-eye"
    SegmentType::Eye => "eye"
    SegmentType::Mouth => "mouth"
  }
}

/// Parse from string value
pub fn SegmentType::from_string(s : String) -> SegmentType? {
  match s {
    "human-face" => Some(SegmentType::HumanFace)
    "left-eye" => Some(SegmentType::LeftEye)
    "right-eye" => Some(SegmentType::RightEye)
    "eye" => Some(SegmentType::Eye)
    "mouth" => Some(SegmentType::Mouth)
    _ => None
  }
}

///|
/// HumanFaceDetectionModeEnum enum
pub(all) enum HumanFaceDetectionModeEnum {
  None
  BoundingBox
  BoundingBoxWithLandmarkCenterPoint
} derive(Eq, Debug)

pub extend HumanFaceDetectionModeEnum with Eq::{equal, not_equal}
pub extend HumanFaceDetectionModeEnum with @debug.Debug::{to_repr}

/// Convert to string value
pub fn HumanFaceDetectionModeEnum::to_string(self : HumanFaceDetectionModeEnum) -> String {
  match self {
    HumanFaceDetectionModeEnum::None => "none"
    HumanFaceDetectionModeEnum::BoundingBox => "bounding-box"
    HumanFaceDetectionModeEnum::BoundingBoxWithLandmarkCenterPoint => "bounding-box-with-landmark-center-point"
  }
}

/// Parse from string value
pub fn HumanFaceDetectionModeEnum::from_string(s : String) -> HumanFaceDetectionModeEnum? {
  match s {
    "none" => Some(HumanFaceDetectionModeEnum::None)
    "bounding-box" => Some(HumanFaceDetectionModeEnum::BoundingBox)
    "bounding-box-with-landmark-center-point" => Some(HumanFaceDetectionModeEnum::BoundingBoxWithLandmarkCenterPoint)
    _ => None
  }
}

///|
/// MediaStreamConstraints dictionary
pub(all) struct MediaStreamConstraints {
  semantics : GetUserMediaSemantics?
  video : BoolOrMediaTrackConstraints?
  audio : BoolOrMediaTrackConstraints?
  preferCurrentTab : Bool?
  peerIdentity : String?
}

/// Create a new MediaStreamConstraints with default values
pub fn MediaStreamConstraints::default() -> MediaStreamConstraints {
  MediaStreamConstraints::{
    semantics: None,
    video: None,
    audio: None,
    preferCurrentTab: None,
    peerIdentity: None,
  }
}

extern "js" fn MediaStreamConstraints::to_js_ffi(self : MediaStreamConstraints) -> JsValue =
  #| (self) => ({
  #|   semantics: ((() => { const v = self.semantics; if (v === undefined) return undefined; return ['browser-chooses', 'user-chooses'][v]; })()),
  #|   video: ((() => { const v = self.video; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   audio: ((() => { const v = self.audio; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   preferCurrentTab: (self.preferCurrentTab === -1 ? undefined : self.preferCurrentTab),
  #|   peerIdentity: self.peerIdentity
  #| })

/// Convert to JsValue
pub fn MediaStreamConstraints::to_js(self : MediaStreamConstraints) -> JsValue {
  MediaStreamConstraints::to_js_ffi(self)
}

extern "js" fn MediaStreamConstraints::from_js_ffi(value : JsValue) -> MediaStreamConstraints =
  #| (v) => ({
  #|   semantics: (v.semantics === undefined ? undefined : ['browser-chooses', 'user-chooses'].indexOf(v.semantics)),
  #|   video: (v.video === undefined ? { $tag: 0 } : { $tag: 1, _0: v.video }),
  #|   audio: (v.audio === undefined ? { $tag: 0 } : { $tag: 1, _0: v.audio }),
  #|   preferCurrentTab: (v.preferCurrentTab === undefined ? -1 : v.preferCurrentTab),
  #|   peerIdentity: v.peerIdentity
  #| })

/// Convert from JsValue
pub fn MediaStreamConstraints::from_js(value : JsValue) -> MediaStreamConstraints {
  MediaStreamConstraints::from_js_ffi(value)
}

///|
/// VideoFrameMetadata dictionary
pub(all) struct VideoFrameMetadata {
  segments : FixedArray[Segment]?
  backgroundBlur : BackgroundBlur?
  backgroundSegmentationMask : ImageBitmap?
}

/// Create a new VideoFrameMetadata with default values
pub fn VideoFrameMetadata::default() -> VideoFrameMetadata {
  VideoFrameMetadata::{
    segments: None,
    backgroundBlur: None,
    backgroundSegmentationMask: None,
  }
}

extern "js" fn VideoFrameMetadata::to_js_ffi(self : VideoFrameMetadata, convert_backgroundBlur : (BackgroundBlur?) -> JsValue) -> JsValue =
  #| (self, convert_backgroundBlur) => ({
  #|   segments: self.segments,
  #|   backgroundBlur: convert_backgroundBlur(self.backgroundBlur),
  #|   backgroundSegmentationMask: ((() => { const v = self.backgroundSegmentationMask; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

/// Convert to JsValue
pub fn VideoFrameMetadata::to_js(self : VideoFrameMetadata) -> JsValue {
  VideoFrameMetadata::to_js_ffi(self, fn(value) { match value { Some(value) => value.to_js(); None => dictionary_undefined() } })
}

extern "js" fn VideoFrameMetadata::from_js_ffi(value : JsValue, convert_backgroundBlur : (JsValue) -> BackgroundBlur?) -> VideoFrameMetadata =
  #| (v, convert_backgroundBlur) => ({
  #|   segments: v.segments,
  #|   backgroundBlur: convert_backgroundBlur(v.backgroundBlur),
  #|   backgroundSegmentationMask: (v.backgroundSegmentationMask === undefined ? { $tag: 0 } : { $tag: 1, _0: v.backgroundSegmentationMask })
  #| })

/// Convert from JsValue
pub fn VideoFrameMetadata::from_js(value : JsValue) -> VideoFrameMetadata {
  VideoFrameMetadata::from_js_ffi(value, fn(value) { if value.is_undefined() { None } else { Some(BackgroundBlur::from_js(value)) } })
}

///|
/// Segment dictionary
pub(all) struct Segment {
  type_ : SegmentType
  id : Int
  partOf : Int?
  probability : Double
  centerPoint : Point2D?
  boundingBox : DOMRectInit?
}

/// Create a new Segment
pub fn Segment::new(type_~ : SegmentType) -> Segment {
  Segment::{
    type_: type_,
    id: 0,
    partOf: None,
    probability: 0,
    centerPoint: None,
    boundingBox: None,
  }
}

extern "js" fn Segment::to_js_ffi(self : Segment, convert_centerPoint : (Point2D?) -> JsValue, convert_boundingBox : (DOMRectInit?) -> JsValue) -> JsValue =
  #| (self, convert_centerPoint, convert_boundingBox) => ({
  #|   type: ['human-face', 'left-eye', 'right-eye', 'eye', 'mouth'][self.type_],
  #|   id: self.id,
  #|   partOf: self.partOf,
  #|   probability: self.probability,
  #|   centerPoint: convert_centerPoint(self.centerPoint),
  #|   boundingBox: convert_boundingBox(self.boundingBox)
  #| })

/// Convert to JsValue
pub fn Segment::to_js(self : Segment) -> JsValue {
  Segment::to_js_ffi(self, fn(value) { match value { Some(value) => value.to_js(); None => dictionary_undefined() } }, fn(value) { match value { Some(value) => value.to_js(); None => dictionary_undefined() } })
}

extern "js" fn Segment::from_js_ffi(value : JsValue, convert_centerPoint : (JsValue) -> Point2D?, convert_boundingBox : (JsValue) -> DOMRectInit?) -> Segment =
  #| (v, convert_centerPoint, convert_boundingBox) => ({
  #|   type_: ['human-face', 'left-eye', 'right-eye', 'eye', 'mouth'].indexOf(v.type),
  #|   id: v.id,
  #|   partOf: v.partOf,
  #|   probability: v.probability,
  #|   centerPoint: convert_centerPoint(v.centerPoint),
  #|   boundingBox: convert_boundingBox(v.boundingBox)
  #| })

/// Convert from JsValue
pub fn Segment::from_js(value : JsValue) -> Segment {
  Segment::from_js_ffi(value, fn(value) { if value.is_undefined() { None } else { Some(Point2D::from_js(value)) } }, fn(value) { if value.is_undefined() { None } else { Some(DOMRectInit::from_js(value)) } })
}

///|
/// BackgroundBlur dictionary
pub(all) struct BackgroundBlur {
  enabled : Bool
}

/// Create a new BackgroundBlur with default values
pub fn BackgroundBlur::default() -> BackgroundBlur {
  BackgroundBlur::{
    enabled: false,
  }
}

extern "js" fn BackgroundBlur::to_js_ffi(self : BackgroundBlur) -> JsValue =
  #| (self) => ({
  #|   enabled: self.enabled
  #| })

/// Convert to JsValue
pub fn BackgroundBlur::to_js(self : BackgroundBlur) -> JsValue {
  BackgroundBlur::to_js_ffi(self)
}

extern "js" fn BackgroundBlur::from_js_ffi(value : JsValue) -> BackgroundBlur =
  #| (v) => ({
  #|   enabled: v.enabled
  #| })

/// Convert from JsValue
pub fn BackgroundBlur::from_js(value : JsValue) -> BackgroundBlur {
  BackgroundBlur::from_js_ffi(value)
}

///|
/// MediaEffectInfo dictionary
pub(all) struct MediaEffectInfo {
  enabled : Bool
}

/// Create a new MediaEffectInfo with default values
pub fn MediaEffectInfo::default() -> MediaEffectInfo {
  MediaEffectInfo::{
    enabled: false,
  }
}

extern "js" fn MediaEffectInfo::to_js_ffi(self : MediaEffectInfo) -> JsValue =
  #| (self) => ({
  #|   enabled: self.enabled
  #| })

/// Convert to JsValue
pub fn MediaEffectInfo::to_js(self : MediaEffectInfo) -> JsValue {
  MediaEffectInfo::to_js_ffi(self)
}

extern "js" fn MediaEffectInfo::from_js_ffi(value : JsValue) -> MediaEffectInfo =
  #| (v) => ({
  #|   enabled: v.enabled
  #| })

/// Convert from JsValue
pub fn MediaEffectInfo::from_js(value : JsValue) -> MediaEffectInfo {
  MediaEffectInfo::from_js_ffi(value)
}

///|
/// HTMLMediaStreamConstraints dictionary
pub(all) struct HTMLMediaStreamConstraints {
  video : MediaTrackConstraintSet?
  audio : MediaTrackConstraintSet?
}

/// Create a new HTMLMediaStreamConstraints with default values
pub fn HTMLMediaStreamConstraints::default() -> HTMLMediaStreamConstraints {
  HTMLMediaStreamConstraints::{
    video: None,
    audio: None,
  }
}

extern "js" fn HTMLMediaStreamConstraints::to_js_ffi(self : HTMLMediaStreamConstraints, convert_video : (MediaTrackConstraintSet?) -> JsValue, convert_audio : (MediaTrackConstraintSet?) -> JsValue) -> JsValue =
  #| (self, convert_video, convert_audio) => ({
  #|   video: convert_video(self.video),
  #|   audio: convert_audio(self.audio)
  #| })

/// Convert to JsValue
pub fn HTMLMediaStreamConstraints::to_js(self : HTMLMediaStreamConstraints) -> JsValue {
  HTMLMediaStreamConstraints::to_js_ffi(self, fn(value) { match value { Some(value) => value.to_js(); None => dictionary_undefined() } }, fn(value) { match value { Some(value) => value.to_js(); None => dictionary_undefined() } })
}

extern "js" fn HTMLMediaStreamConstraints::from_js_ffi(value : JsValue, convert_video : (JsValue) -> MediaTrackConstraintSet?, convert_audio : (JsValue) -> MediaTrackConstraintSet?) -> HTMLMediaStreamConstraints =
  #| (v, convert_video, convert_audio) => ({
  #|   video: convert_video(v.video),
  #|   audio: convert_audio(v.audio)
  #| })

/// Convert from JsValue
pub fn HTMLMediaStreamConstraints::from_js(value : JsValue) -> HTMLMediaStreamConstraints {
  HTMLMediaStreamConstraints::from_js_ffi(value, fn(value) { if value.is_undefined() { None } else { Some(MediaTrackConstraintSet::from_js(value)) } }, fn(value) { if value.is_undefined() { None } else { Some(MediaTrackConstraintSet::from_js(value)) } })
}

///|
/// MediaStreamTrackAudioStats interface
pub type MediaStreamTrackAudioStats

pub extern "js" fn MediaStreamTrackAudioStats::to_js_value(self : MediaStreamTrackAudioStats) -> JsValue =
  #| (self) => self

/// Cast JsValue to MediaStreamTrackAudioStats (unchecked)
pub extern "js" fn MediaStreamTrackAudioStats::from_js_value(v : JsValue) -> MediaStreamTrackAudioStats =
  #| (v) => v

/// Safely cast JsValue to MediaStreamTrackAudioStats (checked with instanceof)
pub extern "js" fn MediaStreamTrackAudioStats::from_js_value_opt(v : JsValue) -> MediaStreamTrackAudioStats? =
  #| (v) => (v instanceof MediaStreamTrackAudioStats) ? { $tag: 1, _0: v } : { $tag: 0 }

/// Safely cast JsValue to MediaStreamTrackAudioStats (checked with instanceof)
pub extern "js" fn JsValue::as_media_stream_track_audio_stats(self : JsValue) -> MediaStreamTrackAudioStats? =
  #| (self) => (self instanceof MediaStreamTrackAudioStats) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Cast JsValue to MediaStreamTrackAudioStats (unchecked)
pub extern "js" fn JsValue::to_media_stream_track_audio_stats(self : JsValue) -> MediaStreamTrackAudioStats =
  #| (self) => self

pub extern "js" fn MediaStreamTrackAudioStats::get_latency(self : MediaStreamTrackAudioStats) -> DOMHighResTimeStamp =
  #| (self) => self.latency

pub extern "js" fn MediaStreamTrackAudioStats::get_average_latency(self : MediaStreamTrackAudioStats) -> DOMHighResTimeStamp =
  #| (self) => self.averageLatency

pub extern "js" fn MediaStreamTrackAudioStats::get_minimum_latency(self : MediaStreamTrackAudioStats) -> DOMHighResTimeStamp =
  #| (self) => self.minimumLatency

pub extern "js" fn MediaStreamTrackAudioStats::get_maximum_latency(self : MediaStreamTrackAudioStats) -> DOMHighResTimeStamp =
  #| (self) => self.maximumLatency

pub extern "js" fn MediaStreamTrackAudioStats::reset_latency(self : MediaStreamTrackAudioStats) -> Unit =
  #| (self) => self.resetLatency()

pub extern "js" fn MediaStreamTrackAudioStats::to_json(self : MediaStreamTrackAudioStats) -> JsValue =
  #| (self) => self.toJSON()

///|
/// MediaStreamTrackVideoStats interface
pub type MediaStreamTrackVideoStats

pub extern "js" fn MediaStreamTrackVideoStats::to_js_value(self : MediaStreamTrackVideoStats) -> JsValue =
  #| (self) => self

/// Cast JsValue to MediaStreamTrackVideoStats (unchecked)
pub extern "js" fn MediaStreamTrackVideoStats::from_js_value(v : JsValue) -> MediaStreamTrackVideoStats =
  #| (v) => v

/// Safely cast JsValue to MediaStreamTrackVideoStats (checked with instanceof)
pub extern "js" fn MediaStreamTrackVideoStats::from_js_value_opt(v : JsValue) -> MediaStreamTrackVideoStats? =
  #| (v) => (v instanceof MediaStreamTrackVideoStats) ? { $tag: 1, _0: v } : { $tag: 0 }

/// Safely cast JsValue to MediaStreamTrackVideoStats (checked with instanceof)
pub extern "js" fn JsValue::as_media_stream_track_video_stats(self : JsValue) -> MediaStreamTrackVideoStats? =
  #| (self) => (self instanceof MediaStreamTrackVideoStats) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Cast JsValue to MediaStreamTrackVideoStats (unchecked)
pub extern "js" fn JsValue::to_media_stream_track_video_stats(self : JsValue) -> MediaStreamTrackVideoStats =
  #| (self) => self

pub extern "js" fn MediaStreamTrackVideoStats::get_delivered_frames(self : MediaStreamTrackVideoStats) -> Int64 =
  #| (self) => BigInt.asUintN(64, BigInt(self.deliveredFrames))

pub extern "js" fn MediaStreamTrackVideoStats::get_discarded_frames(self : MediaStreamTrackVideoStats) -> Int64 =
  #| (self) => BigInt.asUintN(64, BigInt(self.discardedFrames))

pub extern "js" fn MediaStreamTrackVideoStats::get_total_frames(self : MediaStreamTrackVideoStats) -> Int64 =
  #| (self) => BigInt.asUintN(64, BigInt(self.totalFrames))

pub extern "js" fn MediaStreamTrackVideoStats::to_json(self : MediaStreamTrackVideoStats) -> JsValue =
  #| (self) => self.toJSON()

///|
/// HTMLCameraElement interface
pub type HTMLCameraElement

pub extern "js" fn HTMLCameraElement::to_js_value(self : HTMLCameraElement) -> JsValue =
  #| (self) => self

/// Cast JsValue to HTMLCameraElement (unchecked)
pub extern "js" fn HTMLCameraElement::from_js_value(v : JsValue) -> HTMLCameraElement =
  #| (v) => v

/// Safely cast JsValue to HTMLCameraElement (checked with instanceof)
pub extern "js" fn HTMLCameraElement::from_js_value_opt(v : JsValue) -> HTMLCameraElement? =
  #| (v) => (v instanceof HTMLCameraElement) ? { $tag: 1, _0: v } : { $tag: 0 }

/// Safely cast JsValue to HTMLCameraElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_camera_element(self : JsValue) -> HTMLCameraElement? =
  #| (self) => (self instanceof HTMLCameraElement) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Cast JsValue to HTMLCameraElement (unchecked)
pub extern "js" fn JsValue::to_html_camera_element(self : JsValue) -> HTMLCameraElement =
  #| (self) => self

pub extern "js" fn HTMLCameraElement::to_html_element(self : HTMLCameraElement) -> HTMLElement =
  #| (self) => self

pub extern "js" fn HTMLCameraElement::to_element(self : HTMLCameraElement) -> Element =
  #| (self) => self

pub extern "js" fn HTMLCameraElement::to_node(self : HTMLCameraElement) -> Node =
  #| (self) => self

pub extern "js" fn HTMLCameraElement::to_event_target(self : HTMLCameraElement) -> EventTarget =
  #| (self) => self

pub extern "js" fn HTMLCameraElement::new() -> HTMLCameraElement =
  #| () => new HTMLCameraElement()

pub extern "js" fn HTMLCameraElement::get_track(self : HTMLCameraElement) -> MediaStreamTrack? =
  #| (self) => (() => { const v = self.track; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

pub extern "js" fn HTMLCameraElement::get_error(self : HTMLCameraElement) -> DOMException? =
  #| (self) => (() => { const v = self.error; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

pub extern "js" fn HTMLCameraElement::set_constraints(self : HTMLCameraElement) -> Unit =
  #| (self) => self.setConstraints()

extern "js" fn HTMLCameraElement::set_constraints_with_constraints_ffi(self : HTMLCameraElement, constraints : JsValue) -> Unit =
  #| (self, constraints) => self.setConstraints(constraints)

pub fn HTMLCameraElement::set_constraints_with_constraints(self : HTMLCameraElement, constraints : MediaTrackConstraintSet) -> Unit {
  HTMLCameraElement::set_constraints_with_constraints_ffi(self, constraints.to_js())
}

pub extern "js" fn HTMLCameraElement::set_ontrack(self : HTMLCameraElement, handler : (Event) -> Unit) -> Unit =
  #| (self, handler) => { self.ontrack = (e) => handler(e) }

pub extern "js" fn HTMLCameraElement::clear_ontrack(self : HTMLCameraElement) -> Unit =
  #| (self) => { self.ontrack = null }

pub extern "js" fn HTMLCameraElement::set_onerror(self : HTMLCameraElement, handler : (Event) -> Unit) -> Unit =
  #| (self, handler) => { self.onerror = (e) => handler(e) }

pub extern "js" fn HTMLCameraElement::clear_onerror(self : HTMLCameraElement) -> Unit =
  #| (self) => { self.onerror = null }

pub extern "js" fn HTMLCameraElement::set_oncancel(self : HTMLCameraElement, handler : (Event) -> Unit) -> Unit =
  #| (self, handler) => { self.oncancel = (e) => handler(e) }

pub extern "js" fn HTMLCameraElement::clear_oncancel(self : HTMLCameraElement) -> Unit =
  #| (self) => { self.oncancel = null }

///|
/// HTMLMicrophoneElement interface
pub type HTMLMicrophoneElement

pub extern "js" fn HTMLMicrophoneElement::to_js_value(self : HTMLMicrophoneElement) -> JsValue =
  #| (self) => self

/// Cast JsValue to HTMLMicrophoneElement (unchecked)
pub extern "js" fn HTMLMicrophoneElement::from_js_value(v : JsValue) -> HTMLMicrophoneElement =
  #| (v) => v

/// Safely cast JsValue to HTMLMicrophoneElement (checked with instanceof)
pub extern "js" fn HTMLMicrophoneElement::from_js_value_opt(v : JsValue) -> HTMLMicrophoneElement? =
  #| (v) => (v instanceof HTMLMicrophoneElement) ? { $tag: 1, _0: v } : { $tag: 0 }

/// Safely cast JsValue to HTMLMicrophoneElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_microphone_element(self : JsValue) -> HTMLMicrophoneElement? =
  #| (self) => (self instanceof HTMLMicrophoneElement) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Cast JsValue to HTMLMicrophoneElement (unchecked)
pub extern "js" fn JsValue::to_html_microphone_element(self : JsValue) -> HTMLMicrophoneElement =
  #| (self) => self

pub extern "js" fn HTMLMicrophoneElement::to_html_element(self : HTMLMicrophoneElement) -> HTMLElement =
  #| (self) => self

pub extern "js" fn HTMLMicrophoneElement::to_element(self : HTMLMicrophoneElement) -> Element =
  #| (self) => self

pub extern "js" fn HTMLMicrophoneElement::to_node(self : HTMLMicrophoneElement) -> Node =
  #| (self) => self

pub extern "js" fn HTMLMicrophoneElement::to_event_target(self : HTMLMicrophoneElement) -> EventTarget =
  #| (self) => self

pub extern "js" fn HTMLMicrophoneElement::new() -> HTMLMicrophoneElement =
  #| () => new HTMLMicrophoneElement()

pub extern "js" fn HTMLMicrophoneElement::get_track(self : HTMLMicrophoneElement) -> MediaStreamTrack? =
  #| (self) => (() => { const v = self.track; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

pub extern "js" fn HTMLMicrophoneElement::get_error(self : HTMLMicrophoneElement) -> DOMException? =
  #| (self) => (() => { const v = self.error; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

pub extern "js" fn HTMLMicrophoneElement::set_constraints(self : HTMLMicrophoneElement) -> Unit =
  #| (self) => self.setConstraints()

extern "js" fn HTMLMicrophoneElement::set_constraints_with_constraints_ffi(self : HTMLMicrophoneElement, constraints : JsValue) -> Unit =
  #| (self, constraints) => self.setConstraints(constraints)

pub fn HTMLMicrophoneElement::set_constraints_with_constraints(self : HTMLMicrophoneElement, constraints : MediaTrackConstraintSet) -> Unit {
  HTMLMicrophoneElement::set_constraints_with_constraints_ffi(self, constraints.to_js())
}

pub extern "js" fn HTMLMicrophoneElement::set_ontrack(self : HTMLMicrophoneElement, handler : (Event) -> Unit) -> Unit =
  #| (self, handler) => { self.ontrack = (e) => handler(e) }

pub extern "js" fn HTMLMicrophoneElement::clear_ontrack(self : HTMLMicrophoneElement) -> Unit =
  #| (self) => { self.ontrack = null }

pub extern "js" fn HTMLMicrophoneElement::set_onerror(self : HTMLMicrophoneElement, handler : (Event) -> Unit) -> Unit =
  #| (self, handler) => { self.onerror = (e) => handler(e) }

pub extern "js" fn HTMLMicrophoneElement::clear_onerror(self : HTMLMicrophoneElement) -> Unit =
  #| (self) => { self.onerror = null }

pub extern "js" fn HTMLMicrophoneElement::set_oncancel(self : HTMLMicrophoneElement, handler : (Event) -> Unit) -> Unit =
  #| (self, handler) => { self.oncancel = (e) => handler(e) }

pub extern "js" fn HTMLMicrophoneElement::clear_oncancel(self : HTMLMicrophoneElement) -> Unit =
  #| (self) => { self.oncancel = null }

///|
/// HTMLUserMediaElement interface
pub type HTMLUserMediaElement

pub extern "js" fn HTMLUserMediaElement::to_js_value(self : HTMLUserMediaElement) -> JsValue =
  #| (self) => self

/// Cast JsValue to HTMLUserMediaElement (unchecked)
pub extern "js" fn HTMLUserMediaElement::from_js_value(v : JsValue) -> HTMLUserMediaElement =
  #| (v) => v

/// Safely cast JsValue to HTMLUserMediaElement (checked with instanceof)
pub extern "js" fn HTMLUserMediaElement::from_js_value_opt(v : JsValue) -> HTMLUserMediaElement? =
  #| (v) => (v instanceof HTMLUserMediaElement) ? { $tag: 1, _0: v } : { $tag: 0 }

/// Safely cast JsValue to HTMLUserMediaElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_user_media_element(self : JsValue) -> HTMLUserMediaElement? =
  #| (self) => (self instanceof HTMLUserMediaElement) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Cast JsValue to HTMLUserMediaElement (unchecked)
pub extern "js" fn JsValue::to_html_user_media_element(self : JsValue) -> HTMLUserMediaElement =
  #| (self) => self

pub extern "js" fn HTMLUserMediaElement::to_html_element(self : HTMLUserMediaElement) -> HTMLElement =
  #| (self) => self

pub extern "js" fn HTMLUserMediaElement::to_element(self : HTMLUserMediaElement) -> Element =
  #| (self) => self

pub extern "js" fn HTMLUserMediaElement::to_node(self : HTMLUserMediaElement) -> Node =
  #| (self) => self

pub extern "js" fn HTMLUserMediaElement::to_event_target(self : HTMLUserMediaElement) -> EventTarget =
  #| (self) => self

pub extern "js" fn HTMLUserMediaElement::new() -> HTMLUserMediaElement =
  #| () => new HTMLUserMediaElement()

pub extern "js" fn HTMLUserMediaElement::get_stream(self : HTMLUserMediaElement) -> MediaStream? =
  #| (self) => (() => { const v = self.stream; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

pub extern "js" fn HTMLUserMediaElement::get_error(self : HTMLUserMediaElement) -> DOMException? =
  #| (self) => (() => { const v = self.error; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

pub extern "js" fn HTMLUserMediaElement::set_constraints(self : HTMLUserMediaElement) -> Unit =
  #| (self) => self.setConstraints()

extern "js" fn HTMLUserMediaElement::set_constraints_with_constraints_ffi(self : HTMLUserMediaElement, constraints : JsValue) -> Unit =
  #| (self, constraints) => self.setConstraints(constraints)

pub fn HTMLUserMediaElement::set_constraints_with_constraints(self : HTMLUserMediaElement, constraints : HTMLMediaStreamConstraints) -> Unit {
  HTMLUserMediaElement::set_constraints_with_constraints_ffi(self, constraints.to_js())
}

pub extern "js" fn HTMLUserMediaElement::set_onstream(self : HTMLUserMediaElement, handler : (Event) -> Unit) -> Unit =
  #| (self, handler) => { self.onstream = (e) => handler(e) }

pub extern "js" fn HTMLUserMediaElement::clear_onstream(self : HTMLUserMediaElement) -> Unit =
  #| (self) => { self.onstream = null }

pub extern "js" fn HTMLUserMediaElement::set_onerror(self : HTMLUserMediaElement, handler : (Event) -> Unit) -> Unit =
  #| (self, handler) => { self.onerror = (e) => handler(e) }

pub extern "js" fn HTMLUserMediaElement::clear_onerror(self : HTMLUserMediaElement) -> Unit =
  #| (self) => { self.onerror = null }

pub extern "js" fn HTMLUserMediaElement::set_oncancel(self : HTMLUserMediaElement, handler : (Event) -> Unit) -> Unit =
  #| (self, handler) => { self.oncancel = (e) => handler(e) }

pub extern "js" fn HTMLUserMediaElement::clear_oncancel(self : HTMLUserMediaElement) -> Unit =
  #| (self) => { self.oncancel = null }
