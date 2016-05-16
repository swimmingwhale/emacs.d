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

;publish-project
(setq org-publish-project-alist
      '(

  ("blog-notes"
          ;; Path to your org files.
          :base-directory "/work/blog/org/"
          :base-extension "org"

          ;; Path to your Jekyll project.
          :publishing-directory "/work/blog/_posts/"
          :recursive t
          :publishing-function org-html-publish-to-html
          :headline-levels 4 
          :html-extension "html"
          :body-only t ;; Only export section between <body> </body>
    )

    ("blog-static"
          :base-directory "/work/blog/org/"
          :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|php"
          :publishing-directory "/work/blog/_posts/"
          :recursive t
          :publishing-function org-publish-attachment)

    ("blog" :components ("blog-notes" "blog-static"))

))

(provide 'init-org-mode)
