;; *.~ とかのバックアップファイルを作らない
(setq make-backup-files nil)

;; .#* とかのバックアップファイルを作らない
(setq auto-save-default nil)

;; 色設定
;; (load-theme 'manoj-dark t)
;; (enable-theme 'manoj-dark)
(load-theme 'tronesque t)
(tronesque-mode-line)

;; 日付を入力
;; 参考: http://d.hatena.ne.jp/crosshope/20110602/1306947203
(defun insert-current-time()
  (interactive)
  (insert (format-time-string "<%Y-%m-%d %a>" (current-time))))
(define-key global-map "\C-cd" `insert-current-time)

;; F12キーでリロード
(define-key global-map (kbd "<f12>") 'eval-buffer)

;; "C-t" でウインドウを切り替える
(define-key global-map (kbd "C-t") 'other-window)

;; C-+ で拡大, C-- で縮小, C-0 でデフォルトに戻す
;; 参考: http://qiita.com/scalper/items/9a0eedb004d3094dada6
(global-set-key [(control ?+)] (lambda () (interactive) (text-scale-increase 1)))
(global-set-key [(control ?-)] (lambda () (interactive) (text-scale-decrease 1)))
(global-set-key [(control ?0)] (lambda () (interactive) (text-scale-increase 0)))

;; タブ幅
(setq default-tab-width 2)

;; 基本的にインデントにタブは使わない
(setq-default indent-tabs-mode nil)

;; バックスペースはバックスペースとして使う
(keyboard-translate ?\C-h ?\C-?)

;; emacs 内蔵 IME のオンオフが誤爆するのを防ぐ
(define-key global-map (kbd "C-\\") nil)
