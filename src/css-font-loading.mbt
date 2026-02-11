// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-font-loading

///|
/// FontFaceLoadStatus enum
pub(all) enum FontFaceLoadStatus {
  Unloaded
  Loading
  Loaded
  Error
} derive(Eq, Show)

///|
/// Convert to string value
pub fn FontFaceLoadStatus::to_string(self : FontFaceLoadStatus) -> String {
  match self {
    FontFaceLoadStatus::Unloaded => "unloaded"
    FontFaceLoadStatus::Loading => "loading"
    FontFaceLoadStatus::Loaded => "loaded"
    FontFaceLoadStatus::Error => "error"
  }
}

///|
/// Parse from string value
pub fn FontFaceLoadStatus::from_string(s : String) -> FontFaceLoadStatus? {
  match s {
    "unloaded" => Some(FontFaceLoadStatus::Unloaded)
    "loading" => Some(FontFaceLoadStatus::Loading)
    "loaded" => Some(FontFaceLoadStatus::Loaded)
    "error" => Some(FontFaceLoadStatus::Error)
    _ => None
  }
}

///|
/// FontFaceSetLoadStatus enum
pub(all) enum FontFaceSetLoadStatus {
  Loading
  Loaded
} derive(Eq, Show)

///|
/// Convert to string value
pub fn FontFaceSetLoadStatus::to_string(self : FontFaceSetLoadStatus) -> String {
  match self {
    FontFaceSetLoadStatus::Loading => "loading"
    FontFaceSetLoadStatus::Loaded => "loaded"
  }
}

///|
/// Parse from string value
pub fn FontFaceSetLoadStatus::from_string(s : String) -> FontFaceSetLoadStatus? {
  match s {
    "loading" => Some(FontFaceSetLoadStatus::Loading)
    "loaded" => Some(FontFaceSetLoadStatus::Loaded)
    _ => None
  }
}

///|
/// FontFaceDescriptors dictionary
pub(all) struct FontFaceDescriptors {
  style : String?
  weight : String?
  stretch : String?
  unicodeRange : String?
  featureSettings : String?
  variationSettings : String?
  display : String?
  ascentOverride : String?
  descentOverride : String?
  lineGapOverride : String?
}

///|
/// Create a new FontFaceDescriptors with default values
pub fn FontFaceDescriptors::default() -> FontFaceDescriptors {
  FontFaceDescriptors::{
    style: None,
    weight: None,
    stretch: None,
    unicodeRange: None,
    featureSettings: None,
    variationSettings: None,
    display: None,
    ascentOverride: None,
    descentOverride: None,
    lineGapOverride: None,
  }
}

///|
extern "js" fn FontFaceDescriptors::to_js_ffi(
  self : FontFaceDescriptors,
) -> JsValue =
  #| (self) => ({
  #|   style: self.style,
  #|   weight: self.weight,
  #|   stretch: self.stretch,
  #|   unicodeRange: self.unicodeRange,
  #|   featureSettings: self.featureSettings,
  #|   variationSettings: self.variationSettings,
  #|   display: self.display,
  #|   ascentOverride: self.ascentOverride,
  #|   descentOverride: self.descentOverride,
  #|   lineGapOverride: self.lineGapOverride
  #| })

///|
/// Convert to JsValue
pub fn FontFaceDescriptors::to_js(self : FontFaceDescriptors) -> JsValue {
  FontFaceDescriptors::to_js_ffi(self)
}

///|
extern "js" fn FontFaceDescriptors::from_js_ffi(
  value : JsValue,
) -> FontFaceDescriptors =
  #| (v) => ({
  #|   style: v.style,
  #|   weight: v.weight,
  #|   stretch: v.stretch,
  #|   unicodeRange: v.unicodeRange,
  #|   featureSettings: v.featureSettings,
  #|   variationSettings: v.variationSettings,
  #|   display: v.display,
  #|   ascentOverride: v.ascentOverride,
  #|   descentOverride: v.descentOverride,
  #|   lineGapOverride: v.lineGapOverride
  #| })

///|
/// Convert from JsValue
pub fn FontFaceDescriptors::from_js(value : JsValue) -> FontFaceDescriptors {
  FontFaceDescriptors::from_js_ffi(value)
}

