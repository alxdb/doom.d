;;; init.el -*- lexical-binding: t; -*-

(doom!
 :completion
 company
 ivy

 :ui
 doom
 doom-dashboard
 doom-quit
 (emoji +unicode)
 hl-todo
 modeline
 nav-flash
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
 ibuffer
 undo
 vc

 :term
 vterm

 :checkers
 syntax

 :tools
 (debugger +lsp)
 direnv
 docker
 editorconfig
 lsp
 (eval +overlay)
 lookup
 magit

 :lang
 (cc +lsp)
 (clojure +lsp)
 emacs-lisp
 (go +lsp)
 (haskell +lsp)
 (java +lsp)
 (javascript +lsp)
 markdown
 nix
 org
 (python +lsp +pyright +poetry)
 (rust +lsp)
 (scala +lsp)
 sh
 (web +lsp)
 (yaml +lsp)

 :config
 (default +bindings +smartparens))
