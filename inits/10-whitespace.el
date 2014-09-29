;; 参考: http://konbu13.hatenablog.com/entry/2014/04/01/203857

(require 'whitespace)

;; 全角スペース
(setq whitespace-style '(face tabs tab-mark spaces space-mark))
(setq whitespace-space-regexp "\\(\x3000+\\)")
(setq whitespace-display-mappings
      '((space-mark ?\x3000 [?\□])
        (tab-mark   ?\t   [?\xBB ?\t])
        ))

(global-whitespace-mode 1) ; 全角スペースを常に表示
(global-set-key (kbd "C-x w") 'global-whitespace-mode) ; 全角スペース表示の切替
