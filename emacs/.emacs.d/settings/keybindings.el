;;;; Keybindings

;; Window related
(global-set-key [(control ?')] 'speedbar-get-focus)

;; Styles
(global-set-key [(control =)] 'describe-face-at-point)

;; Git
(global-set-key (kbd "C-x g") 'magit-status)
