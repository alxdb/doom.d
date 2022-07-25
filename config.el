;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Set basic variables
(setq! user-full-name "Alexander Davidson Bryan"
       user-mail-address "alxdb@pm.me")

;; Set fonts
(setq doom-font (font-spec :family "Iosevka" :size 14)
      doom-variable-pitch-font (font-spec :family "Iosevka Aile" :size 14))

;; Use doom-font for lambda symbol
(add-hook! 'after-init-hook :append (set-fontset-font t #X03bb doom-font))

;; Sync with system theme
(setq synced-dark-theme 'doom-one
      synced-light-theme 'doom-one-light)

(defun synced-theme-name ()
  (pcase (plist-get (mac-application-state) :appearance)
    ("NSAppearanceNameDarkAqua" synced-dark-theme)
    ("NSAppearanceNameAqua" synced-light-theme)))

(setq doom-theme (synced-theme-name))

;; Reload and change theme if system theme changes
(add-hook! 'mac-effective-appearance-change-hook (load-theme (synced-theme-name) t))

;; Customize specific themes
(custom-theme-set-faces! 'doom-one
  '(default :foreground "#cfd7e5" :background "#20232b"))

;; Adjust default window size (default is very small)
(add-to-list 'default-frame-alist '(height . 60))
(add-to-list 'default-frame-alist '(width . 140))

;; General configuration variables
(setq! org-directory "~/Documents/org/"
       projectile-project-search-path '("~/Projects")
       display-line-numbers-type t)

;; Package specific variables
(after! treemacs
  (setq! treemacs-collapse-dirs 10))

(after! lsp-mode
  (setq! lsp-lens-enable nil
         lsp-modeline-code-actions-enable nil
         lsp-modeline-diagnostics-enable nil))

;; Start vterm in emacs mode
(add-hook! 'evil-local-mode-hook
  (evil-set-initial-state 'vterm-mode 'emacs))
