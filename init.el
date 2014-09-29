;; ------------------------------------------------------
;; 1. 全力で emacs 24 をインストール。
;;    (少なくとも package.el を入れる)
;;
;; 2. ~/.emacs.d/inits/20-package-sync.el の上の方に
;;    package.el で使うパッケージを書いていく。
;;
;; 3. ~/.emacs.d/inits 以下に設定ファイルを機能ごとに書いていく。
;;    Prefix をつけると環境ごとにオンオフできる（Meadow だけとか）
;; ------------------------------------------------------

(require 'package)
(package-initialize)

(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")
