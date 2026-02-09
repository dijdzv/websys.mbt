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
  #| (handler) => (a0) => handler(a0)

///|
/// UnderlyingSourcePullCallback callback interface
pub type UnderlyingSourcePullCallback

///|
/// Create UnderlyingSourcePullCallback from a MoonBit function
pub extern "js" fn UnderlyingSourcePullCallback::from_fn(
  handler : (ReadableStreamController) -> Promise[Unit],
) -> UnderlyingSourcePullCallback =
  #| (handler) => (a0) => handler(a0)

///|
/// UnderlyingSourceCancelCallback callback interface
pub type UnderlyingSourceCancelCallback

///|
/// Create UnderlyingSourceCancelCallback from a MoonBit function
pub extern "js" fn UnderlyingSourceCancelCallback::from_fn(
  handler : (JsValue) -> Promise[Unit],
) -> UnderlyingSourceCancelCallback =
  #| (handler) => (a0) => handler(a0)

///|
/// UnderlyingSinkStartCallback callback interface
pub type UnderlyingSinkStartCallback

///|
/// Create UnderlyingSinkStartCallback from a MoonBit function
pub extern "js" fn UnderlyingSinkStartCallback::from_fn(
  handler : (WritableStreamDefaultController) -> JsValue,
) -> UnderlyingSinkStartCallback =
  #| (handler) => (a0) => handler(a0)

///|
/// UnderlyingSinkWriteCallback callback interface
pub type UnderlyingSinkWriteCallback

///|
/// Create UnderlyingSinkWriteCallback from a MoonBit function
pub extern "js" fn UnderlyingSinkWriteCallback::from_fn(
  handler : (JsValue, WritableStreamDefaultController) -> Promise[Unit],
) -> UnderlyingSinkWriteCallback =
  #| (handler) => (a0, a1) => handler(a0, a1)

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
  #| (handler) => (a0) => handler(a0)

///|
/// TransformerStartCallback callback interface
pub type TransformerStartCallback

///|
/// Create TransformerStartCallback from a MoonBit function
pub extern "js" fn TransformerStartCallback::from_fn(
  handler : (TransformStreamDefaultController) -> JsValue,
) -> TransformerStartCallback =
  #| (handler) => (a0) => handler(a0)

///|
/// TransformerFlushCallback callback interface
pub type TransformerFlushCallback

///|
/// Create TransformerFlushCallback from a MoonBit function
pub extern "js" fn TransformerFlushCallback::from_fn(
  handler : (TransformStreamDefaultController) -> Promise[Unit],
) -> TransformerFlushCallback =
  #| (handler) => (a0) => handler(a0)

///|
/// TransformerTransformCallback callback interface
pub type TransformerTransformCallback

///|
/// Create TransformerTransformCallback from a MoonBit function
pub extern "js" fn TransformerTransformCallback::from_fn(
  handler : (JsValue, TransformStreamDefaultController) -> Promise[Unit],
) -> TransformerTransformCallback =
  #| (handler) => (a0, a1) => handler(a0, a1)

///|
/// TransformerCancelCallback callback interface
pub type TransformerCancelCallback

///|
/// Create TransformerCancelCallback from a MoonBit function
pub extern "js" fn TransformerCancelCallback::from_fn(
  handler : (JsValue) -> Promise[Unit],
) -> TransformerCancelCallback =
  #| (handler) => (a0) => handler(a0)

///|
/// QueuingStrategySize callback interface
pub type QueuingStrategySize

///|
/// Create QueuingStrategySize from a MoonBit function
pub extern "js" fn QueuingStrategySize::from_fn(
  handler : (JsValue) -> Double,
) -> QueuingStrategySize =
  #| (handler) => (a0) => handler(a0)

///|
/// ReadableStreamGetReaderOptions dictionary
pub(all) struct ReadableStreamGetReaderOptions {
  mode : ReadableStreamReaderMode?
}

///|
/// Create a new ReadableStreamGetReaderOptions with default values
pub fn ReadableStreamGetReaderOptions::default() -> ReadableStreamGetReaderOptions {
  ReadableStreamGetReaderOptions::{ mode: None }
}