///|
/// FontFaceSetLoadEventInit dictionary
pub(all) struct FontFaceSetLoadEventInit {
  fontfaces : Array[FontFace]?
}

///|
/// Create a new FontFaceSetLoadEventInit with default values
pub fn FontFaceSetLoadEventInit::default() -> FontFaceSetLoadEventInit {
  FontFaceSetLoadEventInit::{ fontfaces: None }
}

///|
extern "js" fn FontFaceSetLoadEventInit::to_js_ffi(
  self : FontFaceSetLoadEventInit,
) -> JsValue =
  #| (self) => ({
  #|   fontfaces: ((() => { const v = self.fontfaces; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn FontFaceSetLoadEventInit::to_js(
  self : FontFaceSetLoadEventInit,
) -> JsValue {
  FontFaceSetLoadEventInit::to_js_ffi(self)
}

///|
extern "js" fn FontFaceSetLoadEventInit::from_js_ffi(
  value : JsValue,
) -> FontFaceSetLoadEventInit =
  #| (v) => ({
  #|   fontfaces: (v.fontfaces === undefined ? { $tag: 0 } : { $tag: 1, _0: v.fontfaces })
  #| })

///|
/// Convert from JsValue
pub fn FontFaceSetLoadEventInit::from_js(
  value : JsValue,
) -> FontFaceSetLoadEventInit {
  FontFaceSetLoadEventInit::from_js_ffi(value)
}

///|
/// FontFace interface
pub type FontFace

///|
pub extern "js" fn FontFace::to_js_value(self : FontFace) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to FontFace (unchecked)
pub extern "js" fn FontFace::from_js_value(v : JsValue) -> FontFace =
  #| (v) => v

///|
/// Safely cast JsValue to FontFace (checked with instanceof)
pub extern "js" fn FontFace::from_js_value_opt(v : JsValue) -> FontFace? =
  #| (v) => (v instanceof FontFace) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to FontFace (checked with instanceof)
pub extern "js" fn JsValue::as_font_face(self : JsValue) -> FontFace? =
  #| (self) => (self instanceof FontFace) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to FontFace (unchecked)
pub extern "js" fn JsValue::to_font_face(self : JsValue) -> FontFace =
  #| (self) => self

///|
pub extern "js" fn FontFace::new(
  family : String,
  source : StringOrBufferSource,
) -> FontFace =
  #| (family, source) => new FontFace(family, source)

///|
extern "js" fn FontFace::new_with_descriptors_ffi(
  family : String,
  source : StringOrBufferSource,
  descriptors : JsValue,
) -> FontFace =
  #| (family, source, descriptors) => new FontFace(family, source, descriptors)

///|
pub fn FontFace::new_with_descriptors(
  family : String,
  source : StringOrBufferSource,
  descriptors : FontFaceDescriptors,
) -> FontFace {
  FontFace::new_with_descriptors_ffi(family, source, descriptors.to_js())
}

///|
pub extern "js" fn FontFace::get_family(self : FontFace) -> String =
  #| (self) => self.family

///|
pub extern "js" fn FontFace::set_family(
  self : FontFace,
  value : String,
) -> Unit =
  #| (self, value) => { self.family = value }

///|
pub extern "js" fn FontFace::get_style(self : FontFace) -> String =
  #| (self) => self.style

///|
pub extern "js" fn FontFace::set_style(self : FontFace, value : String) -> Unit =
  #| (self, value) => { self.style = value }

///|
pub extern "js" fn FontFace::get_weight(self : FontFace) -> String =
  #| (self) => self.weight

///|
pub extern "js" fn FontFace::set_weight(
  self : FontFace,
  value : String,
) -> Unit =
  #| (self, value) => { self.weight = value }

///|
pub extern "js" fn FontFace::get_stretch(self : FontFace) -> String =
  #| (self) => self.stretch

///|
pub extern "js" fn FontFace::set_stretch(
  self : FontFace,
  value : String,
) -> Unit =
  #| (self, value) => { self.stretch = value }

///|
pub extern "js" fn FontFace::get_unicode_range(self : FontFace) -> String =
  #| (self) => self.unicodeRange

///|
pub extern "js" fn FontFace::set_unicode_range(
  self : FontFace,
  value : String,
) -> Unit =
  #| (self, value) => { self.unicodeRange = value }

