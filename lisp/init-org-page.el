;;; the following is only needed if you install org-page manually
(add-to-list 'load-path "~/.emacs.d/package/org-page")
(require 'org-page)
(setq op/repository-directory "~/org")
(setq op/site-domain "http://www.kuppobook.com/")
;;; for commenting, you can choose either disqus or duoshuo
(setq op/personal-disqus-shortname "your_disqus_shortname")
(setq op/personal-duoshuo-shortname "your_duoshuo_shortname")
;;; the configuration below are optional
(setq op/personal-google-analytics-id "your_google_analytics_id")

(provide 'init-org-page)
