// WebIDL to MoonBit binding generator
// Entry point for CLI

// Node.js/Bun FFI for CLI - uses types from parser.mbt

///|
extern "js" fn get_argv_string(index : Int) -> String =
  #| (index) => process.argv[index]

///|
extern "js" fn get_argv_length() -> Int =
  #| () => process.argv.length

///|
extern "js" fn write_file_sync(path : String, content : String) -> Unit =
  #| (path, content) => require('fs').writeFileSync(path, content, 'utf-8')

///|
extern "js" fn mkdir_sync(path : String) -> Unit =
  #| (path) => require('fs').mkdirSync(path, { recursive: true })

///|
extern "js" fn path_join(a : String, b : String) -> String =
  #| (a, b) => require('path').join(a, b)

///|
extern "js" fn process_stdout_write(s : String) -> Unit =
  #| (s) => process.stdout.write(s)

// CLI argument structure

///|
struct CliArgs {
  output : String
  help : Bool
  wasm_input : String?
}

///|
fn parse_args() -> CliArgs {
  let argc = get_argv_length()
  let mut output = "./"
  let mut help = false
  let mut wasm_input = None
  let mut i = 2 // Skip node and script path
  while i < argc {
    let arg = get_argv_string(i)
    if arg == "--help" || arg == "-h" {
      help = true
    } else if arg == "--wasm-gc-input" {
      i = i + 1
      guard i < argc else { abort("--wasm-gc-input requires an IDL file") }
      wasm_input = Some(get_argv_string(i))
    } else if arg == "--output" || arg == "-o" {
      i = i + 1
      if i < argc {
        output = get_argv_string(i)
      }
    }
    i = i + 1
  }
  { output, help, wasm_input, }
}

///|
fn print_usage() -> Unit {
  println("webidl-bindgen.mbt: WebIDL to MoonBit binding generator")
  println("")
  println("Usage:")
  println("  webidl-bindgen.mbt [options]")
  println("")
  println("Options:")
  println("  -o, --output <dir>  Output directory (default: ./)")
  println("  -h, --help          Show this help message")
  println(
    "  --wasm-gc-input <file>  Generate the experimental WasmGC subset from an IDL file",
  )
}

