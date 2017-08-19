(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (setq tide-tsserver-executable "node_modules/typescript/bin/tsserver")
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  (bind-key "M-." 'tide-jump-to-definition)
  (company-mode +1))

;; Aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; formats the buffer before saving
(add-hook 'before-save-hook 'tide-format-before-save)

(add-hook 'typescript-mode-hook #'setup-tide-mode)

(require 'ng2-mode)
