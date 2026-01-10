// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/mediasession

///|
/// MediaSessionPlaybackState enum
pub(all) enum MediaSessionPlaybackState {
  None
  Paused
  Playing
}

///|
/// Convert to string value
pub fn MediaSessionPlaybackState::to_string(
  self : MediaSessionPlaybackState,
) -> String {
  match self {
    MediaSessionPlaybackState::None => "none"
    MediaSessionPlaybackState::Paused => "paused"
    MediaSessionPlaybackState::Playing => "playing"
  }
}

///|
/// Parse from string value
pub fn MediaSessionPlaybackState::from_string(
  s : String,
) -> MediaSessionPlaybackState? {
  match s {
    "none" => Some(MediaSessionPlaybackState::None)
    "paused" => Some(MediaSessionPlaybackState::Paused)
    "playing" => Some(MediaSessionPlaybackState::Playing)
    _ => None
  }
}

///|
/// MediaSessionAction enum
pub(all) enum MediaSessionAction {
  Play
  Pause
  Seekbackward
  Seekforward
  Previoustrack
  Nexttrack
  Skipad
  Stop
  Seekto
  Togglemicrophone
  Togglecamera
  Togglescreenshare
  Hangup
  Previousslide
  Nextslide
  Enterpictureinpicture
  Voiceactivity
}

///|
/// Convert to string value
pub fn MediaSessionAction::to_string(self : MediaSessionAction) -> String {
  match self {
    MediaSessionAction::Play => "play"
    MediaSessionAction::Pause => "pause"
    MediaSessionAction::Seekbackward => "seekbackward"
    MediaSessionAction::Seekforward => "seekforward"
    MediaSessionAction::Previoustrack => "previoustrack"
    MediaSessionAction::Nexttrack => "nexttrack"
    MediaSessionAction::Skipad => "skipad"
    MediaSessionAction::Stop => "stop"
    MediaSessionAction::Seekto => "seekto"
    MediaSessionAction::Togglemicrophone => "togglemicrophone"
    MediaSessionAction::Togglecamera => "togglecamera"
    MediaSessionAction::Togglescreenshare => "togglescreenshare"
    MediaSessionAction::Hangup => "hangup"
    MediaSessionAction::Previousslide => "previousslide"
    MediaSessionAction::Nextslide => "nextslide"
    MediaSessionAction::Enterpictureinpicture => "enterpictureinpicture"
    MediaSessionAction::Voiceactivity => "voiceactivity"
  }
}

///|
/// Parse from string value
pub fn MediaSessionAction::from_string(s : String) -> MediaSessionAction? {
  match s {
    "play" => Some(MediaSessionAction::Play)
    "pause" => Some(MediaSessionAction::Pause)
    "seekbackward" => Some(MediaSessionAction::Seekbackward)
    "seekforward" => Some(MediaSessionAction::Seekforward)
    "previoustrack" => Some(MediaSessionAction::Previoustrack)
    "nexttrack" => Some(MediaSessionAction::Nexttrack)
    "skipad" => Some(MediaSessionAction::Skipad)
    "stop" => Some(MediaSessionAction::Stop)
    "seekto" => Some(MediaSessionAction::Seekto)
    "togglemicrophone" => Some(MediaSessionAction::Togglemicrophone)
    "togglecamera" => Some(MediaSessionAction::Togglecamera)
    "togglescreenshare" => Some(MediaSessionAction::Togglescreenshare)
    "hangup" => Some(MediaSessionAction::Hangup)
    "previousslide" => Some(MediaSessionAction::Previousslide)
    "nextslide" => Some(MediaSessionAction::Nextslide)
    "enterpictureinpicture" => Some(MediaSessionAction::Enterpictureinpicture)
    "voiceactivity" => Some(MediaSessionAction::Voiceactivity)
    _ => None
  }
}

///|
/// MediaSessionEnterPictureInPictureReason enum
pub(all) enum MediaSessionEnterPictureInPictureReason {
  Other
  Useraction
  Contentoccluded
}

///|
/// Convert to string value
pub fn MediaSessionEnterPictureInPictureReason::to_string(
  self : MediaSessionEnterPictureInPictureReason,
) -> String {
  match self {
    MediaSessionEnterPictureInPictureReason::Other => "other"
    MediaSessionEnterPictureInPictureReason::Useraction => "useraction"
    MediaSessionEnterPictureInPictureReason::Contentoccluded =>
      "contentoccluded"
  }
}

