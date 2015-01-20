
;; フォント
(set-face-attribute 'default nil
		    :family "Consolas" ;; font
		    :height 108)       ;; font size
(set-fontset-font nil 'japanese-jisx0208 (font-spec :family "MeiryoKe_Console")) ;; 日本語
(setq face-font-rescale-alist '(("MeiryoKe_Console" . 1.2))) ;; 半角と全角の比を1:2にする
