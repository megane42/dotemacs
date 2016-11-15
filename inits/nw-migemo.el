;; * やること
;;   * git clone https://github.com/koron/cmigemo
;;   * cd cmigemo
;;   * ./configure
;;   * make gcc
;;   * make gcc-dict
;;   * make gcc-install

(require 'migemo)
(setq migemo-dictionary "/usr/local/share/migemo/utf-8/migemo-dict")
(setq migemo-command "cmigemo")
(setq migemo-options '("-q" "--emacs" "-i" "\a"))
(setq migemo-user-dictionary nil)
(setq migemo-regex-dictionary nil)
(setq migemo-coding-system 'utf-8-unix)
(load-library "migemo")
(migemo-init)

(require 'helm-migemo)
(helm-migemo-mode 1)

;; migemo が C-y を再定義してしまっているので、再々定義しかえす
(custom-set-variables '(migemo-use-default-isearch-keybinding nil))
(define-key isearch-mode-map "\C-y" 'isearch-yank-kill)
