// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/streams

///|
/// ReadableStreamReader typedef
pub type ReadableStreamReader

///|
pub extern "js" fn ReadableStreamReader::to_js_value(
  self : ReadableStreamReader,
) -> JsValue =
  #| (self) => self

///|
/// Create ReadableStreamReader from ReadableStreamDefaultReader
pub extern "js" fn ReadableStreamReader::from_readable_stream_default_reader(
  v : ReadableStreamDefaultReader,
) -> ReadableStreamReader =
  #| (v) => v

///|
/// Create ReadableStreamReader from ReadableStreamBYOBReader
pub extern "js" fn ReadableStreamReader::from_readable_stream_b_y_o_b_reader(
  v : ReadableStreamBYOBReader,
) -> ReadableStreamReader =
  #| (v) => v

///|
/// Check if this ReadableStreamReader is ReadableStreamDefaultReader
pub extern "js" fn ReadableStreamReader::is_readable_stream_default_reader(
  self : ReadableStreamReader,
) -> Bool =
  #| (self) => self instanceof ReadableStreamDefaultReader

///|
/// Check if this ReadableStreamReader is ReadableStreamBYOBReader
pub extern "js" fn ReadableStreamReader::is_readable_stream_b_y_o_b_reader(
  self : ReadableStreamReader,
) -> Bool =
  #| (self) => self instanceof ReadableStreamBYOBReader

///|
/// Try to get ReadableStreamReader as ReadableStreamDefaultReader
pub extern "js" fn ReadableStreamReader::as_readable_stream_default_reader(
  self : ReadableStreamReader,
) -> ReadableStreamDefaultReader? =
  #| (self) => (self instanceof ReadableStreamDefaultReader) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get ReadableStreamReader as ReadableStreamBYOBReader
pub extern "js" fn ReadableStreamReader::as_readable_stream_b_y_o_b_reader(
  self : ReadableStreamReader,
) -> ReadableStreamBYOBReader? =
  #| (self) => (self instanceof ReadableStreamBYOBReader) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// ReadableStreamController typedef
pub type ReadableStreamController

///|
pub extern "js" fn ReadableStreamController::to_js_value(
  self : ReadableStreamController,
) -> JsValue =
  #| (self) => self

///|
/// Create ReadableStreamController from ReadableStreamDefaultController
pub extern "js" fn ReadableStreamController::from_readable_stream_default_controller(
  v : ReadableStreamDefaultController,
) -> ReadableStreamController =
  #| (v) => v

///|
/// Create ReadableStreamController from ReadableByteStreamController
pub extern "js" fn ReadableStreamController::from_readable_byte_stream_controller(
  v : ReadableByteStreamController,
) -> ReadableStreamController =
  #| (v) => v

///|
/// Check if this ReadableStreamController is ReadableStreamDefaultController
pub extern "js" fn ReadableStreamController::is_readable_stream_default_controller(
  self : ReadableStreamController,
) -> Bool =
  #| (self) => self instanceof ReadableStreamDefaultController

///|
/// Check if this ReadableStreamController is ReadableByteStreamController
pub extern "js" fn ReadableStreamController::is_readable_byte_stream_controller(
  self : ReadableStreamController,
) -> Bool =
  #| (self) => self instanceof ReadableByteStreamController

///|
/// Try to get ReadableStreamController as ReadableStreamDefaultController
pub extern "js" fn ReadableStreamController::as_readable_stream_default_controller(
  self : ReadableStreamController,
) -> ReadableStreamDefaultController? =
  #| (self) => (self instanceof ReadableStreamDefaultController) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get ReadableStreamController as ReadableByteStreamController
pub extern "js" fn ReadableStreamController::as_readable_byte_stream_controller(
  self : ReadableStreamController,
) -> ReadableByteStreamController? =
  #| (self) => (self instanceof ReadableByteStreamController) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// ReadableStreamReaderMode enum
pub(all) enum ReadableStreamReaderMode {
  Byob
}

///|
/// Convert to string value
pub fn ReadableStreamReaderMode::to_string(
  self : ReadableStreamReaderMode,
) -> String {
  match self {
    ReadableStreamReaderMode::Byob => "byob"
  }
}

///|
/// Parse from string value
pub fn ReadableStreamReaderMode::from_string(
  s : String,
) -> ReadableStreamReaderMode? {
  match s {
    "byob" => Some(ReadableStreamReaderMode::Byob)
    _ => None
  }
}

///|
/// ReadableStreamType enum
pub(all) enum ReadableStreamType {
  Bytes
}

///|
/// Convert to string value
pub fn ReadableStreamType::to_string(self : ReadableStreamType) -> String {
  match self {
    ReadableStreamType::Bytes => "bytes"
  }
}

///|
/// Parse from string value
pub fn ReadableStreamType::from_string(s : String) -> ReadableStreamType? {
  match s {
    "bytes" => Some(ReadableStreamType::Bytes)
    _ => None
  }
}

///|
/// UnderlyingSourceStartCallback callback interface
pub type UnderlyingSourceStartCallback

///|
/// Create UnderlyingSourceStartCallback from a MoonBit function
pub extern "js" fn UnderlyingSourceStartCallback::from_fn(
  handler : (ReadableStreamController) -> JsValue,
) -> UnderlyingSourceStartCallback =
  #| (handler) => handler

///|
/// UnderlyingSourcePullCallback callback interface
pub type UnderlyingSourcePullCallback

///|
/// Create UnderlyingSourcePullCallback from a MoonBit function
pub extern "js" fn UnderlyingSourcePullCallback::from_fn(
  handler : (ReadableStreamController) -> Promise[Unit],
) -> UnderlyingSourcePullCallback =
  #| (handler) => handler

///|
/// UnderlyingSourceCancelCallback callback interface
pub type UnderlyingSourceCancelCallback