///|
extern "js" fn ReadableStreamGetReaderOptions::to_js_ffi(
  self : ReadableStreamGetReaderOptions,
) -> JsValue =
  #| (self) => ({
  #|   mode: ((() => { const v = self.mode; if (v === undefined) return undefined; return ['byob'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn ReadableStreamGetReaderOptions::to_js(
  self : ReadableStreamGetReaderOptions,
) -> JsValue {
  ReadableStreamGetReaderOptions::to_js_ffi(self)
}

///|
/// ReadableStreamIteratorOptions dictionary
pub(all) struct ReadableStreamIteratorOptions {
  preventCancel : Bool?
}

///|
/// Create a new ReadableStreamIteratorOptions with default values
pub fn ReadableStreamIteratorOptions::default() -> ReadableStreamIteratorOptions {
  ReadableStreamIteratorOptions::{ preventCancel: None }
}

///|
extern "js" fn ReadableStreamIteratorOptions::to_js_ffi(
  self : ReadableStreamIteratorOptions,
) -> JsValue =
  #| (self) => ({
  #|   preventCancel: (self.preventCancel === -1 ? undefined : self.preventCancel)
  #| })

///|
/// Convert to JsValue
pub fn ReadableStreamIteratorOptions::to_js(
  self : ReadableStreamIteratorOptions,
) -> JsValue {
  ReadableStreamIteratorOptions::to_js_ffi(self)
}

///|
/// ReadableWritablePair dictionary
pub(all) struct ReadableWritablePair {
  readable : ReadableStream
  writable : WritableStream
}

///|
/// Create a new ReadableWritablePair
pub fn ReadableWritablePair::new(
  readable~ : ReadableStream,
  writable~ : WritableStream,
) -> ReadableWritablePair {
  ReadableWritablePair::{ readable, writable }
}

///|
extern "js" fn ReadableWritablePair::to_js_ffi(
  self : ReadableWritablePair,
) -> JsValue =
  #| (self) => ({
  #|   readable: self.readable,
  #|   writable: self.writable
  #| })

///|
/// Convert to JsValue
pub fn ReadableWritablePair::to_js(self : ReadableWritablePair) -> JsValue {
  ReadableWritablePair::to_js_ffi(self)
}

///|
/// StreamPipeOptions dictionary
pub(all) struct StreamPipeOptions {
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
extern "js" fn StreamPipeOptions::to_js_ffi(
  self : StreamPipeOptions,
) -> JsValue =
  #| (self) => ({
  #|   preventClose: (self.preventClose === -1 ? undefined : self.preventClose),
  #|   preventAbort: (self.preventAbort === -1 ? undefined : self.preventAbort),
  #|   preventCancel: (self.preventCancel === -1 ? undefined : self.preventCancel),
  #|   signal: ((() => { const v = self.signal; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn StreamPipeOptions::to_js(self : StreamPipeOptions) -> JsValue {
  StreamPipeOptions::to_js_ffi(self)
}

