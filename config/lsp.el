(use-package go-mode
	:straight t
	:defer 2)

(use-package rustic
	:straight t
	:defer 3
	:custom
	(rustic-format-on-save t))

(use-package lsp-mode
	:straight t
	:defer t
	:custom
	(lsp-keymap-prefix "C-c l")
	(lsp-idle-delay 0.6)
	:hook
	((c-mode . lsp)
	 (c++-mode . lsp)
	 (go-mode . lsp)
	 (zig-mode . lsp)
	 (tuareg-mode . lsp)
	 (lsp-mode . lsp-enable-which-key-integration)
	 (lsp-mode . lsp-ui-mode)))

(use-package lsp-ui
	:straight t
	:defer t
	:config
	(setq lsp-ui-sideline-enable nil))
