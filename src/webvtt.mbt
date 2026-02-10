// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webvtt

///|
/// LineAndPositionSetting typedef
pub type LineAndPositionSetting

///|
pub extern "js" fn LineAndPositionSetting::to_js_value(
  self : LineAndPositionSetting,
) -> JsValue =
  #| (self) => self

///|
/// Create LineAndPositionSetting from Double
pub extern "js" fn LineAndPositionSetting::from_double(
  v : Double,
) -> LineAndPositionSetting =
  #| (v) => v

///|
/// Create LineAndPositionSetting from AutoKeyword
pub extern "js" fn LineAndPositionSetting::from_auto_keyword(
  v : AutoKeyword,
) -> LineAndPositionSetting =
  #| (v) => v

///|
/// Check if this LineAndPositionSetting is Double
pub extern "js" fn LineAndPositionSetting::is_double(
  self : LineAndPositionSetting,
) -> Bool =
  #| (self) => typeof self === 'number'

///|
/// Check if this LineAndPositionSetting is AutoKeyword
pub extern "js" fn LineAndPositionSetting::is_auto_keyword(
  self : LineAndPositionSetting,
) -> Bool =
  #| (self) => typeof self === 'string'

///|
/// Try to get LineAndPositionSetting as Double
pub extern "js" fn LineAndPositionSetting::as_double(
  self : LineAndPositionSetting,
) -> Double? =
  #| (self) => (typeof self === 'number') ? self : undefined

///|
/// Try to get LineAndPositionSetting as AutoKeyword
pub extern "js" fn LineAndPositionSetting::as_auto_keyword(
  self : LineAndPositionSetting,
) -> AutoKeyword? =
  #| (self) => (typeof self === 'string') ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[LineAndPositionSetting] to Double?
pub fn LineAndPositionSetting::bind_as_double(
  value : LineAndPositionSetting?,
) -> Double? {
  match value {
    Some(v) => v.as_double()
    None => None
  }
}

///|
/// Flatten Option[LineAndPositionSetting] to AutoKeyword?
pub fn LineAndPositionSetting::bind_as_auto_keyword(
  value : LineAndPositionSetting?,
) -> AutoKeyword? {
  match value {
    Some(v) => v.as_auto_keyword()
    None => None
  }
}

///|
/// AutoKeyword enum
pub(all) enum AutoKeyword {
  Auto
} derive(Eq, Show)

///|
/// Convert to string value
pub fn AutoKeyword::to_string(self : AutoKeyword) -> String {
  match self {
    AutoKeyword::Auto => "auto"
  }
}

///|
/// Parse from string value
pub fn AutoKeyword::from_string(s : String) -> AutoKeyword? {
  match s {
    "auto" => Some(AutoKeyword::Auto)
    _ => None
  }
}

///|
/// DirectionSetting enum
pub(all) enum DirectionSetting {
  Empty
  Rl
  Lr
} derive(Eq, Show)

///|
/// Convert to string value
pub fn DirectionSetting::to_string(self : DirectionSetting) -> String {
  match self {
    DirectionSetting::Empty => ""
    DirectionSetting::Rl => "rl"
    DirectionSetting::Lr => "lr"
  }
}

///|
/// Parse from string value
pub fn DirectionSetting::from_string(s : String) -> DirectionSetting? {
  match s {
    "" => Some(DirectionSetting::Empty)
    "rl" => Some(DirectionSetting::Rl)
    "lr" => Some(DirectionSetting::Lr)
    _ => None
  }
}

///|
/// LineAlignSetting enum
pub(all) enum LineAlignSetting {
  Start
  Center
  End
} derive(Eq, Show)

///|
/// Convert to string value
pub fn LineAlignSetting::to_string(self : LineAlignSetting) -> String {
  match self {
    LineAlignSetting::Start => "start"
    LineAlignSetting::Center => "center"
    LineAlignSetting::End => "end"
  }
}

///|
/// Parse from string value
pub fn LineAlignSetting::from_string(s : String) -> LineAlignSetting? {
  match s {
    "start" => Some(LineAlignSetting::Start)
    "center" => Some(LineAlignSetting::Center)
    "end" => Some(LineAlignSetting::End)
    _ => None
  }
}

///|
/// PositionAlignSetting enum
pub(all) enum PositionAlignSetting {
  LineLeft
  Center
  LineRight
  Auto
} derive(Eq, Show)

///|
/// Convert to string value
pub fn PositionAlignSetting::to_string(self : PositionAlignSetting) -> String {
  match self {
    PositionAlignSetting::LineLeft => "line-left"
    PositionAlignSetting::Center => "center"
    PositionAlignSetting::LineRight => "line-right"
    PositionAlignSetting::Auto => "auto"
  }
}

///|
/// Parse from string value
pub fn PositionAlignSetting::from_string(s : String) -> PositionAlignSetting? {
  match s {
    "line-left" => Some(PositionAlignSetting::LineLeft)
    "center" => Some(PositionAlignSetting::Center)
    "line-right" => Some(PositionAlignSetting::LineRight)
    "auto" => Some(PositionAlignSetting::Auto)
    _ => None
  }
}

