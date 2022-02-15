;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Alexander Davidson Bryan"
      user-mail-address "alxdb@pm.me")

(setq doom-font (font-spec :family "monospace" :size 20)
      doom-variable-pitch-font (font-spec :family "sans" :size 20))

(setq doom-theme 'doom-one
      all-the-icons-scale-factor 1.0
      doom-modeline-height 44)

(setq org-directory "~/org/"
      projectile-project-search-path "~/src/")

(setq +workspaces-on-switch-project-behavior t
      projectile-indexing-method 'alien)

(set-evil-initial-state! '(vterm-mode term-mode) 'emacs)
