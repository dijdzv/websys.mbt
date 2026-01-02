// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webvtt

///|
/// LineAndPositionSetting typedef
pub type LineAndPositionSetting = JsValue

///|
/// AutoKeyword enum
pub(all) enum AutoKeyword {
  Auto
}

/// Convert to string value
pub fn AutoKeyword::to_string(self : AutoKeyword) -> String {
  match self {
    Auto => "auto"
  }
}

/// Parse from string value
pub fn AutoKeyword::from_string(s : String) -> AutoKeyword? {
  match s {
    "auto" => Some(Auto)
    _ => None
  }
}

///|
/// DirectionSetting enum
pub(all) enum DirectionSetting {
  Empty
  Rl
  Lr
}

/// Convert to string value
pub fn DirectionSetting::to_string(self : DirectionSetting) -> String {
  match self {
    Empty => ""
    Rl => "rl"
    Lr => "lr"
  }
}

/// Parse from string value
pub fn DirectionSetting::from_string(s : String) -> DirectionSetting? {
  match s {
    "" => Some(Empty)
    "rl" => Some(Rl)
    "lr" => Some(Lr)
    _ => None
  }
}

///|
/// LineAlignSetting enum
pub(all) enum LineAlignSetting {
  Start
  Center
  End
}

/// Convert to string value
pub fn LineAlignSetting::to_string(self : LineAlignSetting) -> String {
  match self {
    Start => "start"
    Center => "center"
    End => "end"
  }
}

