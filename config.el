;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Alexander Davidson Bryan"
      user-mail-address "alxdb@pm.me")

(setq doom-font (font-spec :family "monospace" :size 22)
      doom-variable-pitch-font (font-spec :family "sans" :size 22))

(setq doom-theme 'doom-nord)

(custom-set-faces!
  '(default :background "#181B21")
  '(solaire-default-face :background "#181B21")
  '(whitespace-tab :background "#22272f"))

(setq! doom-modeline-height 50)

(set-evil-initial-state! '(vterm-mode term-mode) 'emacs)

(setq-hook! 'typescript-tsx-mode-hook
  +format-with-lsp nil)

;; treemacs
(setq! doom-themes-treemacs-enable-variable-pitch nil)
(setq! doom-themes-treemacs-theme 'doom-colors)

; https://github.com/emacs-lsp/lsp-treemacs/issues/89
(with-eval-after-load 'lsp-treemacs
  (load-library "doom-themes-ext-treemacs"))

(setq-hook! 'c++-mode-hook
  c-basic-offset 2
  +format-with-lsp nil)
