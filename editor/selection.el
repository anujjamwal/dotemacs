(use-package helm
  :init (helm-mode 1)
  :bind (:map helm-map
	      ("TAB" . helm-execute-if-single-persistent-action))
  :bind (("M-x" . helm-M-x)
	 ("C-x C-f" . helm-find-files)
	 ("C-x b" . helm-mini))
  :config
  (setq completion-styles '(flex)
	helm-always-two-windows nil
	helm-split-window-inside-p t))

(use-package helm-projectile
  :after helm)

(use-package helm-ls-git
  :after helm)

(use-package helm-ag
  :after helm)
