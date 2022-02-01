;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Alexander Davidson Bryan"
      user-mail-address "alxdb@pm.me")

(setq doom-font (font-spec :family "Iosevka" :size 13)
      doom-variable-pitch-font (font-spec :family "Input Serif Condensed" :size 15))

(setq doom-theme 'doom-one)

(custom-set-faces!
  '(default :foreground "#cfd7e5"))

(setq display-line-numbers-type t)

(setq org-directory "~/Documents/org/")

(after! evil (evil-set-initial-state 'vterm-mode 'emacs))

(setq treemacs-collapse-dirs 10)
