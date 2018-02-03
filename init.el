;;(setq gc-cons-threshold 400000000)

(require 'package)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("original" . "http://tromey.com/elpa/")
	      ("org"      . "http://orgmode.org/elpa/")
;;	    ("marmalade" . "http://marmalade-repo.org/packages/")
	      ("melpa-stable" . "http://stable.melpa.org/packages/")))

(package-initialize)
;;check if packages are up-to-date; if not, it will update them
(unless package-archive-contents
  (package-refresh-contents))

(defvar required-packages
  (list 'use-package))

(dolist (package required-packages)
  (unless (package-installed-p package)
    (package-install package)))


(eval-when-compile
  '((require 'use-package
	     '(setq use-package-verbose 'debug)
	    ;;(setq use-package-expand-minimally nil)
	     ;;(setq use-package-compute-statistics nil)
	     (setq debug-on-error t))
    (require 'diminish)
    (require 'bind-key)))



;;Generate compiled lisp code. To improve emacs startup/efficiency
;; (use-package auto-compile
;;    :ensure t
;;    :config (auto-compile-on-load-mode))

;; (setq load-prefer-newer t)

;;; Load the config
(org-babel-load-file (concat user-emacs-directory "emacs.org"))
