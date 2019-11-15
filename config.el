;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Global Settings
(setq doom-theme (cond (IS-LINUX 'doom-gruvbox)
                       (IS-MAC 'doom-one))
      doom-font (font-spec :family (cond (IS-LINUX "Input Mono")
                                         (IS-MAC "SF Mono"))
                           :size (cond (IS-LINUX 16)
                                       (IS-MAC 13))
                           :weight (cond (IS-LINUX 'normal)
                                         (IS-MAC 'light)))
      doom-variable-pitch-font (font-spec :family (cond (IS-LINUX "Input Sans")
                                                        (IS-MAC "Helvetica Neue"))
                                          :size (cond (IS-LINUX 16)
                                                      (IS-MAC 13))))
(setq rainbow-delimiters-max-face-count 9)
(setq +workspaces-on-switch-project-behavior t)

;; Projectile
(after! projectile
  (setq projectile-project-search-path (cond (IS-LINUX "~/projects")
                                             (IS-MAC "~/Documents/GitHub")))
  (setq projectile-indexing-method 'hybrid))

;; Clojure
(after! clojure-mode
  (require 'flycheck-clj-kondo))
(add-hook! 'cider-repl-mode-hook #'lispy-mode #'rainbow-delimiters-mode)
(add-hook! 'clojure-mode-hook #'prettify-symbols-mode)
(map! (:map cider-repl-mode-map
        :g "M-n" 'cider-repl-next-input))

;; Popup Windows
(set-popup-rule! "\\*cider-scratch\\*" :ignore t)
(set-popup-rule! "\\*SQL\\*" :kill nil :ttl nil)
