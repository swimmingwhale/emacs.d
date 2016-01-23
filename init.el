(add-to-list 'load-path "~/.emacs.d/lisp/")



;设置默认字体

(set-default-font"-unknown-Ubuntu Mono-normal-normal-normal-*-25-*-*-*-m-0-iso10646-1")



;加入主题

(require 'color-theme)

(color-theme-initialize)

(color-theme-charcoal-black)



;加入会话功能

(require 'session)

(add-hook 'after-init-hook 'session-initialize)

(load "desktop")

(desktop-save-mode)



;加入PHP语法高亮

(require 'php-mode)



;; 去掉菜单栏,工具栏,滚动条

(tool-bar-mode 0)

(menu-bar-mode 0)

(scroll-bar-mode 0) 



;普通设置

(setq make-backup-files 0);不产生备份文件

(fset 'yes-or-no-p 'y-or-n-p);以 y/n代表 yes/no

(column-number-mode t);显示列号

(show-paren-mode t);显示括号匹配

(setq mouse-yank-at-point t);支持中键粘贴

(setq frame-title-format '("" buffer-file-name "@emacs" ));在标题栏显示buffer名称



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
