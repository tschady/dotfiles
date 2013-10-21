;;;; custom mode settings

;; Asciidoc
(add-to-list 'auto-mode-alist (cons "\\.txt\\'" 'adoc-mode))
(add-to-list 'auto-mode-alist (cons "\\.adoc\\'" 'adoc-mode))
(add-to-list 'auto-mode-alist (cons "\\.asciidoc\\'" 'adoc-mode))
(add-hook 'adoc-mode-hook (lambda() (buffer-face-mode t)))

;; buffer Ops
(ido-mode t)
(setq ido-enable-flex-matching t)
(defalias 'list-buffers 'ibuffer)		; use ibuffer instead of dired

;; Ruby
(add-hook 'ruby-mode-hook 'yard-mode)

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

;; Web stuff
(add-hook 'css-mode-hook 'rainbow-mode)
(add-hook 'scss-mode-hook 'rainbow-mode)
