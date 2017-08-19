;; Tabs to spaces
(global-set-key "\t" (lambda () (interactive) (insert-char 32 4)))


;; Toolbar
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)


;; Linum
(setq linum-format "%d")
(global-linum-mode 1)


;; Unicode
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)


;; Truncate
(set-default 'truncate-lines t)
(setq debug-on-error t)




;;highlight
(global-hl-line-mode)


;; Theme
(load-theme 'dracula t)

;; Highlight
(global-hl-line-mode )

;;
(powerline-default-theme)

;; sound off
(setq visible-bell 1)

;; (global-set-key (kbd "A-<down>") 'enlarge-window)
;; (global-set-key (kbd "A-<up>") 'shrink-window)
;; (global-set-key (kbd "A-<left>") 'enlarge-window-horizontally)
;; (global-set-key (kbd "A-<right>") 'shrink-window-horizontally)

;; Parenthesis
(setq show-paren-style 'expression)
(show-paren-mode 2)
(set-face-background 'show-paren-match (face-background 'default))
(set-face-foreground 'show-paren-match "#def")
(set-face-attribute 'show-paren-match nil :weight 'extra-bold)
