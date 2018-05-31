;; 关闭文件滑动控件
(scroll-bar-mode -1)
;; 关闭工具栏，tool-bar-mode 即为一个 Minor Mode
(tool-bar-mode -1)

;; 更改光标的样式
(setq-default cursor-type 'bar)
;; 关闭启动帮助画面 
(setq inhibit-splash-screen 1)
;;全盘
;;(setq inital-frame-alist (quote ((fullscreen . maximized))))
;;显示当前行
(global-hl-line-mode t)



;;加载皮肤

(load-theme 'monokai t)




(provide 'init-ui)
