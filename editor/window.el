(global-set-key (kbd "M-d") 'split-window-horizontally)
(global-set-key (kbd "M-D") 'split-window-vertically)

(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  :ensure t
  :config
  (setq which-key-idle-delay 0.3))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package helpful
  :ensure t)

(use-package winum
  :ensure t
  :bind (("M-0" . treemacs-select-window)
	 ("M-1" . winum-select-window-1)
	 ("M-2" . winum-select-window-2)
	 ("M-3" . winum-select-window-3)
	 ("M-4" . winum-select-window-4)
	 ("M-5" . winum-select-window-5)
	 ("M-6" . winum-select-window-6)
	 ("M-7" . winum-select-window-7)
	 ("M-8" . winum-select-window-8)
	 ("M-9" . winum-select-window-9))
  :config
  (winum-mode))

(use-package all-the-icons
  :ensure t)

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :config
  (setq doom-modeline-icon t
        doom-modeline-lsp t))
