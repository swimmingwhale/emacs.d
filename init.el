(add-to-list 'load-path "~/.emacs.d/config/")
(add-to-list 'load-path "~/.emacs.d/package/")
;package
(require 'init-package)
;配置备份文件目录,启动最大化等基础配置
(require 'init-common)
;配置字体
(require 'init-font)
;php语法高亮
(require 'init-php-mode)
;记录关闭时的状态
;(require 'init-session)
;lisp开发环境
(require 'init-slime)
;皮肤
(require 'init-theme)
;配置org-mode
(require 'init-org-mode)
;输入提示
(require 'init-auto-complete)
;配置一些全局的快捷键
(require 'init-global-key)
;切换窗口和初始化时的窗口
(require 'init-windows)
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
(require 'init-graphviz-dot-mode)
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

