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



(provide 'init-php-mode)
