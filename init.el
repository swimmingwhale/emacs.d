(add-to-list 'load-path "~/.emacs.d/lisp/")



;设置默认字体

(set-default-font"-unknown-Ubuntu Mono-normal-normal-normal-*-25-*-*-*-m-0-iso10646-1")

; 设置默认tab宽度为4

(setq tab-width 4

indent-tabs-mode t

c-basic-offset 4)


; 按下C-x k立即关闭掉当前的buffer

(global-set-key (kbd "C-x k") 'kill-this-buffer)

;org-mode中文使用英文标点
(defun org-mode-my-init ()  
(define-key org-mode-map (kbd "×") (kbd "*"))  
(define-key org-mode-map (kbd "－") (kbd "-"))  
(define-key org-mode-map (kbd "，") (kbd ","))  
(define-key org-mode-map (kbd "。") (kbd "."))  
(define-key org-mode-map (kbd "（") (kbd "("))  
(define-key org-mode-map (kbd "）") (kbd ")"))  
) 

(add-hook 'org-mode-hook 'org-mode-my-init)
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil))) 
;org快捷键
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;加入主题

(require 'color-theme)

(color-theme-initialize)

(color-theme-classic)


;加入会话功能

(require 'session)

(add-hook 'after-init-hook 'session-initialize)

(load "desktop")

(desktop-save-mode)



;加入PHP语法高亮

(require 'php-mode)


;php-mode中文使用英文标点
(defun php-mode-my-init ()  
(define-key php-mode-map (kbd "×") (kbd "*"))  
(define-key php-mode-map (kbd "－") (kbd "-"))  
(define-key php-mode-map (kbd "，") (kbd ","))  
(define-key php-mode-map (kbd "。") (kbd "."))  
(define-key php-mode-map (kbd " ") (kbd " "))  
(define-key php-mode-map (kbd "；") (kbd ";"))  
) 

(add-hook 'php-mode-hook 'php-mode-my-init)

;; 去掉菜单栏,工具栏,滚动条

(tool-bar-mode 0)

(menu-bar-mode 0)

(scroll-bar-mode 0) 



;普通设置

(setq make-backup-files 0);取消定时备份
(setq backup-by-copying t);取消emacs修改文件先备份为~后缀文件

(fset 'yes-or-no-p 'y-or-n-p);以 y/n代表 yes/no

(column-number-mode t);显示列号

(show-paren-mode t);显示括号匹配

(setq mouse-yank-at-point t);支持中键粘贴

(setq frame-title-format '("" buffer-file-name "@emacs" ));在标题栏显示buffer名称

;;; Lisp (SLIME) interaction
(setq inferior-lisp-program "/usr/bin/clisp")
(add-to-list 'load-path "~/.slime")
(require 'slime)
(slime-setup)

(global-font-lock-mode t)
(show-paren-mode 1)
(add-hook 'lisp-mode-hook '(lambda ()
(local-set-key (kbd "RET") 'newline-and-indent)))



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


