;; git说明文档地址 https://github.com/rejeep/git.el

(require 'git)

(setq kuppo/repository-directory "~/work/crm/")

(defun kuppo-push ()
  (interactive)
  (let ((git-repo kuppo/repository-directory))
    (message "kuppo-push") 
    (git-pull "origin" "master")
    (git-add)
    (if  (git-staged-files)
	(progn
	  (git-commit "add by kuppo")
	  (git-push "origin" "master")
	  (message "push finish")
	  )
      (message "no file has been changed"))
    )
  
  
  )

(provide 'kuppo-push)
