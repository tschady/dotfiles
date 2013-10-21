;;;; Window management

;; Toolbars
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1)) ; remove toolbar
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1)) ; remove scrollbar

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

; second editor
(make-frame '((left . 1100)))		; a big number pushes to right edge

;; Speedbar
(setq speedbar-directory-unshown-regexp "^$") ; override to show all dirs
(setq speedbar-update-flag nil)		   ; do not change pwd with buffer
(setq speedbar-show-unknown-files t)   ; show all files
(setq speedbar-frame-parameters '((minibuffer . nil)
				  (vertical-scroll-bars . nil)
				  (width . 18)
				  (height . 56)			; speedbar line height bigger?
				  (left . 41)			; just past mac dock
				  (border-width . 0 )
				  (menu-bar-lines . 0)
				  (tool-bar-lines . 0)
				  (unsplittable . t)
				  (left-fringe . 0)
				  (right-fringe . 0)
				  ))
(speedbar t)
