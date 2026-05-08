;; -*- lexical-binding: t; -*-
;;; skel-theme.el --- port of inkpot theme 

(deftheme skel)

(custom-theme-set-faces
  'skel 
  '(default ((t (:background "#1e1e27" :foreground "#cfbfad"))))
  '(region ((t (:background "#404040"))))
  '(line-number ((t (:foreground "dim gray"))))
  '(line-number-current-line ((t (:foreground "gray90" :background "gray20"))))
  '(font-lock-keyword-face ((t (:bold t :foreground "#c080d0"))))
  '(font-lock-builtin-face ((t (:foreground "#c080d0"))))
  '(font-lock-constant-face ((t (:foreground "#808bed"))))
  '(font-lock-function-name-face ((t (:foreground "#87cefa"))))
  '(font-lock-keyword-face ((t (:bold t :foreground "#c080d0"))))
  '(font-lock-preprocessor-face ((t (:foreground "#409090"))))
  '(font-lock-reference-face ((t (:bold t :foreground "#808bed"))))
  '(font-lock-type-face ((t (:foreground "#ff8bff"))))
  '(font-lock-variable-name-face ((t nil)))
  '(font-lock-warning-face ((t (:foreground "#ffffff" :background "#ff0000"))))
  '(font-lock-string-face ((t (:foreground "#ffcd8b"))))
  '(font-lock-comment-face ((t (:foreground "#cd8b00")))) 
  '(font-lock-comment-delimiter-face ((t (:foreground "#cd8b00"))))
  '(org-level-1 ((t (:family "Serif" :bold t :foreground "#8b8bde" :height 1.38))))
  '(org-level-2 ((t (:family "Serif" :bold t :foreground "#abbeef" :height 1.20))))
  '(org-level-3 ((t (:family "Setif" :bold t :foreground "#adcbed" :height 1.10))))
  '(org-level-4 ((t (:bold nil :foreground "#af4f4b" :height 1.0))))
  '(org-document-title ((t (:family "Serif" :bold t :foreground "#cdcdcd" :height 1.80))))
  '(org-hide ((t (:foreground "#708090"))))
  '(org-date ((t (:underline t :foreground "#f0ad6d"))))
  '(org-footnote  ((t (:underline t :foreground "#ad600b"))))
  '(org-link ((t (:underline t :foreground "#708090" ))))
  '(org-special-keyword ((t (:foreground "#ad600b"))))
  '(org-verbatim ((t (:foreground "#eeeeec" :underline t :slant italic))))
  ;'(org-block ((t (:foreground "#708090"))))
  '(org-quote ((t (:inherit org-block :slant italic))))
  '(org-verse ((t (:inherit org-block :slant italic))))
  '(org-todo ((t (:bold t :foreground "#af4f4b"))))
  '(org-done ((t (:bold t :foreground "#409090"))))
  '(org-warning ((t (:underline t :foreground "#409090"))))
  '(org-agenda-structure ((t (:weight bold :foreground "#af4f4b"))))
  '(org-agenda-date ((t (:foreground "#409090"))))
  '(org-agenda-date-weekend ((t (:weight normal :foreground "8b8bcd"))))
  '(org-agenda-date-today ((t (:weight bold :foreground "#cd8b00"))))
  
  ;'(org-table ((t (:foreground "#ccccde"))))
  ;'(org-table-header ((t (:bold t :foreground "#ff0000"))))
  ;'(org-table-row ((t (:foreground "#aaaade"))))
)
;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'skel)

;;; skel-theme.el ends here
