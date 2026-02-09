# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## プロジェクト概要

MoonBit向けのWeb APIバインディングライブラリ。WebIDL仕様から`webidl-bindgen.mbt`で自動生成された約3,500のWeb API定義（DOM, HTML, Canvas, WebGL, WebRTC, WebGPU等）を提供する。Rustのweb-sysクレートに相当する。

未使用の型はMoonBitのDead Code Elimination (DCE)により自動除去されるため、feature flagは不要。

## ビルド・開発コマンド

```bash
# 開発環境セットアップ（Nix/devenv使用、MoonBit toolchain + just を自動インストール）
direnv allow

# ビルド（チェック）
just check

# コードフォーマット
just fmt

# バインディング再生成（npm版）
just generate

# バインディング再生成（ローカルビルド版）
just generate-local

# npm依存の更新
just install
```

## アーキテクチャ

### コード生成パイプライン

`@webref/idl`（WebIDL仕様） → `webidl-bindgen.mbt`（コード生成ツール） → `src/*.mbt`（生成コード）

- `src/`配下の全`.mbt`ファイルは**自動生成**されたもの。手動編集は再生成で失われる
- 仕様ごとに1ファイル生成（`--per-spec`オプション）
- コード生成ツールは`node_modules/`内の`webidl-bindgen.mbt` npm パッケージ

### 生成コードのパターン

**インターフェース**: opaque型 + `extern "js"` FFI関数（コンストラクタ、getter/setter、メソッド）
```moonbit
pub type HTMLElement
pub extern "js" fn HTMLElement::new() -> HTMLElement
pub extern "js" fn HTMLElement::get_title(self : HTMLElement) -> String
```

**Union型**: 型変換関数（`from_*`、`is_*`、`as_*`）
**列挙型**: `enum` + `to_string`/`from_string`
**辞書型**: `struct` + `default()` + `to_js()`

### 依存関係

- MoonBitパッケージ: `moonbitlang/async`
- ビルドターゲット: JavaScript (`js`)

### 主要な大規模ファイル

`html.mbt`（~29K行）、`dom.mbt`（~11K行）、`SVG.mbt`（~7.7K行）、`webgpu.mbt`（~6.8K行）が特に大きい。読み込み時は注意。

## 重要な注意事項

- `src/`配下のファイルを手動で編集しない。変更が必要な場合は`webidl-bindgen.mbt`ツール側を修正する
- `moon.mod.json`のバージョンはリリース時に手動で更新する
- `moon check`による型チェックで生成コードの正しさを検証する
- `test/`配下に統合テストあり（別モジュール、Playwright + Chromium で実行）

## テスト

```bash
# 初回セットアップ（Playwright + Chromium のインストール）
just setup-test

# テストのビルド＆実行
just test

# テスト実行のみ（ビルド済みの場合）
just test-run

# テストのビルドのみ
just build-test
```

テストは `test/` ディレクトリに独立した MoonBit モジュールとして構成。パス依存で `dijdzv/websys` を参照する。Playwright + Chromium headless で実ブラウザ上でテストを実行する。devenv 環境では Nix の Chromium が自動的に使用される（`PLAYWRIGHT_CHROMIUM_EXECUTABLE_PATH` 環境変数で設定）。
