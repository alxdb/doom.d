;;; .doom.d/config.el -*- lexical-binding: t; -*-


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
(setq rainbow-delimiters-max-face-count 9)
(setq +workspaces-on-switch-project-behavior t)

(after! projectile
  (setq projectile-project-search-path (cond (IS-LINUX "~/projects")
                                             (IS-MAC "~/Documents/Projects")))
  (setq projectile-indexing-method 'hybrid))
(after! clojure-mode
  (require 'flycheck-clj-kondo))

(add-to-list 'auto-mode-alist (cons "\\.adoc\\'" 'adoc-mode))
(set-popup-rule! "\\*cider-scratch\\*" :ignore t)
(set-popup-rule! "\\*SQL\\*" :kill nil :ttl nil)
