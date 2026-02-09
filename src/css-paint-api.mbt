// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-paint-api

///|
/// PaintRenderingContext2DSettings dictionary
pub(all) struct PaintRenderingContext2DSettings {
  alpha : Bool?
}

///|
/// Create a new PaintRenderingContext2DSettings with default values
pub fn PaintRenderingContext2DSettings::default() -> PaintRenderingContext2DSettings {
  PaintRenderingContext2DSettings::{ alpha: None }
}

///|
extern "js" fn PaintRenderingContext2DSettings::to_js_ffi(
  self : PaintRenderingContext2DSettings,
) -> JsValue =
  #| (self) => ({
  #|   alpha: (self.alpha === -1 ? undefined : self.alpha)
  #| })

///|
/// Convert to JsValue
pub fn PaintRenderingContext2DSettings::to_js(
  self : PaintRenderingContext2DSettings,
) -> JsValue {
  PaintRenderingContext2DSettings::to_js_ffi(self)
}

///|
/// PaintWorkletGlobalScope interface
pub type PaintWorkletGlobalScope

///|
pub extern "js" fn PaintWorkletGlobalScope::to_js_value(
  self : PaintWorkletGlobalScope,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PaintWorkletGlobalScope (unchecked)
pub extern "js" fn PaintWorkletGlobalScope::from_js_value(
  v : JsValue,
) -> PaintWorkletGlobalScope =
  #| (v) => v

///|
/// Safely cast JsValue to PaintWorkletGlobalScope (checked with instanceof)
pub extern "js" fn PaintWorkletGlobalScope::from_js_value_opt(
  v : JsValue,
) -> PaintWorkletGlobalScope? =
  #| (v) => (v instanceof PaintWorkletGlobalScope) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PaintWorkletGlobalScope (checked with instanceof)
pub extern "js" fn JsValue::as_paint_worklet_global_scope(
  self : JsValue,
) -> PaintWorkletGlobalScope? =
  #| (self) => (self instanceof PaintWorkletGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PaintWorkletGlobalScope (unchecked)
pub extern "js" fn JsValue::to_paint_worklet_global_scope(
  self : JsValue,
) -> PaintWorkletGlobalScope =
  #| (self) => self

///|
pub extern "js" fn PaintWorkletGlobalScope::to_worklet_global_scope(
  self : PaintWorkletGlobalScope,
) -> WorkletGlobalScope =
  #| (self) => self

///|
pub extern "js" fn PaintWorkletGlobalScope::register_paint(
  self : PaintWorkletGlobalScope,
  name : String,
  paint_ctor : VoidFunction,
) -> Unit =
  #| (self, name, paint_ctor) => self.registerPaint(name, paint_ctor)

///|
pub extern "js" fn PaintWorkletGlobalScope::get_device_pixel_ratio(
  self : PaintWorkletGlobalScope,
) -> Double =
  #| (self) => self.devicePixelRatio

///|
/// PaintRenderingContext2D interface
pub type PaintRenderingContext2D

///|
pub extern "js" fn PaintRenderingContext2D::to_js_value(
  self : PaintRenderingContext2D,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PaintRenderingContext2D (unchecked)
pub extern "js" fn PaintRenderingContext2D::from_js_value(
  v : JsValue,
) -> PaintRenderingContext2D =
  #| (v) => v

///|
/// Safely cast JsValue to PaintRenderingContext2D (checked with instanceof)
pub extern "js" fn PaintRenderingContext2D::from_js_value_opt(
  v : JsValue,
) -> PaintRenderingContext2D? =
  #| (v) => (v instanceof PaintRenderingContext2D) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PaintRenderingContext2D (checked with instanceof)
pub extern "js" fn JsValue::as_paint_rendering_context2_d(
  self : JsValue,
) -> PaintRenderingContext2D? =
  #| (self) => (self instanceof PaintRenderingContext2D) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PaintRenderingContext2D (unchecked)
pub extern "js" fn JsValue::to_paint_rendering_context2_d(
  self : JsValue,
) -> PaintRenderingContext2D =
  #| (self) => self

///|
pub extern "js" fn PaintRenderingContext2D::save(
  self : PaintRenderingContext2D,
) -> Unit =
  #| (self) => self.save()

///|
pub extern "js" fn PaintRenderingContext2D::restore(
  self : PaintRenderingContext2D,
) -> Unit =
  #| (self) => self.restore()

///|
pub extern "js" fn PaintRenderingContext2D::reset(
  self : PaintRenderingContext2D,
) -> Unit =
  #| (self) => self.reset()

///|
pub extern "js" fn PaintRenderingContext2D::is_context_lost(
  self : PaintRenderingContext2D,
) -> Bool =
  #| (self) => self.isContextLost()

///|
pub extern "js" fn PaintRenderingContext2D::scale(
  self : PaintRenderingContext2D,
  x : Double,
  y : Double,
) -> Unit =
  #| (self, x, y) => self.scale(x, y)

///|
pub extern "js" fn PaintRenderingContext2D::rotate(
  self : PaintRenderingContext2D,
  angle : Double,
) -> Unit =
  #| (self, angle) => self.rotate(angle)

///|
pub extern "js" fn PaintRenderingContext2D::translate(
  self : PaintRenderingContext2D,
  x : Double,
  y : Double,
) -> Unit =
  #| (self, x, y) => self.translate(x, y)

///|
pub extern "js" fn PaintRenderingContext2D::transform(
  self : PaintRenderingContext2D,
  a : Double,
  b : Double,
  c : Double,
  d : Double,
  e : Double,
  f : Double,
) -> Unit =
  #| (self, a, b, c, d, e, f) => self.transform(a, b, c, d, e, f)

///|
pub extern "js" fn PaintRenderingContext2D::get_transform(
  self : PaintRenderingContext2D,
) -> DOMMatrix =
  #| (self) => self.getTransform()

///|
pub extern "js" fn PaintRenderingContext2D::set_transform(
  self : PaintRenderingContext2D,
) -> Unit =
  #| (self) => self.setTransform()

///|
extern "js" fn PaintRenderingContext2D::set_transform_with_transform_ffi(
  self : PaintRenderingContext2D,
  transform : JsValue,
) -> Unit =
  #| (self, transform) => self.setTransform(transform)

///|
pub fn PaintRenderingContext2D::set_transform_with_transform(
  self : PaintRenderingContext2D,
  transform : DOMMatrix2DInit,
) -> Unit {
  PaintRenderingContext2D::set_transform_with_transform_ffi(
    self,
    transform.to_js(),
  )
}

///|
pub extern "js" fn PaintRenderingContext2D::set_transform_with_a_and_b_and_c_and_d_and_e_and_f(
  self : PaintRenderingContext2D,
  a : Double,
  b : Double,
  c : Double,
  d : Double,
  e : Double,
  f : Double,
) -> Unit =
  #| (self, a, b, c, d, e, f) => self.setTransform(a, b, c, d, e, f)

///|
pub extern "js" fn PaintRenderingContext2D::reset_transform(
  self : PaintRenderingContext2D,
) -> Unit =
  #| (self) => self.resetTransform()

///|
pub extern "js" fn PaintRenderingContext2D::get_global_alpha(
  self : PaintRenderingContext2D,
) -> Double =
  #| (self) => self.globalAlpha

///|
pub extern "js" fn PaintRenderingContext2D::set_global_alpha(
  self : PaintRenderingContext2D,
  value : Double,
) -> Unit =
  #| (self, value) => { self.globalAlpha = value }

///|
pub extern "js" fn PaintRenderingContext2D::get_global_composite_operation(
  self : PaintRenderingContext2D,
) -> String =
  #| (self) => self.globalCompositeOperation

///|
pub extern "js" fn PaintRenderingContext2D::set_global_composite_operation(
  self : PaintRenderingContext2D,
  value : String,
) -> Unit =
  #| (self, value) => { self.globalCompositeOperation = value }

///|
pub extern "js" fn PaintRenderingContext2D::get_image_smoothing_enabled(
  self : PaintRenderingContext2D,
) -> Bool =
  #| (self) => self.imageSmoothingEnabled

///|
pub extern "js" fn PaintRenderingContext2D::set_image_smoothing_enabled(
  self : PaintRenderingContext2D,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.imageSmoothingEnabled = value }

///|
pub extern "js" fn PaintRenderingContext2D::get_image_smoothing_quality(
  self : PaintRenderingContext2D,
) -> ImageSmoothingQuality =
  #| (self) => ['low', 'medium', 'high'].indexOf(self.imageSmoothingQuality)

///|
pub extern "js" fn PaintRenderingContext2D::set_image_smoothing_quality(
  self : PaintRenderingContext2D,
  value : ImageSmoothingQuality,
) -> Unit =
  #| (self, value) => { self.imageSmoothingQuality = ['low', 'medium', 'high'][value] }

///|
pub extern "js" fn PaintRenderingContext2D::get_stroke_style(
  self : PaintRenderingContext2D,
) -> StringOrCanvasGradientOrCanvasPattern =
  #| (self) => self.strokeStyle

///|
pub extern "js" fn PaintRenderingContext2D::set_stroke_style(
  self : PaintRenderingContext2D,
  value : StringOrCanvasGradientOrCanvasPattern,
) -> Unit =
  #| (self, value) => { self.strokeStyle = value }

///|
pub extern "js" fn PaintRenderingContext2D::get_fill_style(
  self : PaintRenderingContext2D,
) -> StringOrCanvasGradientOrCanvasPattern =
  #| (self) => self.fillStyle

///|
pub extern "js" fn PaintRenderingContext2D::set_fill_style(
  self : PaintRenderingContext2D,
  value : StringOrCanvasGradientOrCanvasPattern,
) -> Unit =
  #| (self, value) => { self.fillStyle = value }

///|
pub extern "js" fn PaintRenderingContext2D::create_linear_gradient(
  self : PaintRenderingContext2D,
  x0 : Double,
  y0 : Double,
  x1 : Double,
  y1 : Double,
) -> CanvasGradient =
  #| (self, x0, y0, x1, y1) => self.createLinearGradient(x0, y0, x1, y1)

///|
pub extern "js" fn PaintRenderingContext2D::create_radial_gradient(
  self : PaintRenderingContext2D,
  x0 : Double,
  y0 : Double,
  r0 : Double,
  x1 : Double,
  y1 : Double,
  r1 : Double,
) -> CanvasGradient =
  #| (self, x0, y0, r0, x1, y1, r1) => self.createRadialGradient(x0, y0, r0, x1, y1, r1)

///|
pub extern "js" fn PaintRenderingContext2D::create_conic_gradient(
  self : PaintRenderingContext2D,
  start_angle : Double,
  x : Double,
  y : Double,
) -> CanvasGradient =
  #| (self, start_angle, x, y) => self.createConicGradient(start_angle, x, y)

///|
pub extern "js" fn PaintRenderingContext2D::create_pattern(
  self : PaintRenderingContext2D,
  image : CanvasImageSource,
  repetition : String,
) -> CanvasPattern? =
  #| (self, image, repetition) => (() => { const v = self.createPattern(image, repetition); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn PaintRenderingContext2D::get_shadow_offset_x(
  self : PaintRenderingContext2D,
) -> Double =
  #| (self) => self.shadowOffsetX

///|
pub extern "js" fn PaintRenderingContext2D::set_shadow_offset_x(
  self : PaintRenderingContext2D,
  value : Double,
) -> Unit =
  #| (self, value) => { self.shadowOffsetX = value }

///|
pub extern "js" fn PaintRenderingContext2D::get_shadow_offset_y(
  self : PaintRenderingContext2D,
) -> Double =
  #| (self) => self.shadowOffsetY

///|
pub extern "js" fn PaintRenderingContext2D::set_shadow_offset_y(
  self : PaintRenderingContext2D,
  value : Double,
) -> Unit =
  #| (self, value) => { self.shadowOffsetY = value }

///|
pub extern "js" fn PaintRenderingContext2D::get_shadow_blur(
  self : PaintRenderingContext2D,
) -> Double =
  #| (self) => self.shadowBlur

///|
pub extern "js" fn PaintRenderingContext2D::set_shadow_blur(
  self : PaintRenderingContext2D,
  value : Double,
) -> Unit =
  #| (self, value) => { self.shadowBlur = value }

///|
pub extern "js" fn PaintRenderingContext2D::get_shadow_color(
  self : PaintRenderingContext2D,
) -> String =
  #| (self) => self.shadowColor

///|
pub extern "js" fn PaintRenderingContext2D::set_shadow_color(
  self : PaintRenderingContext2D,
  value : String,
) -> Unit =
  #| (self, value) => { self.shadowColor = value }

///|
pub extern "js" fn PaintRenderingContext2D::clear_rect(
  self : PaintRenderingContext2D,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
) -> Unit =
  #| (self, x, y, w, h) => self.clearRect(x, y, w, h)

///|
pub extern "js" fn PaintRenderingContext2D::fill_rect(
  self : PaintRenderingContext2D,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
) -> Unit =
  #| (self, x, y, w, h) => self.fillRect(x, y, w, h)

///|
pub extern "js" fn PaintRenderingContext2D::stroke_rect(
  self : PaintRenderingContext2D,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
) -> Unit =
  #| (self, x, y, w, h) => self.strokeRect(x, y, w, h)

///|
pub extern "js" fn PaintRenderingContext2D::begin_path(
  self : PaintRenderingContext2D,
) -> Unit =
  #| (self) => self.beginPath()

///|
pub extern "js" fn PaintRenderingContext2D::fill(
  self : PaintRenderingContext2D,
) -> Unit =
  #| (self) => self.fill()

///|
pub extern "js" fn PaintRenderingContext2D::fill_with_fill_rule(
  self : PaintRenderingContext2D,
  fill_rule : CanvasFillRule,
) -> Unit =
  #| (self, fill_rule) => self.fill(['nonzero', 'evenodd'][fill_rule])

///|
pub extern "js" fn PaintRenderingContext2D::fill_with_path_path2_d(
  self : PaintRenderingContext2D,
  path : Path2D,
) -> Unit =
  #| (self, path) => self.fill(path)

///|
pub extern "js" fn PaintRenderingContext2D::fill_with_path_path2_d_and_fill_rule_canvas_fill_rule(
  self : PaintRenderingContext2D,
  path : Path2D,
  fill_rule : CanvasFillRule,
) -> Unit =
  #| (self, path, fill_rule) => self.fill(path, ['nonzero', 'evenodd'][fill_rule])

///|
pub extern "js" fn PaintRenderingContext2D::stroke(
  self : PaintRenderingContext2D,
) -> Unit =
  #| (self) => self.stroke()

///|
pub extern "js" fn PaintRenderingContext2D::stroke_with_path_path2_d(
  self : PaintRenderingContext2D,
  path : Path2D,
) -> Unit =
  #| (self, path) => self.stroke(path)

///|
pub extern "js" fn PaintRenderingContext2D::clip(
  self : PaintRenderingContext2D,
) -> Unit =
  #| (self) => self.clip()

///|
pub extern "js" fn PaintRenderingContext2D::clip_with_fill_rule(
  self : PaintRenderingContext2D,
  fill_rule : CanvasFillRule,
) -> Unit =
  #| (self, fill_rule) => self.clip(['nonzero', 'evenodd'][fill_rule])

///|
pub extern "js" fn PaintRenderingContext2D::clip_with_path_path2_d(
  self : PaintRenderingContext2D,
  path : Path2D,
) -> Unit =
  #| (self, path) => self.clip(path)

///|
pub extern "js" fn PaintRenderingContext2D::clip_with_path_path2_d_and_fill_rule_canvas_fill_rule(
  self : PaintRenderingContext2D,
  path : Path2D,
  fill_rule : CanvasFillRule,
) -> Unit =
  #| (self, path, fill_rule) => self.clip(path, ['nonzero', 'evenodd'][fill_rule])

///|
pub extern "js" fn PaintRenderingContext2D::is_point_in_path(
  self : PaintRenderingContext2D,
  x : Double,
  y : Double,
) -> Bool =
  #| (self, x, y) => self.isPointInPath(x, y)

///|
pub extern "js" fn PaintRenderingContext2D::is_point_in_path_with_fill_rule(
  self : PaintRenderingContext2D,
  x : Double,
  y : Double,
  fill_rule : CanvasFillRule,
) -> Bool =
  #| (self, x, y, fill_rule) => self.isPointInPath(x, y, ['nonzero', 'evenodd'][fill_rule])

///|
pub extern "js" fn PaintRenderingContext2D::is_point_in_path_with_path_path2_d_and_x_and_y(
  self : PaintRenderingContext2D,
  path : Path2D,
  x : Double,
  y : Double,
) -> Bool =
  #| (self, path, x, y) => self.isPointInPath(path, x, y)

///|
pub extern "js" fn PaintRenderingContext2D::is_point_in_path_with_path_path2_d_and_x_and_y_and_fill_rule_canvas_fill_rule(
  self : PaintRenderingContext2D,
  path : Path2D,
  x : Double,
  y : Double,
  fill_rule : CanvasFillRule,
) -> Bool =
  #| (self, path, x, y, fill_rule) => self.isPointInPath(path, x, y, ['nonzero', 'evenodd'][fill_rule])

///|
pub extern "js" fn PaintRenderingContext2D::is_point_in_stroke(
  self : PaintRenderingContext2D,
  x : Double,
  y : Double,
) -> Bool =
  #| (self, x, y) => self.isPointInStroke(x, y)

///|
pub extern "js" fn PaintRenderingContext2D::is_point_in_stroke_with_path_path2_d_and_x_and_y(
  self : PaintRenderingContext2D,
  path : Path2D,
  x : Double,
  y : Double,
) -> Bool =
  #| (self, path, x, y) => self.isPointInStroke(path, x, y)

///|
pub extern "js" fn PaintRenderingContext2D::draw_image(
  self : PaintRenderingContext2D,
  image : CanvasImageSource,
  dx : Double,
  dy : Double,
) -> Unit =
  #| (self, image, dx, dy) => self.drawImage(image, dx, dy)

///|
pub extern "js" fn PaintRenderingContext2D::draw_image_with_image_canvas_image_source_and_dx_and_dy_and_dw_and_dh(
  self : PaintRenderingContext2D,
  image : CanvasImageSource,
  dx : Double,
  dy : Double,
  dw : Double,
  dh : Double,
) -> Unit =
  #| (self, image, dx, dy, dw, dh) => self.drawImage(image, dx, dy, dw, dh)

///|
pub extern "js" fn PaintRenderingContext2D::draw_image_with_image_canvas_image_source_and_sx_and_sy_and_sw_and_sh_and_dx_and_dy_and_dw_and_dh(
  self : PaintRenderingContext2D,
  image : CanvasImageSource,
  sx : Double,
  sy : Double,
  sw : Double,
  sh : Double,
  dx : Double,
  dy : Double,
  dw : Double,
  dh : Double,
) -> Unit =
  #| (self, image, sx, sy, sw, sh, dx, dy, dw, dh) => self.drawImage(image, sx, sy, sw, sh, dx, dy, dw, dh)

///|
pub extern "js" fn PaintRenderingContext2D::get_line_width(
  self : PaintRenderingContext2D,
) -> Double =
  #| (self) => self.lineWidth

///|
pub extern "js" fn PaintRenderingContext2D::set_line_width(
  self : PaintRenderingContext2D,
  value : Double,
) -> Unit =
  #| (self, value) => { self.lineWidth = value }

///|
pub extern "js" fn PaintRenderingContext2D::get_line_cap(
  self : PaintRenderingContext2D,
) -> CanvasLineCap =
  #| (self) => ['butt', 'round', 'square'].indexOf(self.lineCap)

///|
pub extern "js" fn PaintRenderingContext2D::set_line_cap(
  self : PaintRenderingContext2D,
  value : CanvasLineCap,
) -> Unit =
  #| (self, value) => { self.lineCap = ['butt', 'round', 'square'][value] }

///|
pub extern "js" fn PaintRenderingContext2D::get_line_join(
  self : PaintRenderingContext2D,
) -> CanvasLineJoin =
  #| (self) => ['round', 'bevel', 'miter'].indexOf(self.lineJoin)

///|
pub extern "js" fn PaintRenderingContext2D::set_line_join(
  self : PaintRenderingContext2D,
  value : CanvasLineJoin,
) -> Unit =
  #| (self, value) => { self.lineJoin = ['round', 'bevel', 'miter'][value] }

///|
pub extern "js" fn PaintRenderingContext2D::get_miter_limit(
  self : PaintRenderingContext2D,
) -> Double =
  #| (self) => self.miterLimit

///|
pub extern "js" fn PaintRenderingContext2D::set_miter_limit(
  self : PaintRenderingContext2D,
  value : Double,
) -> Unit =
  #| (self, value) => { self.miterLimit = value }

///|
pub extern "js" fn PaintRenderingContext2D::set_line_dash(
  self : PaintRenderingContext2D,
  segments : Array[Double],
) -> Unit =
  #| (self, segments) => self.setLineDash(segments)

///|
pub extern "js" fn PaintRenderingContext2D::get_line_dash(
  self : PaintRenderingContext2D,
) -> Array[Double] =
  #| (self) => self.getLineDash()

///|
pub extern "js" fn PaintRenderingContext2D::get_line_dash_offset(
  self : PaintRenderingContext2D,
) -> Double =
  #| (self) => self.lineDashOffset

///|
pub extern "js" fn PaintRenderingContext2D::set_line_dash_offset(
  self : PaintRenderingContext2D,
  value : Double,
) -> Unit =
  #| (self, value) => { self.lineDashOffset = value }

///|
pub extern "js" fn PaintRenderingContext2D::close_path(
  self : PaintRenderingContext2D,
) -> Unit =
  #| (self) => self.closePath()

///|
pub extern "js" fn PaintRenderingContext2D::move_to(
  self : PaintRenderingContext2D,
  x : Double,
  y : Double,
) -> Unit =
  #| (self, x, y) => self.moveTo(x, y)

///|
pub extern "js" fn PaintRenderingContext2D::line_to(
  self : PaintRenderingContext2D,
  x : Double,
  y : Double,
) -> Unit =
  #| (self, x, y) => self.lineTo(x, y)

///|
pub extern "js" fn PaintRenderingContext2D::quadratic_curve_to(
  self : PaintRenderingContext2D,
  cpx : Double,
  cpy : Double,
  x : Double,
  y : Double,
) -> Unit =
  #| (self, cpx, cpy, x, y) => self.quadraticCurveTo(cpx, cpy, x, y)

///|
pub extern "js" fn PaintRenderingContext2D::bezier_curve_to(
  self : PaintRenderingContext2D,
  cp1x : Double,
  cp1y : Double,
  cp2x : Double,
  cp2y : Double,
  x : Double,
  y : Double,
) -> Unit =
  #| (self, cp1x, cp1y, cp2x, cp2y, x, y) => self.bezierCurveTo(cp1x, cp1y, cp2x, cp2y, x, y)

///|
pub extern "js" fn PaintRenderingContext2D::arc_to(
  self : PaintRenderingContext2D,
  x1 : Double,
  y1 : Double,
  x2 : Double,
  y2 : Double,
  radius : Double,
) -> Unit =
  #| (self, x1, y1, x2, y2, radius) => self.arcTo(x1, y1, x2, y2, radius)

///|
pub extern "js" fn PaintRenderingContext2D::rect(
  self : PaintRenderingContext2D,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
) -> Unit =
  #| (self, x, y, w, h) => self.rect(x, y, w, h)

///|
pub extern "js" fn PaintRenderingContext2D::round_rect(
  self : PaintRenderingContext2D,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
) -> Unit =
  #| (self, x, y, w, h) => self.roundRect(x, y, w, h)

///|
pub extern "js" fn PaintRenderingContext2D::round_rect_with_radii(
  self : PaintRenderingContext2D,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
  radii : DoubleOrDOMPointInitOrArrayOfDoubleOrDOMPointInit,
) -> Unit =
  #| (self, x, y, w, h, radii) => self.roundRect(x, y, w, h, radii)

///|
pub extern "js" fn PaintRenderingContext2D::arc(
  self : PaintRenderingContext2D,
  x : Double,
  y : Double,
  radius : Double,
  start_angle : Double,
  end_angle : Double,
) -> Unit =
  #| (self, x, y, radius, start_angle, end_angle) => self.arc(x, y, radius, start_angle, end_angle)

///|
pub extern "js" fn PaintRenderingContext2D::arc_with_counterclockwise(
  self : PaintRenderingContext2D,
  x : Double,
  y : Double,
  radius : Double,
  start_angle : Double,
  end_angle : Double,
  counterclockwise : Bool,
) -> Unit =
  #| (self, x, y, radius, start_angle, end_angle, counterclockwise) => self.arc(x, y, radius, start_angle, end_angle, counterclockwise)

///|
pub extern "js" fn PaintRenderingContext2D::ellipse(
  self : PaintRenderingContext2D,
  x : Double,
  y : Double,
  radius_x : Double,
  radius_y : Double,
  rotation : Double,
  start_angle : Double,
  end_angle : Double,
) -> Unit =
  #| (self, x, y, radius_x, radius_y, rotation, start_angle, end_angle) => self.ellipse(x, y, radius_x, radius_y, rotation, start_angle, end_angle)

///|
pub extern "js" fn PaintRenderingContext2D::ellipse_with_counterclockwise(
  self : PaintRenderingContext2D,
  x : Double,
  y : Double,
  radius_x : Double,
  radius_y : Double,
  rotation : Double,
  start_angle : Double,
  end_angle : Double,
  counterclockwise : Bool,
) -> Unit =
  #| (self, x, y, radius_x, radius_y, rotation, start_angle, end_angle, counterclockwise) => self.ellipse(x, y, radius_x, radius_y, rotation, start_angle, end_angle, counterclockwise)

///|
pub extern "js" fn PaintRenderingContext2D::create_pattern_with_h_t_m_l_or_s_v_g_image_element(
  self : PaintRenderingContext2D,
  image : HTMLOrSVGImageElement,
  repetition : String,
) -> CanvasPattern? =
  #| (self, image, repetition) => (() => { const v = self.createPattern(image, repetition); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn PaintRenderingContext2D::create_pattern_with_h_t_m_l_video_element(
  self : PaintRenderingContext2D,
  image : HTMLVideoElement,
  repetition : String,
) -> CanvasPattern? =
  #| (self, image, repetition) => (() => { const v = self.createPattern(image, repetition); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn PaintRenderingContext2D::create_pattern_with_h_t_m_l_canvas_element(
  self : PaintRenderingContext2D,
  image : HTMLCanvasElement,
  repetition : String,
) -> CanvasPattern? =
  #| (self, image, repetition) => (() => { const v = self.createPattern(image, repetition); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn PaintRenderingContext2D::create_pattern_with_image_bitmap(
  self : PaintRenderingContext2D,
  image : ImageBitmap,
  repetition : String,
) -> CanvasPattern? =
  #| (self, image, repetition) => (() => { const v = self.createPattern(image, repetition); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn PaintRenderingContext2D::create_pattern_with_offscreen_canvas(
  self : PaintRenderingContext2D,
  image : OffscreenCanvas,
  repetition : String,
) -> CanvasPattern? =
  #| (self, image, repetition) => (() => { const v = self.createPattern(image, repetition); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn PaintRenderingContext2D::create_pattern_with_video_frame(
  self : PaintRenderingContext2D,
  image : VideoFrame,
  repetition : String,
) -> CanvasPattern? =
  #| (self, image, repetition) => (() => { const v = self.createPattern(image, repetition); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn PaintRenderingContext2D::draw_image_with_h_t_m_l_or_s_v_g_image_element(
  self : PaintRenderingContext2D,
  image : HTMLOrSVGImageElement,
  dx : Double,
  dy : Double,
) -> Unit =
  #| (self, image, dx, dy) => self.drawImage(image, dx, dy)

