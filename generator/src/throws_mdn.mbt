// MDN-based throws map builder.
// Fetches MDN content pages and parses ### Exceptions sections
// to detect which methods/constructors/attributes throw.

///|
/// Build includes map: mixin_name → ALL target interface names.
/// Used to expand event_type_map keys and resolve mixin member MDN URLs.
fn build_includes_map(
  definitions : Array[Definition],
) -> Array[(String, Array[String])] {
  let map : Array[(String, Array[String])] = []
  for def in definitions {
    match def {
      Includes(inc) => {
        let mut found = false
        for entry in map {
          if entry.0 == inc.includes {
            if !entry.1.contains(inc.target) {
              entry.1.push(inc.target)
            }
            found = true
            break
          }
        }
        if !found {
          map.push((inc.includes, [inc.target]))
        }
      }
      _ => ()
    }
  }
  map
}

///|
enum MdnEntryType {
  Method
  StaticMethod
  Constructor
  Attribute
  Event
} derive(Eq)

///|
fn MdnEntryType::to_string(self : MdnEntryType) -> String {
  match self {
    Method => "method"
    StaticMethod => "static_method"
    Constructor => "constructor"
    Attribute => "attribute"
    Event => "event"
  }
}

///|
/// Entry for MDN lookup.
struct MdnLookupEntry {
  iface_for_url : String
  iface_for_key : String
  member_name : String
  entry_type : MdnEntryType
}

///|
/// Collect all members that need MDN lookup.
fn collect_lookup_entries(
  definitions : Array[Definition],
  includes_map : Array[(String, Array[String])],
) -> Array[MdnLookupEntry] {
  let entries : Array[MdnLookupEntry] = []
  for def in definitions {
    let (iface_name, members, is_mixin) = match def {
      Interface(iface) => (iface.name, iface.members, false)
      InterfaceMixin(mix) => (mix.name, mix.members, true)
      Namespace(ns) => (ns.name, ns.members, false)
      Partial(partial) => (partial.target, partial.members, false)
      _ => continue
    }
    let iface_for_url = if is_mixin {
      let mut target : String? = None
      for entry in includes_map {
        if entry.0 == iface_name {
          target = Some(entry.1[0])
          break
        }
      }
      match target {
        Some(t) => t
        None => continue // mixin with no known target
      }
    } else {
      iface_name
    }
    for m in members {
      match m {
        Operation(op) => {
          if op.name.is_empty() {
            continue
          }
          let entry_type : MdnEntryType = if op.special is Some("static") {
            StaticMethod
          } else {
            Method
          }
          entries.push({
            iface_for_url,
            iface_for_key: iface_name,
            member_name: op.name,
            entry_type,
          })
        }
        Constructor(_) =>
          entries.push({
            iface_for_url,
            iface_for_key: iface_name,
            member_name: "constructor",
            entry_type: Constructor,
          })
        Attribute(attr) => {
          if attr.is_readonly {
            continue
          }
          entries.push({
            iface_for_url,
            iface_for_key: iface_name,
            member_name: attr.name,
            entry_type: Attribute,
          })
          // on* EventHandler attributes: add event entry for typed event handler
          if starts_with(attr.name, "on") &&
            attr.idl_type is Named("EventHandler") {
            let event_name = string_from(attr.name, 2) // strip "on" prefix
            entries.push({
              iface_for_url,
              iface_for_key: iface_name,
              member_name: event_name,
              entry_type: Event,
            })
          }
        }
        _ => ()
      }
    }
  }
  entries
}

///|
/// Build MDN raw content URL for a member.
fn mdn_url(iface : String, name : String, entry_type : MdnEntryType) -> String {
  let base = "https://raw.githubusercontent.com/mdn/content/main/files/en-us/web/api/"
  let iface_lower = to_lower_case(iface)
  match entry_type {
    Event => base + iface_lower + "/" + to_lower_case(name) + "_event/index.md"
    Constructor => base + iface_lower + "/" + iface_lower + "/index.md"
    StaticMethod =>
      base + iface_lower + "/" + to_lower_case(name) + "_static/index.md"
    _ => base + iface_lower + "/" + to_lower_case(name) + "/index.md"
  }
}

