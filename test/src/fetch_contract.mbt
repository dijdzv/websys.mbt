///|
async fn test_js_fetch_post_contract() -> Unit {
  let window = @websys.window().unwrap()
  let headers = @websys.HeadersInit::from_array_of_array_of_string([
    ["Content-Type", "text/plain"],
    ["Accept", "text/plain"],
  ])
  let body = @websys.BodyInit::from_xml_http_request_body_init(
    @websys.XMLHttpRequestBodyInit::from_string("日本😀"),
  )
  let response = window
    .fetch_with_init(@websys.RequestInfo::from_string("/contract/post"), @websys.RequestInit::{
      ..@websys.RequestInit::default(),
      method_: Some("POST"),
      headers: Some(headers),
      body: Value(body),
    })
    .wait()
    .unwrap()
  assert_eq(response.get_status(), 200, label="POST status")
  assert_true(response.get_ok(), label="POST ok")
  assert_eq(
    response.text().wait().unwrap(),
    "POST|text/plain|text/plain|日本😀",
    label="POST header and body contract",
  )
}

///|
async fn test_js_fetch_metadata_contract() -> Unit {
  let response = @websys.window()
    .unwrap()
    .fetch(@websys.RequestInfo::from_string("/contract/not-found"))
    .wait()
    .unwrap()
  assert_eq(response.get_status(), 404, label="404 remains a response")
  assert_false(response.get_ok(), label="404 not ok")
  assert_eq(
    response.get_headers().get("Content-Type"),
    Some("application/json"),
    label="response content type",
  )
  assert_eq(
    response.get_headers().get("X-Missing"),
    None,
    label="missing header",
  )
  assert_eq(
    response.get_headers().get("X-Empty"),
    Some(""),
    label="empty header",
  )
  assert_eq(response.text().wait().unwrap(), "{}", label="404 body readable")
}

///|
async fn test_js_fetch_pending_body_contract() -> Unit {
  let controller = @websys.AbortController::new()
  let response = @websys.window()
    .unwrap()
    .fetch_with_init(@websys.RequestInfo::from_string("/contract/pending"), @websys.RequestInit::{
      ..@websys.RequestInit::default(),
      signal: Value(controller.get_signal()),
    })
    .wait()
    .unwrap()
  let body = response.get_body().unwrap()
  let reader = @websys.ReadableStreamDefaultReader::new(body).unwrap()
  let pending = reader.read()
  controller.abort()
  assert_true(pending.wait() is Err(_), label="aborted pending read rejects")
  reader.release_lock().unwrap()
  assert_false(body.get_locked(), label="reader released after abort")
}
