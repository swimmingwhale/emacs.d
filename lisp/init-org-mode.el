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

  ("org-ianbarton"
          ;; Path to your org files.
          :base-directory "/work/myproject/org/"
          :base-extension "org"

          ;; Path to your Jekyll project.
          :publishing-directory "/work/myproject/jekyll/"
          :recursive t
          :publishing-function org-html-publish-to-html
          :headline-levels 4 
          :html-extension "html"
          :body-only t ;; Only export section between <body> </body>
    )


    ("org-static-ian"
          :base-directory "/work/myproject/org/"
          :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|php"
          :publishing-directory "/work/project/"
          :recursive t
          :publishing-function org-publish-attachment)

    ("ian" :components ("org-ianbarton" "org-static-ian"))

))

(provide 'init-org-mode)
