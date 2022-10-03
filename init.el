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
       (format +onsave)
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
       (debugger +lsp)
       (eval +overlay)
       lookup
       (lsp +peek)
       (magit +forge)
       tree-sitter

       :lang
       (cc +lsp +tree-sitter)
       (clojure +lsp)
       (dart +lsp +flutter)
       emacs-lisp
       (go +lsp)
       markdown
       org
       (python +lsp +pyright +pyenv)
       (rust +lsp +tree-sitter)
       sh

       :config
       (default +bindings +smartparens))
