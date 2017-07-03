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
							 ("helm" 
								(predicate string-match "Hmm" mode-name))
							 ("shell" (or 
												 (name . "^\\*shell\\*$")))))))
