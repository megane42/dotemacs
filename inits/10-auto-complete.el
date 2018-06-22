(use-package auto-complete

  :bind
  (("C-<tab>" . auto-complete))

  :config
  (ac-config-default)
  (global-auto-complete-mode t)

  ;; 追加メジャーモード
  (add-to-list 'ac-modes 'markdown-mode)
  (add-to-list 'ac-modes 'web-mode))
