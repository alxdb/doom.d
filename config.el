;;; .doom.d/config.el -*- lexical-binding: t; -*-


(setq doom-theme (cond (IS-LINUX 'doom-gruvbox)
                       (IS-MAC 'doom-city-lights))
      doom-font (font-spec :family (cond (IS-LINUX "Input Mono")
                                         (IS-MAC "SF Mono"))
                           :size (cond (IS-LINUX 16)
                                       (IS-MAC 12)))
      doom-big-font (font-spec :family (cond (IS-LINUX "Input Mono")
                                             (IS-MAC "SF Mono"))
                               :size (cond (IS-LINUX 32)
                                           (IS-MAC 16)))
      doom-variable-pitch-font (font-spec :family (cond (IS-LINUX "Input Sans")
                                                        (IS-MAC "Helvetica Neue"))
                                          :size (cond (IS-LINUX 16)
                                                      (IS-MAC 12))))
(setq rainbow-delimiters-max-face-count 9)
;; (setq +workspaces-on-switch-project-behavior t)

(after! projectile
  (setq projectile-project-search-path (cond (IS-LINUX "~/projects")
                                             (IS-MAC "~/Documents/GitHub")))
  (setq projectile-indexing-method 'hybrid))
(after! clojure-mode
  (require 'flycheck-clj-kondo))

(add-to-list 'auto-mode-alist (cons "\\.adoc\\'" 'adoc-mode))
(set-popup-rule! "\\*cider-scratch\\*" :ignore t)
(set-popup-rule! "\\*SQL\\*" :kill nil :ttl nil)
(add-hook! 'cider-repl-mode-hook #'lispy-mode #'lispyville-mode #'rainbow-delimiters-mode)
(map! (:map cider-repl-mode-map
        :g "M-n" 'cider-repl-next-input))
