;; -*- no-byte-compile: t; -*-
;;; .doom.d/packages.el

;; Replace joker with clj-kondo
(when (featurep! :tools flycheck)
  (package! flycheck-joker :disable t)
  (package! flycheck-clj-kondo))

(package! adoc-mode)
(package! darktooth-theme)
