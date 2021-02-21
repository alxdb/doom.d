;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Alexander Davidson Bryan"
      user-mail-address "alxdb@pm.me")

(setq doom-theme 'doom-nord-light)
;; (custom-set-faces!
;;   '(default :background "#171920")
;;   '(solaire-default-face :background "#171920"))

(setq doom-font (font-spec :family "Iosevka" :size 13))
(setq doom-variable-pitch-font (font-spec :family "Iosevka" :size 13))

(setq org-directory "~/Documents/org/")
(setq ispell-personal-dictionary "~/.aspell.en.pws")

(add-to-list 'initial-frame-alist '(fullscreen . maximized))

(setq display-line-numbers-type t)

(setq c-offsets-alist '((innamespace . 0)
                        (inclass . +)))
(setq-hook! 'c++-mode-hook c-basic-offset 2)

(setq js-indent-level 2)

(setq poetry-tracking-strategy 'projectile)

(add-hook! 'python-mode-hook #'lsp-deferred)

(add-hook! 'lispy-mode-hook #'rainbow-delimiters-mode)
(after! lispyville
  (lispyville-set-key-theme
   '(wrap
     additional-wrap
     (operators normal)
     c-w
     (prettify insert)
     (atom-movement t)
     slurp/barf-lispy
     additional
     additional-insert)))
