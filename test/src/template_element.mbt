///|
fn test_template_element() -> Unit {
  let doc = get_document()
  let template = @websys.HTMLTemplateElement::from_js_value(
    doc.create_element("template").to_js_value(),
  )
  // content returns a DocumentFragment
  let content = template.get_content()
  assert_eq(
    content.get_child_element_count(),
    0,
    label="content initially empty",
  )
  // shadowRootDelegatesFocus
  assert_false(
    template.get_shadow_root_delegates_focus(),
    label="shadowRootDelegatesFocus default",
  )
  template.set_shadow_root_delegates_focus(true)
  assert_true(
    template.get_shadow_root_delegates_focus(),
    label="shadowRootDelegatesFocus set",
  )
  // shadowRootClonable
  assert_false(
    template.get_shadow_root_clonable(),
    label="shadowRootClonable default",
  )
  template.set_shadow_root_clonable(true)
  assert_true(
    template.get_shadow_root_clonable(),
    label="shadowRootClonable set",
  )
}
