
(setq frame-inhibit-implied-resize t)

(setq package-enable-at-startup nil
      package--init-file-ensured t)

(setq gc-cons-threshold most-positive-fixnum ; 2^61 bytes
      gc-cons-percentage 0.6)

(setq lol-gc-cons-threshold 16777216)

(add-hook 'emacs-startup-hook
  (lambda ()
    (setq gc-cons-threshold lol-gc-cons-threshold
          gc-cons-percentage 0.1)))

(defun defer-garbage-collection ()
  (setq gc-cons-threshold most-positive-fixnum))

(defun restore-garbage-collection ()
  (run-at-time
   1 nil (lambda () (setq gc-cons-threshold lol-gc-cons-threshold))))

(add-hook 'minibuffer-setup-hook #'defer-garbage-collection)
(add-hook 'minibuffer-exit-hook #'restore-garbage-collection)

(defvar lol-file-name-handler-alist file-name-handler-alist)
(setq file-name-handler-alist nil)

(add-hook 'emacs-startup-hook
  (lambda ()
    (setq file-name-handler-alist lol-file-name-handler-alist)))
