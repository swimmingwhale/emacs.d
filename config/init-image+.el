(eval-after-load 'image '(require 'image+))
(eval-after-load 'image+ '(imagex-global-sticky-mode 1))
(eval-after-load 'image+
  `(when (require 'hydra nil t)
     (defhydra imagex-sticky-binding (global-map "C-x C-l")
       "Manipulating Image"
       ("+" imagex-sticky-zoom-in "zoom in")
       ("-" imagex-sticky-zoom-out "zoom out")
       ("M" imagex-sticky-maximize "maximize")
       ("O" imagex-sticky-restore-original "restore original")
       ("S" imagex-sticky-save-image "save file")
       ("r" imagex-sticky-rotate-right "rotate right")
       ("l" imagex-sticky-rotate-left "rotate left"))))

(provide 'init-image+)
