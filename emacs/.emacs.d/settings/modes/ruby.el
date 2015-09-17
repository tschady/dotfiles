;; Rails
(setq rinari-tags-file-name "TAGS")
(add-hook 'ruby-mode-hook 'rinari-minor-mode)
(add-hook 'web-mode-hook 'rinari-minor-mode)

;; Cofeescript
(custom-set-variables '(coffee-tab-width 2))

;; Ruby
(add-hook 'ruby-mode-hook 'yard-mode)
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.god$" . ruby-mode))
