;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Themeing
(setq doom-theme 'doom-gruvbox
      doom-font (font-spec :family "Input Mono" :size 16)
      doom-big-font (font-spec :family "Input Mono" :size 32))

;; Projectile
(setq projectile-project-search-path '("~/projects"))
(setq projectile-indexing-method 'hybrid)

;; Workspaces
(setq +workspaces-on-switch-project-behavior t)

;;; Package conf

;; Clojure
(after! clojure-mode
  (require 'flycheck-clj-kondo))
