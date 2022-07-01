(use-package rustic
  :hook ((rust-mode . lsp))
  :config
  (setq rustic-format-trigger 'on-save
	rustic-lsp-client 'eglot
	rustic-spinner-type 'moon)
  :ensure-system-package ((rustup . "curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh")
                          (rust-analyzer . "rustup +nightly component add rust-analyzer-preview")
			  (clippy . "rustup component add --toolchain nightly clippy")))
