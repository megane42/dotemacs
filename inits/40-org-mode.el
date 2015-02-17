(require 'org)

;; エンターキーでリンクを開く
(setq org-return-follows-link t)

;; TODO の状態を定義
(setq org-todo-keywords
      '((sequence "TODO" "INPROGRESS" "WAIT" "INREVIEW" "|" "DONE" "REJECT")))
