;; -------------------
;; php-mode
;; -------------------

;; インデントを4タブにする & 配列のインデントを整える
(add-hook 'php-mode-hook (lambda ()
    (setq tab-width 4)
    (setq indent-tabs-mode t)
    (setq c-basic-offset 4)
    (defun ywb-php-lineup-arglist-intro (langelem)
      (save-excursion
        (goto-char (cdr langelem))
        (vector (+ (current-column) c-basic-offset))))
    (defun ywb-php-lineup-arglist-close (langelem)
      (save-excursion
        (goto-char (cdr langelem))
        (vector (current-column))))
    (c-set-offset 'arglist-intro 'ywb-php-lineup-arglist-intro)
    (c-set-offset 'arglist-close 'ywb-php-lineup-arglist-close)))
