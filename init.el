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
       (eval +overlay)
       lookup
       lsp
       magit
       make

       :os
       (:if IS-MAC macos)

       :lang
       emacs-lisp
       markdown
       org
       sh

       :config
       (default +bindings +smartparens))
