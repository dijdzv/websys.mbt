// Streams API tests — ReadableStream, WritableStream, TransformStream
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/Streams_API
// Tests codegen patterns: callback interfaces, Promise-based async, union type downcasting

///|
/// Test ReadableStream — constructor, locked, tee.
pub fn test_readable_stream() -> Unit {
  let rs = @websys.ReadableStream::new()

  // locked — false by default
  assert_false(rs.get_locked(), label="locked default")

  // tee — returns array of 2 ReadableStreams
  let branches = rs.tee()
  assert_eq(branches.length(), 2, label="tee returns 2 branches")
  assert_false(branches[0].get_locked(), label="branch 0 not locked")
  assert_false(branches[1].get_locked(), label="branch 1 not locked")
  println("  readable_stream: ok")
}

///|
/// Test ReadableStream reader — getReader locks the stream, releaseLock unlocks.
pub fn test_readable_stream_reader() -> Unit {
  let rs = @websys.ReadableStream::new()

  // getReader — returns ReadableStreamReader union
  let reader_union = rs.get_reader()
  assert_true(rs.get_locked(), label="locked after getReader")

  // Downcast to ReadableStreamDefaultReader
  match reader_union.as_readable_stream_default_reader() {
    Some(reader) => {
      // releaseLock — unlocks the stream
      reader.release_lock()
      assert_false(rs.get_locked(), label="unlocked after releaseLock")
    }
    None => {
      let msg = "FAIL [reader]: as_readable_stream_default_reader returned None"
      println(msg)
      abort(msg)
    }
  }
  println("  readable_stream_reader: ok")
}

///|
/// Test WritableStream — constructor, locked, getWriter, releaseLock.
pub fn test_writable_stream() -> Unit {
  let ws = @websys.WritableStream::new()

  // locked — false by default
  assert_false(ws.get_locked(), label="locked default")

  // getWriter — locks the stream
  let writer = ws.get_writer()
  assert_true(ws.get_locked(), label="locked after getWriter")

  // desiredSize — may be null for a default empty stream
  let _desired_size = writer.get_desired_size()

  // releaseLock — unlocks the stream
  writer.release_lock()
  assert_false(ws.get_locked(), label="unlocked after releaseLock")
  println("  writable_stream: ok")
}

///|
/// Test TransformStream — constructor, readable/writable accessors.
pub fn test_transform_stream() -> Unit {
  let ts = @websys.TransformStream::new()

  // readable — returns a ReadableStream
  let readable = ts.get_readable()
  assert_false(readable.get_locked(), label="readable not locked")

  // writable — returns a WritableStream
  let writable = ts.get_writable()
  assert_false(writable.get_locked(), label="writable not locked")
  println("  transform_stream: ok")
}

///|
/// Test Streams pipe_through — TransformStream connects readable and writable.
pub fn test_stream_pipe_through() -> Unit {
  let source = @websys.ReadableStream::new()
  let transform = @websys.TransformStream::new()

  // pipe_through — returns a new ReadableStream
  let pair = @websys.ReadableWritablePair::{
    readable: transform.get_readable(),
    writable: transform.get_writable(),
  }
  let result = source.pipe_through(pair)
  assert_false(result.get_locked(), label="piped stream not locked")
  println("  stream_pipe_through: ok")
}
