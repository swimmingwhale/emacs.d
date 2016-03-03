(require 'dired-single)
(add-hook 'dired-load-hook
          (lambda ()
            (define-key dired-mode-map (kbd "RET") 'dired-single-buffer)
            (define-key dired-mode-map (kbd "^")
              (lambda ()
                (interactive)
                (dired-single-buffer "..")))
            (setq dired-single-use-magic-buffer t)
            (setq dired-single-magic-buffer-name "*dired*")))
(global-set-key (kbd "C-x d")
                'dired-single-magic-buffer)




(provide 'init-dired-single)
