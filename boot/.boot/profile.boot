(require 'boot.repl)

(swap! boot.repl/*default-dependencies* conj
       '[refactor-nrepl "2.2.0"]
       '[cider/cider-nrepl "0.12.0"])

(swap! boot.repl/*default-middleware* conj
       'refactor-nrepl.middleware/wrap-refactor)
