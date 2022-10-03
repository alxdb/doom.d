;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Alexander Davidson Bryan"
      user-mail-address "alxdb@pm.me")

(setq doom-theme 'one-dark
      doom-font "monospace:pixelsize=24:antialias=on"
      doom-variable-pitch-font "monospace:pixelsize=24:antialias=on"
      all-the-icons-scale-factor 1.0
      doom-modeline-height 44)

(setq org-directory "~/org/"
      +workspaces-on-switch-project-behavior t)

(after! projectile
  (setq projectile-project-search-path '("~/src/")
        projectile-indexing-method 'alien
        projectile-enable-cmake-presets t)
  (projectile-discover-projects-in-search-path))

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

(after! flycheck
  (map! :leader
        (:prefix ("e" . "errors")
         :desc "Explain error at point"
         "e" #'flycheck-explain-error-at-point
         :desc "Next error"
         "n" #'flycheck-next-error
         :desc "Previous error"
         "p" #'flycheck-previous-error
         :desc "List errors"
         "l" #'lsp-ui-flycheck-list)))

(after! writeroom-mode
  (setq +zen-text-scale 0
        writeroom-width 100))

(after! lsp-mode
  (setq lsp-lens-enable nil))

(setq +treemacs-git-mode 'deferred)
(after! treemacs
  (setq treemacs-collapse-dirs 8))