///|
/// AlignSetting enum
pub(all) enum AlignSetting {
  Start
  Center
  End
  Left
  Right
} derive(Eq, Show)

///|
/// Convert to string value
pub fn AlignSetting::to_string(self : AlignSetting) -> String {
  match self {
    AlignSetting::Start => "start"
    AlignSetting::Center => "center"
    AlignSetting::End => "end"
    AlignSetting::Left => "left"
    AlignSetting::Right => "right"
  }
}

///|
/// Parse from string value
pub fn AlignSetting::from_string(s : String) -> AlignSetting? {
  match s {
    "start" => Some(AlignSetting::Start)
    "center" => Some(AlignSetting::Center)
    "end" => Some(AlignSetting::End)
    "left" => Some(AlignSetting::Left)
    "right" => Some(AlignSetting::Right)
    _ => None
  }
}

///|
/// ScrollSetting enum
pub(all) enum ScrollSetting {
  Empty
  Up
} derive(Eq, Show)

///|
/// Convert to string value
pub fn ScrollSetting::to_string(self : ScrollSetting) -> String {
  match self {
    ScrollSetting::Empty => ""
    ScrollSetting::Up => "up"
  }
}

///|
/// Parse from string value
pub fn ScrollSetting::from_string(s : String) -> ScrollSetting? {
  match s {
    "" => Some(ScrollSetting::Empty)
    "up" => Some(ScrollSetting::Up)
    _ => None
  }
}

///|
/// VTTCue interface
pub type VTTCue

///|
pub extern "js" fn VTTCue::to_js_value(self : VTTCue) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to VTTCue (unchecked)
pub extern "js" fn VTTCue::from_js_value(v : JsValue) -> VTTCue =
  #| (v) => v

///|
/// Safely cast JsValue to VTTCue (checked with instanceof)
pub extern "js" fn VTTCue::from_js_value_opt(v : JsValue) -> VTTCue? =
  #| (v) => (v instanceof VTTCue) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to VTTCue (checked with instanceof)
pub extern "js" fn JsValue::as_vtt_cue(self : JsValue) -> VTTCue? =
  #| (self) => (self instanceof VTTCue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to VTTCue (unchecked)
pub extern "js" fn JsValue::to_vtt_cue(self : JsValue) -> VTTCue =
  #| (self) => self

///|
pub extern "js" fn VTTCue::to_text_track_cue(self : VTTCue) -> TextTrackCue =
  #| (self) => self

///|
pub extern "js" fn VTTCue::to_event_target(self : VTTCue) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn VTTCue::new(
  start_time : Double,
  end_time : Double,
  text : String,
) -> VTTCue =
  #| (start_time, end_time, text) => new VTTCue(start_time, end_time, text)

///|
pub extern "js" fn VTTCue::get_region(self : VTTCue) -> VTTRegion? =
  #| (self) => (() => { const v = self.region; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn VTTCue::set_region(
  self : VTTCue,
  value : VTTRegion?,
) -> Unit =
  #| (self, value) => { self.region = (value.$tag === 1 ? value._0 : null) }

///|
pub extern "js" fn VTTCue::get_vertical(self : VTTCue) -> DirectionSetting =
  #| (self) => ['', 'rl', 'lr'].indexOf(self.vertical)

///|
pub extern "js" fn VTTCue::set_vertical(
  self : VTTCue,
  value : DirectionSetting,
) -> Unit =
  #| (self, value) => { self.vertical = ['', 'rl', 'lr'][value] }

///|
pub extern "js" fn VTTCue::get_snap_to_lines(self : VTTCue) -> Bool =
  #| (self) => self.snapToLines

///|
pub extern "js" fn VTTCue::set_snap_to_lines(
  self : VTTCue,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.snapToLines = value }

///|
pub extern "js" fn VTTCue::get_line(self : VTTCue) -> LineAndPositionSetting =
  #| (self) => self.line

///|
pub extern "js" fn VTTCue::set_line(
  self : VTTCue,
  value : LineAndPositionSetting,
) -> Unit =
  #| (self, value) => { self.line = value }

///|
pub extern "js" fn VTTCue::get_line_align(self : VTTCue) -> LineAlignSetting =
  #| (self) => ['start', 'center', 'end'].indexOf(self.lineAlign)

///|
pub extern "js" fn VTTCue::set_line_align(
  self : VTTCue,
  value : LineAlignSetting,
) -> Unit =
  #| (self, value) => { self.lineAlign = ['start', 'center', 'end'][value] }

///|
pub extern "js" fn VTTCue::get_position(
  self : VTTCue,
) -> LineAndPositionSetting =
  #| (self) => self.position

///|
pub extern "js" fn VTTCue::set_position(
  self : VTTCue,
  value : LineAndPositionSetting,
) -> Unit =
  #| (self, value) => { self.position = value }

///|
pub extern "js" fn VTTCue::get_position_align(
  self : VTTCue,
) -> PositionAlignSetting =
  #| (self) => ['line-left', 'center', 'line-right', 'auto'].indexOf(self.positionAlign)

