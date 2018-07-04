;; とっさのメモ書きができるようにする
(use-package open-junk-file
  :config

  (defun open-really-junk-file ()
    (interactive)
    (setq open-junk-file-format "~/org/junk/%Y-%m%d-%H%M%S.org")
    (open-junk-file))

  (defun open-diary-file ()
    (interactive)
    (setq open-junk-file-format "~/org/diary/%Y-%m%d-%H%M%S.org")
    (open-junk-file))

  (bind-key "C-x j" 'open-really-junk-file)
  (bind-key "C-c j" 'open-diary-file))
