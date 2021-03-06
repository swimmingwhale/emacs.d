; Lisp (SLIME) interaction
(setq inferior-lisp-program "/usr/bin/clisp")
(add-to-list 'load-path "~/.slime")
(require 'slime)
(slime-setup)

(global-font-lock-mode t)
(show-paren-mode 1)
(add-hook 'lisp-mode-hook '(lambda ()
(local-set-key (kbd "RET") 'newline-and-indent)))



(provide 'init-slime)
