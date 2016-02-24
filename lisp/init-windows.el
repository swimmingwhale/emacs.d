;window-number模式
(require 'window-numbering)
(window-numbering-mode 1)
(winner-mode 1)

;恢复到之前的窗口状态
(global-set-key (kbd "C-x 4 u") 'winner-undo)
(global-set-key (kbd "C-x 4 r") 'winner-redo)

;三窗口模式
 (defun split-window-4() 
 "Splite window into 4 sub-window"
 (interactive) 
 (if (= 1 (length (window-list))) 
     (progn (split-window-vertically) 
        (split-window-horizontally) 
        ) 
   ) 
 ) 
(global-set-key (kbd "C-x 4") 'split-window-4)

(provide 'init-windows)
