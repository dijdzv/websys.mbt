# websys.mbt Integration Tests

Playwright + Chromium headless で実ブラウザ上でバインディングの動作を検証する統合テスト。

**テスト結果: 175/175 passed**（同期 169 + 非同期 6）

## セットアップ・実行

```bash
# 初回セットアップ
cd test && bun install && bun run install:browser

# ビルド＆テスト実行
cd test && bun run test

# ビルドのみ / テスト実行のみ
cd test && moon build --target js
cd test && bun run run.mjs
```

## 構成

```
test/
├── moon.mod.json       # 独立モジュール（path dep で dijdzv/websys を参照）
├── src/
│   ├── moon.pkg.json   # is-main: true, JS ターゲット
│   ├── main.mbt        # テストランナー + assert ヘルパー
│   └── *.mbt           # テストファイル（80 ファイル、175 テスト関数）
├── index.html          # テスト実行用 HTML
├── run.mjs             # Playwright テストランナー
├── package.json
└── README.md
```

## Rust web-sys テストカバレッジ

`rustwasm/wasm-bindgen` の `crates/web-sys/tests/wasm/` に対応するテストの実装状況。

**凡例**: FULL = Rust 側の全項目をカバー / N/A = Rust 側にテストなし

| Rust テスト | MoonBit テスト | 状態 | 備考 |
|---|---|---|---|
| anchor_element.rs | anchor_element | FULL | |
| body_element.rs | body_element | FULL | |
| button_element.rs | button_element | FULL | autofocus は HTMLElement 経由でテスト済み |
| console.rs | console | FULL | |
| div_element.rs | div_element | FULL | |
| element.rs | element_* (5テスト) | FULL | MoonBit の方がカバレッジ広い |
| event.rs | event_target, event_dispatch | FULL | |
| form_element.rs | form_element | N/A | Rust 側にテストなし |
| head_element.rs | html_html_element 等 | FULL | |
| headers.rs | headers | FULL | entries/for_each は JsValue 戻りのためスキップ |
| heading_element.rs | heading_element | FULL | |
| history.rs | history | FULL | |
| hr_element.rs | hr_element | FULL | |
| html_element.rs | html_element_* (5テスト) | FULL | classList, dataset, style, spellcheck 追加済み |
| html_html_element.rs | html_html_element | FULL | |
| indexeddb.rs | indexeddb_accessor | FULL | |
| input_element.rs | input_element 等 (5テスト) | FULL | autofocus は HTMLElement 経由でテスト済み |
| label_element.rs | label_element | N/A | Rust 側にテストなし |
| li_element.rs | li_element | N/A | Rust 側にテストなし |
| menu_element.rs | menu_element | FULL | |
| meta_element.rs | meta_element | FULL | |
| olist_element.rs | olist_element | FULL | |
| opfs.rs | opfs 等 (5テスト) | FULL | create_file, write_to_file 追加済み |
| option_element.rs | option_element | FULL | |
| options_collection.rs | options_collection | FULL | |
| optgroup_element.rs | optgroup_element | FULL | |
| paragraph_element.rs | paragraph_element | FULL | |
| param_element.rs | param_element | FULL | |
| performance.rs | performance | FULL | |
| pre_element.rs | pre_element | FULL | |
| progress_element.rs | progress_element | FULL | |
| quote_element.rs | quote_element | FULL | |
| response.rs | response, response_error, response_body | FULL | ResponseInit, text() 追加済み |
| rtc_rtp_transceiver_direction.rs | rtc_rtp_transceiver_direction, rtc_sdp_exchange | FULL | |
| script_element.rs | script_element | FULL | |
| select_element.rs | select_element 等 (3テスト) | FULL | autofocus は HTMLElement 経由でテスト済み |
| slot_element.rs | slot_element | FULL | |
| span_element.rs | span_element | FULL | |
| style_element.rs | style_element | FULL | |
| table_element.rs | table_element 等 (5テスト) | FULL | |
| textarea_element.rs | textarea_element | N/A | Rust 側にテストなし |
| title_element.rs | title_element | FULL | |
| whitelisted_immutable_slices.rs | N/A | — | Rust 固有テスト（MoonBit に該当なし） |

