;; 参考: http://qiita.com/ncaq/items/5a1d102723fec11a8bff
;; 参考: http://d.hatena.ne.jp/murase_syuka/20140815/1408061850
;; 参考: http://futurismo.biz/archives/2888

(use-package rainbow-delimiters
  :config

  ;; 自動起動
  (add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

  ;; 色を強調（テーマのロード後に実行すること）
  (use-package cl-lib)
  (use-package color)
  (defun rainbow-delimiters-using-stronger-colors ()
    (interactive)
    (cl-loop
     for index from 1 to rainbow-delimiters-max-face-count
     do
     (let ((face (intern (format "rainbow-delimiters-depth-%d-face" index))))
       (cl-callf color-saturate-name (face-foreground face) 30))))
  (add-hook 'emacs-startup-hook 'rainbow-delimiters-using-stronger-colors))

