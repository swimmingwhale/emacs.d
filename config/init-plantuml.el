;; active Org-babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '(;; other Babel languages
   (plantuml . t)))

(setq org-plantuml-jar-path
      (expand-file-name "~/.emacs.d/package/plantuml.jar"))
(setq plantuml-jar-path
      (expand-file-name "~/.emacs.d/package/plantuml.jar"))

(provide 'init-plantuml)
