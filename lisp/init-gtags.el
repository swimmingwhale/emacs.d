(require 'gtags)
;get into gtags-mode whenever you get into php-mode
(setq gtags-suggested-key-mapping t)
(setq php-mode-hook
      '(lambda ()
     (gtags-mode 1)))
(provide 'init-gtags)