///|
/// Create UnderlyingSourceCancelCallback from a MoonBit function
pub extern "js" fn UnderlyingSourceCancelCallback::from_fn(
  handler : (JsValue) -> Promise[Unit],
) -> UnderlyingSourceCancelCallback =
  #| (handler) => handler

///|
/// UnderlyingSinkStartCallback callback interface
pub type UnderlyingSinkStartCallback

///|
/// Create UnderlyingSinkStartCallback from a MoonBit function
pub extern "js" fn UnderlyingSinkStartCallback::from_fn(
  handler : (WritableStreamDefaultController) -> JsValue,
) -> UnderlyingSinkStartCallback =
  #| (handler) => handler

///|
/// UnderlyingSinkWriteCallback callback interface
pub type UnderlyingSinkWriteCallback

///|
/// Create UnderlyingSinkWriteCallback from a MoonBit function
pub extern "js" fn UnderlyingSinkWriteCallback::from_fn(
  handler : (JsValue, WritableStreamDefaultController) -> Promise[Unit],
) -> UnderlyingSinkWriteCallback =
  #| (handler) => handler

///|
/// UnderlyingSinkCloseCallback callback interface
pub type UnderlyingSinkCloseCallback

///|
/// UnderlyingSinkAbortCallback callback interface
pub type UnderlyingSinkAbortCallback

///|
/// Create UnderlyingSinkAbortCallback from a MoonBit function
pub extern "js" fn UnderlyingSinkAbortCallback::from_fn(
  handler : (JsValue) -> Promise[Unit],
) -> UnderlyingSinkAbortCallback =
  #| (handler) => handler

///|
/// TransformerStartCallback callback interface
pub type TransformerStartCallback

///|
/// Create TransformerStartCallback from a MoonBit function
pub extern "js" fn TransformerStartCallback::from_fn(
  handler : (TransformStreamDefaultController) -> JsValue,
) -> TransformerStartCallback =
  #| (handler) => handler

///|
/// TransformerFlushCallback callback interface
pub type TransformerFlushCallback

///|
/// Create TransformerFlushCallback from a MoonBit function
pub extern "js" fn TransformerFlushCallback::from_fn(
  handler : (TransformStreamDefaultController) -> Promise[Unit],
) -> TransformerFlushCallback =
  #| (handler) => handler

///|
/// TransformerTransformCallback callback interface
pub type TransformerTransformCallback

///|
/// Create TransformerTransformCallback from a MoonBit function
pub extern "js" fn TransformerTransformCallback::from_fn(
  handler : (JsValue, TransformStreamDefaultController) -> Promise[Unit],
) -> TransformerTransformCallback =
  #| (handler) => handler

///|
/// TransformerCancelCallback callback interface
pub type TransformerCancelCallback

///|
/// Create TransformerCancelCallback from a MoonBit function
pub extern "js" fn TransformerCancelCallback::from_fn(
  handler : (JsValue) -> Promise[Unit],
) -> TransformerCancelCallback =
  #| (handler) => handler

///|
/// QueuingStrategySize callback interface
pub type QueuingStrategySize

///|
/// Create QueuingStrategySize from a MoonBit function
pub extern "js" fn QueuingStrategySize::from_fn(
  handler : (JsValue) -> Double,
) -> QueuingStrategySize =
  #| (handler) => handler

///|
/// ReadableStreamGetReaderOptions dictionary
pub struct ReadableStreamGetReaderOptions {
  mode : ReadableStreamReaderMode?
}

///|
/// Create a new ReadableStreamGetReaderOptions with default values
pub fn ReadableStreamGetReaderOptions::default() -> ReadableStreamGetReaderOptions {
  ReadableStreamGetReaderOptions::{ mode: None }
}

///|
/// Convert to JsValue
pub extern "js" fn ReadableStreamGetReaderOptions::to_js(
  self : ReadableStreamGetReaderOptions,
) -> JsValue =
  #| (self) => ({
  #|   mode: ['byob'][self.mode]
  #| })

///|
/// ReadableStreamIteratorOptions dictionary
pub struct ReadableStreamIteratorOptions {
  preventCancel : Bool?
}

///|
/// Create a new ReadableStreamIteratorOptions with default values
pub fn ReadableStreamIteratorOptions::default() -> ReadableStreamIteratorOptions {
  ReadableStreamIteratorOptions::{ preventCancel: None }
}

///|
/// Convert to JsValue
pub extern "js" fn ReadableStreamIteratorOptions::to_js(
  self : ReadableStreamIteratorOptions,
) -> JsValue =
  #| (self) => ({
  #|   preventCancel: self.preventCancel
  #| })

///|
/// ReadableWritablePair dictionary
pub struct ReadableWritablePair {
  readable : ReadableStream
  writable : WritableStream
}

