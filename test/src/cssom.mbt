// CSSOM API tests — CSSStyleSheet, CSSRuleList, MediaList
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet

///|
/// Test constructable CSSStyleSheet — insertRule, deleteRule, cssRules.
pub fn test_css_style_sheet() -> Unit {
  // Constructable stylesheet (new CSSStyleSheet())
  let sheet = @websys.CSSStyleSheet::new()

  // insertRule — returns index
  let idx = sheet.insert_rule("body { color: red; }")
  assert_eq(idx, 0, label="insertRule returns 0")

  // cssRules — length should be 1
  let rules = sheet.get_css_rules()
  assert_eq(rules.get_length(), 1, label="cssRules length")

  // Insert another rule at index 1
  let idx2 = sheet.insert_rule_with_index("p { margin: 0; }", 1)
  assert_eq(idx2, 1, label="insertRule at index 1")
  assert_eq(sheet.get_css_rules().get_length(), 2, label="cssRules after 2nd insert")

  // deleteRule
  sheet.delete_rule(0)
  assert_eq(sheet.get_css_rules().get_length(), 1, label="cssRules after delete")

  // replaceSync — replaces all rules
  sheet.replace_sync(".foo { display: none; }")
  assert_eq(
    sheet.get_css_rules().get_length(),
    1,
    label="cssRules after replaceSync",
  )
  println("  css_style_sheet: ok")
}

///|
/// Test CSSRule properties.
pub fn test_css_rule() -> Unit {
  let sheet = @websys.CSSStyleSheet::new()
  let _ = sheet.insert_rule("div { color: blue; }")
  let rules = sheet.get_css_rules()

  // Get first rule
  match rules.item(0) {
    Some(rule) => {
      // cssText
      let text = rule.get_css_text()
      assert_true(text.contains("color"), label="cssText contains color")

      // type — 1 = CSSRule.STYLE_RULE
      assert_eq(rule.get_type(), 1, label="rule type STYLE_RULE")

      // parentStyleSheet
      assert_true(
        rule.get_parent_style_sheet() is Some(_),
        label="parentStyleSheet exists",
      )

      // parentRule — None for top-level rule
      assert_true(rule.get_parent_rule() is None, label="parentRule is None")
    }
    None => {
      let msg = "FAIL [css_rule]: rules.item(0) returned None"
      println(msg)
      abort(msg)
    }
  }
  println("  css_rule: ok")
}

///|
/// Test MediaList via constructable stylesheet.
pub fn test_media_list() -> Unit {
  let init = @websys.CSSStyleSheetInit::{
    ..@websys.CSSStyleSheetInit::default(),
    media: Some(@websys.MediaListOrString::from_string("screen")),
  }
  let sheet = @websys.CSSStyleSheet::new_with_options(init)

  // Access media through StyleSheet interface
  let style_sheet = sheet.to_style_sheet()
  let media = style_sheet.get_media()

  // length
  assert_eq(media.get_length(), 1, label="media length")

  // item
  match media.item(0) {
    Some(m) => assert_eq(m, "screen", label="media item 0")
    None => {
      let msg = "FAIL [media_list]: media.item(0) returned None"
      println(msg)
      abort(msg)
    }
  }

  // appendMedium
  media.append_medium("print")
  assert_eq(media.get_length(), 2, label="media length after append")

  // deleteMedium
  media.delete_medium("screen")
  assert_eq(media.get_length(), 1, label="media length after delete")

  // mediaText
  let text = media.get_media_text()
  assert_eq(text, "print", label="mediaText after operations")
  println("  media_list: ok")
}
