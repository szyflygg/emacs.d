;;

;;加载模版
;;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;;(load-theme 'zenburn)

;;key bind
(setq mac-command-modifier 'meta) ; make cmd key do Meta

(define-key global-map [C-return] 'set-mark-command)
;;(define-key global-map [s-x] 'execute-extended-command


;;show
(tool-bar-mode 0) 
;;(menu-bar-mode 0) 
(scroll-bar-mode 0)


;;设置启动时窗口的长宽
(setq initial-frame-alist '((width . 120) (height . 40)))

;;minibuffer显示行号
(setq column-number-mode t)
(setq line-number-mode t)

;;关闭gnus启动时的画面
(setq gnus-inhibit-startup-message t)

;;关闭emacs启动时的画面
(setq inhibit-startup-message t)

;;窗口自动适应
;;(require 'golden-ratio)
;;(golden-ratio-mode 1)
;;(add-to-list 'window-size-change-functions 'golden-ratio)

;;elpy
;;(elpy-enable)

;;python autopep8
(setq py-autopep8-options '("--max-line-length=80"))


;;修改tab为4个空格
(setq-default indent-tabs-mode t)
(setq tab-width: 4)

;;template
;;(require 'template)

(add-hook 'python-mode-hook 'hs-minor-mode)

(set-default-font "-*-Menlo-normal-normal-normal-*-15-*-*-*-m-0-iso10646-1")

;;
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))


(require-package 'powerline)
(powerline-default-theme)

(defalias 'yes-or-no-p 'y-or-n-p)

(provide 'init-local)
