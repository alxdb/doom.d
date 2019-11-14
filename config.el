;;; .doom.d/config.el -*- lexical-binding: t; -*-

;;; core-ui
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

;;; workspaces
(setq +workspaces-on-switch-project-behavior t)

;;; projects
(after! projectile
  (setq projectile-project-search-path (cond (IS-LINUX "~/projects")
                                             (IS-MAC "~/Documents/Projects")))
  (setq projectile-indexing-method 'hybrid))

;;; formater
(setq +format-on-save-enabled-modes '(not emacs-lisp-mode
                                          sql-mode
                                          latex-mode))

;;; clojure
(after! clojure-mode
  (require 'flycheck-clj-kondo))
(set-popup-rule! "\\*cider-scratch\\*" :ignore t)

;;; ascii-doc
(add-to-list 'auto-mode-alist (cons "\\.adoc\\'" 'adoc-mode))

;;; SQL
(set-popup-rule! "\\*SQL\\*" :kill nil :ttl nil)

;;; cc-mode
;; add llvm style
(defun llvm-lineup-statement (langelem)
  (let ((in-assign (c-lineup-assignments langelem)))
    (if (not in-assign)
        '++
      (aset in-assign 0
            (+ (aref in-assign 0)
               (* 2 c-basic-offset)))
      in-assign)))
(c-add-style "llvm"
             '("gnu"
               (fill-column . 80)
               (c++-indent-level . 2)
               (c-basic-offset . 2)
               (indent-tabs-mode . nil)
               (c-offsets-alist . ((arglist-intro . ++)
                                   (innamespace . 0)
                                   (member-init-intro . ++)
                                   (statement-cont . llvm-lineup-statement)))))
(setq c-default-style "llvm"
      c-basic-offset 2)
(add-hook! irony-mode-hook #'irony-cdb-autosetup-compile-options)
