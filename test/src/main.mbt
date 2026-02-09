///|
fn[T : Eq + Show] assert_eq(
  actual : T,
  expected : T,
  label? : String = "",
) -> Unit {
  if actual != expected {
    let msg = if label != "" {
      "FAIL [\{label}]: expected \{expected}, got \{actual}"
    } else {
      "FAIL: expected \{expected}, got \{actual}"
    }
    println(msg)
    abort(msg)
  }
}

///|
fn assert_true(value : Bool, label? : String = "") -> Unit {
  if not(value) {
    let msg = if label != "" {
      "FAIL [\{label}]: expected true, got false"
    } else {
      "FAIL: expected true, got false"
    }
    println(msg)
    abort(msg)
  }
}

///|
fn assert_false(value : Bool, label? : String = "") -> Unit {
  if value {
    let msg = if label != "" {
      "FAIL [\{label}]: expected false, got true"
    } else {
      "FAIL: expected false, got true"
    }
    println(msg)
    abort(msg)
  }
}

///|
/// Run a test function, catching panics and reporting pass/fail.
/// Returns true if passed, false if failed.
extern "js" fn run_test(name : String, f : () -> Unit) -> Bool =
  #| (name, f) => {
  #|   try { f(); return true; }
  #|   catch (e) { console.error(`  FAIL: ${name}`); if (e.message) console.error(`    Error: ${e.message}`); return false; }
  #| }

///|
/// Run an async test function, catching rejections and reporting pass/fail.
/// Returns a Promise[Bool] that resolves to true if passed, false if failed.
extern "js" fn run_async_test_js(
  name : String,
  promise : @js_async.Promise[Unit],
) -> @js_async.Promise[Bool] =
  #| async (name, promise) => {
  #|   try { await promise; return true; }
  #|   catch (e) { console.error(`  FAIL: ${name}`); if (e.message) console.error(`    Error: ${e.message}`); return false; }
  #| }

///|
/// Helper: run an async test by converting the async function to a Promise
fn run_async_test(
  name : String,
  f : async () -> Unit,
) -> @js_async.Promise[Bool] {
  run_async_test_js(name, @js_async.Promise::from_async(f))
}

///|
/// Signal test completion to the Playwright runner
extern "js" fn signal_tests_done(passed : Bool) -> Unit =
  #| (passed) => { window.__testsDone = true; window.__testsPassed = passed; }

