;;; $DOOMDIR/init.el -*- lexical-binding: t; -*-

(doom! :completion
       company
       (vertico +icons)

       :ui
       doom
       doom-dashboard
       doom-quit
       (emoji +unicode)
       hl-todo
       ligatures
       minimap
       modeline
       ophints
       (popup +defaults)
       treemacs
       vc-gutter
       vi-tilde-fringe
       workspaces
       zen

       :editor
       (evil +everywhere)
       file-templates
       fold
       (format +onsave)
       snippets

       :emacs
       dired
       electric
       undo
       vc

       :term
       vterm

       :checkers
       syntax

       :tools
       debugger
       direnv
       ein
       (eval +overlay)
       lookup
       lsp
       magit
       make

       :os
       (:if IS-MAC macos)

       :lang
       (cc +lsp)
       (clojure +lsp)
       emacs-lisp
       (haskell +lsp)
       javascript
       json
       (julia +lsp)
       markdown
       nix
       (org +jupyter +brain)
       (python +lsp)
       (rust +lsp)
       sh
       web
       (yaml +lsp)

       :config
       (default +bindings +smartparens))
