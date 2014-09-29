;; 参考: http://qiita.com/ncaq/items/5a1d102723fec11a8bff
;; 参考: http://d.hatena.ne.jp/murase_syuka/20140815/1408061850

(require 'rainbow-delimiters)
(add-to-list 'rainbow-delimiters-ignore-modes 'fundamental-mode) ; helmとの干渉回避
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(require 'cl-lib)
(require 'color)
(cl-loop
 for index from 1 to rainbow-delimiters-max-face-count
 do
 (let ((face (intern (format "rainbow-delimiters-depth-%d-face" index))))
   (cl-callf color-saturate-name (face-foreground face) 30)))
