;; --------------------------------------------------------
;; 参考: Emacs起動時に自分好みのelispを自動的にインストールする
;; http://d.hatena.ne.jp/hnw/20140113

(defvar my/favorite-packages
  '(
    init-loader
    php-mode
    markdown-mode
    auto-complete
    rainbow-delimiters
    smooth-scroll
    )
  "起動時に自動的にインストールされるパッケージのリスト")

(defvar my/favorite-package-urls
  '(
    ;; 1ファイルのelispしか管理できません
    ;; パッケージ名はファイル名の.elより前の部分になります
    ;; "http://namazu.org/~tsuchiya/elisp/dabbrev-ja.el"
    )
  "起動時に自動的にインストールされるelispのURLのリスト")

;; ネットワーク経由で取得したelispをpackage.el管理する
(defun package-install-from-url (url)
  "URLを指定してパッケージをインストールする"
  (interactive "sURL: ")
  (let ((file (and (string-match "\\([a-z0-9-]+\\)\\.el" url) (match-string-no-properties 1 url))))
    (with-current-buffer (url-retrieve-synchronously url)
      (goto-char (point-min))
      (delete-region (point-min) (search-forward "\n\n"))
      (goto-char (point-min))
      (setq info (cond ((condition-case nil (package-buffer-info) (error nil)))
		       ((re-search-forward "[$]Id: .+,v \\([0-9.]+\\) .*[$]" nil t)
                        (vector file nil (concat "[my:package-install-from-url]") (match-string-no-properties 1) ""))
                       (t (vector file nil (concat file "[my:package-install-from-url]") (format-time-string "%Y%m%d") ""))))
      (package-install-from-buffer info 'single)
      (kill-buffer)
      )))

(defun package-url-installed-p (url)
  "指定されたURLに対応するパッケージがインストールされているか調べる"
  (interactive "sURL: ")
  (let ((pkg-name (and (string-match "\\([a-z0-9-]+\\)\\.el" url) (match-string-no-properties 1 url))))
    (package-installed-p (intern pkg-name))))

(eval-when-compile
  (require 'cl))

(when (require 'package nil t)
  (add-to-list 'package-archives
               '("melpa" . "http://melpa.milkbox.net/packages/") t)
  (add-to-list 'package-archives
               '("marmalade" . "http://marmalade-repo.org/packages/") t)
  (package-initialize)
  (let ((pkgs (loop for pkg in my/favorite-packages
                    unless (package-installed-p pkg)
                    collect pkg)))
    (when pkgs
      ;; check for new packages (package versions)
      (message "%s" "Get latest versions of all packages...")
      (package-refresh-contents)
      (message "%s" " done.")
      (dolist (pkg pkgs)
        (package-install pkg))))
  (let ((urls (loop for url in my/favorite-package-urls
                    unless (package-url-installed-p url)
                    collect url)))
    (dolist (url urls)
      (package-install-from-url url))))

