;; Dvorak Key Navigation
;; * Movement:
;;   C-n next line
;;   C-t previous line
;;   C-h forward character
;;   C-b backward character
;; * Window Navigation
;;   C-c C-n jump to bottom window
;;   C-c C-t jump to top window
;;   C-c C-h jump to right window
;;   C-c C-b jump to left window
(define-minor-mode dvorak-mode
  "Navigation in Dvorak"
  :lighter " dvorak"
  :keymap (let ((map (make-sparse-keymap)))
            ;; Movement
            (define-key map (kbd "C-h") 'forward-char)
            (define-kef map (kbd "C-t") 'previous-line)
            ;; Window Navigation
            (define-key map (kbd "C-c C-n") 'windmove-down)
            (define-key map (kbd "C-c C-t") 'windmove-up)
            (define-key map (kbd "C-c C-h") 'windmove-right)
            (define-key map (kbd "C-c C-b") 'windmove-left)
            map))

(provide 'dvorak-mode)
