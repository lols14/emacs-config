;; Helm example keybinding

;; (defhydra helm-like-unite (:hint nil
;;                            :color pink)
;;   "
;; Nav ^^^^^^^^^        Mark ^^          Other ^^       Quit
;; ^^^^^^^^^^------------^^----------------^^----------------------
;; _K_ ^ ^ _k_ ^ ^     _m_ark           _v_iew         _i_: cancel
;; ^↕^ _h_ ^✜^ _l_     _t_oggle mark    _H_elp         _o_: quit
;; _J_ ^ ^ _j_ ^ ^     _U_nmark all     _d_elete
;; ^^^^^^^^^^                           _f_ollow: %(helm-attr 'follow)
;; "
;;   ;; arrows
;;   ("h" helm-beginning-of-buffer)
;;   ("j" helm-next-line)
;;   ("k" helm-previous-line)
;;   ("l" helm-end-of-buffer)
;;   ;; beginning/end
;;   ("g" helm-beginning-of-buffer)
;;   ("G" helm-end-of-buffer)
;;   ;; scroll
;;   ("K" helm-scroll-other-window-down)
;;   ("J" helm-scroll-other-window)
;;   ;; mark
;;   ("m" helm-toggle-visible-mark)
;;   ("t" helm-toggle-all-marks)
;;   ("U" helm-unmark-all)
;;   ;; exit
;;   ("<escape>" keyboard-escape-quit "" :exit t)
;;   ("o" keyboard-escape-quit :exit t)
;;   ("i" nil)
;;   ;; sources
;;   ("}" helm-next-source)
;;   ("{" helm-previous-source)
;;   ;; rest
;;   ("H" helm-help)
;;   ("v" helm-execute-persistent-action)
;;   ("d" helm-persistent-delete-marked)
;;   ("f" helm-follow-mode))
;; (define-key helm-map (kbd "<escape>") 'helm-like-unite/body)
;; (define-key helm-map (kbd "C-k") 'helm-like-unite/body)
;; (define-key helm-map (kbd "C-o") 'helm-like-unite/body)


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
