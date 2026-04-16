(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(adwaita))
 '(font-use-system-font t)
 '(inhibit-startup-screen t)
 '(package-selected-packages
	'(dashboard evil-numbers evil-surround inkpot-theme ivy org-superstar undo-fu)))

(add-to-list 'load-path "~/.config/emacs/packages/")

;; Disable GUI elements.
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(setq-default tab-stop 3)
(setq-default tab-width 3)
(setq-default fill-column 80)
(global-display-fill-column-indicator-mode 0)

(setopt x-underline-at-decent-line nil)
(setq inhibit-compacting-font-caches t)

;; Disable startup message.
(defun display-startup-echo-area-message () (message ""))

;; Visible bell.
(setq visible-bell 1)

;; Don't use file backup
(setq backup-inhibited 1)
(setq auto-save-default nil)

;; Window Title.
(setq-default frame-title-format "%b %& emacs")

;; Cursor line
(global-hl-line-mode 1)
(set-face-background 'hl-line nil)
(set-face-foreground 'hl-line nil)

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

(evil-define-key 'normal org-mode-map (kbd "TAB") 'org-cycle)

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

(require 'org-ibullets)

;; Org-mode face setting
(setq org-hidden-keywords '(title))
(set-face-attribute 'org-level-8 nil :weight 'bold :inherit 'default)
(set-face-attribute 'org-level-7 nil :inherit 'org-level-8)
(set-face-attribute 'org-level-6 nil :inherit 'org-level-8)
(set-face-attribute 'org-level-5 nil :inherit 'org-level-8)
(set-face-attribute 'org-level-4 nil :inherit 'org-level-8)
(set-face-attribute 'org-level-3 nil :inherit 'org-level-8 :height 1.1)
(set-face-attribute 'org-level-2 nil :inherit 'org-level-8 :height 1.23)
(set-face-attribute 'org-level-1 nil :inherit 'org-level-8 :height 1.38)
(setq org-cycle-level-faces nil)
(setq org-n-level-faces 4)
(set-face-attribute 'org-document-title nil
						  :height 2.074
						  :foreground 'unspecified
						  :inherit 'org-level-8)

(add-hook 'org-mode-hook (lambda () (org-ibullets-mode 1)))

(add-hook 'org-mode-hook 'visual-line-mode)
(add-hook 'text-mode-hook 'visual-line-mode)

(setq org-startup-indented t)
(setq org-indent-indentation-per-level 2)

;;
(global-display-line-numbers-mode 1)
(setq-default display-line-numbers-width 5)
(setq display-line-numbers-type 'relative)
(setq column-number-mode t)

(transient-mark-mode t)
(setq shift-select-mode t)

;; Dashboard
(require 'dashboard)

(setq dashboard-startup-banner 'logo-braille)
(setq dashboard-center-content t)
(setq dashboard-vertically-center-content t)
(setq dashboard-show-shortcuts nil)
(setq dashboard-display-icons-p t)
(setq dashboard-icon-type 'all-the-icons)
(setq dashboard-items '((recents   . 5)
								(bookmarks . 5)
								(projects  . 5)
								(agenda    . 5)
								(registers . 5)))

(setq dashboard-startupify-list '(dashboard-insert-banner
											 dashboard-insert-newline
											 dashboard-insert-navigator
											 dashboard-insert-newline
											 dashboard-insert-init-info
											 dashboard-insert-items))

(dashboard-setup-startup-hook)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
