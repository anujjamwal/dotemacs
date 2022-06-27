(use-package magit
  :commands (magit-status magit-get-current-branch)
  :custom
  (magit-display-buffer-function #'magit-display-buffer-same-window-except-diff-v1))

(use-package forge)

(use-package company
  :ensure t
  :hook ((prog-mode . company-mode))
  :config
  (setq company-idle-delay 0.1
	company-minimum-prefix-length 1
	company-selection-wrap-around t))

(use-package company-box
  :hook (company-mode . company-box-mode))

(use-package treemacs
  :ensure t)

(use-package lsp-mode
  :ensure t
  :hook ((lsp-mode . lsp-enable-which-key-integration))
  :commands (lsp lsp-deferred))

(use-package lsp-ui
  :ensure t
  :hook (lsp-mode . lsp-ui-mode)
  :config
  (setq lsp-ui-doc-position 'bottom))
  
(use-package lsp-treemacs
  :ensure t
  :after lsp)

(use-package all-the-icons-dired
  :hook (dired-mode . all-the-icons-dired-mode))


