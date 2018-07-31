;; 耗时：1.1 s。自动安装扩展
(when (version< emacs-version "27.0")
  (package-initialize))
;; 字体设置
(load "~/.emacs.d/init/font-settings")

;;包管理。
(load "~/.emacs.d/init/packages")
;; 一般的设置，耗时：0.4 s。
(load "~/.emacs.d/init/common-settings")
;; 一些函数及键绑定，耗时：0.1 s。
(load "~/.emacs.d/init/some-functions")

;; 键绑定，耗时：0.2 s。
(load "~/.emacs.d/init/my-key-bindings")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-idle-delay 0.08)
 '(company-minimum-prefix-length 2)
 '(custom-safe-themes
   (quote
	("c3d4af771cbe0501d5a865656802788a9a0ff9cf10a7df704ec8b8ef69017c68" default)))
 '(display-time-mode t)
 '(package-selected-packages (quote (company)) t)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
