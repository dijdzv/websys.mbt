// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/html

///|
/// HTMLOrSVGScriptElement typedef
pub type HTMLOrSVGScriptElement

///|
pub extern "js" fn HTMLOrSVGScriptElement::to_js_value(
  self : HTMLOrSVGScriptElement,
) -> JsValue =
  #| (self) => self

///|
/// Create HTMLOrSVGScriptElement from HTMLScriptElement
pub extern "js" fn HTMLOrSVGScriptElement::from_html_script_element(
  v : HTMLScriptElement,
) -> HTMLOrSVGScriptElement =
  #| (v) => v

///|
/// Create HTMLOrSVGScriptElement from SVGScriptElement
pub extern "js" fn HTMLOrSVGScriptElement::from_svg_script_element(
  v : SVGScriptElement,
) -> HTMLOrSVGScriptElement =
  #| (v) => v

///|
/// Check if this HTMLOrSVGScriptElement is HTMLScriptElement
pub extern "js" fn HTMLOrSVGScriptElement::is_html_script_element(
  self : HTMLOrSVGScriptElement,
) -> Bool =
  #| (self) => self instanceof HTMLScriptElement

///|
/// Check if this HTMLOrSVGScriptElement is SVGScriptElement
pub extern "js" fn HTMLOrSVGScriptElement::is_svg_script_element(
  self : HTMLOrSVGScriptElement,
) -> Bool =
  #| (self) => self instanceof SVGScriptElement

///|
/// Try to get HTMLOrSVGScriptElement as HTMLScriptElement
pub extern "js" fn HTMLOrSVGScriptElement::as_html_script_element(
  self : HTMLOrSVGScriptElement,
) -> HTMLScriptElement? =
  #| (self) => (self instanceof HTMLScriptElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get HTMLOrSVGScriptElement as SVGScriptElement
pub extern "js" fn HTMLOrSVGScriptElement::as_svg_script_element(
  self : HTMLOrSVGScriptElement,
) -> SVGScriptElement? =
  #| (self) => (self instanceof SVGScriptElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[HTMLOrSVGScriptElement] to HTMLScriptElement?
pub fn HTMLOrSVGScriptElement::bind_as_html_script_element(
  value : HTMLOrSVGScriptElement?,
) -> HTMLScriptElement? {
  match value {
    Some(v) => v.as_html_script_element()
    None => None
  }
}

///|
/// Flatten Option[HTMLOrSVGScriptElement] to SVGScriptElement?
pub fn HTMLOrSVGScriptElement::bind_as_svg_script_element(
  value : HTMLOrSVGScriptElement?,
) -> SVGScriptElement? {
  match value {
    Some(v) => v.as_svg_script_element()
    None => None
  }
}

///|
/// MediaProvider typedef
pub type MediaProvider

///|
pub extern "js" fn MediaProvider::to_js_value(self : MediaProvider) -> JsValue =
  #| (self) => self

///|
/// Create MediaProvider from MediaStream
pub extern "js" fn MediaProvider::from_media_stream(
  v : MediaStream,
) -> MediaProvider =
  #| (v) => v

///|
/// Create MediaProvider from MediaSource
pub extern "js" fn MediaProvider::from_media_source(
  v : MediaSource,
) -> MediaProvider =
  #| (v) => v

///|
/// Create MediaProvider from Blob
pub extern "js" fn MediaProvider::from_blob(v : Blob) -> MediaProvider =
  #| (v) => v

///|
/// Check if this MediaProvider is MediaStream
pub extern "js" fn MediaProvider::is_media_stream(self : MediaProvider) -> Bool =
  #| (self) => self instanceof MediaStream

///|
/// Check if this MediaProvider is MediaSource
pub extern "js" fn MediaProvider::is_media_source(self : MediaProvider) -> Bool =
  #| (self) => self instanceof MediaSource

///|
/// Check if this MediaProvider is Blob
pub extern "js" fn MediaProvider::is_blob(self : MediaProvider) -> Bool =
  #| (self) => self instanceof Blob

///|
/// Try to get MediaProvider as MediaStream
pub extern "js" fn MediaProvider::as_media_stream(
  self : MediaProvider,
) -> MediaStream? =
  #| (self) => (self instanceof MediaStream) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get MediaProvider as MediaSource
pub extern "js" fn MediaProvider::as_media_source(
  self : MediaProvider,
) -> MediaSource? =
  #| (self) => (self instanceof MediaSource) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get MediaProvider as Blob
pub extern "js" fn MediaProvider::as_blob(self : MediaProvider) -> Blob? =
  #| (self) => (self instanceof Blob) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[MediaProvider] to MediaStream?
pub fn MediaProvider::bind_as_media_stream(
  value : MediaProvider?,
) -> MediaStream? {
  match value {
    Some(v) => v.as_media_stream()
    None => None
  }
}

///|
/// Flatten Option[MediaProvider] to MediaSource?
pub fn MediaProvider::bind_as_media_source(
  value : MediaProvider?,
) -> MediaSource? {
  match value {
    Some(v) => v.as_media_source()
    None => None
  }
}

///|
/// Flatten Option[MediaProvider] to Blob?
pub fn MediaProvider::bind_as_blob(value : MediaProvider?) -> Blob? {
  match value {
    Some(v) => v.as_blob()
    None => None
  }
}

///|
/// RenderingContext typedef
pub type RenderingContext

///|
pub extern "js" fn RenderingContext::to_js_value(
  self : RenderingContext,
) -> JsValue =
  #| (self) => self

///|
/// Create RenderingContext from CanvasRenderingContext2D
pub extern "js" fn RenderingContext::from_canvas_rendering_context_2d(
  v : CanvasRenderingContext2D,
) -> RenderingContext =
  #| (v) => v

///|
/// Create RenderingContext from ImageBitmapRenderingContext
pub extern "js" fn RenderingContext::from_image_bitmap_rendering_context(
  v : ImageBitmapRenderingContext,
) -> RenderingContext =
  #| (v) => v

///|
/// Create RenderingContext from WebGLRenderingContext
pub extern "js" fn RenderingContext::from_web_gl_rendering_context(
  v : WebGLRenderingContext,
) -> RenderingContext =
  #| (v) => v

///|
/// Create RenderingContext from WebGL2RenderingContext
pub extern "js" fn RenderingContext::from_web_gl2_rendering_context(
  v : WebGL2RenderingContext,
) -> RenderingContext =
  #| (v) => v

///|
/// Create RenderingContext from GPUCanvasContext
pub extern "js" fn RenderingContext::from_gpu_canvas_context(
  v : GPUCanvasContext,
) -> RenderingContext =
  #| (v) => v

///|
/// Check if this RenderingContext is CanvasRenderingContext2D
pub extern "js" fn RenderingContext::is_canvas_rendering_context_2d(
  self : RenderingContext,
) -> Bool =
  #| (self) => self instanceof CanvasRenderingContext2D

///|
/// Check if this RenderingContext is ImageBitmapRenderingContext
pub extern "js" fn RenderingContext::is_image_bitmap_rendering_context(
  self : RenderingContext,
) -> Bool =
  #| (self) => self instanceof ImageBitmapRenderingContext

///|
/// Check if this RenderingContext is WebGLRenderingContext
pub extern "js" fn RenderingContext::is_web_gl_rendering_context(
  self : RenderingContext,
) -> Bool =
  #| (self) => self instanceof WebGLRenderingContext

///|
/// Check if this RenderingContext is WebGL2RenderingContext
pub extern "js" fn RenderingContext::is_web_gl2_rendering_context(
  self : RenderingContext,
) -> Bool =
  #| (self) => self instanceof WebGL2RenderingContext

///|
/// Check if this RenderingContext is GPUCanvasContext
pub extern "js" fn RenderingContext::is_gpu_canvas_context(
  self : RenderingContext,
) -> Bool =
  #| (self) => self instanceof GPUCanvasContext

///|
/// Try to get RenderingContext as CanvasRenderingContext2D
pub extern "js" fn RenderingContext::as_canvas_rendering_context_2d(
  self : RenderingContext,
) -> CanvasRenderingContext2D? =
  #| (self) => (self instanceof CanvasRenderingContext2D) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get RenderingContext as ImageBitmapRenderingContext
pub extern "js" fn RenderingContext::as_image_bitmap_rendering_context(
  self : RenderingContext,
) -> ImageBitmapRenderingContext? =
  #| (self) => (self instanceof ImageBitmapRenderingContext) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get RenderingContext as WebGLRenderingContext
pub extern "js" fn RenderingContext::as_web_gl_rendering_context(
  self : RenderingContext,
) -> WebGLRenderingContext? =
  #| (self) => (self instanceof WebGLRenderingContext) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get RenderingContext as WebGL2RenderingContext
pub extern "js" fn RenderingContext::as_web_gl2_rendering_context(
  self : RenderingContext,
) -> WebGL2RenderingContext? =
  #| (self) => (self instanceof WebGL2RenderingContext) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get RenderingContext as GPUCanvasContext
pub extern "js" fn RenderingContext::as_gpu_canvas_context(
  self : RenderingContext,
) -> GPUCanvasContext? =
  #| (self) => (self instanceof GPUCanvasContext) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[RenderingContext] to CanvasRenderingContext2D?
pub fn RenderingContext::bind_as_canvas_rendering_context_2d(
  value : RenderingContext?,
) -> CanvasRenderingContext2D? {
  match value {
    Some(v) => v.as_canvas_rendering_context_2d()
    None => None
  }
}

///|
/// Flatten Option[RenderingContext] to ImageBitmapRenderingContext?
pub fn RenderingContext::bind_as_image_bitmap_rendering_context(
  value : RenderingContext?,
) -> ImageBitmapRenderingContext? {
  match value {
    Some(v) => v.as_image_bitmap_rendering_context()
    None => None
  }
}

///|
/// Flatten Option[RenderingContext] to WebGLRenderingContext?
pub fn RenderingContext::bind_as_web_gl_rendering_context(
  value : RenderingContext?,
) -> WebGLRenderingContext? {
  match value {
    Some(v) => v.as_web_gl_rendering_context()
    None => None
  }
}

///|
/// Flatten Option[RenderingContext] to WebGL2RenderingContext?
pub fn RenderingContext::bind_as_web_gl2_rendering_context(
  value : RenderingContext?,
) -> WebGL2RenderingContext? {
  match value {
    Some(v) => v.as_web_gl2_rendering_context()
    None => None
  }
}

///|
/// Flatten Option[RenderingContext] to GPUCanvasContext?
pub fn RenderingContext::bind_as_gpu_canvas_context(
  value : RenderingContext?,
) -> GPUCanvasContext? {
  match value {
    Some(v) => v.as_gpu_canvas_context()
    None => None
  }
}

///|
/// HTMLOrSVGImageElement typedef
pub type HTMLOrSVGImageElement

///|
pub extern "js" fn HTMLOrSVGImageElement::to_js_value(
  self : HTMLOrSVGImageElement,
) -> JsValue =
  #| (self) => self

///|
/// Create HTMLOrSVGImageElement from HTMLImageElement
pub extern "js" fn HTMLOrSVGImageElement::from_html_image_element(
  v : HTMLImageElement,
) -> HTMLOrSVGImageElement =
  #| (v) => v

///|
/// Create HTMLOrSVGImageElement from SVGImageElement
pub extern "js" fn HTMLOrSVGImageElement::from_svg_image_element(
  v : SVGImageElement,
) -> HTMLOrSVGImageElement =
  #| (v) => v

///|
/// Check if this HTMLOrSVGImageElement is HTMLImageElement
pub extern "js" fn HTMLOrSVGImageElement::is_html_image_element(
  self : HTMLOrSVGImageElement,
) -> Bool =
  #| (self) => self instanceof HTMLImageElement

///|
/// Check if this HTMLOrSVGImageElement is SVGImageElement
pub extern "js" fn HTMLOrSVGImageElement::is_svg_image_element(
  self : HTMLOrSVGImageElement,
) -> Bool =
  #| (self) => self instanceof SVGImageElement

///|
/// Try to get HTMLOrSVGImageElement as HTMLImageElement
pub extern "js" fn HTMLOrSVGImageElement::as_html_image_element(
  self : HTMLOrSVGImageElement,
) -> HTMLImageElement? =
  #| (self) => (self instanceof HTMLImageElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get HTMLOrSVGImageElement as SVGImageElement
pub extern "js" fn HTMLOrSVGImageElement::as_svg_image_element(
  self : HTMLOrSVGImageElement,
) -> SVGImageElement? =
  #| (self) => (self instanceof SVGImageElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[HTMLOrSVGImageElement] to HTMLImageElement?
pub fn HTMLOrSVGImageElement::bind_as_html_image_element(
  value : HTMLOrSVGImageElement?,
) -> HTMLImageElement? {
  match value {
    Some(v) => v.as_html_image_element()
    None => None
  }
}

///|
/// Flatten Option[HTMLOrSVGImageElement] to SVGImageElement?
pub fn HTMLOrSVGImageElement::bind_as_svg_image_element(
  value : HTMLOrSVGImageElement?,
) -> SVGImageElement? {
  match value {
    Some(v) => v.as_svg_image_element()
    None => None
  }
}

///|
/// CanvasImageSource typedef
pub type CanvasImageSource

///|
pub extern "js" fn CanvasImageSource::to_js_value(
  self : CanvasImageSource,
) -> JsValue =
  #| (self) => self

///|
/// Create CanvasImageSource from HTMLOrSVGImageElement
pub extern "js" fn CanvasImageSource::from_html_or_svg_image_element(
  v : HTMLOrSVGImageElement,
) -> CanvasImageSource =
  #| (v) => v

///|
/// Create CanvasImageSource from HTMLVideoElement
pub extern "js" fn CanvasImageSource::from_html_video_element(
  v : HTMLVideoElement,
) -> CanvasImageSource =
  #| (v) => v

///|
/// Create CanvasImageSource from HTMLCanvasElement
pub extern "js" fn CanvasImageSource::from_html_canvas_element(
  v : HTMLCanvasElement,
) -> CanvasImageSource =
  #| (v) => v

///|
/// Create CanvasImageSource from ImageBitmap
pub extern "js" fn CanvasImageSource::from_image_bitmap(
  v : ImageBitmap,
) -> CanvasImageSource =
  #| (v) => v

///|
/// Create CanvasImageSource from OffscreenCanvas
pub extern "js" fn CanvasImageSource::from_offscreen_canvas(
  v : OffscreenCanvas,
) -> CanvasImageSource =
  #| (v) => v

///|
/// Create CanvasImageSource from VideoFrame
pub extern "js" fn CanvasImageSource::from_video_frame(
  v : VideoFrame,
) -> CanvasImageSource =
  #| (v) => v

///|
/// Check if this CanvasImageSource is HTMLOrSVGImageElement
pub extern "js" fn CanvasImageSource::is_html_or_svg_image_element(
  self : CanvasImageSource,
) -> Bool =
  #| (self) => self instanceof HTMLImageElement || self instanceof SVGImageElement

///|
/// Check if this CanvasImageSource is HTMLVideoElement
pub extern "js" fn CanvasImageSource::is_html_video_element(
  self : CanvasImageSource,
) -> Bool =
  #| (self) => self instanceof HTMLVideoElement

///|
/// Check if this CanvasImageSource is HTMLCanvasElement
pub extern "js" fn CanvasImageSource::is_html_canvas_element(
  self : CanvasImageSource,
) -> Bool =
  #| (self) => self instanceof HTMLCanvasElement

///|
/// Check if this CanvasImageSource is ImageBitmap
pub extern "js" fn CanvasImageSource::is_image_bitmap(
  self : CanvasImageSource,
) -> Bool =
  #| (self) => self instanceof ImageBitmap

///|
/// Check if this CanvasImageSource is OffscreenCanvas
pub extern "js" fn CanvasImageSource::is_offscreen_canvas(
  self : CanvasImageSource,
) -> Bool =
  #| (self) => self instanceof OffscreenCanvas

///|
/// Check if this CanvasImageSource is VideoFrame
pub extern "js" fn CanvasImageSource::is_video_frame(
  self : CanvasImageSource,
) -> Bool =
  #| (self) => self instanceof VideoFrame

///|
/// Try to get CanvasImageSource as HTMLOrSVGImageElement
pub extern "js" fn CanvasImageSource::as_html_or_svg_image_element(
  self : CanvasImageSource,
) -> HTMLOrSVGImageElement? =
  #| (self) => (self instanceof HTMLImageElement || self instanceof SVGImageElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get CanvasImageSource as HTMLVideoElement
pub extern "js" fn CanvasImageSource::as_html_video_element(
  self : CanvasImageSource,
) -> HTMLVideoElement? =
  #| (self) => (self instanceof HTMLVideoElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get CanvasImageSource as HTMLCanvasElement
pub extern "js" fn CanvasImageSource::as_html_canvas_element(
  self : CanvasImageSource,
) -> HTMLCanvasElement? =
  #| (self) => (self instanceof HTMLCanvasElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get CanvasImageSource as ImageBitmap
pub extern "js" fn CanvasImageSource::as_image_bitmap(
  self : CanvasImageSource,
) -> ImageBitmap? =
  #| (self) => (self instanceof ImageBitmap) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get CanvasImageSource as OffscreenCanvas
pub extern "js" fn CanvasImageSource::as_offscreen_canvas(
  self : CanvasImageSource,
) -> OffscreenCanvas? =
  #| (self) => (self instanceof OffscreenCanvas) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get CanvasImageSource as VideoFrame
pub extern "js" fn CanvasImageSource::as_video_frame(
  self : CanvasImageSource,
) -> VideoFrame? =
  #| (self) => (self instanceof VideoFrame) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[CanvasImageSource] to HTMLOrSVGImageElement?
pub fn CanvasImageSource::bind_as_html_or_svg_image_element(
  value : CanvasImageSource?,
) -> HTMLOrSVGImageElement? {
  match value {
    Some(v) => v.as_html_or_svg_image_element()
    None => None
  }
}

///|
/// Flatten Option[CanvasImageSource] to HTMLVideoElement?
pub fn CanvasImageSource::bind_as_html_video_element(
  value : CanvasImageSource?,
) -> HTMLVideoElement? {
  match value {
    Some(v) => v.as_html_video_element()
    None => None
  }
}

///|
/// Flatten Option[CanvasImageSource] to HTMLCanvasElement?
pub fn CanvasImageSource::bind_as_html_canvas_element(
  value : CanvasImageSource?,
) -> HTMLCanvasElement? {
  match value {
    Some(v) => v.as_html_canvas_element()
    None => None
  }
}

///|
/// Flatten Option[CanvasImageSource] to ImageBitmap?
pub fn CanvasImageSource::bind_as_image_bitmap(
  value : CanvasImageSource?,
) -> ImageBitmap? {
  match value {
    Some(v) => v.as_image_bitmap()
    None => None
  }
}

///|
/// Flatten Option[CanvasImageSource] to OffscreenCanvas?
pub fn CanvasImageSource::bind_as_offscreen_canvas(
  value : CanvasImageSource?,
) -> OffscreenCanvas? {
  match value {
    Some(v) => v.as_offscreen_canvas()
    None => None
  }
}

///|
/// Flatten Option[CanvasImageSource] to VideoFrame?
pub fn CanvasImageSource::bind_as_video_frame(
  value : CanvasImageSource?,
) -> VideoFrame? {
  match value {
    Some(v) => v.as_video_frame()
    None => None
  }
}

///|
/// OffscreenRenderingContext typedef
pub type OffscreenRenderingContext

///|
pub extern "js" fn OffscreenRenderingContext::to_js_value(
  self : OffscreenRenderingContext,
) -> JsValue =
  #| (self) => self

///|
/// Create OffscreenRenderingContext from OffscreenCanvasRenderingContext2D
pub extern "js" fn OffscreenRenderingContext::from_offscreen_canvas_rendering_context_2d(
  v : OffscreenCanvasRenderingContext2D,
) -> OffscreenRenderingContext =
  #| (v) => v

///|
/// Create OffscreenRenderingContext from ImageBitmapRenderingContext
pub extern "js" fn OffscreenRenderingContext::from_image_bitmap_rendering_context(
  v : ImageBitmapRenderingContext,
) -> OffscreenRenderingContext =
  #| (v) => v

///|
/// Create OffscreenRenderingContext from WebGLRenderingContext
pub extern "js" fn OffscreenRenderingContext::from_web_gl_rendering_context(
  v : WebGLRenderingContext,
) -> OffscreenRenderingContext =
  #| (v) => v

///|
/// Create OffscreenRenderingContext from WebGL2RenderingContext
pub extern "js" fn OffscreenRenderingContext::from_web_gl2_rendering_context(
  v : WebGL2RenderingContext,
) -> OffscreenRenderingContext =
  #| (v) => v

///|
/// Create OffscreenRenderingContext from GPUCanvasContext
pub extern "js" fn OffscreenRenderingContext::from_gpu_canvas_context(
  v : GPUCanvasContext,
) -> OffscreenRenderingContext =
  #| (v) => v

///|
/// Check if this OffscreenRenderingContext is OffscreenCanvasRenderingContext2D
pub extern "js" fn OffscreenRenderingContext::is_offscreen_canvas_rendering_context_2d(
  self : OffscreenRenderingContext,
) -> Bool =
  #| (self) => self instanceof OffscreenCanvasRenderingContext2D

///|
/// Check if this OffscreenRenderingContext is ImageBitmapRenderingContext
pub extern "js" fn OffscreenRenderingContext::is_image_bitmap_rendering_context(
  self : OffscreenRenderingContext,
) -> Bool =
  #| (self) => self instanceof ImageBitmapRenderingContext

///|
/// Check if this OffscreenRenderingContext is WebGLRenderingContext
pub extern "js" fn OffscreenRenderingContext::is_web_gl_rendering_context(
  self : OffscreenRenderingContext,
) -> Bool =
  #| (self) => self instanceof WebGLRenderingContext

///|
/// Check if this OffscreenRenderingContext is WebGL2RenderingContext
pub extern "js" fn OffscreenRenderingContext::is_web_gl2_rendering_context(
  self : OffscreenRenderingContext,
) -> Bool =
  #| (self) => self instanceof WebGL2RenderingContext

///|
/// Check if this OffscreenRenderingContext is GPUCanvasContext
pub extern "js" fn OffscreenRenderingContext::is_gpu_canvas_context(
  self : OffscreenRenderingContext,
) -> Bool =
  #| (self) => self instanceof GPUCanvasContext

///|
/// Try to get OffscreenRenderingContext as OffscreenCanvasRenderingContext2D
pub extern "js" fn OffscreenRenderingContext::as_offscreen_canvas_rendering_context_2d(
  self : OffscreenRenderingContext,
) -> OffscreenCanvasRenderingContext2D? =
  #| (self) => (self instanceof OffscreenCanvasRenderingContext2D) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get OffscreenRenderingContext as ImageBitmapRenderingContext
pub extern "js" fn OffscreenRenderingContext::as_image_bitmap_rendering_context(
  self : OffscreenRenderingContext,
) -> ImageBitmapRenderingContext? =
  #| (self) => (self instanceof ImageBitmapRenderingContext) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get OffscreenRenderingContext as WebGLRenderingContext
pub extern "js" fn OffscreenRenderingContext::as_web_gl_rendering_context(
  self : OffscreenRenderingContext,
) -> WebGLRenderingContext? =
  #| (self) => (self instanceof WebGLRenderingContext) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get OffscreenRenderingContext as WebGL2RenderingContext
pub extern "js" fn OffscreenRenderingContext::as_web_gl2_rendering_context(
  self : OffscreenRenderingContext,
) -> WebGL2RenderingContext? =
  #| (self) => (self instanceof WebGL2RenderingContext) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get OffscreenRenderingContext as GPUCanvasContext
pub extern "js" fn OffscreenRenderingContext::as_gpu_canvas_context(
  self : OffscreenRenderingContext,
) -> GPUCanvasContext? =
  #| (self) => (self instanceof GPUCanvasContext) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[OffscreenRenderingContext] to OffscreenCanvasRenderingContext2D?
pub fn OffscreenRenderingContext::bind_as_offscreen_canvas_rendering_context_2d(
  value : OffscreenRenderingContext?,
) -> OffscreenCanvasRenderingContext2D? {
  match value {
    Some(v) => v.as_offscreen_canvas_rendering_context_2d()
    None => None
  }
}

///|
/// Flatten Option[OffscreenRenderingContext] to ImageBitmapRenderingContext?
pub fn OffscreenRenderingContext::bind_as_image_bitmap_rendering_context(
  value : OffscreenRenderingContext?,
) -> ImageBitmapRenderingContext? {
  match value {
    Some(v) => v.as_image_bitmap_rendering_context()
    None => None
  }
}

///|
/// Flatten Option[OffscreenRenderingContext] to WebGLRenderingContext?
pub fn OffscreenRenderingContext::bind_as_web_gl_rendering_context(
  value : OffscreenRenderingContext?,
) -> WebGLRenderingContext? {
  match value {
    Some(v) => v.as_web_gl_rendering_context()
    None => None
  }
}

///|
/// Flatten Option[OffscreenRenderingContext] to WebGL2RenderingContext?
pub fn OffscreenRenderingContext::bind_as_web_gl2_rendering_context(
  value : OffscreenRenderingContext?,
) -> WebGL2RenderingContext? {
  match value {
    Some(v) => v.as_web_gl2_rendering_context()
    None => None
  }
}

///|
/// Flatten Option[OffscreenRenderingContext] to GPUCanvasContext?
pub fn OffscreenRenderingContext::bind_as_gpu_canvas_context(
  value : OffscreenRenderingContext?,
) -> GPUCanvasContext? {
  match value {
    Some(v) => v.as_gpu_canvas_context()
    None => None
  }
}

///|
/// EventHandler typedef
pub type EventHandler = EventHandlerNonNull?

///|
/// OnErrorEventHandler typedef
pub type OnErrorEventHandler = OnErrorEventHandlerNonNull?

///|
/// OnBeforeUnloadEventHandler typedef
pub type OnBeforeUnloadEventHandler = OnBeforeUnloadEventHandlerNonNull?

///|
/// TimerHandler typedef
pub type TimerHandler

///|
pub extern "js" fn TimerHandler::to_js_value(self : TimerHandler) -> JsValue =
  #| (self) => self

///|
/// Create TimerHandler from String
pub extern "js" fn TimerHandler::from_string(v : String) -> TimerHandler =
  #| (v) => v

///|
/// Create TimerHandler from Function
pub extern "js" fn TimerHandler::from_function(v : Function) -> TimerHandler =
  #| (v) => v

///|
/// Create TimerHandler from TrustedScript
pub extern "js" fn TimerHandler::from_trusted_script(
  v : TrustedScript,
) -> TimerHandler =
  #| (v) => v

///|
/// Check if this TimerHandler is String
pub extern "js" fn TimerHandler::is_string(self : TimerHandler) -> Bool =
  #| (self) => typeof self === 'string'

///|
/// Check if this TimerHandler is Function
pub extern "js" fn TimerHandler::is_function(self : TimerHandler) -> Bool =
  #| (self) => typeof self === 'function'

///|
/// Check if this TimerHandler is TrustedScript
pub extern "js" fn TimerHandler::is_trusted_script(self : TimerHandler) -> Bool =
  #| (self) => self instanceof TrustedScript

///|
/// Try to get TimerHandler as String
pub extern "js" fn TimerHandler::as_string(self : TimerHandler) -> String? =
  #| (self) => (typeof self === 'string') ? self : undefined

///|
/// Try to get TimerHandler as Function
pub extern "js" fn TimerHandler::as_function(self : TimerHandler) -> Function? =
  #| (self) => (typeof self === 'function') ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get TimerHandler as TrustedScript
pub extern "js" fn TimerHandler::as_trusted_script(
  self : TimerHandler,
) -> TrustedScript? =
  #| (self) => (self instanceof TrustedScript) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[TimerHandler] to String?
pub fn TimerHandler::bind_as_string(value : TimerHandler?) -> String? {
  match value {
    Some(v) => v.as_string()
    None => None
  }
}

///|
/// Flatten Option[TimerHandler] to Function?
pub fn TimerHandler::bind_as_function(value : TimerHandler?) -> Function? {
  match value {
    Some(v) => v.as_function()
    None => None
  }
}

///|
/// Flatten Option[TimerHandler] to TrustedScript?
pub fn TimerHandler::bind_as_trusted_script(
  value : TimerHandler?,
) -> TrustedScript? {
  match value {
    Some(v) => v.as_trusted_script()
    None => None
  }
}

///|
/// ImageDataArray typedef
pub type ImageDataArray

///|
pub extern "js" fn ImageDataArray::to_js_value(
  self : ImageDataArray,
) -> JsValue =
  #| (self) => self

///|
/// Create ImageDataArray from Uint8ClampedArray
pub extern "js" fn ImageDataArray::from_uint8_clamped_array(
  v : Uint8ClampedArray,
) -> ImageDataArray =
  #| (v) => v

///|
/// Create ImageDataArray from Float16Array
pub extern "js" fn ImageDataArray::from_float16_array(
  v : Float16Array,
) -> ImageDataArray =
  #| (v) => v

///|
/// Check if this ImageDataArray is Uint8ClampedArray
pub extern "js" fn ImageDataArray::is_uint8_clamped_array(
  self : ImageDataArray,
) -> Bool =
  #| (self) => self instanceof Uint8ClampedArray

///|
/// Check if this ImageDataArray is Float16Array
pub extern "js" fn ImageDataArray::is_float16_array(
  self : ImageDataArray,
) -> Bool =
  #| (self) => self instanceof Float16Array

///|
/// Try to get ImageDataArray as Uint8ClampedArray
pub extern "js" fn ImageDataArray::as_uint8_clamped_array(
  self : ImageDataArray,
) -> Uint8ClampedArray? =
  #| (self) => (self instanceof Uint8ClampedArray) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get ImageDataArray as Float16Array
pub extern "js" fn ImageDataArray::as_float16_array(
  self : ImageDataArray,
) -> Float16Array? =
  #| (self) => (self instanceof Float16Array) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[ImageDataArray] to Uint8ClampedArray?
pub fn ImageDataArray::bind_as_uint8_clamped_array(
  value : ImageDataArray?,
) -> Uint8ClampedArray? {
  match value {
    Some(v) => v.as_uint8_clamped_array()
    None => None
  }
}

///|
/// Flatten Option[ImageDataArray] to Float16Array?
pub fn ImageDataArray::bind_as_float16_array(
  value : ImageDataArray?,
) -> Float16Array? {
  match value {
    Some(v) => v.as_float16_array()
    None => None
  }
}

///|
/// ImageBitmapSource typedef
pub type ImageBitmapSource

///|
pub extern "js" fn ImageBitmapSource::to_js_value(
  self : ImageBitmapSource,
) -> JsValue =
  #| (self) => self

///|
/// Create ImageBitmapSource from CanvasImageSource
pub extern "js" fn ImageBitmapSource::from_canvas_image_source(
  v : CanvasImageSource,
) -> ImageBitmapSource =
  #| (v) => v

///|
/// Create ImageBitmapSource from Blob
pub extern "js" fn ImageBitmapSource::from_blob(v : Blob) -> ImageBitmapSource =
  #| (v) => v

///|
/// Create ImageBitmapSource from ImageData
pub extern "js" fn ImageBitmapSource::from_image_data(
  v : ImageData,
) -> ImageBitmapSource =
  #| (v) => v

///|
/// Check if this ImageBitmapSource is CanvasImageSource
pub extern "js" fn ImageBitmapSource::is_canvas_image_source(
  self : ImageBitmapSource,
) -> Bool =
  #| (self) => self instanceof HTMLImageElement || self instanceof SVGImageElement || self instanceof HTMLVideoElement || self instanceof HTMLCanvasElement || self instanceof ImageBitmap || self instanceof OffscreenCanvas || self instanceof VideoFrame

///|
/// Check if this ImageBitmapSource is Blob
pub extern "js" fn ImageBitmapSource::is_blob(self : ImageBitmapSource) -> Bool =
  #| (self) => self instanceof Blob

///|
/// Check if this ImageBitmapSource is ImageData
pub extern "js" fn ImageBitmapSource::is_image_data(
  self : ImageBitmapSource,
) -> Bool =
  #| (self) => self instanceof ImageData

///|
/// Try to get ImageBitmapSource as CanvasImageSource
pub extern "js" fn ImageBitmapSource::as_canvas_image_source(
  self : ImageBitmapSource,
) -> CanvasImageSource? =
  #| (self) => (self instanceof HTMLImageElement || self instanceof SVGImageElement || self instanceof HTMLVideoElement || self instanceof HTMLCanvasElement || self instanceof ImageBitmap || self instanceof OffscreenCanvas || self instanceof VideoFrame) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get ImageBitmapSource as Blob
pub extern "js" fn ImageBitmapSource::as_blob(
  self : ImageBitmapSource,
) -> Blob? =
  #| (self) => (self instanceof Blob) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get ImageBitmapSource as ImageData
pub extern "js" fn ImageBitmapSource::as_image_data(
  self : ImageBitmapSource,
) -> ImageData? =
  #| (self) => (self instanceof ImageData) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[ImageBitmapSource] to CanvasImageSource?
pub fn ImageBitmapSource::bind_as_canvas_image_source(
  value : ImageBitmapSource?,
) -> CanvasImageSource? {
  match value {
    Some(v) => v.as_canvas_image_source()
    None => None
  }
}

///|
/// Flatten Option[ImageBitmapSource] to Blob?
pub fn ImageBitmapSource::bind_as_blob(value : ImageBitmapSource?) -> Blob? {
  match value {
    Some(v) => v.as_blob()
    None => None
  }
}

///|
/// Flatten Option[ImageBitmapSource] to ImageData?
pub fn ImageBitmapSource::bind_as_image_data(
  value : ImageBitmapSource?,
) -> ImageData? {
  match value {
    Some(v) => v.as_image_data()
    None => None
  }
}

///|
/// MessageEventSource typedef
pub type MessageEventSource

///|
pub extern "js" fn MessageEventSource::to_js_value(
  self : MessageEventSource,
) -> JsValue =
  #| (self) => self

///|
/// Create MessageEventSource from Window
pub extern "js" fn MessageEventSource::from_window(
  v : Window,
) -> MessageEventSource =
  #| (v) => v

///|
/// Create MessageEventSource from MessagePort
pub extern "js" fn MessageEventSource::from_message_port(
  v : MessagePort,
) -> MessageEventSource =
  #| (v) => v

///|
/// Create MessageEventSource from ServiceWorker
pub extern "js" fn MessageEventSource::from_service_worker(
  v : ServiceWorker,
) -> MessageEventSource =
  #| (v) => v

///|
/// Check if this MessageEventSource is Window
pub extern "js" fn MessageEventSource::is_window(
  self : MessageEventSource,
) -> Bool =
  #| (self) => self instanceof Window

///|
/// Check if this MessageEventSource is MessagePort
pub extern "js" fn MessageEventSource::is_message_port(
  self : MessageEventSource,
) -> Bool =
  #| (self) => self instanceof MessagePort

///|
/// Check if this MessageEventSource is ServiceWorker
pub extern "js" fn MessageEventSource::is_service_worker(
  self : MessageEventSource,
) -> Bool =
  #| (self) => self instanceof ServiceWorker

///|
/// Try to get MessageEventSource as Window
pub extern "js" fn MessageEventSource::as_window(
  self : MessageEventSource,
) -> Window? =
  #| (self) => (self instanceof Window) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get MessageEventSource as MessagePort
pub extern "js" fn MessageEventSource::as_message_port(
  self : MessageEventSource,
) -> MessagePort? =
  #| (self) => (self instanceof MessagePort) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get MessageEventSource as ServiceWorker
pub extern "js" fn MessageEventSource::as_service_worker(
  self : MessageEventSource,
) -> ServiceWorker? =
  #| (self) => (self instanceof ServiceWorker) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[MessageEventSource] to Window?
pub fn MessageEventSource::bind_as_window(
  value : MessageEventSource?,
) -> Window? {
  match value {
    Some(v) => v.as_window()
    None => None
  }
}

///|
/// Flatten Option[MessageEventSource] to MessagePort?
pub fn MessageEventSource::bind_as_message_port(
  value : MessageEventSource?,
) -> MessagePort? {
  match value {
    Some(v) => v.as_message_port()
    None => None
  }
}

///|
/// Flatten Option[MessageEventSource] to ServiceWorker?
pub fn MessageEventSource::bind_as_service_worker(
  value : MessageEventSource?,
) -> ServiceWorker? {
  match value {
    Some(v) => v.as_service_worker()
    None => None
  }
}

///|
/// DocumentReadyState enum
pub(all) enum DocumentReadyState {
  Loading
  Interactive
  Complete
} derive(Eq, Show)

///|
/// Convert to string value
pub fn DocumentReadyState::to_string(self : DocumentReadyState) -> String {
  match self {
    DocumentReadyState::Loading => "loading"
    DocumentReadyState::Interactive => "interactive"
    DocumentReadyState::Complete => "complete"
  }
}

///|
/// Parse from string value
pub fn DocumentReadyState::from_string(s : String) -> DocumentReadyState? {
  match s {
    "loading" => Some(DocumentReadyState::Loading)
    "interactive" => Some(DocumentReadyState::Interactive)
    "complete" => Some(DocumentReadyState::Complete)
    _ => None
  }
}

///|
/// DocumentVisibilityState enum
pub(all) enum DocumentVisibilityState {
  Visible
  Hidden
} derive(Eq, Show)

///|
/// Convert to string value
pub fn DocumentVisibilityState::to_string(
  self : DocumentVisibilityState,
) -> String {
  match self {
    DocumentVisibilityState::Visible => "visible"
    DocumentVisibilityState::Hidden => "hidden"
  }
}

///|
/// Parse from string value
pub fn DocumentVisibilityState::from_string(
  s : String,
) -> DocumentVisibilityState? {
  match s {
    "visible" => Some(DocumentVisibilityState::Visible)
    "hidden" => Some(DocumentVisibilityState::Hidden)
    _ => None
  }
}

///|
/// CanPlayTypeResult enum
pub(all) enum CanPlayTypeResult {
  Empty
  Maybe
  Probably
} derive(Eq, Show)

///|
/// Convert to string value
pub fn CanPlayTypeResult::to_string(self : CanPlayTypeResult) -> String {
  match self {
    CanPlayTypeResult::Empty => ""
    CanPlayTypeResult::Maybe => "maybe"
    CanPlayTypeResult::Probably => "probably"
  }
}

///|
/// Parse from string value
pub fn CanPlayTypeResult::from_string(s : String) -> CanPlayTypeResult? {
  match s {
    "" => Some(CanPlayTypeResult::Empty)
    "maybe" => Some(CanPlayTypeResult::Maybe)
    "probably" => Some(CanPlayTypeResult::Probably)
    _ => None
  }
}

///|
/// TextTrackMode enum
pub(all) enum TextTrackMode {
  Disabled
  Hidden
  Showing
} derive(Eq, Show)

///|
/// Convert to string value
pub fn TextTrackMode::to_string(self : TextTrackMode) -> String {
  match self {
    TextTrackMode::Disabled => "disabled"
    TextTrackMode::Hidden => "hidden"
    TextTrackMode::Showing => "showing"
  }
}

///|
/// Parse from string value
pub fn TextTrackMode::from_string(s : String) -> TextTrackMode? {
  match s {
    "disabled" => Some(TextTrackMode::Disabled)
    "hidden" => Some(TextTrackMode::Hidden)
    "showing" => Some(TextTrackMode::Showing)
    _ => None
  }
}

///|
/// TextTrackKind enum
pub(all) enum TextTrackKind {
  Subtitles
  Captions
  Descriptions
  Chapters
  Metadata
} derive(Eq, Show)

///|
/// Convert to string value
pub fn TextTrackKind::to_string(self : TextTrackKind) -> String {
  match self {
    TextTrackKind::Subtitles => "subtitles"
    TextTrackKind::Captions => "captions"
    TextTrackKind::Descriptions => "descriptions"
    TextTrackKind::Chapters => "chapters"
    TextTrackKind::Metadata => "metadata"
  }
}

///|
/// Parse from string value
pub fn TextTrackKind::from_string(s : String) -> TextTrackKind? {
  match s {
    "subtitles" => Some(TextTrackKind::Subtitles)
    "captions" => Some(TextTrackKind::Captions)
    "descriptions" => Some(TextTrackKind::Descriptions)
    "chapters" => Some(TextTrackKind::Chapters)
    "metadata" => Some(TextTrackKind::Metadata)
    _ => None
  }
}

///|
/// SelectionMode enum
pub(all) enum SelectionMode {
  Select
  Start
  End
  Preserve
} derive(Eq, Show)

///|
/// Convert to string value
pub fn SelectionMode::to_string(self : SelectionMode) -> String {
  match self {
    SelectionMode::Select => "select"
    SelectionMode::Start => "start"
    SelectionMode::End => "end"
    SelectionMode::Preserve => "preserve"
  }
}

///|
/// Parse from string value
pub fn SelectionMode::from_string(s : String) -> SelectionMode? {
  match s {
    "select" => Some(SelectionMode::Select)
    "start" => Some(SelectionMode::Start)
    "end" => Some(SelectionMode::End)
    "preserve" => Some(SelectionMode::Preserve)
    _ => None
  }
}

///|
/// CanvasColorType enum
pub(all) enum CanvasColorType {
  Unorm8
  Float16
} derive(Eq, Show)

///|
/// Convert to string value
pub fn CanvasColorType::to_string(self : CanvasColorType) -> String {
  match self {
    CanvasColorType::Unorm8 => "unorm8"
    CanvasColorType::Float16 => "float16"
  }
}

///|
/// Parse from string value
pub fn CanvasColorType::from_string(s : String) -> CanvasColorType? {
  match s {
    "unorm8" => Some(CanvasColorType::Unorm8)
    "float16" => Some(CanvasColorType::Float16)
    _ => None
  }
}

///|
/// CanvasFillRule enum
pub(all) enum CanvasFillRule {
  Nonzero
  Evenodd
} derive(Eq, Show)

///|
/// Convert to string value
pub fn CanvasFillRule::to_string(self : CanvasFillRule) -> String {
  match self {
    CanvasFillRule::Nonzero => "nonzero"
    CanvasFillRule::Evenodd => "evenodd"
  }
}

///|
/// Parse from string value
pub fn CanvasFillRule::from_string(s : String) -> CanvasFillRule? {
  match s {
    "nonzero" => Some(CanvasFillRule::Nonzero)
    "evenodd" => Some(CanvasFillRule::Evenodd)
    _ => None
  }
}

///|
/// ImageSmoothingQuality enum
pub(all) enum ImageSmoothingQuality {
  Low
  Medium
  High
} derive(Eq, Show)

///|
/// Convert to string value
pub fn ImageSmoothingQuality::to_string(self : ImageSmoothingQuality) -> String {
  match self {
    ImageSmoothingQuality::Low => "low"
    ImageSmoothingQuality::Medium => "medium"
    ImageSmoothingQuality::High => "high"
  }
}

///|
/// Parse from string value
pub fn ImageSmoothingQuality::from_string(s : String) -> ImageSmoothingQuality? {
  match s {
    "low" => Some(ImageSmoothingQuality::Low)
    "medium" => Some(ImageSmoothingQuality::Medium)
    "high" => Some(ImageSmoothingQuality::High)
    _ => None
  }
}

///|
/// CanvasLineCap enum
pub(all) enum CanvasLineCap {
  Butt
  Round
  Square
} derive(Eq, Show)

///|
/// Convert to string value
pub fn CanvasLineCap::to_string(self : CanvasLineCap) -> String {
  match self {
    CanvasLineCap::Butt => "butt"
    CanvasLineCap::Round => "round"
    CanvasLineCap::Square => "square"
  }
}

///|
/// Parse from string value
pub fn CanvasLineCap::from_string(s : String) -> CanvasLineCap? {
  match s {
    "butt" => Some(CanvasLineCap::Butt)
    "round" => Some(CanvasLineCap::Round)
    "square" => Some(CanvasLineCap::Square)
    _ => None
  }
}

///|
/// CanvasLineJoin enum
pub(all) enum CanvasLineJoin {
  Round
  Bevel
  Miter
} derive(Eq, Show)

///|
/// Convert to string value
pub fn CanvasLineJoin::to_string(self : CanvasLineJoin) -> String {
  match self {
    CanvasLineJoin::Round => "round"
    CanvasLineJoin::Bevel => "bevel"
    CanvasLineJoin::Miter => "miter"
  }
}

///|
/// Parse from string value
pub fn CanvasLineJoin::from_string(s : String) -> CanvasLineJoin? {
  match s {
    "round" => Some(CanvasLineJoin::Round)
    "bevel" => Some(CanvasLineJoin::Bevel)
    "miter" => Some(CanvasLineJoin::Miter)
    _ => None
  }
}

///|
/// CanvasTextAlign enum
pub(all) enum CanvasTextAlign {
  Start
  End
  Left
  Right
  Center
} derive(Eq, Show)

///|
/// Convert to string value
pub fn CanvasTextAlign::to_string(self : CanvasTextAlign) -> String {
  match self {
    CanvasTextAlign::Start => "start"
    CanvasTextAlign::End => "end"
    CanvasTextAlign::Left => "left"
    CanvasTextAlign::Right => "right"
    CanvasTextAlign::Center => "center"
  }
}

///|
/// Parse from string value
pub fn CanvasTextAlign::from_string(s : String) -> CanvasTextAlign? {
  match s {
    "start" => Some(CanvasTextAlign::Start)
    "end" => Some(CanvasTextAlign::End)
    "left" => Some(CanvasTextAlign::Left)
    "right" => Some(CanvasTextAlign::Right)
    "center" => Some(CanvasTextAlign::Center)
    _ => None
  }
}

///|
/// CanvasTextBaseline enum
pub(all) enum CanvasTextBaseline {
  Top
  Hanging
  Middle
  Alphabetic
  Ideographic
  Bottom
} derive(Eq, Show)

///|
/// Convert to string value
pub fn CanvasTextBaseline::to_string(self : CanvasTextBaseline) -> String {
  match self {
    CanvasTextBaseline::Top => "top"
    CanvasTextBaseline::Hanging => "hanging"
    CanvasTextBaseline::Middle => "middle"
    CanvasTextBaseline::Alphabetic => "alphabetic"
    CanvasTextBaseline::Ideographic => "ideographic"
    CanvasTextBaseline::Bottom => "bottom"
  }
}

///|
/// Parse from string value
pub fn CanvasTextBaseline::from_string(s : String) -> CanvasTextBaseline? {
  match s {
    "top" => Some(CanvasTextBaseline::Top)
    "hanging" => Some(CanvasTextBaseline::Hanging)
    "middle" => Some(CanvasTextBaseline::Middle)
    "alphabetic" => Some(CanvasTextBaseline::Alphabetic)
    "ideographic" => Some(CanvasTextBaseline::Ideographic)
    "bottom" => Some(CanvasTextBaseline::Bottom)
    _ => None
  }
}

///|
/// CanvasDirection enum
pub(all) enum CanvasDirection {
  Ltr
  Rtl
  Inherit
} derive(Eq, Show)

///|
/// Convert to string value
pub fn CanvasDirection::to_string(self : CanvasDirection) -> String {
  match self {
    CanvasDirection::Ltr => "ltr"
    CanvasDirection::Rtl => "rtl"
    CanvasDirection::Inherit => "inherit"
  }
}

///|
/// Parse from string value
pub fn CanvasDirection::from_string(s : String) -> CanvasDirection? {
  match s {
    "ltr" => Some(CanvasDirection::Ltr)
    "rtl" => Some(CanvasDirection::Rtl)
    "inherit" => Some(CanvasDirection::Inherit)
    _ => None
  }
}

///|
/// CanvasFontKerning enum
pub(all) enum CanvasFontKerning {
  Auto
  Normal
  None
} derive(Eq, Show)

///|
/// Convert to string value
pub fn CanvasFontKerning::to_string(self : CanvasFontKerning) -> String {
  match self {
    CanvasFontKerning::Auto => "auto"
    CanvasFontKerning::Normal => "normal"
    CanvasFontKerning::None => "none"
  }
}

///|
/// Parse from string value
pub fn CanvasFontKerning::from_string(s : String) -> CanvasFontKerning? {
  match s {
    "auto" => Some(CanvasFontKerning::Auto)
    "normal" => Some(CanvasFontKerning::Normal)
    "none" => Some(CanvasFontKerning::None)
    _ => None
  }
}

///|
/// CanvasFontStretch enum
pub(all) enum CanvasFontStretch {
  UltraCondensed
  ExtraCondensed
  Condensed
  SemiCondensed
  Normal
  SemiExpanded
  Expanded
  ExtraExpanded
  UltraExpanded
} derive(Eq, Show)

///|
/// Convert to string value
pub fn CanvasFontStretch::to_string(self : CanvasFontStretch) -> String {
  match self {
    CanvasFontStretch::UltraCondensed => "ultra-condensed"
    CanvasFontStretch::ExtraCondensed => "extra-condensed"
    CanvasFontStretch::Condensed => "condensed"
    CanvasFontStretch::SemiCondensed => "semi-condensed"
    CanvasFontStretch::Normal => "normal"
    CanvasFontStretch::SemiExpanded => "semi-expanded"
    CanvasFontStretch::Expanded => "expanded"
    CanvasFontStretch::ExtraExpanded => "extra-expanded"
    CanvasFontStretch::UltraExpanded => "ultra-expanded"
  }
}

///|
/// Parse from string value
pub fn CanvasFontStretch::from_string(s : String) -> CanvasFontStretch? {
  match s {
    "ultra-condensed" => Some(CanvasFontStretch::UltraCondensed)
    "extra-condensed" => Some(CanvasFontStretch::ExtraCondensed)
    "condensed" => Some(CanvasFontStretch::Condensed)
    "semi-condensed" => Some(CanvasFontStretch::SemiCondensed)
    "normal" => Some(CanvasFontStretch::Normal)
    "semi-expanded" => Some(CanvasFontStretch::SemiExpanded)
    "expanded" => Some(CanvasFontStretch::Expanded)
    "extra-expanded" => Some(CanvasFontStretch::ExtraExpanded)
    "ultra-expanded" => Some(CanvasFontStretch::UltraExpanded)
    _ => None
  }
}

///|
/// CanvasFontVariantCaps enum
pub(all) enum CanvasFontVariantCaps {
  Normal
  SmallCaps
  AllSmallCaps
  PetiteCaps
  AllPetiteCaps
  Unicase
  TitlingCaps
} derive(Eq, Show)

///|
/// Convert to string value
pub fn CanvasFontVariantCaps::to_string(self : CanvasFontVariantCaps) -> String {
  match self {
    CanvasFontVariantCaps::Normal => "normal"
    CanvasFontVariantCaps::SmallCaps => "small-caps"
    CanvasFontVariantCaps::AllSmallCaps => "all-small-caps"
    CanvasFontVariantCaps::PetiteCaps => "petite-caps"
    CanvasFontVariantCaps::AllPetiteCaps => "all-petite-caps"
    CanvasFontVariantCaps::Unicase => "unicase"
    CanvasFontVariantCaps::TitlingCaps => "titling-caps"
  }
}

///|
/// Parse from string value
pub fn CanvasFontVariantCaps::from_string(s : String) -> CanvasFontVariantCaps? {
  match s {
    "normal" => Some(CanvasFontVariantCaps::Normal)
    "small-caps" => Some(CanvasFontVariantCaps::SmallCaps)
    "all-small-caps" => Some(CanvasFontVariantCaps::AllSmallCaps)
    "petite-caps" => Some(CanvasFontVariantCaps::PetiteCaps)
    "all-petite-caps" => Some(CanvasFontVariantCaps::AllPetiteCaps)
    "unicase" => Some(CanvasFontVariantCaps::Unicase)
    "titling-caps" => Some(CanvasFontVariantCaps::TitlingCaps)
    _ => None
  }
}

///|
/// CanvasTextRendering enum
pub(all) enum CanvasTextRendering {
  Auto
  OptimizeSpeed
  OptimizeLegibility
  GeometricPrecision
} derive(Eq, Show)

///|
/// Convert to string value
pub fn CanvasTextRendering::to_string(self : CanvasTextRendering) -> String {
  match self {
    CanvasTextRendering::Auto => "auto"
    CanvasTextRendering::OptimizeSpeed => "optimizeSpeed"
    CanvasTextRendering::OptimizeLegibility => "optimizeLegibility"
    CanvasTextRendering::GeometricPrecision => "geometricPrecision"
  }
}

///|
/// Parse from string value
pub fn CanvasTextRendering::from_string(s : String) -> CanvasTextRendering? {
  match s {
    "auto" => Some(CanvasTextRendering::Auto)
    "optimizeSpeed" => Some(CanvasTextRendering::OptimizeSpeed)
    "optimizeLegibility" => Some(CanvasTextRendering::OptimizeLegibility)
    "geometricPrecision" => Some(CanvasTextRendering::GeometricPrecision)
    _ => None
  }
}

///|
/// OffscreenRenderingContextId enum
pub(all) enum OffscreenRenderingContextId {
  N2d
  Bitmaprenderer
  Webgl
  Webgl2
  Webgpu
} derive(Eq, Show)

///|
/// Convert to string value
pub fn OffscreenRenderingContextId::to_string(
  self : OffscreenRenderingContextId,
) -> String {
  match self {
    OffscreenRenderingContextId::N2d => "2d"
    OffscreenRenderingContextId::Bitmaprenderer => "bitmaprenderer"
    OffscreenRenderingContextId::Webgl => "webgl"
    OffscreenRenderingContextId::Webgl2 => "webgl2"
    OffscreenRenderingContextId::Webgpu => "webgpu"
  }
}

///|
/// Parse from string value
pub fn OffscreenRenderingContextId::from_string(
  s : String,
) -> OffscreenRenderingContextId? {
  match s {
    "2d" => Some(OffscreenRenderingContextId::N2d)
    "bitmaprenderer" => Some(OffscreenRenderingContextId::Bitmaprenderer)
    "webgl" => Some(OffscreenRenderingContextId::Webgl)
    "webgl2" => Some(OffscreenRenderingContextId::Webgl2)
    "webgpu" => Some(OffscreenRenderingContextId::Webgpu)
    _ => None
  }
}

///|
/// PredefinedColorSpace enum
pub(all) enum PredefinedColorSpace {
  Srgb
  SrgbLinear
  DisplayP3
  DisplayP3Linear
} derive(Eq, Show)

///|
/// Convert to string value
pub fn PredefinedColorSpace::to_string(self : PredefinedColorSpace) -> String {
  match self {
    PredefinedColorSpace::Srgb => "srgb"
    PredefinedColorSpace::SrgbLinear => "srgb-linear"
    PredefinedColorSpace::DisplayP3 => "display-p3"
    PredefinedColorSpace::DisplayP3Linear => "display-p3-linear"
  }
}

///|
/// Parse from string value
pub fn PredefinedColorSpace::from_string(s : String) -> PredefinedColorSpace? {
  match s {
    "srgb" => Some(PredefinedColorSpace::Srgb)
    "srgb-linear" => Some(PredefinedColorSpace::SrgbLinear)
    "display-p3" => Some(PredefinedColorSpace::DisplayP3)
    "display-p3-linear" => Some(PredefinedColorSpace::DisplayP3Linear)
    _ => None
  }
}

///|
/// ScrollRestoration enum
pub(all) enum ScrollRestoration {
  Auto
  Manual
} derive(Eq, Show)

///|
/// Convert to string value
pub fn ScrollRestoration::to_string(self : ScrollRestoration) -> String {
  match self {
    ScrollRestoration::Auto => "auto"
    ScrollRestoration::Manual => "manual"
  }
}

///|
/// Parse from string value
pub fn ScrollRestoration::from_string(s : String) -> ScrollRestoration? {
  match s {
    "auto" => Some(ScrollRestoration::Auto)
    "manual" => Some(ScrollRestoration::Manual)
    _ => None
  }
}

///|
/// NavigationHistoryBehavior enum
pub(all) enum NavigationHistoryBehavior {
  Auto
  Push
  Replace
} derive(Eq, Show)

///|
/// Convert to string value
pub fn NavigationHistoryBehavior::to_string(
  self : NavigationHistoryBehavior,
) -> String {
  match self {
    NavigationHistoryBehavior::Auto => "auto"
    NavigationHistoryBehavior::Push => "push"
    NavigationHistoryBehavior::Replace => "replace"
  }
}

///|
/// Parse from string value
pub fn NavigationHistoryBehavior::from_string(
  s : String,
) -> NavigationHistoryBehavior? {
  match s {
    "auto" => Some(NavigationHistoryBehavior::Auto)
    "push" => Some(NavigationHistoryBehavior::Push)
    "replace" => Some(NavigationHistoryBehavior::Replace)
    _ => None
  }
}

///|
/// NavigationType enum
pub(all) enum NavigationType {
  Push
  Replace
  Reload
  Traverse
} derive(Eq, Show)

///|
/// Convert to string value
pub fn NavigationType::to_string(self : NavigationType) -> String {
  match self {
    NavigationType::Push => "push"
    NavigationType::Replace => "replace"
    NavigationType::Reload => "reload"
    NavigationType::Traverse => "traverse"
  }
}

///|
/// Parse from string value
pub fn NavigationType::from_string(s : String) -> NavigationType? {
  match s {
    "push" => Some(NavigationType::Push)
    "replace" => Some(NavigationType::Replace)
    "reload" => Some(NavigationType::Reload)
    "traverse" => Some(NavigationType::Traverse)
    _ => None
  }
}

///|
/// NavigationFocusReset enum
pub(all) enum NavigationFocusReset {
  AfterTransition
  Manual
} derive(Eq, Show)

///|
/// Convert to string value
pub fn NavigationFocusReset::to_string(self : NavigationFocusReset) -> String {
  match self {
    NavigationFocusReset::AfterTransition => "after-transition"
    NavigationFocusReset::Manual => "manual"
  }
}

///|
/// Parse from string value
pub fn NavigationFocusReset::from_string(s : String) -> NavigationFocusReset? {
  match s {
    "after-transition" => Some(NavigationFocusReset::AfterTransition)
    "manual" => Some(NavigationFocusReset::Manual)
    _ => None
  }
}

///|
/// NavigationScrollBehavior enum
pub(all) enum NavigationScrollBehavior {
  AfterTransition
  Manual
} derive(Eq, Show)

///|
/// Convert to string value
pub fn NavigationScrollBehavior::to_string(
  self : NavigationScrollBehavior,
) -> String {
  match self {
    NavigationScrollBehavior::AfterTransition => "after-transition"
    NavigationScrollBehavior::Manual => "manual"
  }
}

///|
/// Parse from string value
pub fn NavigationScrollBehavior::from_string(
  s : String,
) -> NavigationScrollBehavior? {
  match s {
    "after-transition" => Some(NavigationScrollBehavior::AfterTransition)
    "manual" => Some(NavigationScrollBehavior::Manual)
    _ => None
  }
}

///|
/// DOMParserSupportedType enum
pub(all) enum DOMParserSupportedType {
  TextHtml
  TextXml
  ApplicationXml
  ApplicationXhtmlXml
  ImageSvgXml
} derive(Eq, Show)

///|
/// Convert to string value
pub fn DOMParserSupportedType::to_string(
  self : DOMParserSupportedType,
) -> String {
  match self {
    DOMParserSupportedType::TextHtml => "text/html"
    DOMParserSupportedType::TextXml => "text/xml"
    DOMParserSupportedType::ApplicationXml => "application/xml"
    DOMParserSupportedType::ApplicationXhtmlXml => "application/xhtml+xml"
    DOMParserSupportedType::ImageSvgXml => "image/svg+xml"
  }
}

///|
/// Parse from string value
pub fn DOMParserSupportedType::from_string(
  s : String,
) -> DOMParserSupportedType? {
  match s {
    "text/html" => Some(DOMParserSupportedType::TextHtml)
    "text/xml" => Some(DOMParserSupportedType::TextXml)
    "application/xml" => Some(DOMParserSupportedType::ApplicationXml)
    "application/xhtml+xml" => Some(DOMParserSupportedType::ApplicationXhtmlXml)
    "image/svg+xml" => Some(DOMParserSupportedType::ImageSvgXml)
    _ => None
  }
}

///|
/// ImageDataPixelFormat enum
pub(all) enum ImageDataPixelFormat {
  RgbaUnorm8
  RgbaFloat16
} derive(Eq, Show)

///|
/// Convert to string value
pub fn ImageDataPixelFormat::to_string(self : ImageDataPixelFormat) -> String {
  match self {
    ImageDataPixelFormat::RgbaUnorm8 => "rgba-unorm8"
    ImageDataPixelFormat::RgbaFloat16 => "rgba-float16"
  }
}

///|
/// Parse from string value
pub fn ImageDataPixelFormat::from_string(s : String) -> ImageDataPixelFormat? {
  match s {
    "rgba-unorm8" => Some(ImageDataPixelFormat::RgbaUnorm8)
    "rgba-float16" => Some(ImageDataPixelFormat::RgbaFloat16)
    _ => None
  }
}

///|
/// ImageOrientation enum
pub(all) enum ImageOrientation {
  FromImage
  FlipY
} derive(Eq, Show)

///|
/// Convert to string value
pub fn ImageOrientation::to_string(self : ImageOrientation) -> String {
  match self {
    ImageOrientation::FromImage => "from-image"
    ImageOrientation::FlipY => "flipY"
  }
}

///|
/// Parse from string value
pub fn ImageOrientation::from_string(s : String) -> ImageOrientation? {
  match s {
    "from-image" => Some(ImageOrientation::FromImage)
    "flipY" => Some(ImageOrientation::FlipY)
    _ => None
  }
}

///|
/// PremultiplyAlpha enum
pub(all) enum PremultiplyAlpha {
  None
  Premultiply
  Default
} derive(Eq, Show)

///|
/// Convert to string value
pub fn PremultiplyAlpha::to_string(self : PremultiplyAlpha) -> String {
  match self {
    PremultiplyAlpha::None => "none"
    PremultiplyAlpha::Premultiply => "premultiply"
    PremultiplyAlpha::Default => "default"
  }
}

///|
/// Parse from string value
pub fn PremultiplyAlpha::from_string(s : String) -> PremultiplyAlpha? {
  match s {
    "none" => Some(PremultiplyAlpha::None)
    "premultiply" => Some(PremultiplyAlpha::Premultiply)
    "default" => Some(PremultiplyAlpha::Default)
    _ => None
  }
}

///|
/// ColorSpaceConversion enum
pub(all) enum ColorSpaceConversion {
  None
  Default
} derive(Eq, Show)

///|
/// Convert to string value
pub fn ColorSpaceConversion::to_string(self : ColorSpaceConversion) -> String {
  match self {
    ColorSpaceConversion::None => "none"
    ColorSpaceConversion::Default => "default"
  }
}

///|
/// Parse from string value
pub fn ColorSpaceConversion::from_string(s : String) -> ColorSpaceConversion? {
  match s {
    "none" => Some(ColorSpaceConversion::None)
    "default" => Some(ColorSpaceConversion::Default)
    _ => None
  }
}

///|
/// ResizeQuality enum
pub(all) enum ResizeQuality {
  Pixelated
  Low
  Medium
  High
} derive(Eq, Show)

///|
/// Convert to string value
pub fn ResizeQuality::to_string(self : ResizeQuality) -> String {
  match self {
    ResizeQuality::Pixelated => "pixelated"
    ResizeQuality::Low => "low"
    ResizeQuality::Medium => "medium"
    ResizeQuality::High => "high"
  }
}

///|
/// Parse from string value
pub fn ResizeQuality::from_string(s : String) -> ResizeQuality? {
  match s {
    "pixelated" => Some(ResizeQuality::Pixelated)
    "low" => Some(ResizeQuality::Low)
    "medium" => Some(ResizeQuality::Medium)
    "high" => Some(ResizeQuality::High)
    _ => None
  }
}

///|
/// WorkerType enum
pub(all) enum WorkerType {
  Classic
  Module
} derive(Eq, Show)

///|
/// Convert to string value
pub fn WorkerType::to_string(self : WorkerType) -> String {
  match self {
    WorkerType::Classic => "classic"
    WorkerType::Module => "module"
  }
}

///|
/// Parse from string value
pub fn WorkerType::from_string(s : String) -> WorkerType? {
  match s {
    "classic" => Some(WorkerType::Classic)
    "module" => Some(WorkerType::Module)
    _ => None
  }
}

///|
/// BlobCallback callback interface
pub type BlobCallback

///|
/// Create BlobCallback from a MoonBit function
pub extern "js" fn BlobCallback::from_fn(
  handler : (Blob?) -> Unit,
) -> BlobCallback =
  #| (handler) => (a0) => handler(a0)

///|
/// CustomElementConstructor callback interface
pub type CustomElementConstructor

///|
/// FunctionStringCallback callback interface
pub type FunctionStringCallback

///|
/// Create FunctionStringCallback from a MoonBit function
pub extern "js" fn FunctionStringCallback::from_fn(
  handler : (String) -> Unit,
) -> FunctionStringCallback =
  #| (handler) => (a0) => handler(a0)

///|
/// NavigationInterceptHandler callback interface
pub type NavigationInterceptHandler

///|
/// NavigationPrecommitHandler callback interface
pub type NavigationPrecommitHandler

///|
/// Create NavigationPrecommitHandler from a MoonBit function
pub extern "js" fn NavigationPrecommitHandler::from_fn(
  handler : (NavigationPrecommitController) -> Promise[Unit],
) -> NavigationPrecommitHandler =
  #| (handler) => (a0) => handler(a0)

///|
/// EventHandlerNonNull callback interface
pub type EventHandlerNonNull

///|
/// Create EventHandlerNonNull from a MoonBit function
pub extern "js" fn EventHandlerNonNull::from_fn(
  handler : (Event) -> JsValue,
) -> EventHandlerNonNull =
  #| (handler) => (a0) => handler(a0)

///|
/// OnErrorEventHandlerNonNull callback interface
pub type OnErrorEventHandlerNonNull

///|
/// Create OnErrorEventHandlerNonNull from a MoonBit function
pub extern "js" fn OnErrorEventHandlerNonNull::from_fn(
  handler : (EventOrString, String, Int, Int, JsValue) -> JsValue,
) -> OnErrorEventHandlerNonNull =
  #| (handler) => (a0, a1, a2, a3, a4) => handler(a0, a1, a2, a3, a4)

///|
/// OnBeforeUnloadEventHandlerNonNull callback interface
pub type OnBeforeUnloadEventHandlerNonNull

///|
/// Create OnBeforeUnloadEventHandlerNonNull from a MoonBit function
pub extern "js" fn OnBeforeUnloadEventHandlerNonNull::from_fn(
  handler : (Event) -> String?,
) -> OnBeforeUnloadEventHandlerNonNull =
  #| (handler) => (a0) => handler(a0)

///|
/// FrameRequestCallback callback interface
pub type FrameRequestCallback

///|
/// Create FrameRequestCallback from a MoonBit function
pub extern "js" fn FrameRequestCallback::from_fn(
  handler : (DOMHighResTimeStamp) -> Unit,
) -> FrameRequestCallback =
  #| (handler) => (a0) => handler(a0)

///|
/// ShowPopoverOptions dictionary
pub(all) struct ShowPopoverOptions {
  source : HTMLElement?
}

///|
/// Create a new ShowPopoverOptions with default values
pub fn ShowPopoverOptions::default() -> ShowPopoverOptions {
  ShowPopoverOptions::{ source: None }
}

///|
extern "js" fn ShowPopoverOptions::to_js_ffi(
  self : ShowPopoverOptions,
) -> JsValue =
  #| (self) => ({
  #|   source: ((() => { const v = self.source; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn ShowPopoverOptions::to_js(self : ShowPopoverOptions) -> JsValue {
  ShowPopoverOptions::to_js_ffi(self)
}

///|
extern "js" fn ShowPopoverOptions::from_js_ffi(
  value : JsValue,
) -> ShowPopoverOptions =
  #| (v) => ({
  #|   source: (v.source === undefined ? { $tag: 0 } : { $tag: 1, _0: v.source })
  #| })

///|
/// Convert from JsValue
pub fn ShowPopoverOptions::from_js(value : JsValue) -> ShowPopoverOptions {
  ShowPopoverOptions::from_js_ffi(value)
}

///|
/// TogglePopoverOptions dictionary
pub(all) struct TogglePopoverOptions {
  source : HTMLElement?
  force : Bool?
}

///|
/// Create a new TogglePopoverOptions with default values
pub fn TogglePopoverOptions::default() -> TogglePopoverOptions {
  TogglePopoverOptions::{ source: None, force: None }
}

///|
extern "js" fn TogglePopoverOptions::to_js_ffi(
  self : TogglePopoverOptions,
) -> JsValue =
  #| (self) => ({
  #|   source: ((() => { const v = self.source; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   force: (self.force === -1 ? undefined : self.force)
  #| })

///|
/// Convert to JsValue
pub fn TogglePopoverOptions::to_js(self : TogglePopoverOptions) -> JsValue {
  TogglePopoverOptions::to_js_ffi(self)
}

///|
extern "js" fn TogglePopoverOptions::from_js_ffi(
  value : JsValue,
) -> TogglePopoverOptions =
  #| (v) => ({
  #|   source: (v.source === undefined ? { $tag: 0 } : { $tag: 1, _0: v.source }),
  #|   force: (v.force === undefined ? -1 : v.force)
  #| })

///|
/// Convert from JsValue
pub fn TogglePopoverOptions::from_js(value : JsValue) -> TogglePopoverOptions {
  TogglePopoverOptions::from_js_ffi(value)
}

///|
/// TrackEventInit dictionary
pub(all) struct TrackEventInit {
  track : VideoTrackOrAudioTrackOrTextTrack?
}

///|
/// Create a new TrackEventInit with default values
pub fn TrackEventInit::default() -> TrackEventInit {
  TrackEventInit::{ track: None }
}

///|
extern "js" fn TrackEventInit::to_js_ffi(self : TrackEventInit) -> JsValue =
  #| (self) => ({
  #|   track: ((() => { const v = self.track; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn TrackEventInit::to_js(self : TrackEventInit) -> JsValue {
  TrackEventInit::to_js_ffi(self)
}

///|
extern "js" fn TrackEventInit::from_js_ffi(value : JsValue) -> TrackEventInit =
  #| (v) => ({
  #|   track: (v.track === undefined ? { $tag: 0 } : { $tag: 1, _0: v.track })
  #| })

///|
/// Convert from JsValue
pub fn TrackEventInit::from_js(value : JsValue) -> TrackEventInit {
  TrackEventInit::from_js_ffi(value)
}

///|
/// SubmitEventInit dictionary
pub(all) struct SubmitEventInit {
  submitter : Nullable[HTMLElement]
}

///|
/// Create a new SubmitEventInit with default values
pub fn SubmitEventInit::default() -> SubmitEventInit {
  SubmitEventInit::{ submitter: Nullable::Undefined }
}

///|
extern "js" fn SubmitEventInit::to_js_ffi(self : SubmitEventInit) -> JsValue =
  #| (self) => ({
  #|   submitter: ((() => { const v = self.submitter; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn SubmitEventInit::to_js(self : SubmitEventInit) -> JsValue {
  SubmitEventInit::to_js_ffi(self)
}

///|
extern "js" fn SubmitEventInit::from_js_ffi(value : JsValue) -> SubmitEventInit =
  #| (v) => ({
  #|   submitter: (v.submitter === undefined ? { $tag: 0 } : v.submitter === null ? { $tag: 1 } : { $tag: 2, _0: v.submitter })
  #| })

///|
/// Convert from JsValue
pub fn SubmitEventInit::from_js(value : JsValue) -> SubmitEventInit {
  SubmitEventInit::from_js_ffi(value)
}

///|
/// FormDataEventInit dictionary
pub(all) struct FormDataEventInit {
  formData : FormData
}

///|
/// Create a new FormDataEventInit
pub fn FormDataEventInit::new(formData~ : FormData) -> FormDataEventInit {
  FormDataEventInit::{ formData, }
}

///|
extern "js" fn FormDataEventInit::to_js_ffi(
  self : FormDataEventInit,
) -> JsValue =
  #| (self) => ({
  #|   formData: self.formData
  #| })

///|
/// Convert to JsValue
pub fn FormDataEventInit::to_js(self : FormDataEventInit) -> JsValue {
  FormDataEventInit::to_js_ffi(self)
}

///|
extern "js" fn FormDataEventInit::from_js_ffi(
  value : JsValue,
) -> FormDataEventInit =
  #| (v) => ({
  #|   formData: v.formData
  #| })

///|
/// Convert from JsValue
pub fn FormDataEventInit::from_js(value : JsValue) -> FormDataEventInit {
  FormDataEventInit::from_js_ffi(value)
}

///|
/// AssignedNodesOptions dictionary
pub(all) struct AssignedNodesOptions {
  flatten : Bool?
}

///|
/// Create a new AssignedNodesOptions with default values
pub fn AssignedNodesOptions::default() -> AssignedNodesOptions {
  AssignedNodesOptions::{ flatten: None }
}

///|
extern "js" fn AssignedNodesOptions::to_js_ffi(
  self : AssignedNodesOptions,
) -> JsValue =
  #| (self) => ({
  #|   flatten: (self.flatten === -1 ? undefined : self.flatten)
  #| })

///|
/// Convert to JsValue
pub fn AssignedNodesOptions::to_js(self : AssignedNodesOptions) -> JsValue {
  AssignedNodesOptions::to_js_ffi(self)
}

///|
extern "js" fn AssignedNodesOptions::from_js_ffi(
  value : JsValue,
) -> AssignedNodesOptions =
  #| (v) => ({
  #|   flatten: (v.flatten === undefined ? -1 : v.flatten)
  #| })

///|
/// Convert from JsValue
pub fn AssignedNodesOptions::from_js(value : JsValue) -> AssignedNodesOptions {
  AssignedNodesOptions::from_js_ffi(value)
}

///|
/// CanvasRenderingContext2DSettings dictionary
pub(all) struct CanvasRenderingContext2DSettings {
  alpha : Bool?
  desynchronized : Bool?
  colorSpace : PredefinedColorSpace?
  colorType : CanvasColorType?
  willReadFrequently : Bool?
}

///|
/// Create a new CanvasRenderingContext2DSettings with default values
pub fn CanvasRenderingContext2DSettings::default() -> CanvasRenderingContext2DSettings {
  CanvasRenderingContext2DSettings::{
    alpha: None,
    desynchronized: None,
    colorSpace: None,
    colorType: None,
    willReadFrequently: None,
  }
}

///|
extern "js" fn CanvasRenderingContext2DSettings::to_js_ffi(
  self : CanvasRenderingContext2DSettings,
) -> JsValue =
  #| (self) => ({
  #|   alpha: (self.alpha === -1 ? undefined : self.alpha),
  #|   desynchronized: (self.desynchronized === -1 ? undefined : self.desynchronized),
  #|   colorSpace: ((() => { const v = self.colorSpace; if (v === undefined) return undefined; return ['srgb', 'srgb-linear', 'display-p3', 'display-p3-linear'][v]; })()),
  #|   colorType: ((() => { const v = self.colorType; if (v === undefined) return undefined; return ['unorm8', 'float16'][v]; })()),
  #|   willReadFrequently: (self.willReadFrequently === -1 ? undefined : self.willReadFrequently)
  #| })

///|
/// Convert to JsValue
pub fn CanvasRenderingContext2DSettings::to_js(
  self : CanvasRenderingContext2DSettings,
) -> JsValue {
  CanvasRenderingContext2DSettings::to_js_ffi(self)
}

///|
extern "js" fn CanvasRenderingContext2DSettings::from_js_ffi(
  value : JsValue,
) -> CanvasRenderingContext2DSettings =
  #| (v) => ({
  #|   alpha: (v.alpha === undefined ? -1 : v.alpha),
  #|   desynchronized: (v.desynchronized === undefined ? -1 : v.desynchronized),
  #|   colorSpace: (v.colorSpace === undefined ? undefined : ['srgb', 'srgb-linear', 'display-p3', 'display-p3-linear'].indexOf(v.colorSpace)),
  #|   colorType: (v.colorType === undefined ? undefined : ['unorm8', 'float16'].indexOf(v.colorType)),
  #|   willReadFrequently: (v.willReadFrequently === undefined ? -1 : v.willReadFrequently)
  #| })

///|
/// Convert from JsValue
pub fn CanvasRenderingContext2DSettings::from_js(
  value : JsValue,
) -> CanvasRenderingContext2DSettings {
  CanvasRenderingContext2DSettings::from_js_ffi(value)
}

///|
/// ImageBitmapRenderingContextSettings dictionary
pub(all) struct ImageBitmapRenderingContextSettings {
  alpha : Bool?
}

///|
/// Create a new ImageBitmapRenderingContextSettings with default values
pub fn ImageBitmapRenderingContextSettings::default() -> ImageBitmapRenderingContextSettings {
  ImageBitmapRenderingContextSettings::{ alpha: None }
}

///|
extern "js" fn ImageBitmapRenderingContextSettings::to_js_ffi(
  self : ImageBitmapRenderingContextSettings,
) -> JsValue =
  #| (self) => ({
  #|   alpha: (self.alpha === -1 ? undefined : self.alpha)
  #| })

///|
/// Convert to JsValue
pub fn ImageBitmapRenderingContextSettings::to_js(
  self : ImageBitmapRenderingContextSettings,
) -> JsValue {
  ImageBitmapRenderingContextSettings::to_js_ffi(self)
}

///|
extern "js" fn ImageBitmapRenderingContextSettings::from_js_ffi(
  value : JsValue,
) -> ImageBitmapRenderingContextSettings =
  #| (v) => ({
  #|   alpha: (v.alpha === undefined ? -1 : v.alpha)
  #| })

///|
/// Convert from JsValue
pub fn ImageBitmapRenderingContextSettings::from_js(
  value : JsValue,
) -> ImageBitmapRenderingContextSettings {
  ImageBitmapRenderingContextSettings::from_js_ffi(value)
}

///|
/// ImageEncodeOptions dictionary
pub(all) struct ImageEncodeOptions {
  type_ : String?
  quality : Double?
}

///|
/// Create a new ImageEncodeOptions with default values
pub fn ImageEncodeOptions::default() -> ImageEncodeOptions {
  ImageEncodeOptions::{ type_: None, quality: None }
}

///|
extern "js" fn ImageEncodeOptions::to_js_ffi(
  self : ImageEncodeOptions,
) -> JsValue =
  #| (self) => ({
  #|   type: self.type_,
  #|   quality: self.quality
  #| })

///|
/// Convert to JsValue
pub fn ImageEncodeOptions::to_js(self : ImageEncodeOptions) -> JsValue {
  ImageEncodeOptions::to_js_ffi(self)
}

///|
extern "js" fn ImageEncodeOptions::from_js_ffi(
  value : JsValue,
) -> ImageEncodeOptions =
  #| (v) => ({
  #|   type_: v.type,
  #|   quality: v.quality
  #| })

///|
/// Convert from JsValue
pub fn ImageEncodeOptions::from_js(value : JsValue) -> ImageEncodeOptions {
  ImageEncodeOptions::from_js_ffi(value)
}

///|
/// ElementDefinitionOptions dictionary
pub(all) struct ElementDefinitionOptions {
  extends : String?
}

///|
/// Create a new ElementDefinitionOptions with default values
pub fn ElementDefinitionOptions::default() -> ElementDefinitionOptions {
  ElementDefinitionOptions::{ extends: None }
}

///|
extern "js" fn ElementDefinitionOptions::to_js_ffi(
  self : ElementDefinitionOptions,
) -> JsValue =
  #| (self) => ({
  #|   extends: self.extends
  #| })

///|
/// Convert to JsValue
pub fn ElementDefinitionOptions::to_js(
  self : ElementDefinitionOptions,
) -> JsValue {
  ElementDefinitionOptions::to_js_ffi(self)
}

///|
extern "js" fn ElementDefinitionOptions::from_js_ffi(
  value : JsValue,
) -> ElementDefinitionOptions =
  #| (v) => ({
  #|   extends: v.extends
  #| })

///|
/// Convert from JsValue
pub fn ElementDefinitionOptions::from_js(
  value : JsValue,
) -> ElementDefinitionOptions {
  ElementDefinitionOptions::from_js_ffi(value)
}

///|
/// ValidityStateFlags dictionary
pub(all) struct ValidityStateFlags {
  valueMissing : Bool?
  typeMismatch : Bool?
  patternMismatch : Bool?
  tooLong : Bool?
  tooShort : Bool?
  rangeUnderflow : Bool?
  rangeOverflow : Bool?
  stepMismatch : Bool?
  badInput : Bool?
  customError : Bool?
}

///|
/// Create a new ValidityStateFlags with default values
pub fn ValidityStateFlags::default() -> ValidityStateFlags {
  ValidityStateFlags::{
    valueMissing: None,
    typeMismatch: None,
    patternMismatch: None,
    tooLong: None,
    tooShort: None,
    rangeUnderflow: None,
    rangeOverflow: None,
    stepMismatch: None,
    badInput: None,
    customError: None,
  }
}

///|
extern "js" fn ValidityStateFlags::to_js_ffi(
  self : ValidityStateFlags,
) -> JsValue =
  #| (self) => ({
  #|   valueMissing: (self.valueMissing === -1 ? undefined : self.valueMissing),
  #|   typeMismatch: (self.typeMismatch === -1 ? undefined : self.typeMismatch),
  #|   patternMismatch: (self.patternMismatch === -1 ? undefined : self.patternMismatch),
  #|   tooLong: (self.tooLong === -1 ? undefined : self.tooLong),
  #|   tooShort: (self.tooShort === -1 ? undefined : self.tooShort),
  #|   rangeUnderflow: (self.rangeUnderflow === -1 ? undefined : self.rangeUnderflow),
  #|   rangeOverflow: (self.rangeOverflow === -1 ? undefined : self.rangeOverflow),
  #|   stepMismatch: (self.stepMismatch === -1 ? undefined : self.stepMismatch),
  #|   badInput: (self.badInput === -1 ? undefined : self.badInput),
  #|   customError: (self.customError === -1 ? undefined : self.customError)
  #| })

///|
/// Convert to JsValue
pub fn ValidityStateFlags::to_js(self : ValidityStateFlags) -> JsValue {
  ValidityStateFlags::to_js_ffi(self)
}

///|
extern "js" fn ValidityStateFlags::from_js_ffi(
  value : JsValue,
) -> ValidityStateFlags =
  #| (v) => ({
  #|   valueMissing: (v.valueMissing === undefined ? -1 : v.valueMissing),
  #|   typeMismatch: (v.typeMismatch === undefined ? -1 : v.typeMismatch),
  #|   patternMismatch: (v.patternMismatch === undefined ? -1 : v.patternMismatch),
  #|   tooLong: (v.tooLong === undefined ? -1 : v.tooLong),
  #|   tooShort: (v.tooShort === undefined ? -1 : v.tooShort),
  #|   rangeUnderflow: (v.rangeUnderflow === undefined ? -1 : v.rangeUnderflow),
  #|   rangeOverflow: (v.rangeOverflow === undefined ? -1 : v.rangeOverflow),
  #|   stepMismatch: (v.stepMismatch === undefined ? -1 : v.stepMismatch),
  #|   badInput: (v.badInput === undefined ? -1 : v.badInput),
  #|   customError: (v.customError === undefined ? -1 : v.customError)
  #| })

///|
/// Convert from JsValue
pub fn ValidityStateFlags::from_js(value : JsValue) -> ValidityStateFlags {
  ValidityStateFlags::from_js_ffi(value)
}

///|
/// ToggleEventInit dictionary
pub(all) struct ToggleEventInit {
  oldState : String?
  newState : String?
  source : Nullable[Element]
}

///|
/// Create a new ToggleEventInit with default values
pub fn ToggleEventInit::default() -> ToggleEventInit {
  ToggleEventInit::{
    oldState: None,
    newState: None,
    source: Nullable::Undefined,
  }
}

///|
extern "js" fn ToggleEventInit::to_js_ffi(self : ToggleEventInit) -> JsValue =
  #| (self) => ({
  #|   oldState: self.oldState,
  #|   newState: self.newState,
  #|   source: ((() => { const v = self.source; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn ToggleEventInit::to_js(self : ToggleEventInit) -> JsValue {
  ToggleEventInit::to_js_ffi(self)
}

///|
extern "js" fn ToggleEventInit::from_js_ffi(value : JsValue) -> ToggleEventInit =
  #| (v) => ({
  #|   oldState: v.oldState,
  #|   newState: v.newState,
  #|   source: (v.source === undefined ? { $tag: 0 } : v.source === null ? { $tag: 1 } : { $tag: 2, _0: v.source })
  #| })

///|
/// Convert from JsValue
pub fn ToggleEventInit::from_js(value : JsValue) -> ToggleEventInit {
  ToggleEventInit::from_js_ffi(value)
}

///|
/// CommandEventInit dictionary
pub(all) struct CommandEventInit {
  source : Nullable[Element]
  command : String?
}

///|
/// Create a new CommandEventInit with default values
pub fn CommandEventInit::default() -> CommandEventInit {
  CommandEventInit::{ source: Nullable::Undefined, command: None }
}

///|
extern "js" fn CommandEventInit::to_js_ffi(self : CommandEventInit) -> JsValue =
  #| (self) => ({
  #|   source: ((() => { const v = self.source; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   command: self.command
  #| })

///|
/// Convert to JsValue
pub fn CommandEventInit::to_js(self : CommandEventInit) -> JsValue {
  CommandEventInit::to_js_ffi(self)
}

///|
extern "js" fn CommandEventInit::from_js_ffi(
  value : JsValue,
) -> CommandEventInit =
  #| (v) => ({
  #|   source: (v.source === undefined ? { $tag: 0 } : v.source === null ? { $tag: 1 } : { $tag: 2, _0: v.source }),
  #|   command: v.command
  #| })

///|
/// Convert from JsValue
pub fn CommandEventInit::from_js(value : JsValue) -> CommandEventInit {
  CommandEventInit::from_js_ffi(value)
}

///|
/// FocusOptions dictionary
pub(all) struct FocusOptions {
  preventScroll : Bool?
  focusVisible : Bool?
}

///|
/// Create a new FocusOptions with default values
pub fn FocusOptions::default() -> FocusOptions {
  FocusOptions::{ preventScroll: None, focusVisible: None }
}

///|
extern "js" fn FocusOptions::to_js_ffi(self : FocusOptions) -> JsValue =
  #| (self) => ({
  #|   preventScroll: (self.preventScroll === -1 ? undefined : self.preventScroll),
  #|   focusVisible: (self.focusVisible === -1 ? undefined : self.focusVisible)
  #| })

///|
/// Convert to JsValue
pub fn FocusOptions::to_js(self : FocusOptions) -> JsValue {
  FocusOptions::to_js_ffi(self)
}

///|
extern "js" fn FocusOptions::from_js_ffi(value : JsValue) -> FocusOptions =
  #| (v) => ({
  #|   preventScroll: (v.preventScroll === undefined ? -1 : v.preventScroll),
  #|   focusVisible: (v.focusVisible === undefined ? -1 : v.focusVisible)
  #| })

///|
/// Convert from JsValue
pub fn FocusOptions::from_js(value : JsValue) -> FocusOptions {
  FocusOptions::from_js_ffi(value)
}

///|
/// CloseWatcherOptions dictionary
pub(all) struct CloseWatcherOptions {
  signal : AbortSignal?
}

///|
/// Create a new CloseWatcherOptions with default values
pub fn CloseWatcherOptions::default() -> CloseWatcherOptions {
  CloseWatcherOptions::{ signal: None }
}

///|
extern "js" fn CloseWatcherOptions::to_js_ffi(
  self : CloseWatcherOptions,
) -> JsValue =
  #| (self) => ({
  #|   signal: ((() => { const v = self.signal; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn CloseWatcherOptions::to_js(self : CloseWatcherOptions) -> JsValue {
  CloseWatcherOptions::to_js_ffi(self)
}

///|
extern "js" fn CloseWatcherOptions::from_js_ffi(
  value : JsValue,
) -> CloseWatcherOptions =
  #| (v) => ({
  #|   signal: (v.signal === undefined ? { $tag: 0 } : { $tag: 1, _0: v.signal })
  #| })

///|
/// Convert from JsValue
pub fn CloseWatcherOptions::from_js(value : JsValue) -> CloseWatcherOptions {
  CloseWatcherOptions::from_js_ffi(value)
}

///|
/// DragEventInit dictionary
pub(all) struct DragEventInit {
  dataTransfer : Nullable[DataTransfer]
}

///|
/// Create a new DragEventInit with default values
pub fn DragEventInit::default() -> DragEventInit {
  DragEventInit::{ dataTransfer: Nullable::Undefined }
}

///|
extern "js" fn DragEventInit::to_js_ffi(self : DragEventInit) -> JsValue =
  #| (self) => ({
  #|   dataTransfer: ((() => { const v = self.dataTransfer; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn DragEventInit::to_js(self : DragEventInit) -> JsValue {
  DragEventInit::to_js_ffi(self)
}

///|
extern "js" fn DragEventInit::from_js_ffi(value : JsValue) -> DragEventInit =
  #| (v) => ({
  #|   dataTransfer: (v.dataTransfer === undefined ? { $tag: 0 } : v.dataTransfer === null ? { $tag: 1 } : { $tag: 2, _0: v.dataTransfer })
  #| })

///|
/// Convert from JsValue
pub fn DragEventInit::from_js(value : JsValue) -> DragEventInit {
  DragEventInit::from_js_ffi(value)
}

///|
/// WindowPostMessageOptions dictionary
pub(all) struct WindowPostMessageOptions {
  transfer : Array[JsValue]?
  targetOrigin : String?
}

///|
/// Create a new WindowPostMessageOptions with default values
pub fn WindowPostMessageOptions::default() -> WindowPostMessageOptions {
  WindowPostMessageOptions::{ transfer: None, targetOrigin: None }
}

///|
extern "js" fn WindowPostMessageOptions::to_js_ffi(
  self : WindowPostMessageOptions,
) -> JsValue =
  #| (self) => ({
  #|   transfer: ((() => { const v = self.transfer; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   targetOrigin: self.targetOrigin
  #| })

///|
/// Convert to JsValue
pub fn WindowPostMessageOptions::to_js(
  self : WindowPostMessageOptions,
) -> JsValue {
  WindowPostMessageOptions::to_js_ffi(self)
}

///|
extern "js" fn WindowPostMessageOptions::from_js_ffi(
  value : JsValue,
) -> WindowPostMessageOptions =
  #| (v) => ({
  #|   transfer: (v.transfer === undefined ? { $tag: 0 } : { $tag: 1, _0: v.transfer }),
  #|   targetOrigin: v.targetOrigin
  #| })

///|
/// Convert from JsValue
pub fn WindowPostMessageOptions::from_js(
  value : JsValue,
) -> WindowPostMessageOptions {
  WindowPostMessageOptions::from_js_ffi(value)
}

///|
/// NavigationUpdateCurrentEntryOptions dictionary
pub(all) struct NavigationUpdateCurrentEntryOptions {
  state : JsValue
}

///|
/// Create a new NavigationUpdateCurrentEntryOptions
pub fn NavigationUpdateCurrentEntryOptions::new(
  state~ : JsValue,
) -> NavigationUpdateCurrentEntryOptions {
  NavigationUpdateCurrentEntryOptions::{ state, }
}

///|
extern "js" fn NavigationUpdateCurrentEntryOptions::to_js_ffi(
  self : NavigationUpdateCurrentEntryOptions,
) -> JsValue =
  #| (self) => ({
  #|   state: self.state
  #| })

///|
/// Convert to JsValue
pub fn NavigationUpdateCurrentEntryOptions::to_js(
  self : NavigationUpdateCurrentEntryOptions,
) -> JsValue {
  NavigationUpdateCurrentEntryOptions::to_js_ffi(self)
}

///|
extern "js" fn NavigationUpdateCurrentEntryOptions::from_js_ffi(
  value : JsValue,
) -> NavigationUpdateCurrentEntryOptions =
  #| (v) => ({
  #|   state: v.state
  #| })

///|
/// Convert from JsValue
pub fn NavigationUpdateCurrentEntryOptions::from_js(
  value : JsValue,
) -> NavigationUpdateCurrentEntryOptions {
  NavigationUpdateCurrentEntryOptions::from_js_ffi(value)
}

///|
/// NavigationOptions dictionary
pub(all) struct NavigationOptions {
  info : JsValue?
}

///|
/// Create a new NavigationOptions with default values
pub fn NavigationOptions::default() -> NavigationOptions {
  NavigationOptions::{ info: None }
}

///|
extern "js" fn NavigationOptions::to_js_ffi(
  self : NavigationOptions,
) -> JsValue =
  #| (self) => ({
  #|   info: ((() => { const v = self.info; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn NavigationOptions::to_js(self : NavigationOptions) -> JsValue {
  NavigationOptions::to_js_ffi(self)
}

///|
extern "js" fn NavigationOptions::from_js_ffi(
  value : JsValue,
) -> NavigationOptions =
  #| (v) => ({
  #|   info: (v.info === undefined ? { $tag: 0 } : { $tag: 1, _0: v.info })
  #| })

///|
/// Convert from JsValue
pub fn NavigationOptions::from_js(value : JsValue) -> NavigationOptions {
  NavigationOptions::from_js_ffi(value)
}

///|
/// NavigationNavigateOptions dictionary
pub(all) struct NavigationNavigateOptions {
  info : JsValue?
  state : JsValue?
  history : NavigationHistoryBehavior?
}

///|
/// Create a new NavigationNavigateOptions with default values
pub fn NavigationNavigateOptions::default() -> NavigationNavigateOptions {
  NavigationNavigateOptions::{ info: None, state: None, history: None }
}

///|
extern "js" fn NavigationNavigateOptions::to_js_ffi(
  self : NavigationNavigateOptions,
) -> JsValue =
  #| (self) => ({
  #|   info: ((() => { const v = self.info; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   state: ((() => { const v = self.state; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   history: ((() => { const v = self.history; if (v === undefined) return undefined; return ['auto', 'push', 'replace'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn NavigationNavigateOptions::to_js(
  self : NavigationNavigateOptions,
) -> JsValue {
  NavigationNavigateOptions::to_js_ffi(self)
}

///|
extern "js" fn NavigationNavigateOptions::from_js_ffi(
  value : JsValue,
) -> NavigationNavigateOptions =
  #| (v) => ({
  #|   info: (v.info === undefined ? { $tag: 0 } : { $tag: 1, _0: v.info }),
  #|   state: (v.state === undefined ? { $tag: 0 } : { $tag: 1, _0: v.state }),
  #|   history: (v.history === undefined ? undefined : ['auto', 'push', 'replace'].indexOf(v.history))
  #| })

///|
/// Convert from JsValue
pub fn NavigationNavigateOptions::from_js(
  value : JsValue,
) -> NavigationNavigateOptions {
  NavigationNavigateOptions::from_js_ffi(value)
}

///|
/// NavigationReloadOptions dictionary
pub(all) struct NavigationReloadOptions {
  info : JsValue?
  state : JsValue?
}

///|
/// Create a new NavigationReloadOptions with default values
pub fn NavigationReloadOptions::default() -> NavigationReloadOptions {
  NavigationReloadOptions::{ info: None, state: None }
}

///|
extern "js" fn NavigationReloadOptions::to_js_ffi(
  self : NavigationReloadOptions,
) -> JsValue =
  #| (self) => ({
  #|   info: ((() => { const v = self.info; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   state: ((() => { const v = self.state; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn NavigationReloadOptions::to_js(
  self : NavigationReloadOptions,
) -> JsValue {
  NavigationReloadOptions::to_js_ffi(self)
}

///|
extern "js" fn NavigationReloadOptions::from_js_ffi(
  value : JsValue,
) -> NavigationReloadOptions =
  #| (v) => ({
  #|   info: (v.info === undefined ? { $tag: 0 } : { $tag: 1, _0: v.info }),
  #|   state: (v.state === undefined ? { $tag: 0 } : { $tag: 1, _0: v.state })
  #| })

///|
/// Convert from JsValue
pub fn NavigationReloadOptions::from_js(
  value : JsValue,
) -> NavigationReloadOptions {
  NavigationReloadOptions::from_js_ffi(value)
}

///|
/// NavigationResult dictionary
pub(all) struct NavigationResult {
  committed : Promise[NavigationHistoryEntry]?
  finished : Promise[NavigationHistoryEntry]?
}

///|
/// Create a new NavigationResult with default values
pub fn NavigationResult::default() -> NavigationResult {
  NavigationResult::{ committed: None, finished: None }
}

///|
extern "js" fn NavigationResult::to_js_ffi(self : NavigationResult) -> JsValue =
  #| (self) => ({
  #|   committed: ((() => { const v = self.committed; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   finished: ((() => { const v = self.finished; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn NavigationResult::to_js(self : NavigationResult) -> JsValue {
  NavigationResult::to_js_ffi(self)
}

///|
extern "js" fn NavigationResult::from_js_ffi(
  value : JsValue,
) -> NavigationResult =
  #| (v) => ({
  #|   committed: (v.committed === undefined ? { $tag: 0 } : { $tag: 1, _0: v.committed }),
  #|   finished: (v.finished === undefined ? { $tag: 0 } : { $tag: 1, _0: v.finished })
  #| })

///|
/// Convert from JsValue
pub fn NavigationResult::from_js(value : JsValue) -> NavigationResult {
  NavigationResult::from_js_ffi(value)
}

///|
/// NavigateEventInit dictionary
pub(all) struct NavigateEventInit {
  navigationType : NavigationType?
  destination : NavigationDestination
  canIntercept : Bool?
  userInitiated : Bool?
  hashChange : Bool?
  signal : AbortSignal
  formData : Nullable[FormData]
  downloadRequest : Nullable[String]
  info : JsValue?
  hasUAVisualTransition : Bool?
  sourceElement : Nullable[Element]
}

///|
/// Create a new NavigateEventInit
pub fn NavigateEventInit::new(
  destination~ : NavigationDestination,
  signal~ : AbortSignal,
) -> NavigateEventInit {
  NavigateEventInit::{
    navigationType: None,
    destination,
    canIntercept: None,
    userInitiated: None,
    hashChange: None,
    signal,
    formData: Nullable::Undefined,
    downloadRequest: Nullable::Undefined,
    info: None,
    hasUAVisualTransition: None,
    sourceElement: Nullable::Undefined,
  }
}

///|
extern "js" fn NavigateEventInit::to_js_ffi(
  self : NavigateEventInit,
) -> JsValue =
  #| (self) => ({
  #|   navigationType: ((() => { const v = self.navigationType; if (v === undefined) return undefined; return ['push', 'replace', 'reload', 'traverse'][v]; })()),
  #|   destination: self.destination,
  #|   canIntercept: (self.canIntercept === -1 ? undefined : self.canIntercept),
  #|   userInitiated: (self.userInitiated === -1 ? undefined : self.userInitiated),
  #|   hashChange: (self.hashChange === -1 ? undefined : self.hashChange),
  #|   signal: self.signal,
  #|   formData: ((() => { const v = self.formData; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   downloadRequest: ((() => { const v = self.downloadRequest; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   info: ((() => { const v = self.info; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   hasUAVisualTransition: (self.hasUAVisualTransition === -1 ? undefined : self.hasUAVisualTransition),
  #|   sourceElement: ((() => { const v = self.sourceElement; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn NavigateEventInit::to_js(self : NavigateEventInit) -> JsValue {
  NavigateEventInit::to_js_ffi(self)
}

///|
extern "js" fn NavigateEventInit::from_js_ffi(
  value : JsValue,
) -> NavigateEventInit =
  #| (v) => ({
  #|   navigationType: (v.navigationType === undefined ? undefined : ['push', 'replace', 'reload', 'traverse'].indexOf(v.navigationType)),
  #|   destination: v.destination,
  #|   canIntercept: (v.canIntercept === undefined ? -1 : v.canIntercept),
  #|   userInitiated: (v.userInitiated === undefined ? -1 : v.userInitiated),
  #|   hashChange: (v.hashChange === undefined ? -1 : v.hashChange),
  #|   signal: v.signal,
  #|   formData: (v.formData === undefined ? { $tag: 0 } : v.formData === null ? { $tag: 1 } : { $tag: 2, _0: v.formData }),
  #|   downloadRequest: (v.downloadRequest === undefined ? { $tag: 0 } : v.downloadRequest === null ? { $tag: 1 } : { $tag: 2, _0: v.downloadRequest }),
  #|   info: (v.info === undefined ? { $tag: 0 } : { $tag: 1, _0: v.info }),
  #|   hasUAVisualTransition: (v.hasUAVisualTransition === undefined ? -1 : v.hasUAVisualTransition),
  #|   sourceElement: (v.sourceElement === undefined ? { $tag: 0 } : v.sourceElement === null ? { $tag: 1 } : { $tag: 2, _0: v.sourceElement })
  #| })

///|
/// Convert from JsValue
pub fn NavigateEventInit::from_js(value : JsValue) -> NavigateEventInit {
  NavigateEventInit::from_js_ffi(value)
}

///|
/// NavigationInterceptOptions dictionary
pub(all) struct NavigationInterceptOptions {
  precommitHandler : NavigationPrecommitHandler?
  handler : NavigationInterceptHandler?
  focusReset : NavigationFocusReset?
  scroll : NavigationScrollBehavior?
}

///|
/// Create a new NavigationInterceptOptions with default values
pub fn NavigationInterceptOptions::default() -> NavigationInterceptOptions {
  NavigationInterceptOptions::{
    precommitHandler: None,
    handler: None,
    focusReset: None,
    scroll: None,
  }
}

///|
extern "js" fn NavigationInterceptOptions::to_js_ffi(
  self : NavigationInterceptOptions,
) -> JsValue =
  #| (self) => ({
  #|   precommitHandler: ((() => { const v = self.precommitHandler; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   handler: ((() => { const v = self.handler; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   focusReset: ((() => { const v = self.focusReset; if (v === undefined) return undefined; return ['after-transition', 'manual'][v]; })()),
  #|   scroll: ((() => { const v = self.scroll; if (v === undefined) return undefined; return ['after-transition', 'manual'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn NavigationInterceptOptions::to_js(
  self : NavigationInterceptOptions,
) -> JsValue {
  NavigationInterceptOptions::to_js_ffi(self)
}

///|
extern "js" fn NavigationInterceptOptions::from_js_ffi(
  value : JsValue,
) -> NavigationInterceptOptions =
  #| (v) => ({
  #|   precommitHandler: (v.precommitHandler === undefined ? { $tag: 0 } : { $tag: 1, _0: v.precommitHandler }),
  #|   handler: (v.handler === undefined ? { $tag: 0 } : { $tag: 1, _0: v.handler }),
  #|   focusReset: (v.focusReset === undefined ? undefined : ['after-transition', 'manual'].indexOf(v.focusReset)),
  #|   scroll: (v.scroll === undefined ? undefined : ['after-transition', 'manual'].indexOf(v.scroll))
  #| })

///|
/// Convert from JsValue
pub fn NavigationInterceptOptions::from_js(
  value : JsValue,
) -> NavigationInterceptOptions {
  NavigationInterceptOptions::from_js_ffi(value)
}

///|
/// NavigationCurrentEntryChangeEventInit dictionary
pub(all) struct NavigationCurrentEntryChangeEventInit {
  navigationType : Nullable[NavigationType]
  from : NavigationHistoryEntry
}

///|
/// Create a new NavigationCurrentEntryChangeEventInit
pub fn NavigationCurrentEntryChangeEventInit::new(
  from~ : NavigationHistoryEntry,
) -> NavigationCurrentEntryChangeEventInit {
  NavigationCurrentEntryChangeEventInit::{
    navigationType: Nullable::Undefined,
    from,
  }
}

///|
extern "js" fn NavigationCurrentEntryChangeEventInit::to_js_ffi(
  self : NavigationCurrentEntryChangeEventInit,
) -> JsValue =
  #| (self) => ({
  #|   navigationType: ((() => { const v = self.navigationType; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return ['push', 'replace', 'reload', 'traverse'][v._0]; })()),
  #|   from: self.from
  #| })

///|
/// Convert to JsValue
pub fn NavigationCurrentEntryChangeEventInit::to_js(
  self : NavigationCurrentEntryChangeEventInit,
) -> JsValue {
  NavigationCurrentEntryChangeEventInit::to_js_ffi(self)
}

///|
extern "js" fn NavigationCurrentEntryChangeEventInit::from_js_ffi(
  value : JsValue,
) -> NavigationCurrentEntryChangeEventInit =
  #| (v) => ({
  #|   navigationType: (v.navigationType === undefined ? { $tag: 0 } : v.navigationType === null ? { $tag: 1 } : { $tag: 2, _0: ['push', 'replace', 'reload', 'traverse'].indexOf(v.navigationType) }),
  #|   from: v.from
  #| })

///|
/// Convert from JsValue
pub fn NavigationCurrentEntryChangeEventInit::from_js(
  value : JsValue,
) -> NavigationCurrentEntryChangeEventInit {
  NavigationCurrentEntryChangeEventInit::from_js_ffi(value)
}

///|
/// PopStateEventInit dictionary
pub(all) struct PopStateEventInit {
  state : JsValue?
  hasUAVisualTransition : Bool?
}

///|
/// Create a new PopStateEventInit with default values
pub fn PopStateEventInit::default() -> PopStateEventInit {
  PopStateEventInit::{ state: None, hasUAVisualTransition: None }
}

///|
extern "js" fn PopStateEventInit::to_js_ffi(
  self : PopStateEventInit,
) -> JsValue =
  #| (self) => ({
  #|   state: ((() => { const v = self.state; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   hasUAVisualTransition: (self.hasUAVisualTransition === -1 ? undefined : self.hasUAVisualTransition)
  #| })

///|
/// Convert to JsValue
pub fn PopStateEventInit::to_js(self : PopStateEventInit) -> JsValue {
  PopStateEventInit::to_js_ffi(self)
}

///|
extern "js" fn PopStateEventInit::from_js_ffi(
  value : JsValue,
) -> PopStateEventInit =
  #| (v) => ({
  #|   state: (v.state === undefined ? { $tag: 0 } : { $tag: 1, _0: v.state }),
  #|   hasUAVisualTransition: (v.hasUAVisualTransition === undefined ? -1 : v.hasUAVisualTransition)
  #| })

///|
/// Convert from JsValue
pub fn PopStateEventInit::from_js(value : JsValue) -> PopStateEventInit {
  PopStateEventInit::from_js_ffi(value)
}

///|
/// HashChangeEventInit dictionary
pub(all) struct HashChangeEventInit {
  oldURL : String?
  newURL : String?
}

///|
/// Create a new HashChangeEventInit with default values
pub fn HashChangeEventInit::default() -> HashChangeEventInit {
  HashChangeEventInit::{ oldURL: None, newURL: None }
}

///|
extern "js" fn HashChangeEventInit::to_js_ffi(
  self : HashChangeEventInit,
) -> JsValue =
  #| (self) => ({
  #|   oldURL: self.oldURL,
  #|   newURL: self.newURL
  #| })

///|
/// Convert to JsValue
pub fn HashChangeEventInit::to_js(self : HashChangeEventInit) -> JsValue {
  HashChangeEventInit::to_js_ffi(self)
}

///|
extern "js" fn HashChangeEventInit::from_js_ffi(
  value : JsValue,
) -> HashChangeEventInit =
  #| (v) => ({
  #|   oldURL: v.oldURL,
  #|   newURL: v.newURL
  #| })

///|
/// Convert from JsValue
pub fn HashChangeEventInit::from_js(value : JsValue) -> HashChangeEventInit {
  HashChangeEventInit::from_js_ffi(value)
}

///|
/// PageSwapEventInit dictionary
pub(all) struct PageSwapEventInit {
  activation : Nullable[NavigationActivation]
  viewTransition : Nullable[ViewTransition]
}

///|
/// Create a new PageSwapEventInit with default values
pub fn PageSwapEventInit::default() -> PageSwapEventInit {
  PageSwapEventInit::{
    activation: Nullable::Undefined,
    viewTransition: Nullable::Undefined,
  }
}

///|
extern "js" fn PageSwapEventInit::to_js_ffi(
  self : PageSwapEventInit,
) -> JsValue =
  #| (self) => ({
  #|   activation: ((() => { const v = self.activation; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   viewTransition: ((() => { const v = self.viewTransition; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn PageSwapEventInit::to_js(self : PageSwapEventInit) -> JsValue {
  PageSwapEventInit::to_js_ffi(self)
}

///|
extern "js" fn PageSwapEventInit::from_js_ffi(
  value : JsValue,
) -> PageSwapEventInit =
  #| (v) => ({
  #|   activation: (v.activation === undefined ? { $tag: 0 } : v.activation === null ? { $tag: 1 } : { $tag: 2, _0: v.activation }),
  #|   viewTransition: (v.viewTransition === undefined ? { $tag: 0 } : v.viewTransition === null ? { $tag: 1 } : { $tag: 2, _0: v.viewTransition })
  #| })

///|
/// Convert from JsValue
pub fn PageSwapEventInit::from_js(value : JsValue) -> PageSwapEventInit {
  PageSwapEventInit::from_js_ffi(value)
}

///|
/// PageRevealEventInit dictionary
pub(all) struct PageRevealEventInit {
  viewTransition : Nullable[ViewTransition]
}

///|
/// Create a new PageRevealEventInit with default values
pub fn PageRevealEventInit::default() -> PageRevealEventInit {
  PageRevealEventInit::{ viewTransition: Nullable::Undefined }
}

///|
extern "js" fn PageRevealEventInit::to_js_ffi(
  self : PageRevealEventInit,
) -> JsValue =
  #| (self) => ({
  #|   viewTransition: ((() => { const v = self.viewTransition; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn PageRevealEventInit::to_js(self : PageRevealEventInit) -> JsValue {
  PageRevealEventInit::to_js_ffi(self)
}

///|
extern "js" fn PageRevealEventInit::from_js_ffi(
  value : JsValue,
) -> PageRevealEventInit =
  #| (v) => ({
  #|   viewTransition: (v.viewTransition === undefined ? { $tag: 0 } : v.viewTransition === null ? { $tag: 1 } : { $tag: 2, _0: v.viewTransition })
  #| })

///|
/// Convert from JsValue
pub fn PageRevealEventInit::from_js(value : JsValue) -> PageRevealEventInit {
  PageRevealEventInit::from_js_ffi(value)
}

///|
/// PageTransitionEventInit dictionary
pub(all) struct PageTransitionEventInit {
  persisted : Bool?
}

///|
/// Create a new PageTransitionEventInit with default values
pub fn PageTransitionEventInit::default() -> PageTransitionEventInit {
  PageTransitionEventInit::{ persisted: None }
}

///|
extern "js" fn PageTransitionEventInit::to_js_ffi(
  self : PageTransitionEventInit,
) -> JsValue =
  #| (self) => ({
  #|   persisted: (self.persisted === -1 ? undefined : self.persisted)
  #| })

///|
/// Convert to JsValue
pub fn PageTransitionEventInit::to_js(
  self : PageTransitionEventInit,
) -> JsValue {
  PageTransitionEventInit::to_js_ffi(self)
}

///|
extern "js" fn PageTransitionEventInit::from_js_ffi(
  value : JsValue,
) -> PageTransitionEventInit =
  #| (v) => ({
  #|   persisted: (v.persisted === undefined ? -1 : v.persisted)
  #| })

///|
/// Convert from JsValue
pub fn PageTransitionEventInit::from_js(
  value : JsValue,
) -> PageTransitionEventInit {
  PageTransitionEventInit::from_js_ffi(value)
}

///|
/// ErrorEventInit dictionary
pub(all) struct ErrorEventInit {
  message : String?
  filename : String?
  lineno : Int?
  colno : Int?
  error : JsValue?
}

///|
/// Create a new ErrorEventInit with default values
pub fn ErrorEventInit::default() -> ErrorEventInit {
  ErrorEventInit::{
    message: None,
    filename: None,
    lineno: None,
    colno: None,
    error: None,
  }
}

///|
extern "js" fn ErrorEventInit::to_js_ffi(self : ErrorEventInit) -> JsValue =
  #| (self) => ({
  #|   message: self.message,
  #|   filename: self.filename,
  #|   lineno: self.lineno,
  #|   colno: self.colno,
  #|   error: ((() => { const v = self.error; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn ErrorEventInit::to_js(self : ErrorEventInit) -> JsValue {
  ErrorEventInit::to_js_ffi(self)
}

///|
extern "js" fn ErrorEventInit::from_js_ffi(value : JsValue) -> ErrorEventInit =
  #| (v) => ({
  #|   message: v.message,
  #|   filename: v.filename,
  #|   lineno: v.lineno,
  #|   colno: v.colno,
  #|   error: (v.error === undefined ? { $tag: 0 } : { $tag: 1, _0: v.error })
  #| })

///|
/// Convert from JsValue
pub fn ErrorEventInit::from_js(value : JsValue) -> ErrorEventInit {
  ErrorEventInit::from_js_ffi(value)
}

///|
/// PromiseRejectionEventInit dictionary
pub(all) struct PromiseRejectionEventInit {
  promise : JsValue
  reason : JsValue?
}

///|
/// Create a new PromiseRejectionEventInit
pub fn PromiseRejectionEventInit::new(
  promise~ : JsValue,
) -> PromiseRejectionEventInit {
  PromiseRejectionEventInit::{ promise, reason: None }
}

///|
extern "js" fn PromiseRejectionEventInit::to_js_ffi(
  self : PromiseRejectionEventInit,
) -> JsValue =
  #| (self) => ({
  #|   promise: self.promise,
  #|   reason: ((() => { const v = self.reason; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn PromiseRejectionEventInit::to_js(
  self : PromiseRejectionEventInit,
) -> JsValue {
  PromiseRejectionEventInit::to_js_ffi(self)
}

///|
extern "js" fn PromiseRejectionEventInit::from_js_ffi(
  value : JsValue,
) -> PromiseRejectionEventInit =
  #| (v) => ({
  #|   promise: v.promise,
  #|   reason: (v.reason === undefined ? { $tag: 0 } : { $tag: 1, _0: v.reason })
  #| })

///|
/// Convert from JsValue
pub fn PromiseRejectionEventInit::from_js(
  value : JsValue,
) -> PromiseRejectionEventInit {
  PromiseRejectionEventInit::from_js_ffi(value)
}

///|
/// GetHTMLOptions dictionary
pub(all) struct GetHTMLOptions {
  serializableShadowRoots : Bool?
  shadowRoots : Array[ShadowRoot]?
}

///|
/// Create a new GetHTMLOptions with default values
pub fn GetHTMLOptions::default() -> GetHTMLOptions {
  GetHTMLOptions::{ serializableShadowRoots: None, shadowRoots: None }
}

///|
extern "js" fn GetHTMLOptions::to_js_ffi(self : GetHTMLOptions) -> JsValue =
  #| (self) => ({
  #|   serializableShadowRoots: (self.serializableShadowRoots === -1 ? undefined : self.serializableShadowRoots),
  #|   shadowRoots: ((() => { const v = self.shadowRoots; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn GetHTMLOptions::to_js(self : GetHTMLOptions) -> JsValue {
  GetHTMLOptions::to_js_ffi(self)
}

///|
extern "js" fn GetHTMLOptions::from_js_ffi(value : JsValue) -> GetHTMLOptions =
  #| (v) => ({
  #|   serializableShadowRoots: (v.serializableShadowRoots === undefined ? -1 : v.serializableShadowRoots),
  #|   shadowRoots: (v.shadowRoots === undefined ? { $tag: 0 } : { $tag: 1, _0: v.shadowRoots })
  #| })

///|
/// Convert from JsValue
pub fn GetHTMLOptions::from_js(value : JsValue) -> GetHTMLOptions {
  GetHTMLOptions::from_js_ffi(value)
}

///|
/// ImageDataSettings dictionary
pub(all) struct ImageDataSettings {
  colorSpace : PredefinedColorSpace?
  pixelFormat : ImageDataPixelFormat?
}

///|
/// Create a new ImageDataSettings with default values
pub fn ImageDataSettings::default() -> ImageDataSettings {
  ImageDataSettings::{ colorSpace: None, pixelFormat: None }
}

///|
extern "js" fn ImageDataSettings::to_js_ffi(
  self : ImageDataSettings,
) -> JsValue =
  #| (self) => ({
  #|   colorSpace: ((() => { const v = self.colorSpace; if (v === undefined) return undefined; return ['srgb', 'srgb-linear', 'display-p3', 'display-p3-linear'][v]; })()),
  #|   pixelFormat: ((() => { const v = self.pixelFormat; if (v === undefined) return undefined; return ['rgba-unorm8', 'rgba-float16'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn ImageDataSettings::to_js(self : ImageDataSettings) -> JsValue {
  ImageDataSettings::to_js_ffi(self)
}

///|
extern "js" fn ImageDataSettings::from_js_ffi(
  value : JsValue,
) -> ImageDataSettings =
  #| (v) => ({
  #|   colorSpace: (v.colorSpace === undefined ? undefined : ['srgb', 'srgb-linear', 'display-p3', 'display-p3-linear'].indexOf(v.colorSpace)),
  #|   pixelFormat: (v.pixelFormat === undefined ? undefined : ['rgba-unorm8', 'rgba-float16'].indexOf(v.pixelFormat))
  #| })

///|
/// Convert from JsValue
pub fn ImageDataSettings::from_js(value : JsValue) -> ImageDataSettings {
  ImageDataSettings::from_js_ffi(value)
}

///|
/// ImageBitmapOptions dictionary
pub(all) struct ImageBitmapOptions {
  imageOrientation : ImageOrientation?
  premultiplyAlpha : PremultiplyAlpha?
  colorSpaceConversion : ColorSpaceConversion?
  resizeWidth : Int?
  resizeHeight : Int?
  resizeQuality : ResizeQuality?
}

///|
/// Create a new ImageBitmapOptions with default values
pub fn ImageBitmapOptions::default() -> ImageBitmapOptions {
  ImageBitmapOptions::{
    imageOrientation: None,
    premultiplyAlpha: None,
    colorSpaceConversion: None,
    resizeWidth: None,
    resizeHeight: None,
    resizeQuality: None,
  }
}

///|
extern "js" fn ImageBitmapOptions::to_js_ffi(
  self : ImageBitmapOptions,
) -> JsValue =
  #| (self) => ({
  #|   imageOrientation: ((() => { const v = self.imageOrientation; if (v === undefined) return undefined; return ['from-image', 'flipY'][v]; })()),
  #|   premultiplyAlpha: ((() => { const v = self.premultiplyAlpha; if (v === undefined) return undefined; return ['none', 'premultiply', 'default'][v]; })()),
  #|   colorSpaceConversion: ((() => { const v = self.colorSpaceConversion; if (v === undefined) return undefined; return ['none', 'default'][v]; })()),
  #|   resizeWidth: self.resizeWidth,
  #|   resizeHeight: self.resizeHeight,
  #|   resizeQuality: ((() => { const v = self.resizeQuality; if (v === undefined) return undefined; return ['pixelated', 'low', 'medium', 'high'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn ImageBitmapOptions::to_js(self : ImageBitmapOptions) -> JsValue {
  ImageBitmapOptions::to_js_ffi(self)
}

///|
extern "js" fn ImageBitmapOptions::from_js_ffi(
  value : JsValue,
) -> ImageBitmapOptions =
  #| (v) => ({
  #|   imageOrientation: (v.imageOrientation === undefined ? undefined : ['from-image', 'flipY'].indexOf(v.imageOrientation)),
  #|   premultiplyAlpha: (v.premultiplyAlpha === undefined ? undefined : ['none', 'premultiply', 'default'].indexOf(v.premultiplyAlpha)),
  #|   colorSpaceConversion: (v.colorSpaceConversion === undefined ? undefined : ['none', 'default'].indexOf(v.colorSpaceConversion)),
  #|   resizeWidth: v.resizeWidth,
  #|   resizeHeight: v.resizeHeight,
  #|   resizeQuality: (v.resizeQuality === undefined ? undefined : ['pixelated', 'low', 'medium', 'high'].indexOf(v.resizeQuality))
  #| })

///|
/// Convert from JsValue
pub fn ImageBitmapOptions::from_js(value : JsValue) -> ImageBitmapOptions {
  ImageBitmapOptions::from_js_ffi(value)
}

///|
/// MessageEventInit dictionary
pub(all) struct MessageEventInit {
  data : JsValue?
  origin : String?
  lastEventId : String?
  source : Nullable[MessageEventSource]
  ports : Array[MessagePort]?
}

///|
/// Create a new MessageEventInit with default values
pub fn MessageEventInit::default() -> MessageEventInit {
  MessageEventInit::{
    data: None,
    origin: None,
    lastEventId: None,
    source: Nullable::Undefined,
    ports: None,
  }
}

///|
extern "js" fn MessageEventInit::to_js_ffi(self : MessageEventInit) -> JsValue =
  #| (self) => ({
  #|   data: ((() => { const v = self.data; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   origin: self.origin,
  #|   lastEventId: self.lastEventId,
  #|   source: ((() => { const v = self.source; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0.to_js_value(); })()),
  #|   ports: ((() => { const v = self.ports; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MessageEventInit::to_js(self : MessageEventInit) -> JsValue {
  MessageEventInit::to_js_ffi(self)
}

///|
extern "js" fn MessageEventInit::from_js_ffi(
  value : JsValue,
) -> MessageEventInit =
  #| (v) => ({
  #|   data: (v.data === undefined ? { $tag: 0 } : { $tag: 1, _0: v.data }),
  #|   origin: v.origin,
  #|   lastEventId: v.lastEventId,
  #|   source: (v.source === undefined ? { $tag: 0 } : v.source === null ? { $tag: 1 } : { $tag: 2, _0: v.source }),
  #|   ports: (v.ports === undefined ? { $tag: 0 } : { $tag: 1, _0: v.ports })
  #| })

///|
/// Convert from JsValue
pub fn MessageEventInit::from_js(value : JsValue) -> MessageEventInit {
  MessageEventInit::from_js_ffi(value)
}

///|
/// EventSourceInit dictionary
pub(all) struct EventSourceInit {
  withCredentials : Bool?
}

///|
/// Create a new EventSourceInit with default values
pub fn EventSourceInit::default() -> EventSourceInit {
  EventSourceInit::{ withCredentials: None }
}

///|
extern "js" fn EventSourceInit::to_js_ffi(self : EventSourceInit) -> JsValue =
  #| (self) => ({
  #|   withCredentials: (self.withCredentials === -1 ? undefined : self.withCredentials)
  #| })

///|
/// Convert to JsValue
pub fn EventSourceInit::to_js(self : EventSourceInit) -> JsValue {
  EventSourceInit::to_js_ffi(self)
}

///|
extern "js" fn EventSourceInit::from_js_ffi(value : JsValue) -> EventSourceInit =
  #| (v) => ({
  #|   withCredentials: (v.withCredentials === undefined ? -1 : v.withCredentials)
  #| })

///|
/// Convert from JsValue
pub fn EventSourceInit::from_js(value : JsValue) -> EventSourceInit {
  EventSourceInit::from_js_ffi(value)
}

///|
/// StructuredSerializeOptions dictionary
pub(all) struct StructuredSerializeOptions {
  transfer : Array[JsValue]?
}

///|
/// Create a new StructuredSerializeOptions with default values
pub fn StructuredSerializeOptions::default() -> StructuredSerializeOptions {
  StructuredSerializeOptions::{ transfer: None }
}

///|
extern "js" fn StructuredSerializeOptions::to_js_ffi(
  self : StructuredSerializeOptions,
) -> JsValue =
  #| (self) => ({
  #|   transfer: ((() => { const v = self.transfer; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn StructuredSerializeOptions::to_js(
  self : StructuredSerializeOptions,
) -> JsValue {
  StructuredSerializeOptions::to_js_ffi(self)
}

///|
extern "js" fn StructuredSerializeOptions::from_js_ffi(
  value : JsValue,
) -> StructuredSerializeOptions =
  #| (v) => ({
  #|   transfer: (v.transfer === undefined ? { $tag: 0 } : { $tag: 1, _0: v.transfer })
  #| })

///|
/// Convert from JsValue
pub fn StructuredSerializeOptions::from_js(
  value : JsValue,
) -> StructuredSerializeOptions {
  StructuredSerializeOptions::from_js_ffi(value)
}

///|
/// WorkerOptions dictionary
pub(all) struct WorkerOptions {
  name : String?
  type_ : WorkerType?
  credentials : RequestCredentials?
}

///|
/// Create a new WorkerOptions with default values
pub fn WorkerOptions::default() -> WorkerOptions {
  WorkerOptions::{ name: None, type_: None, credentials: None }
}

///|
extern "js" fn WorkerOptions::to_js_ffi(self : WorkerOptions) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   type: ((() => { const v = self.type_; if (v === undefined) return undefined; return ['classic', 'module'][v]; })()),
  #|   credentials: ((() => { const v = self.credentials; if (v === undefined) return undefined; return ['omit', 'same-origin', 'include'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn WorkerOptions::to_js(self : WorkerOptions) -> JsValue {
  WorkerOptions::to_js_ffi(self)
}

///|
extern "js" fn WorkerOptions::from_js_ffi(value : JsValue) -> WorkerOptions =
  #| (v) => ({
  #|   name: v.name,
  #|   type_: (v.type === undefined ? undefined : ['classic', 'module'].indexOf(v.type)),
  #|   credentials: (v.credentials === undefined ? undefined : ['omit', 'same-origin', 'include'].indexOf(v.credentials))
  #| })

///|
/// Convert from JsValue
pub fn WorkerOptions::from_js(value : JsValue) -> WorkerOptions {
  WorkerOptions::from_js_ffi(value)
}

///|
/// WorkletOptions dictionary
pub(all) struct WorkletOptions {
  credentials : RequestCredentials?
}

///|
/// Create a new WorkletOptions with default values
pub fn WorkletOptions::default() -> WorkletOptions {
  WorkletOptions::{ credentials: None }
}

///|
extern "js" fn WorkletOptions::to_js_ffi(self : WorkletOptions) -> JsValue =
  #| (self) => ({
  #|   credentials: ((() => { const v = self.credentials; if (v === undefined) return undefined; return ['omit', 'same-origin', 'include'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn WorkletOptions::to_js(self : WorkletOptions) -> JsValue {
  WorkletOptions::to_js_ffi(self)
}

///|
extern "js" fn WorkletOptions::from_js_ffi(value : JsValue) -> WorkletOptions =
  #| (v) => ({
  #|   credentials: (v.credentials === undefined ? undefined : ['omit', 'same-origin', 'include'].indexOf(v.credentials))
  #| })

///|
/// Convert from JsValue
pub fn WorkletOptions::from_js(value : JsValue) -> WorkletOptions {
  WorkletOptions::from_js_ffi(value)
}

///|
/// StorageEventInit dictionary
pub(all) struct StorageEventInit {
  key : Nullable[String]
  oldValue : Nullable[String]
  newValue : Nullable[String]
  url : String?
  storageArea : Nullable[Storage]
}

///|
/// Create a new StorageEventInit with default values
pub fn StorageEventInit::default() -> StorageEventInit {
  StorageEventInit::{
    key: Nullable::Undefined,
    oldValue: Nullable::Undefined,
    newValue: Nullable::Undefined,
    url: None,
    storageArea: Nullable::Undefined,
  }
}

///|
extern "js" fn StorageEventInit::to_js_ffi(self : StorageEventInit) -> JsValue =
  #| (self) => ({
  #|   key: ((() => { const v = self.key; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   oldValue: ((() => { const v = self.oldValue; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   newValue: ((() => { const v = self.newValue; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   url: self.url,
  #|   storageArea: ((() => { const v = self.storageArea; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn StorageEventInit::to_js(self : StorageEventInit) -> JsValue {
  StorageEventInit::to_js_ffi(self)
}

///|
extern "js" fn StorageEventInit::from_js_ffi(
  value : JsValue,
) -> StorageEventInit =
  #| (v) => ({
  #|   key: (v.key === undefined ? { $tag: 0 } : v.key === null ? { $tag: 1 } : { $tag: 2, _0: v.key }),
  #|   oldValue: (v.oldValue === undefined ? { $tag: 0 } : v.oldValue === null ? { $tag: 1 } : { $tag: 2, _0: v.oldValue }),
  #|   newValue: (v.newValue === undefined ? { $tag: 0 } : v.newValue === null ? { $tag: 1 } : { $tag: 2, _0: v.newValue }),
  #|   url: v.url,
  #|   storageArea: (v.storageArea === undefined ? { $tag: 0 } : v.storageArea === null ? { $tag: 1 } : { $tag: 2, _0: v.storageArea })
  #| })

///|
/// Convert from JsValue
pub fn StorageEventInit::from_js(value : JsValue) -> StorageEventInit {
  StorageEventInit::from_js_ffi(value)
}

///|
/// HTMLAllCollection interface
pub type HTMLAllCollection

///|
pub extern "js" fn HTMLAllCollection::to_js_value(
  self : HTMLAllCollection,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLAllCollection (unchecked)
pub extern "js" fn HTMLAllCollection::from_js_value(
  v : JsValue,
) -> HTMLAllCollection =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLAllCollection (checked with instanceof)
pub extern "js" fn HTMLAllCollection::from_js_value_opt(
  v : JsValue,
) -> HTMLAllCollection? =
  #| (v) => (v instanceof HTMLAllCollection) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLAllCollection (checked with instanceof)
pub extern "js" fn JsValue::as_html_all_collection(
  self : JsValue,
) -> HTMLAllCollection? =
  #| (self) => (self instanceof HTMLAllCollection) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLAllCollection (unchecked)
pub extern "js" fn JsValue::to_html_all_collection(
  self : JsValue,
) -> HTMLAllCollection =
  #| (self) => self

///|
pub extern "js" fn HTMLAllCollection::get_length(
  self : HTMLAllCollection,
) -> Int =
  #| (self) => self.length

///|
#alias("_[_]")
pub extern "js" fn HTMLAllCollection::get(
  self : HTMLAllCollection,
  index : Int,
) -> Element =
  #| (self, index) => self[index]

///|
pub extern "js" fn HTMLAllCollection::named_item(
  self : HTMLAllCollection,
  name : String,
) -> HTMLCollectionOrElement =
  #| (self, name) => self.namedItem(name)

///|
pub extern "js" fn HTMLAllCollection::get_named(
  self : HTMLAllCollection,
  name : String,
) -> HTMLCollectionOrElement =
  #| (self, name) => self[name]

///|
pub extern "js" fn HTMLAllCollection::item(
  self : HTMLAllCollection,
) -> HTMLCollectionOrElement =
  #| (self) => self.item()

///|
pub extern "js" fn HTMLAllCollection::item_with_name_or_index(
  self : HTMLAllCollection,
  name_or_index : String,
) -> HTMLCollectionOrElement =
  #| (self, name_or_index) => self.item(name_or_index)

///|
/// HTMLFormControlsCollection interface
pub type HTMLFormControlsCollection

///|
pub extern "js" fn HTMLFormControlsCollection::to_js_value(
  self : HTMLFormControlsCollection,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLFormControlsCollection (unchecked)
pub extern "js" fn HTMLFormControlsCollection::from_js_value(
  v : JsValue,
) -> HTMLFormControlsCollection =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLFormControlsCollection (checked with instanceof)
pub extern "js" fn HTMLFormControlsCollection::from_js_value_opt(
  v : JsValue,
) -> HTMLFormControlsCollection? =
  #| (v) => (v instanceof HTMLFormControlsCollection) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLFormControlsCollection (checked with instanceof)
pub extern "js" fn JsValue::as_html_form_controls_collection(
  self : JsValue,
) -> HTMLFormControlsCollection? =
  #| (self) => (self instanceof HTMLFormControlsCollection) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLFormControlsCollection (unchecked)
pub extern "js" fn JsValue::to_html_form_controls_collection(
  self : JsValue,
) -> HTMLFormControlsCollection =
  #| (self) => self

///|
pub extern "js" fn HTMLFormControlsCollection::to_html_collection(
  self : HTMLFormControlsCollection,
) -> HTMLCollection =
  #| (self) => self

///|
pub extern "js" fn HTMLFormControlsCollection::named_item(
  self : HTMLFormControlsCollection,
  name : String,
) -> RadioNodeListOrElement =
  #| (self, name) => self.namedItem(name)

///|
pub extern "js" fn HTMLFormControlsCollection::get_named(
  self : HTMLFormControlsCollection,
  name : String,
) -> RadioNodeListOrElement =
  #| (self, name) => self[name]

///|
/// RadioNodeList interface
pub type RadioNodeList

///|
pub extern "js" fn RadioNodeList::to_js_value(self : RadioNodeList) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to RadioNodeList (unchecked)
pub extern "js" fn RadioNodeList::from_js_value(v : JsValue) -> RadioNodeList =
  #| (v) => v

///|
/// Safely cast JsValue to RadioNodeList (checked with instanceof)
pub extern "js" fn RadioNodeList::from_js_value_opt(
  v : JsValue,
) -> RadioNodeList? =
  #| (v) => (v instanceof RadioNodeList) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to RadioNodeList (checked with instanceof)
pub extern "js" fn JsValue::as_radio_node_list(
  self : JsValue,
) -> RadioNodeList? =
  #| (self) => (self instanceof RadioNodeList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to RadioNodeList (unchecked)
pub extern "js" fn JsValue::to_radio_node_list(self : JsValue) -> RadioNodeList =
  #| (self) => self

///|
pub extern "js" fn RadioNodeList::to_node_list(
  self : RadioNodeList,
) -> NodeList =
  #| (self) => self

///|
pub extern "js" fn RadioNodeList::get_value(self : RadioNodeList) -> String =
  #| (self) => self.value

///|
pub extern "js" fn RadioNodeList::set_value(
  self : RadioNodeList,
  value : String,
) -> Unit =
  #| (self, value) => { self.value = value }

///|
/// HTMLOptionsCollection interface
pub type HTMLOptionsCollection

///|
pub extern "js" fn HTMLOptionsCollection::to_js_value(
  self : HTMLOptionsCollection,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLOptionsCollection (unchecked)
pub extern "js" fn HTMLOptionsCollection::from_js_value(
  v : JsValue,
) -> HTMLOptionsCollection =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLOptionsCollection (checked with instanceof)
pub extern "js" fn HTMLOptionsCollection::from_js_value_opt(
  v : JsValue,
) -> HTMLOptionsCollection? =
  #| (v) => (v instanceof HTMLOptionsCollection) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLOptionsCollection (checked with instanceof)
pub extern "js" fn JsValue::as_html_options_collection(
  self : JsValue,
) -> HTMLOptionsCollection? =
  #| (self) => (self instanceof HTMLOptionsCollection) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLOptionsCollection (unchecked)
pub extern "js" fn JsValue::to_html_options_collection(
  self : JsValue,
) -> HTMLOptionsCollection =
  #| (self) => self

///|
pub extern "js" fn HTMLOptionsCollection::to_html_collection(
  self : HTMLOptionsCollection,
) -> HTMLCollection =
  #| (self) => self

///|
pub extern "js" fn HTMLOptionsCollection::get_length(
  self : HTMLOptionsCollection,
) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn HTMLOptionsCollection::set_length(
  self : HTMLOptionsCollection,
  value : Int,
) -> Unit =
  #| (self, value) => { self.length = value }

///|
#alias("_[_]=_")
pub extern "js" fn HTMLOptionsCollection::set(
  self : HTMLOptionsCollection,
  index : Int,
  option : HTMLOptionElement?,
) -> Unit =
  #| (self, index, option) => { self[index] = option }

///|
pub extern "js" fn HTMLOptionsCollection::add(
  self : HTMLOptionsCollection,
  element : HTMLOptionElementOrHTMLOptGroupElement,
) -> Unit =
  #| (self, element) => self.add(element)

///|
pub extern "js" fn HTMLOptionsCollection::add_with_before(
  self : HTMLOptionsCollection,
  element : HTMLOptionElementOrHTMLOptGroupElement,
  before : HTMLElementOrInt,
) -> Unit =
  #| (self, element, before) => self.add(element, before)

///|
pub extern "js" fn HTMLOptionsCollection::remove(
  self : HTMLOptionsCollection,
  index : Int,
) -> Unit =
  #| (self, index) => self.remove(index)

///|
pub extern "js" fn HTMLOptionsCollection::get_selected_index(
  self : HTMLOptionsCollection,
) -> Int =
  #| (self) => self.selectedIndex

///|
pub extern "js" fn HTMLOptionsCollection::set_selected_index(
  self : HTMLOptionsCollection,
  value : Int,
) -> Unit =
  #| (self, value) => { self.selectedIndex = value }

///|
/// DOMStringList interface
pub type DOMStringList

///|
pub extern "js" fn DOMStringList::to_js_value(self : DOMStringList) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to DOMStringList (unchecked)
pub extern "js" fn DOMStringList::from_js_value(v : JsValue) -> DOMStringList =
  #| (v) => v

///|
/// Safely cast JsValue to DOMStringList (checked with instanceof)
pub extern "js" fn DOMStringList::from_js_value_opt(
  v : JsValue,
) -> DOMStringList? =
  #| (v) => (v instanceof DOMStringList) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to DOMStringList (checked with instanceof)
pub extern "js" fn JsValue::as_dom_string_list(
  self : JsValue,
) -> DOMStringList? =
  #| (self) => (self instanceof DOMStringList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to DOMStringList (unchecked)
pub extern "js" fn JsValue::to_dom_string_list(self : JsValue) -> DOMStringList =
  #| (self) => self

///|
pub extern "js" fn DOMStringList::get_length(self : DOMStringList) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn DOMStringList::item(
  self : DOMStringList,
  index : Int,
) -> String? =
  #| (self, index) => (self.item(index)) ?? undefined

///|
#alias("_[_]")
pub extern "js" fn DOMStringList::get(
  self : DOMStringList,
  index : Int,
) -> String? =
  #| (self, index) => (self[index]) ?? undefined

///|
pub extern "js" fn DOMStringList::contains(
  self : DOMStringList,
  string : String,
) -> Bool =
  #| (self, string) => self.contains(string)

///|
/// HTMLElement interface
pub type HTMLElement

///|
pub extern "js" fn HTMLElement::to_js_value(self : HTMLElement) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLElement (unchecked)
pub extern "js" fn HTMLElement::from_js_value(v : JsValue) -> HTMLElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLElement (checked with instanceof)
pub extern "js" fn HTMLElement::from_js_value_opt(v : JsValue) -> HTMLElement? =
  #| (v) => (v instanceof HTMLElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_element(self : JsValue) -> HTMLElement? =
  #| (self) => (self instanceof HTMLElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLElement (unchecked)
pub extern "js" fn JsValue::to_html_element(self : JsValue) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLElement::to_element(self : HTMLElement) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLElement::to_node(self : HTMLElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLElement::to_event_target(
  self : HTMLElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLElement::as_html_model_element(
  self : HTMLElement,
) -> HTMLModelElement? =
  #| (self) => (self instanceof HTMLModelElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_unknown_element(
  self : HTMLElement,
) -> HTMLUnknownElement? =
  #| (self) => (self instanceof HTMLUnknownElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_html_element(
  self : HTMLElement,
) -> HTMLHtmlElement? =
  #| (self) => (self instanceof HTMLHtmlElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_head_element(
  self : HTMLElement,
) -> HTMLHeadElement? =
  #| (self) => (self instanceof HTMLHeadElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_title_element(
  self : HTMLElement,
) -> HTMLTitleElement? =
  #| (self) => (self instanceof HTMLTitleElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_base_element(
  self : HTMLElement,
) -> HTMLBaseElement? =
  #| (self) => (self instanceof HTMLBaseElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_link_element(
  self : HTMLElement,
) -> HTMLLinkElement? =
  #| (self) => (self instanceof HTMLLinkElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_meta_element(
  self : HTMLElement,
) -> HTMLMetaElement? =
  #| (self) => (self instanceof HTMLMetaElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_style_element(
  self : HTMLElement,
) -> HTMLStyleElement? =
  #| (self) => (self instanceof HTMLStyleElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_body_element(
  self : HTMLElement,
) -> HTMLBodyElement? =
  #| (self) => (self instanceof HTMLBodyElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_heading_element(
  self : HTMLElement,
) -> HTMLHeadingElement? =
  #| (self) => (self instanceof HTMLHeadingElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_paragraph_element(
  self : HTMLElement,
) -> HTMLParagraphElement? =
  #| (self) => (self instanceof HTMLParagraphElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_htmlhr_element(
  self : HTMLElement,
) -> HTMLHRElement? =
  #| (self) => (self instanceof HTMLHRElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_pre_element(
  self : HTMLElement,
) -> HTMLPreElement? =
  #| (self) => (self instanceof HTMLPreElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_quote_element(
  self : HTMLElement,
) -> HTMLQuoteElement? =
  #| (self) => (self instanceof HTMLQuoteElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_htmlo_list_element(
  self : HTMLElement,
) -> HTMLOListElement? =
  #| (self) => (self instanceof HTMLOListElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_htmlu_list_element(
  self : HTMLElement,
) -> HTMLUListElement? =
  #| (self) => (self instanceof HTMLUListElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_menu_element(
  self : HTMLElement,
) -> HTMLMenuElement? =
  #| (self) => (self instanceof HTMLMenuElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_htmlli_element(
  self : HTMLElement,
) -> HTMLLIElement? =
  #| (self) => (self instanceof HTMLLIElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_htmld_list_element(
  self : HTMLElement,
) -> HTMLDListElement? =
  #| (self) => (self instanceof HTMLDListElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_div_element(
  self : HTMLElement,
) -> HTMLDivElement? =
  #| (self) => (self instanceof HTMLDivElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_anchor_element(
  self : HTMLElement,
) -> HTMLAnchorElement? =
  #| (self) => (self instanceof HTMLAnchorElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_data_element(
  self : HTMLElement,
) -> HTMLDataElement? =
  #| (self) => (self instanceof HTMLDataElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_time_element(
  self : HTMLElement,
) -> HTMLTimeElement? =
  #| (self) => (self instanceof HTMLTimeElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_span_element(
  self : HTMLElement,
) -> HTMLSpanElement? =
  #| (self) => (self instanceof HTMLSpanElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_htmlbr_element(
  self : HTMLElement,
) -> HTMLBRElement? =
  #| (self) => (self instanceof HTMLBRElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_mod_element(
  self : HTMLElement,
) -> HTMLModElement? =
  #| (self) => (self instanceof HTMLModElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_picture_element(
  self : HTMLElement,
) -> HTMLPictureElement? =
  #| (self) => (self instanceof HTMLPictureElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_source_element(
  self : HTMLElement,
) -> HTMLSourceElement? =
  #| (self) => (self instanceof HTMLSourceElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_image_element(
  self : HTMLElement,
) -> HTMLImageElement? =
  #| (self) => (self instanceof HTMLImageElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_htmli_frame_element(
  self : HTMLElement,
) -> HTMLIFrameElement? =
  #| (self) => (self instanceof HTMLIFrameElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_embed_element(
  self : HTMLElement,
) -> HTMLEmbedElement? =
  #| (self) => (self instanceof HTMLEmbedElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_object_element(
  self : HTMLElement,
) -> HTMLObjectElement? =
  #| (self) => (self instanceof HTMLObjectElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_video_element(
  self : HTMLElement,
) -> HTMLVideoElement? =
  #| (self) => (self instanceof HTMLVideoElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_audio_element(
  self : HTMLElement,
) -> HTMLAudioElement? =
  #| (self) => (self instanceof HTMLAudioElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_track_element(
  self : HTMLElement,
) -> HTMLTrackElement? =
  #| (self) => (self instanceof HTMLTrackElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_media_element(
  self : HTMLElement,
) -> HTMLMediaElement? =
  #| (self) => (self instanceof HTMLMediaElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_map_element(
  self : HTMLElement,
) -> HTMLMapElement? =
  #| (self) => (self instanceof HTMLMapElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_area_element(
  self : HTMLElement,
) -> HTMLAreaElement? =
  #| (self) => (self instanceof HTMLAreaElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_table_element(
  self : HTMLElement,
) -> HTMLTableElement? =
  #| (self) => (self instanceof HTMLTableElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_table_caption_element(
  self : HTMLElement,
) -> HTMLTableCaptionElement? =
  #| (self) => (self instanceof HTMLTableCaptionElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_table_col_element(
  self : HTMLElement,
) -> HTMLTableColElement? =
  #| (self) => (self instanceof HTMLTableColElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_table_section_element(
  self : HTMLElement,
) -> HTMLTableSectionElement? =
  #| (self) => (self instanceof HTMLTableSectionElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_table_row_element(
  self : HTMLElement,
) -> HTMLTableRowElement? =
  #| (self) => (self instanceof HTMLTableRowElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_table_cell_element(
  self : HTMLElement,
) -> HTMLTableCellElement? =
  #| (self) => (self instanceof HTMLTableCellElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_form_element(
  self : HTMLElement,
) -> HTMLFormElement? =
  #| (self) => (self instanceof HTMLFormElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_label_element(
  self : HTMLElement,
) -> HTMLLabelElement? =
  #| (self) => (self instanceof HTMLLabelElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_input_element(
  self : HTMLElement,
) -> HTMLInputElement? =
  #| (self) => (self instanceof HTMLInputElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_button_element(
  self : HTMLElement,
) -> HTMLButtonElement? =
  #| (self) => (self instanceof HTMLButtonElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_select_element(
  self : HTMLElement,
) -> HTMLSelectElement? =
  #| (self) => (self instanceof HTMLSelectElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_data_list_element(
  self : HTMLElement,
) -> HTMLDataListElement? =
  #| (self) => (self instanceof HTMLDataListElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_opt_group_element(
  self : HTMLElement,
) -> HTMLOptGroupElement? =
  #| (self) => (self instanceof HTMLOptGroupElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_option_element(
  self : HTMLElement,
) -> HTMLOptionElement? =
  #| (self) => (self instanceof HTMLOptionElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_text_area_element(
  self : HTMLElement,
) -> HTMLTextAreaElement? =
  #| (self) => (self instanceof HTMLTextAreaElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_output_element(
  self : HTMLElement,
) -> HTMLOutputElement? =
  #| (self) => (self instanceof HTMLOutputElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_progress_element(
  self : HTMLElement,
) -> HTMLProgressElement? =
  #| (self) => (self instanceof HTMLProgressElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_meter_element(
  self : HTMLElement,
) -> HTMLMeterElement? =
  #| (self) => (self instanceof HTMLMeterElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_field_set_element(
  self : HTMLElement,
) -> HTMLFieldSetElement? =
  #| (self) => (self instanceof HTMLFieldSetElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_legend_element(
  self : HTMLElement,
) -> HTMLLegendElement? =
  #| (self) => (self instanceof HTMLLegendElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_selected_content_element(
  self : HTMLElement,
) -> HTMLSelectedContentElement? =
  #| (self) => (self instanceof HTMLSelectedContentElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_details_element(
  self : HTMLElement,
) -> HTMLDetailsElement? =
  #| (self) => (self instanceof HTMLDetailsElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_dialog_element(
  self : HTMLElement,
) -> HTMLDialogElement? =
  #| (self) => (self instanceof HTMLDialogElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_script_element(
  self : HTMLElement,
) -> HTMLScriptElement? =
  #| (self) => (self instanceof HTMLScriptElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_template_element(
  self : HTMLElement,
) -> HTMLTemplateElement? =
  #| (self) => (self instanceof HTMLTemplateElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_slot_element(
  self : HTMLElement,
) -> HTMLSlotElement? =
  #| (self) => (self instanceof HTMLSlotElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_canvas_element(
  self : HTMLElement,
) -> HTMLCanvasElement? =
  #| (self) => (self instanceof HTMLCanvasElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_marquee_element(
  self : HTMLElement,
) -> HTMLMarqueeElement? =
  #| (self) => (self instanceof HTMLMarqueeElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_frame_set_element(
  self : HTMLElement,
) -> HTMLFrameSetElement? =
  #| (self) => (self instanceof HTMLFrameSetElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_frame_element(
  self : HTMLElement,
) -> HTMLFrameElement? =
  #| (self) => (self instanceof HTMLFrameElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_directory_element(
  self : HTMLElement,
) -> HTMLDirectoryElement? =
  #| (self) => (self instanceof HTMLDirectoryElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_font_element(
  self : HTMLElement,
) -> HTMLFontElement? =
  #| (self) => (self instanceof HTMLFontElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_param_element(
  self : HTMLElement,
) -> HTMLParamElement? =
  #| (self) => (self instanceof HTMLParamElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_portal_element(
  self : HTMLElement,
) -> HTMLPortalElement? =
  #| (self) => (self instanceof HTMLPortalElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_fenced_frame_element(
  self : HTMLElement,
) -> HTMLFencedFrameElement? =
  #| (self) => (self instanceof HTMLFencedFrameElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_permission_element(
  self : HTMLElement,
) -> HTMLPermissionElement? =
  #| (self) => (self instanceof HTMLPermissionElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::as_html_geolocation_element(
  self : HTMLElement,
) -> HTMLGeolocationElement? =
  #| (self) => (self instanceof HTMLGeolocationElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLElement::new() -> HTMLElement =
  #| () => new HTMLElement()

///|
pub extern "js" fn HTMLElement::get_title(self : HTMLElement) -> String =
  #| (self) => self.title

///|
pub extern "js" fn HTMLElement::set_title(
  self : HTMLElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.title = value }

///|
pub extern "js" fn HTMLElement::get_lang(self : HTMLElement) -> String =
  #| (self) => self.lang

///|
pub extern "js" fn HTMLElement::set_lang(
  self : HTMLElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.lang = value }

///|
pub extern "js" fn HTMLElement::get_translate(self : HTMLElement) -> Bool =
  #| (self) => self.translate

///|
pub extern "js" fn HTMLElement::set_translate(
  self : HTMLElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.translate = value }

///|
pub extern "js" fn HTMLElement::get_dir(self : HTMLElement) -> String =
  #| (self) => self.dir

///|
pub extern "js" fn HTMLElement::set_dir(
  self : HTMLElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.dir = value }

///|
pub extern "js" fn HTMLElement::get_hidden(
  self : HTMLElement,
) -> BoolOrDoubleOrString =
  #| (self) => self.hidden

///|
pub extern "js" fn HTMLElement::set_hidden(
  self : HTMLElement,
  value : BoolOrDoubleOrString,
) -> Unit =
  #| (self, value) => { self.hidden = value }

///|
pub extern "js" fn HTMLElement::get_inert(self : HTMLElement) -> Bool =
  #| (self) => self.inert

///|
pub extern "js" fn HTMLElement::set_inert(
  self : HTMLElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.inert = value }

///|
pub extern "js" fn HTMLElement::click(self : HTMLElement) -> Unit =
  #| (self) => self.click()

///|
pub extern "js" fn HTMLElement::get_access_key(self : HTMLElement) -> String =
  #| (self) => self.accessKey

///|
pub extern "js" fn HTMLElement::set_access_key(
  self : HTMLElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.accessKey = value }

///|
pub extern "js" fn HTMLElement::get_access_key_label(
  self : HTMLElement,
) -> String =
  #| (self) => self.accessKeyLabel

///|
pub extern "js" fn HTMLElement::get_draggable(self : HTMLElement) -> Bool =
  #| (self) => self.draggable

///|
pub extern "js" fn HTMLElement::set_draggable(
  self : HTMLElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.draggable = value }

///|
pub extern "js" fn HTMLElement::get_spellcheck(self : HTMLElement) -> Bool =
  #| (self) => self.spellcheck

///|
pub extern "js" fn HTMLElement::set_spellcheck(
  self : HTMLElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.spellcheck = value }

///|
pub extern "js" fn HTMLElement::get_writing_suggestions(
  self : HTMLElement,
) -> String =
  #| (self) => self.writingSuggestions

///|
pub extern "js" fn HTMLElement::set_writing_suggestions(
  self : HTMLElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.writingSuggestions = value }

///|
pub extern "js" fn HTMLElement::get_autocapitalize(
  self : HTMLElement,
) -> String =
  #| (self) => self.autocapitalize

///|
pub extern "js" fn HTMLElement::set_autocapitalize(
  self : HTMLElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.autocapitalize = value }

///|
pub extern "js" fn HTMLElement::get_autocorrect(self : HTMLElement) -> Bool =
  #| (self) => self.autocorrect

///|
pub extern "js" fn HTMLElement::set_autocorrect(
  self : HTMLElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.autocorrect = value }

///|
pub extern "js" fn HTMLElement::get_inner_text(self : HTMLElement) -> String =
  #| (self) => self.innerText

///|
pub extern "js" fn HTMLElement::set_inner_text(
  self : HTMLElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.innerText = value }

///|
pub extern "js" fn HTMLElement::get_outer_text(self : HTMLElement) -> String =
  #| (self) => self.outerText

///|
pub extern "js" fn HTMLElement::set_outer_text(
  self : HTMLElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.outerText = value }

///|
pub extern "js" fn HTMLElement::attach_internals(
  self : HTMLElement,
) -> ElementInternals =
  #| (self) => self.attachInternals()

///|
pub extern "js" fn HTMLElement::show_popover(self : HTMLElement) -> Unit =
  #| (self) => self.showPopover()

///|
extern "js" fn HTMLElement::show_popover_with_options_ffi(
  self : HTMLElement,
  options : JsValue,
) -> Unit =
  #| (self, options) => self.showPopover(options)

///|
pub fn HTMLElement::show_popover_with_options(
  self : HTMLElement,
  options : ShowPopoverOptions,
) -> Unit {
  HTMLElement::show_popover_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn HTMLElement::hide_popover(self : HTMLElement) -> Unit =
  #| (self) => self.hidePopover()

///|
pub extern "js" fn HTMLElement::toggle_popover(self : HTMLElement) -> Bool =
  #| (self) => self.togglePopover()

///|
pub extern "js" fn HTMLElement::toggle_popover_with_options(
  self : HTMLElement,
  options : TogglePopoverOptionsOrBool,
) -> Bool =
  #| (self, options) => self.togglePopover(options)

///|
pub extern "js" fn HTMLElement::get_popover(self : HTMLElement) -> String? =
  #| (self) => (self.popover) ?? undefined

///|
pub extern "js" fn HTMLElement::set_popover(
  self : HTMLElement,
  value : String?,
) -> Unit =
  #| (self, value) => { self.popover = value }

///|
pub extern "js" fn HTMLElement::get_heading_offset(self : HTMLElement) -> Int =
  #| (self) => self.headingOffset

///|
pub extern "js" fn HTMLElement::set_heading_offset(
  self : HTMLElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.headingOffset = value }

///|
pub extern "js" fn HTMLElement::get_heading_reset(self : HTMLElement) -> Bool =
  #| (self) => self.headingReset

///|
pub extern "js" fn HTMLElement::set_heading_reset(
  self : HTMLElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.headingReset = value }

///|
pub extern "js" fn HTMLElement::get_scroll_parent(
  self : HTMLElement,
) -> Element? =
  #| (self) => (() => { const v = self.scrollParent; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLElement::get_offset_parent(
  self : HTMLElement,
) -> Element? =
  #| (self) => (() => { const v = self.offsetParent; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLElement::get_offset_top(self : HTMLElement) -> Int =
  #| (self) => self.offsetTop

///|
pub extern "js" fn HTMLElement::get_offset_left(self : HTMLElement) -> Int =
  #| (self) => self.offsetLeft

///|
pub extern "js" fn HTMLElement::get_offset_width(self : HTMLElement) -> Int =
  #| (self) => self.offsetWidth

///|
pub extern "js" fn HTMLElement::get_offset_height(self : HTMLElement) -> Int =
  #| (self) => self.offsetHeight

///|
pub extern "js" fn HTMLElement::get_edit_context(
  self : HTMLElement,
) -> EditContext? =
  #| (self) => (() => { const v = self.editContext; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLElement::set_edit_context(
  self : HTMLElement,
  value : EditContext?,
) -> Unit =
  #| (self, value) => { self.editContext = (value.$tag === 1 ? value._0 : null) }

///|
pub extern "js" fn HTMLElement::get_onabort(self : HTMLElement) -> EventHandler =
  #| (self) => self.onabort

///|
pub extern "js" fn HTMLElement::set_onabort(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onabort = value }

///|
pub extern "js" fn HTMLElement::get_onauxclick(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onauxclick

///|
pub extern "js" fn HTMLElement::set_onauxclick(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onauxclick = value }

///|
pub extern "js" fn HTMLElement::get_onbeforeinput(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onbeforeinput

///|
pub extern "js" fn HTMLElement::set_onbeforeinput(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbeforeinput = value }

///|
pub extern "js" fn HTMLElement::get_onbeforematch(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onbeforematch

///|
pub extern "js" fn HTMLElement::set_onbeforematch(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbeforematch = value }

///|
pub extern "js" fn HTMLElement::get_onbeforetoggle(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onbeforetoggle

///|
pub extern "js" fn HTMLElement::set_onbeforetoggle(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbeforetoggle = value }

///|
pub extern "js" fn HTMLElement::get_onblur(self : HTMLElement) -> EventHandler =
  #| (self) => self.onblur

///|
pub extern "js" fn HTMLElement::set_onblur(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onblur = value }

///|
pub extern "js" fn HTMLElement::get_oncancel(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.oncancel

///|
pub extern "js" fn HTMLElement::set_oncancel(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncancel = value }

///|
pub extern "js" fn HTMLElement::get_oncanplay(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.oncanplay

///|
pub extern "js" fn HTMLElement::set_oncanplay(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncanplay = value }

///|
pub extern "js" fn HTMLElement::get_oncanplaythrough(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.oncanplaythrough

///|
pub extern "js" fn HTMLElement::set_oncanplaythrough(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncanplaythrough = value }

///|
pub extern "js" fn HTMLElement::get_onchange(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onchange

///|
pub extern "js" fn HTMLElement::set_onchange(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onchange = value }

///|
pub extern "js" fn HTMLElement::get_onclick(self : HTMLElement) -> EventHandler =
  #| (self) => self.onclick

///|
pub extern "js" fn HTMLElement::set_onclick(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onclick = value }

///|
pub extern "js" fn HTMLElement::get_onclose(self : HTMLElement) -> EventHandler =
  #| (self) => self.onclose

///|
pub extern "js" fn HTMLElement::set_onclose(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onclose = value }

///|
pub extern "js" fn HTMLElement::get_oncommand(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.oncommand

///|
pub extern "js" fn HTMLElement::set_oncommand(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncommand = value }

///|
pub extern "js" fn HTMLElement::get_oncontextlost(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.oncontextlost

///|
pub extern "js" fn HTMLElement::set_oncontextlost(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncontextlost = value }

///|
pub extern "js" fn HTMLElement::get_oncontextmenu(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.oncontextmenu

///|
pub extern "js" fn HTMLElement::set_oncontextmenu(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncontextmenu = value }

///|
pub extern "js" fn HTMLElement::get_oncontextrestored(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.oncontextrestored

///|
pub extern "js" fn HTMLElement::set_oncontextrestored(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncontextrestored = value }

///|
pub extern "js" fn HTMLElement::get_oncopy(self : HTMLElement) -> EventHandler =
  #| (self) => self.oncopy

///|
pub extern "js" fn HTMLElement::set_oncopy(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncopy = value }

///|
pub extern "js" fn HTMLElement::get_oncuechange(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.oncuechange

///|
pub extern "js" fn HTMLElement::set_oncuechange(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncuechange = value }

///|
pub extern "js" fn HTMLElement::get_oncut(self : HTMLElement) -> EventHandler =
  #| (self) => self.oncut

///|
pub extern "js" fn HTMLElement::set_oncut(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncut = value }

///|
pub extern "js" fn HTMLElement::get_ondblclick(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.ondblclick

///|
pub extern "js" fn HTMLElement::set_ondblclick(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondblclick = value }

///|
pub extern "js" fn HTMLElement::get_ondrag(self : HTMLElement) -> EventHandler =
  #| (self) => self.ondrag

///|
pub extern "js" fn HTMLElement::set_ondrag(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondrag = value }

///|
pub extern "js" fn HTMLElement::get_ondragend(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.ondragend

///|
pub extern "js" fn HTMLElement::set_ondragend(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondragend = value }

///|
pub extern "js" fn HTMLElement::get_ondragenter(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.ondragenter

///|
pub extern "js" fn HTMLElement::set_ondragenter(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondragenter = value }

///|
pub extern "js" fn HTMLElement::get_ondragleave(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.ondragleave

///|
pub extern "js" fn HTMLElement::set_ondragleave(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondragleave = value }

///|
pub extern "js" fn HTMLElement::get_ondragover(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.ondragover

///|
pub extern "js" fn HTMLElement::set_ondragover(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondragover = value }

///|
pub extern "js" fn HTMLElement::get_ondragstart(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.ondragstart

///|
pub extern "js" fn HTMLElement::set_ondragstart(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondragstart = value }

///|
pub extern "js" fn HTMLElement::get_ondrop(self : HTMLElement) -> EventHandler =
  #| (self) => self.ondrop

///|
pub extern "js" fn HTMLElement::set_ondrop(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondrop = value }

///|
pub extern "js" fn HTMLElement::get_ondurationchange(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.ondurationchange

///|
pub extern "js" fn HTMLElement::set_ondurationchange(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondurationchange = value }

///|
pub extern "js" fn HTMLElement::get_onemptied(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onemptied

///|
pub extern "js" fn HTMLElement::set_onemptied(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onemptied = value }

///|
pub extern "js" fn HTMLElement::get_onended(self : HTMLElement) -> EventHandler =
  #| (self) => self.onended

///|
pub extern "js" fn HTMLElement::set_onended(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onended = value }

///|
pub extern "js" fn HTMLElement::get_onerror(
  self : HTMLElement,
) -> OnErrorEventHandler =
  #| (self) => self.onerror

///|
pub extern "js" fn HTMLElement::set_onerror(
  self : HTMLElement,
  value : OnErrorEventHandler,
) -> Unit =
  #| (self, value) => { self.onerror = value }

///|
pub extern "js" fn HTMLElement::get_onfocus(self : HTMLElement) -> EventHandler =
  #| (self) => self.onfocus

///|
pub extern "js" fn HTMLElement::set_onfocus(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onfocus = value }

///|
pub extern "js" fn HTMLElement::get_onformdata(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onformdata

///|
pub extern "js" fn HTMLElement::set_onformdata(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onformdata = value }

///|
pub extern "js" fn HTMLElement::get_oninput(self : HTMLElement) -> EventHandler =
  #| (self) => self.oninput

///|
pub extern "js" fn HTMLElement::set_oninput(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oninput = value }

///|
pub extern "js" fn HTMLElement::get_oninvalid(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.oninvalid

///|
pub extern "js" fn HTMLElement::set_oninvalid(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oninvalid = value }

///|
pub extern "js" fn HTMLElement::get_onkeydown(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onkeydown

///|
pub extern "js" fn HTMLElement::set_onkeydown(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onkeydown = value }

///|
pub extern "js" fn HTMLElement::get_onkeypress(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onkeypress

///|
pub extern "js" fn HTMLElement::set_onkeypress(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onkeypress = value }

///|
pub extern "js" fn HTMLElement::get_onkeyup(self : HTMLElement) -> EventHandler =
  #| (self) => self.onkeyup

///|
pub extern "js" fn HTMLElement::set_onkeyup(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onkeyup = value }

///|
pub extern "js" fn HTMLElement::get_onload(self : HTMLElement) -> EventHandler =
  #| (self) => self.onload

///|
pub extern "js" fn HTMLElement::set_onload(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onload = value }

///|
pub extern "js" fn HTMLElement::get_onloadeddata(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onloadeddata

///|
pub extern "js" fn HTMLElement::set_onloadeddata(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onloadeddata = value }

///|
pub extern "js" fn HTMLElement::get_onloadedmetadata(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onloadedmetadata

///|
pub extern "js" fn HTMLElement::set_onloadedmetadata(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onloadedmetadata = value }

///|
pub extern "js" fn HTMLElement::get_onloadstart(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onloadstart

///|
pub extern "js" fn HTMLElement::set_onloadstart(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onloadstart = value }

///|
pub extern "js" fn HTMLElement::get_onmousedown(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onmousedown

///|
pub extern "js" fn HTMLElement::set_onmousedown(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmousedown = value }

///|
pub extern "js" fn HTMLElement::get_onmouseenter(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onmouseenter

///|
pub extern "js" fn HTMLElement::set_onmouseenter(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmouseenter = value }

///|
pub extern "js" fn HTMLElement::get_onmouseleave(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onmouseleave

///|
pub extern "js" fn HTMLElement::set_onmouseleave(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmouseleave = value }

///|
pub extern "js" fn HTMLElement::get_onmousemove(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onmousemove

///|
pub extern "js" fn HTMLElement::set_onmousemove(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmousemove = value }

///|
pub extern "js" fn HTMLElement::get_onmouseout(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onmouseout

///|
pub extern "js" fn HTMLElement::set_onmouseout(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmouseout = value }

///|
pub extern "js" fn HTMLElement::get_onmouseover(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onmouseover

///|
pub extern "js" fn HTMLElement::set_onmouseover(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmouseover = value }

///|
pub extern "js" fn HTMLElement::get_onmouseup(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onmouseup

///|
pub extern "js" fn HTMLElement::set_onmouseup(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmouseup = value }

///|
pub extern "js" fn HTMLElement::get_onpaste(self : HTMLElement) -> EventHandler =
  #| (self) => self.onpaste

///|
pub extern "js" fn HTMLElement::set_onpaste(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpaste = value }

///|
pub extern "js" fn HTMLElement::get_onpause(self : HTMLElement) -> EventHandler =
  #| (self) => self.onpause

///|
pub extern "js" fn HTMLElement::set_onpause(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpause = value }

///|
pub extern "js" fn HTMLElement::get_onplay(self : HTMLElement) -> EventHandler =
  #| (self) => self.onplay

///|
pub extern "js" fn HTMLElement::set_onplay(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onplay = value }

///|
pub extern "js" fn HTMLElement::get_onplaying(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onplaying

///|
pub extern "js" fn HTMLElement::set_onplaying(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onplaying = value }

///|
pub extern "js" fn HTMLElement::get_onprogress(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onprogress

///|
pub extern "js" fn HTMLElement::set_onprogress(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onprogress = value }

///|
pub extern "js" fn HTMLElement::get_onratechange(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onratechange

///|
pub extern "js" fn HTMLElement::set_onratechange(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onratechange = value }

///|
pub extern "js" fn HTMLElement::get_onreset(self : HTMLElement) -> EventHandler =
  #| (self) => self.onreset

///|
pub extern "js" fn HTMLElement::set_onreset(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onreset = value }

///|
pub extern "js" fn HTMLElement::get_onresize(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onresize

///|
pub extern "js" fn HTMLElement::set_onresize(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onresize = value }

///|
pub extern "js" fn HTMLElement::get_onscroll(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onscroll

///|
pub extern "js" fn HTMLElement::set_onscroll(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onscroll = value }

///|
pub extern "js" fn HTMLElement::get_onscrollend(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onscrollend

///|
pub extern "js" fn HTMLElement::set_onscrollend(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onscrollend = value }

///|
pub extern "js" fn HTMLElement::get_onsecuritypolicyviolation(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onsecuritypolicyviolation

///|
pub extern "js" fn HTMLElement::set_onsecuritypolicyviolation(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsecuritypolicyviolation = value }

///|
pub extern "js" fn HTMLElement::get_onseeked(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onseeked

///|
pub extern "js" fn HTMLElement::set_onseeked(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onseeked = value }

///|
pub extern "js" fn HTMLElement::get_onseeking(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onseeking

///|
pub extern "js" fn HTMLElement::set_onseeking(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onseeking = value }

///|
pub extern "js" fn HTMLElement::get_onselect(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onselect

///|
pub extern "js" fn HTMLElement::set_onselect(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onselect = value }

///|
pub extern "js" fn HTMLElement::get_onslotchange(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onslotchange

///|
pub extern "js" fn HTMLElement::set_onslotchange(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onslotchange = value }

///|
pub extern "js" fn HTMLElement::get_onstalled(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onstalled

///|
pub extern "js" fn HTMLElement::set_onstalled(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onstalled = value }

///|
pub extern "js" fn HTMLElement::get_onsubmit(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onsubmit

///|
pub extern "js" fn HTMLElement::set_onsubmit(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsubmit = value }

///|
pub extern "js" fn HTMLElement::get_onsuspend(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onsuspend

///|
pub extern "js" fn HTMLElement::set_onsuspend(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsuspend = value }

///|
pub extern "js" fn HTMLElement::get_ontimeupdate(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.ontimeupdate

///|
pub extern "js" fn HTMLElement::set_ontimeupdate(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontimeupdate = value }

///|
pub extern "js" fn HTMLElement::get_ontoggle(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.ontoggle

///|
pub extern "js" fn HTMLElement::set_ontoggle(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontoggle = value }

///|
pub extern "js" fn HTMLElement::get_onvolumechange(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onvolumechange

///|
pub extern "js" fn HTMLElement::set_onvolumechange(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onvolumechange = value }

///|
pub extern "js" fn HTMLElement::get_onwaiting(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onwaiting

///|
pub extern "js" fn HTMLElement::set_onwaiting(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onwaiting = value }

///|
pub extern "js" fn HTMLElement::get_onwebkitanimationend(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onwebkitanimationend

///|
pub extern "js" fn HTMLElement::set_onwebkitanimationend(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onwebkitanimationend = value }

///|
pub extern "js" fn HTMLElement::get_onwebkitanimationiteration(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onwebkitanimationiteration

///|
pub extern "js" fn HTMLElement::set_onwebkitanimationiteration(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onwebkitanimationiteration = value }

///|
pub extern "js" fn HTMLElement::get_onwebkitanimationstart(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onwebkitanimationstart

///|
pub extern "js" fn HTMLElement::set_onwebkitanimationstart(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onwebkitanimationstart = value }

///|
pub extern "js" fn HTMLElement::get_onwebkittransitionend(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onwebkittransitionend

///|
pub extern "js" fn HTMLElement::set_onwebkittransitionend(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onwebkittransitionend = value }

///|
pub extern "js" fn HTMLElement::get_onwheel(self : HTMLElement) -> EventHandler =
  #| (self) => self.onwheel

///|
pub extern "js" fn HTMLElement::set_onwheel(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onwheel = value }

///|
pub extern "js" fn HTMLElement::get_ontouchstart(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.ontouchstart

///|
pub extern "js" fn HTMLElement::set_ontouchstart(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontouchstart = value }

///|
pub extern "js" fn HTMLElement::get_ontouchend(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.ontouchend

///|
pub extern "js" fn HTMLElement::set_ontouchend(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontouchend = value }

///|
pub extern "js" fn HTMLElement::get_ontouchmove(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.ontouchmove

///|
pub extern "js" fn HTMLElement::set_ontouchmove(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontouchmove = value }

///|
pub extern "js" fn HTMLElement::get_ontouchcancel(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.ontouchcancel

///|
pub extern "js" fn HTMLElement::set_ontouchcancel(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontouchcancel = value }

///|
pub extern "js" fn HTMLElement::get_ontransitionrun(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.ontransitionrun

///|
pub extern "js" fn HTMLElement::set_ontransitionrun(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontransitionrun = value }

///|
pub extern "js" fn HTMLElement::get_ontransitionstart(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.ontransitionstart

///|
pub extern "js" fn HTMLElement::set_ontransitionstart(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontransitionstart = value }

///|
pub extern "js" fn HTMLElement::get_ontransitionend(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.ontransitionend

///|
pub extern "js" fn HTMLElement::set_ontransitionend(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontransitionend = value }

///|
pub extern "js" fn HTMLElement::get_ontransitioncancel(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.ontransitioncancel

///|
pub extern "js" fn HTMLElement::set_ontransitioncancel(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontransitioncancel = value }

///|
pub extern "js" fn HTMLElement::get_onsnapchanged(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onsnapchanged

///|
pub extern "js" fn HTMLElement::set_onsnapchanged(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsnapchanged = value }

///|
pub extern "js" fn HTMLElement::get_onsnapchanging(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onsnapchanging

///|
pub extern "js" fn HTMLElement::set_onsnapchanging(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsnapchanging = value }

///|
pub extern "js" fn HTMLElement::get_onanimationstart(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onanimationstart

///|
pub extern "js" fn HTMLElement::set_onanimationstart(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onanimationstart = value }

///|
pub extern "js" fn HTMLElement::get_onanimationiteration(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onanimationiteration

///|
pub extern "js" fn HTMLElement::set_onanimationiteration(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onanimationiteration = value }

///|
pub extern "js" fn HTMLElement::get_onanimationend(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onanimationend

///|
pub extern "js" fn HTMLElement::set_onanimationend(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onanimationend = value }

///|
pub extern "js" fn HTMLElement::get_onanimationcancel(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onanimationcancel

///|
pub extern "js" fn HTMLElement::set_onanimationcancel(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onanimationcancel = value }

///|
pub extern "js" fn HTMLElement::get_onfencedtreeclick(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onfencedtreeclick

///|
pub extern "js" fn HTMLElement::set_onfencedtreeclick(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onfencedtreeclick = value }

///|
pub extern "js" fn HTMLElement::get_onpointerover(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onpointerover

///|
pub extern "js" fn HTMLElement::set_onpointerover(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerover = value }

///|
pub extern "js" fn HTMLElement::get_onpointerenter(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onpointerenter

///|
pub extern "js" fn HTMLElement::set_onpointerenter(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerenter = value }

///|
pub extern "js" fn HTMLElement::get_onpointerdown(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onpointerdown

///|
pub extern "js" fn HTMLElement::set_onpointerdown(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerdown = value }

///|
pub extern "js" fn HTMLElement::get_onpointermove(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onpointermove

///|
pub extern "js" fn HTMLElement::set_onpointermove(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointermove = value }

///|
pub extern "js" fn HTMLElement::get_onpointerrawupdate(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onpointerrawupdate

///|
pub extern "js" fn HTMLElement::set_onpointerrawupdate(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerrawupdate = value }

///|
pub extern "js" fn HTMLElement::get_onpointerup(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onpointerup

///|
pub extern "js" fn HTMLElement::set_onpointerup(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerup = value }

///|
pub extern "js" fn HTMLElement::get_onpointercancel(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onpointercancel

///|
pub extern "js" fn HTMLElement::set_onpointercancel(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointercancel = value }

///|
pub extern "js" fn HTMLElement::get_onpointerout(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onpointerout

///|
pub extern "js" fn HTMLElement::set_onpointerout(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerout = value }

///|
pub extern "js" fn HTMLElement::get_onpointerleave(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onpointerleave

///|
pub extern "js" fn HTMLElement::set_onpointerleave(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerleave = value }

///|
pub extern "js" fn HTMLElement::get_ongotpointercapture(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.ongotpointercapture

///|
pub extern "js" fn HTMLElement::set_ongotpointercapture(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ongotpointercapture = value }

///|
pub extern "js" fn HTMLElement::get_onlostpointercapture(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onlostpointercapture

///|
pub extern "js" fn HTMLElement::set_onlostpointercapture(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onlostpointercapture = value }

///|
pub extern "js" fn HTMLElement::get_onbeforexrselect(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onbeforexrselect

///|
pub extern "js" fn HTMLElement::set_onbeforexrselect(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbeforexrselect = value }

///|
pub extern "js" fn HTMLElement::get_onselectstart(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onselectstart

///|
pub extern "js" fn HTMLElement::set_onselectstart(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onselectstart = value }

///|
pub extern "js" fn HTMLElement::get_onselectionchange(
  self : HTMLElement,
) -> EventHandler =
  #| (self) => self.onselectionchange

///|
pub extern "js" fn HTMLElement::set_onselectionchange(
  self : HTMLElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onselectionchange = value }

///|
pub extern "js" fn HTMLElement::get_content_editable(
  self : HTMLElement,
) -> String =
  #| (self) => self.contentEditable

///|
pub extern "js" fn HTMLElement::set_content_editable(
  self : HTMLElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.contentEditable = value }

///|
pub extern "js" fn HTMLElement::get_enter_key_hint(
  self : HTMLElement,
) -> String =
  #| (self) => self.enterKeyHint

///|
pub extern "js" fn HTMLElement::set_enter_key_hint(
  self : HTMLElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.enterKeyHint = value }

///|
pub extern "js" fn HTMLElement::get_is_content_editable(
  self : HTMLElement,
) -> Bool =
  #| (self) => self.isContentEditable

///|
pub extern "js" fn HTMLElement::get_input_mode(self : HTMLElement) -> String =
  #| (self) => self.inputMode

///|
pub extern "js" fn HTMLElement::set_input_mode(
  self : HTMLElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.inputMode = value }

///|
pub extern "js" fn HTMLElement::get_virtual_keyboard_policy(
  self : HTMLElement,
) -> String =
  #| (self) => self.virtualKeyboardPolicy

///|
pub extern "js" fn HTMLElement::set_virtual_keyboard_policy(
  self : HTMLElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.virtualKeyboardPolicy = value }

///|
pub extern "js" fn HTMLElement::get_dataset(self : HTMLElement) -> DOMStringMap =
  #| (self) => self.dataset

///|
pub extern "js" fn HTMLElement::get_nonce(self : HTMLElement) -> String =
  #| (self) => self.nonce

///|
pub extern "js" fn HTMLElement::set_nonce(
  self : HTMLElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.nonce = value }

///|
pub extern "js" fn HTMLElement::get_autofocus(self : HTMLElement) -> Bool =
  #| (self) => self.autofocus

///|
pub extern "js" fn HTMLElement::set_autofocus(
  self : HTMLElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.autofocus = value }

///|
pub extern "js" fn HTMLElement::get_tab_index(self : HTMLElement) -> Int =
  #| (self) => self.tabIndex

///|
pub extern "js" fn HTMLElement::set_tab_index(
  self : HTMLElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.tabIndex = value }

///|
pub extern "js" fn HTMLElement::focus(self : HTMLElement) -> Unit =
  #| (self) => self.focus()

///|
extern "js" fn HTMLElement::focus_with_options_ffi(
  self : HTMLElement,
  options : JsValue,
) -> Unit =
  #| (self, options) => self.focus(options)

///|
pub fn HTMLElement::focus_with_options(
  self : HTMLElement,
  options : FocusOptions,
) -> Unit {
  HTMLElement::focus_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn HTMLElement::blur(self : HTMLElement) -> Unit =
  #| (self) => self.blur()

///|
pub extern "js" fn HTMLElement::get_style(
  self : HTMLElement,
) -> CSSStyleProperties =
  #| (self) => self.style

///|
pub extern "js" fn HTMLElement::get_attribute_style_map(
  self : HTMLElement,
) -> StylePropertyMap =
  #| (self) => self.attributeStyleMap

///|
/// HTMLUnknownElement interface
pub type HTMLUnknownElement

///|
pub extern "js" fn HTMLUnknownElement::to_js_value(
  self : HTMLUnknownElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLUnknownElement (unchecked)
pub extern "js" fn HTMLUnknownElement::from_js_value(
  v : JsValue,
) -> HTMLUnknownElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLUnknownElement (checked with instanceof)
pub extern "js" fn HTMLUnknownElement::from_js_value_opt(
  v : JsValue,
) -> HTMLUnknownElement? =
  #| (v) => (v instanceof HTMLUnknownElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLUnknownElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_unknown_element(
  self : JsValue,
) -> HTMLUnknownElement? =
  #| (self) => (self instanceof HTMLUnknownElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLUnknownElement (unchecked)
pub extern "js" fn JsValue::to_html_unknown_element(
  self : JsValue,
) -> HTMLUnknownElement =
  #| (self) => self

///|
pub extern "js" fn HTMLUnknownElement::to_html_element(
  self : HTMLUnknownElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLUnknownElement::to_element(
  self : HTMLUnknownElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLUnknownElement::to_node(
  self : HTMLUnknownElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLUnknownElement::to_event_target(
  self : HTMLUnknownElement,
) -> EventTarget =
  #| (self) => self

///|
/// DOMStringMap interface
pub type DOMStringMap

///|
pub extern "js" fn DOMStringMap::to_js_value(self : DOMStringMap) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to DOMStringMap (unchecked)
pub extern "js" fn DOMStringMap::from_js_value(v : JsValue) -> DOMStringMap =
  #| (v) => v

///|
/// Safely cast JsValue to DOMStringMap (checked with instanceof)
pub extern "js" fn DOMStringMap::from_js_value_opt(
  v : JsValue,
) -> DOMStringMap? =
  #| (v) => (v instanceof DOMStringMap) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to DOMStringMap (checked with instanceof)
pub extern "js" fn JsValue::as_dom_string_map(self : JsValue) -> DOMStringMap? =
  #| (self) => (self instanceof DOMStringMap) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to DOMStringMap (unchecked)
pub extern "js" fn JsValue::to_dom_string_map(self : JsValue) -> DOMStringMap =
  #| (self) => self

///|
pub extern "js" fn DOMStringMap::get_named(
  self : DOMStringMap,
  name : String,
) -> String =
  #| (self, name) => self[name]

///|
pub extern "js" fn DOMStringMap::set(
  self : DOMStringMap,
  name : String,
  value : String,
) -> Unit =
  #| (self, name, value) => { self[name] = value }

///|
pub extern "js" fn DOMStringMap::delete(
  self : DOMStringMap,
  name : String,
) -> Unit =
  #| (self, name) => { delete self[name] }

///|
/// HTMLHtmlElement interface
pub type HTMLHtmlElement

///|
pub extern "js" fn HTMLHtmlElement::to_js_value(
  self : HTMLHtmlElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLHtmlElement (unchecked)
pub extern "js" fn HTMLHtmlElement::from_js_value(
  v : JsValue,
) -> HTMLHtmlElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLHtmlElement (checked with instanceof)
pub extern "js" fn HTMLHtmlElement::from_js_value_opt(
  v : JsValue,
) -> HTMLHtmlElement? =
  #| (v) => (v instanceof HTMLHtmlElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLHtmlElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_html_element(
  self : JsValue,
) -> HTMLHtmlElement? =
  #| (self) => (self instanceof HTMLHtmlElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLHtmlElement (unchecked)
pub extern "js" fn JsValue::to_html_html_element(
  self : JsValue,
) -> HTMLHtmlElement =
  #| (self) => self

///|
pub extern "js" fn HTMLHtmlElement::to_html_element(
  self : HTMLHtmlElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLHtmlElement::to_element(
  self : HTMLHtmlElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLHtmlElement::to_node(self : HTMLHtmlElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLHtmlElement::to_event_target(
  self : HTMLHtmlElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLHtmlElement::new() -> HTMLHtmlElement =
  #| () => new HTMLHtmlElement()

///|
pub extern "js" fn HTMLHtmlElement::get_version(
  self : HTMLHtmlElement,
) -> String =
  #| (self) => self.version

///|
pub extern "js" fn HTMLHtmlElement::set_version(
  self : HTMLHtmlElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.version = value }

///|
/// HTMLHeadElement interface
pub type HTMLHeadElement

///|
pub extern "js" fn HTMLHeadElement::to_js_value(
  self : HTMLHeadElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLHeadElement (unchecked)
pub extern "js" fn HTMLHeadElement::from_js_value(
  v : JsValue,
) -> HTMLHeadElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLHeadElement (checked with instanceof)
pub extern "js" fn HTMLHeadElement::from_js_value_opt(
  v : JsValue,
) -> HTMLHeadElement? =
  #| (v) => (v instanceof HTMLHeadElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLHeadElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_head_element(
  self : JsValue,
) -> HTMLHeadElement? =
  #| (self) => (self instanceof HTMLHeadElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLHeadElement (unchecked)
pub extern "js" fn JsValue::to_html_head_element(
  self : JsValue,
) -> HTMLHeadElement =
  #| (self) => self

///|
pub extern "js" fn HTMLHeadElement::to_html_element(
  self : HTMLHeadElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLHeadElement::to_element(
  self : HTMLHeadElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLHeadElement::to_node(self : HTMLHeadElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLHeadElement::to_event_target(
  self : HTMLHeadElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLHeadElement::new() -> HTMLHeadElement =
  #| () => new HTMLHeadElement()

///|
/// HTMLTitleElement interface
pub type HTMLTitleElement

///|
pub extern "js" fn HTMLTitleElement::to_js_value(
  self : HTMLTitleElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLTitleElement (unchecked)
pub extern "js" fn HTMLTitleElement::from_js_value(
  v : JsValue,
) -> HTMLTitleElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLTitleElement (checked with instanceof)
pub extern "js" fn HTMLTitleElement::from_js_value_opt(
  v : JsValue,
) -> HTMLTitleElement? =
  #| (v) => (v instanceof HTMLTitleElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLTitleElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_title_element(
  self : JsValue,
) -> HTMLTitleElement? =
  #| (self) => (self instanceof HTMLTitleElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLTitleElement (unchecked)
pub extern "js" fn JsValue::to_html_title_element(
  self : JsValue,
) -> HTMLTitleElement =
  #| (self) => self

///|
pub extern "js" fn HTMLTitleElement::to_html_element(
  self : HTMLTitleElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLTitleElement::to_element(
  self : HTMLTitleElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLTitleElement::to_node(self : HTMLTitleElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLTitleElement::to_event_target(
  self : HTMLTitleElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLTitleElement::new() -> HTMLTitleElement =
  #| () => new HTMLTitleElement()

///|
pub extern "js" fn HTMLTitleElement::get_text(
  self : HTMLTitleElement,
) -> String =
  #| (self) => self.text

///|
pub extern "js" fn HTMLTitleElement::set_text(
  self : HTMLTitleElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.text = value }

///|
/// HTMLBaseElement interface
pub type HTMLBaseElement

///|
pub extern "js" fn HTMLBaseElement::to_js_value(
  self : HTMLBaseElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLBaseElement (unchecked)
pub extern "js" fn HTMLBaseElement::from_js_value(
  v : JsValue,
) -> HTMLBaseElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLBaseElement (checked with instanceof)
pub extern "js" fn HTMLBaseElement::from_js_value_opt(
  v : JsValue,
) -> HTMLBaseElement? =
  #| (v) => (v instanceof HTMLBaseElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLBaseElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_base_element(
  self : JsValue,
) -> HTMLBaseElement? =
  #| (self) => (self instanceof HTMLBaseElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLBaseElement (unchecked)
pub extern "js" fn JsValue::to_html_base_element(
  self : JsValue,
) -> HTMLBaseElement =
  #| (self) => self

///|
pub extern "js" fn HTMLBaseElement::to_html_element(
  self : HTMLBaseElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLBaseElement::to_element(
  self : HTMLBaseElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLBaseElement::to_node(self : HTMLBaseElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLBaseElement::to_event_target(
  self : HTMLBaseElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLBaseElement::new() -> HTMLBaseElement =
  #| () => new HTMLBaseElement()

///|
pub extern "js" fn HTMLBaseElement::get_href(self : HTMLBaseElement) -> String =
  #| (self) => self.href

///|
pub extern "js" fn HTMLBaseElement::set_href(
  self : HTMLBaseElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.href = value }

///|
pub extern "js" fn HTMLBaseElement::get_target(
  self : HTMLBaseElement,
) -> String =
  #| (self) => self.target

///|
pub extern "js" fn HTMLBaseElement::set_target(
  self : HTMLBaseElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.target = value }

///|
/// HTMLLinkElement interface
pub type HTMLLinkElement

///|
pub extern "js" fn HTMLLinkElement::to_js_value(
  self : HTMLLinkElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLLinkElement (unchecked)
pub extern "js" fn HTMLLinkElement::from_js_value(
  v : JsValue,
) -> HTMLLinkElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLLinkElement (checked with instanceof)
pub extern "js" fn HTMLLinkElement::from_js_value_opt(
  v : JsValue,
) -> HTMLLinkElement? =
  #| (v) => (v instanceof HTMLLinkElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLLinkElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_link_element(
  self : JsValue,
) -> HTMLLinkElement? =
  #| (self) => (self instanceof HTMLLinkElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLLinkElement (unchecked)
pub extern "js" fn JsValue::to_html_link_element(
  self : JsValue,
) -> HTMLLinkElement =
  #| (self) => self

///|
pub extern "js" fn HTMLLinkElement::to_html_element(
  self : HTMLLinkElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLLinkElement::to_element(
  self : HTMLLinkElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLLinkElement::to_node(self : HTMLLinkElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLLinkElement::to_event_target(
  self : HTMLLinkElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLLinkElement::new() -> HTMLLinkElement =
  #| () => new HTMLLinkElement()

///|
pub extern "js" fn HTMLLinkElement::get_href(self : HTMLLinkElement) -> String =
  #| (self) => self.href

///|
pub extern "js" fn HTMLLinkElement::set_href(
  self : HTMLLinkElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.href = value }

///|
pub extern "js" fn HTMLLinkElement::get_cross_origin(
  self : HTMLLinkElement,
) -> String? =
  #| (self) => (self.crossOrigin) ?? undefined

///|
pub extern "js" fn HTMLLinkElement::set_cross_origin(
  self : HTMLLinkElement,
  value : String?,
) -> Unit =
  #| (self, value) => { self.crossOrigin = value }

///|
pub extern "js" fn HTMLLinkElement::get_rel(self : HTMLLinkElement) -> String =
  #| (self) => self.rel

///|
pub extern "js" fn HTMLLinkElement::set_rel(
  self : HTMLLinkElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.rel = value }

///|
pub extern "js" fn HTMLLinkElement::get_as(self : HTMLLinkElement) -> String =
  #| (self) => self.as

///|
pub extern "js" fn HTMLLinkElement::set_as(
  self : HTMLLinkElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.as = value }

///|
pub extern "js" fn HTMLLinkElement::get_rel_list(
  self : HTMLLinkElement,
) -> DOMTokenList =
  #| (self) => self.relList

///|
pub extern "js" fn HTMLLinkElement::get_media(self : HTMLLinkElement) -> String =
  #| (self) => self.media

///|
pub extern "js" fn HTMLLinkElement::set_media(
  self : HTMLLinkElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.media = value }

///|
pub extern "js" fn HTMLLinkElement::get_integrity(
  self : HTMLLinkElement,
) -> String =
  #| (self) => self.integrity

///|
pub extern "js" fn HTMLLinkElement::set_integrity(
  self : HTMLLinkElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.integrity = value }

///|
pub extern "js" fn HTMLLinkElement::get_hreflang(
  self : HTMLLinkElement,
) -> String =
  #| (self) => self.hreflang

///|
pub extern "js" fn HTMLLinkElement::set_hreflang(
  self : HTMLLinkElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.hreflang = value }

///|
pub extern "js" fn HTMLLinkElement::get_type(self : HTMLLinkElement) -> String =
  #| (self) => self.type

///|
pub extern "js" fn HTMLLinkElement::set_type(
  self : HTMLLinkElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.type = value }

///|
pub extern "js" fn HTMLLinkElement::get_sizes(
  self : HTMLLinkElement,
) -> DOMTokenList =
  #| (self) => self.sizes

///|
pub extern "js" fn HTMLLinkElement::get_image_srcset(
  self : HTMLLinkElement,
) -> String =
  #| (self) => self.imageSrcset

///|
pub extern "js" fn HTMLLinkElement::set_image_srcset(
  self : HTMLLinkElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.imageSrcset = value }

///|
pub extern "js" fn HTMLLinkElement::get_image_sizes(
  self : HTMLLinkElement,
) -> String =
  #| (self) => self.imageSizes

///|
pub extern "js" fn HTMLLinkElement::set_image_sizes(
  self : HTMLLinkElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.imageSizes = value }

///|
pub extern "js" fn HTMLLinkElement::get_referrer_policy(
  self : HTMLLinkElement,
) -> String =
  #| (self) => self.referrerPolicy

///|
pub extern "js" fn HTMLLinkElement::set_referrer_policy(
  self : HTMLLinkElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.referrerPolicy = value }

///|
pub extern "js" fn HTMLLinkElement::get_blocking(
  self : HTMLLinkElement,
) -> DOMTokenList =
  #| (self) => self.blocking

///|
pub extern "js" fn HTMLLinkElement::get_disabled(
  self : HTMLLinkElement,
) -> Bool =
  #| (self) => self.disabled

///|
pub extern "js" fn HTMLLinkElement::set_disabled(
  self : HTMLLinkElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.disabled = value }

///|
pub extern "js" fn HTMLLinkElement::get_fetch_priority(
  self : HTMLLinkElement,
) -> String =
  #| (self) => self.fetchPriority

///|
pub extern "js" fn HTMLLinkElement::set_fetch_priority(
  self : HTMLLinkElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.fetchPriority = value }

///|
pub extern "js" fn HTMLLinkElement::get_charset(
  self : HTMLLinkElement,
) -> String =
  #| (self) => self.charset

///|
pub extern "js" fn HTMLLinkElement::set_charset(
  self : HTMLLinkElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.charset = value }

///|
pub extern "js" fn HTMLLinkElement::get_rev(self : HTMLLinkElement) -> String =
  #| (self) => self.rev

///|
pub extern "js" fn HTMLLinkElement::set_rev(
  self : HTMLLinkElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.rev = value }

///|
pub extern "js" fn HTMLLinkElement::get_target(
  self : HTMLLinkElement,
) -> String =
  #| (self) => self.target

///|
pub extern "js" fn HTMLLinkElement::set_target(
  self : HTMLLinkElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.target = value }

///|
pub extern "js" fn HTMLLinkElement::get_sheet(
  self : HTMLLinkElement,
) -> CSSStyleSheet? =
  #| (self) => (() => { const v = self.sheet; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// HTMLMetaElement interface
pub type HTMLMetaElement

///|
pub extern "js" fn HTMLMetaElement::to_js_value(
  self : HTMLMetaElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLMetaElement (unchecked)
pub extern "js" fn HTMLMetaElement::from_js_value(
  v : JsValue,
) -> HTMLMetaElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLMetaElement (checked with instanceof)
pub extern "js" fn HTMLMetaElement::from_js_value_opt(
  v : JsValue,
) -> HTMLMetaElement? =
  #| (v) => (v instanceof HTMLMetaElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLMetaElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_meta_element(
  self : JsValue,
) -> HTMLMetaElement? =
  #| (self) => (self instanceof HTMLMetaElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLMetaElement (unchecked)
pub extern "js" fn JsValue::to_html_meta_element(
  self : JsValue,
) -> HTMLMetaElement =
  #| (self) => self

///|
pub extern "js" fn HTMLMetaElement::to_html_element(
  self : HTMLMetaElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLMetaElement::to_element(
  self : HTMLMetaElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLMetaElement::to_node(self : HTMLMetaElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLMetaElement::to_event_target(
  self : HTMLMetaElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLMetaElement::new() -> HTMLMetaElement =
  #| () => new HTMLMetaElement()

///|
pub extern "js" fn HTMLMetaElement::get_name(self : HTMLMetaElement) -> String =
  #| (self) => self.name

///|
pub extern "js" fn HTMLMetaElement::set_name(
  self : HTMLMetaElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.name = value }

///|
pub extern "js" fn HTMLMetaElement::get_http_equiv(
  self : HTMLMetaElement,
) -> String =
  #| (self) => self.httpEquiv

///|
pub extern "js" fn HTMLMetaElement::set_http_equiv(
  self : HTMLMetaElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.httpEquiv = value }

///|
pub extern "js" fn HTMLMetaElement::get_content(
  self : HTMLMetaElement,
) -> String =
  #| (self) => self.content

///|
pub extern "js" fn HTMLMetaElement::set_content(
  self : HTMLMetaElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.content = value }

///|
pub extern "js" fn HTMLMetaElement::get_media(self : HTMLMetaElement) -> String =
  #| (self) => self.media

///|
pub extern "js" fn HTMLMetaElement::set_media(
  self : HTMLMetaElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.media = value }

///|
pub extern "js" fn HTMLMetaElement::get_scheme(
  self : HTMLMetaElement,
) -> String =
  #| (self) => self.scheme

///|
pub extern "js" fn HTMLMetaElement::set_scheme(
  self : HTMLMetaElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.scheme = value }

///|
/// HTMLStyleElement interface
pub type HTMLStyleElement

///|
pub extern "js" fn HTMLStyleElement::to_js_value(
  self : HTMLStyleElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLStyleElement (unchecked)
pub extern "js" fn HTMLStyleElement::from_js_value(
  v : JsValue,
) -> HTMLStyleElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLStyleElement (checked with instanceof)
pub extern "js" fn HTMLStyleElement::from_js_value_opt(
  v : JsValue,
) -> HTMLStyleElement? =
  #| (v) => (v instanceof HTMLStyleElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLStyleElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_style_element(
  self : JsValue,
) -> HTMLStyleElement? =
  #| (self) => (self instanceof HTMLStyleElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLStyleElement (unchecked)
pub extern "js" fn JsValue::to_html_style_element(
  self : JsValue,
) -> HTMLStyleElement =
  #| (self) => self

///|
pub extern "js" fn HTMLStyleElement::to_html_element(
  self : HTMLStyleElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLStyleElement::to_element(
  self : HTMLStyleElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLStyleElement::to_node(self : HTMLStyleElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLStyleElement::to_event_target(
  self : HTMLStyleElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLStyleElement::new() -> HTMLStyleElement =
  #| () => new HTMLStyleElement()

///|
pub extern "js" fn HTMLStyleElement::get_disabled(
  self : HTMLStyleElement,
) -> Bool =
  #| (self) => self.disabled

///|
pub extern "js" fn HTMLStyleElement::set_disabled(
  self : HTMLStyleElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.disabled = value }

///|
pub extern "js" fn HTMLStyleElement::get_media(
  self : HTMLStyleElement,
) -> String =
  #| (self) => self.media

///|
pub extern "js" fn HTMLStyleElement::set_media(
  self : HTMLStyleElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.media = value }

///|
pub extern "js" fn HTMLStyleElement::get_blocking(
  self : HTMLStyleElement,
) -> DOMTokenList =
  #| (self) => self.blocking

///|
pub extern "js" fn HTMLStyleElement::get_type(
  self : HTMLStyleElement,
) -> String =
  #| (self) => self.type

///|
pub extern "js" fn HTMLStyleElement::set_type(
  self : HTMLStyleElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.type = value }

///|
pub extern "js" fn HTMLStyleElement::get_sheet(
  self : HTMLStyleElement,
) -> CSSStyleSheet? =
  #| (self) => (() => { const v = self.sheet; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// HTMLBodyElement interface
pub type HTMLBodyElement

///|
pub extern "js" fn HTMLBodyElement::to_js_value(
  self : HTMLBodyElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLBodyElement (unchecked)
pub extern "js" fn HTMLBodyElement::from_js_value(
  v : JsValue,
) -> HTMLBodyElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLBodyElement (checked with instanceof)
pub extern "js" fn HTMLBodyElement::from_js_value_opt(
  v : JsValue,
) -> HTMLBodyElement? =
  #| (v) => (v instanceof HTMLBodyElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLBodyElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_body_element(
  self : JsValue,
) -> HTMLBodyElement? =
  #| (self) => (self instanceof HTMLBodyElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLBodyElement (unchecked)
pub extern "js" fn JsValue::to_html_body_element(
  self : JsValue,
) -> HTMLBodyElement =
  #| (self) => self

///|
pub extern "js" fn HTMLBodyElement::to_html_element(
  self : HTMLBodyElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLBodyElement::to_element(
  self : HTMLBodyElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLBodyElement::to_node(self : HTMLBodyElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLBodyElement::to_event_target(
  self : HTMLBodyElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLBodyElement::new() -> HTMLBodyElement =
  #| () => new HTMLBodyElement()

///|
pub extern "js" fn HTMLBodyElement::get_text(self : HTMLBodyElement) -> String =
  #| (self) => self.text

///|
pub extern "js" fn HTMLBodyElement::set_text(
  self : HTMLBodyElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.text = value }

///|
pub extern "js" fn HTMLBodyElement::get_link(self : HTMLBodyElement) -> String =
  #| (self) => self.link

///|
pub extern "js" fn HTMLBodyElement::set_link(
  self : HTMLBodyElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.link = value }

///|
pub extern "js" fn HTMLBodyElement::get_v_link(
  self : HTMLBodyElement,
) -> String =
  #| (self) => self.vLink

///|
pub extern "js" fn HTMLBodyElement::set_v_link(
  self : HTMLBodyElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.vLink = value }

///|
pub extern "js" fn HTMLBodyElement::get_a_link(
  self : HTMLBodyElement,
) -> String =
  #| (self) => self.aLink

///|
pub extern "js" fn HTMLBodyElement::set_a_link(
  self : HTMLBodyElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.aLink = value }

///|
pub extern "js" fn HTMLBodyElement::get_bg_color(
  self : HTMLBodyElement,
) -> String =
  #| (self) => self.bgColor

///|
pub extern "js" fn HTMLBodyElement::set_bg_color(
  self : HTMLBodyElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.bgColor = value }

///|
pub extern "js" fn HTMLBodyElement::get_background(
  self : HTMLBodyElement,
) -> String =
  #| (self) => self.background

///|
pub extern "js" fn HTMLBodyElement::set_background(
  self : HTMLBodyElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.background = value }

///|
pub extern "js" fn HTMLBodyElement::get_onorientationchange(
  self : HTMLBodyElement,
) -> EventHandler =
  #| (self) => self.onorientationchange

///|
pub extern "js" fn HTMLBodyElement::set_onorientationchange(
  self : HTMLBodyElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onorientationchange = value }

///|
pub extern "js" fn HTMLBodyElement::get_onafterprint(
  self : HTMLBodyElement,
) -> EventHandler =
  #| (self) => self.onafterprint

///|
pub extern "js" fn HTMLBodyElement::set_onafterprint(
  self : HTMLBodyElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onafterprint = value }

///|
pub extern "js" fn HTMLBodyElement::get_onbeforeprint(
  self : HTMLBodyElement,
) -> EventHandler =
  #| (self) => self.onbeforeprint

///|
pub extern "js" fn HTMLBodyElement::set_onbeforeprint(
  self : HTMLBodyElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbeforeprint = value }

///|
pub extern "js" fn HTMLBodyElement::get_onbeforeunload(
  self : HTMLBodyElement,
) -> OnBeforeUnloadEventHandler =
  #| (self) => self.onbeforeunload

///|
pub extern "js" fn HTMLBodyElement::set_onbeforeunload(
  self : HTMLBodyElement,
  value : OnBeforeUnloadEventHandler,
) -> Unit =
  #| (self, value) => { self.onbeforeunload = value }

///|
pub extern "js" fn HTMLBodyElement::get_onhashchange(
  self : HTMLBodyElement,
) -> EventHandler =
  #| (self) => self.onhashchange

///|
pub extern "js" fn HTMLBodyElement::set_onhashchange(
  self : HTMLBodyElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onhashchange = value }

///|
pub extern "js" fn HTMLBodyElement::get_onlanguagechange(
  self : HTMLBodyElement,
) -> EventHandler =
  #| (self) => self.onlanguagechange

///|
pub extern "js" fn HTMLBodyElement::set_onlanguagechange(
  self : HTMLBodyElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onlanguagechange = value }

///|
pub extern "js" fn HTMLBodyElement::get_onmessage(
  self : HTMLBodyElement,
) -> EventHandler =
  #| (self) => self.onmessage

///|
pub extern "js" fn HTMLBodyElement::set_onmessage(
  self : HTMLBodyElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmessage = value }

///|
pub extern "js" fn HTMLBodyElement::get_onmessageerror(
  self : HTMLBodyElement,
) -> EventHandler =
  #| (self) => self.onmessageerror

///|
pub extern "js" fn HTMLBodyElement::set_onmessageerror(
  self : HTMLBodyElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmessageerror = value }

///|
pub extern "js" fn HTMLBodyElement::get_onoffline(
  self : HTMLBodyElement,
) -> EventHandler =
  #| (self) => self.onoffline

///|
pub extern "js" fn HTMLBodyElement::set_onoffline(
  self : HTMLBodyElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onoffline = value }

///|
pub extern "js" fn HTMLBodyElement::get_ononline(
  self : HTMLBodyElement,
) -> EventHandler =
  #| (self) => self.ononline

///|
pub extern "js" fn HTMLBodyElement::set_ononline(
  self : HTMLBodyElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ononline = value }

///|
pub extern "js" fn HTMLBodyElement::get_onpagehide(
  self : HTMLBodyElement,
) -> EventHandler =
  #| (self) => self.onpagehide

///|
pub extern "js" fn HTMLBodyElement::set_onpagehide(
  self : HTMLBodyElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpagehide = value }

///|
pub extern "js" fn HTMLBodyElement::get_onpagereveal(
  self : HTMLBodyElement,
) -> EventHandler =
  #| (self) => self.onpagereveal

///|
pub extern "js" fn HTMLBodyElement::set_onpagereveal(
  self : HTMLBodyElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpagereveal = value }

///|
pub extern "js" fn HTMLBodyElement::get_onpageshow(
  self : HTMLBodyElement,
) -> EventHandler =
  #| (self) => self.onpageshow

///|
pub extern "js" fn HTMLBodyElement::set_onpageshow(
  self : HTMLBodyElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpageshow = value }

///|
pub extern "js" fn HTMLBodyElement::get_onpageswap(
  self : HTMLBodyElement,
) -> EventHandler =
  #| (self) => self.onpageswap

///|
pub extern "js" fn HTMLBodyElement::set_onpageswap(
  self : HTMLBodyElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpageswap = value }

///|
pub extern "js" fn HTMLBodyElement::get_onpopstate(
  self : HTMLBodyElement,
) -> EventHandler =
  #| (self) => self.onpopstate

///|
pub extern "js" fn HTMLBodyElement::set_onpopstate(
  self : HTMLBodyElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpopstate = value }

///|
pub extern "js" fn HTMLBodyElement::get_onrejectionhandled(
  self : HTMLBodyElement,
) -> EventHandler =
  #| (self) => self.onrejectionhandled

///|
pub extern "js" fn HTMLBodyElement::set_onrejectionhandled(
  self : HTMLBodyElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onrejectionhandled = value }

///|
pub extern "js" fn HTMLBodyElement::get_onstorage(
  self : HTMLBodyElement,
) -> EventHandler =
  #| (self) => self.onstorage

///|
pub extern "js" fn HTMLBodyElement::set_onstorage(
  self : HTMLBodyElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onstorage = value }

///|
pub extern "js" fn HTMLBodyElement::get_onunhandledrejection(
  self : HTMLBodyElement,
) -> EventHandler =
  #| (self) => self.onunhandledrejection

///|
pub extern "js" fn HTMLBodyElement::set_onunhandledrejection(
  self : HTMLBodyElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onunhandledrejection = value }

///|
pub extern "js" fn HTMLBodyElement::get_onunload(
  self : HTMLBodyElement,
) -> EventHandler =
  #| (self) => self.onunload

///|
pub extern "js" fn HTMLBodyElement::set_onunload(
  self : HTMLBodyElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onunload = value }

///|
pub extern "js" fn HTMLBodyElement::get_onportalactivate(
  self : HTMLBodyElement,
) -> EventHandler =
  #| (self) => self.onportalactivate

///|
pub extern "js" fn HTMLBodyElement::set_onportalactivate(
  self : HTMLBodyElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onportalactivate = value }

///|
pub extern "js" fn HTMLBodyElement::get_ongamepadconnected(
  self : HTMLBodyElement,
) -> EventHandler =
  #| (self) => self.ongamepadconnected

///|
pub extern "js" fn HTMLBodyElement::set_ongamepadconnected(
  self : HTMLBodyElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ongamepadconnected = value }

///|
pub extern "js" fn HTMLBodyElement::get_ongamepaddisconnected(
  self : HTMLBodyElement,
) -> EventHandler =
  #| (self) => self.ongamepaddisconnected

///|
pub extern "js" fn HTMLBodyElement::set_ongamepaddisconnected(
  self : HTMLBodyElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ongamepaddisconnected = value }

///|
/// HTMLHeadingElement interface
pub type HTMLHeadingElement

///|
pub extern "js" fn HTMLHeadingElement::to_js_value(
  self : HTMLHeadingElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLHeadingElement (unchecked)
pub extern "js" fn HTMLHeadingElement::from_js_value(
  v : JsValue,
) -> HTMLHeadingElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLHeadingElement (checked with instanceof)
pub extern "js" fn HTMLHeadingElement::from_js_value_opt(
  v : JsValue,
) -> HTMLHeadingElement? =
  #| (v) => (v instanceof HTMLHeadingElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLHeadingElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_heading_element(
  self : JsValue,
) -> HTMLHeadingElement? =
  #| (self) => (self instanceof HTMLHeadingElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLHeadingElement (unchecked)
pub extern "js" fn JsValue::to_html_heading_element(
  self : JsValue,
) -> HTMLHeadingElement =
  #| (self) => self

///|
pub extern "js" fn HTMLHeadingElement::to_html_element(
  self : HTMLHeadingElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLHeadingElement::to_element(
  self : HTMLHeadingElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLHeadingElement::to_node(
  self : HTMLHeadingElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLHeadingElement::to_event_target(
  self : HTMLHeadingElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLHeadingElement::new() -> HTMLHeadingElement =
  #| () => new HTMLHeadingElement()

///|
pub extern "js" fn HTMLHeadingElement::get_align(
  self : HTMLHeadingElement,
) -> String =
  #| (self) => self.align

///|
pub extern "js" fn HTMLHeadingElement::set_align(
  self : HTMLHeadingElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.align = value }

///|
/// HTMLParagraphElement interface
pub type HTMLParagraphElement

///|
pub extern "js" fn HTMLParagraphElement::to_js_value(
  self : HTMLParagraphElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLParagraphElement (unchecked)
pub extern "js" fn HTMLParagraphElement::from_js_value(
  v : JsValue,
) -> HTMLParagraphElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLParagraphElement (checked with instanceof)
pub extern "js" fn HTMLParagraphElement::from_js_value_opt(
  v : JsValue,
) -> HTMLParagraphElement? =
  #| (v) => (v instanceof HTMLParagraphElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLParagraphElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_paragraph_element(
  self : JsValue,
) -> HTMLParagraphElement? =
  #| (self) => (self instanceof HTMLParagraphElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLParagraphElement (unchecked)
pub extern "js" fn JsValue::to_html_paragraph_element(
  self : JsValue,
) -> HTMLParagraphElement =
  #| (self) => self

///|
pub extern "js" fn HTMLParagraphElement::to_html_element(
  self : HTMLParagraphElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLParagraphElement::to_element(
  self : HTMLParagraphElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLParagraphElement::to_node(
  self : HTMLParagraphElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLParagraphElement::to_event_target(
  self : HTMLParagraphElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLParagraphElement::new() -> HTMLParagraphElement =
  #| () => new HTMLParagraphElement()

///|
pub extern "js" fn HTMLParagraphElement::get_align(
  self : HTMLParagraphElement,
) -> String =
  #| (self) => self.align

///|
pub extern "js" fn HTMLParagraphElement::set_align(
  self : HTMLParagraphElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.align = value }

///|
/// HTMLHRElement interface
pub type HTMLHRElement

///|
pub extern "js" fn HTMLHRElement::to_js_value(self : HTMLHRElement) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLHRElement (unchecked)
pub extern "js" fn HTMLHRElement::from_js_value(v : JsValue) -> HTMLHRElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLHRElement (checked with instanceof)
pub extern "js" fn HTMLHRElement::from_js_value_opt(
  v : JsValue,
) -> HTMLHRElement? =
  #| (v) => (v instanceof HTMLHRElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLHRElement (checked with instanceof)
pub extern "js" fn JsValue::as_htmlhr_element(self : JsValue) -> HTMLHRElement? =
  #| (self) => (self instanceof HTMLHRElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLHRElement (unchecked)
pub extern "js" fn JsValue::to_htmlhr_element(self : JsValue) -> HTMLHRElement =
  #| (self) => self

///|
pub extern "js" fn HTMLHRElement::to_html_element(
  self : HTMLHRElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLHRElement::to_element(self : HTMLHRElement) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLHRElement::to_node(self : HTMLHRElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLHRElement::to_event_target(
  self : HTMLHRElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLHRElement::new() -> HTMLHRElement =
  #| () => new HTMLHRElement()

///|
pub extern "js" fn HTMLHRElement::get_align(self : HTMLHRElement) -> String =
  #| (self) => self.align

///|
pub extern "js" fn HTMLHRElement::set_align(
  self : HTMLHRElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.align = value }

///|
pub extern "js" fn HTMLHRElement::get_color(self : HTMLHRElement) -> String =
  #| (self) => self.color

///|
pub extern "js" fn HTMLHRElement::set_color(
  self : HTMLHRElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.color = value }

///|
pub extern "js" fn HTMLHRElement::get_no_shade(self : HTMLHRElement) -> Bool =
  #| (self) => self.noShade

///|
pub extern "js" fn HTMLHRElement::set_no_shade(
  self : HTMLHRElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.noShade = value }

///|
pub extern "js" fn HTMLHRElement::get_size(self : HTMLHRElement) -> String =
  #| (self) => self.size

///|
pub extern "js" fn HTMLHRElement::set_size(
  self : HTMLHRElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.size = value }

///|
pub extern "js" fn HTMLHRElement::get_width(self : HTMLHRElement) -> String =
  #| (self) => self.width

///|
pub extern "js" fn HTMLHRElement::set_width(
  self : HTMLHRElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.width = value }

///|
/// HTMLPreElement interface
pub type HTMLPreElement

///|
pub extern "js" fn HTMLPreElement::to_js_value(
  self : HTMLPreElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLPreElement (unchecked)
pub extern "js" fn HTMLPreElement::from_js_value(v : JsValue) -> HTMLPreElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLPreElement (checked with instanceof)
pub extern "js" fn HTMLPreElement::from_js_value_opt(
  v : JsValue,
) -> HTMLPreElement? =
  #| (v) => (v instanceof HTMLPreElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLPreElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_pre_element(
  self : JsValue,
) -> HTMLPreElement? =
  #| (self) => (self instanceof HTMLPreElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLPreElement (unchecked)
pub extern "js" fn JsValue::to_html_pre_element(
  self : JsValue,
) -> HTMLPreElement =
  #| (self) => self

///|
pub extern "js" fn HTMLPreElement::to_html_element(
  self : HTMLPreElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLPreElement::to_element(self : HTMLPreElement) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLPreElement::to_node(self : HTMLPreElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLPreElement::to_event_target(
  self : HTMLPreElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLPreElement::new() -> HTMLPreElement =
  #| () => new HTMLPreElement()

///|
pub extern "js" fn HTMLPreElement::get_width(self : HTMLPreElement) -> Int =
  #| (self) => self.width

///|
pub extern "js" fn HTMLPreElement::set_width(
  self : HTMLPreElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.width = value }

///|
/// HTMLQuoteElement interface
pub type HTMLQuoteElement

///|
pub extern "js" fn HTMLQuoteElement::to_js_value(
  self : HTMLQuoteElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLQuoteElement (unchecked)
pub extern "js" fn HTMLQuoteElement::from_js_value(
  v : JsValue,
) -> HTMLQuoteElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLQuoteElement (checked with instanceof)
pub extern "js" fn HTMLQuoteElement::from_js_value_opt(
  v : JsValue,
) -> HTMLQuoteElement? =
  #| (v) => (v instanceof HTMLQuoteElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLQuoteElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_quote_element(
  self : JsValue,
) -> HTMLQuoteElement? =
  #| (self) => (self instanceof HTMLQuoteElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLQuoteElement (unchecked)
pub extern "js" fn JsValue::to_html_quote_element(
  self : JsValue,
) -> HTMLQuoteElement =
  #| (self) => self

///|
pub extern "js" fn HTMLQuoteElement::to_html_element(
  self : HTMLQuoteElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLQuoteElement::to_element(
  self : HTMLQuoteElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLQuoteElement::to_node(self : HTMLQuoteElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLQuoteElement::to_event_target(
  self : HTMLQuoteElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLQuoteElement::new() -> HTMLQuoteElement =
  #| () => new HTMLQuoteElement()

///|
pub extern "js" fn HTMLQuoteElement::get_cite(
  self : HTMLQuoteElement,
) -> String =
  #| (self) => self.cite

///|
pub extern "js" fn HTMLQuoteElement::set_cite(
  self : HTMLQuoteElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.cite = value }

///|
/// HTMLOListElement interface
pub type HTMLOListElement

///|
pub extern "js" fn HTMLOListElement::to_js_value(
  self : HTMLOListElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLOListElement (unchecked)
pub extern "js" fn HTMLOListElement::from_js_value(
  v : JsValue,
) -> HTMLOListElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLOListElement (checked with instanceof)
pub extern "js" fn HTMLOListElement::from_js_value_opt(
  v : JsValue,
) -> HTMLOListElement? =
  #| (v) => (v instanceof HTMLOListElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLOListElement (checked with instanceof)
pub extern "js" fn JsValue::as_htmlo_list_element(
  self : JsValue,
) -> HTMLOListElement? =
  #| (self) => (self instanceof HTMLOListElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLOListElement (unchecked)
pub extern "js" fn JsValue::to_htmlo_list_element(
  self : JsValue,
) -> HTMLOListElement =
  #| (self) => self

///|
pub extern "js" fn HTMLOListElement::to_html_element(
  self : HTMLOListElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLOListElement::to_element(
  self : HTMLOListElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLOListElement::to_node(self : HTMLOListElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLOListElement::to_event_target(
  self : HTMLOListElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLOListElement::new() -> HTMLOListElement =
  #| () => new HTMLOListElement()

///|
pub extern "js" fn HTMLOListElement::get_reversed(
  self : HTMLOListElement,
) -> Bool =
  #| (self) => self.reversed

///|
pub extern "js" fn HTMLOListElement::set_reversed(
  self : HTMLOListElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.reversed = value }

///|
pub extern "js" fn HTMLOListElement::get_start(self : HTMLOListElement) -> Int =
  #| (self) => self.start

///|
pub extern "js" fn HTMLOListElement::set_start(
  self : HTMLOListElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.start = value }

///|
pub extern "js" fn HTMLOListElement::get_type(
  self : HTMLOListElement,
) -> String =
  #| (self) => self.type

///|
pub extern "js" fn HTMLOListElement::set_type(
  self : HTMLOListElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.type = value }

///|
pub extern "js" fn HTMLOListElement::get_compact(
  self : HTMLOListElement,
) -> Bool =
  #| (self) => self.compact

///|
pub extern "js" fn HTMLOListElement::set_compact(
  self : HTMLOListElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.compact = value }

///|
/// HTMLUListElement interface
pub type HTMLUListElement

///|
pub extern "js" fn HTMLUListElement::to_js_value(
  self : HTMLUListElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLUListElement (unchecked)
pub extern "js" fn HTMLUListElement::from_js_value(
  v : JsValue,
) -> HTMLUListElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLUListElement (checked with instanceof)
pub extern "js" fn HTMLUListElement::from_js_value_opt(
  v : JsValue,
) -> HTMLUListElement? =
  #| (v) => (v instanceof HTMLUListElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLUListElement (checked with instanceof)
pub extern "js" fn JsValue::as_htmlu_list_element(
  self : JsValue,
) -> HTMLUListElement? =
  #| (self) => (self instanceof HTMLUListElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLUListElement (unchecked)
pub extern "js" fn JsValue::to_htmlu_list_element(
  self : JsValue,
) -> HTMLUListElement =
  #| (self) => self

///|
pub extern "js" fn HTMLUListElement::to_html_element(
  self : HTMLUListElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLUListElement::to_element(
  self : HTMLUListElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLUListElement::to_node(self : HTMLUListElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLUListElement::to_event_target(
  self : HTMLUListElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLUListElement::new() -> HTMLUListElement =
  #| () => new HTMLUListElement()

///|
pub extern "js" fn HTMLUListElement::get_compact(
  self : HTMLUListElement,
) -> Bool =
  #| (self) => self.compact

///|
pub extern "js" fn HTMLUListElement::set_compact(
  self : HTMLUListElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.compact = value }

///|
pub extern "js" fn HTMLUListElement::get_type(
  self : HTMLUListElement,
) -> String =
  #| (self) => self.type

///|
pub extern "js" fn HTMLUListElement::set_type(
  self : HTMLUListElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.type = value }

///|
/// HTMLMenuElement interface
pub type HTMLMenuElement

///|
pub extern "js" fn HTMLMenuElement::to_js_value(
  self : HTMLMenuElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLMenuElement (unchecked)
pub extern "js" fn HTMLMenuElement::from_js_value(
  v : JsValue,
) -> HTMLMenuElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLMenuElement (checked with instanceof)
pub extern "js" fn HTMLMenuElement::from_js_value_opt(
  v : JsValue,
) -> HTMLMenuElement? =
  #| (v) => (v instanceof HTMLMenuElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLMenuElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_menu_element(
  self : JsValue,
) -> HTMLMenuElement? =
  #| (self) => (self instanceof HTMLMenuElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLMenuElement (unchecked)
pub extern "js" fn JsValue::to_html_menu_element(
  self : JsValue,
) -> HTMLMenuElement =
  #| (self) => self

///|
pub extern "js" fn HTMLMenuElement::to_html_element(
  self : HTMLMenuElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLMenuElement::to_element(
  self : HTMLMenuElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLMenuElement::to_node(self : HTMLMenuElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLMenuElement::to_event_target(
  self : HTMLMenuElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLMenuElement::new() -> HTMLMenuElement =
  #| () => new HTMLMenuElement()

///|
pub extern "js" fn HTMLMenuElement::get_compact(self : HTMLMenuElement) -> Bool =
  #| (self) => self.compact

///|
pub extern "js" fn HTMLMenuElement::set_compact(
  self : HTMLMenuElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.compact = value }

///|
/// HTMLLIElement interface
pub type HTMLLIElement

///|
pub extern "js" fn HTMLLIElement::to_js_value(self : HTMLLIElement) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLLIElement (unchecked)
pub extern "js" fn HTMLLIElement::from_js_value(v : JsValue) -> HTMLLIElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLLIElement (checked with instanceof)
pub extern "js" fn HTMLLIElement::from_js_value_opt(
  v : JsValue,
) -> HTMLLIElement? =
  #| (v) => (v instanceof HTMLLIElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLLIElement (checked with instanceof)
pub extern "js" fn JsValue::as_htmlli_element(self : JsValue) -> HTMLLIElement? =
  #| (self) => (self instanceof HTMLLIElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLLIElement (unchecked)
pub extern "js" fn JsValue::to_htmlli_element(self : JsValue) -> HTMLLIElement =
  #| (self) => self

///|
pub extern "js" fn HTMLLIElement::to_html_element(
  self : HTMLLIElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLLIElement::to_element(self : HTMLLIElement) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLLIElement::to_node(self : HTMLLIElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLLIElement::to_event_target(
  self : HTMLLIElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLLIElement::new() -> HTMLLIElement =
  #| () => new HTMLLIElement()

///|
pub extern "js" fn HTMLLIElement::get_value(self : HTMLLIElement) -> Int =
  #| (self) => self.value

///|
pub extern "js" fn HTMLLIElement::set_value(
  self : HTMLLIElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.value = value }

///|
pub extern "js" fn HTMLLIElement::get_type(self : HTMLLIElement) -> String =
  #| (self) => self.type

///|
pub extern "js" fn HTMLLIElement::set_type(
  self : HTMLLIElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.type = value }

///|
/// HTMLDListElement interface
pub type HTMLDListElement

///|
pub extern "js" fn HTMLDListElement::to_js_value(
  self : HTMLDListElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLDListElement (unchecked)
pub extern "js" fn HTMLDListElement::from_js_value(
  v : JsValue,
) -> HTMLDListElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLDListElement (checked with instanceof)
pub extern "js" fn HTMLDListElement::from_js_value_opt(
  v : JsValue,
) -> HTMLDListElement? =
  #| (v) => (v instanceof HTMLDListElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLDListElement (checked with instanceof)
pub extern "js" fn JsValue::as_htmld_list_element(
  self : JsValue,
) -> HTMLDListElement? =
  #| (self) => (self instanceof HTMLDListElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLDListElement (unchecked)
pub extern "js" fn JsValue::to_htmld_list_element(
  self : JsValue,
) -> HTMLDListElement =
  #| (self) => self

///|
pub extern "js" fn HTMLDListElement::to_html_element(
  self : HTMLDListElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLDListElement::to_element(
  self : HTMLDListElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLDListElement::to_node(self : HTMLDListElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLDListElement::to_event_target(
  self : HTMLDListElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLDListElement::new() -> HTMLDListElement =
  #| () => new HTMLDListElement()

///|
pub extern "js" fn HTMLDListElement::get_compact(
  self : HTMLDListElement,
) -> Bool =
  #| (self) => self.compact

///|
pub extern "js" fn HTMLDListElement::set_compact(
  self : HTMLDListElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.compact = value }

///|
/// HTMLDivElement interface
pub type HTMLDivElement

///|
pub extern "js" fn HTMLDivElement::to_js_value(
  self : HTMLDivElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLDivElement (unchecked)
pub extern "js" fn HTMLDivElement::from_js_value(v : JsValue) -> HTMLDivElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLDivElement (checked with instanceof)
pub extern "js" fn HTMLDivElement::from_js_value_opt(
  v : JsValue,
) -> HTMLDivElement? =
  #| (v) => (v instanceof HTMLDivElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLDivElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_div_element(
  self : JsValue,
) -> HTMLDivElement? =
  #| (self) => (self instanceof HTMLDivElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLDivElement (unchecked)
pub extern "js" fn JsValue::to_html_div_element(
  self : JsValue,
) -> HTMLDivElement =
  #| (self) => self

///|
pub extern "js" fn HTMLDivElement::to_html_element(
  self : HTMLDivElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLDivElement::to_element(self : HTMLDivElement) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLDivElement::to_node(self : HTMLDivElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLDivElement::to_event_target(
  self : HTMLDivElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLDivElement::new() -> HTMLDivElement =
  #| () => new HTMLDivElement()

///|
pub extern "js" fn HTMLDivElement::get_align(self : HTMLDivElement) -> String =
  #| (self) => self.align

///|
pub extern "js" fn HTMLDivElement::set_align(
  self : HTMLDivElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.align = value }

///|
/// HTMLAnchorElement interface
pub type HTMLAnchorElement

///|
pub extern "js" fn HTMLAnchorElement::to_js_value(
  self : HTMLAnchorElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLAnchorElement (unchecked)
pub extern "js" fn HTMLAnchorElement::from_js_value(
  v : JsValue,
) -> HTMLAnchorElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLAnchorElement (checked with instanceof)
pub extern "js" fn HTMLAnchorElement::from_js_value_opt(
  v : JsValue,
) -> HTMLAnchorElement? =
  #| (v) => (v instanceof HTMLAnchorElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLAnchorElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_anchor_element(
  self : JsValue,
) -> HTMLAnchorElement? =
  #| (self) => (self instanceof HTMLAnchorElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLAnchorElement (unchecked)
pub extern "js" fn JsValue::to_html_anchor_element(
  self : JsValue,
) -> HTMLAnchorElement =
  #| (self) => self

///|
pub extern "js" fn HTMLAnchorElement::to_html_element(
  self : HTMLAnchorElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLAnchorElement::to_element(
  self : HTMLAnchorElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLAnchorElement::to_node(self : HTMLAnchorElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLAnchorElement::to_event_target(
  self : HTMLAnchorElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLAnchorElement::new() -> HTMLAnchorElement =
  #| () => new HTMLAnchorElement()

///|
pub extern "js" fn HTMLAnchorElement::get_target(
  self : HTMLAnchorElement,
) -> String =
  #| (self) => self.target

///|
pub extern "js" fn HTMLAnchorElement::set_target(
  self : HTMLAnchorElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.target = value }

///|
pub extern "js" fn HTMLAnchorElement::get_download(
  self : HTMLAnchorElement,
) -> String =
  #| (self) => self.download

///|
pub extern "js" fn HTMLAnchorElement::set_download(
  self : HTMLAnchorElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.download = value }

///|
pub extern "js" fn HTMLAnchorElement::get_ping(
  self : HTMLAnchorElement,
) -> String =
  #| (self) => self.ping

///|
pub extern "js" fn HTMLAnchorElement::set_ping(
  self : HTMLAnchorElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.ping = value }

///|
pub extern "js" fn HTMLAnchorElement::get_rel(
  self : HTMLAnchorElement,
) -> String =
  #| (self) => self.rel

///|
pub extern "js" fn HTMLAnchorElement::set_rel(
  self : HTMLAnchorElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.rel = value }

///|
pub extern "js" fn HTMLAnchorElement::get_rel_list(
  self : HTMLAnchorElement,
) -> DOMTokenList =
  #| (self) => self.relList

///|
pub extern "js" fn HTMLAnchorElement::get_hreflang(
  self : HTMLAnchorElement,
) -> String =
  #| (self) => self.hreflang

///|
pub extern "js" fn HTMLAnchorElement::set_hreflang(
  self : HTMLAnchorElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.hreflang = value }

///|
pub extern "js" fn HTMLAnchorElement::get_type(
  self : HTMLAnchorElement,
) -> String =
  #| (self) => self.type

///|
pub extern "js" fn HTMLAnchorElement::set_type(
  self : HTMLAnchorElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.type = value }

///|
pub extern "js" fn HTMLAnchorElement::get_text(
  self : HTMLAnchorElement,
) -> String =
  #| (self) => self.text

///|
pub extern "js" fn HTMLAnchorElement::set_text(
  self : HTMLAnchorElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.text = value }

///|
pub extern "js" fn HTMLAnchorElement::get_referrer_policy(
  self : HTMLAnchorElement,
) -> String =
  #| (self) => self.referrerPolicy

///|
pub extern "js" fn HTMLAnchorElement::set_referrer_policy(
  self : HTMLAnchorElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.referrerPolicy = value }

///|
pub extern "js" fn HTMLAnchorElement::get_coords(
  self : HTMLAnchorElement,
) -> String =
  #| (self) => self.coords

///|
pub extern "js" fn HTMLAnchorElement::set_coords(
  self : HTMLAnchorElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.coords = value }

///|
pub extern "js" fn HTMLAnchorElement::get_charset(
  self : HTMLAnchorElement,
) -> String =
  #| (self) => self.charset

///|
pub extern "js" fn HTMLAnchorElement::set_charset(
  self : HTMLAnchorElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.charset = value }

///|
pub extern "js" fn HTMLAnchorElement::get_name(
  self : HTMLAnchorElement,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn HTMLAnchorElement::set_name(
  self : HTMLAnchorElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.name = value }

///|
pub extern "js" fn HTMLAnchorElement::get_rev(
  self : HTMLAnchorElement,
) -> String =
  #| (self) => self.rev

///|
pub extern "js" fn HTMLAnchorElement::set_rev(
  self : HTMLAnchorElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.rev = value }

///|
pub extern "js" fn HTMLAnchorElement::get_shape(
  self : HTMLAnchorElement,
) -> String =
  #| (self) => self.shape

///|
pub extern "js" fn HTMLAnchorElement::set_shape(
  self : HTMLAnchorElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.shape = value }

///|
pub extern "js" fn HTMLAnchorElement::get_attribution_source_id(
  self : HTMLAnchorElement,
) -> Int =
  #| (self) => self.attributionSourceId

///|
pub extern "js" fn HTMLAnchorElement::set_attribution_source_id(
  self : HTMLAnchorElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.attributionSourceId = value }

///|
pub extern "js" fn HTMLAnchorElement::get_href(
  self : HTMLAnchorElement,
) -> String =
  #| (self) => self.href

///|
pub extern "js" fn HTMLAnchorElement::set_href(
  self : HTMLAnchorElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.href = value }

///|
pub extern "js" fn HTMLAnchorElement::get_origin(
  self : HTMLAnchorElement,
) -> String =
  #| (self) => self.origin

///|
pub extern "js" fn HTMLAnchorElement::get_protocol(
  self : HTMLAnchorElement,
) -> String =
  #| (self) => self.protocol

///|
pub extern "js" fn HTMLAnchorElement::set_protocol(
  self : HTMLAnchorElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.protocol = value }

///|
pub extern "js" fn HTMLAnchorElement::get_username(
  self : HTMLAnchorElement,
) -> String =
  #| (self) => self.username

///|
pub extern "js" fn HTMLAnchorElement::set_username(
  self : HTMLAnchorElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.username = value }

///|
pub extern "js" fn HTMLAnchorElement::get_password(
  self : HTMLAnchorElement,
) -> String =
  #| (self) => self.password

///|
pub extern "js" fn HTMLAnchorElement::set_password(
  self : HTMLAnchorElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.password = value }

///|
pub extern "js" fn HTMLAnchorElement::get_host(
  self : HTMLAnchorElement,
) -> String =
  #| (self) => self.host

///|
pub extern "js" fn HTMLAnchorElement::set_host(
  self : HTMLAnchorElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.host = value }

///|
pub extern "js" fn HTMLAnchorElement::get_hostname(
  self : HTMLAnchorElement,
) -> String =
  #| (self) => self.hostname

///|
pub extern "js" fn HTMLAnchorElement::set_hostname(
  self : HTMLAnchorElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.hostname = value }

///|
pub extern "js" fn HTMLAnchorElement::get_port(
  self : HTMLAnchorElement,
) -> String =
  #| (self) => self.port

///|
pub extern "js" fn HTMLAnchorElement::set_port(
  self : HTMLAnchorElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.port = value }

///|
pub extern "js" fn HTMLAnchorElement::get_pathname(
  self : HTMLAnchorElement,
) -> String =
  #| (self) => self.pathname

///|
pub extern "js" fn HTMLAnchorElement::set_pathname(
  self : HTMLAnchorElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.pathname = value }

///|
pub extern "js" fn HTMLAnchorElement::get_search(
  self : HTMLAnchorElement,
) -> String =
  #| (self) => self.search

///|
pub extern "js" fn HTMLAnchorElement::set_search(
  self : HTMLAnchorElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.search = value }

///|
pub extern "js" fn HTMLAnchorElement::get_hash(
  self : HTMLAnchorElement,
) -> String =
  #| (self) => self.hash

///|
pub extern "js" fn HTMLAnchorElement::set_hash(
  self : HTMLAnchorElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.hash = value }

///|
pub extern "js" fn HTMLAnchorElement::get_attribution_src(
  self : HTMLAnchorElement,
) -> String =
  #| (self) => self.attributionSrc

///|
pub extern "js" fn HTMLAnchorElement::set_attribution_src(
  self : HTMLAnchorElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.attributionSrc = value }

///|
/// HTMLDataElement interface
pub type HTMLDataElement

///|
pub extern "js" fn HTMLDataElement::to_js_value(
  self : HTMLDataElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLDataElement (unchecked)
pub extern "js" fn HTMLDataElement::from_js_value(
  v : JsValue,
) -> HTMLDataElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLDataElement (checked with instanceof)
pub extern "js" fn HTMLDataElement::from_js_value_opt(
  v : JsValue,
) -> HTMLDataElement? =
  #| (v) => (v instanceof HTMLDataElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLDataElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_data_element(
  self : JsValue,
) -> HTMLDataElement? =
  #| (self) => (self instanceof HTMLDataElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLDataElement (unchecked)
pub extern "js" fn JsValue::to_html_data_element(
  self : JsValue,
) -> HTMLDataElement =
  #| (self) => self

///|
pub extern "js" fn HTMLDataElement::to_html_element(
  self : HTMLDataElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLDataElement::to_element(
  self : HTMLDataElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLDataElement::to_node(self : HTMLDataElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLDataElement::to_event_target(
  self : HTMLDataElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLDataElement::new() -> HTMLDataElement =
  #| () => new HTMLDataElement()

///|
pub extern "js" fn HTMLDataElement::get_value(self : HTMLDataElement) -> String =
  #| (self) => self.value

///|
pub extern "js" fn HTMLDataElement::set_value(
  self : HTMLDataElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.value = value }

///|
/// HTMLTimeElement interface
pub type HTMLTimeElement

///|
pub extern "js" fn HTMLTimeElement::to_js_value(
  self : HTMLTimeElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLTimeElement (unchecked)
pub extern "js" fn HTMLTimeElement::from_js_value(
  v : JsValue,
) -> HTMLTimeElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLTimeElement (checked with instanceof)
pub extern "js" fn HTMLTimeElement::from_js_value_opt(
  v : JsValue,
) -> HTMLTimeElement? =
  #| (v) => (v instanceof HTMLTimeElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLTimeElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_time_element(
  self : JsValue,
) -> HTMLTimeElement? =
  #| (self) => (self instanceof HTMLTimeElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLTimeElement (unchecked)
pub extern "js" fn JsValue::to_html_time_element(
  self : JsValue,
) -> HTMLTimeElement =
  #| (self) => self

///|
pub extern "js" fn HTMLTimeElement::to_html_element(
  self : HTMLTimeElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLTimeElement::to_element(
  self : HTMLTimeElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLTimeElement::to_node(self : HTMLTimeElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLTimeElement::to_event_target(
  self : HTMLTimeElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLTimeElement::new() -> HTMLTimeElement =
  #| () => new HTMLTimeElement()

///|
pub extern "js" fn HTMLTimeElement::get_date_time(
  self : HTMLTimeElement,
) -> String =
  #| (self) => self.dateTime

///|
pub extern "js" fn HTMLTimeElement::set_date_time(
  self : HTMLTimeElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.dateTime = value }

///|
/// HTMLSpanElement interface
pub type HTMLSpanElement

///|
pub extern "js" fn HTMLSpanElement::to_js_value(
  self : HTMLSpanElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLSpanElement (unchecked)
pub extern "js" fn HTMLSpanElement::from_js_value(
  v : JsValue,
) -> HTMLSpanElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLSpanElement (checked with instanceof)
pub extern "js" fn HTMLSpanElement::from_js_value_opt(
  v : JsValue,
) -> HTMLSpanElement? =
  #| (v) => (v instanceof HTMLSpanElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLSpanElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_span_element(
  self : JsValue,
) -> HTMLSpanElement? =
  #| (self) => (self instanceof HTMLSpanElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLSpanElement (unchecked)
pub extern "js" fn JsValue::to_html_span_element(
  self : JsValue,
) -> HTMLSpanElement =
  #| (self) => self

///|
pub extern "js" fn HTMLSpanElement::to_html_element(
  self : HTMLSpanElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLSpanElement::to_element(
  self : HTMLSpanElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLSpanElement::to_node(self : HTMLSpanElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLSpanElement::to_event_target(
  self : HTMLSpanElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLSpanElement::new() -> HTMLSpanElement =
  #| () => new HTMLSpanElement()

///|
/// HTMLBRElement interface
pub type HTMLBRElement

///|
pub extern "js" fn HTMLBRElement::to_js_value(self : HTMLBRElement) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLBRElement (unchecked)
pub extern "js" fn HTMLBRElement::from_js_value(v : JsValue) -> HTMLBRElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLBRElement (checked with instanceof)
pub extern "js" fn HTMLBRElement::from_js_value_opt(
  v : JsValue,
) -> HTMLBRElement? =
  #| (v) => (v instanceof HTMLBRElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLBRElement (checked with instanceof)
pub extern "js" fn JsValue::as_htmlbr_element(self : JsValue) -> HTMLBRElement? =
  #| (self) => (self instanceof HTMLBRElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLBRElement (unchecked)
pub extern "js" fn JsValue::to_htmlbr_element(self : JsValue) -> HTMLBRElement =
  #| (self) => self

///|
pub extern "js" fn HTMLBRElement::to_html_element(
  self : HTMLBRElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLBRElement::to_element(self : HTMLBRElement) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLBRElement::to_node(self : HTMLBRElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLBRElement::to_event_target(
  self : HTMLBRElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLBRElement::new() -> HTMLBRElement =
  #| () => new HTMLBRElement()

///|
pub extern "js" fn HTMLBRElement::get_clear(self : HTMLBRElement) -> String =
  #| (self) => self.clear

///|
pub extern "js" fn HTMLBRElement::set_clear(
  self : HTMLBRElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.clear = value }

///|
/// HTMLModElement interface
pub type HTMLModElement

///|
pub extern "js" fn HTMLModElement::to_js_value(
  self : HTMLModElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLModElement (unchecked)
pub extern "js" fn HTMLModElement::from_js_value(v : JsValue) -> HTMLModElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLModElement (checked with instanceof)
pub extern "js" fn HTMLModElement::from_js_value_opt(
  v : JsValue,
) -> HTMLModElement? =
  #| (v) => (v instanceof HTMLModElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLModElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_mod_element(
  self : JsValue,
) -> HTMLModElement? =
  #| (self) => (self instanceof HTMLModElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLModElement (unchecked)
pub extern "js" fn JsValue::to_html_mod_element(
  self : JsValue,
) -> HTMLModElement =
  #| (self) => self

///|
pub extern "js" fn HTMLModElement::to_html_element(
  self : HTMLModElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLModElement::to_element(self : HTMLModElement) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLModElement::to_node(self : HTMLModElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLModElement::to_event_target(
  self : HTMLModElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLModElement::new() -> HTMLModElement =
  #| () => new HTMLModElement()

///|
pub extern "js" fn HTMLModElement::get_cite(self : HTMLModElement) -> String =
  #| (self) => self.cite

///|
pub extern "js" fn HTMLModElement::set_cite(
  self : HTMLModElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.cite = value }

///|
pub extern "js" fn HTMLModElement::get_date_time(
  self : HTMLModElement,
) -> String =
  #| (self) => self.dateTime

///|
pub extern "js" fn HTMLModElement::set_date_time(
  self : HTMLModElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.dateTime = value }

///|
/// HTMLPictureElement interface
pub type HTMLPictureElement

///|
pub extern "js" fn HTMLPictureElement::to_js_value(
  self : HTMLPictureElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLPictureElement (unchecked)
pub extern "js" fn HTMLPictureElement::from_js_value(
  v : JsValue,
) -> HTMLPictureElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLPictureElement (checked with instanceof)
pub extern "js" fn HTMLPictureElement::from_js_value_opt(
  v : JsValue,
) -> HTMLPictureElement? =
  #| (v) => (v instanceof HTMLPictureElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLPictureElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_picture_element(
  self : JsValue,
) -> HTMLPictureElement? =
  #| (self) => (self instanceof HTMLPictureElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLPictureElement (unchecked)
pub extern "js" fn JsValue::to_html_picture_element(
  self : JsValue,
) -> HTMLPictureElement =
  #| (self) => self

///|
pub extern "js" fn HTMLPictureElement::to_html_element(
  self : HTMLPictureElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLPictureElement::to_element(
  self : HTMLPictureElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLPictureElement::to_node(
  self : HTMLPictureElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLPictureElement::to_event_target(
  self : HTMLPictureElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLPictureElement::new() -> HTMLPictureElement =
  #| () => new HTMLPictureElement()

///|
/// HTMLSourceElement interface
pub type HTMLSourceElement

///|
pub extern "js" fn HTMLSourceElement::to_js_value(
  self : HTMLSourceElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLSourceElement (unchecked)
pub extern "js" fn HTMLSourceElement::from_js_value(
  v : JsValue,
) -> HTMLSourceElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLSourceElement (checked with instanceof)
pub extern "js" fn HTMLSourceElement::from_js_value_opt(
  v : JsValue,
) -> HTMLSourceElement? =
  #| (v) => (v instanceof HTMLSourceElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLSourceElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_source_element(
  self : JsValue,
) -> HTMLSourceElement? =
  #| (self) => (self instanceof HTMLSourceElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLSourceElement (unchecked)
pub extern "js" fn JsValue::to_html_source_element(
  self : JsValue,
) -> HTMLSourceElement =
  #| (self) => self

///|
pub extern "js" fn HTMLSourceElement::to_html_element(
  self : HTMLSourceElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLSourceElement::to_element(
  self : HTMLSourceElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLSourceElement::to_node(self : HTMLSourceElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLSourceElement::to_event_target(
  self : HTMLSourceElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLSourceElement::new() -> HTMLSourceElement =
  #| () => new HTMLSourceElement()

///|
pub extern "js" fn HTMLSourceElement::get_src(
  self : HTMLSourceElement,
) -> String =
  #| (self) => self.src

///|
pub extern "js" fn HTMLSourceElement::set_src(
  self : HTMLSourceElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.src = value }

///|
pub extern "js" fn HTMLSourceElement::get_type(
  self : HTMLSourceElement,
) -> String =
  #| (self) => self.type

///|
pub extern "js" fn HTMLSourceElement::set_type(
  self : HTMLSourceElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.type = value }

///|
pub extern "js" fn HTMLSourceElement::get_srcset(
  self : HTMLSourceElement,
) -> String =
  #| (self) => self.srcset

///|
pub extern "js" fn HTMLSourceElement::set_srcset(
  self : HTMLSourceElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.srcset = value }

///|
pub extern "js" fn HTMLSourceElement::get_sizes(
  self : HTMLSourceElement,
) -> String =
  #| (self) => self.sizes

///|
pub extern "js" fn HTMLSourceElement::set_sizes(
  self : HTMLSourceElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.sizes = value }

///|
pub extern "js" fn HTMLSourceElement::get_media(
  self : HTMLSourceElement,
) -> String =
  #| (self) => self.media

///|
pub extern "js" fn HTMLSourceElement::set_media(
  self : HTMLSourceElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.media = value }

///|
pub extern "js" fn HTMLSourceElement::get_width(
  self : HTMLSourceElement,
) -> Int =
  #| (self) => self.width

///|
pub extern "js" fn HTMLSourceElement::set_width(
  self : HTMLSourceElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.width = value }

///|
pub extern "js" fn HTMLSourceElement::get_height(
  self : HTMLSourceElement,
) -> Int =
  #| (self) => self.height

///|
pub extern "js" fn HTMLSourceElement::set_height(
  self : HTMLSourceElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.height = value }

///|
/// HTMLImageElement interface
pub type HTMLImageElement

///|
pub extern "js" fn HTMLImageElement::to_js_value(
  self : HTMLImageElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLImageElement (unchecked)
pub extern "js" fn HTMLImageElement::from_js_value(
  v : JsValue,
) -> HTMLImageElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLImageElement (checked with instanceof)
pub extern "js" fn HTMLImageElement::from_js_value_opt(
  v : JsValue,
) -> HTMLImageElement? =
  #| (v) => (v instanceof HTMLImageElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLImageElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_image_element(
  self : JsValue,
) -> HTMLImageElement? =
  #| (self) => (self instanceof HTMLImageElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLImageElement (unchecked)
pub extern "js" fn JsValue::to_html_image_element(
  self : JsValue,
) -> HTMLImageElement =
  #| (self) => self

///|
pub extern "js" fn HTMLImageElement::to_html_element(
  self : HTMLImageElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLImageElement::to_element(
  self : HTMLImageElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLImageElement::to_node(self : HTMLImageElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLImageElement::to_event_target(
  self : HTMLImageElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLImageElement::new() -> HTMLImageElement =
  #| () => new HTMLImageElement()

///|
pub extern "js" fn HTMLImageElement::get_alt(self : HTMLImageElement) -> String =
  #| (self) => self.alt

///|
pub extern "js" fn HTMLImageElement::set_alt(
  self : HTMLImageElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.alt = value }

///|
pub extern "js" fn HTMLImageElement::get_src(self : HTMLImageElement) -> String =
  #| (self) => self.src

///|
pub extern "js" fn HTMLImageElement::set_src(
  self : HTMLImageElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.src = value }

///|
pub extern "js" fn HTMLImageElement::get_srcset(
  self : HTMLImageElement,
) -> String =
  #| (self) => self.srcset

///|
pub extern "js" fn HTMLImageElement::set_srcset(
  self : HTMLImageElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.srcset = value }

///|
pub extern "js" fn HTMLImageElement::get_sizes(
  self : HTMLImageElement,
) -> String =
  #| (self) => self.sizes

///|
pub extern "js" fn HTMLImageElement::set_sizes(
  self : HTMLImageElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.sizes = value }

///|
pub extern "js" fn HTMLImageElement::get_cross_origin(
  self : HTMLImageElement,
) -> String? =
  #| (self) => (self.crossOrigin) ?? undefined

///|
pub extern "js" fn HTMLImageElement::set_cross_origin(
  self : HTMLImageElement,
  value : String?,
) -> Unit =
  #| (self, value) => { self.crossOrigin = value }

///|
pub extern "js" fn HTMLImageElement::get_use_map(
  self : HTMLImageElement,
) -> String =
  #| (self) => self.useMap

///|
pub extern "js" fn HTMLImageElement::set_use_map(
  self : HTMLImageElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.useMap = value }

///|
pub extern "js" fn HTMLImageElement::get_is_map(
  self : HTMLImageElement,
) -> Bool =
  #| (self) => self.isMap

///|
pub extern "js" fn HTMLImageElement::set_is_map(
  self : HTMLImageElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.isMap = value }

///|
pub extern "js" fn HTMLImageElement::get_width(self : HTMLImageElement) -> Int =
  #| (self) => self.width

///|
pub extern "js" fn HTMLImageElement::set_width(
  self : HTMLImageElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.width = value }

///|
pub extern "js" fn HTMLImageElement::get_height(self : HTMLImageElement) -> Int =
  #| (self) => self.height

///|
pub extern "js" fn HTMLImageElement::set_height(
  self : HTMLImageElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.height = value }

///|
pub extern "js" fn HTMLImageElement::get_natural_width(
  self : HTMLImageElement,
) -> Int =
  #| (self) => self.naturalWidth

///|
pub extern "js" fn HTMLImageElement::get_natural_height(
  self : HTMLImageElement,
) -> Int =
  #| (self) => self.naturalHeight

///|
pub extern "js" fn HTMLImageElement::get_complete(
  self : HTMLImageElement,
) -> Bool =
  #| (self) => self.complete

///|
pub extern "js" fn HTMLImageElement::get_current_src(
  self : HTMLImageElement,
) -> String =
  #| (self) => self.currentSrc

///|
pub extern "js" fn HTMLImageElement::get_referrer_policy(
  self : HTMLImageElement,
) -> String =
  #| (self) => self.referrerPolicy

///|
pub extern "js" fn HTMLImageElement::set_referrer_policy(
  self : HTMLImageElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.referrerPolicy = value }

///|
pub extern "js" fn HTMLImageElement::get_decoding(
  self : HTMLImageElement,
) -> String =
  #| (self) => self.decoding

///|
pub extern "js" fn HTMLImageElement::set_decoding(
  self : HTMLImageElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.decoding = value }

///|
pub extern "js" fn HTMLImageElement::get_loading(
  self : HTMLImageElement,
) -> String =
  #| (self) => self.loading

///|
pub extern "js" fn HTMLImageElement::set_loading(
  self : HTMLImageElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.loading = value }

///|
pub extern "js" fn HTMLImageElement::get_fetch_priority(
  self : HTMLImageElement,
) -> String =
  #| (self) => self.fetchPriority

///|
pub extern "js" fn HTMLImageElement::set_fetch_priority(
  self : HTMLImageElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.fetchPriority = value }

///|
pub extern "js" fn HTMLImageElement::decode(
  self : HTMLImageElement,
) -> Promise[Unit] =
  #| (self) => self.decode()

///|
pub extern "js" fn HTMLImageElement::get_x(self : HTMLImageElement) -> Int =
  #| (self) => self.x

///|
pub extern "js" fn HTMLImageElement::get_y(self : HTMLImageElement) -> Int =
  #| (self) => self.y

///|
pub extern "js" fn HTMLImageElement::get_name(
  self : HTMLImageElement,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn HTMLImageElement::set_name(
  self : HTMLImageElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.name = value }

///|
pub extern "js" fn HTMLImageElement::get_lowsrc(
  self : HTMLImageElement,
) -> String =
  #| (self) => self.lowsrc

///|
pub extern "js" fn HTMLImageElement::set_lowsrc(
  self : HTMLImageElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.lowsrc = value }

///|
pub extern "js" fn HTMLImageElement::get_align(
  self : HTMLImageElement,
) -> String =
  #| (self) => self.align

///|
pub extern "js" fn HTMLImageElement::set_align(
  self : HTMLImageElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.align = value }

///|
pub extern "js" fn HTMLImageElement::get_hspace(self : HTMLImageElement) -> Int =
  #| (self) => self.hspace

///|
pub extern "js" fn HTMLImageElement::set_hspace(
  self : HTMLImageElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.hspace = value }

///|
pub extern "js" fn HTMLImageElement::get_vspace(self : HTMLImageElement) -> Int =
  #| (self) => self.vspace

///|
pub extern "js" fn HTMLImageElement::set_vspace(
  self : HTMLImageElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.vspace = value }

///|
pub extern "js" fn HTMLImageElement::get_long_desc(
  self : HTMLImageElement,
) -> String =
  #| (self) => self.longDesc

///|
pub extern "js" fn HTMLImageElement::set_long_desc(
  self : HTMLImageElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.longDesc = value }

///|
pub extern "js" fn HTMLImageElement::get_border(
  self : HTMLImageElement,
) -> String =
  #| (self) => self.border

///|
pub extern "js" fn HTMLImageElement::set_border(
  self : HTMLImageElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.border = value }

///|
pub extern "js" fn HTMLImageElement::get_attribution_src(
  self : HTMLImageElement,
) -> String =
  #| (self) => self.attributionSrc

///|
pub extern "js" fn HTMLImageElement::set_attribution_src(
  self : HTMLImageElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.attributionSrc = value }

///|
pub extern "js" fn HTMLImageElement::get_shared_storage_writable(
  self : HTMLImageElement,
) -> Bool =
  #| (self) => self.sharedStorageWritable

///|
pub extern "js" fn HTMLImageElement::set_shared_storage_writable(
  self : HTMLImageElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.sharedStorageWritable = value }

///|
/// HTMLIFrameElement interface
pub type HTMLIFrameElement

///|
pub extern "js" fn HTMLIFrameElement::to_js_value(
  self : HTMLIFrameElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLIFrameElement (unchecked)
pub extern "js" fn HTMLIFrameElement::from_js_value(
  v : JsValue,
) -> HTMLIFrameElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLIFrameElement (checked with instanceof)
pub extern "js" fn HTMLIFrameElement::from_js_value_opt(
  v : JsValue,
) -> HTMLIFrameElement? =
  #| (v) => (v instanceof HTMLIFrameElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLIFrameElement (checked with instanceof)
pub extern "js" fn JsValue::as_htmli_frame_element(
  self : JsValue,
) -> HTMLIFrameElement? =
  #| (self) => (self instanceof HTMLIFrameElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLIFrameElement (unchecked)
pub extern "js" fn JsValue::to_htmli_frame_element(
  self : JsValue,
) -> HTMLIFrameElement =
  #| (self) => self

///|
pub extern "js" fn HTMLIFrameElement::to_html_element(
  self : HTMLIFrameElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLIFrameElement::to_element(
  self : HTMLIFrameElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLIFrameElement::to_node(self : HTMLIFrameElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLIFrameElement::to_event_target(
  self : HTMLIFrameElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLIFrameElement::new() -> HTMLIFrameElement =
  #| () => new HTMLIFrameElement()

///|
pub extern "js" fn HTMLIFrameElement::get_src(
  self : HTMLIFrameElement,
) -> String =
  #| (self) => self.src

///|
pub extern "js" fn HTMLIFrameElement::set_src(
  self : HTMLIFrameElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.src = value }

///|
pub extern "js" fn HTMLIFrameElement::get_srcdoc(
  self : HTMLIFrameElement,
) -> TrustedHTMLOrString =
  #| (self) => self.srcdoc

///|
pub extern "js" fn HTMLIFrameElement::set_srcdoc(
  self : HTMLIFrameElement,
  value : TrustedHTMLOrString,
) -> Unit =
  #| (self, value) => { self.srcdoc = value }

///|
pub extern "js" fn HTMLIFrameElement::get_name(
  self : HTMLIFrameElement,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn HTMLIFrameElement::set_name(
  self : HTMLIFrameElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.name = value }

///|
pub extern "js" fn HTMLIFrameElement::get_sandbox(
  self : HTMLIFrameElement,
) -> DOMTokenList =
  #| (self) => self.sandbox

///|
pub extern "js" fn HTMLIFrameElement::get_allow(
  self : HTMLIFrameElement,
) -> String =
  #| (self) => self.allow

///|
pub extern "js" fn HTMLIFrameElement::set_allow(
  self : HTMLIFrameElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.allow = value }

///|
pub extern "js" fn HTMLIFrameElement::get_allow_fullscreen(
  self : HTMLIFrameElement,
) -> Bool =
  #| (self) => self.allowFullscreen

///|
pub extern "js" fn HTMLIFrameElement::set_allow_fullscreen(
  self : HTMLIFrameElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.allowFullscreen = value }

///|
pub extern "js" fn HTMLIFrameElement::get_width(
  self : HTMLIFrameElement,
) -> String =
  #| (self) => self.width

///|
pub extern "js" fn HTMLIFrameElement::set_width(
  self : HTMLIFrameElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.width = value }

///|
pub extern "js" fn HTMLIFrameElement::get_height(
  self : HTMLIFrameElement,
) -> String =
  #| (self) => self.height

///|
pub extern "js" fn HTMLIFrameElement::set_height(
  self : HTMLIFrameElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.height = value }

///|
pub extern "js" fn HTMLIFrameElement::get_referrer_policy(
  self : HTMLIFrameElement,
) -> String =
  #| (self) => self.referrerPolicy

///|
pub extern "js" fn HTMLIFrameElement::set_referrer_policy(
  self : HTMLIFrameElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.referrerPolicy = value }

///|
pub extern "js" fn HTMLIFrameElement::get_loading(
  self : HTMLIFrameElement,
) -> String =
  #| (self) => self.loading

///|
pub extern "js" fn HTMLIFrameElement::set_loading(
  self : HTMLIFrameElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.loading = value }

///|
pub extern "js" fn HTMLIFrameElement::get_content_document(
  self : HTMLIFrameElement,
) -> Document? =
  #| (self) => (() => { const v = self.contentDocument; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLIFrameElement::get_content_window(
  self : HTMLIFrameElement,
) -> Window? =
  #| (self) => (() => { const v = self.contentWindow; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLIFrameElement::get_svg_document(
  self : HTMLIFrameElement,
) -> Document? =
  #| (self) => (() => { const v = self.getSVGDocument(); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLIFrameElement::get_csp(
  self : HTMLIFrameElement,
) -> String =
  #| (self) => self.csp

///|
pub extern "js" fn HTMLIFrameElement::set_csp(
  self : HTMLIFrameElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.csp = value }

///|
pub extern "js" fn HTMLIFrameElement::get_align(
  self : HTMLIFrameElement,
) -> String =
  #| (self) => self.align

///|
pub extern "js" fn HTMLIFrameElement::set_align(
  self : HTMLIFrameElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.align = value }

///|
pub extern "js" fn HTMLIFrameElement::get_scrolling(
  self : HTMLIFrameElement,
) -> String =
  #| (self) => self.scrolling

///|
pub extern "js" fn HTMLIFrameElement::set_scrolling(
  self : HTMLIFrameElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.scrolling = value }

///|
pub extern "js" fn HTMLIFrameElement::get_frame_border(
  self : HTMLIFrameElement,
) -> String =
  #| (self) => self.frameBorder

///|
pub extern "js" fn HTMLIFrameElement::set_frame_border(
  self : HTMLIFrameElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.frameBorder = value }

///|
pub extern "js" fn HTMLIFrameElement::get_long_desc(
  self : HTMLIFrameElement,
) -> String =
  #| (self) => self.longDesc

///|
pub extern "js" fn HTMLIFrameElement::set_long_desc(
  self : HTMLIFrameElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.longDesc = value }

///|
pub extern "js" fn HTMLIFrameElement::get_margin_height(
  self : HTMLIFrameElement,
) -> String =
  #| (self) => self.marginHeight

///|
pub extern "js" fn HTMLIFrameElement::set_margin_height(
  self : HTMLIFrameElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.marginHeight = value }

///|
pub extern "js" fn HTMLIFrameElement::get_margin_width(
  self : HTMLIFrameElement,
) -> String =
  #| (self) => self.marginWidth

///|
pub extern "js" fn HTMLIFrameElement::set_margin_width(
  self : HTMLIFrameElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.marginWidth = value }

///|
pub extern "js" fn HTMLIFrameElement::get_credentialless(
  self : HTMLIFrameElement,
) -> Bool =
  #| (self) => self.credentialless

///|
pub extern "js" fn HTMLIFrameElement::set_credentialless(
  self : HTMLIFrameElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.credentialless = value }

///|
pub extern "js" fn HTMLIFrameElement::get_permissions_policy(
  self : HTMLIFrameElement,
) -> PermissionsPolicy =
  #| (self) => self.permissionsPolicy

///|
pub extern "js" fn HTMLIFrameElement::get_ad_auction_headers(
  self : HTMLIFrameElement,
) -> Bool =
  #| (self) => self.adAuctionHeaders

///|
pub extern "js" fn HTMLIFrameElement::set_ad_auction_headers(
  self : HTMLIFrameElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.adAuctionHeaders = value }

///|
pub extern "js" fn HTMLIFrameElement::get_private_token(
  self : HTMLIFrameElement,
) -> String =
  #| (self) => self.privateToken

///|
pub extern "js" fn HTMLIFrameElement::set_private_token(
  self : HTMLIFrameElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.privateToken = value }

///|
pub extern "js" fn HTMLIFrameElement::get_shared_storage_writable(
  self : HTMLIFrameElement,
) -> Bool =
  #| (self) => self.sharedStorageWritable

///|
pub extern "js" fn HTMLIFrameElement::set_shared_storage_writable(
  self : HTMLIFrameElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.sharedStorageWritable = value }

///|
/// HTMLEmbedElement interface
pub type HTMLEmbedElement

///|
pub extern "js" fn HTMLEmbedElement::to_js_value(
  self : HTMLEmbedElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLEmbedElement (unchecked)
pub extern "js" fn HTMLEmbedElement::from_js_value(
  v : JsValue,
) -> HTMLEmbedElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLEmbedElement (checked with instanceof)
pub extern "js" fn HTMLEmbedElement::from_js_value_opt(
  v : JsValue,
) -> HTMLEmbedElement? =
  #| (v) => (v instanceof HTMLEmbedElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLEmbedElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_embed_element(
  self : JsValue,
) -> HTMLEmbedElement? =
  #| (self) => (self instanceof HTMLEmbedElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLEmbedElement (unchecked)
pub extern "js" fn JsValue::to_html_embed_element(
  self : JsValue,
) -> HTMLEmbedElement =
  #| (self) => self

///|
pub extern "js" fn HTMLEmbedElement::to_html_element(
  self : HTMLEmbedElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLEmbedElement::to_element(
  self : HTMLEmbedElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLEmbedElement::to_node(self : HTMLEmbedElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLEmbedElement::to_event_target(
  self : HTMLEmbedElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLEmbedElement::new() -> HTMLEmbedElement =
  #| () => new HTMLEmbedElement()

///|
pub extern "js" fn HTMLEmbedElement::get_src(self : HTMLEmbedElement) -> String =
  #| (self) => self.src

///|
pub extern "js" fn HTMLEmbedElement::set_src(
  self : HTMLEmbedElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.src = value }

///|
pub extern "js" fn HTMLEmbedElement::get_type(
  self : HTMLEmbedElement,
) -> String =
  #| (self) => self.type

///|
pub extern "js" fn HTMLEmbedElement::set_type(
  self : HTMLEmbedElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.type = value }

///|
pub extern "js" fn HTMLEmbedElement::get_width(
  self : HTMLEmbedElement,
) -> String =
  #| (self) => self.width

///|
pub extern "js" fn HTMLEmbedElement::set_width(
  self : HTMLEmbedElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.width = value }

///|
pub extern "js" fn HTMLEmbedElement::get_height(
  self : HTMLEmbedElement,
) -> String =
  #| (self) => self.height

///|
pub extern "js" fn HTMLEmbedElement::set_height(
  self : HTMLEmbedElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.height = value }

///|
pub extern "js" fn HTMLEmbedElement::get_svg_document(
  self : HTMLEmbedElement,
) -> Document? =
  #| (self) => (() => { const v = self.getSVGDocument(); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLEmbedElement::get_align(
  self : HTMLEmbedElement,
) -> String =
  #| (self) => self.align

///|
pub extern "js" fn HTMLEmbedElement::set_align(
  self : HTMLEmbedElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.align = value }

///|
pub extern "js" fn HTMLEmbedElement::get_name(
  self : HTMLEmbedElement,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn HTMLEmbedElement::set_name(
  self : HTMLEmbedElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.name = value }

///|
/// HTMLObjectElement interface
pub type HTMLObjectElement

///|
pub extern "js" fn HTMLObjectElement::to_js_value(
  self : HTMLObjectElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLObjectElement (unchecked)
pub extern "js" fn HTMLObjectElement::from_js_value(
  v : JsValue,
) -> HTMLObjectElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLObjectElement (checked with instanceof)
pub extern "js" fn HTMLObjectElement::from_js_value_opt(
  v : JsValue,
) -> HTMLObjectElement? =
  #| (v) => (v instanceof HTMLObjectElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLObjectElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_object_element(
  self : JsValue,
) -> HTMLObjectElement? =
  #| (self) => (self instanceof HTMLObjectElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLObjectElement (unchecked)
pub extern "js" fn JsValue::to_html_object_element(
  self : JsValue,
) -> HTMLObjectElement =
  #| (self) => self

///|
pub extern "js" fn HTMLObjectElement::to_html_element(
  self : HTMLObjectElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLObjectElement::to_element(
  self : HTMLObjectElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLObjectElement::to_node(self : HTMLObjectElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLObjectElement::to_event_target(
  self : HTMLObjectElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLObjectElement::new() -> HTMLObjectElement =
  #| () => new HTMLObjectElement()

///|
pub extern "js" fn HTMLObjectElement::get_data(
  self : HTMLObjectElement,
) -> String =
  #| (self) => self.data

///|
pub extern "js" fn HTMLObjectElement::set_data(
  self : HTMLObjectElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.data = value }

///|
pub extern "js" fn HTMLObjectElement::get_type(
  self : HTMLObjectElement,
) -> String =
  #| (self) => self.type

///|
pub extern "js" fn HTMLObjectElement::set_type(
  self : HTMLObjectElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.type = value }

///|
pub extern "js" fn HTMLObjectElement::get_name(
  self : HTMLObjectElement,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn HTMLObjectElement::set_name(
  self : HTMLObjectElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.name = value }

///|
pub extern "js" fn HTMLObjectElement::get_form(
  self : HTMLObjectElement,
) -> HTMLFormElement? =
  #| (self) => (() => { const v = self.form; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLObjectElement::get_width(
  self : HTMLObjectElement,
) -> String =
  #| (self) => self.width

///|
pub extern "js" fn HTMLObjectElement::set_width(
  self : HTMLObjectElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.width = value }

///|
pub extern "js" fn HTMLObjectElement::get_height(
  self : HTMLObjectElement,
) -> String =
  #| (self) => self.height

///|
pub extern "js" fn HTMLObjectElement::set_height(
  self : HTMLObjectElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.height = value }

///|
pub extern "js" fn HTMLObjectElement::get_content_document(
  self : HTMLObjectElement,
) -> Document? =
  #| (self) => (() => { const v = self.contentDocument; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLObjectElement::get_content_window(
  self : HTMLObjectElement,
) -> Window? =
  #| (self) => (() => { const v = self.contentWindow; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLObjectElement::get_svg_document(
  self : HTMLObjectElement,
) -> Document? =
  #| (self) => (() => { const v = self.getSVGDocument(); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLObjectElement::get_will_validate(
  self : HTMLObjectElement,
) -> Bool =
  #| (self) => self.willValidate

///|
pub extern "js" fn HTMLObjectElement::get_validity(
  self : HTMLObjectElement,
) -> ValidityState =
  #| (self) => self.validity

///|
pub extern "js" fn HTMLObjectElement::get_validation_message(
  self : HTMLObjectElement,
) -> String =
  #| (self) => self.validationMessage

///|
pub extern "js" fn HTMLObjectElement::check_validity(
  self : HTMLObjectElement,
) -> Bool =
  #| (self) => self.checkValidity()

///|
pub extern "js" fn HTMLObjectElement::report_validity(
  self : HTMLObjectElement,
) -> Bool =
  #| (self) => self.reportValidity()

///|
pub extern "js" fn HTMLObjectElement::set_custom_validity(
  self : HTMLObjectElement,
  error : String,
) -> Unit =
  #| (self, error) => self.setCustomValidity(error)

///|
pub extern "js" fn HTMLObjectElement::get_align(
  self : HTMLObjectElement,
) -> String =
  #| (self) => self.align

///|
pub extern "js" fn HTMLObjectElement::set_align(
  self : HTMLObjectElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.align = value }

///|
pub extern "js" fn HTMLObjectElement::get_archive(
  self : HTMLObjectElement,
) -> String =
  #| (self) => self.archive

///|
pub extern "js" fn HTMLObjectElement::set_archive(
  self : HTMLObjectElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.archive = value }

///|
pub extern "js" fn HTMLObjectElement::get_code(
  self : HTMLObjectElement,
) -> String =
  #| (self) => self.code

///|
pub extern "js" fn HTMLObjectElement::set_code(
  self : HTMLObjectElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.code = value }

///|
pub extern "js" fn HTMLObjectElement::get_declare(
  self : HTMLObjectElement,
) -> Bool =
  #| (self) => self.declare

///|
pub extern "js" fn HTMLObjectElement::set_declare(
  self : HTMLObjectElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.declare = value }

///|
pub extern "js" fn HTMLObjectElement::get_hspace(
  self : HTMLObjectElement,
) -> Int =
  #| (self) => self.hspace

///|
pub extern "js" fn HTMLObjectElement::set_hspace(
  self : HTMLObjectElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.hspace = value }

///|
pub extern "js" fn HTMLObjectElement::get_standby(
  self : HTMLObjectElement,
) -> String =
  #| (self) => self.standby

///|
pub extern "js" fn HTMLObjectElement::set_standby(
  self : HTMLObjectElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.standby = value }

///|
pub extern "js" fn HTMLObjectElement::get_vspace(
  self : HTMLObjectElement,
) -> Int =
  #| (self) => self.vspace

///|
pub extern "js" fn HTMLObjectElement::set_vspace(
  self : HTMLObjectElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.vspace = value }

///|
pub extern "js" fn HTMLObjectElement::get_code_base(
  self : HTMLObjectElement,
) -> String =
  #| (self) => self.codeBase

///|
pub extern "js" fn HTMLObjectElement::set_code_base(
  self : HTMLObjectElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.codeBase = value }

///|
pub extern "js" fn HTMLObjectElement::get_code_type(
  self : HTMLObjectElement,
) -> String =
  #| (self) => self.codeType

///|
pub extern "js" fn HTMLObjectElement::set_code_type(
  self : HTMLObjectElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.codeType = value }

///|
pub extern "js" fn HTMLObjectElement::get_use_map(
  self : HTMLObjectElement,
) -> String =
  #| (self) => self.useMap

///|
pub extern "js" fn HTMLObjectElement::set_use_map(
  self : HTMLObjectElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.useMap = value }

///|
pub extern "js" fn HTMLObjectElement::get_border(
  self : HTMLObjectElement,
) -> String =
  #| (self) => self.border

///|
pub extern "js" fn HTMLObjectElement::set_border(
  self : HTMLObjectElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.border = value }

///|
/// HTMLVideoElement interface
pub type HTMLVideoElement

///|
pub extern "js" fn HTMLVideoElement::to_js_value(
  self : HTMLVideoElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLVideoElement (unchecked)
pub extern "js" fn HTMLVideoElement::from_js_value(
  v : JsValue,
) -> HTMLVideoElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLVideoElement (checked with instanceof)
pub extern "js" fn HTMLVideoElement::from_js_value_opt(
  v : JsValue,
) -> HTMLVideoElement? =
  #| (v) => (v instanceof HTMLVideoElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLVideoElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_video_element(
  self : JsValue,
) -> HTMLVideoElement? =
  #| (self) => (self instanceof HTMLVideoElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLVideoElement (unchecked)
pub extern "js" fn JsValue::to_html_video_element(
  self : JsValue,
) -> HTMLVideoElement =
  #| (self) => self

///|
pub extern "js" fn HTMLVideoElement::to_html_media_element(
  self : HTMLVideoElement,
) -> HTMLMediaElement =
  #| (self) => self

///|
pub extern "js" fn HTMLVideoElement::to_html_element(
  self : HTMLVideoElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLVideoElement::to_element(
  self : HTMLVideoElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLVideoElement::to_node(self : HTMLVideoElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLVideoElement::to_event_target(
  self : HTMLVideoElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLVideoElement::new() -> HTMLVideoElement =
  #| () => new HTMLVideoElement()

///|
pub extern "js" fn HTMLVideoElement::get_width(self : HTMLVideoElement) -> Int =
  #| (self) => self.width

///|
pub extern "js" fn HTMLVideoElement::set_width(
  self : HTMLVideoElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.width = value }

///|
pub extern "js" fn HTMLVideoElement::get_height(self : HTMLVideoElement) -> Int =
  #| (self) => self.height

///|
pub extern "js" fn HTMLVideoElement::set_height(
  self : HTMLVideoElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.height = value }

///|
pub extern "js" fn HTMLVideoElement::get_video_width(
  self : HTMLVideoElement,
) -> Int =
  #| (self) => self.videoWidth

///|
pub extern "js" fn HTMLVideoElement::get_video_height(
  self : HTMLVideoElement,
) -> Int =
  #| (self) => self.videoHeight

///|
pub extern "js" fn HTMLVideoElement::get_poster(
  self : HTMLVideoElement,
) -> String =
  #| (self) => self.poster

///|
pub extern "js" fn HTMLVideoElement::set_poster(
  self : HTMLVideoElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.poster = value }

///|
pub extern "js" fn HTMLVideoElement::get_plays_inline(
  self : HTMLVideoElement,
) -> Bool =
  #| (self) => self.playsInline

///|
pub extern "js" fn HTMLVideoElement::set_plays_inline(
  self : HTMLVideoElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.playsInline = value }

///|
pub extern "js" fn HTMLVideoElement::get_video_playback_quality(
  self : HTMLVideoElement,
) -> VideoPlaybackQuality =
  #| (self) => self.getVideoPlaybackQuality()

///|
pub extern "js" fn HTMLVideoElement::request_video_frame_callback(
  self : HTMLVideoElement,
  callback : VideoFrameRequestCallback,
) -> Int =
  #| (self, callback) => self.requestVideoFrameCallback(callback)

///|
pub extern "js" fn HTMLVideoElement::cancel_video_frame_callback(
  self : HTMLVideoElement,
  handle : Int,
) -> Unit =
  #| (self, handle) => self.cancelVideoFrameCallback(handle)

///|
pub extern "js" fn HTMLVideoElement::request_picture_in_picture(
  self : HTMLVideoElement,
) -> Promise[PictureInPictureWindow] =
  #| (self) => self.requestPictureInPicture()

///|
pub extern "js" fn HTMLVideoElement::get_onenterpictureinpicture(
  self : HTMLVideoElement,
) -> EventHandler =
  #| (self) => self.onenterpictureinpicture

///|
pub extern "js" fn HTMLVideoElement::set_onenterpictureinpicture(
  self : HTMLVideoElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onenterpictureinpicture = value }

///|
pub extern "js" fn HTMLVideoElement::get_onleavepictureinpicture(
  self : HTMLVideoElement,
) -> EventHandler =
  #| (self) => self.onleavepictureinpicture

///|
pub extern "js" fn HTMLVideoElement::set_onleavepictureinpicture(
  self : HTMLVideoElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onleavepictureinpicture = value }

///|
pub extern "js" fn HTMLVideoElement::get_disable_picture_in_picture(
  self : HTMLVideoElement,
) -> Bool =
  #| (self) => self.disablePictureInPicture

///|
pub extern "js" fn HTMLVideoElement::set_disable_picture_in_picture(
  self : HTMLVideoElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.disablePictureInPicture = value }

///|
/// HTMLAudioElement interface
pub type HTMLAudioElement

///|
pub extern "js" fn HTMLAudioElement::to_js_value(
  self : HTMLAudioElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLAudioElement (unchecked)
pub extern "js" fn HTMLAudioElement::from_js_value(
  v : JsValue,
) -> HTMLAudioElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLAudioElement (checked with instanceof)
pub extern "js" fn HTMLAudioElement::from_js_value_opt(
  v : JsValue,
) -> HTMLAudioElement? =
  #| (v) => (v instanceof HTMLAudioElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLAudioElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_audio_element(
  self : JsValue,
) -> HTMLAudioElement? =
  #| (self) => (self instanceof HTMLAudioElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLAudioElement (unchecked)
pub extern "js" fn JsValue::to_html_audio_element(
  self : JsValue,
) -> HTMLAudioElement =
  #| (self) => self

///|
pub extern "js" fn HTMLAudioElement::to_html_media_element(
  self : HTMLAudioElement,
) -> HTMLMediaElement =
  #| (self) => self

///|
pub extern "js" fn HTMLAudioElement::to_html_element(
  self : HTMLAudioElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLAudioElement::to_element(
  self : HTMLAudioElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLAudioElement::to_node(self : HTMLAudioElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLAudioElement::to_event_target(
  self : HTMLAudioElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLAudioElement::new() -> HTMLAudioElement =
  #| () => new HTMLAudioElement()

///|
/// HTMLTrackElement interface
pub type HTMLTrackElement

///|
pub extern "js" fn HTMLTrackElement::to_js_value(
  self : HTMLTrackElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLTrackElement (unchecked)
pub extern "js" fn HTMLTrackElement::from_js_value(
  v : JsValue,
) -> HTMLTrackElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLTrackElement (checked with instanceof)
pub extern "js" fn HTMLTrackElement::from_js_value_opt(
  v : JsValue,
) -> HTMLTrackElement? =
  #| (v) => (v instanceof HTMLTrackElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLTrackElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_track_element(
  self : JsValue,
) -> HTMLTrackElement? =
  #| (self) => (self instanceof HTMLTrackElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLTrackElement (unchecked)
pub extern "js" fn JsValue::to_html_track_element(
  self : JsValue,
) -> HTMLTrackElement =
  #| (self) => self

///|
pub extern "js" fn HTMLTrackElement::to_html_element(
  self : HTMLTrackElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLTrackElement::to_element(
  self : HTMLTrackElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLTrackElement::to_node(self : HTMLTrackElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLTrackElement::to_event_target(
  self : HTMLTrackElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLTrackElement::new() -> HTMLTrackElement =
  #| () => new HTMLTrackElement()

///|
pub extern "js" fn HTMLTrackElement::get_kind(
  self : HTMLTrackElement,
) -> String =
  #| (self) => self.kind

///|
pub extern "js" fn HTMLTrackElement::set_kind(
  self : HTMLTrackElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.kind = value }

///|
pub extern "js" fn HTMLTrackElement::get_src(self : HTMLTrackElement) -> String =
  #| (self) => self.src

///|
pub extern "js" fn HTMLTrackElement::set_src(
  self : HTMLTrackElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.src = value }

///|
pub extern "js" fn HTMLTrackElement::get_srclang(
  self : HTMLTrackElement,
) -> String =
  #| (self) => self.srclang

///|
pub extern "js" fn HTMLTrackElement::set_srclang(
  self : HTMLTrackElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.srclang = value }

///|
pub extern "js" fn HTMLTrackElement::get_label(
  self : HTMLTrackElement,
) -> String =
  #| (self) => self.label

///|
pub extern "js" fn HTMLTrackElement::set_label(
  self : HTMLTrackElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.label = value }

///|
pub extern "js" fn HTMLTrackElement::get_default(
  self : HTMLTrackElement,
) -> Bool =
  #| (self) => self.default

///|
pub extern "js" fn HTMLTrackElement::set_default(
  self : HTMLTrackElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.default = value }

// HTMLTrackElement.NONE

///|
pub let html_track_element_none : Int = 0

// HTMLTrackElement.LOADING

///|
pub let html_track_element_loading : Int = 1

// HTMLTrackElement.LOADED

///|
pub let html_track_element_loaded : Int = 2

// HTMLTrackElement.ERROR

///|
pub let html_track_element_error : Int = 3

///|
pub extern "js" fn HTMLTrackElement::get_ready_state(
  self : HTMLTrackElement,
) -> Int =
  #| (self) => self.readyState

///|
pub extern "js" fn HTMLTrackElement::get_track(
  self : HTMLTrackElement,
) -> TextTrack =
  #| (self) => self.track

///|
/// HTMLMediaElement interface
pub type HTMLMediaElement

///|
pub extern "js" fn HTMLMediaElement::to_js_value(
  self : HTMLMediaElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLMediaElement (unchecked)
pub extern "js" fn HTMLMediaElement::from_js_value(
  v : JsValue,
) -> HTMLMediaElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLMediaElement (checked with instanceof)
pub extern "js" fn HTMLMediaElement::from_js_value_opt(
  v : JsValue,
) -> HTMLMediaElement? =
  #| (v) => (v instanceof HTMLMediaElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLMediaElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_media_element(
  self : JsValue,
) -> HTMLMediaElement? =
  #| (self) => (self instanceof HTMLMediaElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLMediaElement (unchecked)
pub extern "js" fn JsValue::to_html_media_element(
  self : JsValue,
) -> HTMLMediaElement =
  #| (self) => self

///|
pub extern "js" fn HTMLMediaElement::to_html_element(
  self : HTMLMediaElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLMediaElement::to_element(
  self : HTMLMediaElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLMediaElement::to_node(self : HTMLMediaElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLMediaElement::to_event_target(
  self : HTMLMediaElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLMediaElement::as_html_video_element(
  self : HTMLMediaElement,
) -> HTMLVideoElement? =
  #| (self) => (self instanceof HTMLVideoElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLMediaElement::as_html_audio_element(
  self : HTMLMediaElement,
) -> HTMLAudioElement? =
  #| (self) => (self instanceof HTMLAudioElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn HTMLMediaElement::get_error(
  self : HTMLMediaElement,
) -> MediaError? =
  #| (self) => (() => { const v = self.error; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLMediaElement::get_src(self : HTMLMediaElement) -> String =
  #| (self) => self.src

///|
pub extern "js" fn HTMLMediaElement::set_src(
  self : HTMLMediaElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.src = value }

///|
pub extern "js" fn HTMLMediaElement::get_src_object(
  self : HTMLMediaElement,
) -> MediaProvider? =
  #| (self) => (() => { const v = self.srcObject; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLMediaElement::set_src_object(
  self : HTMLMediaElement,
  value : MediaProvider?,
) -> Unit =
  #| (self, value) => { self.srcObject = (value.$tag === 1 ? value._0 : null) }

///|
pub extern "js" fn HTMLMediaElement::get_current_src(
  self : HTMLMediaElement,
) -> String =
  #| (self) => self.currentSrc

///|
pub extern "js" fn HTMLMediaElement::get_cross_origin(
  self : HTMLMediaElement,
) -> String? =
  #| (self) => (self.crossOrigin) ?? undefined

///|
pub extern "js" fn HTMLMediaElement::set_cross_origin(
  self : HTMLMediaElement,
  value : String?,
) -> Unit =
  #| (self, value) => { self.crossOrigin = value }

// HTMLMediaElement.NETWORK_EMPTY

///|
pub let html_media_element_network_empty : Int = 0

// HTMLMediaElement.NETWORK_IDLE

///|
pub let html_media_element_network_idle : Int = 1

// HTMLMediaElement.NETWORK_LOADING

///|
pub let html_media_element_network_loading : Int = 2

// HTMLMediaElement.NETWORK_NO_SOURCE

///|
pub let html_media_element_network_no_source : Int = 3

///|
pub extern "js" fn HTMLMediaElement::get_network_state(
  self : HTMLMediaElement,
) -> Int =
  #| (self) => self.networkState

///|
pub extern "js" fn HTMLMediaElement::get_preload(
  self : HTMLMediaElement,
) -> String =
  #| (self) => self.preload

///|
pub extern "js" fn HTMLMediaElement::set_preload(
  self : HTMLMediaElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.preload = value }

///|
pub extern "js" fn HTMLMediaElement::get_buffered(
  self : HTMLMediaElement,
) -> TimeRanges =
  #| (self) => self.buffered

///|
pub extern "js" fn HTMLMediaElement::load(self : HTMLMediaElement) -> Unit =
  #| (self) => self.load()

///|
pub extern "js" fn HTMLMediaElement::can_play_type(
  self : HTMLMediaElement,
  type_ : String,
) -> CanPlayTypeResult =
  #| (self, type_) => self.canPlayType(type_)

// HTMLMediaElement.HAVE_NOTHING

///|
pub let html_media_element_have_nothing : Int = 0

// HTMLMediaElement.HAVE_METADATA

///|
pub let html_media_element_have_metadata : Int = 1

// HTMLMediaElement.HAVE_CURRENT_DATA

///|
pub let html_media_element_have_current_data : Int = 2

// HTMLMediaElement.HAVE_FUTURE_DATA

///|
pub let html_media_element_have_future_data : Int = 3

// HTMLMediaElement.HAVE_ENOUGH_DATA

///|
pub let html_media_element_have_enough_data : Int = 4

///|
pub extern "js" fn HTMLMediaElement::get_ready_state(
  self : HTMLMediaElement,
) -> Int =
  #| (self) => self.readyState

///|
pub extern "js" fn HTMLMediaElement::get_seeking(
  self : HTMLMediaElement,
) -> Bool =
  #| (self) => self.seeking

///|
pub extern "js" fn HTMLMediaElement::get_current_time(
  self : HTMLMediaElement,
) -> Double =
  #| (self) => self.currentTime

///|
pub extern "js" fn HTMLMediaElement::set_current_time(
  self : HTMLMediaElement,
  value : Double,
) -> Unit =
  #| (self, value) => { self.currentTime = value }

///|
pub extern "js" fn HTMLMediaElement::fast_seek(
  self : HTMLMediaElement,
  time : Double,
) -> Unit =
  #| (self, time) => self.fastSeek(time)

///|
pub extern "js" fn HTMLMediaElement::get_duration(
  self : HTMLMediaElement,
) -> Double =
  #| (self) => self.duration

///|
pub extern "js" fn HTMLMediaElement::get_start_date(
  self : HTMLMediaElement,
) -> JsValue =
  #| (self) => self.getStartDate()

///|
pub extern "js" fn HTMLMediaElement::get_paused(
  self : HTMLMediaElement,
) -> Bool =
  #| (self) => self.paused

///|
pub extern "js" fn HTMLMediaElement::get_default_playback_rate(
  self : HTMLMediaElement,
) -> Double =
  #| (self) => self.defaultPlaybackRate

///|
pub extern "js" fn HTMLMediaElement::set_default_playback_rate(
  self : HTMLMediaElement,
  value : Double,
) -> Unit =
  #| (self, value) => { self.defaultPlaybackRate = value }

///|
pub extern "js" fn HTMLMediaElement::get_playback_rate(
  self : HTMLMediaElement,
) -> Double =
  #| (self) => self.playbackRate

///|
pub extern "js" fn HTMLMediaElement::set_playback_rate(
  self : HTMLMediaElement,
  value : Double,
) -> Unit =
  #| (self, value) => { self.playbackRate = value }

///|
pub extern "js" fn HTMLMediaElement::get_preserves_pitch(
  self : HTMLMediaElement,
) -> Bool =
  #| (self) => self.preservesPitch

///|
pub extern "js" fn HTMLMediaElement::set_preserves_pitch(
  self : HTMLMediaElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.preservesPitch = value }

///|
pub extern "js" fn HTMLMediaElement::get_played(
  self : HTMLMediaElement,
) -> TimeRanges =
  #| (self) => self.played

///|
pub extern "js" fn HTMLMediaElement::get_seekable(
  self : HTMLMediaElement,
) -> TimeRanges =
  #| (self) => self.seekable

///|
pub extern "js" fn HTMLMediaElement::get_ended(self : HTMLMediaElement) -> Bool =
  #| (self) => self.ended

///|
pub extern "js" fn HTMLMediaElement::get_autoplay(
  self : HTMLMediaElement,
) -> Bool =
  #| (self) => self.autoplay

///|
pub extern "js" fn HTMLMediaElement::set_autoplay(
  self : HTMLMediaElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.autoplay = value }

///|
pub extern "js" fn HTMLMediaElement::get_loop(self : HTMLMediaElement) -> Bool =
  #| (self) => self.loop

///|
pub extern "js" fn HTMLMediaElement::set_loop(
  self : HTMLMediaElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.loop = value }

///|
pub extern "js" fn HTMLMediaElement::play(
  self : HTMLMediaElement,
) -> Promise[Unit] =
  #| (self) => self.play()

///|
pub extern "js" fn HTMLMediaElement::pause(self : HTMLMediaElement) -> Unit =
  #| (self) => self.pause()

///|
pub extern "js" fn HTMLMediaElement::get_controls(
  self : HTMLMediaElement,
) -> Bool =
  #| (self) => self.controls

///|
pub extern "js" fn HTMLMediaElement::set_controls(
  self : HTMLMediaElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.controls = value }

///|
pub extern "js" fn HTMLMediaElement::get_volume(
  self : HTMLMediaElement,
) -> Double =
  #| (self) => self.volume

///|
pub extern "js" fn HTMLMediaElement::set_volume(
  self : HTMLMediaElement,
  value : Double,
) -> Unit =
  #| (self, value) => { self.volume = value }

///|
pub extern "js" fn HTMLMediaElement::get_muted(self : HTMLMediaElement) -> Bool =
  #| (self) => self.muted

///|
pub extern "js" fn HTMLMediaElement::set_muted(
  self : HTMLMediaElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.muted = value }

///|
pub extern "js" fn HTMLMediaElement::get_default_muted(
  self : HTMLMediaElement,
) -> Bool =
  #| (self) => self.defaultMuted

///|
pub extern "js" fn HTMLMediaElement::set_default_muted(
  self : HTMLMediaElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.defaultMuted = value }

///|
pub extern "js" fn HTMLMediaElement::get_audio_tracks(
  self : HTMLMediaElement,
) -> AudioTrackList =
  #| (self) => self.audioTracks

///|
pub extern "js" fn HTMLMediaElement::get_video_tracks(
  self : HTMLMediaElement,
) -> VideoTrackList =
  #| (self) => self.videoTracks

///|
pub extern "js" fn HTMLMediaElement::get_text_tracks(
  self : HTMLMediaElement,
) -> TextTrackList =
  #| (self) => self.textTracks

///|
pub extern "js" fn HTMLMediaElement::add_text_track(
  self : HTMLMediaElement,
  kind : TextTrackKind,
) -> TextTrack =
  #| (self, kind) => self.addTextTrack(['subtitles', 'captions', 'descriptions', 'chapters', 'metadata'][kind])

///|
pub extern "js" fn HTMLMediaElement::add_text_track_with_language(
  self : HTMLMediaElement,
  kind : TextTrackKind,
  label : String,
  language : String,
) -> TextTrack =
  #| (self, kind, label, language) => self.addTextTrack(['subtitles', 'captions', 'descriptions', 'chapters', 'metadata'][kind], label, language)

///|
pub extern "js" fn HTMLMediaElement::get_sink_id(
  self : HTMLMediaElement,
) -> String =
  #| (self) => self.sinkId

///|
pub extern "js" fn HTMLMediaElement::set_sink_id(
  self : HTMLMediaElement,
  sink_id : String,
) -> Promise[Unit] =
  #| (self, sink_id) => self.setSinkId(sink_id)

///|
pub extern "js" fn HTMLMediaElement::get_media_keys(
  self : HTMLMediaElement,
) -> MediaKeys? =
  #| (self) => (() => { const v = self.mediaKeys; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLMediaElement::get_onencrypted(
  self : HTMLMediaElement,
) -> EventHandler =
  #| (self) => self.onencrypted

///|
pub extern "js" fn HTMLMediaElement::set_onencrypted(
  self : HTMLMediaElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onencrypted = value }

///|
pub extern "js" fn HTMLMediaElement::get_onwaitingforkey(
  self : HTMLMediaElement,
) -> EventHandler =
  #| (self) => self.onwaitingforkey

///|
pub extern "js" fn HTMLMediaElement::set_onwaitingforkey(
  self : HTMLMediaElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onwaitingforkey = value }

///|
pub extern "js" fn HTMLMediaElement::set_media_keys(
  self : HTMLMediaElement,
  media_keys : MediaKeys?,
) -> Promise[Unit] =
  #| (self, media_keys) => self.setMediaKeys((media_keys.$tag === 1 ? media_keys._0 : null))

///|
pub extern "js" fn HTMLMediaElement::capture_stream(
  self : HTMLMediaElement,
) -> MediaStream =
  #| (self) => self.captureStream()

///|
pub extern "js" fn HTMLMediaElement::get_remote(
  self : HTMLMediaElement,
) -> RemotePlayback =
  #| (self) => self.remote

///|
pub extern "js" fn HTMLMediaElement::get_disable_remote_playback(
  self : HTMLMediaElement,
) -> Bool =
  #| (self) => self.disableRemotePlayback

///|
pub extern "js" fn HTMLMediaElement::set_disable_remote_playback(
  self : HTMLMediaElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.disableRemotePlayback = value }

///|
/// MediaError interface
pub type MediaError

///|
pub extern "js" fn MediaError::to_js_value(self : MediaError) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to MediaError (unchecked)
pub extern "js" fn MediaError::from_js_value(v : JsValue) -> MediaError =
  #| (v) => v

///|
/// Safely cast JsValue to MediaError (checked with instanceof)
pub extern "js" fn MediaError::from_js_value_opt(v : JsValue) -> MediaError? =
  #| (v) => (v instanceof MediaError) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MediaError (checked with instanceof)
pub extern "js" fn JsValue::as_media_error(self : JsValue) -> MediaError? =
  #| (self) => (self instanceof MediaError) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MediaError (unchecked)
pub extern "js" fn JsValue::to_media_error(self : JsValue) -> MediaError =
  #| (self) => self

// MediaError.MEDIA_ERR_ABORTED

///|
pub let media_error_media_err_aborted : Int = 1

// MediaError.MEDIA_ERR_NETWORK

///|
pub let media_error_media_err_network : Int = 2

// MediaError.MEDIA_ERR_DECODE

///|
pub let media_error_media_err_decode : Int = 3

// MediaError.MEDIA_ERR_SRC_NOT_SUPPORTED

///|
pub let media_error_media_err_src_not_supported : Int = 4

///|
pub extern "js" fn MediaError::get_code(self : MediaError) -> Int =
  #| (self) => self.code

///|
pub extern "js" fn MediaError::get_message(self : MediaError) -> String =
  #| (self) => self.message

///|
/// AudioTrackList interface
pub type AudioTrackList

///|
pub extern "js" fn AudioTrackList::to_js_value(
  self : AudioTrackList,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AudioTrackList (unchecked)
pub extern "js" fn AudioTrackList::from_js_value(v : JsValue) -> AudioTrackList =
  #| (v) => v

///|
/// Safely cast JsValue to AudioTrackList (checked with instanceof)
pub extern "js" fn AudioTrackList::from_js_value_opt(
  v : JsValue,
) -> AudioTrackList? =
  #| (v) => (v instanceof AudioTrackList) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AudioTrackList (checked with instanceof)
pub extern "js" fn JsValue::as_audio_track_list(
  self : JsValue,
) -> AudioTrackList? =
  #| (self) => (self instanceof AudioTrackList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AudioTrackList (unchecked)
pub extern "js" fn JsValue::to_audio_track_list(
  self : JsValue,
) -> AudioTrackList =
  #| (self) => self

///|
pub extern "js" fn AudioTrackList::to_event_target(
  self : AudioTrackList,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn AudioTrackList::get_length(self : AudioTrackList) -> Int =
  #| (self) => self.length

///|
#alias("_[_]")
pub extern "js" fn AudioTrackList::get(
  self : AudioTrackList,
  index : Int,
) -> AudioTrack =
  #| (self, index) => self[index]

///|
pub extern "js" fn AudioTrackList::get_track_by_id(
  self : AudioTrackList,
  id : String,
) -> AudioTrack? =
  #| (self, id) => (() => { const v = self.getTrackById(id); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn AudioTrackList::get_onchange(
  self : AudioTrackList,
) -> EventHandler =
  #| (self) => self.onchange

///|
pub extern "js" fn AudioTrackList::set_onchange(
  self : AudioTrackList,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onchange = value }

///|
pub extern "js" fn AudioTrackList::get_onaddtrack(
  self : AudioTrackList,
) -> EventHandler =
  #| (self) => self.onaddtrack

///|
pub extern "js" fn AudioTrackList::set_onaddtrack(
  self : AudioTrackList,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onaddtrack = value }

///|
pub extern "js" fn AudioTrackList::get_onremovetrack(
  self : AudioTrackList,
) -> EventHandler =
  #| (self) => self.onremovetrack

///|
pub extern "js" fn AudioTrackList::set_onremovetrack(
  self : AudioTrackList,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onremovetrack = value }

///|
/// AudioTrack interface
pub type AudioTrack

///|
pub extern "js" fn AudioTrack::to_js_value(self : AudioTrack) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AudioTrack (unchecked)
pub extern "js" fn AudioTrack::from_js_value(v : JsValue) -> AudioTrack =
  #| (v) => v

///|
/// Safely cast JsValue to AudioTrack (checked with instanceof)
pub extern "js" fn AudioTrack::from_js_value_opt(v : JsValue) -> AudioTrack? =
  #| (v) => (v instanceof AudioTrack) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AudioTrack (checked with instanceof)
pub extern "js" fn JsValue::as_audio_track(self : JsValue) -> AudioTrack? =
  #| (self) => (self instanceof AudioTrack) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AudioTrack (unchecked)
pub extern "js" fn JsValue::to_audio_track(self : JsValue) -> AudioTrack =
  #| (self) => self

///|
pub extern "js" fn AudioTrack::get_id(self : AudioTrack) -> String =
  #| (self) => self.id

///|
pub extern "js" fn AudioTrack::get_kind(self : AudioTrack) -> String =
  #| (self) => self.kind

///|
pub extern "js" fn AudioTrack::get_label(self : AudioTrack) -> String =
  #| (self) => self.label

///|
pub extern "js" fn AudioTrack::get_language(self : AudioTrack) -> String =
  #| (self) => self.language

///|
pub extern "js" fn AudioTrack::get_enabled(self : AudioTrack) -> Bool =
  #| (self) => self.enabled

///|
pub extern "js" fn AudioTrack::set_enabled(
  self : AudioTrack,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.enabled = value }

///|
pub extern "js" fn AudioTrack::get_source_buffer(
  self : AudioTrack,
) -> SourceBuffer? =
  #| (self) => (() => { const v = self.sourceBuffer; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// VideoTrackList interface
pub type VideoTrackList

///|
pub extern "js" fn VideoTrackList::to_js_value(
  self : VideoTrackList,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to VideoTrackList (unchecked)
pub extern "js" fn VideoTrackList::from_js_value(v : JsValue) -> VideoTrackList =
  #| (v) => v

///|
/// Safely cast JsValue to VideoTrackList (checked with instanceof)
pub extern "js" fn VideoTrackList::from_js_value_opt(
  v : JsValue,
) -> VideoTrackList? =
  #| (v) => (v instanceof VideoTrackList) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to VideoTrackList (checked with instanceof)
pub extern "js" fn JsValue::as_video_track_list(
  self : JsValue,
) -> VideoTrackList? =
  #| (self) => (self instanceof VideoTrackList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to VideoTrackList (unchecked)
pub extern "js" fn JsValue::to_video_track_list(
  self : JsValue,
) -> VideoTrackList =
  #| (self) => self

///|
pub extern "js" fn VideoTrackList::to_event_target(
  self : VideoTrackList,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn VideoTrackList::get_length(self : VideoTrackList) -> Int =
  #| (self) => self.length

///|
#alias("_[_]")
pub extern "js" fn VideoTrackList::get(
  self : VideoTrackList,
  index : Int,
) -> VideoTrack =
  #| (self, index) => self[index]

///|
pub extern "js" fn VideoTrackList::get_track_by_id(
  self : VideoTrackList,
  id : String,
) -> VideoTrack? =
  #| (self, id) => (() => { const v = self.getTrackById(id); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn VideoTrackList::get_selected_index(
  self : VideoTrackList,
) -> Int =
  #| (self) => self.selectedIndex

///|
pub extern "js" fn VideoTrackList::get_onchange(
  self : VideoTrackList,
) -> EventHandler =
  #| (self) => self.onchange

///|
pub extern "js" fn VideoTrackList::set_onchange(
  self : VideoTrackList,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onchange = value }

///|
pub extern "js" fn VideoTrackList::get_onaddtrack(
  self : VideoTrackList,
) -> EventHandler =
  #| (self) => self.onaddtrack

///|
pub extern "js" fn VideoTrackList::set_onaddtrack(
  self : VideoTrackList,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onaddtrack = value }

///|
pub extern "js" fn VideoTrackList::get_onremovetrack(
  self : VideoTrackList,
) -> EventHandler =
  #| (self) => self.onremovetrack

///|
pub extern "js" fn VideoTrackList::set_onremovetrack(
  self : VideoTrackList,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onremovetrack = value }

///|
/// VideoTrack interface
pub type VideoTrack

///|
pub extern "js" fn VideoTrack::to_js_value(self : VideoTrack) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to VideoTrack (unchecked)
pub extern "js" fn VideoTrack::from_js_value(v : JsValue) -> VideoTrack =
  #| (v) => v

///|
/// Safely cast JsValue to VideoTrack (checked with instanceof)
pub extern "js" fn VideoTrack::from_js_value_opt(v : JsValue) -> VideoTrack? =
  #| (v) => (v instanceof VideoTrack) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to VideoTrack (checked with instanceof)
pub extern "js" fn JsValue::as_video_track(self : JsValue) -> VideoTrack? =
  #| (self) => (self instanceof VideoTrack) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to VideoTrack (unchecked)
pub extern "js" fn JsValue::to_video_track(self : JsValue) -> VideoTrack =
  #| (self) => self

///|
pub extern "js" fn VideoTrack::get_id(self : VideoTrack) -> String =
  #| (self) => self.id

///|
pub extern "js" fn VideoTrack::get_kind(self : VideoTrack) -> String =
  #| (self) => self.kind

///|
pub extern "js" fn VideoTrack::get_label(self : VideoTrack) -> String =
  #| (self) => self.label

///|
pub extern "js" fn VideoTrack::get_language(self : VideoTrack) -> String =
  #| (self) => self.language

///|
pub extern "js" fn VideoTrack::get_selected(self : VideoTrack) -> Bool =
  #| (self) => self.selected

///|
pub extern "js" fn VideoTrack::set_selected(
  self : VideoTrack,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.selected = value }

///|
pub extern "js" fn VideoTrack::get_source_buffer(
  self : VideoTrack,
) -> SourceBuffer? =
  #| (self) => (() => { const v = self.sourceBuffer; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// TextTrackList interface
pub type TextTrackList

///|
pub extern "js" fn TextTrackList::to_js_value(self : TextTrackList) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to TextTrackList (unchecked)
pub extern "js" fn TextTrackList::from_js_value(v : JsValue) -> TextTrackList =
  #| (v) => v

///|
/// Safely cast JsValue to TextTrackList (checked with instanceof)
pub extern "js" fn TextTrackList::from_js_value_opt(
  v : JsValue,
) -> TextTrackList? =
  #| (v) => (v instanceof TextTrackList) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to TextTrackList (checked with instanceof)
pub extern "js" fn JsValue::as_text_track_list(
  self : JsValue,
) -> TextTrackList? =
  #| (self) => (self instanceof TextTrackList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to TextTrackList (unchecked)
pub extern "js" fn JsValue::to_text_track_list(self : JsValue) -> TextTrackList =
  #| (self) => self

///|
pub extern "js" fn TextTrackList::to_event_target(
  self : TextTrackList,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn TextTrackList::get_length(self : TextTrackList) -> Int =
  #| (self) => self.length

///|
#alias("_[_]")
pub extern "js" fn TextTrackList::get(
  self : TextTrackList,
  index : Int,
) -> TextTrack =
  #| (self, index) => self[index]

///|
pub extern "js" fn TextTrackList::get_track_by_id(
  self : TextTrackList,
  id : String,
) -> TextTrack? =
  #| (self, id) => (() => { const v = self.getTrackById(id); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn TextTrackList::get_onchange(
  self : TextTrackList,
) -> EventHandler =
  #| (self) => self.onchange

///|
pub extern "js" fn TextTrackList::set_onchange(
  self : TextTrackList,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onchange = value }

///|
pub extern "js" fn TextTrackList::get_onaddtrack(
  self : TextTrackList,
) -> EventHandler =
  #| (self) => self.onaddtrack

///|
pub extern "js" fn TextTrackList::set_onaddtrack(
  self : TextTrackList,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onaddtrack = value }

///|
pub extern "js" fn TextTrackList::get_onremovetrack(
  self : TextTrackList,
) -> EventHandler =
  #| (self) => self.onremovetrack

///|
pub extern "js" fn TextTrackList::set_onremovetrack(
  self : TextTrackList,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onremovetrack = value }

///|
/// TextTrack interface
pub type TextTrack

///|
pub extern "js" fn TextTrack::to_js_value(self : TextTrack) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to TextTrack (unchecked)
pub extern "js" fn TextTrack::from_js_value(v : JsValue) -> TextTrack =
  #| (v) => v

///|
/// Safely cast JsValue to TextTrack (checked with instanceof)
pub extern "js" fn TextTrack::from_js_value_opt(v : JsValue) -> TextTrack? =
  #| (v) => (v instanceof TextTrack) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to TextTrack (checked with instanceof)
pub extern "js" fn JsValue::as_text_track(self : JsValue) -> TextTrack? =
  #| (self) => (self instanceof TextTrack) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to TextTrack (unchecked)
pub extern "js" fn JsValue::to_text_track(self : JsValue) -> TextTrack =
  #| (self) => self

///|
pub extern "js" fn TextTrack::to_event_target(self : TextTrack) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn TextTrack::get_kind(self : TextTrack) -> TextTrackKind =
  #| (self) => ['subtitles', 'captions', 'descriptions', 'chapters', 'metadata'].indexOf(self.kind)

///|
pub extern "js" fn TextTrack::get_label(self : TextTrack) -> String =
  #| (self) => self.label

///|
pub extern "js" fn TextTrack::get_language(self : TextTrack) -> String =
  #| (self) => self.language

///|
pub extern "js" fn TextTrack::get_id(self : TextTrack) -> String =
  #| (self) => self.id

///|
pub extern "js" fn TextTrack::get_in_band_metadata_track_dispatch_type(
  self : TextTrack,
) -> String =
  #| (self) => self.inBandMetadataTrackDispatchType

///|
pub extern "js" fn TextTrack::get_mode(self : TextTrack) -> TextTrackMode =
  #| (self) => ['disabled', 'hidden', 'showing'].indexOf(self.mode)

///|
pub extern "js" fn TextTrack::set_mode(
  self : TextTrack,
  value : TextTrackMode,
) -> Unit =
  #| (self, value) => { self.mode = ['disabled', 'hidden', 'showing'][value] }

///|
pub extern "js" fn TextTrack::get_cues(self : TextTrack) -> TextTrackCueList? =
  #| (self) => (() => { const v = self.cues; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn TextTrack::get_active_cues(
  self : TextTrack,
) -> TextTrackCueList? =
  #| (self) => (() => { const v = self.activeCues; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn TextTrack::add_cue(
  self : TextTrack,
  cue : TextTrackCue,
) -> Unit =
  #| (self, cue) => self.addCue(cue)

///|
pub extern "js" fn TextTrack::remove_cue(
  self : TextTrack,
  cue : TextTrackCue,
) -> Unit =
  #| (self, cue) => self.removeCue(cue)

///|
pub extern "js" fn TextTrack::get_oncuechange(self : TextTrack) -> EventHandler =
  #| (self) => self.oncuechange

///|
pub extern "js" fn TextTrack::set_oncuechange(
  self : TextTrack,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncuechange = value }

///|
pub extern "js" fn TextTrack::get_source_buffer(
  self : TextTrack,
) -> SourceBuffer? =
  #| (self) => (() => { const v = self.sourceBuffer; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// TextTrackCueList interface
pub type TextTrackCueList

///|
pub extern "js" fn TextTrackCueList::to_js_value(
  self : TextTrackCueList,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to TextTrackCueList (unchecked)
pub extern "js" fn TextTrackCueList::from_js_value(
  v : JsValue,
) -> TextTrackCueList =
  #| (v) => v

///|
/// Safely cast JsValue to TextTrackCueList (checked with instanceof)
pub extern "js" fn TextTrackCueList::from_js_value_opt(
  v : JsValue,
) -> TextTrackCueList? =
  #| (v) => (v instanceof TextTrackCueList) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to TextTrackCueList (checked with instanceof)
pub extern "js" fn JsValue::as_text_track_cue_list(
  self : JsValue,
) -> TextTrackCueList? =
  #| (self) => (self instanceof TextTrackCueList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to TextTrackCueList (unchecked)
pub extern "js" fn JsValue::to_text_track_cue_list(
  self : JsValue,
) -> TextTrackCueList =
  #| (self) => self

///|
pub extern "js" fn TextTrackCueList::get_length(self : TextTrackCueList) -> Int =
  #| (self) => self.length

///|
#alias("_[_]")
pub extern "js" fn TextTrackCueList::get(
  self : TextTrackCueList,
  index : Int,
) -> TextTrackCue =
  #| (self, index) => self[index]

///|
pub extern "js" fn TextTrackCueList::get_cue_by_id(
  self : TextTrackCueList,
  id : String,
) -> TextTrackCue? =
  #| (self, id) => (() => { const v = self.getCueById(id); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// TextTrackCue interface
pub type TextTrackCue

///|
pub extern "js" fn TextTrackCue::to_js_value(self : TextTrackCue) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to TextTrackCue (unchecked)
pub extern "js" fn TextTrackCue::from_js_value(v : JsValue) -> TextTrackCue =
  #| (v) => v

///|
/// Safely cast JsValue to TextTrackCue (checked with instanceof)
pub extern "js" fn TextTrackCue::from_js_value_opt(
  v : JsValue,
) -> TextTrackCue? =
  #| (v) => (v instanceof TextTrackCue) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to TextTrackCue (checked with instanceof)
pub extern "js" fn JsValue::as_text_track_cue(self : JsValue) -> TextTrackCue? =
  #| (self) => (self instanceof TextTrackCue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to TextTrackCue (unchecked)
pub extern "js" fn JsValue::to_text_track_cue(self : JsValue) -> TextTrackCue =
  #| (self) => self

///|
pub extern "js" fn TextTrackCue::to_event_target(
  self : TextTrackCue,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn TextTrackCue::as_vtt_cue(self : TextTrackCue) -> VTTCue? =
  #| (self) => (self instanceof VTTCue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn TextTrackCue::as_data_cue(self : TextTrackCue) -> DataCue? =
  #| (self) => (self instanceof DataCue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn TextTrackCue::get_track(self : TextTrackCue) -> TextTrack? =
  #| (self) => (() => { const v = self.track; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn TextTrackCue::get_id(self : TextTrackCue) -> String =
  #| (self) => self.id

///|
pub extern "js" fn TextTrackCue::set_id(
  self : TextTrackCue,
  value : String,
) -> Unit =
  #| (self, value) => { self.id = value }

///|
pub extern "js" fn TextTrackCue::get_start_time(self : TextTrackCue) -> Double =
  #| (self) => self.startTime

///|
pub extern "js" fn TextTrackCue::set_start_time(
  self : TextTrackCue,
  value : Double,
) -> Unit =
  #| (self, value) => { self.startTime = value }

///|
pub extern "js" fn TextTrackCue::get_end_time(self : TextTrackCue) -> Double =
  #| (self) => self.endTime

///|
pub extern "js" fn TextTrackCue::set_end_time(
  self : TextTrackCue,
  value : Double,
) -> Unit =
  #| (self, value) => { self.endTime = value }

///|
pub extern "js" fn TextTrackCue::get_pause_on_exit(self : TextTrackCue) -> Bool =
  #| (self) => self.pauseOnExit

///|
pub extern "js" fn TextTrackCue::set_pause_on_exit(
  self : TextTrackCue,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.pauseOnExit = value }

///|
pub extern "js" fn TextTrackCue::get_onenter(
  self : TextTrackCue,
) -> EventHandler =
  #| (self) => self.onenter

///|
pub extern "js" fn TextTrackCue::set_onenter(
  self : TextTrackCue,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onenter = value }

///|
pub extern "js" fn TextTrackCue::get_onexit(
  self : TextTrackCue,
) -> EventHandler =
  #| (self) => self.onexit

///|
pub extern "js" fn TextTrackCue::set_onexit(
  self : TextTrackCue,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onexit = value }

///|
/// TimeRanges interface
pub type TimeRanges

///|
pub extern "js" fn TimeRanges::to_js_value(self : TimeRanges) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to TimeRanges (unchecked)
pub extern "js" fn TimeRanges::from_js_value(v : JsValue) -> TimeRanges =
  #| (v) => v

///|
/// Safely cast JsValue to TimeRanges (checked with instanceof)
pub extern "js" fn TimeRanges::from_js_value_opt(v : JsValue) -> TimeRanges? =
  #| (v) => (v instanceof TimeRanges) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to TimeRanges (checked with instanceof)
pub extern "js" fn JsValue::as_time_ranges(self : JsValue) -> TimeRanges? =
  #| (self) => (self instanceof TimeRanges) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to TimeRanges (unchecked)
pub extern "js" fn JsValue::to_time_ranges(self : JsValue) -> TimeRanges =
  #| (self) => self

///|
pub extern "js" fn TimeRanges::get_length(self : TimeRanges) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn TimeRanges::start(self : TimeRanges, index : Int) -> Double =
  #| (self, index) => self.start(index)

///|
pub extern "js" fn TimeRanges::end(self : TimeRanges, index : Int) -> Double =
  #| (self, index) => self.end(index)

///|
/// TrackEvent interface
pub type TrackEvent

///|
pub extern "js" fn TrackEvent::to_js_value(self : TrackEvent) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to TrackEvent (unchecked)
pub extern "js" fn TrackEvent::from_js_value(v : JsValue) -> TrackEvent =
  #| (v) => v

///|
/// Safely cast JsValue to TrackEvent (checked with instanceof)
pub extern "js" fn TrackEvent::from_js_value_opt(v : JsValue) -> TrackEvent? =
  #| (v) => (v instanceof TrackEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to TrackEvent (checked with instanceof)
pub extern "js" fn JsValue::as_track_event(self : JsValue) -> TrackEvent? =
  #| (self) => (self instanceof TrackEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to TrackEvent (unchecked)
pub extern "js" fn JsValue::to_track_event(self : JsValue) -> TrackEvent =
  #| (self) => self

///|
pub extern "js" fn TrackEvent::to_event(self : TrackEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn TrackEvent::new(type_ : String) -> TrackEvent =
  #| (type_) => new TrackEvent(type_)

///|
extern "js" fn TrackEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> TrackEvent =
  #| (type_, event_init_dict) => new TrackEvent(type_, event_init_dict)

///|
pub fn TrackEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : TrackEventInit,
) -> TrackEvent {
  TrackEvent::new_with_event_init_dict_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn TrackEvent::get_track(
  self : TrackEvent,
) -> VideoTrackOrAudioTrackOrTextTrack =
  #| (self) => self.track

///|
/// HTMLMapElement interface
pub type HTMLMapElement

///|
pub extern "js" fn HTMLMapElement::to_js_value(
  self : HTMLMapElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLMapElement (unchecked)
pub extern "js" fn HTMLMapElement::from_js_value(v : JsValue) -> HTMLMapElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLMapElement (checked with instanceof)
pub extern "js" fn HTMLMapElement::from_js_value_opt(
  v : JsValue,
) -> HTMLMapElement? =
  #| (v) => (v instanceof HTMLMapElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLMapElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_map_element(
  self : JsValue,
) -> HTMLMapElement? =
  #| (self) => (self instanceof HTMLMapElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLMapElement (unchecked)
pub extern "js" fn JsValue::to_html_map_element(
  self : JsValue,
) -> HTMLMapElement =
  #| (self) => self

///|
pub extern "js" fn HTMLMapElement::to_html_element(
  self : HTMLMapElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLMapElement::to_element(self : HTMLMapElement) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLMapElement::to_node(self : HTMLMapElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLMapElement::to_event_target(
  self : HTMLMapElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLMapElement::new() -> HTMLMapElement =
  #| () => new HTMLMapElement()

///|
pub extern "js" fn HTMLMapElement::get_name(self : HTMLMapElement) -> String =
  #| (self) => self.name

///|
pub extern "js" fn HTMLMapElement::set_name(
  self : HTMLMapElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.name = value }

///|
pub extern "js" fn HTMLMapElement::get_areas(
  self : HTMLMapElement,
) -> HTMLCollection =
  #| (self) => self.areas

///|
/// HTMLAreaElement interface
pub type HTMLAreaElement

///|
pub extern "js" fn HTMLAreaElement::to_js_value(
  self : HTMLAreaElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLAreaElement (unchecked)
pub extern "js" fn HTMLAreaElement::from_js_value(
  v : JsValue,
) -> HTMLAreaElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLAreaElement (checked with instanceof)
pub extern "js" fn HTMLAreaElement::from_js_value_opt(
  v : JsValue,
) -> HTMLAreaElement? =
  #| (v) => (v instanceof HTMLAreaElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLAreaElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_area_element(
  self : JsValue,
) -> HTMLAreaElement? =
  #| (self) => (self instanceof HTMLAreaElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLAreaElement (unchecked)
pub extern "js" fn JsValue::to_html_area_element(
  self : JsValue,
) -> HTMLAreaElement =
  #| (self) => self

///|
pub extern "js" fn HTMLAreaElement::to_html_element(
  self : HTMLAreaElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLAreaElement::to_element(
  self : HTMLAreaElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLAreaElement::to_node(self : HTMLAreaElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLAreaElement::to_event_target(
  self : HTMLAreaElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLAreaElement::new() -> HTMLAreaElement =
  #| () => new HTMLAreaElement()

///|
pub extern "js" fn HTMLAreaElement::get_alt(self : HTMLAreaElement) -> String =
  #| (self) => self.alt

///|
pub extern "js" fn HTMLAreaElement::set_alt(
  self : HTMLAreaElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.alt = value }

///|
pub extern "js" fn HTMLAreaElement::get_coords(
  self : HTMLAreaElement,
) -> String =
  #| (self) => self.coords

///|
pub extern "js" fn HTMLAreaElement::set_coords(
  self : HTMLAreaElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.coords = value }

///|
pub extern "js" fn HTMLAreaElement::get_shape(self : HTMLAreaElement) -> String =
  #| (self) => self.shape

///|
pub extern "js" fn HTMLAreaElement::set_shape(
  self : HTMLAreaElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.shape = value }

///|
pub extern "js" fn HTMLAreaElement::get_target(
  self : HTMLAreaElement,
) -> String =
  #| (self) => self.target

///|
pub extern "js" fn HTMLAreaElement::set_target(
  self : HTMLAreaElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.target = value }

///|
pub extern "js" fn HTMLAreaElement::get_download(
  self : HTMLAreaElement,
) -> String =
  #| (self) => self.download

///|
pub extern "js" fn HTMLAreaElement::set_download(
  self : HTMLAreaElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.download = value }

///|
pub extern "js" fn HTMLAreaElement::get_ping(self : HTMLAreaElement) -> String =
  #| (self) => self.ping

///|
pub extern "js" fn HTMLAreaElement::set_ping(
  self : HTMLAreaElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.ping = value }

///|
pub extern "js" fn HTMLAreaElement::get_rel(self : HTMLAreaElement) -> String =
  #| (self) => self.rel

///|
pub extern "js" fn HTMLAreaElement::set_rel(
  self : HTMLAreaElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.rel = value }

///|
pub extern "js" fn HTMLAreaElement::get_rel_list(
  self : HTMLAreaElement,
) -> DOMTokenList =
  #| (self) => self.relList

///|
pub extern "js" fn HTMLAreaElement::get_referrer_policy(
  self : HTMLAreaElement,
) -> String =
  #| (self) => self.referrerPolicy

///|
pub extern "js" fn HTMLAreaElement::set_referrer_policy(
  self : HTMLAreaElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.referrerPolicy = value }

///|
pub extern "js" fn HTMLAreaElement::get_no_href(self : HTMLAreaElement) -> Bool =
  #| (self) => self.noHref

///|
pub extern "js" fn HTMLAreaElement::set_no_href(
  self : HTMLAreaElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.noHref = value }

///|
pub extern "js" fn HTMLAreaElement::get_href(self : HTMLAreaElement) -> String =
  #| (self) => self.href

///|
pub extern "js" fn HTMLAreaElement::set_href(
  self : HTMLAreaElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.href = value }

///|
pub extern "js" fn HTMLAreaElement::get_origin(
  self : HTMLAreaElement,
) -> String =
  #| (self) => self.origin

///|
pub extern "js" fn HTMLAreaElement::get_protocol(
  self : HTMLAreaElement,
) -> String =
  #| (self) => self.protocol

///|
pub extern "js" fn HTMLAreaElement::set_protocol(
  self : HTMLAreaElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.protocol = value }

///|
pub extern "js" fn HTMLAreaElement::get_username(
  self : HTMLAreaElement,
) -> String =
  #| (self) => self.username

///|
pub extern "js" fn HTMLAreaElement::set_username(
  self : HTMLAreaElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.username = value }

///|
pub extern "js" fn HTMLAreaElement::get_password(
  self : HTMLAreaElement,
) -> String =
  #| (self) => self.password

///|
pub extern "js" fn HTMLAreaElement::set_password(
  self : HTMLAreaElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.password = value }

///|
pub extern "js" fn HTMLAreaElement::get_host(self : HTMLAreaElement) -> String =
  #| (self) => self.host

///|
pub extern "js" fn HTMLAreaElement::set_host(
  self : HTMLAreaElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.host = value }

///|
pub extern "js" fn HTMLAreaElement::get_hostname(
  self : HTMLAreaElement,
) -> String =
  #| (self) => self.hostname

///|
pub extern "js" fn HTMLAreaElement::set_hostname(
  self : HTMLAreaElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.hostname = value }

///|
pub extern "js" fn HTMLAreaElement::get_port(self : HTMLAreaElement) -> String =
  #| (self) => self.port

///|
pub extern "js" fn HTMLAreaElement::set_port(
  self : HTMLAreaElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.port = value }

///|
pub extern "js" fn HTMLAreaElement::get_pathname(
  self : HTMLAreaElement,
) -> String =
  #| (self) => self.pathname

///|
pub extern "js" fn HTMLAreaElement::set_pathname(
  self : HTMLAreaElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.pathname = value }

///|
pub extern "js" fn HTMLAreaElement::get_search(
  self : HTMLAreaElement,
) -> String =
  #| (self) => self.search

///|
pub extern "js" fn HTMLAreaElement::set_search(
  self : HTMLAreaElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.search = value }

///|
pub extern "js" fn HTMLAreaElement::get_hash(self : HTMLAreaElement) -> String =
  #| (self) => self.hash

///|
pub extern "js" fn HTMLAreaElement::set_hash(
  self : HTMLAreaElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.hash = value }

///|
pub extern "js" fn HTMLAreaElement::get_attribution_src(
  self : HTMLAreaElement,
) -> String =
  #| (self) => self.attributionSrc

///|
pub extern "js" fn HTMLAreaElement::set_attribution_src(
  self : HTMLAreaElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.attributionSrc = value }

///|
/// HTMLTableElement interface
pub type HTMLTableElement

///|
pub extern "js" fn HTMLTableElement::to_js_value(
  self : HTMLTableElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLTableElement (unchecked)
pub extern "js" fn HTMLTableElement::from_js_value(
  v : JsValue,
) -> HTMLTableElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLTableElement (checked with instanceof)
pub extern "js" fn HTMLTableElement::from_js_value_opt(
  v : JsValue,
) -> HTMLTableElement? =
  #| (v) => (v instanceof HTMLTableElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLTableElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_table_element(
  self : JsValue,
) -> HTMLTableElement? =
  #| (self) => (self instanceof HTMLTableElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLTableElement (unchecked)
pub extern "js" fn JsValue::to_html_table_element(
  self : JsValue,
) -> HTMLTableElement =
  #| (self) => self

///|
pub extern "js" fn HTMLTableElement::to_html_element(
  self : HTMLTableElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLTableElement::to_element(
  self : HTMLTableElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLTableElement::to_node(self : HTMLTableElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLTableElement::to_event_target(
  self : HTMLTableElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLTableElement::new() -> HTMLTableElement =
  #| () => new HTMLTableElement()

///|
pub extern "js" fn HTMLTableElement::get_caption(
  self : HTMLTableElement,
) -> HTMLTableCaptionElement? =
  #| (self) => (() => { const v = self.caption; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLTableElement::set_caption(
  self : HTMLTableElement,
  value : HTMLTableCaptionElement?,
) -> Unit =
  #| (self, value) => { self.caption = (value.$tag === 1 ? value._0 : null) }

///|
pub extern "js" fn HTMLTableElement::create_caption(
  self : HTMLTableElement,
) -> HTMLTableCaptionElement =
  #| (self) => self.createCaption()

///|
pub extern "js" fn HTMLTableElement::delete_caption(
  self : HTMLTableElement,
) -> Unit =
  #| (self) => self.deleteCaption()

///|
pub extern "js" fn HTMLTableElement::get_t_head(
  self : HTMLTableElement,
) -> HTMLTableSectionElement? =
  #| (self) => (() => { const v = self.tHead; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLTableElement::set_t_head(
  self : HTMLTableElement,
  value : HTMLTableSectionElement?,
) -> Unit =
  #| (self, value) => { self.tHead = (value.$tag === 1 ? value._0 : null) }

///|
pub extern "js" fn HTMLTableElement::create_t_head(
  self : HTMLTableElement,
) -> HTMLTableSectionElement =
  #| (self) => self.createTHead()

///|
pub extern "js" fn HTMLTableElement::delete_t_head(
  self : HTMLTableElement,
) -> Unit =
  #| (self) => self.deleteTHead()

///|
pub extern "js" fn HTMLTableElement::get_t_foot(
  self : HTMLTableElement,
) -> HTMLTableSectionElement? =
  #| (self) => (() => { const v = self.tFoot; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLTableElement::set_t_foot(
  self : HTMLTableElement,
  value : HTMLTableSectionElement?,
) -> Unit =
  #| (self, value) => { self.tFoot = (value.$tag === 1 ? value._0 : null) }

///|
pub extern "js" fn HTMLTableElement::create_t_foot(
  self : HTMLTableElement,
) -> HTMLTableSectionElement =
  #| (self) => self.createTFoot()

///|
pub extern "js" fn HTMLTableElement::delete_t_foot(
  self : HTMLTableElement,
) -> Unit =
  #| (self) => self.deleteTFoot()

///|
pub extern "js" fn HTMLTableElement::get_t_bodies(
  self : HTMLTableElement,
) -> HTMLCollection =
  #| (self) => self.tBodies

///|
pub extern "js" fn HTMLTableElement::create_t_body(
  self : HTMLTableElement,
) -> HTMLTableSectionElement =
  #| (self) => self.createTBody()

///|
pub extern "js" fn HTMLTableElement::get_rows(
  self : HTMLTableElement,
) -> HTMLCollection =
  #| (self) => self.rows

///|
pub extern "js" fn HTMLTableElement::insert_row(
  self : HTMLTableElement,
) -> HTMLTableRowElement =
  #| (self) => self.insertRow()

///|
pub extern "js" fn HTMLTableElement::insert_row_with_index(
  self : HTMLTableElement,
  index : Int,
) -> HTMLTableRowElement =
  #| (self, index) => self.insertRow(index)

///|
pub extern "js" fn HTMLTableElement::delete_row(
  self : HTMLTableElement,
  index : Int,
) -> Unit =
  #| (self, index) => self.deleteRow(index)

///|
pub extern "js" fn HTMLTableElement::get_align(
  self : HTMLTableElement,
) -> String =
  #| (self) => self.align

///|
pub extern "js" fn HTMLTableElement::set_align(
  self : HTMLTableElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.align = value }

///|
pub extern "js" fn HTMLTableElement::get_border(
  self : HTMLTableElement,
) -> String =
  #| (self) => self.border

///|
pub extern "js" fn HTMLTableElement::set_border(
  self : HTMLTableElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.border = value }

///|
pub extern "js" fn HTMLTableElement::get_frame(
  self : HTMLTableElement,
) -> String =
  #| (self) => self.frame

///|
pub extern "js" fn HTMLTableElement::set_frame(
  self : HTMLTableElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.frame = value }

///|
pub extern "js" fn HTMLTableElement::get_rules(
  self : HTMLTableElement,
) -> String =
  #| (self) => self.rules

///|
pub extern "js" fn HTMLTableElement::set_rules(
  self : HTMLTableElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.rules = value }

///|
pub extern "js" fn HTMLTableElement::get_summary(
  self : HTMLTableElement,
) -> String =
  #| (self) => self.summary

///|
pub extern "js" fn HTMLTableElement::set_summary(
  self : HTMLTableElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.summary = value }

///|
pub extern "js" fn HTMLTableElement::get_width(
  self : HTMLTableElement,
) -> String =
  #| (self) => self.width

///|
pub extern "js" fn HTMLTableElement::set_width(
  self : HTMLTableElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.width = value }

///|
pub extern "js" fn HTMLTableElement::get_bg_color(
  self : HTMLTableElement,
) -> String =
  #| (self) => self.bgColor

///|
pub extern "js" fn HTMLTableElement::set_bg_color(
  self : HTMLTableElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.bgColor = value }

///|
pub extern "js" fn HTMLTableElement::get_cell_padding(
  self : HTMLTableElement,
) -> String =
  #| (self) => self.cellPadding

///|
pub extern "js" fn HTMLTableElement::set_cell_padding(
  self : HTMLTableElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.cellPadding = value }

///|
pub extern "js" fn HTMLTableElement::get_cell_spacing(
  self : HTMLTableElement,
) -> String =
  #| (self) => self.cellSpacing

///|
pub extern "js" fn HTMLTableElement::set_cell_spacing(
  self : HTMLTableElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.cellSpacing = value }

///|
/// HTMLTableCaptionElement interface
pub type HTMLTableCaptionElement

///|
pub extern "js" fn HTMLTableCaptionElement::to_js_value(
  self : HTMLTableCaptionElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLTableCaptionElement (unchecked)
pub extern "js" fn HTMLTableCaptionElement::from_js_value(
  v : JsValue,
) -> HTMLTableCaptionElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLTableCaptionElement (checked with instanceof)
pub extern "js" fn HTMLTableCaptionElement::from_js_value_opt(
  v : JsValue,
) -> HTMLTableCaptionElement? =
  #| (v) => (v instanceof HTMLTableCaptionElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLTableCaptionElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_table_caption_element(
  self : JsValue,
) -> HTMLTableCaptionElement? =
  #| (self) => (self instanceof HTMLTableCaptionElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLTableCaptionElement (unchecked)
pub extern "js" fn JsValue::to_html_table_caption_element(
  self : JsValue,
) -> HTMLTableCaptionElement =
  #| (self) => self

///|
pub extern "js" fn HTMLTableCaptionElement::to_html_element(
  self : HTMLTableCaptionElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLTableCaptionElement::to_element(
  self : HTMLTableCaptionElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLTableCaptionElement::to_node(
  self : HTMLTableCaptionElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLTableCaptionElement::to_event_target(
  self : HTMLTableCaptionElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLTableCaptionElement::new() -> HTMLTableCaptionElement =
  #| () => new HTMLTableCaptionElement()

///|
pub extern "js" fn HTMLTableCaptionElement::get_align(
  self : HTMLTableCaptionElement,
) -> String =
  #| (self) => self.align

///|
pub extern "js" fn HTMLTableCaptionElement::set_align(
  self : HTMLTableCaptionElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.align = value }

///|
/// HTMLTableColElement interface
pub type HTMLTableColElement

///|
pub extern "js" fn HTMLTableColElement::to_js_value(
  self : HTMLTableColElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLTableColElement (unchecked)
pub extern "js" fn HTMLTableColElement::from_js_value(
  v : JsValue,
) -> HTMLTableColElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLTableColElement (checked with instanceof)
pub extern "js" fn HTMLTableColElement::from_js_value_opt(
  v : JsValue,
) -> HTMLTableColElement? =
  #| (v) => (v instanceof HTMLTableColElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLTableColElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_table_col_element(
  self : JsValue,
) -> HTMLTableColElement? =
  #| (self) => (self instanceof HTMLTableColElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLTableColElement (unchecked)
pub extern "js" fn JsValue::to_html_table_col_element(
  self : JsValue,
) -> HTMLTableColElement =
  #| (self) => self

///|
pub extern "js" fn HTMLTableColElement::to_html_element(
  self : HTMLTableColElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLTableColElement::to_element(
  self : HTMLTableColElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLTableColElement::to_node(
  self : HTMLTableColElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLTableColElement::to_event_target(
  self : HTMLTableColElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLTableColElement::new() -> HTMLTableColElement =
  #| () => new HTMLTableColElement()

///|
pub extern "js" fn HTMLTableColElement::get_span(
  self : HTMLTableColElement,
) -> Int =
  #| (self) => self.span

///|
pub extern "js" fn HTMLTableColElement::set_span(
  self : HTMLTableColElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.span = value }

///|
pub extern "js" fn HTMLTableColElement::get_align(
  self : HTMLTableColElement,
) -> String =
  #| (self) => self.align

///|
pub extern "js" fn HTMLTableColElement::set_align(
  self : HTMLTableColElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.align = value }

///|
pub extern "js" fn HTMLTableColElement::get_ch(
  self : HTMLTableColElement,
) -> String =
  #| (self) => self.ch

///|
pub extern "js" fn HTMLTableColElement::set_ch(
  self : HTMLTableColElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.ch = value }

///|
pub extern "js" fn HTMLTableColElement::get_ch_off(
  self : HTMLTableColElement,
) -> String =
  #| (self) => self.chOff

///|
pub extern "js" fn HTMLTableColElement::set_ch_off(
  self : HTMLTableColElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.chOff = value }

///|
pub extern "js" fn HTMLTableColElement::get_v_align(
  self : HTMLTableColElement,
) -> String =
  #| (self) => self.vAlign

///|
pub extern "js" fn HTMLTableColElement::set_v_align(
  self : HTMLTableColElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.vAlign = value }

///|
pub extern "js" fn HTMLTableColElement::get_width(
  self : HTMLTableColElement,
) -> String =
  #| (self) => self.width

///|
pub extern "js" fn HTMLTableColElement::set_width(
  self : HTMLTableColElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.width = value }

///|
/// HTMLTableSectionElement interface
pub type HTMLTableSectionElement

///|
pub extern "js" fn HTMLTableSectionElement::to_js_value(
  self : HTMLTableSectionElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLTableSectionElement (unchecked)
pub extern "js" fn HTMLTableSectionElement::from_js_value(
  v : JsValue,
) -> HTMLTableSectionElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLTableSectionElement (checked with instanceof)
pub extern "js" fn HTMLTableSectionElement::from_js_value_opt(
  v : JsValue,
) -> HTMLTableSectionElement? =
  #| (v) => (v instanceof HTMLTableSectionElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLTableSectionElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_table_section_element(
  self : JsValue,
) -> HTMLTableSectionElement? =
  #| (self) => (self instanceof HTMLTableSectionElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLTableSectionElement (unchecked)
pub extern "js" fn JsValue::to_html_table_section_element(
  self : JsValue,
) -> HTMLTableSectionElement =
  #| (self) => self

///|
pub extern "js" fn HTMLTableSectionElement::to_html_element(
  self : HTMLTableSectionElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLTableSectionElement::to_element(
  self : HTMLTableSectionElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLTableSectionElement::to_node(
  self : HTMLTableSectionElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLTableSectionElement::to_event_target(
  self : HTMLTableSectionElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLTableSectionElement::new() -> HTMLTableSectionElement =
  #| () => new HTMLTableSectionElement()

///|
pub extern "js" fn HTMLTableSectionElement::get_rows(
  self : HTMLTableSectionElement,
) -> HTMLCollection =
  #| (self) => self.rows

///|
pub extern "js" fn HTMLTableSectionElement::insert_row(
  self : HTMLTableSectionElement,
) -> HTMLTableRowElement =
  #| (self) => self.insertRow()

///|
pub extern "js" fn HTMLTableSectionElement::insert_row_with_index(
  self : HTMLTableSectionElement,
  index : Int,
) -> HTMLTableRowElement =
  #| (self, index) => self.insertRow(index)

///|
pub extern "js" fn HTMLTableSectionElement::delete_row(
  self : HTMLTableSectionElement,
  index : Int,
) -> Unit =
  #| (self, index) => self.deleteRow(index)

///|
pub extern "js" fn HTMLTableSectionElement::get_align(
  self : HTMLTableSectionElement,
) -> String =
  #| (self) => self.align

///|
pub extern "js" fn HTMLTableSectionElement::set_align(
  self : HTMLTableSectionElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.align = value }

///|
pub extern "js" fn HTMLTableSectionElement::get_ch(
  self : HTMLTableSectionElement,
) -> String =
  #| (self) => self.ch

///|
pub extern "js" fn HTMLTableSectionElement::set_ch(
  self : HTMLTableSectionElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.ch = value }

///|
pub extern "js" fn HTMLTableSectionElement::get_ch_off(
  self : HTMLTableSectionElement,
) -> String =
  #| (self) => self.chOff

///|
pub extern "js" fn HTMLTableSectionElement::set_ch_off(
  self : HTMLTableSectionElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.chOff = value }

///|
pub extern "js" fn HTMLTableSectionElement::get_v_align(
  self : HTMLTableSectionElement,
) -> String =
  #| (self) => self.vAlign

///|
pub extern "js" fn HTMLTableSectionElement::set_v_align(
  self : HTMLTableSectionElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.vAlign = value }

///|
/// HTMLTableRowElement interface
pub type HTMLTableRowElement

///|
pub extern "js" fn HTMLTableRowElement::to_js_value(
  self : HTMLTableRowElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLTableRowElement (unchecked)
pub extern "js" fn HTMLTableRowElement::from_js_value(
  v : JsValue,
) -> HTMLTableRowElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLTableRowElement (checked with instanceof)
pub extern "js" fn HTMLTableRowElement::from_js_value_opt(
  v : JsValue,
) -> HTMLTableRowElement? =
  #| (v) => (v instanceof HTMLTableRowElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLTableRowElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_table_row_element(
  self : JsValue,
) -> HTMLTableRowElement? =
  #| (self) => (self instanceof HTMLTableRowElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLTableRowElement (unchecked)
pub extern "js" fn JsValue::to_html_table_row_element(
  self : JsValue,
) -> HTMLTableRowElement =
  #| (self) => self

///|
pub extern "js" fn HTMLTableRowElement::to_html_element(
  self : HTMLTableRowElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLTableRowElement::to_element(
  self : HTMLTableRowElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLTableRowElement::to_node(
  self : HTMLTableRowElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLTableRowElement::to_event_target(
  self : HTMLTableRowElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLTableRowElement::new() -> HTMLTableRowElement =
  #| () => new HTMLTableRowElement()

///|
pub extern "js" fn HTMLTableRowElement::get_row_index(
  self : HTMLTableRowElement,
) -> Int =
  #| (self) => self.rowIndex

///|
pub extern "js" fn HTMLTableRowElement::get_section_row_index(
  self : HTMLTableRowElement,
) -> Int =
  #| (self) => self.sectionRowIndex

///|
pub extern "js" fn HTMLTableRowElement::get_cells(
  self : HTMLTableRowElement,
) -> HTMLCollection =
  #| (self) => self.cells

///|
pub extern "js" fn HTMLTableRowElement::insert_cell(
  self : HTMLTableRowElement,
) -> HTMLTableCellElement =
  #| (self) => self.insertCell()

///|
pub extern "js" fn HTMLTableRowElement::insert_cell_with_index(
  self : HTMLTableRowElement,
  index : Int,
) -> HTMLTableCellElement =
  #| (self, index) => self.insertCell(index)

///|
pub extern "js" fn HTMLTableRowElement::delete_cell(
  self : HTMLTableRowElement,
  index : Int,
) -> Unit =
  #| (self, index) => self.deleteCell(index)

///|
pub extern "js" fn HTMLTableRowElement::get_align(
  self : HTMLTableRowElement,
) -> String =
  #| (self) => self.align

///|
pub extern "js" fn HTMLTableRowElement::set_align(
  self : HTMLTableRowElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.align = value }

///|
pub extern "js" fn HTMLTableRowElement::get_ch(
  self : HTMLTableRowElement,
) -> String =
  #| (self) => self.ch

///|
pub extern "js" fn HTMLTableRowElement::set_ch(
  self : HTMLTableRowElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.ch = value }

///|
pub extern "js" fn HTMLTableRowElement::get_ch_off(
  self : HTMLTableRowElement,
) -> String =
  #| (self) => self.chOff

///|
pub extern "js" fn HTMLTableRowElement::set_ch_off(
  self : HTMLTableRowElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.chOff = value }

///|
pub extern "js" fn HTMLTableRowElement::get_v_align(
  self : HTMLTableRowElement,
) -> String =
  #| (self) => self.vAlign

///|
pub extern "js" fn HTMLTableRowElement::set_v_align(
  self : HTMLTableRowElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.vAlign = value }

///|
pub extern "js" fn HTMLTableRowElement::get_bg_color(
  self : HTMLTableRowElement,
) -> String =
  #| (self) => self.bgColor

///|
pub extern "js" fn HTMLTableRowElement::set_bg_color(
  self : HTMLTableRowElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.bgColor = value }

///|
/// HTMLTableCellElement interface
pub type HTMLTableCellElement

///|
pub extern "js" fn HTMLTableCellElement::to_js_value(
  self : HTMLTableCellElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLTableCellElement (unchecked)
pub extern "js" fn HTMLTableCellElement::from_js_value(
  v : JsValue,
) -> HTMLTableCellElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLTableCellElement (checked with instanceof)
pub extern "js" fn HTMLTableCellElement::from_js_value_opt(
  v : JsValue,
) -> HTMLTableCellElement? =
  #| (v) => (v instanceof HTMLTableCellElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLTableCellElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_table_cell_element(
  self : JsValue,
) -> HTMLTableCellElement? =
  #| (self) => (self instanceof HTMLTableCellElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLTableCellElement (unchecked)
pub extern "js" fn JsValue::to_html_table_cell_element(
  self : JsValue,
) -> HTMLTableCellElement =
  #| (self) => self

///|
pub extern "js" fn HTMLTableCellElement::to_html_element(
  self : HTMLTableCellElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLTableCellElement::to_element(
  self : HTMLTableCellElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLTableCellElement::to_node(
  self : HTMLTableCellElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLTableCellElement::to_event_target(
  self : HTMLTableCellElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLTableCellElement::new() -> HTMLTableCellElement =
  #| () => new HTMLTableCellElement()

///|
pub extern "js" fn HTMLTableCellElement::get_col_span(
  self : HTMLTableCellElement,
) -> Int =
  #| (self) => self.colSpan

///|
pub extern "js" fn HTMLTableCellElement::set_col_span(
  self : HTMLTableCellElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.colSpan = value }

///|
pub extern "js" fn HTMLTableCellElement::get_row_span(
  self : HTMLTableCellElement,
) -> Int =
  #| (self) => self.rowSpan

///|
pub extern "js" fn HTMLTableCellElement::set_row_span(
  self : HTMLTableCellElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.rowSpan = value }

///|
pub extern "js" fn HTMLTableCellElement::get_headers(
  self : HTMLTableCellElement,
) -> String =
  #| (self) => self.headers

///|
pub extern "js" fn HTMLTableCellElement::set_headers(
  self : HTMLTableCellElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.headers = value }

///|
pub extern "js" fn HTMLTableCellElement::get_cell_index(
  self : HTMLTableCellElement,
) -> Int =
  #| (self) => self.cellIndex

///|
pub extern "js" fn HTMLTableCellElement::get_scope(
  self : HTMLTableCellElement,
) -> String =
  #| (self) => self.scope

///|
pub extern "js" fn HTMLTableCellElement::set_scope(
  self : HTMLTableCellElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.scope = value }

///|
pub extern "js" fn HTMLTableCellElement::get_abbr(
  self : HTMLTableCellElement,
) -> String =
  #| (self) => self.abbr

///|
pub extern "js" fn HTMLTableCellElement::set_abbr(
  self : HTMLTableCellElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.abbr = value }

///|
pub extern "js" fn HTMLTableCellElement::get_align(
  self : HTMLTableCellElement,
) -> String =
  #| (self) => self.align

///|
pub extern "js" fn HTMLTableCellElement::set_align(
  self : HTMLTableCellElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.align = value }

///|
pub extern "js" fn HTMLTableCellElement::get_axis(
  self : HTMLTableCellElement,
) -> String =
  #| (self) => self.axis

///|
pub extern "js" fn HTMLTableCellElement::set_axis(
  self : HTMLTableCellElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.axis = value }

///|
pub extern "js" fn HTMLTableCellElement::get_height(
  self : HTMLTableCellElement,
) -> String =
  #| (self) => self.height

///|
pub extern "js" fn HTMLTableCellElement::set_height(
  self : HTMLTableCellElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.height = value }

///|
pub extern "js" fn HTMLTableCellElement::get_width(
  self : HTMLTableCellElement,
) -> String =
  #| (self) => self.width

///|
pub extern "js" fn HTMLTableCellElement::set_width(
  self : HTMLTableCellElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.width = value }

///|
pub extern "js" fn HTMLTableCellElement::get_ch(
  self : HTMLTableCellElement,
) -> String =
  #| (self) => self.ch

///|
pub extern "js" fn HTMLTableCellElement::set_ch(
  self : HTMLTableCellElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.ch = value }

///|
pub extern "js" fn HTMLTableCellElement::get_ch_off(
  self : HTMLTableCellElement,
) -> String =
  #| (self) => self.chOff

///|
pub extern "js" fn HTMLTableCellElement::set_ch_off(
  self : HTMLTableCellElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.chOff = value }

///|
pub extern "js" fn HTMLTableCellElement::get_no_wrap(
  self : HTMLTableCellElement,
) -> Bool =
  #| (self) => self.noWrap

///|
pub extern "js" fn HTMLTableCellElement::set_no_wrap(
  self : HTMLTableCellElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.noWrap = value }

///|
pub extern "js" fn HTMLTableCellElement::get_v_align(
  self : HTMLTableCellElement,
) -> String =
  #| (self) => self.vAlign

///|
pub extern "js" fn HTMLTableCellElement::set_v_align(
  self : HTMLTableCellElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.vAlign = value }

///|
pub extern "js" fn HTMLTableCellElement::get_bg_color(
  self : HTMLTableCellElement,
) -> String =
  #| (self) => self.bgColor

///|
pub extern "js" fn HTMLTableCellElement::set_bg_color(
  self : HTMLTableCellElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.bgColor = value }

///|
/// HTMLFormElement interface
pub type HTMLFormElement

///|
pub extern "js" fn HTMLFormElement::to_js_value(
  self : HTMLFormElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLFormElement (unchecked)
pub extern "js" fn HTMLFormElement::from_js_value(
  v : JsValue,
) -> HTMLFormElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLFormElement (checked with instanceof)
pub extern "js" fn HTMLFormElement::from_js_value_opt(
  v : JsValue,
) -> HTMLFormElement? =
  #| (v) => (v instanceof HTMLFormElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLFormElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_form_element(
  self : JsValue,
) -> HTMLFormElement? =
  #| (self) => (self instanceof HTMLFormElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLFormElement (unchecked)
pub extern "js" fn JsValue::to_html_form_element(
  self : JsValue,
) -> HTMLFormElement =
  #| (self) => self

///|
pub extern "js" fn HTMLFormElement::to_html_element(
  self : HTMLFormElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLFormElement::to_element(
  self : HTMLFormElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLFormElement::to_node(self : HTMLFormElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLFormElement::to_event_target(
  self : HTMLFormElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLFormElement::new() -> HTMLFormElement =
  #| () => new HTMLFormElement()

///|
pub extern "js" fn HTMLFormElement::get_accept_charset(
  self : HTMLFormElement,
) -> String =
  #| (self) => self.acceptCharset

///|
pub extern "js" fn HTMLFormElement::set_accept_charset(
  self : HTMLFormElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.acceptCharset = value }

///|
pub extern "js" fn HTMLFormElement::get_action(
  self : HTMLFormElement,
) -> String =
  #| (self) => self.action

///|
pub extern "js" fn HTMLFormElement::set_action(
  self : HTMLFormElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.action = value }

///|
pub extern "js" fn HTMLFormElement::get_autocomplete(
  self : HTMLFormElement,
) -> String =
  #| (self) => self.autocomplete

///|
pub extern "js" fn HTMLFormElement::set_autocomplete(
  self : HTMLFormElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.autocomplete = value }

///|
pub extern "js" fn HTMLFormElement::get_enctype(
  self : HTMLFormElement,
) -> String =
  #| (self) => self.enctype

///|
pub extern "js" fn HTMLFormElement::set_enctype(
  self : HTMLFormElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.enctype = value }

///|
pub extern "js" fn HTMLFormElement::get_encoding(
  self : HTMLFormElement,
) -> String =
  #| (self) => self.encoding

///|
pub extern "js" fn HTMLFormElement::set_encoding(
  self : HTMLFormElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.encoding = value }

///|
pub extern "js" fn HTMLFormElement::get_method(
  self : HTMLFormElement,
) -> String =
  #| (self) => self.method

///|
pub extern "js" fn HTMLFormElement::set_method(
  self : HTMLFormElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.method = value }

///|
pub extern "js" fn HTMLFormElement::get_name(self : HTMLFormElement) -> String =
  #| (self) => self.name

///|
pub extern "js" fn HTMLFormElement::set_name(
  self : HTMLFormElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.name = value }

///|
pub extern "js" fn HTMLFormElement::get_no_validate(
  self : HTMLFormElement,
) -> Bool =
  #| (self) => self.noValidate

///|
pub extern "js" fn HTMLFormElement::set_no_validate(
  self : HTMLFormElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.noValidate = value }

///|
pub extern "js" fn HTMLFormElement::get_target(
  self : HTMLFormElement,
) -> String =
  #| (self) => self.target

///|
pub extern "js" fn HTMLFormElement::set_target(
  self : HTMLFormElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.target = value }

///|
pub extern "js" fn HTMLFormElement::get_rel(self : HTMLFormElement) -> String =
  #| (self) => self.rel

///|
pub extern "js" fn HTMLFormElement::set_rel(
  self : HTMLFormElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.rel = value }

///|
pub extern "js" fn HTMLFormElement::get_rel_list(
  self : HTMLFormElement,
) -> DOMTokenList =
  #| (self) => self.relList

///|
pub extern "js" fn HTMLFormElement::get_elements(
  self : HTMLFormElement,
) -> HTMLFormControlsCollection =
  #| (self) => self.elements

///|
pub extern "js" fn HTMLFormElement::get_length(self : HTMLFormElement) -> Int =
  #| (self) => self.length

///|
#alias("_[_]")
pub extern "js" fn HTMLFormElement::get(
  self : HTMLFormElement,
  index : Int,
) -> Element =
  #| (self, index) => self[index]

///|
pub extern "js" fn HTMLFormElement::get_named(
  self : HTMLFormElement,
  name : String,
) -> RadioNodeListOrElement =
  #| (self, name) => self[name]

///|
pub extern "js" fn HTMLFormElement::submit(self : HTMLFormElement) -> Unit =
  #| (self) => self.submit()

///|
pub extern "js" fn HTMLFormElement::request_submit(
  self : HTMLFormElement,
) -> Unit =
  #| (self) => self.requestSubmit()

///|
pub extern "js" fn HTMLFormElement::request_submit_with_submitter(
  self : HTMLFormElement,
  submitter : HTMLElement?,
) -> Unit =
  #| (self, submitter) => self.requestSubmit((submitter.$tag === 1 ? submitter._0 : null))

///|
pub extern "js" fn HTMLFormElement::reset(self : HTMLFormElement) -> Unit =
  #| (self) => self.reset()

///|
pub extern "js" fn HTMLFormElement::check_validity(
  self : HTMLFormElement,
) -> Bool =
  #| (self) => self.checkValidity()

///|
pub extern "js" fn HTMLFormElement::report_validity(
  self : HTMLFormElement,
) -> Bool =
  #| (self) => self.reportValidity()

///|
/// HTMLLabelElement interface
pub type HTMLLabelElement

///|
pub extern "js" fn HTMLLabelElement::to_js_value(
  self : HTMLLabelElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLLabelElement (unchecked)
pub extern "js" fn HTMLLabelElement::from_js_value(
  v : JsValue,
) -> HTMLLabelElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLLabelElement (checked with instanceof)
pub extern "js" fn HTMLLabelElement::from_js_value_opt(
  v : JsValue,
) -> HTMLLabelElement? =
  #| (v) => (v instanceof HTMLLabelElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLLabelElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_label_element(
  self : JsValue,
) -> HTMLLabelElement? =
  #| (self) => (self instanceof HTMLLabelElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLLabelElement (unchecked)
pub extern "js" fn JsValue::to_html_label_element(
  self : JsValue,
) -> HTMLLabelElement =
  #| (self) => self

///|
pub extern "js" fn HTMLLabelElement::to_html_element(
  self : HTMLLabelElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLLabelElement::to_element(
  self : HTMLLabelElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLLabelElement::to_node(self : HTMLLabelElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLLabelElement::to_event_target(
  self : HTMLLabelElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLLabelElement::new() -> HTMLLabelElement =
  #| () => new HTMLLabelElement()

///|
pub extern "js" fn HTMLLabelElement::get_form(
  self : HTMLLabelElement,
) -> HTMLFormElement? =
  #| (self) => (() => { const v = self.form; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLLabelElement::get_html_for(
  self : HTMLLabelElement,
) -> String =
  #| (self) => self.htmlFor

///|
pub extern "js" fn HTMLLabelElement::set_html_for(
  self : HTMLLabelElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.htmlFor = value }

///|
pub extern "js" fn HTMLLabelElement::get_control(
  self : HTMLLabelElement,
) -> HTMLElement? =
  #| (self) => (() => { const v = self.control; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// HTMLInputElement interface
pub type HTMLInputElement

///|
pub extern "js" fn HTMLInputElement::to_js_value(
  self : HTMLInputElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLInputElement (unchecked)
pub extern "js" fn HTMLInputElement::from_js_value(
  v : JsValue,
) -> HTMLInputElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLInputElement (checked with instanceof)
pub extern "js" fn HTMLInputElement::from_js_value_opt(
  v : JsValue,
) -> HTMLInputElement? =
  #| (v) => (v instanceof HTMLInputElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLInputElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_input_element(
  self : JsValue,
) -> HTMLInputElement? =
  #| (self) => (self instanceof HTMLInputElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLInputElement (unchecked)
pub extern "js" fn JsValue::to_html_input_element(
  self : JsValue,
) -> HTMLInputElement =
  #| (self) => self

///|
pub extern "js" fn HTMLInputElement::to_html_element(
  self : HTMLInputElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLInputElement::to_element(
  self : HTMLInputElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLInputElement::to_node(self : HTMLInputElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLInputElement::to_event_target(
  self : HTMLInputElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLInputElement::new() -> HTMLInputElement =
  #| () => new HTMLInputElement()

///|
pub extern "js" fn HTMLInputElement::get_accept(
  self : HTMLInputElement,
) -> String =
  #| (self) => self.accept

///|
pub extern "js" fn HTMLInputElement::set_accept(
  self : HTMLInputElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.accept = value }

///|
pub extern "js" fn HTMLInputElement::get_alpha(self : HTMLInputElement) -> Bool =
  #| (self) => self.alpha

///|
pub extern "js" fn HTMLInputElement::set_alpha(
  self : HTMLInputElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.alpha = value }

///|
pub extern "js" fn HTMLInputElement::get_alt(self : HTMLInputElement) -> String =
  #| (self) => self.alt

///|
pub extern "js" fn HTMLInputElement::set_alt(
  self : HTMLInputElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.alt = value }

///|
pub extern "js" fn HTMLInputElement::get_autocomplete(
  self : HTMLInputElement,
) -> String =
  #| (self) => self.autocomplete

///|
pub extern "js" fn HTMLInputElement::set_autocomplete(
  self : HTMLInputElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.autocomplete = value }

///|
pub extern "js" fn HTMLInputElement::get_default_checked(
  self : HTMLInputElement,
) -> Bool =
  #| (self) => self.defaultChecked

///|
pub extern "js" fn HTMLInputElement::set_default_checked(
  self : HTMLInputElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.defaultChecked = value }

///|
pub extern "js" fn HTMLInputElement::get_checked(
  self : HTMLInputElement,
) -> Bool =
  #| (self) => self.checked

///|
pub extern "js" fn HTMLInputElement::set_checked(
  self : HTMLInputElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.checked = value }

///|
pub extern "js" fn HTMLInputElement::get_color_space(
  self : HTMLInputElement,
) -> String =
  #| (self) => self.colorSpace

///|
pub extern "js" fn HTMLInputElement::set_color_space(
  self : HTMLInputElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.colorSpace = value }

///|
pub extern "js" fn HTMLInputElement::get_dir_name(
  self : HTMLInputElement,
) -> String =
  #| (self) => self.dirName

///|
pub extern "js" fn HTMLInputElement::set_dir_name(
  self : HTMLInputElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.dirName = value }

///|
pub extern "js" fn HTMLInputElement::get_disabled(
  self : HTMLInputElement,
) -> Bool =
  #| (self) => self.disabled

///|
pub extern "js" fn HTMLInputElement::set_disabled(
  self : HTMLInputElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.disabled = value }

///|
pub extern "js" fn HTMLInputElement::get_form(
  self : HTMLInputElement,
) -> HTMLFormElement? =
  #| (self) => (() => { const v = self.form; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLInputElement::get_files(
  self : HTMLInputElement,
) -> FileList? =
  #| (self) => (() => { const v = self.files; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLInputElement::set_files(
  self : HTMLInputElement,
  value : FileList?,
) -> Unit =
  #| (self, value) => { self.files = (value.$tag === 1 ? value._0 : null) }

///|
pub extern "js" fn HTMLInputElement::get_form_action(
  self : HTMLInputElement,
) -> String =
  #| (self) => self.formAction

///|
pub extern "js" fn HTMLInputElement::set_form_action(
  self : HTMLInputElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.formAction = value }

///|
pub extern "js" fn HTMLInputElement::get_form_enctype(
  self : HTMLInputElement,
) -> String =
  #| (self) => self.formEnctype

///|
pub extern "js" fn HTMLInputElement::set_form_enctype(
  self : HTMLInputElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.formEnctype = value }

///|
pub extern "js" fn HTMLInputElement::get_form_method(
  self : HTMLInputElement,
) -> String =
  #| (self) => self.formMethod

///|
pub extern "js" fn HTMLInputElement::set_form_method(
  self : HTMLInputElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.formMethod = value }

///|
pub extern "js" fn HTMLInputElement::get_form_no_validate(
  self : HTMLInputElement,
) -> Bool =
  #| (self) => self.formNoValidate

///|
pub extern "js" fn HTMLInputElement::set_form_no_validate(
  self : HTMLInputElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.formNoValidate = value }

///|
pub extern "js" fn HTMLInputElement::get_form_target(
  self : HTMLInputElement,
) -> String =
  #| (self) => self.formTarget

///|
pub extern "js" fn HTMLInputElement::set_form_target(
  self : HTMLInputElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.formTarget = value }

///|
pub extern "js" fn HTMLInputElement::get_height(self : HTMLInputElement) -> Int =
  #| (self) => self.height

///|
pub extern "js" fn HTMLInputElement::set_height(
  self : HTMLInputElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.height = value }

///|
pub extern "js" fn HTMLInputElement::get_indeterminate(
  self : HTMLInputElement,
) -> Bool =
  #| (self) => self.indeterminate

///|
pub extern "js" fn HTMLInputElement::set_indeterminate(
  self : HTMLInputElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.indeterminate = value }

///|
pub extern "js" fn HTMLInputElement::get_list(
  self : HTMLInputElement,
) -> HTMLDataListElement? =
  #| (self) => (() => { const v = self.list; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLInputElement::get_max(self : HTMLInputElement) -> String =
  #| (self) => self.max

///|
pub extern "js" fn HTMLInputElement::set_max(
  self : HTMLInputElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.max = value }

///|
pub extern "js" fn HTMLInputElement::get_max_length(
  self : HTMLInputElement,
) -> Int =
  #| (self) => self.maxLength

///|
pub extern "js" fn HTMLInputElement::set_max_length(
  self : HTMLInputElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.maxLength = value }

///|
pub extern "js" fn HTMLInputElement::get_min(self : HTMLInputElement) -> String =
  #| (self) => self.min

///|
pub extern "js" fn HTMLInputElement::set_min(
  self : HTMLInputElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.min = value }

///|
pub extern "js" fn HTMLInputElement::get_min_length(
  self : HTMLInputElement,
) -> Int =
  #| (self) => self.minLength

///|
pub extern "js" fn HTMLInputElement::set_min_length(
  self : HTMLInputElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.minLength = value }

///|
pub extern "js" fn HTMLInputElement::get_multiple(
  self : HTMLInputElement,
) -> Bool =
  #| (self) => self.multiple

///|
pub extern "js" fn HTMLInputElement::set_multiple(
  self : HTMLInputElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.multiple = value }

///|
pub extern "js" fn HTMLInputElement::get_name(
  self : HTMLInputElement,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn HTMLInputElement::set_name(
  self : HTMLInputElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.name = value }

///|
pub extern "js" fn HTMLInputElement::get_pattern(
  self : HTMLInputElement,
) -> String =
  #| (self) => self.pattern

///|
pub extern "js" fn HTMLInputElement::set_pattern(
  self : HTMLInputElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.pattern = value }

///|
pub extern "js" fn HTMLInputElement::get_placeholder(
  self : HTMLInputElement,
) -> String =
  #| (self) => self.placeholder

///|
pub extern "js" fn HTMLInputElement::set_placeholder(
  self : HTMLInputElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.placeholder = value }

///|
pub extern "js" fn HTMLInputElement::get_read_only(
  self : HTMLInputElement,
) -> Bool =
  #| (self) => self.readOnly

///|
pub extern "js" fn HTMLInputElement::set_read_only(
  self : HTMLInputElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.readOnly = value }

///|
pub extern "js" fn HTMLInputElement::get_required(
  self : HTMLInputElement,
) -> Bool =
  #| (self) => self.required

///|
pub extern "js" fn HTMLInputElement::set_required(
  self : HTMLInputElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.required = value }

///|
pub extern "js" fn HTMLInputElement::get_size(self : HTMLInputElement) -> Int =
  #| (self) => self.size

///|
pub extern "js" fn HTMLInputElement::set_size(
  self : HTMLInputElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.size = value }

///|
pub extern "js" fn HTMLInputElement::get_src(self : HTMLInputElement) -> String =
  #| (self) => self.src

///|
pub extern "js" fn HTMLInputElement::set_src(
  self : HTMLInputElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.src = value }

///|
pub extern "js" fn HTMLInputElement::get_step(
  self : HTMLInputElement,
) -> String =
  #| (self) => self.step

///|
pub extern "js" fn HTMLInputElement::set_step(
  self : HTMLInputElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.step = value }

///|
pub extern "js" fn HTMLInputElement::get_type(
  self : HTMLInputElement,
) -> String =
  #| (self) => self.type

///|
pub extern "js" fn HTMLInputElement::set_type(
  self : HTMLInputElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.type = value }

///|
pub extern "js" fn HTMLInputElement::get_default_value(
  self : HTMLInputElement,
) -> String =
  #| (self) => self.defaultValue

///|
pub extern "js" fn HTMLInputElement::set_default_value(
  self : HTMLInputElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.defaultValue = value }

///|
pub extern "js" fn HTMLInputElement::get_value(
  self : HTMLInputElement,
) -> String =
  #| (self) => self.value

///|
pub extern "js" fn HTMLInputElement::set_value(
  self : HTMLInputElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.value = value }

///|
pub extern "js" fn HTMLInputElement::get_value_as_date(
  self : HTMLInputElement,
) -> JsValue? =
  #| (self) => (() => { const v = self.valueAsDate; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLInputElement::set_value_as_date(
  self : HTMLInputElement,
  value : JsValue?,
) -> Unit =
  #| (self, value) => { self.valueAsDate = (value.$tag === 1 ? value._0 : null) }

///|
pub extern "js" fn HTMLInputElement::get_value_as_number(
  self : HTMLInputElement,
) -> Double =
  #| (self) => self.valueAsNumber

///|
pub extern "js" fn HTMLInputElement::set_value_as_number(
  self : HTMLInputElement,
  value : Double,
) -> Unit =
  #| (self, value) => { self.valueAsNumber = value }

///|
pub extern "js" fn HTMLInputElement::get_width(self : HTMLInputElement) -> Int =
  #| (self) => self.width

///|
pub extern "js" fn HTMLInputElement::set_width(
  self : HTMLInputElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.width = value }

///|
pub extern "js" fn HTMLInputElement::step_up(self : HTMLInputElement) -> Unit =
  #| (self) => self.stepUp()

///|
pub extern "js" fn HTMLInputElement::step_up_with_n(
  self : HTMLInputElement,
  n : Int,
) -> Unit =
  #| (self, n) => self.stepUp(n)

///|
pub extern "js" fn HTMLInputElement::step_down(self : HTMLInputElement) -> Unit =
  #| (self) => self.stepDown()

///|
pub extern "js" fn HTMLInputElement::step_down_with_n(
  self : HTMLInputElement,
  n : Int,
) -> Unit =
  #| (self, n) => self.stepDown(n)

///|
pub extern "js" fn HTMLInputElement::get_will_validate(
  self : HTMLInputElement,
) -> Bool =
  #| (self) => self.willValidate

///|
pub extern "js" fn HTMLInputElement::get_validity(
  self : HTMLInputElement,
) -> ValidityState =
  #| (self) => self.validity

///|
pub extern "js" fn HTMLInputElement::get_validation_message(
  self : HTMLInputElement,
) -> String =
  #| (self) => self.validationMessage

///|
pub extern "js" fn HTMLInputElement::check_validity(
  self : HTMLInputElement,
) -> Bool =
  #| (self) => self.checkValidity()

///|
pub extern "js" fn HTMLInputElement::report_validity(
  self : HTMLInputElement,
) -> Bool =
  #| (self) => self.reportValidity()

///|
pub extern "js" fn HTMLInputElement::set_custom_validity(
  self : HTMLInputElement,
  error : String,
) -> Unit =
  #| (self, error) => self.setCustomValidity(error)

///|
pub extern "js" fn HTMLInputElement::get_labels(
  self : HTMLInputElement,
) -> NodeList? =
  #| (self) => (() => { const v = self.labels; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLInputElement::select(self : HTMLInputElement) -> Unit =
  #| (self) => self.select()

///|
pub extern "js" fn HTMLInputElement::get_selection_start(
  self : HTMLInputElement,
) -> Int? =
  #| (self) => (self.selectionStart) ?? undefined

///|
pub extern "js" fn HTMLInputElement::set_selection_start(
  self : HTMLInputElement,
  value : Int?,
) -> Unit =
  #| (self, value) => { self.selectionStart = value }

///|
pub extern "js" fn HTMLInputElement::get_selection_end(
  self : HTMLInputElement,
) -> Int? =
  #| (self) => (self.selectionEnd) ?? undefined

///|
pub extern "js" fn HTMLInputElement::set_selection_end(
  self : HTMLInputElement,
  value : Int?,
) -> Unit =
  #| (self, value) => { self.selectionEnd = value }

///|
pub extern "js" fn HTMLInputElement::get_selection_direction(
  self : HTMLInputElement,
) -> String? =
  #| (self) => (self.selectionDirection) ?? undefined

///|
pub extern "js" fn HTMLInputElement::set_selection_direction(
  self : HTMLInputElement,
  value : String?,
) -> Unit =
  #| (self, value) => { self.selectionDirection = value }

///|
pub extern "js" fn HTMLInputElement::set_range_text(
  self : HTMLInputElement,
  replacement : String,
) -> Unit =
  #| (self, replacement) => self.setRangeText(replacement)

///|
pub extern "js" fn HTMLInputElement::set_range_text_with_replacement_and_start_and_end(
  self : HTMLInputElement,
  replacement : String,
  start : Int,
  end : Int,
) -> Unit =
  #| (self, replacement, start, end) => self.setRangeText(replacement, start, end)

///|
pub extern "js" fn HTMLInputElement::set_range_text_with_replacement_and_start_and_end_and_selection_mode_selection_mode(
  self : HTMLInputElement,
  replacement : String,
  start : Int,
  end : Int,
  selection_mode : SelectionMode,
) -> Unit =
  #| (self, replacement, start, end, selection_mode) => self.setRangeText(replacement, start, end, ['select', 'start', 'end', 'preserve'][selection_mode])

///|
pub extern "js" fn HTMLInputElement::set_selection_range(
  self : HTMLInputElement,
  start : Int,
  end : Int,
) -> Unit =
  #| (self, start, end) => self.setSelectionRange(start, end)

///|
pub extern "js" fn HTMLInputElement::set_selection_range_with_direction(
  self : HTMLInputElement,
  start : Int,
  end : Int,
  direction : String,
) -> Unit =
  #| (self, start, end, direction) => self.setSelectionRange(start, end, direction)

///|
pub extern "js" fn HTMLInputElement::show_picker(
  self : HTMLInputElement,
) -> Unit =
  #| (self) => self.showPicker()

///|
pub extern "js" fn HTMLInputElement::get_align(
  self : HTMLInputElement,
) -> String =
  #| (self) => self.align

///|
pub extern "js" fn HTMLInputElement::set_align(
  self : HTMLInputElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.align = value }

///|
pub extern "js" fn HTMLInputElement::get_use_map(
  self : HTMLInputElement,
) -> String =
  #| (self) => self.useMap

///|
pub extern "js" fn HTMLInputElement::set_use_map(
  self : HTMLInputElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.useMap = value }

///|
pub extern "js" fn HTMLInputElement::get_webkitdirectory(
  self : HTMLInputElement,
) -> Bool =
  #| (self) => self.webkitdirectory

///|
pub extern "js" fn HTMLInputElement::set_webkitdirectory(
  self : HTMLInputElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.webkitdirectory = value }

///|
pub extern "js" fn HTMLInputElement::get_webkit_entries(
  self : HTMLInputElement,
) -> Array[FileSystemEntry] =
  #| (self) => self.webkitEntries

///|
pub extern "js" fn HTMLInputElement::get_capture(
  self : HTMLInputElement,
) -> String =
  #| (self) => self.capture

///|
pub extern "js" fn HTMLInputElement::set_capture(
  self : HTMLInputElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.capture = value }

///|
pub extern "js" fn HTMLInputElement::get_popover_target_element(
  self : HTMLInputElement,
) -> Element? =
  #| (self) => (() => { const v = self.popoverTargetElement; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLInputElement::set_popover_target_element(
  self : HTMLInputElement,
  value : Element?,
) -> Unit =
  #| (self, value) => { self.popoverTargetElement = (value.$tag === 1 ? value._0 : null) }

///|
pub extern "js" fn HTMLInputElement::get_popover_target_action(
  self : HTMLInputElement,
) -> String =
  #| (self) => self.popoverTargetAction

///|
pub extern "js" fn HTMLInputElement::set_popover_target_action(
  self : HTMLInputElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.popoverTargetAction = value }

///|
/// HTMLButtonElement interface
pub type HTMLButtonElement

///|
pub extern "js" fn HTMLButtonElement::to_js_value(
  self : HTMLButtonElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLButtonElement (unchecked)
pub extern "js" fn HTMLButtonElement::from_js_value(
  v : JsValue,
) -> HTMLButtonElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLButtonElement (checked with instanceof)
pub extern "js" fn HTMLButtonElement::from_js_value_opt(
  v : JsValue,
) -> HTMLButtonElement? =
  #| (v) => (v instanceof HTMLButtonElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLButtonElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_button_element(
  self : JsValue,
) -> HTMLButtonElement? =
  #| (self) => (self instanceof HTMLButtonElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLButtonElement (unchecked)
pub extern "js" fn JsValue::to_html_button_element(
  self : JsValue,
) -> HTMLButtonElement =
  #| (self) => self

///|
pub extern "js" fn HTMLButtonElement::to_html_element(
  self : HTMLButtonElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLButtonElement::to_element(
  self : HTMLButtonElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLButtonElement::to_node(self : HTMLButtonElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLButtonElement::to_event_target(
  self : HTMLButtonElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLButtonElement::new() -> HTMLButtonElement =
  #| () => new HTMLButtonElement()

///|
pub extern "js" fn HTMLButtonElement::get_command(
  self : HTMLButtonElement,
) -> String =
  #| (self) => self.command

///|
pub extern "js" fn HTMLButtonElement::set_command(
  self : HTMLButtonElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.command = value }

///|
pub extern "js" fn HTMLButtonElement::get_command_for_element(
  self : HTMLButtonElement,
) -> Element? =
  #| (self) => (() => { const v = self.commandForElement; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLButtonElement::set_command_for_element(
  self : HTMLButtonElement,
  value : Element?,
) -> Unit =
  #| (self, value) => { self.commandForElement = (value.$tag === 1 ? value._0 : null) }

///|
pub extern "js" fn HTMLButtonElement::get_disabled(
  self : HTMLButtonElement,
) -> Bool =
  #| (self) => self.disabled

///|
pub extern "js" fn HTMLButtonElement::set_disabled(
  self : HTMLButtonElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.disabled = value }

///|
pub extern "js" fn HTMLButtonElement::get_form(
  self : HTMLButtonElement,
) -> HTMLFormElement? =
  #| (self) => (() => { const v = self.form; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLButtonElement::get_form_action(
  self : HTMLButtonElement,
) -> String =
  #| (self) => self.formAction

///|
pub extern "js" fn HTMLButtonElement::set_form_action(
  self : HTMLButtonElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.formAction = value }

///|
pub extern "js" fn HTMLButtonElement::get_form_enctype(
  self : HTMLButtonElement,
) -> String =
  #| (self) => self.formEnctype

///|
pub extern "js" fn HTMLButtonElement::set_form_enctype(
  self : HTMLButtonElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.formEnctype = value }

///|
pub extern "js" fn HTMLButtonElement::get_form_method(
  self : HTMLButtonElement,
) -> String =
  #| (self) => self.formMethod

///|
pub extern "js" fn HTMLButtonElement::set_form_method(
  self : HTMLButtonElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.formMethod = value }

///|
pub extern "js" fn HTMLButtonElement::get_form_no_validate(
  self : HTMLButtonElement,
) -> Bool =
  #| (self) => self.formNoValidate

///|
pub extern "js" fn HTMLButtonElement::set_form_no_validate(
  self : HTMLButtonElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.formNoValidate = value }

///|
pub extern "js" fn HTMLButtonElement::get_form_target(
  self : HTMLButtonElement,
) -> String =
  #| (self) => self.formTarget

///|
pub extern "js" fn HTMLButtonElement::set_form_target(
  self : HTMLButtonElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.formTarget = value }

///|
pub extern "js" fn HTMLButtonElement::get_name(
  self : HTMLButtonElement,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn HTMLButtonElement::set_name(
  self : HTMLButtonElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.name = value }

///|
pub extern "js" fn HTMLButtonElement::get_type(
  self : HTMLButtonElement,
) -> String =
  #| (self) => self.type

///|
pub extern "js" fn HTMLButtonElement::set_type(
  self : HTMLButtonElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.type = value }

///|
pub extern "js" fn HTMLButtonElement::get_value(
  self : HTMLButtonElement,
) -> String =
  #| (self) => self.value

///|
pub extern "js" fn HTMLButtonElement::set_value(
  self : HTMLButtonElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.value = value }

///|
pub extern "js" fn HTMLButtonElement::get_will_validate(
  self : HTMLButtonElement,
) -> Bool =
  #| (self) => self.willValidate

///|
pub extern "js" fn HTMLButtonElement::get_validity(
  self : HTMLButtonElement,
) -> ValidityState =
  #| (self) => self.validity

///|
pub extern "js" fn HTMLButtonElement::get_validation_message(
  self : HTMLButtonElement,
) -> String =
  #| (self) => self.validationMessage

///|
pub extern "js" fn HTMLButtonElement::check_validity(
  self : HTMLButtonElement,
) -> Bool =
  #| (self) => self.checkValidity()

///|
pub extern "js" fn HTMLButtonElement::report_validity(
  self : HTMLButtonElement,
) -> Bool =
  #| (self) => self.reportValidity()

///|
pub extern "js" fn HTMLButtonElement::set_custom_validity(
  self : HTMLButtonElement,
  error : String,
) -> Unit =
  #| (self, error) => self.setCustomValidity(error)

///|
pub extern "js" fn HTMLButtonElement::get_labels(
  self : HTMLButtonElement,
) -> NodeList =
  #| (self) => self.labels

///|
pub extern "js" fn HTMLButtonElement::get_popover_target_element(
  self : HTMLButtonElement,
) -> Element? =
  #| (self) => (() => { const v = self.popoverTargetElement; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLButtonElement::set_popover_target_element(
  self : HTMLButtonElement,
  value : Element?,
) -> Unit =
  #| (self, value) => { self.popoverTargetElement = (value.$tag === 1 ? value._0 : null) }

///|
pub extern "js" fn HTMLButtonElement::get_popover_target_action(
  self : HTMLButtonElement,
) -> String =
  #| (self) => self.popoverTargetAction

///|
pub extern "js" fn HTMLButtonElement::set_popover_target_action(
  self : HTMLButtonElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.popoverTargetAction = value }

///|
/// HTMLSelectElement interface
pub type HTMLSelectElement

///|
pub extern "js" fn HTMLSelectElement::to_js_value(
  self : HTMLSelectElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLSelectElement (unchecked)
pub extern "js" fn HTMLSelectElement::from_js_value(
  v : JsValue,
) -> HTMLSelectElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLSelectElement (checked with instanceof)
pub extern "js" fn HTMLSelectElement::from_js_value_opt(
  v : JsValue,
) -> HTMLSelectElement? =
  #| (v) => (v instanceof HTMLSelectElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLSelectElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_select_element(
  self : JsValue,
) -> HTMLSelectElement? =
  #| (self) => (self instanceof HTMLSelectElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLSelectElement (unchecked)
pub extern "js" fn JsValue::to_html_select_element(
  self : JsValue,
) -> HTMLSelectElement =
  #| (self) => self

///|
pub extern "js" fn HTMLSelectElement::to_html_element(
  self : HTMLSelectElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLSelectElement::to_element(
  self : HTMLSelectElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLSelectElement::to_node(self : HTMLSelectElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLSelectElement::to_event_target(
  self : HTMLSelectElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLSelectElement::new() -> HTMLSelectElement =
  #| () => new HTMLSelectElement()

///|
pub extern "js" fn HTMLSelectElement::get_autocomplete(
  self : HTMLSelectElement,
) -> String =
  #| (self) => self.autocomplete

///|
pub extern "js" fn HTMLSelectElement::set_autocomplete(
  self : HTMLSelectElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.autocomplete = value }

///|
pub extern "js" fn HTMLSelectElement::get_disabled(
  self : HTMLSelectElement,
) -> Bool =
  #| (self) => self.disabled

///|
pub extern "js" fn HTMLSelectElement::set_disabled(
  self : HTMLSelectElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.disabled = value }

///|
pub extern "js" fn HTMLSelectElement::get_form(
  self : HTMLSelectElement,
) -> HTMLFormElement? =
  #| (self) => (() => { const v = self.form; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLSelectElement::get_multiple(
  self : HTMLSelectElement,
) -> Bool =
  #| (self) => self.multiple

///|
pub extern "js" fn HTMLSelectElement::set_multiple(
  self : HTMLSelectElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.multiple = value }

///|
pub extern "js" fn HTMLSelectElement::get_name(
  self : HTMLSelectElement,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn HTMLSelectElement::set_name(
  self : HTMLSelectElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.name = value }

///|
pub extern "js" fn HTMLSelectElement::get_required(
  self : HTMLSelectElement,
) -> Bool =
  #| (self) => self.required

///|
pub extern "js" fn HTMLSelectElement::set_required(
  self : HTMLSelectElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.required = value }

///|
pub extern "js" fn HTMLSelectElement::get_size(self : HTMLSelectElement) -> Int =
  #| (self) => self.size

///|
pub extern "js" fn HTMLSelectElement::set_size(
  self : HTMLSelectElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.size = value }

///|
pub extern "js" fn HTMLSelectElement::get_type(
  self : HTMLSelectElement,
) -> String =
  #| (self) => self.type

///|
pub extern "js" fn HTMLSelectElement::get_options(
  self : HTMLSelectElement,
) -> HTMLOptionsCollection =
  #| (self) => self.options

///|
pub extern "js" fn HTMLSelectElement::get_length(
  self : HTMLSelectElement,
) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn HTMLSelectElement::set_length(
  self : HTMLSelectElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.length = value }

///|
pub extern "js" fn HTMLSelectElement::item(
  self : HTMLSelectElement,
  index : Int,
) -> HTMLOptionElement? =
  #| (self, index) => (() => { const v = self.item(index); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
#alias("_[_]")
pub extern "js" fn HTMLSelectElement::get(
  self : HTMLSelectElement,
  index : Int,
) -> HTMLOptionElement? =
  #| (self, index) => (() => { const v = self[index]; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLSelectElement::named_item(
  self : HTMLSelectElement,
  name : String,
) -> HTMLOptionElement? =
  #| (self, name) => (() => { const v = self.namedItem(name); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLSelectElement::add(
  self : HTMLSelectElement,
  element : HTMLOptionElementOrHTMLOptGroupElement,
) -> Unit =
  #| (self, element) => self.add(element)

///|
pub extern "js" fn HTMLSelectElement::add_with_before(
  self : HTMLSelectElement,
  element : HTMLOptionElementOrHTMLOptGroupElement,
  before : HTMLElementOrInt,
) -> Unit =
  #| (self, element, before) => self.add(element, before)

///|
pub extern "js" fn HTMLSelectElement::remove(self : HTMLSelectElement) -> Unit =
  #| (self) => self.remove()

///|
pub extern "js" fn HTMLSelectElement::remove_with_index(
  self : HTMLSelectElement,
  index : Int,
) -> Unit =
  #| (self, index) => self.remove(index)

///|
#alias("_[_]=_")
pub extern "js" fn HTMLSelectElement::set(
  self : HTMLSelectElement,
  index : Int,
  option : HTMLOptionElement?,
) -> Unit =
  #| (self, index, option) => { self[index] = option }

///|
pub extern "js" fn HTMLSelectElement::get_selected_options(
  self : HTMLSelectElement,
) -> HTMLCollection =
  #| (self) => self.selectedOptions

///|
pub extern "js" fn HTMLSelectElement::get_selected_index(
  self : HTMLSelectElement,
) -> Int =
  #| (self) => self.selectedIndex

///|
pub extern "js" fn HTMLSelectElement::set_selected_index(
  self : HTMLSelectElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.selectedIndex = value }

///|
pub extern "js" fn HTMLSelectElement::get_value(
  self : HTMLSelectElement,
) -> String =
  #| (self) => self.value

///|
pub extern "js" fn HTMLSelectElement::set_value(
  self : HTMLSelectElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.value = value }

///|
pub extern "js" fn HTMLSelectElement::get_will_validate(
  self : HTMLSelectElement,
) -> Bool =
  #| (self) => self.willValidate

///|
pub extern "js" fn HTMLSelectElement::get_validity(
  self : HTMLSelectElement,
) -> ValidityState =
  #| (self) => self.validity

///|
pub extern "js" fn HTMLSelectElement::get_validation_message(
  self : HTMLSelectElement,
) -> String =
  #| (self) => self.validationMessage

///|
pub extern "js" fn HTMLSelectElement::check_validity(
  self : HTMLSelectElement,
) -> Bool =
  #| (self) => self.checkValidity()

///|
pub extern "js" fn HTMLSelectElement::report_validity(
  self : HTMLSelectElement,
) -> Bool =
  #| (self) => self.reportValidity()

///|
pub extern "js" fn HTMLSelectElement::set_custom_validity(
  self : HTMLSelectElement,
  error : String,
) -> Unit =
  #| (self, error) => self.setCustomValidity(error)

///|
pub extern "js" fn HTMLSelectElement::show_picker(
  self : HTMLSelectElement,
) -> Unit =
  #| (self) => self.showPicker()

///|
pub extern "js" fn HTMLSelectElement::get_labels(
  self : HTMLSelectElement,
) -> NodeList =
  #| (self) => self.labels

///|
/// HTMLDataListElement interface
pub type HTMLDataListElement

///|
pub extern "js" fn HTMLDataListElement::to_js_value(
  self : HTMLDataListElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLDataListElement (unchecked)
pub extern "js" fn HTMLDataListElement::from_js_value(
  v : JsValue,
) -> HTMLDataListElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLDataListElement (checked with instanceof)
pub extern "js" fn HTMLDataListElement::from_js_value_opt(
  v : JsValue,
) -> HTMLDataListElement? =
  #| (v) => (v instanceof HTMLDataListElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLDataListElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_data_list_element(
  self : JsValue,
) -> HTMLDataListElement? =
  #| (self) => (self instanceof HTMLDataListElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLDataListElement (unchecked)
pub extern "js" fn JsValue::to_html_data_list_element(
  self : JsValue,
) -> HTMLDataListElement =
  #| (self) => self

///|
pub extern "js" fn HTMLDataListElement::to_html_element(
  self : HTMLDataListElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLDataListElement::to_element(
  self : HTMLDataListElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLDataListElement::to_node(
  self : HTMLDataListElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLDataListElement::to_event_target(
  self : HTMLDataListElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLDataListElement::new() -> HTMLDataListElement =
  #| () => new HTMLDataListElement()

///|
pub extern "js" fn HTMLDataListElement::get_options(
  self : HTMLDataListElement,
) -> HTMLCollection =
  #| (self) => self.options

///|
/// HTMLOptGroupElement interface
pub type HTMLOptGroupElement

///|
pub extern "js" fn HTMLOptGroupElement::to_js_value(
  self : HTMLOptGroupElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLOptGroupElement (unchecked)
pub extern "js" fn HTMLOptGroupElement::from_js_value(
  v : JsValue,
) -> HTMLOptGroupElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLOptGroupElement (checked with instanceof)
pub extern "js" fn HTMLOptGroupElement::from_js_value_opt(
  v : JsValue,
) -> HTMLOptGroupElement? =
  #| (v) => (v instanceof HTMLOptGroupElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLOptGroupElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_opt_group_element(
  self : JsValue,
) -> HTMLOptGroupElement? =
  #| (self) => (self instanceof HTMLOptGroupElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLOptGroupElement (unchecked)
pub extern "js" fn JsValue::to_html_opt_group_element(
  self : JsValue,
) -> HTMLOptGroupElement =
  #| (self) => self

///|
pub extern "js" fn HTMLOptGroupElement::to_html_element(
  self : HTMLOptGroupElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLOptGroupElement::to_element(
  self : HTMLOptGroupElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLOptGroupElement::to_node(
  self : HTMLOptGroupElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLOptGroupElement::to_event_target(
  self : HTMLOptGroupElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLOptGroupElement::new() -> HTMLOptGroupElement =
  #| () => new HTMLOptGroupElement()

///|
pub extern "js" fn HTMLOptGroupElement::get_disabled(
  self : HTMLOptGroupElement,
) -> Bool =
  #| (self) => self.disabled

///|
pub extern "js" fn HTMLOptGroupElement::set_disabled(
  self : HTMLOptGroupElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.disabled = value }

///|
pub extern "js" fn HTMLOptGroupElement::get_label(
  self : HTMLOptGroupElement,
) -> String =
  #| (self) => self.label

///|
pub extern "js" fn HTMLOptGroupElement::set_label(
  self : HTMLOptGroupElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.label = value }

///|
/// HTMLOptionElement interface
pub type HTMLOptionElement

///|
pub extern "js" fn HTMLOptionElement::to_js_value(
  self : HTMLOptionElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLOptionElement (unchecked)
pub extern "js" fn HTMLOptionElement::from_js_value(
  v : JsValue,
) -> HTMLOptionElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLOptionElement (checked with instanceof)
pub extern "js" fn HTMLOptionElement::from_js_value_opt(
  v : JsValue,
) -> HTMLOptionElement? =
  #| (v) => (v instanceof HTMLOptionElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLOptionElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_option_element(
  self : JsValue,
) -> HTMLOptionElement? =
  #| (self) => (self instanceof HTMLOptionElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLOptionElement (unchecked)
pub extern "js" fn JsValue::to_html_option_element(
  self : JsValue,
) -> HTMLOptionElement =
  #| (self) => self

///|
pub extern "js" fn HTMLOptionElement::to_html_element(
  self : HTMLOptionElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLOptionElement::to_element(
  self : HTMLOptionElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLOptionElement::to_node(self : HTMLOptionElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLOptionElement::to_event_target(
  self : HTMLOptionElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLOptionElement::new() -> HTMLOptionElement =
  #| () => new HTMLOptionElement()

///|
pub extern "js" fn HTMLOptionElement::get_disabled(
  self : HTMLOptionElement,
) -> Bool =
  #| (self) => self.disabled

///|
pub extern "js" fn HTMLOptionElement::set_disabled(
  self : HTMLOptionElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.disabled = value }

///|
pub extern "js" fn HTMLOptionElement::get_form(
  self : HTMLOptionElement,
) -> HTMLFormElement? =
  #| (self) => (() => { const v = self.form; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLOptionElement::get_label(
  self : HTMLOptionElement,
) -> String =
  #| (self) => self.label

///|
pub extern "js" fn HTMLOptionElement::set_label(
  self : HTMLOptionElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.label = value }

///|
pub extern "js" fn HTMLOptionElement::get_default_selected(
  self : HTMLOptionElement,
) -> Bool =
  #| (self) => self.defaultSelected

///|
pub extern "js" fn HTMLOptionElement::set_default_selected(
  self : HTMLOptionElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.defaultSelected = value }

///|
pub extern "js" fn HTMLOptionElement::get_selected(
  self : HTMLOptionElement,
) -> Bool =
  #| (self) => self.selected

///|
pub extern "js" fn HTMLOptionElement::set_selected(
  self : HTMLOptionElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.selected = value }

///|
pub extern "js" fn HTMLOptionElement::get_value(
  self : HTMLOptionElement,
) -> String =
  #| (self) => self.value

///|
pub extern "js" fn HTMLOptionElement::set_value(
  self : HTMLOptionElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.value = value }

///|
pub extern "js" fn HTMLOptionElement::get_text(
  self : HTMLOptionElement,
) -> String =
  #| (self) => self.text

///|
pub extern "js" fn HTMLOptionElement::set_text(
  self : HTMLOptionElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.text = value }

///|
pub extern "js" fn HTMLOptionElement::get_index(
  self : HTMLOptionElement,
) -> Int =
  #| (self) => self.index

///|
/// HTMLTextAreaElement interface
pub type HTMLTextAreaElement

///|
pub extern "js" fn HTMLTextAreaElement::to_js_value(
  self : HTMLTextAreaElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLTextAreaElement (unchecked)
pub extern "js" fn HTMLTextAreaElement::from_js_value(
  v : JsValue,
) -> HTMLTextAreaElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLTextAreaElement (checked with instanceof)
pub extern "js" fn HTMLTextAreaElement::from_js_value_opt(
  v : JsValue,
) -> HTMLTextAreaElement? =
  #| (v) => (v instanceof HTMLTextAreaElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLTextAreaElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_text_area_element(
  self : JsValue,
) -> HTMLTextAreaElement? =
  #| (self) => (self instanceof HTMLTextAreaElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLTextAreaElement (unchecked)
pub extern "js" fn JsValue::to_html_text_area_element(
  self : JsValue,
) -> HTMLTextAreaElement =
  #| (self) => self

///|
pub extern "js" fn HTMLTextAreaElement::to_html_element(
  self : HTMLTextAreaElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLTextAreaElement::to_element(
  self : HTMLTextAreaElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLTextAreaElement::to_node(
  self : HTMLTextAreaElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLTextAreaElement::to_event_target(
  self : HTMLTextAreaElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLTextAreaElement::new() -> HTMLTextAreaElement =
  #| () => new HTMLTextAreaElement()

///|
pub extern "js" fn HTMLTextAreaElement::get_autocomplete(
  self : HTMLTextAreaElement,
) -> String =
  #| (self) => self.autocomplete

///|
pub extern "js" fn HTMLTextAreaElement::set_autocomplete(
  self : HTMLTextAreaElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.autocomplete = value }

///|
pub extern "js" fn HTMLTextAreaElement::get_cols(
  self : HTMLTextAreaElement,
) -> Int =
  #| (self) => self.cols

///|
pub extern "js" fn HTMLTextAreaElement::set_cols(
  self : HTMLTextAreaElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.cols = value }

///|
pub extern "js" fn HTMLTextAreaElement::get_dir_name(
  self : HTMLTextAreaElement,
) -> String =
  #| (self) => self.dirName

///|
pub extern "js" fn HTMLTextAreaElement::set_dir_name(
  self : HTMLTextAreaElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.dirName = value }

///|
pub extern "js" fn HTMLTextAreaElement::get_disabled(
  self : HTMLTextAreaElement,
) -> Bool =
  #| (self) => self.disabled

///|
pub extern "js" fn HTMLTextAreaElement::set_disabled(
  self : HTMLTextAreaElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.disabled = value }

///|
pub extern "js" fn HTMLTextAreaElement::get_form(
  self : HTMLTextAreaElement,
) -> HTMLFormElement? =
  #| (self) => (() => { const v = self.form; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLTextAreaElement::get_max_length(
  self : HTMLTextAreaElement,
) -> Int =
  #| (self) => self.maxLength

///|
pub extern "js" fn HTMLTextAreaElement::set_max_length(
  self : HTMLTextAreaElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.maxLength = value }

///|
pub extern "js" fn HTMLTextAreaElement::get_min_length(
  self : HTMLTextAreaElement,
) -> Int =
  #| (self) => self.minLength

///|
pub extern "js" fn HTMLTextAreaElement::set_min_length(
  self : HTMLTextAreaElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.minLength = value }

///|
pub extern "js" fn HTMLTextAreaElement::get_name(
  self : HTMLTextAreaElement,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn HTMLTextAreaElement::set_name(
  self : HTMLTextAreaElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.name = value }

///|
pub extern "js" fn HTMLTextAreaElement::get_placeholder(
  self : HTMLTextAreaElement,
) -> String =
  #| (self) => self.placeholder

///|
pub extern "js" fn HTMLTextAreaElement::set_placeholder(
  self : HTMLTextAreaElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.placeholder = value }

///|
pub extern "js" fn HTMLTextAreaElement::get_read_only(
  self : HTMLTextAreaElement,
) -> Bool =
  #| (self) => self.readOnly

///|
pub extern "js" fn HTMLTextAreaElement::set_read_only(
  self : HTMLTextAreaElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.readOnly = value }

///|
pub extern "js" fn HTMLTextAreaElement::get_required(
  self : HTMLTextAreaElement,
) -> Bool =
  #| (self) => self.required

///|
pub extern "js" fn HTMLTextAreaElement::set_required(
  self : HTMLTextAreaElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.required = value }

///|
pub extern "js" fn HTMLTextAreaElement::get_rows(
  self : HTMLTextAreaElement,
) -> Int =
  #| (self) => self.rows

///|
pub extern "js" fn HTMLTextAreaElement::set_rows(
  self : HTMLTextAreaElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.rows = value }

///|
pub extern "js" fn HTMLTextAreaElement::get_wrap(
  self : HTMLTextAreaElement,
) -> String =
  #| (self) => self.wrap

///|
pub extern "js" fn HTMLTextAreaElement::set_wrap(
  self : HTMLTextAreaElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.wrap = value }

///|
pub extern "js" fn HTMLTextAreaElement::get_type(
  self : HTMLTextAreaElement,
) -> String =
  #| (self) => self.type

///|
pub extern "js" fn HTMLTextAreaElement::get_default_value(
  self : HTMLTextAreaElement,
) -> String =
  #| (self) => self.defaultValue

///|
pub extern "js" fn HTMLTextAreaElement::set_default_value(
  self : HTMLTextAreaElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.defaultValue = value }

///|
pub extern "js" fn HTMLTextAreaElement::get_value(
  self : HTMLTextAreaElement,
) -> String =
  #| (self) => self.value

///|
pub extern "js" fn HTMLTextAreaElement::set_value(
  self : HTMLTextAreaElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.value = value }

///|
pub extern "js" fn HTMLTextAreaElement::get_text_length(
  self : HTMLTextAreaElement,
) -> Int =
  #| (self) => self.textLength

///|
pub extern "js" fn HTMLTextAreaElement::get_will_validate(
  self : HTMLTextAreaElement,
) -> Bool =
  #| (self) => self.willValidate

///|
pub extern "js" fn HTMLTextAreaElement::get_validity(
  self : HTMLTextAreaElement,
) -> ValidityState =
  #| (self) => self.validity

///|
pub extern "js" fn HTMLTextAreaElement::get_validation_message(
  self : HTMLTextAreaElement,
) -> String =
  #| (self) => self.validationMessage

///|
pub extern "js" fn HTMLTextAreaElement::check_validity(
  self : HTMLTextAreaElement,
) -> Bool =
  #| (self) => self.checkValidity()

///|
pub extern "js" fn HTMLTextAreaElement::report_validity(
  self : HTMLTextAreaElement,
) -> Bool =
  #| (self) => self.reportValidity()

///|
pub extern "js" fn HTMLTextAreaElement::set_custom_validity(
  self : HTMLTextAreaElement,
  error : String,
) -> Unit =
  #| (self, error) => self.setCustomValidity(error)

///|
pub extern "js" fn HTMLTextAreaElement::get_labels(
  self : HTMLTextAreaElement,
) -> NodeList =
  #| (self) => self.labels

///|
pub extern "js" fn HTMLTextAreaElement::select(
  self : HTMLTextAreaElement,
) -> Unit =
  #| (self) => self.select()

///|
pub extern "js" fn HTMLTextAreaElement::get_selection_start(
  self : HTMLTextAreaElement,
) -> Int =
  #| (self) => self.selectionStart

///|
pub extern "js" fn HTMLTextAreaElement::set_selection_start(
  self : HTMLTextAreaElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.selectionStart = value }

///|
pub extern "js" fn HTMLTextAreaElement::get_selection_end(
  self : HTMLTextAreaElement,
) -> Int =
  #| (self) => self.selectionEnd

///|
pub extern "js" fn HTMLTextAreaElement::set_selection_end(
  self : HTMLTextAreaElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.selectionEnd = value }

///|
pub extern "js" fn HTMLTextAreaElement::get_selection_direction(
  self : HTMLTextAreaElement,
) -> String =
  #| (self) => self.selectionDirection

///|
pub extern "js" fn HTMLTextAreaElement::set_selection_direction(
  self : HTMLTextAreaElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.selectionDirection = value }

///|
pub extern "js" fn HTMLTextAreaElement::set_range_text(
  self : HTMLTextAreaElement,
  replacement : String,
) -> Unit =
  #| (self, replacement) => self.setRangeText(replacement)

///|
pub extern "js" fn HTMLTextAreaElement::set_range_text_with_replacement_and_start_and_end(
  self : HTMLTextAreaElement,
  replacement : String,
  start : Int,
  end : Int,
) -> Unit =
  #| (self, replacement, start, end) => self.setRangeText(replacement, start, end)

///|
pub extern "js" fn HTMLTextAreaElement::set_range_text_with_replacement_and_start_and_end_and_selection_mode_selection_mode(
  self : HTMLTextAreaElement,
  replacement : String,
  start : Int,
  end : Int,
  selection_mode : SelectionMode,
) -> Unit =
  #| (self, replacement, start, end, selection_mode) => self.setRangeText(replacement, start, end, ['select', 'start', 'end', 'preserve'][selection_mode])

///|
pub extern "js" fn HTMLTextAreaElement::set_selection_range(
  self : HTMLTextAreaElement,
  start : Int,
  end : Int,
) -> Unit =
  #| (self, start, end) => self.setSelectionRange(start, end)

///|
pub extern "js" fn HTMLTextAreaElement::set_selection_range_with_direction(
  self : HTMLTextAreaElement,
  start : Int,
  end : Int,
  direction : String,
) -> Unit =
  #| (self, start, end, direction) => self.setSelectionRange(start, end, direction)

///|
/// HTMLOutputElement interface
pub type HTMLOutputElement

///|
pub extern "js" fn HTMLOutputElement::to_js_value(
  self : HTMLOutputElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLOutputElement (unchecked)
pub extern "js" fn HTMLOutputElement::from_js_value(
  v : JsValue,
) -> HTMLOutputElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLOutputElement (checked with instanceof)
pub extern "js" fn HTMLOutputElement::from_js_value_opt(
  v : JsValue,
) -> HTMLOutputElement? =
  #| (v) => (v instanceof HTMLOutputElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLOutputElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_output_element(
  self : JsValue,
) -> HTMLOutputElement? =
  #| (self) => (self instanceof HTMLOutputElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLOutputElement (unchecked)
pub extern "js" fn JsValue::to_html_output_element(
  self : JsValue,
) -> HTMLOutputElement =
  #| (self) => self

///|
pub extern "js" fn HTMLOutputElement::to_html_element(
  self : HTMLOutputElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLOutputElement::to_element(
  self : HTMLOutputElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLOutputElement::to_node(self : HTMLOutputElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLOutputElement::to_event_target(
  self : HTMLOutputElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLOutputElement::new() -> HTMLOutputElement =
  #| () => new HTMLOutputElement()

///|
pub extern "js" fn HTMLOutputElement::get_html_for(
  self : HTMLOutputElement,
) -> DOMTokenList =
  #| (self) => self.htmlFor

///|
pub extern "js" fn HTMLOutputElement::get_form(
  self : HTMLOutputElement,
) -> HTMLFormElement? =
  #| (self) => (() => { const v = self.form; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLOutputElement::get_name(
  self : HTMLOutputElement,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn HTMLOutputElement::set_name(
  self : HTMLOutputElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.name = value }

///|
pub extern "js" fn HTMLOutputElement::get_type(
  self : HTMLOutputElement,
) -> String =
  #| (self) => self.type

///|
pub extern "js" fn HTMLOutputElement::get_default_value(
  self : HTMLOutputElement,
) -> String =
  #| (self) => self.defaultValue

///|
pub extern "js" fn HTMLOutputElement::set_default_value(
  self : HTMLOutputElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.defaultValue = value }

///|
pub extern "js" fn HTMLOutputElement::get_value(
  self : HTMLOutputElement,
) -> String =
  #| (self) => self.value

///|
pub extern "js" fn HTMLOutputElement::set_value(
  self : HTMLOutputElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.value = value }

///|
pub extern "js" fn HTMLOutputElement::get_will_validate(
  self : HTMLOutputElement,
) -> Bool =
  #| (self) => self.willValidate

///|
pub extern "js" fn HTMLOutputElement::get_validity(
  self : HTMLOutputElement,
) -> ValidityState =
  #| (self) => self.validity

///|
pub extern "js" fn HTMLOutputElement::get_validation_message(
  self : HTMLOutputElement,
) -> String =
  #| (self) => self.validationMessage

///|
pub extern "js" fn HTMLOutputElement::check_validity(
  self : HTMLOutputElement,
) -> Bool =
  #| (self) => self.checkValidity()

///|
pub extern "js" fn HTMLOutputElement::report_validity(
  self : HTMLOutputElement,
) -> Bool =
  #| (self) => self.reportValidity()

///|
pub extern "js" fn HTMLOutputElement::set_custom_validity(
  self : HTMLOutputElement,
  error : String,
) -> Unit =
  #| (self, error) => self.setCustomValidity(error)

///|
pub extern "js" fn HTMLOutputElement::get_labels(
  self : HTMLOutputElement,
) -> NodeList =
  #| (self) => self.labels

///|
/// HTMLProgressElement interface
pub type HTMLProgressElement

///|
pub extern "js" fn HTMLProgressElement::to_js_value(
  self : HTMLProgressElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLProgressElement (unchecked)
pub extern "js" fn HTMLProgressElement::from_js_value(
  v : JsValue,
) -> HTMLProgressElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLProgressElement (checked with instanceof)
pub extern "js" fn HTMLProgressElement::from_js_value_opt(
  v : JsValue,
) -> HTMLProgressElement? =
  #| (v) => (v instanceof HTMLProgressElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLProgressElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_progress_element(
  self : JsValue,
) -> HTMLProgressElement? =
  #| (self) => (self instanceof HTMLProgressElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLProgressElement (unchecked)
pub extern "js" fn JsValue::to_html_progress_element(
  self : JsValue,
) -> HTMLProgressElement =
  #| (self) => self

///|
pub extern "js" fn HTMLProgressElement::to_html_element(
  self : HTMLProgressElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLProgressElement::to_element(
  self : HTMLProgressElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLProgressElement::to_node(
  self : HTMLProgressElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLProgressElement::to_event_target(
  self : HTMLProgressElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLProgressElement::new() -> HTMLProgressElement =
  #| () => new HTMLProgressElement()

///|
pub extern "js" fn HTMLProgressElement::get_value(
  self : HTMLProgressElement,
) -> Double =
  #| (self) => self.value

///|
pub extern "js" fn HTMLProgressElement::set_value(
  self : HTMLProgressElement,
  value : Double,
) -> Unit =
  #| (self, value) => { self.value = value }

///|
pub extern "js" fn HTMLProgressElement::get_max(
  self : HTMLProgressElement,
) -> Double =
  #| (self) => self.max

///|
pub extern "js" fn HTMLProgressElement::set_max(
  self : HTMLProgressElement,
  value : Double,
) -> Unit =
  #| (self, value) => { self.max = value }

///|
pub extern "js" fn HTMLProgressElement::get_position(
  self : HTMLProgressElement,
) -> Double =
  #| (self) => self.position

///|
pub extern "js" fn HTMLProgressElement::get_labels(
  self : HTMLProgressElement,
) -> NodeList =
  #| (self) => self.labels

///|
/// HTMLMeterElement interface
pub type HTMLMeterElement

///|
pub extern "js" fn HTMLMeterElement::to_js_value(
  self : HTMLMeterElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLMeterElement (unchecked)
pub extern "js" fn HTMLMeterElement::from_js_value(
  v : JsValue,
) -> HTMLMeterElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLMeterElement (checked with instanceof)
pub extern "js" fn HTMLMeterElement::from_js_value_opt(
  v : JsValue,
) -> HTMLMeterElement? =
  #| (v) => (v instanceof HTMLMeterElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLMeterElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_meter_element(
  self : JsValue,
) -> HTMLMeterElement? =
  #| (self) => (self instanceof HTMLMeterElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLMeterElement (unchecked)
pub extern "js" fn JsValue::to_html_meter_element(
  self : JsValue,
) -> HTMLMeterElement =
  #| (self) => self

///|
pub extern "js" fn HTMLMeterElement::to_html_element(
  self : HTMLMeterElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLMeterElement::to_element(
  self : HTMLMeterElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLMeterElement::to_node(self : HTMLMeterElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLMeterElement::to_event_target(
  self : HTMLMeterElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLMeterElement::new() -> HTMLMeterElement =
  #| () => new HTMLMeterElement()

///|
pub extern "js" fn HTMLMeterElement::get_value(
  self : HTMLMeterElement,
) -> Double =
  #| (self) => self.value

///|
pub extern "js" fn HTMLMeterElement::set_value(
  self : HTMLMeterElement,
  value : Double,
) -> Unit =
  #| (self, value) => { self.value = value }

///|
pub extern "js" fn HTMLMeterElement::get_min(self : HTMLMeterElement) -> Double =
  #| (self) => self.min

///|
pub extern "js" fn HTMLMeterElement::set_min(
  self : HTMLMeterElement,
  value : Double,
) -> Unit =
  #| (self, value) => { self.min = value }

///|
pub extern "js" fn HTMLMeterElement::get_max(self : HTMLMeterElement) -> Double =
  #| (self) => self.max

///|
pub extern "js" fn HTMLMeterElement::set_max(
  self : HTMLMeterElement,
  value : Double,
) -> Unit =
  #| (self, value) => { self.max = value }

///|
pub extern "js" fn HTMLMeterElement::get_low(self : HTMLMeterElement) -> Double =
  #| (self) => self.low

///|
pub extern "js" fn HTMLMeterElement::set_low(
  self : HTMLMeterElement,
  value : Double,
) -> Unit =
  #| (self, value) => { self.low = value }

///|
pub extern "js" fn HTMLMeterElement::get_high(
  self : HTMLMeterElement,
) -> Double =
  #| (self) => self.high

///|
pub extern "js" fn HTMLMeterElement::set_high(
  self : HTMLMeterElement,
  value : Double,
) -> Unit =
  #| (self, value) => { self.high = value }

///|
pub extern "js" fn HTMLMeterElement::get_optimum(
  self : HTMLMeterElement,
) -> Double =
  #| (self) => self.optimum

///|
pub extern "js" fn HTMLMeterElement::set_optimum(
  self : HTMLMeterElement,
  value : Double,
) -> Unit =
  #| (self, value) => { self.optimum = value }

///|
pub extern "js" fn HTMLMeterElement::get_labels(
  self : HTMLMeterElement,
) -> NodeList =
  #| (self) => self.labels

///|
/// HTMLFieldSetElement interface
pub type HTMLFieldSetElement

///|
pub extern "js" fn HTMLFieldSetElement::to_js_value(
  self : HTMLFieldSetElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLFieldSetElement (unchecked)
pub extern "js" fn HTMLFieldSetElement::from_js_value(
  v : JsValue,
) -> HTMLFieldSetElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLFieldSetElement (checked with instanceof)
pub extern "js" fn HTMLFieldSetElement::from_js_value_opt(
  v : JsValue,
) -> HTMLFieldSetElement? =
  #| (v) => (v instanceof HTMLFieldSetElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLFieldSetElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_field_set_element(
  self : JsValue,
) -> HTMLFieldSetElement? =
  #| (self) => (self instanceof HTMLFieldSetElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLFieldSetElement (unchecked)
pub extern "js" fn JsValue::to_html_field_set_element(
  self : JsValue,
) -> HTMLFieldSetElement =
  #| (self) => self

///|
pub extern "js" fn HTMLFieldSetElement::to_html_element(
  self : HTMLFieldSetElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLFieldSetElement::to_element(
  self : HTMLFieldSetElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLFieldSetElement::to_node(
  self : HTMLFieldSetElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLFieldSetElement::to_event_target(
  self : HTMLFieldSetElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLFieldSetElement::new() -> HTMLFieldSetElement =
  #| () => new HTMLFieldSetElement()

///|
pub extern "js" fn HTMLFieldSetElement::get_disabled(
  self : HTMLFieldSetElement,
) -> Bool =
  #| (self) => self.disabled

///|
pub extern "js" fn HTMLFieldSetElement::set_disabled(
  self : HTMLFieldSetElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.disabled = value }

///|
pub extern "js" fn HTMLFieldSetElement::get_form(
  self : HTMLFieldSetElement,
) -> HTMLFormElement? =
  #| (self) => (() => { const v = self.form; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLFieldSetElement::get_name(
  self : HTMLFieldSetElement,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn HTMLFieldSetElement::set_name(
  self : HTMLFieldSetElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.name = value }

///|
pub extern "js" fn HTMLFieldSetElement::get_type(
  self : HTMLFieldSetElement,
) -> String =
  #| (self) => self.type

///|
pub extern "js" fn HTMLFieldSetElement::get_elements(
  self : HTMLFieldSetElement,
) -> HTMLCollection =
  #| (self) => self.elements

///|
pub extern "js" fn HTMLFieldSetElement::get_will_validate(
  self : HTMLFieldSetElement,
) -> Bool =
  #| (self) => self.willValidate

///|
pub extern "js" fn HTMLFieldSetElement::get_validity(
  self : HTMLFieldSetElement,
) -> ValidityState =
  #| (self) => self.validity

///|
pub extern "js" fn HTMLFieldSetElement::get_validation_message(
  self : HTMLFieldSetElement,
) -> String =
  #| (self) => self.validationMessage

///|
pub extern "js" fn HTMLFieldSetElement::check_validity(
  self : HTMLFieldSetElement,
) -> Bool =
  #| (self) => self.checkValidity()

///|
pub extern "js" fn HTMLFieldSetElement::report_validity(
  self : HTMLFieldSetElement,
) -> Bool =
  #| (self) => self.reportValidity()

///|
pub extern "js" fn HTMLFieldSetElement::set_custom_validity(
  self : HTMLFieldSetElement,
  error : String,
) -> Unit =
  #| (self, error) => self.setCustomValidity(error)

///|
/// HTMLLegendElement interface
pub type HTMLLegendElement

///|
pub extern "js" fn HTMLLegendElement::to_js_value(
  self : HTMLLegendElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLLegendElement (unchecked)
pub extern "js" fn HTMLLegendElement::from_js_value(
  v : JsValue,
) -> HTMLLegendElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLLegendElement (checked with instanceof)
pub extern "js" fn HTMLLegendElement::from_js_value_opt(
  v : JsValue,
) -> HTMLLegendElement? =
  #| (v) => (v instanceof HTMLLegendElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLLegendElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_legend_element(
  self : JsValue,
) -> HTMLLegendElement? =
  #| (self) => (self instanceof HTMLLegendElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLLegendElement (unchecked)
pub extern "js" fn JsValue::to_html_legend_element(
  self : JsValue,
) -> HTMLLegendElement =
  #| (self) => self

///|
pub extern "js" fn HTMLLegendElement::to_html_element(
  self : HTMLLegendElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLLegendElement::to_element(
  self : HTMLLegendElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLLegendElement::to_node(self : HTMLLegendElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLLegendElement::to_event_target(
  self : HTMLLegendElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLLegendElement::new() -> HTMLLegendElement =
  #| () => new HTMLLegendElement()

///|
pub extern "js" fn HTMLLegendElement::get_form(
  self : HTMLLegendElement,
) -> HTMLFormElement? =
  #| (self) => (() => { const v = self.form; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLLegendElement::get_align(
  self : HTMLLegendElement,
) -> String =
  #| (self) => self.align

///|
pub extern "js" fn HTMLLegendElement::set_align(
  self : HTMLLegendElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.align = value }

///|
/// HTMLSelectedContentElement interface
pub type HTMLSelectedContentElement

///|
pub extern "js" fn HTMLSelectedContentElement::to_js_value(
  self : HTMLSelectedContentElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLSelectedContentElement (unchecked)
pub extern "js" fn HTMLSelectedContentElement::from_js_value(
  v : JsValue,
) -> HTMLSelectedContentElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLSelectedContentElement (checked with instanceof)
pub extern "js" fn HTMLSelectedContentElement::from_js_value_opt(
  v : JsValue,
) -> HTMLSelectedContentElement? =
  #| (v) => (v instanceof HTMLSelectedContentElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLSelectedContentElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_selected_content_element(
  self : JsValue,
) -> HTMLSelectedContentElement? =
  #| (self) => (self instanceof HTMLSelectedContentElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLSelectedContentElement (unchecked)
pub extern "js" fn JsValue::to_html_selected_content_element(
  self : JsValue,
) -> HTMLSelectedContentElement =
  #| (self) => self

///|
pub extern "js" fn HTMLSelectedContentElement::to_html_element(
  self : HTMLSelectedContentElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLSelectedContentElement::to_element(
  self : HTMLSelectedContentElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLSelectedContentElement::to_node(
  self : HTMLSelectedContentElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLSelectedContentElement::to_event_target(
  self : HTMLSelectedContentElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLSelectedContentElement::new() -> HTMLSelectedContentElement =
  #| () => new HTMLSelectedContentElement()

///|
/// ValidityState interface
pub type ValidityState

///|
pub extern "js" fn ValidityState::to_js_value(self : ValidityState) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ValidityState (unchecked)
pub extern "js" fn ValidityState::from_js_value(v : JsValue) -> ValidityState =
  #| (v) => v

///|
/// Safely cast JsValue to ValidityState (checked with instanceof)
pub extern "js" fn ValidityState::from_js_value_opt(
  v : JsValue,
) -> ValidityState? =
  #| (v) => (v instanceof ValidityState) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ValidityState (checked with instanceof)
pub extern "js" fn JsValue::as_validity_state(self : JsValue) -> ValidityState? =
  #| (self) => (self instanceof ValidityState) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ValidityState (unchecked)
pub extern "js" fn JsValue::to_validity_state(self : JsValue) -> ValidityState =
  #| (self) => self

///|
pub extern "js" fn ValidityState::get_value_missing(
  self : ValidityState,
) -> Bool =
  #| (self) => self.valueMissing

///|
pub extern "js" fn ValidityState::get_type_mismatch(
  self : ValidityState,
) -> Bool =
  #| (self) => self.typeMismatch

///|
pub extern "js" fn ValidityState::get_pattern_mismatch(
  self : ValidityState,
) -> Bool =
  #| (self) => self.patternMismatch

///|
pub extern "js" fn ValidityState::get_too_long(self : ValidityState) -> Bool =
  #| (self) => self.tooLong

///|
pub extern "js" fn ValidityState::get_too_short(self : ValidityState) -> Bool =
  #| (self) => self.tooShort

///|
pub extern "js" fn ValidityState::get_range_underflow(
  self : ValidityState,
) -> Bool =
  #| (self) => self.rangeUnderflow

///|
pub extern "js" fn ValidityState::get_range_overflow(
  self : ValidityState,
) -> Bool =
  #| (self) => self.rangeOverflow

///|
pub extern "js" fn ValidityState::get_step_mismatch(
  self : ValidityState,
) -> Bool =
  #| (self) => self.stepMismatch

///|
pub extern "js" fn ValidityState::get_bad_input(self : ValidityState) -> Bool =
  #| (self) => self.badInput

///|
pub extern "js" fn ValidityState::get_custom_error(
  self : ValidityState,
) -> Bool =
  #| (self) => self.customError

///|
pub extern "js" fn ValidityState::get_valid(self : ValidityState) -> Bool =
  #| (self) => self.valid

///|
/// SubmitEvent interface
pub type SubmitEvent

///|
pub extern "js" fn SubmitEvent::to_js_value(self : SubmitEvent) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SubmitEvent (unchecked)
pub extern "js" fn SubmitEvent::from_js_value(v : JsValue) -> SubmitEvent =
  #| (v) => v

///|
/// Safely cast JsValue to SubmitEvent (checked with instanceof)
pub extern "js" fn SubmitEvent::from_js_value_opt(v : JsValue) -> SubmitEvent? =
  #| (v) => (v instanceof SubmitEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SubmitEvent (checked with instanceof)
pub extern "js" fn JsValue::as_submit_event(self : JsValue) -> SubmitEvent? =
  #| (self) => (self instanceof SubmitEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SubmitEvent (unchecked)
pub extern "js" fn JsValue::to_submit_event(self : JsValue) -> SubmitEvent =
  #| (self) => self

///|
pub extern "js" fn SubmitEvent::to_event(self : SubmitEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn SubmitEvent::new(type_ : String) -> SubmitEvent =
  #| (type_) => new SubmitEvent(type_)

///|
extern "js" fn SubmitEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> SubmitEvent =
  #| (type_, event_init_dict) => new SubmitEvent(type_, event_init_dict)

///|
pub fn SubmitEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : SubmitEventInit,
) -> SubmitEvent {
  SubmitEvent::new_with_event_init_dict_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn SubmitEvent::get_submitter(
  self : SubmitEvent,
) -> HTMLElement? =
  #| (self) => (() => { const v = self.submitter; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// FormDataEvent interface
pub type FormDataEvent

///|
pub extern "js" fn FormDataEvent::to_js_value(self : FormDataEvent) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to FormDataEvent (unchecked)
pub extern "js" fn FormDataEvent::from_js_value(v : JsValue) -> FormDataEvent =
  #| (v) => v

///|
/// Safely cast JsValue to FormDataEvent (checked with instanceof)
pub extern "js" fn FormDataEvent::from_js_value_opt(
  v : JsValue,
) -> FormDataEvent? =
  #| (v) => (v instanceof FormDataEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to FormDataEvent (checked with instanceof)
pub extern "js" fn JsValue::as_form_data_event(
  self : JsValue,
) -> FormDataEvent? =
  #| (self) => (self instanceof FormDataEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to FormDataEvent (unchecked)
pub extern "js" fn JsValue::to_form_data_event(self : JsValue) -> FormDataEvent =
  #| (self) => self

///|
pub extern "js" fn FormDataEvent::to_event(self : FormDataEvent) -> Event =
  #| (self) => self

///|
extern "js" fn FormDataEvent::new_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> FormDataEvent =
  #| (type_, event_init_dict) => new FormDataEvent(type_, event_init_dict)

///|
pub fn FormDataEvent::new(
  type_ : String,
  event_init_dict : FormDataEventInit,
) -> FormDataEvent {
  FormDataEvent::new_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn FormDataEvent::get_form_data(
  self : FormDataEvent,
) -> FormData =
  #| (self) => self.formData

///|
/// HTMLDetailsElement interface
pub type HTMLDetailsElement

///|
pub extern "js" fn HTMLDetailsElement::to_js_value(
  self : HTMLDetailsElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLDetailsElement (unchecked)
pub extern "js" fn HTMLDetailsElement::from_js_value(
  v : JsValue,
) -> HTMLDetailsElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLDetailsElement (checked with instanceof)
pub extern "js" fn HTMLDetailsElement::from_js_value_opt(
  v : JsValue,
) -> HTMLDetailsElement? =
  #| (v) => (v instanceof HTMLDetailsElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLDetailsElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_details_element(
  self : JsValue,
) -> HTMLDetailsElement? =
  #| (self) => (self instanceof HTMLDetailsElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLDetailsElement (unchecked)
pub extern "js" fn JsValue::to_html_details_element(
  self : JsValue,
) -> HTMLDetailsElement =
  #| (self) => self

///|
pub extern "js" fn HTMLDetailsElement::to_html_element(
  self : HTMLDetailsElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLDetailsElement::to_element(
  self : HTMLDetailsElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLDetailsElement::to_node(
  self : HTMLDetailsElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLDetailsElement::to_event_target(
  self : HTMLDetailsElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLDetailsElement::new() -> HTMLDetailsElement =
  #| () => new HTMLDetailsElement()

///|
pub extern "js" fn HTMLDetailsElement::get_name(
  self : HTMLDetailsElement,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn HTMLDetailsElement::set_name(
  self : HTMLDetailsElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.name = value }

///|
pub extern "js" fn HTMLDetailsElement::get_open(
  self : HTMLDetailsElement,
) -> Bool =
  #| (self) => self.open

///|
pub extern "js" fn HTMLDetailsElement::set_open(
  self : HTMLDetailsElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.open = value }

///|
/// HTMLDialogElement interface
pub type HTMLDialogElement

///|
pub extern "js" fn HTMLDialogElement::to_js_value(
  self : HTMLDialogElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLDialogElement (unchecked)
pub extern "js" fn HTMLDialogElement::from_js_value(
  v : JsValue,
) -> HTMLDialogElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLDialogElement (checked with instanceof)
pub extern "js" fn HTMLDialogElement::from_js_value_opt(
  v : JsValue,
) -> HTMLDialogElement? =
  #| (v) => (v instanceof HTMLDialogElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLDialogElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_dialog_element(
  self : JsValue,
) -> HTMLDialogElement? =
  #| (self) => (self instanceof HTMLDialogElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLDialogElement (unchecked)
pub extern "js" fn JsValue::to_html_dialog_element(
  self : JsValue,
) -> HTMLDialogElement =
  #| (self) => self

///|
pub extern "js" fn HTMLDialogElement::to_html_element(
  self : HTMLDialogElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLDialogElement::to_element(
  self : HTMLDialogElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLDialogElement::to_node(self : HTMLDialogElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLDialogElement::to_event_target(
  self : HTMLDialogElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLDialogElement::new() -> HTMLDialogElement =
  #| () => new HTMLDialogElement()

///|
pub extern "js" fn HTMLDialogElement::get_open(
  self : HTMLDialogElement,
) -> Bool =
  #| (self) => self.open

///|
pub extern "js" fn HTMLDialogElement::set_open(
  self : HTMLDialogElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.open = value }

///|
pub extern "js" fn HTMLDialogElement::get_return_value(
  self : HTMLDialogElement,
) -> String =
  #| (self) => self.returnValue

///|
pub extern "js" fn HTMLDialogElement::set_return_value(
  self : HTMLDialogElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.returnValue = value }

///|
pub extern "js" fn HTMLDialogElement::get_closed_by(
  self : HTMLDialogElement,
) -> String =
  #| (self) => self.closedBy

///|
pub extern "js" fn HTMLDialogElement::set_closed_by(
  self : HTMLDialogElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.closedBy = value }

///|
pub extern "js" fn HTMLDialogElement::show(self : HTMLDialogElement) -> Unit =
  #| (self) => self.show()

///|
pub extern "js" fn HTMLDialogElement::show_modal(
  self : HTMLDialogElement,
) -> Unit =
  #| (self) => self.showModal()

///|
pub extern "js" fn HTMLDialogElement::close(self : HTMLDialogElement) -> Unit =
  #| (self) => self.close()

///|
pub extern "js" fn HTMLDialogElement::close_with_return_value(
  self : HTMLDialogElement,
  return_value : String,
) -> Unit =
  #| (self, return_value) => self.close(return_value)

///|
pub extern "js" fn HTMLDialogElement::request_close(
  self : HTMLDialogElement,
) -> Unit =
  #| (self) => self.requestClose()

///|
pub extern "js" fn HTMLDialogElement::request_close_with_return_value(
  self : HTMLDialogElement,
  return_value : String,
) -> Unit =
  #| (self, return_value) => self.requestClose(return_value)

///|
/// HTMLScriptElement interface
pub type HTMLScriptElement

///|
pub extern "js" fn HTMLScriptElement::to_js_value(
  self : HTMLScriptElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLScriptElement (unchecked)
pub extern "js" fn HTMLScriptElement::from_js_value(
  v : JsValue,
) -> HTMLScriptElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLScriptElement (checked with instanceof)
pub extern "js" fn HTMLScriptElement::from_js_value_opt(
  v : JsValue,
) -> HTMLScriptElement? =
  #| (v) => (v instanceof HTMLScriptElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLScriptElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_script_element(
  self : JsValue,
) -> HTMLScriptElement? =
  #| (self) => (self instanceof HTMLScriptElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLScriptElement (unchecked)
pub extern "js" fn JsValue::to_html_script_element(
  self : JsValue,
) -> HTMLScriptElement =
  #| (self) => self

///|
pub extern "js" fn HTMLScriptElement::to_html_element(
  self : HTMLScriptElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLScriptElement::to_element(
  self : HTMLScriptElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLScriptElement::to_node(self : HTMLScriptElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLScriptElement::to_event_target(
  self : HTMLScriptElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLScriptElement::new() -> HTMLScriptElement =
  #| () => new HTMLScriptElement()

///|
pub extern "js" fn HTMLScriptElement::get_type(
  self : HTMLScriptElement,
) -> String =
  #| (self) => self.type

///|
pub extern "js" fn HTMLScriptElement::set_type(
  self : HTMLScriptElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.type = value }

///|
pub extern "js" fn HTMLScriptElement::get_src(
  self : HTMLScriptElement,
) -> String =
  #| (self) => self.src

///|
pub extern "js" fn HTMLScriptElement::set_src(
  self : HTMLScriptElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.src = value }

///|
pub extern "js" fn HTMLScriptElement::get_no_module(
  self : HTMLScriptElement,
) -> Bool =
  #| (self) => self.noModule

///|
pub extern "js" fn HTMLScriptElement::set_no_module(
  self : HTMLScriptElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.noModule = value }

///|
pub extern "js" fn HTMLScriptElement::get_async(
  self : HTMLScriptElement,
) -> Bool =
  #| (self) => self.async

///|
pub extern "js" fn HTMLScriptElement::set_async(
  self : HTMLScriptElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.async = value }

///|
pub extern "js" fn HTMLScriptElement::get_defer(
  self : HTMLScriptElement,
) -> Bool =
  #| (self) => self.defer

///|
pub extern "js" fn HTMLScriptElement::set_defer(
  self : HTMLScriptElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.defer = value }

///|
pub extern "js" fn HTMLScriptElement::get_blocking(
  self : HTMLScriptElement,
) -> DOMTokenList =
  #| (self) => self.blocking

///|
pub extern "js" fn HTMLScriptElement::get_cross_origin(
  self : HTMLScriptElement,
) -> String? =
  #| (self) => (self.crossOrigin) ?? undefined

///|
pub extern "js" fn HTMLScriptElement::set_cross_origin(
  self : HTMLScriptElement,
  value : String?,
) -> Unit =
  #| (self, value) => { self.crossOrigin = value }

///|
pub extern "js" fn HTMLScriptElement::get_referrer_policy(
  self : HTMLScriptElement,
) -> String =
  #| (self) => self.referrerPolicy

///|
pub extern "js" fn HTMLScriptElement::set_referrer_policy(
  self : HTMLScriptElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.referrerPolicy = value }

///|
pub extern "js" fn HTMLScriptElement::get_integrity(
  self : HTMLScriptElement,
) -> String =
  #| (self) => self.integrity

///|
pub extern "js" fn HTMLScriptElement::set_integrity(
  self : HTMLScriptElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.integrity = value }

///|
pub extern "js" fn HTMLScriptElement::get_fetch_priority(
  self : HTMLScriptElement,
) -> String =
  #| (self) => self.fetchPriority

///|
pub extern "js" fn HTMLScriptElement::set_fetch_priority(
  self : HTMLScriptElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.fetchPriority = value }

///|
pub extern "js" fn HTMLScriptElement::get_text(
  self : HTMLScriptElement,
) -> String =
  #| (self) => self.text

///|
pub extern "js" fn HTMLScriptElement::set_text(
  self : HTMLScriptElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.text = value }

///|
pub extern "js" fn HTMLScriptElement::supports(type_ : String) -> Bool =
  #| (type_) => HTMLScriptElement.supports(type_)

///|
pub extern "js" fn HTMLScriptElement::get_charset(
  self : HTMLScriptElement,
) -> String =
  #| (self) => self.charset

///|
pub extern "js" fn HTMLScriptElement::set_charset(
  self : HTMLScriptElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.charset = value }

///|
pub extern "js" fn HTMLScriptElement::get_event(
  self : HTMLScriptElement,
) -> String =
  #| (self) => self.event

///|
pub extern "js" fn HTMLScriptElement::set_event(
  self : HTMLScriptElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.event = value }

///|
pub extern "js" fn HTMLScriptElement::get_html_for(
  self : HTMLScriptElement,
) -> String =
  #| (self) => self.htmlFor

///|
pub extern "js" fn HTMLScriptElement::set_html_for(
  self : HTMLScriptElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.htmlFor = value }

///|
pub extern "js" fn HTMLScriptElement::get_attribution_src(
  self : HTMLScriptElement,
) -> String =
  #| (self) => self.attributionSrc

///|
pub extern "js" fn HTMLScriptElement::set_attribution_src(
  self : HTMLScriptElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.attributionSrc = value }

///|
/// HTMLTemplateElement interface
pub type HTMLTemplateElement

///|
pub extern "js" fn HTMLTemplateElement::to_js_value(
  self : HTMLTemplateElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLTemplateElement (unchecked)
pub extern "js" fn HTMLTemplateElement::from_js_value(
  v : JsValue,
) -> HTMLTemplateElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLTemplateElement (checked with instanceof)
pub extern "js" fn HTMLTemplateElement::from_js_value_opt(
  v : JsValue,
) -> HTMLTemplateElement? =
  #| (v) => (v instanceof HTMLTemplateElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLTemplateElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_template_element(
  self : JsValue,
) -> HTMLTemplateElement? =
  #| (self) => (self instanceof HTMLTemplateElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLTemplateElement (unchecked)
pub extern "js" fn JsValue::to_html_template_element(
  self : JsValue,
) -> HTMLTemplateElement =
  #| (self) => self

///|
pub extern "js" fn HTMLTemplateElement::to_html_element(
  self : HTMLTemplateElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLTemplateElement::to_element(
  self : HTMLTemplateElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLTemplateElement::to_node(
  self : HTMLTemplateElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLTemplateElement::to_event_target(
  self : HTMLTemplateElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLTemplateElement::new() -> HTMLTemplateElement =
  #| () => new HTMLTemplateElement()

///|
pub extern "js" fn HTMLTemplateElement::get_content(
  self : HTMLTemplateElement,
) -> DocumentFragment =
  #| (self) => self.content

///|
pub extern "js" fn HTMLTemplateElement::get_shadow_root_mode(
  self : HTMLTemplateElement,
) -> String =
  #| (self) => self.shadowRootMode

///|
pub extern "js" fn HTMLTemplateElement::set_shadow_root_mode(
  self : HTMLTemplateElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.shadowRootMode = value }

///|
pub extern "js" fn HTMLTemplateElement::get_shadow_root_delegates_focus(
  self : HTMLTemplateElement,
) -> Bool =
  #| (self) => self.shadowRootDelegatesFocus

///|
pub extern "js" fn HTMLTemplateElement::set_shadow_root_delegates_focus(
  self : HTMLTemplateElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.shadowRootDelegatesFocus = value }

///|
pub extern "js" fn HTMLTemplateElement::get_shadow_root_clonable(
  self : HTMLTemplateElement,
) -> Bool =
  #| (self) => self.shadowRootClonable

///|
pub extern "js" fn HTMLTemplateElement::set_shadow_root_clonable(
  self : HTMLTemplateElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.shadowRootClonable = value }

///|
pub extern "js" fn HTMLTemplateElement::get_shadow_root_serializable(
  self : HTMLTemplateElement,
) -> Bool =
  #| (self) => self.shadowRootSerializable

///|
pub extern "js" fn HTMLTemplateElement::set_shadow_root_serializable(
  self : HTMLTemplateElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.shadowRootSerializable = value }

///|
pub extern "js" fn HTMLTemplateElement::get_shadow_root_custom_element_registry(
  self : HTMLTemplateElement,
) -> String =
  #| (self) => self.shadowRootCustomElementRegistry

///|
pub extern "js" fn HTMLTemplateElement::set_shadow_root_custom_element_registry(
  self : HTMLTemplateElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.shadowRootCustomElementRegistry = value }

///|
/// HTMLSlotElement interface
pub type HTMLSlotElement

///|
pub extern "js" fn HTMLSlotElement::to_js_value(
  self : HTMLSlotElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLSlotElement (unchecked)
pub extern "js" fn HTMLSlotElement::from_js_value(
  v : JsValue,
) -> HTMLSlotElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLSlotElement (checked with instanceof)
pub extern "js" fn HTMLSlotElement::from_js_value_opt(
  v : JsValue,
) -> HTMLSlotElement? =
  #| (v) => (v instanceof HTMLSlotElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLSlotElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_slot_element(
  self : JsValue,
) -> HTMLSlotElement? =
  #| (self) => (self instanceof HTMLSlotElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLSlotElement (unchecked)
pub extern "js" fn JsValue::to_html_slot_element(
  self : JsValue,
) -> HTMLSlotElement =
  #| (self) => self

///|
pub extern "js" fn HTMLSlotElement::to_html_element(
  self : HTMLSlotElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLSlotElement::to_element(
  self : HTMLSlotElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLSlotElement::to_node(self : HTMLSlotElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLSlotElement::to_event_target(
  self : HTMLSlotElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLSlotElement::new() -> HTMLSlotElement =
  #| () => new HTMLSlotElement()

///|
pub extern "js" fn HTMLSlotElement::get_name(self : HTMLSlotElement) -> String =
  #| (self) => self.name

///|
pub extern "js" fn HTMLSlotElement::set_name(
  self : HTMLSlotElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.name = value }

///|
pub extern "js" fn HTMLSlotElement::assigned_nodes(
  self : HTMLSlotElement,
) -> Array[Node] =
  #| (self) => self.assignedNodes()

///|
extern "js" fn HTMLSlotElement::assigned_nodes_with_options_ffi(
  self : HTMLSlotElement,
  options : JsValue,
) -> Array[Node] =
  #| (self, options) => self.assignedNodes(options)

///|
pub fn HTMLSlotElement::assigned_nodes_with_options(
  self : HTMLSlotElement,
  options : AssignedNodesOptions,
) -> Array[Node] {
  HTMLSlotElement::assigned_nodes_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn HTMLSlotElement::assigned_elements(
  self : HTMLSlotElement,
) -> Array[Element] =
  #| (self) => self.assignedElements()

///|
extern "js" fn HTMLSlotElement::assigned_elements_with_options_ffi(
  self : HTMLSlotElement,
  options : JsValue,
) -> Array[Element] =
  #| (self, options) => self.assignedElements(options)

///|
pub fn HTMLSlotElement::assigned_elements_with_options(
  self : HTMLSlotElement,
  options : AssignedNodesOptions,
) -> Array[Element] {
  HTMLSlotElement::assigned_elements_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn HTMLSlotElement::assign(
  self : HTMLSlotElement,
  nodes : ElementOrText,
) -> Unit =
  #| (self, nodes) => self.assign(nodes)

///|
/// HTMLCanvasElement interface
pub type HTMLCanvasElement

///|
pub extern "js" fn HTMLCanvasElement::to_js_value(
  self : HTMLCanvasElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLCanvasElement (unchecked)
pub extern "js" fn HTMLCanvasElement::from_js_value(
  v : JsValue,
) -> HTMLCanvasElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLCanvasElement (checked with instanceof)
pub extern "js" fn HTMLCanvasElement::from_js_value_opt(
  v : JsValue,
) -> HTMLCanvasElement? =
  #| (v) => (v instanceof HTMLCanvasElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLCanvasElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_canvas_element(
  self : JsValue,
) -> HTMLCanvasElement? =
  #| (self) => (self instanceof HTMLCanvasElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLCanvasElement (unchecked)
pub extern "js" fn JsValue::to_html_canvas_element(
  self : JsValue,
) -> HTMLCanvasElement =
  #| (self) => self

///|
pub extern "js" fn HTMLCanvasElement::to_html_element(
  self : HTMLCanvasElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLCanvasElement::to_element(
  self : HTMLCanvasElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLCanvasElement::to_node(self : HTMLCanvasElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLCanvasElement::to_event_target(
  self : HTMLCanvasElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLCanvasElement::new() -> HTMLCanvasElement =
  #| () => new HTMLCanvasElement()

///|
pub extern "js" fn HTMLCanvasElement::get_width(
  self : HTMLCanvasElement,
) -> Int =
  #| (self) => self.width

///|
pub extern "js" fn HTMLCanvasElement::set_width(
  self : HTMLCanvasElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.width = value }

///|
pub extern "js" fn HTMLCanvasElement::get_height(
  self : HTMLCanvasElement,
) -> Int =
  #| (self) => self.height

///|
pub extern "js" fn HTMLCanvasElement::set_height(
  self : HTMLCanvasElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.height = value }

///|
pub extern "js" fn HTMLCanvasElement::get_context(
  self : HTMLCanvasElement,
  context_id : String,
) -> RenderingContext? =
  #| (self, context_id) => (() => { const v = self.getContext(context_id); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLCanvasElement::get_context_with_options(
  self : HTMLCanvasElement,
  context_id : String,
  options : JsValue,
) -> RenderingContext? =
  #| (self, context_id, options) => (() => { const v = self.getContext(context_id, options); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLCanvasElement::to_data_url(
  self : HTMLCanvasElement,
) -> String =
  #| (self) => self.toDataURL()

///|
pub extern "js" fn HTMLCanvasElement::to_data_url_with_quality(
  self : HTMLCanvasElement,
  type_ : String,
  quality : JsValue,
) -> String =
  #| (self, type_, quality) => self.toDataURL(type_, quality)

///|
pub extern "js" fn HTMLCanvasElement::to_blob(
  self : HTMLCanvasElement,
  callback : BlobCallback,
) -> Unit =
  #| (self, callback) => self.toBlob(callback)

///|
pub extern "js" fn HTMLCanvasElement::to_blob_with_quality(
  self : HTMLCanvasElement,
  callback : BlobCallback,
  type_ : String,
  quality : JsValue,
) -> Unit =
  #| (self, callback, type_, quality) => self.toBlob(callback, type_, quality)

///|
pub extern "js" fn HTMLCanvasElement::transfer_control_to_offscreen(
  self : HTMLCanvasElement,
) -> OffscreenCanvas =
  #| (self) => self.transferControlToOffscreen()

///|
pub extern "js" fn HTMLCanvasElement::capture_stream(
  self : HTMLCanvasElement,
) -> MediaStream =
  #| (self) => self.captureStream()

///|
pub extern "js" fn HTMLCanvasElement::capture_stream_with_frame_request_rate(
  self : HTMLCanvasElement,
  frame_request_rate : Double,
) -> MediaStream =
  #| (self, frame_request_rate) => self.captureStream(frame_request_rate)

///|
/// CanvasRenderingContext2D interface
pub type CanvasRenderingContext2D

///|
pub extern "js" fn CanvasRenderingContext2D::to_js_value(
  self : CanvasRenderingContext2D,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CanvasRenderingContext2D (unchecked)
pub extern "js" fn CanvasRenderingContext2D::from_js_value(
  v : JsValue,
) -> CanvasRenderingContext2D =
  #| (v) => v

///|
/// Safely cast JsValue to CanvasRenderingContext2D (checked with instanceof)
pub extern "js" fn CanvasRenderingContext2D::from_js_value_opt(
  v : JsValue,
) -> CanvasRenderingContext2D? =
  #| (v) => (v instanceof CanvasRenderingContext2D) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CanvasRenderingContext2D (checked with instanceof)
pub extern "js" fn JsValue::as_canvas_rendering_context_2d(
  self : JsValue,
) -> CanvasRenderingContext2D? =
  #| (self) => (self instanceof CanvasRenderingContext2D) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CanvasRenderingContext2D (unchecked)
pub extern "js" fn JsValue::to_canvas_rendering_context_2d(
  self : JsValue,
) -> CanvasRenderingContext2D =
  #| (self) => self

///|
pub extern "js" fn CanvasRenderingContext2D::get_canvas(
  self : CanvasRenderingContext2D,
) -> HTMLCanvasElement =
  #| (self) => self.canvas

///|
pub extern "js" fn CanvasRenderingContext2D::get_context_attributes(
  self : CanvasRenderingContext2D,
) -> CanvasRenderingContext2DSettings =
  #| (self) => self.getContextAttributes()

///|
pub extern "js" fn CanvasRenderingContext2D::save(
  self : CanvasRenderingContext2D,
) -> Unit =
  #| (self) => self.save()

///|
pub extern "js" fn CanvasRenderingContext2D::restore(
  self : CanvasRenderingContext2D,
) -> Unit =
  #| (self) => self.restore()

///|
pub extern "js" fn CanvasRenderingContext2D::reset(
  self : CanvasRenderingContext2D,
) -> Unit =
  #| (self) => self.reset()

///|
pub extern "js" fn CanvasRenderingContext2D::is_context_lost(
  self : CanvasRenderingContext2D,
) -> Bool =
  #| (self) => self.isContextLost()

///|
pub extern "js" fn CanvasRenderingContext2D::scale(
  self : CanvasRenderingContext2D,
  x : Double,
  y : Double,
) -> Unit =
  #| (self, x, y) => self.scale(x, y)

///|
pub extern "js" fn CanvasRenderingContext2D::rotate(
  self : CanvasRenderingContext2D,
  angle : Double,
) -> Unit =
  #| (self, angle) => self.rotate(angle)

///|
pub extern "js" fn CanvasRenderingContext2D::translate(
  self : CanvasRenderingContext2D,
  x : Double,
  y : Double,
) -> Unit =
  #| (self, x, y) => self.translate(x, y)

///|
pub extern "js" fn CanvasRenderingContext2D::transform(
  self : CanvasRenderingContext2D,
  a : Double,
  b : Double,
  c : Double,
  d : Double,
  e : Double,
  f : Double,
) -> Unit =
  #| (self, a, b, c, d, e, f) => self.transform(a, b, c, d, e, f)

///|
pub extern "js" fn CanvasRenderingContext2D::get_transform(
  self : CanvasRenderingContext2D,
) -> DOMMatrix =
  #| (self) => self.getTransform()

///|
pub extern "js" fn CanvasRenderingContext2D::set_transform(
  self : CanvasRenderingContext2D,
) -> Unit =
  #| (self) => self.setTransform()

///|
extern "js" fn CanvasRenderingContext2D::set_transform_with_transform_ffi(
  self : CanvasRenderingContext2D,
  transform : JsValue,
) -> Unit =
  #| (self, transform) => self.setTransform(transform)

///|
pub fn CanvasRenderingContext2D::set_transform_with_transform(
  self : CanvasRenderingContext2D,
  transform : DOMMatrix2DInit,
) -> Unit {
  CanvasRenderingContext2D::set_transform_with_transform_ffi(
    self,
    transform.to_js(),
  )
}

///|
pub extern "js" fn CanvasRenderingContext2D::set_transform_with_a_and_b_and_c_and_d_and_e_and_f(
  self : CanvasRenderingContext2D,
  a : Double,
  b : Double,
  c : Double,
  d : Double,
  e : Double,
  f : Double,
) -> Unit =
  #| (self, a, b, c, d, e, f) => self.setTransform(a, b, c, d, e, f)

///|
pub extern "js" fn CanvasRenderingContext2D::reset_transform(
  self : CanvasRenderingContext2D,
) -> Unit =
  #| (self) => self.resetTransform()

///|
pub extern "js" fn CanvasRenderingContext2D::get_global_alpha(
  self : CanvasRenderingContext2D,
) -> Double =
  #| (self) => self.globalAlpha

///|
pub extern "js" fn CanvasRenderingContext2D::set_global_alpha(
  self : CanvasRenderingContext2D,
  value : Double,
) -> Unit =
  #| (self, value) => { self.globalAlpha = value }

///|
pub extern "js" fn CanvasRenderingContext2D::get_global_composite_operation(
  self : CanvasRenderingContext2D,
) -> String =
  #| (self) => self.globalCompositeOperation

///|
pub extern "js" fn CanvasRenderingContext2D::set_global_composite_operation(
  self : CanvasRenderingContext2D,
  value : String,
) -> Unit =
  #| (self, value) => { self.globalCompositeOperation = value }

///|
pub extern "js" fn CanvasRenderingContext2D::get_image_smoothing_enabled(
  self : CanvasRenderingContext2D,
) -> Bool =
  #| (self) => self.imageSmoothingEnabled

///|
pub extern "js" fn CanvasRenderingContext2D::set_image_smoothing_enabled(
  self : CanvasRenderingContext2D,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.imageSmoothingEnabled = value }

///|
pub extern "js" fn CanvasRenderingContext2D::get_image_smoothing_quality(
  self : CanvasRenderingContext2D,
) -> ImageSmoothingQuality =
  #| (self) => ['low', 'medium', 'high'].indexOf(self.imageSmoothingQuality)

///|
pub extern "js" fn CanvasRenderingContext2D::set_image_smoothing_quality(
  self : CanvasRenderingContext2D,
  value : ImageSmoothingQuality,
) -> Unit =
  #| (self, value) => { self.imageSmoothingQuality = ['low', 'medium', 'high'][value] }

///|
pub extern "js" fn CanvasRenderingContext2D::get_stroke_style(
  self : CanvasRenderingContext2D,
) -> StringOrCanvasGradientOrCanvasPattern =
  #| (self) => self.strokeStyle

///|
pub extern "js" fn CanvasRenderingContext2D::set_stroke_style(
  self : CanvasRenderingContext2D,
  value : StringOrCanvasGradientOrCanvasPattern,
) -> Unit =
  #| (self, value) => { self.strokeStyle = value }

///|
pub extern "js" fn CanvasRenderingContext2D::get_fill_style(
  self : CanvasRenderingContext2D,
) -> StringOrCanvasGradientOrCanvasPattern =
  #| (self) => self.fillStyle

///|
pub extern "js" fn CanvasRenderingContext2D::set_fill_style(
  self : CanvasRenderingContext2D,
  value : StringOrCanvasGradientOrCanvasPattern,
) -> Unit =
  #| (self, value) => { self.fillStyle = value }

///|
pub extern "js" fn CanvasRenderingContext2D::create_linear_gradient(
  self : CanvasRenderingContext2D,
  x0 : Double,
  y0 : Double,
  x1 : Double,
  y1 : Double,
) -> CanvasGradient =
  #| (self, x0, y0, x1, y1) => self.createLinearGradient(x0, y0, x1, y1)

///|
pub extern "js" fn CanvasRenderingContext2D::create_radial_gradient(
  self : CanvasRenderingContext2D,
  x0 : Double,
  y0 : Double,
  r0 : Double,
  x1 : Double,
  y1 : Double,
  r1 : Double,
) -> CanvasGradient =
  #| (self, x0, y0, r0, x1, y1, r1) => self.createRadialGradient(x0, y0, r0, x1, y1, r1)

///|
pub extern "js" fn CanvasRenderingContext2D::create_conic_gradient(
  self : CanvasRenderingContext2D,
  start_angle : Double,
  x : Double,
  y : Double,
) -> CanvasGradient =
  #| (self, start_angle, x, y) => self.createConicGradient(start_angle, x, y)

///|
pub extern "js" fn CanvasRenderingContext2D::create_pattern(
  self : CanvasRenderingContext2D,
  image : CanvasImageSource,
  repetition : String,
) -> CanvasPattern? =
  #| (self, image, repetition) => (() => { const v = self.createPattern(image, repetition); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn CanvasRenderingContext2D::get_shadow_offset_x(
  self : CanvasRenderingContext2D,
) -> Double =
  #| (self) => self.shadowOffsetX

///|
pub extern "js" fn CanvasRenderingContext2D::set_shadow_offset_x(
  self : CanvasRenderingContext2D,
  value : Double,
) -> Unit =
  #| (self, value) => { self.shadowOffsetX = value }

///|
pub extern "js" fn CanvasRenderingContext2D::get_shadow_offset_y(
  self : CanvasRenderingContext2D,
) -> Double =
  #| (self) => self.shadowOffsetY

///|
pub extern "js" fn CanvasRenderingContext2D::set_shadow_offset_y(
  self : CanvasRenderingContext2D,
  value : Double,
) -> Unit =
  #| (self, value) => { self.shadowOffsetY = value }

///|
pub extern "js" fn CanvasRenderingContext2D::get_shadow_blur(
  self : CanvasRenderingContext2D,
) -> Double =
  #| (self) => self.shadowBlur

///|
pub extern "js" fn CanvasRenderingContext2D::set_shadow_blur(
  self : CanvasRenderingContext2D,
  value : Double,
) -> Unit =
  #| (self, value) => { self.shadowBlur = value }

///|
pub extern "js" fn CanvasRenderingContext2D::get_shadow_color(
  self : CanvasRenderingContext2D,
) -> String =
  #| (self) => self.shadowColor

///|
pub extern "js" fn CanvasRenderingContext2D::set_shadow_color(
  self : CanvasRenderingContext2D,
  value : String,
) -> Unit =
  #| (self, value) => { self.shadowColor = value }

///|
pub extern "js" fn CanvasRenderingContext2D::get_filter(
  self : CanvasRenderingContext2D,
) -> String =
  #| (self) => self.filter

///|
pub extern "js" fn CanvasRenderingContext2D::set_filter(
  self : CanvasRenderingContext2D,
  value : String,
) -> Unit =
  #| (self, value) => { self.filter = value }

///|
pub extern "js" fn CanvasRenderingContext2D::clear_rect(
  self : CanvasRenderingContext2D,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
) -> Unit =
  #| (self, x, y, w, h) => self.clearRect(x, y, w, h)

///|
pub extern "js" fn CanvasRenderingContext2D::fill_rect(
  self : CanvasRenderingContext2D,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
) -> Unit =
  #| (self, x, y, w, h) => self.fillRect(x, y, w, h)

///|
pub extern "js" fn CanvasRenderingContext2D::stroke_rect(
  self : CanvasRenderingContext2D,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
) -> Unit =
  #| (self, x, y, w, h) => self.strokeRect(x, y, w, h)

///|
pub extern "js" fn CanvasRenderingContext2D::begin_path(
  self : CanvasRenderingContext2D,
) -> Unit =
  #| (self) => self.beginPath()

///|
pub extern "js" fn CanvasRenderingContext2D::fill(
  self : CanvasRenderingContext2D,
) -> Unit =
  #| (self) => self.fill()

///|
pub extern "js" fn CanvasRenderingContext2D::fill_with_fill_rule(
  self : CanvasRenderingContext2D,
  fill_rule : CanvasFillRule,
) -> Unit =
  #| (self, fill_rule) => self.fill(['nonzero', 'evenodd'][fill_rule])

///|
pub extern "js" fn CanvasRenderingContext2D::fill_with_path_path_2d(
  self : CanvasRenderingContext2D,
  path : Path2D,
) -> Unit =
  #| (self, path) => self.fill(path)

///|
pub extern "js" fn CanvasRenderingContext2D::fill_with_path_path_2d_and_fill_rule_canvas_fill_rule(
  self : CanvasRenderingContext2D,
  path : Path2D,
  fill_rule : CanvasFillRule,
) -> Unit =
  #| (self, path, fill_rule) => self.fill(path, ['nonzero', 'evenodd'][fill_rule])

///|
pub extern "js" fn CanvasRenderingContext2D::stroke(
  self : CanvasRenderingContext2D,
) -> Unit =
  #| (self) => self.stroke()

///|
pub extern "js" fn CanvasRenderingContext2D::stroke_with_path_path_2d(
  self : CanvasRenderingContext2D,
  path : Path2D,
) -> Unit =
  #| (self, path) => self.stroke(path)

///|
pub extern "js" fn CanvasRenderingContext2D::clip(
  self : CanvasRenderingContext2D,
) -> Unit =
  #| (self) => self.clip()

///|
pub extern "js" fn CanvasRenderingContext2D::clip_with_fill_rule(
  self : CanvasRenderingContext2D,
  fill_rule : CanvasFillRule,
) -> Unit =
  #| (self, fill_rule) => self.clip(['nonzero', 'evenodd'][fill_rule])

///|
pub extern "js" fn CanvasRenderingContext2D::clip_with_path_path_2d(
  self : CanvasRenderingContext2D,
  path : Path2D,
) -> Unit =
  #| (self, path) => self.clip(path)

///|
pub extern "js" fn CanvasRenderingContext2D::clip_with_path_path_2d_and_fill_rule_canvas_fill_rule(
  self : CanvasRenderingContext2D,
  path : Path2D,
  fill_rule : CanvasFillRule,
) -> Unit =
  #| (self, path, fill_rule) => self.clip(path, ['nonzero', 'evenodd'][fill_rule])

///|
pub extern "js" fn CanvasRenderingContext2D::is_point_in_path(
  self : CanvasRenderingContext2D,
  x : Double,
  y : Double,
) -> Bool =
  #| (self, x, y) => self.isPointInPath(x, y)

///|
pub extern "js" fn CanvasRenderingContext2D::is_point_in_path_with_fill_rule(
  self : CanvasRenderingContext2D,
  x : Double,
  y : Double,
  fill_rule : CanvasFillRule,
) -> Bool =
  #| (self, x, y, fill_rule) => self.isPointInPath(x, y, ['nonzero', 'evenodd'][fill_rule])

///|
pub extern "js" fn CanvasRenderingContext2D::is_point_in_path_with_path_path_2d_and_x_and_y(
  self : CanvasRenderingContext2D,
  path : Path2D,
  x : Double,
  y : Double,
) -> Bool =
  #| (self, path, x, y) => self.isPointInPath(path, x, y)

///|
pub extern "js" fn CanvasRenderingContext2D::is_point_in_path_with_path_path_2d_and_x_and_y_and_fill_rule_canvas_fill_rule(
  self : CanvasRenderingContext2D,
  path : Path2D,
  x : Double,
  y : Double,
  fill_rule : CanvasFillRule,
) -> Bool =
  #| (self, path, x, y, fill_rule) => self.isPointInPath(path, x, y, ['nonzero', 'evenodd'][fill_rule])

///|
pub extern "js" fn CanvasRenderingContext2D::is_point_in_stroke(
  self : CanvasRenderingContext2D,
  x : Double,
  y : Double,
) -> Bool =
  #| (self, x, y) => self.isPointInStroke(x, y)

///|
pub extern "js" fn CanvasRenderingContext2D::is_point_in_stroke_with_path_path_2d_and_x_and_y(
  self : CanvasRenderingContext2D,
  path : Path2D,
  x : Double,
  y : Double,
) -> Bool =
  #| (self, path, x, y) => self.isPointInStroke(path, x, y)

///|
pub extern "js" fn CanvasRenderingContext2D::draw_focus_if_needed(
  self : CanvasRenderingContext2D,
  element : Element,
) -> Unit =
  #| (self, element) => self.drawFocusIfNeeded(element)

///|
pub extern "js" fn CanvasRenderingContext2D::draw_focus_if_needed_with_path_path_2d_and_element_element(
  self : CanvasRenderingContext2D,
  path : Path2D,
  element : Element,
) -> Unit =
  #| (self, path, element) => self.drawFocusIfNeeded(path, element)

///|
pub extern "js" fn CanvasRenderingContext2D::fill_text(
  self : CanvasRenderingContext2D,
  text : String,
  x : Double,
  y : Double,
) -> Unit =
  #| (self, text, x, y) => self.fillText(text, x, y)

///|
pub extern "js" fn CanvasRenderingContext2D::fill_text_with_max_width(
  self : CanvasRenderingContext2D,
  text : String,
  x : Double,
  y : Double,
  max_width : Double,
) -> Unit =
  #| (self, text, x, y, max_width) => self.fillText(text, x, y, max_width)

///|
pub extern "js" fn CanvasRenderingContext2D::stroke_text(
  self : CanvasRenderingContext2D,
  text : String,
  x : Double,
  y : Double,
) -> Unit =
  #| (self, text, x, y) => self.strokeText(text, x, y)

///|
pub extern "js" fn CanvasRenderingContext2D::stroke_text_with_max_width(
  self : CanvasRenderingContext2D,
  text : String,
  x : Double,
  y : Double,
  max_width : Double,
) -> Unit =
  #| (self, text, x, y, max_width) => self.strokeText(text, x, y, max_width)

///|
pub extern "js" fn CanvasRenderingContext2D::measure_text(
  self : CanvasRenderingContext2D,
  text : String,
) -> TextMetrics =
  #| (self, text) => self.measureText(text)

///|
pub extern "js" fn CanvasRenderingContext2D::draw_image(
  self : CanvasRenderingContext2D,
  image : CanvasImageSource,
  dx : Double,
  dy : Double,
) -> Unit =
  #| (self, image, dx, dy) => self.drawImage(image, dx, dy)

///|
pub extern "js" fn CanvasRenderingContext2D::draw_image_with_image_canvas_image_source_and_dx_and_dy_and_dw_and_dh(
  self : CanvasRenderingContext2D,
  image : CanvasImageSource,
  dx : Double,
  dy : Double,
  dw : Double,
  dh : Double,
) -> Unit =
  #| (self, image, dx, dy, dw, dh) => self.drawImage(image, dx, dy, dw, dh)

///|
pub extern "js" fn CanvasRenderingContext2D::draw_image_with_image_canvas_image_source_and_sx_and_sy_and_sw_and_sh_and_dx_and_dy_and_dw_and_dh(
  self : CanvasRenderingContext2D,
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
pub extern "js" fn CanvasRenderingContext2D::create_image_data(
  self : CanvasRenderingContext2D,
  image_data : ImageData,
) -> ImageData =
  #| (self, image_data) => self.createImageData(image_data)

///|
pub extern "js" fn CanvasRenderingContext2D::create_image_data_with_sw_and_sh(
  self : CanvasRenderingContext2D,
  sw : Int,
  sh : Int,
) -> ImageData =
  #| (self, sw, sh) => self.createImageData(sw, sh)

///|
extern "js" fn CanvasRenderingContext2D::create_image_data_with_sw_and_sh_and_settings_image_data_settings_ffi(
  self : CanvasRenderingContext2D,
  sw : Int,
  sh : Int,
  settings : JsValue,
) -> ImageData =
  #| (self, sw, sh, settings) => self.createImageData(sw, sh, settings)

///|
pub fn CanvasRenderingContext2D::create_image_data_with_sw_and_sh_and_settings_image_data_settings(
  self : CanvasRenderingContext2D,
  sw : Int,
  sh : Int,
  settings : ImageDataSettings,
) -> ImageData {
  CanvasRenderingContext2D::create_image_data_with_sw_and_sh_and_settings_image_data_settings_ffi(
    self,
    sw,
    sh,
    settings.to_js(),
  )
}

///|
pub extern "js" fn CanvasRenderingContext2D::get_image_data(
  self : CanvasRenderingContext2D,
  sx : Int,
  sy : Int,
  sw : Int,
  sh : Int,
) -> ImageData =
  #| (self, sx, sy, sw, sh) => self.getImageData(sx, sy, sw, sh)

///|
extern "js" fn CanvasRenderingContext2D::get_image_data_with_settings_ffi(
  self : CanvasRenderingContext2D,
  sx : Int,
  sy : Int,
  sw : Int,
  sh : Int,
  settings : JsValue,
) -> ImageData =
  #| (self, sx, sy, sw, sh, settings) => self.getImageData(sx, sy, sw, sh, settings)

///|
pub fn CanvasRenderingContext2D::get_image_data_with_settings(
  self : CanvasRenderingContext2D,
  sx : Int,
  sy : Int,
  sw : Int,
  sh : Int,
  settings : ImageDataSettings,
) -> ImageData {
  CanvasRenderingContext2D::get_image_data_with_settings_ffi(
    self,
    sx,
    sy,
    sw,
    sh,
    settings.to_js(),
  )
}

///|
pub extern "js" fn CanvasRenderingContext2D::put_image_data(
  self : CanvasRenderingContext2D,
  image_data : ImageData,
  dx : Int,
  dy : Int,
) -> Unit =
  #| (self, image_data, dx, dy) => self.putImageData(image_data, dx, dy)

///|
pub extern "js" fn CanvasRenderingContext2D::put_image_data_with_image_data_image_data_and_dx_and_dy_and_dirty_x_and_dirty_y_and_dirty_width_and_dirty_height(
  self : CanvasRenderingContext2D,
  image_data : ImageData,
  dx : Int,
  dy : Int,
  dirty_x : Int,
  dirty_y : Int,
  dirty_width : Int,
  dirty_height : Int,
) -> Unit =
  #| (self, image_data, dx, dy, dirty_x, dirty_y, dirty_width, dirty_height) => self.putImageData(image_data, dx, dy, dirty_x, dirty_y, dirty_width, dirty_height)

///|
pub extern "js" fn CanvasRenderingContext2D::get_line_width(
  self : CanvasRenderingContext2D,
) -> Double =
  #| (self) => self.lineWidth

///|
pub extern "js" fn CanvasRenderingContext2D::set_line_width(
  self : CanvasRenderingContext2D,
  value : Double,
) -> Unit =
  #| (self, value) => { self.lineWidth = value }

///|
pub extern "js" fn CanvasRenderingContext2D::get_line_cap(
  self : CanvasRenderingContext2D,
) -> CanvasLineCap =
  #| (self) => ['butt', 'round', 'square'].indexOf(self.lineCap)

///|
pub extern "js" fn CanvasRenderingContext2D::set_line_cap(
  self : CanvasRenderingContext2D,
  value : CanvasLineCap,
) -> Unit =
  #| (self, value) => { self.lineCap = ['butt', 'round', 'square'][value] }

///|
pub extern "js" fn CanvasRenderingContext2D::get_line_join(
  self : CanvasRenderingContext2D,
) -> CanvasLineJoin =
  #| (self) => ['round', 'bevel', 'miter'].indexOf(self.lineJoin)

///|
pub extern "js" fn CanvasRenderingContext2D::set_line_join(
  self : CanvasRenderingContext2D,
  value : CanvasLineJoin,
) -> Unit =
  #| (self, value) => { self.lineJoin = ['round', 'bevel', 'miter'][value] }

///|
pub extern "js" fn CanvasRenderingContext2D::get_miter_limit(
  self : CanvasRenderingContext2D,
) -> Double =
  #| (self) => self.miterLimit

///|
pub extern "js" fn CanvasRenderingContext2D::set_miter_limit(
  self : CanvasRenderingContext2D,
  value : Double,
) -> Unit =
  #| (self, value) => { self.miterLimit = value }

///|
pub extern "js" fn CanvasRenderingContext2D::set_line_dash(
  self : CanvasRenderingContext2D,
  segments : Array[Double],
) -> Unit =
  #| (self, segments) => self.setLineDash(segments)

///|
pub extern "js" fn CanvasRenderingContext2D::get_line_dash(
  self : CanvasRenderingContext2D,
) -> Array[Double] =
  #| (self) => self.getLineDash()

///|
pub extern "js" fn CanvasRenderingContext2D::get_line_dash_offset(
  self : CanvasRenderingContext2D,
) -> Double =
  #| (self) => self.lineDashOffset

///|
pub extern "js" fn CanvasRenderingContext2D::set_line_dash_offset(
  self : CanvasRenderingContext2D,
  value : Double,
) -> Unit =
  #| (self, value) => { self.lineDashOffset = value }

///|
pub extern "js" fn CanvasRenderingContext2D::get_lang(
  self : CanvasRenderingContext2D,
) -> String =
  #| (self) => self.lang

///|
pub extern "js" fn CanvasRenderingContext2D::set_lang(
  self : CanvasRenderingContext2D,
  value : String,
) -> Unit =
  #| (self, value) => { self.lang = value }

///|
pub extern "js" fn CanvasRenderingContext2D::get_font(
  self : CanvasRenderingContext2D,
) -> String =
  #| (self) => self.font

///|
pub extern "js" fn CanvasRenderingContext2D::set_font(
  self : CanvasRenderingContext2D,
  value : String,
) -> Unit =
  #| (self, value) => { self.font = value }

///|
pub extern "js" fn CanvasRenderingContext2D::get_text_align(
  self : CanvasRenderingContext2D,
) -> CanvasTextAlign =
  #| (self) => ['start', 'end', 'left', 'right', 'center'].indexOf(self.textAlign)

///|
pub extern "js" fn CanvasRenderingContext2D::set_text_align(
  self : CanvasRenderingContext2D,
  value : CanvasTextAlign,
) -> Unit =
  #| (self, value) => { self.textAlign = ['start', 'end', 'left', 'right', 'center'][value] }

///|
pub extern "js" fn CanvasRenderingContext2D::get_text_baseline(
  self : CanvasRenderingContext2D,
) -> CanvasTextBaseline =
  #| (self) => ['top', 'hanging', 'middle', 'alphabetic', 'ideographic', 'bottom'].indexOf(self.textBaseline)

///|
pub extern "js" fn CanvasRenderingContext2D::set_text_baseline(
  self : CanvasRenderingContext2D,
  value : CanvasTextBaseline,
) -> Unit =
  #| (self, value) => { self.textBaseline = ['top', 'hanging', 'middle', 'alphabetic', 'ideographic', 'bottom'][value] }

///|
pub extern "js" fn CanvasRenderingContext2D::get_direction(
  self : CanvasRenderingContext2D,
) -> CanvasDirection =
  #| (self) => ['ltr', 'rtl', 'inherit'].indexOf(self.direction)

///|
pub extern "js" fn CanvasRenderingContext2D::set_direction(
  self : CanvasRenderingContext2D,
  value : CanvasDirection,
) -> Unit =
  #| (self, value) => { self.direction = ['ltr', 'rtl', 'inherit'][value] }

///|
pub extern "js" fn CanvasRenderingContext2D::get_letter_spacing(
  self : CanvasRenderingContext2D,
) -> String =
  #| (self) => self.letterSpacing

///|
pub extern "js" fn CanvasRenderingContext2D::set_letter_spacing(
  self : CanvasRenderingContext2D,
  value : String,
) -> Unit =
  #| (self, value) => { self.letterSpacing = value }

///|
pub extern "js" fn CanvasRenderingContext2D::get_font_kerning(
  self : CanvasRenderingContext2D,
) -> CanvasFontKerning =
  #| (self) => ['auto', 'normal', 'none'].indexOf(self.fontKerning)

///|
pub extern "js" fn CanvasRenderingContext2D::set_font_kerning(
  self : CanvasRenderingContext2D,
  value : CanvasFontKerning,
) -> Unit =
  #| (self, value) => { self.fontKerning = ['auto', 'normal', 'none'][value] }

///|
pub extern "js" fn CanvasRenderingContext2D::get_font_stretch(
  self : CanvasRenderingContext2D,
) -> CanvasFontStretch =
  #| (self) => ['ultra-condensed', 'extra-condensed', 'condensed', 'semi-condensed', 'normal', 'semi-expanded', 'expanded', 'extra-expanded', 'ultra-expanded'].indexOf(self.fontStretch)

///|
pub extern "js" fn CanvasRenderingContext2D::set_font_stretch(
  self : CanvasRenderingContext2D,
  value : CanvasFontStretch,
) -> Unit =
  #| (self, value) => { self.fontStretch = ['ultra-condensed', 'extra-condensed', 'condensed', 'semi-condensed', 'normal', 'semi-expanded', 'expanded', 'extra-expanded', 'ultra-expanded'][value] }

///|
pub extern "js" fn CanvasRenderingContext2D::get_font_variant_caps(
  self : CanvasRenderingContext2D,
) -> CanvasFontVariantCaps =
  #| (self) => ['normal', 'small-caps', 'all-small-caps', 'petite-caps', 'all-petite-caps', 'unicase', 'titling-caps'].indexOf(self.fontVariantCaps)

///|
pub extern "js" fn CanvasRenderingContext2D::set_font_variant_caps(
  self : CanvasRenderingContext2D,
  value : CanvasFontVariantCaps,
) -> Unit =
  #| (self, value) => { self.fontVariantCaps = ['normal', 'small-caps', 'all-small-caps', 'petite-caps', 'all-petite-caps', 'unicase', 'titling-caps'][value] }

///|
pub extern "js" fn CanvasRenderingContext2D::get_text_rendering(
  self : CanvasRenderingContext2D,
) -> CanvasTextRendering =
  #| (self) => ['auto', 'optimizeSpeed', 'optimizeLegibility', 'geometricPrecision'].indexOf(self.textRendering)

///|
pub extern "js" fn CanvasRenderingContext2D::set_text_rendering(
  self : CanvasRenderingContext2D,
  value : CanvasTextRendering,
) -> Unit =
  #| (self, value) => { self.textRendering = ['auto', 'optimizeSpeed', 'optimizeLegibility', 'geometricPrecision'][value] }

///|
pub extern "js" fn CanvasRenderingContext2D::get_word_spacing(
  self : CanvasRenderingContext2D,
) -> String =
  #| (self) => self.wordSpacing

///|
pub extern "js" fn CanvasRenderingContext2D::set_word_spacing(
  self : CanvasRenderingContext2D,
  value : String,
) -> Unit =
  #| (self, value) => { self.wordSpacing = value }

///|
pub extern "js" fn CanvasRenderingContext2D::close_path(
  self : CanvasRenderingContext2D,
) -> Unit =
  #| (self) => self.closePath()

///|
pub extern "js" fn CanvasRenderingContext2D::move_to(
  self : CanvasRenderingContext2D,
  x : Double,
  y : Double,
) -> Unit =
  #| (self, x, y) => self.moveTo(x, y)

///|
pub extern "js" fn CanvasRenderingContext2D::line_to(
  self : CanvasRenderingContext2D,
  x : Double,
  y : Double,
) -> Unit =
  #| (self, x, y) => self.lineTo(x, y)

///|
pub extern "js" fn CanvasRenderingContext2D::quadratic_curve_to(
  self : CanvasRenderingContext2D,
  cpx : Double,
  cpy : Double,
  x : Double,
  y : Double,
) -> Unit =
  #| (self, cpx, cpy, x, y) => self.quadraticCurveTo(cpx, cpy, x, y)

///|
pub extern "js" fn CanvasRenderingContext2D::bezier_curve_to(
  self : CanvasRenderingContext2D,
  cp1x : Double,
  cp1y : Double,
  cp2x : Double,
  cp2y : Double,
  x : Double,
  y : Double,
) -> Unit =
  #| (self, cp1x, cp1y, cp2x, cp2y, x, y) => self.bezierCurveTo(cp1x, cp1y, cp2x, cp2y, x, y)

///|
pub extern "js" fn CanvasRenderingContext2D::arc_to(
  self : CanvasRenderingContext2D,
  x1 : Double,
  y1 : Double,
  x2 : Double,
  y2 : Double,
  radius : Double,
) -> Unit =
  #| (self, x1, y1, x2, y2, radius) => self.arcTo(x1, y1, x2, y2, radius)

///|
pub extern "js" fn CanvasRenderingContext2D::rect(
  self : CanvasRenderingContext2D,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
) -> Unit =
  #| (self, x, y, w, h) => self.rect(x, y, w, h)

///|
pub extern "js" fn CanvasRenderingContext2D::round_rect(
  self : CanvasRenderingContext2D,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
) -> Unit =
  #| (self, x, y, w, h) => self.roundRect(x, y, w, h)

///|
pub extern "js" fn CanvasRenderingContext2D::round_rect_with_radii(
  self : CanvasRenderingContext2D,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
  radii : DoubleOrDOMPointInitOrArrayOfDoubleOrDOMPointInit,
) -> Unit =
  #| (self, x, y, w, h, radii) => self.roundRect(x, y, w, h, radii)

///|
pub extern "js" fn CanvasRenderingContext2D::arc(
  self : CanvasRenderingContext2D,
  x : Double,
  y : Double,
  radius : Double,
  start_angle : Double,
  end_angle : Double,
) -> Unit =
  #| (self, x, y, radius, start_angle, end_angle) => self.arc(x, y, radius, start_angle, end_angle)

///|
pub extern "js" fn CanvasRenderingContext2D::arc_with_counterclockwise(
  self : CanvasRenderingContext2D,
  x : Double,
  y : Double,
  radius : Double,
  start_angle : Double,
  end_angle : Double,
  counterclockwise : Bool,
) -> Unit =
  #| (self, x, y, radius, start_angle, end_angle, counterclockwise) => self.arc(x, y, radius, start_angle, end_angle, counterclockwise)

///|
pub extern "js" fn CanvasRenderingContext2D::ellipse(
  self : CanvasRenderingContext2D,
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
pub extern "js" fn CanvasRenderingContext2D::ellipse_with_counterclockwise(
  self : CanvasRenderingContext2D,
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
pub extern "js" fn CanvasRenderingContext2D::create_pattern_with_html_or_svg_image_element(
  self : CanvasRenderingContext2D,
  image : HTMLOrSVGImageElement,
  repetition : String,
) -> CanvasPattern? =
  #| (self, image, repetition) => (() => { const v = self.createPattern(image, repetition); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn CanvasRenderingContext2D::create_pattern_with_html_video_element(
  self : CanvasRenderingContext2D,
  image : HTMLVideoElement,
  repetition : String,
) -> CanvasPattern? =
  #| (self, image, repetition) => (() => { const v = self.createPattern(image, repetition); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn CanvasRenderingContext2D::create_pattern_with_html_canvas_element(
  self : CanvasRenderingContext2D,
  image : HTMLCanvasElement,
  repetition : String,
) -> CanvasPattern? =
  #| (self, image, repetition) => (() => { const v = self.createPattern(image, repetition); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn CanvasRenderingContext2D::create_pattern_with_image_bitmap(
  self : CanvasRenderingContext2D,
  image : ImageBitmap,
  repetition : String,
) -> CanvasPattern? =
  #| (self, image, repetition) => (() => { const v = self.createPattern(image, repetition); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn CanvasRenderingContext2D::create_pattern_with_offscreen_canvas(
  self : CanvasRenderingContext2D,
  image : OffscreenCanvas,
  repetition : String,
) -> CanvasPattern? =
  #| (self, image, repetition) => (() => { const v = self.createPattern(image, repetition); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn CanvasRenderingContext2D::create_pattern_with_video_frame(
  self : CanvasRenderingContext2D,
  image : VideoFrame,
  repetition : String,
) -> CanvasPattern? =
  #| (self, image, repetition) => (() => { const v = self.createPattern(image, repetition); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn CanvasRenderingContext2D::draw_image_with_html_or_svg_image_element(
  self : CanvasRenderingContext2D,
  image : HTMLOrSVGImageElement,
  dx : Double,
  dy : Double,
) -> Unit =
  #| (self, image, dx, dy) => self.drawImage(image, dx, dy)

///|
pub extern "js" fn CanvasRenderingContext2D::draw_image_with_html_video_element(
  self : CanvasRenderingContext2D,
  image : HTMLVideoElement,
  dx : Double,
  dy : Double,
) -> Unit =
  #| (self, image, dx, dy) => self.drawImage(image, dx, dy)

///|
pub extern "js" fn CanvasRenderingContext2D::draw_image_with_html_canvas_element(
  self : CanvasRenderingContext2D,
  image : HTMLCanvasElement,
  dx : Double,
  dy : Double,
) -> Unit =
  #| (self, image, dx, dy) => self.drawImage(image, dx, dy)

///|
pub extern "js" fn CanvasRenderingContext2D::draw_image_with_image_bitmap(
  self : CanvasRenderingContext2D,
  image : ImageBitmap,
  dx : Double,
  dy : Double,
) -> Unit =
  #| (self, image, dx, dy) => self.drawImage(image, dx, dy)

///|
pub extern "js" fn CanvasRenderingContext2D::draw_image_with_offscreen_canvas(
  self : CanvasRenderingContext2D,
  image : OffscreenCanvas,
  dx : Double,
  dy : Double,
) -> Unit =
  #| (self, image, dx, dy) => self.drawImage(image, dx, dy)

///|
pub extern "js" fn CanvasRenderingContext2D::draw_image_with_video_frame(
  self : CanvasRenderingContext2D,
  image : VideoFrame,
  dx : Double,
  dy : Double,
) -> Unit =
  #| (self, image, dx, dy) => self.drawImage(image, dx, dy)

///|
/// CanvasGradient interface
pub type CanvasGradient

///|
pub extern "js" fn CanvasGradient::to_js_value(
  self : CanvasGradient,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CanvasGradient (unchecked)
pub extern "js" fn CanvasGradient::from_js_value(v : JsValue) -> CanvasGradient =
  #| (v) => v

///|
/// Safely cast JsValue to CanvasGradient (checked with instanceof)
pub extern "js" fn CanvasGradient::from_js_value_opt(
  v : JsValue,
) -> CanvasGradient? =
  #| (v) => (v instanceof CanvasGradient) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CanvasGradient (checked with instanceof)
pub extern "js" fn JsValue::as_canvas_gradient(
  self : JsValue,
) -> CanvasGradient? =
  #| (self) => (self instanceof CanvasGradient) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CanvasGradient (unchecked)
pub extern "js" fn JsValue::to_canvas_gradient(
  self : JsValue,
) -> CanvasGradient =
  #| (self) => self

///|
pub extern "js" fn CanvasGradient::add_color_stop(
  self : CanvasGradient,
  offset : Double,
  color : String,
) -> Unit =
  #| (self, offset, color) => self.addColorStop(offset, color)

///|
/// CanvasPattern interface
pub type CanvasPattern

///|
pub extern "js" fn CanvasPattern::to_js_value(self : CanvasPattern) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CanvasPattern (unchecked)
pub extern "js" fn CanvasPattern::from_js_value(v : JsValue) -> CanvasPattern =
  #| (v) => v

///|
/// Safely cast JsValue to CanvasPattern (checked with instanceof)
pub extern "js" fn CanvasPattern::from_js_value_opt(
  v : JsValue,
) -> CanvasPattern? =
  #| (v) => (v instanceof CanvasPattern) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CanvasPattern (checked with instanceof)
pub extern "js" fn JsValue::as_canvas_pattern(self : JsValue) -> CanvasPattern? =
  #| (self) => (self instanceof CanvasPattern) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CanvasPattern (unchecked)
pub extern "js" fn JsValue::to_canvas_pattern(self : JsValue) -> CanvasPattern =
  #| (self) => self

///|
pub extern "js" fn CanvasPattern::set_transform(self : CanvasPattern) -> Unit =
  #| (self) => self.setTransform()

///|
extern "js" fn CanvasPattern::set_transform_with_transform_ffi(
  self : CanvasPattern,
  transform : JsValue,
) -> Unit =
  #| (self, transform) => self.setTransform(transform)

///|
pub fn CanvasPattern::set_transform_with_transform(
  self : CanvasPattern,
  transform : DOMMatrix2DInit,
) -> Unit {
  CanvasPattern::set_transform_with_transform_ffi(self, transform.to_js())
}

///|
/// TextMetrics interface
pub type TextMetrics

///|
pub extern "js" fn TextMetrics::to_js_value(self : TextMetrics) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to TextMetrics (unchecked)
pub extern "js" fn TextMetrics::from_js_value(v : JsValue) -> TextMetrics =
  #| (v) => v

///|
/// Safely cast JsValue to TextMetrics (checked with instanceof)
pub extern "js" fn TextMetrics::from_js_value_opt(v : JsValue) -> TextMetrics? =
  #| (v) => (v instanceof TextMetrics) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to TextMetrics (checked with instanceof)
pub extern "js" fn JsValue::as_text_metrics(self : JsValue) -> TextMetrics? =
  #| (self) => (self instanceof TextMetrics) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to TextMetrics (unchecked)
pub extern "js" fn JsValue::to_text_metrics(self : JsValue) -> TextMetrics =
  #| (self) => self

///|
pub extern "js" fn TextMetrics::get_width(self : TextMetrics) -> Double =
  #| (self) => self.width

///|
pub extern "js" fn TextMetrics::get_actual_bounding_box_left(
  self : TextMetrics,
) -> Double =
  #| (self) => self.actualBoundingBoxLeft

///|
pub extern "js" fn TextMetrics::get_actual_bounding_box_right(
  self : TextMetrics,
) -> Double =
  #| (self) => self.actualBoundingBoxRight

///|
pub extern "js" fn TextMetrics::get_font_bounding_box_ascent(
  self : TextMetrics,
) -> Double =
  #| (self) => self.fontBoundingBoxAscent

///|
pub extern "js" fn TextMetrics::get_font_bounding_box_descent(
  self : TextMetrics,
) -> Double =
  #| (self) => self.fontBoundingBoxDescent

///|
pub extern "js" fn TextMetrics::get_actual_bounding_box_ascent(
  self : TextMetrics,
) -> Double =
  #| (self) => self.actualBoundingBoxAscent

///|
pub extern "js" fn TextMetrics::get_actual_bounding_box_descent(
  self : TextMetrics,
) -> Double =
  #| (self) => self.actualBoundingBoxDescent

///|
pub extern "js" fn TextMetrics::get_em_height_ascent(
  self : TextMetrics,
) -> Double =
  #| (self) => self.emHeightAscent

///|
pub extern "js" fn TextMetrics::get_em_height_descent(
  self : TextMetrics,
) -> Double =
  #| (self) => self.emHeightDescent

///|
pub extern "js" fn TextMetrics::get_hanging_baseline(
  self : TextMetrics,
) -> Double =
  #| (self) => self.hangingBaseline

///|
pub extern "js" fn TextMetrics::get_alphabetic_baseline(
  self : TextMetrics,
) -> Double =
  #| (self) => self.alphabeticBaseline

///|
pub extern "js" fn TextMetrics::get_ideographic_baseline(
  self : TextMetrics,
) -> Double =
  #| (self) => self.ideographicBaseline

///|
/// Path2D interface
pub type Path2D

///|
pub extern "js" fn Path2D::to_js_value(self : Path2D) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Path2D (unchecked)
pub extern "js" fn Path2D::from_js_value(v : JsValue) -> Path2D =
  #| (v) => v

///|
/// Safely cast JsValue to Path2D (checked with instanceof)
pub extern "js" fn Path2D::from_js_value_opt(v : JsValue) -> Path2D? =
  #| (v) => (v instanceof Path2D) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Path2D (checked with instanceof)
pub extern "js" fn JsValue::as_path_2d(self : JsValue) -> Path2D? =
  #| (self) => (self instanceof Path2D) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Path2D (unchecked)
pub extern "js" fn JsValue::to_path_2d(self : JsValue) -> Path2D =
  #| (self) => self

///|
pub extern "js" fn Path2D::new() -> Path2D =
  #| () => new Path2D()

///|
pub extern "js" fn Path2D::new_with_path(path : Path2DOrString) -> Path2D =
  #| (path) => new Path2D(path)

///|
pub extern "js" fn Path2D::add_path(self : Path2D, path : Path2D) -> Unit =
  #| (self, path) => self.addPath(path)

///|
extern "js" fn Path2D::add_path_with_transform_ffi(
  self : Path2D,
  path : Path2D,
  transform : JsValue,
) -> Unit =
  #| (self, path, transform) => self.addPath(path, transform)

///|
pub fn Path2D::add_path_with_transform(
  self : Path2D,
  path : Path2D,
  transform : DOMMatrix2DInit,
) -> Unit {
  Path2D::add_path_with_transform_ffi(self, path, transform.to_js())
}

///|
pub extern "js" fn Path2D::close_path(self : Path2D) -> Unit =
  #| (self) => self.closePath()

///|
pub extern "js" fn Path2D::move_to(
  self : Path2D,
  x : Double,
  y : Double,
) -> Unit =
  #| (self, x, y) => self.moveTo(x, y)

///|
pub extern "js" fn Path2D::line_to(
  self : Path2D,
  x : Double,
  y : Double,
) -> Unit =
  #| (self, x, y) => self.lineTo(x, y)

///|
pub extern "js" fn Path2D::quadratic_curve_to(
  self : Path2D,
  cpx : Double,
  cpy : Double,
  x : Double,
  y : Double,
) -> Unit =
  #| (self, cpx, cpy, x, y) => self.quadraticCurveTo(cpx, cpy, x, y)

///|
pub extern "js" fn Path2D::bezier_curve_to(
  self : Path2D,
  cp1x : Double,
  cp1y : Double,
  cp2x : Double,
  cp2y : Double,
  x : Double,
  y : Double,
) -> Unit =
  #| (self, cp1x, cp1y, cp2x, cp2y, x, y) => self.bezierCurveTo(cp1x, cp1y, cp2x, cp2y, x, y)

///|
pub extern "js" fn Path2D::arc_to(
  self : Path2D,
  x1 : Double,
  y1 : Double,
  x2 : Double,
  y2 : Double,
  radius : Double,
) -> Unit =
  #| (self, x1, y1, x2, y2, radius) => self.arcTo(x1, y1, x2, y2, radius)

///|
pub extern "js" fn Path2D::rect(
  self : Path2D,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
) -> Unit =
  #| (self, x, y, w, h) => self.rect(x, y, w, h)

///|
pub extern "js" fn Path2D::round_rect(
  self : Path2D,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
) -> Unit =
  #| (self, x, y, w, h) => self.roundRect(x, y, w, h)

///|
pub extern "js" fn Path2D::round_rect_with_radii(
  self : Path2D,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
  radii : DoubleOrDOMPointInitOrArrayOfDoubleOrDOMPointInit,
) -> Unit =
  #| (self, x, y, w, h, radii) => self.roundRect(x, y, w, h, radii)

///|
pub extern "js" fn Path2D::arc(
  self : Path2D,
  x : Double,
  y : Double,
  radius : Double,
  start_angle : Double,
  end_angle : Double,
) -> Unit =
  #| (self, x, y, radius, start_angle, end_angle) => self.arc(x, y, radius, start_angle, end_angle)

///|
pub extern "js" fn Path2D::arc_with_counterclockwise(
  self : Path2D,
  x : Double,
  y : Double,
  radius : Double,
  start_angle : Double,
  end_angle : Double,
  counterclockwise : Bool,
) -> Unit =
  #| (self, x, y, radius, start_angle, end_angle, counterclockwise) => self.arc(x, y, radius, start_angle, end_angle, counterclockwise)

///|
pub extern "js" fn Path2D::ellipse(
  self : Path2D,
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
pub extern "js" fn Path2D::ellipse_with_counterclockwise(
  self : Path2D,
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
/// ImageBitmapRenderingContext interface
pub type ImageBitmapRenderingContext

///|
pub extern "js" fn ImageBitmapRenderingContext::to_js_value(
  self : ImageBitmapRenderingContext,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ImageBitmapRenderingContext (unchecked)
pub extern "js" fn ImageBitmapRenderingContext::from_js_value(
  v : JsValue,
) -> ImageBitmapRenderingContext =
  #| (v) => v

///|
/// Safely cast JsValue to ImageBitmapRenderingContext (checked with instanceof)
pub extern "js" fn ImageBitmapRenderingContext::from_js_value_opt(
  v : JsValue,
) -> ImageBitmapRenderingContext? =
  #| (v) => (v instanceof ImageBitmapRenderingContext) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ImageBitmapRenderingContext (checked with instanceof)
pub extern "js" fn JsValue::as_image_bitmap_rendering_context(
  self : JsValue,
) -> ImageBitmapRenderingContext? =
  #| (self) => (self instanceof ImageBitmapRenderingContext) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ImageBitmapRenderingContext (unchecked)
pub extern "js" fn JsValue::to_image_bitmap_rendering_context(
  self : JsValue,
) -> ImageBitmapRenderingContext =
  #| (self) => self

///|
pub extern "js" fn ImageBitmapRenderingContext::get_canvas(
  self : ImageBitmapRenderingContext,
) -> HTMLCanvasElementOrOffscreenCanvas =
  #| (self) => self.canvas

///|
pub extern "js" fn ImageBitmapRenderingContext::transfer_from_image_bitmap(
  self : ImageBitmapRenderingContext,
  bitmap : ImageBitmap?,
) -> Unit =
  #| (self, bitmap) => self.transferFromImageBitmap((bitmap.$tag === 1 ? bitmap._0 : null))

///|
/// OffscreenCanvas interface
pub type OffscreenCanvas

///|
pub extern "js" fn OffscreenCanvas::to_js_value(
  self : OffscreenCanvas,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to OffscreenCanvas (unchecked)
pub extern "js" fn OffscreenCanvas::from_js_value(
  v : JsValue,
) -> OffscreenCanvas =
  #| (v) => v

///|
/// Safely cast JsValue to OffscreenCanvas (checked with instanceof)
pub extern "js" fn OffscreenCanvas::from_js_value_opt(
  v : JsValue,
) -> OffscreenCanvas? =
  #| (v) => (v instanceof OffscreenCanvas) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to OffscreenCanvas (checked with instanceof)
pub extern "js" fn JsValue::as_offscreen_canvas(
  self : JsValue,
) -> OffscreenCanvas? =
  #| (self) => (self instanceof OffscreenCanvas) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to OffscreenCanvas (unchecked)
pub extern "js" fn JsValue::to_offscreen_canvas(
  self : JsValue,
) -> OffscreenCanvas =
  #| (self) => self

///|
pub extern "js" fn OffscreenCanvas::to_event_target(
  self : OffscreenCanvas,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn OffscreenCanvas::new(
  width : Int64,
  height : Int64,
) -> OffscreenCanvas =
  #| (width, height) => new OffscreenCanvas((width.hi * 4294967296 + width.lo), (height.hi * 4294967296 + height.lo))

///|
pub extern "js" fn OffscreenCanvas::get_width(self : OffscreenCanvas) -> Int64 =
  #| (self) => (() => { const n = self.width; return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

///|
pub extern "js" fn OffscreenCanvas::set_width(
  self : OffscreenCanvas,
  value : Int64,
) -> Unit =
  #| (self, value) => { self.width = value }

///|
pub extern "js" fn OffscreenCanvas::get_height(self : OffscreenCanvas) -> Int64 =
  #| (self) => (() => { const n = self.height; return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

///|
pub extern "js" fn OffscreenCanvas::set_height(
  self : OffscreenCanvas,
  value : Int64,
) -> Unit =
  #| (self, value) => { self.height = value }

///|
pub extern "js" fn OffscreenCanvas::get_context(
  self : OffscreenCanvas,
  context_id : OffscreenRenderingContextId,
) -> OffscreenRenderingContext? =
  #| (self, context_id) => (() => { const v = self.getContext(['2d', 'bitmaprenderer', 'webgl', 'webgl2', 'webgpu'][context_id]); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn OffscreenCanvas::get_context_with_options(
  self : OffscreenCanvas,
  context_id : OffscreenRenderingContextId,
  options : JsValue,
) -> OffscreenRenderingContext? =
  #| (self, context_id, options) => (() => { const v = self.getContext(['2d', 'bitmaprenderer', 'webgl', 'webgl2', 'webgpu'][context_id], options); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn OffscreenCanvas::transfer_to_image_bitmap(
  self : OffscreenCanvas,
) -> ImageBitmap =
  #| (self) => self.transferToImageBitmap()

///|
pub extern "js" fn OffscreenCanvas::convert_to_blob(
  self : OffscreenCanvas,
) -> Promise[Blob] =
  #| (self) => self.convertToBlob()

///|
extern "js" fn OffscreenCanvas::convert_to_blob_with_options_ffi(
  self : OffscreenCanvas,
  options : JsValue,
) -> Promise[Blob] =
  #| (self, options) => self.convertToBlob(options)

///|
pub fn OffscreenCanvas::convert_to_blob_with_options(
  self : OffscreenCanvas,
  options : ImageEncodeOptions,
) -> Promise[Blob] {
  OffscreenCanvas::convert_to_blob_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn OffscreenCanvas::get_oncontextlost(
  self : OffscreenCanvas,
) -> EventHandler =
  #| (self) => self.oncontextlost

///|
pub extern "js" fn OffscreenCanvas::set_oncontextlost(
  self : OffscreenCanvas,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncontextlost = value }

///|
pub extern "js" fn OffscreenCanvas::get_oncontextrestored(
  self : OffscreenCanvas,
) -> EventHandler =
  #| (self) => self.oncontextrestored

///|
pub extern "js" fn OffscreenCanvas::set_oncontextrestored(
  self : OffscreenCanvas,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncontextrestored = value }

///|
/// OffscreenCanvasRenderingContext2D interface
pub type OffscreenCanvasRenderingContext2D

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::to_js_value(
  self : OffscreenCanvasRenderingContext2D,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to OffscreenCanvasRenderingContext2D (unchecked)
pub extern "js" fn OffscreenCanvasRenderingContext2D::from_js_value(
  v : JsValue,
) -> OffscreenCanvasRenderingContext2D =
  #| (v) => v

///|
/// Safely cast JsValue to OffscreenCanvasRenderingContext2D (checked with instanceof)
pub extern "js" fn OffscreenCanvasRenderingContext2D::from_js_value_opt(
  v : JsValue,
) -> OffscreenCanvasRenderingContext2D? =
  #| (v) => (v instanceof OffscreenCanvasRenderingContext2D) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to OffscreenCanvasRenderingContext2D (checked with instanceof)
pub extern "js" fn JsValue::as_offscreen_canvas_rendering_context_2d(
  self : JsValue,
) -> OffscreenCanvasRenderingContext2D? =
  #| (self) => (self instanceof OffscreenCanvasRenderingContext2D) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to OffscreenCanvasRenderingContext2D (unchecked)
pub extern "js" fn JsValue::to_offscreen_canvas_rendering_context_2d(
  self : JsValue,
) -> OffscreenCanvasRenderingContext2D =
  #| (self) => self

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::get_canvas(
  self : OffscreenCanvasRenderingContext2D,
) -> OffscreenCanvas =
  #| (self) => self.canvas

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::get_context_attributes(
  self : OffscreenCanvasRenderingContext2D,
) -> CanvasRenderingContext2DSettings =
  #| (self) => self.getContextAttributes()

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::save(
  self : OffscreenCanvasRenderingContext2D,
) -> Unit =
  #| (self) => self.save()

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::restore(
  self : OffscreenCanvasRenderingContext2D,
) -> Unit =
  #| (self) => self.restore()

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::reset(
  self : OffscreenCanvasRenderingContext2D,
) -> Unit =
  #| (self) => self.reset()

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::is_context_lost(
  self : OffscreenCanvasRenderingContext2D,
) -> Bool =
  #| (self) => self.isContextLost()

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::scale(
  self : OffscreenCanvasRenderingContext2D,
  x : Double,
  y : Double,
) -> Unit =
  #| (self, x, y) => self.scale(x, y)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::rotate(
  self : OffscreenCanvasRenderingContext2D,
  angle : Double,
) -> Unit =
  #| (self, angle) => self.rotate(angle)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::translate(
  self : OffscreenCanvasRenderingContext2D,
  x : Double,
  y : Double,
) -> Unit =
  #| (self, x, y) => self.translate(x, y)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::transform(
  self : OffscreenCanvasRenderingContext2D,
  a : Double,
  b : Double,
  c : Double,
  d : Double,
  e : Double,
  f : Double,
) -> Unit =
  #| (self, a, b, c, d, e, f) => self.transform(a, b, c, d, e, f)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::get_transform(
  self : OffscreenCanvasRenderingContext2D,
) -> DOMMatrix =
  #| (self) => self.getTransform()

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::set_transform(
  self : OffscreenCanvasRenderingContext2D,
) -> Unit =
  #| (self) => self.setTransform()

///|
extern "js" fn OffscreenCanvasRenderingContext2D::set_transform_with_transform_ffi(
  self : OffscreenCanvasRenderingContext2D,
  transform : JsValue,
) -> Unit =
  #| (self, transform) => self.setTransform(transform)

///|
pub fn OffscreenCanvasRenderingContext2D::set_transform_with_transform(
  self : OffscreenCanvasRenderingContext2D,
  transform : DOMMatrix2DInit,
) -> Unit {
  OffscreenCanvasRenderingContext2D::set_transform_with_transform_ffi(
    self,
    transform.to_js(),
  )
}

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::set_transform_with_a_and_b_and_c_and_d_and_e_and_f(
  self : OffscreenCanvasRenderingContext2D,
  a : Double,
  b : Double,
  c : Double,
  d : Double,
  e : Double,
  f : Double,
) -> Unit =
  #| (self, a, b, c, d, e, f) => self.setTransform(a, b, c, d, e, f)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::reset_transform(
  self : OffscreenCanvasRenderingContext2D,
) -> Unit =
  #| (self) => self.resetTransform()

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::get_global_alpha(
  self : OffscreenCanvasRenderingContext2D,
) -> Double =
  #| (self) => self.globalAlpha

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::set_global_alpha(
  self : OffscreenCanvasRenderingContext2D,
  value : Double,
) -> Unit =
  #| (self, value) => { self.globalAlpha = value }

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::get_global_composite_operation(
  self : OffscreenCanvasRenderingContext2D,
) -> String =
  #| (self) => self.globalCompositeOperation

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::set_global_composite_operation(
  self : OffscreenCanvasRenderingContext2D,
  value : String,
) -> Unit =
  #| (self, value) => { self.globalCompositeOperation = value }

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::get_image_smoothing_enabled(
  self : OffscreenCanvasRenderingContext2D,
) -> Bool =
  #| (self) => self.imageSmoothingEnabled

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::set_image_smoothing_enabled(
  self : OffscreenCanvasRenderingContext2D,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.imageSmoothingEnabled = value }

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::get_image_smoothing_quality(
  self : OffscreenCanvasRenderingContext2D,
) -> ImageSmoothingQuality =
  #| (self) => ['low', 'medium', 'high'].indexOf(self.imageSmoothingQuality)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::set_image_smoothing_quality(
  self : OffscreenCanvasRenderingContext2D,
  value : ImageSmoothingQuality,
) -> Unit =
  #| (self, value) => { self.imageSmoothingQuality = ['low', 'medium', 'high'][value] }

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::get_stroke_style(
  self : OffscreenCanvasRenderingContext2D,
) -> StringOrCanvasGradientOrCanvasPattern =
  #| (self) => self.strokeStyle

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::set_stroke_style(
  self : OffscreenCanvasRenderingContext2D,
  value : StringOrCanvasGradientOrCanvasPattern,
) -> Unit =
  #| (self, value) => { self.strokeStyle = value }

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::get_fill_style(
  self : OffscreenCanvasRenderingContext2D,
) -> StringOrCanvasGradientOrCanvasPattern =
  #| (self) => self.fillStyle

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::set_fill_style(
  self : OffscreenCanvasRenderingContext2D,
  value : StringOrCanvasGradientOrCanvasPattern,
) -> Unit =
  #| (self, value) => { self.fillStyle = value }

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::create_linear_gradient(
  self : OffscreenCanvasRenderingContext2D,
  x0 : Double,
  y0 : Double,
  x1 : Double,
  y1 : Double,
) -> CanvasGradient =
  #| (self, x0, y0, x1, y1) => self.createLinearGradient(x0, y0, x1, y1)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::create_radial_gradient(
  self : OffscreenCanvasRenderingContext2D,
  x0 : Double,
  y0 : Double,
  r0 : Double,
  x1 : Double,
  y1 : Double,
  r1 : Double,
) -> CanvasGradient =
  #| (self, x0, y0, r0, x1, y1, r1) => self.createRadialGradient(x0, y0, r0, x1, y1, r1)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::create_conic_gradient(
  self : OffscreenCanvasRenderingContext2D,
  start_angle : Double,
  x : Double,
  y : Double,
) -> CanvasGradient =
  #| (self, start_angle, x, y) => self.createConicGradient(start_angle, x, y)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::create_pattern(
  self : OffscreenCanvasRenderingContext2D,
  image : CanvasImageSource,
  repetition : String,
) -> CanvasPattern? =
  #| (self, image, repetition) => (() => { const v = self.createPattern(image, repetition); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::get_shadow_offset_x(
  self : OffscreenCanvasRenderingContext2D,
) -> Double =
  #| (self) => self.shadowOffsetX

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::set_shadow_offset_x(
  self : OffscreenCanvasRenderingContext2D,
  value : Double,
) -> Unit =
  #| (self, value) => { self.shadowOffsetX = value }

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::get_shadow_offset_y(
  self : OffscreenCanvasRenderingContext2D,
) -> Double =
  #| (self) => self.shadowOffsetY

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::set_shadow_offset_y(
  self : OffscreenCanvasRenderingContext2D,
  value : Double,
) -> Unit =
  #| (self, value) => { self.shadowOffsetY = value }

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::get_shadow_blur(
  self : OffscreenCanvasRenderingContext2D,
) -> Double =
  #| (self) => self.shadowBlur

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::set_shadow_blur(
  self : OffscreenCanvasRenderingContext2D,
  value : Double,
) -> Unit =
  #| (self, value) => { self.shadowBlur = value }

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::get_shadow_color(
  self : OffscreenCanvasRenderingContext2D,
) -> String =
  #| (self) => self.shadowColor

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::set_shadow_color(
  self : OffscreenCanvasRenderingContext2D,
  value : String,
) -> Unit =
  #| (self, value) => { self.shadowColor = value }

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::get_filter(
  self : OffscreenCanvasRenderingContext2D,
) -> String =
  #| (self) => self.filter

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::set_filter(
  self : OffscreenCanvasRenderingContext2D,
  value : String,
) -> Unit =
  #| (self, value) => { self.filter = value }

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::clear_rect(
  self : OffscreenCanvasRenderingContext2D,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
) -> Unit =
  #| (self, x, y, w, h) => self.clearRect(x, y, w, h)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::fill_rect(
  self : OffscreenCanvasRenderingContext2D,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
) -> Unit =
  #| (self, x, y, w, h) => self.fillRect(x, y, w, h)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::stroke_rect(
  self : OffscreenCanvasRenderingContext2D,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
) -> Unit =
  #| (self, x, y, w, h) => self.strokeRect(x, y, w, h)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::begin_path(
  self : OffscreenCanvasRenderingContext2D,
) -> Unit =
  #| (self) => self.beginPath()

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::fill(
  self : OffscreenCanvasRenderingContext2D,
) -> Unit =
  #| (self) => self.fill()

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::fill_with_fill_rule(
  self : OffscreenCanvasRenderingContext2D,
  fill_rule : CanvasFillRule,
) -> Unit =
  #| (self, fill_rule) => self.fill(['nonzero', 'evenodd'][fill_rule])

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::fill_with_path_path_2d(
  self : OffscreenCanvasRenderingContext2D,
  path : Path2D,
) -> Unit =
  #| (self, path) => self.fill(path)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::fill_with_path_path_2d_and_fill_rule_canvas_fill_rule(
  self : OffscreenCanvasRenderingContext2D,
  path : Path2D,
  fill_rule : CanvasFillRule,
) -> Unit =
  #| (self, path, fill_rule) => self.fill(path, ['nonzero', 'evenodd'][fill_rule])

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::stroke(
  self : OffscreenCanvasRenderingContext2D,
) -> Unit =
  #| (self) => self.stroke()

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::stroke_with_path_path_2d(
  self : OffscreenCanvasRenderingContext2D,
  path : Path2D,
) -> Unit =
  #| (self, path) => self.stroke(path)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::clip(
  self : OffscreenCanvasRenderingContext2D,
) -> Unit =
  #| (self) => self.clip()

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::clip_with_fill_rule(
  self : OffscreenCanvasRenderingContext2D,
  fill_rule : CanvasFillRule,
) -> Unit =
  #| (self, fill_rule) => self.clip(['nonzero', 'evenodd'][fill_rule])

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::clip_with_path_path_2d(
  self : OffscreenCanvasRenderingContext2D,
  path : Path2D,
) -> Unit =
  #| (self, path) => self.clip(path)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::clip_with_path_path_2d_and_fill_rule_canvas_fill_rule(
  self : OffscreenCanvasRenderingContext2D,
  path : Path2D,
  fill_rule : CanvasFillRule,
) -> Unit =
  #| (self, path, fill_rule) => self.clip(path, ['nonzero', 'evenodd'][fill_rule])

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::is_point_in_path(
  self : OffscreenCanvasRenderingContext2D,
  x : Double,
  y : Double,
) -> Bool =
  #| (self, x, y) => self.isPointInPath(x, y)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::is_point_in_path_with_fill_rule(
  self : OffscreenCanvasRenderingContext2D,
  x : Double,
  y : Double,
  fill_rule : CanvasFillRule,
) -> Bool =
  #| (self, x, y, fill_rule) => self.isPointInPath(x, y, ['nonzero', 'evenodd'][fill_rule])

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::is_point_in_path_with_path_path_2d_and_x_and_y(
  self : OffscreenCanvasRenderingContext2D,
  path : Path2D,
  x : Double,
  y : Double,
) -> Bool =
  #| (self, path, x, y) => self.isPointInPath(path, x, y)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::is_point_in_path_with_path_path_2d_and_x_and_y_and_fill_rule_canvas_fill_rule(
  self : OffscreenCanvasRenderingContext2D,
  path : Path2D,
  x : Double,
  y : Double,
  fill_rule : CanvasFillRule,
) -> Bool =
  #| (self, path, x, y, fill_rule) => self.isPointInPath(path, x, y, ['nonzero', 'evenodd'][fill_rule])

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::is_point_in_stroke(
  self : OffscreenCanvasRenderingContext2D,
  x : Double,
  y : Double,
) -> Bool =
  #| (self, x, y) => self.isPointInStroke(x, y)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::is_point_in_stroke_with_path_path_2d_and_x_and_y(
  self : OffscreenCanvasRenderingContext2D,
  path : Path2D,
  x : Double,
  y : Double,
) -> Bool =
  #| (self, path, x, y) => self.isPointInStroke(path, x, y)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::fill_text(
  self : OffscreenCanvasRenderingContext2D,
  text : String,
  x : Double,
  y : Double,
) -> Unit =
  #| (self, text, x, y) => self.fillText(text, x, y)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::fill_text_with_max_width(
  self : OffscreenCanvasRenderingContext2D,
  text : String,
  x : Double,
  y : Double,
  max_width : Double,
) -> Unit =
  #| (self, text, x, y, max_width) => self.fillText(text, x, y, max_width)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::stroke_text(
  self : OffscreenCanvasRenderingContext2D,
  text : String,
  x : Double,
  y : Double,
) -> Unit =
  #| (self, text, x, y) => self.strokeText(text, x, y)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::stroke_text_with_max_width(
  self : OffscreenCanvasRenderingContext2D,
  text : String,
  x : Double,
  y : Double,
  max_width : Double,
) -> Unit =
  #| (self, text, x, y, max_width) => self.strokeText(text, x, y, max_width)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::measure_text(
  self : OffscreenCanvasRenderingContext2D,
  text : String,
) -> TextMetrics =
  #| (self, text) => self.measureText(text)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::draw_image(
  self : OffscreenCanvasRenderingContext2D,
  image : CanvasImageSource,
  dx : Double,
  dy : Double,
) -> Unit =
  #| (self, image, dx, dy) => self.drawImage(image, dx, dy)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::draw_image_with_image_canvas_image_source_and_dx_and_dy_and_dw_and_dh(
  self : OffscreenCanvasRenderingContext2D,
  image : CanvasImageSource,
  dx : Double,
  dy : Double,
  dw : Double,
  dh : Double,
) -> Unit =
  #| (self, image, dx, dy, dw, dh) => self.drawImage(image, dx, dy, dw, dh)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::draw_image_with_image_canvas_image_source_and_sx_and_sy_and_sw_and_sh_and_dx_and_dy_and_dw_and_dh(
  self : OffscreenCanvasRenderingContext2D,
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
pub extern "js" fn OffscreenCanvasRenderingContext2D::create_image_data(
  self : OffscreenCanvasRenderingContext2D,
  image_data : ImageData,
) -> ImageData =
  #| (self, image_data) => self.createImageData(image_data)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::create_image_data_with_sw_and_sh(
  self : OffscreenCanvasRenderingContext2D,
  sw : Int,
  sh : Int,
) -> ImageData =
  #| (self, sw, sh) => self.createImageData(sw, sh)

///|
extern "js" fn OffscreenCanvasRenderingContext2D::create_image_data_with_sw_and_sh_and_settings_image_data_settings_ffi(
  self : OffscreenCanvasRenderingContext2D,
  sw : Int,
  sh : Int,
  settings : JsValue,
) -> ImageData =
  #| (self, sw, sh, settings) => self.createImageData(sw, sh, settings)

///|
pub fn OffscreenCanvasRenderingContext2D::create_image_data_with_sw_and_sh_and_settings_image_data_settings(
  self : OffscreenCanvasRenderingContext2D,
  sw : Int,
  sh : Int,
  settings : ImageDataSettings,
) -> ImageData {
  OffscreenCanvasRenderingContext2D::create_image_data_with_sw_and_sh_and_settings_image_data_settings_ffi(
    self,
    sw,
    sh,
    settings.to_js(),
  )
}

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::get_image_data(
  self : OffscreenCanvasRenderingContext2D,
  sx : Int,
  sy : Int,
  sw : Int,
  sh : Int,
) -> ImageData =
  #| (self, sx, sy, sw, sh) => self.getImageData(sx, sy, sw, sh)

///|
extern "js" fn OffscreenCanvasRenderingContext2D::get_image_data_with_settings_ffi(
  self : OffscreenCanvasRenderingContext2D,
  sx : Int,
  sy : Int,
  sw : Int,
  sh : Int,
  settings : JsValue,
) -> ImageData =
  #| (self, sx, sy, sw, sh, settings) => self.getImageData(sx, sy, sw, sh, settings)

///|
pub fn OffscreenCanvasRenderingContext2D::get_image_data_with_settings(
  self : OffscreenCanvasRenderingContext2D,
  sx : Int,
  sy : Int,
  sw : Int,
  sh : Int,
  settings : ImageDataSettings,
) -> ImageData {
  OffscreenCanvasRenderingContext2D::get_image_data_with_settings_ffi(
    self,
    sx,
    sy,
    sw,
    sh,
    settings.to_js(),
  )
}

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::put_image_data(
  self : OffscreenCanvasRenderingContext2D,
  image_data : ImageData,
  dx : Int,
  dy : Int,
) -> Unit =
  #| (self, image_data, dx, dy) => self.putImageData(image_data, dx, dy)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::put_image_data_with_image_data_image_data_and_dx_and_dy_and_dirty_x_and_dirty_y_and_dirty_width_and_dirty_height(
  self : OffscreenCanvasRenderingContext2D,
  image_data : ImageData,
  dx : Int,
  dy : Int,
  dirty_x : Int,
  dirty_y : Int,
  dirty_width : Int,
  dirty_height : Int,
) -> Unit =
  #| (self, image_data, dx, dy, dirty_x, dirty_y, dirty_width, dirty_height) => self.putImageData(image_data, dx, dy, dirty_x, dirty_y, dirty_width, dirty_height)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::get_line_width(
  self : OffscreenCanvasRenderingContext2D,
) -> Double =
  #| (self) => self.lineWidth

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::set_line_width(
  self : OffscreenCanvasRenderingContext2D,
  value : Double,
) -> Unit =
  #| (self, value) => { self.lineWidth = value }

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::get_line_cap(
  self : OffscreenCanvasRenderingContext2D,
) -> CanvasLineCap =
  #| (self) => ['butt', 'round', 'square'].indexOf(self.lineCap)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::set_line_cap(
  self : OffscreenCanvasRenderingContext2D,
  value : CanvasLineCap,
) -> Unit =
  #| (self, value) => { self.lineCap = ['butt', 'round', 'square'][value] }

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::get_line_join(
  self : OffscreenCanvasRenderingContext2D,
) -> CanvasLineJoin =
  #| (self) => ['round', 'bevel', 'miter'].indexOf(self.lineJoin)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::set_line_join(
  self : OffscreenCanvasRenderingContext2D,
  value : CanvasLineJoin,
) -> Unit =
  #| (self, value) => { self.lineJoin = ['round', 'bevel', 'miter'][value] }

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::get_miter_limit(
  self : OffscreenCanvasRenderingContext2D,
) -> Double =
  #| (self) => self.miterLimit

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::set_miter_limit(
  self : OffscreenCanvasRenderingContext2D,
  value : Double,
) -> Unit =
  #| (self, value) => { self.miterLimit = value }

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::set_line_dash(
  self : OffscreenCanvasRenderingContext2D,
  segments : Array[Double],
) -> Unit =
  #| (self, segments) => self.setLineDash(segments)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::get_line_dash(
  self : OffscreenCanvasRenderingContext2D,
) -> Array[Double] =
  #| (self) => self.getLineDash()

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::get_line_dash_offset(
  self : OffscreenCanvasRenderingContext2D,
) -> Double =
  #| (self) => self.lineDashOffset

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::set_line_dash_offset(
  self : OffscreenCanvasRenderingContext2D,
  value : Double,
) -> Unit =
  #| (self, value) => { self.lineDashOffset = value }

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::get_lang(
  self : OffscreenCanvasRenderingContext2D,
) -> String =
  #| (self) => self.lang

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::set_lang(
  self : OffscreenCanvasRenderingContext2D,
  value : String,
) -> Unit =
  #| (self, value) => { self.lang = value }

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::get_font(
  self : OffscreenCanvasRenderingContext2D,
) -> String =
  #| (self) => self.font

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::set_font(
  self : OffscreenCanvasRenderingContext2D,
  value : String,
) -> Unit =
  #| (self, value) => { self.font = value }

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::get_text_align(
  self : OffscreenCanvasRenderingContext2D,
) -> CanvasTextAlign =
  #| (self) => ['start', 'end', 'left', 'right', 'center'].indexOf(self.textAlign)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::set_text_align(
  self : OffscreenCanvasRenderingContext2D,
  value : CanvasTextAlign,
) -> Unit =
  #| (self, value) => { self.textAlign = ['start', 'end', 'left', 'right', 'center'][value] }

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::get_text_baseline(
  self : OffscreenCanvasRenderingContext2D,
) -> CanvasTextBaseline =
  #| (self) => ['top', 'hanging', 'middle', 'alphabetic', 'ideographic', 'bottom'].indexOf(self.textBaseline)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::set_text_baseline(
  self : OffscreenCanvasRenderingContext2D,
  value : CanvasTextBaseline,
) -> Unit =
  #| (self, value) => { self.textBaseline = ['top', 'hanging', 'middle', 'alphabetic', 'ideographic', 'bottom'][value] }

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::get_direction(
  self : OffscreenCanvasRenderingContext2D,
) -> CanvasDirection =
  #| (self) => ['ltr', 'rtl', 'inherit'].indexOf(self.direction)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::set_direction(
  self : OffscreenCanvasRenderingContext2D,
  value : CanvasDirection,
) -> Unit =
  #| (self, value) => { self.direction = ['ltr', 'rtl', 'inherit'][value] }

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::get_letter_spacing(
  self : OffscreenCanvasRenderingContext2D,
) -> String =
  #| (self) => self.letterSpacing

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::set_letter_spacing(
  self : OffscreenCanvasRenderingContext2D,
  value : String,
) -> Unit =
  #| (self, value) => { self.letterSpacing = value }

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::get_font_kerning(
  self : OffscreenCanvasRenderingContext2D,
) -> CanvasFontKerning =
  #| (self) => ['auto', 'normal', 'none'].indexOf(self.fontKerning)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::set_font_kerning(
  self : OffscreenCanvasRenderingContext2D,
  value : CanvasFontKerning,
) -> Unit =
  #| (self, value) => { self.fontKerning = ['auto', 'normal', 'none'][value] }

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::get_font_stretch(
  self : OffscreenCanvasRenderingContext2D,
) -> CanvasFontStretch =
  #| (self) => ['ultra-condensed', 'extra-condensed', 'condensed', 'semi-condensed', 'normal', 'semi-expanded', 'expanded', 'extra-expanded', 'ultra-expanded'].indexOf(self.fontStretch)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::set_font_stretch(
  self : OffscreenCanvasRenderingContext2D,
  value : CanvasFontStretch,
) -> Unit =
  #| (self, value) => { self.fontStretch = ['ultra-condensed', 'extra-condensed', 'condensed', 'semi-condensed', 'normal', 'semi-expanded', 'expanded', 'extra-expanded', 'ultra-expanded'][value] }

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::get_font_variant_caps(
  self : OffscreenCanvasRenderingContext2D,
) -> CanvasFontVariantCaps =
  #| (self) => ['normal', 'small-caps', 'all-small-caps', 'petite-caps', 'all-petite-caps', 'unicase', 'titling-caps'].indexOf(self.fontVariantCaps)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::set_font_variant_caps(
  self : OffscreenCanvasRenderingContext2D,
  value : CanvasFontVariantCaps,
) -> Unit =
  #| (self, value) => { self.fontVariantCaps = ['normal', 'small-caps', 'all-small-caps', 'petite-caps', 'all-petite-caps', 'unicase', 'titling-caps'][value] }

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::get_text_rendering(
  self : OffscreenCanvasRenderingContext2D,
) -> CanvasTextRendering =
  #| (self) => ['auto', 'optimizeSpeed', 'optimizeLegibility', 'geometricPrecision'].indexOf(self.textRendering)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::set_text_rendering(
  self : OffscreenCanvasRenderingContext2D,
  value : CanvasTextRendering,
) -> Unit =
  #| (self, value) => { self.textRendering = ['auto', 'optimizeSpeed', 'optimizeLegibility', 'geometricPrecision'][value] }

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::get_word_spacing(
  self : OffscreenCanvasRenderingContext2D,
) -> String =
  #| (self) => self.wordSpacing

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::set_word_spacing(
  self : OffscreenCanvasRenderingContext2D,
  value : String,
) -> Unit =
  #| (self, value) => { self.wordSpacing = value }

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::close_path(
  self : OffscreenCanvasRenderingContext2D,
) -> Unit =
  #| (self) => self.closePath()

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::move_to(
  self : OffscreenCanvasRenderingContext2D,
  x : Double,
  y : Double,
) -> Unit =
  #| (self, x, y) => self.moveTo(x, y)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::line_to(
  self : OffscreenCanvasRenderingContext2D,
  x : Double,
  y : Double,
) -> Unit =
  #| (self, x, y) => self.lineTo(x, y)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::quadratic_curve_to(
  self : OffscreenCanvasRenderingContext2D,
  cpx : Double,
  cpy : Double,
  x : Double,
  y : Double,
) -> Unit =
  #| (self, cpx, cpy, x, y) => self.quadraticCurveTo(cpx, cpy, x, y)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::bezier_curve_to(
  self : OffscreenCanvasRenderingContext2D,
  cp1x : Double,
  cp1y : Double,
  cp2x : Double,
  cp2y : Double,
  x : Double,
  y : Double,
) -> Unit =
  #| (self, cp1x, cp1y, cp2x, cp2y, x, y) => self.bezierCurveTo(cp1x, cp1y, cp2x, cp2y, x, y)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::arc_to(
  self : OffscreenCanvasRenderingContext2D,
  x1 : Double,
  y1 : Double,
  x2 : Double,
  y2 : Double,
  radius : Double,
) -> Unit =
  #| (self, x1, y1, x2, y2, radius) => self.arcTo(x1, y1, x2, y2, radius)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::rect(
  self : OffscreenCanvasRenderingContext2D,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
) -> Unit =
  #| (self, x, y, w, h) => self.rect(x, y, w, h)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::round_rect(
  self : OffscreenCanvasRenderingContext2D,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
) -> Unit =
  #| (self, x, y, w, h) => self.roundRect(x, y, w, h)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::round_rect_with_radii(
  self : OffscreenCanvasRenderingContext2D,
  x : Double,
  y : Double,
  w : Double,
  h : Double,
  radii : DoubleOrDOMPointInitOrArrayOfDoubleOrDOMPointInit,
) -> Unit =
  #| (self, x, y, w, h, radii) => self.roundRect(x, y, w, h, radii)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::arc(
  self : OffscreenCanvasRenderingContext2D,
  x : Double,
  y : Double,
  radius : Double,
  start_angle : Double,
  end_angle : Double,
) -> Unit =
  #| (self, x, y, radius, start_angle, end_angle) => self.arc(x, y, radius, start_angle, end_angle)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::arc_with_counterclockwise(
  self : OffscreenCanvasRenderingContext2D,
  x : Double,
  y : Double,
  radius : Double,
  start_angle : Double,
  end_angle : Double,
  counterclockwise : Bool,
) -> Unit =
  #| (self, x, y, radius, start_angle, end_angle, counterclockwise) => self.arc(x, y, radius, start_angle, end_angle, counterclockwise)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::ellipse(
  self : OffscreenCanvasRenderingContext2D,
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
pub extern "js" fn OffscreenCanvasRenderingContext2D::ellipse_with_counterclockwise(
  self : OffscreenCanvasRenderingContext2D,
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
pub extern "js" fn OffscreenCanvasRenderingContext2D::create_pattern_with_html_or_svg_image_element(
  self : OffscreenCanvasRenderingContext2D,
  image : HTMLOrSVGImageElement,
  repetition : String,
) -> CanvasPattern? =
  #| (self, image, repetition) => (() => { const v = self.createPattern(image, repetition); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::create_pattern_with_html_video_element(
  self : OffscreenCanvasRenderingContext2D,
  image : HTMLVideoElement,
  repetition : String,
) -> CanvasPattern? =
  #| (self, image, repetition) => (() => { const v = self.createPattern(image, repetition); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::create_pattern_with_html_canvas_element(
  self : OffscreenCanvasRenderingContext2D,
  image : HTMLCanvasElement,
  repetition : String,
) -> CanvasPattern? =
  #| (self, image, repetition) => (() => { const v = self.createPattern(image, repetition); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::create_pattern_with_image_bitmap(
  self : OffscreenCanvasRenderingContext2D,
  image : ImageBitmap,
  repetition : String,
) -> CanvasPattern? =
  #| (self, image, repetition) => (() => { const v = self.createPattern(image, repetition); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::create_pattern_with_offscreen_canvas(
  self : OffscreenCanvasRenderingContext2D,
  image : OffscreenCanvas,
  repetition : String,
) -> CanvasPattern? =
  #| (self, image, repetition) => (() => { const v = self.createPattern(image, repetition); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::create_pattern_with_video_frame(
  self : OffscreenCanvasRenderingContext2D,
  image : VideoFrame,
  repetition : String,
) -> CanvasPattern? =
  #| (self, image, repetition) => (() => { const v = self.createPattern(image, repetition); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::draw_image_with_html_or_svg_image_element(
  self : OffscreenCanvasRenderingContext2D,
  image : HTMLOrSVGImageElement,
  dx : Double,
  dy : Double,
) -> Unit =
  #| (self, image, dx, dy) => self.drawImage(image, dx, dy)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::draw_image_with_html_video_element(
  self : OffscreenCanvasRenderingContext2D,
  image : HTMLVideoElement,
  dx : Double,
  dy : Double,
) -> Unit =
  #| (self, image, dx, dy) => self.drawImage(image, dx, dy)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::draw_image_with_html_canvas_element(
  self : OffscreenCanvasRenderingContext2D,
  image : HTMLCanvasElement,
  dx : Double,
  dy : Double,
) -> Unit =
  #| (self, image, dx, dy) => self.drawImage(image, dx, dy)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::draw_image_with_image_bitmap(
  self : OffscreenCanvasRenderingContext2D,
  image : ImageBitmap,
  dx : Double,
  dy : Double,
) -> Unit =
  #| (self, image, dx, dy) => self.drawImage(image, dx, dy)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::draw_image_with_offscreen_canvas(
  self : OffscreenCanvasRenderingContext2D,
  image : OffscreenCanvas,
  dx : Double,
  dy : Double,
) -> Unit =
  #| (self, image, dx, dy) => self.drawImage(image, dx, dy)

///|
pub extern "js" fn OffscreenCanvasRenderingContext2D::draw_image_with_video_frame(
  self : OffscreenCanvasRenderingContext2D,
  image : VideoFrame,
  dx : Double,
  dy : Double,
) -> Unit =
  #| (self, image, dx, dy) => self.drawImage(image, dx, dy)

///|
/// CustomElementRegistry interface
pub type CustomElementRegistry

///|
pub extern "js" fn CustomElementRegistry::to_js_value(
  self : CustomElementRegistry,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CustomElementRegistry (unchecked)
pub extern "js" fn CustomElementRegistry::from_js_value(
  v : JsValue,
) -> CustomElementRegistry =
  #| (v) => v

///|
/// Safely cast JsValue to CustomElementRegistry (checked with instanceof)
pub extern "js" fn CustomElementRegistry::from_js_value_opt(
  v : JsValue,
) -> CustomElementRegistry? =
  #| (v) => (v instanceof CustomElementRegistry) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CustomElementRegistry (checked with instanceof)
pub extern "js" fn JsValue::as_custom_element_registry(
  self : JsValue,
) -> CustomElementRegistry? =
  #| (self) => (self instanceof CustomElementRegistry) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CustomElementRegistry (unchecked)
pub extern "js" fn JsValue::to_custom_element_registry(
  self : JsValue,
) -> CustomElementRegistry =
  #| (self) => self

///|
pub extern "js" fn CustomElementRegistry::new() -> CustomElementRegistry =
  #| () => new CustomElementRegistry()

///|
pub extern "js" fn CustomElementRegistry::define_(
  self : CustomElementRegistry,
  name : String,
  constructor_ : CustomElementConstructor,
) -> Unit =
  #| (self, name, constructor_) => self.define(name, constructor_)

///|
extern "js" fn CustomElementRegistry::define__with_options_ffi(
  self : CustomElementRegistry,
  name : String,
  constructor_ : CustomElementConstructor,
  options : JsValue,
) -> Unit =
  #| (self, name, constructor_, options) => self.define(name, constructor_, options)

///|
pub fn CustomElementRegistry::define__with_options(
  self : CustomElementRegistry,
  name : String,
  constructor_ : CustomElementConstructor,
  options : ElementDefinitionOptions,
) -> Unit {
  CustomElementRegistry::define__with_options_ffi(
    self,
    name,
    constructor_,
    options.to_js(),
  )
}

///|
pub extern "js" fn CustomElementRegistry::get(
  self : CustomElementRegistry,
  name : String,
) -> CustomElementConstructorOrVoid =
  #| (self, name) => self.get(name)

///|
pub extern "js" fn CustomElementRegistry::get_name(
  self : CustomElementRegistry,
  constructor_ : CustomElementConstructor,
) -> String? =
  #| (self, constructor_) => (self.getName(constructor_)) ?? undefined

///|
pub extern "js" fn CustomElementRegistry::when_defined(
  self : CustomElementRegistry,
  name : String,
) -> Promise[CustomElementConstructor] =
  #| (self, name) => self.whenDefined(name)

///|
pub extern "js" fn CustomElementRegistry::upgrade(
  self : CustomElementRegistry,
  root : Node,
) -> Unit =
  #| (self, root) => self.upgrade(root)

///|
pub extern "js" fn CustomElementRegistry::initialize(
  self : CustomElementRegistry,
  root : Node,
) -> Unit =
  #| (self, root) => self.initialize(root)

///|
/// ElementInternals interface
pub type ElementInternals

///|
pub extern "js" fn ElementInternals::to_js_value(
  self : ElementInternals,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ElementInternals (unchecked)
pub extern "js" fn ElementInternals::from_js_value(
  v : JsValue,
) -> ElementInternals =
  #| (v) => v

///|
/// Safely cast JsValue to ElementInternals (checked with instanceof)
pub extern "js" fn ElementInternals::from_js_value_opt(
  v : JsValue,
) -> ElementInternals? =
  #| (v) => (v instanceof ElementInternals) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ElementInternals (checked with instanceof)
pub extern "js" fn JsValue::as_element_internals(
  self : JsValue,
) -> ElementInternals? =
  #| (self) => (self instanceof ElementInternals) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ElementInternals (unchecked)
pub extern "js" fn JsValue::to_element_internals(
  self : JsValue,
) -> ElementInternals =
  #| (self) => self

///|
pub extern "js" fn ElementInternals::get_shadow_root(
  self : ElementInternals,
) -> ShadowRoot? =
  #| (self) => (() => { const v = self.shadowRoot; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn ElementInternals::set_form_value(
  self : ElementInternals,
  value : FileOrStringOrFormData,
) -> Unit =
  #| (self, value) => self.setFormValue(value)

///|
pub extern "js" fn ElementInternals::set_form_value_with_state(
  self : ElementInternals,
  value : FileOrStringOrFormData,
  state : FileOrStringOrFormData,
) -> Unit =
  #| (self, value, state) => self.setFormValue(value, state)

///|
pub extern "js" fn ElementInternals::get_form(
  self : ElementInternals,
) -> HTMLFormElement? =
  #| (self) => (() => { const v = self.form; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn ElementInternals::set_validity(
  self : ElementInternals,
) -> Unit =
  #| (self) => self.setValidity()

///|
extern "js" fn ElementInternals::set_validity_with_anchor_ffi(
  self : ElementInternals,
  flags : JsValue,
  message : String,
  anchor : HTMLElement,
) -> Unit =
  #| (self, flags, message, anchor) => self.setValidity(flags, message, anchor)

///|
pub fn ElementInternals::set_validity_with_anchor(
  self : ElementInternals,
  flags : ValidityStateFlags,
  message : String,
  anchor : HTMLElement,
) -> Unit {
  ElementInternals::set_validity_with_anchor_ffi(
    self,
    flags.to_js(),
    message,
    anchor,
  )
}

///|
pub extern "js" fn ElementInternals::get_will_validate(
  self : ElementInternals,
) -> Bool =
  #| (self) => self.willValidate

///|
pub extern "js" fn ElementInternals::get_validity(
  self : ElementInternals,
) -> ValidityState =
  #| (self) => self.validity

///|
pub extern "js" fn ElementInternals::get_validation_message(
  self : ElementInternals,
) -> String =
  #| (self) => self.validationMessage

///|
pub extern "js" fn ElementInternals::check_validity(
  self : ElementInternals,
) -> Bool =
  #| (self) => self.checkValidity()

///|
pub extern "js" fn ElementInternals::report_validity(
  self : ElementInternals,
) -> Bool =
  #| (self) => self.reportValidity()

///|
pub extern "js" fn ElementInternals::get_labels(
  self : ElementInternals,
) -> NodeList =
  #| (self) => self.labels

///|
pub extern "js" fn ElementInternals::get_states(
  self : ElementInternals,
) -> CustomStateSet =
  #| (self) => self.states

///|
pub extern "js" fn ElementInternals::get_role(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.role) ?? undefined

///|
pub extern "js" fn ElementInternals::set_role(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.role = value }

///|
pub extern "js" fn ElementInternals::get_aria_active_descendant_element(
  self : ElementInternals,
) -> Element? =
  #| (self) => (() => { const v = self.ariaActiveDescendantElement; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn ElementInternals::set_aria_active_descendant_element(
  self : ElementInternals,
  value : Element?,
) -> Unit =
  #| (self, value) => { self.ariaActiveDescendantElement = (value.$tag === 1 ? value._0 : null) }

///|
pub extern "js" fn ElementInternals::get_aria_atomic(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaAtomic) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_atomic(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaAtomic = value }

///|
pub extern "js" fn ElementInternals::get_aria_auto_complete(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaAutoComplete) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_auto_complete(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaAutoComplete = value }

///|
pub extern "js" fn ElementInternals::get_aria_braille_label(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaBrailleLabel) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_braille_label(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaBrailleLabel = value }

///|
pub extern "js" fn ElementInternals::get_aria_braille_role_description(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaBrailleRoleDescription) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_braille_role_description(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaBrailleRoleDescription = value }

///|
pub extern "js" fn ElementInternals::get_aria_busy(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaBusy) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_busy(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaBusy = value }

///|
pub extern "js" fn ElementInternals::get_aria_checked(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaChecked) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_checked(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaChecked = value }

///|
pub extern "js" fn ElementInternals::get_aria_col_count(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaColCount) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_col_count(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaColCount = value }

///|
pub extern "js" fn ElementInternals::get_aria_col_index(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaColIndex) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_col_index(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaColIndex = value }

///|
pub extern "js" fn ElementInternals::get_aria_col_index_text(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaColIndexText) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_col_index_text(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaColIndexText = value }

///|
pub extern "js" fn ElementInternals::get_aria_col_span(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaColSpan) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_col_span(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaColSpan = value }

///|
pub extern "js" fn ElementInternals::get_aria_controls_elements(
  self : ElementInternals,
) -> Array[Element] =
  #| (self) => self.ariaControlsElements

///|
pub extern "js" fn ElementInternals::set_aria_controls_elements(
  self : ElementInternals,
  value : Array[Element],
) -> Unit =
  #| (self, value) => { self.ariaControlsElements = value }

///|
pub extern "js" fn ElementInternals::get_aria_current(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaCurrent) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_current(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaCurrent = value }

///|
pub extern "js" fn ElementInternals::get_aria_described_by_elements(
  self : ElementInternals,
) -> Array[Element] =
  #| (self) => self.ariaDescribedByElements

///|
pub extern "js" fn ElementInternals::set_aria_described_by_elements(
  self : ElementInternals,
  value : Array[Element],
) -> Unit =
  #| (self, value) => { self.ariaDescribedByElements = value }

///|
pub extern "js" fn ElementInternals::get_aria_description(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaDescription) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_description(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaDescription = value }

///|
pub extern "js" fn ElementInternals::get_aria_details_elements(
  self : ElementInternals,
) -> Array[Element] =
  #| (self) => self.ariaDetailsElements

///|
pub extern "js" fn ElementInternals::set_aria_details_elements(
  self : ElementInternals,
  value : Array[Element],
) -> Unit =
  #| (self, value) => { self.ariaDetailsElements = value }

///|
pub extern "js" fn ElementInternals::get_aria_disabled(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaDisabled) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_disabled(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaDisabled = value }

///|
pub extern "js" fn ElementInternals::get_aria_error_message_elements(
  self : ElementInternals,
) -> Array[Element] =
  #| (self) => self.ariaErrorMessageElements

///|
pub extern "js" fn ElementInternals::set_aria_error_message_elements(
  self : ElementInternals,
  value : Array[Element],
) -> Unit =
  #| (self, value) => { self.ariaErrorMessageElements = value }

///|
pub extern "js" fn ElementInternals::get_aria_expanded(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaExpanded) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_expanded(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaExpanded = value }

///|
pub extern "js" fn ElementInternals::get_aria_flow_to_elements(
  self : ElementInternals,
) -> Array[Element] =
  #| (self) => self.ariaFlowToElements

///|
pub extern "js" fn ElementInternals::set_aria_flow_to_elements(
  self : ElementInternals,
  value : Array[Element],
) -> Unit =
  #| (self, value) => { self.ariaFlowToElements = value }

///|
pub extern "js" fn ElementInternals::get_aria_has_popup(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaHasPopup) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_has_popup(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaHasPopup = value }

///|
pub extern "js" fn ElementInternals::get_aria_hidden(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaHidden) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_hidden(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaHidden = value }

///|
pub extern "js" fn ElementInternals::get_aria_invalid(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaInvalid) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_invalid(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaInvalid = value }

///|
pub extern "js" fn ElementInternals::get_aria_key_shortcuts(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaKeyShortcuts) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_key_shortcuts(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaKeyShortcuts = value }

///|
pub extern "js" fn ElementInternals::get_aria_label(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaLabel) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_label(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaLabel = value }

///|
pub extern "js" fn ElementInternals::get_aria_labelled_by_elements(
  self : ElementInternals,
) -> Array[Element] =
  #| (self) => self.ariaLabelledByElements

///|
pub extern "js" fn ElementInternals::set_aria_labelled_by_elements(
  self : ElementInternals,
  value : Array[Element],
) -> Unit =
  #| (self, value) => { self.ariaLabelledByElements = value }

///|
pub extern "js" fn ElementInternals::get_aria_level(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaLevel) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_level(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaLevel = value }

///|
pub extern "js" fn ElementInternals::get_aria_live(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaLive) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_live(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaLive = value }

///|
pub extern "js" fn ElementInternals::get_aria_modal(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaModal) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_modal(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaModal = value }

///|
pub extern "js" fn ElementInternals::get_aria_multi_line(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaMultiLine) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_multi_line(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaMultiLine = value }

///|
pub extern "js" fn ElementInternals::get_aria_multi_selectable(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaMultiSelectable) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_multi_selectable(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaMultiSelectable = value }

///|
pub extern "js" fn ElementInternals::get_aria_orientation(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaOrientation) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_orientation(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaOrientation = value }

///|
pub extern "js" fn ElementInternals::get_aria_owns_elements(
  self : ElementInternals,
) -> Array[Element] =
  #| (self) => self.ariaOwnsElements

///|
pub extern "js" fn ElementInternals::set_aria_owns_elements(
  self : ElementInternals,
  value : Array[Element],
) -> Unit =
  #| (self, value) => { self.ariaOwnsElements = value }

///|
pub extern "js" fn ElementInternals::get_aria_placeholder(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaPlaceholder) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_placeholder(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaPlaceholder = value }

///|
pub extern "js" fn ElementInternals::get_aria_pos_in_set(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaPosInSet) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_pos_in_set(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaPosInSet = value }

///|
pub extern "js" fn ElementInternals::get_aria_pressed(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaPressed) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_pressed(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaPressed = value }

///|
pub extern "js" fn ElementInternals::get_aria_read_only(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaReadOnly) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_read_only(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaReadOnly = value }

///|
pub extern "js" fn ElementInternals::get_aria_relevant(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaRelevant) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_relevant(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaRelevant = value }

///|
pub extern "js" fn ElementInternals::get_aria_required(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaRequired) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_required(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaRequired = value }

///|
pub extern "js" fn ElementInternals::get_aria_role_description(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaRoleDescription) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_role_description(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaRoleDescription = value }

///|
pub extern "js" fn ElementInternals::get_aria_row_count(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaRowCount) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_row_count(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaRowCount = value }

///|
pub extern "js" fn ElementInternals::get_aria_row_index(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaRowIndex) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_row_index(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaRowIndex = value }

///|
pub extern "js" fn ElementInternals::get_aria_row_index_text(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaRowIndexText) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_row_index_text(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaRowIndexText = value }

///|
pub extern "js" fn ElementInternals::get_aria_row_span(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaRowSpan) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_row_span(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaRowSpan = value }

///|
pub extern "js" fn ElementInternals::get_aria_selected(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaSelected) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_selected(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaSelected = value }

///|
pub extern "js" fn ElementInternals::get_aria_set_size(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaSetSize) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_set_size(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaSetSize = value }

///|
pub extern "js" fn ElementInternals::get_aria_sort(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaSort) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_sort(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaSort = value }

///|
pub extern "js" fn ElementInternals::get_aria_value_max(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaValueMax) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_value_max(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaValueMax = value }

///|
pub extern "js" fn ElementInternals::get_aria_value_min(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaValueMin) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_value_min(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaValueMin = value }

///|
pub extern "js" fn ElementInternals::get_aria_value_now(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaValueNow) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_value_now(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaValueNow = value }

///|
pub extern "js" fn ElementInternals::get_aria_value_text(
  self : ElementInternals,
) -> String? =
  #| (self) => (self.ariaValueText) ?? undefined

///|
pub extern "js" fn ElementInternals::set_aria_value_text(
  self : ElementInternals,
  value : String?,
) -> Unit =
  #| (self, value) => { self.ariaValueText = value }

///|
/// CustomStateSet interface
pub type CustomStateSet

///|
pub extern "js" fn CustomStateSet::to_js_value(
  self : CustomStateSet,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CustomStateSet (unchecked)
pub extern "js" fn CustomStateSet::from_js_value(v : JsValue) -> CustomStateSet =
  #| (v) => v

///|
/// Safely cast JsValue to CustomStateSet (checked with instanceof)
pub extern "js" fn CustomStateSet::from_js_value_opt(
  v : JsValue,
) -> CustomStateSet? =
  #| (v) => (v instanceof CustomStateSet) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CustomStateSet (checked with instanceof)
pub extern "js" fn JsValue::as_custom_state_set(
  self : JsValue,
) -> CustomStateSet? =
  #| (self) => (self instanceof CustomStateSet) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CustomStateSet (unchecked)
pub extern "js" fn JsValue::to_custom_state_set(
  self : JsValue,
) -> CustomStateSet =
  #| (self) => self

///|
pub extern "js" fn CustomStateSet::has(
  self : CustomStateSet,
  value : String,
) -> Bool =
  #| (self, value) => self.has(value)

///|
pub extern "js" fn CustomStateSet::add(
  self : CustomStateSet,
  value : String,
) -> Unit =
  #| (self, value) => { self.add(value) }

///|
pub extern "js" fn CustomStateSet::delete(
  self : CustomStateSet,
  value : String,
) -> Bool =
  #| (self, value) => self.delete(value)

///|
pub extern "js" fn CustomStateSet::clear(self : CustomStateSet) -> Unit =
  #| (self) => { self.clear() }

///|
/// VisibilityStateEntry interface
pub type VisibilityStateEntry

///|
pub extern "js" fn VisibilityStateEntry::to_js_value(
  self : VisibilityStateEntry,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to VisibilityStateEntry (unchecked)
pub extern "js" fn VisibilityStateEntry::from_js_value(
  v : JsValue,
) -> VisibilityStateEntry =
  #| (v) => v

///|
/// Safely cast JsValue to VisibilityStateEntry (checked with instanceof)
pub extern "js" fn VisibilityStateEntry::from_js_value_opt(
  v : JsValue,
) -> VisibilityStateEntry? =
  #| (v) => (v instanceof VisibilityStateEntry) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to VisibilityStateEntry (checked with instanceof)
pub extern "js" fn JsValue::as_visibility_state_entry(
  self : JsValue,
) -> VisibilityStateEntry? =
  #| (self) => (self instanceof VisibilityStateEntry) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to VisibilityStateEntry (unchecked)
pub extern "js" fn JsValue::to_visibility_state_entry(
  self : JsValue,
) -> VisibilityStateEntry =
  #| (self) => self

///|
pub extern "js" fn VisibilityStateEntry::to_performance_entry(
  self : VisibilityStateEntry,
) -> PerformanceEntry =
  #| (self) => self

///|
pub extern "js" fn VisibilityStateEntry::get_name(
  self : VisibilityStateEntry,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn VisibilityStateEntry::get_entry_type(
  self : VisibilityStateEntry,
) -> String =
  #| (self) => self.entryType

///|
pub extern "js" fn VisibilityStateEntry::get_start_time(
  self : VisibilityStateEntry,
) -> DOMHighResTimeStamp =
  #| (self) => self.startTime

///|
pub extern "js" fn VisibilityStateEntry::get_duration(
  self : VisibilityStateEntry,
) -> Int =
  #| (self) => self.duration

///|
/// UserActivation interface
pub type UserActivation

///|
pub extern "js" fn UserActivation::to_js_value(
  self : UserActivation,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to UserActivation (unchecked)
pub extern "js" fn UserActivation::from_js_value(v : JsValue) -> UserActivation =
  #| (v) => v

///|
/// Safely cast JsValue to UserActivation (checked with instanceof)
pub extern "js" fn UserActivation::from_js_value_opt(
  v : JsValue,
) -> UserActivation? =
  #| (v) => (v instanceof UserActivation) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to UserActivation (checked with instanceof)
pub extern "js" fn JsValue::as_user_activation(
  self : JsValue,
) -> UserActivation? =
  #| (self) => (self instanceof UserActivation) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to UserActivation (unchecked)
pub extern "js" fn JsValue::to_user_activation(
  self : JsValue,
) -> UserActivation =
  #| (self) => self

///|
pub extern "js" fn UserActivation::get_has_been_active(
  self : UserActivation,
) -> Bool =
  #| (self) => self.hasBeenActive

///|
pub extern "js" fn UserActivation::get_is_active(self : UserActivation) -> Bool =
  #| (self) => self.isActive

///|
/// ToggleEvent interface
pub type ToggleEvent

///|
pub extern "js" fn ToggleEvent::to_js_value(self : ToggleEvent) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ToggleEvent (unchecked)
pub extern "js" fn ToggleEvent::from_js_value(v : JsValue) -> ToggleEvent =
  #| (v) => v

///|
/// Safely cast JsValue to ToggleEvent (checked with instanceof)
pub extern "js" fn ToggleEvent::from_js_value_opt(v : JsValue) -> ToggleEvent? =
  #| (v) => (v instanceof ToggleEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ToggleEvent (checked with instanceof)
pub extern "js" fn JsValue::as_toggle_event(self : JsValue) -> ToggleEvent? =
  #| (self) => (self instanceof ToggleEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ToggleEvent (unchecked)
pub extern "js" fn JsValue::to_toggle_event(self : JsValue) -> ToggleEvent =
  #| (self) => self

///|
pub extern "js" fn ToggleEvent::to_event(self : ToggleEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn ToggleEvent::new(type_ : String) -> ToggleEvent =
  #| (type_) => new ToggleEvent(type_)

///|
extern "js" fn ToggleEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> ToggleEvent =
  #| (type_, event_init_dict) => new ToggleEvent(type_, event_init_dict)

///|
pub fn ToggleEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : ToggleEventInit,
) -> ToggleEvent {
  ToggleEvent::new_with_event_init_dict_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn ToggleEvent::get_old_state(self : ToggleEvent) -> String =
  #| (self) => self.oldState

///|
pub extern "js" fn ToggleEvent::get_new_state(self : ToggleEvent) -> String =
  #| (self) => self.newState

///|
pub extern "js" fn ToggleEvent::get_source(self : ToggleEvent) -> Element? =
  #| (self) => (() => { const v = self.source; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// CommandEvent interface
pub type CommandEvent

///|
pub extern "js" fn CommandEvent::to_js_value(self : CommandEvent) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CommandEvent (unchecked)
pub extern "js" fn CommandEvent::from_js_value(v : JsValue) -> CommandEvent =
  #| (v) => v

///|
/// Safely cast JsValue to CommandEvent (checked with instanceof)
pub extern "js" fn CommandEvent::from_js_value_opt(
  v : JsValue,
) -> CommandEvent? =
  #| (v) => (v instanceof CommandEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CommandEvent (checked with instanceof)
pub extern "js" fn JsValue::as_command_event(self : JsValue) -> CommandEvent? =
  #| (self) => (self instanceof CommandEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CommandEvent (unchecked)
pub extern "js" fn JsValue::to_command_event(self : JsValue) -> CommandEvent =
  #| (self) => self

///|
pub extern "js" fn CommandEvent::to_event(self : CommandEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn CommandEvent::new(type_ : String) -> CommandEvent =
  #| (type_) => new CommandEvent(type_)

///|
extern "js" fn CommandEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> CommandEvent =
  #| (type_, event_init_dict) => new CommandEvent(type_, event_init_dict)

///|
pub fn CommandEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : CommandEventInit,
) -> CommandEvent {
  CommandEvent::new_with_event_init_dict_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn CommandEvent::get_source(self : CommandEvent) -> Element? =
  #| (self) => (() => { const v = self.source; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn CommandEvent::get_command(self : CommandEvent) -> String =
  #| (self) => self.command

///|
/// CloseWatcher interface
pub type CloseWatcher

///|
pub extern "js" fn CloseWatcher::to_js_value(self : CloseWatcher) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CloseWatcher (unchecked)
pub extern "js" fn CloseWatcher::from_js_value(v : JsValue) -> CloseWatcher =
  #| (v) => v

///|
/// Safely cast JsValue to CloseWatcher (checked with instanceof)
pub extern "js" fn CloseWatcher::from_js_value_opt(
  v : JsValue,
) -> CloseWatcher? =
  #| (v) => (v instanceof CloseWatcher) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CloseWatcher (checked with instanceof)
pub extern "js" fn JsValue::as_close_watcher(self : JsValue) -> CloseWatcher? =
  #| (self) => (self instanceof CloseWatcher) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CloseWatcher (unchecked)
pub extern "js" fn JsValue::to_close_watcher(self : JsValue) -> CloseWatcher =
  #| (self) => self

///|
pub extern "js" fn CloseWatcher::to_event_target(
  self : CloseWatcher,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn CloseWatcher::new() -> CloseWatcher =
  #| () => new CloseWatcher()

///|
extern "js" fn CloseWatcher::new_with_options_ffi(
  options : JsValue,
) -> CloseWatcher =
  #| (options) => new CloseWatcher(options)

///|
pub fn CloseWatcher::new_with_options(
  options : CloseWatcherOptions,
) -> CloseWatcher {
  CloseWatcher::new_with_options_ffi(options.to_js())
}

///|
pub extern "js" fn CloseWatcher::request_close(self : CloseWatcher) -> Unit =
  #| (self) => self.requestClose()

///|
pub extern "js" fn CloseWatcher::close(self : CloseWatcher) -> Unit =
  #| (self) => self.close()

///|
pub extern "js" fn CloseWatcher::destroy(self : CloseWatcher) -> Unit =
  #| (self) => self.destroy()

///|
pub extern "js" fn CloseWatcher::get_oncancel(
  self : CloseWatcher,
) -> EventHandler =
  #| (self) => self.oncancel

///|
pub extern "js" fn CloseWatcher::set_oncancel(
  self : CloseWatcher,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncancel = value }

///|
pub extern "js" fn CloseWatcher::get_onclose(
  self : CloseWatcher,
) -> EventHandler =
  #| (self) => self.onclose

///|
pub extern "js" fn CloseWatcher::set_onclose(
  self : CloseWatcher,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onclose = value }

///|
/// DataTransfer interface
pub type DataTransfer

///|
pub extern "js" fn DataTransfer::to_js_value(self : DataTransfer) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to DataTransfer (unchecked)
pub extern "js" fn DataTransfer::from_js_value(v : JsValue) -> DataTransfer =
  #| (v) => v

///|
/// Safely cast JsValue to DataTransfer (checked with instanceof)
pub extern "js" fn DataTransfer::from_js_value_opt(
  v : JsValue,
) -> DataTransfer? =
  #| (v) => (v instanceof DataTransfer) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to DataTransfer (checked with instanceof)
pub extern "js" fn JsValue::as_data_transfer(self : JsValue) -> DataTransfer? =
  #| (self) => (self instanceof DataTransfer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to DataTransfer (unchecked)
pub extern "js" fn JsValue::to_data_transfer(self : JsValue) -> DataTransfer =
  #| (self) => self

///|
pub extern "js" fn DataTransfer::new() -> DataTransfer =
  #| () => new DataTransfer()

///|
pub extern "js" fn DataTransfer::get_drop_effect(self : DataTransfer) -> String =
  #| (self) => self.dropEffect

///|
pub extern "js" fn DataTransfer::set_drop_effect(
  self : DataTransfer,
  value : String,
) -> Unit =
  #| (self, value) => { self.dropEffect = value }

///|
pub extern "js" fn DataTransfer::get_effect_allowed(
  self : DataTransfer,
) -> String =
  #| (self) => self.effectAllowed

///|
pub extern "js" fn DataTransfer::set_effect_allowed(
  self : DataTransfer,
  value : String,
) -> Unit =
  #| (self, value) => { self.effectAllowed = value }

///|
pub extern "js" fn DataTransfer::get_items(
  self : DataTransfer,
) -> DataTransferItemList =
  #| (self) => self.items

///|
pub extern "js" fn DataTransfer::set_drag_image(
  self : DataTransfer,
  image : Element,
  x : Int,
  y : Int,
) -> Unit =
  #| (self, image, x, y) => self.setDragImage(image, x, y)

///|
pub extern "js" fn DataTransfer::get_types(
  self : DataTransfer,
) -> Array[String] =
  #| (self) => self.types

///|
pub extern "js" fn DataTransfer::get_data(
  self : DataTransfer,
  format : String,
) -> String =
  #| (self, format) => self.getData(format)

///|
pub extern "js" fn DataTransfer::set_data(
  self : DataTransfer,
  format : String,
  data : String,
) -> Unit =
  #| (self, format, data) => self.setData(format, data)

///|
pub extern "js" fn DataTransfer::clear_data(self : DataTransfer) -> Unit =
  #| (self) => self.clearData()

///|
pub extern "js" fn DataTransfer::clear_data_with_format(
  self : DataTransfer,
  format : String,
) -> Unit =
  #| (self, format) => self.clearData(format)

///|
pub extern "js" fn DataTransfer::get_files(self : DataTransfer) -> FileList =
  #| (self) => self.files

///|
/// DataTransferItemList interface
pub type DataTransferItemList

///|
pub extern "js" fn DataTransferItemList::to_js_value(
  self : DataTransferItemList,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to DataTransferItemList (unchecked)
pub extern "js" fn DataTransferItemList::from_js_value(
  v : JsValue,
) -> DataTransferItemList =
  #| (v) => v

///|
/// Safely cast JsValue to DataTransferItemList (checked with instanceof)
pub extern "js" fn DataTransferItemList::from_js_value_opt(
  v : JsValue,
) -> DataTransferItemList? =
  #| (v) => (v instanceof DataTransferItemList) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to DataTransferItemList (checked with instanceof)
pub extern "js" fn JsValue::as_data_transfer_item_list(
  self : JsValue,
) -> DataTransferItemList? =
  #| (self) => (self instanceof DataTransferItemList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to DataTransferItemList (unchecked)
pub extern "js" fn JsValue::to_data_transfer_item_list(
  self : JsValue,
) -> DataTransferItemList =
  #| (self) => self

///|
pub extern "js" fn DataTransferItemList::get_length(
  self : DataTransferItemList,
) -> Int =
  #| (self) => self.length

///|
#alias("_[_]")
pub extern "js" fn DataTransferItemList::get(
  self : DataTransferItemList,
  index : Int,
) -> DataTransferItem =
  #| (self, index) => self[index]

///|
pub extern "js" fn DataTransferItemList::add(
  self : DataTransferItemList,
  data : File,
) -> DataTransferItem? =
  #| (self, data) => (() => { const v = self.add(data); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn DataTransferItemList::add_with_data_and_type(
  self : DataTransferItemList,
  data : String,
  type_ : String,
) -> DataTransferItem? =
  #| (self, data, type_) => (() => { const v = self.add(data, type_); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn DataTransferItemList::remove(
  self : DataTransferItemList,
  index : Int,
) -> Unit =
  #| (self, index) => self.remove(index)

///|
pub extern "js" fn DataTransferItemList::clear(
  self : DataTransferItemList,
) -> Unit =
  #| (self) => self.clear()

///|
/// DataTransferItem interface
pub type DataTransferItem

///|
pub extern "js" fn DataTransferItem::to_js_value(
  self : DataTransferItem,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to DataTransferItem (unchecked)
pub extern "js" fn DataTransferItem::from_js_value(
  v : JsValue,
) -> DataTransferItem =
  #| (v) => v

///|
/// Safely cast JsValue to DataTransferItem (checked with instanceof)
pub extern "js" fn DataTransferItem::from_js_value_opt(
  v : JsValue,
) -> DataTransferItem? =
  #| (v) => (v instanceof DataTransferItem) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to DataTransferItem (checked with instanceof)
pub extern "js" fn JsValue::as_data_transfer_item(
  self : JsValue,
) -> DataTransferItem? =
  #| (self) => (self instanceof DataTransferItem) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to DataTransferItem (unchecked)
pub extern "js" fn JsValue::to_data_transfer_item(
  self : JsValue,
) -> DataTransferItem =
  #| (self) => self

///|
pub extern "js" fn DataTransferItem::get_kind(
  self : DataTransferItem,
) -> String =
  #| (self) => self.kind

///|
pub extern "js" fn DataTransferItem::get_type(
  self : DataTransferItem,
) -> String =
  #| (self) => self.type

///|
pub extern "js" fn DataTransferItem::get_as_string(
  self : DataTransferItem,
  callback : FunctionStringCallback?,
) -> Unit =
  #| (self, callback) => self.getAsString((callback.$tag === 1 ? callback._0 : null))

///|
pub extern "js" fn DataTransferItem::get_as_file(
  self : DataTransferItem,
) -> File? =
  #| (self) => (() => { const v = self.getAsFile(); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn DataTransferItem::get_as_file_system_handle(
  self : DataTransferItem,
) -> Promise[FileSystemHandle?] =
  #| (self) => self.getAsFileSystemHandle()

///|
pub extern "js" fn DataTransferItem::webkit_get_as_entry(
  self : DataTransferItem,
) -> FileSystemEntry? =
  #| (self) => (() => { const v = self.webkitGetAsEntry(); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// DragEvent interface
pub type DragEvent

///|
pub extern "js" fn DragEvent::to_js_value(self : DragEvent) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to DragEvent (unchecked)
pub extern "js" fn DragEvent::from_js_value(v : JsValue) -> DragEvent =
  #| (v) => v

///|
/// Safely cast JsValue to DragEvent (checked with instanceof)
pub extern "js" fn DragEvent::from_js_value_opt(v : JsValue) -> DragEvent? =
  #| (v) => (v instanceof DragEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to DragEvent (checked with instanceof)
pub extern "js" fn JsValue::as_drag_event(self : JsValue) -> DragEvent? =
  #| (self) => (self instanceof DragEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to DragEvent (unchecked)
pub extern "js" fn JsValue::to_drag_event(self : JsValue) -> DragEvent =
  #| (self) => self

///|
pub extern "js" fn DragEvent::to_mouse_event(self : DragEvent) -> MouseEvent =
  #| (self) => self

///|
pub extern "js" fn DragEvent::to_ui_event(self : DragEvent) -> UIEvent =
  #| (self) => self

///|
pub extern "js" fn DragEvent::to_event(self : DragEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn DragEvent::new(type_ : String) -> DragEvent =
  #| (type_) => new DragEvent(type_)

///|
extern "js" fn DragEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> DragEvent =
  #| (type_, event_init_dict) => new DragEvent(type_, event_init_dict)

///|
pub fn DragEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : DragEventInit,
) -> DragEvent {
  DragEvent::new_with_event_init_dict_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn DragEvent::get_data_transfer(
  self : DragEvent,
) -> DataTransfer? =
  #| (self) => (() => { const v = self.dataTransfer; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// Origin interface
pub type Origin

///|
pub extern "js" fn Origin::to_js_value(self : Origin) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Origin (unchecked)
pub extern "js" fn Origin::from_js_value(v : JsValue) -> Origin =
  #| (v) => v

///|
/// Safely cast JsValue to Origin (checked with instanceof)
pub extern "js" fn Origin::from_js_value_opt(v : JsValue) -> Origin? =
  #| (v) => (v instanceof Origin) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Origin (checked with instanceof)
pub extern "js" fn JsValue::as_origin(self : JsValue) -> Origin? =
  #| (self) => (self instanceof Origin) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Origin (unchecked)
pub extern "js" fn JsValue::to_origin(self : JsValue) -> Origin =
  #| (self) => self

///|
pub extern "js" fn Origin::new() -> Origin =
  #| () => new Origin()

///|
pub extern "js" fn Origin::from(value : JsValue) -> Origin =
  #| (value) => Origin.from(value)

///|
pub extern "js" fn Origin::get_opaque(self : Origin) -> Bool =
  #| (self) => self.opaque

///|
pub extern "js" fn Origin::is_same_origin(
  self : Origin,
  other : Origin,
) -> Bool =
  #| (self, other) => self.isSameOrigin(other)

///|
pub extern "js" fn Origin::is_same_site(self : Origin, other : Origin) -> Bool =
  #| (self, other) => self.isSameSite(other)

///|
/// Window interface
pub type Window

///|
pub extern "js" fn Window::to_js_value(self : Window) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Window (unchecked)
pub extern "js" fn Window::from_js_value(v : JsValue) -> Window =
  #| (v) => v

///|
/// Safely cast JsValue to Window (checked with instanceof)
pub extern "js" fn Window::from_js_value_opt(v : JsValue) -> Window? =
  #| (v) => (v instanceof Window) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Window (checked with instanceof)
pub extern "js" fn JsValue::as_window(self : JsValue) -> Window? =
  #| (self) => (self instanceof Window) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Window (unchecked)
pub extern "js" fn JsValue::to_window(self : JsValue) -> Window =
  #| (self) => self

///|
pub extern "js" fn Window::to_event_target(self : Window) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn Window::get_window(self : Window) -> Window =
  #| (self) => self.window

///|
pub extern "js" fn Window::get_self(self : Window) -> Window =
  #| (self) => self.self

///|
pub extern "js" fn Window::get_document(self : Window) -> Document =
  #| (self) => self.document

///|
pub extern "js" fn Window::get_name(self : Window) -> String =
  #| (self) => self.name

///|
pub extern "js" fn Window::set_name(self : Window, value : String) -> Unit =
  #| (self, value) => { self.name = value }

///|
pub extern "js" fn Window::get_location(self : Window) -> Location =
  #| (self) => self.location

///|
pub extern "js" fn Window::get_history(self : Window) -> History =
  #| (self) => self.history

///|
pub extern "js" fn Window::get_navigation(self : Window) -> Navigation =
  #| (self) => self.navigation

///|
pub extern "js" fn Window::get_custom_elements(
  self : Window,
) -> CustomElementRegistry =
  #| (self) => self.customElements

///|
pub extern "js" fn Window::get_locationbar(self : Window) -> BarProp =
  #| (self) => self.locationbar

///|
pub extern "js" fn Window::get_menubar(self : Window) -> BarProp =
  #| (self) => self.menubar

///|
pub extern "js" fn Window::get_personalbar(self : Window) -> BarProp =
  #| (self) => self.personalbar

///|
pub extern "js" fn Window::get_scrollbars(self : Window) -> BarProp =
  #| (self) => self.scrollbars

///|
pub extern "js" fn Window::get_statusbar(self : Window) -> BarProp =
  #| (self) => self.statusbar

///|
pub extern "js" fn Window::get_toolbar(self : Window) -> BarProp =
  #| (self) => self.toolbar

///|
pub extern "js" fn Window::get_status(self : Window) -> String =
  #| (self) => self.status

///|
pub extern "js" fn Window::set_status(self : Window, value : String) -> Unit =
  #| (self, value) => { self.status = value }

///|
pub extern "js" fn Window::close(self : Window) -> Unit =
  #| (self) => self.close()

///|
pub extern "js" fn Window::get_closed(self : Window) -> Bool =
  #| (self) => self.closed

///|
pub extern "js" fn Window::stop(self : Window) -> Unit =
  #| (self) => self.stop()

///|
pub extern "js" fn Window::focus(self : Window) -> Unit =
  #| (self) => self.focus()

///|
pub extern "js" fn Window::blur(self : Window) -> Unit =
  #| (self) => self.blur()

///|
pub extern "js" fn Window::get_frames(self : Window) -> Window =
  #| (self) => self.frames

///|
pub extern "js" fn Window::get_length(self : Window) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn Window::get_top(self : Window) -> Window? =
  #| (self) => (() => { const v = self.top; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Window::get_opener(self : Window) -> JsValue =
  #| (self) => self.opener

///|
pub extern "js" fn Window::set_opener(self : Window, value : JsValue) -> Unit =
  #| (self, value) => { self.opener = value }

///|
pub extern "js" fn Window::get_parent(self : Window) -> Window? =
  #| (self) => (() => { const v = self.parent; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Window::get_frame_element(self : Window) -> Element? =
  #| (self) => (() => { const v = self.frameElement; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Window::open(self : Window) -> Window? =
  #| (self) => (() => { const v = self.open(); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Window::open_with_features(
  self : Window,
  url : String,
  target : String,
  features : String,
) -> Window? =
  #| (self, url, target, features) => (() => { const v = self.open(url, target, features); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Window::get_named(self : Window, name : String) -> JsValue =
  #| (self, name) => self[name]

///|
pub extern "js" fn Window::get_navigator(self : Window) -> Navigator =
  #| (self) => self.navigator

///|
pub extern "js" fn Window::get_client_information(self : Window) -> Navigator =
  #| (self) => self.clientInformation

///|
pub extern "js" fn Window::get_origin_agent_cluster(self : Window) -> Bool =
  #| (self) => self.originAgentCluster

///|
pub extern "js" fn Window::alert(self : Window) -> Unit =
  #| (self) => self.alert()

///|
pub extern "js" fn Window::alert_with_message(
  self : Window,
  message : String,
) -> Unit =
  #| (self, message) => self.alert(message)

///|
pub extern "js" fn Window::confirm(self : Window) -> Bool =
  #| (self) => self.confirm()

///|
pub extern "js" fn Window::confirm_with_message(
  self : Window,
  message : String,
) -> Bool =
  #| (self, message) => self.confirm(message)

///|
pub extern "js" fn Window::prompt(self : Window) -> String? =
  #| (self) => (self.prompt()) ?? undefined

///|
pub extern "js" fn Window::prompt_with_default(
  self : Window,
  message : String,
  default : String,
) -> String? =
  #| (self, message, default) => (self.prompt(message, default)) ?? undefined

///|
pub extern "js" fn Window::print(self : Window) -> Unit =
  #| (self) => self.print()

///|
pub extern "js" fn Window::post_message(
  self : Window,
  message : JsValue,
) -> Unit =
  #| (self, message) => self.postMessage(message)

///|
extern "js" fn Window::post_message_with_options_ffi(
  self : Window,
  message : JsValue,
  options : JsValue,
) -> Unit =
  #| (self, message, options) => self.postMessage(message, options)

///|
pub fn Window::post_message_with_options(
  self : Window,
  message : JsValue,
  options : WindowPostMessageOptions,
) -> Unit {
  Window::post_message_with_options_ffi(self, message, options.to_js())
}

///|
pub extern "js" fn Window::post_message_with_message_and_target_origin(
  self : Window,
  message : JsValue,
  target_origin : String,
) -> Unit =
  #| (self, message, target_origin) => self.postMessage(message, target_origin)

///|
pub extern "js" fn Window::post_message_with_message_and_target_origin_and_transfer(
  self : Window,
  message : JsValue,
  target_origin : String,
  transfer : Array[JsValue],
) -> Unit =
  #| (self, message, target_origin, transfer) => self.postMessage(message, target_origin, transfer)

///|
pub extern "js" fn Window::show_open_file_picker(
  self : Window,
) -> Promise[Array[FileSystemFileHandle]] =
  #| (self) => self.showOpenFilePicker()

///|
extern "js" fn Window::show_open_file_picker_with_options_ffi(
  self : Window,
  options : JsValue,
) -> Promise[Array[FileSystemFileHandle]] =
  #| (self, options) => self.showOpenFilePicker(options)

///|
pub fn Window::show_open_file_picker_with_options(
  self : Window,
  options : OpenFilePickerOptions,
) -> Promise[Array[FileSystemFileHandle]] {
  Window::show_open_file_picker_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn Window::show_save_file_picker(
  self : Window,
) -> Promise[FileSystemFileHandle] =
  #| (self) => self.showSaveFilePicker()

///|
extern "js" fn Window::show_save_file_picker_with_options_ffi(
  self : Window,
  options : JsValue,
) -> Promise[FileSystemFileHandle] =
  #| (self, options) => self.showSaveFilePicker(options)

///|
pub fn Window::show_save_file_picker_with_options(
  self : Window,
  options : SaveFilePickerOptions,
) -> Promise[FileSystemFileHandle] {
  Window::show_save_file_picker_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn Window::show_directory_picker(
  self : Window,
) -> Promise[FileSystemDirectoryHandle] =
  #| (self) => self.showDirectoryPicker()

///|
extern "js" fn Window::show_directory_picker_with_options_ffi(
  self : Window,
  options : JsValue,
) -> Promise[FileSystemDirectoryHandle] =
  #| (self, options) => self.showDirectoryPicker(options)

///|
pub fn Window::show_directory_picker_with_options(
  self : Window,
  options : DirectoryPickerOptions,
) -> Promise[FileSystemDirectoryHandle] {
  Window::show_directory_picker_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn Window::match_media(
  self : Window,
  query : String,
) -> MediaQueryList =
  #| (self, query) => self.matchMedia(query)

///|
pub extern "js" fn Window::get_screen(self : Window) -> Screen =
  #| (self) => self.screen

///|
pub extern "js" fn Window::get_visual_viewport(
  self : Window,
) -> VisualViewport? =
  #| (self) => (() => { const v = self.visualViewport; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Window::move_to(self : Window, x : Int, y : Int) -> Unit =
  #| (self, x, y) => self.moveTo(x, y)

///|
pub extern "js" fn Window::move_by(self : Window, x : Int, y : Int) -> Unit =
  #| (self, x, y) => self.moveBy(x, y)

///|
pub extern "js" fn Window::resize_to(
  self : Window,
  width : Int,
  height : Int,
) -> Unit =
  #| (self, width, height) => self.resizeTo(width, height)

///|
pub extern "js" fn Window::resize_by(self : Window, x : Int, y : Int) -> Unit =
  #| (self, x, y) => self.resizeBy(x, y)

///|
pub extern "js" fn Window::get_inner_width(self : Window) -> Int =
  #| (self) => self.innerWidth

///|
pub extern "js" fn Window::get_inner_height(self : Window) -> Int =
  #| (self) => self.innerHeight

///|
pub extern "js" fn Window::get_scroll_x(self : Window) -> Double =
  #| (self) => self.scrollX

///|
pub extern "js" fn Window::get_page_x_offset(self : Window) -> Double =
  #| (self) => self.pageXOffset

///|
pub extern "js" fn Window::get_scroll_y(self : Window) -> Double =
  #| (self) => self.scrollY

///|
pub extern "js" fn Window::get_page_y_offset(self : Window) -> Double =
  #| (self) => self.pageYOffset

///|
pub extern "js" fn Window::scroll(self : Window) -> Promise[Unit] =
  #| (self) => self.scroll()

///|
extern "js" fn Window::scroll_with_options_ffi(
  self : Window,
  options : JsValue,
) -> Promise[Unit] =
  #| (self, options) => self.scroll(options)

///|
pub fn Window::scroll_with_options(
  self : Window,
  options : ScrollToOptions,
) -> Promise[Unit] {
  Window::scroll_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn Window::scroll_with_x_and_y(
  self : Window,
  x : Double,
  y : Double,
) -> Promise[Unit] =
  #| (self, x, y) => self.scroll(x, y)

///|
pub extern "js" fn Window::scroll_to(self : Window) -> Promise[Unit] =
  #| (self) => self.scrollTo()

///|
extern "js" fn Window::scroll_to_with_options_ffi(
  self : Window,
  options : JsValue,
) -> Promise[Unit] =
  #| (self, options) => self.scrollTo(options)

///|
pub fn Window::scroll_to_with_options(
  self : Window,
  options : ScrollToOptions,
) -> Promise[Unit] {
  Window::scroll_to_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn Window::scroll_to_with_x_and_y(
  self : Window,
  x : Double,
  y : Double,
) -> Promise[Unit] =
  #| (self, x, y) => self.scrollTo(x, y)

///|
pub extern "js" fn Window::scroll_by(self : Window) -> Promise[Unit] =
  #| (self) => self.scrollBy()

///|
extern "js" fn Window::scroll_by_with_options_ffi(
  self : Window,
  options : JsValue,
) -> Promise[Unit] =
  #| (self, options) => self.scrollBy(options)

///|
pub fn Window::scroll_by_with_options(
  self : Window,
  options : ScrollToOptions,
) -> Promise[Unit] {
  Window::scroll_by_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn Window::scroll_by_with_x_and_y(
  self : Window,
  x : Double,
  y : Double,
) -> Promise[Unit] =
  #| (self, x, y) => self.scrollBy(x, y)

///|
pub extern "js" fn Window::get_screen_x(self : Window) -> Int =
  #| (self) => self.screenX

///|
pub extern "js" fn Window::get_screen_left(self : Window) -> Int =
  #| (self) => self.screenLeft

///|
pub extern "js" fn Window::get_screen_y(self : Window) -> Int =
  #| (self) => self.screenY

///|
pub extern "js" fn Window::get_screen_top(self : Window) -> Int =
  #| (self) => self.screenTop

///|
pub extern "js" fn Window::get_outer_width(self : Window) -> Int =
  #| (self) => self.outerWidth

///|
pub extern "js" fn Window::get_outer_height(self : Window) -> Int =
  #| (self) => self.outerHeight

///|
pub extern "js" fn Window::get_device_pixel_ratio(self : Window) -> Double =
  #| (self) => self.devicePixelRatio

///|
pub extern "js" fn Window::capture_events(self : Window) -> Unit =
  #| (self) => self.captureEvents()

///|
pub extern "js" fn Window::release_events(self : Window) -> Unit =
  #| (self) => self.releaseEvents()

///|
pub extern "js" fn Window::get_external(self : Window) -> External =
  #| (self) => self.external

///|
pub extern "js" fn Window::get_portal_host(self : Window) -> PortalHost? =
  #| (self) => (() => { const v = self.portalHost; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Window::get_viewport(self : Window) -> Viewport =
  #| (self) => self.viewport

///|
pub extern "js" fn Window::get_credentialless(self : Window) -> Bool =
  #| (self) => self.credentialless

///|
pub extern "js" fn Window::get_onappinstalled(self : Window) -> EventHandler =
  #| (self) => self.onappinstalled

///|
pub extern "js" fn Window::set_onappinstalled(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onappinstalled = value }

///|
pub extern "js" fn Window::get_onbeforeinstallprompt(
  self : Window,
) -> EventHandler =
  #| (self) => self.onbeforeinstallprompt

///|
pub extern "js" fn Window::set_onbeforeinstallprompt(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbeforeinstallprompt = value }

///|
pub extern "js" fn Window::navigate(
  self : Window,
  dir : SpatialNavigationDirection,
) -> Unit =
  #| (self, dir) => self.navigate(['up', 'down', 'left', 'right'][dir])

///|
pub extern "js" fn Window::get_event(self : Window) -> EventOrVoid =
  #| (self) => self.event

///|
pub extern "js" fn Window::get_computed_style(
  self : Window,
  elt : Element,
) -> CSSStyleProperties =
  #| (self, elt) => self.getComputedStyle(elt)

///|
pub extern "js" fn Window::get_computed_style_with_pseudo_elt(
  self : Window,
  elt : Element,
  pseudo_elt : String?,
) -> CSSStyleProperties =
  #| (self, elt, pseudo_elt) => self.getComputedStyle(elt, pseudo_elt)

///|
pub extern "js" fn Window::query_local_fonts(
  self : Window,
) -> Promise[Array[FontData]] =
  #| (self) => self.queryLocalFonts()

///|
extern "js" fn Window::query_local_fonts_with_options_ffi(
  self : Window,
  options : JsValue,
) -> Promise[Array[FontData]] =
  #| (self, options) => self.queryLocalFonts(options)

///|
pub fn Window::query_local_fonts_with_options(
  self : Window,
  options : QueryOptions,
) -> Promise[Array[FontData]] {
  Window::query_local_fonts_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn Window::get_speech_synthesis(
  self : Window,
) -> SpeechSynthesis =
  #| (self) => self.speechSynthesis

///|
pub extern "js" fn Window::get_digital_goods_service(
  self : Window,
  service_provider : String,
) -> Promise[DigitalGoodsService] =
  #| (self, service_provider) => self.getDigitalGoodsService(service_provider)

///|
pub extern "js" fn Window::get_shared_storage(self : Window) -> SharedStorage? =
  #| (self) => (() => { const v = self.sharedStorage; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Window::get_screen_details(
  self : Window,
) -> Promise[ScreenDetails] =
  #| (self) => self.getScreenDetails()

///|
pub extern "js" fn Window::get_cookie_store(self : Window) -> CookieStore =
  #| (self) => self.cookieStore

///|
pub extern "js" fn Window::get_ondeviceorientation(
  self : Window,
) -> EventHandler =
  #| (self) => self.ondeviceorientation

///|
pub extern "js" fn Window::set_ondeviceorientation(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondeviceorientation = value }

///|
pub extern "js" fn Window::get_ondeviceorientationabsolute(
  self : Window,
) -> EventHandler =
  #| (self) => self.ondeviceorientationabsolute

///|
pub extern "js" fn Window::set_ondeviceorientationabsolute(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondeviceorientationabsolute = value }

///|
pub extern "js" fn Window::get_ondevicemotion(self : Window) -> EventHandler =
  #| (self) => self.ondevicemotion

///|
pub extern "js" fn Window::set_ondevicemotion(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondevicemotion = value }

///|
pub extern "js" fn Window::get_fence(self : Window) -> Fence? =
  #| (self) => (() => { const v = self.fence; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Window::get_orientation(self : Window) -> Int =
  #| (self) => self.orientation

///|
pub extern "js" fn Window::get_onorientationchange(
  self : Window,
) -> EventHandler =
  #| (self) => self.onorientationchange

///|
pub extern "js" fn Window::set_onorientationchange(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onorientationchange = value }

///|
pub extern "js" fn Window::get_launch_queue(self : Window) -> LaunchQueue =
  #| (self) => self.launchQueue

///|
pub extern "js" fn Window::request_idle_callback(
  self : Window,
  callback : IdleRequestCallback,
) -> Int =
  #| (self, callback) => self.requestIdleCallback(callback)

///|
extern "js" fn Window::request_idle_callback_with_options_ffi(
  self : Window,
  callback : IdleRequestCallback,
  options : JsValue,
) -> Int =
  #| (self, callback, options) => self.requestIdleCallback(callback, options)

///|
pub fn Window::request_idle_callback_with_options(
  self : Window,
  callback : IdleRequestCallback,
  options : IdleRequestOptions,
) -> Int {
  Window::request_idle_callback_with_options_ffi(
    self,
    callback,
    options.to_js(),
  )
}

///|
pub extern "js" fn Window::cancel_idle_callback(
  self : Window,
  handle : Int,
) -> Unit =
  #| (self, handle) => self.cancelIdleCallback(handle)

///|
pub extern "js" fn Window::get_selection(self : Window) -> Selection? =
  #| (self) => (() => { const v = self.getSelection(); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Window::get_document_picture_in_picture(
  self : Window,
) -> DocumentPictureInPicture =
  #| (self) => self.documentPictureInPicture

///|
pub extern "js" fn Window::fetch_later(
  self : Window,
  input : RequestInfo,
) -> FetchLaterResult =
  #| (self, input) => self.fetchLater(input)

///|
extern "js" fn Window::fetch_later_with_init_ffi(
  self : Window,
  input : RequestInfo,
  init_ : JsValue,
) -> FetchLaterResult =
  #| (self, input, init_) => self.fetchLater(input, init_)

///|
pub fn Window::fetch_later_with_init(
  self : Window,
  input : RequestInfo,
  init_ : DeferredRequestInit,
) -> FetchLaterResult {
  Window::fetch_later_with_init_ffi(self, input, init_.to_js())
}

///|
pub extern "js" fn Window::get_push_manager(self : Window) -> PushManager =
  #| (self) => self.pushManager

///|
pub extern "js" fn Window::get_onabort(self : Window) -> EventHandler =
  #| (self) => self.onabort

///|
pub extern "js" fn Window::set_onabort(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onabort = value }

///|
pub extern "js" fn Window::get_onauxclick(self : Window) -> EventHandler =
  #| (self) => self.onauxclick

///|
pub extern "js" fn Window::set_onauxclick(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onauxclick = value }

///|
pub extern "js" fn Window::get_onbeforeinput(self : Window) -> EventHandler =
  #| (self) => self.onbeforeinput

///|
pub extern "js" fn Window::set_onbeforeinput(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbeforeinput = value }

///|
pub extern "js" fn Window::get_onbeforematch(self : Window) -> EventHandler =
  #| (self) => self.onbeforematch

///|
pub extern "js" fn Window::set_onbeforematch(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbeforematch = value }

///|
pub extern "js" fn Window::get_onbeforetoggle(self : Window) -> EventHandler =
  #| (self) => self.onbeforetoggle

///|
pub extern "js" fn Window::set_onbeforetoggle(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbeforetoggle = value }

///|
pub extern "js" fn Window::get_onblur(self : Window) -> EventHandler =
  #| (self) => self.onblur

///|
pub extern "js" fn Window::set_onblur(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onblur = value }

///|
pub extern "js" fn Window::get_oncancel(self : Window) -> EventHandler =
  #| (self) => self.oncancel

///|
pub extern "js" fn Window::set_oncancel(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncancel = value }

///|
pub extern "js" fn Window::get_oncanplay(self : Window) -> EventHandler =
  #| (self) => self.oncanplay

///|
pub extern "js" fn Window::set_oncanplay(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncanplay = value }

///|
pub extern "js" fn Window::get_oncanplaythrough(self : Window) -> EventHandler =
  #| (self) => self.oncanplaythrough

///|
pub extern "js" fn Window::set_oncanplaythrough(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncanplaythrough = value }

///|
pub extern "js" fn Window::get_onchange(self : Window) -> EventHandler =
  #| (self) => self.onchange

///|
pub extern "js" fn Window::set_onchange(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onchange = value }

///|
pub extern "js" fn Window::get_onclick(self : Window) -> EventHandler =
  #| (self) => self.onclick

///|
pub extern "js" fn Window::set_onclick(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onclick = value }

///|
pub extern "js" fn Window::get_onclose(self : Window) -> EventHandler =
  #| (self) => self.onclose

///|
pub extern "js" fn Window::set_onclose(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onclose = value }

///|
pub extern "js" fn Window::get_oncommand(self : Window) -> EventHandler =
  #| (self) => self.oncommand

///|
pub extern "js" fn Window::set_oncommand(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncommand = value }

///|
pub extern "js" fn Window::get_oncontextlost(self : Window) -> EventHandler =
  #| (self) => self.oncontextlost

///|
pub extern "js" fn Window::set_oncontextlost(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncontextlost = value }

///|
pub extern "js" fn Window::get_oncontextmenu(self : Window) -> EventHandler =
  #| (self) => self.oncontextmenu

///|
pub extern "js" fn Window::set_oncontextmenu(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncontextmenu = value }

///|
pub extern "js" fn Window::get_oncontextrestored(self : Window) -> EventHandler =
  #| (self) => self.oncontextrestored

///|
pub extern "js" fn Window::set_oncontextrestored(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncontextrestored = value }

///|
pub extern "js" fn Window::get_oncopy(self : Window) -> EventHandler =
  #| (self) => self.oncopy

///|
pub extern "js" fn Window::set_oncopy(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncopy = value }

///|
pub extern "js" fn Window::get_oncuechange(self : Window) -> EventHandler =
  #| (self) => self.oncuechange

///|
pub extern "js" fn Window::set_oncuechange(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncuechange = value }

///|
pub extern "js" fn Window::get_oncut(self : Window) -> EventHandler =
  #| (self) => self.oncut

///|
pub extern "js" fn Window::set_oncut(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncut = value }

///|
pub extern "js" fn Window::get_ondblclick(self : Window) -> EventHandler =
  #| (self) => self.ondblclick

///|
pub extern "js" fn Window::set_ondblclick(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondblclick = value }

///|
pub extern "js" fn Window::get_ondrag(self : Window) -> EventHandler =
  #| (self) => self.ondrag

///|
pub extern "js" fn Window::set_ondrag(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondrag = value }

///|
pub extern "js" fn Window::get_ondragend(self : Window) -> EventHandler =
  #| (self) => self.ondragend

///|
pub extern "js" fn Window::set_ondragend(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondragend = value }

///|
pub extern "js" fn Window::get_ondragenter(self : Window) -> EventHandler =
  #| (self) => self.ondragenter

///|
pub extern "js" fn Window::set_ondragenter(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondragenter = value }

///|
pub extern "js" fn Window::get_ondragleave(self : Window) -> EventHandler =
  #| (self) => self.ondragleave

///|
pub extern "js" fn Window::set_ondragleave(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondragleave = value }

///|
pub extern "js" fn Window::get_ondragover(self : Window) -> EventHandler =
  #| (self) => self.ondragover

///|
pub extern "js" fn Window::set_ondragover(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondragover = value }

///|
pub extern "js" fn Window::get_ondragstart(self : Window) -> EventHandler =
  #| (self) => self.ondragstart

///|
pub extern "js" fn Window::set_ondragstart(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondragstart = value }

///|
pub extern "js" fn Window::get_ondrop(self : Window) -> EventHandler =
  #| (self) => self.ondrop

///|
pub extern "js" fn Window::set_ondrop(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondrop = value }

///|
pub extern "js" fn Window::get_ondurationchange(self : Window) -> EventHandler =
  #| (self) => self.ondurationchange

///|
pub extern "js" fn Window::set_ondurationchange(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondurationchange = value }

///|
pub extern "js" fn Window::get_onemptied(self : Window) -> EventHandler =
  #| (self) => self.onemptied

///|
pub extern "js" fn Window::set_onemptied(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onemptied = value }

///|
pub extern "js" fn Window::get_onended(self : Window) -> EventHandler =
  #| (self) => self.onended

///|
pub extern "js" fn Window::set_onended(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onended = value }

///|
pub extern "js" fn Window::get_onerror(self : Window) -> OnErrorEventHandler =
  #| (self) => self.onerror

///|
pub extern "js" fn Window::set_onerror(
  self : Window,
  value : OnErrorEventHandler,
) -> Unit =
  #| (self, value) => { self.onerror = value }

///|
pub extern "js" fn Window::get_onfocus(self : Window) -> EventHandler =
  #| (self) => self.onfocus

///|
pub extern "js" fn Window::set_onfocus(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onfocus = value }

///|
pub extern "js" fn Window::get_onformdata(self : Window) -> EventHandler =
  #| (self) => self.onformdata

///|
pub extern "js" fn Window::set_onformdata(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onformdata = value }

///|
pub extern "js" fn Window::get_oninput(self : Window) -> EventHandler =
  #| (self) => self.oninput

///|
pub extern "js" fn Window::set_oninput(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oninput = value }

///|
pub extern "js" fn Window::get_oninvalid(self : Window) -> EventHandler =
  #| (self) => self.oninvalid

///|
pub extern "js" fn Window::set_oninvalid(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oninvalid = value }

///|
pub extern "js" fn Window::get_onkeydown(self : Window) -> EventHandler =
  #| (self) => self.onkeydown

///|
pub extern "js" fn Window::set_onkeydown(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onkeydown = value }

///|
pub extern "js" fn Window::get_onkeypress(self : Window) -> EventHandler =
  #| (self) => self.onkeypress

///|
pub extern "js" fn Window::set_onkeypress(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onkeypress = value }

///|
pub extern "js" fn Window::get_onkeyup(self : Window) -> EventHandler =
  #| (self) => self.onkeyup

///|
pub extern "js" fn Window::set_onkeyup(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onkeyup = value }

///|
pub extern "js" fn Window::get_onload(self : Window) -> EventHandler =
  #| (self) => self.onload

///|
pub extern "js" fn Window::set_onload(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onload = value }

///|
pub extern "js" fn Window::get_onloadeddata(self : Window) -> EventHandler =
  #| (self) => self.onloadeddata

///|
pub extern "js" fn Window::set_onloadeddata(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onloadeddata = value }

///|
pub extern "js" fn Window::get_onloadedmetadata(self : Window) -> EventHandler =
  #| (self) => self.onloadedmetadata

///|
pub extern "js" fn Window::set_onloadedmetadata(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onloadedmetadata = value }

///|
pub extern "js" fn Window::get_onloadstart(self : Window) -> EventHandler =
  #| (self) => self.onloadstart

///|
pub extern "js" fn Window::set_onloadstart(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onloadstart = value }

///|
pub extern "js" fn Window::get_onmousedown(self : Window) -> EventHandler =
  #| (self) => self.onmousedown

///|
pub extern "js" fn Window::set_onmousedown(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmousedown = value }

///|
pub extern "js" fn Window::get_onmouseenter(self : Window) -> EventHandler =
  #| (self) => self.onmouseenter

///|
pub extern "js" fn Window::set_onmouseenter(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmouseenter = value }

///|
pub extern "js" fn Window::get_onmouseleave(self : Window) -> EventHandler =
  #| (self) => self.onmouseleave

///|
pub extern "js" fn Window::set_onmouseleave(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmouseleave = value }

///|
pub extern "js" fn Window::get_onmousemove(self : Window) -> EventHandler =
  #| (self) => self.onmousemove

///|
pub extern "js" fn Window::set_onmousemove(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmousemove = value }

///|
pub extern "js" fn Window::get_onmouseout(self : Window) -> EventHandler =
  #| (self) => self.onmouseout

///|
pub extern "js" fn Window::set_onmouseout(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmouseout = value }

///|
pub extern "js" fn Window::get_onmouseover(self : Window) -> EventHandler =
  #| (self) => self.onmouseover

///|
pub extern "js" fn Window::set_onmouseover(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmouseover = value }

///|
pub extern "js" fn Window::get_onmouseup(self : Window) -> EventHandler =
  #| (self) => self.onmouseup

///|
pub extern "js" fn Window::set_onmouseup(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmouseup = value }

///|
pub extern "js" fn Window::get_onpaste(self : Window) -> EventHandler =
  #| (self) => self.onpaste

///|
pub extern "js" fn Window::set_onpaste(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpaste = value }

///|
pub extern "js" fn Window::get_onpause(self : Window) -> EventHandler =
  #| (self) => self.onpause

///|
pub extern "js" fn Window::set_onpause(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpause = value }

///|
pub extern "js" fn Window::get_onplay(self : Window) -> EventHandler =
  #| (self) => self.onplay

///|
pub extern "js" fn Window::set_onplay(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onplay = value }

///|
pub extern "js" fn Window::get_onplaying(self : Window) -> EventHandler =
  #| (self) => self.onplaying

///|
pub extern "js" fn Window::set_onplaying(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onplaying = value }

///|
pub extern "js" fn Window::get_onprogress(self : Window) -> EventHandler =
  #| (self) => self.onprogress

///|
pub extern "js" fn Window::set_onprogress(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onprogress = value }

///|
pub extern "js" fn Window::get_onratechange(self : Window) -> EventHandler =
  #| (self) => self.onratechange

///|
pub extern "js" fn Window::set_onratechange(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onratechange = value }

///|
pub extern "js" fn Window::get_onreset(self : Window) -> EventHandler =
  #| (self) => self.onreset

///|
pub extern "js" fn Window::set_onreset(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onreset = value }

///|
pub extern "js" fn Window::get_onresize(self : Window) -> EventHandler =
  #| (self) => self.onresize

///|
pub extern "js" fn Window::set_onresize(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onresize = value }

///|
pub extern "js" fn Window::get_onscroll(self : Window) -> EventHandler =
  #| (self) => self.onscroll

///|
pub extern "js" fn Window::set_onscroll(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onscroll = value }

///|
pub extern "js" fn Window::get_onscrollend(self : Window) -> EventHandler =
  #| (self) => self.onscrollend

///|
pub extern "js" fn Window::set_onscrollend(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onscrollend = value }

///|
pub extern "js" fn Window::get_onsecuritypolicyviolation(
  self : Window,
) -> EventHandler =
  #| (self) => self.onsecuritypolicyviolation

///|
pub extern "js" fn Window::set_onsecuritypolicyviolation(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsecuritypolicyviolation = value }

///|
pub extern "js" fn Window::get_onseeked(self : Window) -> EventHandler =
  #| (self) => self.onseeked

///|
pub extern "js" fn Window::set_onseeked(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onseeked = value }

///|
pub extern "js" fn Window::get_onseeking(self : Window) -> EventHandler =
  #| (self) => self.onseeking

///|
pub extern "js" fn Window::set_onseeking(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onseeking = value }

///|
pub extern "js" fn Window::get_onselect(self : Window) -> EventHandler =
  #| (self) => self.onselect

///|
pub extern "js" fn Window::set_onselect(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onselect = value }

///|
pub extern "js" fn Window::get_onslotchange(self : Window) -> EventHandler =
  #| (self) => self.onslotchange

///|
pub extern "js" fn Window::set_onslotchange(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onslotchange = value }

///|
pub extern "js" fn Window::get_onstalled(self : Window) -> EventHandler =
  #| (self) => self.onstalled

///|
pub extern "js" fn Window::set_onstalled(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onstalled = value }

///|
pub extern "js" fn Window::get_onsubmit(self : Window) -> EventHandler =
  #| (self) => self.onsubmit

///|
pub extern "js" fn Window::set_onsubmit(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsubmit = value }

///|
pub extern "js" fn Window::get_onsuspend(self : Window) -> EventHandler =
  #| (self) => self.onsuspend

///|
pub extern "js" fn Window::set_onsuspend(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsuspend = value }

///|
pub extern "js" fn Window::get_ontimeupdate(self : Window) -> EventHandler =
  #| (self) => self.ontimeupdate

///|
pub extern "js" fn Window::set_ontimeupdate(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontimeupdate = value }

///|
pub extern "js" fn Window::get_ontoggle(self : Window) -> EventHandler =
  #| (self) => self.ontoggle

///|
pub extern "js" fn Window::set_ontoggle(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontoggle = value }

///|
pub extern "js" fn Window::get_onvolumechange(self : Window) -> EventHandler =
  #| (self) => self.onvolumechange

///|
pub extern "js" fn Window::set_onvolumechange(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onvolumechange = value }

///|
pub extern "js" fn Window::get_onwaiting(self : Window) -> EventHandler =
  #| (self) => self.onwaiting

///|
pub extern "js" fn Window::set_onwaiting(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onwaiting = value }

///|
pub extern "js" fn Window::get_onwebkitanimationend(
  self : Window,
) -> EventHandler =
  #| (self) => self.onwebkitanimationend

///|
pub extern "js" fn Window::set_onwebkitanimationend(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onwebkitanimationend = value }

///|
pub extern "js" fn Window::get_onwebkitanimationiteration(
  self : Window,
) -> EventHandler =
  #| (self) => self.onwebkitanimationiteration

///|
pub extern "js" fn Window::set_onwebkitanimationiteration(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onwebkitanimationiteration = value }

///|
pub extern "js" fn Window::get_onwebkitanimationstart(
  self : Window,
) -> EventHandler =
  #| (self) => self.onwebkitanimationstart

///|
pub extern "js" fn Window::set_onwebkitanimationstart(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onwebkitanimationstart = value }

///|
pub extern "js" fn Window::get_onwebkittransitionend(
  self : Window,
) -> EventHandler =
  #| (self) => self.onwebkittransitionend

///|
pub extern "js" fn Window::set_onwebkittransitionend(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onwebkittransitionend = value }

///|
pub extern "js" fn Window::get_onwheel(self : Window) -> EventHandler =
  #| (self) => self.onwheel

///|
pub extern "js" fn Window::set_onwheel(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onwheel = value }

///|
pub extern "js" fn Window::get_ontouchstart(self : Window) -> EventHandler =
  #| (self) => self.ontouchstart

///|
pub extern "js" fn Window::set_ontouchstart(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontouchstart = value }

///|
pub extern "js" fn Window::get_ontouchend(self : Window) -> EventHandler =
  #| (self) => self.ontouchend

///|
pub extern "js" fn Window::set_ontouchend(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontouchend = value }

///|
pub extern "js" fn Window::get_ontouchmove(self : Window) -> EventHandler =
  #| (self) => self.ontouchmove

///|
pub extern "js" fn Window::set_ontouchmove(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontouchmove = value }

///|
pub extern "js" fn Window::get_ontouchcancel(self : Window) -> EventHandler =
  #| (self) => self.ontouchcancel

///|
pub extern "js" fn Window::set_ontouchcancel(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontouchcancel = value }

///|
pub extern "js" fn Window::get_ontransitionrun(self : Window) -> EventHandler =
  #| (self) => self.ontransitionrun

///|
pub extern "js" fn Window::set_ontransitionrun(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontransitionrun = value }

///|
pub extern "js" fn Window::get_ontransitionstart(self : Window) -> EventHandler =
  #| (self) => self.ontransitionstart

///|
pub extern "js" fn Window::set_ontransitionstart(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontransitionstart = value }

///|
pub extern "js" fn Window::get_ontransitionend(self : Window) -> EventHandler =
  #| (self) => self.ontransitionend

///|
pub extern "js" fn Window::set_ontransitionend(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontransitionend = value }

///|
pub extern "js" fn Window::get_ontransitioncancel(
  self : Window,
) -> EventHandler =
  #| (self) => self.ontransitioncancel

///|
pub extern "js" fn Window::set_ontransitioncancel(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ontransitioncancel = value }

///|
pub extern "js" fn Window::get_onsnapchanged(self : Window) -> EventHandler =
  #| (self) => self.onsnapchanged

///|
pub extern "js" fn Window::set_onsnapchanged(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsnapchanged = value }

///|
pub extern "js" fn Window::get_onsnapchanging(self : Window) -> EventHandler =
  #| (self) => self.onsnapchanging

///|
pub extern "js" fn Window::set_onsnapchanging(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsnapchanging = value }

///|
pub extern "js" fn Window::get_onanimationstart(self : Window) -> EventHandler =
  #| (self) => self.onanimationstart

///|
pub extern "js" fn Window::set_onanimationstart(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onanimationstart = value }

///|
pub extern "js" fn Window::get_onanimationiteration(
  self : Window,
) -> EventHandler =
  #| (self) => self.onanimationiteration

///|
pub extern "js" fn Window::set_onanimationiteration(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onanimationiteration = value }

///|
pub extern "js" fn Window::get_onanimationend(self : Window) -> EventHandler =
  #| (self) => self.onanimationend

///|
pub extern "js" fn Window::set_onanimationend(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onanimationend = value }

///|
pub extern "js" fn Window::get_onanimationcancel(self : Window) -> EventHandler =
  #| (self) => self.onanimationcancel

///|
pub extern "js" fn Window::set_onanimationcancel(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onanimationcancel = value }

///|
pub extern "js" fn Window::get_onfencedtreeclick(self : Window) -> EventHandler =
  #| (self) => self.onfencedtreeclick

///|
pub extern "js" fn Window::set_onfencedtreeclick(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onfencedtreeclick = value }

///|
pub extern "js" fn Window::get_onpointerover(self : Window) -> EventHandler =
  #| (self) => self.onpointerover

///|
pub extern "js" fn Window::set_onpointerover(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerover = value }

///|
pub extern "js" fn Window::get_onpointerenter(self : Window) -> EventHandler =
  #| (self) => self.onpointerenter

///|
pub extern "js" fn Window::set_onpointerenter(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerenter = value }

///|
pub extern "js" fn Window::get_onpointerdown(self : Window) -> EventHandler =
  #| (self) => self.onpointerdown

///|
pub extern "js" fn Window::set_onpointerdown(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerdown = value }

///|
pub extern "js" fn Window::get_onpointermove(self : Window) -> EventHandler =
  #| (self) => self.onpointermove

///|
pub extern "js" fn Window::set_onpointermove(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointermove = value }

///|
pub extern "js" fn Window::get_onpointerrawupdate(
  self : Window,
) -> EventHandler =
  #| (self) => self.onpointerrawupdate

///|
pub extern "js" fn Window::set_onpointerrawupdate(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerrawupdate = value }

///|
pub extern "js" fn Window::get_onpointerup(self : Window) -> EventHandler =
  #| (self) => self.onpointerup

///|
pub extern "js" fn Window::set_onpointerup(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerup = value }

///|
pub extern "js" fn Window::get_onpointercancel(self : Window) -> EventHandler =
  #| (self) => self.onpointercancel

///|
pub extern "js" fn Window::set_onpointercancel(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointercancel = value }

///|
pub extern "js" fn Window::get_onpointerout(self : Window) -> EventHandler =
  #| (self) => self.onpointerout

///|
pub extern "js" fn Window::set_onpointerout(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerout = value }

///|
pub extern "js" fn Window::get_onpointerleave(self : Window) -> EventHandler =
  #| (self) => self.onpointerleave

///|
pub extern "js" fn Window::set_onpointerleave(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpointerleave = value }

///|
pub extern "js" fn Window::get_ongotpointercapture(
  self : Window,
) -> EventHandler =
  #| (self) => self.ongotpointercapture

///|
pub extern "js" fn Window::set_ongotpointercapture(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ongotpointercapture = value }

///|
pub extern "js" fn Window::get_onlostpointercapture(
  self : Window,
) -> EventHandler =
  #| (self) => self.onlostpointercapture

///|
pub extern "js" fn Window::set_onlostpointercapture(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onlostpointercapture = value }

///|
pub extern "js" fn Window::get_onbeforexrselect(self : Window) -> EventHandler =
  #| (self) => self.onbeforexrselect

///|
pub extern "js" fn Window::set_onbeforexrselect(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbeforexrselect = value }

///|
pub extern "js" fn Window::get_onselectstart(self : Window) -> EventHandler =
  #| (self) => self.onselectstart

///|
pub extern "js" fn Window::set_onselectstart(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onselectstart = value }

///|
pub extern "js" fn Window::get_onselectionchange(self : Window) -> EventHandler =
  #| (self) => self.onselectionchange

///|
pub extern "js" fn Window::set_onselectionchange(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onselectionchange = value }

///|
pub extern "js" fn Window::get_onafterprint(self : Window) -> EventHandler =
  #| (self) => self.onafterprint

///|
pub extern "js" fn Window::set_onafterprint(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onafterprint = value }

///|
pub extern "js" fn Window::get_onbeforeprint(self : Window) -> EventHandler =
  #| (self) => self.onbeforeprint

///|
pub extern "js" fn Window::set_onbeforeprint(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbeforeprint = value }

///|
pub extern "js" fn Window::get_onbeforeunload(
  self : Window,
) -> OnBeforeUnloadEventHandler =
  #| (self) => self.onbeforeunload

///|
pub extern "js" fn Window::set_onbeforeunload(
  self : Window,
  value : OnBeforeUnloadEventHandler,
) -> Unit =
  #| (self, value) => { self.onbeforeunload = value }

///|
pub extern "js" fn Window::get_onhashchange(self : Window) -> EventHandler =
  #| (self) => self.onhashchange

///|
pub extern "js" fn Window::set_onhashchange(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onhashchange = value }

///|
pub extern "js" fn Window::get_onlanguagechange(self : Window) -> EventHandler =
  #| (self) => self.onlanguagechange

///|
pub extern "js" fn Window::set_onlanguagechange(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onlanguagechange = value }

///|
pub extern "js" fn Window::get_onmessage(self : Window) -> EventHandler =
  #| (self) => self.onmessage

///|
pub extern "js" fn Window::set_onmessage(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmessage = value }

///|
pub extern "js" fn Window::get_onmessageerror(self : Window) -> EventHandler =
  #| (self) => self.onmessageerror

///|
pub extern "js" fn Window::set_onmessageerror(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmessageerror = value }

///|
pub extern "js" fn Window::get_onoffline(self : Window) -> EventHandler =
  #| (self) => self.onoffline

///|
pub extern "js" fn Window::set_onoffline(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onoffline = value }

///|
pub extern "js" fn Window::get_ononline(self : Window) -> EventHandler =
  #| (self) => self.ononline

///|
pub extern "js" fn Window::set_ononline(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ononline = value }

///|
pub extern "js" fn Window::get_onpagehide(self : Window) -> EventHandler =
  #| (self) => self.onpagehide

///|
pub extern "js" fn Window::set_onpagehide(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpagehide = value }

///|
pub extern "js" fn Window::get_onpagereveal(self : Window) -> EventHandler =
  #| (self) => self.onpagereveal

///|
pub extern "js" fn Window::set_onpagereveal(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpagereveal = value }

///|
pub extern "js" fn Window::get_onpageshow(self : Window) -> EventHandler =
  #| (self) => self.onpageshow

///|
pub extern "js" fn Window::set_onpageshow(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpageshow = value }

///|
pub extern "js" fn Window::get_onpageswap(self : Window) -> EventHandler =
  #| (self) => self.onpageswap

///|
pub extern "js" fn Window::set_onpageswap(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpageswap = value }

///|
pub extern "js" fn Window::get_onpopstate(self : Window) -> EventHandler =
  #| (self) => self.onpopstate

///|
pub extern "js" fn Window::set_onpopstate(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpopstate = value }

///|
pub extern "js" fn Window::get_onrejectionhandled(
  self : Window,
) -> EventHandler =
  #| (self) => self.onrejectionhandled

///|
pub extern "js" fn Window::set_onrejectionhandled(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onrejectionhandled = value }

///|
pub extern "js" fn Window::get_onstorage(self : Window) -> EventHandler =
  #| (self) => self.onstorage

///|
pub extern "js" fn Window::set_onstorage(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onstorage = value }

///|
pub extern "js" fn Window::get_onunhandledrejection(
  self : Window,
) -> EventHandler =
  #| (self) => self.onunhandledrejection

///|
pub extern "js" fn Window::set_onunhandledrejection(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onunhandledrejection = value }

///|
pub extern "js" fn Window::get_onunload(self : Window) -> EventHandler =
  #| (self) => self.onunload

///|
pub extern "js" fn Window::set_onunload(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onunload = value }

///|
pub extern "js" fn Window::get_onportalactivate(self : Window) -> EventHandler =
  #| (self) => self.onportalactivate

///|
pub extern "js" fn Window::set_onportalactivate(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onportalactivate = value }

///|
pub extern "js" fn Window::get_ongamepadconnected(
  self : Window,
) -> EventHandler =
  #| (self) => self.ongamepadconnected

///|
pub extern "js" fn Window::set_ongamepadconnected(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ongamepadconnected = value }

///|
pub extern "js" fn Window::get_ongamepaddisconnected(
  self : Window,
) -> EventHandler =
  #| (self) => self.ongamepaddisconnected

///|
pub extern "js" fn Window::set_ongamepaddisconnected(
  self : Window,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ongamepaddisconnected = value }

///|
pub extern "js" fn Window::get_scheduler(self : Window) -> Scheduler =
  #| (self) => self.scheduler

///|
pub extern "js" fn Window::get_origin(self : Window) -> String =
  #| (self) => self.origin

///|
pub extern "js" fn Window::get_is_secure_context(self : Window) -> Bool =
  #| (self) => self.isSecureContext

///|
pub extern "js" fn Window::get_cross_origin_isolated(self : Window) -> Bool =
  #| (self) => self.crossOriginIsolated

///|
pub extern "js" fn Window::report_error(self : Window, e : JsValue) -> Unit =
  #| (self, e) => self.reportError(e)

///|
pub extern "js" fn Window::btoa(self : Window, data : String) -> String =
  #| (self, data) => self.btoa(data)

///|
pub extern "js" fn Window::atob(self : Window, data : String) -> String =
  #| (self, data) => self.atob(data)

///|
pub extern "js" fn Window::set_timeout(
  self : Window,
  handler : TimerHandler,
) -> Int =
  #| (self, handler) => self.setTimeout(handler)

///|
pub extern "js" fn Window::set_timeout_with_arguments(
  self : Window,
  handler : TimerHandler,
  timeout : Int,
  arguments : JsValue,
) -> Int =
  #| (self, handler, timeout, arguments) => self.setTimeout(handler, timeout, arguments)

///|
pub extern "js" fn Window::clear_timeout(self : Window) -> Unit =
  #| (self) => self.clearTimeout()

///|
pub extern "js" fn Window::clear_timeout_with_id(
  self : Window,
  id : Int,
) -> Unit =
  #| (self, id) => self.clearTimeout(id)

///|
pub extern "js" fn Window::set_interval(
  self : Window,
  handler : TimerHandler,
) -> Int =
  #| (self, handler) => self.setInterval(handler)

///|
pub extern "js" fn Window::set_interval_with_arguments(
  self : Window,
  handler : TimerHandler,
  timeout : Int,
  arguments : JsValue,
) -> Int =
  #| (self, handler, timeout, arguments) => self.setInterval(handler, timeout, arguments)

///|
pub extern "js" fn Window::clear_interval(self : Window) -> Unit =
  #| (self) => self.clearInterval()

///|
pub extern "js" fn Window::clear_interval_with_id(
  self : Window,
  id : Int,
) -> Unit =
  #| (self, id) => self.clearInterval(id)

///|
pub extern "js" fn Window::queue_microtask(
  self : Window,
  callback : VoidFunction,
) -> Unit =
  #| (self, callback) => self.queueMicrotask(callback)

///|
pub extern "js" fn Window::create_image_bitmap(
  self : Window,
  image : ImageBitmapSource,
) -> Promise[ImageBitmap] =
  #| (self, image) => self.createImageBitmap(image)

///|
extern "js" fn Window::create_image_bitmap_with_options_ffi(
  self : Window,
  image : ImageBitmapSource,
  options : JsValue,
) -> Promise[ImageBitmap] =
  #| (self, image, options) => self.createImageBitmap(image, options)

///|
pub fn Window::create_image_bitmap_with_options(
  self : Window,
  image : ImageBitmapSource,
  options : ImageBitmapOptions,
) -> Promise[ImageBitmap] {
  Window::create_image_bitmap_with_options_ffi(self, image, options.to_js())
}

///|
pub extern "js" fn Window::create_image_bitmap_with_image_image_bitmap_source_and_sx_and_sy_and_sw_and_sh(
  self : Window,
  image : ImageBitmapSource,
  sx : Int,
  sy : Int,
  sw : Int,
  sh : Int,
) -> Promise[ImageBitmap] =
  #| (self, image, sx, sy, sw, sh) => self.createImageBitmap(image, sx, sy, sw, sh)

///|
extern "js" fn Window::create_image_bitmap_with_image_image_bitmap_source_and_sx_and_sy_and_sw_and_sh_and_options_image_bitmap_options_ffi(
  self : Window,
  image : ImageBitmapSource,
  sx : Int,
  sy : Int,
  sw : Int,
  sh : Int,
  options : JsValue,
) -> Promise[ImageBitmap] =
  #| (self, image, sx, sy, sw, sh, options) => self.createImageBitmap(image, sx, sy, sw, sh, options)

///|
pub fn Window::create_image_bitmap_with_image_image_bitmap_source_and_sx_and_sy_and_sw_and_sh_and_options_image_bitmap_options(
  self : Window,
  image : ImageBitmapSource,
  sx : Int,
  sy : Int,
  sw : Int,
  sh : Int,
  options : ImageBitmapOptions,
) -> Promise[ImageBitmap] {
  Window::create_image_bitmap_with_image_image_bitmap_source_and_sx_and_sy_and_sw_and_sh_and_options_image_bitmap_options_ffi(
    self,
    image,
    sx,
    sy,
    sw,
    sh,
    options.to_js(),
  )
}

///|
pub extern "js" fn Window::structured_clone(
  self : Window,
  value : JsValue,
) -> JsValue =
  #| (self, value) => self.structuredClone(value)

///|
extern "js" fn Window::structured_clone_with_options_ffi(
  self : Window,
  value : JsValue,
  options : JsValue,
) -> JsValue =
  #| (self, value, options) => self.structuredClone(value, options)

///|
pub fn Window::structured_clone_with_options(
  self : Window,
  value : JsValue,
  options : StructuredSerializeOptions,
) -> JsValue {
  Window::structured_clone_with_options_ffi(self, value, options.to_js())
}

///|
pub extern "js" fn Window::get_trusted_types(
  self : Window,
) -> TrustedTypePolicyFactory =
  #| (self) => self.trustedTypes

///|
pub extern "js" fn Window::get_indexed_db(self : Window) -> IDBFactory =
  #| (self) => self.indexedDB

///|
pub extern "js" fn Window::get_crypto(self : Window) -> Crypto =
  #| (self) => self.crypto

///|
pub extern "js" fn Window::get_performance(self : Window) -> Performance =
  #| (self) => self.performance

///|
pub extern "js" fn Window::get_caches(self : Window) -> CacheStorage =
  #| (self) => self.caches

///|
pub extern "js" fn Window::fetch(
  self : Window,
  input : RequestInfo,
) -> Promise[Response] =
  #| (self, input) => self.fetch(input)

///|
extern "js" fn Window::fetch_with_init_ffi(
  self : Window,
  input : RequestInfo,
  init_ : JsValue,
) -> Promise[Response] =
  #| (self, input, init_) => self.fetch(input, init_)

///|
pub fn Window::fetch_with_init(
  self : Window,
  input : RequestInfo,
  init_ : RequestInit,
) -> Promise[Response] {
  Window::fetch_with_init_ffi(self, input, init_.to_js())
}

///|
pub extern "js" fn Window::request_animation_frame(
  self : Window,
  callback : FrameRequestCallback,
) -> Int =
  #| (self, callback) => self.requestAnimationFrame(callback)

///|
pub extern "js" fn Window::cancel_animation_frame(
  self : Window,
  handle : Int,
) -> Unit =
  #| (self, handle) => self.cancelAnimationFrame(handle)

///|
pub extern "js" fn Window::get_session_storage(self : Window) -> Storage =
  #| (self) => self.sessionStorage

///|
pub extern "js" fn Window::get_local_storage(self : Window) -> Storage =
  #| (self) => self.localStorage

///|
pub extern "js" fn Window::fetch_later_with_request(
  self : Window,
  input : Request,
  init_ : DeferredRequestInit,
) -> FetchLaterResult =
  #| (self, input, init_) => self.fetchLater(input, init_)

///|
pub extern "js" fn Window::fetch_later_with_string(
  self : Window,
  input : String,
  init_ : DeferredRequestInit,
) -> FetchLaterResult =
  #| (self, input, init_) => self.fetchLater(input, init_)

///|
pub extern "js" fn Window::set_timeout_with_string(
  self : Window,
  handler : String,
  timeout : Int,
  arguments : JsValue,
) -> Int =
  #| (self, handler, timeout, arguments) => self.setTimeout(handler, timeout, arguments)

///|
pub extern "js" fn Window::set_timeout_with_function(
  self : Window,
  handler : Function,
  timeout : Int,
  arguments : JsValue,
) -> Int =
  #| (self, handler, timeout, arguments) => self.setTimeout(handler, timeout, arguments)

///|
pub extern "js" fn Window::set_timeout_with_trusted_script(
  self : Window,
  handler : TrustedScript,
  timeout : Int,
  arguments : JsValue,
) -> Int =
  #| (self, handler, timeout, arguments) => self.setTimeout(handler, timeout, arguments)

///|
pub extern "js" fn Window::set_interval_with_string(
  self : Window,
  handler : String,
  timeout : Int,
  arguments : JsValue,
) -> Int =
  #| (self, handler, timeout, arguments) => self.setInterval(handler, timeout, arguments)

///|
pub extern "js" fn Window::set_interval_with_function(
  self : Window,
  handler : Function,
  timeout : Int,
  arguments : JsValue,
) -> Int =
  #| (self, handler, timeout, arguments) => self.setInterval(handler, timeout, arguments)

///|
pub extern "js" fn Window::set_interval_with_trusted_script(
  self : Window,
  handler : TrustedScript,
  timeout : Int,
  arguments : JsValue,
) -> Int =
  #| (self, handler, timeout, arguments) => self.setInterval(handler, timeout, arguments)

///|
pub extern "js" fn Window::create_image_bitmap_with_canvas_image_source(
  self : Window,
  image : CanvasImageSource,
  options : ImageBitmapOptions,
) -> Promise[ImageBitmap] =
  #| (self, image, options) => self.createImageBitmap(image, options)

///|
pub extern "js" fn Window::create_image_bitmap_with_blob(
  self : Window,
  image : Blob,
  options : ImageBitmapOptions,
) -> Promise[ImageBitmap] =
  #| (self, image, options) => self.createImageBitmap(image, options)

///|
pub extern "js" fn Window::create_image_bitmap_with_image_data(
  self : Window,
  image : ImageData,
  options : ImageBitmapOptions,
) -> Promise[ImageBitmap] =
  #| (self, image, options) => self.createImageBitmap(image, options)

///|
pub extern "js" fn Window::fetch_with_request(
  self : Window,
  input : Request,
  init_ : RequestInit,
) -> Promise[Response] =
  #| (self, input, init_) => self.fetch(input, init_)

///|
pub extern "js" fn Window::fetch_with_string(
  self : Window,
  input : String,
  init_ : RequestInit,
) -> Promise[Response] =
  #| (self, input, init_) => self.fetch(input, init_)

///|
/// BarProp interface
pub type BarProp

///|
pub extern "js" fn BarProp::to_js_value(self : BarProp) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to BarProp (unchecked)
pub extern "js" fn BarProp::from_js_value(v : JsValue) -> BarProp =
  #| (v) => v

///|
/// Safely cast JsValue to BarProp (checked with instanceof)
pub extern "js" fn BarProp::from_js_value_opt(v : JsValue) -> BarProp? =
  #| (v) => (v instanceof BarProp) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to BarProp (checked with instanceof)
pub extern "js" fn JsValue::as_bar_prop(self : JsValue) -> BarProp? =
  #| (self) => (self instanceof BarProp) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to BarProp (unchecked)
pub extern "js" fn JsValue::to_bar_prop(self : JsValue) -> BarProp =
  #| (self) => self

///|
pub extern "js" fn BarProp::get_visible(self : BarProp) -> Bool =
  #| (self) => self.visible

///|
/// Location interface
pub type Location

///|
pub extern "js" fn Location::to_js_value(self : Location) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Location (unchecked)
pub extern "js" fn Location::from_js_value(v : JsValue) -> Location =
  #| (v) => v

///|
/// Safely cast JsValue to Location (checked with instanceof)
pub extern "js" fn Location::from_js_value_opt(v : JsValue) -> Location? =
  #| (v) => (v instanceof Location) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Location (checked with instanceof)
pub extern "js" fn JsValue::as_location(self : JsValue) -> Location? =
  #| (self) => (self instanceof Location) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Location (unchecked)
pub extern "js" fn JsValue::to_location(self : JsValue) -> Location =
  #| (self) => self

///|
pub extern "js" fn Location::get_href(self : Location) -> String =
  #| (self) => self.href

///|
pub extern "js" fn Location::set_href(self : Location, value : String) -> Unit =
  #| (self, value) => { self.href = value }

///|
pub extern "js" fn Location::get_origin(self : Location) -> String =
  #| (self) => self.origin

///|
pub extern "js" fn Location::get_protocol(self : Location) -> String =
  #| (self) => self.protocol

///|
pub extern "js" fn Location::set_protocol(
  self : Location,
  value : String,
) -> Unit =
  #| (self, value) => { self.protocol = value }

///|
pub extern "js" fn Location::get_host(self : Location) -> String =
  #| (self) => self.host

///|
pub extern "js" fn Location::set_host(self : Location, value : String) -> Unit =
  #| (self, value) => { self.host = value }

///|
pub extern "js" fn Location::get_hostname(self : Location) -> String =
  #| (self) => self.hostname

///|
pub extern "js" fn Location::set_hostname(
  self : Location,
  value : String,
) -> Unit =
  #| (self, value) => { self.hostname = value }

///|
pub extern "js" fn Location::get_port(self : Location) -> String =
  #| (self) => self.port

///|
pub extern "js" fn Location::set_port(self : Location, value : String) -> Unit =
  #| (self, value) => { self.port = value }

///|
pub extern "js" fn Location::get_pathname(self : Location) -> String =
  #| (self) => self.pathname

///|
pub extern "js" fn Location::set_pathname(
  self : Location,
  value : String,
) -> Unit =
  #| (self, value) => { self.pathname = value }

///|
pub extern "js" fn Location::get_search(self : Location) -> String =
  #| (self) => self.search

///|
pub extern "js" fn Location::set_search(
  self : Location,
  value : String,
) -> Unit =
  #| (self, value) => { self.search = value }

///|
pub extern "js" fn Location::get_hash(self : Location) -> String =
  #| (self) => self.hash

///|
pub extern "js" fn Location::set_hash(self : Location, value : String) -> Unit =
  #| (self, value) => { self.hash = value }

///|
pub extern "js" fn Location::assign(self : Location, url : String) -> Unit =
  #| (self, url) => self.assign(url)

///|
pub extern "js" fn Location::replace(self : Location, url : String) -> Unit =
  #| (self, url) => self.replace(url)

///|
pub extern "js" fn Location::reload(self : Location) -> Unit =
  #| (self) => self.reload()

///|
pub extern "js" fn Location::get_ancestor_origins(
  self : Location,
) -> DOMStringList =
  #| (self) => self.ancestorOrigins

///|
/// History interface
pub type History

///|
pub extern "js" fn History::to_js_value(self : History) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to History (unchecked)
pub extern "js" fn History::from_js_value(v : JsValue) -> History =
  #| (v) => v

///|
/// Safely cast JsValue to History (checked with instanceof)
pub extern "js" fn History::from_js_value_opt(v : JsValue) -> History? =
  #| (v) => (v instanceof History) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to History (checked with instanceof)
pub extern "js" fn JsValue::as_history(self : JsValue) -> History? =
  #| (self) => (self instanceof History) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to History (unchecked)
pub extern "js" fn JsValue::to_history(self : JsValue) -> History =
  #| (self) => self

///|
pub extern "js" fn History::get_length(self : History) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn History::get_scroll_restoration(
  self : History,
) -> ScrollRestoration =
  #| (self) => ['auto', 'manual'].indexOf(self.scrollRestoration)

///|
pub extern "js" fn History::set_scroll_restoration(
  self : History,
  value : ScrollRestoration,
) -> Unit =
  #| (self, value) => { self.scrollRestoration = ['auto', 'manual'][value] }

///|
pub extern "js" fn History::get_state(self : History) -> JsValue =
  #| (self) => self.state

///|
pub extern "js" fn History::go(self : History) -> Unit =
  #| (self) => self.go()

///|
pub extern "js" fn History::go_with_delta(self : History, delta : Int) -> Unit =
  #| (self, delta) => self.go(delta)

///|
pub extern "js" fn History::back(self : History) -> Unit =
  #| (self) => self.back()

///|
pub extern "js" fn History::forward(self : History) -> Unit =
  #| (self) => self.forward()

///|
pub extern "js" fn History::push_state(
  self : History,
  data : JsValue,
  unused : String,
) -> Unit =
  #| (self, data, unused) => self.pushState(data, unused)

///|
pub extern "js" fn History::push_state_with_url(
  self : History,
  data : JsValue,
  unused : String,
  url : String?,
) -> Unit =
  #| (self, data, unused, url) => self.pushState(data, unused, url)

///|
pub extern "js" fn History::replace_state(
  self : History,
  data : JsValue,
  unused : String,
) -> Unit =
  #| (self, data, unused) => self.replaceState(data, unused)

///|
pub extern "js" fn History::replace_state_with_url(
  self : History,
  data : JsValue,
  unused : String,
  url : String?,
) -> Unit =
  #| (self, data, unused, url) => self.replaceState(data, unused, url)

///|
/// Navigation interface
pub type Navigation

///|
pub extern "js" fn Navigation::to_js_value(self : Navigation) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Navigation (unchecked)
pub extern "js" fn Navigation::from_js_value(v : JsValue) -> Navigation =
  #| (v) => v

///|
/// Safely cast JsValue to Navigation (checked with instanceof)
pub extern "js" fn Navigation::from_js_value_opt(v : JsValue) -> Navigation? =
  #| (v) => (v instanceof Navigation) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Navigation (checked with instanceof)
pub extern "js" fn JsValue::as_navigation(self : JsValue) -> Navigation? =
  #| (self) => (self instanceof Navigation) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Navigation (unchecked)
pub extern "js" fn JsValue::to_navigation(self : JsValue) -> Navigation =
  #| (self) => self

///|
pub extern "js" fn Navigation::to_event_target(
  self : Navigation,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn Navigation::entries(
  self : Navigation,
) -> Array[NavigationHistoryEntry] =
  #| (self) => self.entries()

///|
pub extern "js" fn Navigation::get_current_entry(
  self : Navigation,
) -> NavigationHistoryEntry? =
  #| (self) => (() => { const v = self.currentEntry; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
extern "js" fn Navigation::update_current_entry_ffi(
  self : Navigation,
  options : JsValue,
) -> Unit =
  #| (self, options) => self.updateCurrentEntry(options)

///|
pub fn Navigation::update_current_entry(
  self : Navigation,
  options : NavigationUpdateCurrentEntryOptions,
) -> Unit {
  Navigation::update_current_entry_ffi(self, options.to_js())
}

///|
pub extern "js" fn Navigation::get_transition(
  self : Navigation,
) -> NavigationTransition? =
  #| (self) => (() => { const v = self.transition; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Navigation::get_activation(
  self : Navigation,
) -> NavigationActivation? =
  #| (self) => (() => { const v = self.activation; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Navigation::get_can_go_back(self : Navigation) -> Bool =
  #| (self) => self.canGoBack

///|
pub extern "js" fn Navigation::get_can_go_forward(self : Navigation) -> Bool =
  #| (self) => self.canGoForward

///|
pub extern "js" fn Navigation::navigate(
  self : Navigation,
  url : String,
) -> NavigationResult =
  #| (self, url) => self.navigate(url)

///|
extern "js" fn Navigation::navigate_with_options_ffi(
  self : Navigation,
  url : String,
  options : JsValue,
) -> NavigationResult =
  #| (self, url, options) => self.navigate(url, options)

///|
pub fn Navigation::navigate_with_options(
  self : Navigation,
  url : String,
  options : NavigationNavigateOptions,
) -> NavigationResult {
  Navigation::navigate_with_options_ffi(self, url, options.to_js())
}

///|
pub extern "js" fn Navigation::reload(self : Navigation) -> NavigationResult =
  #| (self) => self.reload()

///|
extern "js" fn Navigation::reload_with_options_ffi(
  self : Navigation,
  options : JsValue,
) -> NavigationResult =
  #| (self, options) => self.reload(options)

///|
pub fn Navigation::reload_with_options(
  self : Navigation,
  options : NavigationReloadOptions,
) -> NavigationResult {
  Navigation::reload_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn Navigation::traverse_to(
  self : Navigation,
  key : String,
) -> NavigationResult =
  #| (self, key) => self.traverseTo(key)

///|
extern "js" fn Navigation::traverse_to_with_options_ffi(
  self : Navigation,
  key : String,
  options : JsValue,
) -> NavigationResult =
  #| (self, key, options) => self.traverseTo(key, options)

///|
pub fn Navigation::traverse_to_with_options(
  self : Navigation,
  key : String,
  options : NavigationOptions,
) -> NavigationResult {
  Navigation::traverse_to_with_options_ffi(self, key, options.to_js())
}

///|
pub extern "js" fn Navigation::back(self : Navigation) -> NavigationResult =
  #| (self) => self.back()

///|
extern "js" fn Navigation::back_with_options_ffi(
  self : Navigation,
  options : JsValue,
) -> NavigationResult =
  #| (self, options) => self.back(options)

///|
pub fn Navigation::back_with_options(
  self : Navigation,
  options : NavigationOptions,
) -> NavigationResult {
  Navigation::back_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn Navigation::forward(self : Navigation) -> NavigationResult =
  #| (self) => self.forward()

///|
extern "js" fn Navigation::forward_with_options_ffi(
  self : Navigation,
  options : JsValue,
) -> NavigationResult =
  #| (self, options) => self.forward(options)

///|
pub fn Navigation::forward_with_options(
  self : Navigation,
  options : NavigationOptions,
) -> NavigationResult {
  Navigation::forward_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn Navigation::get_onnavigate(
  self : Navigation,
) -> EventHandler =
  #| (self) => self.onnavigate

///|
pub extern "js" fn Navigation::set_onnavigate(
  self : Navigation,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onnavigate = value }

///|
pub extern "js" fn Navigation::get_onnavigatesuccess(
  self : Navigation,
) -> EventHandler =
  #| (self) => self.onnavigatesuccess

///|
pub extern "js" fn Navigation::set_onnavigatesuccess(
  self : Navigation,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onnavigatesuccess = value }

///|
pub extern "js" fn Navigation::get_onnavigateerror(
  self : Navigation,
) -> EventHandler =
  #| (self) => self.onnavigateerror

///|
pub extern "js" fn Navigation::set_onnavigateerror(
  self : Navigation,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onnavigateerror = value }

///|
pub extern "js" fn Navigation::get_oncurrententrychange(
  self : Navigation,
) -> EventHandler =
  #| (self) => self.oncurrententrychange

///|
pub extern "js" fn Navigation::set_oncurrententrychange(
  self : Navigation,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncurrententrychange = value }

///|
/// NavigationHistoryEntry interface
pub type NavigationHistoryEntry

///|
pub extern "js" fn NavigationHistoryEntry::to_js_value(
  self : NavigationHistoryEntry,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to NavigationHistoryEntry (unchecked)
pub extern "js" fn NavigationHistoryEntry::from_js_value(
  v : JsValue,
) -> NavigationHistoryEntry =
  #| (v) => v

///|
/// Safely cast JsValue to NavigationHistoryEntry (checked with instanceof)
pub extern "js" fn NavigationHistoryEntry::from_js_value_opt(
  v : JsValue,
) -> NavigationHistoryEntry? =
  #| (v) => (v instanceof NavigationHistoryEntry) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to NavigationHistoryEntry (checked with instanceof)
pub extern "js" fn JsValue::as_navigation_history_entry(
  self : JsValue,
) -> NavigationHistoryEntry? =
  #| (self) => (self instanceof NavigationHistoryEntry) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to NavigationHistoryEntry (unchecked)
pub extern "js" fn JsValue::to_navigation_history_entry(
  self : JsValue,
) -> NavigationHistoryEntry =
  #| (self) => self

///|
pub extern "js" fn NavigationHistoryEntry::to_event_target(
  self : NavigationHistoryEntry,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn NavigationHistoryEntry::get_url(
  self : NavigationHistoryEntry,
) -> String? =
  #| (self) => (self.url) ?? undefined

///|
pub extern "js" fn NavigationHistoryEntry::get_key(
  self : NavigationHistoryEntry,
) -> String =
  #| (self) => self.key

///|
pub extern "js" fn NavigationHistoryEntry::get_id(
  self : NavigationHistoryEntry,
) -> String =
  #| (self) => self.id

///|
pub extern "js" fn NavigationHistoryEntry::get_index(
  self : NavigationHistoryEntry,
) -> Int64 =
  #| (self) => (() => { const n = self.index; return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

///|
pub extern "js" fn NavigationHistoryEntry::get_same_document(
  self : NavigationHistoryEntry,
) -> Bool =
  #| (self) => self.sameDocument

///|
pub extern "js" fn NavigationHistoryEntry::get_state(
  self : NavigationHistoryEntry,
) -> JsValue =
  #| (self) => self.getState()

///|
pub extern "js" fn NavigationHistoryEntry::get_ondispose(
  self : NavigationHistoryEntry,
) -> EventHandler =
  #| (self) => self.ondispose

///|
pub extern "js" fn NavigationHistoryEntry::set_ondispose(
  self : NavigationHistoryEntry,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondispose = value }

///|
/// NavigationTransition interface
pub type NavigationTransition

///|
pub extern "js" fn NavigationTransition::to_js_value(
  self : NavigationTransition,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to NavigationTransition (unchecked)
pub extern "js" fn NavigationTransition::from_js_value(
  v : JsValue,
) -> NavigationTransition =
  #| (v) => v

///|
/// Safely cast JsValue to NavigationTransition (checked with instanceof)
pub extern "js" fn NavigationTransition::from_js_value_opt(
  v : JsValue,
) -> NavigationTransition? =
  #| (v) => (v instanceof NavigationTransition) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to NavigationTransition (checked with instanceof)
pub extern "js" fn JsValue::as_navigation_transition(
  self : JsValue,
) -> NavigationTransition? =
  #| (self) => (self instanceof NavigationTransition) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to NavigationTransition (unchecked)
pub extern "js" fn JsValue::to_navigation_transition(
  self : JsValue,
) -> NavigationTransition =
  #| (self) => self

///|
pub extern "js" fn NavigationTransition::get_navigation_type(
  self : NavigationTransition,
) -> NavigationType =
  #| (self) => ['push', 'replace', 'reload', 'traverse'].indexOf(self.navigationType)

///|
pub extern "js" fn NavigationTransition::get_from(
  self : NavigationTransition,
) -> NavigationHistoryEntry =
  #| (self) => self.from

///|
pub extern "js" fn NavigationTransition::get_to(
  self : NavigationTransition,
) -> NavigationDestination =
  #| (self) => self.to

///|
pub extern "js" fn NavigationTransition::get_committed(
  self : NavigationTransition,
) -> Promise[Unit] =
  #| (self) => self.committed

///|
pub extern "js" fn NavigationTransition::get_finished(
  self : NavigationTransition,
) -> Promise[Unit] =
  #| (self) => self.finished

///|
/// NavigationActivation interface
pub type NavigationActivation

///|
pub extern "js" fn NavigationActivation::to_js_value(
  self : NavigationActivation,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to NavigationActivation (unchecked)
pub extern "js" fn NavigationActivation::from_js_value(
  v : JsValue,
) -> NavigationActivation =
  #| (v) => v

///|
/// Safely cast JsValue to NavigationActivation (checked with instanceof)
pub extern "js" fn NavigationActivation::from_js_value_opt(
  v : JsValue,
) -> NavigationActivation? =
  #| (v) => (v instanceof NavigationActivation) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to NavigationActivation (checked with instanceof)
pub extern "js" fn JsValue::as_navigation_activation(
  self : JsValue,
) -> NavigationActivation? =
  #| (self) => (self instanceof NavigationActivation) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to NavigationActivation (unchecked)
pub extern "js" fn JsValue::to_navigation_activation(
  self : JsValue,
) -> NavigationActivation =
  #| (self) => self

///|
pub extern "js" fn NavigationActivation::get_from(
  self : NavigationActivation,
) -> NavigationHistoryEntry? =
  #| (self) => (() => { const v = self.from; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn NavigationActivation::get_entry(
  self : NavigationActivation,
) -> NavigationHistoryEntry =
  #| (self) => self.entry

///|
pub extern "js" fn NavigationActivation::get_navigation_type(
  self : NavigationActivation,
) -> NavigationType =
  #| (self) => ['push', 'replace', 'reload', 'traverse'].indexOf(self.navigationType)

///|
/// NavigateEvent interface
pub type NavigateEvent

///|
pub extern "js" fn NavigateEvent::to_js_value(self : NavigateEvent) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to NavigateEvent (unchecked)
pub extern "js" fn NavigateEvent::from_js_value(v : JsValue) -> NavigateEvent =
  #| (v) => v

///|
/// Safely cast JsValue to NavigateEvent (checked with instanceof)
pub extern "js" fn NavigateEvent::from_js_value_opt(
  v : JsValue,
) -> NavigateEvent? =
  #| (v) => (v instanceof NavigateEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to NavigateEvent (checked with instanceof)
pub extern "js" fn JsValue::as_navigate_event(self : JsValue) -> NavigateEvent? =
  #| (self) => (self instanceof NavigateEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to NavigateEvent (unchecked)
pub extern "js" fn JsValue::to_navigate_event(self : JsValue) -> NavigateEvent =
  #| (self) => self

///|
pub extern "js" fn NavigateEvent::to_event(self : NavigateEvent) -> Event =
  #| (self) => self

///|
extern "js" fn NavigateEvent::new_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> NavigateEvent =
  #| (type_, event_init_dict) => new NavigateEvent(type_, event_init_dict)

///|
pub fn NavigateEvent::new(
  type_ : String,
  event_init_dict : NavigateEventInit,
) -> NavigateEvent {
  NavigateEvent::new_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn NavigateEvent::get_navigation_type(
  self : NavigateEvent,
) -> NavigationType =
  #| (self) => ['push', 'replace', 'reload', 'traverse'].indexOf(self.navigationType)

///|
pub extern "js" fn NavigateEvent::get_destination(
  self : NavigateEvent,
) -> NavigationDestination =
  #| (self) => self.destination

///|
pub extern "js" fn NavigateEvent::get_can_intercept(
  self : NavigateEvent,
) -> Bool =
  #| (self) => self.canIntercept

///|
pub extern "js" fn NavigateEvent::get_user_initiated(
  self : NavigateEvent,
) -> Bool =
  #| (self) => self.userInitiated

///|
pub extern "js" fn NavigateEvent::get_hash_change(self : NavigateEvent) -> Bool =
  #| (self) => self.hashChange

///|
pub extern "js" fn NavigateEvent::get_signal(
  self : NavigateEvent,
) -> AbortSignal =
  #| (self) => self.signal

///|
pub extern "js" fn NavigateEvent::get_form_data(
  self : NavigateEvent,
) -> FormData? =
  #| (self) => (() => { const v = self.formData; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn NavigateEvent::get_download_request(
  self : NavigateEvent,
) -> String? =
  #| (self) => (self.downloadRequest) ?? undefined

///|
pub extern "js" fn NavigateEvent::get_info(self : NavigateEvent) -> JsValue =
  #| (self) => self.info

///|
pub extern "js" fn NavigateEvent::get_has_ua_visual_transition(
  self : NavigateEvent,
) -> Bool =
  #| (self) => self.hasUAVisualTransition

///|
pub extern "js" fn NavigateEvent::get_source_element(
  self : NavigateEvent,
) -> Element? =
  #| (self) => (() => { const v = self.sourceElement; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn NavigateEvent::intercept(self : NavigateEvent) -> Unit =
  #| (self) => self.intercept()

///|
extern "js" fn NavigateEvent::intercept_with_options_ffi(
  self : NavigateEvent,
  options : JsValue,
) -> Unit =
  #| (self, options) => self.intercept(options)

///|
pub fn NavigateEvent::intercept_with_options(
  self : NavigateEvent,
  options : NavigationInterceptOptions,
) -> Unit {
  NavigateEvent::intercept_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn NavigateEvent::scroll(self : NavigateEvent) -> Unit =
  #| (self) => self.scroll()

///|
/// NavigationPrecommitController interface
pub type NavigationPrecommitController

///|
pub extern "js" fn NavigationPrecommitController::to_js_value(
  self : NavigationPrecommitController,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to NavigationPrecommitController (unchecked)
pub extern "js" fn NavigationPrecommitController::from_js_value(
  v : JsValue,
) -> NavigationPrecommitController =
  #| (v) => v

///|
/// Safely cast JsValue to NavigationPrecommitController (checked with instanceof)
pub extern "js" fn NavigationPrecommitController::from_js_value_opt(
  v : JsValue,
) -> NavigationPrecommitController? =
  #| (v) => (v instanceof NavigationPrecommitController) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to NavigationPrecommitController (checked with instanceof)
pub extern "js" fn JsValue::as_navigation_precommit_controller(
  self : JsValue,
) -> NavigationPrecommitController? =
  #| (self) => (self instanceof NavigationPrecommitController) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to NavigationPrecommitController (unchecked)
pub extern "js" fn JsValue::to_navigation_precommit_controller(
  self : JsValue,
) -> NavigationPrecommitController =
  #| (self) => self

///|
pub extern "js" fn NavigationPrecommitController::redirect(
  self : NavigationPrecommitController,
  url : String,
) -> Unit =
  #| (self, url) => self.redirect(url)

///|
extern "js" fn NavigationPrecommitController::redirect_with_options_ffi(
  self : NavigationPrecommitController,
  url : String,
  options : JsValue,
) -> Unit =
  #| (self, url, options) => self.redirect(url, options)

///|
pub fn NavigationPrecommitController::redirect_with_options(
  self : NavigationPrecommitController,
  url : String,
  options : NavigationNavigateOptions,
) -> Unit {
  NavigationPrecommitController::redirect_with_options_ffi(
    self,
    url,
    options.to_js(),
  )
}

///|
pub extern "js" fn NavigationPrecommitController::add_handler(
  self : NavigationPrecommitController,
  handler : NavigationInterceptHandler,
) -> Unit =
  #| (self, handler) => self.addHandler(handler)

///|
/// NavigationDestination interface
pub type NavigationDestination

///|
pub extern "js" fn NavigationDestination::to_js_value(
  self : NavigationDestination,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to NavigationDestination (unchecked)
pub extern "js" fn NavigationDestination::from_js_value(
  v : JsValue,
) -> NavigationDestination =
  #| (v) => v

///|
/// Safely cast JsValue to NavigationDestination (checked with instanceof)
pub extern "js" fn NavigationDestination::from_js_value_opt(
  v : JsValue,
) -> NavigationDestination? =
  #| (v) => (v instanceof NavigationDestination) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to NavigationDestination (checked with instanceof)
pub extern "js" fn JsValue::as_navigation_destination(
  self : JsValue,
) -> NavigationDestination? =
  #| (self) => (self instanceof NavigationDestination) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to NavigationDestination (unchecked)
pub extern "js" fn JsValue::to_navigation_destination(
  self : JsValue,
) -> NavigationDestination =
  #| (self) => self

///|
pub extern "js" fn NavigationDestination::get_url(
  self : NavigationDestination,
) -> String =
  #| (self) => self.url

///|
pub extern "js" fn NavigationDestination::get_key(
  self : NavigationDestination,
) -> String =
  #| (self) => self.key

///|
pub extern "js" fn NavigationDestination::get_id(
  self : NavigationDestination,
) -> String =
  #| (self) => self.id

///|
pub extern "js" fn NavigationDestination::get_index(
  self : NavigationDestination,
) -> Int64 =
  #| (self) => (() => { const n = self.index; return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

///|
pub extern "js" fn NavigationDestination::get_same_document(
  self : NavigationDestination,
) -> Bool =
  #| (self) => self.sameDocument

///|
pub extern "js" fn NavigationDestination::get_state(
  self : NavigationDestination,
) -> JsValue =
  #| (self) => self.getState()

///|
/// NavigationCurrentEntryChangeEvent interface
pub type NavigationCurrentEntryChangeEvent

///|
pub extern "js" fn NavigationCurrentEntryChangeEvent::to_js_value(
  self : NavigationCurrentEntryChangeEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to NavigationCurrentEntryChangeEvent (unchecked)
pub extern "js" fn NavigationCurrentEntryChangeEvent::from_js_value(
  v : JsValue,
) -> NavigationCurrentEntryChangeEvent =
  #| (v) => v

///|
/// Safely cast JsValue to NavigationCurrentEntryChangeEvent (checked with instanceof)
pub extern "js" fn NavigationCurrentEntryChangeEvent::from_js_value_opt(
  v : JsValue,
) -> NavigationCurrentEntryChangeEvent? =
  #| (v) => (v instanceof NavigationCurrentEntryChangeEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to NavigationCurrentEntryChangeEvent (checked with instanceof)
pub extern "js" fn JsValue::as_navigation_current_entry_change_event(
  self : JsValue,
) -> NavigationCurrentEntryChangeEvent? =
  #| (self) => (self instanceof NavigationCurrentEntryChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to NavigationCurrentEntryChangeEvent (unchecked)
pub extern "js" fn JsValue::to_navigation_current_entry_change_event(
  self : JsValue,
) -> NavigationCurrentEntryChangeEvent =
  #| (self) => self

///|
pub extern "js" fn NavigationCurrentEntryChangeEvent::to_event(
  self : NavigationCurrentEntryChangeEvent,
) -> Event =
  #| (self) => self

///|
extern "js" fn NavigationCurrentEntryChangeEvent::new_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> NavigationCurrentEntryChangeEvent =
  #| (type_, event_init_dict) => new NavigationCurrentEntryChangeEvent(type_, event_init_dict)

///|
pub fn NavigationCurrentEntryChangeEvent::new(
  type_ : String,
  event_init_dict : NavigationCurrentEntryChangeEventInit,
) -> NavigationCurrentEntryChangeEvent {
  NavigationCurrentEntryChangeEvent::new_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn NavigationCurrentEntryChangeEvent::get_navigation_type(
  self : NavigationCurrentEntryChangeEvent,
) -> NavigationType? =
  #| (self) => (() => { const v = self.navigationType; return v == null ? undefined : ['push', 'replace', 'reload', 'traverse'].indexOf(v); })()

///|
pub extern "js" fn NavigationCurrentEntryChangeEvent::get_from(
  self : NavigationCurrentEntryChangeEvent,
) -> NavigationHistoryEntry =
  #| (self) => self.from

///|
/// PopStateEvent interface
pub type PopStateEvent

///|
pub extern "js" fn PopStateEvent::to_js_value(self : PopStateEvent) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PopStateEvent (unchecked)
pub extern "js" fn PopStateEvent::from_js_value(v : JsValue) -> PopStateEvent =
  #| (v) => v

///|
/// Safely cast JsValue to PopStateEvent (checked with instanceof)
pub extern "js" fn PopStateEvent::from_js_value_opt(
  v : JsValue,
) -> PopStateEvent? =
  #| (v) => (v instanceof PopStateEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PopStateEvent (checked with instanceof)
pub extern "js" fn JsValue::as_pop_state_event(
  self : JsValue,
) -> PopStateEvent? =
  #| (self) => (self instanceof PopStateEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PopStateEvent (unchecked)
pub extern "js" fn JsValue::to_pop_state_event(self : JsValue) -> PopStateEvent =
  #| (self) => self

///|
pub extern "js" fn PopStateEvent::to_event(self : PopStateEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn PopStateEvent::new(type_ : String) -> PopStateEvent =
  #| (type_) => new PopStateEvent(type_)

///|
extern "js" fn PopStateEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> PopStateEvent =
  #| (type_, event_init_dict) => new PopStateEvent(type_, event_init_dict)

///|
pub fn PopStateEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : PopStateEventInit,
) -> PopStateEvent {
  PopStateEvent::new_with_event_init_dict_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn PopStateEvent::get_state(self : PopStateEvent) -> JsValue =
  #| (self) => self.state

///|
pub extern "js" fn PopStateEvent::get_has_ua_visual_transition(
  self : PopStateEvent,
) -> Bool =
  #| (self) => self.hasUAVisualTransition

///|
/// HashChangeEvent interface
pub type HashChangeEvent

///|
pub extern "js" fn HashChangeEvent::to_js_value(
  self : HashChangeEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HashChangeEvent (unchecked)
pub extern "js" fn HashChangeEvent::from_js_value(
  v : JsValue,
) -> HashChangeEvent =
  #| (v) => v

///|
/// Safely cast JsValue to HashChangeEvent (checked with instanceof)
pub extern "js" fn HashChangeEvent::from_js_value_opt(
  v : JsValue,
) -> HashChangeEvent? =
  #| (v) => (v instanceof HashChangeEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HashChangeEvent (checked with instanceof)
pub extern "js" fn JsValue::as_hash_change_event(
  self : JsValue,
) -> HashChangeEvent? =
  #| (self) => (self instanceof HashChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HashChangeEvent (unchecked)
pub extern "js" fn JsValue::to_hash_change_event(
  self : JsValue,
) -> HashChangeEvent =
  #| (self) => self

///|
pub extern "js" fn HashChangeEvent::to_event(self : HashChangeEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn HashChangeEvent::new(type_ : String) -> HashChangeEvent =
  #| (type_) => new HashChangeEvent(type_)

///|
extern "js" fn HashChangeEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> HashChangeEvent =
  #| (type_, event_init_dict) => new HashChangeEvent(type_, event_init_dict)

///|
pub fn HashChangeEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : HashChangeEventInit,
) -> HashChangeEvent {
  HashChangeEvent::new_with_event_init_dict_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn HashChangeEvent::get_old_url(
  self : HashChangeEvent,
) -> String =
  #| (self) => self.oldURL

///|
pub extern "js" fn HashChangeEvent::get_new_url(
  self : HashChangeEvent,
) -> String =
  #| (self) => self.newURL

///|
/// PageSwapEvent interface
pub type PageSwapEvent

///|
pub extern "js" fn PageSwapEvent::to_js_value(self : PageSwapEvent) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PageSwapEvent (unchecked)
pub extern "js" fn PageSwapEvent::from_js_value(v : JsValue) -> PageSwapEvent =
  #| (v) => v

///|
/// Safely cast JsValue to PageSwapEvent (checked with instanceof)
pub extern "js" fn PageSwapEvent::from_js_value_opt(
  v : JsValue,
) -> PageSwapEvent? =
  #| (v) => (v instanceof PageSwapEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PageSwapEvent (checked with instanceof)
pub extern "js" fn JsValue::as_page_swap_event(
  self : JsValue,
) -> PageSwapEvent? =
  #| (self) => (self instanceof PageSwapEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PageSwapEvent (unchecked)
pub extern "js" fn JsValue::to_page_swap_event(self : JsValue) -> PageSwapEvent =
  #| (self) => self

///|
pub extern "js" fn PageSwapEvent::to_event(self : PageSwapEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn PageSwapEvent::new(type_ : String) -> PageSwapEvent =
  #| (type_) => new PageSwapEvent(type_)

///|
extern "js" fn PageSwapEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> PageSwapEvent =
  #| (type_, event_init_dict) => new PageSwapEvent(type_, event_init_dict)

///|
pub fn PageSwapEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : PageSwapEventInit,
) -> PageSwapEvent {
  PageSwapEvent::new_with_event_init_dict_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn PageSwapEvent::get_activation(
  self : PageSwapEvent,
) -> NavigationActivation? =
  #| (self) => (() => { const v = self.activation; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn PageSwapEvent::get_view_transition(
  self : PageSwapEvent,
) -> ViewTransition? =
  #| (self) => (() => { const v = self.viewTransition; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// PageRevealEvent interface
pub type PageRevealEvent

///|
pub extern "js" fn PageRevealEvent::to_js_value(
  self : PageRevealEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PageRevealEvent (unchecked)
pub extern "js" fn PageRevealEvent::from_js_value(
  v : JsValue,
) -> PageRevealEvent =
  #| (v) => v

///|
/// Safely cast JsValue to PageRevealEvent (checked with instanceof)
pub extern "js" fn PageRevealEvent::from_js_value_opt(
  v : JsValue,
) -> PageRevealEvent? =
  #| (v) => (v instanceof PageRevealEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PageRevealEvent (checked with instanceof)
pub extern "js" fn JsValue::as_page_reveal_event(
  self : JsValue,
) -> PageRevealEvent? =
  #| (self) => (self instanceof PageRevealEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PageRevealEvent (unchecked)
pub extern "js" fn JsValue::to_page_reveal_event(
  self : JsValue,
) -> PageRevealEvent =
  #| (self) => self

///|
pub extern "js" fn PageRevealEvent::to_event(self : PageRevealEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn PageRevealEvent::new(type_ : String) -> PageRevealEvent =
  #| (type_) => new PageRevealEvent(type_)

///|
extern "js" fn PageRevealEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> PageRevealEvent =
  #| (type_, event_init_dict) => new PageRevealEvent(type_, event_init_dict)

///|
pub fn PageRevealEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : PageRevealEventInit,
) -> PageRevealEvent {
  PageRevealEvent::new_with_event_init_dict_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn PageRevealEvent::get_view_transition(
  self : PageRevealEvent,
) -> ViewTransition? =
  #| (self) => (() => { const v = self.viewTransition; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// PageTransitionEvent interface
pub type PageTransitionEvent

///|
pub extern "js" fn PageTransitionEvent::to_js_value(
  self : PageTransitionEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PageTransitionEvent (unchecked)
pub extern "js" fn PageTransitionEvent::from_js_value(
  v : JsValue,
) -> PageTransitionEvent =
  #| (v) => v

///|
/// Safely cast JsValue to PageTransitionEvent (checked with instanceof)
pub extern "js" fn PageTransitionEvent::from_js_value_opt(
  v : JsValue,
) -> PageTransitionEvent? =
  #| (v) => (v instanceof PageTransitionEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PageTransitionEvent (checked with instanceof)
pub extern "js" fn JsValue::as_page_transition_event(
  self : JsValue,
) -> PageTransitionEvent? =
  #| (self) => (self instanceof PageTransitionEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PageTransitionEvent (unchecked)
pub extern "js" fn JsValue::to_page_transition_event(
  self : JsValue,
) -> PageTransitionEvent =
  #| (self) => self

///|
pub extern "js" fn PageTransitionEvent::to_event(
  self : PageTransitionEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn PageTransitionEvent::new(
  type_ : String,
) -> PageTransitionEvent =
  #| (type_) => new PageTransitionEvent(type_)

///|
extern "js" fn PageTransitionEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> PageTransitionEvent =
  #| (type_, event_init_dict) => new PageTransitionEvent(type_, event_init_dict)

///|
pub fn PageTransitionEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : PageTransitionEventInit,
) -> PageTransitionEvent {
  PageTransitionEvent::new_with_event_init_dict_ffi(
    type_,
    event_init_dict.to_js(),
  )
}

///|
pub extern "js" fn PageTransitionEvent::get_persisted(
  self : PageTransitionEvent,
) -> Bool =
  #| (self) => self.persisted

///|
/// BeforeUnloadEvent interface
pub type BeforeUnloadEvent

///|
pub extern "js" fn BeforeUnloadEvent::to_js_value(
  self : BeforeUnloadEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to BeforeUnloadEvent (unchecked)
pub extern "js" fn BeforeUnloadEvent::from_js_value(
  v : JsValue,
) -> BeforeUnloadEvent =
  #| (v) => v

///|
/// Safely cast JsValue to BeforeUnloadEvent (checked with instanceof)
pub extern "js" fn BeforeUnloadEvent::from_js_value_opt(
  v : JsValue,
) -> BeforeUnloadEvent? =
  #| (v) => (v instanceof BeforeUnloadEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to BeforeUnloadEvent (checked with instanceof)
pub extern "js" fn JsValue::as_before_unload_event(
  self : JsValue,
) -> BeforeUnloadEvent? =
  #| (self) => (self instanceof BeforeUnloadEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to BeforeUnloadEvent (unchecked)
pub extern "js" fn JsValue::to_before_unload_event(
  self : JsValue,
) -> BeforeUnloadEvent =
  #| (self) => self

///|
pub extern "js" fn BeforeUnloadEvent::to_event(
  self : BeforeUnloadEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn BeforeUnloadEvent::get_return_value(
  self : BeforeUnloadEvent,
) -> String =
  #| (self) => self.returnValue

///|
pub extern "js" fn BeforeUnloadEvent::set_return_value(
  self : BeforeUnloadEvent,
  value : String,
) -> Unit =
  #| (self, value) => { self.returnValue = value }

///|
/// NotRestoredReasonDetails interface
pub type NotRestoredReasonDetails

///|
pub extern "js" fn NotRestoredReasonDetails::to_js_value(
  self : NotRestoredReasonDetails,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to NotRestoredReasonDetails (unchecked)
pub extern "js" fn NotRestoredReasonDetails::from_js_value(
  v : JsValue,
) -> NotRestoredReasonDetails =
  #| (v) => v

///|
/// Safely cast JsValue to NotRestoredReasonDetails (checked with instanceof)
pub extern "js" fn NotRestoredReasonDetails::from_js_value_opt(
  v : JsValue,
) -> NotRestoredReasonDetails? =
  #| (v) => (v instanceof NotRestoredReasonDetails) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to NotRestoredReasonDetails (checked with instanceof)
pub extern "js" fn JsValue::as_not_restored_reason_details(
  self : JsValue,
) -> NotRestoredReasonDetails? =
  #| (self) => (self instanceof NotRestoredReasonDetails) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to NotRestoredReasonDetails (unchecked)
pub extern "js" fn JsValue::to_not_restored_reason_details(
  self : JsValue,
) -> NotRestoredReasonDetails =
  #| (self) => self

///|
pub extern "js" fn NotRestoredReasonDetails::get_reason(
  self : NotRestoredReasonDetails,
) -> String =
  #| (self) => self.reason

///|
pub extern "js" fn NotRestoredReasonDetails::to_json(
  self : NotRestoredReasonDetails,
) -> JsValue =
  #| (self) => self.toJSON()

///|
/// NotRestoredReasons interface
pub type NotRestoredReasons

///|
pub extern "js" fn NotRestoredReasons::to_js_value(
  self : NotRestoredReasons,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to NotRestoredReasons (unchecked)
pub extern "js" fn NotRestoredReasons::from_js_value(
  v : JsValue,
) -> NotRestoredReasons =
  #| (v) => v

///|
/// Safely cast JsValue to NotRestoredReasons (checked with instanceof)
pub extern "js" fn NotRestoredReasons::from_js_value_opt(
  v : JsValue,
) -> NotRestoredReasons? =
  #| (v) => (v instanceof NotRestoredReasons) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to NotRestoredReasons (checked with instanceof)
pub extern "js" fn JsValue::as_not_restored_reasons(
  self : JsValue,
) -> NotRestoredReasons? =
  #| (self) => (self instanceof NotRestoredReasons) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to NotRestoredReasons (unchecked)
pub extern "js" fn JsValue::to_not_restored_reasons(
  self : JsValue,
) -> NotRestoredReasons =
  #| (self) => self

///|
pub extern "js" fn NotRestoredReasons::get_src(
  self : NotRestoredReasons,
) -> String? =
  #| (self) => (self.src) ?? undefined

///|
pub extern "js" fn NotRestoredReasons::get_id(
  self : NotRestoredReasons,
) -> String? =
  #| (self) => (self.id) ?? undefined

///|
pub extern "js" fn NotRestoredReasons::get_name(
  self : NotRestoredReasons,
) -> String? =
  #| (self) => (self.name) ?? undefined

///|
pub extern "js" fn NotRestoredReasons::get_url(
  self : NotRestoredReasons,
) -> String? =
  #| (self) => (self.url) ?? undefined

///|
pub extern "js" fn NotRestoredReasons::get_reasons(
  self : NotRestoredReasons,
) -> Array[NotRestoredReasonDetails] =
  #| (self) => self.reasons

///|
pub extern "js" fn NotRestoredReasons::get_children(
  self : NotRestoredReasons,
) -> Array[NotRestoredReasons] =
  #| (self) => self.children

///|
pub extern "js" fn NotRestoredReasons::to_json(
  self : NotRestoredReasons,
) -> JsValue =
  #| (self) => self.toJSON()

///|
/// ErrorEvent interface
pub type ErrorEvent

///|
pub extern "js" fn ErrorEvent::to_js_value(self : ErrorEvent) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ErrorEvent (unchecked)
pub extern "js" fn ErrorEvent::from_js_value(v : JsValue) -> ErrorEvent =
  #| (v) => v

///|
/// Safely cast JsValue to ErrorEvent (checked with instanceof)
pub extern "js" fn ErrorEvent::from_js_value_opt(v : JsValue) -> ErrorEvent? =
  #| (v) => (v instanceof ErrorEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ErrorEvent (checked with instanceof)
pub extern "js" fn JsValue::as_error_event(self : JsValue) -> ErrorEvent? =
  #| (self) => (self instanceof ErrorEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ErrorEvent (unchecked)
pub extern "js" fn JsValue::to_error_event(self : JsValue) -> ErrorEvent =
  #| (self) => self

///|
pub extern "js" fn ErrorEvent::to_event(self : ErrorEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn ErrorEvent::new(type_ : String) -> ErrorEvent =
  #| (type_) => new ErrorEvent(type_)

///|
extern "js" fn ErrorEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> ErrorEvent =
  #| (type_, event_init_dict) => new ErrorEvent(type_, event_init_dict)

///|
pub fn ErrorEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : ErrorEventInit,
) -> ErrorEvent {
  ErrorEvent::new_with_event_init_dict_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn ErrorEvent::get_message(self : ErrorEvent) -> String =
  #| (self) => self.message

///|
pub extern "js" fn ErrorEvent::get_filename(self : ErrorEvent) -> String =
  #| (self) => self.filename

///|
pub extern "js" fn ErrorEvent::get_lineno(self : ErrorEvent) -> Int =
  #| (self) => self.lineno

///|
pub extern "js" fn ErrorEvent::get_colno(self : ErrorEvent) -> Int =
  #| (self) => self.colno

///|
pub extern "js" fn ErrorEvent::get_error(self : ErrorEvent) -> JsValue =
  #| (self) => self.error

///|
/// PromiseRejectionEvent interface
pub type PromiseRejectionEvent

///|
pub extern "js" fn PromiseRejectionEvent::to_js_value(
  self : PromiseRejectionEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PromiseRejectionEvent (unchecked)
pub extern "js" fn PromiseRejectionEvent::from_js_value(
  v : JsValue,
) -> PromiseRejectionEvent =
  #| (v) => v

///|
/// Safely cast JsValue to PromiseRejectionEvent (checked with instanceof)
pub extern "js" fn PromiseRejectionEvent::from_js_value_opt(
  v : JsValue,
) -> PromiseRejectionEvent? =
  #| (v) => (v instanceof PromiseRejectionEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PromiseRejectionEvent (checked with instanceof)
pub extern "js" fn JsValue::as_promise_rejection_event(
  self : JsValue,
) -> PromiseRejectionEvent? =
  #| (self) => (self instanceof PromiseRejectionEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PromiseRejectionEvent (unchecked)
pub extern "js" fn JsValue::to_promise_rejection_event(
  self : JsValue,
) -> PromiseRejectionEvent =
  #| (self) => self

///|
pub extern "js" fn PromiseRejectionEvent::to_event(
  self : PromiseRejectionEvent,
) -> Event =
  #| (self) => self

///|
extern "js" fn PromiseRejectionEvent::new_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> PromiseRejectionEvent =
  #| (type_, event_init_dict) => new PromiseRejectionEvent(type_, event_init_dict)

///|
pub fn PromiseRejectionEvent::new(
  type_ : String,
  event_init_dict : PromiseRejectionEventInit,
) -> PromiseRejectionEvent {
  PromiseRejectionEvent::new_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn PromiseRejectionEvent::get_promise(
  self : PromiseRejectionEvent,
) -> JsValue =
  #| (self) => self.promise

///|
pub extern "js" fn PromiseRejectionEvent::get_reason(
  self : PromiseRejectionEvent,
) -> JsValue =
  #| (self) => self.reason

///|
/// DOMParser interface
pub type DOMParser

///|
pub extern "js" fn DOMParser::to_js_value(self : DOMParser) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to DOMParser (unchecked)
pub extern "js" fn DOMParser::from_js_value(v : JsValue) -> DOMParser =
  #| (v) => v

///|
/// Safely cast JsValue to DOMParser (checked with instanceof)
pub extern "js" fn DOMParser::from_js_value_opt(v : JsValue) -> DOMParser? =
  #| (v) => (v instanceof DOMParser) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to DOMParser (checked with instanceof)
pub extern "js" fn JsValue::as_dom_parser(self : JsValue) -> DOMParser? =
  #| (self) => (self instanceof DOMParser) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to DOMParser (unchecked)
pub extern "js" fn JsValue::to_dom_parser(self : JsValue) -> DOMParser =
  #| (self) => self

///|
pub extern "js" fn DOMParser::new() -> DOMParser =
  #| () => new DOMParser()

///|
pub extern "js" fn DOMParser::parse_from_string(
  self : DOMParser,
  string : TrustedHTMLOrString,
  type_ : DOMParserSupportedType,
) -> Document =
  #| (self, string, type_) => self.parseFromString(string, ['text/html', 'text/xml', 'application/xml', 'application/xhtml+xml', 'image/svg+xml'][type_])

///|
/// XMLSerializer interface
pub type XMLSerializer

///|
pub extern "js" fn XMLSerializer::to_js_value(self : XMLSerializer) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XMLSerializer (unchecked)
pub extern "js" fn XMLSerializer::from_js_value(v : JsValue) -> XMLSerializer =
  #| (v) => v

///|
/// Safely cast JsValue to XMLSerializer (checked with instanceof)
pub extern "js" fn XMLSerializer::from_js_value_opt(
  v : JsValue,
) -> XMLSerializer? =
  #| (v) => (v instanceof XMLSerializer) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XMLSerializer (checked with instanceof)
pub extern "js" fn JsValue::as_xml_serializer(self : JsValue) -> XMLSerializer? =
  #| (self) => (self instanceof XMLSerializer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XMLSerializer (unchecked)
pub extern "js" fn JsValue::to_xml_serializer(self : JsValue) -> XMLSerializer =
  #| (self) => self

///|
pub extern "js" fn XMLSerializer::new() -> XMLSerializer =
  #| () => new XMLSerializer()

///|
pub extern "js" fn XMLSerializer::serialize_to_string(
  self : XMLSerializer,
  root : Node,
) -> String =
  #| (self, root) => self.serializeToString(root)

///|
/// Navigator interface
pub type Navigator

///|
pub extern "js" fn Navigator::to_js_value(self : Navigator) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Navigator (unchecked)
pub extern "js" fn Navigator::from_js_value(v : JsValue) -> Navigator =
  #| (v) => v

///|
/// Safely cast JsValue to Navigator (checked with instanceof)
pub extern "js" fn Navigator::from_js_value_opt(v : JsValue) -> Navigator? =
  #| (v) => (v instanceof Navigator) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Navigator (checked with instanceof)
pub extern "js" fn JsValue::as_navigator(self : JsValue) -> Navigator? =
  #| (self) => (self instanceof Navigator) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Navigator (unchecked)
pub extern "js" fn JsValue::to_navigator(self : JsValue) -> Navigator =
  #| (self) => self

///|
pub extern "js" fn Navigator::get_clipboard(self : Navigator) -> Clipboard =
  #| (self) => self.clipboard

///|
pub extern "js" fn Navigator::get_scheduling(self : Navigator) -> Scheduling =
  #| (self) => self.scheduling

///|
pub extern "js" fn Navigator::get_bluetooth(self : Navigator) -> Bluetooth =
  #| (self) => self.bluetooth

///|
pub extern "js" fn Navigator::get_media_session(
  self : Navigator,
) -> MediaSession =
  #| (self) => self.mediaSession

///|
pub extern "js" fn Navigator::get_wake_lock(self : Navigator) -> WakeLock =
  #| (self) => self.wakeLock

///|
pub extern "js" fn Navigator::get_serial(self : Navigator) -> Serial =
  #| (self) => self.serial

///|
pub extern "js" fn Navigator::request_midi_access(
  self : Navigator,
) -> Promise[MIDIAccess] =
  #| (self) => self.requestMIDIAccess()

///|
extern "js" fn Navigator::request_midi_access_with_options_ffi(
  self : Navigator,
  options : JsValue,
) -> Promise[MIDIAccess] =
  #| (self, options) => self.requestMIDIAccess(options)

///|
pub fn Navigator::request_midi_access_with_options(
  self : Navigator,
  options : MIDIOptions,
) -> Promise[MIDIAccess] {
  Navigator::request_midi_access_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn Navigator::vibrate(
  self : Navigator,
  pattern : VibratePattern,
) -> Bool =
  #| (self, pattern) => self.vibrate(pattern)

///|
pub extern "js" fn Navigator::get_media_devices(
  self : Navigator,
) -> MediaDevices =
  #| (self) => self.mediaDevices

///|
pub extern "js" fn Navigator::get_user_activation(
  self : Navigator,
) -> UserActivation =
  #| (self) => self.userActivation

///|
pub extern "js" fn Navigator::get_audio_session(
  self : Navigator,
) -> AudioSession =
  #| (self) => self.audioSession

///|
pub extern "js" fn Navigator::request_media_key_system_access(
  self : Navigator,
  key_system : String,
  supported_configurations : Array[MediaKeySystemConfiguration],
) -> Promise[MediaKeySystemAccess] =
  #| (self, key_system, supported_configurations) => self.requestMediaKeySystemAccess(key_system, supported_configurations)

///|
pub extern "js" fn Navigator::get_login(self : Navigator) -> NavigatorLogin =
  #| (self) => self.login

///|
pub extern "js" fn Navigator::get_media_capabilities(
  self : Navigator,
) -> MediaCapabilities =
  #| (self) => self.mediaCapabilities

///|
pub extern "js" fn Navigator::get_window_controls_overlay(
  self : Navigator,
) -> WindowControlsOverlay =
  #| (self) => self.windowControlsOverlay

///|
pub extern "js" fn Navigator::get_virtual_keyboard(
  self : Navigator,
) -> VirtualKeyboard =
  #| (self) => self.virtualKeyboard

///|
pub extern "js" fn Navigator::get_keyboard(self : Navigator) -> Keyboard =
  #| (self) => self.keyboard

///|
pub extern "js" fn Navigator::get_ink(self : Navigator) -> Ink =
  #| (self) => self.ink

///|
pub extern "js" fn Navigator::get_contacts(self : Navigator) -> ContactsManager =
  #| (self) => self.contacts

///|
pub extern "js" fn Navigator::get_usb(self : Navigator) -> USB =
  #| (self) => self.usb

///|
pub extern "js" fn Navigator::get_device_posture(
  self : Navigator,
) -> DevicePosture =
  #| (self) => self.devicePosture

///|
pub extern "js" fn Navigator::get_xr(self : Navigator) -> XRSystem =
  #| (self) => self.xr

///|
pub extern "js" fn Navigator::get_hid(self : Navigator) -> HID =
  #| (self) => self.hid

///|
extern "js" fn Navigator::query_handwriting_recognizer_ffi(
  self : Navigator,
  constraint : JsValue,
) -> Promise[HandwritingRecognizerQueryResult?] =
  #| (self, constraint) => self.queryHandwritingRecognizer(constraint)

///|
pub fn Navigator::query_handwriting_recognizer(
  self : Navigator,
  constraint : HandwritingModelConstraint,
) -> Promise[HandwritingRecognizerQueryResult?] {
  Navigator::query_handwriting_recognizer_ffi(self, constraint.to_js())
}

///|
extern "js" fn Navigator::create_handwriting_recognizer_ffi(
  self : Navigator,
  constraint : JsValue,
) -> Promise[HandwritingRecognizer] =
  #| (self, constraint) => self.createHandwritingRecognizer(constraint)

///|
pub fn Navigator::create_handwriting_recognizer(
  self : Navigator,
  constraint : HandwritingModelConstraint,
) -> Promise[HandwritingRecognizer] {
  Navigator::create_handwriting_recognizer_ffi(self, constraint.to_js())
}

///|
pub extern "js" fn Navigator::get_installed_related_apps(
  self : Navigator,
) -> Promise[Array[RelatedApplication]] =
  #| (self) => self.getInstalledRelatedApps()

///|
pub extern "js" fn Navigator::get_battery(
  self : Navigator,
) -> Promise[BatteryManager] =
  #| (self) => self.getBattery()

///|
extern "js" fn Navigator::join_ad_interest_group_ffi(
  self : Navigator,
  group : JsValue,
) -> Promise[Unit] =
  #| (self, group) => self.joinAdInterestGroup(group)

///|
pub fn Navigator::join_ad_interest_group(
  self : Navigator,
  group : AuctionAdInterestGroup,
) -> Promise[Unit] {
  Navigator::join_ad_interest_group_ffi(self, group.to_js())
}

///|
pub extern "js" fn Navigator::leave_ad_interest_group(
  self : Navigator,
) -> Promise[Unit] =
  #| (self) => self.leaveAdInterestGroup()

///|
extern "js" fn Navigator::leave_ad_interest_group_with_group_ffi(
  self : Navigator,
  group : JsValue,
) -> Promise[Unit] =
  #| (self, group) => self.leaveAdInterestGroup(group)

///|
pub fn Navigator::leave_ad_interest_group_with_group(
  self : Navigator,
  group : AuctionAdInterestGroupKey,
) -> Promise[Unit] {
  Navigator::leave_ad_interest_group_with_group_ffi(self, group.to_js())
}

///|
pub extern "js" fn Navigator::clear_origin_joined_ad_interest_groups(
  self : Navigator,
  owner : String,
) -> Promise[Unit] =
  #| (self, owner) => self.clearOriginJoinedAdInterestGroups(owner)

///|
pub extern "js" fn Navigator::clear_origin_joined_ad_interest_groups_with_interest_groups_to_keep(
  self : Navigator,
  owner : String,
  interest_groups_to_keep : Array[String],
) -> Promise[Unit] =
  #| (self, owner, interest_groups_to_keep) => self.clearOriginJoinedAdInterestGroups(owner, interest_groups_to_keep)

///|
extern "js" fn Navigator::run_ad_auction_ffi(
  self : Navigator,
  config : JsValue,
) -> Promise[StringOrFencedFrameConfig] =
  #| (self, config) => self.runAdAuction(config)

///|
pub fn Navigator::run_ad_auction(
  self : Navigator,
  config : AuctionAdConfig,
) -> Promise[StringOrFencedFrameConfig] {
  Navigator::run_ad_auction_ffi(self, config.to_js())
}

///|
pub extern "js" fn Navigator::get_deprecated_run_ad_auction_enforces_k_anonymity(
  self : Navigator,
) -> Bool =
  #| (self) => self.deprecatedRunAdAuctionEnforcesKAnonymity

///|
pub extern "js" fn Navigator::can_load_ad_auction_fenced_frame(
  self : Navigator,
) -> Bool =
  #| (self) => self.canLoadAdAuctionFencedFrame()

///|
pub extern "js" fn Navigator::get_interest_group_ad_auction_data(
  self : Navigator,
) -> Promise[AdAuctionData] =
  #| (self) => self.getInterestGroupAdAuctionData().then(v => ({
  #|   requestId: v.requestId,
  #|   request: (v.request === undefined ? { $tag: 0 } : { $tag: 1, _0: v.request }),
  #|   requests: (v.requests === undefined ? { $tag: 0 } : { $tag: 1, _0: v.requests })
  #| }))

///|
extern "js" fn Navigator::get_interest_group_ad_auction_data_with_config_ffi(
  self : Navigator,
  config : JsValue,
) -> Promise[AdAuctionData] =
  #| (self, config) => self.getInterestGroupAdAuctionData(config).then(v => ({
  #|   requestId: v.requestId,
  #|   request: (v.request === undefined ? { $tag: 0 } : { $tag: 1, _0: v.request }),
  #|   requests: (v.requests === undefined ? { $tag: 0 } : { $tag: 1, _0: v.requests })
  #| }))

///|
pub fn Navigator::get_interest_group_ad_auction_data_with_config(
  self : Navigator,
  config : AdAuctionDataConfig,
) -> Promise[AdAuctionData] {
  Navigator::get_interest_group_ad_auction_data_with_config_ffi(
    self,
    config.to_js(),
  )
}

///|
pub extern "js" fn Navigator::create_auction_nonce(
  self : Navigator,
) -> Promise[String] =
  #| (self) => self.createAuctionNonce()

///|
pub extern "js" fn Navigator::update_ad_interest_groups(
  self : Navigator,
) -> Unit =
  #| (self) => self.updateAdInterestGroups()

///|
pub extern "js" fn Navigator::get_protected_audience(
  self : Navigator,
) -> ProtectedAudience =
  #| (self) => self.protectedAudience

///|
pub extern "js" fn Navigator::get_service_worker(
  self : Navigator,
) -> ServiceWorkerContainer =
  #| (self) => self.serviceWorker

///|
pub extern "js" fn Navigator::get_gamepads(self : Navigator) -> Array[JsValue] =
  #| (self) => self.getGamepads()

///|
pub extern "js" fn Navigator::get_credentials(
  self : Navigator,
) -> CredentialsContainer =
  #| (self) => self.credentials

///|
pub extern "js" fn Navigator::get_preferences(
  self : Navigator,
) -> PreferenceManager =
  #| (self) => self.preferences

///|
pub extern "js" fn Navigator::deprecated_replace_in_urn(
  self : Navigator,
  urn_or_config : UrnOrConfig,
  replacements : JsValue,
) -> Promise[Unit] =
  #| (self, urn_or_config, replacements) => self.deprecatedReplaceInURN(urn_or_config, replacements)

///|
pub extern "js" fn Navigator::deprecated_ur_nto_url(
  self : Navigator,
  urn_or_config : UrnOrConfig,
) -> Promise[String] =
  #| (self, urn_or_config) => self.deprecatedURNtoURL(urn_or_config)

///|
pub extern "js" fn Navigator::deprecated_ur_nto_url_with_send_reports(
  self : Navigator,
  urn_or_config : UrnOrConfig,
  send_reports : Bool,
) -> Promise[String] =
  #| (self, urn_or_config, send_reports) => self.deprecatedURNtoURL(urn_or_config, send_reports)

///|
pub extern "js" fn Navigator::ad_auction_components(
  self : Navigator,
  num_ad_components : Int,
) -> Array[String] =
  #| (self, num_ad_components) => self.adAuctionComponents(num_ad_components)

///|
pub extern "js" fn Navigator::get_permissions(self : Navigator) -> Permissions =
  #| (self) => self.permissions

///|
pub extern "js" fn Navigator::get_attribution(self : Navigator) -> Attribution =
  #| (self) => self.attribution

///|
pub extern "js" fn Navigator::send_beacon(
  self : Navigator,
  url : String,
) -> Bool =
  #| (self, url) => self.sendBeacon(url)

///|
pub extern "js" fn Navigator::send_beacon_with_data(
  self : Navigator,
  url : String,
  data : BodyInit?,
) -> Bool =
  #| (self, url, data) => self.sendBeacon(url, (data.$tag === 1 ? data._0 : null))

///|
pub extern "js" fn Navigator::get_max_touch_points(self : Navigator) -> Int =
  #| (self) => self.maxTouchPoints

///|
pub extern "js" fn Navigator::share(self : Navigator) -> Promise[Unit] =
  #| (self) => self.share()

///|
extern "js" fn Navigator::share_with_data_ffi(
  self : Navigator,
  data : JsValue,
) -> Promise[Unit] =
  #| (self, data) => self.share(data)

///|
pub fn Navigator::share_with_data(
  self : Navigator,
  data : ShareData,
) -> Promise[Unit] {
  Navigator::share_with_data_ffi(self, data.to_js())
}

///|
pub extern "js" fn Navigator::can_share(self : Navigator) -> Bool =
  #| (self) => self.canShare()

///|
extern "js" fn Navigator::can_share_with_data_ffi(
  self : Navigator,
  data : JsValue,
) -> Bool =
  #| (self, data) => self.canShare(data)

///|
pub fn Navigator::can_share_with_data(
  self : Navigator,
  data : ShareData,
) -> Bool {
  Navigator::can_share_with_data_ffi(self, data.to_js())
}

///|
pub extern "js" fn Navigator::get_managed(
  self : Navigator,
) -> NavigatorManagedData =
  #| (self) => self.managed

///|
pub extern "js" fn Navigator::get_presentation(
  self : Navigator,
) -> Presentation =
  #| (self) => self.presentation

///|
pub extern "js" fn Navigator::get_autoplay_policy(
  self : Navigator,
  type_ : AutoplayPolicyMediaType,
) -> AutoplayPolicy =
  #| (self, type_) => self.getAutoplayPolicy(['mediaelement', 'audiocontext'][type_])

///|
pub extern "js" fn Navigator::get_autoplay_policy_with_element_html_media_element(
  self : Navigator,
  element : HTMLMediaElement,
) -> AutoplayPolicy =
  #| (self, element) => self.getAutoplayPolicy(element)

///|
pub extern "js" fn Navigator::get_autoplay_policy_with_context_audio_context(
  self : Navigator,
  context : AudioContext,
) -> AutoplayPolicy =
  #| (self, context) => self.getAutoplayPolicy(context)

///|
pub extern "js" fn Navigator::get_geolocation(self : Navigator) -> Geolocation =
  #| (self) => self.geolocation

///|
pub extern "js" fn Navigator::get_locks(self : Navigator) -> LockManager =
  #| (self) => self.locks

///|
pub extern "js" fn Navigator::set_app_badge(self : Navigator) -> Promise[Unit] =
  #| (self) => self.setAppBadge()

///|
pub extern "js" fn Navigator::set_app_badge_with_contents(
  self : Navigator,
  contents : Int64,
) -> Promise[Unit] =
  #| (self, contents) => self.setAppBadge((contents.hi * 4294967296 + contents.lo))

///|
pub extern "js" fn Navigator::clear_app_badge(
  self : Navigator,
) -> Promise[Unit] =
  #| (self) => self.clearAppBadge()

///|
pub extern "js" fn Navigator::get_user_agent_data(
  self : Navigator,
) -> NavigatorUAData =
  #| (self) => self.userAgentData

///|
pub extern "js" fn Navigator::get_app_code_name(self : Navigator) -> String =
  #| (self) => self.appCodeName

///|
pub extern "js" fn Navigator::get_app_name(self : Navigator) -> String =
  #| (self) => self.appName

///|
pub extern "js" fn Navigator::get_app_version(self : Navigator) -> String =
  #| (self) => self.appVersion

///|
pub extern "js" fn Navigator::get_platform(self : Navigator) -> String =
  #| (self) => self.platform

///|
pub extern "js" fn Navigator::get_product(self : Navigator) -> String =
  #| (self) => self.product

///|
pub extern "js" fn Navigator::get_product_sub(self : Navigator) -> String =
  #| (self) => self.productSub

///|
pub extern "js" fn Navigator::get_user_agent(self : Navigator) -> String =
  #| (self) => self.userAgent

///|
pub extern "js" fn Navigator::get_vendor(self : Navigator) -> String =
  #| (self) => self.vendor

///|
pub extern "js" fn Navigator::get_vendor_sub(self : Navigator) -> String =
  #| (self) => self.vendorSub

///|
pub extern "js" fn Navigator::taint_enabled(self : Navigator) -> Bool =
  #| (self) => self.taintEnabled()

///|
pub extern "js" fn Navigator::get_oscpu(self : Navigator) -> String =
  #| (self) => self.oscpu

///|
pub extern "js" fn Navigator::get_language(self : Navigator) -> String =
  #| (self) => self.language

///|
pub extern "js" fn Navigator::get_languages(self : Navigator) -> Array[String] =
  #| (self) => self.languages

///|
pub extern "js" fn Navigator::get_on_line(self : Navigator) -> Bool =
  #| (self) => self.onLine

///|
pub extern "js" fn Navigator::register_protocol_handler(
  self : Navigator,
  scheme : String,
  url : String,
) -> Unit =
  #| (self, scheme, url) => self.registerProtocolHandler(scheme, url)

///|
pub extern "js" fn Navigator::unregister_protocol_handler(
  self : Navigator,
  scheme : String,
  url : String,
) -> Unit =
  #| (self, scheme, url) => self.unregisterProtocolHandler(scheme, url)

///|
pub extern "js" fn Navigator::get_cookie_enabled(self : Navigator) -> Bool =
  #| (self) => self.cookieEnabled

///|
pub extern "js" fn Navigator::get_plugins(self : Navigator) -> PluginArray =
  #| (self) => self.plugins

///|
pub extern "js" fn Navigator::get_mime_types(self : Navigator) -> MimeTypeArray =
  #| (self) => self.mimeTypes

///|
pub extern "js" fn Navigator::java_enabled(self : Navigator) -> Bool =
  #| (self) => self.javaEnabled()

///|
pub extern "js" fn Navigator::get_pdf_viewer_enabled(self : Navigator) -> Bool =
  #| (self) => self.pdfViewerEnabled

///|
pub extern "js" fn Navigator::get_hardware_concurrency(
  self : Navigator,
) -> Int64 =
  #| (self) => (() => { const n = self.hardwareConcurrency; return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

///|
pub extern "js" fn Navigator::get_ml(self : Navigator) -> ML =
  #| (self) => self.ml

///|
pub extern "js" fn Navigator::get_connection(
  self : Navigator,
) -> NetworkInformation =
  #| (self) => self.connection

///|
pub extern "js" fn Navigator::get_storage(self : Navigator) -> StorageManager =
  #| (self) => self.storage

///|
pub extern "js" fn Navigator::get_device_memory(self : Navigator) -> Double =
  #| (self) => self.deviceMemory

///|
pub extern "js" fn Navigator::get_webdriver(self : Navigator) -> Bool =
  #| (self) => self.webdriver

///|
pub extern "js" fn Navigator::get_gpu(self : Navigator) -> GPU =
  #| (self) => self.gpu

///|
pub extern "js" fn Navigator::get_storage_buckets(
  self : Navigator,
) -> StorageBucketManager =
  #| (self) => self.storageBuckets

///|
pub extern "js" fn Navigator::get_global_privacy_control(
  self : Navigator,
) -> Bool =
  #| (self) => self.globalPrivacyControl

///|
pub extern "js" fn Navigator::vibrate_with_int(
  self : Navigator,
  pattern : Int,
) -> Bool =
  #| (self, pattern) => self.vibrate(pattern)

///|
pub extern "js" fn Navigator::vibrate_with_array_of_int(
  self : Navigator,
  pattern : Array[Int],
) -> Bool =
  #| (self, pattern) => self.vibrate(pattern)

///|
pub extern "js" fn Navigator::deprecated_replace_in_urn_with_string(
  self : Navigator,
  urn_or_config : String,
  replacements : JsValue,
) -> Promise[Unit] =
  #| (self, urn_or_config, replacements) => self.deprecatedReplaceInURN(urn_or_config, replacements)

///|
pub extern "js" fn Navigator::deprecated_replace_in_urn_with_fenced_frame_config(
  self : Navigator,
  urn_or_config : FencedFrameConfig,
  replacements : JsValue,
) -> Promise[Unit] =
  #| (self, urn_or_config, replacements) => self.deprecatedReplaceInURN(urn_or_config, replacements)

///|
pub extern "js" fn Navigator::deprecated_ur_nto_url_with_string(
  self : Navigator,
  urn_or_config : String,
  send_reports : Bool,
) -> Promise[String] =
  #| (self, urn_or_config, send_reports) => self.deprecatedURNtoURL(urn_or_config, send_reports)

///|
pub extern "js" fn Navigator::deprecated_ur_nto_url_with_fenced_frame_config(
  self : Navigator,
  urn_or_config : FencedFrameConfig,
  send_reports : Bool,
) -> Promise[String] =
  #| (self, urn_or_config, send_reports) => self.deprecatedURNtoURL(urn_or_config, send_reports)

///|
/// PluginArray interface
pub type PluginArray

///|
pub extern "js" fn PluginArray::to_js_value(self : PluginArray) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PluginArray (unchecked)
pub extern "js" fn PluginArray::from_js_value(v : JsValue) -> PluginArray =
  #| (v) => v

///|
/// Safely cast JsValue to PluginArray (checked with instanceof)
pub extern "js" fn PluginArray::from_js_value_opt(v : JsValue) -> PluginArray? =
  #| (v) => (v instanceof PluginArray) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PluginArray (checked with instanceof)
pub extern "js" fn JsValue::as_plugin_array(self : JsValue) -> PluginArray? =
  #| (self) => (self instanceof PluginArray) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PluginArray (unchecked)
pub extern "js" fn JsValue::to_plugin_array(self : JsValue) -> PluginArray =
  #| (self) => self

///|
pub extern "js" fn PluginArray::refresh(self : PluginArray) -> Unit =
  #| (self) => self.refresh()

///|
pub extern "js" fn PluginArray::get_length(self : PluginArray) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn PluginArray::item(
  self : PluginArray,
  index : Int,
) -> Plugin? =
  #| (self, index) => (() => { const v = self.item(index); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
#alias("_[_]")
pub extern "js" fn PluginArray::get(self : PluginArray, index : Int) -> Plugin? =
  #| (self, index) => (() => { const v = self[index]; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn PluginArray::named_item(
  self : PluginArray,
  name : String,
) -> Plugin? =
  #| (self, name) => (() => { const v = self.namedItem(name); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn PluginArray::get_named(
  self : PluginArray,
  name : String,
) -> Plugin? =
  #| (self, name) => (() => { const v = self[name]; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// MimeTypeArray interface
pub type MimeTypeArray

///|
pub extern "js" fn MimeTypeArray::to_js_value(self : MimeTypeArray) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to MimeTypeArray (unchecked)
pub extern "js" fn MimeTypeArray::from_js_value(v : JsValue) -> MimeTypeArray =
  #| (v) => v

///|
/// Safely cast JsValue to MimeTypeArray (checked with instanceof)
pub extern "js" fn MimeTypeArray::from_js_value_opt(
  v : JsValue,
) -> MimeTypeArray? =
  #| (v) => (v instanceof MimeTypeArray) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MimeTypeArray (checked with instanceof)
pub extern "js" fn JsValue::as_mime_type_array(
  self : JsValue,
) -> MimeTypeArray? =
  #| (self) => (self instanceof MimeTypeArray) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MimeTypeArray (unchecked)
pub extern "js" fn JsValue::to_mime_type_array(self : JsValue) -> MimeTypeArray =
  #| (self) => self

///|
pub extern "js" fn MimeTypeArray::get_length(self : MimeTypeArray) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn MimeTypeArray::item(
  self : MimeTypeArray,
  index : Int,
) -> MimeType? =
  #| (self, index) => (() => { const v = self.item(index); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
#alias("_[_]")
pub extern "js" fn MimeTypeArray::get(
  self : MimeTypeArray,
  index : Int,
) -> MimeType? =
  #| (self, index) => (() => { const v = self[index]; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn MimeTypeArray::named_item(
  self : MimeTypeArray,
  name : String,
) -> MimeType? =
  #| (self, name) => (() => { const v = self.namedItem(name); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn MimeTypeArray::get_named(
  self : MimeTypeArray,
  name : String,
) -> MimeType? =
  #| (self, name) => (() => { const v = self[name]; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// Plugin interface
pub type Plugin

///|
pub extern "js" fn Plugin::to_js_value(self : Plugin) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Plugin (unchecked)
pub extern "js" fn Plugin::from_js_value(v : JsValue) -> Plugin =
  #| (v) => v

///|
/// Safely cast JsValue to Plugin (checked with instanceof)
pub extern "js" fn Plugin::from_js_value_opt(v : JsValue) -> Plugin? =
  #| (v) => (v instanceof Plugin) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Plugin (checked with instanceof)
pub extern "js" fn JsValue::as_plugin(self : JsValue) -> Plugin? =
  #| (self) => (self instanceof Plugin) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Plugin (unchecked)
pub extern "js" fn JsValue::to_plugin(self : JsValue) -> Plugin =
  #| (self) => self

///|
pub extern "js" fn Plugin::get_name(self : Plugin) -> String =
  #| (self) => self.name

///|
pub extern "js" fn Plugin::get_description(self : Plugin) -> String =
  #| (self) => self.description

///|
pub extern "js" fn Plugin::get_filename(self : Plugin) -> String =
  #| (self) => self.filename

///|
pub extern "js" fn Plugin::get_length(self : Plugin) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn Plugin::item(self : Plugin, index : Int) -> MimeType? =
  #| (self, index) => (() => { const v = self.item(index); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
#alias("_[_]")
pub extern "js" fn Plugin::get(self : Plugin, index : Int) -> MimeType? =
  #| (self, index) => (() => { const v = self[index]; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Plugin::named_item(
  self : Plugin,
  name : String,
) -> MimeType? =
  #| (self, name) => (() => { const v = self.namedItem(name); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Plugin::get_named(self : Plugin, name : String) -> MimeType? =
  #| (self, name) => (() => { const v = self[name]; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// MimeType interface
pub type MimeType

///|
pub extern "js" fn MimeType::to_js_value(self : MimeType) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to MimeType (unchecked)
pub extern "js" fn MimeType::from_js_value(v : JsValue) -> MimeType =
  #| (v) => v

///|
/// Safely cast JsValue to MimeType (checked with instanceof)
pub extern "js" fn MimeType::from_js_value_opt(v : JsValue) -> MimeType? =
  #| (v) => (v instanceof MimeType) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MimeType (checked with instanceof)
pub extern "js" fn JsValue::as_mime_type(self : JsValue) -> MimeType? =
  #| (self) => (self instanceof MimeType) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MimeType (unchecked)
pub extern "js" fn JsValue::to_mime_type(self : JsValue) -> MimeType =
  #| (self) => self

///|
pub extern "js" fn MimeType::get_type(self : MimeType) -> String =
  #| (self) => self.type

///|
pub extern "js" fn MimeType::get_description(self : MimeType) -> String =
  #| (self) => self.description

///|
pub extern "js" fn MimeType::get_suffixes(self : MimeType) -> String =
  #| (self) => self.suffixes

///|
pub extern "js" fn MimeType::get_enabled_plugin(self : MimeType) -> Plugin =
  #| (self) => self.enabledPlugin

///|
/// ImageData interface
pub type ImageData

///|
pub extern "js" fn ImageData::to_js_value(self : ImageData) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ImageData (unchecked)
pub extern "js" fn ImageData::from_js_value(v : JsValue) -> ImageData =
  #| (v) => v

///|
/// Safely cast JsValue to ImageData (checked with instanceof)
pub extern "js" fn ImageData::from_js_value_opt(v : JsValue) -> ImageData? =
  #| (v) => (v instanceof ImageData) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ImageData (checked with instanceof)
pub extern "js" fn JsValue::as_image_data(self : JsValue) -> ImageData? =
  #| (self) => (self instanceof ImageData) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ImageData (unchecked)
pub extern "js" fn JsValue::to_image_data(self : JsValue) -> ImageData =
  #| (self) => self

///|
pub extern "js" fn ImageData::new(sw : Int, sh : Int) -> ImageData =
  #| (sw, sh) => new ImageData(sw, sh)

///|
extern "js" fn ImageData::new_with_settings_ffi(
  sw : Int,
  sh : Int,
  settings : JsValue,
) -> ImageData =
  #| (sw, sh, settings) => new ImageData(sw, sh, settings)

///|
pub fn ImageData::new_with_settings(
  sw : Int,
  sh : Int,
  settings : ImageDataSettings,
) -> ImageData {
  ImageData::new_with_settings_ffi(sw, sh, settings.to_js())
}

///|
pub extern "js" fn ImageData::new_with_data_and_sw(
  data : ImageDataArray,
  sw : Int,
) -> ImageData =
  #| (data, sw) => new ImageData(data, sw)

///|
extern "js" fn ImageData::new_with_data_and_sw_with_settings_ffi(
  data : ImageDataArray,
  sw : Int,
  sh : Int,
  settings : JsValue,
) -> ImageData =
  #| (data, sw, sh, settings) => new ImageData(data, sw, sh, settings)

///|
pub fn ImageData::new_with_data_and_sw_with_settings(
  data : ImageDataArray,
  sw : Int,
  sh : Int,
  settings : ImageDataSettings,
) -> ImageData {
  ImageData::new_with_data_and_sw_with_settings_ffi(
    data,
    sw,
    sh,
    settings.to_js(),
  )
}

///|
pub extern "js" fn ImageData::get_width(self : ImageData) -> Int =
  #| (self) => self.width

///|
pub extern "js" fn ImageData::get_height(self : ImageData) -> Int =
  #| (self) => self.height

///|
pub extern "js" fn ImageData::get_data(self : ImageData) -> ImageDataArray =
  #| (self) => self.data

///|
pub extern "js" fn ImageData::get_pixel_format(
  self : ImageData,
) -> ImageDataPixelFormat =
  #| (self) => ['rgba-unorm8', 'rgba-float16'].indexOf(self.pixelFormat)

///|
pub extern "js" fn ImageData::get_color_space(
  self : ImageData,
) -> PredefinedColorSpace =
  #| (self) => ['srgb', 'srgb-linear', 'display-p3', 'display-p3-linear'].indexOf(self.colorSpace)

///|
pub extern "js" fn ImageData::new_with_uint8_clamped_array(
  data : Uint8ClampedArray,
  sw : Int,
  sh : Int,
  settings : ImageDataSettings,
) -> ImageData =
  #| (data, sw, sh, settings) => new ImageData(data, sw, sh, settings)

///|
pub extern "js" fn ImageData::new_with_float16_array(
  data : Float16Array,
  sw : Int,
  sh : Int,
  settings : ImageDataSettings,
) -> ImageData =
  #| (data, sw, sh, settings) => new ImageData(data, sw, sh, settings)

///|
/// ImageBitmap interface
pub type ImageBitmap

///|
pub extern "js" fn ImageBitmap::to_js_value(self : ImageBitmap) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ImageBitmap (unchecked)
pub extern "js" fn ImageBitmap::from_js_value(v : JsValue) -> ImageBitmap =
  #| (v) => v

///|
/// Safely cast JsValue to ImageBitmap (checked with instanceof)
pub extern "js" fn ImageBitmap::from_js_value_opt(v : JsValue) -> ImageBitmap? =
  #| (v) => (v instanceof ImageBitmap) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ImageBitmap (checked with instanceof)
pub extern "js" fn JsValue::as_image_bitmap(self : JsValue) -> ImageBitmap? =
  #| (self) => (self instanceof ImageBitmap) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ImageBitmap (unchecked)
pub extern "js" fn JsValue::to_image_bitmap(self : JsValue) -> ImageBitmap =
  #| (self) => self

///|
pub extern "js" fn ImageBitmap::get_width(self : ImageBitmap) -> Int =
  #| (self) => self.width

///|
pub extern "js" fn ImageBitmap::get_height(self : ImageBitmap) -> Int =
  #| (self) => self.height

///|
pub extern "js" fn ImageBitmap::close(self : ImageBitmap) -> Unit =
  #| (self) => self.close()

///|
/// MessageEvent interface
pub type MessageEvent

///|
pub extern "js" fn MessageEvent::to_js_value(self : MessageEvent) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to MessageEvent (unchecked)
pub extern "js" fn MessageEvent::from_js_value(v : JsValue) -> MessageEvent =
  #| (v) => v

///|
/// Safely cast JsValue to MessageEvent (checked with instanceof)
pub extern "js" fn MessageEvent::from_js_value_opt(
  v : JsValue,
) -> MessageEvent? =
  #| (v) => (v instanceof MessageEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MessageEvent (checked with instanceof)
pub extern "js" fn JsValue::as_message_event(self : JsValue) -> MessageEvent? =
  #| (self) => (self instanceof MessageEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MessageEvent (unchecked)
pub extern "js" fn JsValue::to_message_event(self : JsValue) -> MessageEvent =
  #| (self) => self

///|
pub extern "js" fn MessageEvent::to_event(self : MessageEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn MessageEvent::new(type_ : String) -> MessageEvent =
  #| (type_) => new MessageEvent(type_)

///|
extern "js" fn MessageEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> MessageEvent =
  #| (type_, event_init_dict) => new MessageEvent(type_, event_init_dict)

///|
pub fn MessageEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : MessageEventInit,
) -> MessageEvent {
  MessageEvent::new_with_event_init_dict_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn MessageEvent::get_data(self : MessageEvent) -> JsValue =
  #| (self) => self.data

///|
pub extern "js" fn MessageEvent::get_origin(self : MessageEvent) -> String =
  #| (self) => self.origin

///|
pub extern "js" fn MessageEvent::get_last_event_id(
  self : MessageEvent,
) -> String =
  #| (self) => self.lastEventId

///|
pub extern "js" fn MessageEvent::get_source(
  self : MessageEvent,
) -> MessageEventSource? =
  #| (self) => (() => { const v = self.source; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn MessageEvent::get_ports(
  self : MessageEvent,
) -> Array[MessagePort] =
  #| (self) => self.ports

///|
pub extern "js" fn MessageEvent::init_message_event(
  self : MessageEvent,
  type_ : String,
) -> Unit =
  #| (self, type_) => self.initMessageEvent(type_)

///|
pub extern "js" fn MessageEvent::init_message_event_with_ports(
  self : MessageEvent,
  type_ : String,
  bubbles : Bool,
  cancelable : Bool,
  data : JsValue,
  origin : String,
  last_event_id : String,
  source : MessageEventSource?,
  ports : Array[MessagePort],
) -> Unit =
  #| (self, type_, bubbles, cancelable, data, origin, last_event_id, source, ports) => self.initMessageEvent(type_, bubbles, cancelable, data, origin, last_event_id, (source.$tag === 1 ? source._0 : null), ports)

///|
/// EventSource interface
pub type EventSource

///|
pub extern "js" fn EventSource::to_js_value(self : EventSource) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to EventSource (unchecked)
pub extern "js" fn EventSource::from_js_value(v : JsValue) -> EventSource =
  #| (v) => v

///|
/// Safely cast JsValue to EventSource (checked with instanceof)
pub extern "js" fn EventSource::from_js_value_opt(v : JsValue) -> EventSource? =
  #| (v) => (v instanceof EventSource) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to EventSource (checked with instanceof)
pub extern "js" fn JsValue::as_event_source(self : JsValue) -> EventSource? =
  #| (self) => (self instanceof EventSource) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to EventSource (unchecked)
pub extern "js" fn JsValue::to_event_source(self : JsValue) -> EventSource =
  #| (self) => self

///|
pub extern "js" fn EventSource::to_event_target(
  self : EventSource,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn EventSource::new(url : String) -> EventSource =
  #| (url) => new EventSource(url)

///|
extern "js" fn EventSource::new_with_event_source_init_dict_ffi(
  url : String,
  event_source_init_dict : JsValue,
) -> EventSource =
  #| (url, event_source_init_dict) => new EventSource(url, event_source_init_dict)

///|
pub fn EventSource::new_with_event_source_init_dict(
  url : String,
  event_source_init_dict : EventSourceInit,
) -> EventSource {
  EventSource::new_with_event_source_init_dict_ffi(
    url,
    event_source_init_dict.to_js(),
  )
}

///|
pub extern "js" fn EventSource::get_url(self : EventSource) -> String =
  #| (self) => self.url

///|
pub extern "js" fn EventSource::get_with_credentials(
  self : EventSource,
) -> Bool =
  #| (self) => self.withCredentials

// EventSource.CONNECTING

///|
pub let event_source_connecting : Int = 0

// EventSource.OPEN

///|
pub let event_source_open : Int = 1

// EventSource.CLOSED

///|
pub let event_source_closed : Int = 2

///|
pub extern "js" fn EventSource::get_ready_state(self : EventSource) -> Int =
  #| (self) => self.readyState

///|
pub extern "js" fn EventSource::get_onopen(self : EventSource) -> EventHandler =
  #| (self) => self.onopen

///|
pub extern "js" fn EventSource::set_onopen(
  self : EventSource,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onopen = value }

///|
pub extern "js" fn EventSource::get_onmessage(
  self : EventSource,
) -> EventHandler =
  #| (self) => self.onmessage

///|
pub extern "js" fn EventSource::set_onmessage(
  self : EventSource,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmessage = value }

///|
pub extern "js" fn EventSource::get_onerror(self : EventSource) -> EventHandler =
  #| (self) => self.onerror

///|
pub extern "js" fn EventSource::set_onerror(
  self : EventSource,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onerror = value }

///|
pub extern "js" fn EventSource::close(self : EventSource) -> Unit =
  #| (self) => self.close()

///|
/// MessageChannel interface
pub type MessageChannel

///|
pub extern "js" fn MessageChannel::to_js_value(
  self : MessageChannel,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to MessageChannel (unchecked)
pub extern "js" fn MessageChannel::from_js_value(v : JsValue) -> MessageChannel =
  #| (v) => v

///|
/// Safely cast JsValue to MessageChannel (checked with instanceof)
pub extern "js" fn MessageChannel::from_js_value_opt(
  v : JsValue,
) -> MessageChannel? =
  #| (v) => (v instanceof MessageChannel) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MessageChannel (checked with instanceof)
pub extern "js" fn JsValue::as_message_channel(
  self : JsValue,
) -> MessageChannel? =
  #| (self) => (self instanceof MessageChannel) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MessageChannel (unchecked)
pub extern "js" fn JsValue::to_message_channel(
  self : JsValue,
) -> MessageChannel =
  #| (self) => self

///|
pub extern "js" fn MessageChannel::new() -> MessageChannel =
  #| () => new MessageChannel()

///|
pub extern "js" fn MessageChannel::get_port1(
  self : MessageChannel,
) -> MessagePort =
  #| (self) => self.port1

///|
pub extern "js" fn MessageChannel::get_port2(
  self : MessageChannel,
) -> MessagePort =
  #| (self) => self.port2

///|
/// MessagePort interface
pub type MessagePort

///|
pub extern "js" fn MessagePort::to_js_value(self : MessagePort) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to MessagePort (unchecked)
pub extern "js" fn MessagePort::from_js_value(v : JsValue) -> MessagePort =
  #| (v) => v

///|
/// Safely cast JsValue to MessagePort (checked with instanceof)
pub extern "js" fn MessagePort::from_js_value_opt(v : JsValue) -> MessagePort? =
  #| (v) => (v instanceof MessagePort) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MessagePort (checked with instanceof)
pub extern "js" fn JsValue::as_message_port(self : JsValue) -> MessagePort? =
  #| (self) => (self instanceof MessagePort) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MessagePort (unchecked)
pub extern "js" fn JsValue::to_message_port(self : JsValue) -> MessagePort =
  #| (self) => self

///|
pub extern "js" fn MessagePort::to_event_target(
  self : MessagePort,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn MessagePort::post_message(
  self : MessagePort,
  message : JsValue,
) -> Unit =
  #| (self, message) => self.postMessage(message)

///|
extern "js" fn MessagePort::post_message_with_options_ffi(
  self : MessagePort,
  message : JsValue,
  options : JsValue,
) -> Unit =
  #| (self, message, options) => self.postMessage(message, options)

///|
pub fn MessagePort::post_message_with_options(
  self : MessagePort,
  message : JsValue,
  options : StructuredSerializeOptions,
) -> Unit {
  MessagePort::post_message_with_options_ffi(self, message, options.to_js())
}

///|
pub extern "js" fn MessagePort::post_message_with_message_and_transfer(
  self : MessagePort,
  message : JsValue,
  transfer : Array[JsValue],
) -> Unit =
  #| (self, message, transfer) => self.postMessage(message, transfer)

///|
pub extern "js" fn MessagePort::start(self : MessagePort) -> Unit =
  #| (self) => self.start()

///|
pub extern "js" fn MessagePort::close(self : MessagePort) -> Unit =
  #| (self) => self.close()

///|
pub extern "js" fn MessagePort::get_onclose(self : MessagePort) -> EventHandler =
  #| (self) => self.onclose

///|
pub extern "js" fn MessagePort::set_onclose(
  self : MessagePort,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onclose = value }

///|
pub extern "js" fn MessagePort::get_onmessage(
  self : MessagePort,
) -> EventHandler =
  #| (self) => self.onmessage

///|
pub extern "js" fn MessagePort::set_onmessage(
  self : MessagePort,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmessage = value }

///|
pub extern "js" fn MessagePort::get_onmessageerror(
  self : MessagePort,
) -> EventHandler =
  #| (self) => self.onmessageerror

///|
pub extern "js" fn MessagePort::set_onmessageerror(
  self : MessagePort,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmessageerror = value }

///|
/// BroadcastChannel interface
pub type BroadcastChannel

///|
pub extern "js" fn BroadcastChannel::to_js_value(
  self : BroadcastChannel,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to BroadcastChannel (unchecked)
pub extern "js" fn BroadcastChannel::from_js_value(
  v : JsValue,
) -> BroadcastChannel =
  #| (v) => v

///|
/// Safely cast JsValue to BroadcastChannel (checked with instanceof)
pub extern "js" fn BroadcastChannel::from_js_value_opt(
  v : JsValue,
) -> BroadcastChannel? =
  #| (v) => (v instanceof BroadcastChannel) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to BroadcastChannel (checked with instanceof)
pub extern "js" fn JsValue::as_broadcast_channel(
  self : JsValue,
) -> BroadcastChannel? =
  #| (self) => (self instanceof BroadcastChannel) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to BroadcastChannel (unchecked)
pub extern "js" fn JsValue::to_broadcast_channel(
  self : JsValue,
) -> BroadcastChannel =
  #| (self) => self

///|
pub extern "js" fn BroadcastChannel::to_event_target(
  self : BroadcastChannel,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn BroadcastChannel::new(name : String) -> BroadcastChannel =
  #| (name) => new BroadcastChannel(name)

///|
pub extern "js" fn BroadcastChannel::get_name(
  self : BroadcastChannel,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn BroadcastChannel::post_message(
  self : BroadcastChannel,
  message : JsValue,
) -> Unit =
  #| (self, message) => self.postMessage(message)

///|
pub extern "js" fn BroadcastChannel::close(self : BroadcastChannel) -> Unit =
  #| (self) => self.close()

///|
pub extern "js" fn BroadcastChannel::get_onmessage(
  self : BroadcastChannel,
) -> EventHandler =
  #| (self) => self.onmessage

///|
pub extern "js" fn BroadcastChannel::set_onmessage(
  self : BroadcastChannel,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmessage = value }

///|
pub extern "js" fn BroadcastChannel::get_onmessageerror(
  self : BroadcastChannel,
) -> EventHandler =
  #| (self) => self.onmessageerror

///|
pub extern "js" fn BroadcastChannel::set_onmessageerror(
  self : BroadcastChannel,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmessageerror = value }

///|
/// WorkerGlobalScope interface
pub type WorkerGlobalScope

///|
pub extern "js" fn WorkerGlobalScope::to_js_value(
  self : WorkerGlobalScope,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WorkerGlobalScope (unchecked)
pub extern "js" fn WorkerGlobalScope::from_js_value(
  v : JsValue,
) -> WorkerGlobalScope =
  #| (v) => v

///|
/// Safely cast JsValue to WorkerGlobalScope (checked with instanceof)
pub extern "js" fn WorkerGlobalScope::from_js_value_opt(
  v : JsValue,
) -> WorkerGlobalScope? =
  #| (v) => (v instanceof WorkerGlobalScope) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WorkerGlobalScope (checked with instanceof)
pub extern "js" fn JsValue::as_worker_global_scope(
  self : JsValue,
) -> WorkerGlobalScope? =
  #| (self) => (self instanceof WorkerGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WorkerGlobalScope (unchecked)
pub extern "js" fn JsValue::to_worker_global_scope(
  self : JsValue,
) -> WorkerGlobalScope =
  #| (self) => self

///|
pub extern "js" fn WorkerGlobalScope::to_event_target(
  self : WorkerGlobalScope,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn WorkerGlobalScope::as_dedicated_worker_global_scope(
  self : WorkerGlobalScope,
) -> DedicatedWorkerGlobalScope? =
  #| (self) => (self instanceof DedicatedWorkerGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn WorkerGlobalScope::as_shared_worker_global_scope(
  self : WorkerGlobalScope,
) -> SharedWorkerGlobalScope? =
  #| (self) => (self instanceof SharedWorkerGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn WorkerGlobalScope::as_rtc_identity_provider_global_scope(
  self : WorkerGlobalScope,
) -> RTCIdentityProviderGlobalScope? =
  #| (self) => (self instanceof RTCIdentityProviderGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn WorkerGlobalScope::as_service_worker_global_scope(
  self : WorkerGlobalScope,
) -> ServiceWorkerGlobalScope? =
  #| (self) => (self instanceof ServiceWorkerGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn WorkerGlobalScope::get_self(
  self : WorkerGlobalScope,
) -> WorkerGlobalScope =
  #| (self) => self.self

///|
pub extern "js" fn WorkerGlobalScope::get_location(
  self : WorkerGlobalScope,
) -> WorkerLocation =
  #| (self) => self.location

///|
pub extern "js" fn WorkerGlobalScope::get_navigator(
  self : WorkerGlobalScope,
) -> WorkerNavigator =
  #| (self) => self.navigator

///|
pub extern "js" fn WorkerGlobalScope::import_scripts(
  self : WorkerGlobalScope,
  urls : TrustedScriptURLOrString,
) -> Unit =
  #| (self, urls) => self.importScripts(urls)

///|
pub extern "js" fn WorkerGlobalScope::get_onerror(
  self : WorkerGlobalScope,
) -> OnErrorEventHandler =
  #| (self) => self.onerror

///|
pub extern "js" fn WorkerGlobalScope::set_onerror(
  self : WorkerGlobalScope,
  value : OnErrorEventHandler,
) -> Unit =
  #| (self, value) => { self.onerror = value }

///|
pub extern "js" fn WorkerGlobalScope::get_onlanguagechange(
  self : WorkerGlobalScope,
) -> EventHandler =
  #| (self) => self.onlanguagechange

///|
pub extern "js" fn WorkerGlobalScope::set_onlanguagechange(
  self : WorkerGlobalScope,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onlanguagechange = value }

///|
pub extern "js" fn WorkerGlobalScope::get_onoffline(
  self : WorkerGlobalScope,
) -> EventHandler =
  #| (self) => self.onoffline

///|
pub extern "js" fn WorkerGlobalScope::set_onoffline(
  self : WorkerGlobalScope,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onoffline = value }

///|
pub extern "js" fn WorkerGlobalScope::get_ononline(
  self : WorkerGlobalScope,
) -> EventHandler =
  #| (self) => self.ononline

///|
pub extern "js" fn WorkerGlobalScope::set_ononline(
  self : WorkerGlobalScope,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ononline = value }

///|
pub extern "js" fn WorkerGlobalScope::get_onrejectionhandled(
  self : WorkerGlobalScope,
) -> EventHandler =
  #| (self) => self.onrejectionhandled

///|
pub extern "js" fn WorkerGlobalScope::set_onrejectionhandled(
  self : WorkerGlobalScope,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onrejectionhandled = value }

///|
pub extern "js" fn WorkerGlobalScope::get_onunhandledrejection(
  self : WorkerGlobalScope,
) -> EventHandler =
  #| (self) => self.onunhandledrejection

///|
pub extern "js" fn WorkerGlobalScope::set_onunhandledrejection(
  self : WorkerGlobalScope,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onunhandledrejection = value }

///|
pub extern "js" fn WorkerGlobalScope::get_scheduler(
  self : WorkerGlobalScope,
) -> Scheduler =
  #| (self) => self.scheduler

///|
pub extern "js" fn WorkerGlobalScope::get_origin(
  self : WorkerGlobalScope,
) -> String =
  #| (self) => self.origin

///|
pub extern "js" fn WorkerGlobalScope::get_is_secure_context(
  self : WorkerGlobalScope,
) -> Bool =
  #| (self) => self.isSecureContext

///|
pub extern "js" fn WorkerGlobalScope::get_cross_origin_isolated(
  self : WorkerGlobalScope,
) -> Bool =
  #| (self) => self.crossOriginIsolated

///|
pub extern "js" fn WorkerGlobalScope::report_error(
  self : WorkerGlobalScope,
  e : JsValue,
) -> Unit =
  #| (self, e) => self.reportError(e)

///|
pub extern "js" fn WorkerGlobalScope::btoa(
  self : WorkerGlobalScope,
  data : String,
) -> String =
  #| (self, data) => self.btoa(data)

///|
pub extern "js" fn WorkerGlobalScope::atob(
  self : WorkerGlobalScope,
  data : String,
) -> String =
  #| (self, data) => self.atob(data)

///|
pub extern "js" fn WorkerGlobalScope::set_timeout(
  self : WorkerGlobalScope,
  handler : TimerHandler,
) -> Int =
  #| (self, handler) => self.setTimeout(handler)

///|
pub extern "js" fn WorkerGlobalScope::set_timeout_with_arguments(
  self : WorkerGlobalScope,
  handler : TimerHandler,
  timeout : Int,
  arguments : JsValue,
) -> Int =
  #| (self, handler, timeout, arguments) => self.setTimeout(handler, timeout, arguments)

///|
pub extern "js" fn WorkerGlobalScope::clear_timeout(
  self : WorkerGlobalScope,
) -> Unit =
  #| (self) => self.clearTimeout()

///|
pub extern "js" fn WorkerGlobalScope::clear_timeout_with_id(
  self : WorkerGlobalScope,
  id : Int,
) -> Unit =
  #| (self, id) => self.clearTimeout(id)

///|
pub extern "js" fn WorkerGlobalScope::set_interval(
  self : WorkerGlobalScope,
  handler : TimerHandler,
) -> Int =
  #| (self, handler) => self.setInterval(handler)

///|
pub extern "js" fn WorkerGlobalScope::set_interval_with_arguments(
  self : WorkerGlobalScope,
  handler : TimerHandler,
  timeout : Int,
  arguments : JsValue,
) -> Int =
  #| (self, handler, timeout, arguments) => self.setInterval(handler, timeout, arguments)

///|
pub extern "js" fn WorkerGlobalScope::clear_interval(
  self : WorkerGlobalScope,
) -> Unit =
  #| (self) => self.clearInterval()

///|
pub extern "js" fn WorkerGlobalScope::clear_interval_with_id(
  self : WorkerGlobalScope,
  id : Int,
) -> Unit =
  #| (self, id) => self.clearInterval(id)

///|
pub extern "js" fn WorkerGlobalScope::queue_microtask(
  self : WorkerGlobalScope,
  callback : VoidFunction,
) -> Unit =
  #| (self, callback) => self.queueMicrotask(callback)

///|
pub extern "js" fn WorkerGlobalScope::create_image_bitmap(
  self : WorkerGlobalScope,
  image : ImageBitmapSource,
) -> Promise[ImageBitmap] =
  #| (self, image) => self.createImageBitmap(image)

///|
extern "js" fn WorkerGlobalScope::create_image_bitmap_with_options_ffi(
  self : WorkerGlobalScope,
  image : ImageBitmapSource,
  options : JsValue,
) -> Promise[ImageBitmap] =
  #| (self, image, options) => self.createImageBitmap(image, options)

///|
pub fn WorkerGlobalScope::create_image_bitmap_with_options(
  self : WorkerGlobalScope,
  image : ImageBitmapSource,
  options : ImageBitmapOptions,
) -> Promise[ImageBitmap] {
  WorkerGlobalScope::create_image_bitmap_with_options_ffi(
    self,
    image,
    options.to_js(),
  )
}

///|
pub extern "js" fn WorkerGlobalScope::create_image_bitmap_with_image_image_bitmap_source_and_sx_and_sy_and_sw_and_sh(
  self : WorkerGlobalScope,
  image : ImageBitmapSource,
  sx : Int,
  sy : Int,
  sw : Int,
  sh : Int,
) -> Promise[ImageBitmap] =
  #| (self, image, sx, sy, sw, sh) => self.createImageBitmap(image, sx, sy, sw, sh)

///|
extern "js" fn WorkerGlobalScope::create_image_bitmap_with_image_image_bitmap_source_and_sx_and_sy_and_sw_and_sh_and_options_image_bitmap_options_ffi(
  self : WorkerGlobalScope,
  image : ImageBitmapSource,
  sx : Int,
  sy : Int,
  sw : Int,
  sh : Int,
  options : JsValue,
) -> Promise[ImageBitmap] =
  #| (self, image, sx, sy, sw, sh, options) => self.createImageBitmap(image, sx, sy, sw, sh, options)

///|
pub fn WorkerGlobalScope::create_image_bitmap_with_image_image_bitmap_source_and_sx_and_sy_and_sw_and_sh_and_options_image_bitmap_options(
  self : WorkerGlobalScope,
  image : ImageBitmapSource,
  sx : Int,
  sy : Int,
  sw : Int,
  sh : Int,
  options : ImageBitmapOptions,
) -> Promise[ImageBitmap] {
  WorkerGlobalScope::create_image_bitmap_with_image_image_bitmap_source_and_sx_and_sy_and_sw_and_sh_and_options_image_bitmap_options_ffi(
    self,
    image,
    sx,
    sy,
    sw,
    sh,
    options.to_js(),
  )
}

///|
pub extern "js" fn WorkerGlobalScope::structured_clone(
  self : WorkerGlobalScope,
  value : JsValue,
) -> JsValue =
  #| (self, value) => self.structuredClone(value)

///|
extern "js" fn WorkerGlobalScope::structured_clone_with_options_ffi(
  self : WorkerGlobalScope,
  value : JsValue,
  options : JsValue,
) -> JsValue =
  #| (self, value, options) => self.structuredClone(value, options)

///|
pub fn WorkerGlobalScope::structured_clone_with_options(
  self : WorkerGlobalScope,
  value : JsValue,
  options : StructuredSerializeOptions,
) -> JsValue {
  WorkerGlobalScope::structured_clone_with_options_ffi(
    self,
    value,
    options.to_js(),
  )
}

///|
pub extern "js" fn WorkerGlobalScope::get_trusted_types(
  self : WorkerGlobalScope,
) -> TrustedTypePolicyFactory =
  #| (self) => self.trustedTypes

///|
pub extern "js" fn WorkerGlobalScope::get_indexed_db(
  self : WorkerGlobalScope,
) -> IDBFactory =
  #| (self) => self.indexedDB

///|
pub extern "js" fn WorkerGlobalScope::get_crypto(
  self : WorkerGlobalScope,
) -> Crypto =
  #| (self) => self.crypto

///|
pub extern "js" fn WorkerGlobalScope::get_performance(
  self : WorkerGlobalScope,
) -> Performance =
  #| (self) => self.performance

///|
pub extern "js" fn WorkerGlobalScope::get_caches(
  self : WorkerGlobalScope,
) -> CacheStorage =
  #| (self) => self.caches

///|
pub extern "js" fn WorkerGlobalScope::fetch(
  self : WorkerGlobalScope,
  input : RequestInfo,
) -> Promise[Response] =
  #| (self, input) => self.fetch(input)

///|
extern "js" fn WorkerGlobalScope::fetch_with_init_ffi(
  self : WorkerGlobalScope,
  input : RequestInfo,
  init_ : JsValue,
) -> Promise[Response] =
  #| (self, input, init_) => self.fetch(input, init_)

///|
pub fn WorkerGlobalScope::fetch_with_init(
  self : WorkerGlobalScope,
  input : RequestInfo,
  init_ : RequestInit,
) -> Promise[Response] {
  WorkerGlobalScope::fetch_with_init_ffi(self, input, init_.to_js())
}

///|
pub extern "js" fn WorkerGlobalScope::get_fonts(
  self : WorkerGlobalScope,
) -> FontFaceSet =
  #| (self) => self.fonts

///|
pub extern "js" fn WorkerGlobalScope::set_timeout_with_string(
  self : WorkerGlobalScope,
  handler : String,
  timeout : Int,
  arguments : JsValue,
) -> Int =
  #| (self, handler, timeout, arguments) => self.setTimeout(handler, timeout, arguments)

///|
pub extern "js" fn WorkerGlobalScope::set_timeout_with_function(
  self : WorkerGlobalScope,
  handler : Function,
  timeout : Int,
  arguments : JsValue,
) -> Int =
  #| (self, handler, timeout, arguments) => self.setTimeout(handler, timeout, arguments)

///|
pub extern "js" fn WorkerGlobalScope::set_timeout_with_trusted_script(
  self : WorkerGlobalScope,
  handler : TrustedScript,
  timeout : Int,
  arguments : JsValue,
) -> Int =
  #| (self, handler, timeout, arguments) => self.setTimeout(handler, timeout, arguments)

///|
pub extern "js" fn WorkerGlobalScope::set_interval_with_string(
  self : WorkerGlobalScope,
  handler : String,
  timeout : Int,
  arguments : JsValue,
) -> Int =
  #| (self, handler, timeout, arguments) => self.setInterval(handler, timeout, arguments)

///|
pub extern "js" fn WorkerGlobalScope::set_interval_with_function(
  self : WorkerGlobalScope,
  handler : Function,
  timeout : Int,
  arguments : JsValue,
) -> Int =
  #| (self, handler, timeout, arguments) => self.setInterval(handler, timeout, arguments)

///|
pub extern "js" fn WorkerGlobalScope::set_interval_with_trusted_script(
  self : WorkerGlobalScope,
  handler : TrustedScript,
  timeout : Int,
  arguments : JsValue,
) -> Int =
  #| (self, handler, timeout, arguments) => self.setInterval(handler, timeout, arguments)

///|
pub extern "js" fn WorkerGlobalScope::create_image_bitmap_with_canvas_image_source(
  self : WorkerGlobalScope,
  image : CanvasImageSource,
  options : ImageBitmapOptions,
) -> Promise[ImageBitmap] =
  #| (self, image, options) => self.createImageBitmap(image, options)

///|
pub extern "js" fn WorkerGlobalScope::create_image_bitmap_with_blob(
  self : WorkerGlobalScope,
  image : Blob,
  options : ImageBitmapOptions,
) -> Promise[ImageBitmap] =
  #| (self, image, options) => self.createImageBitmap(image, options)

///|
pub extern "js" fn WorkerGlobalScope::create_image_bitmap_with_image_data(
  self : WorkerGlobalScope,
  image : ImageData,
  options : ImageBitmapOptions,
) -> Promise[ImageBitmap] =
  #| (self, image, options) => self.createImageBitmap(image, options)

///|
pub extern "js" fn WorkerGlobalScope::fetch_with_request(
  self : WorkerGlobalScope,
  input : Request,
  init_ : RequestInit,
) -> Promise[Response] =
  #| (self, input, init_) => self.fetch(input, init_)

///|
pub extern "js" fn WorkerGlobalScope::fetch_with_string(
  self : WorkerGlobalScope,
  input : String,
  init_ : RequestInit,
) -> Promise[Response] =
  #| (self, input, init_) => self.fetch(input, init_)

///|
/// DedicatedWorkerGlobalScope interface
pub type DedicatedWorkerGlobalScope

///|
pub extern "js" fn DedicatedWorkerGlobalScope::to_js_value(
  self : DedicatedWorkerGlobalScope,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to DedicatedWorkerGlobalScope (unchecked)
pub extern "js" fn DedicatedWorkerGlobalScope::from_js_value(
  v : JsValue,
) -> DedicatedWorkerGlobalScope =
  #| (v) => v

///|
/// Safely cast JsValue to DedicatedWorkerGlobalScope (checked with instanceof)
pub extern "js" fn DedicatedWorkerGlobalScope::from_js_value_opt(
  v : JsValue,
) -> DedicatedWorkerGlobalScope? =
  #| (v) => (v instanceof DedicatedWorkerGlobalScope) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to DedicatedWorkerGlobalScope (checked with instanceof)
pub extern "js" fn JsValue::as_dedicated_worker_global_scope(
  self : JsValue,
) -> DedicatedWorkerGlobalScope? =
  #| (self) => (self instanceof DedicatedWorkerGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to DedicatedWorkerGlobalScope (unchecked)
pub extern "js" fn JsValue::to_dedicated_worker_global_scope(
  self : JsValue,
) -> DedicatedWorkerGlobalScope =
  #| (self) => self

///|
pub extern "js" fn DedicatedWorkerGlobalScope::to_worker_global_scope(
  self : DedicatedWorkerGlobalScope,
) -> WorkerGlobalScope =
  #| (self) => self

///|
pub extern "js" fn DedicatedWorkerGlobalScope::to_event_target(
  self : DedicatedWorkerGlobalScope,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn DedicatedWorkerGlobalScope::get_name(
  self : DedicatedWorkerGlobalScope,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn DedicatedWorkerGlobalScope::post_message(
  self : DedicatedWorkerGlobalScope,
  message : JsValue,
) -> Unit =
  #| (self, message) => self.postMessage(message)

///|
extern "js" fn DedicatedWorkerGlobalScope::post_message_with_options_ffi(
  self : DedicatedWorkerGlobalScope,
  message : JsValue,
  options : JsValue,
) -> Unit =
  #| (self, message, options) => self.postMessage(message, options)

///|
pub fn DedicatedWorkerGlobalScope::post_message_with_options(
  self : DedicatedWorkerGlobalScope,
  message : JsValue,
  options : StructuredSerializeOptions,
) -> Unit {
  DedicatedWorkerGlobalScope::post_message_with_options_ffi(
    self,
    message,
    options.to_js(),
  )
}

///|
pub extern "js" fn DedicatedWorkerGlobalScope::post_message_with_message_and_transfer(
  self : DedicatedWorkerGlobalScope,
  message : JsValue,
  transfer : Array[JsValue],
) -> Unit =
  #| (self, message, transfer) => self.postMessage(message, transfer)

///|
pub extern "js" fn DedicatedWorkerGlobalScope::close(
  self : DedicatedWorkerGlobalScope,
) -> Unit =
  #| (self) => self.close()

///|
pub extern "js" fn DedicatedWorkerGlobalScope::get_onrtctransform(
  self : DedicatedWorkerGlobalScope,
) -> EventHandler =
  #| (self) => self.onrtctransform

///|
pub extern "js" fn DedicatedWorkerGlobalScope::set_onrtctransform(
  self : DedicatedWorkerGlobalScope,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onrtctransform = value }

///|
pub extern "js" fn DedicatedWorkerGlobalScope::request_animation_frame(
  self : DedicatedWorkerGlobalScope,
  callback : FrameRequestCallback,
) -> Int =
  #| (self, callback) => self.requestAnimationFrame(callback)

///|
pub extern "js" fn DedicatedWorkerGlobalScope::cancel_animation_frame(
  self : DedicatedWorkerGlobalScope,
  handle : Int,
) -> Unit =
  #| (self, handle) => self.cancelAnimationFrame(handle)

///|
pub extern "js" fn DedicatedWorkerGlobalScope::get_onmessage(
  self : DedicatedWorkerGlobalScope,
) -> EventHandler =
  #| (self) => self.onmessage

///|
pub extern "js" fn DedicatedWorkerGlobalScope::set_onmessage(
  self : DedicatedWorkerGlobalScope,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmessage = value }

///|
pub extern "js" fn DedicatedWorkerGlobalScope::get_onmessageerror(
  self : DedicatedWorkerGlobalScope,
) -> EventHandler =
  #| (self) => self.onmessageerror

///|
pub extern "js" fn DedicatedWorkerGlobalScope::set_onmessageerror(
  self : DedicatedWorkerGlobalScope,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmessageerror = value }

///|
/// SharedWorkerGlobalScope interface
pub type SharedWorkerGlobalScope

///|
pub extern "js" fn SharedWorkerGlobalScope::to_js_value(
  self : SharedWorkerGlobalScope,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SharedWorkerGlobalScope (unchecked)
pub extern "js" fn SharedWorkerGlobalScope::from_js_value(
  v : JsValue,
) -> SharedWorkerGlobalScope =
  #| (v) => v

///|
/// Safely cast JsValue to SharedWorkerGlobalScope (checked with instanceof)
pub extern "js" fn SharedWorkerGlobalScope::from_js_value_opt(
  v : JsValue,
) -> SharedWorkerGlobalScope? =
  #| (v) => (v instanceof SharedWorkerGlobalScope) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SharedWorkerGlobalScope (checked with instanceof)
pub extern "js" fn JsValue::as_shared_worker_global_scope(
  self : JsValue,
) -> SharedWorkerGlobalScope? =
  #| (self) => (self instanceof SharedWorkerGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SharedWorkerGlobalScope (unchecked)
pub extern "js" fn JsValue::to_shared_worker_global_scope(
  self : JsValue,
) -> SharedWorkerGlobalScope =
  #| (self) => self

///|
pub extern "js" fn SharedWorkerGlobalScope::to_worker_global_scope(
  self : SharedWorkerGlobalScope,
) -> WorkerGlobalScope =
  #| (self) => self

///|
pub extern "js" fn SharedWorkerGlobalScope::to_event_target(
  self : SharedWorkerGlobalScope,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SharedWorkerGlobalScope::get_name(
  self : SharedWorkerGlobalScope,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn SharedWorkerGlobalScope::close(
  self : SharedWorkerGlobalScope,
) -> Unit =
  #| (self) => self.close()

///|
pub extern "js" fn SharedWorkerGlobalScope::get_onconnect(
  self : SharedWorkerGlobalScope,
) -> EventHandler =
  #| (self) => self.onconnect

///|
pub extern "js" fn SharedWorkerGlobalScope::set_onconnect(
  self : SharedWorkerGlobalScope,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onconnect = value }

///|
/// Worker interface
pub type Worker

///|
pub extern "js" fn Worker::to_js_value(self : Worker) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Worker (unchecked)
pub extern "js" fn Worker::from_js_value(v : JsValue) -> Worker =
  #| (v) => v

///|
/// Safely cast JsValue to Worker (checked with instanceof)
pub extern "js" fn Worker::from_js_value_opt(v : JsValue) -> Worker? =
  #| (v) => (v instanceof Worker) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Worker (checked with instanceof)
pub extern "js" fn JsValue::as_worker(self : JsValue) -> Worker? =
  #| (self) => (self instanceof Worker) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Worker (unchecked)
pub extern "js" fn JsValue::to_worker(self : JsValue) -> Worker =
  #| (self) => self

///|
pub extern "js" fn Worker::to_event_target(self : Worker) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn Worker::new(script_url : TrustedScriptURLOrString) -> Worker =
  #| (script_url) => new Worker(script_url)

///|
extern "js" fn Worker::new_with_options_ffi(
  script_url : TrustedScriptURLOrString,
  options : JsValue,
) -> Worker =
  #| (script_url, options) => new Worker(script_url, options)

///|
pub fn Worker::new_with_options(
  script_url : TrustedScriptURLOrString,
  options : WorkerOptions,
) -> Worker {
  Worker::new_with_options_ffi(script_url, options.to_js())
}

///|
pub extern "js" fn Worker::terminate(self : Worker) -> Unit =
  #| (self) => self.terminate()

///|
pub extern "js" fn Worker::post_message(
  self : Worker,
  message : JsValue,
) -> Unit =
  #| (self, message) => self.postMessage(message)

///|
extern "js" fn Worker::post_message_with_options_ffi(
  self : Worker,
  message : JsValue,
  options : JsValue,
) -> Unit =
  #| (self, message, options) => self.postMessage(message, options)

///|
pub fn Worker::post_message_with_options(
  self : Worker,
  message : JsValue,
  options : StructuredSerializeOptions,
) -> Unit {
  Worker::post_message_with_options_ffi(self, message, options.to_js())
}

///|
pub extern "js" fn Worker::post_message_with_message_and_transfer(
  self : Worker,
  message : JsValue,
  transfer : Array[JsValue],
) -> Unit =
  #| (self, message, transfer) => self.postMessage(message, transfer)

///|
pub extern "js" fn Worker::get_onerror(self : Worker) -> EventHandler =
  #| (self) => self.onerror

///|
pub extern "js" fn Worker::set_onerror(
  self : Worker,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onerror = value }

///|
pub extern "js" fn Worker::get_onmessage(self : Worker) -> EventHandler =
  #| (self) => self.onmessage

///|
pub extern "js" fn Worker::set_onmessage(
  self : Worker,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmessage = value }

///|
pub extern "js" fn Worker::get_onmessageerror(self : Worker) -> EventHandler =
  #| (self) => self.onmessageerror

///|
pub extern "js" fn Worker::set_onmessageerror(
  self : Worker,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmessageerror = value }

///|
/// SharedWorker interface
pub type SharedWorker

///|
pub extern "js" fn SharedWorker::to_js_value(self : SharedWorker) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SharedWorker (unchecked)
pub extern "js" fn SharedWorker::from_js_value(v : JsValue) -> SharedWorker =
  #| (v) => v

///|
/// Safely cast JsValue to SharedWorker (checked with instanceof)
pub extern "js" fn SharedWorker::from_js_value_opt(
  v : JsValue,
) -> SharedWorker? =
  #| (v) => (v instanceof SharedWorker) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SharedWorker (checked with instanceof)
pub extern "js" fn JsValue::as_shared_worker(self : JsValue) -> SharedWorker? =
  #| (self) => (self instanceof SharedWorker) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SharedWorker (unchecked)
pub extern "js" fn JsValue::to_shared_worker(self : JsValue) -> SharedWorker =
  #| (self) => self

///|
pub extern "js" fn SharedWorker::to_event_target(
  self : SharedWorker,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SharedWorker::new(
  script_url : TrustedScriptURLOrString,
) -> SharedWorker =
  #| (script_url) => new SharedWorker(script_url)

///|
pub extern "js" fn SharedWorker::new_with_options(
  script_url : TrustedScriptURLOrString,
  options : StringOrWorkerOptions,
) -> SharedWorker =
  #| (script_url, options) => new SharedWorker(script_url, options)

///|
pub extern "js" fn SharedWorker::get_port(self : SharedWorker) -> MessagePort =
  #| (self) => self.port

///|
pub extern "js" fn SharedWorker::get_onerror(
  self : SharedWorker,
) -> EventHandler =
  #| (self) => self.onerror

///|
pub extern "js" fn SharedWorker::set_onerror(
  self : SharedWorker,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onerror = value }

///|
/// WorkerNavigator interface
pub type WorkerNavigator

///|
pub extern "js" fn WorkerNavigator::to_js_value(
  self : WorkerNavigator,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WorkerNavigator (unchecked)
pub extern "js" fn WorkerNavigator::from_js_value(
  v : JsValue,
) -> WorkerNavigator =
  #| (v) => v

///|
/// Safely cast JsValue to WorkerNavigator (checked with instanceof)
pub extern "js" fn WorkerNavigator::from_js_value_opt(
  v : JsValue,
) -> WorkerNavigator? =
  #| (v) => (v instanceof WorkerNavigator) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WorkerNavigator (checked with instanceof)
pub extern "js" fn JsValue::as_worker_navigator(
  self : JsValue,
) -> WorkerNavigator? =
  #| (self) => (self instanceof WorkerNavigator) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WorkerNavigator (unchecked)
pub extern "js" fn JsValue::to_worker_navigator(
  self : JsValue,
) -> WorkerNavigator =
  #| (self) => self

///|
pub extern "js" fn WorkerNavigator::get_serial(
  self : WorkerNavigator,
) -> Serial =
  #| (self) => self.serial

///|
pub extern "js" fn WorkerNavigator::get_media_capabilities(
  self : WorkerNavigator,
) -> MediaCapabilities =
  #| (self) => self.mediaCapabilities

///|
pub extern "js" fn WorkerNavigator::get_usb(self : WorkerNavigator) -> USB =
  #| (self) => self.usb

///|
pub extern "js" fn WorkerNavigator::get_hid(self : WorkerNavigator) -> HID =
  #| (self) => self.hid

///|
pub extern "js" fn WorkerNavigator::get_service_worker(
  self : WorkerNavigator,
) -> ServiceWorkerContainer =
  #| (self) => self.serviceWorker

///|
pub extern "js" fn WorkerNavigator::get_permissions(
  self : WorkerNavigator,
) -> Permissions =
  #| (self) => self.permissions

///|
pub extern "js" fn WorkerNavigator::get_locks(
  self : WorkerNavigator,
) -> LockManager =
  #| (self) => self.locks

///|
pub extern "js" fn WorkerNavigator::set_app_badge(
  self : WorkerNavigator,
) -> Promise[Unit] =
  #| (self) => self.setAppBadge()

///|
pub extern "js" fn WorkerNavigator::set_app_badge_with_contents(
  self : WorkerNavigator,
  contents : Int64,
) -> Promise[Unit] =
  #| (self, contents) => self.setAppBadge((contents.hi * 4294967296 + contents.lo))

///|
pub extern "js" fn WorkerNavigator::clear_app_badge(
  self : WorkerNavigator,
) -> Promise[Unit] =
  #| (self) => self.clearAppBadge()

///|
pub extern "js" fn WorkerNavigator::get_user_agent_data(
  self : WorkerNavigator,
) -> NavigatorUAData =
  #| (self) => self.userAgentData

///|
pub extern "js" fn WorkerNavigator::get_app_code_name(
  self : WorkerNavigator,
) -> String =
  #| (self) => self.appCodeName

///|
pub extern "js" fn WorkerNavigator::get_app_name(
  self : WorkerNavigator,
) -> String =
  #| (self) => self.appName

///|
pub extern "js" fn WorkerNavigator::get_app_version(
  self : WorkerNavigator,
) -> String =
  #| (self) => self.appVersion

///|
pub extern "js" fn WorkerNavigator::get_platform(
  self : WorkerNavigator,
) -> String =
  #| (self) => self.platform

///|
pub extern "js" fn WorkerNavigator::get_product(
  self : WorkerNavigator,
) -> String =
  #| (self) => self.product

///|
pub extern "js" fn WorkerNavigator::get_product_sub(
  self : WorkerNavigator,
) -> String =
  #| (self) => self.productSub

///|
pub extern "js" fn WorkerNavigator::get_user_agent(
  self : WorkerNavigator,
) -> String =
  #| (self) => self.userAgent

///|
pub extern "js" fn WorkerNavigator::get_vendor(
  self : WorkerNavigator,
) -> String =
  #| (self) => self.vendor

///|
pub extern "js" fn WorkerNavigator::get_vendor_sub(
  self : WorkerNavigator,
) -> String =
  #| (self) => self.vendorSub

///|
pub extern "js" fn WorkerNavigator::taint_enabled(
  self : WorkerNavigator,
) -> Bool =
  #| (self) => self.taintEnabled()

///|
pub extern "js" fn WorkerNavigator::get_oscpu(self : WorkerNavigator) -> String =
  #| (self) => self.oscpu

///|
pub extern "js" fn WorkerNavigator::get_language(
  self : WorkerNavigator,
) -> String =
  #| (self) => self.language

///|
pub extern "js" fn WorkerNavigator::get_languages(
  self : WorkerNavigator,
) -> Array[String] =
  #| (self) => self.languages

///|
pub extern "js" fn WorkerNavigator::get_on_line(self : WorkerNavigator) -> Bool =
  #| (self) => self.onLine

///|
pub extern "js" fn WorkerNavigator::get_hardware_concurrency(
  self : WorkerNavigator,
) -> Int64 =
  #| (self) => (() => { const n = self.hardwareConcurrency; return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

///|
pub extern "js" fn WorkerNavigator::get_ml(self : WorkerNavigator) -> ML =
  #| (self) => self.ml

///|
pub extern "js" fn WorkerNavigator::get_connection(
  self : WorkerNavigator,
) -> NetworkInformation =
  #| (self) => self.connection

///|
pub extern "js" fn WorkerNavigator::get_storage(
  self : WorkerNavigator,
) -> StorageManager =
  #| (self) => self.storage

///|
pub extern "js" fn WorkerNavigator::get_device_memory(
  self : WorkerNavigator,
) -> Double =
  #| (self) => self.deviceMemory

///|
pub extern "js" fn WorkerNavigator::get_gpu(self : WorkerNavigator) -> GPU =
  #| (self) => self.gpu

///|
pub extern "js" fn WorkerNavigator::get_storage_buckets(
  self : WorkerNavigator,
) -> StorageBucketManager =
  #| (self) => self.storageBuckets

///|
pub extern "js" fn WorkerNavigator::get_global_privacy_control(
  self : WorkerNavigator,
) -> Bool =
  #| (self) => self.globalPrivacyControl

///|
/// WorkerLocation interface
pub type WorkerLocation

///|
pub extern "js" fn WorkerLocation::to_js_value(
  self : WorkerLocation,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WorkerLocation (unchecked)
pub extern "js" fn WorkerLocation::from_js_value(v : JsValue) -> WorkerLocation =
  #| (v) => v

///|
/// Safely cast JsValue to WorkerLocation (checked with instanceof)
pub extern "js" fn WorkerLocation::from_js_value_opt(
  v : JsValue,
) -> WorkerLocation? =
  #| (v) => (v instanceof WorkerLocation) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WorkerLocation (checked with instanceof)
pub extern "js" fn JsValue::as_worker_location(
  self : JsValue,
) -> WorkerLocation? =
  #| (self) => (self instanceof WorkerLocation) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WorkerLocation (unchecked)
pub extern "js" fn JsValue::to_worker_location(
  self : JsValue,
) -> WorkerLocation =
  #| (self) => self

///|
pub extern "js" fn WorkerLocation::get_href(self : WorkerLocation) -> String =
  #| (self) => self.href

///|
pub extern "js" fn WorkerLocation::get_origin(self : WorkerLocation) -> String =
  #| (self) => self.origin

///|
pub extern "js" fn WorkerLocation::get_protocol(
  self : WorkerLocation,
) -> String =
  #| (self) => self.protocol

///|
pub extern "js" fn WorkerLocation::get_host(self : WorkerLocation) -> String =
  #| (self) => self.host

///|
pub extern "js" fn WorkerLocation::get_hostname(
  self : WorkerLocation,
) -> String =
  #| (self) => self.hostname

///|
pub extern "js" fn WorkerLocation::get_port(self : WorkerLocation) -> String =
  #| (self) => self.port

///|
pub extern "js" fn WorkerLocation::get_pathname(
  self : WorkerLocation,
) -> String =
  #| (self) => self.pathname

///|
pub extern "js" fn WorkerLocation::get_search(self : WorkerLocation) -> String =
  #| (self) => self.search

///|
pub extern "js" fn WorkerLocation::get_hash(self : WorkerLocation) -> String =
  #| (self) => self.hash

///|
/// WorkletGlobalScope interface
pub type WorkletGlobalScope

///|
pub extern "js" fn WorkletGlobalScope::to_js_value(
  self : WorkletGlobalScope,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WorkletGlobalScope (unchecked)
pub extern "js" fn WorkletGlobalScope::from_js_value(
  v : JsValue,
) -> WorkletGlobalScope =
  #| (v) => v

///|
/// Safely cast JsValue to WorkletGlobalScope (checked with instanceof)
pub extern "js" fn WorkletGlobalScope::from_js_value_opt(
  v : JsValue,
) -> WorkletGlobalScope? =
  #| (v) => (v instanceof WorkletGlobalScope) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WorkletGlobalScope (checked with instanceof)
pub extern "js" fn JsValue::as_worklet_global_scope(
  self : JsValue,
) -> WorkletGlobalScope? =
  #| (self) => (self instanceof WorkletGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WorkletGlobalScope (unchecked)
pub extern "js" fn JsValue::to_worklet_global_scope(
  self : JsValue,
) -> WorkletGlobalScope =
  #| (self) => self

///|
pub extern "js" fn WorkletGlobalScope::as_animation_worklet_global_scope(
  self : WorkletGlobalScope,
) -> AnimationWorkletGlobalScope? =
  #| (self) => (self instanceof AnimationWorkletGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn WorkletGlobalScope::as_audio_worklet_global_scope(
  self : WorkletGlobalScope,
) -> AudioWorkletGlobalScope? =
  #| (self) => (self instanceof AudioWorkletGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn WorkletGlobalScope::as_shared_storage_worklet_global_scope(
  self : WorkletGlobalScope,
) -> SharedStorageWorkletGlobalScope? =
  #| (self) => (self instanceof SharedStorageWorkletGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn WorkletGlobalScope::as_layout_worklet_global_scope(
  self : WorkletGlobalScope,
) -> LayoutWorkletGlobalScope? =
  #| (self) => (self instanceof LayoutWorkletGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn WorkletGlobalScope::as_paint_worklet_global_scope(
  self : WorkletGlobalScope,
) -> PaintWorkletGlobalScope? =
  #| (self) => (self instanceof PaintWorkletGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Worklet interface
pub type Worklet

///|
pub extern "js" fn Worklet::to_js_value(self : Worklet) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Worklet (unchecked)
pub extern "js" fn Worklet::from_js_value(v : JsValue) -> Worklet =
  #| (v) => v

///|
/// Safely cast JsValue to Worklet (checked with instanceof)
pub extern "js" fn Worklet::from_js_value_opt(v : JsValue) -> Worklet? =
  #| (v) => (v instanceof Worklet) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Worklet (checked with instanceof)
pub extern "js" fn JsValue::as_worklet(self : JsValue) -> Worklet? =
  #| (self) => (self instanceof Worklet) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Worklet (unchecked)
pub extern "js" fn JsValue::to_worklet(self : JsValue) -> Worklet =
  #| (self) => self

///|
pub extern "js" fn Worklet::as_audio_worklet(self : Worklet) -> AudioWorklet? =
  #| (self) => (self instanceof AudioWorklet) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Worklet::as_shared_storage_worklet(
  self : Worklet,
) -> SharedStorageWorklet? =
  #| (self) => (self instanceof SharedStorageWorklet) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Worklet::add_module(
  self : Worklet,
  module_url : String,
) -> Promise[Unit] =
  #| (self, module_url) => self.addModule(module_url)

///|
extern "js" fn Worklet::add_module_with_options_ffi(
  self : Worklet,
  module_url : String,
  options : JsValue,
) -> Promise[Unit] =
  #| (self, module_url, options) => self.addModule(module_url, options)

///|
pub fn Worklet::add_module_with_options(
  self : Worklet,
  module_url : String,
  options : WorkletOptions,
) -> Promise[Unit] {
  Worklet::add_module_with_options_ffi(self, module_url, options.to_js())
}

///|
/// Storage interface
pub type Storage

///|
pub extern "js" fn Storage::to_js_value(self : Storage) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Storage (unchecked)
pub extern "js" fn Storage::from_js_value(v : JsValue) -> Storage =
  #| (v) => v

///|
/// Safely cast JsValue to Storage (checked with instanceof)
pub extern "js" fn Storage::from_js_value_opt(v : JsValue) -> Storage? =
  #| (v) => (v instanceof Storage) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Storage (checked with instanceof)
pub extern "js" fn JsValue::as_storage(self : JsValue) -> Storage? =
  #| (self) => (self instanceof Storage) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Storage (unchecked)
pub extern "js" fn JsValue::to_storage(self : JsValue) -> Storage =
  #| (self) => self

///|
pub extern "js" fn Storage::get_length(self : Storage) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn Storage::key(self : Storage, index : Int) -> String? =
  #| (self, index) => (self.key(index)) ?? undefined

///|
pub extern "js" fn Storage::get_item(self : Storage, key : String) -> String? =
  #| (self, key) => (self.getItem(key)) ?? undefined

///|
pub extern "js" fn Storage::get_named(self : Storage, key : String) -> String? =
  #| (self, key) => (self[key]) ?? undefined

///|
pub extern "js" fn Storage::set_item(
  self : Storage,
  key : String,
  value : String,
) -> Unit =
  #| (self, key, value) => self.setItem(key, value)

///|
pub extern "js" fn Storage::set(
  self : Storage,
  key : String,
  value : String,
) -> Unit =
  #| (self, key, value) => { self[key] = value }

///|
pub extern "js" fn Storage::remove_item(self : Storage, key : String) -> Unit =
  #| (self, key) => self.removeItem(key)

///|
pub extern "js" fn Storage::delete(self : Storage, key : String) -> Unit =
  #| (self, key) => { delete self[key] }

///|
pub extern "js" fn Storage::clear(self : Storage) -> Unit =
  #| (self) => self.clear()

///|
/// StorageEvent interface
pub type StorageEvent

///|
pub extern "js" fn StorageEvent::to_js_value(self : StorageEvent) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to StorageEvent (unchecked)
pub extern "js" fn StorageEvent::from_js_value(v : JsValue) -> StorageEvent =
  #| (v) => v

///|
/// Safely cast JsValue to StorageEvent (checked with instanceof)
pub extern "js" fn StorageEvent::from_js_value_opt(
  v : JsValue,
) -> StorageEvent? =
  #| (v) => (v instanceof StorageEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to StorageEvent (checked with instanceof)
pub extern "js" fn JsValue::as_storage_event(self : JsValue) -> StorageEvent? =
  #| (self) => (self instanceof StorageEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to StorageEvent (unchecked)
pub extern "js" fn JsValue::to_storage_event(self : JsValue) -> StorageEvent =
  #| (self) => self

///|
pub extern "js" fn StorageEvent::to_event(self : StorageEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn StorageEvent::new(type_ : String) -> StorageEvent =
  #| (type_) => new StorageEvent(type_)

///|
extern "js" fn StorageEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> StorageEvent =
  #| (type_, event_init_dict) => new StorageEvent(type_, event_init_dict)

///|
pub fn StorageEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : StorageEventInit,
) -> StorageEvent {
  StorageEvent::new_with_event_init_dict_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn StorageEvent::get_key(self : StorageEvent) -> String? =
  #| (self) => (self.key) ?? undefined

///|
pub extern "js" fn StorageEvent::get_old_value(self : StorageEvent) -> String? =
  #| (self) => (self.oldValue) ?? undefined

///|
pub extern "js" fn StorageEvent::get_new_value(self : StorageEvent) -> String? =
  #| (self) => (self.newValue) ?? undefined

///|
pub extern "js" fn StorageEvent::get_url(self : StorageEvent) -> String =
  #| (self) => self.url

///|
pub extern "js" fn StorageEvent::get_storage_area(
  self : StorageEvent,
) -> Storage? =
  #| (self) => (() => { const v = self.storageArea; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn StorageEvent::init_storage_event(
  self : StorageEvent,
  type_ : String,
) -> Unit =
  #| (self, type_) => self.initStorageEvent(type_)

///|
pub extern "js" fn StorageEvent::init_storage_event_with_storage_area(
  self : StorageEvent,
  type_ : String,
  bubbles : Bool,
  cancelable : Bool,
  key : String?,
  old_value : String?,
  new_value : String?,
  url : String,
  storage_area : Storage?,
) -> Unit =
  #| (self, type_, bubbles, cancelable, key, old_value, new_value, url, storage_area) => self.initStorageEvent(type_, bubbles, cancelable, key, old_value, new_value, url, (storage_area.$tag === 1 ? storage_area._0 : null))

///|
/// HTMLMarqueeElement interface
pub type HTMLMarqueeElement

///|
pub extern "js" fn HTMLMarqueeElement::to_js_value(
  self : HTMLMarqueeElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLMarqueeElement (unchecked)
pub extern "js" fn HTMLMarqueeElement::from_js_value(
  v : JsValue,
) -> HTMLMarqueeElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLMarqueeElement (checked with instanceof)
pub extern "js" fn HTMLMarqueeElement::from_js_value_opt(
  v : JsValue,
) -> HTMLMarqueeElement? =
  #| (v) => (v instanceof HTMLMarqueeElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLMarqueeElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_marquee_element(
  self : JsValue,
) -> HTMLMarqueeElement? =
  #| (self) => (self instanceof HTMLMarqueeElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLMarqueeElement (unchecked)
pub extern "js" fn JsValue::to_html_marquee_element(
  self : JsValue,
) -> HTMLMarqueeElement =
  #| (self) => self

///|
pub extern "js" fn HTMLMarqueeElement::to_html_element(
  self : HTMLMarqueeElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLMarqueeElement::to_element(
  self : HTMLMarqueeElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLMarqueeElement::to_node(
  self : HTMLMarqueeElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLMarqueeElement::to_event_target(
  self : HTMLMarqueeElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLMarqueeElement::new() -> HTMLMarqueeElement =
  #| () => new HTMLMarqueeElement()

///|
pub extern "js" fn HTMLMarqueeElement::get_behavior(
  self : HTMLMarqueeElement,
) -> String =
  #| (self) => self.behavior

///|
pub extern "js" fn HTMLMarqueeElement::set_behavior(
  self : HTMLMarqueeElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.behavior = value }

///|
pub extern "js" fn HTMLMarqueeElement::get_bg_color(
  self : HTMLMarqueeElement,
) -> String =
  #| (self) => self.bgColor

///|
pub extern "js" fn HTMLMarqueeElement::set_bg_color(
  self : HTMLMarqueeElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.bgColor = value }

///|
pub extern "js" fn HTMLMarqueeElement::get_direction(
  self : HTMLMarqueeElement,
) -> String =
  #| (self) => self.direction

///|
pub extern "js" fn HTMLMarqueeElement::set_direction(
  self : HTMLMarqueeElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.direction = value }

///|
pub extern "js" fn HTMLMarqueeElement::get_height(
  self : HTMLMarqueeElement,
) -> String =
  #| (self) => self.height

///|
pub extern "js" fn HTMLMarqueeElement::set_height(
  self : HTMLMarqueeElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.height = value }

///|
pub extern "js" fn HTMLMarqueeElement::get_hspace(
  self : HTMLMarqueeElement,
) -> Int =
  #| (self) => self.hspace

///|
pub extern "js" fn HTMLMarqueeElement::set_hspace(
  self : HTMLMarqueeElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.hspace = value }

///|
pub extern "js" fn HTMLMarqueeElement::get_loop(
  self : HTMLMarqueeElement,
) -> Int =
  #| (self) => self.loop

///|
pub extern "js" fn HTMLMarqueeElement::set_loop(
  self : HTMLMarqueeElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.loop = value }

///|
pub extern "js" fn HTMLMarqueeElement::get_scroll_amount(
  self : HTMLMarqueeElement,
) -> Int =
  #| (self) => self.scrollAmount

///|
pub extern "js" fn HTMLMarqueeElement::set_scroll_amount(
  self : HTMLMarqueeElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.scrollAmount = value }

///|
pub extern "js" fn HTMLMarqueeElement::get_scroll_delay(
  self : HTMLMarqueeElement,
) -> Int =
  #| (self) => self.scrollDelay

///|
pub extern "js" fn HTMLMarqueeElement::set_scroll_delay(
  self : HTMLMarqueeElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.scrollDelay = value }

///|
pub extern "js" fn HTMLMarqueeElement::get_true_speed(
  self : HTMLMarqueeElement,
) -> Bool =
  #| (self) => self.trueSpeed

///|
pub extern "js" fn HTMLMarqueeElement::set_true_speed(
  self : HTMLMarqueeElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.trueSpeed = value }

///|
pub extern "js" fn HTMLMarqueeElement::get_vspace(
  self : HTMLMarqueeElement,
) -> Int =
  #| (self) => self.vspace

///|
pub extern "js" fn HTMLMarqueeElement::set_vspace(
  self : HTMLMarqueeElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.vspace = value }

///|
pub extern "js" fn HTMLMarqueeElement::get_width(
  self : HTMLMarqueeElement,
) -> String =
  #| (self) => self.width

///|
pub extern "js" fn HTMLMarqueeElement::set_width(
  self : HTMLMarqueeElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.width = value }

///|
pub extern "js" fn HTMLMarqueeElement::start(self : HTMLMarqueeElement) -> Unit =
  #| (self) => self.start()

///|
pub extern "js" fn HTMLMarqueeElement::stop(self : HTMLMarqueeElement) -> Unit =
  #| (self) => self.stop()

///|
/// HTMLFrameSetElement interface
pub type HTMLFrameSetElement

///|
pub extern "js" fn HTMLFrameSetElement::to_js_value(
  self : HTMLFrameSetElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLFrameSetElement (unchecked)
pub extern "js" fn HTMLFrameSetElement::from_js_value(
  v : JsValue,
) -> HTMLFrameSetElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLFrameSetElement (checked with instanceof)
pub extern "js" fn HTMLFrameSetElement::from_js_value_opt(
  v : JsValue,
) -> HTMLFrameSetElement? =
  #| (v) => (v instanceof HTMLFrameSetElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLFrameSetElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_frame_set_element(
  self : JsValue,
) -> HTMLFrameSetElement? =
  #| (self) => (self instanceof HTMLFrameSetElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLFrameSetElement (unchecked)
pub extern "js" fn JsValue::to_html_frame_set_element(
  self : JsValue,
) -> HTMLFrameSetElement =
  #| (self) => self

///|
pub extern "js" fn HTMLFrameSetElement::to_html_element(
  self : HTMLFrameSetElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLFrameSetElement::to_element(
  self : HTMLFrameSetElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLFrameSetElement::to_node(
  self : HTMLFrameSetElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLFrameSetElement::to_event_target(
  self : HTMLFrameSetElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLFrameSetElement::new() -> HTMLFrameSetElement =
  #| () => new HTMLFrameSetElement()

///|
pub extern "js" fn HTMLFrameSetElement::get_cols(
  self : HTMLFrameSetElement,
) -> String =
  #| (self) => self.cols

///|
pub extern "js" fn HTMLFrameSetElement::set_cols(
  self : HTMLFrameSetElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.cols = value }

///|
pub extern "js" fn HTMLFrameSetElement::get_rows(
  self : HTMLFrameSetElement,
) -> String =
  #| (self) => self.rows

///|
pub extern "js" fn HTMLFrameSetElement::set_rows(
  self : HTMLFrameSetElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.rows = value }

///|
pub extern "js" fn HTMLFrameSetElement::get_onafterprint(
  self : HTMLFrameSetElement,
) -> EventHandler =
  #| (self) => self.onafterprint

///|
pub extern "js" fn HTMLFrameSetElement::set_onafterprint(
  self : HTMLFrameSetElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onafterprint = value }

///|
pub extern "js" fn HTMLFrameSetElement::get_onbeforeprint(
  self : HTMLFrameSetElement,
) -> EventHandler =
  #| (self) => self.onbeforeprint

///|
pub extern "js" fn HTMLFrameSetElement::set_onbeforeprint(
  self : HTMLFrameSetElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbeforeprint = value }

///|
pub extern "js" fn HTMLFrameSetElement::get_onbeforeunload(
  self : HTMLFrameSetElement,
) -> OnBeforeUnloadEventHandler =
  #| (self) => self.onbeforeunload

///|
pub extern "js" fn HTMLFrameSetElement::set_onbeforeunload(
  self : HTMLFrameSetElement,
  value : OnBeforeUnloadEventHandler,
) -> Unit =
  #| (self, value) => { self.onbeforeunload = value }

///|
pub extern "js" fn HTMLFrameSetElement::get_onhashchange(
  self : HTMLFrameSetElement,
) -> EventHandler =
  #| (self) => self.onhashchange

///|
pub extern "js" fn HTMLFrameSetElement::set_onhashchange(
  self : HTMLFrameSetElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onhashchange = value }

///|
pub extern "js" fn HTMLFrameSetElement::get_onlanguagechange(
  self : HTMLFrameSetElement,
) -> EventHandler =
  #| (self) => self.onlanguagechange

///|
pub extern "js" fn HTMLFrameSetElement::set_onlanguagechange(
  self : HTMLFrameSetElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onlanguagechange = value }

///|
pub extern "js" fn HTMLFrameSetElement::get_onmessage(
  self : HTMLFrameSetElement,
) -> EventHandler =
  #| (self) => self.onmessage

///|
pub extern "js" fn HTMLFrameSetElement::set_onmessage(
  self : HTMLFrameSetElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmessage = value }

///|
pub extern "js" fn HTMLFrameSetElement::get_onmessageerror(
  self : HTMLFrameSetElement,
) -> EventHandler =
  #| (self) => self.onmessageerror

///|
pub extern "js" fn HTMLFrameSetElement::set_onmessageerror(
  self : HTMLFrameSetElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmessageerror = value }

///|
pub extern "js" fn HTMLFrameSetElement::get_onoffline(
  self : HTMLFrameSetElement,
) -> EventHandler =
  #| (self) => self.onoffline

///|
pub extern "js" fn HTMLFrameSetElement::set_onoffline(
  self : HTMLFrameSetElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onoffline = value }

///|
pub extern "js" fn HTMLFrameSetElement::get_ononline(
  self : HTMLFrameSetElement,
) -> EventHandler =
  #| (self) => self.ononline

///|
pub extern "js" fn HTMLFrameSetElement::set_ononline(
  self : HTMLFrameSetElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ononline = value }

///|
pub extern "js" fn HTMLFrameSetElement::get_onpagehide(
  self : HTMLFrameSetElement,
) -> EventHandler =
  #| (self) => self.onpagehide

///|
pub extern "js" fn HTMLFrameSetElement::set_onpagehide(
  self : HTMLFrameSetElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpagehide = value }

///|
pub extern "js" fn HTMLFrameSetElement::get_onpagereveal(
  self : HTMLFrameSetElement,
) -> EventHandler =
  #| (self) => self.onpagereveal

///|
pub extern "js" fn HTMLFrameSetElement::set_onpagereveal(
  self : HTMLFrameSetElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpagereveal = value }

///|
pub extern "js" fn HTMLFrameSetElement::get_onpageshow(
  self : HTMLFrameSetElement,
) -> EventHandler =
  #| (self) => self.onpageshow

///|
pub extern "js" fn HTMLFrameSetElement::set_onpageshow(
  self : HTMLFrameSetElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpageshow = value }

///|
pub extern "js" fn HTMLFrameSetElement::get_onpageswap(
  self : HTMLFrameSetElement,
) -> EventHandler =
  #| (self) => self.onpageswap

///|
pub extern "js" fn HTMLFrameSetElement::set_onpageswap(
  self : HTMLFrameSetElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpageswap = value }

///|
pub extern "js" fn HTMLFrameSetElement::get_onpopstate(
  self : HTMLFrameSetElement,
) -> EventHandler =
  #| (self) => self.onpopstate

///|
pub extern "js" fn HTMLFrameSetElement::set_onpopstate(
  self : HTMLFrameSetElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpopstate = value }

///|
pub extern "js" fn HTMLFrameSetElement::get_onrejectionhandled(
  self : HTMLFrameSetElement,
) -> EventHandler =
  #| (self) => self.onrejectionhandled

///|
pub extern "js" fn HTMLFrameSetElement::set_onrejectionhandled(
  self : HTMLFrameSetElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onrejectionhandled = value }

///|
pub extern "js" fn HTMLFrameSetElement::get_onstorage(
  self : HTMLFrameSetElement,
) -> EventHandler =
  #| (self) => self.onstorage

///|
pub extern "js" fn HTMLFrameSetElement::set_onstorage(
  self : HTMLFrameSetElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onstorage = value }

///|
pub extern "js" fn HTMLFrameSetElement::get_onunhandledrejection(
  self : HTMLFrameSetElement,
) -> EventHandler =
  #| (self) => self.onunhandledrejection

///|
pub extern "js" fn HTMLFrameSetElement::set_onunhandledrejection(
  self : HTMLFrameSetElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onunhandledrejection = value }

///|
pub extern "js" fn HTMLFrameSetElement::get_onunload(
  self : HTMLFrameSetElement,
) -> EventHandler =
  #| (self) => self.onunload

///|
pub extern "js" fn HTMLFrameSetElement::set_onunload(
  self : HTMLFrameSetElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onunload = value }

///|
pub extern "js" fn HTMLFrameSetElement::get_onportalactivate(
  self : HTMLFrameSetElement,
) -> EventHandler =
  #| (self) => self.onportalactivate

///|
pub extern "js" fn HTMLFrameSetElement::set_onportalactivate(
  self : HTMLFrameSetElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onportalactivate = value }

///|
pub extern "js" fn HTMLFrameSetElement::get_ongamepadconnected(
  self : HTMLFrameSetElement,
) -> EventHandler =
  #| (self) => self.ongamepadconnected

///|
pub extern "js" fn HTMLFrameSetElement::set_ongamepadconnected(
  self : HTMLFrameSetElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ongamepadconnected = value }

///|
pub extern "js" fn HTMLFrameSetElement::get_ongamepaddisconnected(
  self : HTMLFrameSetElement,
) -> EventHandler =
  #| (self) => self.ongamepaddisconnected

///|
pub extern "js" fn HTMLFrameSetElement::set_ongamepaddisconnected(
  self : HTMLFrameSetElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ongamepaddisconnected = value }

///|
/// HTMLFrameElement interface
pub type HTMLFrameElement

///|
pub extern "js" fn HTMLFrameElement::to_js_value(
  self : HTMLFrameElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLFrameElement (unchecked)
pub extern "js" fn HTMLFrameElement::from_js_value(
  v : JsValue,
) -> HTMLFrameElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLFrameElement (checked with instanceof)
pub extern "js" fn HTMLFrameElement::from_js_value_opt(
  v : JsValue,
) -> HTMLFrameElement? =
  #| (v) => (v instanceof HTMLFrameElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLFrameElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_frame_element(
  self : JsValue,
) -> HTMLFrameElement? =
  #| (self) => (self instanceof HTMLFrameElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLFrameElement (unchecked)
pub extern "js" fn JsValue::to_html_frame_element(
  self : JsValue,
) -> HTMLFrameElement =
  #| (self) => self

///|
pub extern "js" fn HTMLFrameElement::to_html_element(
  self : HTMLFrameElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLFrameElement::to_element(
  self : HTMLFrameElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLFrameElement::to_node(self : HTMLFrameElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLFrameElement::to_event_target(
  self : HTMLFrameElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLFrameElement::new() -> HTMLFrameElement =
  #| () => new HTMLFrameElement()

///|
pub extern "js" fn HTMLFrameElement::get_name(
  self : HTMLFrameElement,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn HTMLFrameElement::set_name(
  self : HTMLFrameElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.name = value }

///|
pub extern "js" fn HTMLFrameElement::get_scrolling(
  self : HTMLFrameElement,
) -> String =
  #| (self) => self.scrolling

///|
pub extern "js" fn HTMLFrameElement::set_scrolling(
  self : HTMLFrameElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.scrolling = value }

///|
pub extern "js" fn HTMLFrameElement::get_src(self : HTMLFrameElement) -> String =
  #| (self) => self.src

///|
pub extern "js" fn HTMLFrameElement::set_src(
  self : HTMLFrameElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.src = value }

///|
pub extern "js" fn HTMLFrameElement::get_frame_border(
  self : HTMLFrameElement,
) -> String =
  #| (self) => self.frameBorder

///|
pub extern "js" fn HTMLFrameElement::set_frame_border(
  self : HTMLFrameElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.frameBorder = value }

///|
pub extern "js" fn HTMLFrameElement::get_long_desc(
  self : HTMLFrameElement,
) -> String =
  #| (self) => self.longDesc

///|
pub extern "js" fn HTMLFrameElement::set_long_desc(
  self : HTMLFrameElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.longDesc = value }

///|
pub extern "js" fn HTMLFrameElement::get_no_resize(
  self : HTMLFrameElement,
) -> Bool =
  #| (self) => self.noResize

///|
pub extern "js" fn HTMLFrameElement::set_no_resize(
  self : HTMLFrameElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.noResize = value }

///|
pub extern "js" fn HTMLFrameElement::get_content_document(
  self : HTMLFrameElement,
) -> Document? =
  #| (self) => (() => { const v = self.contentDocument; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLFrameElement::get_content_window(
  self : HTMLFrameElement,
) -> Window? =
  #| (self) => (() => { const v = self.contentWindow; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLFrameElement::get_margin_height(
  self : HTMLFrameElement,
) -> String =
  #| (self) => self.marginHeight

///|
pub extern "js" fn HTMLFrameElement::set_margin_height(
  self : HTMLFrameElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.marginHeight = value }

///|
pub extern "js" fn HTMLFrameElement::get_margin_width(
  self : HTMLFrameElement,
) -> String =
  #| (self) => self.marginWidth

///|
pub extern "js" fn HTMLFrameElement::set_margin_width(
  self : HTMLFrameElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.marginWidth = value }

///|
/// HTMLDirectoryElement interface
pub type HTMLDirectoryElement

///|
pub extern "js" fn HTMLDirectoryElement::to_js_value(
  self : HTMLDirectoryElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLDirectoryElement (unchecked)
pub extern "js" fn HTMLDirectoryElement::from_js_value(
  v : JsValue,
) -> HTMLDirectoryElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLDirectoryElement (checked with instanceof)
pub extern "js" fn HTMLDirectoryElement::from_js_value_opt(
  v : JsValue,
) -> HTMLDirectoryElement? =
  #| (v) => (v instanceof HTMLDirectoryElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLDirectoryElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_directory_element(
  self : JsValue,
) -> HTMLDirectoryElement? =
  #| (self) => (self instanceof HTMLDirectoryElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLDirectoryElement (unchecked)
pub extern "js" fn JsValue::to_html_directory_element(
  self : JsValue,
) -> HTMLDirectoryElement =
  #| (self) => self

///|
pub extern "js" fn HTMLDirectoryElement::to_html_element(
  self : HTMLDirectoryElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLDirectoryElement::to_element(
  self : HTMLDirectoryElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLDirectoryElement::to_node(
  self : HTMLDirectoryElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLDirectoryElement::to_event_target(
  self : HTMLDirectoryElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLDirectoryElement::new() -> HTMLDirectoryElement =
  #| () => new HTMLDirectoryElement()

///|
pub extern "js" fn HTMLDirectoryElement::get_compact(
  self : HTMLDirectoryElement,
) -> Bool =
  #| (self) => self.compact

///|
pub extern "js" fn HTMLDirectoryElement::set_compact(
  self : HTMLDirectoryElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.compact = value }

///|
/// HTMLFontElement interface
pub type HTMLFontElement

///|
pub extern "js" fn HTMLFontElement::to_js_value(
  self : HTMLFontElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLFontElement (unchecked)
pub extern "js" fn HTMLFontElement::from_js_value(
  v : JsValue,
) -> HTMLFontElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLFontElement (checked with instanceof)
pub extern "js" fn HTMLFontElement::from_js_value_opt(
  v : JsValue,
) -> HTMLFontElement? =
  #| (v) => (v instanceof HTMLFontElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLFontElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_font_element(
  self : JsValue,
) -> HTMLFontElement? =
  #| (self) => (self instanceof HTMLFontElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLFontElement (unchecked)
pub extern "js" fn JsValue::to_html_font_element(
  self : JsValue,
) -> HTMLFontElement =
  #| (self) => self

///|
pub extern "js" fn HTMLFontElement::to_html_element(
  self : HTMLFontElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLFontElement::to_element(
  self : HTMLFontElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLFontElement::to_node(self : HTMLFontElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLFontElement::to_event_target(
  self : HTMLFontElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLFontElement::new() -> HTMLFontElement =
  #| () => new HTMLFontElement()

///|
pub extern "js" fn HTMLFontElement::get_color(self : HTMLFontElement) -> String =
  #| (self) => self.color

///|
pub extern "js" fn HTMLFontElement::set_color(
  self : HTMLFontElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.color = value }

///|
pub extern "js" fn HTMLFontElement::get_face(self : HTMLFontElement) -> String =
  #| (self) => self.face

///|
pub extern "js" fn HTMLFontElement::set_face(
  self : HTMLFontElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.face = value }

///|
pub extern "js" fn HTMLFontElement::get_size(self : HTMLFontElement) -> String =
  #| (self) => self.size

///|
pub extern "js" fn HTMLFontElement::set_size(
  self : HTMLFontElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.size = value }

///|
/// HTMLParamElement interface
pub type HTMLParamElement

///|
pub extern "js" fn HTMLParamElement::to_js_value(
  self : HTMLParamElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLParamElement (unchecked)
pub extern "js" fn HTMLParamElement::from_js_value(
  v : JsValue,
) -> HTMLParamElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLParamElement (checked with instanceof)
pub extern "js" fn HTMLParamElement::from_js_value_opt(
  v : JsValue,
) -> HTMLParamElement? =
  #| (v) => (v instanceof HTMLParamElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLParamElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_param_element(
  self : JsValue,
) -> HTMLParamElement? =
  #| (self) => (self instanceof HTMLParamElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLParamElement (unchecked)
pub extern "js" fn JsValue::to_html_param_element(
  self : JsValue,
) -> HTMLParamElement =
  #| (self) => self

///|
pub extern "js" fn HTMLParamElement::to_html_element(
  self : HTMLParamElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLParamElement::to_element(
  self : HTMLParamElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLParamElement::to_node(self : HTMLParamElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLParamElement::to_event_target(
  self : HTMLParamElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLParamElement::new() -> HTMLParamElement =
  #| () => new HTMLParamElement()

///|
pub extern "js" fn HTMLParamElement::get_name(
  self : HTMLParamElement,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn HTMLParamElement::set_name(
  self : HTMLParamElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.name = value }

///|
pub extern "js" fn HTMLParamElement::get_value(
  self : HTMLParamElement,
) -> String =
  #| (self) => self.value

///|
pub extern "js" fn HTMLParamElement::set_value(
  self : HTMLParamElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.value = value }

///|
pub extern "js" fn HTMLParamElement::get_type(
  self : HTMLParamElement,
) -> String =
  #| (self) => self.type

///|
pub extern "js" fn HTMLParamElement::set_type(
  self : HTMLParamElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.type = value }

///|
pub extern "js" fn HTMLParamElement::get_value_type(
  self : HTMLParamElement,
) -> String =
  #| (self) => self.valueType

///|
pub extern "js" fn HTMLParamElement::set_value_type(
  self : HTMLParamElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.valueType = value }

///|
/// External interface
pub type External

///|
pub extern "js" fn External::to_js_value(self : External) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to External (unchecked)
pub extern "js" fn External::from_js_value(v : JsValue) -> External =
  #| (v) => v

///|
/// Safely cast JsValue to External (checked with instanceof)
pub extern "js" fn External::from_js_value_opt(v : JsValue) -> External? =
  #| (v) => (v instanceof External) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to External (checked with instanceof)
pub extern "js" fn JsValue::as_external(self : JsValue) -> External? =
  #| (self) => (self instanceof External) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to External (unchecked)
pub extern "js" fn JsValue::to_external(self : JsValue) -> External =
  #| (self) => self

///|
pub extern "js" fn External::add_search_provider(self : External) -> Unit =
  #| (self) => self.AddSearchProvider()

///|
pub extern "js" fn External::is_search_provider_installed(
  self : External,
) -> Unit =
  #| (self) => self.IsSearchProviderInstalled()
