;;;; Keybindings

;; Styles
(global-set-key [(control =)] 'describe-face-at-point)

;; Git
(global-set-key (kbd "C-x g") 'magit-status)

;; buffer ops
(global-set-key (kbd "C-c n") 'cleanup-buffer)

;; jump mode
(global-set-key (kbd "C-0") 'avy-goto-char)
(global-set-key (kbd "C-9") 'avy-goto-char-2)
(global-set-key (kbd "M-g f") 'avy-goto-line)
(global-set-key (kbd "M-g w") 'avy-goto-word-1)
