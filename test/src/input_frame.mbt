///|
extern "js" fn next_input_frames() -> @js_async.Promise[Unit] =
  #| () => new Promise(resolve => requestAnimationFrame(() => requestAnimationFrame(() => resolve(undefined))))

///|
async fn test_input_frame_cleanup() -> Unit {
  let window = @websys.window().unwrap()
  let target = @websys.EventTarget::new()
  let calls = Ref(0)
  let frames = Ref(0)
  let pending : Ref[Int?] = Ref(None)
  let listener = @websys.EventListener::from_fn(fn(_) {
    calls.val += 1
    if pending.val is None {
      pending.val = Some(
        window.request_animation_frame(
          @websys.FrameRequestCallback::from_fn(fn(_) {
            pending.val = None
            frames.val += 1
          }),
        ),
      )
    }
  })
  target.add_event_listener("input", Some(listener))
  ignore(target.dispatch_event(@websys.Event::new("input")).unwrap())
  next_input_frames().wait()
  assert_eq(frames.val, 1, label="input frame runs")
  ignore(target.dispatch_event(@websys.Event::new("input")).unwrap())
  if pending.val is Some(handle) {
    window.cancel_animation_frame(handle)
    pending.val = None
  }
  target.remove_event_listener("input", Some(listener))
  ignore(target.dispatch_event(@websys.Event::new("input")).unwrap())
  next_input_frames().wait()
  assert_eq(frames.val, 1, label="stopped frame canceled")
  assert_eq(calls.val, 2, label="stopped listener removed")
  target.add_event_listener("input", Some(listener))
  target.add_event_listener("input", Some(listener))
  ignore(target.dispatch_event(@websys.Event::new("input")).unwrap())
  next_input_frames().wait()
  target.remove_event_listener("input", Some(listener))
  assert_eq(frames.val, 2, label="restarted frame runs once")
  assert_eq(calls.val, 3, label="same listener identity retained")
}