///|
pub extern "js" fn PaintRenderingContext2D::draw_image_with_h_t_m_l_video_element(
  self : PaintRenderingContext2D,
  image : HTMLVideoElement,
  dx : Double,
  dy : Double,
) -> Unit =
  #| (self, image, dx, dy) => self.drawImage(image, dx, dy)

///|
pub extern "js" fn PaintRenderingContext2D::draw_image_with_h_t_m_l_canvas_element(
  self : PaintRenderingContext2D,
  image : HTMLCanvasElement,
  dx : Double,
  dy : Double,
) -> Unit =
  #| (self, image, dx, dy) => self.drawImage(image, dx, dy)

///|
pub extern "js" fn PaintRenderingContext2D::draw_image_with_image_bitmap(
  self : PaintRenderingContext2D,
  image : ImageBitmap,
  dx : Double,
  dy : Double,
) -> Unit =
  #| (self, image, dx, dy) => self.drawImage(image, dx, dy)

///|
pub extern "js" fn PaintRenderingContext2D::draw_image_with_offscreen_canvas(
  self : PaintRenderingContext2D,
  image : OffscreenCanvas,
  dx : Double,
  dy : Double,
) -> Unit =
  #| (self, image, dx, dy) => self.drawImage(image, dx, dy)

///|
pub extern "js" fn PaintRenderingContext2D::draw_image_with_video_frame(
  self : PaintRenderingContext2D,
  image : VideoFrame,
  dx : Double,
  dy : Double,
) -> Unit =
  #| (self, image, dx, dy) => self.drawImage(image, dx, dy)

///|
/// PaintSize interface
pub type PaintSize

///|
pub extern "js" fn PaintSize::to_js_value(self : PaintSize) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PaintSize (unchecked)
pub extern "js" fn PaintSize::from_js_value(v : JsValue) -> PaintSize =
  #| (v) => v

///|
/// Safely cast JsValue to PaintSize (checked with instanceof)
pub extern "js" fn PaintSize::from_js_value_opt(v : JsValue) -> PaintSize? =
  #| (v) => (v instanceof PaintSize) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PaintSize (checked with instanceof)
pub extern "js" fn JsValue::as_paint_size(self : JsValue) -> PaintSize? =
  #| (self) => (self instanceof PaintSize) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PaintSize (unchecked)
pub extern "js" fn JsValue::to_paint_size(self : JsValue) -> PaintSize =
  #| (self) => self

///|
pub extern "js" fn PaintSize::get_width(self : PaintSize) -> Double =
  #| (self) => self.width

///|
pub extern "js" fn PaintSize::get_height(self : PaintSize) -> Double =
  #| (self) => self.height
