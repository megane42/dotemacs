;; *.~ とかのバックアップファイルを作らない
(setq make-backup-files nil)

;; .#* とかのバックアップファイルを作らない
(setq auto-save-default nil)

;; 色設定
(load-theme 'manoj-dark t)
(enable-theme 'manoj-dark)

;; 日付を入力
;; 参考: http://d.hatena.ne.jp/crosshope/20110602/1306947203
(defun insert-current-time()
  (interactive)
  (insert (format-time-string "%Y-%m-%d(%a)" (current-time))))
(define-key global-map "\C-cd" `insert-current-time)
