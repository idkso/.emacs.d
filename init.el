(setq native-comp-deferred-compilation t)
(setq inhibit-startup-message t)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode 3)
(menu-bar-mode -1)
(setq frame-resize-pixelwise t)
(setq-default tab-width 2)

(if (> emacs-major-version 28)
		(pixel-scroll-precision-mode))

(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

(add-hook 'prog-mode-hook #'electric-pair-local-mode)

(set-face-attribute 'default nil :font "Fira Code Nerd Font" :height 90)

(set-face-attribute 'fixed-pitch nil :font "Fira Code Nerd Font" :height 140)

(set-face-attribute 'variable-pitch nil :font "Fira Code Nerd Font" :height 160 :weight 'regular)

(set-fontset-font t nil (font-spec :size 13 :name "Apple Color Emoji"))

(setq custom-safe-themes t)

(setq auto-save-default nil)
(setq make-backup-files nil)

(defun lol/recompile ()
	(interactive)
	(byte-recompile-directory "~/.emacs.d/config"))

(load-file "~/.emacs.d/config/pkginit.elc")
(load-file "~/.emacs.d/config/packages.elc")
(load-file "~/.emacs.d/config/lsp.elc")
(load-file "~/.emacs.d/config/org.elc")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(sanityinc-tomorrow-night))
 '(warning-suppress-types '((use-package) (comp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
