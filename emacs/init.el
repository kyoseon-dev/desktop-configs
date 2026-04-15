(
 custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(adwaita))
 '(font-use-system-font t)
 '(inhibit-startup-screen t)
 '(package-selected-packages nil))

(add-to-list 'load-path "~/.config/emacs/packages/")

;; Disable GUI elements.
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; Disable startup message.
(defun display-startup-echo-area-message () (message ""))

;; Visible bell.
(setq visible-bell 1)

;; Don't use file backup
(setq backup-inhibited 1)
(setq auto-save-default nil)

;; Show empty lines.
(setq-default indicate-empty-lines t)

;; Window Title.
(setq-default frame-title-format "%b %& emacs")

;; Use UTF-8 everywhere.
(prefer-coding-system 'utf-8)

;; Packages

(with-eval-after-load 'package
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
  (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/")))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(setq use-package-always-ensure t)
(setq use-package-always-defer  t)

(use-package inkpot-theme
  :demand t
  :config (load-theme 'inkpot t))

(use-package evil
  :demand t
  :init
  (setq evil-undo-system 'undo-fu)
  (setq evil-search-module 'evil-search)
  :config
  (evil-mode 1)
  (setq evil-ex-search-case 'sensitive))

(evil-define-key 'normal org-mode-map (kbd "<tab>") #'org-cycle)

(use-package undo-fu)
(use-package evil-numbers)
(use-package evil-surround
  :demand t
  :config
  (global-evil-surround-mode 1))
(use-package which-key
  :demand t
  :config
  (which-key-mode))

(use-package ivy
  :demand t
  :config (ivy-mode)

  (setq ivy-height-alist `((t . ,(lambda (_caller) (/ (frame-height) 2)))))
  (define-key ivy-minibuffer-map (kbd "<C-return>") 'ivy-done)
  (define-key ivy-minibuffer-map (kbd "<C-w>") 'evil-window-map))

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(add-hook 'org-mode-hook 'visual-line-mode)
(setq org-startup-indented t)
(setq org-indent-indentation-per-level 2)

;;(require 'org-modern-indent)
;;(add-hook 'org-mode-hook #'org-mode-indent 90)

;;
;;(global-display-fill-column-indicator-mode 1)
(global-display-line-numbers-mode 1)
(setq-default display-line-numbers-width 5)
(setq display-line-numbers-type 'relative)
(setq column-number-mode t)

(transient-mark-mode t)
(setq shift-select-mode t)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
