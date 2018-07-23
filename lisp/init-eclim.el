;;;

(require 'eclim)

;;(setq eclimd-autostart t)

;; regular auto-complete initialization
(require 'auto-complete-config)
(ac-config-default)

;; add the emacs-eclim source
(require 'ac-emacs-eclim-source)
(ac-emacs-eclim-config)

(custom-set-variables
  '(eclim-executable "/Users/shangzhanyu/.p2/pool/plugins/org.eclim_2.7.2/bin/eclim"))

(defun java-mode-hook ()
    (eclim-mode t))

(add-hook 'java-mode-hook 'java-mode-hook)

(provide 'init-eclim)

