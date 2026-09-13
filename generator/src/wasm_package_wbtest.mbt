///|
test "module output names reject paths and manifest injection" {
  for name in ["owner/package", "owner/web-sys_2", "owner/group/package"] {
    assert_true(valid_wasm_module_name(name))
  }
  for
    name in [
      "", "single", "/root", "owner/", "../package", "owner/../package", "owner\\package",
      "owner/a\nname=x", "owner/a\"b",
    ] {
    assert_false(valid_wasm_module_name(name))
  }
  assert_eq(
    wasm_module_manifest("owner/package"),
    "name = \"owner/package\"\npreferred_target = \"wasm-gc\"\n",
  )
}
