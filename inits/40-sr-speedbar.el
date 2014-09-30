(require 'sr-speedbar)
(setq sr-speedbar-right-side nil)
(setq sr-speedbar-width 30)
(setq speedbar-use-images nil)
(global-set-key (kbd "C-^") 'sr-speedbar-toggle)
(add-hook 'speedbar-mode-hook
          '(lambda ()
             (speedbar-add-supported-extension '("js" "md" "html" "css" "php" "txt" "rb"))))
