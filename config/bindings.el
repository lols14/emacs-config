;; Navigation
(global-unset-key (kbd "C-k"))

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
 ("M-RET" . other-window)               
 ("M-0" . delete-window)
 ("M-<up>" . move-region-up)    
 ("M-<down>" . move-region-down)
 ("M-SPC" . set-mark-command)               
 ("M-k" . next-line)                    
 ("M-i" . previous-line)                
 ("M-j" . backward-char)                
 ("M-l" . forward-char)                 
 ("C-=" . text-scale-increase)
 ("C--" . text-scale-decrease))


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

;; Align your code in a pretty way.
;;(global-set-key (kbd "C-x \\") 'align-regexp)

(when (require 'redo nil 'noerror)
    (global-set-key (kbd "C-S-z") 'redo))



