;; *.~ とかのバックアップファイルを作らない
(setq make-backup-files nil)

;; .#* とかのバックアップファイルを作らない
(setq auto-save-default nil)

;; 色設定
(load-theme 'wombat t)

;; 日付を入力 (参考: http://d.hatena.ne.jp/crosshope/20110602/1306947203)
(bind-key "C-c d" '(lambda ()
                     (interactive)
                     (insert (format-time-string "<%Y-%m-%d %a>" (current-time)))))

;; F12キーでリロード
(bind-key "<f12>" 'eval-buffer)

;; "C-t" でウインドウを切り替える
(bind-key "C-t" 'other-window)

;; C-+ で拡大, C-- で縮小, C-0 でデフォルトに戻す (参考: http://qiita.com/scalper/items/9a0eedb004d3094dada6)
(bind-key "C-+" '(lambda () (interactive) (text-scale-increase 1)))
(bind-key "C--" '(lambda () (interactive) (text-scale-decrease 1)))
(bind-key "C-0" '(lambda () (interactive) (text-scale-increase 0)))

;; タブ幅
(setq default-tab-width 2)

;; 基本的にインデントにタブは使わない
(setq-default indent-tabs-mode nil)

;; バックスペースはバックスペースとして使う
(keyboard-translate ?\C-h ?\C-?)

;; emacs 内蔵 IME のオンオフが誤爆するのを防ぐ
(bind-key "C-\\" nil)

;; json-pretty-print を使えるようにする
(use-package json)

;; Custom が勝手に設定を書く先を init.el じゃなくする
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

;; ツールバーを非表示
(tool-bar-mode 0)

;; ============================================================
;; Mac (EMP版) 限定設定
;; ============================================================
(when (equal system-type 'darwin)
  ;; Command (= Meta) を使ったキーバインドが Mac に吸われないようにする
  (custom-set-variables
   '(mac-pass-command-to-system nil)))


;; ============================================================
;; Windows (NTEmacs) 限定設定
;; ============================================================
(when (equal system-type 'windows-nt)
  ;; emacsclientを使えるようにする(単一の窓で表示できるようになる）
  (server-start)

  ;; バッファ閉じるとき still have client とか言われるのを黙らせる
  (remove-hook
   'kill-buffer-query-functions
   'server-kill-buffer-query-function)

  ;; フォント設定
  (add-to-list 'default-frame-alist '(font . "MigMix 2M")))
