;;;; Style modifications

;;; Fonts

;; Helpers
(require 'cl)
(defun font-candidate (fonts)
  "return first matching existing font from given list"
  (find-if (lambda (f) (find-font (font-spec :name f))) fonts))

;; Candidate font lists in order of preference
(defvar my-monospace-fonts '(
						   "Inconsolata-14:weight=normal"
						   "Anonymous Pro-14:weight=normal"
						   "Monaco-12:weight=normal"
						   "Courier New-14:weight=normal"
						   ))

(defvar my-proportional-fonts '(
							  "Droid Sans-14:weight=normal"
							  "Helvetica Neue-14:weight=normal"
							  "Helvetica-14:weight=normal"
							  ))

;; Default fonts
(set-face-attribute 'default (not 'this-frame-only)
					:font (font-candidate my-monospace-fonts))
(set-face-font 'variable-pitch (font-candidate my-proportional-fonts))
(set-face-font 'fixed-pitch (font-candidate my-monospace-fonts))

;;; Themes
(add-to-list 'custom-theme-load-path (concat user-emacs-directory "themes"))
(when (window-system) (load-theme 'chill t))

;;; Other
(setq ring-bell-function 'ignore)       ; disable bell
(setq visible-bell nil)					; turn off flash-bell
(setq inhibit-startup-message t)		; no splash screen
