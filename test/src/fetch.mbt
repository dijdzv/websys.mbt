///|
extern "js" fn request_echo_window() -> @websys.Window =
  #| () => ({ fetch: async (input, init) => {
  #|   const request = new Request(input, init);
  #|   if (request.signal.aborted) throw new DOMException('Canceled', 'AbortError');
  #|   return new Response([request.method, request.headers.get('Content-Type'), await request.text()].join('|'));
  #| } })

///|
async fn test_fetch_dictionary() -> Unit {
  let controller = @websys.AbortController::new()
  let options = @websys.RequestInit::{
    ..@websys.RequestInit::default(),
    method_: Some("POST"),
    headers: Some(
      @websys.HeadersInit::from_array_of_array_of_string([
        ["Content-Type", "application/json"],
      ]),
    ),
    body: Value(
      @websys.BodyInit::from_xml_http_request_body_init(
        @websys.XMLHttpRequestBodyInit::from_string("{\"id\":1}"),
      ),
    ),
    signal: Value(controller.get_signal()),
  }
  let host = request_echo_window()
  let request = @websys.Request::new_with_string(
    "https://example.test/rpc", options,
  ).unwrap()
  assert_eq(request.get_method(), "POST", label="constructor request method")
  assert_eq(
    request.text().wait().unwrap(),
    "{\"id\":1}",
    label="constructor request body",
  )
  let response = host
    .fetch_with_string("https://example.test/rpc", options)
    .wait()
    .unwrap()
  assert_eq(
    response.text().wait().unwrap(),
    "POST|application/json|{\"id\":1}",
    label="overload request dictionary",
  )
  controller.abort()
  assert_true(
    request.get_signal().get_aborted(),
    label="constructor abort signal",
  )
  match host.fetch_with_string("https://example.test/rpc", options).wait() {
    Err(AbortError(_)) => ()
    _ => assert_true(false, label="overload abort signal")
  }
}
