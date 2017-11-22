
;;js2
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(setq js2-highlight-level 3)

;; Better imenu
(add-hook 'js2-mode-hook #'js2-imenu-extras-mode)

;; js2r
(add-hook 'js2-mode-hook #'js2-refactor-mode)
(js2r-add-keybindings-with-prefix "C-c C-m")


;; tern
(add-hook 'js2-mode-hook (lambda () (tern-mode t)))


;;beautify
;; (eval-after-load 'js2-mode
;;  '(add-hook 'js2-mode-hook
;;             (lambda ()
;;               (add-hook 'before-save-hook 'web-beautify-js-buffer t t))))

;; js-doc
(setq js-doc-mail-address "sergiypavlichenko@gmail.com"
      js-doc-author (format "Sergiy Pavlichenko <%s>" js-doc-mail-address))



;; automatically clean up bad whitespace
(setq whitespace-action '(auto-cleanup))
;; only show bad whitespace
(setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab))
