///|
fn valid_wasm_module_name(name : String) -> Bool {
  let parts = name.split("/").to_array()
  if parts.length() < 2 {
    return false
  }
  for part in parts {
    if part.is_empty() {
      return false
    }
    for ch in part {
      if !(ch >= 'a' && ch <= 'z') &&
        !(ch >= 'A' && ch <= 'Z') &&
        !(ch >= '0' && ch <= '9') &&
        ch != '_' &&
        ch != '-' {
        return false
      }
    }
  }
  true
}

///|
fn wasm_module_manifest(name : String) -> String {
  "name = " + name.to_json().stringify() + "\npreferred_target = \"wasm-gc\"\n"
}
