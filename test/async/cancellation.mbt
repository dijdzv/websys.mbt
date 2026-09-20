///|
pub fn start_cancel(
  promise : @js_async.Promise[@bridge.JsValue],
  controller : @bridge.JsValue,
  start_waiting : Bool,
  settle_before_cancel : Bool,
  callback : @bridge.JsValue,
) -> Unit {
  @async.run_async_main(async fn() {
    @async.with_task_group(group => {
      let task = group.spawn(() => {
        @bridge.wait(promise, value => value, () => abort_request(controller))
      })
      if start_waiting {
        @async.pause()
      }
      if settle_before_cancel {
        settle_request(controller)
      }
      task.cancel()
      let result = task.wait() catch {
        @async.TaskCancelled => {
          notify(callback, 3, controller)
          return
        }
        error => raise error
      }
      notify(callback, 1, result)
    })
  })
}

///|
#cfg(target="wasm-gc")
fn settle_request(controller : @bridge.JsValue) -> Unit = "fixture" "settle"

///|
#cfg(target="js")
extern "js" fn settle_request(controller : @bridge.JsValue) -> Unit =
  #| controller => controller.settle()
