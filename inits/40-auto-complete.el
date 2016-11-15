(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode t)

;; 追加メジャーモード
(add-to-list 'ac-modes 'markdown-mode)
(add-to-list 'ac-modes 'web-mode)

(global-set-key [C-tab] 'auto-complete)
(setq ac-use-fuzzy t)
