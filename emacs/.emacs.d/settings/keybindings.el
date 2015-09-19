;;;; Keybindings

;; Styles
(global-set-key [(control =)] 'describe-face-at-point)

;; Git
(global-set-key (kbd "C-x g") 'magit-status)

;; jump mode
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
