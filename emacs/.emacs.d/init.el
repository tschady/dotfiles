;;;; Emacs Customizations
; @author: tschady
; @date: 6 Oct 2013
;
; I recently declared .emacs bankruptcy and started over after 15 yrs of cruft


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq debug-on-error t)

;;; initialization
;; load paths
(setq my-settings-path (concat user-emacs-directory "settings/"))
(add-to-list 'load-path my-settings-path)
(add-to-list 'exec-path "/usr/local/bin")

;; package management
(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

;; auto-byte-compile .el to .elc
(require 'auto-compile)
(auto-compile-on-load-mode t)			; if .el is newer than .elc, recompile
(auto-compile-on-save-mode t)			; recompile on saving an .el buffer

;;; Customizations
;; put Emacs' menu-driven customize details in its own file
;; we .gitignore this file to allow experimentation with the menu driven
;; approach, then enshrining into permanent settings once suitable
(setq custom-file (concat my-settings-path "my-customize.el"))
(when (file-exists-p custom-file) (load custom-file))

;; regular customizations
(require 'load-dir)
(setq load-dirs my-settings-path)
(setq load-dir-recursive t)
