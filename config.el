;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Alexander Davidson Bryan"
      user-mail-address "alxdb@pm.me")

(setq doom-theme 'doom-one)
;; (custom-set-faces!
;;   '(default :background "#171920")
;;   '(solaire-default-face :background "#171920"))

(setq doom-font (font-spec :family "Iosevka" :size 16))

(setq org-directory "~/Documents/org/")
(setq ispell-personal-dictionary "~/.aspell.en.pws")
(setq! projectile-project-search-path '("~/Code"))

(add-to-list 'initial-frame-alist '(fullscreen . maximized))

(setq display-line-numbers-type t)

(setq c-offsets-alist '((innamespace . 0)
                        (inclass . +)))
(setq-hook! 'c++-mode-hook c-basic-offset 2)

(setq js-indent-level 2)

(setq poetry-tracking-strategy 'projectile)

(add-hook! 'python-mode-hook #'lsp-deferred)

(evil-set-initial-state 'vterm-mode 'emacs)

(setq! web-mode-markup-indent-offset 2)
(setq! web-mode-css-indent-offset 2)
(setq! css-indent-offset 2)
(setq! web-mode-code-indent-offset 2)

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

(add-hook! 'meson-mode-hook #'company-mode)
