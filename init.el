;; ------------------------------------------------------
;; 1. 全力で emacs 24 をインストール。
;;    (少なくとも package.el を入れる)
;;
;; 2. このファイル内の package-list に
;;    package.el で使うパッケージを書いていく。
;;
;; 3. ~/.emacs.d/inits 以下に設定ファイルを機能ごとに書いていく。
;;    Prefix をつけると環境ごとにオンオフできる（Meadow だけとか）
;;
;;  参考: http://stackoverflow.com/a/10093312
;; ------------------------------------------------------

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives  '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; ここに使いたいパッケージ名を書いていく
(setq package-list
      '(init-loader
	php-mode
	markdown-mode
	auto-complete
	ac-dabbrev
	fuzzy
	rainbow-delimiters
	sr-speedbar
	web-mode
	json-reformat
	flymake-phpcs
	helm
	multi-term
	shell-pop))

;; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

;; install the missing packages
 (dolist (package package-list)
   (unless (package-installed-p package)
     (package-install package)))

(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")
