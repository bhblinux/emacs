;;ui界面

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

;;----------------------end-----------------------------


;; 显示行号
(global-linum-mode 1)
;;关闭自动备份
(setq make-backup-files nil)
;;关闭自动恢复
;;(setq auto-save-default nil)
;;屏蔽声音
(setq ring-bell-function 'ignore)

;;开启全局company补全
(global-company-mode 1)

;;括号补全
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;空格缩进
(setq default-tab-width 4)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (company)))
 '(tool-bar-mode nil))

 