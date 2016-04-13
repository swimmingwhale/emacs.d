;自动换行
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil))) 
;org快捷键
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
;取消下划线转义
(setq org-export-with-sub-superscripts nil)
;定义任务状态
(setq org-todo-keywords
    '((sequence "TODO(t)" "|" "DONE(d!)" "DELETE")
     ))

(setq org-todo-keyword-faces '(("DELETE" . "yellow")))
(provide 'init-org-mode)