///|
/// Deduplicate entries by (iface_for_url, member_name, entry_type).
/// Keeps the first occurrence for each unique key.
fn dedup_entries(entries : Array[MdnLookupEntry]) -> Array[MdnLookupEntry] {
  let seen : Array[String] = []
  let result : Array[MdnLookupEntry] = []
  for e in entries {
    let key = e.iface_for_url +
      "." +
      e.member_name +
      "." +
      e.entry_type.to_string()
    if !seen.contains(key) {
      seen.push(key)
      result.push(e)
    }
  }
  result
}

///|
fn format_entry_label(entry : MdnLookupEntry) -> String {
  match entry.entry_type {
    Constructor => entry.iface_for_url + ".constructor"
    Attribute => entry.iface_for_url + "." + entry.member_name + " (setter)"
    StaticMethod => entry.iface_for_url + "." + entry.member_name + " (static)"
    Event => entry.iface_for_url + "." + entry.member_name + " (event)"
    Method => entry.iface_for_url + "." + entry.member_name
  }
}

///|
pub struct MdnThrowsResult {
  throws_map : ThrowsMap
  total_fetched : Int
  not_found : Int
  not_found_entries : Array[String] // "Interface.member" entries with 404
  has_section_but_no_parse : Int // pages with ### Exceptions but no exceptions extracted
  has_section_but_no_parse_entries : Array[String]
  deprecated_set : Array[String] // "Interface.member" or "Interface.constructor"
  event_type_map : Array[(String, String)] // "Interface.onclick" → "PointerEvent"
  event_not_found : Array[String] // "Mixin.eventname" entries with 404 after all retries
  event_unparsed : Array[String] // "Mixin.eventname" entries where page found but type not extracted
}

///|
/// Generate a markdown report of MDN throws diagnostics.
pub fn gen_not_found_report(result : MdnThrowsResult) -> String {
  let sb = StringBuilder()
  sb.write_string("# MDN Throws: Diagnostic Report\n\n")
  sb.write_string(
    "Detected " +
    throws_map_size(result.throws_map).to_string() +
    " throwing members from MDN.\n\n",
  )
  // 404 section
  if result.not_found > 0 {
    sb.write_string("## Not Found (404)\n\n")
    sb.write_string(
      result.not_found.to_string() +
      " / " +
      result.total_fetched.to_string() +
      " MDN pages were not found.\n",
    )
    sb.write_string(
      "These members may throw but have no MDN documentation page.\n\n",
    )
    for entry in result.not_found_entries {
      sb.write_string("- " + entry + "\n")
    }
    sb.write_string("\n")
  }
  // Parse failure section
  if result.has_section_but_no_parse > 0 {
    sb.write_string("## Exceptions Section Found But Not Parsed\n\n")
    sb.write_string(
      result.has_section_but_no_parse.to_string() +
      " pages have an `### Exceptions` section but no exception names were extracted.\n",
    )
    sb.write_string(
      "This may indicate an unrecognized MDN format that the parser should handle.\n\n",
    )
    for entry in result.has_section_but_no_parse_entries {
      sb.write_string("- " + entry + "\n")
    }
    sb.write_string("\n")
  }
  sb.to_string()
}

