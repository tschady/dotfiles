;; LISPs
(autoload 'enable-paredit-mode "paredit"
  "Turn on pseudo-structural editing of Lisp code."
  t)
(add-hook 'emacs-lisp-mode-hook       'enable-paredit-mode)
(add-hook 'lisp-mode-hook             'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook 'enable-paredit-mode)
(add-hook 'scheme-mode-hook           'enable-paredit-mode)
(add-hook 'clojure-mode-hook          'enable-paredit-mode)

;; Clojure
(defun my-clojure-mode-hook ()
    (clj-refactor-mode 1)
    (yas-minor-mode 1) ; for adding require/use/import
    (cljr-add-keybindings-with-prefix "C-c C-m"))

;; line up let bindings and maps nicely with whitespace
(setq clojure-align-forms-automatically t)

(add-hook 'clojure-mode-hook #'my-clojure-mode-hook)

;; Recognize Boot files as Clojure, including shebang scripts
(add-to-list 'auto-mode-alist '("\\.boot\\'" . clojure-mode))
(add-to-list 'magic-mode-alist '(".* boot" . clojure-mode))

;; auto-complete
(require 'ac-cider)
(add-hook 'cider-mode-hook 'ac-flyspell-workaround)
(add-hook 'cider-mode-hook 'ac-cider-setup)
(add-hook 'cider-repl-mode-hook 'ac-cider-setup)
(eval-after-load "auto-complete"
  '(progn
     (add-to-list 'ac-modes 'cider-mode)
     (add-to-list 'ac-modes 'cider-repl-mode)))

;; snippets
(setq cljr-clojure-test-declaration "[clojure.test :refer :all]")
