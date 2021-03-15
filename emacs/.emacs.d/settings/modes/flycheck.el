(add-hook 'after-init-hook #'global-flycheck-mode)
(eval-after-load 'flycheck '(flycheck-credo-setup))
(eval-after-load 'flycheck '(flycheck-dialyxir-setup))
