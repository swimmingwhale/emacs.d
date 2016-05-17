;;自动换行
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil))) 
;;org快捷键
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
;;取消下划线转义
(setq org-export-with-sub-superscripts nil)
;;定义任务状态
(setq org-todo-keywords
      '((sequence "TODO(t)" "|" "DONE(d!)" "DELETE")
	))

(setq org-todo-keyword-faces '(("DELETE" . "yellow")))

;;publish-project
(setq org-publish-project-alist
      '(

	("blog-notes"
	 ;; Path to your org files.
	 :base-directory "~/work/blog/org/"
	 :base-extension "org"

	 ;; Path to your Jekyll project.
	 :publishing-directory "~/work/blog/_posts/"
	 :recursive t
	 :publishing-function org-html-publish-to-html
	 :headline-levels 4 
	 :html-extension "html"
	 :body-only t ;; Only export section between <body> </body>         :section-number nil
         :export-creator-info nil    ; Disable the inclusion of "Created by Org".
         :export-author-info nil     ; Disables the inclusion of "Author: Your Name".
         :table-of-contents nil      ; Set this to "t" if you want a table of contents.
	 )

	("blog-static"
	 :base-directory "~/work/blog/org/"
	 :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|php"
	 :publishing-directory "~/work/blog/_posts/"
	 :recursive t
	 :publishing-function org-publish-attachment
	 )
	
        ("doc-notes"
         :base-directory "~/work/qeebu_doc/lening/"
         :base-extension "org"
         :publishing-directory "~/work/qeebu_doc/lening/"
         :recursive t
         :publishing-function org-html-publish-to-html
         :headline-levels 4
         :section-number nil
         :org-html-preamble t
         :org-html-postamble t
         :auto-sitemap t    ; Generate sitemap.org automagically
         :sitemap-filemap "sitemap.org"    ; ... call it sitemap.org (it's the default)...
         :sitemap-title "Sitemap"    ; ... with title 'Sitemap'
         :export-creator-info nil    ; Disable the inclusion of "Created by Org".
         :export-author-info nil     ; Disables the inclusion of "Author: Your Name".
         :table-of-contents nil      ; Set this to "t" if you want a table of contents.
         :html-head "<link rel=\"stylesheet\" type=\"text/css\" href=\"worg.css\"/>"
         :html-preamble "<div id=\"menu\"><p><a href=\"sitemap.html\" >Home</a></p></div>"
         :html-postamble ""          ; puts disqus js code here for a comment region
         )
	

	("blog" :components ("blog-notes" "blog-static"))
	("doc" :components ("doc-notes"))

	))

(provide 'init-org-mode)
