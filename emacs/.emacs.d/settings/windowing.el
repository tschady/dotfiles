;;;; Window management

;; Remove Toolbars
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; frame placement
; TODO: adaptive height/width for various screens (laptop vs monitor)
; defaults
(setq default-frame-alist '((width . 87)
			    (height . 56)
			    (vertical-scroll-bars . nil)))

; initial frame
(setq initial-frame-alist '((width . 87)
			    (height . 56)
			    (left . 172)
			    (top . 0)))

;; Navigation
; use Shift-arrow to move between windows
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;; Line numbering
(global-linum-mode t)			; line-numbers in fringe

;; Column numbers
(setq column-number-mode t)