///|
pub extern "js" fn VTTCue::set_position_align(
  self : VTTCue,
  value : PositionAlignSetting,
) -> Unit =
  #| (self, value) => { self.positionAlign = ['line-left', 'center', 'line-right', 'auto'][value] }

///|
pub extern "js" fn VTTCue::get_size(self : VTTCue) -> Double =
  #| (self) => self.size

///|
pub extern "js" fn VTTCue::set_size(self : VTTCue, value : Double) -> Unit =
  #| (self, value) => { self.size = value }

///|
pub extern "js" fn VTTCue::get_align(self : VTTCue) -> AlignSetting =
  #| (self) => ['start', 'center', 'end', 'left', 'right'].indexOf(self.align)

///|
pub extern "js" fn VTTCue::set_align(
  self : VTTCue,
  value : AlignSetting,
) -> Unit =
  #| (self, value) => { self.align = ['start', 'center', 'end', 'left', 'right'][value] }

///|
pub extern "js" fn VTTCue::get_text(self : VTTCue) -> String =
  #| (self) => self.text

///|
pub extern "js" fn VTTCue::set_text(self : VTTCue, value : String) -> Unit =
  #| (self, value) => { self.text = value }

///|
pub extern "js" fn VTTCue::get_cue_as_html(self : VTTCue) -> DocumentFragment =
  #| (self) => self.getCueAsHTML()

///|
/// VTTRegion interface
pub type VTTRegion

///|
pub extern "js" fn VTTRegion::to_js_value(self : VTTRegion) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to VTTRegion (unchecked)
pub extern "js" fn VTTRegion::from_js_value(v : JsValue) -> VTTRegion =
  #| (v) => v

///|
/// Safely cast JsValue to VTTRegion (checked with instanceof)
pub extern "js" fn VTTRegion::from_js_value_opt(v : JsValue) -> VTTRegion? =
  #| (v) => (v instanceof VTTRegion) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to VTTRegion (checked with instanceof)
pub extern "js" fn JsValue::as_vtt_region(self : JsValue) -> VTTRegion? =
  #| (self) => (self instanceof VTTRegion) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to VTTRegion (unchecked)
pub extern "js" fn JsValue::to_vtt_region(self : JsValue) -> VTTRegion =
  #| (self) => self

///|
pub extern "js" fn VTTRegion::new() -> VTTRegion =
  #| () => new VTTRegion()

///|
pub extern "js" fn VTTRegion::get_id(self : VTTRegion) -> String =
  #| (self) => self.id

///|
pub extern "js" fn VTTRegion::set_id(self : VTTRegion, value : String) -> Unit =
  #| (self, value) => { self.id = value }

///|
pub extern "js" fn VTTRegion::get_width(self : VTTRegion) -> Double =
  #| (self) => self.width

///|
pub extern "js" fn VTTRegion::set_width(
  self : VTTRegion,
  value : Double,
) -> Unit =
  #| (self, value) => { self.width = value }

///|
pub extern "js" fn VTTRegion::get_lines(self : VTTRegion) -> Int =
  #| (self) => self.lines

///|
pub extern "js" fn VTTRegion::set_lines(self : VTTRegion, value : Int) -> Unit =
  #| (self, value) => { self.lines = value }

///|
pub extern "js" fn VTTRegion::get_region_anchor_x(self : VTTRegion) -> Double =
  #| (self) => self.regionAnchorX

///|
pub extern "js" fn VTTRegion::set_region_anchor_x(
  self : VTTRegion,
  value : Double,
) -> Unit =
  #| (self, value) => { self.regionAnchorX = value }

///|
pub extern "js" fn VTTRegion::get_region_anchor_y(self : VTTRegion) -> Double =
  #| (self) => self.regionAnchorY

///|
pub extern "js" fn VTTRegion::set_region_anchor_y(
  self : VTTRegion,
  value : Double,
) -> Unit =
  #| (self, value) => { self.regionAnchorY = value }

///|
pub extern "js" fn VTTRegion::get_viewport_anchor_x(self : VTTRegion) -> Double =
  #| (self) => self.viewportAnchorX

///|
pub extern "js" fn VTTRegion::set_viewport_anchor_x(
  self : VTTRegion,
  value : Double,
) -> Unit =
  #| (self, value) => { self.viewportAnchorX = value }

///|
pub extern "js" fn VTTRegion::get_viewport_anchor_y(self : VTTRegion) -> Double =
  #| (self) => self.viewportAnchorY

///|
pub extern "js" fn VTTRegion::set_viewport_anchor_y(
  self : VTTRegion,
  value : Double,
) -> Unit =
  #| (self, value) => { self.viewportAnchorY = value }

///|
pub extern "js" fn VTTRegion::get_scroll(self : VTTRegion) -> ScrollSetting =
  #| (self) => ['', 'up'].indexOf(self.scroll)

///|
pub extern "js" fn VTTRegion::set_scroll(
  self : VTTRegion,
  value : ScrollSetting,
) -> Unit =
  #| (self, value) => { self.scroll = ['', 'up'][value] }
