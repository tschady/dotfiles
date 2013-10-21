;;;; Editing
;; Copy / Paste - interact with OS clipboard
(setq x-select-enable-clipboard t
      x-select-enable-primary t
      save-interprogram-paste-before-kill t
      )
(setq mouse-yank-at-point t) ; paste at point, regardless of where click was

;; Tabbing
(setq-default tab-width 4)
(setq indent-tabs-mode nil)             ; No Tabs!
(smart-tabs-insinuate 'c 'c++ 'java 'javascript 'cperl 'python 'ruby 'nxml)

;; Parenthesis
(show-paren-mode t)                ; highlight matching parens
(electric-pair-mode t)             ; auto-insert closing bracket/paren

;; Whitespace
(setq-default show-trailing-whitespace t) ; allow highlighting of extra space
