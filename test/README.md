# websys.mbt Integration Tests

Playwright + Chromium headless で実ブラウザ上でバインディングの動作を検証する統合テスト。

**テスト結果: 139/139 passed**（同期 133 + 非同期 6）

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
│   └── *.mbt           # テストファイル（74 ファイル、139 テスト関数）
├── index.html          # テスト実行用 HTML
├── run.mjs             # Playwright テストランナー
├── package.json
├── ISSUES.md           # codegen 課題トラッカー（現在すべて解決済み）
└── README.md
```

## Rust web-sys テストカバレッジ

`rustwasm/wasm-bindgen` の `crates/web-sys/tests/wasm/` に対応するテストの実装状況。

**凡例**: FULL = Rust 側の全項目をカバー / GAP = 一部欠落あり / N/A = Rust 側にテストなし

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

| テスト | 内容 |
|---|---|
| url, url_search_params | URL API |
| encoding | TextEncoder / TextDecoder |
| dom_create_element, dom_attributes, dom_tree | DOM Core |
| class_list, class_list_toggle, class_list_value | DOMTokenList |
| blob, blob_union_type, blob_dictionary, blob_enum, file | Blob / File API |
| abort_controller, abort_signal | AbortController |
| form_data | FormData |
| dom_point, dom_rect | Geometry API |
| image_element | HTMLImageElement |
| body_element, title_element, meta_element, style_element, link_element | Document 構造 |
| meter_element, output_element, fieldset_element, dialog_element | フォーム関連 |
| canvas_element, template_element | その他 HTML |
| text_node, comment_node, document_fragment, document_fragment_transfer | DOM ノード |
| range, tree_walker | DOM 走査 |
| dom_exception, dom_exception_with_name, dom_exception_codes | DOMException |
| video_element, audio_element, source_element | メディア |
| datalist_element, br_element, ins_element, del_element | その他要素 |
| node_clone, node_compare, node_replace | Node 操作 |
| element_dataset, element_scroll, element_closest | Element 属性 |
| css_style, css_style_text | CSSStyleDeclaration |
| media_query_list | MediaQueryList |
| dom_token_list_iteration | DOMTokenList イテレーション |
| node_list, html_collection | NodeList / HTMLCollection |
| location, storage, navigator | ブラウザ API |
| image_data, xpath_result | ImageData / XPath |
| data_element, time_element, details_element | HTML5 要素 |
| iframe_element, map_element, area_element | 埋め込み・マップ |
| custom_event, custom_event_with_init | CustomEvent |
| named_node_map, attr_mutation | NamedNodeMap / Attr |
| dom_parser_html, dom_parser_xml | DOMParser |
