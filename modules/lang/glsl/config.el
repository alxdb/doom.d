;;; lang/glsl/config.el -*- lexical-binding: t; -*-

(use-package! glsl-mode
  :mode "\\.glsl\\'"
  :mode "\\.vert\\'"
  :mode "\\.frag\\'"
  :mode "\\.geom\\'"
  :config
  (load! "+flycheck-glsl.el"))

(set-lookup-handlers! 'glsl-mode :async t
  :documentation 'glsl-find-man-page)

(use-package! company-glsl
  :when (featurep! :completion company)
  :after glsl-mode
  :config
  (when (executable-find "glslangValidator")
    (set-company-backend! 'glsl-mode 'company-glsl)))