///|
async fn main {
  let args = parse_args()
  if args.help {
    print_usage()
    return
  }
  if args.wasm_input is Some(input) {
    let parsed = parse_webidl_raw(read_wasm_input(input))
    guard is_parse_success(parsed) else { abort(get_parse_error(parsed)) }
    if validate_wasm_input(parsed) is Some(message) {
      abort(message)
    }
    let (moonbit, runtime) = generate_wasm(convert_to_definitions(parsed))
    mkdir_sync(args.output)
    write_file_sync(path_join(args.output, "bindings.mbt"), moonbit)
    write_file_sync(path_join(args.output, "runtime.mjs"), runtime)
    return
  }

  println("")
  println("  webidl-bindgen.mbt")
  println("")

  // Create output directory
  mkdir_sync(args.output)

  // Load all specs from @webref/idl
  let webref_specs = list_all_specs()
  let spec_names = get_all_spec_names(webref_specs)
  process_stdout_write("  Loading @webref/idl specs... ")
  let results = load_multiple_specs(webref_specs, spec_names, false)
  println(spec_names.length().to_string() + " specs")

  // Report errors
  let mut error_count = 0
  for result in results {
    if !result.success {
      error_count = error_count + 1
    }
  }
  if error_count > 0 {
    println("  Warnings: " + error_count.to_string() + " specs failed to parse")
  }

  // Build throws map from MDN
  let all_defs = merge_all_results(results)
  println("  Fetching MDN metadata...")
  let mdn_result = build_throws_map_from_mdn(all_defs)
  println("")

  // MDN detection results
  let throws_count = throws_map_size(mdn_result.throws_map)
  println("    Throws:      " + throws_count.to_string() + " members")
  println(
    "    Deprecated:  " +
    mdn_result.deprecated_set.length().to_string() +
    " members",
  )

  // Apply event type overrides
  let event_overrides_added = apply_event_type_overrides(
    mdn_result.event_type_map,
    all_defs,
  )
  let event_suffix = if event_overrides_added > 0 {
    " (+" + event_overrides_added.to_string() + " overrides)"
  } else {
    ""
  }
  println(
    "    Event types: " +
    mdn_result.event_type_map.length().to_string() +
    " resolved" +
    event_suffix,
  )

  // Apply throws overrides
  let (added, removed) = apply_throws_overrides(mdn_result.throws_map)
  if added > 0 || removed > 0 {
    println(
      "    Throws overrides: +" +
      added.to_string() +
      " / -" +
      removed.to_string(),
    )
  }
  if mdn_result.has_section_but_no_parse > 0 {
    println(
      "    Unparsed:    " +
      mdn_result.has_section_but_no_parse.to_string() +
      " exceptions sections",
    )
  }
  println("")

  // Inject throws into definitions
  let final_size = throws_map_size(mdn_result.throws_map)
  if final_size > 0 {
    let throws_maps : Array[(String, ThrowsMap)] = [
      ("mdn", mdn_result.throws_map),
    ]
    for result in results {
      if result.success {
        inject_throws(result.definitions, throws_maps)
      }
    }
  }

  // Write diagnostic reports
  let report_files : Array[String] = []
  if mdn_result.not_found > 0 || mdn_result.has_section_but_no_parse > 0 {
    let report_file = path_join(args.output, "throws_not_found.md")
    write_file_sync(report_file, gen_not_found_report(mdn_result))
    report_files.push("throws_not_found.md")
  }
  if mdn_result.event_not_found.length() > 0 ||
    mdn_result.event_unparsed.length() > 0 {
    let report_file = path_join(args.output, "event_type_report.md")
    write_file_sync(report_file, gen_event_type_report(mdn_result))
    report_files.push("event_type_report.md")
  }

  // Generate per-spec MoonBit files
  process_stdout_write("  Generating bindings... ")

  // Build global type ownership map (first definition wins)
  let ownership = build_global_type_ownership(results)

  // Collect external types (referenced but not defined)
  let external_types = collect_external_types_with_ownership(
    all_defs, ownership,
  )

  // Build global maps
  let global_enum_map : Array[(String, Array[String])] = []
  let global_union_set : Array[String] = []
  let dictionary_names : Array[String] = []
  let union_typedef_map : Array[(String, Array[IdlType])] = []
  let enum_names : Array[String] = []
  let primitive_typedef_map : Array[(String, IdlType)] = []
  let callback_interface_names : Array[String] = []
  let global_dict_map : Array[(String, DictionaryDef)] = []
  all_defs
  .iter()
  .each(fn(def) {
    match def {
      Enum(e) => {
        global_enum_map.push((e.name, e.values))
        enum_names.push(e.name)
      }
      Typedef(t) =>
        match t.idl_type {
          Union(members) => {
            global_union_set.push(t.name)
            union_typedef_map.push((t.name, members))
          }
          other => primitive_typedef_map.push((t.name, other))
        }
      Dictionary(d) => {
        dictionary_names.push(d.name)
        global_dict_map.push((d.name, d))
      }
      CallbackInterface(cb) => callback_interface_names.push(cb.name)
      _ => ()
    }
  })

  // Collect inline Unions
  let inline_unions = collect_inline_unions(all_defs)
  inline_unions
  .iter()
  .each(fn(entry) {
    let (name, _) = entry
    if !global_union_set.contains(name) {
      global_union_set.push(name)
    }
  })

  let defined_types = ownership.map(fn(entry) { entry.0 })

  // Build global interfaces list for inheritance map
  let global_interfaces : Array[(String, InterfaceDef)] = all_defs
    .iter()
    .filter_map(fn(def) {
      match def {
        Interface(iface) => Some((iface.name, iface))
        _ => None
      }
    })
    .collect()
  let global_inheritance_map = build_inheritance_map(global_interfaces)

  // Build generation context
  let gen_ctx : GenContext = {
    enum_map: global_enum_map,
    union_set: global_union_set,
    dictionary_names,
    union_typedef_map,
    enum_names,
    primitive_typedef_map,
    callback_interface_names,
    interfaces: global_interfaces,
    inheritance_map: global_inheritance_map,
    dict_map: global_dict_map,
    deprecated_set: mdn_result.deprecated_set,
    event_type_map: mdn_result.event_type_map,
  }

  // Write shared.mbt
  let shared_code = gen_shared_types_with_externals(
    external_types,
    inline_unions,
    defined_types,
    dictionary_names,
    union_typedef_map~,
    enum_names~,
    primitive_typedef_map~,
    callback_interface_names~,
  )
  let shared_file = path_join(args.output, "shared.mbt")
  write_file_sync(shared_file, shared_code)

  // Output each spec to its own file
  let (success_count, total_defs) = results
    .iter()
    .fold(init=(0, 0), fn(counts, result) {
      let (success_count, total_defs) = counts
      if result.success && result.definitions.length() > 0 {
        let owned_defs = filter_definitions_by_owner(
          all_defs,
          result.spec_name,
          ownership,
        )
        if owned_defs.length() > 0 {
          let merged = merge_definitions(owned_defs)
          let code = format_spec_output(result.spec_name, merged, gen_ctx)
          if merged.length() > 0 {
            let output_file = path_join(args.output, result.spec_name + ".mbt")
            write_file_sync(output_file, code)
            (success_count + 1, total_defs + merged.length())
          } else {
            counts
          }
        } else {
          counts
        }
      } else {
        counts
      }
    })

  println(success_count.to_string() + " files + shared.mbt")
  println("  Output: " + args.output)
  if report_files.length() > 0 {
    let mut reports = ""
    for i, f in report_files {
      if i > 0 {
        reports = reports + ", "
      }
      reports = reports + f
    }
    println("  Reports: " + reports)
  }
  println(
    "\n  " +
    total_defs.to_string() +
    " definitions | " +
    ownership.length().to_string() +
    " types | " +
    external_types.length().to_string() +
    " external refs",
  )
  println("")
}
