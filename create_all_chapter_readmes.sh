#!/bin/bash

BASE_DIR="./JavaGitStudy"

declare -A CHAPTERS

CHAPTERS["ch01_イントロダクション"]="1.1 Javaとは？
1.2 Javaアプリを開発／実行するための基本環境
1.3 Javaプログラミングの基本"

CHAPTERS["ch02_Javaの基本"]="2.1 変数
2.2 データ型
2.3 リテラル
2.4 型変換
2.5 参照型"

CHAPTERS["ch03_演算子"]="3.1 算術演算子
3.2 代入演算子
3.3 関係演算子
3.4 論理演算子
3.5 ビット演算子
3.6 演算子の優先順位と結合則"

CHAPTERS["ch04_制御構文"]="4.1 条件分岐
4.2 繰り返し処理
4.3 ループの制御"

CHAPTERS["ch05_標準ライブラリ"]="5.1 ラッパークラス
5.2 文字列の操作
5.3 正規表現
5.4 日付／時刻の操作
5.5 ストリーム
5.6 その他の機能"

CHAPTERS["ch06_コレクションフレームワーク"]="6.1 コレクションフレームワークの基本
6.2 リスト
6.3 セット
6.4 マップ
6.5 スタック／キュー"

CHAPTERS["ch07_オブジェクト指向_基本構文"]="7.1 クラスの定義
7.2 フィールド
7.3 メソッド
7.4 変数のスコープ
7.5 コンストラクター
7.6 クラスメソッド／クラスフィールド
7.7 引数／戻り値の様々な記法
7.8 パッケージ"

CHAPTERS["ch08_オブジェクト指向_継承_カプセル化_ポリモーフィズム"]="8.1 カプセル化
8.2 継承
8.3 ポリモーフィズム"

CHAPTERS["ch09_ネスト_ジェネリクス_例外処理"]="9.1 Objectクラス
9.2 例外処理
9.3 列挙型
9.4 レコード
9.5 入れ子のクラス
9.6 ジェネリクス"

CHAPTERS["ch10_ラムダ_StreamAPI"]="10.1 メソッド参照／ラムダ式
10.2 Stream API"

CHAPTERS["ch11_高度なプログラミング"]="11.1 マルチスレッド処理
11.2 アノテーション
11.3 モジュール"

# テンプレ生成関数
generate_readme() {
  local dir_name=$1
  local content=$2
  local target_dir="$BASE_DIR/$dir_name"

  mkdir -p "$target_dir"

  cat <<EOF > "$target_dir/README.md"
# $dir_name

---

## �� 対応する節（独習Java 第6版）

$(echo "$content" | sed 's/^/- /')

---

## ✅ 学んだこと・要点（例）

- ※重要なポイントや構文、考え方の要約を書く

---

## 💻 補足コード（例）

\`\`\`java
// ここにサンプルコードを記述
\`\`\`

---

## 🧠 メモ（任意）

- 追加の気づき・疑問・応用例などを記録
EOF

  echo "✅ $dir_name に README.md を作成しました。"
}

# 全章処理ループ
for chapter in "${!CHAPTERS[@]}"; do
  generate_readme "$chapter" "${CHAPTERS[$chapter]}"
done

