;; active Org-babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '(;; other Babel languages
   (plantuml . t)))

(setq org-plantuml-jar-path
      (expand-file-name "~/.emacs.d/package/plantuml.jar"))
(setq plantuml-jar-path
      (expand-file-name "~/.emacs.d/package/plantuml.jar"))

;;导出时不再询问
(defun my-org-confirm-babel-evaluate (lang body)
  (not (string= lang "plantuml")))  ; don't ask for ditaa
(setq org-confirm-babel-evaluate 'my-org-confirm-babel-evaluate)

(provide 'init-plantuml)
