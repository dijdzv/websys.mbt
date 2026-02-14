// OPFS (Origin Private File System) test
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/StorageManager
// Equivalent Rust web-sys test: opfs.rs

// --- Sync test: accessor chain ---

///|
fn test_opfs() -> Unit {
  // navigator.storage accessor (synchronous part)
  let win = match @websys.window() {
    Some(w) => w
    None => abort("FAIL: window() returned None")
  }
  let nav = win.get_navigator()
  let storage = nav.get_storage()

  // StorageManager should be a valid object
  let _ = storage.to_js_value()

  // StorageManager::get_directory() returns a Promise (not null)
  let _ = storage.get_directory()
}

// --- Async test: access_storage ---
// Equivalent to Rust's opfs::access_storage test:
//   let storage_promise = window().unwrap().navigator().storage().get_directory();
//   let storage = JsFuture::from(storage_promise).await;
//   assert!(storage.is_ok());

///|
async fn test_opfs_access_storage() -> Unit {
  let win = match @websys.window() {
    Some(w) => w
    None => abort("FAIL: window() returned None")
  }
  let storage = win.get_navigator().get_storage()
  // Await the Promise — equivalent to Rust's JsFuture::from(promise).await.unwrap()
  let dir = storage.get_directory().wait()
  // Verify we got a valid FileSystemDirectoryHandle
  let _ = dir.to_js_value()
}

///|
async fn test_opfs_create_directory() -> Unit {
  let win = match @websys.window() {
    Some(w) => w
    None => abort("FAIL: window() returned None")
  }
  let storage = win.get_navigator().get_storage()
  let root = storage.get_directory().wait()
  // Create a directory — equivalent to Rust's root.get_directory_handle_with_options("test_dir", {create: true})
  let opts = @websys.FileSystemGetDirectoryOptions::{ create: Some(true) }
  let dir = root.get_directory_handle_with_options("test_dir", opts).wait()
  let _ = dir.to_js_value()
  // Clean up: remove the created directory
  root.remove_entry("test_dir").wait()
}

// --- Async test: create_file ---
// Equivalent to Rust's opfs::create_file test

///|
async fn test_opfs_create_file() -> Unit {
  let win = match @websys.window() {
    Some(w) => w
    None => abort("FAIL: window() returned None")
  }
  let root = win.get_navigator().get_storage().get_directory().wait()

  // Create a file
  let opts = @websys.FileSystemGetFileOptions::{ create: Some(true) }
  let file_handle = root
    .get_file_handle_with_options("test_file.txt", opts)
    .wait()
  let _ = file_handle.to_js_value()

  // Clean up
  root.remove_entry("test_file.txt").wait()
}

// --- Async test: write_to_file ---
// Equivalent to Rust's opfs::write_to_file test

///|
async fn test_opfs_write_to_file() -> Unit {
  let win = match @websys.window() {
    Some(w) => w
    None => abort("FAIL: window() returned None")
  }
  let root = win.get_navigator().get_storage().get_directory().wait()

  // Create a file
  let opts = @websys.FileSystemGetFileOptions::{ create: Some(true) }
  let file_handle = root
    .get_file_handle_with_options("test_write.txt", opts)
    .wait()

  // Create a writable stream
  let writable = file_handle.create_writable().wait()

  // Write a string using write_with_string
  writable.write_with_string("hello").wait()

  // Close the stream by upcasting to WritableStream
  writable.to_writable_stream().close().wait()

  // Read back and verify
  let file = file_handle.get_file().wait()
  let text = file.to_blob().text().wait()
  assert_eq(text, "hello", label="opfs write read back")

  // Clean up
  root.remove_entry("test_write.txt").wait()
}
