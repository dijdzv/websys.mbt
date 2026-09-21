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

///|
pub fn save(storage : @web.Storage, value : String) -> String {
  match storage.set_item("memo", value) {
    Ok(_) => "saved"
    Err(QuotaExceededError(_)) => "quota"
    Err(OtherError(error)) => "other:" + error.name()
  }
}

///|
pub fn load(storage : @web.Storage) -> String {
  match storage.get_item("memo") {
    Ok(Some(value)) => value
    Ok(None) => "missing"
    Err(SecurityError(_)) => "denied"
    Err(OtherError(error)) => "other:" + error.name()
  }
}
