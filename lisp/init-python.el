;;;



(require-package 'pip-requirements)

;; (setq auto-mode-alist
;;       (append '(("SConstruct\\'" . python-mode)
;;                 ("SConscript\\'" . python-mode))
;;               auto-mode-alist))



(add-hook 'python-mode-hook 'ggtags-mode)
;; (when (maybe-require-package 'anaconda-mode)
;;     (after-load 'python
;;     (add-hook 'python-mode-hook 'anaconda-mode)
;;     (add-hook 'python-mode-hook 'anaconda-eldoc-mode))
;;     (when (maybe-require-package 'company-anaconda)
;;     (after-load 'company
;;       (add-hook 'python-mode-hook
;;                 (lambda () (sanityinc/local-push-company-backend 'company-anaconda))))))

(add-hook 'python-mode-hook 'jedi:setup)

(provide 'init-python)
