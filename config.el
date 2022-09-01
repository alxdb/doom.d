;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Alexander Davidson Bryan"
      user-mail-address "alxdb@pm.me")

(setq doom-theme 'one-dark
      doom-font (font-spec :family "monospace" :size 26)
      doom-variable-pitch-font (font-spec :family "monospace" :size 26)
      all-the-icons-scale-factor 1.0
      doom-modeline-height 44)

(setq org-directory "~/org/"
      +workspaces-on-switch-project-behavior t)

(after! projectile
  (setq projectile-project-search-path '("~/src/")
        projectile-indexing-method 'alien
        projectile-enable-cmake-presets t))

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
