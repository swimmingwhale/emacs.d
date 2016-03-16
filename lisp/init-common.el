; 去掉菜单栏,工具栏,滚动条
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0) 
;将备份文件放到制定目录
(setq backup-directory-alist (quote (("." . "~/.backups"))))
;以 y/n代表 yes/no
(fset 'yes-or-no-p 'y-or-n-p)
;显示列号
(column-number-mode t)
;显示括号匹配
(show-paren-mode t)
;支持中键粘贴
(setq mouse-yank-at-point t)
;在标题栏显示buffer名称
(setq frame-title-format '("" buffer-file-name "@emacs" ))
; 设置默认tab宽度为4
(setq tab-width 4 indent-tabs-mode t c-basic-offset 4)
; 按下C-x k立即关闭掉当前的buffer
(global-set-key (kbd "C-x k") 'kill-this-buffer)
;去掉欢迎界面
 (setq inhibit-startup-message t)

;启动最大化

(defun my-maximized-horz ()

  (interactive)

  (x-send-client-message

   nil 0 nil "_NET_WM_STATE" 32

   '(1 "_NET_WM_STATE_MAXIMIZED_HORZ" 0)))

(defun my-maximized-vert ()

  (interactive)

  (x-send-client-message

   nil 0 nil "_NET_WM_STATE" 32

   '(1 "_NET_WM_STATE_MAXIMIZED_VERT" 0)))

(defun my-maximized ()

  (interactive)

  (x-send-client-message

   nil 0 nil "_NET_WM_STATE" 32

   '(1 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))

  (interactive)

  (x-send-client-message

   nil 0 nil "_NET_WM_STATE" 32

   '(1 "_NET_WM_STATE_MAXIMIZED_VERT" 0)))

(my-maximized)


(provide 'init-common)