///|
/// Parse from string value
pub fn MediaSessionEnterPictureInPictureReason::from_string(
  s : String,
) -> MediaSessionEnterPictureInPictureReason? {
  match s {
    "other" => Some(MediaSessionEnterPictureInPictureReason::Other)
    "useraction" => Some(MediaSessionEnterPictureInPictureReason::Useraction)
    "contentoccluded" =>
      Some(MediaSessionEnterPictureInPictureReason::Contentoccluded)
    _ => None
  }
}

///|
/// MediaSessionActionHandler callback interface
pub type MediaSessionActionHandler

///|
/// Create MediaSessionActionHandler from a MoonBit function
pub extern "js" fn MediaSessionActionHandler::from_fn(
  handler : (MediaSessionActionDetails) -> Unit,
) -> MediaSessionActionHandler =
  #| (handler) => handler

///|
/// MediaMetadataInit dictionary
pub struct MediaMetadataInit {
  title : String?
  artist : String?
  album : String?
  artwork : Array[MediaImage]?
  chapterInfo : Array[ChapterInformationInit]?
}

///|
/// Create a new MediaMetadataInit with default values
pub fn MediaMetadataInit::default() -> MediaMetadataInit {
  MediaMetadataInit::{
    title: None,
    artist: None,
    album: None,
    artwork: None,
    chapterInfo: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MediaMetadataInit::to_js(
  self : MediaMetadataInit,
) -> JsValue =
  #| (self) => ({
  #|   title: self.title,
  #|   artist: self.artist,
  #|   album: self.album,
  #|   artwork: self.artwork,
  #|   chapterInfo: self.chapterInfo
  #| })

///|
/// ChapterInformationInit dictionary
pub struct ChapterInformationInit {
  title : String?
  startTime : Double?
  artwork : Array[MediaImage]?
}

///|
/// Create a new ChapterInformationInit with default values
pub fn ChapterInformationInit::default() -> ChapterInformationInit {
  ChapterInformationInit::{ title: None, startTime: None, artwork: None }
}

///|
/// Convert to JsValue
pub extern "js" fn ChapterInformationInit::to_js(
  self : ChapterInformationInit,
) -> JsValue =
  #| (self) => ({
  #|   title: self.title,
  #|   startTime: self.startTime,
  #|   artwork: self.artwork
  #| })

///|
/// MediaImage dictionary
pub struct MediaImage {
  src : String
  sizes : String?
  type_ : String?
}

///|
/// Create a new MediaImage with default values
pub fn MediaImage::default() -> MediaImage {
  MediaImage::{ src: "", sizes: None, type_: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MediaImage::to_js(self : MediaImage) -> JsValue =
  #| (self) => ({
  #|   src: self.src,
  #|   sizes: self.sizes,
  #|   type: self.type_
  #| })

///|
/// MediaPositionState dictionary
pub struct MediaPositionState {
  duration : Double?
  playbackRate : Double?
  position : Double?
}

///|
/// Create a new MediaPositionState with default values
pub fn MediaPositionState::default() -> MediaPositionState {
  MediaPositionState::{ duration: None, playbackRate: None, position: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MediaPositionState::to_js(
  self : MediaPositionState,
) -> JsValue =
  #| (self) => ({
  #|   duration: self.duration,
  #|   playbackRate: self.playbackRate,
  #|   position: self.position
  #| })

///|
/// MediaSessionActionDetails dictionary
pub struct MediaSessionActionDetails {
  action : MediaSessionAction
  seekOffset : Double?
  seekTime : Double?
  fastSeek : Bool?
  isActivating : Bool?
  enterPictureInPictureReason : MediaSessionEnterPictureInPictureReason?
}

///|
/// Create a new MediaSessionActionDetails with default values
pub fn MediaSessionActionDetails::default() -> MediaSessionActionDetails {
  MediaSessionActionDetails::{
    action: panic(),
    seekOffset: None,
    seekTime: None,
    fastSeek: None,
    isActivating: None,
    enterPictureInPictureReason: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MediaSessionActionDetails::to_js(
  self : MediaSessionActionDetails,
) -> JsValue =
  #| (self) => ({
  #|   action: ['play', 'pause', 'seekbackward', 'seekforward', 'previoustrack', 'nexttrack', 'skipad', 'stop', 'seekto', 'togglemicrophone', 'togglecamera', 'togglescreenshare', 'hangup', 'previousslide', 'nextslide', 'enterpictureinpicture', 'voiceactivity'][self.action],
  #|   seekOffset: self.seekOffset,
  #|   seekTime: self.seekTime,
  #|   fastSeek: self.fastSeek,
  #|   isActivating: self.isActivating,
  #|   enterPictureInPictureReason: ['other', 'useraction', 'contentoccluded'][self.enterPictureInPictureReason]
  #| })

///|
/// MediaSession interface
pub type MediaSession

///|
pub extern "js" fn MediaSession::to_js_value(self : MediaSession) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn MediaSession::get_metadata(
  self : MediaSession,
) -> MediaMetadata? =
  #| (self) => self.metadata

///|
pub extern "js" fn MediaSession::set_metadata(
  self : MediaSession,
  value : MediaMetadata?,
) -> Unit =
  #| (self, value) => { self.metadata = value }

///|
pub extern "js" fn MediaSession::get_playback_state(
  self : MediaSession,
) -> MediaSessionPlaybackState =
  #| (self) => self.playbackState

///|
pub extern "js" fn MediaSession::set_playback_state(
  self : MediaSession,
  value : MediaSessionPlaybackState,
) -> Unit =
  #| (self, value) => { self.playbackState = value }

///|
pub extern "js" fn MediaSession::set_action_handler(
  self : MediaSession,
  action : MediaSessionAction,
  handler : MediaSessionActionHandler?,
) -> Unit =
  #| (self, action, handler) => self.setActionHandler(['play', 'pause', 'seekbackward', 'seekforward', 'previoustrack', 'nexttrack', 'skipad', 'stop', 'seekto', 'togglemicrophone', 'togglecamera', 'togglescreenshare', 'hangup', 'previousslide', 'nextslide', 'enterpictureinpicture', 'voiceactivity'][action], handler)

///|
pub extern "js" fn MediaSession::set_position_state(
  self : MediaSession,
) -> Unit =
  #| (self) => self.setPositionState()

///|
pub extern "js" fn MediaSession::set_position_state_with_state(
  self : MediaSession,
  state : MediaPositionState,
) -> Unit =
  #| (self, state) => self.setPositionState(state)

///|
pub extern "js" fn MediaSession::set_microphone_active(
  self : MediaSession,
  active : Bool,
) -> Promise[Unit] =
  #| (self, active) => self.setMicrophoneActive(active)

///|
pub extern "js" fn MediaSession::set_camera_active(
  self : MediaSession,
  active : Bool,
) -> Promise[Unit] =
  #| (self, active) => self.setCameraActive(active)

///|
pub extern "js" fn MediaSession::set_screenshare_active(
  self : MediaSession,
  active : Bool,
) -> Promise[Unit] =
  #| (self, active) => self.setScreenshareActive(active)

///|
/// MediaMetadata interface
pub type MediaMetadata

///|
pub extern "js" fn MediaMetadata::to_js_value(self : MediaMetadata) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn MediaMetadata::new(
  init_ : MediaMetadataInit,
) -> MediaMetadata =
  #| (init_) => new MediaMetadata(init_)

///|
pub extern "js" fn MediaMetadata::get_title(self : MediaMetadata) -> String =
  #| (self) => self.title

///|
pub extern "js" fn MediaMetadata::set_title(
  self : MediaMetadata,
  value : String,
) -> Unit =
  #| (self, value) => { self.title = value }

///|
pub extern "js" fn MediaMetadata::get_artist(self : MediaMetadata) -> String =
  #| (self) => self.artist

///|
pub extern "js" fn MediaMetadata::set_artist(
  self : MediaMetadata,
  value : String,
) -> Unit =
  #| (self, value) => { self.artist = value }

///|
pub extern "js" fn MediaMetadata::get_album(self : MediaMetadata) -> String =
  #| (self) => self.album

///|
pub extern "js" fn MediaMetadata::set_album(
  self : MediaMetadata,
  value : String,
) -> Unit =
  #| (self, value) => { self.album = value }

///|
pub extern "js" fn MediaMetadata::get_artwork(self : MediaMetadata) -> JsValue =
  #| (self) => self.artwork

///|
pub extern "js" fn MediaMetadata::set_artwork(
  self : MediaMetadata,
  value : JsValue,
) -> Unit =
  #| (self, value) => { self.artwork = value }

///|
pub extern "js" fn MediaMetadata::get_chapter_info(
  self : MediaMetadata,
) -> JsValue =
  #| (self) => self.chapterInfo

///|
/// ChapterInformation interface
pub type ChapterInformation

///|
pub extern "js" fn ChapterInformation::to_js_value(
  self : ChapterInformation,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn ChapterInformation::get_title(
  self : ChapterInformation,
) -> String =
  #| (self) => self.title

///|
pub extern "js" fn ChapterInformation::get_start_time(
  self : ChapterInformation,
) -> Double =
  #| (self) => self.startTime

///|
pub extern "js" fn ChapterInformation::get_artwork(
  self : ChapterInformation,
) -> JsValue =
  #| (self) => self.artwork
