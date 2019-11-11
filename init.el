;;; init.el -*- lexical-binding: t; -*-

(doom! :completion
       company
       ivy

       :ui
       doom
       doom-dashboard
       doom-quit
       hl-todo
       modeline
       nav-flash
       ophints
       (popup
        +all
        +defaults)
       treemacs
       vc-gutter
       vi-tilde-fringe
       window-select
       workspaces

       :editor
       (evil +everywhere)
       file-templates
       fold
       (format +onsave)
       lispy
       multiple-cursors
       rotate-text
       snippets

       :emacs
       dired
       electric
       vc

       :term
       eshell
       term
       vterm

       :tools
       docker
       ein
       eval
       flycheck
       (lookup
        +docsets)
       lsp
       magit

       :lang
       cc
       clojure
       data
       emacs-lisp
       hy
       markdown
       (org
        +dragndrop
        +ipython
        +pandoc
        +present)
       python
       (rust
        +lsp)
       sh

       :config
       (default +bindings +smartparens))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("1728dfd9560bff76a7dc6c3f61e9f4d3e6ef9d017a83a841c117bd9bebe18613" "423435c7b0e6c0942f16519fa9e17793da940184a50201a4d932eafe4c94c92d" "2d1fe7c9007a5b76cea4395b0fc664d0c1cfd34bb4f1860300347cdad67fb2f9" "f951343d4bbe5a90dba0f058de8317ca58a6822faa65d8463b0e751a07ec887c" "f2b83b9388b1a57f6286153130ee704243870d40ae9ec931d0a1798a5a916e76" "70ed3a0f434c63206a23012d9cdfbe6c6d4bb4685ad64154f37f3c15c10f3b90" "071f5702a5445970105be9456a48423a87b8b9cfa4b1f76d15699b29123fb7d8" default)))
 '(org-agenda-files (quote ("~/Documents/yapfaqs.org")))
 '(projectile-indexing-method (quote hybrid))
 '(safe-local-variable-values
   (quote
    ((helm-make-arguments . "-j7")
     (projectile-project-configure-cmd . "cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ..")
     (projectile-project-run-cmd . "./run.sh")
     (projectile-project-name . "adbGL")
     (eval setq projectile-project-test-cmd
           (function helm-ctest)
           projectile-project-compilation-cmd
           (function helm-make-projectile)
           projectile-project-compilation-dir "build" helm-make-build-dir
           (projectile-compilation-dir)
           helm-ctest-dir
           (projectile-compilation-dir))
     (cider-default-cljs-repl . edge)
     (cider-clojure-cli-global-options . "-A:dev:test:data:build:dev/build")
     (cider-cljs-repl-types
      (edge "(do (require 'dev-extras) ((resolve 'dev-extras/cljs-repl)))"))
     (cider-repl-init-code "(dev)")
     (cider-ns-refresh-after-fn . "dev-extras/resume")
     (cider-ns-refresh-before-fn . "dev-extras/suspend")))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(rainbow-delimiters-depth-1-face ((t (:foreground "#fabd2f"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "#d79921"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "#b57614"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "#83a598"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "#458588"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "#076678"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "#8ec07c"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "#689d6a"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "#427b58")))))
