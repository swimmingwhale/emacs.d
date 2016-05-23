;;; the following is only needed if you install org-page manually
(require 'org-page)
(setq op/repository-directory "~/test")
(setq op/site-domain "http://www.kuppobook.com/")
;;; for commenting, you can choose either disqus or duoshuo
(setq op/personal-disqus-shortname "your_disqus_shortname")
(setq op/personal-duoshuo-shortname "your_duoshuo_shortname")
;;; the configuration below are optional
(setq op/personal-google-analytics-id "your_google_analytics_id")
(setq op/theme 'mdo)
(provide 'init-org-page)
