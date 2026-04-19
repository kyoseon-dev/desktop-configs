(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-use-system-font t)
 '(inhibit-startup-screen t)
 '(package-selected-packages
	'(all-the-icons dashboard "doom-modeline" evil-numbers evil-surround
						 inkpot-theme ivy org-modern undo-fu)))

(setq comp-deferred-compilation t)

(add-to-list 'load-path "~/.config/emacs/packages/")

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(setq use-package-always-ensure t)
(setq use-package-always-defer  t)

;; Configuration
(org-babel-load-file (expand-file-name "config.org" user-emacs-directory))

(put 'dired-find-alternate-file 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'list-timers 'disabled nil)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-document-title ((t (:inherit outline-1 :height 1.6))))
 '(org-level-1 ((t (:inherit outline-1 :height 1.38))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.23))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.1)))))
