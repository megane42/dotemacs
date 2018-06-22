(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("org"   . "http://orgmode.org/elpa/"))
(package-initialize)


;; =======================================================
;; パッケージインストール
;; =======================================================

(setq package-list
  '(init-loader
    use-package
    helm
    multiple-cursors
    rainbow-delimiters
    expand-region
    markdown-mode
    web-mode
    open-junk-file
    recentf-ext
    highlight-symbol
    visual-regexp
    auto-complete
    ;; fuzzy
    ))

;; パッケージリストを更新
(unless package-archive-contents
  (package-refresh-contents))

;; 未インストールのパッケージを一括インストール
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;; =======================================================
;; 設定ファイルのロード
;; =======================================================

(use-package init-loader
  :config
  ;; (setq init-loader-show-log-after-init nil)
  (init-loader-load "~/.emacs.d/inits"))
