
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/config/")
(add-to-list 'load-path "~/.emacs.d/package/")
;package
(require 'init-package)
;配置备份文件目录,启动最大化等基础配置
(require 'init-common)
;linux中启动最大化
;(require 'init-linux-start-maximizing)
;Mac中启动最大化
;(require 'init-mac-start-maximizing)
;windows中启动最大化
;(require 'init-windows-start-maximizing)
;配置字体
(require 'init-font)
;php语法高亮
(require 'init-php-mode)
;记录关闭时的状态
;(require 'init-session)
;lisp开发环境
;(require 'init-slime)
;皮肤
(require 'init-theme)
;配置org-mode
(require 'init-org-mode)
;输入提示
(require 'init-auto-complete)
;配置一些全局的快捷键
(require 'init-global-key)
;切换窗口和初始化时的窗口
;(require 'init-windows)
;自动输入成对括号
(require 'init-autopair)
;自定义代码片段,便捷输入
(require 'init-yasnippet)
;编辑html和js的mode
(require 'init-web-mode)
;列模式
(require 'init-cua-mode)
;输入命令会有提示
(require 'init-smex)
;配置dired模式
(require 'init-dired)
;配置dired除去隐藏文件
(require 'init-dired-x)
;前段代码的快速编写
(require 'init-emmet)
;会在minbuffer匹配出待选的文件名
(require 'init-ido)
;找寻函数
(require 'init-gtags)
;很方便的记录灵感
;(require 'init-capture)
;显示与上次commit的变化
(require 'init-git-gutter)
;org-page
(require 'init-org-page)
;语法检查
(require 'init-flymake-php)
;画思维导图的
;(require 'init-graphviz-dot-mode)
;image的扩展
;(require 'init-image+)
;plantuml
(require 'init-plantuml)
;撤销与反撤销
(require 'init-undo-tree)
;光标跳到某个单词处
(require 'init-ace-jump-mode)
;模板解析的mode,org-page的html模板就用的它解析的
;(require 'init-mustache-mode)
;交互两个窗口的buffer
(require 'init-buffer-move)
;520-mode
(require 'init-520-mode)
;git
;(require 'init-git)
;kuppo-push
(require 'init-kuppo-push)
;Latex
(require 'init-latex)
(setq preview-gs-command "/usr/local/bin/gs")

;;以下为使用编辑器gui配置后自动添加的
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-command-style
   (quote
    (("" "%(PDF)%(latex) %(file-line-error) %(extraopts) %S%(PDFout)"))))
 '(TeX-command-list
   (quote
    (("xlatex" "%`xelatex%(mode)% %t" TeX-run-TeX nil t)
     ("TeX" "%(PDF)%(tex) %(file-line-error) %`%(extraopts) %S%(PDFout)%(mode)%' %t" TeX-run-TeX nil
      (plain-tex-mode texinfo-mode ams-tex-mode)
      :help "Run plain TeX")
     ("LaTeX" "%`%l%(mode)%' %T" TeX-run-TeX nil
      (latex-mode doctex-mode)
      :help "Run LaTeX")
     ("Makeinfo" "makeinfo %(extraopts) %t" TeX-run-compile nil
      (texinfo-mode)
      :help "Run Makeinfo with Info output")
     ("Makeinfo HTML" "makeinfo %(extraopts) --html %t" TeX-run-compile nil
      (texinfo-mode)
      :help "Run Makeinfo with HTML output")
     ("AmSTeX" "amstex %(PDFout) %`%(extraopts) %S%(mode)%' %t" TeX-run-TeX nil
      (ams-tex-mode)
      :help "Run AMSTeX")
     ("ConTeXt" "%(cntxcom) --once --texutil %(extraopts) %(execopts)%t" TeX-run-TeX nil
      (context-mode)
      :help "Run ConTeXt once")
     ("ConTeXt Full" "%(cntxcom) %(extraopts) %(execopts)%t" TeX-run-TeX nil
      (context-mode)
      :help "Run ConTeXt until completion")
     ("BibTeX" "bibtex %s" TeX-run-BibTeX nil t :help "Run BibTeX")
     ("Biber" "biber %s" TeX-run-Biber nil t :help "Run Biber")
     ("View" "%V" TeX-run-discard-or-function t t :help "Run Viewer")
     ("Print" "%p" TeX-run-command t t :help "Print the file")
     ("Queue" "%q" TeX-run-background nil t :help "View the printer queue" :visible TeX-queue-command)
     ("File" "%(o?)dvips %d -o %f " TeX-run-dvips t t :help "Generate PostScript file")
     ("Dvips" "%(o?)dvips %d -o %f " TeX-run-dvips nil t :help "Convert DVI file to PostScript")
     ("Dvipdfmx" "dvipdfmx %d" TeX-run-dvipdfmx nil t :help "Convert DVI file to PDF with dvipdfmx")
     ("Ps2pdf" "ps2pdf %f" TeX-run-ps2pdf nil t :help "Convert PostScript file to PDF")
     ("Glossaries" "makeglossaries %s" TeX-run-command nil t :help "Run makeglossaries to create glossary file")
     ("Index" "makeindex %s" TeX-run-index nil t :help "Run makeindex to create index file")
     ("upMendex" "upmendex %s" TeX-run-index t t :help "Run upmendex to create index file")
     ("Xindy" "texindy %s" TeX-run-command nil t :help "Run xindy to create index file")
     ("Check" "lacheck %s" TeX-run-compile nil
      (latex-mode)
      :help "Check LaTeX file for correctness")
     ("ChkTeX" "chktex -v6 %s" TeX-run-compile nil
      (latex-mode)
      :help "Check LaTeX file for common mistakes")
     ("Spell" "(TeX-ispell-document \"\")" TeX-run-function nil t :help "Spell-check the document")
     ("Clean" "TeX-clean" TeX-run-function nil t :help "Delete generated intermediate files")
     ("Clean All" "(TeX-clean t)" TeX-run-function nil t :help "Delete generated intermediate and output files")
     ("Other" "" TeX-run-command t t :help "Run an arbitrary command")
     ("XeLaTeX" "xelatex -interaction=nonstopmode %s" TeX-run-command t t :help "Run xelatex"))))
 '(package-selected-packages
   (quote
    (auctex php-mode yasnippet window-numbering web-mode undo-tree smex session plantuml-mode org-page macrostep image+ git-gutter ggtags flymake-php emmet-mode dired-single color-theme buffer-move autopair auto-complete ace-jump-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
