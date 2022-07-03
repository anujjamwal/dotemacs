(use-package projectile
  :hook ((prog-mode . projectile-mode))
  :config
  (setq projectile-sort-order 'recentf))

(use-package helm-projectile)
(use-package treemacs-projectile)

(use-package magit
  :commands (magit-status magit-get-current-branch)
  :custom
  (magit-display-buffer-function #'magit-display-buffer-same-window-except-diff-v1))

(use-package forge
  :defer t
  :after magit)

(use-package company
  :ensure t
  :hook ((prog-mode . company-mode))
  :bind (:map company-active-map
         ("<tab>" . company-complete-selection))
        (:map lsp-mode-map
         ("<tab>" . company-indent-or-complete-common))
  :config
  (setq company-idle-delay 0.1
	company-minimum-prefix-length 1
	company-selection-wrap-around t))

(use-package company-box
  :hook (company-mode . company-box-mode))

(use-package treemacs
  :ensure t)

(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :hook (lsp-mode . lsp-enable-which-key-integration)
  :init
  (setq lsp-keymap-prefix "C-c l")
  :config
  (setq lsp-headerline-breadcrumb-segments '(path-up-to-project file symbols))
  (lsp-headerline-breadcrumb-mode)
  (define-key lsp-mode-map [remap xref-find-apropos] #'helm-lsp-workspace-symbol))

(use-package lsp-ui
  :custom
  (lsp-ui-doc-position 'bottom))

(use-package helm-lsp)

(use-package lsp-treemacs
  :after lsp)

(use-package smart-comment
  :ensure t
  :bind ("M-;" . smart-comment))

(use-package yasnippet
  :ensure t
  :hook ((lsp-mode . yas-minor-mode)))


(global-set-key (kbd "M-.") 'lsp-ui-peek-find-definitions)
(global-set-key (kbd "M-,") 'xref-go-back)
(global-set-key (kbd "<f12>") 'xref-find-apropos)
