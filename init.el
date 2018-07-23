(require 'package)

(add-to-list 'package-archives 
	     '("melpa" . "http://elpa.emacs-china.org/melpa/"))

(add-to-list 'package-archives
             '("melpa-stable" . "http://elpa.emacs-china.org/melpa-stable/"))

(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                         ("melpa" . "http://elpa.emacs-china.org/melpa/")))

(when (not package-archive-contents)
    (package-refresh-contents))
(package-initialize)

;;(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))


(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(require 'init-elpa)
(require 'init-utils)
(require 'init-site-lisp)

(require 'init-smex)

(require-package 'diminish)

;;----------------------------------------------------------------------------
;; Allow users to provide an optional "init-local" containing personal settings
;;----------------------------------------------------------------------------


(require 'init-flycheck)
;;(require 'init-nyan)
(require 'init-windows)
(require 'init-ivy)
;;(require 'init-company)
(require 'init-which-key)
(require 'init-hs)
(require 'init-jedi)
(require 'init-sessions)

;;-------
;; editing
;;-------
(require 'init-editing-utils)


;; local
(require 'init-local)

;;----
;; coding
;;----
(require 'init-python)
;;(require 'init-eclim)

(provide 'init)
