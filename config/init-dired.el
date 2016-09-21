;目录在前
(defun sof/dired-sort ()
  "Dired sort hook to list directories first."
  (save-excursion
    (let (buffer-read-only)
      (forward-line 2) ;; beyond dir. header
      (sort-regexp-fields t "^.*$" "[ ]*." (point) (point-max))))
  (and (featurep 'xemacs)
       (fboundp 'dired-insert-set-properties)
       (dired-insert-set-properties (point-min) (point-max)))
  (set-buffer-modified-p nil))
(add-hook 'dired-after-readin-hook 'sof/dired-sort)


;单一dired
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

;; C-x C-j 打开当前文件的目录
(global-set-key (kbd "C-x C-j")
                (lambda ()
                  (interactive)
                  (if (buffer-file-name)
                      (dired default-directory))))


(provide 'init-dired)
