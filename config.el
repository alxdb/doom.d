;;; .doom.d/config.el -*- lexical-binding: t; -*-


;;; Global conf

;; Themeing

(setq doom-theme 'doom-gruvbox
      doom-font (font-spec :family (cond (IS-LINUX "Input Mono")
                                         (IS-MAC "SF Mono"))
                           :size 16)
      doom-big-font (font-spec :family (cond (IS-LINUX "Input Mono")
                                             (IS-MAC "SF Mono"))
                               :size 32)
      doom-variable-pitch-font (font-spec :family (cond (IS-LINUX "Input Sans")
                                                        (IS-MAC "Helvetica Neue"))
                                          :size 16))

;; Workspaces
(setq +workspaces-on-switch-project-behavior t)

;;; Package conf

;; projectile
(after! projectile-mode
  (setq projectile-project-search-path (cond (IS-LINUX "~/projects")
                                             (IS-MAC "~/Documents/Projects")))
  (setq projectile-indexing-method 'hybrid))

;; ascii-doc
(add-to-list 'auto-mode-alist (cons "\\.adoc\\'" 'adoc-mode))

;; clojure
(after! clojure-mode
  (require 'flycheck-clj-kondo))
