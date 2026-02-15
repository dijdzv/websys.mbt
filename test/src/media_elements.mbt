///|
fn test_video_element() -> Unit {
  let doc = get_document()
  let video = @websys.HTMLVideoElement::from_js_value(
    doc.create_element("video").to_js_value(),
  )
  // width/height
  video.set_width(640)
  assert_eq(video.get_width(), 640, label="width")
  video.set_height(480)
  assert_eq(video.get_height(), 480, label="height")
  // poster is a URL-reflected attribute: getter returns absolute URL
  video.set_poster("https://cdn.example.com/poster.jpg")
  assert_eq(
    video.get_poster(),
    "https://cdn.example.com/poster.jpg",
    label="poster",
  )
  // playsInline
  assert_false(video.get_plays_inline(), label="playsInline default")
  video.set_plays_inline(true)
  assert_true(video.get_plays_inline(), label="playsInline set")
  // type conversions
  let _media : @websys.HTMLMediaElement = video.to_html_media_element()
  let _html : @websys.HTMLElement = video.to_html_element()
}

///|
fn test_audio_element() -> Unit {
  let doc = get_document()
  let audio = @websys.HTMLAudioElement::from_js_value(
    doc.create_element("audio").to_js_value(),
  )
  // type conversions
  let _media : @websys.HTMLMediaElement = audio.to_html_media_element()
  let _html : @websys.HTMLElement = audio.to_html_element()
  let _node : @websys.Node = audio.to_node()
}

///|
fn test_source_element() -> Unit {
  let doc = get_document()
  let source = @websys.HTMLSourceElement::from_js_value(
    doc.create_element("source").to_js_value(),
  )
  // src is a URL-reflected attribute: getter returns absolute URL
  source.set_src("https://cdn.example.com/video.mp4")
  assert_eq(source.get_src(), "https://cdn.example.com/video.mp4", label="src")
  source.set_type("video/mp4")
  assert_eq(source.get_type(), "video/mp4", label="type")
  source.set_media("(min-width: 600px)")
  assert_eq(source.get_media(), "(min-width: 600px)", label="media")
  source.set_srcset("img-320w.jpg 320w, img-640w.jpg 640w")
  assert_eq(
    source.get_srcset(),
    "img-320w.jpg 320w, img-640w.jpg 640w",
    label="srcset",
  )
  source.set_sizes("(max-width: 600px) 320px, 640px")
  assert_eq(
    source.get_sizes(),
    "(max-width: 600px) 320px, 640px",
    label="sizes",
  )
}