///|
/// Create a new ReadableWritablePair with default values
pub fn ReadableWritablePair::default() -> ReadableWritablePair {
  ReadableWritablePair::{ readable: panic(), writable: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn ReadableWritablePair::to_js(
  self : ReadableWritablePair,
) -> JsValue =
  #| (self) => ({
  #|   readable: self.readable,
  #|   writable: self.writable
  #| })

///|
/// StreamPipeOptions dictionary
pub struct StreamPipeOptions {
  preventClose : Bool?
  preventAbort : Bool?
  preventCancel : Bool?
  signal : AbortSignal?
}

///|
/// Create a new StreamPipeOptions with default values
pub fn StreamPipeOptions::default() -> StreamPipeOptions {
  StreamPipeOptions::{
    preventClose: None,
    preventAbort: None,
    preventCancel: None,
    signal: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn StreamPipeOptions::to_js(
  self : StreamPipeOptions,
) -> JsValue =
  #| (self) => ({
  #|   preventClose: self.preventClose,
  #|   preventAbort: self.preventAbort,
  #|   preventCancel: self.preventCancel,
  #|   signal: self.signal
  #| })

///|
/// UnderlyingSource dictionary
pub struct UnderlyingSource {
  start : UnderlyingSourceStartCallback?
  pull : UnderlyingSourcePullCallback?
  cancel : UnderlyingSourceCancelCallback?
  type_ : ReadableStreamType?
  autoAllocateChunkSize : Int64?
}

///|
/// Create a new UnderlyingSource with default values
pub fn UnderlyingSource::default() -> UnderlyingSource {
  UnderlyingSource::{
    start: None,
    pull: None,
    cancel: None,
    type_: None,
    autoAllocateChunkSize: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn UnderlyingSource::to_js(self : UnderlyingSource) -> JsValue =
  #| (self) => ({
  #|   start: self.start,
  #|   pull: self.pull,
  #|   cancel: self.cancel,
  #|   type: ['bytes'][self.type_],
  #|   autoAllocateChunkSize: self.autoAllocateChunkSize
  #| })

///|
/// ReadableStreamReadResult dictionary
pub struct ReadableStreamReadResult {
  value : JsValue?
  done : Bool?
}

///|
/// Create a new ReadableStreamReadResult with default values
pub fn ReadableStreamReadResult::default() -> ReadableStreamReadResult {
  ReadableStreamReadResult::{ value: None, done: None }
}

///|
/// Convert to JsValue
pub extern "js" fn ReadableStreamReadResult::to_js(
  self : ReadableStreamReadResult,
) -> JsValue =
  #| (self) => ({
  #|   value: self.value,
  #|   done: self.done
  #| })

///|
/// ReadableStreamBYOBReaderReadOptions dictionary
pub struct ReadableStreamBYOBReaderReadOptions {
  min : Int64?
}

///|
/// Create a new ReadableStreamBYOBReaderReadOptions with default values
pub fn ReadableStreamBYOBReaderReadOptions::default() -> ReadableStreamBYOBReaderReadOptions {
  ReadableStreamBYOBReaderReadOptions::{ min: None }
}

///|
/// Convert to JsValue
pub extern "js" fn ReadableStreamBYOBReaderReadOptions::to_js(
  self : ReadableStreamBYOBReaderReadOptions,
) -> JsValue =
  #| (self) => ({
  #|   min: self.min
  #| })

///|
/// UnderlyingSink dictionary
pub struct UnderlyingSink {
  start : UnderlyingSinkStartCallback?
  write : UnderlyingSinkWriteCallback?
  close : UnderlyingSinkCloseCallback?
  abort : UnderlyingSinkAbortCallback?
  type_ : JsValue?
}

///|
/// Create a new UnderlyingSink with default values
pub fn UnderlyingSink::default() -> UnderlyingSink {
  UnderlyingSink::{
    start: None,
    write: None,
    close: None,
    abort: None,
    type_: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn UnderlyingSink::to_js(self : UnderlyingSink) -> JsValue =
  #| (self) => ({
  #|   start: self.start,
  #|   write: self.write,
  #|   close: self.close,
  #|   abort: self.abort,
  #|   type: self.type_
  #| })

///|
/// Transformer dictionary
pub struct Transformer {
  start : TransformerStartCallback?
  transform : TransformerTransformCallback?
  flush : TransformerFlushCallback?
  cancel : TransformerCancelCallback?
  readableType : JsValue?
  writableType : JsValue?
}

///|
/// Create a new Transformer with default values
pub fn Transformer::default() -> Transformer {
  Transformer::{
    start: None,
    transform: None,
    flush: None,
    cancel: None,
    readableType: None,
    writableType: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn Transformer::to_js(self : Transformer) -> JsValue =
  #| (self) => ({
  #|   start: self.start,
  #|   transform: self.transform,
  #|   flush: self.flush,
  #|   cancel: self.cancel,
  #|   readableType: self.readableType,
  #|   writableType: self.writableType
  #| })

///|
/// QueuingStrategy dictionary
pub struct QueuingStrategy {
  highWaterMark : Double?
  size : QueuingStrategySize?
}

///|
/// Create a new QueuingStrategy with default values
pub fn QueuingStrategy::default() -> QueuingStrategy {
  QueuingStrategy::{ highWaterMark: None, size: None }
}

///|
/// Convert to JsValue
pub extern "js" fn QueuingStrategy::to_js(self : QueuingStrategy) -> JsValue =
  #| (self) => ({
  #|   highWaterMark: self.highWaterMark,
  #|   size: self.size
  #| })

///|
/// QueuingStrategyInit dictionary
pub struct QueuingStrategyInit {
  highWaterMark : Double
}

///|
/// Create a new QueuingStrategyInit with default values
pub fn QueuingStrategyInit::default() -> QueuingStrategyInit {
  QueuingStrategyInit::{ highWaterMark: 0 }
}

///|
/// Convert to JsValue
pub extern "js" fn QueuingStrategyInit::to_js(
  self : QueuingStrategyInit,
) -> JsValue =
  #| (self) => ({
  #|   highWaterMark: self.highWaterMark
  #| })

///|
/// ReadableStream interface
pub type ReadableStream

///|
pub extern "js" fn ReadableStream::to_js_value(
  self : ReadableStream,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ReadableStream (unchecked)
pub extern "js" fn ReadableStream::from_js_value(v : JsValue) -> ReadableStream =
  #| (v) => v

///|
/// Safely cast JsValue to ReadableStream (checked with instanceof)
pub extern "js" fn ReadableStream::from_js_value_opt(
  v : JsValue,
) -> ReadableStream? =
  #| (v) => (v instanceof ReadableStream) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ReadableStream (checked with instanceof)
pub extern "js" fn JsValue::as_readable_stream(
  self : JsValue,
) -> ReadableStream? =
  #| (self) => (self instanceof ReadableStream) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ReadableStream (unchecked)
pub extern "js" fn JsValue::to_readable_stream(
  self : JsValue,
) -> ReadableStream =
  #| (self) => self

///|
pub extern "js" fn ReadableStream::as_web_transport_receive_stream(
  self : ReadableStream,
) -> WebTransportReceiveStream? =
  #| (self) => (self instanceof WebTransportReceiveStream) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn ReadableStream::new(
  underlying_source : JsValue,
  strategy : QueuingStrategy,
) -> ReadableStream =
  #| (underlying_source, strategy) => new ReadableStream(underlying_source, strategy)

///|
pub extern "js" fn ReadableStream::from(
  async_iterable : JsValue,
) -> ReadableStream =
  #| (async_iterable) => ReadableStream.from(async_iterable)

///|
pub extern "js" fn ReadableStream::get_locked(self : ReadableStream) -> Bool =
  #| (self) => self.locked

///|
pub extern "js" fn ReadableStream::cancel(
  self : ReadableStream,
) -> Promise[Unit] =
  #| (self) => self.cancel()

///|
pub extern "js" fn ReadableStream::cancel_with_reason(
  self : ReadableStream,
  reason : JsValue,
) -> Promise[Unit] =
  #| (self, reason) => self.cancel(reason)

///|
pub extern "js" fn ReadableStream::get_reader(
  self : ReadableStream,
) -> ReadableStreamReader =
  #| (self) => self.getReader()

///|
pub extern "js" fn ReadableStream::get_reader_with_options(
  self : ReadableStream,
  options : ReadableStreamGetReaderOptions,
) -> ReadableStreamReader =
  #| (self, options) => self.getReader(options)

///|
pub extern "js" fn ReadableStream::pipe_through(
  self : ReadableStream,
  transform : ReadableWritablePair,
) -> ReadableStream =
  #| (self, transform) => self.pipeThrough(transform)

///|
pub extern "js" fn ReadableStream::pipe_through_with_options(
  self : ReadableStream,
  transform : ReadableWritablePair,
  options : StreamPipeOptions,
) -> ReadableStream =
  #| (self, transform, options) => self.pipeThrough(transform, options)

///|
pub extern "js" fn ReadableStream::pipe_to(
  self : ReadableStream,
  destination : WritableStream,
) -> Promise[Unit] =
  #| (self, destination) => self.pipeTo(destination)

///|
pub extern "js" fn ReadableStream::pipe_to_with_options(
  self : ReadableStream,
  destination : WritableStream,
  options : StreamPipeOptions,
) -> Promise[Unit] =
  #| (self, destination, options) => self.pipeTo(destination, options)

///|
pub extern "js" fn ReadableStream::tee(
  self : ReadableStream,
) -> Array[ReadableStream] =
  #| (self) => self.tee()

///|
pub extern "js" fn ReadableStream::_unknown_(self : ReadableStream) -> Unit =
  #| (self) => self._unknown_()

///|
/// ReadableStreamDefaultReader interface
pub type ReadableStreamDefaultReader

///|
pub extern "js" fn ReadableStreamDefaultReader::to_js_value(
  self : ReadableStreamDefaultReader,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ReadableStreamDefaultReader (unchecked)
pub extern "js" fn ReadableStreamDefaultReader::from_js_value(
  v : JsValue,
) -> ReadableStreamDefaultReader =
  #| (v) => v

///|
/// Safely cast JsValue to ReadableStreamDefaultReader (checked with instanceof)
pub extern "js" fn ReadableStreamDefaultReader::from_js_value_opt(
  v : JsValue,
) -> ReadableStreamDefaultReader? =
  #| (v) => (v instanceof ReadableStreamDefaultReader) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ReadableStreamDefaultReader (checked with instanceof)
pub extern "js" fn JsValue::as_readable_stream_default_reader(
  self : JsValue,
) -> ReadableStreamDefaultReader? =
  #| (self) => (self instanceof ReadableStreamDefaultReader) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ReadableStreamDefaultReader (unchecked)
pub extern "js" fn JsValue::to_readable_stream_default_reader(
  self : JsValue,
) -> ReadableStreamDefaultReader =
  #| (self) => self

///|
pub extern "js" fn ReadableStreamDefaultReader::new(
  stream : ReadableStream,
) -> ReadableStreamDefaultReader =
  #| (stream) => new ReadableStreamDefaultReader(stream)

///|
pub extern "js" fn ReadableStreamDefaultReader::read(
  self : ReadableStreamDefaultReader,
) -> Promise[ReadableStreamReadResult] =
  #| (self) => self.read()

///|
pub extern "js" fn ReadableStreamDefaultReader::release_lock(
  self : ReadableStreamDefaultReader,
) -> Unit =
  #| (self) => self.releaseLock()

///|
pub extern "js" fn ReadableStreamDefaultReader::get_closed(
  self : ReadableStreamDefaultReader,
) -> Promise[Unit] =
  #| (self) => self.closed

///|
pub extern "js" fn ReadableStreamDefaultReader::cancel(
  self : ReadableStreamDefaultReader,
) -> Promise[Unit] =
  #| (self) => self.cancel()

///|
pub extern "js" fn ReadableStreamDefaultReader::cancel_with_reason(
  self : ReadableStreamDefaultReader,
  reason : JsValue,
) -> Promise[Unit] =
  #| (self, reason) => self.cancel(reason)

///|
/// ReadableStreamBYOBReader interface
pub type ReadableStreamBYOBReader

///|
pub extern "js" fn ReadableStreamBYOBReader::to_js_value(
  self : ReadableStreamBYOBReader,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ReadableStreamBYOBReader (unchecked)
pub extern "js" fn ReadableStreamBYOBReader::from_js_value(
  v : JsValue,
) -> ReadableStreamBYOBReader =
  #| (v) => v

///|
/// Safely cast JsValue to ReadableStreamBYOBReader (checked with instanceof)
pub extern "js" fn ReadableStreamBYOBReader::from_js_value_opt(
  v : JsValue,
) -> ReadableStreamBYOBReader? =
  #| (v) => (v instanceof ReadableStreamBYOBReader) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ReadableStreamBYOBReader (checked with instanceof)
pub extern "js" fn JsValue::as_readable_stream_byob_reader(
  self : JsValue,
) -> ReadableStreamBYOBReader? =
  #| (self) => (self instanceof ReadableStreamBYOBReader) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ReadableStreamBYOBReader (unchecked)
pub extern "js" fn JsValue::to_readable_stream_byob_reader(
  self : JsValue,
) -> ReadableStreamBYOBReader =
  #| (self) => self

///|
pub extern "js" fn ReadableStreamBYOBReader::new(
  stream : ReadableStream,
) -> ReadableStreamBYOBReader =
  #| (stream) => new ReadableStreamBYOBReader(stream)

///|
pub extern "js" fn ReadableStreamBYOBReader::read(
  self : ReadableStreamBYOBReader,
  view : ArrayBufferView,
) -> Promise[ReadableStreamReadResult] =
  #| (self, view) => self.read(view)

///|
pub extern "js" fn ReadableStreamBYOBReader::read_with_options(
  self : ReadableStreamBYOBReader,
  view : ArrayBufferView,
  options : ReadableStreamBYOBReaderReadOptions,
) -> Promise[ReadableStreamReadResult] =
  #| (self, view, options) => self.read(view, options)

///|
pub extern "js" fn ReadableStreamBYOBReader::release_lock(
  self : ReadableStreamBYOBReader,
) -> Unit =
  #| (self) => self.releaseLock()

///|
pub extern "js" fn ReadableStreamBYOBReader::get_closed(
  self : ReadableStreamBYOBReader,
) -> Promise[Unit] =
  #| (self) => self.closed

///|
pub extern "js" fn ReadableStreamBYOBReader::cancel(
  self : ReadableStreamBYOBReader,
) -> Promise[Unit] =
  #| (self) => self.cancel()

///|
pub extern "js" fn ReadableStreamBYOBReader::cancel_with_reason(
  self : ReadableStreamBYOBReader,
  reason : JsValue,
) -> Promise[Unit] =
  #| (self, reason) => self.cancel(reason)

///|
/// ReadableStreamDefaultController interface
pub type ReadableStreamDefaultController

///|
pub extern "js" fn ReadableStreamDefaultController::to_js_value(
  self : ReadableStreamDefaultController,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ReadableStreamDefaultController (unchecked)
pub extern "js" fn ReadableStreamDefaultController::from_js_value(
  v : JsValue,
) -> ReadableStreamDefaultController =
  #| (v) => v

///|
/// Safely cast JsValue to ReadableStreamDefaultController (checked with instanceof)
pub extern "js" fn ReadableStreamDefaultController::from_js_value_opt(
  v : JsValue,
) -> ReadableStreamDefaultController? =
  #| (v) => (v instanceof ReadableStreamDefaultController) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ReadableStreamDefaultController (checked with instanceof)
pub extern "js" fn JsValue::as_readable_stream_default_controller(
  self : JsValue,
) -> ReadableStreamDefaultController? =
  #| (self) => (self instanceof ReadableStreamDefaultController) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ReadableStreamDefaultController (unchecked)
pub extern "js" fn JsValue::to_readable_stream_default_controller(
  self : JsValue,
) -> ReadableStreamDefaultController =
  #| (self) => self

///|
pub extern "js" fn ReadableStreamDefaultController::get_desired_size(
  self : ReadableStreamDefaultController,
) -> Double? =
  #| (self) => { const v = self.desiredSize; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn ReadableStreamDefaultController::close(
  self : ReadableStreamDefaultController,
) -> Unit =
  #| (self) => self.close()

///|
pub extern "js" fn ReadableStreamDefaultController::enqueue(
  self : ReadableStreamDefaultController,
) -> Unit =
  #| (self) => self.enqueue()

///|
pub extern "js" fn ReadableStreamDefaultController::enqueue_with_chunk(
  self : ReadableStreamDefaultController,
  chunk : JsValue,
) -> Unit =
  #| (self, chunk) => self.enqueue(chunk)

///|
pub extern "js" fn ReadableStreamDefaultController::error(
  self : ReadableStreamDefaultController,
) -> Unit =
  #| (self) => self.error()

///|
pub extern "js" fn ReadableStreamDefaultController::error_with_e(
  self : ReadableStreamDefaultController,
  e : JsValue,
) -> Unit =
  #| (self, e) => self.error(e)

///|
/// ReadableByteStreamController interface
pub type ReadableByteStreamController

///|
pub extern "js" fn ReadableByteStreamController::to_js_value(
  self : ReadableByteStreamController,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ReadableByteStreamController (unchecked)
pub extern "js" fn ReadableByteStreamController::from_js_value(
  v : JsValue,
) -> ReadableByteStreamController =
  #| (v) => v

///|
/// Safely cast JsValue to ReadableByteStreamController (checked with instanceof)
pub extern "js" fn ReadableByteStreamController::from_js_value_opt(
  v : JsValue,
) -> ReadableByteStreamController? =
  #| (v) => (v instanceof ReadableByteStreamController) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ReadableByteStreamController (checked with instanceof)
pub extern "js" fn JsValue::as_readable_byte_stream_controller(
  self : JsValue,
) -> ReadableByteStreamController? =
  #| (self) => (self instanceof ReadableByteStreamController) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ReadableByteStreamController (unchecked)
pub extern "js" fn JsValue::to_readable_byte_stream_controller(
  self : JsValue,
) -> ReadableByteStreamController =
  #| (self) => self

///|
pub extern "js" fn ReadableByteStreamController::get_byob_request(
  self : ReadableByteStreamController,
) -> ReadableStreamBYOBRequest? =
  #| (self) => { const v = self.byobRequest; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn ReadableByteStreamController::get_desired_size(
  self : ReadableByteStreamController,
) -> Double? =
  #| (self) => { const v = self.desiredSize; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn ReadableByteStreamController::close(
  self : ReadableByteStreamController,
) -> Unit =
  #| (self) => self.close()

///|
pub extern "js" fn ReadableByteStreamController::enqueue(
  self : ReadableByteStreamController,
  chunk : ArrayBufferView,
) -> Unit =
  #| (self, chunk) => self.enqueue(chunk)

///|
pub extern "js" fn ReadableByteStreamController::error(
  self : ReadableByteStreamController,
) -> Unit =
  #| (self) => self.error()

///|
pub extern "js" fn ReadableByteStreamController::error_with_e(
  self : ReadableByteStreamController,
  e : JsValue,
) -> Unit =
  #| (self, e) => self.error(e)

///|
/// ReadableStreamBYOBRequest interface
pub type ReadableStreamBYOBRequest

///|
pub extern "js" fn ReadableStreamBYOBRequest::to_js_value(
  self : ReadableStreamBYOBRequest,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ReadableStreamBYOBRequest (unchecked)
pub extern "js" fn ReadableStreamBYOBRequest::from_js_value(
  v : JsValue,
) -> ReadableStreamBYOBRequest =
  #| (v) => v

///|
/// Safely cast JsValue to ReadableStreamBYOBRequest (checked with instanceof)
pub extern "js" fn ReadableStreamBYOBRequest::from_js_value_opt(
  v : JsValue,
) -> ReadableStreamBYOBRequest? =
  #| (v) => (v instanceof ReadableStreamBYOBRequest) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ReadableStreamBYOBRequest (checked with instanceof)
pub extern "js" fn JsValue::as_readable_stream_byob_request(
  self : JsValue,
) -> ReadableStreamBYOBRequest? =
  #| (self) => (self instanceof ReadableStreamBYOBRequest) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ReadableStreamBYOBRequest (unchecked)
pub extern "js" fn JsValue::to_readable_stream_byob_request(
  self : JsValue,
) -> ReadableStreamBYOBRequest =
  #| (self) => self

///|
pub extern "js" fn ReadableStreamBYOBRequest::get_view(
  self : ReadableStreamBYOBRequest,
) -> ArrayBufferView? =
  #| (self) => { const v = self.view; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn ReadableStreamBYOBRequest::respond(
  self : ReadableStreamBYOBRequest,
  bytes_written : Int64,
) -> Unit =
  #| (self, bytes_written) => self.respond(bytes_written)

///|
pub extern "js" fn ReadableStreamBYOBRequest::respond_with_new_view(
  self : ReadableStreamBYOBRequest,
  view : ArrayBufferView,
) -> Unit =
  #| (self, view) => self.respondWithNewView(view)

///|
/// WritableStream interface
pub type WritableStream

///|
pub extern "js" fn WritableStream::to_js_value(
  self : WritableStream,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WritableStream (unchecked)
pub extern "js" fn WritableStream::from_js_value(v : JsValue) -> WritableStream =
  #| (v) => v

///|
/// Safely cast JsValue to WritableStream (checked with instanceof)
pub extern "js" fn WritableStream::from_js_value_opt(
  v : JsValue,
) -> WritableStream? =
  #| (v) => (v instanceof WritableStream) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WritableStream (checked with instanceof)
pub extern "js" fn JsValue::as_writable_stream(
  self : JsValue,
) -> WritableStream? =
  #| (self) => (self instanceof WritableStream) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WritableStream (unchecked)
pub extern "js" fn JsValue::to_writable_stream(
  self : JsValue,
) -> WritableStream =
  #| (self) => self

///|
pub extern "js" fn WritableStream::as_web_transport_datagrams_writable(
  self : WritableStream,
) -> WebTransportDatagramsWritable? =
  #| (self) => (self instanceof WebTransportDatagramsWritable) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn WritableStream::as_web_transport_send_stream(
  self : WritableStream,
) -> WebTransportSendStream? =
  #| (self) => (self instanceof WebTransportSendStream) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn WritableStream::as_file_system_writable_file_stream(
  self : WritableStream,
) -> FileSystemWritableFileStream? =
  #| (self) => (self instanceof FileSystemWritableFileStream) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn WritableStream::new(
  underlying_sink : JsValue,
  strategy : QueuingStrategy,
) -> WritableStream =
  #| (underlying_sink, strategy) => new WritableStream(underlying_sink, strategy)

///|
pub extern "js" fn WritableStream::get_locked(self : WritableStream) -> Bool =
  #| (self) => self.locked

///|
pub extern "js" fn WritableStream::abort(
  self : WritableStream,
) -> Promise[Unit] =
  #| (self) => self.abort()

///|
pub extern "js" fn WritableStream::abort_with_reason(
  self : WritableStream,
  reason : JsValue,
) -> Promise[Unit] =
  #| (self, reason) => self.abort(reason)

///|
pub extern "js" fn WritableStream::close(
  self : WritableStream,
) -> Promise[Unit] =
  #| (self) => self.close()

///|
pub extern "js" fn WritableStream::get_writer(
  self : WritableStream,
) -> WritableStreamDefaultWriter =
  #| (self) => self.getWriter()

///|
/// WritableStreamDefaultWriter interface
pub type WritableStreamDefaultWriter

///|
pub extern "js" fn WritableStreamDefaultWriter::to_js_value(
  self : WritableStreamDefaultWriter,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WritableStreamDefaultWriter (unchecked)
pub extern "js" fn WritableStreamDefaultWriter::from_js_value(
  v : JsValue,
) -> WritableStreamDefaultWriter =
  #| (v) => v

///|
/// Safely cast JsValue to WritableStreamDefaultWriter (checked with instanceof)
pub extern "js" fn WritableStreamDefaultWriter::from_js_value_opt(
  v : JsValue,
) -> WritableStreamDefaultWriter? =
  #| (v) => (v instanceof WritableStreamDefaultWriter) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WritableStreamDefaultWriter (checked with instanceof)
pub extern "js" fn JsValue::as_writable_stream_default_writer(
  self : JsValue,
) -> WritableStreamDefaultWriter? =
  #| (self) => (self instanceof WritableStreamDefaultWriter) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WritableStreamDefaultWriter (unchecked)
pub extern "js" fn JsValue::to_writable_stream_default_writer(
  self : JsValue,
) -> WritableStreamDefaultWriter =
  #| (self) => self

///|
pub extern "js" fn WritableStreamDefaultWriter::as_web_transport_writer(
  self : WritableStreamDefaultWriter,
) -> WebTransportWriter? =
  #| (self) => (self instanceof WebTransportWriter) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn WritableStreamDefaultWriter::new(
  stream : WritableStream,
) -> WritableStreamDefaultWriter =
  #| (stream) => new WritableStreamDefaultWriter(stream)

///|
pub extern "js" fn WritableStreamDefaultWriter::get_closed(
  self : WritableStreamDefaultWriter,
) -> Promise[Unit] =
  #| (self) => self.closed

///|
pub extern "js" fn WritableStreamDefaultWriter::get_desired_size(
  self : WritableStreamDefaultWriter,
) -> Double? =
  #| (self) => { const v = self.desiredSize; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn WritableStreamDefaultWriter::get_ready(
  self : WritableStreamDefaultWriter,
) -> Promise[Unit] =
  #| (self) => self.ready

///|
pub extern "js" fn WritableStreamDefaultWriter::abort(
  self : WritableStreamDefaultWriter,
) -> Promise[Unit] =
  #| (self) => self.abort()

///|
pub extern "js" fn WritableStreamDefaultWriter::abort_with_reason(
  self : WritableStreamDefaultWriter,
  reason : JsValue,
) -> Promise[Unit] =
  #| (self, reason) => self.abort(reason)

///|
pub extern "js" fn WritableStreamDefaultWriter::close(
  self : WritableStreamDefaultWriter,
) -> Promise[Unit] =
  #| (self) => self.close()

///|
pub extern "js" fn WritableStreamDefaultWriter::release_lock(
  self : WritableStreamDefaultWriter,
) -> Unit =
  #| (self) => self.releaseLock()

///|
pub extern "js" fn WritableStreamDefaultWriter::write(
  self : WritableStreamDefaultWriter,
) -> Promise[Unit] =
  #| (self) => self.write()

///|
pub extern "js" fn WritableStreamDefaultWriter::write_with_chunk(
  self : WritableStreamDefaultWriter,
  chunk : JsValue,
) -> Promise[Unit] =
  #| (self, chunk) => self.write(chunk)

///|
/// WritableStreamDefaultController interface
pub type WritableStreamDefaultController

///|
pub extern "js" fn WritableStreamDefaultController::to_js_value(
  self : WritableStreamDefaultController,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WritableStreamDefaultController (unchecked)
pub extern "js" fn WritableStreamDefaultController::from_js_value(
  v : JsValue,
) -> WritableStreamDefaultController =
  #| (v) => v

///|
/// Safely cast JsValue to WritableStreamDefaultController (checked with instanceof)
pub extern "js" fn WritableStreamDefaultController::from_js_value_opt(
  v : JsValue,
) -> WritableStreamDefaultController? =
  #| (v) => (v instanceof WritableStreamDefaultController) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WritableStreamDefaultController (checked with instanceof)
pub extern "js" fn JsValue::as_writable_stream_default_controller(
  self : JsValue,
) -> WritableStreamDefaultController? =
  #| (self) => (self instanceof WritableStreamDefaultController) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WritableStreamDefaultController (unchecked)
pub extern "js" fn JsValue::to_writable_stream_default_controller(
  self : JsValue,
) -> WritableStreamDefaultController =
  #| (self) => self

///|
pub extern "js" fn WritableStreamDefaultController::get_signal(
  self : WritableStreamDefaultController,
) -> AbortSignal =
  #| (self) => self.signal

///|
pub extern "js" fn WritableStreamDefaultController::error(
  self : WritableStreamDefaultController,
) -> Unit =
  #| (self) => self.error()

///|
pub extern "js" fn WritableStreamDefaultController::error_with_e(
  self : WritableStreamDefaultController,
  e : JsValue,
) -> Unit =
  #| (self, e) => self.error(e)

///|
/// TransformStream interface
pub type TransformStream

///|
pub extern "js" fn TransformStream::to_js_value(
  self : TransformStream,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to TransformStream (unchecked)
pub extern "js" fn TransformStream::from_js_value(
  v : JsValue,
) -> TransformStream =
  #| (v) => v

///|
/// Safely cast JsValue to TransformStream (checked with instanceof)
pub extern "js" fn TransformStream::from_js_value_opt(
  v : JsValue,
) -> TransformStream? =
  #| (v) => (v instanceof TransformStream) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to TransformStream (checked with instanceof)
pub extern "js" fn JsValue::as_transform_stream(
  self : JsValue,
) -> TransformStream? =
  #| (self) => (self instanceof TransformStream) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to TransformStream (unchecked)
pub extern "js" fn JsValue::to_transform_stream(
  self : JsValue,
) -> TransformStream =
  #| (self) => self

///|
pub extern "js" fn TransformStream::new(
  transformer : JsValue,
  writable_strategy : QueuingStrategy,
  readable_strategy : QueuingStrategy,
) -> TransformStream =
  #| (transformer, writable_strategy, readable_strategy) => new TransformStream(transformer, writable_strategy, readable_strategy)

///|
pub extern "js" fn TransformStream::get_readable(
  self : TransformStream,
) -> ReadableStream =
  #| (self) => self.readable

///|
pub extern "js" fn TransformStream::get_writable(
  self : TransformStream,
) -> WritableStream =
  #| (self) => self.writable

///|
/// TransformStreamDefaultController interface
pub type TransformStreamDefaultController

///|
pub extern "js" fn TransformStreamDefaultController::to_js_value(
  self : TransformStreamDefaultController,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to TransformStreamDefaultController (unchecked)
pub extern "js" fn TransformStreamDefaultController::from_js_value(
  v : JsValue,
) -> TransformStreamDefaultController =
  #| (v) => v

///|
/// Safely cast JsValue to TransformStreamDefaultController (checked with instanceof)
pub extern "js" fn TransformStreamDefaultController::from_js_value_opt(
  v : JsValue,
) -> TransformStreamDefaultController? =
  #| (v) => (v instanceof TransformStreamDefaultController) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to TransformStreamDefaultController (checked with instanceof)
pub extern "js" fn JsValue::as_transform_stream_default_controller(
  self : JsValue,
) -> TransformStreamDefaultController? =
  #| (self) => (self instanceof TransformStreamDefaultController) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to TransformStreamDefaultController (unchecked)
pub extern "js" fn JsValue::to_transform_stream_default_controller(
  self : JsValue,
) -> TransformStreamDefaultController =
  #| (self) => self

///|
pub extern "js" fn TransformStreamDefaultController::get_desired_size(
  self : TransformStreamDefaultController,
) -> Double? =
  #| (self) => { const v = self.desiredSize; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn TransformStreamDefaultController::enqueue(
  self : TransformStreamDefaultController,
) -> Unit =
  #| (self) => self.enqueue()

///|
pub extern "js" fn TransformStreamDefaultController::enqueue_with_chunk(
  self : TransformStreamDefaultController,
  chunk : JsValue,
) -> Unit =
  #| (self, chunk) => self.enqueue(chunk)

///|
pub extern "js" fn TransformStreamDefaultController::error(
  self : TransformStreamDefaultController,
) -> Unit =
  #| (self) => self.error()

///|
pub extern "js" fn TransformStreamDefaultController::error_with_reason(
  self : TransformStreamDefaultController,
  reason : JsValue,
) -> Unit =
  #| (self, reason) => self.error(reason)

///|
pub extern "js" fn TransformStreamDefaultController::terminate(
  self : TransformStreamDefaultController,
) -> Unit =
  #| (self) => self.terminate()

///|
/// ByteLengthQueuingStrategy interface
pub type ByteLengthQueuingStrategy

///|
pub extern "js" fn ByteLengthQueuingStrategy::to_js_value(
  self : ByteLengthQueuingStrategy,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ByteLengthQueuingStrategy (unchecked)
pub extern "js" fn ByteLengthQueuingStrategy::from_js_value(
  v : JsValue,
) -> ByteLengthQueuingStrategy =
  #| (v) => v

///|
/// Safely cast JsValue to ByteLengthQueuingStrategy (checked with instanceof)
pub extern "js" fn ByteLengthQueuingStrategy::from_js_value_opt(
  v : JsValue,
) -> ByteLengthQueuingStrategy? =
  #| (v) => (v instanceof ByteLengthQueuingStrategy) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ByteLengthQueuingStrategy (checked with instanceof)
pub extern "js" fn JsValue::as_byte_length_queuing_strategy(
  self : JsValue,
) -> ByteLengthQueuingStrategy? =
  #| (self) => (self instanceof ByteLengthQueuingStrategy) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ByteLengthQueuingStrategy (unchecked)
pub extern "js" fn JsValue::to_byte_length_queuing_strategy(
  self : JsValue,
) -> ByteLengthQueuingStrategy =
  #| (self) => self

///|
pub extern "js" fn ByteLengthQueuingStrategy::new(
  init_ : QueuingStrategyInit,
) -> ByteLengthQueuingStrategy =
  #| (init_) => new ByteLengthQueuingStrategy(init_)

///|
pub extern "js" fn ByteLengthQueuingStrategy::get_high_water_mark(
  self : ByteLengthQueuingStrategy,
) -> Double =
  #| (self) => self.highWaterMark

///|
pub extern "js" fn ByteLengthQueuingStrategy::get_size(
  self : ByteLengthQueuingStrategy,
) -> Function =
  #| (self) => self.size

///|
/// CountQueuingStrategy interface
pub type CountQueuingStrategy

///|
pub extern "js" fn CountQueuingStrategy::to_js_value(
  self : CountQueuingStrategy,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CountQueuingStrategy (unchecked)
pub extern "js" fn CountQueuingStrategy::from_js_value(
  v : JsValue,
) -> CountQueuingStrategy =
  #| (v) => v

///|
/// Safely cast JsValue to CountQueuingStrategy (checked with instanceof)
pub extern "js" fn CountQueuingStrategy::from_js_value_opt(
  v : JsValue,
) -> CountQueuingStrategy? =
  #| (v) => (v instanceof CountQueuingStrategy) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CountQueuingStrategy (checked with instanceof)
pub extern "js" fn JsValue::as_count_queuing_strategy(
  self : JsValue,
) -> CountQueuingStrategy? =
  #| (self) => (self instanceof CountQueuingStrategy) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CountQueuingStrategy (unchecked)
pub extern "js" fn JsValue::to_count_queuing_strategy(
  self : JsValue,
) -> CountQueuingStrategy =
  #| (self) => self

///|
pub extern "js" fn CountQueuingStrategy::new(
  init_ : QueuingStrategyInit,
) -> CountQueuingStrategy =
  #| (init_) => new CountQueuingStrategy(init_)

///|
pub extern "js" fn CountQueuingStrategy::get_high_water_mark(
  self : CountQueuingStrategy,
) -> Double =
  #| (self) => self.highWaterMark

///|
pub extern "js" fn CountQueuingStrategy::get_size(
  self : CountQueuingStrategy,
) -> Function =
  #| (self) => self.size
