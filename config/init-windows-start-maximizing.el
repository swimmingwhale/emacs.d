;;windows中启动最大化
(defun w32-restore-frame () 
    "Restore a minimized frame" 
     (interactive) 
     (w32-send-sys-command 61728))
(defun w32-maximize-frame () 
    "Maximize the current frame" 
     (interactive) 
     ;;(w32-send-sys-command 61488))
     (w32-send-sys-command #xf030))
(w32-maximize-frame)


(provide 'init-windows-start-maximizing)
