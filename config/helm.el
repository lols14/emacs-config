;;Helm
(require 'helm)
(require 'helm-config)


(define-key helm-etags-map (kbd "C-x M-.") 'helm-etags-select)

(define-key helm-map (kbd "M-k") 'helm-next-line)
(define-key helm-map (kbd "M-i") 'helm-previous-line)
(define-key helm-map (kbd "M-{") 'helm-next-source)
(define-key helm-map (kbd "M-}") 'helm-previous-source)
(define-key helm-find-files-map (kbd "M-i") 'helm-previous-line)
(define-key helm-find-files-map (kbd "C-l") 'helm-execute-persistent-action)
(define-key helm-find-files-map (kbd "C-j") 'helm-find-files-up-one-level)

(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(global-set-key (kbd "C-x M-.") #'helm-etags-select)
;;(bind-key* "M-." 'helm-etags-select)

(helm-mode 1)
