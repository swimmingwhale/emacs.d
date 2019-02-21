(setenv "PATH" "/usr/local/bin:/Library/TeX/texbin/:$PATH" t)

;(eval-after-load "tex"
;  '(add-to-list 'TeX-command-list
;     		'("XeLaTeX" "xelatex -interaction=nonstopmode %s"
;		  TeX-run-command t t :help "Run xelatex") t))
(setq TeX-engine 'xetex)

(provide 'init-latex)
