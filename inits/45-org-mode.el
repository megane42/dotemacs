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
 '(org-date ((t (:foreground "cornflower blue" :underline t))))
 '(org-link ((t (:foreground "cornflower blue" :underline t))))
 ;; tronesque theme が勝手に見出しの字を大きくするのを打ち消す
 '(outline-1 ((t (:height 1.0))))
 '(outline-2 ((t (:height 1.0))))
 '(outline-3 ((t (:height 1.0)))))
