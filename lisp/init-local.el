;;;

;;template
(require 'template)

;;加载模版
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(load-theme 'ample t)

;;key
(define-key global-map [C-return] 'set-mark-command)

;;show
(tool-bar-mode 0) 
;;(menu-bar-mode 0) 
(scroll-bar-mode 0)

(set-default-font "-*-Menlo-normal-normal-normal-*-15-*-*-*-m-0-iso10646-1")

;;path
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;;powerline
(require-package 'powerline)
(powerline-default-theme)

(defalias 'yes-or-no-p 'y-or-n-p)

;;python

(add-hook 'python-mode-hook 'ggtags-mode)

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)


(setq skeleton-pair t)
(local-set-key (kbd "[") 'skeleton-pair-insert-maybe)
(local-set-key (kbd "(") 'skeleton-pair-insert-maybe)
(local-set-key (kbd "{") 'skeleton-pair-insert-maybe)
(local-set-key (kbd "<") 'skeleton-pair-insert-maybe)


(setq column-number-mode t
      line-number-mode t
      gnus-inhibit-startup-message t
      inhibit-startup-message t
      initial-frame-alist '((width . 120) (height . 40))
      mac-command-modifier 'meta
      py-autopep8-options '("--max-line-length=80")
      tab-width: 4
)

(provide 'init-local)
