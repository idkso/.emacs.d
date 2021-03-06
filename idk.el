(defun mod/open-next-line ()
  (interactive)
  (end-of-line)
  (open-line 1)
  (forward-char 1)
  (mod/insert-mod-mode))

(defun mod/beginning-of-line ()
	(interactive)
	(beginning-of-line)
	(mod/insert-mod-mode))

(defun mod/end-of-line ()
	(interactive)
	(end-of-line)
	(mod/insert-mod-mode))

(defun mod/next-line ()
  (interactive)
  (end-of-line)
  (forward-char 1))

(defun mod/insert-mod-mode ()
  (interactive)
  (mod-mode -1)
  (mod-insert-mode 1)
  (setq cursor-type 'bar))

(defun mod/normal-mod-mode ()
  (interactive)
  (mod-insert-mode -1)
  (mod-mode 1)
  (setq cursor-type 'box))

(defun mod/delete-word ()
	(interactive)
	(kill-word 1))

(defun current-line-empty-p ()
  (save-excursion
    (beginning-of-line)
    (looking-at-p "[[:blank:]]*$")))

(defun mod/delete-line ()
	(interactive)
	(beginning-of-line)
	(setq lmao nil)
	(if (current-line-empty-p)
			(setq lmao t))
	(kill-line)
	(if lmao
			(ignore)
		(delete-char 1))
	(if (eq (point-max) (point))
			(previous-line)))

(define-minor-mode mod-mode
  "idk lol its just mod-mode"
  :init-value nil
  :lighter " mod"
  :keymap
  '(((kbd "a") . ignore)
    ((kbd "b") . ignore)
    ((kbd "c") . ignore)
		((kbd "dw") . mod/delete-word)
		((kbd "dd") . mod/delete-line)
    ((kbd "e") . ignore)
    ((kbd "f") . ignore)
    ((kbd "g") . ignore)
    ((kbd "h") . ignore)
    ((kbd "i") . mod/insert-mod-mode)
    ((kbd "j") . ignore)
    ((kbd "k") . ignore)
    ((kbd "l") . ignore)
    ((kbd "m") . ignore)
    ((kbd "n") . ignore)
    ((kbd "o") . mod/open-next-line)
    ((kbd "p") . yank)
    ((kbd "q") . ignore)
    ((kbd "r") . ignore)
    ((kbd "s") . ignore)
    ((kbd "t") . ignore)
    ((kbd "u") . undo)
    ((kbd "v") . ignore)
    ((kbd "w") . ignore)
    ((kbd "x") . delete-char)
    ((kbd "y") . ignore)
    ((kbd "z") . ignore)
    ((kbd "A") . mod/end-of-line)
    ((kbd "B") . ignore)
    ((kbd "C") . ignore)
    ((kbd "D") . ignore)
    ((kbd "E") . ignore)
    ((kbd "F") . ignore)
    ((kbd "G") . ignore)
    ((kbd "H") . ignore)
    ((kbd "I") . mod/beginning-of-line)
    ((kbd "J") . ignore)
    ((kbd "K") . ignore)
    ((kbd "L") . ignore)
    ((kbd "M") . ignore)
    ((kbd "N") . ignore)
    ((kbd "O") . ignore)
    ((kbd "P") . ignore)
    ((kbd "Q") . ignore)
    ((kbd "R") . ignore)
    ((kbd "S") . ignore)
    ((kbd "T") . ignore)
    ((kbd "U") . ignore)
    ((kbd "V") . ignore)
    ((kbd "W") . ignore)
    ((kbd "X") . ignore)
    ((kbd "Y") . ignore)
    ((kbd "Z") . ignore)
    ((kbd "0") . ignore)
    ((kbd "1") . ignore)
    ((kbd "2") . ignore)
    ((kbd "3") . ignore)
    ((kbd "4") . ignore)
    ((kbd "5") . ignore)
    ((kbd "6") . ignore)
    ((kbd "7") . ignore)
    ((kbd "8") . ignore)
    ((kbd "9") . ignore)
    ((kbd ":") . ignore)
    ((kbd "(") . ignore)
    ((kbd ")") . ignore)
    ((kbd "{") . ignore)
    ((kbd "}") . ignore)
    ((kbd ";") . ignore)
    ((kbd "'") . ignore)
    ((kbd "\"") . ignore)
    ((kbd ",") . ignore)
    ((kbd ".") . ignore)
    ((kbd "<") . ignore)
    ((kbd ">") . ignore)
    ((kbd "/") . ignore)
    ((kbd "?") . ignore)
    ((kbd "`") . ignore)
    ((kbd "~") . ignore)
    ((kbd "-") . ignore)
    ((kbd "_") . ignore)
    ((kbd "=") . ignore)
    ((kbd "+") . ignore)
    ((kbd "!") . ignore)
    ((kbd "@") . ignore)
    ((kbd "#") . ignore)
    ((kbd "$") . ignore)
    ((kbd "%") . ignore)
    ((kbd "^") . ignore)
    ((kbd "&") . ignore)
    ((kbd "*") . ignore)
    ((kbd "\\") . ignore)
    ((kbd "|") . ignore)
    ([backspace] . backward-char)
    ([delete] . delete-char)
    ([return] . mod/next-line))
  :group 'mod)

(defun mod/e-fix ()
  (interactive)
  (insert-char ?E))

(define-minor-mode mod-insert-mode
  "mod-mode but for inserting"
  :init-value nil
  :lighter " mod-insert"
  :keymap
  '(([escape] . mod/normal-mod-mode)
    ((kbd "E") . mod/e-fix))
  :group 'mod-insert)

