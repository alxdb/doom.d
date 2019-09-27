;; -*- no-byte-compile: t; -*-
;;; .doom.d/packages.el

;;; Examples:
;; (package! some-package)
;; (package! another-package :recipe (:host github :repo "username/repo"))
;; (package! builtin-package :disable t)

;; Replace joker with clj-kondo
(when (featurep! :tools flycheck)
  (package! flycheck-joker :disable t)
  (package! flycheck-clj-kondo))

(package! adoc-mode)
(package! meson-mode)
(package! csound-mode)
