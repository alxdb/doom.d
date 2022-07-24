;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq! user-full-name "Alexander Davidson Bryan"
       user-mail-address "alxdb@pm.me")

(setq mac-theme-name (plist-get (mac-application-state) :appearance))

(setq doom-theme (pcase mac-theme-name
                   ("NSAppearanceNameAqua" 'doom-one-light)
                   ("NSAppearanceNameDarkAqua" 'doom-one)
                   (_ 'doom-one)))

(setq doom-font (font-spec :family "Iosevka" :size 14)
      doom-variable-pitch-font (font-spec :family "Iosevka Aile" :size 14))

;; Override lambda symbol (sometimes necessary)
(set-fontset-font t #X03bb doom-font)

(custom-theme-set-faces! 'doom-one
  '(default :foreground "#cfd7e5" :background "#20232b"))

(setq! org-directory "~/Documents/org/"
       projectile-project-search-path '("~/Projects")
       display-line-numbers-type t
       treemacs-collapse-dirs 10
       lsp-lens-enable nil
       lsp-modeline-code-actions-enable nil
       lsp-modeline-diagnostics-enable nil)

(add-hook! 'evil-local-mode-hook
  (evil-set-initial-state 'vterm-mode 'emacs))

;; (after! doom-modeline
;;   (doom-modeline-def-modeline 'main
;;     '(bar workspace-name window-number modals matches follow buffer-info remote-host buffer-position word-count parrot selection-info)
;;     '(objed-state misc-info persp-name battery grip irc mu4e gnus github debug repl lsp minor-modes input-method indent-info buffer-encoding major-mode process vcs checker "  ")))
