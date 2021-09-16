;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Not picked up by `doom env' for some reason...
(setenv "SSH_AUTH_SOCK" (concat (getenv "XDG_RUNTIME_DIR") "/ssh-agent.socket"))

(setq user-full-name "Alexander Davidson Bryan"
      user-mail-address "alxdb@pm.me")

(setq doom-theme 'doom-one
      doom-font (font-spec :family "monospace" :size 22)
      doom-variable-pitch-font (font-spec :family "monospace" :size 22))

(setq all-the-icons-scale-factor 1.0
      doom-modeline-height 44)

(setq-hook! python-mode
  flycheck-checker 'python-mypy
  flycheck-python-mypy-config '("mypy.ini" "setup.cfg" "pyproject.toml"))

(use-package! web-mode
  :config
  (set-formatter! 'html-tidy
    '("tidy" "-q" "-indent"
      "--tidy-mark" "no"
      "--drop-empty-elements" "no"
      "--wrap" "120"
      ("--show-body-only" "%s" (if +format-region-p "true" "auto"))
      ("--indent-spaces" "%d" tab-width)
      ("--indent-with-tabs" "%s" (if indent-tabs-mode "yes" "no"))
      ("-xml" (memq major-mode '(nxml-mode xml-mode))))
    :ok-statuses '(0 1)))
