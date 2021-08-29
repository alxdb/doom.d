;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Alexander Davidson Bryan"
      user-mail-address "alxdb@pm.me")

(setq doom-theme 'doom-one)
(setq doom-font (font-spec :family "Iosevka" :size 14))
(setq doom-variable-pitch-font (font-spec :family "Iosevka" :size 14))

(setq! display-line-numbers-type t)

(setq! org-directory "~/Documents/org/")
(setq! ispell-personal-dictionary "~/.aspell.en.pws")
(setq! projectile-project-search-path '("~/Code"))

(add-to-list 'initial-frame-alist '(fullscreen . maximized))
(evil-set-initial-state 'vterm-mode 'emacs)

(set-formatter! 'purty "purty --write" :modes '(purescript-mode))

(use-package! dhall-mode
  :hook (dhall-mode . lsp)
  :mode "\\.dhall\\'")

(defun psci-repl-handler ()
  (interactive)
  (psci (projectile-project-root))
  (get-buffer (concat "*" psci/buffer-name "*")))

(set-repl-handler! 'purescript-mode #'psci-repl-handler)