///|
/// Generate a markdown report of event type coverage gaps.
pub fn gen_event_type_report(result : MdnThrowsResult) -> String {
  let sb = StringBuilder()
  sb.write_string("# Event Type Coverage Report\n\n")
  // Summary
  let mut specific = 0
  let mut event_typed = 0
  for entry in result.event_type_map {
    if entry.1 == "Event" {
      event_typed = event_typed + 1
    } else {
      specific = specific + 1
    }
  }
  let total_map = result.event_type_map.length()
  sb.write_string("## Summary\n\n")
  sb.write_string("| Category | Count |\n")
  sb.write_string("|----------|-------|\n")
  sb.write_string(
    "| Resolved (specific type) | " + specific.to_string() + " |\n",
  )
  sb.write_string(
    "| Resolved (Event type) | " + event_typed.to_string() + " |\n",
  )
  sb.write_string(
    "| Not found (no MDN page) | " +
    result.event_not_found.length().to_string() +
    " |\n",
  )
  sb.write_string(
    "| Found but type not extracted | " +
    result.event_unparsed.length().to_string() +
    " |\n",
  )
  sb.write_string(
    "| **Total map entries** | **" + total_map.to_string() + "** |\n",
  )
  sb.write_string("\n")
  // Not found section (exclude entries resolved by overrides)
  let unresolved : Array[String] = []
  for entry in result.event_not_found {
    // entry is "Mixin.oneventname" — check if resolved in event_type_map
    if lookup_pair(result.event_type_map, entry) is Some(_) {
      continue
    }
    // Also check bare attr name overrides (e.g. "onsubmit")
    let dot_idx = find_dot_index(entry)
    if dot_idx >= 0 {
      let attr_part = string_from(entry, dot_idx + 1)
      let mut overridden = false
      for override_ in builtin_event_type_overrides {
        if override_.0 == attr_part {
          overridden = true
          break
        }
      }
      if overridden {
        continue
      }
    }
    unresolved.push(entry)
  }
  if unresolved.length() > 0 {
    sb.write_string(
      "## Not Found (" + unresolved.length().to_string() + ")\n\n",
    )
    sb.write_string(
      "These events have no MDN page. The handler type falls back to `Event`.\n",
    )
    sb.write_string(
      "Most GlobalEventHandlers entries are genuinely `Event` type (media events, form events, etc.).\n",
    )
    sb.write_string(
      "To fix specific types, add entries to `builtin_event_type_overrides` in `throws_mdn.mbt`.\n\n",
    )
    for entry in unresolved {
      sb.write_string("- " + entry + "\n")
    }
    sb.write_string("\n")
  }
  // Unparsed section
  if result.event_unparsed.length() > 0 {
    sb.write_string("## Found But Type Not Extracted\n\n")
    sb.write_string(
      "MDN page exists but `## Event type` section could not be parsed.\n",
    )
    sb.write_string(
      "The parser may need to handle a new format, or the page may not have an Event type section.\n\n",
    )
    for entry in result.event_unparsed {
      sb.write_string("- " + entry + "\n")
    }
    sb.write_string("\n")
  }
  sb.to_string()
}

///|
/// Known parent interfaces for event URL fallback.
/// When {interface}/{event}_event is 404, try these parents.
let event_url_fallback_parents : Array[String] = [
  "Element", "Window", "Document", "HTMLElement",
]

///|
/// Build inheritance map for event fallback: interface → parent chain.
/// E.g. HTMLElement → [Element, Node, EventTarget]
fn build_parent_map(definitions : Array[Definition]) -> Array[(String, String)] {
  let map : Array[(String, String)] = []
  for def in definitions {
    match def {
      Interface(iface) =>
        match iface.inheritance {
          Some(parent) => map.push((iface.name, parent))
          None => ()
        }
      _ => ()
    }
  }
  map
}

///|
/// Get parent chain for an interface (e.g. HTMLElement → [Element, Node, EventTarget])
fn get_parent_chain(
  parent_map : Array[(String, String)],
  iface_name : String,
) -> Array[String] {
  let chain : Array[String] = []
  let mut current = iface_name
  for i = 0; i < 10; i = i + 1 {
    // max depth
    let mut found = false
    for entry in parent_map {
      if entry.0 == current {
        chain.push(entry.1)
        current = entry.1
        found = true
        break
      }
    }
    if !found {
      break
    }
  }
  chain
}

///|
/// Retry event 404s with parent interface fallback URLs.
/// Mutates event_type_map (resolved entries) and event_not_found (truly missing).
async fn resolve_event_fallbacks(
  event_retry_entries : Array[MdnLookupEntry],
  parent_map : Array[(String, String)],
  event_type_map : Array[(String, String)],
  event_not_found : Array[String],
) -> Unit {
  let retry_urls = create_js_string_array()
  let retry_entries : Array[(MdnLookupEntry, String)] = []
  let seen_retry_keys : Array[String] = []
  for entry in event_retry_entries {
    let parents = get_parent_chain(parent_map, entry.iface_for_url)
    let candidates : Array[String] = []
    for p in parents {
      if !candidates.contains(p) {
        candidates.push(p)
      }
    }
    for p in event_url_fallback_parents {
      if !candidates.contains(p) && p != entry.iface_for_url {
        candidates.push(p)
      }
    }
    for parent in candidates {
      let retry_key = parent + "." + entry.member_name
      if !seen_retry_keys.contains(retry_key) {
        seen_retry_keys.push(retry_key)
        push_js_string_array(
          retry_urls,
          mdn_url(parent, entry.member_name, Event),
        )
        retry_entries.push((entry, parent))
      }
    }
  }
  let retry_results = batch_fetch_mdn_promise(retry_urls).wait()
  let retry_count = mdn_results_count(retry_results)
  let resolved_keys : Array[String] = []
  for i = 0; i < retry_count; i = i + 1 {
    let content = mdn_result_content(retry_results, i)
    if content == "" {
      continue
    }
    let (entry, _) = retry_entries[i]
    let key = entry.iface_for_key + ".on" + entry.member_name
    if resolved_keys.contains(key) {
      continue
    }
    let event_type = parse_mdn_event_type_js(content)
    if event_type != "" {
      event_type_map.push((key, event_type))
      resolved_keys.push(key)
    }
  }
  for entry in event_retry_entries {
    let key = entry.iface_for_key + ".on" + entry.member_name
    if !resolved_keys.contains(key) {
      if !event_not_found.contains(key) {
        event_not_found.push(key)
      }
    }
  }
}

