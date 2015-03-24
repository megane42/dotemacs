(require 'multi-term)

;; 奪われたくないキーバインドはここに書く
(add-to-list 'term-unbind-key-list '"C-t")
(add-to-list 'term-unbind-key-list '"C-q")

;; ESC2回で term にESC1回分を直接送信
;; 参考: http://fukuyama.co/zsh
(add-hook 'term-mode-hook
 (lambda ()
   (define-key term-raw-map (kbd "ESC ESC")
     (lambda ()
       (interactive)
       (term-send-raw-string "\e")))))
