// @webref/idl FFI - Fetch WebIDL from Web specifications
//
// @webref/idl is a library to fetch WebIDL definitions from W3C/WHATWG Web specs
// https://www.npmjs.com/package/@webref/idl

///|
/// Type for storing specs data (JS object)
pub type SpecsData

///|
/// Type for storing spec object (individual spec)
pub type SpecObject

// =============================================================================
// FFI that returns Promise
// =============================================================================

///|
/// Call @webref/idl listAll() and return Promise<SpecsData>
extern "js" fn list_all_specs_promise() -> @js_async.Promise[SpecsData] =
  #| () => require('@webref/idl').listAll()

///|
/// Get WebIDL text from spec object and return Promise<String>
extern "js" fn get_idl_text_promise(
  spec_obj : SpecObject,
) -> @js_async.Promise[String] =
  #| (specObj) => {
  #|   if (!specObj || typeof specObj.text !== 'function') {
  #|     return Promise.resolve('');
  #|   }
  #|   return specObj.text();
  #| }

// =============================================================================
// Synchronous FFI (returns results immediately)
// =============================================================================

///|
/// Get specific spec object from specs data
pub extern "js" fn get_spec_object(
  specs : SpecsData,
  spec_name : String,
) -> SpecObject =
  #| (specs, specName) => specs[specName]

///|
/// Check if spec object exists
pub extern "js" fn spec_exists(specs : SpecsData, spec_name : String) -> Bool =
  #| (specs, specName) => specs[specName] !== undefined

///|
/// Get list of spec names from specs data
pub extern "js" fn get_spec_names(specs : SpecsData) -> JsArray =
  #| (specs) => Object.keys(specs)

///|
/// Get string from array
pub extern "js" fn get_string_from_array(arr : JsArray, index : Int) -> String =
  #| (arr, index) => arr[index] || ''

// =============================================================================
// High-level async API
// =============================================================================

///|
/// Call @webref/idl listAll() and get metadata for all specs
pub async fn list_all_specs() -> SpecsData {
  list_all_specs_promise().wait()
}

///|
/// Get WebIDL text from spec object
pub async fn get_spec_idl_text(spec_obj : SpecObject) -> String {
  get_idl_text_promise(spec_obj).wait()
}

///|
/// Get WebIDL text directly from specs data (convenience function)
pub async fn get_idl_by_name(specs : SpecsData, spec_name : String) -> String {
  let spec_obj = get_spec_object(specs, spec_name)
  get_spec_idl_text(spec_obj)
}

///|
/// Spec load result
pub struct SpecLoadResult {
  spec_name : String
  definitions : Array[Definition]
  success : Bool
  error_message : String
}

///|
/// Load multiple specs and merge all definitions
pub async fn load_multiple_specs(
  specs : SpecsData,
  spec_names : Array[String],
  show_progress : Bool,
) -> Array[SpecLoadResult] {
  let results : Array[SpecLoadResult] = []
  let total = spec_names.length()
  let mut current = 0
  for spec_name in spec_names {
    current = current + 1
    if show_progress {
      println(
        "Processing: " +
        spec_name +
        " [" +
        current.to_string() +
        "/" +
        total.to_string() +
        "]",
      )
    }

    // Check if spec exists
    if !spec_exists(specs, spec_name) {
      results.push({
        spec_name,
        definitions: [],
        success: false,
        error_message: "Spec not found: " + spec_name,
      })
      continue
    }

    // Load IDL text
    let idl_text = get_idl_by_name(specs, spec_name)
    if idl_text == "" {
      results.push({
        spec_name,
        definitions: [],
        success: false,
        error_message: "Empty IDL for spec: " + spec_name,
      })
      continue
    }

    // Parse IDL
    let parse_result = parse_webidl_raw(idl_text)
    if !is_parse_success(parse_result) {
      let error = get_parse_error(parse_result)
      results.push({
        spec_name,
        definitions: [],
        success: false,
        error_message: "Parse error in " + spec_name + ": " + error,
      })
      continue
    }

    // Convert to definitions
    let definitions = convert_to_definitions(parse_result)
    results.push({ spec_name, definitions, success: true, error_message: "", })
  }
  results
}

///|
/// Get all spec names as array
pub fn get_all_spec_names(specs : SpecsData) -> Array[String] {
  let js_names = get_spec_names(specs)
  let len = js_array_length(js_names)
  let names : Array[String] = []
  let mut i = 0
  while i < len {
    names.push(get_string_from_array(js_names, i))
    i = i + 1
  }
  names
}

///|
/// Merge all definitions from load results
pub fn merge_all_results(results : Array[SpecLoadResult]) -> Array[Definition] {
  results
  .iter()
  .filter(fn(r) { r.success })
  .flat_map(fn(r) { r.definitions.iter() })
  .collect()
}
