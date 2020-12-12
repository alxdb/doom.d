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
 json
 (javascript +lsp)
 markdown
 org
 (python +lsp +pyright +poetry)
 rust
 sh
 web
 yaml

 :config
 (default +bindings +smartparens))
