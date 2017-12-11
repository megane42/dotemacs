# megane42's super ultra copy-pastic emacs settings

## 使い方

1. emacs 24 以降をインストール。
    * 24 以降は package.el が標準で入っているため。

```bash
# Mac
brew tap railwaycat/emacsmacport
brew install emacs-mac --with-modern-icon

# アイコンがダサいので付属のものに置き換える
```

2. ホームフォルダで `git clone https://github.com/megane42/dotemacs.git .emacs.d`

3. emacs を起動すると列挙したパッケージが自動でインストールされる。

4. 使うパッケージが増えた時は init.el のパッケージリストに追記する。

5. ~/.emacs.d/inits 以下に設定ファイルを機能ごとに書いていく。
    * 参考: https://qiita.com/kai2nenobu/items/5dfae3767514584f5220
    * ファイル名先頭の2桁の数字順にロードされる
    * Prefix をつけると環境ごとにオンオフできる（Linux だけとか）
        * `system-type` とかを使った方法に変えた方が依存が減ってシンプルかもしれない
