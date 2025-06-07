これは、私の任天堂合格のためのリポジトリです。まず、マリオのようなゲームを作ります。
ここに、やったことを全て書いていきます。
#  Nintendo（Godot）プロジェクト

このプロジェクトは、Godot Engine を用いた 2D アクションゲームの開発環境です。

---

##  前提環境

- macOS（Intel または Apple Silicon）
- Git（`git --version`で確認）
- Godot Engine（バージョン4.x推奨）

---

##  環境構築手順（Mac）

### 1. Godot のインストール

公式サイトから最新の Godot Engine をダウンロードし、`/Applications` フォルダに配置してください。

- [https://godotengine.org/download](https://godotengine.org/download)
- Standard Version（Monoなし）で OK

### 2. プロジェクトのクローン

```bash
git clone https://github.com/<YOUR_USERNAME>/nintendo.git
cd nintendo
```
### 3.Godot でプロジェクトを開く
1.	Godot を起動
2.	「Import」→ nintendo フォルダの中の project.godot を選択
3.	「Open」で読み込み完了！

### 使用技術
- Godot Engine 4.x
- GDScript（Pythonライクなスクリプト言語）
- Git（バージョン管理）

### ディレクトリ構成例
```bash
nintendo/
├── .gitignore
├── README.md
├── project.godot
├── main.tscn
├── player/
│   ├── Player.tscn
│   └── Player.gd
└── .import/
```

### 開発メモ
-	.import/ や export.cfg などは .gitignore 済みです
-	Godot 4.x では .godot/ は Git 管理対象に含めてください