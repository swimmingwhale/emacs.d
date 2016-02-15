;org-mode中文使用英文标点
(defun org-mode-my-init ()  
(define-key org-mode-map (kbd "×") (kbd "*"))  
(define-key org-mode-map (kbd "－") (kbd "-"))  
(define-key org-mode-map (kbd "，") (kbd ","))  
(define-key org-mode-map (kbd "。") (kbd "."))  
(define-key org-mode-map (kbd "（") (kbd "("))  
(define-key org-mode-map (kbd "）") (kbd ")"))  
) 

(add-hook 'org-mode-hook 'org-mode-my-init)
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil))) 
;org快捷键
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)


(provide 'init-org-mode)
