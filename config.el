;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq! user-full-name "Alexander Davidson Bryan"
       user-mail-address "alxdb@pm.me")

(setq doom-font (font-spec :family "Iosevka" :size 13)
      doom-variable-pitch-font (font-spec :family "Iosevka" :size 13))

(setq doom-theme 'doom-one)

(custom-set-faces!
  '(default
     :foreground "#cfd7e5"
     :background "#20232b"))

(setq! display-line-numbers-type t)

(setq! org-directory "~/Documents/org/"
       projectile-project-search-path "~/Projects")

(set-evil-initial-state! 'vterm-mode 'emacs)

(setq! treemacs-collapse-dirs 10)

(setq! lsp-lens-enable nil)
