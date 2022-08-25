;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Alexander Davidson Bryan"
      user-mail-address "alxdb@pm.me")

(setq doom-font (font-spec :family "monospace" :size 26)
      doom-variable-pitch-font (font-spec :family "monospace" :size 26))

(setq doom-theme 'one-dark
      all-the-icons-scale-factor 1.0
      doom-modeline-height 44)

(setq org-directory "~/org/"
      projectile-project-search-path '("~/src/"))

(setq +workspaces-on-switch-project-behavior t
      projectile-indexing-method 'alien)

(after! evil
  (set-evil-initial-state! '(vterm-mode term-mode) 'emacs)
  (map! :n "C-]" #'+lookup/definition))

(after! lsp-clangd
  (setq lsp-clients-clangd-args
        '("-j=8"
          "--background-index"
          "--clang-tidy"
          "--completion-style=detailed"
          "--header-insertion=never"
          "--header-insertion-decorators=0"))
  (set-lsp-priority! 'clangd 2))

(after! lsp-mode
  (setq lsp-lens-enable nil))

(after! treemacs
  (setq treemacs-collapse-dirs 8))