### カバレッジサマリ

- **FULL**: 31 / 35 ファイル — Rust 側に存在する全テストを 100% カバー
- **N/A**: 4 ファイル（Rust 側にテストなし、MoonBit 独自テスト）

`autofocus` は WebIDL 仕様で `HTMLElement` に定義されているため、各要素から `to_html_element()` でアップキャストしてテスト。Rust web-sys では `Deref` で透過的にアクセスできるが、MoonBit では明示的な変換が必要。

## websys.mbt 独自テスト

Rust web-sys にない追加テスト:

| カテゴリ | テスト | 内容 |
|---|---|---|
| URL API | url, url_search_params | URL / URLSearchParams |
| Encoding | encoding | TextEncoder / TextDecoder |
| DOM Core | dom_create_element, dom_attributes, dom_tree | Document / Element |
| DOMTokenList | class_list, class_list_toggle, class_list_value | classList |
| Blob/File | blob, blob_union_type, blob_dictionary, blob_enum, file | Blob / File API |
| Abort | abort_controller, abort_signal | AbortController |
| Fetch | form_data, request, request_with_init, request_enum_properties, response_static | FormData / Request / Response |
| Geometry | dom_point, dom_rect | DOMPoint / DOMRect |
| HTML 要素 | image_element, body_element, title_element, meta_element, style_element, link_element | Document 構造 |
| フォーム | meter_element, output_element, fieldset_element, dialog_element | フォーム関連 |
| その他 HTML | canvas_element, template_element, datalist_element, br_element, ins_element, del_element | |
| DOM ノード | text_node, comment_node, document_fragment, document_fragment_transfer | |
| DOM 走査 | range, tree_walker | Range / TreeWalker |
| DOMException | dom_exception, dom_exception_with_name, dom_exception_codes | |
| メディア | video_element, audio_element, source_element | HTMLMediaElement |
| Node 操作 | node_clone, node_compare, node_replace | Node メソッド |
| Element 属性 | element_dataset, element_scroll, element_closest | |
| CSS | css_style, css_style_text | CSSStyleDeclaration |
| CSSOM | css_style_sheet, css_rule, media_list | CSSStyleSheet / CSSRule / MediaList |
| Observer | mutation_observer, mutation_observer_records, intersection_observer, resize_observer | MutationObserver / IntersectionObserver / ResizeObserver |
| Canvas 2D | canvas2d_context, canvas2d_drawing, canvas2d_path, canvas2d_state, canvas2d_text, canvas2d_image_data | CanvasRenderingContext2D |
| WebSocket | websocket, websocket_constants, close_event | WebSocket / CloseEvent |
| Static | url_create_object_url, create_element_ns | URL.createObjectURL / createElementNS |
| MediaQueryList | media_query_list | MediaQueryList |
| DOMTokenList | dom_token_list_iteration | iteration |
| Collection | node_list, html_collection | NodeList / HTMLCollection |
| ブラウザ | location, storage, navigator | Location / Storage / Navigator |
| ImageData | image_data, xpath_result | ImageData / XPath |
| HTML5 | data_element, time_element, details_element | |
| 埋め込み | iframe_element, map_element, area_element | IFrame / Map / Area |
| CustomEvent | custom_event, custom_event_with_init | CustomEvent |
| NamedNodeMap | named_node_map, attr_mutation | NamedNodeMap / Attr |
| DOMParser | dom_parser_html, dom_parser_xml | DOMParser |
| エラーケース | error_invalid_selector, error_null_returns, boundary_values, error_invalid_css, error_dom_exception | 例外・境界値 |
| Streams | readable_stream, readable_stream_reader, writable_stream, transform_stream, stream_pipe_through | ReadableStream / WritableStream / TransformStream |
| WebRTC 拡張 | rtc_data_channel, rtc_data_channel_with_init, rtc_ice_candidate, rtc_senders_receivers | RTCDataChannel / RTCIceCandidate |
