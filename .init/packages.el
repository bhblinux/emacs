(when (>= emacs-major-version 24)
    (require 'package)
    (package-initialize)
    (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
			     ("melpa" . "http://elpa.emacs-china.org/melpa/")
			     )))

;; cl - Common Lisp Extension
(require 'cl)
;; http://elpa.emacs-china.org/melpa
;;http://www.melpa.org/
;; Add Packages

(defvar my/packages '(
      		      company
		      monokai-theme
		      hungry-delete
		      swiper
		      counsel
		      smartparens
		      easy-hugo
		      auto-org-md
			  magit
		      ) "Default packages")

(setq package-selected-packages my/packages)

 (defun my/packages-installed-p ()
     (loop for pkg in my/packages
           when (not (package-installed-p pkg)) do (return nil)
           finally (return t)))

 (unless (my/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg my/packages)
       (when (not (package-installed-p pkg))
         (package-install pkg))))

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 25)


;;smart-hungry-delete
;;(require 'smart-hungry-delete)
;;(smart-hungry-delete-add-default-hooks)
;;(global-set-key (kbd "<backspace>") 'smart-hungry-delete-backward-char)
;;(global-set-key (kbd "C-d") 'smart-hungry-delete-forward-char)
;;hungry-delete
(require 'hungry-delete)
(global-hungry-delete-mode)
;;swiper
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)

;;smartparens

(require 'smartparens-config)
(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)


