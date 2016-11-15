# megane42's super ultra copy-pastic emacs settings

## 使い方

1. 全力で emacs 24 をインストール。
  * 少なくとも package.el を入れる。

2. ホームフォルダで `git clone https://github.com/megane42/dotemacs.git .emacs.d`

3. init.el 内に package.el で使うパッケージを列挙する。

4. emacs を起動すると列挙したパッケージが自動でインストールされる。

5. ~/.emacs.d/inits 以下に設定ファイルを機能ごとに書いていく。Prefix をつけると環境ごとにオンオフできる（Meadow だけとか）

## 依存する外部プログラムのインストール

一部のパッケージは、cmigemo や phpcs などの外部プログラムを入れる必要がある。
それらのインストール方法もできるだけメモしている（各パッケージの設定ファイルに書いている）が、書き漏らしがあるかもしれない。。。
