///|
fn wasm_operation_variants(
  op : OperationDef,
) -> Array[(String, Array[Argument])] {
  let mut required = op.arguments.length()
  for index, argument in op.arguments {
    guard !argument.variadic else {
      abort("Variadic WasmGC operation arguments are not implemented")
    }
    if argument.optional && required == op.arguments.length() {
      required = index
    }
    guard argument.optional || index < required else {
      abort("Required operation argument follows an optional argument")
    }
  }
  let name = to_snake_case(op.name) |> escape_reserved
  let variants : Array[(String, Array[Argument])] = []
  for count in required..<(op.arguments.length() + 1) {
    let name = if count == required {
      name
    } else {
      name +
      "_with_" +
      (op.arguments[count - 1].name |> to_snake_case |> escape_reserved)
    }
    variants.push((name, Array::makei(count, index => op.arguments[index])))
  }
  variants
}
