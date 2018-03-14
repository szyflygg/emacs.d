;;;

;;template
(require 'template)

;;加载模版
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(load-theme 'ample t)

;;show
(tool-bar-mode 0) 
;;(menu-bar-mode 0) 
(scroll-bar-mode 0)

(set-default-font "-*-Menlo-normal-normal-normal-*-15-*-*-*-m-0-iso10646-1")

;; 加载本地环境变量
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;;powerline
;;(require-package 'powerline)
;;(powerline-default-theme)

;; 改为y n
(defalias 'yes-or-no-p 'y-or-n-p)

;;python

(add-hook 'python-mode-hook 'ggtags-mode)

;;(add-hook 'python-mode-hook 'jedi:setup)
;;(setq jedi:complete-on-dot t)


;; 自动补全符号
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

;;(setq mode-line-format nil)
;;(setq-default mode-line-format nil) 


;; 修改选中区域背景色
(set-face-attribute 'region nil :background "#CDBA96")


;; 保存后更新ggtags

(add-hook 'after-save-hook 'ggtags-update-tags)

(provide 'init-local)
