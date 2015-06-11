(require 'org-install)

;; TODO の状態を定義
(setq org-todo-keywords
      '((sequence "TODO" "INPROGRESS" "WAIT" "INREVIEW" "|" "DONE" "REJECT")))

;; アジェンダを読み込むパス
(setq org-agenda-files '("~/org/current/"
												 "~/org/backlog/"))

(global-set-key "\C-ca" 'org-agenda) ;; デフォルトで設定されてなかったので追加
(setq org-clock-out-when-done t)     ;; タスクが完了した時に時間測定も停止する

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-date ((t (:foreground "cornflower blue" :underline t))))
 '(org-link ((t (:foreground "cornflower blue" :underline t)))))