///|
/// Expand event_type_map: mixin keys → all target interface keys.
fn expand_mixin_events(
  event_type_map : Array[(String, String)],
  full_includes_map : Array[(String, Array[String])],
) -> Unit {
  let expanded : Array[(String, String)] = []
  for entry in event_type_map {
    let (key, event_type) = entry
    let dot_idx = find_dot_index(key)
    if dot_idx >= 0 {
      let iface_part = string_slice(key, 0, dot_idx)
      let event_part = string_from(key, dot_idx)
      for mapping in full_includes_map {
        if mapping.0 == iface_part {
          for target in mapping.1 {
            expanded.push((target + event_part, event_type))
          }
        }
      }
    }
  }
  for entry in expanded {
    event_type_map.push(entry)
  }
}

///|
/// Main pipeline: build ThrowsMap from MDN content.
pub async fn build_throws_map_from_mdn(
  definitions : Array[Definition],
) -> MdnThrowsResult {
  let map = create_throws_map()
  let empty = {
    throws_map: map,
    total_fetched: 0,
    not_found: 0,
    not_found_entries: [],
    has_section_but_no_parse: 0,
    has_section_but_no_parse_entries: [],
    deprecated_set: [],
    event_type_map: [],
    event_not_found: [],
    event_unparsed: [],
  }
  // 1. Build includes map for mixin resolution
  let includes_map = build_includes_map(definitions)
  let parent_map = build_parent_map(definitions)
  // 2. Collect all lookup entries
  let raw_entries = collect_lookup_entries(definitions, includes_map)
  let entries = dedup_entries(raw_entries)
  if entries.length() == 0 {
    return empty
  }
  // 3. Build URL array and fetch
  let urls = create_js_string_array()
  for e in entries {
    push_js_string_array(
      urls,
      mdn_url(e.iface_for_url, e.member_name, e.entry_type),
    )
  }
  let results = batch_fetch_mdn_promise(urls).wait()
  let count = mdn_results_count(results)
  // 4. Parse results, track 404s and parse failures
  let not_found_entries : Array[String] = []
  let has_section_but_no_parse_entries : Array[String] = []
  let deprecated_set : Array[String] = []
  let event_type_map : Array[(String, String)] = []
  let event_not_found : Array[String] = []
  let event_unparsed : Array[String] = []
  // Collect event 404s for retry
  let event_retry_entries : Array[MdnLookupEntry] = []
  for i = 0; i < count; i = i + 1 {
    let content = mdn_result_content(results, i)
    let entry = entries[i]
    if content == "" {
      // Event 404: queue for parent fallback retry
      if entry.entry_type is Event {
        event_retry_entries.push(entry)
      } else {
        not_found_entries.push(format_entry_label(entry))
      }
      continue
    }
    // Event entries: parse event type only
    if entry.entry_type is Event {
      let event_type = parse_mdn_event_type_js(content)
      if event_type != "" {
        let key = entry.iface_for_key + ".on" + entry.member_name
        event_type_map.push((key, event_type))
      } else {
        let label = entry.iface_for_url + "/" + entry.member_name + "_event"
        event_unparsed.push(label)
      }
      continue
    }
    // Check deprecated status from YAML frontmatter
    let status_arr = parse_mdn_status_js(content)
    let statuses = js_array_to_strings(status_arr)
    if statuses.iter().any(fn(s) { s == "deprecated" }) {
      let dep_key = if entry.entry_type is Constructor {
        entry.iface_for_key + ".constructor"
      } else {
        entry.iface_for_key + "." + entry.member_name
      }
      if !deprecated_set.contains(dep_key) {
        deprecated_set.push(dep_key)
      }
    }
    // Parse exceptions
    let exceptions_arr = parse_mdn_exceptions_js(content)
    let exceptions = js_array_to_strings(exceptions_arr)
    if exceptions.length() == 0 {
      if has_exceptions_section(content) {
        has_section_but_no_parse_entries.push(format_entry_label(entry))
      }
      continue
    }
    if entry.entry_type is Attribute {
      set_attribute_throws(
        map,
        entry.iface_for_key,
        entry.member_name,
        exceptions,
      )
    } else if entry.entry_type is Constructor {
      set_throws(map, entry.iface_for_key, "constructor", exceptions)
    } else {
      set_throws(map, entry.iface_for_key, entry.member_name, exceptions)
    }
  }
  // 5. Retry event 404s with parent interface fallback URLs
  if event_retry_entries.length() > 0 {
    resolve_event_fallbacks(
      event_retry_entries, parent_map, event_type_map, event_not_found,
    )
  }
  // 6. Expand event_type_map: mixin keys → all target interface keys
  expand_mixin_events(event_type_map, includes_map)
  {
    throws_map: map,
    total_fetched: count,
    not_found: not_found_entries.length(),
    not_found_entries,
    has_section_but_no_parse: has_section_but_no_parse_entries.length(),
    has_section_but_no_parse_entries,
    deprecated_set,
    event_type_map,
    event_not_found,
    event_unparsed,
  }
}

