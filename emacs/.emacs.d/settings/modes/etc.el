;;;; custom mode settings

;; Avy
(setq avy-background t)

;; Terminal
(setq multi-term-program "/bin/zsh")

;; buffer Ops
(ido-mode t)
(setq ido-enable-flex-matching t)
(defalias 'list-buffers 'ibuffer)		; use ibuffer instead of dired

;; Images
(eval-after-load 'image '(require 'image+))
(eval-after-load 'image+ '(imagex-global-sticky-mode 1))
(eval-after-load 'image+ '(imagex-auto-adjust-mode 1))

;; Web stuff
(add-hook 'css-mode-hook 'rainbow-mode)
(add-hook 'scss-mode-hook 'rainbow-mode)
