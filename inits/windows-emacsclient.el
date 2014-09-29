;; emacsclientを使えるようにする(単一の窓で表示できるようになる）
(server-start)
 
;; バッファ閉じるとき still have client とか言われるのを黙らせる
(remove-hook
'kill-buffer-query-functions
'server-kill-buffer-query-function)
