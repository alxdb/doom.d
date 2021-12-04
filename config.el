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

(setq! flycheck-python-mypy-config '("mypy.ini" "setup.cfg" "pyproject.toml"))
(setq! lsp-pylsp-plugins-pydocstyle-enabled nil)
;; Cannot seem to make this python specific
;; should be ignored for other languages, but still messy
;; https://github.com/flycheck/flycheck/issues/1762
;; (add-hook! lsp-pylsp-after-open-hook
;;   (flycheck-add-next-checker 'lsp 'python-mypy))
(defadvice! add-mypy-checker-after-lsp ()
  :after #'lsp-diagnostics-flycheck-enable
  (flycheck-add-next-checker 'lsp 'python-mypy))

(after! web-mode
  (set-formatter! 'html-tidy
    '("tidy" "-q" "-indent"
      "--tidy-mark" "no"
      "--drop-empty-elements" "no"
      "--wrap" "120"
      "--custom-tags" "blocklevel"
      ("--show-body-only" "%s" (if +format-region-p "true" "auto"))
      ("--indent-spaces" "%d" tab-width)
      ("--indent-with-tabs" "%s" (if indent-tabs-mode "yes" "no"))
      ("-xml" (memq major-mode '(nxml-mode xml-mode))))
    :ok-statuses '(0 1)))

(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (python . t)
   (c . t)
   (haskell . t)
   (jupyter . t)))

(plist-put! org-format-latex-options :scale 2)

;; Use monospace font for specific ligature characters
;; λ
(add-hook! 'after-setting-font-hook :append
  (set-fontset-font t #x03BB '("monospace" . "iso10646-1")))

(setq! lsp-haskell-formatting-provider "brittany")
(set-formatter! 'cabal-fmt "cabal-fmt" :modes '(haskell-cabal-mode))

(setq! lsp-rust-analyzer-proc-macro-enable t)
(setq-hook! 'c++-mode-hook
  c-basic-offset 2)

(add-hook! 'c++-mode-hook :append
  (defun set-c-offsets-alist ()
    (setf (alist-get 'innamespace c-offsets-alist) 0)
    (setf (alist-get 'access-label c-offsets-alist) '-)
    (setf (alist-get 'inclass c-offsets-alist) '+)
    (setf (alist-get 'topmost-intro c-offsets-alist) 0))
  )
