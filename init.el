;;'t delete this line.  If you don't want it,
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
	(helm-projectile projectile use-package web-beautify xref-js2 json-mode rainbow-mode js-doc js2-refactor auto-complete ac-js2 indium desktop+ string-inflection multiple-cursors sublime-themes smex all-the-icons neotree)))
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load "~/.emacs.d/config/bindings.el")
(load "~/.emacs.d/config/desktop.el")
(load "~/.emacs.d/config/js.el")
(load "~/.emacs.d/config/project.el")

;; Unicode
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

;; Truncate
(set-default 'truncate-lines t)
(setq debug-on-error t)

;; Autosave
(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files

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


(global-set-key (kbd "C-c i") 'string-inflection-cycle)
(global-set-key (kbd "C-c C") 'string-inflection-camelcase)        ;; Force to CamelCase
(global-set-key (kbd "C-c L") 'string-inflection-lower-camelcase)  ;; Force to lowerCamelCase
(global-set-key (kbd "C-c J") 'string-inflection-java-style-cycle) ;; Cycle through Java styles
(global-set-key (kbd "M-x") 'smex)


;; Theme
(load-theme 'brin t)

;; NeoTree
(global-set-key [f8] 'neotree-toggle)

(setq doom-neotree-enable-file-icons t)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))


;; Ibuffer
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

;;highlight
(global-hl-line-mode 1)


;; ac
(require 'auto-complete-config)
(ac-config-default)

;; yas
;;https://github.com/AndreaCrotti/yasnippet-snippets

(add-to-list 'yas-snippet-dirs "~/.emacs.d/snippets/")
(yas-global-mode t)
