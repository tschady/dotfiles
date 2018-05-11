;; since no middle-mouse button (mouse-2) on Mac Trackpad, use C-right click
;; (eval-after-load "flyspell" '(progn
;;   (define-key flyspell-mouse-map [down-mouse-3] #'flyspell-correct-word)
;;   (define-key flyspell-mouse-map [mouse-3] 'undefined)))

;; use aspell if installed
(cond
 ((executable-find "aspell")
  (setq ispell-program-name "aspell")
  (setq ispell-extra-args '("--sug-mode=ultra" "--lang=en_US"))))

;; don't try and fix keywords
(add-hook 'prog-mode-hook 'flyspell-prog-mode)

;; on/off modes
(dolist (hook '(text-mode-hook))
  (add-hook hook (lambda () (flyspell-mode 1))))
(dolist (hook '(change-log-mode-hook log-edit-mode-hook))
  (add-hook hook (lambda () (flyspell-mode -1))))
