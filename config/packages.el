(use-package gruvbox-theme
	:straight t)

(use-package color-theme-sanityinc-tomorrow
	:straight t
	:config
	(color-theme-sanityinc-tomorrow-night))

(use-package async
	:straight t
	:init
	(async-bytecomp-package-mode 1)
	(autoload 'dired-async-mode "dired-async.el" nil t)
	(dired-async-mode 1))

(use-package doom-modeline
	:straight t
	:init
	(setq-default doom-modeline-height 15)
	(doom-modeline-mode 1))

(use-package vertico
	:straight t
	:init
	(vertico-mode t))

(use-package posframe
	:straight t)

(use-package all-the-icons
	:straight t
  :if (display-graphic-p))

(use-package json-mode)

(use-package nasm-mode)

(use-package tuareg
	:straight t)

(use-package magit
	:straight t)

(use-package vterm
	:straight t)

(use-package forge
	:straight t
  :after magit)

(use-package pass
	:straight t)

(use-package telega
	:straight t
	:init
	(setq telega-emoji-use-images nil)
	(setq telega-emoji-font-family "Apple Color Emoji"))

(use-package company
	:straight t
	:init
	(add-hook 'after-init-hook 'global-company-mode)
	(setq company-backends '())
	(setq company-idle-delay 0)
	(setq company-minimum-prefix-length 1)
	(setq company-tooltip-align-annotations t))

(use-package rainbow-delimiters
	:straight t
	:hook
	(prog-mode . rainbow-delimiters-mode))

(use-package diredfl
	:straight t
	:config
	(diredfl-global-mode))

(use-package zig-mode
	:straight t)
