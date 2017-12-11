;; とっさのメモ書きができるようにする
(use-package open-junk-file
  :config
  (setq open-junk-file-format "~/org/junk/%Y-%m%d-%H%M%S.org")
  (bind-key "C-x j" 'open-junk-file))
