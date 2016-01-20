;; http://keisanbutsuriya.hateblo.jp/entry/2015/02/15/174758
(require 'recentf)
(setq recentf-max-saved-items 1000)            ;; recentf に保存するファイルの数
(setq recentf-exclude '(".recentf"))           ;; .recentf自体は含まない
(setq recentf-auto-cleanup 10)                 ;; 保存する内容を整理
(run-with-idle-timer 30 t 'recentf-save-list)  ;; 30秒ごとに .recentf を保存
(require 'recentf-ext)                         ;; find-file 以外で開いても recentf に入れるための拡張
