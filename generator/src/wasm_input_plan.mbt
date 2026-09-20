///|
enum WasmInputPlan {
  DictionaryValue(String)
  NullableValue(WasmInputPlan)
  Enumeration(String)
  Scalar(String, String)
  Sequence(WasmInputPlan)
  Record(WasmInputPlan, WasmInputPlan)
  Union(Array[WasmInputPlan])
} derive(Eq, Debug)

///|
fn plan_wasm_input(
  typ : WasmSemanticType,
  references? : Array[String] = [],
  enums? : Array[String] = [],
  dictionaries? : Array[String] = [],
) -> WasmInputPlan? {
  if typ.nullable {
    return plan_wasm_input(
      { ..typ, nullable: false, },
      references~,
      enums~,
      dictionaries~,
    ).map(child => NullableValue(child))
  }
  if typ.annotations == ["EnforceRange"] &&
    typ.kind == Name("unsigned long long") {
    return Some(Scalar("UInt64", "enforced-u64"))
  }
  if typ.annotations == ["EnforceRange"] && typ.kind == Name("unsigned long") {
    return Some(Scalar("UInt", "unsigned long"))
  }
  if !typ.annotations.is_empty() {
    return None
  }
  match typ.kind {
    Name(name) if dictionaries.contains(name) => Some(DictionaryValue(name))
    Name(name) if enums.contains(name) => Some(Enumeration(name))
    Name("DOMString" | "USVString" | "ByteString") => {
      guard typ.kind is Name(kind) else { return None }
      Some(Scalar("String", kind))
    }
    Name("boolean") => Some(Scalar("Bool", "boolean"))
    Name("long") => Some(Scalar("Int", "long"))
    Name("unsigned long") => Some(Scalar("UInt", "unsigned long"))
    Name("double") => Some(Scalar("Double", "double"))
    Name("ArrayBuffer") => Some(Scalar("ArrayBuffer", "reference"))
    Name(name) if references.contains(name) => Some(Scalar(name, "reference"))
    Generic("sequence", [inner]) =>
      plan_wasm_input(inner, references~, enums~, dictionaries~).map(child => {
        WasmInputPlan::Sequence(child)
      })
    Generic("record", [key, value]) => {
      guard key.kind is Name("DOMString" | "USVString" | "ByteString") else {
        return None
      }
      guard plan_wasm_input(key, references~, enums~, dictionaries~)
        is Some(key) &&
        plan_wasm_input(value, references~, enums~, dictionaries~)
        is Some(value) else {
        return None
      }
      Some(Record(key, value))
    }
    WasmTypeKind::Union(types) => {
      let plans : Array[WasmInputPlan] = []
      for typ in types {
        guard plan_wasm_input(typ, references~, enums~, dictionaries~)
          is Some(plan) else {
          return None
        }
        plans.push(plan)
      }
      Some(WasmInputPlan::Union(plans))
    }
    _ => None
  }
}

///|
fn emit_wasm_input_plan(
  plan : WasmInputPlan,
  prefix : String,
  mbt : StringBuilder,
  js : StringBuilder,
) -> String {
  let mut public_type = ""
  let mut body = ""
  match plan {
    DictionaryValue(name) => {
      mbt.write_string(
        "fn \{prefix}(value : \{name}) -> JsValue { value.to_js() }\n",
      )
      return name
    }
    NullableValue(child) => {
      let typ = emit_wasm_input_plan(child, prefix + "_value", mbt, js)
      mbt.write_string(
        "fn \{prefix}_null() -> JsValue = \"websys\" \"\{prefix}_null\"\nfn \{prefix}(value : \{typ}?) -> JsValue { match value { None => \{prefix}_null(); Some(value) => \{prefix}_value(value) } }\n",
      )
      js.write_string("    \{prefix}_null: () => null,\n")
      return typ + "?"
    }
    Enumeration(name) => {
      mbt.write_string(
        "fn \{prefix}_string(value : String) -> JsValue = \"websys\" \"\{prefix}\"\nfn \{prefix}(value : \{name}) -> JsValue { \{prefix}_string(value.to_string()) }\n",
      )
      js.write_string("    \{prefix}: value => value,\n")
      return name
    }
    Scalar(typ, kind) => {
      mbt.write_string(
        "fn \{prefix}(value : \{typ}) -> JsValue = \"websys\" \"\{prefix}\"\n",
      )
      let expression = match kind {
        "boolean" => "value !== 0"
        "unsigned long" => "value >>> 0"
        "enforced-u64" =>
          "(() => { const unsigned = BigInt.asUintN(64, value); if (unsigned > 9007199254740991n) throw new TypeError('EnforceRange unsigned long long exceeds the exact WebIDL range'); return Number(unsigned); })()"
        _ => "value"
      }
      js.write_string("    \{prefix}: value => \{expression},\n")
      return typ
    }
    Sequence(child) => {
      let typ = emit_wasm_input_plan(child, prefix + "_item", mbt, js)
      public_type = "Array[" + typ + "]"
      mbt.write_string(
        "fn \{prefix}_new() -> JsValue = \"websys\" \"\{prefix}_new\"\nfn \{prefix}_push(target : JsValue, value : JsValue) -> Unit = \"websys\" \"\{prefix}_push\"\n",
      )
      js.write_string(
        "    \{prefix}_new: () => [], \{prefix}_push: (target, value) => { target.push(value); },\n",
      )
      body = "let result = \{prefix}_new(); for item in value { \{prefix}_push(result, \{prefix}_item(item)) }; result"
    }
    Record(key, item) => {
      let key_type = emit_wasm_input_plan(key, prefix + "_key", mbt, js)
      let item_type = emit_wasm_input_plan(item, prefix + "_item", mbt, js)
      public_type = "Array[(" + key_type + ", " + item_type + ")]"
      mbt.write_string(
        "fn \{prefix}_new() -> JsValue = \"websys\" \"\{prefix}_new\"\nfn \{prefix}_set(target : JsValue, key : JsValue, value : JsValue) -> Unit = \"websys\" \"\{prefix}_set\"\n",
      )
      js.write_string(
        "    \{prefix}_new: () => Object.create(null), \{prefix}_set: (target, key, value) => { target[key] = value; },\n",
      )
      body = "let result = \{prefix}_new(); for (key, item) in value { \{prefix}_set(result, \{prefix}_key(key), \{prefix}_item(item)) }; result"
    }
    WasmInputPlan::Union(plans) => {
      public_type = "Input_" + prefix + "Value"
      let variants : Array[String] = []
      let cases : Array[String] = []
      for index, child in plans {
        let suffix = index.to_string()
        let child_name = prefix + "_case" + suffix
        let typ = emit_wasm_input_plan(child, child_name, mbt, js)
        variants.push("Case" + suffix + "(" + typ + ")")
        cases.push("Case" + suffix + "(inner) => " + child_name + "(inner)")
      }
      mbt.write_string(
        "pub(all) enum \{public_type} { \{variants.join("; ")} }\n",
      )
      body = "match value { \{cases.join("; ")} }"
    }
  }
  mbt.write_string(
    "fn \{prefix}(value : \{public_type}) -> JsValue { \{body} }\n",
  )
  public_type
}