/// Parse from string value
pub fn LineAlignSetting::from_string(s : String) -> LineAlignSetting? {
  match s {
    "start" => Some(Start)
    "center" => Some(Center)
    "end" => Some(End)
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
}

/// Convert to string value
pub fn PositionAlignSetting::to_string(self : PositionAlignSetting) -> String {
  match self {
    LineLeft => "line-left"
    Center => "center"
    LineRight => "line-right"
    Auto => "auto"
  }
}

/// Parse from string value
pub fn PositionAlignSetting::from_string(s : String) -> PositionAlignSetting? {
  match s {
    "line-left" => Some(LineLeft)
    "center" => Some(Center)
    "line-right" => Some(LineRight)
    "auto" => Some(Auto)
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
}

/// Convert to string value
pub fn AlignSetting::to_string(self : AlignSetting) -> String {
  match self {
    Start => "start"
    Center => "center"
    End => "end"
    Left => "left"
    Right => "right"
  }
}

/// Parse from string value
pub fn AlignSetting::from_string(s : String) -> AlignSetting? {
  match s {
    "start" => Some(Start)
    "center" => Some(Center)
    "end" => Some(End)
    "left" => Some(Left)
    "right" => Some(Right)
    _ => None
  }
}

///|
/// ScrollSetting enum
pub(all) enum ScrollSetting {
  Empty
  Up
}

/// Convert to string value
pub fn ScrollSetting::to_string(self : ScrollSetting) -> String {
  match self {
    Empty => ""
    Up => "up"
  }
}

/// Parse from string value
pub fn ScrollSetting::from_string(s : String) -> ScrollSetting? {
  match s {
    "" => Some(Empty)
    "up" => Some(Up)
    _ => None
  }
}

///|
/// VTTCue interface
pub type VTTCue

pub extern "js" fn VTTCue::to_js_value(self : VTTCue) -> JsValue =
  #| (self) => self

pub extern "js" fn VTTCue::new(start_time : Double, end_time : Double, text : String) -> VTTCue =
  #| (start_time, end_time, text) => new VTTCue(start_time, end_time, text)

pub extern "js" fn VTTCue::get_region(self : VTTCue) -> VTTRegion? =
  #| (self) => self.region

pub extern "js" fn VTTCue::set_region(self : VTTCue, value : VTTRegion?) -> Unit =
  #| (self, value) => { self.region = value }

pub extern "js" fn VTTCue::get_vertical(self : VTTCue) -> DirectionSetting =
  #| (self) => self.vertical

pub extern "js" fn VTTCue::set_vertical(self : VTTCue, value : DirectionSetting) -> Unit =
  #| (self, value) => { self.vertical = value }

pub extern "js" fn VTTCue::get_snap_to_lines(self : VTTCue) -> Bool =
  #| (self) => self.snapToLines

pub extern "js" fn VTTCue::set_snap_to_lines(self : VTTCue, value : Bool) -> Unit =
  #| (self, value) => { self.snapToLines = value }

pub extern "js" fn VTTCue::get_line(self : VTTCue) -> LineAndPositionSetting =
  #| (self) => self.line

pub extern "js" fn VTTCue::set_line(self : VTTCue, value : LineAndPositionSetting) -> Unit =
  #| (self, value) => { self.line = value }

pub extern "js" fn VTTCue::get_line_align(self : VTTCue) -> LineAlignSetting =
  #| (self) => self.lineAlign

pub extern "js" fn VTTCue::set_line_align(self : VTTCue, value : LineAlignSetting) -> Unit =
  #| (self, value) => { self.lineAlign = value }

pub extern "js" fn VTTCue::get_position(self : VTTCue) -> LineAndPositionSetting =
  #| (self) => self.position

pub extern "js" fn VTTCue::set_position(self : VTTCue, value : LineAndPositionSetting) -> Unit =
  #| (self, value) => { self.position = value }

pub extern "js" fn VTTCue::get_position_align(self : VTTCue) -> PositionAlignSetting =
  #| (self) => self.positionAlign

pub extern "js" fn VTTCue::set_position_align(self : VTTCue, value : PositionAlignSetting) -> Unit =
  #| (self, value) => { self.positionAlign = value }

pub extern "js" fn VTTCue::get_size(self : VTTCue) -> Double =
  #| (self) => self.size

pub extern "js" fn VTTCue::set_size(self : VTTCue, value : Double) -> Unit =
  #| (self, value) => { self.size = value }

pub extern "js" fn VTTCue::get_align(self : VTTCue) -> AlignSetting =
  #| (self) => self.align

pub extern "js" fn VTTCue::set_align(self : VTTCue, value : AlignSetting) -> Unit =
  #| (self, value) => { self.align = value }

pub extern "js" fn VTTCue::get_text(self : VTTCue) -> String =
  #| (self) => self.text

pub extern "js" fn VTTCue::set_text(self : VTTCue, value : String) -> Unit =
  #| (self, value) => { self.text = value }

pub extern "js" fn VTTCue::get_cue_as_h_t_m_l(self : VTTCue) -> DocumentFragment =
  #| (self) => self.getCueAsHTML()

///|
/// VTTRegion interface
pub type VTTRegion

pub extern "js" fn VTTRegion::to_js_value(self : VTTRegion) -> JsValue =
  #| (self) => self

pub extern "js" fn VTTRegion::new() -> VTTRegion =
  #| () => new VTTRegion()

pub extern "js" fn VTTRegion::get_id(self : VTTRegion) -> String =
  #| (self) => self.id

pub extern "js" fn VTTRegion::set_id(self : VTTRegion, value : String) -> Unit =
  #| (self, value) => { self.id = value }

pub extern "js" fn VTTRegion::get_width(self : VTTRegion) -> Double =
  #| (self) => self.width

pub extern "js" fn VTTRegion::set_width(self : VTTRegion, value : Double) -> Unit =
  #| (self, value) => { self.width = value }

pub extern "js" fn VTTRegion::get_lines(self : VTTRegion) -> Int =
  #| (self) => self.lines

pub extern "js" fn VTTRegion::set_lines(self : VTTRegion, value : Int) -> Unit =
  #| (self, value) => { self.lines = value }

pub extern "js" fn VTTRegion::get_region_anchor_x(self : VTTRegion) -> Double =
  #| (self) => self.regionAnchorX

pub extern "js" fn VTTRegion::set_region_anchor_x(self : VTTRegion, value : Double) -> Unit =
  #| (self, value) => { self.regionAnchorX = value }

pub extern "js" fn VTTRegion::get_region_anchor_y(self : VTTRegion) -> Double =
  #| (self) => self.regionAnchorY

pub extern "js" fn VTTRegion::set_region_anchor_y(self : VTTRegion, value : Double) -> Unit =
  #| (self, value) => { self.regionAnchorY = value }

pub extern "js" fn VTTRegion::get_viewport_anchor_x(self : VTTRegion) -> Double =
  #| (self) => self.viewportAnchorX

pub extern "js" fn VTTRegion::set_viewport_anchor_x(self : VTTRegion, value : Double) -> Unit =
  #| (self, value) => { self.viewportAnchorX = value }

pub extern "js" fn VTTRegion::get_viewport_anchor_y(self : VTTRegion) -> Double =
  #| (self) => self.viewportAnchorY

pub extern "js" fn VTTRegion::set_viewport_anchor_y(self : VTTRegion, value : Double) -> Unit =
  #| (self, value) => { self.viewportAnchorY = value }

pub extern "js" fn VTTRegion::get_scroll(self : VTTRegion) -> ScrollSetting =
  #| (self) => self.scroll

pub extern "js" fn VTTRegion::set_scroll(self : VTTRegion, value : ScrollSetting) -> Unit =
  #| (self, value) => { self.scroll = value }

