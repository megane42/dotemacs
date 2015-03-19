;; 参考: http://yunojy.github.io/blog/2013/03/17/emacs-de-quickrun-or-quickrun-region/

(defun quickrun-sc (start end)
  (interactive "r")
  (if mark-active
      (quickrun :start start :end end)
    (quickrun)))

(global-set-key (kbd "C-q") 'quickrun-sc)
