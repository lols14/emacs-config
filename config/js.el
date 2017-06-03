;; js
(setenv "PATH" (concat (getenv "PATH") ":/home/sp/.nvm/versions/node/v8.0.0/bin"))
(setq exec-path (append exec-path '("/home/sp/.nvm/versions/node/v8.0.0/bin")))

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

(eval-after-load 'tern
 '(progn
  	(require 'tern-auto-complete)
  	(tern-ac-setup)))


;;beautify
(eval-after-load 'js2-mode
  '(add-hook 'js2-mode-hook
             (lambda ()
               (add-hook 'before-save-hook 'web-beautify-js-buffer t t))))

;; js-doc
(setq js-doc-mail-address "sergiypavlichenko@gmail.com"
       js-doc-author (format "Sergiy Pavlichenko <%s>" js-doc-mail-address))


