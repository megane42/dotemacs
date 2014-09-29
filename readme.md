# megane42's super ultra copy-pastic emacs settings

## 使い方

1. 全力で emacs 24 をインストール。
  * 少なくとも package.el を入れる。

2. ~/.emacs.d/inits/20-package-sync.el の上の方にpackage.el で使うパッケージを書いていく。
  * これなんとかしたい。

3. ~/.emacs.d/inits 以下に設定ファイルを機能ごとに書いていく。Prefix をつけると環境ごとにオンオフできる（Meadow だけとか）

4. ~/.emacs.d/ で git clone して emacs を起動すると、2 で書いたパッケージがインストールされる。
