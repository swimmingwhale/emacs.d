
;;linux启动最大化

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

(provide 'init-linux-start-maximizing)
