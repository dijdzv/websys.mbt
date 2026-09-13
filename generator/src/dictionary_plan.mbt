///|
enum DictionaryPresence {
  Required
  Optional
  OptionalNullable
} derive(Eq, Debug)

///|
struct DictionaryFieldPlan {
  presence : DictionaryPresence
  value_type : IdlType
  default_value : String?
}

///|
fn plan_dictionary_field(field : DictionaryMember) -> DictionaryFieldPlan {
  let (presence, value_type) = if field.required {
    (DictionaryPresence::Required, field.idl_type)
  } else {
    match field.idl_type {
      Nullable(inner) => (DictionaryPresence::OptionalNullable, inner)
      _ => (DictionaryPresence::Optional, field.idl_type)
    }
  }
  { presence, value_type, default_value: field.default_value, }
}

///|
fn DictionaryFieldPlan::public_type(self : DictionaryFieldPlan) -> String {
  let value = self.value_type.to_moonbit_simple()
  match self.presence {
    Required => value
    Optional => value + "?"
    OptionalNullable => "Nullable[" + value + "]"
  }
}
