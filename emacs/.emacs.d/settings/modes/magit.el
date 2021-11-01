;; auto-refresh magit window (has performance hit)
(with-eval-after-load 'magit-mode
  (add-hook 'after-save-hook 'magit-after-save-refresh-status t))

(with-eval-after-load 'magit
  (require 'forge))