///|
/// UnderlyingSource dictionary
pub(all) struct UnderlyingSource {
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
extern "js" fn UnderlyingSource::to_js_ffi(self : UnderlyingSource) -> JsValue =
  #| (self) => ({
  #|   start: ((() => { const v = self.start; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   pull: ((() => { const v = self.pull; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   cancel: ((() => { const v = self.cancel; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   type: ((() => { const v = self.type_; if (v === undefined) return undefined; return ['bytes'][v]; })()),
  #|   autoAllocateChunkSize: self.autoAllocateChunkSize
  #| })

///|
/// Convert to JsValue
pub fn UnderlyingSource::to_js(self : UnderlyingSource) -> JsValue {
  UnderlyingSource::to_js_ffi(self)
}

///|
/// ReadableStreamReadResult dictionary
pub(all) struct ReadableStreamReadResult {
  value : JsValue?
  done : Bool?
}

///|
/// Create a new ReadableStreamReadResult with default values
pub fn ReadableStreamReadResult::default() -> ReadableStreamReadResult {
  ReadableStreamReadResult::{ value: None, done: None }
}

///|
extern "js" fn ReadableStreamReadResult::to_js_ffi(
  self : ReadableStreamReadResult,
) -> JsValue =
  #| (self) => ({
  #|   value: ((() => { const v = self.value; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   done: (self.done === -1 ? undefined : self.done)
  #| })

///|
/// Convert to JsValue
pub fn ReadableStreamReadResult::to_js(
  self : ReadableStreamReadResult,
) -> JsValue {
  ReadableStreamReadResult::to_js_ffi(self)
}

///|
/// ReadableStreamBYOBReaderReadOptions dictionary
pub(all) struct ReadableStreamBYOBReaderReadOptions {
  min : Int64?
}

///|
/// Create a new ReadableStreamBYOBReaderReadOptions with default values
pub fn ReadableStreamBYOBReaderReadOptions::default() -> ReadableStreamBYOBReaderReadOptions {
  ReadableStreamBYOBReaderReadOptions::{ min: None }
}

///|
extern "js" fn ReadableStreamBYOBReaderReadOptions::to_js_ffi(
  self : ReadableStreamBYOBReaderReadOptions,
) -> JsValue =
  #| (self) => ({
  #|   min: self.min
  #| })

///|
/// Convert to JsValue
pub fn ReadableStreamBYOBReaderReadOptions::to_js(
  self : ReadableStreamBYOBReaderReadOptions,
) -> JsValue {
  ReadableStreamBYOBReaderReadOptions::to_js_ffi(self)
}

///|
/// UnderlyingSink dictionary
pub(all) struct UnderlyingSink {
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
extern "js" fn UnderlyingSink::to_js_ffi(self : UnderlyingSink) -> JsValue =
  #| (self) => ({
  #|   start: ((() => { const v = self.start; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   write: ((() => { const v = self.write; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   close: ((() => { const v = self.close; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   abort: ((() => { const v = self.abort; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   type: ((() => { const v = self.type_; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn UnderlyingSink::to_js(self : UnderlyingSink) -> JsValue {
  UnderlyingSink::to_js_ffi(self)
}

///|
/// Transformer dictionary
pub(all) struct Transformer {
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
extern "js" fn Transformer::to_js_ffi(self : Transformer) -> JsValue =
  #| (self) => ({
  #|   start: ((() => { const v = self.start; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   transform: ((() => { const v = self.transform; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   flush: ((() => { const v = self.flush; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   cancel: ((() => { const v = self.cancel; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   readableType: ((() => { const v = self.readableType; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   writableType: ((() => { const v = self.writableType; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn Transformer::to_js(self : Transformer) -> JsValue {
  Transformer::to_js_ffi(self)
}

///|
/// QueuingStrategy dictionary
pub(all) struct QueuingStrategy {
  highWaterMark : Double?
  size : QueuingStrategySize?
}

///|
/// Create a new QueuingStrategy with default values
pub fn QueuingStrategy::default() -> QueuingStrategy {
  QueuingStrategy::{ highWaterMark: None, size: None }
}

///|
extern "js" fn QueuingStrategy::to_js_ffi(self : QueuingStrategy) -> JsValue =
  #| (self) => ({
  #|   highWaterMark: self.highWaterMark,
  #|   size: ((() => { const v = self.size; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn QueuingStrategy::to_js(self : QueuingStrategy) -> JsValue {
  QueuingStrategy::to_js_ffi(self)
}

///|
/// QueuingStrategyInit dictionary
pub(all) struct QueuingStrategyInit {
  highWaterMark : Double
}

///|
/// Create a new QueuingStrategyInit with default values
pub fn QueuingStrategyInit::default() -> QueuingStrategyInit {
  QueuingStrategyInit::{ highWaterMark: 0 }
}

///|
extern "js" fn QueuingStrategyInit::to_js_ffi(
  self : QueuingStrategyInit,
) -> JsValue =
  #| (self) => ({
  #|   highWaterMark: self.highWaterMark
  #| })

///|
/// Convert to JsValue
pub fn QueuingStrategyInit::to_js(self : QueuingStrategyInit) -> JsValue {
  QueuingStrategyInit::to_js_ffi(self)
}

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
pub extern "js" fn ReadableStream::new() -> ReadableStream =
  #| () => new ReadableStream()

///|
extern "js" fn ReadableStream::new_with_strategy_ffi(
  underlying_source : JsValue,
  strategy : JsValue,
) -> ReadableStream =
  #| (underlying_source, strategy) => new ReadableStream(underlying_source, strategy)

///|
pub fn ReadableStream::new_with_strategy(
  underlying_source : JsValue,
  strategy : QueuingStrategy,
) -> ReadableStream {
  ReadableStream::new_with_strategy_ffi(underlying_source, strategy.to_js())
}

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
extern "js" fn ReadableStream::get_reader_with_options_ffi(
  self : ReadableStream,
  options : JsValue,
) -> ReadableStreamReader =
  #| (self, options) => self.getReader(options)

