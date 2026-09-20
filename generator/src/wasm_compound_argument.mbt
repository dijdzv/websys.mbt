///|
fn wasm_compound_argument_plan(
  typ : IdlType,
  names : Array[String],
  dictionaries : Array[String],
) -> WasmInputPlan {
  match typ {
    IdlType::Union(children) =>
      WasmInputPlan::Union(
        children.map(child => {
          wasm_compound_argument_plan(child, names, dictionaries)
        }),
      )
    Sequence(inner) =>
      WasmInputPlan::Sequence(
        wasm_compound_argument_plan(inner, names, dictionaries),
      )
    Nullable(inner) =>
      NullableValue(wasm_compound_argument_plan(inner, names, dictionaries))
    Named(name) if dictionaries.contains(name) => DictionaryValue(name)
    Named("ArrayBuffer") => Scalar("ArrayBuffer", "reference")
    Named(name) if names.contains(name) => Scalar(name, "reference")
    String => Scalar("String", "DOMString")
    Primitive("boolean") => Scalar("Bool", "boolean")
    Primitive("long") => Scalar("Int", "long")
    Primitive("unsigned long") => Scalar("UInt", "unsigned long")
    Primitive("double") => Scalar("Double", "double")
    _ => abort("Unsupported WasmGC compound argument element")
  }
}