///|
async fn main {
  let mut passed = 0
  let mut failed = 0
  let mut total = 0
  let tests : Array[(String, () -> Unit)] = [
    // URL API
    ("url", test_url),
    ("url_search_params", test_url_search_params),
    // Encoding API
    ("encoding", test_encoding),
    // DOM Core
    ("dom_create_element", test_dom_create_element),
    ("dom_attributes", test_dom_attributes),
    ("dom_tree", test_dom_tree),
    // Element (extended)
    ("element_matches", test_element_matches),
    ("element_class_name", test_element_class_name),
    ("element_query_selector", test_element_query_selector),
    ("element_children", test_element_children),
    ("element_properties", test_element_properties),
    // HTMLElement
    ("html_element_props", test_html_element_props),
    ("html_element_bool_props", test_html_element_bool_props),
    ("html_element_inner_text", test_html_element_inner_text),
    ("html_element_offset", test_html_element_offset),
    ("html_element_methods", test_html_element_methods),
    // DOMTokenList (classList)
    ("class_list", test_class_list),
    ("class_list_toggle", test_class_list_toggle),
    ("class_list_value", test_class_list_value),
    // Events
    ("event_target", test_event_target),
    ("event_dispatch", test_event_dispatch),
    // Blob / File API
    ("blob", test_blob),
    ("blob_union_type", test_blob_union_type),
    ("blob_dictionary", test_blob_dictionary),
    ("blob_enum", test_blob_enum),
    ("file", test_file),
    // AbortController / AbortSignal
    ("abort_controller", test_abort_controller),
    ("abort_signal", test_abort_signal),
    // Headers API
    ("headers", test_headers),
    // FormData API
    ("form_data", test_form_data),
    // Geometry API
    ("dom_point", test_dom_point),
    ("dom_rect", test_dom_rect),
    // HTML Element types
    ("anchor_element", test_anchor_element),
    ("button_element", test_button_element),
    ("input_element", test_input_element),
    ("input_image", test_input_image),
    ("input_validation", test_input_validation),
    ("input_checkbox", test_input_checkbox),
    ("input_length", test_input_length),
    ("select_element", test_select_element),
    ("option_element", test_option_element),
    ("select_with_options", test_select_with_options),
    ("select_validation", test_select_validation),
    ("textarea_element", test_textarea_element),
    ("image_element", test_image_element),
    ("table_element", test_table_element),
    ("form_element", test_form_element),
    ("div_element", test_div_element),
    ("span_element", test_span_element),
    ("heading_element", test_heading_element),
    ("paragraph_element", test_paragraph_element),
    ("label_element", test_label_element),
    // Browser APIs
    ("history", test_history),
    ("performance", test_performance),
    // Document structure elements
    ("body_element", test_body_element),
    ("html_html_element", test_html_html_element),
    ("title_element", test_title_element),
    ("meta_element", test_meta_element),
    ("style_element", test_style_element),
    ("link_element", test_link_element),
    ("script_element", test_script_element),
    // List / text elements
    ("olist_element", test_olist_element),
    ("li_element", test_li_element),
    ("quote_element", test_quote_element),
    ("hr_element", test_hr_element),
    ("pre_element", test_pre_element),
    // Table sub-elements
    ("table_section", test_table_section),
    ("table_row", test_table_row),
    ("table_cell", test_table_cell),
    ("table_full", test_table_full),
    // Form-related elements
    ("progress_element", test_progress_element),
    ("meter_element", test_meter_element),
    ("output_element", test_output_element),
    ("fieldset_element", test_fieldset_element),
    ("dialog_element", test_dialog_element),
    ("canvas_element", test_canvas_element),
    ("template_element", test_template_element),
    // DOM nodes
    ("text_node", test_text_node),
    ("comment_node", test_comment_node),
    ("document_fragment", test_document_fragment),
    ("document_fragment_transfer", test_document_fragment_transfer),
    ("range", test_range),
    ("tree_walker", test_tree_walker),
    // DOMException
    ("dom_exception", test_dom_exception),
    ("dom_exception_with_name", test_dom_exception_with_name),
    ("dom_exception_codes", test_dom_exception_codes),
    // Response API
    ("response", test_response),
    ("response_error", test_response_error),
    // Media elements
    ("video_element", test_video_element),
    ("audio_element", test_audio_element),
    ("source_element", test_source_element),
    // DataList
    ("datalist_element", test_datalist_element),
    // Node operations
    ("node_clone", test_node_clone),
    ("node_compare", test_node_compare),
    ("node_replace", test_node_replace),
    // Element attributes & scroll
    ("element_dataset", test_element_dataset),
    ("element_scroll", test_element_scroll),
    ("element_closest", test_element_closest),
    // CSS Style
    ("css_style", test_css_style),
    ("css_style_text", test_css_style_text),
    // Slot element
    ("slot_element", test_slot_element),
    // MediaQueryList
    ("media_query_list", test_media_query_list),
    // DOMTokenList iteration
    ("dom_token_list_iteration", test_dom_token_list_iteration),
    // NodeList / HTMLCollection
    ("node_list", test_node_list),
    ("html_collection", test_html_collection),
    // BR element
    ("br_element", test_br_element),
    // OptGroup element
    ("optgroup_element", test_optgroup_element),
    // Mod elements (ins/del)
    ("ins_element", test_ins_element),
    ("del_element", test_del_element),
    // Location API
    ("location", test_location),
    // ImageData
    ("image_data", test_image_data),
    // XPath
    ("xpath_result", test_xpath_result),
    // Data / Time / Details elements
    ("data_element", test_data_element),
    ("time_element", test_time_element),
    ("details_element", test_details_element),
    // IFrame element
    ("iframe_element", test_iframe_element),
    // Map / Area elements
    ("map_element", test_map_element),
    ("area_element", test_area_element),
    // Storage API
    ("storage", test_storage),
    // CustomEvent
    ("custom_event", test_custom_event),
    ("custom_event_with_init", test_custom_event_with_init),
    // Navigator
    ("navigator", test_navigator),
    // NamedNodeMap / Attr
    ("named_node_map", test_named_node_map),
    ("attr_mutation", test_attr_mutation),
    // DOMParser
    ("dom_parser_html", test_dom_parser_html),
    ("dom_parser_xml", test_dom_parser_xml),
    // Menu element (Rust web-sys: menu_element.rs)
    ("menu_element", test_menu_element),
    // Param element (Rust web-sys: param_element.rs)
    ("param_element", test_param_element),
    // HTMLOptionsCollection (Rust web-sys: options_collection.rs)
    ("options_collection", test_options_collection),
    // IndexedDB accessor (Rust web-sys: indexeddb.rs)
    ("indexeddb_accessor", test_indexeddb_accessor),
    // Console (Rust web-sys: console.rs)
    ("console", test_console),
    // OPFS (Rust web-sys: opfs.rs)
    ("opfs", test_opfs),
    // RTC RTP Transceiver Direction (Rust web-sys: rtc_rtp_transceiver_direction.rs)
    ("rtc_rtp_transceiver_direction", test_rtc_rtp_transceiver_direction),
  ]
  for i = 0; i < tests.length(); i = i + 1 {
    let (name, f) = tests[i]
    total = total + 1
    if run_test(name, f) {
      passed = passed + 1
    } else {
      failed = failed + 1
    }
  }

  // --- Async tests ---
  // These use Promise::wait() (equivalent to Rust's JsFuture::from().await)

  // OPFS async: access_storage (Rust web-sys: opfs.rs)
  total = total + 1
  let opfs_result = run_async_test("opfs_access_storage", async fn() {
    test_opfs_access_storage()
  }).wait() catch {
    _ => false
  }
  if opfs_result {
    passed = passed + 1
  } else {
    failed = failed + 1
  }

  // OPFS async: create_directory (Rust web-sys: opfs.rs)
  total = total + 1
  let opfs_dir_result = run_async_test("opfs_create_directory", async fn() {
    test_opfs_create_directory()
  }).wait() catch {
    _ => false
  }
  if opfs_dir_result {
    passed = passed + 1
  } else {
    failed = failed + 1
  }

  // OPFS async: create_file (Rust web-sys: opfs.rs)
  total = total + 1
  let opfs_file_result = run_async_test("opfs_create_file", async fn() {
    test_opfs_create_file()
  }).wait() catch {
    _ => false
  }
  if opfs_file_result {
    passed = passed + 1
  } else {
    failed = failed + 1
  }

  // OPFS async: write_to_file (Rust web-sys: opfs.rs)
  total = total + 1
  let opfs_write_result = run_async_test("opfs_write_to_file", async fn() {
    test_opfs_write_to_file()
  }).wait() catch {
    _ => false
  }
  if opfs_write_result {
    passed = passed + 1
  } else {
    failed = failed + 1
  }

  // RTC async: full SDP exchange (Rust web-sys: rtc_rtp_transceiver_direction.rs)
  total = total + 1
  let rtc_result = run_async_test("rtc_sdp_exchange", async fn() {
    test_rtc_sdp_exchange()
  }).wait() catch {
    _ => false
  }
  if rtc_result {
    passed = passed + 1
  } else {
    failed = failed + 1
  }

  // Response async: text() on empty body
  total = total + 1
  let response_body_result = run_async_test(
    "response_body",
    async fn() { test_response_body() },
  ).wait() catch {
    _ => false
  }
  if response_body_result {
    passed = passed + 1
  } else {
    failed = failed + 1
  }
  println("")
  println("\{passed}/\{total} tests passed, \{failed} failed")
  if failed > 0 {
    signal_tests_done(false)
    abort("SOME TESTS FAILED")
  } else {
    signal_tests_done(true)
  }
}
