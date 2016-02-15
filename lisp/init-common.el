; 去掉菜单栏,工具栏,滚动条
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0) 
(setq make-backup-files 0);取消定时备份
(setq backup-by-copying t);取消emacs修改文件先备份为~后缀文件
(fset 'yes-or-no-p 'y-or-n-p);以 y/n代表 yes/no
(column-number-mode t);显示列号
(show-paren-mode t);显示括号匹配
(setq mouse-yank-at-point t);支持中键粘贴
(setq frame-title-format '("" buffer-file-name "@emacs" ));在标题栏显示buffer名称
; 设置默认tab宽度为4
(setq tab-width 4 indent-tabs-mode t c-basic-offset 4)
; 按下C-x k立即关闭掉当前的buffer
(global-set-key (kbd "C-x k") 'kill-this-buffer)



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
