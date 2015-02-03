(require 'flymake-phpcs)
(add-hook 'php-mode-hook 'flymake-phpcs-load)
(custom-set-variables
 '(flymake-phpcs-standard "CakePHP"))

;; ���́i�O�́j�G���[�ɃW�����v
(global-set-key "\M-n" 'flymake-goto-next-error)
(global-set-key "\M-p" 'flymake-goto-prev-error)

;; �G���[�ɃW�����v�����ۂɃG���[���b�Z�[�W���~�j�o�b�t�@�ɕ\������
;; http://qiita.com/awakia/items/5c97b02dcc3c7fd20279
(defun display-error-message ()
  (message (get-char-property (point) 'help-echo)))
(defadvice flymake-goto-prev-error (after flymake-goto-prev-error-display-message)
  (display-error-message))
(defadvice flymake-goto-next-error (after flymake-goto-next-error-display-message)
  (display-error-message))
(ad-activate 'flymake-goto-prev-error 'flymake-goto-prev-error-display-message)
(ad-activate 'flymake-goto-next-error 'flymake-goto-next-error-display-message)
