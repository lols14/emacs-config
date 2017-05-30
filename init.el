;; This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.


(require 'package)

(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
						 ("ELPA" . "http://tromey.com/elpa/")
						 ("melpa" . "https://melpa.org/packages/")))

(package-initialize)
		
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks")
 '(package-selected-packages
   (quote
	(js2-refactor auto-complete ac-js2 indium desktop+ string-inflection multiple-cursors sublime-themes smex all-the-icons neotree)))
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load "~/.emacs.d/config/bindings.el")
(load "~/.emacs.d/config/desktop.el")

;; Unicode
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

;; Truncate
(set-default 'truncate-lines t)
(setq debug-on-error t)

;; Autosave
(setq backup-inhibited t)
(setq auto-save-default nil)

;; tabs
(defun my-insert-tab-char ()
  "Insert a tab char. (ASCII 9, \t)"
  (interactive)
  (insert "\t"))

(global-set-key (kbd "TAB") 'my-insert-tab-char)
(setq-default tab-width 4)
(setq tab-width 4)


;; Toolbar
(menu-bar-mode -1)
(tool-bar-mode -1)


;; Parenthesis
(require 'paren)
(setq show-paren-style 'expression)
(show-paren-mode 2)
(set-face-background 'show-paren-match-face "teal")

;; Linum
(setq linum-format "%d")
(global-linum-mode 1)
	
;;ido
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)

;;Multiple cursors
(require 'multiple-cursors)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
;;(global-set-key (kbd "C-c m c") 'mc/edit-lines)


(require 'string-inflection)
(global-set-key (kbd "C-c i") 'string-inflection-cycle)
(global-set-key (kbd "C-c C") 'string-inflection-camelcase)        ;; Force to CamelCase
(global-set-key (kbd "C-c L") 'string-inflection-lower-camelcase)  ;; Force to lowerCamelCase
(global-set-key (kbd "C-c J") 'string-inflection-java-style-cycle) ;; Cycle through Java styles

(global-set-key (kbd "M-x") 'smex)


;; Theme
(load-theme 'brin t)

;; NeoTree
(require 'neotree)
(require 'all-the-icons)
(global-set-key [f8] 'neotree-toggle)
(setq-default neo-smart-open t)
(setq doom-neotree-enable-file-icons t)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

;;smex
;; Ibuffer
(require 'ibuf-ext)
(global-set-key (kbd "<f2>") 'ibuffer)

(add-hook 'ibuffer-mode-hook
          (lambda ()
            (ibuffer-switch-to-saved-filter-groups "default")))

(setq ibuffer-saved-filter-groups
      (quote (("default"
               ("dired" (mode . dired-mode))
               ("planner" (or
                           (name . "^\\*Calendar\\*$")
                           (name . "^diary$")
                           (mode . muse-mode)))
               ("emacs" (or
                         (name . "^\\*scratch\\*$")
                         (name . "^\\*Messages\\*$")))
               ("gnus" (or
                        (mode . message-mode)
                        (mode . bbdb-mode)
                        (mode . mail-mode)
                        (mode . gnus-group-mode)
                        (mode . gnus-summary-mode)
                        (mode . gnus-article-mode)
                        (name . "^\\.bbdb$")
                        (name . "^\\.newsrc-dribble")))))))

;; ac
(require 'auto-complete-config)
(ac-config-default)


(require 'paren)
;; js
(require 'js2-refactor)
(add-to-list 'auto-mode-alist '("\\.json$" . js-mode))
(add-hook 'js-mode-hook 'js2-minor-mode)
(add-hook 'js2-mode-hook 'js2-refactor-mode)
(add-hook 'js2-mode-hook 'ac-js2-mode)
(setq js2-highlight-level 3)

(js2r-add-keybindings-with-prefix "C-c C-n")