///|
pub fn ReadableStream::get_reader_with_options(
  self : ReadableStream,
  options : ReadableStreamGetReaderOptions,
) -> ReadableStreamReader {
  ReadableStream::get_reader_with_options_ffi(self, options.to_js())
}

///|
extern "js" fn ReadableStream::pipe_through_ffi(
  self : ReadableStream,
  transform : JsValue,
) -> ReadableStream =
  #| (self, transform) => self.pipeThrough(transform)

///|
pub fn ReadableStream::pipe_through(
  self : ReadableStream,
  transform : ReadableWritablePair,
) -> ReadableStream {
  ReadableStream::pipe_through_ffi(self, transform.to_js())
}

///|
extern "js" fn ReadableStream::pipe_through_with_options_ffi(
  self : ReadableStream,
  transform : JsValue,
  options : JsValue,
) -> ReadableStream =
  #| (self, transform, options) => self.pipeThrough(transform, options)

///|
pub fn ReadableStream::pipe_through_with_options(
  self : ReadableStream,
  transform : ReadableWritablePair,
  options : StreamPipeOptions,
) -> ReadableStream {
  ReadableStream::pipe_through_with_options_ffi(
    self,
    transform.to_js(),
    options.to_js(),
  )
}

///|
pub extern "js" fn ReadableStream::pipe_to(
  self : ReadableStream,
  destination : WritableStream,
) -> Promise[Unit] =
  #| (self, destination) => self.pipeTo(destination)

///|
extern "js" fn ReadableStream::pipe_to_with_options_ffi(
  self : ReadableStream,
  destination : WritableStream,
  options : JsValue,
) -> Promise[Unit] =
  #| (self, destination, options) => self.pipeTo(destination, options)

///|
pub fn ReadableStream::pipe_to_with_options(
  self : ReadableStream,
  destination : WritableStream,
  options : StreamPipeOptions,
) -> Promise[Unit] {
  ReadableStream::pipe_to_with_options_ffi(self, destination, options.to_js())
}

///|
pub extern "js" fn ReadableStream::tee(
  self : ReadableStream,
) -> Array[ReadableStream] =
  #| (self) => self.tee()

///|
pub extern "js" fn ReadableStream::keys(self : ReadableStream) -> JsValue =
  #| (self) => self.keys()

///|
pub extern "js" fn ReadableStream::values(self : ReadableStream) -> JsValue =
  #| (self) => self.values()

///|
pub extern "js" fn ReadableStream::entries(self : ReadableStream) -> JsValue =
  #| (self) => self.entries()

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
extern "js" fn ReadableStreamBYOBReader::read_with_options_ffi(
  self : ReadableStreamBYOBReader,
  view : ArrayBufferView,
  options : JsValue,
) -> Promise[ReadableStreamReadResult] =
  #| (self, view, options) => self.read(view, options)

///|
pub fn ReadableStreamBYOBReader::read_with_options(
  self : ReadableStreamBYOBReader,
  view : ArrayBufferView,
  options : ReadableStreamBYOBReaderReadOptions,
) -> Promise[ReadableStreamReadResult] {
  ReadableStreamBYOBReader::read_with_options_ffi(self, view, options.to_js())
}

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
pub extern "js" fn ReadableStreamBYOBReader::read_with_int8_array(
  self : ReadableStreamBYOBReader,
  view : Int8Array,
  options : ReadableStreamBYOBReaderReadOptions,
) -> Promise[ReadableStreamReadResult] =
  #| (self, view, options) => self.read(view, options)

///|
pub extern "js" fn ReadableStreamBYOBReader::read_with_int16_array(
  self : ReadableStreamBYOBReader,
  view : Int16Array,
  options : ReadableStreamBYOBReaderReadOptions,
) -> Promise[ReadableStreamReadResult] =
  #| (self, view, options) => self.read(view, options)

///|
pub extern "js" fn ReadableStreamBYOBReader::read_with_int32_array(
  self : ReadableStreamBYOBReader,
  view : Int32Array,
  options : ReadableStreamBYOBReaderReadOptions,
) -> Promise[ReadableStreamReadResult] =
  #| (self, view, options) => self.read(view, options)

