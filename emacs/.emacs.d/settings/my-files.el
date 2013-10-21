;;;; File management

;; Backups
(setq backup-by-copying t ; don't clobber symlinks
      backup-directory-alist 
        `(("." . ,(concat user-emacs-directory "backups"))) ; all auto-saves here
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t ; use versioned backups
      )       
(setq auto-save-timeout 60)                    ; Autosave every minute

;; SavePlace - save and return to place of last edit in file
(require 'saveplace)
(setq save-place-file (concat user-emacs-directory "saved-places"))
(setq-default save-place t)

;; Buffer Naming for basename collisions
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; Other
(global-auto-revert-mode 1) 		; reload files from disk when changed
(setq apropos-do-all t)				; apropos everything
