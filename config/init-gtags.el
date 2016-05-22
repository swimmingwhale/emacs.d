(autoload 'gtags-mode "gtags" "" t)
(setq php-mode-hook
      '(lambda ()
     (gtags-mode 1)))
(setq gtags-suggested-key-mapping t)
(provide 'init-gtags)