///|
pub extern "js" fn ReadableStreamBYOBReader::read_with_uint8_array(
  self : ReadableStreamBYOBReader,
  view : Uint8Array,
  options : ReadableStreamBYOBReaderReadOptions,
) -> Promise[ReadableStreamReadResult] =
  #| (self, view, options) => self.read(view, options)

///|
pub extern "js" fn ReadableStreamBYOBReader::read_with_uint16_array(
  self : ReadableStreamBYOBReader,
  view : Uint16Array,
  options : ReadableStreamBYOBReaderReadOptions,
) -> Promise[ReadableStreamReadResult] =
  #| (self, view, options) => self.read(view, options)

///|
pub extern "js" fn ReadableStreamBYOBReader::read_with_uint32_array(
  self : ReadableStreamBYOBReader,
  view : Uint32Array,
  options : ReadableStreamBYOBReaderReadOptions,
) -> Promise[ReadableStreamReadResult] =
  #| (self, view, options) => self.read(view, options)

///|
pub extern "js" fn ReadableStreamBYOBReader::read_with_uint8_clamped_array(
  self : ReadableStreamBYOBReader,
  view : Uint8ClampedArray,
  options : ReadableStreamBYOBReaderReadOptions,
) -> Promise[ReadableStreamReadResult] =
  #| (self, view, options) => self.read(view, options)

///|
pub extern "js" fn ReadableStreamBYOBReader::read_with_big_int64_array(
  self : ReadableStreamBYOBReader,
  view : BigInt64Array,
  options : ReadableStreamBYOBReaderReadOptions,
) -> Promise[ReadableStreamReadResult] =
  #| (self, view, options) => self.read(view, options)

///|
pub extern "js" fn ReadableStreamBYOBReader::read_with_big_uint64_array(
  self : ReadableStreamBYOBReader,
  view : BigUint64Array,
  options : ReadableStreamBYOBReaderReadOptions,
) -> Promise[ReadableStreamReadResult] =
  #| (self, view, options) => self.read(view, options)

///|
pub extern "js" fn ReadableStreamBYOBReader::read_with_float16_array(
  self : ReadableStreamBYOBReader,
  view : Float16Array,
  options : ReadableStreamBYOBReaderReadOptions,
) -> Promise[ReadableStreamReadResult] =
  #| (self, view, options) => self.read(view, options)

///|
pub extern "js" fn ReadableStreamBYOBReader::read_with_float32_array(
  self : ReadableStreamBYOBReader,
  view : Float32Array,
  options : ReadableStreamBYOBReaderReadOptions,
) -> Promise[ReadableStreamReadResult] =
  #| (self, view, options) => self.read(view, options)

///|
pub extern "js" fn ReadableStreamBYOBReader::read_with_float64_array(
  self : ReadableStreamBYOBReader,
  view : Float64Array,
  options : ReadableStreamBYOBReaderReadOptions,
) -> Promise[ReadableStreamReadResult] =
  #| (self, view, options) => self.read(view, options)

///|
pub extern "js" fn ReadableStreamBYOBReader::read_with_data_view(
  self : ReadableStreamBYOBReader,
  view : DataView,
  options : ReadableStreamBYOBReaderReadOptions,
) -> Promise[ReadableStreamReadResult] =
  #| (self, view, options) => self.read(view, options)

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
  #| (self) => (self.desiredSize) ?? undefined

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
  #| (self) => (() => { const v = self.byobRequest; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn ReadableByteStreamController::get_desired_size(
  self : ReadableByteStreamController,
) -> Double? =
  #| (self) => (self.desiredSize) ?? undefined

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
pub extern "js" fn ReadableByteStreamController::enqueue_with_int8_array(
  self : ReadableByteStreamController,
  chunk : Int8Array,
) -> Unit =
  #| (self, chunk) => self.enqueue(chunk)

///|
pub extern "js" fn ReadableByteStreamController::enqueue_with_int16_array(
  self : ReadableByteStreamController,
  chunk : Int16Array,
) -> Unit =
  #| (self, chunk) => self.enqueue(chunk)

///|
pub extern "js" fn ReadableByteStreamController::enqueue_with_int32_array(
  self : ReadableByteStreamController,
  chunk : Int32Array,
) -> Unit =
  #| (self, chunk) => self.enqueue(chunk)

