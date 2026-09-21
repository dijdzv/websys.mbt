///|
pub fn read_value(value : @web.Example) -> String {
  match value.value() {
    Ok(value) => "ok:" + value
    Err(SecurityError(_)) => "denied"
    Err(OtherError(error)) => "other:" + error.name()
  }
}

///|
pub fn read_optional(value : @web.Example) -> String {
  match value.nullable_value() {
    Ok(None) => "none"
    Ok(Some(value)) => "ok:" + value
    Err(SecurityError(_)) => "denied"
    Err(OtherError(error)) => "other:" + error.name()
  }
}
