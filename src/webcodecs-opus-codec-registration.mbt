// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webcodecs-opus-codec-registration

///|
/// OpusBitstreamFormat enum
pub(all) enum OpusBitstreamFormat {
  Opus
  Ogg
}

///|
/// Convert to string value
pub fn OpusBitstreamFormat::to_string(self : OpusBitstreamFormat) -> String {
  match self {
    OpusBitstreamFormat::Opus => "opus"
    OpusBitstreamFormat::Ogg => "ogg"
  }
}

///|
/// Parse from string value
pub fn OpusBitstreamFormat::from_string(s : String) -> OpusBitstreamFormat? {
  match s {
    "opus" => Some(OpusBitstreamFormat::Opus)
    "ogg" => Some(OpusBitstreamFormat::Ogg)
    _ => None
  }
}

///|
/// OpusSignal enum
pub(all) enum OpusSignal {
  Auto
  Music
  Voice
}

///|
/// Convert to string value
pub fn OpusSignal::to_string(self : OpusSignal) -> String {
  match self {
    OpusSignal::Auto => "auto"
    OpusSignal::Music => "music"
    OpusSignal::Voice => "voice"
  }
}

///|
/// Parse from string value
pub fn OpusSignal::from_string(s : String) -> OpusSignal? {
  match s {
    "auto" => Some(OpusSignal::Auto)
    "music" => Some(OpusSignal::Music)
    "voice" => Some(OpusSignal::Voice)
    _ => None
  }
}

///|
/// OpusApplication enum
pub(all) enum OpusApplication {
  Voip
  Audio
  Lowdelay
}

///|
/// Convert to string value
pub fn OpusApplication::to_string(self : OpusApplication) -> String {
  match self {
    OpusApplication::Voip => "voip"
    OpusApplication::Audio => "audio"
    OpusApplication::Lowdelay => "lowdelay"
  }
}

///|
/// Parse from string value
pub fn OpusApplication::from_string(s : String) -> OpusApplication? {
  match s {
    "voip" => Some(OpusApplication::Voip)
    "audio" => Some(OpusApplication::Audio)
    "lowdelay" => Some(OpusApplication::Lowdelay)
    _ => None
  }
}

///|
/// OpusEncoderConfig dictionary
pub struct OpusEncoderConfig {
  format : OpusBitstreamFormat?
  signal : OpusSignal?
  application : OpusApplication?
  frameDuration : Int64?
  complexity : Int?
  packetlossperc : Int?
  useinbandfec : Bool?
  usedtx : Bool?
}

///|
/// Create a new OpusEncoderConfig with default values
pub fn OpusEncoderConfig::default() -> OpusEncoderConfig {
  OpusEncoderConfig::{
    format: None,
    signal: None,
    application: None,
    frameDuration: None,
    complexity: None,
    packetlossperc: None,
    useinbandfec: None,
    usedtx: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn OpusEncoderConfig::to_js(
  self : OpusEncoderConfig,
) -> JsValue =
  #| (self) => ({
  #|   format: ['opus', 'ogg'][self.format],
  #|   signal: ['auto', 'music', 'voice'][self.signal],
  #|   application: ['voip', 'audio', 'lowdelay'][self.application],
  #|   frameDuration: self.frameDuration,
  #|   complexity: self.complexity,
  #|   packetlossperc: self.packetlossperc,
  #|   useinbandfec: self.useinbandfec,
  #|   usedtx: self.usedtx
  #| })
