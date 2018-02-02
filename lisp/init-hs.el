

(add-hook 'python-mode-hook 'hs-minor-mode)


;;(define-key global-map [C-S-s b] 'hs-show-block)
;;(define-key global-map [C-S-h l] 'hs-hide-level)
;;(define-key global-map [C-S-h b] 'hs-hide-block)

;;(global-set-key (kbd "S-s l") 'hs-show-level)
(global-set-key (kbd "C-S-s b") 'hs-show-block)
;;(global-set-key (kbd "S-h l") 'hs-hide-level)
;;(global-set-key (kbd "S-h b") 'hs-hide-block)

(provide 'init-hs)
