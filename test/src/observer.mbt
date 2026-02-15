// Observer API tests — MutationObserver, IntersectionObserver, ResizeObserver
// Tests codegen patterns: callback interfaces, dictionary options, observe/disconnect lifecycle

///|
/// Test MutationObserver — constructor with callback, observe, disconnect, takeRecords.
pub fn test_mutation_observer() -> Unit {
  let doc = get_document()
  let div = doc.create_element("div")

  // Create callback
  let cb = @websys.MutationCallback::from_fn(fn(_records, _observer) {  })

  // Construct observer
  let observer = @websys.MutationObserver::new(cb)

  // observe with options (dictionary pattern)
  let opts = @websys.MutationObserverInit::{
    ..@websys.MutationObserverInit::default(),
    childList: Some(true),
    attributes: Some(true),
    subtree: Some(false),
  }
  observer.observe_with_options(div.to_node(), opts).unwrap()

  // takeRecords — should return empty array (no mutations yet)
  let records = observer.take_records()
  assert_eq(records.length(), 0, label="takeRecords empty")

  // disconnect — should not throw
  observer.disconnect()
  println("  mutation_observer: ok")
}

///|
/// Test MutationObserver actually detects mutations.
pub fn test_mutation_observer_records() -> Unit {
  let doc = get_document()
  let container = doc.create_element("div")

  // Track mutations via takeRecords (synchronous)
  let cb = @websys.MutationCallback::from_fn(fn(_records, _observer) {  })
  let observer = @websys.MutationObserver::new(cb)
  let opts = @websys.MutationObserverInit::{
    ..@websys.MutationObserverInit::default(),
    childList: Some(true),
  }
  observer.observe_with_options(container.to_node(), opts).unwrap()

  // Mutate: add a child
  let child = doc.create_element("span")
  let _ = container.to_node().append_child(child.to_node())

  // takeRecords should capture the childList mutation
  let records = observer.take_records()
  assert_true(records.length() > 0, label="records has mutations")
  let rec = records[0]
  assert_eq(rec.get_type(), "childList", label="record type")
  assert_eq(rec.get_added_nodes().get_length(), 1, label="added nodes count")
  assert_eq(rec.get_removed_nodes().get_length(), 0, label="removed nodes count")
  assert_true(
    rec.get_target().is_same_node(Some(container.to_node())),
    label="target is container",
  )

  observer.disconnect()

  // --- Attribute mutation ---
  let observer2 = @websys.MutationObserver::new(cb)
  let attr_opts = @websys.MutationObserverInit::{
    ..@websys.MutationObserverInit::default(),
    childList: Some(false),
    attributes: Some(true),
    attributeOldValue: Some(true),
  }
  observer2.observe_with_options(container.to_node(), attr_opts).unwrap()

  // Mutate: set an attribute
  let _ = container.set_attribute(
    "data-test",
    @websys.TrustedTypeOrString::from_string("hello"),
  )

  // takeRecords should capture the attribute mutation
  let attr_records = observer2.take_records()
  assert_true(attr_records.length() > 0, label="attr records has mutations")
  let attr_rec = attr_records[0]
  assert_eq(attr_rec.get_type(), "attributes", label="attr record type")
  assert_eq(
    attr_rec.get_attribute_name(),
    Some("data-test"),
    label="attribute name",
  )

  observer2.disconnect()
  println("  mutation_observer_records: ok")
}

///|
/// Test IntersectionObserver — constructor, properties, observe/disconnect.
pub fn test_intersection_observer() -> Unit {
  let doc = get_document()
  let div = doc.create_element("div")

  // Create callback
  let cb = @websys.IntersectionObserverCallback::from_fn(fn(
    _entries,
    _observer,
  ) {

  })

  // Construct with options (dictionary pattern)
  let opts = @websys.IntersectionObserverInit::{
    ..@websys.IntersectionObserverInit::default(),
    rootMargin: Some("0px"),
  }
  let observer = @websys.IntersectionObserver::new_with_options(cb, opts).unwrap()

  // Properties
  // get_root returns ElementOrDocument (non-nullable), just verify no throw
  let _root = observer.get_root()
  // rootMargin is expanded to all four sides: "0px 0px 0px 0px"
  assert_eq(observer.get_root_margin(), "0px 0px 0px 0px", label="rootMargin")

  // observe / unobserve / disconnect — should not throw
  observer.observe(div)
  observer.unobserve(div)

  // takeRecords
  let records = observer.take_records()
  assert_eq(records.length(), 0, label="takeRecords empty")

  observer.disconnect()
  println("  intersection_observer: ok")
}

///|
/// Test ResizeObserver — constructor, observe/disconnect.
pub fn test_resize_observer() -> Unit {
  let doc = get_document()
  let div = doc.create_element("div")

  // Create callback
  let cb = @websys.ResizeObserverCallback::from_fn(fn(_entries, _observer) {  })

  // Construct observer
  let observer = @websys.ResizeObserver::new(cb)

  // observe — should not throw
  observer.observe(div)

  // observe with options (dictionary pattern with enum)
  let opts = @websys.ResizeObserverOptions::{
    box: Some(@websys.ResizeObserverBoxOptions::ContentBox),
  }
  let div2 = doc.create_element("div")
  observer.observe_with_options(div2, opts)

  // unobserve / disconnect — should not throw
  observer.unobserve(div)
  observer.disconnect()
  println("  resize_observer: ok")
}
