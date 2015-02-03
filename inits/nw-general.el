;; 色設定
(load-theme 'manoj-dark t)
(enable-theme 'manoj-dark)

;; 日本語やら Unicode の2バイト文字などが崩れる問題を解決
(set-language-environment "Japanese")
(prefer-coding-system 'utf-8-unix)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
