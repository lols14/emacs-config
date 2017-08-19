;; Navigation
(global-unset-key (kbd "C-k"))
(global-unset-key (kbd "M-u"))



(bind-keys*
 ("C-z" . undo)
 ("C-M-k" . forward-paragraph)
 ("C-M-i" . backward-paragraph)
 ("C-M-l" . right-word)
 ("C-M-j" . left-word)
 ("M-d" . backward-delete-char-untabify)
 ("M-f" . delete-forward-char)
 ("M-3" . delete-other-windows)
 ("M-4" . split-window-below)
 ("M-$" . split-window-right)
 ("M-0" . delete-window)
 ("M-SPC" . set-mark-command)
 ;; ("M-k" . next-line)
 ;; ("M-i" . previous-line)
 ;; ("M-j" . backward-char)
 ;; ("M-l" . forward-char)
 ("C-=" . text-scale-increase)
 ("C--" . text-scale-decrease)
 ("M-<up>" . windmove-up)
 ("M-<down>" . windmove-down)
 ("M-<left>" . windmove-left)
 ("M-<right>" . windmove-right)
 ("M-2" . er/expand-region))
 ;; ("M-k" . next-line)
 ;; ("M-i" . previous-line)
 ;; ("M-j" . backward-char)
 ;; ("M-l" . forward-char))
(global-set-key (kbd "M-k") 'next-line) ; Alt+a
(global-set-key (kbd "M-i") 'previous-line) ; Ctrl+a
(global-set-key (kbd "M-j") 'backward-char) ; Ctrl+c t
(global-set-key (kbd "M-l") 'forward-char)    ; F7 F8

(global-set-key (kbd "M-p") 'ace-window)



(when (require 'redo nil 'noerror)
    (global-set-key (kbd "C-S-z") 'redo))


;;Multiple cursors
(require 'multiple-cursors)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(defun newline-without-break-of-line ()
  "1. move to end of the line.
2. open new line and move to new line"
  (interactive)
  (end-of-line)
  (open-line 1)
  (right-char))
(global-set-key (kbd "<M-return>") 'newline-without-break-of-line)
