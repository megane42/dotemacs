;; 基本設定
(use-package org-install
  :config 
  ;; TODO の状態を定義
  (setq org-todo-keywords
        '((sequence "TODO" "INPROGRESS" "WAIT" "INREVIEW" "|" "DONE" "REJECT")))

  ;; アジェンダを読み込むパス
  (setq org-agenda-files '("~/org/current/"))

  ;; アジェンダを開く（デフォルトで設定されてなかった）
  (bind-key "C-c a" 'org-agenda)

  ;; タスクが完了した時に時間測定も停止する
  (setq org-clock-out-when-done t)

  ;; 文字色
  (custom-set-faces
   '(org-date ((t (:foreground "cornflower blue" :underline t))))
   '(org-link ((t (:foreground "cornflower blue" :underline t)))))

  ;; ???
  (setq org-src-fontify-natively t))

