(require 'window-numbering)
(window-numbering-mode 1)
;恢复到之前的窗口状态
(winner-mode 1)
;; copied from http://puntoblogspot.blogspot.com/2011/05/undo-layouts-in-emacs.html
(global-set-key (kbd "C-x 4 u") 'winner-undo)
(global-set-key (kbd "C-x 4 r") 'winner-redo)
(provide 'init-windows)
