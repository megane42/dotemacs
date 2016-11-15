(require 'flymake-phpcs)
(add-hook 'php-mode-hook 'flymake-phpcs-load)
(custom-set-variables
 '(flymake-phpcs-command "/usr/local/bin/phpcs")
 '(flymake-phpcs-standard "CakePHP"))
