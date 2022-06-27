(use-package go-mode
  :ensure t
  :hook ((go-mode . eglot-ensure))
  :bind (:map go-mode-map
	      ("C-S-l" . gofmt)))
