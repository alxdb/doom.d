;; -*- no-byte-compile: t; -*-
;; lang/glsl/packages.el

(package! glsl-mode)
(when (featurep! :completion company)
  (package! company-glsl))
