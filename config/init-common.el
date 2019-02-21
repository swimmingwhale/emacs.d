;;去掉菜单栏,工具栏,滚动条
(tool-bar-mode 0)
;(menu-bar-mode 0)
(scroll-bar-mode 0) 
;;将备份文件放到制定目录
(setq backup-directory-alist (quote (("." . "~/.backups"))))
;;以 y/n代表 yes/no
(fset 'yes-or-no-p 'y-or-n-p)
;;显示列号
(column-number-mode t)
;;显示括号匹配
(show-paren-mode t)
;;寻找匹配的括号
(define-key key-translation-map (kbd "C-]") (kbd "C-M-n"))
(define-key key-translation-map (kbd "C-[") (kbd "C-M-b"))
;;支持中键粘贴
(setq mouse-yank-at-point t)
;;在标题栏显示buffer名称
(setq frame-title-format '("" buffer-file-name "@emacs" ))
;;设置默认tab宽度为4
(setq tab-width 4 indent-tabs-mode t c-basic-offset 4)
;; 按下C-x k立即关闭掉当前的buffer
(global-set-key (kbd "C-x k") 'kill-this-buffer)
;;去掉欢迎界面
(setq inhibit-startup-message t)

(defun indent-buffer ()
"Indent the whole buffer."
(interactive)
(save-excursion
  (indent-region (point-min) (point-max) nil)))




(provide 'init-common)
