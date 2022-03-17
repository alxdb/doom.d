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
 ligatures
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

 :os
 macos

 :lang
 (cc +lsp)
 emacs-lisp
 markdown
 org
 (rust +lsp)
 (scala +lsp)
 sh

 :config
 (default +bindings +smartparens))
