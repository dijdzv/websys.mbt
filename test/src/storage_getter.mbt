///|
extern "js" fn storage_window(mode : Int) -> @websys.Window =
  #| (mode) => ({ get localStorage() {
  #|   if (mode === 1) throw new DOMException('denied', 'SecurityError');
  #|   if (mode === 2) throw new TypeError('unexpected');
  #|   return window.localStorage;
  #| } })

///|
fn test_storage_getter_errors() -> Unit {
  match storage_window(1).get_local_storage() {
    Err(SecurityError(error)) => assert_eq(error.message(), "denied")
    _ => abort("expected declared getter failure")
  }
  match storage_window(2).get_local_storage() {
    Err(OtherError(error)) => assert_eq(error.name(), "TypeError")
    _ => abort("expected unexpected getter failure")
  }
  let storage = storage_window(0).get_local_storage().unwrap()
  storage.set_item("getter-recovery", "日本語").unwrap()
  assert_eq(storage.get_item("getter-recovery"), Some("日本語"))
  storage.remove_item("getter-recovery")
  assert_true(@websys.window().unwrap().get_session_storage() is Ok(_))
}
