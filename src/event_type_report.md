# Event Type Coverage Report

## Summary

| Category | Count |
|----------|-------|
| Resolved (specific type) | 805 |
| Resolved (Event type) | 203 |
| Not found (no MDN page) | 82 |
| Found but type not extracted | 9 |
| **Total map entries** | **1008** |

## Not Found (77)

These events have no MDN page. The handler type falls back to `Event`.
Most GlobalEventHandlers entries are genuinely `Event` type (media events, form events, etc.).
To fix specific types, add entries to `builtin_event_type_overrides` in `throws_mdn.mbt`.

- Bluetooth.onavailabilitychanged
- CharacteristicEventHandlers.oncharacteristicvaluechanged
- BluetoothDeviceEventHandlers.onadvertisementreceived
- BluetoothDeviceEventHandlers.ongattserverdisconnected
- ServiceEventHandlers.onserviceadded
- ServiceEventHandlers.onservicechanged
- ServiceEventHandlers.onserviceremoved
- RTCRtpScriptTransformer.onkeyframerequest
- Serial.onconnect
- Serial.ondisconnect
- MediaDevices.oncaptureaction
- GlobalEventHandlers.onabort
- GlobalEventHandlers.oncancel
- GlobalEventHandlers.oncanplay
- GlobalEventHandlers.oncanplaythrough
- GlobalEventHandlers.onclose
- GlobalEventHandlers.oncontextlost
- GlobalEventHandlers.oncontextrestored
- GlobalEventHandlers.oncuechange
- GlobalEventHandlers.ondurationchange
- GlobalEventHandlers.onemptied
- GlobalEventHandlers.onended
- GlobalEventHandlers.oninvalid
- GlobalEventHandlers.onloadeddata
- GlobalEventHandlers.onloadedmetadata
- GlobalEventHandlers.onloadstart
- GlobalEventHandlers.onpause
- GlobalEventHandlers.onplay
- GlobalEventHandlers.onplaying
- GlobalEventHandlers.onprogress
- GlobalEventHandlers.onratechange
- GlobalEventHandlers.onreset
- GlobalEventHandlers.onseeked
- GlobalEventHandlers.onseeking
- GlobalEventHandlers.onselect
- GlobalEventHandlers.onslotchange
- GlobalEventHandlers.onstalled
- GlobalEventHandlers.onsuspend
- GlobalEventHandlers.ontimeupdate
- GlobalEventHandlers.onvolumechange
- GlobalEventHandlers.onwaiting
- GlobalEventHandlers.onwebkitanimationend
- GlobalEventHandlers.onwebkitanimationiteration
- GlobalEventHandlers.onwebkitanimationstart
- GlobalEventHandlers.onwebkittransitionend
- MessagePort.onclose
- WindowEventHandlers.onportalactivate
- AudioSession.onstatechange
- GlobalEventHandlers.onsnapchanged
- GlobalEventHandlers.onsnapchanging
- Document.onfreeze
- Document.onresume
- ShadowRoot.onslotchange
- IDBDatabase.onabort
- XRSession.onframeratechange
- MediaStreamTrack.onisolationchange
- Keyboard.onlayoutchange
- CaptureController.oncapturedmousechange
- MediaStreamTrack.oncapturehandlechange
- RTCIceTransport.onicecandidate
- WindowEventHandlers.ongamepadconnected
- WindowEventHandlers.ongamepaddisconnected
- GlobalEventHandlers.onfencedtreeclick
- SourceBufferList.onaddsourcebuffer
- SourceBufferList.onremovesourcebuffer
- ManagedMediaSource.onstartstreaming
- ManagedMediaSource.onendstreaming
- ManagedSourceBuffer.onbufferedchange
- NavigatorManagedData.onmanagedconfigurationchange
- PresentationRequest.onconnectionavailable
- PresentationConnection.onconnect
- PresentationConnection.onclose
- PresentationConnection.onterminate
- PresentationConnectionList.onconnectionavailable
- InPagePermissionMixin.onpromptaction
- InPagePermissionMixin.onpromptdismiss
- InPagePermissionMixin.onvalidationstatuschange

## Found But Type Not Extracted

MDN page exists but `## Event type` section could not be parsed.
The parser may need to handle a new format, or the page may not have an Event type section.

- FontFaceSet/loading_event
- FontFaceSet/loadingdone_event
- FontFaceSet/loadingerror_event
- EditContext/compositionstart_event
- EditContext/compositionend_event
- AudioDecoder/dequeue_event
- VideoDecoder/dequeue_event
- AudioEncoder/dequeue_event
- VideoEncoder/dequeue_event

