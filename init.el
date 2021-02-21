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

 :editor
 (evil +everywhere)
 file-templates
 fold
 (format +onsave)
 lispy
 parinfer
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
 markdown
 org
 (purescript +lsp)
 (python +lsp +pyright +poetry)
 (rust +lsp)
 sh
 web
 yaml

 :config
 (default +bindings +smartparens))
