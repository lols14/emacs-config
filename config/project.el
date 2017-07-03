;;projectile
(setq projectile-indexing-method 'native)
(setq projectile-enable-caching t)

(projectile-mode)

(add-to-list 'projectile-globally-ignored-directories "node_modules" "bower_components")

;; (add-to-list 'projectile-globally-ignored-directories "node_modules")
;; (add-to-list 'projectile-globally-ignored-directories "bower_components")

;; (setq projectile-globally-ignored-files
;;       (append '(
;;                 "*.eot"
;;                 "*.svg"
;;                 "*~"
;;                 "*.png"
;;                 "*.ttf"
;;                 "*.woff"
;;                 "*.woff2")

;;               projectile-globally-ignored-files))



(helm-projectile-on)


(define-key projectile-mode-map [?\s-d] 'helm-projectile-find-dir)
(define-key projectile-mode-map [?\s-p] 'helm-projectile-switch-project)
(define-key projectile-mode-map [?\s-f] 'helm-projectile-find-file)

(define-key projectile-mode-map (kbd "<s-f2>") 'helm-projectile-switch-to-buffer)


(setq projectile-tags-command "ctags --exclude=@.gitignore  -Re -f \"%s\" %s")
(global-unset-key (kbd "M-."))
;;list all visited tags
;; (global-set-key "\M-*" 'helm-etags-plus-history)
;; ;;go back directly
;; (global-set-key "\M-," 'helm-etags-plus-history-go-back)
;; ;;go forward directly
;; (global-set-key "\M-/" 'helm-etags-plus-history-go-forward)
