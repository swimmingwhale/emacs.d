;-------------------------------------------------------------------------------
; ******* package management config *******
;        Author:  Kelvin Hu
;       Created:  07/07/2013
; Last Modified:  03/25/2015
;-------------------------------------------------------------------------------

;; use package.el to manage packages rather than manual efforts
(require 'package)
(add-to-list 'package-archives
'("popkit" . "http://elpa.popkit.org/packages/"))
(when (< emacs-major-version 24)
;; For important compatibility libraries like cl-lib
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives
             '("SC" . "http://joseito.republika.pl/sunrise-commander/") t)


(defvar kh/depended-packages
  '(auto-complete
    popup
    autopair
    color-theme
    dired-single
    emmet-mode
    git-gutter
    slime
    ido
    org
    org-page
    php-mode
    web-mode
    session
    smex
    window-numbering
    yasnippet)
  "Packages depended by my emacs configuration.")

(defun kh/get-uninstalled-packages ()
  (let (ret)
    (dolist (p kh/depended-packages)
      (when (not (package-installed-p p))
        (add-to-list 'ret p)))
    ret))

(defun kh/install-packages ()
  (let ((u-packs (kh/get-uninstalled-packages)))
    (if (not u-packs)
        (message "All required packages are installed.")
      (progn
        (message "Retrieving latest packages...")
        (package-refresh-contents)
        (message "Done.")
        (dolist (p u-packs)
          (message "Install package: %s" (symbol-name p))
          (package-install p))))))

(kh/install-packages)


(provide 'init-package)
