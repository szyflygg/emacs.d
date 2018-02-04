;;;

(add-hook 'python-mode-hook 'ggtags-mode)
(add-hook 'python-mode-hook 'jedi:setup)

(setq auto-mode-alist
      (append '(("SConstruct\\'" . python-mode)
                ("SConscript\\'" . python-mode))
              auto-mode-alist))

(require-package 'pip-requirements)

(provide 'init-python)
