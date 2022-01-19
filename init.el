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
       (eval +overlay)
       lookup
       lsp
       magit

       :os
       macos

       :lang
       emacs-lisp
       markdown
       org
       sh

       :config
       (default +bindings +smartparens))
