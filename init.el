;;; $DOOMDIR/init.el -*- lexical-binding: t; -*-

(doom! :completion
       company
       vertico

       :ui
       doom
       doom-dashboard
       doom-quit
       hl-todo
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
       format
       snippets

       :emacs
       (dired +ranger +icons)
       electric
       undo
       vc

       :term
       vterm

       :checkers
       syntax

       :tools
       (eval +overlay)
       lookup
       (lsp +peek)
       magit

       :lang
       (cc +lsp)
       (clojure +lsp)
       emacs-lisp
       markdown
       org
       (rust +lsp)
       sh

       :config
       (default +bindings +smartparens))
