;;;; Emacs Customizations
; @author: tschady <tschady@users.noreply.github.com>
; @date: 6 Oct 2013
; 
; I recently declared .emacs bankruptcy and started over after 15 yrs of cruft

(setq debug-on-error t)

;;; initialization
;; load paths
(add-to-list 'load-path user-emacs-directory)
(setq my-settings-path (concat user-emacs-directory "settings/"))
(add-to-list 'load-path my-settings-path)

;; package management
(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)

;; auto-byte-compile .el to .elc
(require 'auto-compile)
(auto-compile-on-load-mode t)			; if .el is newer than .elc, recompile
(auto-compile-on-save-mode t)			; recompile on saving an .el buffer

;;; Customizations
;; put Emacs' menu-driven customize details in its own file
(setq custom-file (concat my-settings-path "my-customize.el"))
(when (file-exists-p custom-file) (load custom-file))

;; personal customizations
(when (window-system) (load "my-window"))
(load "my-functions")
(load "my-files")
(load "my-modes")
(load "my-editing")
(load "my-keybindings")
(load "my-styles")