///|
pub extern "js" fn FontFace::get_feature_settings(self : FontFace) -> String =
  #| (self) => self.featureSettings

///|
pub extern "js" fn FontFace::set_feature_settings(
  self : FontFace,
  value : String,
) -> Unit =
  #| (self, value) => { self.featureSettings = value }

///|
pub extern "js" fn FontFace::get_variation_settings(self : FontFace) -> String =
  #| (self) => self.variationSettings

///|
pub extern "js" fn FontFace::set_variation_settings(
  self : FontFace,
  value : String,
) -> Unit =
  #| (self, value) => { self.variationSettings = value }

///|
pub extern "js" fn FontFace::get_display(self : FontFace) -> String =
  #| (self) => self.display

///|
pub extern "js" fn FontFace::set_display(
  self : FontFace,
  value : String,
) -> Unit =
  #| (self, value) => { self.display = value }

///|
pub extern "js" fn FontFace::get_ascent_override(self : FontFace) -> String =
  #| (self) => self.ascentOverride

///|
pub extern "js" fn FontFace::set_ascent_override(
  self : FontFace,
  value : String,
) -> Unit =
  #| (self, value) => { self.ascentOverride = value }

///|
pub extern "js" fn FontFace::get_descent_override(self : FontFace) -> String =
  #| (self) => self.descentOverride

///|
pub extern "js" fn FontFace::set_descent_override(
  self : FontFace,
  value : String,
) -> Unit =
  #| (self, value) => { self.descentOverride = value }

///|
pub extern "js" fn FontFace::get_line_gap_override(self : FontFace) -> String =
  #| (self) => self.lineGapOverride

///|
pub extern "js" fn FontFace::set_line_gap_override(
  self : FontFace,
  value : String,
) -> Unit =
  #| (self, value) => { self.lineGapOverride = value }

///|
pub extern "js" fn FontFace::get_status(self : FontFace) -> FontFaceLoadStatus =
  #| (self) => ['unloaded', 'loading', 'loaded', 'error'].indexOf(self.status)

///|
pub extern "js" fn FontFace::load(self : FontFace) -> Promise[FontFace] =
  #| (self) => self.load()

///|
pub extern "js" fn FontFace::get_loaded(self : FontFace) -> Promise[FontFace] =
  #| (self) => self.loaded

///|
pub extern "js" fn FontFace::get_features(self : FontFace) -> FontFaceFeatures =
  #| (self) => self.features

///|
pub extern "js" fn FontFace::get_variations(
  self : FontFace,
) -> FontFaceVariations =
  #| (self) => self.variations

///|
pub extern "js" fn FontFace::get_palettes(self : FontFace) -> FontFacePalettes =
  #| (self) => self.palettes

///|
/// FontFaceFeatures interface
pub type FontFaceFeatures

