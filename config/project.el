;;projectile

(projectile-mode)
(setq projectile-indexing-method 'native)
(setq projectile-enable-caching t)

;;(add-hook 'js2-mode 'projectile-mode)

(add-to-list 'projectile-globally-ignored-directories "node_modules")
(add-to-list 'projectile-globally-ignored-directories "bower_components")
(add-to-list 'projectile-globally-ignored-directories "bower_components")

(setq projectile-globally-ignored-files
      (append '(
            "*.eot"
            "*.svg"
            "*~"
			"*.png"
			"*.ttf"
			"*.woff"
			"*.woff2"
            )
          projectile-globally-ignored-files))

;; (setq projectile-ignored-files
;; 	  (append projectile-ignored-files
;; 			  '(".DS_Store"
;; 				".gitmodules"
;; 				".gitignore"
;; 				"node_modules/"
;; 				"bower_components/")))

 (add-hook 'projectile-mode-hook
           (lambda ()
		   	(bind-key*  "M-i" 'helm-next-line)
			(bind-key* "M-k" 'helm-previous-line)
 			;;(bind-keiy  "<f3>" 'helm-projectile)
 			(bind-key* "M-." 'helm-etags-select)))


(helm-projectile-on)



(bind-key* "M-." 'helm-etags-select)

