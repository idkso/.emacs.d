(setq gc-cons-threshold most-positive-fixnum)

(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-threshold (expt 2 27))))

(setq package-enable-at-startup nil)

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

(set-face-attribute 'default nil :font "Hack Nerd Font" :height 90)

(set-face-attribute 'fixed-pitch nil :font "Hack Nerd Font" :height 140)

(set-face-attribute 'variable-pitch nil :font "Hack Nerd Font" :height 160 :weight 'regular)

(set-fontset-font t nil (font-spec :size 13 :name "Apple Color Emoji"))

(setq custom-safe-themes t)

(load-file "~/.emacs.d/config/pkginit.el")
(load-file "~/.emacs.d/config/packages.el")
(load-file "~/.emacs.d/config/lsp.el")

(use-package org-bullets
	:straight t)

(defun lol/org-mode-setup ()
	(org-indent-mode)
	(variable-pitch-mode)
	(visual-line-mode)
	(org-bullets-mode 1)
	(font-lock-add-keywords 'org-mode
													'(("^ *\\([-]\\) "
														 (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))
	(dolist (face '((org-level-1 . 1.2)
									(org-level-2 . 1.1)
									(org-level-3 . 1.05)
									(org-level-4 . 1.0)
									(org-level-5 . 1.1)
									(org-level-6 . 1.1)
									(org-level-7 . 1.1)
									(org-level-8 . 1.1)))
		(set-face-attribute (car face) nil :font "Hack Nerd Font" :weight 'regular :height (cdr face))))

(defun lol/eval-after-load ()
	(add-hook 'org-mode-hook #'lol/org-mode-setup)
	(setq org-ellipsis " ▼")
	(setq org-agenda-start-with-log-mode t)
	(setq org-log-done 'time)
	(setq org-log-into-drawer t)
	(setq org-agenda-files '("~/org/agenda"))
	(setq org-format-latex-options (plist-put org-format-latex-options :scale 2.0)))

(eval-after-load 'org
	'(lol/eval-after-load))

(require 'ob-C)

(org-babel-do-load-languages
 'org-babel-load-languages '(
														 (python . t)
														 (C . t)))
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
