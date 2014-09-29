;; ---------------------
;; markdown-mode
;; ---------------------
 
(autoload 'markdown-mode "markdown-mode"
"Major mode for editing Markdown files" t)

;; 関連づけ
(add-to-list 'auto-mode-alist '("\\.txt\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
 
;; 文字化けを防ぐ
;; http://blog.uskanda.com/2012/02/09/emacs-markdown-mode-preview-ja/
(setq markdown-command-needs-filename t) 
(setq markdown-coding-system "utf-8")
