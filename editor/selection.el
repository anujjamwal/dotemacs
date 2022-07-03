(use-package helm
  :init (helm-mode 1)
  :bind (:map helm-map
	      ("TAB" . helm-execute-persistent-action))
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

(use-package helm-xref
  :after helm)

(define-key global-map [remap find-file] #'helm-find-files)
(define-key global-map [remap execute-extended-command] #'helm-M-x)
(define-key global-map [remap switch-to-buffer] #'helm-mini)