///|
pub extern "js" fn ReadableByteStreamController::enqueue_with_uint8_array(
  self : ReadableByteStreamController,
  chunk : Uint8Array,
) -> Unit =
  #| (self, chunk) => self.enqueue(chunk)

///|
pub extern "js" fn ReadableByteStreamController::enqueue_with_uint16_array(
  self : ReadableByteStreamController,
  chunk : Uint16Array,
) -> Unit =
  #| (self, chunk) => self.enqueue(chunk)

///|
pub extern "js" fn ReadableByteStreamController::enqueue_with_uint32_array(
  self : ReadableByteStreamController,
  chunk : Uint32Array,
) -> Unit =
  #| (self, chunk) => self.enqueue(chunk)

///|
pub extern "js" fn ReadableByteStreamController::enqueue_with_uint8_clamped_array(
  self : ReadableByteStreamController,
  chunk : Uint8ClampedArray,
) -> Unit =
  #| (self, chunk) => self.enqueue(chunk)

///|
pub extern "js" fn ReadableByteStreamController::enqueue_with_big_int64_array(
  self : ReadableByteStreamController,
  chunk : BigInt64Array,
) -> Unit =
  #| (self, chunk) => self.enqueue(chunk)

///|
pub extern "js" fn ReadableByteStreamController::enqueue_with_big_uint64_array(
  self : ReadableByteStreamController,
  chunk : BigUint64Array,
) -> Unit =
  #| (self, chunk) => self.enqueue(chunk)

///|
pub extern "js" fn ReadableByteStreamController::enqueue_with_float16_array(
  self : ReadableByteStreamController,
  chunk : Float16Array,
) -> Unit =
  #| (self, chunk) => self.enqueue(chunk)

///|
pub extern "js" fn ReadableByteStreamController::enqueue_with_float32_array(
  self : ReadableByteStreamController,
  chunk : Float32Array,
) -> Unit =
  #| (self, chunk) => self.enqueue(chunk)

///|
pub extern "js" fn ReadableByteStreamController::enqueue_with_float64_array(
  self : ReadableByteStreamController,
  chunk : Float64Array,
) -> Unit =
  #| (self, chunk) => self.enqueue(chunk)

///|
pub extern "js" fn ReadableByteStreamController::enqueue_with_data_view(
  self : ReadableByteStreamController,
  chunk : DataView,
) -> Unit =
  #| (self, chunk) => self.enqueue(chunk)

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
  #| (self) => (() => { const v = self.view; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn ReadableStreamBYOBRequest::respond(
  self : ReadableStreamBYOBRequest,
  bytes_written : Int64,
) -> Unit =
  #| (self, bytes_written) => self.respond((bytes_written.hi * 4294967296 + bytes_written.lo))

///|
pub extern "js" fn ReadableStreamBYOBRequest::respond_with_new_view(
  self : ReadableStreamBYOBRequest,
  view : ArrayBufferView,
) -> Unit =
  #| (self, view) => self.respondWithNewView(view)

///|
pub extern "js" fn ReadableStreamBYOBRequest::respond_with_new_view_with_int8_array(
  self : ReadableStreamBYOBRequest,
  view : Int8Array,
) -> Unit =
  #| (self, view) => self.respondWithNewView(view)

///|
pub extern "js" fn ReadableStreamBYOBRequest::respond_with_new_view_with_int16_array(
  self : ReadableStreamBYOBRequest,
  view : Int16Array,
) -> Unit =
  #| (self, view) => self.respondWithNewView(view)

///|
pub extern "js" fn ReadableStreamBYOBRequest::respond_with_new_view_with_int32_array(
  self : ReadableStreamBYOBRequest,
  view : Int32Array,
) -> Unit =
  #| (self, view) => self.respondWithNewView(view)

///|
pub extern "js" fn ReadableStreamBYOBRequest::respond_with_new_view_with_uint8_array(
  self : ReadableStreamBYOBRequest,
  view : Uint8Array,
) -> Unit =
  #| (self, view) => self.respondWithNewView(view)

///|
pub extern "js" fn ReadableStreamBYOBRequest::respond_with_new_view_with_uint16_array(
  self : ReadableStreamBYOBRequest,
  view : Uint16Array,
) -> Unit =
  #| (self, view) => self.respondWithNewView(view)

