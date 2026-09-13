// Helper functions for tests.
// With pub(all) struct dictionaries, extern "js" helpers are no longer needed.
// Dictionary types can now be constructed directly with struct literals.

///|
fn create_element(doc : @websys.Document, tag : String) -> @websys.Element {
  doc.create_element(tag).unwrap()
}
