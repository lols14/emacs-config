;; Navigation
(global-unset-key (kbd "C-k"))

(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "M-k") 'next-line)
(global-set-key (kbd "M-i") 'previous-line)
(global-set-key (kbd "M-j") 'backward-char)
(global-set-key (kbd "M-l") 'forward-char)
(global-set-key (kbd "C-M-k") 'forward-paragraph)
(global-set-key (kbd "C-M-i") 'backward-paragraph)
(global-set-key (kbd "C-M-l") 'right-word)
(global-set-key (kbd "C-M-j") 'left-word)
(global-set-key (kbd "M-d") 'backward-delete-char-untabify)
(global-set-key (kbd "M-f") 'delete-forward-char)


(defun move-region (start end n)
  "Move the current region up or down by N lines."
  (interactive "r\np")
  (let ((line-text (delete-and-extract-region start end)))
    (forward-line n)
    (let ((start (point)))
      (insert line-text)
      (setq deactivate-mark nil)
      (set-mark start))))

(defun move-region-up (start end n)
  "Move the current line up by N lines."
  (interactive "r\np")
  (move-region start end (if (null n) -1 (- n))))

(defun move-region-down (start end n)
  "Move the current line down by N lines."
  (interactive "r\np")
  (move-region start end (if (null n) 1 n)))



;;(global-set-key (kbd "<f1>") 'execute-extended-command)
;;(global-set-key (kbd "C-h") 'move-end-of-line)
;;(global-set-key (kbd "M-h") 'move-beginning-of-line)
(global-set-key (kbd "M-<up>") 'move-region-up)
(global-set-key (kbd "M-<down>") 'move-region-down)


;; Align your code in a pretty way.
(global-set-key (kbd "C-x \\") 'align-regexp)


;; Font size
(define-key global-map (kbd "C-=") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

(global-set-key (kbd "M-SPC") 'set-mark-command)


;; Jump to a definition in the current file. (This is awesome.)
;;(global-set-key (kbd "C-x C-i") 'ido-imenu)

(when (require 'redo nil 'noerror)
    (global-set-key (kbd "C-S-z") 'redo))



;; emacs-lisp-mode
(add-hook 'emacs-lisp-mode-hook
          (lambda () (local-set-key (kbd "C-M-i") 'backward-paragraph)))
