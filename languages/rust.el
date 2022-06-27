(use-package rustic
  :ensure t
  :hook ((rust-mode . lsp-deferred))
  :ensure-system-package ((rustup . "curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh")
                          (rust-analyzer . "rustup +nightly component add rust-analyzer-preview")))