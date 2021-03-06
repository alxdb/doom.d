;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Alexander Davidson Bryan"
      user-mail-address "alxdb@pm.me")

(setq doom-font (font-spec :family "Iosevka" :size 22)
      doom-variable-pitch-font (font-spec :family "sans" :size 22))

(setq doom-theme 'doom-nord)

(set-evil-initial-state! '(vterm-mode term-mode) 'emacs)
