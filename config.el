;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq! user-full-name "Alexander Davidson Bryan"
       user-mail-address "alxdb@pm.me")

(setq doom-theme 'doom-one
      doom-font (font-spec :family "Iosevka" :size 14)
      doom-variable-pitch-font (font-spec :family "Iosevka Aile" :size 14))

(custom-theme-set-faces! 'doom-one
  '(default :foreground "#cfd7e5" :background "#20232b"))

(setq! display-line-numbers-type t
       org-directory "~/Documents/org/"
       projectile-project-search-path '("~/Projects"))

(setq treemacs-collapse-dirs 10
      lsp-lens-enable nil)

(add-hook! 'evil-local-mode-hook
  (evil-set-initial-state 'vterm-mode 'emacs))
