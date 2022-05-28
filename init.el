(defun emacs-28-stuff ()
	(global-display-line-numbers-mode)
	(setq native-comp-deferred-compilation t)
	(pixel-scroll-precision-mode))

(if (> emacs-major-version 28)
		(emacs-28-stuff))

(setq inhibit-startup-message t)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode 3)
(column-number-mode 1)
(menu-bar-mode -1)
(setq inhibit-startup-screen t)
(setq frame-resize-pixelwise t)
(setq-default tab-width 2)

(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

(add-hook 'prog-mode-hook #'electric-pair-local-mode)

(set-face-attribute 'default nil :font "JetBrains Mono Nerd Font" :height 100)

(set-fontset-font t nil (font-spec :size 13 :name "Apple Color Emoji"))

(add-hook 'prog-mode-hook (lambda () (global-display-line-numbers-mode)))

(setq custom-safe-themes t)

(setq auto-save-default nil)
(setq make-backup-files nil)

(defun lol/recompile ()
	(interactive)
	(byte-recompile-directory "~/.emacs.d/config"))

(load-file (locate-user-emacs-file "config/pkginit.elc"))
(load-file (locate-user-emacs-file "config/packages.elc"))
(load-file (locate-user-emacs-file "config/lsp.elc"))
(load-file (locate-user-emacs-file "config/org.elc"))
(load-file (locate-user-emacs-file "screenshot.el"))

(ido-mode 1)
(ido-everywhere 1)
(save-place-mode)

(setq custom-file (locate-user-emacs-file "custom-vars.el"))
(load custom-file 'noerror 'nomessage)
