;;;

(require-package 'jedi)

(setq jedi:complete-on-dot t)
(setq jedi:server-args '("--log-traceback"))

(provide 'init-jedi)
