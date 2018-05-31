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

 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.

;;
;;(setq org-export-backends (quote (ascii html icalendar latex md)))


;;字符集
(set-language-environment "UTF-8")
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
;;(set-clipboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
;;(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
;;(modify-coding-system-alist 'process "*" 'utf-8)



(setq default-buffer-file-coding-system 'utf-8)


;;emacs server
(setq sever-auth-dir "~/.emacs.d/server/")
(setq server-name "eamacs-server-file")
(server-start)


(provide 'init-better-defaults)
