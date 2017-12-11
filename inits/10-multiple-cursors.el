(use-package multiple-cursors
  :config
  (bind-key "M-*" 'mc/mark-next-like-this)
  (bind-key "M-+" 'mc/mark-previous-like-this))
