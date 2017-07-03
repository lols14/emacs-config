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


;; Parenthesis
(require 'paren)
(setq show-paren-style 'expression)
(show-paren-mode 2)


;;highlight
(global-hl-line-mode)


;; (defun initColors ()
;;    (let ((background "#2b303b")
;; 		 (text  "#c0c5ce"))

;; 	 (set-face-background 'show-paren-match-face text)
;; 	 (set-face-foreground 'show-paren-match-face background) 
;; 	 (set-face-background 'hl-line text)
;; 	 (set-face-foreground 'hl-line background) 

;; 	)
;;)


;;(initColors)
;; Theme
(load-theme 'brin t)

;;highlight
(global-hl-line-mode 1)

;;
(powerline-default-theme)

;; sound off
(setq visible-bell 1)

;; (global-set-key (kbd "A-<down>") 'enlarge-window)
;; (global-set-key (kbd "A-<up>") 'shrink-window)
;; (global-set-key (kbd "A-<left>") 'enlarge-window-horizontally)
;; (global-set-key (kbd "A-<right>") 'shrink-window-horizontally)
