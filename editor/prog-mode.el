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
  :config
  (setq company-idle-delay 0.1
	company-minimum-prefix-length 1
	company-selection-wrap-around t))

(use-package company-box
  :hook (company-mode . company-box-mode))

(use-package treemacs
  :ensure t)

(use-package eglot
  :bind (:map eglot-mode-map
	      ("S-<f6>" . eglot-rename)))

(use-package smart-comment
  :ensure t
  :bind ("M-;" . smart-comment))


(setq code-find-definitions 'xref-find-definitions)
(setq code-pop-back-from-definition 'xref-pop-marker-stack)
(setq code-run-test-single nil)


(global-set-key (kbd "M-.") code-find-definitions)
(global-set-key (kbd "M-,") code-pop-back-from-definition)
(global-set-key (kbd "M-T") code-run-test-single)
