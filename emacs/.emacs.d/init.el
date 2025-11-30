;;; Emacs Customizations
;; @author: tschady
;; @created: 6 Oct 2013
;;
;; I recently declared .emacs bankruptcy and started over after 15 yrs of cruft
;; Updated 2025 for `use-package` and collapsing configs to this init

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GENERAL GLOBALS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'cl-lib) ; find-if used below in font section

(setq debug-on-error t)
(setq apropos-do-all t)		    ; apropos everything
(setq echo-keystrokes 0.01)	    ; remove keypress statusline delay
(setq-default show-trailing-whitespace t) ; allow highlighting of extra space
(setq ring-bell-function 'ignore)	  ; disable bell
(setq visible-bell nil)			  ; turn off flash-bell
(setq inhibit-startup-message t)	  ; no splash screen
(setq global-display-line-numbers-mode t) ; line-numbers in fringe
;; TODO: fix line num display, is it because I removed the toolbars?
(setq column-number-mode t)		; column numbers
(global-auto-revert-mode 1)	 ; reload files from disk when changed

;; paths
(add-to-list 'exec-path "/usr/local/bin")

;; Backups
(setq backup-by-copying t ; don't clobber symlinks
      backup-directory-alist `(("." . ,(concat user-emacs-directory "backups")))
      delete-old-versions t
      version-control t
      kept-new-versions 6
      kept-old-versions 2)

(setq auto-save-timeout 60)		; Autosave every minute

;; MacOS interaction
(setq select-enable-clipboard t
      select-enable-primary t
      save-interprogram-paste-before-kill t)
(setq mouse-yank-at-point t) ; paste at point, regardless of where click was

;;;;;;;;;;; Global keybindings
(global-set-key (kbd "C-c n") 'cleanup-buffer)

;; replace buffer-menu with ibuffer
(global-set-key (kbd "C-x C-b") #'ibuffer)

;; Hippie Expand
(setq hippie-expand-try-functions-list
      '(try-expand-dabbrev
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-complete-file-name-partially
        try-complete-file-name
        try-expand-all-abbrevs
        try-expand-list
        try-expand-line
        try-complete-lisp-symbol-partially
        try-complete-lisp-symbol))

;; use hippie-expand instead of dabbrev
(global-set-key (kbd "M-/") #'hippie-expand)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; LOOK AND FEEL
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; remove toolbars
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; use Shift-arrow to move between windows
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;; window sizing
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

;; Fonts
(defun font-candidate (fonts)
  "Return first matching existing font from given FONTS."
  (cl-find-if (lambda (f) (find-font (font-spec :name f))) fonts))

(defvar my-monospace-fonts '("Inconsolata-14:weight=normal"
			     "Anonymous Pro-14:weight=normal"
			     "Monaco-14:weight=normal"
			     "Courier New-14:weight=normal"))

(defvar my-proportional-fonts '("Droid Sans-14:weight=normal"
				"Helvetica Neue-14:weight=normal"
				"Helvetica-14:weight=normal"))

(set-face-attribute 'default (not 'this-frame-only)
		    :font (font-candidate my-monospace-fonts))
(set-face-font 'variable-pitch (font-candidate my-proportional-fonts))
(set-face-font 'fixed-pitch (font-candidate my-monospace-fonts))

;; Themes
(add-to-list 'custom-theme-load-path (concat user-emacs-directory "themes"))
(when (window-system) (load-theme 'chill t))

;; Helper for altering style files
(global-set-key (kbd "C-=") 'describe-face-at-point)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; HELPER FUNCTIONS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun untabify-buffer ()
  "Convert tabs to spaces in entire buffer."
  (interactive)
  (untabify (point-min) (point-max)))

(defun indent-buffer ()
  "Apply auto-indentation to entire buffer."
  (interactive)
  (indent-region (point-min) (point-max)))

(defun cleanup-buffer ()
  "Perform a bunch of operations on the whitespace content of a buffer.
Including indent-buffer, which should not be called automatically on save."
  (interactive)
  (untabify-buffer)
  (delete-trailing-whitespace)
  (indent-buffer))

(defun describe-face-at-point ()
  "Return face used at point."
  (interactive)
  (message "%s" (get-char-property (point) 'face)))

;; auto-create missing folders
(defun er-auto-create-missing-dirs ()
  "Make missing parent directories automatically."
  (let ((target-dir (file-name-directory buffer-file-name)))
    (unless (file-exists-p target-dir)
      (make-directory target-dir t))))

(add-to-list 'find-file-not-found-functions #'er-auto-create-missing-dirs)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; bootstrap
(require 'package)
(add-to-list 'package-archives '("gnu"   . "https://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; keep the installed packages in .emacs.d
(setq package-user-dir (expand-file-name "elpa" user-emacs-directory))
(package-initialize)
;; update the package metadata if the local cache is missing
(unless package-archive-contents
  (package-refresh-contents))
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)
(setq use-package-verbose t)

(use-package delight)

(ido-mode t)
(setq ido-enable-flex-matching t)

;;;;;;;;;;;; General Development

(use-package avy
  :bind (("C-0" . avy-goto-char)
	 ("C-9" . avy-goto-char-2)
	 ("M-g f" . avy-goto-line)
	 ("M-g w" . avy-goto-word-1))
  :custom
  (avy-background t))

(use-package magit
  :bind (("C-x g" . magit-status)
	 ("C-x \\" . magit-blame)))

;; TODO: re-enable after d/l link is fixed (broken on 2025-12-2)
;; (use-package forge)

(use-package paren
  :config
  (show-paren-mode t))

(use-package elec-pair
  :config
  (electric-pair-mode t))

(use-package rainbow-mode
  :delight
  :hook (css-mode
	 scss-mode))

(use-package uniquify
  :ensure nil
  :custom
  (uniquify-buffer-name-style 'forward)
  (uniquify-separator "/")
  (uniquify-after-kill-buffer-p t)
  (uniquify-ignore-buffers-re "^\\*"))

(use-package saveplace
  :custom
  (save-place-file (concat user-emacs-directory "saved-places"))
  (save-place t))

;; TODO: enable buffer-face-mode on adoc-mode-hook?
(use-package adoc-mode
  :mode ("\\.adoc\\'" "\\.asciidoc\\'"))

(use-package web-mode
  :mode (("\\.html?\\'" . web-mode)
         ("\\.erb\\'" . web-mode)))

(use-package flycheck
  :hook (after-init . global-flycheck-mode))

(use-package yaml-mode)

(use-package yasnippet
  :defer t
  :config (yas-reload-all)
  :hook (prog-mode . yas-minor-mode))

(use-package company
  :hook (after-init . global-company-mode))

(use-package markdown-mode
  :custom
  (markdown-fontify-code-blocks-natively t)
  (markdown-spaces-after-code-fence 0))

(use-package graphviz-dot-mode)

(use-package projectile
  :custom
  (projectile-project-search-path '("~/src/tschady/"))
  (projectile-create-missing-test-files t)
  :bind-keymap (("C-c C-p" . projectile-command-map)
                ("C-c p" . projectile-command-map))
  :hook (after-init . projectile-mode))

;;;;;;;;;;;; Clojure

(use-package paredit
  :hook (emacs-lisp-mode
	 lisp-mode
	 lisp-interaction-mode
	 clojure-mode
	 cider-repl-mode))

(use-package flycheck-clj-kondo)

(use-package clj-refactor
  ;; :init
  ;; Optional: Install ido-completing-read+ for better IDO completions
  ;; (when (package-installed-p 'ido)
  ;;   (use-package ido-completing-read+ :ensure t))
  :custom
  (cljr-clojure-test-declaration "[clojure.test :refer :all]")
  :config
  (defun my-clojure-mode-hook ()
    (clj-refactor-mode 1)
    (yas-minor-mode 1)
    (cljr-add-keybindings-with-prefix "C-c C-m"))
  (add-hook 'clojure-mode-hook #'my-clojure-mode-hook))

(use-package clojure-mode
  :config
  (require 'flycheck-clj-kondo)
  :custom
  (clojure-align-forms-automatically t "Line up let bindings and maps nicely"))

(use-package cider
  :custom
  (cider-clojure-cli-global-options "-J-XX:-OmitStackTraceInFastThrow"))

;;;;;;;;;;;; MacOS
(use-package applescript-mode)
(use-package osx-plist)

;;;;;;;;;;;; Ruby
(use-package ruby-mode)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; LOCAL CUSTOMIZATIONS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; put Emacs' menu-driven customize details in its own file
;; we .gitignore this file to allow experimentation with the menu driven
;; approach, then enshrining into permanent settings once suitable
(setq custom-file (concat user-emacs-directory "my-customize.el"))
(when (file-exists-p custom-file) (load custom-file))

