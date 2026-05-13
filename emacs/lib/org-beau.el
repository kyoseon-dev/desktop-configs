;; org-beau-mode.el --- A little beauty looks for Org -*- lexical-binding: t -*-

(defgroup org-beau nil
  "A little beauty looks for Org."
  :group 'org
  :prefix "org-beau-")

;;;###autoload
(define-minor-mode org-beau-mode
  "A little beauty looks for Org."
  :global nil
  :group 'org-beau
  :lighter " beau"
  (unless (derived-mode-p 'org-mode)
    (error "`org-modern-mode' should be enabled only in `org-mode'"))
  (cond
   (org-beau-mode)
   (t)
   )
  )

(provide 'org-beau)
