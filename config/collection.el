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


;; (global-set-key (kbd "C-c i") 'string-inflection-cycle)
;; (global-set-key (kbd "C-c C") 'string-inflection-camelcase)        ;; Force to CamelCase
;; (global-set-key (kbd "C-c L") 'string-inflection-lower-camelcase)  ;; Force to lowerCamelCase
;; (global-set-key (kbd "C-c J") 'string-inflection-java-style-cycle) ;; Cycle through Java styles
