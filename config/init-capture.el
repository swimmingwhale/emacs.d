(setq org-directory "folder")
(setq org-default-notes-file (concat org-directory "~/notes.org"))
(define-key global-map "\C-cc" 'org-capture)

(setq org-capture-templates
   '(("l" "灵感" entry (file+headline "~/写作创意.org" "创意")
          "* %?\n  %i\n  %a")
     ("j" "Journal" entry (file+datetree "~/journal.org")
          "* %?\n输入于： %U\n  %i\n  %a")))

(provide 'init-capture)
