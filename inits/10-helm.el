(use-package helm-config
  :config
  (helm-mode 1)
  (bind-key "C-x b"   'helm-buffers-list)
  (bind-key "C-x C-f" 'helm-find-files)
  (bind-key "C-x C-d" 'helm-for-files)
  (bind-key "C-c i"   'helm-imenu)
  (bind-key "M-y"     'helm-show-kill-ring)
  (bind-key "M-x"     'helm-M-x)
  
  (bind-key "C-h" 'delete-backward-char           helm-map)
  (bind-key "TAB" 'helm-execute-persistent-action helm-find-files-map)

  (defadvice helm-ff-kill-or-find-buffer-fname (around execute-only-if-exist activate)
    "Execute command only if CANDIDATE exists"
    (when (file-exists-p candidate)
      ad-do-it)))
