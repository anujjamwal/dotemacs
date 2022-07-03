(use-package json-mode)

(use-package web-mode  :ensure t
  :mode (("\\.js\\'" . web-mode)
         ("\\.jsx\\'" . web-mode)
         ("\\.ts\\'" . web-mode)
         ("\\.tsx\\'" . web-mode)
         ("\\.html\\'" . web-mode)
         ("\\.vue\\'" . web-mode)
	 ("\\.json\\'" . web-mode))
  :hook ((web-mode . lsp))
  :commands web-mode
  :config
  (setq web-mode-content-types-alist
	'(("jsx" . "\\.js[x]?\\'"))))
