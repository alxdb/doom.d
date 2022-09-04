;;; init.el -*- lexical-binding: t; -*-

(doom!
 :completion
 company
 vertico

 :ui
 doom
 doom-dashboard
 doom-quit
 hl-todo
 ;; (ligatures +extra)
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
 (spell +flyspell)

 :tools
 direnv
 (eval +overlay)
 lookup
 lsp
 magit
 tree-sitter

 :os
 macos

 :lang
 (cc +lsp +tree-sitter)
 emacs-lisp
 (javascript +lsp +tree-sitter)
 markdown
 (ocaml +lsp)
 org
 (python +lsp +pyright +tree-sitter)
 (rust +lsp +tree-sitter)
 (scala +lsp)
 sh

 :config
 (default +bindings +smartparens))
