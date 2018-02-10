

(add-hook 'python-mode-hook 'hs-minor-mode)


(global-set-key (kbd "C-{") 'hs-hide-level)
(global-set-key (kbd "C-}") 'hs-show-block)


(provide 'init-hs)
