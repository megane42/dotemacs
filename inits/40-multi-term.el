(require 'multi-term)

;; 奪われたくないキーバインドはここに書く
(add-to-list 'term-unbind-key-list '"C-t")
(add-to-list 'term-unbind-key-list '"C-q")

;; ESC 2回で ESC を送信 (vi対策)
(add-hook 'term-mode-hook '(lambda ()
			     (define-key term-raw-map (kbd "ESC") 'term-send-raw)))