///|
/// Built-in event type overrides. Edit here to add entries MDN doesn't detect.
/// - Bare "on{event}" → expanded to all mixin targets
/// - "Interface.on{event}" → direct insert for that interface
let builtin_event_type_overrides : Array[(String, String)] = [
  // Mixin-wide: MDN documents under sub-interfaces (htmlformelement/ etc.)
  ("onsubmit", "SubmitEvent"),
  ("onformdata", "FormDataEvent"),
  // Interface-specific: MDN page missing or uses different event name
  ("IDBDatabase.onversionchange", "IDBVersionChangeEvent"),
  ("SVGAnimationElement.onbegin", "TimeEvent"),
  ("SVGAnimationElement.onend", "TimeEvent"),
  ("SVGAnimationElement.onrepeat", "TimeEvent"),
  ("NDEFReader.onreading", "NDEFReadingEvent"),
]

///|
/// Apply event type overrides to the map.
/// Bare attr names are expanded to all mixin targets.
/// "Interface.attr" entries are inserted directly.
pub fn apply_event_type_overrides(
  event_type_map : Array[(String, String)],
  definitions : Array[Definition],
) -> Int {
  let includes_map = build_includes_map(definitions)
  let mut added = 0
  for override_ in builtin_event_type_overrides {
    let (key_or_attr, event_type) = override_
    if find_dot_index(key_or_attr) >= 0 {
      // Interface-specific: always override
      set_pair(event_type_map, key_or_attr, event_type)
      added = added + 1
    } else {
      // Bare attr name: expand via mixin targets (fill missing only)
      for mapping in includes_map {
        for target in mapping.1 {
          let key = target + "." + key_or_attr
          if lookup_pair(event_type_map, key) is None {
            event_type_map.push((key, event_type))
            added = added + 1
          }
        }
      }
    }
  }
  added
}

///|
/// Built-in throws overrides: entries MDN doesn't detect.
/// ("Interface", "method", ["Exception1", ...])
let builtin_throws_add : Array[(String, String, Array[String])] = [
  ("Animation", "finish", ["InvalidStateError"]),
  ("CSSStyleSheet", "deleteRule", ["IndexSizeError"]),
  ("Node", "insertBefore", ["HierarchyRequestError", "NotFoundError"]),
]

///|
/// Built-in throws removals: false positives from MDN.
/// ("Interface", "method")
let builtin_throws_remove : Array[(String, String)] = [
  ("DOMTokenList", "item"),
  ("NodeList", "item"),
  ("DOMStringList", "item"),
  ("DOMStringList", "contains"),
  ("CSSStyleDeclaration", "item"),
  ("WindowOrWorkerGlobalScope", "reportError"),
]

///|
/// Apply built-in overrides to the ThrowsMap.
pub fn apply_throws_overrides(map : ThrowsMap) -> (Int, Int) {
  let mut added = 0
  for entry in builtin_throws_add {
    let (iface, op, exceptions) = entry
    set_throws(map, iface, op, exceptions)
    added = added + 1
  }
  let mut removed = 0
  for entry in builtin_throws_remove {
    let (iface, op) = entry
    delete_throws(map, iface, op)
    removed = removed + 1
  }
  (added, removed)
}
