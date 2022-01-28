(use-package go-mode
	:straight t)
(use-package lsp-mode
	:straight t
	:custom
	(lsp-keymap-prefix "C-c l")
	(lsp-idle-delay 0.6)
	:hook
	((c-mode . lsp)
	 (c++-mode . lsp)
	 (go-mode . lsp)
	 (zig-mode . lsp)
	 (lsp-mode . lsp-enable-which-key-integration)
	 (lsp-mode . lsp-ui-mode)))

(use-package lsp-ui
	:straight t)