///|
pub extern "js" fn FontFaceFeatures::to_js_value(
  self : FontFaceFeatures,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to FontFaceFeatures (unchecked)
pub extern "js" fn FontFaceFeatures::from_js_value(
  v : JsValue,
) -> FontFaceFeatures =
  #| (v) => v

///|
/// Safely cast JsValue to FontFaceFeatures (checked with instanceof)
pub extern "js" fn FontFaceFeatures::from_js_value_opt(
  v : JsValue,
) -> FontFaceFeatures? =
  #| (v) => (v instanceof FontFaceFeatures) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to FontFaceFeatures (checked with instanceof)
pub extern "js" fn JsValue::as_font_face_features(
  self : JsValue,
) -> FontFaceFeatures? =
  #| (self) => (self instanceof FontFaceFeatures) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to FontFaceFeatures (unchecked)
pub extern "js" fn JsValue::to_font_face_features(
  self : JsValue,
) -> FontFaceFeatures =
  #| (self) => self

///|
/// FontFaceVariationAxis interface
pub type FontFaceVariationAxis

///|
pub extern "js" fn FontFaceVariationAxis::to_js_value(
  self : FontFaceVariationAxis,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to FontFaceVariationAxis (unchecked)
pub extern "js" fn FontFaceVariationAxis::from_js_value(
  v : JsValue,
) -> FontFaceVariationAxis =
  #| (v) => v

///|
/// Safely cast JsValue to FontFaceVariationAxis (checked with instanceof)
pub extern "js" fn FontFaceVariationAxis::from_js_value_opt(
  v : JsValue,
) -> FontFaceVariationAxis? =
  #| (v) => (v instanceof FontFaceVariationAxis) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to FontFaceVariationAxis (checked with instanceof)
pub extern "js" fn JsValue::as_font_face_variation_axis(
  self : JsValue,
) -> FontFaceVariationAxis? =
  #| (self) => (self instanceof FontFaceVariationAxis) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to FontFaceVariationAxis (unchecked)
pub extern "js" fn JsValue::to_font_face_variation_axis(
  self : JsValue,
) -> FontFaceVariationAxis =
  #| (self) => self

///|
pub extern "js" fn FontFaceVariationAxis::get_name(
  self : FontFaceVariationAxis,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn FontFaceVariationAxis::get_axis_tag(
  self : FontFaceVariationAxis,
) -> String =
  #| (self) => self.axisTag

///|
pub extern "js" fn FontFaceVariationAxis::get_minimum_value(
  self : FontFaceVariationAxis,
) -> Double =
  #| (self) => self.minimumValue

///|
pub extern "js" fn FontFaceVariationAxis::get_maximum_value(
  self : FontFaceVariationAxis,
) -> Double =
  #| (self) => self.maximumValue

///|
pub extern "js" fn FontFaceVariationAxis::get_default_value(
  self : FontFaceVariationAxis,
) -> Double =
  #| (self) => self.defaultValue

///|
/// FontFaceVariations interface
pub type FontFaceVariations

///|
pub extern "js" fn FontFaceVariations::to_js_value(
  self : FontFaceVariations,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to FontFaceVariations (unchecked)
pub extern "js" fn FontFaceVariations::from_js_value(
  v : JsValue,
) -> FontFaceVariations =
  #| (v) => v

///|
/// Safely cast JsValue to FontFaceVariations (checked with instanceof)
pub extern "js" fn FontFaceVariations::from_js_value_opt(
  v : JsValue,
) -> FontFaceVariations? =
  #| (v) => (v instanceof FontFaceVariations) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to FontFaceVariations (checked with instanceof)
pub extern "js" fn JsValue::as_font_face_variations(
  self : JsValue,
) -> FontFaceVariations? =
  #| (self) => (self instanceof FontFaceVariations) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to FontFaceVariations (unchecked)
pub extern "js" fn JsValue::to_font_face_variations(
  self : JsValue,
) -> FontFaceVariations =
  #| (self) => self

///|
pub extern "js" fn FontFaceVariations::has(
  self : FontFaceVariations,
  value : FontFaceVariationAxis,
) -> Bool =
  #| (self, value) => self.has(value)

///|
/// FontFacePalette interface
pub type FontFacePalette

///|
pub extern "js" fn FontFacePalette::to_js_value(
  self : FontFacePalette,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to FontFacePalette (unchecked)
pub extern "js" fn FontFacePalette::from_js_value(
  v : JsValue,
) -> FontFacePalette =
  #| (v) => v

///|
/// Safely cast JsValue to FontFacePalette (checked with instanceof)
pub extern "js" fn FontFacePalette::from_js_value_opt(
  v : JsValue,
) -> FontFacePalette? =
  #| (v) => (v instanceof FontFacePalette) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to FontFacePalette (checked with instanceof)
pub extern "js" fn JsValue::as_font_face_palette(
  self : JsValue,
) -> FontFacePalette? =
  #| (self) => (self instanceof FontFacePalette) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to FontFacePalette (unchecked)
pub extern "js" fn JsValue::to_font_face_palette(
  self : JsValue,
) -> FontFacePalette =
  #| (self) => self

///|
pub extern "js" fn FontFacePalette::keys(self : FontFacePalette) -> JsValue =
  #| (self) => self.keys()

///|
pub extern "js" fn FontFacePalette::values(self : FontFacePalette) -> JsValue =
  #| (self) => self.values()

///|
pub extern "js" fn FontFacePalette::entries(self : FontFacePalette) -> JsValue =
  #| (self) => self.entries()

///|
pub extern "js" fn FontFacePalette::for_each(
  self : FontFacePalette,
  callback : JsValue,
) -> Unit =
  #| (self, callback) => { self.forEach(callback) }

///|
pub extern "js" fn FontFacePalette::get_length(self : FontFacePalette) -> Int =
  #| (self) => self.length

///|
#alias("_[_]")
pub extern "js" fn FontFacePalette::get(
  self : FontFacePalette,
  index : Int,
) -> String =
  #| (self, index) => self[index]

///|
pub extern "js" fn FontFacePalette::get_usable_with_light_background(
  self : FontFacePalette,
) -> Bool =
  #| (self) => self.usableWithLightBackground

///|
pub extern "js" fn FontFacePalette::get_usable_with_dark_background(
  self : FontFacePalette,
) -> Bool =
  #| (self) => self.usableWithDarkBackground

///|
/// FontFacePalettes interface
pub type FontFacePalettes

///|
pub extern "js" fn FontFacePalettes::to_js_value(
  self : FontFacePalettes,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to FontFacePalettes (unchecked)
pub extern "js" fn FontFacePalettes::from_js_value(
  v : JsValue,
) -> FontFacePalettes =
  #| (v) => v

///|
/// Safely cast JsValue to FontFacePalettes (checked with instanceof)
pub extern "js" fn FontFacePalettes::from_js_value_opt(
  v : JsValue,
) -> FontFacePalettes? =
  #| (v) => (v instanceof FontFacePalettes) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to FontFacePalettes (checked with instanceof)
pub extern "js" fn JsValue::as_font_face_palettes(
  self : JsValue,
) -> FontFacePalettes? =
  #| (self) => (self instanceof FontFacePalettes) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to FontFacePalettes (unchecked)
pub extern "js" fn JsValue::to_font_face_palettes(
  self : JsValue,
) -> FontFacePalettes =
  #| (self) => self

///|
pub extern "js" fn FontFacePalettes::keys(self : FontFacePalettes) -> JsValue =
  #| (self) => self.keys()

///|
pub extern "js" fn FontFacePalettes::values(self : FontFacePalettes) -> JsValue =
  #| (self) => self.values()

///|
pub extern "js" fn FontFacePalettes::entries(
  self : FontFacePalettes,
) -> JsValue =
  #| (self) => self.entries()

///|
pub extern "js" fn FontFacePalettes::for_each(
  self : FontFacePalettes,
  callback : JsValue,
) -> Unit =
  #| (self, callback) => { self.forEach(callback) }

///|
pub extern "js" fn FontFacePalettes::get_length(self : FontFacePalettes) -> Int =
  #| (self) => self.length

///|
#alias("_[_]")
pub extern "js" fn FontFacePalettes::get(
  self : FontFacePalettes,
  index : Int,
) -> FontFacePalette =
  #| (self, index) => self[index]

///|
/// FontFaceSetLoadEvent interface
pub type FontFaceSetLoadEvent

///|
pub extern "js" fn FontFaceSetLoadEvent::to_js_value(
  self : FontFaceSetLoadEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to FontFaceSetLoadEvent (unchecked)
pub extern "js" fn FontFaceSetLoadEvent::from_js_value(
  v : JsValue,
) -> FontFaceSetLoadEvent =
  #| (v) => v

///|
/// Safely cast JsValue to FontFaceSetLoadEvent (checked with instanceof)
pub extern "js" fn FontFaceSetLoadEvent::from_js_value_opt(
  v : JsValue,
) -> FontFaceSetLoadEvent? =
  #| (v) => (v instanceof FontFaceSetLoadEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to FontFaceSetLoadEvent (checked with instanceof)
pub extern "js" fn JsValue::as_font_face_set_load_event(
  self : JsValue,
) -> FontFaceSetLoadEvent? =
  #| (self) => (self instanceof FontFaceSetLoadEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to FontFaceSetLoadEvent (unchecked)
pub extern "js" fn JsValue::to_font_face_set_load_event(
  self : JsValue,
) -> FontFaceSetLoadEvent =
  #| (self) => self

///|
pub extern "js" fn FontFaceSetLoadEvent::to_event(
  self : FontFaceSetLoadEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn FontFaceSetLoadEvent::new(
  type_ : String,
) -> FontFaceSetLoadEvent =
  #| (type_) => new FontFaceSetLoadEvent(type_)

///|
extern "js" fn FontFaceSetLoadEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> FontFaceSetLoadEvent =
  #| (type_, event_init_dict) => new FontFaceSetLoadEvent(type_, event_init_dict)

///|
pub fn FontFaceSetLoadEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : FontFaceSetLoadEventInit,
) -> FontFaceSetLoadEvent {
  FontFaceSetLoadEvent::new_with_event_init_dict_ffi(
    type_,
    event_init_dict.to_js(),
  )
}

///|
pub extern "js" fn FontFaceSetLoadEvent::get_fontfaces(
  self : FontFaceSetLoadEvent,
) -> JsValue =
  #| (self) => self.fontfaces

///|
/// FontFaceSet interface
pub type FontFaceSet

///|
pub extern "js" fn FontFaceSet::to_js_value(self : FontFaceSet) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to FontFaceSet (unchecked)
pub extern "js" fn FontFaceSet::from_js_value(v : JsValue) -> FontFaceSet =
  #| (v) => v

///|
/// Safely cast JsValue to FontFaceSet (checked with instanceof)
pub extern "js" fn FontFaceSet::from_js_value_opt(v : JsValue) -> FontFaceSet? =
  #| (v) => (v instanceof FontFaceSet) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to FontFaceSet (checked with instanceof)
pub extern "js" fn JsValue::as_font_face_set(self : JsValue) -> FontFaceSet? =
  #| (self) => (self instanceof FontFaceSet) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to FontFaceSet (unchecked)
pub extern "js" fn JsValue::to_font_face_set(self : JsValue) -> FontFaceSet =
  #| (self) => self

///|
pub extern "js" fn FontFaceSet::to_event_target(
  self : FontFaceSet,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn FontFaceSet::has(
  self : FontFaceSet,
  value : FontFace,
) -> Bool =
  #| (self, value) => self.has(value)

///|
pub extern "js" fn FontFaceSet::add(
  self : FontFaceSet,
  value : FontFace,
) -> Unit =
  #| (self, value) => { self.add(value) }

///|
pub extern "js" fn FontFaceSet::delete(
  self : FontFaceSet,
  value : FontFace,
) -> Bool =
  #| (self, value) => self.delete(value)

///|
pub extern "js" fn FontFaceSet::clear(self : FontFaceSet) -> Unit =
  #| (self) => { self.clear() }

///|
pub extern "js" fn FontFaceSet::get_onloading(
  self : FontFaceSet,
) -> EventHandler =
  #| (self) => self.onloading

///|
pub extern "js" fn FontFaceSet::set_onloading(
  self : FontFaceSet,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onloading = value }

///|
pub extern "js" fn FontFaceSet::get_onloadingdone(
  self : FontFaceSet,
) -> EventHandler =
  #| (self) => self.onloadingdone

///|
pub extern "js" fn FontFaceSet::set_onloadingdone(
  self : FontFaceSet,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onloadingdone = value }

///|
pub extern "js" fn FontFaceSet::get_onloadingerror(
  self : FontFaceSet,
) -> EventHandler =
  #| (self) => self.onloadingerror

///|
pub extern "js" fn FontFaceSet::set_onloadingerror(
  self : FontFaceSet,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onloadingerror = value }

///|
pub extern "js" fn FontFaceSet::load(
  self : FontFaceSet,
  font : String,
) -> Promise[Array[FontFace]] =
  #| (self, font) => self.load(font)

///|
pub extern "js" fn FontFaceSet::load_with_text(
  self : FontFaceSet,
  font : String,
  text : String,
) -> Promise[Array[FontFace]] =
  #| (self, font, text) => self.load(font, text)

///|
pub extern "js" fn FontFaceSet::check(
  self : FontFaceSet,
  font : String,
) -> Bool =
  #| (self, font) => self.check(font)

///|
pub extern "js" fn FontFaceSet::check_with_text(
  self : FontFaceSet,
  font : String,
  text : String,
) -> Bool =
  #| (self, font, text) => self.check(font, text)

///|
pub extern "js" fn FontFaceSet::get_ready(
  self : FontFaceSet,
) -> Promise[FontFaceSet] =
  #| (self) => self.ready

///|
pub extern "js" fn FontFaceSet::get_status(
  self : FontFaceSet,
) -> FontFaceSetLoadStatus =
  #| (self) => ['loading', 'loaded'].indexOf(self.status)
