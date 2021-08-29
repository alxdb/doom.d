;;; $DOOMDIR/init.el -*- lexical-binding: t; -*-

(doom!
 :completion
 company
 ivy

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
 lispy
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
 spell

 :tools
 direnv
 (eval +overlay)
 lookup
 lsp
 magit
 make
 rgb

 :os
 (:if IS-MAC macos)

 :lang
 (cc +lsp)
 clojure
 emacs-lisp
 (elm +lsp)
 (haskell +lsp)
 json
 (javascript +lsp)
 (kotlin +lsp)
 markdown
 (org +jupyter)
 (purescript +lsp)
 (python +lsp +pyright)
 (rust +lsp)
 sh
 web
 yaml

 :config
 (default +bindings +smartparens))
