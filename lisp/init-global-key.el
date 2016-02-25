global-set-key (kbd "C-c z") 'shell) 
(global-set-key (kbd "<f10>") 'rename-buffer)

;中文模式使用英文标点

(global-set-key (kbd "～") (kbd "~"))  
(global-set-key (kbd "！") (kbd "!"))
(global-set-key (kbd "￥") (kbd "$"))
(global-set-key (kbd "×") (kbd "*"))  
(global-set-key (kbd "（") (kbd "("))  
(global-set-key (kbd "）") (kbd ")"))  
(global-set-key (kbd "【") (kbd "["))
(global-set-key (kbd "】") (kbd "]"))
(global-set-key (kbd "：") (kbd ":"))
(global-set-key (kbd "；") (kbd ";"))
(global-set-key (kbd "《") (kbd "<"))
(global-set-key (kbd "》") (kbd ">"))
(global-set-key (kbd "，") (kbd ","))  
(global-set-key (kbd "。") (kbd "."))  
(global-set-key (kbd "？") (kbd "?"))  

(provide 'init-global-key)
