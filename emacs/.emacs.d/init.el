;;;; Emacs Customizations
; @author: tschady
; @date: 6 Oct 2013
;
; I recently declared .emacs bankruptcy and started over after 15 yrs of cruft

(setq debug-on-error t)

;;; initialization
;; load paths
(defvar my-settings-path (concat user-emacs-directory "settings/"))
(defvar my-site-lisp "/opt/homebrew/share/emacs/site-lisp/")

(add-to-list 'load-path my-settings-path)
(add-to-list 'load-path "/opt/homebrew/share/emacs/site-lisp/cask/")
(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/cask/")
(add-to-list 'exec-path "/usr/local/bin")

;; package management
(require 'cask "cask.el")
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
