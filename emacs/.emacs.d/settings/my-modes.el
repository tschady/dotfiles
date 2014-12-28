;;;; custom mode settings

;; Terminal
(setq multi-term-program "/bin/zsh")

;; Asciidoc
(add-to-list 'auto-mode-alist (cons "\\.txt\\'" 'adoc-mode))
(add-to-list 'auto-mode-alist (cons "\\.adoc\\'" 'adoc-mode))
(add-to-list 'auto-mode-alist (cons "\\.asciidoc\\'" 'adoc-mode))
(add-hook 'adoc-mode-hook (lambda() (buffer-face-mode t)))

;; buffer Ops
(ido-mode t)
(setq ido-enable-flex-matching t)
(defalias 'list-buffers 'ibuffer)		; use ibuffer instead of dired

;; Cofeescript
(custom-set-variables '(coffee-tab-width 2))

;; Flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Rails
(setq rinari-tags-file-name "TAGS")
(add-hook 'ruby-mode-hook 'rinari-minor-mode)
(add-hook 'web-mode-hook 'rinari-minor-mode)

;; Ruby
(add-hook 'ruby-mode-hook 'yard-mode)
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.god$" . ruby-mode))

;; Org Mode
; (setq org-agenda-files (quote ("~/Dropbox/TODO/101.org")))
;'(org-code ((t :inherit (shadow fixed-pitch))))
;'(org-block ((t :inherit (shadow fixed-pitch))))
;'(org-block-background ((t :inherit fixed-pitch)))
;'(org-table ((t :inherit fixed-pitch)))

;; YASnippets
(yas-global-mode t)						; snippets on everything!

;; Line numbering
(global-linum-mode t)					; line-numbers in fringe

;; Column numbers
(setq column-number-mode t)

;; Web stuff
(add-hook 'css-mode-hook 'rainbow-mode)
(add-hook 'scss-mode-hook 'rainbow-mode)
(add-to-list 'auto-mode-alist '("\\.erb$" . web-mode))
