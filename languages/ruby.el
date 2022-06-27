(use-package rbenv
  :ensure t
  :config
  (rbenv-use-corresponding))

(use-package rspec-mode
  :config
  (setq code-test-run-single 'rspec-verify-single))

(use-package ruby-mode
  :ensure t
  :hook ((ruby-mode . eglot-ensure)
	 (ruby-mode . global-rbenv-mode)))
