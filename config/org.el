(use-package org-bullets
	:straight t
	:defer 2)

(defun lol/org-mode-setup ()
	(org-indent-mode)
	(variable-pitch-mode)
	(visual-line-mode)
	(org-bullets-mode 1)
	(setq org-src-fontify-natively t)
	
	(set-face-attribute 'fixed-pitch nil :font "JetBrains Mono Nerd Font" :height 140)
	(set-face-attribute 'variable-pitch nil :font "JetBrains Mono Nerd Font" :height 160 :weight 'regular)
	
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
		(set-face-attribute (car face) nil :font "Fira Code Nerd Font" :weight 'regular :height (cdr face))))

(defun lol/eval-after-load ()
	(add-hook 'org-mode-hook #'lol/org-mode-setup)
	(setq org-ellipsis " ▼")
	(setq org-agenda-start-with-log-mode t)
	(setq org-log-done 'time)
	(setq org-log-into-drawer t)
	(setq org-agenda-files '("~/org/agenda"))
	(setq org-format-latex-options (plist-put org-format-latex-options :scale 2.0)))

(use-package org
	:straight t
	:defer 2
	:init
	(lol/eval-after-load)
	:config
	(require 'ob-C)
	(org-babel-do-load-languages
	 'org-babel-load-languages
	 '((python . t)
		 (C . t))))
