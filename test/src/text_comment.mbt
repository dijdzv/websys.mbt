///|
fn test_text_node() -> Unit {
  let doc = get_document()
  let text = doc.create_text_node("Hello, World!")
  let node = text.to_node()
  assert_eq(
    node.get_text_content().unwrap(),
    "Hello, World!",
    label="textContent",
  )
  assert_eq(node.get_node_type(), 3, label="nodeType TEXT_NODE")
  assert_eq(node.get_node_name(), "#text", label="nodeName")
  // wholeText
  assert_eq(text.get_whole_text(), "Hello, World!", label="wholeText")
  // splitText
  let second = text.split_text(5)
  assert_eq(text.get_whole_text(), "Hello", label="first part after split")
  assert_eq(
    second.get_whole_text(),
    ", World!",
    label="second part after split",
  )
}

///|
fn test_comment_node() -> Unit {
  let doc = get_document()
  let comment = doc.create_comment("This is a comment")
  let node = comment.to_node()
  assert_eq(
    node.get_text_content().unwrap(),
    "This is a comment",
    label="textContent",
  )
  assert_eq(node.get_node_type(), 8, label="nodeType COMMENT_NODE")
  assert_eq(node.get_node_name(), "#comment", label="nodeName")
}
