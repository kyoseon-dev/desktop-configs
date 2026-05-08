(setq inhibit-startup-message t
      frame-resize-pixelwise t
      package-native-compile t)

;; Dont popup a warnings buffer for native-comp errors
(setq native-comp-async-report-warnings-errors 'silent)

(provide 'early-init)
