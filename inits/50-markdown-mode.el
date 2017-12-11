(use-package markdown-mode
  :mode
  ("\\.md?\\'" . markdown-mode)
  ("\\.txt\\'" . markdown-mode)  
  :config 
  ;; 文字化けを防ぐ
  ;; http://blog.uskanda.com/2012/02/09/emacs-markdown-mode-preview-ja/
  (setq markdown-command-needs-filename t)
  (setq markdown-coding-system "utf-8"))