///|
pub extern "js" fn ReadableStreamBYOBRequest::respond_with_new_view_with_uint32_array(
  self : ReadableStreamBYOBRequest,
  view : Uint32Array,
) -> Unit =
  #| (self, view) => self.respondWithNewView(view)

///|
pub extern "js" fn ReadableStreamBYOBRequest::respond_with_new_view_with_uint8_clamped_array(
  self : ReadableStreamBYOBRequest,
  view : Uint8ClampedArray,
) -> Unit =
  #| (self, view) => self.respondWithNewView(view)

///|
pub extern "js" fn ReadableStreamBYOBRequest::respond_with_new_view_with_big_int64_array(
  self : ReadableStreamBYOBRequest,
  view : BigInt64Array,
) -> Unit =
  #| (self, view) => self.respondWithNewView(view)

///|
pub extern "js" fn ReadableStreamBYOBRequest::respond_with_new_view_with_big_uint64_array(
  self : ReadableStreamBYOBRequest,
  view : BigUint64Array,
) -> Unit =
  #| (self, view) => self.respondWithNewView(view)

///|
pub extern "js" fn ReadableStreamBYOBRequest::respond_with_new_view_with_float16_array(
  self : ReadableStreamBYOBRequest,
  view : Float16Array,
) -> Unit =
  #| (self, view) => self.respondWithNewView(view)

///|
pub extern "js" fn ReadableStreamBYOBRequest::respond_with_new_view_with_float32_array(
  self : ReadableStreamBYOBRequest,
  view : Float32Array,
) -> Unit =
  #| (self, view) => self.respondWithNewView(view)

///|
pub extern "js" fn ReadableStreamBYOBRequest::respond_with_new_view_with_float64_array(
  self : ReadableStreamBYOBRequest,
  view : Float64Array,
) -> Unit =
  #| (self, view) => self.respondWithNewView(view)

///|
pub extern "js" fn ReadableStreamBYOBRequest::respond_with_new_view_with_data_view(
  self : ReadableStreamBYOBRequest,
  view : DataView,
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
pub extern "js" fn WritableStream::new() -> WritableStream =
  #| () => new WritableStream()

///|
extern "js" fn WritableStream::new_with_strategy_ffi(
  underlying_sink : JsValue,
  strategy : JsValue,
) -> WritableStream =
  #| (underlying_sink, strategy) => new WritableStream(underlying_sink, strategy)

///|
pub fn WritableStream::new_with_strategy(
  underlying_sink : JsValue,
  strategy : QueuingStrategy,
) -> WritableStream {
  WritableStream::new_with_strategy_ffi(underlying_sink, strategy.to_js())
}

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
  #| (self) => (self.desiredSize) ?? undefined

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
pub extern "js" fn TransformStream::new() -> TransformStream =
  #| () => new TransformStream()

///|
extern "js" fn TransformStream::new_with_readable_strategy_ffi(
  transformer : JsValue,
  writable_strategy : JsValue,
  readable_strategy : JsValue,
) -> TransformStream =
  #| (transformer, writable_strategy, readable_strategy) => new TransformStream(transformer, writable_strategy, readable_strategy)

///|
pub fn TransformStream::new_with_readable_strategy(
  transformer : JsValue,
  writable_strategy : QueuingStrategy,
  readable_strategy : QueuingStrategy,
) -> TransformStream {
  TransformStream::new_with_readable_strategy_ffi(
    transformer,
    writable_strategy.to_js(),
    readable_strategy.to_js(),
  )
}

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
  #| (self) => (self.desiredSize) ?? undefined

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
extern "js" fn ByteLengthQueuingStrategy::new_ffi(
  init_ : JsValue,
) -> ByteLengthQueuingStrategy =
  #| (init_) => new ByteLengthQueuingStrategy(init_)

///|
pub fn ByteLengthQueuingStrategy::new(
  init_ : QueuingStrategyInit,
) -> ByteLengthQueuingStrategy {
  ByteLengthQueuingStrategy::new_ffi(init_.to_js())
}

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
extern "js" fn CountQueuingStrategy::new_ffi(
  init_ : JsValue,
) -> CountQueuingStrategy =
  #| (init_) => new CountQueuingStrategy(init_)

///|
pub fn CountQueuingStrategy::new(
  init_ : QueuingStrategyInit,
) -> CountQueuingStrategy {
  CountQueuingStrategy::new_ffi(init_.to_js())
}

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
