(use-package color-theme-sanityinc-tomorrow
	:straight t
	:config
	(color-theme-sanityinc-tomorrow-night))

(use-package doom-modeline
	:straight t
	:init
	(setq-default doom-modeline-height 15)
	(doom-modeline-mode 1))

(use-package vertico
	:straight t
	:init
	(vertico-mode t)
	:defer 1)

(use-package posframe
	:straight t
	:defer t)

(use-package all-the-icons
	:straight t
  :if (display-graphic-p))

(use-package json-mode
	:straight t
	:defer 2)

(use-package theme-magic
	:straight t
	:defer 2
	:hook (emacs-startup-hook . theme-magic-export-theme-mode))

(use-package fira-code-mode
	:straight t
	:if (display-graphic-p)
	:defer 2
	:hook tuareg-mode-hook)

(use-package company-glsl
	:straight t
	:defer 1
  :config
  (when (executable-find "glslangValidator")
    (add-to-list 'company-backends 'company-glsl)))

(use-package nasm-mode
	:straight t
	:defer 2)

(use-package tuareg
	:straight t
	:defer 2)

(use-package tree-sitter
	:straight t
	:defer 1
	:hook
	(c++-mode-hook . tree-sitter-mode)
	(rustic-mode-hook . tree-sitter-mode)
	:config
	(global-tree-sitter-mode)
	(add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode))
(use-package tree-sitter-langs
	:straight t
	:defer 1)

(use-package magit
	:straight t
	:defer 2)

(use-package forge
	:straight t
  :after magit
	:defer 2)

(use-package pass
	:straight t
	:defer t)

(use-package telega
	:straight t
	:init
	(setq telega-emoji-use-images nil)
	(setq telega-emoji-font-family "Apple Color Emoji")
	:defer 2)

(use-package company
	:straight t
	:init
  (global-company-mode 1)
	(setq company-backends '())
	(setq company-idle-delay 0)
	(setq company-minimum-prefix-length 1)
	(setq company-tooltip-align-annotations t)
	:defer 2)

(use-package bison-mode
	:straight t
	:defer 2)

(use-package rainbow-delimiters
	:straight t
	:defer 1
	:hook
	(prog-mode . rainbow-delimiters-mode))

(use-package diredfl
	:straight t
	:defer 2
	:config
	(diredfl-global-mode))

(use-package zig-mode
	:straight t
	:defer 2
	:init
	(company-mode)
	(setq zig-format-on-save nil))
