;;;; Keybindings

;; Styles
(global-set-key [(control =)] 'describe-face-at-point)

;; Git
(global-set-key (kbd "C-x g") 'magit-status)

;; buffer ops
(global-set-key (kbd "C-c n") 'cleanup-buffer)

;; jump mode
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
