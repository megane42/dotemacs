;; Command-Key と Option-Key の役割を入れ替える
(setq ns-command-modifier (quote meta))
(setq ns-alternate-modifier (quote super))

(require 'server)
(unless (server-running-p)
  (server-start))
