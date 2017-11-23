;; Navigation
(global-unset-key (kbd "C-k"))
(global-unset-key (kbd "M-u"))


;; Mac
(setq mac-command-modifier 'meta)

(defvar my-keys-minor-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "C-z") 'undo)
    (define-key map (kbd "C-M-k") 'forward-paragraph)
    (define-key map (kbd "C-M-i") 'backward-paragraph)
    (define-key map (kbd "C-M-l") 'right-word)
    (define-key map (kbd "C-M-j") 'left-word)
    (define-key map (kbd "M-d") 'backward-delete-char)
    (define-key map (kbd "M-k") 'next-line)
    (define-key map (kbd "M-i") 'previous-line)
    (define-key map (kbd "M-j") 'backward-char)
    (define-key map (kbd "M-l") 'forward-char)
    (define-key map (kbd "M-p") 'ace-window)
    (define-key map (kbd "M-f") 'delete-forward-char)
    (define-key map (kbd "M-3") 'delete-other-windows)
    (define-key map (kbd "M-4") 'split-window-below)
    (define-key map (kbd "M-$") 'split-window-right)
    (define-key map (kbd "M-0") 'delete-window)
    (define-key map (kbd "M-SPC") 'set-mark-command)
    (define-key map (kbd "C-=") 'text-scale-increase)
    (define-key map (kbd "C--") 'text-scale-decrease)
    (define-key map (kbd "M-<up>") 'windmove-up)
    (define-key map (kbd "M-<down>") 'windmove-down)
    (define-key map (kbd "M-<left>" ) 'windmove-left)
    (define-key map (kbd "M-<right>") 'windmove-right)
    (define-key map (kbd "M-2") 'er/expand-region)
    map)
  "my-keys-minor-mode keymap.")

(define-minor-mode my-keys-minor-mode
  "A minor mode so that my key settings override annoying major modes."
  :init-value t
  :lighter " my-keys")

(my-keys-minor-mode 1)


(when (require 'redo nil 'noerror)
    (global-set-key (kbd "C-S-z") 'redo))


(require 'mark-more-like-this)
(global-set-key (kbd "C-<") 'mark-previous-like-this)
(global-set-key (kbd "C->") 'mark-next-like-this)
(global-set-key (kbd "C-M-m") 'mark-more-like-this) ; like the other two, but takes an argument (negative is previous)
(global-set-key (kbd "C-*") 'mark-all-like-this)

(defun newline-without-break-of-line ()
  "1. move to end of the line.
2. open new line and move to new line"
  (interactive)
  (end-of-line)
  (open-line 1)
  (right-char))
(global-set-key (kbd "<M-return>") 'newline-without-break-of-line)
