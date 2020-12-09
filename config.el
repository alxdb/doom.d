;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Alexander Davidson Bryan"
      user-mail-address "alxdb@pm.me")

(defun auto-dark-emacs/is-dark-mode-osascript ()
  "Invoke applescript using Emacs using external shell command; this is less efficient, but works for non-GUI emacs"

  (string-equal "true" (string-trim (shell-command-to-string "osascript -e 'tell application \"System Events\" to tell appearance preferences to return dark mode'"))))

(if (auto-dark-emacs/is-dark-mode-osascript)
  (setq doom-theme 'doom-one)
  (setq doom-theme 'doom-one-light))


(setq doom-font (font-spec :family "SF Mono" :size 12))
(setq doom-variable-pitch-font (font-spec :family "Helvetica Neue" :size 12))

(setq org-directory "~/Documents/org/")
(setq ispell-personal-dictionary "~/.aspell.en.pws")

(setq display-line-numbers-type t)

(setq c-offsets-alist '((innamespace . 0)
                        (inclass . +)))
(setq-hook! 'c++-mode-hook c-basic-offset 2)

(setq js-indent-level 2)
