
;;----------------------------------------------------------------------------
;; Some basic preferences
;;----------------------------------------------------------------------------
(setq-default
 blink-cursor-interval 0.4
 bookmark-default-file (expand-file-name ".bookmarks.el" user-emacs-directory)
 buffers-menu-max-size 30
 case-fold-search t
 column-number-mode t
 delete-selection-mode t
 ediff-split-window-function 'split-window-horizontally
 ediff-window-setup-function 'ediff-setup-windows-plain
 indent-tabs-mode nil
 make-backup-files nil
 mouse-yank-at-point t
 save-interprogram-paste-before-kill t
 scroll-preserve-screen-position 'always
 set-mark-command-repeat-pop t
 tooltip-delay 1.5
 truncate-lines nil
 truncate-partial-width-windows nil
)

(setq column-number-mode t
      line-number-mode t
      gnus-inhibit-startup-message t
      inhibit-startup-message t
      initial-frame-alist '((width . 120) (height . 40))
      mac-command-modifier 'meta
      py-autopep8-options '("--max-line-length=80")
)

;;修改tab为4个空格
(setq-default indent-tabs-mode t)
(setq tab-width: 4)

;; 切换buffer后，立即刷新
(defadvice switch-to-buffer (after revert-buffer-now activate)
  (if (eq major-mode 'dired-mode)
      (revert-buffer)))

(provide 'init-editing-utils)
