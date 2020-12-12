;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Alexander Davidson Bryan"
      user-mail-address "alxdb@pm.me")

(setq doom-theme 'doom-one)


(setq doom-font (font-spec :family "SF Mono" :size 12))
(setq doom-variable-pitch-font (font-spec :family "Helvetica Neue" :size 12))

(setq org-directory "~/Documents/org/")
(setq ispell-personal-dictionary "~/.aspell.en.pws")

(setq display-line-numbers-type t)

(setq c-offsets-alist '((innamespace . 0)
                        (inclass . +)))
(setq-hook! 'c++-mode-hook c-basic-offset 2)

(setq js-indent-level 2)
