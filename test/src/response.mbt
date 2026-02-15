///|
fn test_response() -> Unit {
  let resp = @websys.Response::new()
  assert_eq(resp.get_status(), 200, label="default status")
  assert_true(resp.get_ok(), label="default ok")
  assert_eq(resp.get_status_text(), "", label="default statusText")
  assert_false(resp.get_redirected(), label="default redirected")
  assert_false(resp.get_body_used(), label="default bodyUsed")
  // clone
  let cloned = resp.clone()
  assert_eq(cloned.get_status(), 200, label="cloned status")
  assert_true(cloned.get_ok(), label="cloned ok")
  // headers
  let headers = resp.get_headers()
  // Response headers start empty
  assert_false(headers.has("content-type"), label="no content-type header")

  // body — Web API: response.body → ReadableStream?
  let _ = resp.get_body()

  // ResponseInit — construct a Response with custom status/statusText
  let init = @websys.ResponseInit::{
    status: Some(201),
    statusText: Some("Created"),
    headers: None,
  }
  let resp2 = @websys.Response::new_with_init(None, init)
  assert_eq(resp2.get_status(), 201, label="ResponseInit status")
  assert_eq(resp2.get_status_text(), "Created", label="ResponseInit statusText")
}

///|
/// Test Response.text() async — empty body should resolve to "".
async fn test_response_body() -> Unit {
  let resp = @websys.Response::new()
  // text() returns Promise[String]; empty Response body → ""
  let text = resp.text().wait()
  assert_eq(text, "", label="response text empty")
}

///|
fn test_response_error() -> Unit {
  let resp = @websys.Response::error()
  assert_eq(resp.get_status(), 0, label="error status")
  assert_false(resp.get_ok(), label="error not ok")
}
